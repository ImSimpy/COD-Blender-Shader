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
; shader hash: 24ac5c94de1a8369575967c3c3801189
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
; cbuffer 
; {
;
;   [240 x i8] (type annotation not present)
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
;   [80 x i8] (type annotation not present)
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
;   [8 x i8] (type annotation not present)
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb4     1
;                                   cbuffer      NA          NA     CB1            cb3     1
;                                   cbuffer      NA          NA     CB2            cb1     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture    byte         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t1     1
;                                   texture    byte         r/o      T2             t2     1
;                                   texture    byte         r/o      T3             t3     1
;                                   texture    byte         r/o      T4             t8     1
;                                   texture    byte         r/o      T5             t4     1
;                                   texture    byte         r/o      T6             t5     1
;                                   texture    byte         r/o      T7             t6     1
;                                   texture    byte         r/o      T8             t7     1
;                                   texture     f32          2d      T9            t33     1
;                                   texture    byte         r/o     T10            t28     1
;                                   texture  struct         r/o     T11            t37     1
;                                   texture  struct         r/o     T12            t38     1
;                                   texture    byte         r/o     T13            t30     1
;                                   texture  struct         r/o     T14            t22     1
;                                   texture  struct         r/o     T15            t23     1
;                                   texture  struct         r/o     T16            t21     1
;                                   texture  struct         r/o     T17            t25     1
;                                       UAV     f32         buf      U0             u2     1
;                                       UAV     f32         buf      U1             u3     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<GfxMultiLightGridLightingCount>" = type { %struct.GfxMultiLightGridLightingCount }
%struct.GfxMultiLightGridLightingCount = type { [20 x i32] }
%"class.StructuredBuffer<vector<unsigned int, 2> >" = type { <2 x i32> }
%"class.RWBuffer<vector<float, 3> >" = type { <3 x float> }
%"class.RWBuffer<float>" = type { float }
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
%DeferredEffectLightConsts_decl = type { %struct.DeferredEffectLightConsts }
%struct.DeferredEffectLightConsts = type { i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x <4 x i32>] }
%struct.SamplerState = type { i32 }

define void @cs_del_sh_sample_lightgrid_1() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %26 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %27 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %28 = alloca [4 x i32], align 4
  %29 = alloca [4 x float], align 4
  %30 = alloca [4 x i32], align 4
  %31 = alloca [4 x float], align 4
  %32 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.i32 %32, 1
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %43, !dx.controlflow.hints !40

; <label>:35                                      ; preds = %0
  %36 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.i32 %36, 2
  %38 = extractvalue %dx.types.CBufRet.i32 %36, 0
  %39 = shl i32 %38, 2
  %40 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %37, i32 %39)  ; BufferLoad(srv,index,wot)
  %41 = extractvalue %dx.types.ResRet.i32 %40, 0
  %42 = icmp ult i32 %25, %41
  br i1 %42, label %45, label %1644, !dx.controlflow.hints !41

; <label>:43                                      ; preds = %0
  %44 = icmp ult i32 %25, %33
  br i1 %44, label %45, label %1644, !dx.controlflow.hints !42

; <label>:45                                      ; preds = %43, %35
  %46 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.i32 %46, 2
  %48 = add i32 %47, 3
  %49 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 %48)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.i32 %49, 1
  %51 = extractvalue %dx.types.CBufRet.i32 %49, 2
  %52 = extractvalue %dx.types.CBufRet.i32 %49, 3
  %53 = mul i32 %52, 20
  %54 = extractvalue %dx.types.CBufRet.i32 %46, 0
  %55 = mul i32 %54, %50
  %56 = add i32 %55, %53
  %57 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %47, i32 0)  ; BufferLoad(srv,index,wot)
  %58 = extractvalue %dx.types.ResRet.i32 %57, 0
  %59 = add i32 %58, 63
  %60 = lshr i32 %59, 6
  %61 = icmp ugt i32 %59, 127
  br i1 %61, label %62, label %82

; <label>:62                                      ; preds = %45
  br label %63

; <label>:63                                      ; preds = %63, %62
  %64 = phi i32 [ %75, %63 ], [ 0, %62 ]
  %65 = phi i32 [ %76, %63 ], [ 0, %62 ]
  %66 = phi i32 [ %77, %63 ], [ %60, %62 ]
  %67 = sub i32 %66, %64
  %68 = lshr i32 %67, 1
  %69 = add i32 %68, %64
  %70 = add i32 %56, -1
  %71 = add i32 %70, %69
  %72 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %71, i32 0)  ; BufferLoad(srv,index,wot)
  %73 = extractvalue %dx.types.ResRet.i32 %72, 0
  %74 = icmp ult i32 %25, %73
  %75 = select i1 %74, i32 %64, i32 %69
  %76 = select i1 %74, i32 %65, i32 %73
  %77 = select i1 %74, i32 %69, i32 %66
  %78 = sub i32 %66, %69
  %79 = select i1 %74, i32 %68, i32 %78
  %80 = icmp ugt i32 %79, 1
  br i1 %80, label %63, label %81

; <label>:81                                      ; preds = %63
  br label %82

; <label>:82                                      ; preds = %81, %45
  %83 = phi i32 [ 0, %45 ], [ %75, %81 ]
  %84 = phi i32 [ 0, %45 ], [ %76, %81 ]
  %85 = phi i32 [ %60, %45 ], [ %77, %81 ]
  %86 = add i32 %85, -1
  %87 = icmp eq i32 %83, 0
  %88 = select i1 %87, i32 0, i32 %84
  %89 = add i32 %86, %56
  %90 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %89, i32 0)  ; BufferLoad(srv,index,wot)
  %91 = extractvalue %dx.types.ResRet.i32 %90, 0
  %92 = extractvalue %dx.types.ResRet.i32 %90, 1
  %93 = sub i32 %25, %88
  %94 = and i32 %91, %92
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %131, label %96, !dx.controlflow.hints !43

; <label>:96                                      ; preds = %82
  %97 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %91)  ; Countbits(value)
  %98 = icmp uge i32 %93, %97
  %99 = select i1 %98, i32 %92, i32 %91
  %100 = select i1 %98, i32 %97, i32 0
  %101 = sub i32 %93, %100
  %102 = select i1 %98, i32 32, i32 0
  %103 = and i32 %101, 31
  %104 = shl i32 -1, %103
  %105 = xor i32 %104, -1
  %106 = and i32 %99, %105
  %107 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %106)  ; Countbits(value)
  %108 = add i32 %101, 1
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %128, label %110, !dx.controlflow.hints !44

; <label>:110                                     ; preds = %96
  %111 = and i32 %104, %99
  %112 = icmp eq i32 %101, %107
  br i1 %112, label %125, label %113

; <label>:113                                     ; preds = %110
  %114 = sub i32 %101, %107
  br label %115

; <label>:115                                     ; preds = %115, %113
  %116 = phi i32 [ %122, %115 ], [ %114, %113 ]
  %117 = phi i32 [ %121, %115 ], [ %111, %113 ]
  %118 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %117)  ; FirstbitLo(value)
  %119 = and i32 %118, 31
  %120 = shl i32 1, %119
  %121 = xor i32 %120, %117
  %122 = add i32 %116, -1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %115

; <label>:124                                     ; preds = %115
  br label %125

; <label>:125                                     ; preds = %124, %110
  %126 = phi i32 [ %111, %110 ], [ %121, %124 ]
  %127 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %126)  ; FirstbitLo(value)
  br label %128

; <label>:128                                     ; preds = %125, %96
  %129 = phi i32 [ %127, %125 ], [ %101, %96 ]
  %130 = add i32 %129, %102
  br label %131

; <label>:131                                     ; preds = %128, %82
  %132 = phi i32 [ %130, %128 ], [ %93, %82 ]
  %133 = shl i32 %86, 6
  %134 = add i32 %132, %133
  %135 = icmp ult i32 %134, %58
  br i1 %135, label %136, label %1644, !dx.controlflow.hints !45

; <label>:136                                     ; preds = %131
  %137 = add i32 %134, %51
  %138 = shl i32 %137, 5
  %139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %138, i32 undef)  ; BufferLoad(srv,index,wot)
  %140 = extractvalue %dx.types.ResRet.i32 %139, 0
  %141 = extractvalue %dx.types.ResRet.i32 %139, 1
  %142 = extractvalue %dx.types.ResRet.i32 %139, 2
  %143 = extractvalue %dx.types.ResRet.i32 %139, 3
  %144 = bitcast i32 %140 to float
  %145 = bitcast i32 %141 to float
  %146 = bitcast i32 %142 to float
  %147 = and i32 %143, 536870912
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %188, label %149, !dx.controlflow.hints !46

; <label>:149                                     ; preds = %136
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 3
  %153 = fmul fast float %151, %144
  %154 = fmul fast float %152, %145
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 0
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 1
  %158 = fadd fast float %153, %156
  %159 = fadd fast float %154, %157
  %160 = call float @dx.op.unary.f32(i32 7, float %158)  ; Saturate(value)
  %161 = call float @dx.op.unary.f32(i32 7, float %159)  ; Saturate(value)
  %162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %21, float %160, float %161, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %163 = extractvalue %dx.types.ResRet.f32 %162, 0
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %166 = fmul fast float %165, %163
  %167 = fsub fast float %158, %160
  %168 = fsub fast float %159, %161
  %169 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %170 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %171 = fmul fast float %169, %167
  %172 = fmul fast float %170, %168
  %173 = fmul fast float %171, %171
  %174 = fmul fast float %172, %172
  %175 = fadd fast float %173, %174
  %176 = call float @dx.op.unary.f32(i32 24, float %175)  ; Sqrt(value)
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 3
  %179 = fmul fast float %178, %176
  %180 = call float @dx.op.unary.f32(i32 7, float %179)  ; Saturate(value)
  %181 = extractvalue %dx.types.CBufRet.f32 %177, 2
  %182 = fsub fast float %181, %166
  %183 = fmul fast float %182, %180
  %184 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %185 = fadd fast float %166, %146
  %186 = fadd fast float %185, %184
  %187 = fadd fast float %186, %183
  br label %188

; <label>:188                                     ; preds = %149, %136
  %189 = phi float [ %187, %149 ], [ %146, %136 ]
  %190 = and i32 %143, 268435456
  %191 = icmp eq i32 %190, 0
  %192 = or i32 %138, 16
  %193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %192, i32 undef)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.i32 %193, 0
  %195 = extractvalue %dx.types.ResRet.i32 %193, 1
  %196 = extractvalue %dx.types.ResRet.i32 %193, 2
  %197 = extractvalue %dx.types.ResRet.i32 %193, 3
  %198 = and i32 %194, 65535
  %199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %198)  ; LegacyF16ToF32(value)
  %200 = lshr i32 %194, 16
  %201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %200)  ; LegacyF16ToF32(value)
  %202 = and i32 %195, 1023
  %203 = uitofp i32 %202 to float
  %204 = lshr i32 %195, 10
  %205 = and i32 %204, 1023
  %206 = uitofp i32 %205 to float
  %207 = lshr i32 %195, 20
  %208 = and i32 %207, 1023
  %209 = uitofp i32 %208 to float
  %210 = fmul fast float %203, 0x3F60040100000000
  %211 = fmul fast float %206, 0x3F60040100000000
  %212 = fmul fast float %209, 0x3F60040100000000
  %213 = fadd fast float %210, -1.000000e+00
  %214 = fadd fast float %211, -1.000000e+00
  %215 = fadd fast float %212, -1.000000e+00
  %216 = and i32 %196, 1023
  %217 = uitofp i32 %216 to float
  %218 = lshr i32 %196, 10
  %219 = and i32 %218, 1023
  %220 = uitofp i32 %219 to float
  %221 = lshr i32 %196, 20
  %222 = and i32 %221, 1023
  %223 = uitofp i32 %222 to float
  %224 = fmul fast float %217, 0x3F60040100000000
  %225 = fmul fast float %220, 0x3F60040100000000
  %226 = fmul fast float %223, 0x3F60040100000000
  %227 = fadd fast float %224, -1.000000e+00
  %228 = fadd fast float %225, -1.000000e+00
  %229 = fadd fast float %226, -1.000000e+00
  %230 = and i32 %197, 65535
  %231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %230)  ; LegacyF16ToF32(value)
  %232 = lshr i32 %197, 16
  %233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %232)  ; LegacyF16ToF32(value)
  %234 = call float @dx.op.unary.f32(i32 13, float %231)  ; Sin(value)
  %235 = call float @dx.op.unary.f32(i32 12, float %231)  ; Cos(value)
  %236 = fmul fast float %235, %213
  %237 = fmul fast float %235, %214
  %238 = fmul fast float %235, %215
  %239 = fmul fast float %234, %227
  %240 = fmul fast float %228, %234
  %241 = fmul fast float %229, %234
  %242 = fadd fast float %236, %239
  %243 = fadd fast float %237, %240
  %244 = fadd fast float %238, %241
  %245 = fmul fast float %242, %199
  %246 = fmul fast float %243, %199
  %247 = fmul fast float %244, %199
  %248 = fmul fast float %234, %213
  %249 = fmul fast float %214, %234
  %250 = fmul fast float %215, %234
  %251 = fmul fast float %235, %227
  %252 = fmul fast float %235, %228
  %253 = fmul fast float %235, %229
  %254 = fsub fast float %248, %251
  %255 = fsub fast float %249, %252
  %256 = fsub fast float %250, %253
  %257 = fmul fast float %254, %201
  %258 = fmul fast float %255, %201
  %259 = fmul fast float %256, %201
  %260 = uitofp i32 %26 to float
  %261 = uitofp i32 %27 to float
  %262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.f32 %262, 1
  %264 = fdiv fast float %260, %263
  %265 = fdiv fast float %261, %263
  %266 = extractvalue %dx.types.CBufRet.f32 %262, 2
  %267 = fadd fast float %266, %264
  %268 = fadd fast float %266, %265
  %269 = fmul fast float %267, %245
  %270 = fmul fast float %267, %246
  %271 = fmul fast float %267, %247
  %272 = fmul fast float %268, %257
  %273 = fmul fast float %268, %258
  %274 = fmul fast float %268, %259
  %275 = fadd fast float %272, %269
  %276 = fmul fast float %275, 2.000000e+00
  %277 = fsub fast float %144, %245
  %278 = fsub fast float %277, %257
  %279 = fadd fast float %278, %276
  %280 = fadd fast float %273, %270
  %281 = fmul fast float %280, 2.000000e+00
  %282 = fsub fast float %145, %246
  %283 = fsub fast float %282, %258
  %284 = fadd fast float %283, %281
  %285 = fadd fast float %274, %271
  %286 = fmul fast float %285, 2.000000e+00
  %287 = fsub fast float %189, %247
  %288 = fsub fast float %287, %259
  %289 = fadd fast float %288, %286
  %290 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.i32 %290, 2
  %292 = extractvalue %dx.types.CBufRet.i32 %290, 1
  %293 = extractvalue %dx.types.CBufRet.i32 %290, 0
  %294 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 0
  store float 0.000000e+00, float* %294, align 4
  %295 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 1
  store float 0.000000e+00, float* %295, align 4
  %296 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 2
  store float 0.000000e+00, float* %296, align 4
  %297 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 3
  store float 0.000000e+00, float* %297, align 4
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = extractvalue %dx.types.ResRet.i32 %300, 1
  %303 = extractvalue %dx.types.ResRet.i32 %300, 2
  %304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.f32 %304, 0
  %306 = extractvalue %dx.types.ResRet.f32 %304, 1
  %307 = extractvalue %dx.types.ResRet.f32 %304, 2
  %308 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.f32 %308, 0
  %310 = extractvalue %dx.types.ResRet.f32 %308, 1
  %311 = extractvalue %dx.types.ResRet.f32 %308, 2
  %312 = fsub fast float %279, %305
  %313 = fsub fast float %284, %306
  %314 = fsub fast float %289, %307
  %315 = fptoui float %312 to i32
  %316 = fptoui float %313 to i32
  %317 = fptoui float %314 to i32
  %318 = fcmp fast olt float %279, %305
  %319 = fcmp fast olt float %284, %306
  %320 = fcmp fast olt float %289, %307
  %321 = or i1 %318, %319
  %322 = or i1 %320, %321
  %323 = fcmp fast oge float %279, %309
  %324 = fcmp fast oge float %284, %310
  %325 = fcmp fast oge float %289, %311
  %326 = or i1 %323, %324
  %327 = or i1 %325, %326
  %328 = or i1 %322, %327
  %329 = and i32 %301, 31
  %330 = lshr i32 %315, %329
  %331 = lshr i32 %316, %329
  %332 = lshr i32 %317, %329
  %333 = mul i32 %331, %299
  %334 = add i32 %333, %330
  %335 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %336 = extractvalue %dx.types.CBufRet.i32 %335, 0
  %337 = icmp ult i32 %334, %336
  br i1 %337, label %338, label %354, !dx.controlflow.hints !47

; <label>:338                                     ; preds = %188
  %339 = mul i32 %334, 12
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = add i32 %339, 4
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = add i32 %339, 8
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = icmp ult i32 %332, %344
  %349 = icmp ugt i32 %332, %347
  %350 = or i1 %348, %349
  %351 = add i32 %341, %332
  %352 = sub i32 %351, %344
  %353 = select i1 %350, i32 -2147483648, i32 %352
  br label %354

; <label>:354                                     ; preds = %338, %188
  %355 = phi i32 [ %353, %338 ], [ -2147483648, %188 ]
  %356 = select i1 %328, i32 -2147483648, i32 %355
  %357 = icmp sgt i32 %356, -1
  %358 = and i32 %302, 31
  %359 = lshr i32 %315, %358
  %360 = lshr i32 %316, %358
  %361 = lshr i32 %317, %358
  %362 = and i32 %359, 3
  %363 = and i32 %361, 3
  %364 = shl nuw nsw i32 %363, 4
  %365 = shl i32 %360, 2
  %366 = and i32 %365, 12
  %367 = and i32 %364, 16
  %368 = or i32 %366, %362
  %369 = or i32 %368, %367
  %370 = shl i32 1, %369
  %371 = extractvalue %dx.types.CBufRet.i32 %335, 1
  %372 = icmp ult i32 %356, %371
  br i1 %372, label %373, label %391, !dx.controlflow.hints !48

; <label>:373                                     ; preds = %354
  %374 = lshr i32 %363, 1
  %375 = shl i32 %356, 4
  %376 = shl nuw nsw i32 %374, 2
  %377 = or i32 %375, %376
  %378 = or i32 %377, 8
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = and i32 %380, %370
  %382 = icmp eq i32 %381, 0
  %383 = add i32 %370, -1
  %384 = and i32 %380, %383
  %385 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %384)  ; Countbits(value)
  %386 = or i32 %375, %376
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = add i32 %388, %385
  %390 = select i1 %382, i32 -2147483648, i32 %389
  br label %391

; <label>:391                                     ; preds = %373, %354
  %392 = phi i32 [ %390, %373 ], [ -2147483648, %354 ]
  %393 = select i1 %357, i32 %392, i32 %356
  %394 = icmp sgt i32 %393, -1
  %395 = and i32 %303, 31
  %396 = lshr i32 %315, %395
  %397 = lshr i32 %316, %395
  %398 = lshr i32 %317, %395
  %399 = and i32 %396, 3
  %400 = and i32 %398, 3
  %401 = shl nuw nsw i32 %400, 4
  %402 = shl i32 %397, 2
  %403 = and i32 %402, 12
  %404 = and i32 %401, 16
  %405 = or i32 %403, %399
  %406 = or i32 %405, %404
  %407 = shl i32 1, %406
  %408 = icmp ult i32 %393, %371
  br i1 %408, label %409, label %427, !dx.controlflow.hints !48

; <label>:409                                     ; preds = %391
  %410 = lshr i32 %400, 1
  %411 = shl i32 %393, 4
  %412 = shl nuw nsw i32 %410, 2
  %413 = or i32 %411, %412
  %414 = or i32 %413, 8
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = and i32 %416, %407
  %418 = icmp eq i32 %417, 0
  %419 = add i32 %407, -1
  %420 = and i32 %416, %419
  %421 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %420)  ; Countbits(value)
  %422 = or i32 %411, %412
  %423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.i32 %423, 0
  %425 = add i32 %424, %421
  %426 = select i1 %418, i32 -2147483648, i32 %425
  br label %427

; <label>:427                                     ; preds = %409, %391
  %428 = phi i32 [ %426, %409 ], [ -2147483648, %391 ]
  %429 = select i1 %394, i32 %428, i32 %393
  br i1 %328, label %444, label %430, !dx.controlflow.hints !49

; <label>:430                                     ; preds = %427
  %431 = icmp eq i32 %429, -2147483648
  %432 = icmp eq i32 %393, -2147483648
  %433 = select i1 %432, i32 %356, i32 %393
  %434 = select i1 %431, i32 %433, i32 %429
  %435 = icmp sgt i32 %434, -1
  %436 = icmp ne i32 %291, -1
  %437 = and i1 %436, %435
  %438 = select i1 %437, i32 %291, i32 0
  %439 = add i32 %434, %292
  %440 = add i32 %439, %438
  %441 = shl i32 %440, 2
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  br label %444

; <label>:444                                     ; preds = %430, %427
  %445 = phi i32 [ %443, %430 ], [ -1, %427 ]
  %446 = icmp eq i32 %445, -1
  %447 = select i1 %446, i32 %293, i32 %445
  %448 = icmp eq i32 %447, -1
  br i1 %448, label %597, label %449

; <label>:449                                     ; preds = %444
  br label %450

; <label>:450                                     ; preds = %588, %449
  %451 = phi i32 [ %589, %588 ], [ 0, %449 ]
  %452 = phi i32 [ %453, %588 ], [ -1, %449 ]
  %453 = phi i32 [ %584, %588 ], [ %447, %449 ]
  %454 = phi float [ %560, %588 ], [ 0.000000e+00, %449 ]
  %455 = phi float [ %561, %588 ], [ 0.000000e+00, %449 ]
  %456 = phi float [ %562, %588 ], [ 0.000000e+00, %449 ]
  %457 = phi float [ %565, %588 ], [ 0.000000e+00, %449 ]
  %458 = icmp ugt i32 %451, 25
  br i1 %458, label %591, label %459, !dx.controlflow.hints !50

; <label>:459                                     ; preds = %450
  %460 = shl i32 %453, 4
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = extractvalue %dx.types.ResRet.i32 %461, 1
  %464 = extractvalue %dx.types.ResRet.i32 %461, 2
  %465 = extractvalue %dx.types.ResRet.i32 %461, 3
  %466 = and i32 %462, 2147483647
  %467 = mul nsw i32 %466, 12
  %468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.i32 %468, 0
  %470 = extractvalue %dx.types.ResRet.i32 %468, 1
  %471 = extractvalue %dx.types.ResRet.i32 %468, 2
  %472 = and i32 %463, 2147483647
  %473 = mul nsw i32 %472, 12
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = extractvalue %dx.types.ResRet.i32 %474, 1
  %477 = extractvalue %dx.types.ResRet.i32 %474, 2
  %478 = and i32 %464, 2147483647
  %479 = mul nsw i32 %478, 12
  %480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.i32 %480, 0
  %482 = extractvalue %dx.types.ResRet.i32 %480, 1
  %483 = extractvalue %dx.types.ResRet.i32 %480, 2
  %484 = and i32 %465, 2147483647
  %485 = mul nsw i32 %484, 12
  %486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %485, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.i32 %486, 0
  %488 = extractvalue %dx.types.ResRet.i32 %486, 1
  %489 = extractvalue %dx.types.ResRet.i32 %486, 2
  %490 = bitcast i32 %469 to float
  %491 = bitcast i32 %470 to float
  %492 = bitcast i32 %471 to float
  %493 = bitcast i32 %487 to float
  %494 = bitcast i32 %488 to float
  %495 = bitcast i32 %489 to float
  %496 = fsub fast float %490, %493
  %497 = fsub fast float %491, %494
  %498 = fsub fast float %492, %495
  %499 = bitcast i32 %475 to float
  %500 = bitcast i32 %476 to float
  %501 = bitcast i32 %477 to float
  %502 = fsub fast float %499, %493
  %503 = fsub fast float %500, %494
  %504 = fsub fast float %501, %495
  %505 = bitcast i32 %481 to float
  %506 = bitcast i32 %482 to float
  %507 = bitcast i32 %483 to float
  %508 = fsub fast float %505, %493
  %509 = fsub fast float %506, %494
  %510 = fsub fast float %507, %495
  %511 = fsub fast float %279, %493
  %512 = fsub fast float %284, %494
  %513 = fsub fast float %289, %495
  %514 = fmul fast float %503, %510
  %515 = fmul fast float %509, %504
  %516 = fsub fast float %514, %515
  %517 = fmul fast float %516, %496
  %518 = fmul fast float %502, %510
  %519 = fmul fast float %504, %508
  %520 = fsub fast float %518, %519
  %521 = fmul fast float %520, %497
  %522 = fsub fast float %517, %521
  %523 = fmul fast float %502, %509
  %524 = fmul fast float %503, %508
  %525 = fsub fast float %523, %524
  %526 = fmul fast float %525, %498
  %527 = fadd fast float %522, %526
  %528 = fdiv fast float 1.000000e+00, %527
  %529 = fmul fast float %516, %528
  %530 = fmul fast float %528, %520
  %531 = fsub fast float -0.000000e+00, %530
  %532 = fmul fast float %525, %528
  %533 = fmul fast float %497, %510
  %534 = fmul fast float %498, %509
  %535 = fsub fast float %533, %534
  %536 = fmul fast float %528, %535
  %537 = fsub fast float -0.000000e+00, %536
  %538 = fmul fast float %496, %510
  %539 = fmul fast float %508, %498
  %540 = fsub fast float %538, %539
  %541 = fmul fast float %540, %528
  %542 = fmul fast float %496, %509
  %543 = fmul fast float %497, %508
  %544 = fsub fast float %542, %543
  %545 = fmul fast float %528, %544
  %546 = fsub fast float -0.000000e+00, %545
  %547 = fmul fast float %497, %504
  %548 = fmul fast float %498, %503
  %549 = fsub fast float %547, %548
  %550 = fmul fast float %549, %528
  %551 = fmul fast float %496, %504
  %552 = fmul fast float %498, %502
  %553 = fsub fast float %551, %552
  %554 = fmul fast float %528, %553
  %555 = fsub fast float -0.000000e+00, %554
  %556 = fmul fast float %496, %503
  %557 = fmul fast float %497, %502
  %558 = fsub fast float %556, %557
  %559 = fmul fast float %558, %528
  %560 = call float @dx.op.dot3.f32(i32 55, float %529, float %531, float %532, float %511, float %512, float %513)  ; Dot3(ax,ay,az,bx,by,bz)
  %561 = call float @dx.op.dot3.f32(i32 55, float %537, float %541, float %546, float %511, float %512, float %513)  ; Dot3(ax,ay,az,bx,by,bz)
  %562 = call float @dx.op.dot3.f32(i32 55, float %550, float %555, float %559, float %511, float %512, float %513)  ; Dot3(ax,ay,az,bx,by,bz)
  %563 = fsub fast float 1.000000e+00, %560
  %564 = fsub fast float %563, %561
  %565 = fsub fast float %564, %562
  %566 = call float @dx.op.binary.f32(i32 36, float %560, float %561)  ; FMin(a,b)
  %567 = call float @dx.op.binary.f32(i32 36, float %566, float %562)  ; FMin(a,b)
  %568 = call float @dx.op.binary.f32(i32 36, float %567, float %565)  ; FMin(a,b)
  %569 = call float @dx.op.binary.f32(i32 35, float %560, float %561)  ; FMax(a,b)
  %570 = call float @dx.op.binary.f32(i32 35, float %569, float %562)  ; FMax(a,b)
  %571 = call float @dx.op.binary.f32(i32 35, float %570, float %565)  ; FMax(a,b)
  %572 = fcmp fast oge float %568, 0xBF50624DE0000000
  %573 = fcmp fast olt float %571, 0x3FF00068E0000000
  %574 = and i1 %572, %573
  br i1 %574, label %591, label %575, !dx.controlflow.hints !51

; <label>:575                                     ; preds = %459
  %576 = fcmp fast oeq float %568, %560
  %577 = fcmp fast oeq float %568, %561
  %578 = fcmp fast oeq float %568, %562
  %579 = select i1 %578, i32 8, i32 12
  %580 = select i1 %577, i32 4, i32 %579
  %581 = select i1 %576, i32 0, i32 %580
  %582 = or i32 %581, %460
  %583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %582, i32 undef)  ; BufferLoad(srv,index,wot)
  %584 = extractvalue %dx.types.ResRet.i32 %583, 0
  %585 = icmp ne i32 %452, -1
  %586 = icmp eq i32 %584, %452
  %587 = and i1 %585, %586
  br i1 %587, label %591, label %588, !dx.controlflow.hints !52

; <label>:588                                     ; preds = %575
  %589 = add nuw nsw i32 %451, 1
  %590 = icmp eq i32 %584, -1
  br i1 %590, label %591, label %450, !llvm.loop !53

; <label>:591                                     ; preds = %588, %575, %459, %450
  %592 = phi i32 [ %453, %575 ], [ %453, %459 ], [ -1, %588 ], [ -1, %450 ]
  %593 = phi float [ %560, %575 ], [ %560, %459 ], [ %560, %588 ], [ %454, %450 ]
  %594 = phi float [ %561, %575 ], [ %561, %459 ], [ %561, %588 ], [ %455, %450 ]
  %595 = phi float [ %562, %575 ], [ %562, %459 ], [ %562, %588 ], [ %456, %450 ]
  %596 = phi float [ %565, %575 ], [ %565, %459 ], [ %565, %588 ], [ %457, %450 ]
  br label %597

; <label>:597                                     ; preds = %591, %444
  %598 = phi i32 [ -1, %444 ], [ %592, %591 ]
  %599 = phi float [ 0.000000e+00, %444 ], [ %593, %591 ]
  %600 = phi float [ 0.000000e+00, %444 ], [ %594, %591 ]
  %601 = phi float [ 0.000000e+00, %444 ], [ %595, %591 ]
  %602 = phi float [ 0.000000e+00, %444 ], [ %596, %591 ]
  %603 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %599)  ; FMax(a,b)
  %604 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %600)  ; FMax(a,b)
  %605 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %601)  ; FMax(a,b)
  %606 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %602)  ; FMax(a,b)
  %607 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %603)  ; FMin(a,b)
  %608 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %604)  ; FMin(a,b)
  %609 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %605)  ; FMin(a,b)
  %610 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %606)  ; FMin(a,b)
  store float %607, float* %294, align 4
  store float %608, float* %295, align 4
  store float %609, float* %296, align 4
  store float %610, float* %297, align 4
  %611 = icmp eq i32 %598, -1
  br i1 %611, label %612, label %685, !dx.controlflow.hints !55

; <label>:612                                     ; preds = %597
  %613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.i32 %613, 0
  %615 = extractvalue %dx.types.ResRet.i32 %613, 1
  %616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.i32 %616, 0
  %618 = extractvalue %dx.types.ResRet.i32 %616, 1
  %619 = extractvalue %dx.types.ResRet.i32 %616, 2
  %620 = extractvalue %dx.types.ResRet.i32 %616, 3
  %621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %622 = extractvalue %dx.types.ResRet.i32 %621, 0
  %623 = extractvalue %dx.types.ResRet.i32 %621, 1
  %624 = extractvalue %dx.types.ResRet.i32 %621, 2
  %625 = extractvalue %dx.types.ResRet.i32 %621, 3
  %626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %627 = extractvalue %dx.types.ResRet.i32 %626, 0
  %628 = extractvalue %dx.types.ResRet.i32 %626, 1
  %629 = extractvalue %dx.types.ResRet.i32 %626, 2
  %630 = extractvalue %dx.types.ResRet.i32 %626, 3
  %631 = and i32 %627, 65535
  %632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %631)  ; LegacyF16ToF32(value)
  %633 = lshr i32 %627, 16
  %634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %633)  ; LegacyF16ToF32(value)
  %635 = and i32 %628, 65535
  %636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %635)  ; LegacyF16ToF32(value)
  %637 = lshr i32 %628, 16
  %638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %637)  ; LegacyF16ToF32(value)
  %639 = and i32 %629, 65535
  %640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %639)  ; LegacyF16ToF32(value)
  %641 = lshr i32 %629, 16
  %642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %641)  ; LegacyF16ToF32(value)
  %643 = and i32 %630, 65535
  %644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %643)  ; LegacyF16ToF32(value)
  %645 = lshr i32 %630, 16
  %646 = call float @dx.op.legacyF16ToF32(i32 131, i32 %645)  ; LegacyF16ToF32(value)
  %647 = and i32 %622, 65535
  %648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %647)  ; LegacyF16ToF32(value)
  %649 = lshr i32 %622, 16
  %650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %649)  ; LegacyF16ToF32(value)
  %651 = and i32 %623, 65535
  %652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %651)  ; LegacyF16ToF32(value)
  %653 = lshr i32 %623, 16
  %654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %653)  ; LegacyF16ToF32(value)
  %655 = and i32 %624, 65535
  %656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %655)  ; LegacyF16ToF32(value)
  %657 = lshr i32 %624, 16
  %658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %657)  ; LegacyF16ToF32(value)
  %659 = and i32 %625, 65535
  %660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %659)  ; LegacyF16ToF32(value)
  %661 = lshr i32 %625, 16
  %662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %661)  ; LegacyF16ToF32(value)
  %663 = and i32 %617, 65535
  %664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %663)  ; LegacyF16ToF32(value)
  %665 = lshr i32 %617, 16
  %666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %665)  ; LegacyF16ToF32(value)
  %667 = and i32 %618, 65535
  %668 = call float @dx.op.legacyF16ToF32(i32 131, i32 %667)  ; LegacyF16ToF32(value)
  %669 = lshr i32 %618, 16
  %670 = call float @dx.op.legacyF16ToF32(i32 131, i32 %669)  ; LegacyF16ToF32(value)
  %671 = and i32 %619, 65535
  %672 = call float @dx.op.legacyF16ToF32(i32 131, i32 %671)  ; LegacyF16ToF32(value)
  %673 = lshr i32 %619, 16
  %674 = call float @dx.op.legacyF16ToF32(i32 131, i32 %673)  ; LegacyF16ToF32(value)
  %675 = and i32 %620, 65535
  %676 = call float @dx.op.legacyF16ToF32(i32 131, i32 %675)  ; LegacyF16ToF32(value)
  %677 = lshr i32 %620, 16
  %678 = call float @dx.op.legacyF16ToF32(i32 131, i32 %677)  ; LegacyF16ToF32(value)
  %679 = and i32 %614, 65535
  %680 = call float @dx.op.legacyF16ToF32(i32 131, i32 %679)  ; LegacyF16ToF32(value)
  %681 = lshr i32 %614, 16
  %682 = call float @dx.op.legacyF16ToF32(i32 131, i32 %681)  ; LegacyF16ToF32(value)
  %683 = and i32 %615, 65535
  %684 = call float @dx.op.legacyF16ToF32(i32 131, i32 %683)  ; LegacyF16ToF32(value)
  br label %1391

; <label>:685                                     ; preds = %597
  %686 = shl nsw i32 %598, 4
  %687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %686, i32 undef)  ; BufferLoad(srv,index,wot)
  %688 = extractvalue %dx.types.ResRet.i32 %687, 0
  %689 = extractvalue %dx.types.ResRet.i32 %687, 1
  %690 = extractvalue %dx.types.ResRet.i32 %687, 2
  %691 = extractvalue %dx.types.ResRet.i32 %687, 3
  %692 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 0
  store i32 %688, i32* %692, align 4
  %693 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 1
  store i32 %689, i32* %693, align 4
  %694 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 2
  store i32 %690, i32* %694, align 4
  %695 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 3
  store i32 %691, i32* %695, align 4
  %696 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 0
  store float 0.000000e+00, float* %696, align 4
  %697 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 1
  store float 0.000000e+00, float* %697, align 4
  %698 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 2
  store float 0.000000e+00, float* %698, align 4
  %699 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 3
  store float 0.000000e+00, float* %699, align 4
  %700 = icmp slt i32 %688, 0
  br i1 %700, label %701, label %791, !dx.controlflow.hints !56

; <label>:701                                     ; preds = %685
  %702 = fsub fast float 1.000000e+00, %607
  %703 = fdiv fast float 1.000000e+00, %702
  %704 = shl nsw i32 %598, 6
  %705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %704, i32 undef)  ; BufferLoad(srv,index,wot)
  %706 = extractvalue %dx.types.ResRet.i32 %705, 0
  %707 = extractvalue %dx.types.ResRet.i32 %705, 1
  %708 = extractvalue %dx.types.ResRet.i32 %705, 2
  %709 = extractvalue %dx.types.ResRet.i32 %705, 3
  %710 = fmul fast float %703, %610
  %711 = fmul fast float %703, %608
  %712 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %706, i32* %712, align 4
  %713 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %707, i32* %713, align 4
  %714 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %708, i32* %714, align 4
  %715 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %709, i32* %715, align 4
  %716 = fmul fast float %711, 4.000000e+00
  %717 = call float @dx.op.unary.f32(i32 27, float %716)  ; Round_ni(value)
  %718 = fmul fast float %710, 4.000000e+00
  %719 = call float @dx.op.unary.f32(i32 27, float %718)  ; Round_ni(value)
  %720 = fsub fast float 1.100000e+01, %717
  %721 = fmul fast float %717, 5.000000e-01
  %722 = fmul fast float %721, %720
  %723 = fadd fast float %719, 5.000000e-01
  %724 = fadd fast float %723, %722
  %725 = fptosi float %724 to i32
  %726 = fptosi float %717 to i32
  %727 = sub nsw i32 5, %726
  %728 = fmul fast float %719, 2.500000e-01
  %729 = fmul fast float %717, 2.500000e-01
  %730 = add nsw i32 %725, 1
  %731 = add nsw i32 %725, %727
  %732 = fsub fast float %710, %728
  %733 = fmul fast float %732, 4.000000e+00
  %734 = fsub fast float %711, %729
  %735 = fmul fast float %734, 4.000000e+00
  %736 = fadd fast float %732, %734
  %737 = fmul fast float %736, 4.000000e+00
  %738 = fcmp fast ogt float %737, 1.000000e+00
  br i1 %738, label %739, label %745, !dx.controlflow.hints !57

; <label>:739                                     ; preds = %701
  %740 = add nsw i32 %731, 1
  %741 = fadd fast float %735, -1.000000e+00
  %742 = fsub fast float -0.000000e+00, %741
  %743 = fadd fast float %733, -1.000000e+00
  %744 = fsub fast float -0.000000e+00, %743
  br label %745

; <label>:745                                     ; preds = %739, %701
  %746 = phi i32 [ %740, %739 ], [ %725, %701 ]
  %747 = phi i32 [ %730, %739 ], [ %731, %701 ]
  %748 = phi i32 [ %731, %739 ], [ %730, %701 ]
  %749 = phi float [ %744, %739 ], [ %735, %701 ]
  %750 = phi float [ %742, %739 ], [ %733, %701 ]
  %751 = fsub fast float 1.000000e+00, %749
  %752 = fsub fast float %751, %750
  %753 = lshr i32 %748, 2
  %754 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %753
  %755 = load i32, i32* %754, align 4, !tbaa !58, !noalias !62
  %756 = shl i32 %748, 3
  %757 = and i32 %756, 24
  %758 = lshr i32 %755, %757
  %759 = and i32 %758, 255
  %760 = sitofp i32 %759 to float
  %761 = fmul fast float %750, 0x3F70101020000000
  %762 = fmul fast float %761, %760
  %763 = lshr i32 %747, 2
  %764 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %763
  %765 = load i32, i32* %764, align 4, !tbaa !58, !noalias !62
  %766 = shl i32 %747, 3
  %767 = and i32 %766, 24
  %768 = lshr i32 %765, %767
  %769 = and i32 %768, 255
  %770 = sitofp i32 %769 to float
  %771 = fmul fast float %749, 0x3F70101020000000
  %772 = fmul fast float %771, %770
  %773 = lshr i32 %746, 2
  %774 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %773
  %775 = load i32, i32* %774, align 4, !tbaa !58, !noalias !62
  %776 = shl i32 %746, 3
  %777 = and i32 %776, 24
  %778 = lshr i32 %775, %777
  %779 = and i32 %778, 255
  %780 = sitofp i32 %779 to float
  %781 = fmul fast float %752, 0x3F70101020000000
  %782 = fmul fast float %781, %780
  %783 = fsub fast float 1.000000e+00, %762
  %784 = fsub fast float %783, %772
  %785 = fsub fast float %784, %782
  %786 = fmul fast float %607, 2.000000e+01
  %787 = fadd fast float %786, 1.000000e+00
  %788 = fmul fast float %785, 2.000000e+01
  %789 = fsub fast float %787, %788
  %790 = call float @dx.op.unary.f32(i32 7, float %789)  ; Saturate(value)
  br label %791

; <label>:791                                     ; preds = %745, %685
  %792 = phi float [ %790, %745 ], [ 1.000000e+00, %685 ]
  store float %792, float* %696, align 4, !tbaa !70, !noalias !62
  %793 = icmp slt i32 %689, 0
  br i1 %793, label %794, label %885, !dx.controlflow.hints !56

; <label>:794                                     ; preds = %791
  %795 = fsub fast float 1.000000e+00, %608
  %796 = fdiv fast float 1.000000e+00, %795
  %797 = shl i32 %598, 6
  %798 = or i32 %797, 16
  %799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %798, i32 undef)  ; BufferLoad(srv,index,wot)
  %800 = extractvalue %dx.types.ResRet.i32 %799, 0
  %801 = extractvalue %dx.types.ResRet.i32 %799, 1
  %802 = extractvalue %dx.types.ResRet.i32 %799, 2
  %803 = extractvalue %dx.types.ResRet.i32 %799, 3
  %804 = fmul fast float %796, %607
  %805 = fmul fast float %796, %610
  %806 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %800, i32* %806, align 4
  %807 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %801, i32* %807, align 4
  %808 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %802, i32* %808, align 4
  %809 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %803, i32* %809, align 4
  %810 = fmul fast float %805, 4.000000e+00
  %811 = call float @dx.op.unary.f32(i32 27, float %810)  ; Round_ni(value)
  %812 = fmul fast float %804, 4.000000e+00
  %813 = call float @dx.op.unary.f32(i32 27, float %812)  ; Round_ni(value)
  %814 = fsub fast float 1.100000e+01, %811
  %815 = fmul fast float %811, 5.000000e-01
  %816 = fmul fast float %815, %814
  %817 = fadd fast float %813, 5.000000e-01
  %818 = fadd fast float %817, %816
  %819 = fptosi float %818 to i32
  %820 = fptosi float %811 to i32
  %821 = sub nsw i32 5, %820
  %822 = fmul fast float %813, 2.500000e-01
  %823 = fmul fast float %811, 2.500000e-01
  %824 = add nsw i32 %819, 1
  %825 = add nsw i32 %819, %821
  %826 = fsub fast float %804, %822
  %827 = fmul fast float %826, 4.000000e+00
  %828 = fsub fast float %805, %823
  %829 = fmul fast float %828, 4.000000e+00
  %830 = fadd fast float %826, %828
  %831 = fmul fast float %830, 4.000000e+00
  %832 = fcmp fast ogt float %831, 1.000000e+00
  br i1 %832, label %833, label %839, !dx.controlflow.hints !57

; <label>:833                                     ; preds = %794
  %834 = add nsw i32 %825, 1
  %835 = fadd fast float %829, -1.000000e+00
  %836 = fsub fast float -0.000000e+00, %835
  %837 = fadd fast float %827, -1.000000e+00
  %838 = fsub fast float -0.000000e+00, %837
  br label %839

; <label>:839                                     ; preds = %833, %794
  %840 = phi i32 [ %834, %833 ], [ %819, %794 ]
  %841 = phi i32 [ %824, %833 ], [ %825, %794 ]
  %842 = phi i32 [ %825, %833 ], [ %824, %794 ]
  %843 = phi float [ %838, %833 ], [ %829, %794 ]
  %844 = phi float [ %836, %833 ], [ %827, %794 ]
  %845 = fsub fast float 1.000000e+00, %843
  %846 = fsub fast float %845, %844
  %847 = lshr i32 %842, 2
  %848 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %847
  %849 = load i32, i32* %848, align 4, !tbaa !58, !noalias !62
  %850 = shl i32 %842, 3
  %851 = and i32 %850, 24
  %852 = lshr i32 %849, %851
  %853 = and i32 %852, 255
  %854 = sitofp i32 %853 to float
  %855 = fmul fast float %844, 0x3F70101020000000
  %856 = fmul fast float %855, %854
  %857 = lshr i32 %841, 2
  %858 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %857
  %859 = load i32, i32* %858, align 4, !tbaa !58, !noalias !62
  %860 = shl i32 %841, 3
  %861 = and i32 %860, 24
  %862 = lshr i32 %859, %861
  %863 = and i32 %862, 255
  %864 = sitofp i32 %863 to float
  %865 = fmul fast float %843, 0x3F70101020000000
  %866 = fmul fast float %865, %864
  %867 = lshr i32 %840, 2
  %868 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %867
  %869 = load i32, i32* %868, align 4, !tbaa !58, !noalias !62
  %870 = shl i32 %840, 3
  %871 = and i32 %870, 24
  %872 = lshr i32 %869, %871
  %873 = and i32 %872, 255
  %874 = sitofp i32 %873 to float
  %875 = fmul fast float %846, 0x3F70101020000000
  %876 = fmul fast float %875, %874
  %877 = fsub fast float 1.000000e+00, %856
  %878 = fsub fast float %877, %866
  %879 = fsub fast float %878, %876
  %880 = fmul fast float %608, 2.000000e+01
  %881 = fadd fast float %880, 1.000000e+00
  %882 = fmul fast float %879, 2.000000e+01
  %883 = fsub fast float %881, %882
  %884 = call float @dx.op.unary.f32(i32 7, float %883)  ; Saturate(value)
  br label %885

; <label>:885                                     ; preds = %839, %791
  %886 = phi float [ %884, %839 ], [ 1.000000e+00, %791 ]
  store float %886, float* %697, align 4, !tbaa !70, !noalias !62
  %887 = fadd fast float %886, %792
  %888 = icmp slt i32 %690, 0
  br i1 %888, label %889, label %980, !dx.controlflow.hints !56

; <label>:889                                     ; preds = %885
  %890 = fsub fast float 1.000000e+00, %609
  %891 = fdiv fast float 1.000000e+00, %890
  %892 = shl i32 %598, 6
  %893 = or i32 %892, 32
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = extractvalue %dx.types.ResRet.i32 %894, 1
  %897 = extractvalue %dx.types.ResRet.i32 %894, 2
  %898 = extractvalue %dx.types.ResRet.i32 %894, 3
  %899 = fmul fast float %891, %607
  %900 = fmul fast float %891, %608
  %901 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %895, i32* %901, align 4
  %902 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %896, i32* %902, align 4
  %903 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %897, i32* %903, align 4
  %904 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %898, i32* %904, align 4
  %905 = fmul fast float %900, 4.000000e+00
  %906 = call float @dx.op.unary.f32(i32 27, float %905)  ; Round_ni(value)
  %907 = fmul fast float %899, 4.000000e+00
  %908 = call float @dx.op.unary.f32(i32 27, float %907)  ; Round_ni(value)
  %909 = fsub fast float 1.100000e+01, %906
  %910 = fmul fast float %906, 5.000000e-01
  %911 = fmul fast float %910, %909
  %912 = fadd fast float %908, 5.000000e-01
  %913 = fadd fast float %912, %911
  %914 = fptosi float %913 to i32
  %915 = fptosi float %906 to i32
  %916 = sub nsw i32 5, %915
  %917 = fmul fast float %908, 2.500000e-01
  %918 = fmul fast float %906, 2.500000e-01
  %919 = add nsw i32 %914, 1
  %920 = add nsw i32 %914, %916
  %921 = fsub fast float %899, %917
  %922 = fmul fast float %921, 4.000000e+00
  %923 = fsub fast float %900, %918
  %924 = fmul fast float %923, 4.000000e+00
  %925 = fadd fast float %921, %923
  %926 = fmul fast float %925, 4.000000e+00
  %927 = fcmp fast ogt float %926, 1.000000e+00
  br i1 %927, label %928, label %934, !dx.controlflow.hints !57

; <label>:928                                     ; preds = %889
  %929 = add nsw i32 %920, 1
  %930 = fadd fast float %924, -1.000000e+00
  %931 = fsub fast float -0.000000e+00, %930
  %932 = fadd fast float %922, -1.000000e+00
  %933 = fsub fast float -0.000000e+00, %932
  br label %934

; <label>:934                                     ; preds = %928, %889
  %935 = phi i32 [ %929, %928 ], [ %914, %889 ]
  %936 = phi i32 [ %919, %928 ], [ %920, %889 ]
  %937 = phi i32 [ %920, %928 ], [ %919, %889 ]
  %938 = phi float [ %933, %928 ], [ %924, %889 ]
  %939 = phi float [ %931, %928 ], [ %922, %889 ]
  %940 = fsub fast float 1.000000e+00, %938
  %941 = fsub fast float %940, %939
  %942 = lshr i32 %937, 2
  %943 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %942
  %944 = load i32, i32* %943, align 4, !tbaa !58, !noalias !62
  %945 = shl i32 %937, 3
  %946 = and i32 %945, 24
  %947 = lshr i32 %944, %946
  %948 = and i32 %947, 255
  %949 = sitofp i32 %948 to float
  %950 = fmul fast float %939, 0x3F70101020000000
  %951 = fmul fast float %950, %949
  %952 = lshr i32 %936, 2
  %953 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %952
  %954 = load i32, i32* %953, align 4, !tbaa !58, !noalias !62
  %955 = shl i32 %936, 3
  %956 = and i32 %955, 24
  %957 = lshr i32 %954, %956
  %958 = and i32 %957, 255
  %959 = sitofp i32 %958 to float
  %960 = fmul fast float %938, 0x3F70101020000000
  %961 = fmul fast float %960, %959
  %962 = lshr i32 %935, 2
  %963 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %962
  %964 = load i32, i32* %963, align 4, !tbaa !58, !noalias !62
  %965 = shl i32 %935, 3
  %966 = and i32 %965, 24
  %967 = lshr i32 %964, %966
  %968 = and i32 %967, 255
  %969 = sitofp i32 %968 to float
  %970 = fmul fast float %941, 0x3F70101020000000
  %971 = fmul fast float %970, %969
  %972 = fsub fast float 1.000000e+00, %951
  %973 = fsub fast float %972, %961
  %974 = fsub fast float %973, %971
  %975 = fmul fast float %609, 2.000000e+01
  %976 = fadd fast float %975, 1.000000e+00
  %977 = fmul fast float %974, 2.000000e+01
  %978 = fsub fast float %976, %977
  %979 = call float @dx.op.unary.f32(i32 7, float %978)  ; Saturate(value)
  br label %980

; <label>:980                                     ; preds = %934, %885
  %981 = phi float [ %979, %934 ], [ 1.000000e+00, %885 ]
  store float %981, float* %698, align 4, !tbaa !70, !noalias !62
  %982 = fadd fast float %887, %981
  %983 = icmp slt i32 %691, 0
  br i1 %983, label %984, label %1075, !dx.controlflow.hints !56

; <label>:984                                     ; preds = %980
  %985 = fsub fast float 1.000000e+00, %610
  %986 = fdiv fast float 1.000000e+00, %985
  %987 = shl i32 %598, 6
  %988 = or i32 %987, 48
  %989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %988, i32 undef)  ; BufferLoad(srv,index,wot)
  %990 = extractvalue %dx.types.ResRet.i32 %989, 0
  %991 = extractvalue %dx.types.ResRet.i32 %989, 1
  %992 = extractvalue %dx.types.ResRet.i32 %989, 2
  %993 = extractvalue %dx.types.ResRet.i32 %989, 3
  %994 = fmul fast float %986, %607
  %995 = fmul fast float %986, %608
  %996 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %990, i32* %996, align 4
  %997 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %991, i32* %997, align 4
  %998 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %992, i32* %998, align 4
  %999 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %993, i32* %999, align 4
  %1000 = fmul fast float %995, 4.000000e+00
  %1001 = call float @dx.op.unary.f32(i32 27, float %1000)  ; Round_ni(value)
  %1002 = fmul fast float %994, 4.000000e+00
  %1003 = call float @dx.op.unary.f32(i32 27, float %1002)  ; Round_ni(value)
  %1004 = fsub fast float 1.100000e+01, %1001
  %1005 = fmul fast float %1001, 5.000000e-01
  %1006 = fmul fast float %1005, %1004
  %1007 = fadd fast float %1003, 5.000000e-01
  %1008 = fadd fast float %1007, %1006
  %1009 = fptosi float %1008 to i32
  %1010 = fptosi float %1001 to i32
  %1011 = sub nsw i32 5, %1010
  %1012 = fmul fast float %1003, 2.500000e-01
  %1013 = fmul fast float %1001, 2.500000e-01
  %1014 = add nsw i32 %1009, 1
  %1015 = add nsw i32 %1009, %1011
  %1016 = fsub fast float %994, %1012
  %1017 = fmul fast float %1016, 4.000000e+00
  %1018 = fsub fast float %995, %1013
  %1019 = fmul fast float %1018, 4.000000e+00
  %1020 = fadd fast float %1016, %1018
  %1021 = fmul fast float %1020, 4.000000e+00
  %1022 = fcmp fast ogt float %1021, 1.000000e+00
  br i1 %1022, label %1023, label %1029, !dx.controlflow.hints !57

; <label>:1023                                    ; preds = %984
  %1024 = add nsw i32 %1015, 1
  %1025 = fadd fast float %1019, -1.000000e+00
  %1026 = fsub fast float -0.000000e+00, %1025
  %1027 = fadd fast float %1017, -1.000000e+00
  %1028 = fsub fast float -0.000000e+00, %1027
  br label %1029

; <label>:1029                                    ; preds = %1023, %984
  %1030 = phi i32 [ %1024, %1023 ], [ %1009, %984 ]
  %1031 = phi i32 [ %1014, %1023 ], [ %1015, %984 ]
  %1032 = phi i32 [ %1015, %1023 ], [ %1014, %984 ]
  %1033 = phi float [ %1028, %1023 ], [ %1019, %984 ]
  %1034 = phi float [ %1026, %1023 ], [ %1017, %984 ]
  %1035 = fsub fast float 1.000000e+00, %1033
  %1036 = fsub fast float %1035, %1034
  %1037 = lshr i32 %1032, 2
  %1038 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %1037
  %1039 = load i32, i32* %1038, align 4, !tbaa !58, !noalias !62
  %1040 = shl i32 %1032, 3
  %1041 = and i32 %1040, 24
  %1042 = lshr i32 %1039, %1041
  %1043 = and i32 %1042, 255
  %1044 = sitofp i32 %1043 to float
  %1045 = fmul fast float %1034, 0x3F70101020000000
  %1046 = fmul fast float %1045, %1044
  %1047 = lshr i32 %1031, 2
  %1048 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %1047
  %1049 = load i32, i32* %1048, align 4, !tbaa !58, !noalias !62
  %1050 = shl i32 %1031, 3
  %1051 = and i32 %1050, 24
  %1052 = lshr i32 %1049, %1051
  %1053 = and i32 %1052, 255
  %1054 = sitofp i32 %1053 to float
  %1055 = fmul fast float %1033, 0x3F70101020000000
  %1056 = fmul fast float %1055, %1054
  %1057 = lshr i32 %1030, 2
  %1058 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %1057
  %1059 = load i32, i32* %1058, align 4, !tbaa !58, !noalias !62
  %1060 = shl i32 %1030, 3
  %1061 = and i32 %1060, 24
  %1062 = lshr i32 %1059, %1061
  %1063 = and i32 %1062, 255
  %1064 = sitofp i32 %1063 to float
  %1065 = fmul fast float %1036, 0x3F70101020000000
  %1066 = fmul fast float %1065, %1064
  %1067 = fsub fast float 1.000000e+00, %1046
  %1068 = fsub fast float %1067, %1056
  %1069 = fsub fast float %1068, %1066
  %1070 = fmul fast float %610, 2.000000e+01
  %1071 = fadd fast float %1070, 1.000000e+00
  %1072 = fmul fast float %1069, 2.000000e+01
  %1073 = fsub fast float %1071, %1072
  %1074 = call float @dx.op.unary.f32(i32 7, float %1073)  ; Saturate(value)
  br label %1075

; <label>:1075                                    ; preds = %1029, %980
  %1076 = phi float [ %1074, %1029 ], [ 1.000000e+00, %980 ]
  store float %1076, float* %699, align 4, !tbaa !70, !noalias !62
  %1077 = fadd fast float %982, %1076
  %1078 = fcmp fast oeq float %1077, 0.000000e+00
  br i1 %1078, label %1079, label %1080, !dx.controlflow.hints !72

; <label>:1079                                    ; preds = %1075
  store float 2.500000e-01, float* %696, align 4
  store float 2.500000e-01, float* %697, align 4
  store float 2.500000e-01, float* %698, align 4
  store float 2.500000e-01, float* %699, align 4
  br label %1080

; <label>:1080                                    ; preds = %1079, %1075
  %1081 = phi float [ 2.500000e-01, %1079 ], [ %792, %1075 ]
  %1082 = phi i32 [ 0, %1079 ], [ 1, %1075 ]
  br label %1083

; <label>:1083                                    ; preds = %1356, %1080
  %1084 = phi float [ %1081, %1080 ], [ %1358, %1356 ]
  %1085 = phi float [ 0.000000e+00, %1080 ], [ %1325, %1356 ]
  %1086 = phi float [ 0.000000e+00, %1080 ], [ %1326, %1356 ]
  %1087 = phi float [ 0.000000e+00, %1080 ], [ %1327, %1356 ]
  %1088 = phi float [ 0.000000e+00, %1080 ], [ %1328, %1356 ]
  %1089 = phi float [ 0.000000e+00, %1080 ], [ %1329, %1356 ]
  %1090 = phi float [ 0.000000e+00, %1080 ], [ %1330, %1356 ]
  %1091 = phi float [ 0.000000e+00, %1080 ], [ %1331, %1356 ]
  %1092 = phi float [ 0.000000e+00, %1080 ], [ %1332, %1356 ]
  %1093 = phi float [ 0.000000e+00, %1080 ], [ %1333, %1356 ]
  %1094 = phi float [ 0.000000e+00, %1080 ], [ %1334, %1356 ]
  %1095 = phi float [ 0.000000e+00, %1080 ], [ %1335, %1356 ]
  %1096 = phi float [ 0.000000e+00, %1080 ], [ %1336, %1356 ]
  %1097 = phi float [ 0.000000e+00, %1080 ], [ %1337, %1356 ]
  %1098 = phi float [ 0.000000e+00, %1080 ], [ %1338, %1356 ]
  %1099 = phi float [ 0.000000e+00, %1080 ], [ %1339, %1356 ]
  %1100 = phi float [ 0.000000e+00, %1080 ], [ %1340, %1356 ]
  %1101 = phi float [ 0.000000e+00, %1080 ], [ %1341, %1356 ]
  %1102 = phi float [ 0.000000e+00, %1080 ], [ %1342, %1356 ]
  %1103 = phi float [ 0.000000e+00, %1080 ], [ %1343, %1356 ]
  %1104 = phi float [ 0.000000e+00, %1080 ], [ %1344, %1356 ]
  %1105 = phi float [ 0.000000e+00, %1080 ], [ %1345, %1356 ]
  %1106 = phi float [ 0.000000e+00, %1080 ], [ %1346, %1356 ]
  %1107 = phi float [ 0.000000e+00, %1080 ], [ %1347, %1356 ]
  %1108 = phi float [ 0.000000e+00, %1080 ], [ %1348, %1356 ]
  %1109 = phi float [ 0.000000e+00, %1080 ], [ %1349, %1356 ]
  %1110 = phi float [ 0.000000e+00, %1080 ], [ %1350, %1356 ]
  %1111 = phi float [ 0.000000e+00, %1080 ], [ %1351, %1356 ]
  %1112 = phi float [ 0.000000e+00, %1080 ], [ %1352, %1356 ]
  %1113 = phi float [ 0.000000e+00, %1080 ], [ %1353, %1356 ]
  %1114 = phi i32 [ 0, %1080 ], [ %1354, %1356 ]
  %1115 = fcmp fast ogt float %1084, 0.000000e+00
  br i1 %1115, label %1116, label %1324, !dx.controlflow.hints !73

; <label>:1116                                    ; preds = %1083
  %1117 = getelementptr [4 x float], [4 x float]* %29, i32 0, i32 %1114
  %1118 = load float, float* %1117, align 4, !tbaa !70, !noalias !62
  %1119 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %1114
  %1120 = load i32, i32* %1119, align 4, !tbaa !58, !noalias !62
  %1121 = fmul fast float %1118, %1084
  %1122 = shl i32 %1120, 5
  %1123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1122, i32 undef)  ; BufferLoad(srv,index,wot)
  %1124 = extractvalue %dx.types.ResRet.i32 %1123, 0
  %1125 = extractvalue %dx.types.ResRet.i32 %1123, 1
  %1126 = extractvalue %dx.types.ResRet.i32 %1123, 2
  %1127 = extractvalue %dx.types.ResRet.i32 %1123, 3
  %1128 = or i32 %1122, 16
  %1129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1128, i32 undef)  ; BufferLoad(srv,index,wot)
  %1130 = extractvalue %dx.types.ResRet.i32 %1129, 0
  %1131 = extractvalue %dx.types.ResRet.i32 %1129, 1
  %1132 = extractvalue %dx.types.ResRet.i32 %1129, 2
  %1133 = extractvalue %dx.types.ResRet.i32 %1129, 3
  %1134 = shl i32 %1124, 4
  %1135 = and i32 %1134, 32752
  %1136 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1135)  ; LegacyF16ToF32(value)
  %1137 = lshr i32 %1124, 7
  %1138 = and i32 %1137, 32752
  %1139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1138)  ; LegacyF16ToF32(value)
  %1140 = lshr i32 %1124, 22
  %1141 = shl nuw nsw i32 %1140, 5
  %1142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1141)  ; LegacyF16ToF32(value)
  %1143 = and i32 %1125, 255
  %1144 = uitofp i32 %1143 to float
  %1145 = fmul fast float %1144, 0x3F80204080000000
  %1146 = fadd fast float %1145, -1.000000e+00
  %1147 = lshr i32 %1125, 8
  %1148 = and i32 %1147, 255
  %1149 = uitofp i32 %1148 to float
  %1150 = fmul fast float %1149, 0x3F80204080000000
  %1151 = fadd fast float %1150, -1.000000e+00
  %1152 = lshr i32 %1125, 16
  %1153 = and i32 %1152, 255
  %1154 = uitofp i32 %1153 to float
  %1155 = fmul fast float %1154, 0x3F80204080000000
  %1156 = fadd fast float %1155, -1.000000e+00
  %1157 = lshr i32 %1125, 24
  %1158 = uitofp i32 %1157 to float
  %1159 = fmul fast float %1158, 0x3F80204080000000
  %1160 = fadd fast float %1159, -1.000000e+00
  %1161 = and i32 %1126, 255
  %1162 = uitofp i32 %1161 to float
  %1163 = fmul fast float %1162, 0x3F80204080000000
  %1164 = fadd fast float %1163, -1.000000e+00
  %1165 = lshr i32 %1126, 8
  %1166 = and i32 %1165, 255
  %1167 = uitofp i32 %1166 to float
  %1168 = fmul fast float %1167, 0x3F80204080000000
  %1169 = fadd fast float %1168, -1.000000e+00
  %1170 = lshr i32 %1126, 16
  %1171 = and i32 %1170, 255
  %1172 = uitofp i32 %1171 to float
  %1173 = fmul fast float %1172, 0x3F80204080000000
  %1174 = fadd fast float %1173, -1.000000e+00
  %1175 = lshr i32 %1126, 24
  %1176 = uitofp i32 %1175 to float
  %1177 = fmul fast float %1176, 0x3F80204080000000
  %1178 = fadd fast float %1177, -1.000000e+00
  %1179 = and i32 %1127, 255
  %1180 = uitofp i32 %1179 to float
  %1181 = fmul fast float %1180, 0x3F80204080000000
  %1182 = fadd fast float %1181, -1.000000e+00
  %1183 = lshr i32 %1127, 8
  %1184 = and i32 %1183, 255
  %1185 = uitofp i32 %1184 to float
  %1186 = fmul fast float %1185, 0x3F80204080000000
  %1187 = fadd fast float %1186, -1.000000e+00
  %1188 = lshr i32 %1127, 16
  %1189 = and i32 %1188, 255
  %1190 = uitofp i32 %1189 to float
  %1191 = fmul fast float %1190, 0x3F80204080000000
  %1192 = fadd fast float %1191, -1.000000e+00
  %1193 = lshr i32 %1127, 24
  %1194 = uitofp i32 %1193 to float
  %1195 = fmul fast float %1194, 0x3F80204080000000
  %1196 = fadd fast float %1195, -1.000000e+00
  %1197 = and i32 %1130, 255
  %1198 = uitofp i32 %1197 to float
  %1199 = fmul fast float %1198, 0x3F80204080000000
  %1200 = fadd fast float %1199, -1.000000e+00
  %1201 = lshr i32 %1130, 8
  %1202 = and i32 %1201, 255
  %1203 = uitofp i32 %1202 to float
  %1204 = fmul fast float %1203, 0x3F80204080000000
  %1205 = fadd fast float %1204, -1.000000e+00
  %1206 = lshr i32 %1130, 16
  %1207 = and i32 %1206, 255
  %1208 = uitofp i32 %1207 to float
  %1209 = fmul fast float %1208, 0x3F80204080000000
  %1210 = fadd fast float %1209, -1.000000e+00
  %1211 = lshr i32 %1130, 24
  %1212 = uitofp i32 %1211 to float
  %1213 = fmul fast float %1212, 0x3F80204080000000
  %1214 = fadd fast float %1213, -1.000000e+00
  %1215 = and i32 %1131, 255
  %1216 = uitofp i32 %1215 to float
  %1217 = fmul fast float %1216, 0x3F80204080000000
  %1218 = fadd fast float %1217, -1.000000e+00
  %1219 = lshr i32 %1131, 8
  %1220 = and i32 %1219, 255
  %1221 = uitofp i32 %1220 to float
  %1222 = fmul fast float %1221, 0x3F80204080000000
  %1223 = fadd fast float %1222, -1.000000e+00
  %1224 = lshr i32 %1131, 16
  %1225 = and i32 %1224, 255
  %1226 = uitofp i32 %1225 to float
  %1227 = fmul fast float %1226, 0x3F80204080000000
  %1228 = fadd fast float %1227, -1.000000e+00
  %1229 = lshr i32 %1131, 24
  %1230 = uitofp i32 %1229 to float
  %1231 = fmul fast float %1230, 0x3F80204080000000
  %1232 = fadd fast float %1231, -1.000000e+00
  %1233 = and i32 %1132, 255
  %1234 = uitofp i32 %1233 to float
  %1235 = fmul fast float %1234, 0x3F80204080000000
  %1236 = fadd fast float %1235, -1.000000e+00
  %1237 = lshr i32 %1132, 8
  %1238 = and i32 %1237, 255
  %1239 = uitofp i32 %1238 to float
  %1240 = fmul fast float %1239, 0x3F80204080000000
  %1241 = fadd fast float %1240, -1.000000e+00
  %1242 = lshr i32 %1132, 16
  %1243 = and i32 %1242, 255
  %1244 = uitofp i32 %1243 to float
  %1245 = fmul fast float %1244, 0x3F80204080000000
  %1246 = fadd fast float %1245, -1.000000e+00
  %1247 = lshr i32 %1132, 24
  %1248 = uitofp i32 %1247 to float
  %1249 = fmul fast float %1248, 0x3F80204080000000
  %1250 = fadd fast float %1249, -1.000000e+00
  %1251 = lshr i32 %1133, 8
  %1252 = and i32 %1251, 255
  %1253 = uitofp i32 %1252 to float
  %1254 = fmul fast float %1136, %1121
  %1255 = fadd fast float %1254, %1093
  %1256 = fmul fast float %1121, 0x3FFBB67AE0000000
  %1257 = fmul fast float %1256, %1136
  %1258 = fmul fast float %1257, %1146
  %1259 = fadd fast float %1258, %1092
  %1260 = fmul fast float %1257, %1151
  %1261 = fadd fast float %1260, %1091
  %1262 = fmul fast float %1257, %1156
  %1263 = fadd fast float %1262, %1090
  %1264 = fmul fast float %1121, 0x3FFEFBDEC0000000
  %1265 = fmul fast float %1264, %1136
  %1266 = fmul fast float %1265, %1160
  %1267 = fadd fast float %1266, %1089
  %1268 = fmul fast float %1265, %1164
  %1269 = fadd fast float %1268, %1088
  %1270 = fmul fast float %1121, 0x4001E377A0000000
  %1271 = fmul fast float %1270, %1136
  %1272 = fmul fast float %1271, %1169
  %1273 = fadd fast float %1272, %1087
  %1274 = fmul fast float %1265, %1174
  %1275 = fadd fast float %1274, %1086
  %1276 = fmul fast float %1265, %1178
  %1277 = fadd fast float %1276, %1085
  %1278 = fmul fast float %1139, %1121
  %1279 = fadd fast float %1278, %1102
  %1280 = fmul fast float %1256, %1139
  %1281 = fmul fast float %1280, %1182
  %1282 = fadd fast float %1281, %1101
  %1283 = fmul fast float %1280, %1187
  %1284 = fadd fast float %1283, %1100
  %1285 = fmul fast float %1280, %1192
  %1286 = fadd fast float %1285, %1099
  %1287 = fmul fast float %1264, %1139
  %1288 = fmul fast float %1287, %1196
  %1289 = fadd fast float %1288, %1098
  %1290 = fmul fast float %1287, %1200
  %1291 = fadd fast float %1290, %1097
  %1292 = fmul fast float %1270, %1139
  %1293 = fmul fast float %1292, %1205
  %1294 = fadd fast float %1293, %1096
  %1295 = fmul fast float %1287, %1210
  %1296 = fadd fast float %1295, %1095
  %1297 = fmul fast float %1287, %1214
  %1298 = fadd fast float %1297, %1094
  %1299 = fmul fast float %1142, %1121
  %1300 = fadd fast float %1299, %1111
  %1301 = fmul fast float %1256, %1142
  %1302 = fmul fast float %1301, %1218
  %1303 = fadd fast float %1302, %1110
  %1304 = fmul fast float %1301, %1223
  %1305 = fadd fast float %1304, %1109
  %1306 = fmul fast float %1301, %1228
  %1307 = fadd fast float %1306, %1108
  %1308 = fmul fast float %1264, %1142
  %1309 = fmul fast float %1308, %1232
  %1310 = fadd fast float %1309, %1107
  %1311 = fmul fast float %1308, %1236
  %1312 = fadd fast float %1311, %1106
  %1313 = fmul fast float %1270, %1142
  %1314 = fmul fast float %1313, %1241
  %1315 = fadd fast float %1314, %1105
  %1316 = fmul fast float %1308, %1246
  %1317 = fadd fast float %1316, %1104
  %1318 = fmul fast float %1308, %1250
  %1319 = fadd fast float %1318, %1103
  %1320 = fmul fast float %1121, 0x3F70101020000000
  %1321 = fmul fast float %1320, %1253
  %1322 = fadd fast float %1321, %1112
  %1323 = fadd fast float %1121, %1113
  br label %1324

; <label>:1324                                    ; preds = %1116, %1083
  %1325 = phi float [ %1277, %1116 ], [ %1085, %1083 ]
  %1326 = phi float [ %1275, %1116 ], [ %1086, %1083 ]
  %1327 = phi float [ %1273, %1116 ], [ %1087, %1083 ]
  %1328 = phi float [ %1269, %1116 ], [ %1088, %1083 ]
  %1329 = phi float [ %1267, %1116 ], [ %1089, %1083 ]
  %1330 = phi float [ %1263, %1116 ], [ %1090, %1083 ]
  %1331 = phi float [ %1261, %1116 ], [ %1091, %1083 ]
  %1332 = phi float [ %1259, %1116 ], [ %1092, %1083 ]
  %1333 = phi float [ %1255, %1116 ], [ %1093, %1083 ]
  %1334 = phi float [ %1298, %1116 ], [ %1094, %1083 ]
  %1335 = phi float [ %1296, %1116 ], [ %1095, %1083 ]
  %1336 = phi float [ %1294, %1116 ], [ %1096, %1083 ]
  %1337 = phi float [ %1291, %1116 ], [ %1097, %1083 ]
  %1338 = phi float [ %1289, %1116 ], [ %1098, %1083 ]
  %1339 = phi float [ %1286, %1116 ], [ %1099, %1083 ]
  %1340 = phi float [ %1284, %1116 ], [ %1100, %1083 ]
  %1341 = phi float [ %1282, %1116 ], [ %1101, %1083 ]
  %1342 = phi float [ %1279, %1116 ], [ %1102, %1083 ]
  %1343 = phi float [ %1319, %1116 ], [ %1103, %1083 ]
  %1344 = phi float [ %1317, %1116 ], [ %1104, %1083 ]
  %1345 = phi float [ %1315, %1116 ], [ %1105, %1083 ]
  %1346 = phi float [ %1312, %1116 ], [ %1106, %1083 ]
  %1347 = phi float [ %1310, %1116 ], [ %1107, %1083 ]
  %1348 = phi float [ %1307, %1116 ], [ %1108, %1083 ]
  %1349 = phi float [ %1305, %1116 ], [ %1109, %1083 ]
  %1350 = phi float [ %1303, %1116 ], [ %1110, %1083 ]
  %1351 = phi float [ %1300, %1116 ], [ %1111, %1083 ]
  %1352 = phi float [ %1322, %1116 ], [ %1112, %1083 ]
  %1353 = phi float [ %1323, %1116 ], [ %1113, %1083 ]
  %1354 = add nuw nsw i32 %1114, 1
  %1355 = icmp eq i32 %1354, 4
  br i1 %1355, label %1359, label %1356

; <label>:1356                                    ; preds = %1324
  %1357 = getelementptr [4 x float], [4 x float]* %31, i32 0, i32 %1354
  %1358 = load float, float* %1357, align 4, !tbaa !70, !noalias !62
  br label %1083

; <label>:1359                                    ; preds = %1324
  %1360 = fcmp fast ogt float %1353, 0.000000e+00
  %1361 = fdiv fast float 1.000000e+00, %1353
  %1362 = select i1 %1360, float %1361, float 1.000000e+00
  %1363 = fmul fast float %1362, %1333
  %1364 = fmul fast float %1362, %1332
  %1365 = fmul fast float %1362, %1331
  %1366 = fmul fast float %1362, %1330
  %1367 = fmul fast float %1362, %1329
  %1368 = fmul fast float %1362, %1328
  %1369 = fmul fast float %1362, %1327
  %1370 = fmul fast float %1362, %1326
  %1371 = fmul fast float %1362, %1325
  %1372 = fmul fast float %1362, %1342
  %1373 = fmul fast float %1362, %1341
  %1374 = fmul fast float %1362, %1340
  %1375 = fmul fast float %1362, %1339
  %1376 = fmul fast float %1362, %1338
  %1377 = fmul fast float %1362, %1337
  %1378 = fmul fast float %1362, %1336
  %1379 = fmul fast float %1362, %1335
  %1380 = fmul fast float %1362, %1334
  %1381 = fmul fast float %1362, %1351
  %1382 = fmul fast float %1362, %1350
  %1383 = fmul fast float %1362, %1349
  %1384 = fmul fast float %1362, %1348
  %1385 = fmul fast float %1362, %1347
  %1386 = fmul fast float %1362, %1346
  %1387 = fmul fast float %1362, %1345
  %1388 = fmul fast float %1362, %1344
  %1389 = fmul fast float %1362, %1343
  %1390 = fmul fast float %1362, %1352
  br label %1391

; <label>:1391                                    ; preds = %1359, %612
  %1392 = phi float [ %648, %612 ], [ %1371, %1359 ]
  %1393 = phi float [ %646, %612 ], [ %1370, %1359 ]
  %1394 = phi float [ %644, %612 ], [ %1369, %1359 ]
  %1395 = phi float [ %642, %612 ], [ %1368, %1359 ]
  %1396 = phi float [ %640, %612 ], [ %1367, %1359 ]
  %1397 = phi float [ %638, %612 ], [ %1366, %1359 ]
  %1398 = phi float [ %636, %612 ], [ %1365, %1359 ]
  %1399 = phi float [ %634, %612 ], [ %1364, %1359 ]
  %1400 = phi float [ %632, %612 ], [ %1363, %1359 ]
  %1401 = phi float [ %666, %612 ], [ %1380, %1359 ]
  %1402 = phi float [ %664, %612 ], [ %1379, %1359 ]
  %1403 = phi float [ %662, %612 ], [ %1378, %1359 ]
  %1404 = phi float [ %660, %612 ], [ %1377, %1359 ]
  %1405 = phi float [ %658, %612 ], [ %1376, %1359 ]
  %1406 = phi float [ %656, %612 ], [ %1375, %1359 ]
  %1407 = phi float [ %654, %612 ], [ %1374, %1359 ]
  %1408 = phi float [ %652, %612 ], [ %1373, %1359 ]
  %1409 = phi float [ %650, %612 ], [ %1372, %1359 ]
  %1410 = phi float [ %684, %612 ], [ %1389, %1359 ]
  %1411 = phi float [ %682, %612 ], [ %1388, %1359 ]
  %1412 = phi float [ %680, %612 ], [ %1387, %1359 ]
  %1413 = phi float [ %678, %612 ], [ %1386, %1359 ]
  %1414 = phi float [ %676, %612 ], [ %1385, %1359 ]
  %1415 = phi float [ %674, %612 ], [ %1384, %1359 ]
  %1416 = phi float [ %672, %612 ], [ %1383, %1359 ]
  %1417 = phi float [ %670, %612 ], [ %1382, %1359 ]
  %1418 = phi float [ %668, %612 ], [ %1381, %1359 ]
  %1419 = phi float [ 0.000000e+00, %612 ], [ %1390, %1359 ]
  %1420 = phi i32 [ 1, %612 ], [ %1082, %1359 ]
  %1421 = icmp ne i32 %1420, 0
  %1422 = select i1 %1421, float %1419, float 3.125000e-02
  %1423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1424 = extractvalue %dx.types.CBufRet.f32 %1423, 0
  %1425 = extractvalue %dx.types.CBufRet.f32 %1423, 1
  %1426 = extractvalue %dx.types.CBufRet.f32 %1423, 2
  %1427 = fsub fast float %279, %1424
  %1428 = fsub fast float %284, %1425
  %1429 = fsub fast float %289, %1426
  %1430 = call float @dx.op.dot3.f32(i32 55, float %1427, float %1428, float %1429, float %1427, float %1428, float %1429)  ; Dot3(ax,ay,az,bx,by,bz)
  %1431 = call float @dx.op.unary.f32(i32 25, float %1430)  ; Rsqrt(value)
  %1432 = fmul fast float %1427, %1431
  %1433 = fmul fast float %1428, %1431
  %1434 = fmul fast float %1429, %1431
  %1435 = fsub fast float -0.000000e+00, %1432
  %1436 = fsub fast float -0.000000e+00, %1433
  %1437 = fmul fast float %1400, 0x3FD20DD760000000
  %1438 = fmul fast float %1409, 0x3FD20DD760000000
  %1439 = fmul fast float %1418, 0x3FD20DD760000000
  br i1 %191, label %1520, label %1440, !dx.controlflow.hints !74

; <label>:1440                                    ; preds = %1391
  %1441 = fmul fast float %1398, 0xBFD4D8D7C0000000
  %1442 = fmul fast float %1441, %1434
  %1443 = fmul fast float %1434, %1434
  %1444 = fmul fast float %1443, 0x3FEE471020000000
  %1445 = fadd fast float %1444, 0xBFD42F6020000000
  %1446 = fmul fast float %1445, %1394
  %1447 = fmul fast float %1397, 0x3FD4D8D7C0000000
  %1448 = fmul fast float %1399, 0x3FD4D8D7C0000000
  %1449 = fmul fast float %1448, %1433
  %1450 = fmul fast float %1434, 0x3FF17B1420000000
  %1451 = fmul fast float %1393, %1435
  %1452 = fmul fast float %1395, %1436
  %1453 = fmul fast float %1432, %1432
  %1454 = fmul fast float %1433, %1433
  %1455 = fsub fast float %1453, %1454
  %1456 = fmul fast float %1392, 0x3FC17B1420000000
  %1457 = fmul fast float %1456, %1455
  %1458 = fmul fast float %1396, 0x3FD17B1420000000
  %1459 = fmul fast float %1458, %1431
  %1460 = fmul fast float %1459, %1428
  %1461 = fadd fast float %1451, %1452
  %1462 = fmul fast float %1450, %1461
  %1463 = fadd fast float %1462, %1446
  %1464 = fmul fast float %1463, 2.500000e-01
  %1465 = fadd fast float %1460, %1447
  %1466 = fmul fast float %1465, %1432
  %1467 = fadd fast float %1442, %1437
  %1468 = fadd fast float %1467, %1449
  %1469 = fadd fast float %1468, %1457
  %1470 = fadd fast float %1469, %1464
  %1471 = fadd fast float %1470, %1466
  %1472 = fmul fast float %1407, 0xBFD4D8D7C0000000
  %1473 = fmul fast float %1472, %1434
  %1474 = fmul fast float %1445, %1403
  %1475 = fmul fast float %1406, 0x3FD4D8D7C0000000
  %1476 = fmul fast float %1408, 0x3FD4D8D7C0000000
  %1477 = fmul fast float %1476, %1433
  %1478 = fmul fast float %1402, %1435
  %1479 = fmul fast float %1404, %1436
  %1480 = fmul fast float %1401, 0x3FC17B1420000000
  %1481 = fmul fast float %1480, %1455
  %1482 = fmul fast float %1405, 0x3FD17B1420000000
  %1483 = fmul fast float %1482, %1431
  %1484 = fmul fast float %1483, %1428
  %1485 = fadd fast float %1478, %1479
  %1486 = fmul fast float %1450, %1485
  %1487 = fadd fast float %1486, %1474
  %1488 = fmul fast float %1487, 2.500000e-01
  %1489 = fadd fast float %1484, %1475
  %1490 = fmul fast float %1489, %1432
  %1491 = fadd fast float %1473, %1438
  %1492 = fadd fast float %1491, %1477
  %1493 = fadd fast float %1492, %1481
  %1494 = fadd fast float %1493, %1488
  %1495 = fadd fast float %1494, %1490
  %1496 = fmul fast float %1416, 0xBFD4D8D7C0000000
  %1497 = fmul fast float %1496, %1434
  %1498 = fmul fast float %1445, %1412
  %1499 = fmul fast float %1415, 0x3FD4D8D7C0000000
  %1500 = fmul fast float %1417, 0x3FD4D8D7C0000000
  %1501 = fmul fast float %1500, %1433
  %1502 = fmul fast float %1411, %1435
  %1503 = fmul fast float %1413, %1436
  %1504 = fmul fast float %1410, 0x3FC17B1420000000
  %1505 = fmul fast float %1504, %1455
  %1506 = fmul fast float %1414, 0x3FD17B1420000000
  %1507 = fmul fast float %1506, %1431
  %1508 = fmul fast float %1507, %1428
  %1509 = fadd fast float %1502, %1503
  %1510 = fmul fast float %1450, %1509
  %1511 = fadd fast float %1510, %1498
  %1512 = fmul fast float %1511, 2.500000e-01
  %1513 = fadd fast float %1508, %1499
  %1514 = fmul fast float %1513, %1432
  %1515 = fadd fast float %1497, %1439
  %1516 = fadd fast float %1515, %1501
  %1517 = fadd fast float %1516, %1505
  %1518 = fadd fast float %1517, %1512
  %1519 = fadd fast float %1518, %1514
  br label %1614

; <label>:1520                                    ; preds = %1391
  %1521 = fmul fast float %233, %233
  %1522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1523 = extractvalue %dx.types.CBufRet.f32 %1522, 0
  %1524 = extractvalue %dx.types.CBufRet.f32 %1522, 1
  %1525 = extractvalue %dx.types.CBufRet.f32 %1522, 2
  %1526 = fmul fast float %1398, %233
  %1527 = fmul fast float %1526, %1525
  %1528 = fmul fast float %1525, %1525
  %1529 = fmul fast float %1528, 0x3FEE471020000000
  %1530 = fadd fast float %1529, 0xBFD42F6020000000
  %1531 = fmul fast float %1530, %1394
  %1532 = fmul fast float %1523, %1397
  %1533 = fmul fast float %1524, %1399
  %1534 = fmul fast float %1525, 0x3FF17B1420000000
  %1535 = fmul fast float %1393, %1521
  %1536 = fmul fast float %1535, %1523
  %1537 = fmul fast float %1536, %1534
  %1538 = fmul fast float %1395, %1521
  %1539 = fmul fast float %1538, %1524
  %1540 = fmul fast float %1539, %1534
  %1541 = fmul fast float %1523, %1523
  %1542 = fmul fast float %1524, %1524
  %1543 = fsub fast float %1541, %1542
  %1544 = fmul fast float %1392, 0x3FE17B1420000000
  %1545 = fmul fast float %1544, %1543
  %1546 = fmul fast float %1396, 0x3FF17B1420000000
  %1547 = fmul fast float %1546, %1524
  %1548 = fmul fast float %1547, %1523
  %1549 = fadd fast float %1545, %1548
  %1550 = fadd fast float %1549, %1531
  %1551 = fmul fast float %1550, %1521
  %1552 = fadd fast float %1533, %1532
  %1553 = fmul fast float %1552, %233
  %1554 = fsub fast float %1553, %1527
  %1555 = fmul fast float %1554, 0x3FDF454380000000
  %1556 = fsub fast float %1437, %1537
  %1557 = fsub fast float %1556, %1540
  %1558 = fadd fast float %1557, %1551
  %1559 = fadd fast float %1558, %1555
  %1560 = fmul fast float %1407, %233
  %1561 = fmul fast float %1560, %1525
  %1562 = fmul fast float %1530, %1403
  %1563 = fmul fast float %1523, %1406
  %1564 = fmul fast float %1524, %1408
  %1565 = fmul fast float %1402, %1521
  %1566 = fmul fast float %1565, %1523
  %1567 = fmul fast float %1566, %1534
  %1568 = fmul fast float %1404, %1521
  %1569 = fmul fast float %1568, %1524
  %1570 = fmul fast float %1569, %1534
  %1571 = fmul fast float %1401, 0x3FE17B1420000000
  %1572 = fmul fast float %1571, %1543
  %1573 = fmul fast float %1405, 0x3FF17B1420000000
  %1574 = fmul fast float %1573, %1524
  %1575 = fmul fast float %1574, %1523
  %1576 = fadd fast float %1572, %1575
  %1577 = fadd fast float %1576, %1562
  %1578 = fmul fast float %1577, %1521
  %1579 = fadd fast float %1564, %1563
  %1580 = fmul fast float %1579, %233
  %1581 = fsub fast float %1580, %1561
  %1582 = fmul fast float %1581, 0x3FDF454380000000
  %1583 = fsub fast float %1438, %1567
  %1584 = fsub fast float %1583, %1570
  %1585 = fadd fast float %1584, %1578
  %1586 = fadd fast float %1585, %1582
  %1587 = fmul fast float %1416, %233
  %1588 = fmul fast float %1587, %1525
  %1589 = fmul fast float %1530, %1412
  %1590 = fmul fast float %1523, %1415
  %1591 = fmul fast float %1524, %1417
  %1592 = fmul fast float %1411, %1521
  %1593 = fmul fast float %1592, %1523
  %1594 = fmul fast float %1593, %1534
  %1595 = fmul fast float %1413, %1521
  %1596 = fmul fast float %1595, %1524
  %1597 = fmul fast float %1596, %1534
  %1598 = fmul fast float %1410, 0x3FE17B1420000000
  %1599 = fmul fast float %1598, %1543
  %1600 = fmul fast float %1414, 0x3FF17B1420000000
  %1601 = fmul fast float %1600, %1524
  %1602 = fmul fast float %1601, %1523
  %1603 = fadd fast float %1599, %1602
  %1604 = fadd fast float %1603, %1589
  %1605 = fmul fast float %1604, %1521
  %1606 = fadd fast float %1591, %1590
  %1607 = fmul fast float %1606, %233
  %1608 = fsub fast float %1607, %1588
  %1609 = fmul fast float %1608, 0x3FDF454380000000
  %1610 = fsub fast float %1439, %1594
  %1611 = fsub fast float %1610, %1597
  %1612 = fadd fast float %1611, %1605
  %1613 = fadd fast float %1612, %1609
  br label %1614

; <label>:1614                                    ; preds = %1520, %1440
  %1615 = phi float [ %1471, %1440 ], [ %1559, %1520 ]
  %1616 = phi float [ %1495, %1440 ], [ %1586, %1520 ]
  %1617 = phi float [ %1519, %1440 ], [ %1613, %1520 ]
  %1618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %137, i32 0)  ; BufferLoad(srv,index,wot)
  %1619 = extractvalue %dx.types.ResRet.i32 %1618, 0
  %1620 = icmp eq i32 %1619, 262144
  br i1 %1620, label %1640, label %1621, !dx.controlflow.hints !75

; <label>:1621                                    ; preds = %1614
  %1622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %137, i32 0)  ; BufferLoad(srv,index,wot)
  %1623 = extractvalue %dx.types.ResRet.i32 %1622, 0
  %1624 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1625 = extractvalue %dx.types.CBufRet.i32 %1624, 0
  %1626 = and i32 %1625, 31
  %1627 = shl i32 1, %1626
  %1628 = add i32 %1627, -1
  %1629 = and i32 %1628, %1623
  %1630 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1629)  ; Countbits(value)
  %1631 = extractvalue %dx.types.CBufRet.i32 %1624, 2
  %1632 = and i32 %1631, 31
  %1633 = shl i32 1, %1632
  %1634 = shl i32 %1633, %1632
  %1635 = shl i32 %27, %1632
  %1636 = mul i32 %1634, %1630
  %1637 = add i32 %1619, %26
  %1638 = add i32 %1637, %1635
  %1639 = add i32 %1638, %1636
  br label %1640

; <label>:1640                                    ; preds = %1621, %1614
  %1641 = phi i32 [ %1639, %1621 ], [ -1, %1614 ]
  %1642 = icmp eq i32 %1641, -1
  br i1 %1642, label %1644, label %1643, !dx.controlflow.hints !76

; <label>:1643                                    ; preds = %1640
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %1641, i32 undef, float %1615, float %1616, float %1617, float %1615, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %1641, i32 undef, float %1422, float %1422, float %1422, float %1422, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1644

; <label>:1644                                    ; preds = %1643, %1640, %131, %43, %35
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #2

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

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!37}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !28, !31, !35}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !20, !22, !23, !24, !25, !27}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 8, i32 1, i32 11, i32 0, null}
!11 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!12 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!13 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!14 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 7, i32 1, i32 11, i32 0, null}
!15 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 33, i32 1, i32 2, i32 0, !16}
!16 = !{i32 0, i32 9}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 28, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 37, i32 1, i32 12, i32 0, !19}
!19 = !{i32 1, i32 4}
!20 = !{i32 12, %"class.StructuredBuffer<GfxMultiLightGridLightingCount>"* undef, !"", i32 0, i32 38, i32 1, i32 12, i32 0, !21}
!21 = !{i32 1, i32 80}
!22 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 30, i32 1, i32 11, i32 0, null}
!23 = !{i32 14, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 22, i32 1, i32 12, i32 0, !19}
!24 = !{i32 15, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 23, i32 1, i32 12, i32 0, !19}
!25 = !{i32 16, %"class.StructuredBuffer<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 21, i32 1, i32 12, i32 0, !26}
!26 = !{i32 1, i32 8}
!27 = !{i32 17, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !19}
!28 = !{!29, !30}
!29 = !{i32 0, %"class.RWBuffer<vector<float, 3> >"* undef, !"", i32 0, i32 2, i32 1, i32 10, i1 false, i1 false, i1 false, !16}
!30 = !{i32 1, %"class.RWBuffer<float>"* undef, !"", i32 0, i32 3, i32 1, i32 10, i1 false, i1 false, i1 false, !16}
!31 = !{!32, !33, !34}
!32 = !{i32 0, %GfxLGBoundConsts* undef, !"", i32 0, i32 4, i32 1, i32 16, null}
!33 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!34 = !{i32 2, %DeferredEffectLightConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 240, null}
!35 = !{!36}
!36 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!37 = !{void ()* @cs_del_sh_sample_lightgrid_1, !"cs_del_sh_sample_lightgrid_1", null, !4, !38}
!38 = !{i32 0, i64 272, i32 4, !39}
!39 = !{i32 64, i32 1, i32 1}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
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
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = !{!59, !59, i64 0}
!59 = !{!"int", !60, i64 0}
!60 = !{!"omnipotent char", !61, i64 0}
!61 = !{!"Simple C/C++ TBAA"}
!62 = !{!63, !65, !66, !67, !68, !69}
!63 = distinct !{!63, !64, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeR"}
!64 = distinct !{!64, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z"}
!65 = distinct !{!65, !64, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeG"}
!66 = distinct !{!66, !64, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeB"}
!67 = distinct !{!67, !64, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeA"}
!68 = distinct !{!68, !64, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %primaryVisibility"}
!69 = distinct !{!69, !64, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %usedTet"}
!70 = !{!71, !71, i64 0}
!71 = !{!"float", !60, i64 0}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}

