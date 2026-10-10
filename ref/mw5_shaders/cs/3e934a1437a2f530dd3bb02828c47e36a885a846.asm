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
; shader hash: 77d8c498932c654cc75319540d74e942
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
;   [32 x i8] (type annotation not present)
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
;   [11728 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [16 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   cbuffer      NA          NA     CB1            cb4     1
;                                   cbuffer      NA          NA     CB2            cb3     1
;                                   texture    byte         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t1     1
;                                   texture    byte         r/o      T2             t2     1
;                                   texture    byte         r/o      T3             t3     1
;                                   texture    byte         r/o      T4             t8     1
;                                   texture    byte         r/o      T5             t4     1
;                                   texture    byte         r/o      T6             t5     1
;                                   texture    byte         r/o      T7             t6     1
;                                   texture    byte         r/o      T8             t7     1
;                                   texture  struct         r/o      T9            t12     1
;                                   texture    byte         r/o     T10            t11     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<GfxReflectionProbeSampleLightgridRequest>" = type { %struct.GfxReflectionProbeSampleLightgridRequest }
%struct.GfxReflectionProbeSampleLightgridRequest = type { <3 x float>, i32 }
%struct.RWByteAddressBuffer = type { i32 }
%GfxReflectionProbeSampleLightgridConsts = type { i32, i32, i32, i32, float, i32, i32, i32 }
%GfxLGBoundConsts = type { i32, i32, i32, i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }

define void @cs_reflection_probe_sample_lightgrid() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %17 = alloca [4 x i32], align 4
  %18 = alloca [4 x float], align 4
  %19 = alloca [4 x i32], align 4
  %20 = alloca [4 x float], align 4
  %21 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.i32 %21, 0
  %23 = icmp ult i32 %16, %22
  br i1 %23, label %24, label %1240, !dx.controlflow.hints !27

; <label>:24                                      ; preds = %0
  %25 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %16, i32 0)  ; BufferLoad(srv,index,wot)
  %26 = extractvalue %dx.types.ResRet.f32 %25, 0
  %27 = extractvalue %dx.types.ResRet.f32 %25, 1
  %28 = extractvalue %dx.types.ResRet.f32 %25, 2
  %29 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %16, i32 12)  ; BufferLoad(srv,index,wot)
  %30 = extractvalue %dx.types.ResRet.i32 %29, 0
  %31 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.i32 %31, 1
  %33 = icmp eq i32 %32, 0
  %34 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.i32 %34, 3
  %36 = extractvalue %dx.types.CBufRet.i32 %34, 2
  %37 = extractvalue %dx.types.CBufRet.i32 %34, 1
  %38 = getelementptr inbounds [4 x float], [4 x float]* %18, i32 0, i32 0
  store float 0.000000e+00, float* %38, align 4
  %39 = getelementptr inbounds [4 x float], [4 x float]* %18, i32 0, i32 1
  store float 0.000000e+00, float* %39, align 4
  %40 = getelementptr inbounds [4 x float], [4 x float]* %18, i32 0, i32 2
  store float 0.000000e+00, float* %40, align 4
  %41 = getelementptr inbounds [4 x float], [4 x float]* %18, i32 0, i32 3
  store float 0.000000e+00, float* %41, align 4
  br i1 %33, label %42, label %356, !dx.controlflow.hints !28

; <label>:42                                      ; preds = %24
  %43 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %44 = extractvalue %dx.types.ResRet.i32 %43, 0
  %45 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %46 = extractvalue %dx.types.ResRet.i32 %45, 0
  %47 = extractvalue %dx.types.ResRet.i32 %45, 1
  %48 = extractvalue %dx.types.ResRet.i32 %45, 2
  %49 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %50 = extractvalue %dx.types.ResRet.f32 %49, 0
  %51 = extractvalue %dx.types.ResRet.f32 %49, 1
  %52 = extractvalue %dx.types.ResRet.f32 %49, 2
  %53 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %54 = extractvalue %dx.types.ResRet.f32 %53, 0
  %55 = extractvalue %dx.types.ResRet.f32 %53, 1
  %56 = extractvalue %dx.types.ResRet.f32 %53, 2
  %57 = fsub fast float %26, %50
  %58 = fsub fast float %27, %51
  %59 = fsub fast float %28, %52
  %60 = fptoui float %57 to i32
  %61 = fptoui float %58 to i32
  %62 = fptoui float %59 to i32
  %63 = fcmp fast olt float %26, %50
  %64 = fcmp fast olt float %27, %51
  %65 = fcmp fast olt float %28, %52
  %66 = or i1 %63, %64
  %67 = or i1 %65, %66
  %68 = fcmp fast oge float %26, %54
  %69 = fcmp fast oge float %27, %55
  %70 = fcmp fast oge float %28, %56
  %71 = or i1 %68, %69
  %72 = or i1 %70, %71
  %73 = or i1 %67, %72
  %74 = and i32 %46, 31
  %75 = lshr i32 %60, %74
  %76 = lshr i32 %61, %74
  %77 = lshr i32 %62, %74
  %78 = mul i32 %76, %44
  %79 = add i32 %78, %75
  %80 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.i32 %80, 0
  %82 = icmp ult i32 %79, %81
  br i1 %82, label %83, label %99, !dx.controlflow.hints !29

; <label>:83                                      ; preds = %42
  %84 = mul i32 %79, 12
  %85 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %84, i32 undef)  ; BufferLoad(srv,index,wot)
  %86 = extractvalue %dx.types.ResRet.i32 %85, 0
  %87 = add i32 %84, 4
  %88 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %87, i32 undef)  ; BufferLoad(srv,index,wot)
  %89 = extractvalue %dx.types.ResRet.i32 %88, 0
  %90 = add i32 %84, 8
  %91 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %90, i32 undef)  ; BufferLoad(srv,index,wot)
  %92 = extractvalue %dx.types.ResRet.i32 %91, 0
  %93 = icmp ult i32 %77, %89
  %94 = icmp ugt i32 %77, %92
  %95 = or i1 %93, %94
  %96 = add i32 %86, %77
  %97 = sub i32 %96, %89
  %98 = select i1 %95, i32 -2147483648, i32 %97
  br label %99

; <label>:99                                      ; preds = %83, %42
  %100 = phi i32 [ %98, %83 ], [ -2147483648, %42 ]
  %101 = select i1 %73, i32 -2147483648, i32 %100
  %102 = icmp sgt i32 %101, -1
  %103 = and i32 %47, 31
  %104 = lshr i32 %60, %103
  %105 = lshr i32 %61, %103
  %106 = lshr i32 %62, %103
  %107 = and i32 %104, 3
  %108 = and i32 %106, 3
  %109 = shl nuw nsw i32 %108, 4
  %110 = shl i32 %105, 2
  %111 = and i32 %110, 12
  %112 = and i32 %109, 16
  %113 = or i32 %111, %107
  %114 = or i32 %113, %112
  %115 = shl i32 1, %114
  %116 = extractvalue %dx.types.CBufRet.i32 %80, 1
  %117 = icmp ult i32 %101, %116
  br i1 %117, label %118, label %136, !dx.controlflow.hints !30

; <label>:118                                     ; preds = %99
  %119 = lshr i32 %108, 1
  %120 = shl i32 %101, 4
  %121 = shl nuw nsw i32 %119, 2
  %122 = or i32 %120, %121
  %123 = or i32 %122, 8
  %124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
  %125 = extractvalue %dx.types.ResRet.i32 %124, 0
  %126 = and i32 %125, %115
  %127 = icmp eq i32 %126, 0
  %128 = add i32 %115, -1
  %129 = and i32 %125, %128
  %130 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %129)  ; Countbits(value)
  %131 = or i32 %120, %121
  %132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %131, i32 undef)  ; BufferLoad(srv,index,wot)
  %133 = extractvalue %dx.types.ResRet.i32 %132, 0
  %134 = add i32 %133, %130
  %135 = select i1 %127, i32 -2147483648, i32 %134
  br label %136

; <label>:136                                     ; preds = %118, %99
  %137 = phi i32 [ %135, %118 ], [ -2147483648, %99 ]
  %138 = select i1 %102, i32 %137, i32 %101
  %139 = icmp sgt i32 %138, -1
  %140 = and i32 %48, 31
  %141 = lshr i32 %60, %140
  %142 = lshr i32 %61, %140
  %143 = lshr i32 %62, %140
  %144 = and i32 %141, 3
  %145 = and i32 %143, 3
  %146 = shl nuw nsw i32 %145, 4
  %147 = shl i32 %142, 2
  %148 = and i32 %147, 12
  %149 = and i32 %146, 16
  %150 = or i32 %148, %144
  %151 = or i32 %150, %149
  %152 = shl i32 1, %151
  %153 = icmp ult i32 %138, %116
  br i1 %153, label %154, label %172, !dx.controlflow.hints !30

; <label>:154                                     ; preds = %136
  %155 = lshr i32 %145, 1
  %156 = shl i32 %138, 4
  %157 = shl nuw nsw i32 %155, 2
  %158 = or i32 %156, %157
  %159 = or i32 %158, 8
  %160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %159, i32 undef)  ; BufferLoad(srv,index,wot)
  %161 = extractvalue %dx.types.ResRet.i32 %160, 0
  %162 = and i32 %161, %152
  %163 = icmp eq i32 %162, 0
  %164 = add i32 %152, -1
  %165 = and i32 %161, %164
  %166 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %165)  ; Countbits(value)
  %167 = or i32 %156, %157
  %168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %167, i32 undef)  ; BufferLoad(srv,index,wot)
  %169 = extractvalue %dx.types.ResRet.i32 %168, 0
  %170 = add i32 %169, %166
  %171 = select i1 %163, i32 -2147483648, i32 %170
  br label %172

; <label>:172                                     ; preds = %154, %136
  %173 = phi i32 [ %171, %154 ], [ -2147483648, %136 ]
  %174 = select i1 %139, i32 %173, i32 %138
  br i1 %73, label %189, label %175, !dx.controlflow.hints !31

; <label>:175                                     ; preds = %172
  %176 = icmp eq i32 %174, -2147483648
  %177 = icmp eq i32 %138, -2147483648
  %178 = select i1 %177, i32 %101, i32 %138
  %179 = select i1 %176, i32 %178, i32 %174
  %180 = icmp sgt i32 %179, -1
  %181 = icmp ne i32 %35, -1
  %182 = and i1 %181, %180
  %183 = select i1 %182, i32 %35, i32 0
  %184 = add i32 %179, %36
  %185 = add i32 %184, %183
  %186 = shl i32 %185, 2
  %187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %186, i32 undef)  ; BufferLoad(srv,index,wot)
  %188 = extractvalue %dx.types.ResRet.i32 %187, 0
  br label %189

; <label>:189                                     ; preds = %175, %172
  %190 = phi i32 [ %188, %175 ], [ -1, %172 ]
  %191 = icmp eq i32 %190, -1
  %192 = select i1 %191, i32 %37, i32 %190
  %193 = icmp eq i32 %192, -1
  br i1 %193, label %342, label %194

; <label>:194                                     ; preds = %189
  br label %195

; <label>:195                                     ; preds = %333, %194
  %196 = phi i32 [ %334, %333 ], [ 0, %194 ]
  %197 = phi i32 [ %198, %333 ], [ -1, %194 ]
  %198 = phi i32 [ %329, %333 ], [ %192, %194 ]
  %199 = phi float [ %305, %333 ], [ 0.000000e+00, %194 ]
  %200 = phi float [ %306, %333 ], [ 0.000000e+00, %194 ]
  %201 = phi float [ %307, %333 ], [ 0.000000e+00, %194 ]
  %202 = phi float [ %310, %333 ], [ 0.000000e+00, %194 ]
  %203 = icmp ugt i32 %196, 50
  br i1 %203, label %336, label %204, !dx.controlflow.hints !32

; <label>:204                                     ; preds = %195
  %205 = shl i32 %198, 4
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = extractvalue %dx.types.ResRet.i32 %206, 1
  %209 = extractvalue %dx.types.ResRet.i32 %206, 2
  %210 = extractvalue %dx.types.ResRet.i32 %206, 3
  %211 = and i32 %207, 2147483647
  %212 = mul nsw i32 %211, 12
  %213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = extractvalue %dx.types.ResRet.i32 %213, 1
  %216 = extractvalue %dx.types.ResRet.i32 %213, 2
  %217 = and i32 %208, 2147483647
  %218 = mul nsw i32 %217, 12
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = extractvalue %dx.types.ResRet.i32 %219, 1
  %222 = extractvalue %dx.types.ResRet.i32 %219, 2
  %223 = and i32 %209, 2147483647
  %224 = mul nsw i32 %223, 12
  %225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %224, i32 undef)  ; BufferLoad(srv,index,wot)
  %226 = extractvalue %dx.types.ResRet.i32 %225, 0
  %227 = extractvalue %dx.types.ResRet.i32 %225, 1
  %228 = extractvalue %dx.types.ResRet.i32 %225, 2
  %229 = and i32 %210, 2147483647
  %230 = mul nsw i32 %229, 12
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = extractvalue %dx.types.ResRet.i32 %231, 1
  %234 = extractvalue %dx.types.ResRet.i32 %231, 2
  %235 = bitcast i32 %214 to float
  %236 = bitcast i32 %215 to float
  %237 = bitcast i32 %216 to float
  %238 = bitcast i32 %232 to float
  %239 = bitcast i32 %233 to float
  %240 = bitcast i32 %234 to float
  %241 = fsub fast float %235, %238
  %242 = fsub fast float %236, %239
  %243 = fsub fast float %237, %240
  %244 = bitcast i32 %220 to float
  %245 = bitcast i32 %221 to float
  %246 = bitcast i32 %222 to float
  %247 = fsub fast float %244, %238
  %248 = fsub fast float %245, %239
  %249 = fsub fast float %246, %240
  %250 = bitcast i32 %226 to float
  %251 = bitcast i32 %227 to float
  %252 = bitcast i32 %228 to float
  %253 = fsub fast float %250, %238
  %254 = fsub fast float %251, %239
  %255 = fsub fast float %252, %240
  %256 = fsub fast float %26, %238
  %257 = fsub fast float %27, %239
  %258 = fsub fast float %28, %240
  %259 = fmul fast float %248, %255
  %260 = fmul fast float %254, %249
  %261 = fsub fast float %259, %260
  %262 = fmul fast float %261, %241
  %263 = fmul fast float %247, %255
  %264 = fmul fast float %249, %253
  %265 = fsub fast float %263, %264
  %266 = fmul fast float %265, %242
  %267 = fsub fast float %262, %266
  %268 = fmul fast float %247, %254
  %269 = fmul fast float %248, %253
  %270 = fsub fast float %268, %269
  %271 = fmul fast float %270, %243
  %272 = fadd fast float %267, %271
  %273 = fdiv fast float 1.000000e+00, %272
  %274 = fmul fast float %261, %273
  %275 = fmul fast float %273, %265
  %276 = fsub fast float -0.000000e+00, %275
  %277 = fmul fast float %270, %273
  %278 = fmul fast float %242, %255
  %279 = fmul fast float %243, %254
  %280 = fsub fast float %278, %279
  %281 = fmul fast float %273, %280
  %282 = fsub fast float -0.000000e+00, %281
  %283 = fmul fast float %241, %255
  %284 = fmul fast float %253, %243
  %285 = fsub fast float %283, %284
  %286 = fmul fast float %285, %273
  %287 = fmul fast float %241, %254
  %288 = fmul fast float %242, %253
  %289 = fsub fast float %287, %288
  %290 = fmul fast float %273, %289
  %291 = fsub fast float -0.000000e+00, %290
  %292 = fmul fast float %242, %249
  %293 = fmul fast float %243, %248
  %294 = fsub fast float %292, %293
  %295 = fmul fast float %294, %273
  %296 = fmul fast float %241, %249
  %297 = fmul fast float %243, %247
  %298 = fsub fast float %296, %297
  %299 = fmul fast float %273, %298
  %300 = fsub fast float -0.000000e+00, %299
  %301 = fmul fast float %241, %248
  %302 = fmul fast float %242, %247
  %303 = fsub fast float %301, %302
  %304 = fmul fast float %303, %273
  %305 = call float @dx.op.dot3.f32(i32 55, float %274, float %276, float %277, float %256, float %257, float %258)  ; Dot3(ax,ay,az,bx,by,bz)
  %306 = call float @dx.op.dot3.f32(i32 55, float %282, float %286, float %291, float %256, float %257, float %258)  ; Dot3(ax,ay,az,bx,by,bz)
  %307 = call float @dx.op.dot3.f32(i32 55, float %295, float %300, float %304, float %256, float %257, float %258)  ; Dot3(ax,ay,az,bx,by,bz)
  %308 = fsub fast float 1.000000e+00, %305
  %309 = fsub fast float %308, %306
  %310 = fsub fast float %309, %307
  %311 = call float @dx.op.binary.f32(i32 36, float %305, float %306)  ; FMin(a,b)
  %312 = call float @dx.op.binary.f32(i32 36, float %311, float %307)  ; FMin(a,b)
  %313 = call float @dx.op.binary.f32(i32 36, float %312, float %310)  ; FMin(a,b)
  %314 = call float @dx.op.binary.f32(i32 35, float %305, float %306)  ; FMax(a,b)
  %315 = call float @dx.op.binary.f32(i32 35, float %314, float %307)  ; FMax(a,b)
  %316 = call float @dx.op.binary.f32(i32 35, float %315, float %310)  ; FMax(a,b)
  %317 = fcmp fast oge float %313, 0xBF50624DE0000000
  %318 = fcmp fast olt float %316, 0x3FF00068E0000000
  %319 = and i1 %317, %318
  br i1 %319, label %336, label %320, !dx.controlflow.hints !33

; <label>:320                                     ; preds = %204
  %321 = fcmp fast oeq float %313, %305
  %322 = fcmp fast oeq float %313, %306
  %323 = fcmp fast oeq float %313, %307
  %324 = select i1 %323, i32 8, i32 12
  %325 = select i1 %322, i32 4, i32 %324
  %326 = select i1 %321, i32 0, i32 %325
  %327 = or i32 %326, %205
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = icmp ne i32 %197, -1
  %331 = icmp eq i32 %329, %197
  %332 = and i1 %330, %331
  br i1 %332, label %336, label %333, !dx.controlflow.hints !34

; <label>:333                                     ; preds = %320
  %334 = add nuw nsw i32 %196, 1
  %335 = icmp eq i32 %329, -1
  br i1 %335, label %336, label %195, !llvm.loop !35

; <label>:336                                     ; preds = %333, %320, %204, %195
  %337 = phi i32 [ %198, %320 ], [ %198, %204 ], [ -1, %333 ], [ -1, %195 ]
  %338 = phi float [ %305, %320 ], [ %305, %204 ], [ %305, %333 ], [ %199, %195 ]
  %339 = phi float [ %306, %320 ], [ %306, %204 ], [ %306, %333 ], [ %200, %195 ]
  %340 = phi float [ %307, %320 ], [ %307, %204 ], [ %307, %333 ], [ %201, %195 ]
  %341 = phi float [ %310, %320 ], [ %310, %204 ], [ %310, %333 ], [ %202, %195 ]
  br label %342

; <label>:342                                     ; preds = %336, %189
  %343 = phi i32 [ -1, %189 ], [ %337, %336 ]
  %344 = phi float [ 0.000000e+00, %189 ], [ %338, %336 ]
  %345 = phi float [ 0.000000e+00, %189 ], [ %339, %336 ]
  %346 = phi float [ 0.000000e+00, %189 ], [ %340, %336 ]
  %347 = phi float [ 0.000000e+00, %189 ], [ %341, %336 ]
  %348 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %344)  ; FMax(a,b)
  %349 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %345)  ; FMax(a,b)
  %350 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %346)  ; FMax(a,b)
  %351 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %347)  ; FMax(a,b)
  %352 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %348)  ; FMin(a,b)
  %353 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %349)  ; FMin(a,b)
  %354 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %350)  ; FMin(a,b)
  %355 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %351)  ; FMin(a,b)
  store float %352, float* %38, align 4
  store float %353, float* %39, align 4
  store float %354, float* %40, align 4
  store float %355, float* %41, align 4
  br label %356

; <label>:356                                     ; preds = %342, %24
  %357 = phi float [ 0.000000e+00, %24 ], [ %354, %342 ]
  %358 = phi float [ 0.000000e+00, %24 ], [ %353, %342 ]
  %359 = phi float [ 0.000000e+00, %24 ], [ %355, %342 ]
  %360 = phi float [ 0.000000e+00, %24 ], [ %352, %342 ]
  %361 = phi i32 [ -1, %24 ], [ %343, %342 ]
  %362 = icmp eq i32 %361, -1
  br i1 %362, label %363, label %436, !dx.controlflow.hints !37

; <label>:363                                     ; preds = %356
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = extractvalue %dx.types.ResRet.i32 %364, 1
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = extractvalue %dx.types.ResRet.i32 %367, 1
  %370 = extractvalue %dx.types.ResRet.i32 %367, 2
  %371 = extractvalue %dx.types.ResRet.i32 %367, 3
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = extractvalue %dx.types.ResRet.i32 %372, 1
  %375 = extractvalue %dx.types.ResRet.i32 %372, 2
  %376 = extractvalue %dx.types.ResRet.i32 %372, 3
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = extractvalue %dx.types.ResRet.i32 %377, 1
  %380 = extractvalue %dx.types.ResRet.i32 %377, 2
  %381 = extractvalue %dx.types.ResRet.i32 %377, 3
  %382 = and i32 %378, 65535
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = lshr i32 %378, 16
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = and i32 %379, 65535
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = lshr i32 %379, 16
  %389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %388)  ; LegacyF16ToF32(value)
  %390 = and i32 %380, 65535
  %391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %390)  ; LegacyF16ToF32(value)
  %392 = lshr i32 %380, 16
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = and i32 %381, 65535
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = lshr i32 %381, 16
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = and i32 %373, 65535
  %399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %398)  ; LegacyF16ToF32(value)
  %400 = lshr i32 %373, 16
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = and i32 %374, 65535
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = lshr i32 %374, 16
  %405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %404)  ; LegacyF16ToF32(value)
  %406 = and i32 %375, 65535
  %407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %406)  ; LegacyF16ToF32(value)
  %408 = lshr i32 %375, 16
  %409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %408)  ; LegacyF16ToF32(value)
  %410 = and i32 %376, 65535
  %411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %410)  ; LegacyF16ToF32(value)
  %412 = lshr i32 %376, 16
  %413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %412)  ; LegacyF16ToF32(value)
  %414 = and i32 %368, 65535
  %415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %414)  ; LegacyF16ToF32(value)
  %416 = lshr i32 %368, 16
  %417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %416)  ; LegacyF16ToF32(value)
  %418 = and i32 %369, 65535
  %419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %418)  ; LegacyF16ToF32(value)
  %420 = lshr i32 %369, 16
  %421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %420)  ; LegacyF16ToF32(value)
  %422 = and i32 %370, 65535
  %423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %422)  ; LegacyF16ToF32(value)
  %424 = lshr i32 %370, 16
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = and i32 %371, 65535
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = lshr i32 %371, 16
  %429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %428)  ; LegacyF16ToF32(value)
  %430 = and i32 %365, 65535
  %431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %430)  ; LegacyF16ToF32(value)
  %432 = lshr i32 %365, 16
  %433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %432)  ; LegacyF16ToF32(value)
  %434 = and i32 %366, 65535
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  br label %1131

; <label>:436                                     ; preds = %356
  %437 = shl nsw i32 %361, 4
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = extractvalue %dx.types.ResRet.i32 %438, 1
  %441 = extractvalue %dx.types.ResRet.i32 %438, 2
  %442 = extractvalue %dx.types.ResRet.i32 %438, 3
  %443 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 0
  store i32 %439, i32* %443, align 4
  %444 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 1
  store i32 %440, i32* %444, align 4
  %445 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 2
  store i32 %441, i32* %445, align 4
  %446 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 3
  store i32 %442, i32* %446, align 4
  %447 = getelementptr inbounds [4 x float], [4 x float]* %20, i32 0, i32 0
  store float 0.000000e+00, float* %447, align 4
  %448 = getelementptr inbounds [4 x float], [4 x float]* %20, i32 0, i32 1
  store float 0.000000e+00, float* %448, align 4
  %449 = getelementptr inbounds [4 x float], [4 x float]* %20, i32 0, i32 2
  store float 0.000000e+00, float* %449, align 4
  %450 = getelementptr inbounds [4 x float], [4 x float]* %20, i32 0, i32 3
  store float 0.000000e+00, float* %450, align 4
  %451 = icmp slt i32 %439, 0
  br i1 %451, label %452, label %542, !dx.controlflow.hints !38

; <label>:452                                     ; preds = %436
  %453 = fsub fast float 1.000000e+00, %360
  %454 = fdiv fast float 1.000000e+00, %453
  %455 = shl nsw i32 %361, 6
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = extractvalue %dx.types.ResRet.i32 %456, 1
  %459 = extractvalue %dx.types.ResRet.i32 %456, 2
  %460 = extractvalue %dx.types.ResRet.i32 %456, 3
  %461 = fmul fast float %454, %359
  %462 = fmul fast float %454, %358
  %463 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 0
  store i32 %457, i32* %463, align 4
  %464 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 1
  store i32 %458, i32* %464, align 4
  %465 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 2
  store i32 %459, i32* %465, align 4
  %466 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 3
  store i32 %460, i32* %466, align 4
  %467 = fmul fast float %462, 4.000000e+00
  %468 = call float @dx.op.unary.f32(i32 27, float %467)  ; Round_ni(value)
  %469 = fmul fast float %461, 4.000000e+00
  %470 = call float @dx.op.unary.f32(i32 27, float %469)  ; Round_ni(value)
  %471 = fsub fast float 1.100000e+01, %468
  %472 = fmul fast float %468, 5.000000e-01
  %473 = fmul fast float %472, %471
  %474 = fadd fast float %470, 5.000000e-01
  %475 = fadd fast float %474, %473
  %476 = fptosi float %475 to i32
  %477 = fptosi float %468 to i32
  %478 = sub nsw i32 5, %477
  %479 = fmul fast float %470, 2.500000e-01
  %480 = fmul fast float %468, 2.500000e-01
  %481 = add nsw i32 %476, 1
  %482 = add nsw i32 %476, %478
  %483 = fsub fast float %461, %479
  %484 = fmul fast float %483, 4.000000e+00
  %485 = fsub fast float %462, %480
  %486 = fmul fast float %485, 4.000000e+00
  %487 = fadd fast float %483, %485
  %488 = fmul fast float %487, 4.000000e+00
  %489 = fcmp fast ogt float %488, 1.000000e+00
  br i1 %489, label %490, label %496, !dx.controlflow.hints !39

; <label>:490                                     ; preds = %452
  %491 = add nsw i32 %482, 1
  %492 = fadd fast float %486, -1.000000e+00
  %493 = fsub fast float -0.000000e+00, %492
  %494 = fadd fast float %484, -1.000000e+00
  %495 = fsub fast float -0.000000e+00, %494
  br label %496

; <label>:496                                     ; preds = %490, %452
  %497 = phi i32 [ %491, %490 ], [ %476, %452 ]
  %498 = phi i32 [ %481, %490 ], [ %482, %452 ]
  %499 = phi i32 [ %482, %490 ], [ %481, %452 ]
  %500 = phi float [ %495, %490 ], [ %486, %452 ]
  %501 = phi float [ %493, %490 ], [ %484, %452 ]
  %502 = fsub fast float 1.000000e+00, %500
  %503 = fsub fast float %502, %501
  %504 = lshr i32 %499, 2
  %505 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 %504
  %506 = load i32, i32* %505, align 4, !tbaa !40, !noalias !44
  %507 = shl i32 %499, 3
  %508 = and i32 %507, 24
  %509 = lshr i32 %506, %508
  %510 = and i32 %509, 255
  %511 = sitofp i32 %510 to float
  %512 = fmul fast float %501, 0x3F70101020000000
  %513 = fmul fast float %512, %511
  %514 = lshr i32 %498, 2
  %515 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 %514
  %516 = load i32, i32* %515, align 4, !tbaa !40, !noalias !44
  %517 = shl i32 %498, 3
  %518 = and i32 %517, 24
  %519 = lshr i32 %516, %518
  %520 = and i32 %519, 255
  %521 = sitofp i32 %520 to float
  %522 = fmul fast float %500, 0x3F70101020000000
  %523 = fmul fast float %522, %521
  %524 = lshr i32 %497, 2
  %525 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 %524
  %526 = load i32, i32* %525, align 4, !tbaa !40, !noalias !44
  %527 = shl i32 %497, 3
  %528 = and i32 %527, 24
  %529 = lshr i32 %526, %528
  %530 = and i32 %529, 255
  %531 = sitofp i32 %530 to float
  %532 = fmul fast float %503, 0x3F70101020000000
  %533 = fmul fast float %532, %531
  %534 = fsub fast float 1.000000e+00, %513
  %535 = fsub fast float %534, %523
  %536 = fsub fast float %535, %533
  %537 = fmul fast float %360, 2.000000e+01
  %538 = fadd fast float %537, 1.000000e+00
  %539 = fmul fast float %536, 2.000000e+01
  %540 = fsub fast float %538, %539
  %541 = call float @dx.op.unary.f32(i32 7, float %540)  ; Saturate(value)
  br label %542

; <label>:542                                     ; preds = %496, %436
  %543 = phi float [ %541, %496 ], [ 1.000000e+00, %436 ]
  store float %543, float* %447, align 4, !tbaa !52, !noalias !44
  %544 = icmp slt i32 %440, 0
  br i1 %544, label %545, label %636, !dx.controlflow.hints !38

; <label>:545                                     ; preds = %542
  %546 = fsub fast float 1.000000e+00, %358
  %547 = fdiv fast float 1.000000e+00, %546
  %548 = shl i32 %361, 6
  %549 = or i32 %548, 16
  %550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %549, i32 undef)  ; BufferLoad(srv,index,wot)
  %551 = extractvalue %dx.types.ResRet.i32 %550, 0
  %552 = extractvalue %dx.types.ResRet.i32 %550, 1
  %553 = extractvalue %dx.types.ResRet.i32 %550, 2
  %554 = extractvalue %dx.types.ResRet.i32 %550, 3
  %555 = fmul fast float %547, %360
  %556 = fmul fast float %547, %359
  %557 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 0
  store i32 %551, i32* %557, align 4
  %558 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 1
  store i32 %552, i32* %558, align 4
  %559 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 2
  store i32 %553, i32* %559, align 4
  %560 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 3
  store i32 %554, i32* %560, align 4
  %561 = fmul fast float %556, 4.000000e+00
  %562 = call float @dx.op.unary.f32(i32 27, float %561)  ; Round_ni(value)
  %563 = fmul fast float %555, 4.000000e+00
  %564 = call float @dx.op.unary.f32(i32 27, float %563)  ; Round_ni(value)
  %565 = fsub fast float 1.100000e+01, %562
  %566 = fmul fast float %562, 5.000000e-01
  %567 = fmul fast float %566, %565
  %568 = fadd fast float %564, 5.000000e-01
  %569 = fadd fast float %568, %567
  %570 = fptosi float %569 to i32
  %571 = fptosi float %562 to i32
  %572 = sub nsw i32 5, %571
  %573 = fmul fast float %564, 2.500000e-01
  %574 = fmul fast float %562, 2.500000e-01
  %575 = add nsw i32 %570, 1
  %576 = add nsw i32 %570, %572
  %577 = fsub fast float %555, %573
  %578 = fmul fast float %577, 4.000000e+00
  %579 = fsub fast float %556, %574
  %580 = fmul fast float %579, 4.000000e+00
  %581 = fadd fast float %577, %579
  %582 = fmul fast float %581, 4.000000e+00
  %583 = fcmp fast ogt float %582, 1.000000e+00
  br i1 %583, label %584, label %590, !dx.controlflow.hints !39

; <label>:584                                     ; preds = %545
  %585 = add nsw i32 %576, 1
  %586 = fadd fast float %580, -1.000000e+00
  %587 = fsub fast float -0.000000e+00, %586
  %588 = fadd fast float %578, -1.000000e+00
  %589 = fsub fast float -0.000000e+00, %588
  br label %590

; <label>:590                                     ; preds = %584, %545
  %591 = phi i32 [ %585, %584 ], [ %570, %545 ]
  %592 = phi i32 [ %575, %584 ], [ %576, %545 ]
  %593 = phi i32 [ %576, %584 ], [ %575, %545 ]
  %594 = phi float [ %589, %584 ], [ %580, %545 ]
  %595 = phi float [ %587, %584 ], [ %578, %545 ]
  %596 = fsub fast float 1.000000e+00, %594
  %597 = fsub fast float %596, %595
  %598 = lshr i32 %593, 2
  %599 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 %598
  %600 = load i32, i32* %599, align 4, !tbaa !40, !noalias !44
  %601 = shl i32 %593, 3
  %602 = and i32 %601, 24
  %603 = lshr i32 %600, %602
  %604 = and i32 %603, 255
  %605 = sitofp i32 %604 to float
  %606 = fmul fast float %595, 0x3F70101020000000
  %607 = fmul fast float %606, %605
  %608 = lshr i32 %592, 2
  %609 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 %608
  %610 = load i32, i32* %609, align 4, !tbaa !40, !noalias !44
  %611 = shl i32 %592, 3
  %612 = and i32 %611, 24
  %613 = lshr i32 %610, %612
  %614 = and i32 %613, 255
  %615 = sitofp i32 %614 to float
  %616 = fmul fast float %594, 0x3F70101020000000
  %617 = fmul fast float %616, %615
  %618 = lshr i32 %591, 2
  %619 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 %618
  %620 = load i32, i32* %619, align 4, !tbaa !40, !noalias !44
  %621 = shl i32 %591, 3
  %622 = and i32 %621, 24
  %623 = lshr i32 %620, %622
  %624 = and i32 %623, 255
  %625 = sitofp i32 %624 to float
  %626 = fmul fast float %597, 0x3F70101020000000
  %627 = fmul fast float %626, %625
  %628 = fsub fast float 1.000000e+00, %607
  %629 = fsub fast float %628, %617
  %630 = fsub fast float %629, %627
  %631 = fmul fast float %358, 2.000000e+01
  %632 = fadd fast float %631, 1.000000e+00
  %633 = fmul fast float %630, 2.000000e+01
  %634 = fsub fast float %632, %633
  %635 = call float @dx.op.unary.f32(i32 7, float %634)  ; Saturate(value)
  br label %636

; <label>:636                                     ; preds = %590, %542
  %637 = phi float [ %635, %590 ], [ 1.000000e+00, %542 ]
  store float %637, float* %448, align 4, !tbaa !52, !noalias !44
  %638 = fadd fast float %637, %543
  %639 = icmp slt i32 %441, 0
  br i1 %639, label %640, label %731, !dx.controlflow.hints !38

; <label>:640                                     ; preds = %636
  %641 = fsub fast float 1.000000e+00, %357
  %642 = fdiv fast float 1.000000e+00, %641
  %643 = shl i32 %361, 6
  %644 = or i32 %643, 32
  %645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %644, i32 undef)  ; BufferLoad(srv,index,wot)
  %646 = extractvalue %dx.types.ResRet.i32 %645, 0
  %647 = extractvalue %dx.types.ResRet.i32 %645, 1
  %648 = extractvalue %dx.types.ResRet.i32 %645, 2
  %649 = extractvalue %dx.types.ResRet.i32 %645, 3
  %650 = fmul fast float %642, %360
  %651 = fmul fast float %642, %358
  %652 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 0
  store i32 %646, i32* %652, align 4
  %653 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 1
  store i32 %647, i32* %653, align 4
  %654 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 2
  store i32 %648, i32* %654, align 4
  %655 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 3
  store i32 %649, i32* %655, align 4
  %656 = fmul fast float %651, 4.000000e+00
  %657 = call float @dx.op.unary.f32(i32 27, float %656)  ; Round_ni(value)
  %658 = fmul fast float %650, 4.000000e+00
  %659 = call float @dx.op.unary.f32(i32 27, float %658)  ; Round_ni(value)
  %660 = fsub fast float 1.100000e+01, %657
  %661 = fmul fast float %657, 5.000000e-01
  %662 = fmul fast float %661, %660
  %663 = fadd fast float %659, 5.000000e-01
  %664 = fadd fast float %663, %662
  %665 = fptosi float %664 to i32
  %666 = fptosi float %657 to i32
  %667 = sub nsw i32 5, %666
  %668 = fmul fast float %659, 2.500000e-01
  %669 = fmul fast float %657, 2.500000e-01
  %670 = add nsw i32 %665, 1
  %671 = add nsw i32 %665, %667
  %672 = fsub fast float %650, %668
  %673 = fmul fast float %672, 4.000000e+00
  %674 = fsub fast float %651, %669
  %675 = fmul fast float %674, 4.000000e+00
  %676 = fadd fast float %672, %674
  %677 = fmul fast float %676, 4.000000e+00
  %678 = fcmp fast ogt float %677, 1.000000e+00
  br i1 %678, label %679, label %685, !dx.controlflow.hints !39

; <label>:679                                     ; preds = %640
  %680 = add nsw i32 %671, 1
  %681 = fadd fast float %675, -1.000000e+00
  %682 = fsub fast float -0.000000e+00, %681
  %683 = fadd fast float %673, -1.000000e+00
  %684 = fsub fast float -0.000000e+00, %683
  br label %685

; <label>:685                                     ; preds = %679, %640
  %686 = phi i32 [ %680, %679 ], [ %665, %640 ]
  %687 = phi i32 [ %670, %679 ], [ %671, %640 ]
  %688 = phi i32 [ %671, %679 ], [ %670, %640 ]
  %689 = phi float [ %684, %679 ], [ %675, %640 ]
  %690 = phi float [ %682, %679 ], [ %673, %640 ]
  %691 = fsub fast float 1.000000e+00, %689
  %692 = fsub fast float %691, %690
  %693 = lshr i32 %688, 2
  %694 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 %693
  %695 = load i32, i32* %694, align 4, !tbaa !40, !noalias !44
  %696 = shl i32 %688, 3
  %697 = and i32 %696, 24
  %698 = lshr i32 %695, %697
  %699 = and i32 %698, 255
  %700 = sitofp i32 %699 to float
  %701 = fmul fast float %690, 0x3F70101020000000
  %702 = fmul fast float %701, %700
  %703 = lshr i32 %687, 2
  %704 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 %703
  %705 = load i32, i32* %704, align 4, !tbaa !40, !noalias !44
  %706 = shl i32 %687, 3
  %707 = and i32 %706, 24
  %708 = lshr i32 %705, %707
  %709 = and i32 %708, 255
  %710 = sitofp i32 %709 to float
  %711 = fmul fast float %689, 0x3F70101020000000
  %712 = fmul fast float %711, %710
  %713 = lshr i32 %686, 2
  %714 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 %713
  %715 = load i32, i32* %714, align 4, !tbaa !40, !noalias !44
  %716 = shl i32 %686, 3
  %717 = and i32 %716, 24
  %718 = lshr i32 %715, %717
  %719 = and i32 %718, 255
  %720 = sitofp i32 %719 to float
  %721 = fmul fast float %692, 0x3F70101020000000
  %722 = fmul fast float %721, %720
  %723 = fsub fast float 1.000000e+00, %702
  %724 = fsub fast float %723, %712
  %725 = fsub fast float %724, %722
  %726 = fmul fast float %357, 2.000000e+01
  %727 = fadd fast float %726, 1.000000e+00
  %728 = fmul fast float %725, 2.000000e+01
  %729 = fsub fast float %727, %728
  %730 = call float @dx.op.unary.f32(i32 7, float %729)  ; Saturate(value)
  br label %731

; <label>:731                                     ; preds = %685, %636
  %732 = phi float [ %730, %685 ], [ 1.000000e+00, %636 ]
  store float %732, float* %449, align 4, !tbaa !52, !noalias !44
  %733 = fadd fast float %638, %732
  %734 = icmp slt i32 %442, 0
  br i1 %734, label %735, label %826, !dx.controlflow.hints !38

; <label>:735                                     ; preds = %731
  %736 = fsub fast float 1.000000e+00, %359
  %737 = fdiv fast float 1.000000e+00, %736
  %738 = shl i32 %361, 6
  %739 = or i32 %738, 48
  %740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %739, i32 undef)  ; BufferLoad(srv,index,wot)
  %741 = extractvalue %dx.types.ResRet.i32 %740, 0
  %742 = extractvalue %dx.types.ResRet.i32 %740, 1
  %743 = extractvalue %dx.types.ResRet.i32 %740, 2
  %744 = extractvalue %dx.types.ResRet.i32 %740, 3
  %745 = fmul fast float %737, %360
  %746 = fmul fast float %737, %358
  %747 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 0
  store i32 %741, i32* %747, align 4
  %748 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 1
  store i32 %742, i32* %748, align 4
  %749 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 2
  store i32 %743, i32* %749, align 4
  %750 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 3
  store i32 %744, i32* %750, align 4
  %751 = fmul fast float %746, 4.000000e+00
  %752 = call float @dx.op.unary.f32(i32 27, float %751)  ; Round_ni(value)
  %753 = fmul fast float %745, 4.000000e+00
  %754 = call float @dx.op.unary.f32(i32 27, float %753)  ; Round_ni(value)
  %755 = fsub fast float 1.100000e+01, %752
  %756 = fmul fast float %752, 5.000000e-01
  %757 = fmul fast float %756, %755
  %758 = fadd fast float %754, 5.000000e-01
  %759 = fadd fast float %758, %757
  %760 = fptosi float %759 to i32
  %761 = fptosi float %752 to i32
  %762 = sub nsw i32 5, %761
  %763 = fmul fast float %754, 2.500000e-01
  %764 = fmul fast float %752, 2.500000e-01
  %765 = add nsw i32 %760, 1
  %766 = add nsw i32 %760, %762
  %767 = fsub fast float %745, %763
  %768 = fmul fast float %767, 4.000000e+00
  %769 = fsub fast float %746, %764
  %770 = fmul fast float %769, 4.000000e+00
  %771 = fadd fast float %767, %769
  %772 = fmul fast float %771, 4.000000e+00
  %773 = fcmp fast ogt float %772, 1.000000e+00
  br i1 %773, label %774, label %780, !dx.controlflow.hints !39

; <label>:774                                     ; preds = %735
  %775 = add nsw i32 %766, 1
  %776 = fadd fast float %770, -1.000000e+00
  %777 = fsub fast float -0.000000e+00, %776
  %778 = fadd fast float %768, -1.000000e+00
  %779 = fsub fast float -0.000000e+00, %778
  br label %780

; <label>:780                                     ; preds = %774, %735
  %781 = phi i32 [ %775, %774 ], [ %760, %735 ]
  %782 = phi i32 [ %765, %774 ], [ %766, %735 ]
  %783 = phi i32 [ %766, %774 ], [ %765, %735 ]
  %784 = phi float [ %779, %774 ], [ %770, %735 ]
  %785 = phi float [ %777, %774 ], [ %768, %735 ]
  %786 = fsub fast float 1.000000e+00, %784
  %787 = fsub fast float %786, %785
  %788 = lshr i32 %783, 2
  %789 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 %788
  %790 = load i32, i32* %789, align 4, !tbaa !40, !noalias !44
  %791 = shl i32 %783, 3
  %792 = and i32 %791, 24
  %793 = lshr i32 %790, %792
  %794 = and i32 %793, 255
  %795 = sitofp i32 %794 to float
  %796 = fmul fast float %785, 0x3F70101020000000
  %797 = fmul fast float %796, %795
  %798 = lshr i32 %782, 2
  %799 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 %798
  %800 = load i32, i32* %799, align 4, !tbaa !40, !noalias !44
  %801 = shl i32 %782, 3
  %802 = and i32 %801, 24
  %803 = lshr i32 %800, %802
  %804 = and i32 %803, 255
  %805 = sitofp i32 %804 to float
  %806 = fmul fast float %784, 0x3F70101020000000
  %807 = fmul fast float %806, %805
  %808 = lshr i32 %781, 2
  %809 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 %808
  %810 = load i32, i32* %809, align 4, !tbaa !40, !noalias !44
  %811 = shl i32 %781, 3
  %812 = and i32 %811, 24
  %813 = lshr i32 %810, %812
  %814 = and i32 %813, 255
  %815 = sitofp i32 %814 to float
  %816 = fmul fast float %787, 0x3F70101020000000
  %817 = fmul fast float %816, %815
  %818 = fsub fast float 1.000000e+00, %797
  %819 = fsub fast float %818, %807
  %820 = fsub fast float %819, %817
  %821 = fmul fast float %359, 2.000000e+01
  %822 = fadd fast float %821, 1.000000e+00
  %823 = fmul fast float %820, 2.000000e+01
  %824 = fsub fast float %822, %823
  %825 = call float @dx.op.unary.f32(i32 7, float %824)  ; Saturate(value)
  br label %826

; <label>:826                                     ; preds = %780, %731
  %827 = phi float [ %825, %780 ], [ 1.000000e+00, %731 ]
  store float %827, float* %450, align 4, !tbaa !52, !noalias !44
  %828 = fadd fast float %733, %827
  %829 = fcmp fast oeq float %828, 0.000000e+00
  br i1 %829, label %830, label %831, !dx.controlflow.hints !54

; <label>:830                                     ; preds = %826
  store float 2.500000e-01, float* %447, align 4
  store float 2.500000e-01, float* %448, align 4
  store float 2.500000e-01, float* %449, align 4
  store float 2.500000e-01, float* %450, align 4
  br label %831

; <label>:831                                     ; preds = %830, %826
  %832 = phi float [ 2.500000e-01, %830 ], [ %543, %826 ]
  br label %833

; <label>:833                                     ; preds = %1097, %831
  %834 = phi float [ %1099, %1097 ], [ %832, %831 ]
  %835 = phi float [ %1067, %1097 ], [ 0.000000e+00, %831 ]
  %836 = phi float [ %1068, %1097 ], [ 0.000000e+00, %831 ]
  %837 = phi float [ %1069, %1097 ], [ 0.000000e+00, %831 ]
  %838 = phi float [ %1070, %1097 ], [ 0.000000e+00, %831 ]
  %839 = phi float [ %1071, %1097 ], [ 0.000000e+00, %831 ]
  %840 = phi float [ %1072, %1097 ], [ 0.000000e+00, %831 ]
  %841 = phi float [ %1073, %1097 ], [ 0.000000e+00, %831 ]
  %842 = phi float [ %1074, %1097 ], [ 0.000000e+00, %831 ]
  %843 = phi float [ %1075, %1097 ], [ 0.000000e+00, %831 ]
  %844 = phi float [ %1076, %1097 ], [ 0.000000e+00, %831 ]
  %845 = phi float [ %1077, %1097 ], [ 0.000000e+00, %831 ]
  %846 = phi float [ %1078, %1097 ], [ 0.000000e+00, %831 ]
  %847 = phi float [ %1079, %1097 ], [ 0.000000e+00, %831 ]
  %848 = phi float [ %1080, %1097 ], [ 0.000000e+00, %831 ]
  %849 = phi float [ %1081, %1097 ], [ 0.000000e+00, %831 ]
  %850 = phi float [ %1082, %1097 ], [ 0.000000e+00, %831 ]
  %851 = phi float [ %1083, %1097 ], [ 0.000000e+00, %831 ]
  %852 = phi float [ %1084, %1097 ], [ 0.000000e+00, %831 ]
  %853 = phi float [ %1085, %1097 ], [ 0.000000e+00, %831 ]
  %854 = phi float [ %1086, %1097 ], [ 0.000000e+00, %831 ]
  %855 = phi float [ %1087, %1097 ], [ 0.000000e+00, %831 ]
  %856 = phi float [ %1088, %1097 ], [ 0.000000e+00, %831 ]
  %857 = phi float [ %1089, %1097 ], [ 0.000000e+00, %831 ]
  %858 = phi float [ %1090, %1097 ], [ 0.000000e+00, %831 ]
  %859 = phi float [ %1091, %1097 ], [ 0.000000e+00, %831 ]
  %860 = phi float [ %1092, %1097 ], [ 0.000000e+00, %831 ]
  %861 = phi float [ %1093, %1097 ], [ 0.000000e+00, %831 ]
  %862 = phi float [ %1094, %1097 ], [ 0.000000e+00, %831 ]
  %863 = phi i32 [ %1095, %1097 ], [ 0, %831 ]
  %864 = fcmp fast ogt float %834, 0.000000e+00
  br i1 %864, label %865, label %1066, !dx.controlflow.hints !55

; <label>:865                                     ; preds = %833
  %866 = getelementptr [4 x float], [4 x float]* %18, i32 0, i32 %863
  %867 = load float, float* %866, align 4, !tbaa !52, !noalias !44
  %868 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 %863
  %869 = load i32, i32* %868, align 4, !tbaa !40, !noalias !44
  %870 = fmul fast float %867, %834
  %871 = shl i32 %869, 5
  %872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %871, i32 undef)  ; BufferLoad(srv,index,wot)
  %873 = extractvalue %dx.types.ResRet.i32 %872, 0
  %874 = extractvalue %dx.types.ResRet.i32 %872, 1
  %875 = extractvalue %dx.types.ResRet.i32 %872, 2
  %876 = extractvalue %dx.types.ResRet.i32 %872, 3
  %877 = or i32 %871, 16
  %878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %877, i32 undef)  ; BufferLoad(srv,index,wot)
  %879 = extractvalue %dx.types.ResRet.i32 %878, 0
  %880 = extractvalue %dx.types.ResRet.i32 %878, 1
  %881 = extractvalue %dx.types.ResRet.i32 %878, 2
  %882 = shl i32 %873, 4
  %883 = and i32 %882, 32752
  %884 = call float @dx.op.legacyF16ToF32(i32 131, i32 %883)  ; LegacyF16ToF32(value)
  %885 = lshr i32 %873, 7
  %886 = and i32 %885, 32752
  %887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %886)  ; LegacyF16ToF32(value)
  %888 = lshr i32 %873, 22
  %889 = shl nuw nsw i32 %888, 5
  %890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %889)  ; LegacyF16ToF32(value)
  %891 = and i32 %874, 255
  %892 = uitofp i32 %891 to float
  %893 = fmul fast float %892, 0x3F80204080000000
  %894 = fadd fast float %893, -1.000000e+00
  %895 = lshr i32 %874, 8
  %896 = and i32 %895, 255
  %897 = uitofp i32 %896 to float
  %898 = fmul fast float %897, 0x3F80204080000000
  %899 = fadd fast float %898, -1.000000e+00
  %900 = lshr i32 %874, 16
  %901 = and i32 %900, 255
  %902 = uitofp i32 %901 to float
  %903 = fmul fast float %902, 0x3F80204080000000
  %904 = fadd fast float %903, -1.000000e+00
  %905 = lshr i32 %874, 24
  %906 = uitofp i32 %905 to float
  %907 = fmul fast float %906, 0x3F80204080000000
  %908 = fadd fast float %907, -1.000000e+00
  %909 = and i32 %875, 255
  %910 = uitofp i32 %909 to float
  %911 = fmul fast float %910, 0x3F80204080000000
  %912 = fadd fast float %911, -1.000000e+00
  %913 = lshr i32 %875, 8
  %914 = and i32 %913, 255
  %915 = uitofp i32 %914 to float
  %916 = fmul fast float %915, 0x3F80204080000000
  %917 = fadd fast float %916, -1.000000e+00
  %918 = lshr i32 %875, 16
  %919 = and i32 %918, 255
  %920 = uitofp i32 %919 to float
  %921 = fmul fast float %920, 0x3F80204080000000
  %922 = fadd fast float %921, -1.000000e+00
  %923 = lshr i32 %875, 24
  %924 = uitofp i32 %923 to float
  %925 = fmul fast float %924, 0x3F80204080000000
  %926 = fadd fast float %925, -1.000000e+00
  %927 = and i32 %876, 255
  %928 = uitofp i32 %927 to float
  %929 = fmul fast float %928, 0x3F80204080000000
  %930 = fadd fast float %929, -1.000000e+00
  %931 = lshr i32 %876, 8
  %932 = and i32 %931, 255
  %933 = uitofp i32 %932 to float
  %934 = fmul fast float %933, 0x3F80204080000000
  %935 = fadd fast float %934, -1.000000e+00
  %936 = lshr i32 %876, 16
  %937 = and i32 %936, 255
  %938 = uitofp i32 %937 to float
  %939 = fmul fast float %938, 0x3F80204080000000
  %940 = fadd fast float %939, -1.000000e+00
  %941 = lshr i32 %876, 24
  %942 = uitofp i32 %941 to float
  %943 = fmul fast float %942, 0x3F80204080000000
  %944 = fadd fast float %943, -1.000000e+00
  %945 = and i32 %879, 255
  %946 = uitofp i32 %945 to float
  %947 = fmul fast float %946, 0x3F80204080000000
  %948 = fadd fast float %947, -1.000000e+00
  %949 = lshr i32 %879, 8
  %950 = and i32 %949, 255
  %951 = uitofp i32 %950 to float
  %952 = fmul fast float %951, 0x3F80204080000000
  %953 = fadd fast float %952, -1.000000e+00
  %954 = lshr i32 %879, 16
  %955 = and i32 %954, 255
  %956 = uitofp i32 %955 to float
  %957 = fmul fast float %956, 0x3F80204080000000
  %958 = fadd fast float %957, -1.000000e+00
  %959 = lshr i32 %879, 24
  %960 = uitofp i32 %959 to float
  %961 = fmul fast float %960, 0x3F80204080000000
  %962 = fadd fast float %961, -1.000000e+00
  %963 = and i32 %880, 255
  %964 = uitofp i32 %963 to float
  %965 = fmul fast float %964, 0x3F80204080000000
  %966 = fadd fast float %965, -1.000000e+00
  %967 = lshr i32 %880, 8
  %968 = and i32 %967, 255
  %969 = uitofp i32 %968 to float
  %970 = fmul fast float %969, 0x3F80204080000000
  %971 = fadd fast float %970, -1.000000e+00
  %972 = lshr i32 %880, 16
  %973 = and i32 %972, 255
  %974 = uitofp i32 %973 to float
  %975 = fmul fast float %974, 0x3F80204080000000
  %976 = fadd fast float %975, -1.000000e+00
  %977 = lshr i32 %880, 24
  %978 = uitofp i32 %977 to float
  %979 = fmul fast float %978, 0x3F80204080000000
  %980 = fadd fast float %979, -1.000000e+00
  %981 = and i32 %881, 255
  %982 = uitofp i32 %981 to float
  %983 = fmul fast float %982, 0x3F80204080000000
  %984 = fadd fast float %983, -1.000000e+00
  %985 = lshr i32 %881, 8
  %986 = and i32 %985, 255
  %987 = uitofp i32 %986 to float
  %988 = fmul fast float %987, 0x3F80204080000000
  %989 = fadd fast float %988, -1.000000e+00
  %990 = lshr i32 %881, 16
  %991 = and i32 %990, 255
  %992 = uitofp i32 %991 to float
  %993 = fmul fast float %992, 0x3F80204080000000
  %994 = fadd fast float %993, -1.000000e+00
  %995 = lshr i32 %881, 24
  %996 = uitofp i32 %995 to float
  %997 = fmul fast float %996, 0x3F80204080000000
  %998 = fadd fast float %997, -1.000000e+00
  %999 = fmul fast float %884, %870
  %1000 = fadd fast float %999, %843
  %1001 = fmul fast float %870, 0x3FFBB67AE0000000
  %1002 = fmul fast float %1001, %884
  %1003 = fmul fast float %1002, %894
  %1004 = fadd fast float %1003, %842
  %1005 = fmul fast float %1002, %899
  %1006 = fadd fast float %1005, %841
  %1007 = fmul fast float %1002, %904
  %1008 = fadd fast float %1007, %840
  %1009 = fmul fast float %870, 0x3FFEFBDEC0000000
  %1010 = fmul fast float %1009, %884
  %1011 = fmul fast float %1010, %908
  %1012 = fadd fast float %1011, %839
  %1013 = fmul fast float %1010, %912
  %1014 = fadd fast float %1013, %838
  %1015 = fmul fast float %870, 0x4001E377A0000000
  %1016 = fmul fast float %1015, %884
  %1017 = fmul fast float %1016, %917
  %1018 = fadd fast float %1017, %837
  %1019 = fmul fast float %1010, %922
  %1020 = fadd fast float %1019, %836
  %1021 = fmul fast float %1010, %926
  %1022 = fadd fast float %1021, %835
  %1023 = fmul fast float %887, %870
  %1024 = fadd fast float %1023, %852
  %1025 = fmul fast float %1001, %887
  %1026 = fmul fast float %1025, %930
  %1027 = fadd fast float %1026, %851
  %1028 = fmul fast float %1025, %935
  %1029 = fadd fast float %1028, %850
  %1030 = fmul fast float %1025, %940
  %1031 = fadd fast float %1030, %849
  %1032 = fmul fast float %1009, %887
  %1033 = fmul fast float %1032, %944
  %1034 = fadd fast float %1033, %848
  %1035 = fmul fast float %1032, %948
  %1036 = fadd fast float %1035, %847
  %1037 = fmul fast float %1015, %887
  %1038 = fmul fast float %1037, %953
  %1039 = fadd fast float %1038, %846
  %1040 = fmul fast float %1032, %958
  %1041 = fadd fast float %1040, %845
  %1042 = fmul fast float %1032, %962
  %1043 = fadd fast float %1042, %844
  %1044 = fmul fast float %890, %870
  %1045 = fadd fast float %1044, %861
  %1046 = fmul fast float %1001, %890
  %1047 = fmul fast float %1046, %966
  %1048 = fadd fast float %1047, %860
  %1049 = fmul fast float %1046, %971
  %1050 = fadd fast float %1049, %859
  %1051 = fmul fast float %1046, %976
  %1052 = fadd fast float %1051, %858
  %1053 = fmul fast float %1009, %890
  %1054 = fmul fast float %1053, %980
  %1055 = fadd fast float %1054, %857
  %1056 = fmul fast float %1053, %984
  %1057 = fadd fast float %1056, %856
  %1058 = fmul fast float %1015, %890
  %1059 = fmul fast float %1058, %989
  %1060 = fadd fast float %1059, %855
  %1061 = fmul fast float %1053, %994
  %1062 = fadd fast float %1061, %854
  %1063 = fmul fast float %1053, %998
  %1064 = fadd fast float %1063, %853
  %1065 = fadd fast float %870, %862
  br label %1066

; <label>:1066                                    ; preds = %865, %833
  %1067 = phi float [ %1022, %865 ], [ %835, %833 ]
  %1068 = phi float [ %1020, %865 ], [ %836, %833 ]
  %1069 = phi float [ %1018, %865 ], [ %837, %833 ]
  %1070 = phi float [ %1014, %865 ], [ %838, %833 ]
  %1071 = phi float [ %1012, %865 ], [ %839, %833 ]
  %1072 = phi float [ %1008, %865 ], [ %840, %833 ]
  %1073 = phi float [ %1006, %865 ], [ %841, %833 ]
  %1074 = phi float [ %1004, %865 ], [ %842, %833 ]
  %1075 = phi float [ %1000, %865 ], [ %843, %833 ]
  %1076 = phi float [ %1043, %865 ], [ %844, %833 ]
  %1077 = phi float [ %1041, %865 ], [ %845, %833 ]
  %1078 = phi float [ %1039, %865 ], [ %846, %833 ]
  %1079 = phi float [ %1036, %865 ], [ %847, %833 ]
  %1080 = phi float [ %1034, %865 ], [ %848, %833 ]
  %1081 = phi float [ %1031, %865 ], [ %849, %833 ]
  %1082 = phi float [ %1029, %865 ], [ %850, %833 ]
  %1083 = phi float [ %1027, %865 ], [ %851, %833 ]
  %1084 = phi float [ %1024, %865 ], [ %852, %833 ]
  %1085 = phi float [ %1064, %865 ], [ %853, %833 ]
  %1086 = phi float [ %1062, %865 ], [ %854, %833 ]
  %1087 = phi float [ %1060, %865 ], [ %855, %833 ]
  %1088 = phi float [ %1057, %865 ], [ %856, %833 ]
  %1089 = phi float [ %1055, %865 ], [ %857, %833 ]
  %1090 = phi float [ %1052, %865 ], [ %858, %833 ]
  %1091 = phi float [ %1050, %865 ], [ %859, %833 ]
  %1092 = phi float [ %1048, %865 ], [ %860, %833 ]
  %1093 = phi float [ %1045, %865 ], [ %861, %833 ]
  %1094 = phi float [ %1065, %865 ], [ %862, %833 ]
  %1095 = add nuw nsw i32 %863, 1
  %1096 = icmp eq i32 %1095, 4
  br i1 %1096, label %1100, label %1097

; <label>:1097                                    ; preds = %1066
  %1098 = getelementptr [4 x float], [4 x float]* %20, i32 0, i32 %1095
  %1099 = load float, float* %1098, align 4, !tbaa !52, !noalias !44
  br label %833

; <label>:1100                                    ; preds = %1066
  %1101 = fcmp fast ogt float %1094, 0.000000e+00
  %1102 = fdiv fast float 1.000000e+00, %1094
  %1103 = select i1 %1101, float %1102, float 1.000000e+00
  %1104 = fmul fast float %1103, %1075
  %1105 = fmul fast float %1103, %1074
  %1106 = fmul fast float %1103, %1073
  %1107 = fmul fast float %1103, %1072
  %1108 = fmul fast float %1103, %1071
  %1109 = fmul fast float %1103, %1070
  %1110 = fmul fast float %1103, %1069
  %1111 = fmul fast float %1103, %1068
  %1112 = fmul fast float %1103, %1067
  %1113 = fmul fast float %1103, %1084
  %1114 = fmul fast float %1103, %1083
  %1115 = fmul fast float %1103, %1082
  %1116 = fmul fast float %1103, %1081
  %1117 = fmul fast float %1103, %1080
  %1118 = fmul fast float %1103, %1079
  %1119 = fmul fast float %1103, %1078
  %1120 = fmul fast float %1103, %1077
  %1121 = fmul fast float %1103, %1076
  %1122 = fmul fast float %1103, %1093
  %1123 = fmul fast float %1103, %1092
  %1124 = fmul fast float %1103, %1091
  %1125 = fmul fast float %1103, %1090
  %1126 = fmul fast float %1103, %1089
  %1127 = fmul fast float %1103, %1088
  %1128 = fmul fast float %1103, %1087
  %1129 = fmul fast float %1103, %1086
  %1130 = fmul fast float %1103, %1085
  br label %1131

; <label>:1131                                    ; preds = %1100, %363
  %1132 = phi float [ %399, %363 ], [ %1112, %1100 ]
  %1133 = phi float [ %397, %363 ], [ %1111, %1100 ]
  %1134 = phi float [ %395, %363 ], [ %1110, %1100 ]
  %1135 = phi float [ %393, %363 ], [ %1109, %1100 ]
  %1136 = phi float [ %391, %363 ], [ %1108, %1100 ]
  %1137 = phi float [ %389, %363 ], [ %1107, %1100 ]
  %1138 = phi float [ %387, %363 ], [ %1106, %1100 ]
  %1139 = phi float [ %385, %363 ], [ %1105, %1100 ]
  %1140 = phi float [ %383, %363 ], [ %1104, %1100 ]
  %1141 = phi float [ %417, %363 ], [ %1121, %1100 ]
  %1142 = phi float [ %415, %363 ], [ %1120, %1100 ]
  %1143 = phi float [ %413, %363 ], [ %1119, %1100 ]
  %1144 = phi float [ %411, %363 ], [ %1118, %1100 ]
  %1145 = phi float [ %409, %363 ], [ %1117, %1100 ]
  %1146 = phi float [ %407, %363 ], [ %1116, %1100 ]
  %1147 = phi float [ %405, %363 ], [ %1115, %1100 ]
  %1148 = phi float [ %403, %363 ], [ %1114, %1100 ]
  %1149 = phi float [ %401, %363 ], [ %1113, %1100 ]
  %1150 = phi float [ %435, %363 ], [ %1130, %1100 ]
  %1151 = phi float [ %433, %363 ], [ %1129, %1100 ]
  %1152 = phi float [ %431, %363 ], [ %1128, %1100 ]
  %1153 = phi float [ %429, %363 ], [ %1127, %1100 ]
  %1154 = phi float [ %427, %363 ], [ %1126, %1100 ]
  %1155 = phi float [ %425, %363 ], [ %1125, %1100 ]
  %1156 = phi float [ %423, %363 ], [ %1124, %1100 ]
  %1157 = phi float [ %421, %363 ], [ %1123, %1100 ]
  %1158 = phi float [ %419, %363 ], [ %1122, %1100 ]
  %1159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1160 = extractvalue %dx.types.CBufRet.f32 %1159, 0
  %1161 = fcmp fast ult float %1160, 0.000000e+00
  br i1 %1161, label %1164, label %1162, !dx.controlflow.hints !56

; <label>:1162                                    ; preds = %1131
  %1163 = fmul fast float %1160, 0x400C5BF880000000
  br label %1210

; <label>:1164                                    ; preds = %1131
  %1165 = fmul fast float %1140, 0x3FCB367A00000000
  %1166 = fmul fast float %1139, 0x3FCB367A00000000
  %1167 = fmul fast float %1138, 0x3FCB367A00000000
  %1168 = fmul fast float %1137, 0x3FCB367A00000000
  %1169 = fmul fast float %1136, 0x3FCB367A00000000
  %1170 = fmul fast float %1135, 0x3FCB367A00000000
  %1171 = fmul fast float %1134, 0x3FCB367A00000000
  %1172 = fmul fast float %1133, 0x3FCB367A00000000
  %1173 = fmul fast float %1132, 0x3FCB367A00000000
  %1174 = fmul fast float %1149, 0x3FE6E2EB20000000
  %1175 = fadd fast float %1174, %1165
  %1176 = fmul fast float %1148, 0x3FE6E2EB20000000
  %1177 = fadd fast float %1176, %1166
  %1178 = fmul fast float %1147, 0x3FE6E2EB20000000
  %1179 = fadd fast float %1178, %1167
  %1180 = fmul fast float %1146, 0x3FE6E2EB20000000
  %1181 = fadd fast float %1180, %1168
  %1182 = fmul fast float %1145, 0x3FE6E2EB20000000
  %1183 = fadd fast float %1182, %1169
  %1184 = fmul fast float %1144, 0x3FE6E2EB20000000
  %1185 = fadd fast float %1184, %1170
  %1186 = fmul fast float %1143, 0x3FE6E2EB20000000
  %1187 = fadd fast float %1186, %1171
  %1188 = fmul fast float %1142, 0x3FE6E2EB20000000
  %1189 = fadd fast float %1188, %1172
  %1190 = fmul fast float %1141, 0x3FE6E2EB20000000
  %1191 = fadd fast float %1190, %1173
  %1192 = fmul fast float %1158, 0x3FB27BB300000000
  %1193 = fadd fast float %1175, %1192
  %1194 = fmul fast float %1157, 0x3FB27BB300000000
  %1195 = fadd fast float %1177, %1194
  %1196 = fmul fast float %1156, 0x3FB27BB300000000
  %1197 = fadd fast float %1179, %1196
  %1198 = fmul fast float %1155, 0x3FB27BB300000000
  %1199 = fadd fast float %1181, %1198
  %1200 = fmul fast float %1154, 0x3FB27BB300000000
  %1201 = fadd fast float %1183, %1200
  %1202 = fmul fast float %1153, 0x3FB27BB300000000
  %1203 = fadd fast float %1185, %1202
  %1204 = fmul fast float %1152, 0x3FB27BB300000000
  %1205 = fadd fast float %1187, %1204
  %1206 = fmul fast float %1151, 0x3FB27BB300000000
  %1207 = fadd fast float %1189, %1206
  %1208 = fmul fast float %1150, 0x3FB27BB300000000
  %1209 = fadd fast float %1191, %1208
  br label %1210

; <label>:1210                                    ; preds = %1164, %1162
  %1211 = phi float [ %1209, %1164 ], [ 0.000000e+00, %1162 ]
  %1212 = phi float [ %1207, %1164 ], [ 0.000000e+00, %1162 ]
  %1213 = phi float [ %1205, %1164 ], [ 0.000000e+00, %1162 ]
  %1214 = phi float [ %1203, %1164 ], [ 0.000000e+00, %1162 ]
  %1215 = phi float [ %1201, %1164 ], [ 0.000000e+00, %1162 ]
  %1216 = phi float [ %1199, %1164 ], [ 0.000000e+00, %1162 ]
  %1217 = phi float [ %1197, %1164 ], [ 0.000000e+00, %1162 ]
  %1218 = phi float [ %1195, %1164 ], [ 0.000000e+00, %1162 ]
  %1219 = phi float [ %1193, %1164 ], [ %1163, %1162 ]
  %1220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1221 = extractvalue %dx.types.CBufRet.f32 %1220, 3
  %1222 = fmul fast float %1221, %1219
  %1223 = fmul fast float %1221, %1218
  %1224 = fmul fast float %1221, %1217
  %1225 = fmul fast float %1221, %1216
  %1226 = fmul fast float %1221, %1215
  %1227 = fmul fast float %1221, %1214
  %1228 = fmul fast float %1221, %1213
  %1229 = fmul fast float %1221, %1212
  %1230 = fmul fast float %1221, %1211
  %1231 = mul i32 %30, 36
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %1231, i32 undef, float %1222, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1232 = add i32 %1231, 4
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %1232, i32 undef, float %1223, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1233 = add i32 %1231, 8
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %1233, i32 undef, float %1224, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1234 = add i32 %1231, 12
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %1234, i32 undef, float %1225, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1235 = add i32 %1231, 16
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %1235, i32 undef, float %1226, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1236 = add i32 %1231, 20
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %1236, i32 undef, float %1227, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1237 = add i32 %1231, 24
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %1237, i32 undef, float %1228, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1238 = add i32 %1231, 28
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %1238, i32 undef, float %1229, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1239 = add i32 %1231, 32
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %1239, i32 undef, float %1230, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1240

; <label>:1240                                    ; preds = %1210, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!24}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !18, !20, null}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !17}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 8, i32 1, i32 11, i32 0, null}
!11 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!12 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!13 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!14 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 7, i32 1, i32 11, i32 0, null}
!15 = !{i32 9, %"class.StructuredBuffer<GfxReflectionProbeSampleLightgridRequest>"* undef, !"", i32 0, i32 12, i32 1, i32 12, i32 0, !16}
!16 = !{i32 1, i32 16}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 11, i32 1, i32 11, i32 0, null}
!18 = !{!19}
!19 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!20 = !{!21, !22, !23}
!21 = !{i32 0, %GfxReflectionProbeSampleLightgridConsts* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!22 = !{i32 1, %GfxLGBoundConsts* undef, !"", i32 0, i32 4, i32 1, i32 16, null}
!23 = !{i32 2, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!24 = !{void ()* @cs_reflection_probe_sample_lightgrid, !"cs_reflection_probe_sample_lightgrid", null, !4, !25}
!25 = !{i32 0, i64 272, i32 4, !26}
!26 = !{i32 64, i32 1, i32 1}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !{!45, !47, !48, !49, !50, !51}
!45 = distinct !{!45, !46, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeR"}
!46 = distinct !{!46, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z"}
!47 = distinct !{!47, !46, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeG"}
!48 = distinct !{!48, !46, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeB"}
!49 = distinct !{!49, !46, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeA"}
!50 = distinct !{!50, !46, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %primaryVisibility"}
!51 = distinct !{!51, !46, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %usedTet"}
!52 = !{!53, !53, i64 0}
!53 = !{!"float", !42, i64 0}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}

