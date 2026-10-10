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
; shader hash: 915c74450172dec674c2442a34d21e9c
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
;   [80 x i8] (type annotation not present)
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
; Resource bind info for 
; {
;
;   [16 x i8] (type annotation not present)
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
;                                   texture  struct         r/o      T0             t0     1
;                                   texture     u32         buf      T1             t1     1
;                                   texture  struct         r/o      T2             t2     1
;                                   texture     u32         buf      T3             t3     1
;                                   texture     u32         buf      T4             t4     1
;                                   texture     u32         buf      T5             t5     1
;                                   texture     f32         buf      T6             t6     1
;                                   texture     u32         buf      T7             t7     1
;                                   texture     f32         buf      T8             t8     1
;                                   texture    byte         r/o      T9             t9     1
;                                   texture  struct         r/o     T10            t12     1
;                                   texture    byte         r/o     T11            t11     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.StructuredBuffer<GfxNeuralLightGridTopLevelNode>" = type { %struct.GfxNeuralLightGridTopLevelNode }
%struct.GfxNeuralLightGridTopLevelNode = type { i32, i32, i32, i32 }
%"class.Buffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<GfxNeuralLightGridInternalNode>" = type { %struct.GfxNeuralLightGridInternalNode }
%struct.GfxNeuralLightGridInternalNode = type { <2 x i32>, <2 x i32> }
%"class.Buffer<vector<float, 4> >" = type { <4 x float> }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<GfxReflectionProbeSampleLightgridRequest>" = type { %struct.GfxReflectionProbeSampleLightgridRequest }
%struct.GfxReflectionProbeSampleLightgridRequest = type { <3 x float>, i32 }
%struct.RWByteAddressBuffer = type { i32 }
%GfxReflectionProbeSampleLightgridConsts = type { i32, i32, i32, i32, float, i32, i32, i32 }
%GfxNeuralLightGridSetupConsts = type { <3 x float>, i32, <3 x float>, i32, <3 x float>, i32, <3 x i32>, i32, float, i32, i32, i32 }
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
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %18 = alloca [8 x float], align 4
  %19 = alloca [8 x i32], align 4
  %20 = alloca [8 x float], align 4
  %21 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.i32 %21, 0
  %23 = icmp ult i32 %17, %22
  br i1 %23, label %24, label %988, !dx.controlflow.hints !30

; <label>:24                                      ; preds = %0
  %25 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %17, i32 0)  ; BufferLoad(srv,index,wot)
  %26 = extractvalue %dx.types.ResRet.f32 %25, 0
  %27 = extractvalue %dx.types.ResRet.f32 %25, 1
  %28 = extractvalue %dx.types.ResRet.f32 %25, 2
  %29 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %17, i32 12)  ; BufferLoad(srv,index,wot)
  %30 = extractvalue %dx.types.ResRet.i32 %29, 0
  %31 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.i32 %33, 0
  %35 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.i32 %35, 1
  %37 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %38 = extractvalue %dx.types.CBufRet.i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %777, !dx.controlflow.hints !31

; <label>:40                                      ; preds = %24
  %41 = extractvalue %dx.types.CBufRet.f32 %31, 2
  %42 = extractvalue %dx.types.CBufRet.f32 %31, 1
  %43 = extractvalue %dx.types.CBufRet.f32 %31, 0
  %44 = extractvalue %dx.types.CBufRet.f32 %32, 2
  %45 = extractvalue %dx.types.CBufRet.f32 %32, 1
  %46 = extractvalue %dx.types.CBufRet.f32 %32, 0
  %47 = fsub fast float %26, %43
  %48 = fsub fast float %27, %42
  %49 = fsub fast float %28, %41
  %50 = fmul fast float %47, %46
  %51 = fmul fast float %48, %45
  %52 = fmul fast float %49, %44
  %53 = fcmp fast ole float %50, 0.000000e+00
  %54 = fcmp fast ole float %51, 0.000000e+00
  %55 = fcmp fast ole float %52, 0.000000e+00
  %56 = or i1 %53, %54
  %57 = or i1 %55, %56
  %58 = fcmp fast oge float %50, 1.000000e+00
  %59 = fcmp fast oge float %51, 1.000000e+00
  %60 = fcmp fast oge float %52, 1.000000e+00
  %61 = or i1 %58, %59
  %62 = or i1 %60, %61
  %63 = or i1 %57, %62
  br i1 %63, label %777, label %64, !dx.controlflow.hints !32

; <label>:64                                      ; preds = %40
  %65 = fptosi float %47 to i32
  %66 = fptosi float %48 to i32
  %67 = fptosi float %49 to i32
  %68 = and i32 %36, 31
  %69 = ashr i32 %65, %68
  %70 = ashr i32 %66, %68
  %71 = ashr i32 %67, %68
  %72 = mul i32 %70, %34
  %73 = add nsw i32 %72, %69
  %74 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %73, i32 0)  ; BufferLoad(srv,index,wot)
  %75 = extractvalue %dx.types.ResRet.i32 %74, 0
  %76 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %73, i32 4)  ; BufferLoad(srv,index,wot)
  %77 = extractvalue %dx.types.ResRet.i32 %76, 0
  %78 = icmp slt i32 %71, %75
  %79 = icmp sgt i32 %71, %77
  %80 = or i1 %78, %79
  br i1 %80, label %777, label %81, !dx.controlflow.hints !33

; <label>:81                                      ; preds = %64
  %82 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %73, i32 8)  ; BufferLoad(srv,index,wot)
  %83 = extractvalue %dx.types.ResRet.i32 %82, 0
  %84 = sub i32 %71, %75
  %85 = add nsw i32 %84, %83
  %86 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %85, i32 undef)  ; BufferLoad(srv,index,wot)
  %87 = extractvalue %dx.types.ResRet.i32 %86, 0
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %777, label %89, !dx.controlflow.hints !34

; <label>:89                                      ; preds = %81
  %90 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i32 0, i32 0
  store i32 -1, i32* %90, align 4, !tbaa !35, !noalias !39
  %91 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i32 0, i32 1
  store i32 -1, i32* %91, align 4, !tbaa !35, !noalias !39
  %92 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i32 0, i32 2
  store i32 -1, i32* %92, align 4, !tbaa !35, !noalias !39
  %93 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i32 0, i32 3
  store i32 -1, i32* %93, align 4, !tbaa !35, !noalias !39
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i32 0, i32 4
  store i32 -1, i32* %94, align 4, !tbaa !35, !noalias !39
  %95 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i32 0, i32 5
  store i32 -1, i32* %95, align 4, !tbaa !35, !noalias !39
  %96 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i32 0, i32 6
  store i32 -1, i32* %96, align 4, !tbaa !35, !noalias !39
  %97 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i32 0, i32 7
  store i32 -1, i32* %97, align 4, !tbaa !35, !noalias !39
  br label %98

; <label>:98                                      ; preds = %202, %89
  %99 = phi i32 [ -1, %89 ], [ %199, %202 ]
  %100 = phi i32 [ -1, %89 ], [ %194, %202 ]
  %101 = phi i32 [ -1, %89 ], [ %187, %202 ]
  %102 = phi i32 [ -1, %89 ], [ %182, %202 ]
  %103 = phi i32 [ -1, %89 ], [ %173, %202 ]
  %104 = phi i32 [ -1, %89 ], [ %168, %202 ]
  %105 = phi i32 [ -1, %89 ], [ %160, %202 ]
  %106 = phi i32 [ -1, %89 ], [ %153, %202 ]
  %107 = phi i32 [ %87, %89 ], [ %222, %202 ]
  %108 = phi i32 [ %36, %89 ], [ %109, %202 ]
  %109 = add nsw i32 %108, -2
  %110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %107, i32 undef)  ; BufferLoad(srv,index,wot)
  %111 = extractvalue %dx.types.ResRet.i32 %110, 0
  %112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %107, i32 undef)  ; BufferLoad(srv,index,wot)
  %113 = extractvalue %dx.types.ResRet.i32 %112, 0
  %114 = and i32 %111, 31
  %115 = shl i32 1, %114
  %116 = add i32 %115, 1
  %117 = and i32 %109, 31
  %118 = ashr i32 %65, %117
  %119 = ashr i32 %66, %117
  %120 = ashr i32 %67, %117
  %121 = and i32 %118, 3
  %122 = and i32 %119, 3
  %123 = and i32 %120, 3
  br label %124

; <label>:124                                     ; preds = %124, %98
  %125 = phi i32 [ %99, %98 ], [ %199, %124 ]
  %126 = phi i32 [ %100, %98 ], [ %194, %124 ]
  %127 = phi i32 [ %101, %98 ], [ %187, %124 ]
  %128 = phi i32 [ %102, %98 ], [ %182, %124 ]
  %129 = phi i32 [ %103, %98 ], [ %173, %124 ]
  %130 = phi i32 [ %104, %98 ], [ %168, %124 ]
  %131 = phi i32 [ %105, %98 ], [ %160, %124 ]
  %132 = phi i32 [ %106, %98 ], [ %153, %124 ]
  %133 = phi i32 [ 0, %98 ], [ %200, %124 ]
  %134 = sub i32 2, %133
  %135 = and i32 %134, 31
  %136 = lshr i32 %121, %135
  %137 = lshr i32 %122, %135
  %138 = lshr i32 %123, %135
  %139 = sub i32 %111, %133
  %140 = and i32 %139, 31
  %141 = shl i32 %136, %140
  %142 = shl i32 %137, %140
  %143 = shl i32 %138, %140
  %144 = shl i32 1, %140
  %145 = mul i32 %143, %116
  %146 = add i32 %145, %142
  %147 = mul i32 %146, %116
  %148 = add i32 %141, %113
  %149 = add i32 %148, %147
  %150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %149, i32 undef)  ; BufferLoad(srv,index,wot)
  %151 = extractvalue %dx.types.ResRet.i32 %150, 0
  %152 = icmp ne i32 %151, -1
  %153 = select i1 %152, i32 %151, i32 %132
  store i32 %153, i32* %90, align 4, !tbaa !35, !noalias !39
  %154 = add i32 %144, %113
  %155 = add i32 %154, %141
  %156 = add i32 %155, %147
  %157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %156, i32 undef)  ; BufferLoad(srv,index,wot)
  %158 = extractvalue %dx.types.ResRet.i32 %157, 0
  %159 = icmp ne i32 %158, -1
  %160 = select i1 %159, i32 %158, i32 %131
  store i32 %160, i32* %91, align 4, !tbaa !35, !noalias !39
  %161 = add i32 %142, %144
  %162 = add i32 %161, %145
  %163 = mul i32 %162, %116
  %164 = add i32 %148, %163
  %165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %164, i32 undef)  ; BufferLoad(srv,index,wot)
  %166 = extractvalue %dx.types.ResRet.i32 %165, 0
  %167 = icmp ne i32 %166, -1
  %168 = select i1 %167, i32 %166, i32 %130
  store i32 %168, i32* %92, align 4, !tbaa !35, !noalias !39
  %169 = add i32 %155, %163
  %170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.i32 %170, 0
  %172 = icmp ne i32 %171, -1
  %173 = select i1 %172, i32 %171, i32 %129
  store i32 %173, i32* %93, align 4, !tbaa !35, !noalias !39
  %174 = add i32 %143, %144
  %175 = mul i32 %174, %116
  %176 = add i32 %175, %142
  %177 = mul i32 %176, %116
  %178 = add i32 %148, %177
  %179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %178, i32 undef)  ; BufferLoad(srv,index,wot)
  %180 = extractvalue %dx.types.ResRet.i32 %179, 0
  %181 = icmp ne i32 %180, -1
  %182 = select i1 %181, i32 %180, i32 %128
  store i32 %182, i32* %94, align 4, !tbaa !35, !noalias !39
  %183 = add i32 %155, %177
  %184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %183, i32 undef)  ; BufferLoad(srv,index,wot)
  %185 = extractvalue %dx.types.ResRet.i32 %184, 0
  %186 = icmp ne i32 %185, -1
  %187 = select i1 %186, i32 %185, i32 %127
  store i32 %187, i32* %95, align 4, !tbaa !35, !noalias !39
  %188 = add i32 %161, %175
  %189 = mul i32 %188, %116
  %190 = add i32 %148, %189
  %191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %190, i32 undef)  ; BufferLoad(srv,index,wot)
  %192 = extractvalue %dx.types.ResRet.i32 %191, 0
  %193 = icmp ne i32 %192, -1
  %194 = select i1 %193, i32 %192, i32 %126
  store i32 %194, i32* %96, align 4, !tbaa !35, !noalias !39
  %195 = add i32 %155, %189
  %196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %195, i32 undef)  ; BufferLoad(srv,index,wot)
  %197 = extractvalue %dx.types.ResRet.i32 %196, 0
  %198 = icmp ne i32 %197, -1
  %199 = select i1 %198, i32 %197, i32 %125
  store i32 %199, i32* %97, align 4, !tbaa !35, !noalias !39
  %200 = add i32 %133, 1
  %201 = icmp ugt i32 %200, %111
  br i1 %201, label %202, label %124

; <label>:202                                     ; preds = %124
  %203 = shl nuw nsw i32 %123, 4
  %204 = shl nuw nsw i32 %122, 2
  %205 = lshr i32 %123, 1
  %206 = and i32 %203, 16
  %207 = or i32 %204, %121
  %208 = or i32 %207, %206
  %209 = shl i32 1, %208
  %210 = shl nuw nsw i32 %205, 2
  %211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %107, i32 %210)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.i32 %211, 0
  %213 = and i32 %212, %209
  %214 = icmp eq i32 %213, 0
  %215 = add i32 %209, -1
  %216 = and i32 %212, %215
  %217 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %216)  ; Countbits(value)
  %218 = or i32 %210, 8
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %107, i32 %218)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = add i32 %220, %217
  %222 = select i1 %214, i32 -1, i32 %221
  %223 = icmp eq i32 %222, -1
  br i1 %223, label %224, label %98

; <label>:224                                     ; preds = %202
  br label %225

; <label>:225                                     ; preds = %511, %224
  %226 = phi i32 [ %513, %511 ], [ %153, %224 ]
  %227 = phi float [ %508, %511 ], [ 0.000000e+00, %224 ]
  %228 = phi i32 [ %509, %511 ], [ 0, %224 ]
  %229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.f32 %229, 0
  %231 = extractvalue %dx.types.ResRet.f32 %229, 1
  %232 = extractvalue %dx.types.ResRet.f32 %229, 2
  %233 = extractvalue %dx.types.ResRet.f32 %229, 3
  %234 = fsub fast float %26, %230
  %235 = fsub fast float %27, %231
  %236 = fsub fast float %28, %232
  %237 = fmul fast float %234, %233
  %238 = fmul fast float %235, %233
  %239 = fmul fast float %236, %233
  %240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = call float @dx.op.unary.f32(i32 6, float %237)  ; FAbs(value)
  %243 = call float @dx.op.unary.f32(i32 6, float %238)  ; FAbs(value)
  %244 = fsub fast float 1.000000e+00, %242
  %245 = fsub fast float 1.000000e+00, %243
  %246 = call float @dx.op.unary.f32(i32 7, float %244)  ; Saturate(value)
  %247 = call float @dx.op.unary.f32(i32 7, float %245)  ; Saturate(value)
  %248 = fmul fast float %247, %246
  %249 = mul i32 %241, 29
  %250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.f32 %250, 0
  %252 = extractvalue %dx.types.ResRet.f32 %250, 1
  %253 = extractvalue %dx.types.ResRet.f32 %250, 2
  %254 = extractvalue %dx.types.ResRet.f32 %250, 3
  %255 = add i32 %249, 1
  %256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.f32 %256, 0
  %258 = extractvalue %dx.types.ResRet.f32 %256, 1
  %259 = extractvalue %dx.types.ResRet.f32 %256, 2
  %260 = extractvalue %dx.types.ResRet.f32 %256, 3
  %261 = add i32 %249, 2
  %262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.f32 %262, 0
  %264 = extractvalue %dx.types.ResRet.f32 %262, 1
  %265 = extractvalue %dx.types.ResRet.f32 %262, 2
  %266 = extractvalue %dx.types.ResRet.f32 %262, 3
  %267 = add i32 %249, 3
  %268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = extractvalue %dx.types.ResRet.f32 %268, 1
  %271 = extractvalue %dx.types.ResRet.f32 %268, 2
  %272 = extractvalue %dx.types.ResRet.f32 %268, 3
  %273 = add i32 %249, 4
  %274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.f32 %274, 0
  %276 = extractvalue %dx.types.ResRet.f32 %274, 1
  %277 = extractvalue %dx.types.ResRet.f32 %274, 2
  %278 = extractvalue %dx.types.ResRet.f32 %274, 3
  %279 = add i32 %249, 5
  %280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.f32 %280, 0
  %282 = extractvalue %dx.types.ResRet.f32 %280, 1
  %283 = extractvalue %dx.types.ResRet.f32 %280, 2
  %284 = extractvalue %dx.types.ResRet.f32 %280, 3
  %285 = add i32 %249, 6
  %286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.f32 %286, 0
  %288 = extractvalue %dx.types.ResRet.f32 %286, 1
  %289 = extractvalue %dx.types.ResRet.f32 %286, 2
  %290 = extractvalue %dx.types.ResRet.f32 %286, 3
  %291 = add i32 %249, 7
  %292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.f32 %292, 0
  %294 = extractvalue %dx.types.ResRet.f32 %292, 1
  %295 = extractvalue %dx.types.ResRet.f32 %292, 2
  %296 = extractvalue %dx.types.ResRet.f32 %292, 3
  %297 = fmul fast float %251, %237
  %298 = fmul fast float %263, %238
  %299 = fadd fast float %298, %297
  %300 = fmul fast float %275, %239
  %301 = fadd fast float %299, %300
  %302 = fmul fast float %252, %237
  %303 = fmul fast float %264, %238
  %304 = fadd fast float %303, %302
  %305 = fmul fast float %276, %239
  %306 = fadd fast float %304, %305
  %307 = fmul fast float %253, %237
  %308 = fmul fast float %265, %238
  %309 = fadd fast float %308, %307
  %310 = fmul fast float %277, %239
  %311 = fadd fast float %309, %310
  %312 = fmul fast float %254, %237
  %313 = fmul fast float %266, %238
  %314 = fadd fast float %313, %312
  %315 = fmul fast float %278, %239
  %316 = fadd fast float %314, %315
  %317 = fmul fast float %257, %237
  %318 = fmul fast float %269, %238
  %319 = fadd fast float %318, %317
  %320 = fmul fast float %281, %239
  %321 = fadd fast float %319, %320
  %322 = fmul fast float %258, %237
  %323 = fmul fast float %270, %238
  %324 = fadd fast float %323, %322
  %325 = fmul fast float %282, %239
  %326 = fadd fast float %324, %325
  %327 = fmul fast float %259, %237
  %328 = fmul fast float %271, %238
  %329 = fadd fast float %328, %327
  %330 = fmul fast float %283, %239
  %331 = fadd fast float %329, %330
  %332 = fmul fast float %260, %237
  %333 = fmul fast float %272, %238
  %334 = fadd fast float %333, %332
  %335 = fmul fast float %284, %239
  %336 = fadd fast float %334, %335
  %337 = fadd fast float %301, %287
  %338 = fadd fast float %306, %288
  %339 = fadd fast float %311, %289
  %340 = fadd fast float %316, %290
  %341 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %337)  ; FMax(a,b)
  %342 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %338)  ; FMax(a,b)
  %343 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %339)  ; FMax(a,b)
  %344 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %340)  ; FMax(a,b)
  %345 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %337)  ; FMin(a,b)
  %346 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %338)  ; FMin(a,b)
  %347 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %339)  ; FMin(a,b)
  %348 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %340)  ; FMin(a,b)
  %349 = fmul fast float %345, 0x3F847AE140000000
  %350 = fmul fast float %346, 0x3F847AE140000000
  %351 = fmul fast float %347, 0x3F847AE140000000
  %352 = fmul fast float %348, 0x3F847AE140000000
  %353 = fadd fast float %349, %341
  %354 = fadd fast float %350, %342
  %355 = fadd fast float %351, %343
  %356 = fadd fast float %352, %344
  %357 = fadd fast float %321, %293
  %358 = fadd fast float %326, %294
  %359 = fadd fast float %331, %295
  %360 = fadd fast float %336, %296
  %361 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %357)  ; FMax(a,b)
  %362 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %358)  ; FMax(a,b)
  %363 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %359)  ; FMax(a,b)
  %364 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %360)  ; FMax(a,b)
  %365 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %357)  ; FMin(a,b)
  %366 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %358)  ; FMin(a,b)
  %367 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %359)  ; FMin(a,b)
  %368 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %360)  ; FMin(a,b)
  %369 = fmul fast float %365, 0x3F847AE140000000
  %370 = fmul fast float %366, 0x3F847AE140000000
  %371 = fmul fast float %367, 0x3F847AE140000000
  %372 = fmul fast float %368, 0x3F847AE140000000
  %373 = fadd fast float %369, %361
  %374 = fadd fast float %370, %362
  %375 = fadd fast float %371, %363
  %376 = fadd fast float %372, %364
  br label %377

; <label>:377                                     ; preds = %377, %225
  %378 = phi i32 [ 0, %225 ], [ %398, %377 ]
  %379 = add i32 %249, 8
  %380 = shl i32 %378, 1
  %381 = add i32 %379, %380
  %382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.f32 %382, 0
  %384 = extractvalue %dx.types.ResRet.f32 %382, 1
  %385 = extractvalue %dx.types.ResRet.f32 %382, 2
  %386 = extractvalue %dx.types.ResRet.f32 %382, 3
  %387 = add i32 %249, 9
  %388 = add i32 %387, %380
  %389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.f32 %389, 0
  %391 = extractvalue %dx.types.ResRet.f32 %389, 1
  %392 = extractvalue %dx.types.ResRet.f32 %389, 2
  %393 = extractvalue %dx.types.ResRet.f32 %389, 3
  %394 = call float @dx.op.dot4.f32(i32 56, float %383, float %384, float %385, float %386, float %353, float %354, float %355, float %356)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %395 = call float @dx.op.dot4.f32(i32 56, float %390, float %391, float %392, float %393, float %373, float %374, float %375, float %376)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %396 = fadd fast float %395, %394
  %397 = getelementptr inbounds [8 x float], [8 x float]* %18, i32 0, i32 %378
  store float %396, float* %397, align 4, !tbaa !45, !noalias !39
  %398 = add nuw nsw i32 %378, 1
  %399 = icmp eq i32 %398, 8
  br i1 %399, label %400, label %377

; <label>:400                                     ; preds = %377
  %401 = call float @dx.op.unary.f32(i32 6, float %239)  ; FAbs(value)
  %402 = fsub fast float 1.000000e+00, %401
  %403 = call float @dx.op.unary.f32(i32 7, float %402)  ; Saturate(value)
  %404 = fmul fast float %248, %403
  %405 = add i32 %249, 24
  %406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.f32 %406, 0
  %408 = extractvalue %dx.types.ResRet.f32 %406, 1
  %409 = extractvalue %dx.types.ResRet.f32 %406, 2
  %410 = extractvalue %dx.types.ResRet.f32 %406, 3
  %411 = add i32 %249, 25
  %412 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.f32 %412, 0
  %414 = extractvalue %dx.types.ResRet.f32 %412, 1
  %415 = extractvalue %dx.types.ResRet.f32 %412, 2
  %416 = extractvalue %dx.types.ResRet.f32 %412, 3
  %417 = getelementptr inbounds [8 x float], [8 x float]* %18, i32 0, i32 0
  %418 = load float, float* %417, align 4, !tbaa !45, !noalias !39
  %419 = fadd fast float %418, %407
  %420 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %419)  ; FMax(a,b)
  %421 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %419)  ; FMin(a,b)
  %422 = fmul fast float %421, 0x3F847AE140000000
  %423 = fadd fast float %422, %420
  store float %423, float* %417, align 4, !tbaa !45, !noalias !39
  %424 = getelementptr inbounds [8 x float], [8 x float]* %18, i32 0, i32 1
  %425 = load float, float* %424, align 4, !tbaa !45, !noalias !39
  %426 = fadd fast float %425, %408
  %427 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %426)  ; FMax(a,b)
  %428 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %426)  ; FMin(a,b)
  %429 = fmul fast float %428, 0x3F847AE140000000
  %430 = fadd fast float %429, %427
  store float %430, float* %424, align 4, !tbaa !45, !noalias !39
  %431 = getelementptr inbounds [8 x float], [8 x float]* %18, i32 0, i32 2
  %432 = load float, float* %431, align 4, !tbaa !45, !noalias !39
  %433 = fadd fast float %432, %409
  %434 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %433)  ; FMax(a,b)
  %435 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %433)  ; FMin(a,b)
  %436 = fmul fast float %435, 0x3F847AE140000000
  %437 = fadd fast float %436, %434
  store float %437, float* %431, align 4, !tbaa !45, !noalias !39
  %438 = getelementptr inbounds [8 x float], [8 x float]* %18, i32 0, i32 3
  %439 = load float, float* %438, align 4, !tbaa !45, !noalias !39
  %440 = fadd fast float %439, %410
  %441 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %440)  ; FMax(a,b)
  %442 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %440)  ; FMin(a,b)
  %443 = fmul fast float %442, 0x3F847AE140000000
  %444 = fadd fast float %443, %441
  store float %444, float* %438, align 4, !tbaa !45, !noalias !39
  %445 = getelementptr inbounds [8 x float], [8 x float]* %18, i32 0, i32 4
  %446 = load float, float* %445, align 4, !tbaa !45, !noalias !39
  %447 = fadd fast float %446, %413
  %448 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %447)  ; FMax(a,b)
  %449 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %447)  ; FMin(a,b)
  %450 = fmul fast float %449, 0x3F847AE140000000
  %451 = fadd fast float %450, %448
  store float %451, float* %445, align 4, !tbaa !45, !noalias !39
  %452 = getelementptr inbounds [8 x float], [8 x float]* %18, i32 0, i32 5
  %453 = load float, float* %452, align 4, !tbaa !45, !noalias !39
  %454 = fadd fast float %453, %414
  %455 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %454)  ; FMax(a,b)
  %456 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %454)  ; FMin(a,b)
  %457 = fmul fast float %456, 0x3F847AE140000000
  %458 = fadd fast float %457, %455
  store float %458, float* %452, align 4, !tbaa !45, !noalias !39
  %459 = getelementptr inbounds [8 x float], [8 x float]* %18, i32 0, i32 6
  %460 = load float, float* %459, align 4, !tbaa !45, !noalias !39
  %461 = fadd fast float %460, %415
  %462 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %461)  ; FMax(a,b)
  %463 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %461)  ; FMin(a,b)
  %464 = fmul fast float %463, 0x3F847AE140000000
  %465 = fadd fast float %464, %462
  store float %465, float* %459, align 4, !tbaa !45, !noalias !39
  %466 = getelementptr inbounds [8 x float], [8 x float]* %18, i32 0, i32 7
  %467 = load float, float* %466, align 4, !tbaa !45, !noalias !39
  %468 = fadd fast float %467, %416
  %469 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %468)  ; FMax(a,b)
  %470 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %468)  ; FMin(a,b)
  %471 = fmul fast float %470, 0x3F847AE140000000
  %472 = fadd fast float %471, %469
  store float %472, float* %466, align 4, !tbaa !45, !noalias !39
  %473 = add i32 %249, 26
  %474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.f32 %474, 0
  %476 = extractvalue %dx.types.ResRet.f32 %474, 1
  %477 = extractvalue %dx.types.ResRet.f32 %474, 2
  %478 = extractvalue %dx.types.ResRet.f32 %474, 3
  %479 = add i32 %249, 27
  %480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.f32 %480, 0
  %482 = extractvalue %dx.types.ResRet.f32 %480, 1
  %483 = extractvalue %dx.types.ResRet.f32 %480, 2
  %484 = extractvalue %dx.types.ResRet.f32 %480, 3
  %485 = fmul fast float %423, %475
  %486 = fmul fast float %430, %476
  %487 = fadd fast float %486, %485
  %488 = fmul fast float %437, %477
  %489 = fadd fast float %487, %488
  %490 = fmul fast float %444, %478
  %491 = fadd fast float %489, %490
  %492 = fmul fast float %451, %481
  %493 = fadd fast float %491, %492
  %494 = fmul fast float %458, %482
  %495 = fadd fast float %493, %494
  %496 = fmul fast float %465, %483
  %497 = fadd fast float %495, %496
  %498 = fmul fast float %472, %484
  %499 = fadd fast float %497, %498
  %500 = add i32 %249, 28
  %501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.f32 %501, 0
  %503 = fadd fast float %499, %502
  %504 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %503)  ; FMax(a,b)
  %505 = fmul fast float %404, %504
  %506 = call float @dx.op.unary.f32(i32 7, float %505)  ; Saturate(value)
  %507 = getelementptr inbounds [8 x float], [8 x float]* %20, i32 0, i32 %228
  store float %506, float* %507, align 4, !tbaa !45, !noalias !39
  %508 = fadd fast float %506, %227
  %509 = add nuw nsw i32 %228, 1
  %510 = icmp eq i32 %509, 8
  br i1 %510, label %514, label %511

; <label>:511                                     ; preds = %400
  %512 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i32 0, i32 %509
  %513 = load i32, i32* %512, align 4, !tbaa !35, !noalias !39
  br label %225

; <label>:514                                     ; preds = %400
  %515 = fcmp fast ugt float %508, 0x3EE4F8B580000000
  br i1 %515, label %516, label %777, !dx.controlflow.hints !47

; <label>:516                                     ; preds = %514
  %517 = fcmp fast ogt float %508, 0x3EE4F8B580000000
  %518 = fdiv fast float 1.000000e+00, %508
  %519 = select i1 %517, float %518, float 1.000000e+00
  %520 = getelementptr inbounds [8 x float], [8 x float]* %20, i32 0, i32 0
  %521 = load float, float* %520, align 4, !tbaa !45, !noalias !39
  %522 = fmul fast float %521, %519
  store float %522, float* %520, align 4, !tbaa !45, !noalias !39
  %523 = getelementptr inbounds [8 x float], [8 x float]* %20, i32 0, i32 1
  %524 = load float, float* %523, align 4, !tbaa !45, !noalias !39
  %525 = fmul fast float %524, %519
  store float %525, float* %523, align 4, !tbaa !45, !noalias !39
  %526 = getelementptr inbounds [8 x float], [8 x float]* %20, i32 0, i32 2
  %527 = load float, float* %526, align 4, !tbaa !45, !noalias !39
  %528 = fmul fast float %527, %519
  store float %528, float* %526, align 4, !tbaa !45, !noalias !39
  %529 = getelementptr inbounds [8 x float], [8 x float]* %20, i32 0, i32 3
  %530 = load float, float* %529, align 4, !tbaa !45, !noalias !39
  %531 = fmul fast float %530, %519
  store float %531, float* %529, align 4, !tbaa !45, !noalias !39
  %532 = getelementptr inbounds [8 x float], [8 x float]* %20, i32 0, i32 4
  %533 = load float, float* %532, align 4, !tbaa !45, !noalias !39
  %534 = fmul fast float %533, %519
  store float %534, float* %532, align 4, !tbaa !45, !noalias !39
  %535 = getelementptr inbounds [8 x float], [8 x float]* %20, i32 0, i32 5
  %536 = load float, float* %535, align 4, !tbaa !45, !noalias !39
  %537 = fmul fast float %536, %519
  store float %537, float* %535, align 4, !tbaa !45, !noalias !39
  %538 = getelementptr inbounds [8 x float], [8 x float]* %20, i32 0, i32 6
  %539 = load float, float* %538, align 4, !tbaa !45, !noalias !39
  %540 = fmul fast float %539, %519
  store float %540, float* %538, align 4, !tbaa !45, !noalias !39
  %541 = getelementptr inbounds [8 x float], [8 x float]* %20, i32 0, i32 7
  %542 = load float, float* %541, align 4, !tbaa !45, !noalias !39
  %543 = fmul fast float %542, %519
  store float %543, float* %541, align 4, !tbaa !45, !noalias !39
  br label %544

; <label>:544                                     ; preds = %771, %516
  %545 = phi float [ %775, %771 ], [ %522, %516 ]
  %546 = phi i32 [ %773, %771 ], [ %153, %516 ]
  %547 = phi float [ %726, %771 ], [ 0.000000e+00, %516 ]
  %548 = phi float [ %724, %771 ], [ 0.000000e+00, %516 ]
  %549 = phi float [ %722, %771 ], [ 0.000000e+00, %516 ]
  %550 = phi float [ %718, %771 ], [ 0.000000e+00, %516 ]
  %551 = phi float [ %716, %771 ], [ 0.000000e+00, %516 ]
  %552 = phi float [ %712, %771 ], [ 0.000000e+00, %516 ]
  %553 = phi float [ %710, %771 ], [ 0.000000e+00, %516 ]
  %554 = phi float [ %708, %771 ], [ 0.000000e+00, %516 ]
  %555 = phi float [ %704, %771 ], [ 0.000000e+00, %516 ]
  %556 = phi float [ %747, %771 ], [ 0.000000e+00, %516 ]
  %557 = phi float [ %745, %771 ], [ 0.000000e+00, %516 ]
  %558 = phi float [ %743, %771 ], [ 0.000000e+00, %516 ]
  %559 = phi float [ %740, %771 ], [ 0.000000e+00, %516 ]
  %560 = phi float [ %738, %771 ], [ 0.000000e+00, %516 ]
  %561 = phi float [ %735, %771 ], [ 0.000000e+00, %516 ]
  %562 = phi float [ %733, %771 ], [ 0.000000e+00, %516 ]
  %563 = phi float [ %731, %771 ], [ 0.000000e+00, %516 ]
  %564 = phi float [ %728, %771 ], [ 0.000000e+00, %516 ]
  %565 = phi float [ %768, %771 ], [ 0.000000e+00, %516 ]
  %566 = phi float [ %766, %771 ], [ 0.000000e+00, %516 ]
  %567 = phi float [ %764, %771 ], [ 0.000000e+00, %516 ]
  %568 = phi float [ %761, %771 ], [ 0.000000e+00, %516 ]
  %569 = phi float [ %759, %771 ], [ 0.000000e+00, %516 ]
  %570 = phi float [ %756, %771 ], [ 0.000000e+00, %516 ]
  %571 = phi float [ %754, %771 ], [ 0.000000e+00, %516 ]
  %572 = phi float [ %752, %771 ], [ 0.000000e+00, %516 ]
  %573 = phi float [ %749, %771 ], [ 0.000000e+00, %516 ]
  %574 = phi i32 [ %769, %771 ], [ 0, %516 ]
  %575 = shl i32 %546, 5
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = extractvalue %dx.types.ResRet.i32 %576, 1
  %579 = extractvalue %dx.types.ResRet.i32 %576, 2
  %580 = extractvalue %dx.types.ResRet.i32 %576, 3
  %581 = or i32 %575, 16
  %582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %581, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.i32 %582, 0
  %584 = extractvalue %dx.types.ResRet.i32 %582, 1
  %585 = extractvalue %dx.types.ResRet.i32 %582, 2
  %586 = shl i32 %577, 4
  %587 = and i32 %586, 32752
  %588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %587)  ; LegacyF16ToF32(value)
  %589 = lshr i32 %577, 7
  %590 = and i32 %589, 32752
  %591 = call float @dx.op.legacyF16ToF32(i32 131, i32 %590)  ; LegacyF16ToF32(value)
  %592 = lshr i32 %577, 22
  %593 = shl nuw nsw i32 %592, 5
  %594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %593)  ; LegacyF16ToF32(value)
  %595 = and i32 %578, 255
  %596 = uitofp i32 %595 to float
  %597 = fmul fast float %596, 0x3F80204080000000
  %598 = fadd fast float %597, -1.000000e+00
  %599 = lshr i32 %578, 8
  %600 = and i32 %599, 255
  %601 = uitofp i32 %600 to float
  %602 = fmul fast float %601, 0x3F80204080000000
  %603 = fadd fast float %602, -1.000000e+00
  %604 = lshr i32 %578, 16
  %605 = and i32 %604, 255
  %606 = uitofp i32 %605 to float
  %607 = fmul fast float %606, 0x3F80204080000000
  %608 = fadd fast float %607, -1.000000e+00
  %609 = lshr i32 %578, 24
  %610 = uitofp i32 %609 to float
  %611 = fmul fast float %610, 0x3F80204080000000
  %612 = fadd fast float %611, -1.000000e+00
  %613 = and i32 %579, 255
  %614 = uitofp i32 %613 to float
  %615 = fmul fast float %614, 0x3F80204080000000
  %616 = fadd fast float %615, -1.000000e+00
  %617 = lshr i32 %579, 8
  %618 = and i32 %617, 255
  %619 = uitofp i32 %618 to float
  %620 = fmul fast float %619, 0x3F80204080000000
  %621 = fadd fast float %620, -1.000000e+00
  %622 = lshr i32 %579, 16
  %623 = and i32 %622, 255
  %624 = uitofp i32 %623 to float
  %625 = fmul fast float %624, 0x3F80204080000000
  %626 = fadd fast float %625, -1.000000e+00
  %627 = lshr i32 %579, 24
  %628 = uitofp i32 %627 to float
  %629 = fmul fast float %628, 0x3F80204080000000
  %630 = fadd fast float %629, -1.000000e+00
  %631 = and i32 %580, 255
  %632 = uitofp i32 %631 to float
  %633 = fmul fast float %632, 0x3F80204080000000
  %634 = fadd fast float %633, -1.000000e+00
  %635 = lshr i32 %580, 8
  %636 = and i32 %635, 255
  %637 = uitofp i32 %636 to float
  %638 = fmul fast float %637, 0x3F80204080000000
  %639 = fadd fast float %638, -1.000000e+00
  %640 = lshr i32 %580, 16
  %641 = and i32 %640, 255
  %642 = uitofp i32 %641 to float
  %643 = fmul fast float %642, 0x3F80204080000000
  %644 = fadd fast float %643, -1.000000e+00
  %645 = lshr i32 %580, 24
  %646 = uitofp i32 %645 to float
  %647 = fmul fast float %646, 0x3F80204080000000
  %648 = fadd fast float %647, -1.000000e+00
  %649 = and i32 %583, 255
  %650 = uitofp i32 %649 to float
  %651 = fmul fast float %650, 0x3F80204080000000
  %652 = fadd fast float %651, -1.000000e+00
  %653 = lshr i32 %583, 8
  %654 = and i32 %653, 255
  %655 = uitofp i32 %654 to float
  %656 = fmul fast float %655, 0x3F80204080000000
  %657 = fadd fast float %656, -1.000000e+00
  %658 = lshr i32 %583, 16
  %659 = and i32 %658, 255
  %660 = uitofp i32 %659 to float
  %661 = fmul fast float %660, 0x3F80204080000000
  %662 = fadd fast float %661, -1.000000e+00
  %663 = lshr i32 %583, 24
  %664 = uitofp i32 %663 to float
  %665 = fmul fast float %664, 0x3F80204080000000
  %666 = fadd fast float %665, -1.000000e+00
  %667 = and i32 %584, 255
  %668 = uitofp i32 %667 to float
  %669 = fmul fast float %668, 0x3F80204080000000
  %670 = fadd fast float %669, -1.000000e+00
  %671 = lshr i32 %584, 8
  %672 = and i32 %671, 255
  %673 = uitofp i32 %672 to float
  %674 = fmul fast float %673, 0x3F80204080000000
  %675 = fadd fast float %674, -1.000000e+00
  %676 = lshr i32 %584, 16
  %677 = and i32 %676, 255
  %678 = uitofp i32 %677 to float
  %679 = fmul fast float %678, 0x3F80204080000000
  %680 = fadd fast float %679, -1.000000e+00
  %681 = lshr i32 %584, 24
  %682 = uitofp i32 %681 to float
  %683 = fmul fast float %682, 0x3F80204080000000
  %684 = fadd fast float %683, -1.000000e+00
  %685 = and i32 %585, 255
  %686 = uitofp i32 %685 to float
  %687 = fmul fast float %686, 0x3F80204080000000
  %688 = fadd fast float %687, -1.000000e+00
  %689 = lshr i32 %585, 8
  %690 = and i32 %689, 255
  %691 = uitofp i32 %690 to float
  %692 = fmul fast float %691, 0x3F80204080000000
  %693 = fadd fast float %692, -1.000000e+00
  %694 = lshr i32 %585, 16
  %695 = and i32 %694, 255
  %696 = uitofp i32 %695 to float
  %697 = fmul fast float %696, 0x3F80204080000000
  %698 = fadd fast float %697, -1.000000e+00
  %699 = lshr i32 %585, 24
  %700 = uitofp i32 %699 to float
  %701 = fmul fast float %700, 0x3F80204080000000
  %702 = fadd fast float %701, -1.000000e+00
  %703 = fmul fast float %588, %545
  %704 = fadd fast float %703, %555
  %705 = fmul fast float %545, 0x3FFBB67AE0000000
  %706 = fmul fast float %705, %588
  %707 = fmul fast float %706, %598
  %708 = fadd fast float %707, %554
  %709 = fmul fast float %706, %603
  %710 = fadd fast float %709, %553
  %711 = fmul fast float %706, %608
  %712 = fadd fast float %711, %552
  %713 = fmul fast float %545, 0x3FFEFBDEC0000000
  %714 = fmul fast float %713, %588
  %715 = fmul fast float %714, %612
  %716 = fadd fast float %715, %551
  %717 = fmul fast float %714, %616
  %718 = fadd fast float %717, %550
  %719 = fmul fast float %545, 0x4001E377A0000000
  %720 = fmul fast float %719, %588
  %721 = fmul fast float %720, %621
  %722 = fadd fast float %721, %549
  %723 = fmul fast float %714, %626
  %724 = fadd fast float %723, %548
  %725 = fmul fast float %714, %630
  %726 = fadd fast float %725, %547
  %727 = fmul fast float %591, %545
  %728 = fadd fast float %727, %564
  %729 = fmul fast float %705, %591
  %730 = fmul fast float %729, %634
  %731 = fadd fast float %730, %563
  %732 = fmul fast float %729, %639
  %733 = fadd fast float %732, %562
  %734 = fmul fast float %729, %644
  %735 = fadd fast float %734, %561
  %736 = fmul fast float %713, %591
  %737 = fmul fast float %736, %648
  %738 = fadd fast float %737, %560
  %739 = fmul fast float %736, %652
  %740 = fadd fast float %739, %559
  %741 = fmul fast float %719, %591
  %742 = fmul fast float %741, %657
  %743 = fadd fast float %742, %558
  %744 = fmul fast float %736, %662
  %745 = fadd fast float %744, %557
  %746 = fmul fast float %736, %666
  %747 = fadd fast float %746, %556
  %748 = fmul fast float %594, %545
  %749 = fadd fast float %748, %573
  %750 = fmul fast float %705, %594
  %751 = fmul fast float %750, %670
  %752 = fadd fast float %751, %572
  %753 = fmul fast float %750, %675
  %754 = fadd fast float %753, %571
  %755 = fmul fast float %750, %680
  %756 = fadd fast float %755, %570
  %757 = fmul fast float %713, %594
  %758 = fmul fast float %757, %684
  %759 = fadd fast float %758, %569
  %760 = fmul fast float %757, %688
  %761 = fadd fast float %760, %568
  %762 = fmul fast float %719, %594
  %763 = fmul fast float %762, %693
  %764 = fadd fast float %763, %567
  %765 = fmul fast float %757, %698
  %766 = fadd fast float %765, %566
  %767 = fmul fast float %757, %702
  %768 = fadd fast float %767, %565
  %769 = add nuw nsw i32 %574, 1
  %770 = icmp eq i32 %769, 8
  br i1 %770, label %776, label %771

; <label>:771                                     ; preds = %544
  %772 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i32 0, i32 %769
  %773 = load i32, i32* %772, align 4, !tbaa !35, !noalias !39
  %774 = getelementptr inbounds [8 x float], [8 x float]* %20, i32 0, i32 %769
  %775 = load float, float* %774, align 4, !tbaa !45, !noalias !39
  br label %544

; <label>:776                                     ; preds = %544
  br label %777

; <label>:777                                     ; preds = %776, %514, %81, %64, %40, %24
  %778 = phi float [ 0.000000e+00, %24 ], [ 0.000000e+00, %40 ], [ 0.000000e+00, %64 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %514 ], [ %768, %776 ]
  %779 = phi float [ 0.000000e+00, %24 ], [ 0.000000e+00, %40 ], [ 0.000000e+00, %64 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %514 ], [ %766, %776 ]
  %780 = phi float [ 0.000000e+00, %24 ], [ 0.000000e+00, %40 ], [ 0.000000e+00, %64 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %514 ], [ %764, %776 ]
  %781 = phi float [ 0.000000e+00, %24 ], [ 0.000000e+00, %40 ], [ 0.000000e+00, %64 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %514 ], [ %761, %776 ]
  %782 = phi float [ 0.000000e+00, %24 ], [ 0.000000e+00, %40 ], [ 0.000000e+00, %64 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %514 ], [ %759, %776 ]
  %783 = phi float [ 0.000000e+00, %24 ], [ 0.000000e+00, %40 ], [ 0.000000e+00, %64 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %514 ], [ %756, %776 ]
  %784 = phi float [ 0.000000e+00, %24 ], [ 0.000000e+00, %40 ], [ 0.000000e+00, %64 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %514 ], [ %754, %776 ]
  %785 = phi float [ 0.000000e+00, %24 ], [ 0.000000e+00, %40 ], [ 0.000000e+00, %64 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %514 ], [ %752, %776 ]
  %786 = phi float [ 0.000000e+00, %24 ], [ 0.000000e+00, %40 ], [ 0.000000e+00, %64 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %514 ], [ %749, %776 ]
  %787 = phi float [ 0.000000e+00, %24 ], [ 0.000000e+00, %40 ], [ 0.000000e+00, %64 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %514 ], [ %747, %776 ]
  %788 = phi float [ 0.000000e+00, %24 ], [ 0.000000e+00, %40 ], [ 0.000000e+00, %64 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %514 ], [ %745, %776 ]
  %789 = phi float [ 0.000000e+00, %24 ], [ 0.000000e+00, %40 ], [ 0.000000e+00, %64 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %514 ], [ %743, %776 ]
  %790 = phi float [ 0.000000e+00, %24 ], [ 0.000000e+00, %40 ], [ 0.000000e+00, %64 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %514 ], [ %740, %776 ]
  %791 = phi float [ 0.000000e+00, %24 ], [ 0.000000e+00, %40 ], [ 0.000000e+00, %64 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %514 ], [ %738, %776 ]
  %792 = phi float [ 0.000000e+00, %24 ], [ 0.000000e+00, %40 ], [ 0.000000e+00, %64 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %514 ], [ %735, %776 ]
  %793 = phi float [ 0.000000e+00, %24 ], [ 0.000000e+00, %40 ], [ 0.000000e+00, %64 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %514 ], [ %733, %776 ]
  %794 = phi float [ 0.000000e+00, %24 ], [ 0.000000e+00, %40 ], [ 0.000000e+00, %64 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %514 ], [ %731, %776 ]
  %795 = phi float [ 0.000000e+00, %24 ], [ 0.000000e+00, %40 ], [ 0.000000e+00, %64 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %514 ], [ %728, %776 ]
  %796 = phi float [ 0.000000e+00, %24 ], [ 0.000000e+00, %40 ], [ 0.000000e+00, %64 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %514 ], [ %726, %776 ]
  %797 = phi float [ 0.000000e+00, %24 ], [ 0.000000e+00, %40 ], [ 0.000000e+00, %64 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %514 ], [ %724, %776 ]
  %798 = phi float [ 0.000000e+00, %24 ], [ 0.000000e+00, %40 ], [ 0.000000e+00, %64 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %514 ], [ %722, %776 ]
  %799 = phi float [ 0.000000e+00, %24 ], [ 0.000000e+00, %40 ], [ 0.000000e+00, %64 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %514 ], [ %718, %776 ]
  %800 = phi float [ 0.000000e+00, %24 ], [ 0.000000e+00, %40 ], [ 0.000000e+00, %64 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %514 ], [ %716, %776 ]
  %801 = phi float [ 0.000000e+00, %24 ], [ 0.000000e+00, %40 ], [ 0.000000e+00, %64 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %514 ], [ %712, %776 ]
  %802 = phi float [ 0.000000e+00, %24 ], [ 0.000000e+00, %40 ], [ 0.000000e+00, %64 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %514 ], [ %710, %776 ]
  %803 = phi float [ 0.000000e+00, %24 ], [ 0.000000e+00, %40 ], [ 0.000000e+00, %64 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %514 ], [ %708, %776 ]
  %804 = phi float [ 0.000000e+00, %24 ], [ 0.000000e+00, %40 ], [ 0.000000e+00, %64 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %514 ], [ %704, %776 ]
  %805 = phi i1 [ true, %24 ], [ true, %40 ], [ true, %64 ], [ true, %81 ], [ true, %514 ], [ false, %776 ]
  br i1 %805, label %806, label %879, !dx.controlflow.hints !48

; <label>:806                                     ; preds = %777
  %807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.i32 %807, 0
  %809 = extractvalue %dx.types.ResRet.i32 %807, 1
  %810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %811 = extractvalue %dx.types.ResRet.i32 %810, 0
  %812 = extractvalue %dx.types.ResRet.i32 %810, 1
  %813 = extractvalue %dx.types.ResRet.i32 %810, 2
  %814 = extractvalue %dx.types.ResRet.i32 %810, 3
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = extractvalue %dx.types.ResRet.i32 %815, 1
  %818 = extractvalue %dx.types.ResRet.i32 %815, 2
  %819 = extractvalue %dx.types.ResRet.i32 %815, 3
  %820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.i32 %820, 0
  %822 = extractvalue %dx.types.ResRet.i32 %820, 1
  %823 = extractvalue %dx.types.ResRet.i32 %820, 2
  %824 = extractvalue %dx.types.ResRet.i32 %820, 3
  %825 = and i32 %821, 65535
  %826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %825)  ; LegacyF16ToF32(value)
  %827 = lshr i32 %821, 16
  %828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %827)  ; LegacyF16ToF32(value)
  %829 = and i32 %822, 65535
  %830 = call float @dx.op.legacyF16ToF32(i32 131, i32 %829)  ; LegacyF16ToF32(value)
  %831 = lshr i32 %822, 16
  %832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %831)  ; LegacyF16ToF32(value)
  %833 = and i32 %823, 65535
  %834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %833)  ; LegacyF16ToF32(value)
  %835 = lshr i32 %823, 16
  %836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %835)  ; LegacyF16ToF32(value)
  %837 = and i32 %824, 65535
  %838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %837)  ; LegacyF16ToF32(value)
  %839 = lshr i32 %824, 16
  %840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %839)  ; LegacyF16ToF32(value)
  %841 = and i32 %816, 65535
  %842 = call float @dx.op.legacyF16ToF32(i32 131, i32 %841)  ; LegacyF16ToF32(value)
  %843 = lshr i32 %816, 16
  %844 = call float @dx.op.legacyF16ToF32(i32 131, i32 %843)  ; LegacyF16ToF32(value)
  %845 = and i32 %817, 65535
  %846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %845)  ; LegacyF16ToF32(value)
  %847 = lshr i32 %817, 16
  %848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %847)  ; LegacyF16ToF32(value)
  %849 = and i32 %818, 65535
  %850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %849)  ; LegacyF16ToF32(value)
  %851 = lshr i32 %818, 16
  %852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %851)  ; LegacyF16ToF32(value)
  %853 = and i32 %819, 65535
  %854 = call float @dx.op.legacyF16ToF32(i32 131, i32 %853)  ; LegacyF16ToF32(value)
  %855 = lshr i32 %819, 16
  %856 = call float @dx.op.legacyF16ToF32(i32 131, i32 %855)  ; LegacyF16ToF32(value)
  %857 = and i32 %811, 65535
  %858 = call float @dx.op.legacyF16ToF32(i32 131, i32 %857)  ; LegacyF16ToF32(value)
  %859 = lshr i32 %811, 16
  %860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %859)  ; LegacyF16ToF32(value)
  %861 = and i32 %812, 65535
  %862 = call float @dx.op.legacyF16ToF32(i32 131, i32 %861)  ; LegacyF16ToF32(value)
  %863 = lshr i32 %812, 16
  %864 = call float @dx.op.legacyF16ToF32(i32 131, i32 %863)  ; LegacyF16ToF32(value)
  %865 = and i32 %813, 65535
  %866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %865)  ; LegacyF16ToF32(value)
  %867 = lshr i32 %813, 16
  %868 = call float @dx.op.legacyF16ToF32(i32 131, i32 %867)  ; LegacyF16ToF32(value)
  %869 = and i32 %814, 65535
  %870 = call float @dx.op.legacyF16ToF32(i32 131, i32 %869)  ; LegacyF16ToF32(value)
  %871 = lshr i32 %814, 16
  %872 = call float @dx.op.legacyF16ToF32(i32 131, i32 %871)  ; LegacyF16ToF32(value)
  %873 = and i32 %808, 65535
  %874 = call float @dx.op.legacyF16ToF32(i32 131, i32 %873)  ; LegacyF16ToF32(value)
  %875 = lshr i32 %808, 16
  %876 = call float @dx.op.legacyF16ToF32(i32 131, i32 %875)  ; LegacyF16ToF32(value)
  %877 = and i32 %809, 65535
  %878 = call float @dx.op.legacyF16ToF32(i32 131, i32 %877)  ; LegacyF16ToF32(value)
  br label %879

; <label>:879                                     ; preds = %806, %777
  %880 = phi float [ %778, %777 ], [ %878, %806 ]
  %881 = phi float [ %779, %777 ], [ %876, %806 ]
  %882 = phi float [ %780, %777 ], [ %874, %806 ]
  %883 = phi float [ %781, %777 ], [ %872, %806 ]
  %884 = phi float [ %782, %777 ], [ %870, %806 ]
  %885 = phi float [ %783, %777 ], [ %868, %806 ]
  %886 = phi float [ %784, %777 ], [ %866, %806 ]
  %887 = phi float [ %785, %777 ], [ %864, %806 ]
  %888 = phi float [ %786, %777 ], [ %862, %806 ]
  %889 = phi float [ %787, %777 ], [ %860, %806 ]
  %890 = phi float [ %788, %777 ], [ %858, %806 ]
  %891 = phi float [ %789, %777 ], [ %856, %806 ]
  %892 = phi float [ %790, %777 ], [ %854, %806 ]
  %893 = phi float [ %791, %777 ], [ %852, %806 ]
  %894 = phi float [ %792, %777 ], [ %850, %806 ]
  %895 = phi float [ %793, %777 ], [ %848, %806 ]
  %896 = phi float [ %794, %777 ], [ %846, %806 ]
  %897 = phi float [ %795, %777 ], [ %844, %806 ]
  %898 = phi float [ %796, %777 ], [ %842, %806 ]
  %899 = phi float [ %797, %777 ], [ %840, %806 ]
  %900 = phi float [ %798, %777 ], [ %838, %806 ]
  %901 = phi float [ %799, %777 ], [ %836, %806 ]
  %902 = phi float [ %800, %777 ], [ %834, %806 ]
  %903 = phi float [ %801, %777 ], [ %832, %806 ]
  %904 = phi float [ %802, %777 ], [ %830, %806 ]
  %905 = phi float [ %803, %777 ], [ %828, %806 ]
  %906 = phi float [ %804, %777 ], [ %826, %806 ]
  %907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %908 = extractvalue %dx.types.CBufRet.f32 %907, 0
  %909 = fcmp fast ult float %908, 0.000000e+00
  br i1 %909, label %912, label %910, !dx.controlflow.hints !49

; <label>:910                                     ; preds = %879
  %911 = fmul fast float %908, 0x400C5BF880000000
  br label %958

; <label>:912                                     ; preds = %879
  %913 = fmul fast float %906, 0x3FCB367A00000000
  %914 = fmul fast float %905, 0x3FCB367A00000000
  %915 = fmul fast float %904, 0x3FCB367A00000000
  %916 = fmul fast float %903, 0x3FCB367A00000000
  %917 = fmul fast float %902, 0x3FCB367A00000000
  %918 = fmul fast float %901, 0x3FCB367A00000000
  %919 = fmul fast float %900, 0x3FCB367A00000000
  %920 = fmul fast float %899, 0x3FCB367A00000000
  %921 = fmul fast float %898, 0x3FCB367A00000000
  %922 = fmul fast float %897, 0x3FE6E2EB20000000
  %923 = fmul fast float %896, 0x3FE6E2EB20000000
  %924 = fmul fast float %895, 0x3FE6E2EB20000000
  %925 = fmul fast float %894, 0x3FE6E2EB20000000
  %926 = fmul fast float %893, 0x3FE6E2EB20000000
  %927 = fmul fast float %892, 0x3FE6E2EB20000000
  %928 = fmul fast float %891, 0x3FE6E2EB20000000
  %929 = fmul fast float %890, 0x3FE6E2EB20000000
  %930 = fmul fast float %889, 0x3FE6E2EB20000000
  %931 = fmul fast float %888, 0x3FB27BB300000000
  %932 = fadd fast float %922, %931
  %933 = fadd fast float %932, %913
  %934 = fmul fast float %887, 0x3FB27BB300000000
  %935 = fadd fast float %923, %934
  %936 = fadd fast float %935, %914
  %937 = fmul fast float %886, 0x3FB27BB300000000
  %938 = fadd fast float %924, %937
  %939 = fadd fast float %938, %915
  %940 = fmul fast float %885, 0x3FB27BB300000000
  %941 = fadd fast float %925, %940
  %942 = fadd fast float %941, %916
  %943 = fmul fast float %884, 0x3FB27BB300000000
  %944 = fadd fast float %926, %943
  %945 = fadd fast float %944, %917
  %946 = fmul fast float %883, 0x3FB27BB300000000
  %947 = fadd fast float %927, %946
  %948 = fadd fast float %947, %918
  %949 = fmul fast float %882, 0x3FB27BB300000000
  %950 = fadd fast float %928, %949
  %951 = fadd fast float %950, %919
  %952 = fmul fast float %881, 0x3FB27BB300000000
  %953 = fadd fast float %929, %952
  %954 = fadd fast float %953, %920
  %955 = fmul fast float %880, 0x3FB27BB300000000
  %956 = fadd fast float %930, %955
  %957 = fadd fast float %956, %921
  br label %958

; <label>:958                                     ; preds = %912, %910
  %959 = phi float [ %957, %912 ], [ 0.000000e+00, %910 ]
  %960 = phi float [ %954, %912 ], [ 0.000000e+00, %910 ]
  %961 = phi float [ %951, %912 ], [ 0.000000e+00, %910 ]
  %962 = phi float [ %948, %912 ], [ 0.000000e+00, %910 ]
  %963 = phi float [ %945, %912 ], [ 0.000000e+00, %910 ]
  %964 = phi float [ %942, %912 ], [ 0.000000e+00, %910 ]
  %965 = phi float [ %939, %912 ], [ 0.000000e+00, %910 ]
  %966 = phi float [ %936, %912 ], [ 0.000000e+00, %910 ]
  %967 = phi float [ %933, %912 ], [ %911, %910 ]
  %968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.f32 %968, 3
  %970 = fmul fast float %969, %967
  %971 = fmul fast float %969, %966
  %972 = fmul fast float %969, %965
  %973 = fmul fast float %969, %964
  %974 = fmul fast float %969, %963
  %975 = fmul fast float %969, %962
  %976 = fmul fast float %969, %961
  %977 = fmul fast float %969, %960
  %978 = fmul fast float %969, %959
  %979 = mul i32 %30, 36
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %979, i32 undef, float %970, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %980 = add i32 %979, 4
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %980, i32 undef, float %971, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %981 = add i32 %979, 8
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %981, i32 undef, float %972, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %982 = add i32 %979, 12
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %982, i32 undef, float %973, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %983 = add i32 %979, 16
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %983, i32 undef, float %974, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %984 = add i32 %979, 20
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %984, i32 undef, float %975, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %985 = add i32 %979, 24
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %985, i32 undef, float %976, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %986 = add i32 %979, 28
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %986, i32 undef, float %977, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %987 = add i32 %979, 32
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %987, i32 undef, float %978, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %988

; <label>:988                                     ; preds = %958, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

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
!dx.entryPoints = !{!27}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !21, !23, null}
!5 = !{!6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20}
!6 = !{i32 0, %"class.StructuredBuffer<GfxNeuralLightGridTopLevelNode>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 16}
!8 = !{i32 1, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 10, i32 0, !9}
!9 = !{i32 0, i32 5}
!10 = !{i32 2, %"class.StructuredBuffer<GfxNeuralLightGridInternalNode>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !7}
!11 = !{i32 3, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 10, i32 0, !9}
!12 = !{i32 4, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 10, i32 0, !9}
!13 = !{i32 5, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 10, i32 0, !9}
!14 = !{i32 6, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 10, i32 0, !15}
!15 = !{i32 0, i32 9}
!16 = !{i32 7, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 7, i32 1, i32 10, i32 0, !9}
!17 = !{i32 8, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 10, i32 0, !15}
!18 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!19 = !{i32 10, %"class.StructuredBuffer<GfxReflectionProbeSampleLightgridRequest>"* undef, !"", i32 0, i32 12, i32 1, i32 12, i32 0, !7}
!20 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 11, i32 1, i32 11, i32 0, null}
!21 = !{!22}
!22 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!23 = !{!24, !25, !26}
!24 = !{i32 0, %GfxReflectionProbeSampleLightgridConsts* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!25 = !{i32 1, %GfxNeuralLightGridSetupConsts* undef, !"", i32 0, i32 4, i32 1, i32 80, null}
!26 = !{i32 2, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!27 = !{void ()* @cs_reflection_probe_sample_lightgrid, !"cs_reflection_probe_sample_lightgrid", null, !4, !28}
!28 = !{i32 0, i64 272, i32 4, !29}
!29 = !{i32 64, i32 1, i32 1}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !42, !43, !44}
!40 = distinct !{!40, !41, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeR"}
!41 = distinct !{!41, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z"}
!42 = distinct !{!42, !41, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeG"}
!43 = distinct !{!43, !41, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeB"}
!44 = distinct !{!44, !41, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeA"}
!45 = !{!46, !46, i64 0}
!46 = !{!"float", !37, i64 0}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}

