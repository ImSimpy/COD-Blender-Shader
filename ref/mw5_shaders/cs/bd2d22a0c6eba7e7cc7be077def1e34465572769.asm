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
; shader hash: ef270b4d9c650bdb2e0016ff592307da
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

define void @cs_del_sh_sample_lightgrid_1_lowres() {
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
  br i1 %34, label %35, label %44, !dx.controlflow.hints !40

; <label>:35                                      ; preds = %0
  %36 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.i32 %36, 2
  %38 = add i32 %37, 6
  %39 = extractvalue %dx.types.CBufRet.i32 %36, 0
  %40 = shl i32 %39, 2
  %41 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %38, i32 %40)  ; BufferLoad(srv,index,wot)
  %42 = extractvalue %dx.types.ResRet.i32 %41, 0
  %43 = icmp ult i32 %25, %42
  br i1 %43, label %46, label %1258, !dx.controlflow.hints !41

; <label>:44                                      ; preds = %0
  %45 = icmp ult i32 %25, %33
  br i1 %45, label %46, label %1258, !dx.controlflow.hints !42

; <label>:46                                      ; preds = %44, %35
  %47 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.i32 %47, 2
  %49 = add i32 %48, 9
  %50 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 %49)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.i32 %50, 1
  %52 = extractvalue %dx.types.CBufRet.i32 %50, 2
  %53 = extractvalue %dx.types.CBufRet.i32 %50, 3
  %54 = mul i32 %53, 20
  %55 = extractvalue %dx.types.CBufRet.i32 %47, 0
  %56 = mul i32 %55, %51
  %57 = add i32 %56, %54
  %58 = add i32 %48, 6
  %59 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %58, i32 0)  ; BufferLoad(srv,index,wot)
  %60 = extractvalue %dx.types.ResRet.i32 %59, 0
  %61 = add i32 %60, 63
  %62 = lshr i32 %61, 6
  %63 = icmp ugt i32 %61, 127
  br i1 %63, label %64, label %84

; <label>:64                                      ; preds = %46
  br label %65

; <label>:65                                      ; preds = %65, %64
  %66 = phi i32 [ %77, %65 ], [ 0, %64 ]
  %67 = phi i32 [ %78, %65 ], [ 0, %64 ]
  %68 = phi i32 [ %79, %65 ], [ %62, %64 ]
  %69 = sub i32 %68, %66
  %70 = lshr i32 %69, 1
  %71 = add i32 %70, %66
  %72 = add i32 %57, -1
  %73 = add i32 %72, %71
  %74 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %73, i32 0)  ; BufferLoad(srv,index,wot)
  %75 = extractvalue %dx.types.ResRet.i32 %74, 0
  %76 = icmp ult i32 %25, %75
  %77 = select i1 %76, i32 %66, i32 %71
  %78 = select i1 %76, i32 %67, i32 %75
  %79 = select i1 %76, i32 %71, i32 %68
  %80 = sub i32 %68, %71
  %81 = select i1 %76, i32 %70, i32 %80
  %82 = icmp ugt i32 %81, 1
  br i1 %82, label %65, label %83

; <label>:83                                      ; preds = %65
  br label %84

; <label>:84                                      ; preds = %83, %46
  %85 = phi i32 [ 0, %46 ], [ %77, %83 ]
  %86 = phi i32 [ 0, %46 ], [ %78, %83 ]
  %87 = phi i32 [ %62, %46 ], [ %79, %83 ]
  %88 = add i32 %87, -1
  %89 = icmp eq i32 %85, 0
  %90 = select i1 %89, i32 0, i32 %86
  %91 = add i32 %88, %57
  %92 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %91, i32 0)  ; BufferLoad(srv,index,wot)
  %93 = extractvalue %dx.types.ResRet.i32 %92, 0
  %94 = extractvalue %dx.types.ResRet.i32 %92, 1
  %95 = sub i32 %25, %90
  %96 = and i32 %93, %94
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %133, label %98, !dx.controlflow.hints !43

; <label>:98                                      ; preds = %84
  %99 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %93)  ; Countbits(value)
  %100 = icmp uge i32 %95, %99
  %101 = select i1 %100, i32 %94, i32 %93
  %102 = select i1 %100, i32 %99, i32 0
  %103 = sub i32 %95, %102
  %104 = select i1 %100, i32 32, i32 0
  %105 = and i32 %103, 31
  %106 = shl i32 -1, %105
  %107 = xor i32 %106, -1
  %108 = and i32 %101, %107
  %109 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %108)  ; Countbits(value)
  %110 = add i32 %103, 1
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %130, label %112, !dx.controlflow.hints !44

; <label>:112                                     ; preds = %98
  %113 = and i32 %106, %101
  %114 = icmp eq i32 %103, %109
  br i1 %114, label %127, label %115

; <label>:115                                     ; preds = %112
  %116 = sub i32 %103, %109
  br label %117

; <label>:117                                     ; preds = %117, %115
  %118 = phi i32 [ %124, %117 ], [ %116, %115 ]
  %119 = phi i32 [ %123, %117 ], [ %113, %115 ]
  %120 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %119)  ; FirstbitLo(value)
  %121 = and i32 %120, 31
  %122 = shl i32 1, %121
  %123 = xor i32 %122, %119
  %124 = add i32 %118, -1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %117

; <label>:126                                     ; preds = %117
  br label %127

; <label>:127                                     ; preds = %126, %112
  %128 = phi i32 [ %113, %112 ], [ %123, %126 ]
  %129 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %128)  ; FirstbitLo(value)
  br label %130

; <label>:130                                     ; preds = %127, %98
  %131 = phi i32 [ %129, %127 ], [ %103, %98 ]
  %132 = add i32 %131, %104
  br label %133

; <label>:133                                     ; preds = %130, %84
  %134 = phi i32 [ %132, %130 ], [ %95, %84 ]
  %135 = shl i32 %88, 6
  %136 = add i32 %134, %135
  %137 = icmp ult i32 %136, %60
  br i1 %137, label %138, label %1258, !dx.controlflow.hints !45

; <label>:138                                     ; preds = %133
  %139 = add i32 %136, %52
  %140 = shl i32 %139, 5
  %141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %140, i32 undef)  ; BufferLoad(srv,index,wot)
  %142 = extractvalue %dx.types.ResRet.i32 %141, 0
  %143 = extractvalue %dx.types.ResRet.i32 %141, 1
  %144 = extractvalue %dx.types.ResRet.i32 %141, 2
  %145 = extractvalue %dx.types.ResRet.i32 %141, 3
  %146 = bitcast i32 %142 to float
  %147 = bitcast i32 %143 to float
  %148 = bitcast i32 %144 to float
  %149 = and i32 %145, 536870912
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %190, label %151, !dx.controlflow.hints !46

; <label>:151                                     ; preds = %138
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %154 = extractvalue %dx.types.CBufRet.f32 %152, 3
  %155 = fmul fast float %153, %146
  %156 = fmul fast float %154, %147
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %160 = fadd fast float %155, %158
  %161 = fadd fast float %156, %159
  %162 = call float @dx.op.unary.f32(i32 7, float %160)  ; Saturate(value)
  %163 = call float @dx.op.unary.f32(i32 7, float %161)  ; Saturate(value)
  %164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %21, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %165 = extractvalue %dx.types.ResRet.f32 %164, 0
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 0
  %168 = fmul fast float %167, %165
  %169 = fsub fast float %160, %162
  %170 = fsub fast float %161, %163
  %171 = extractvalue %dx.types.CBufRet.f32 %152, 0
  %172 = extractvalue %dx.types.CBufRet.f32 %152, 1
  %173 = fmul fast float %171, %169
  %174 = fmul fast float %172, %170
  %175 = fmul fast float %173, %173
  %176 = fmul fast float %174, %174
  %177 = fadd fast float %175, %176
  %178 = call float @dx.op.unary.f32(i32 24, float %177)  ; Sqrt(value)
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 3
  %181 = fmul fast float %180, %178
  %182 = call float @dx.op.unary.f32(i32 7, float %181)  ; Saturate(value)
  %183 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %184 = fsub fast float %183, %168
  %185 = fmul fast float %184, %182
  %186 = extractvalue %dx.types.CBufRet.f32 %166, 1
  %187 = fadd fast float %168, %148
  %188 = fadd fast float %187, %186
  %189 = fadd fast float %188, %185
  br label %190

; <label>:190                                     ; preds = %151, %138
  %191 = phi float [ %189, %151 ], [ %148, %138 ]
  %192 = or i32 %140, 16
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
  %232 = call float @dx.op.unary.f32(i32 13, float %231)  ; Sin(value)
  %233 = call float @dx.op.unary.f32(i32 12, float %231)  ; Cos(value)
  %234 = fmul fast float %233, %213
  %235 = fmul fast float %214, %233
  %236 = fmul fast float %215, %233
  %237 = fmul fast float %227, %232
  %238 = fmul fast float %228, %232
  %239 = fmul fast float %229, %232
  %240 = fadd fast float %234, %237
  %241 = fadd fast float %235, %238
  %242 = fadd fast float %236, %239
  %243 = fmul fast float %240, %199
  %244 = fmul fast float %241, %199
  %245 = fmul fast float %242, %199
  %246 = fmul fast float %213, %232
  %247 = fmul fast float %214, %232
  %248 = fmul fast float %215, %232
  %249 = fmul fast float %233, %227
  %250 = fmul fast float %228, %233
  %251 = fmul fast float %229, %233
  %252 = fsub fast float %246, %249
  %253 = fsub fast float %247, %250
  %254 = fsub fast float %248, %251
  %255 = fmul fast float %252, %201
  %256 = fmul fast float %253, %201
  %257 = fmul fast float %254, %201
  %258 = uitofp i32 %26 to float
  %259 = uitofp i32 %27 to float
  %260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %261 = extractvalue %dx.types.CBufRet.f32 %260, 1
  %262 = fdiv fast float %258, %261
  %263 = fdiv fast float %259, %261
  %264 = extractvalue %dx.types.CBufRet.f32 %260, 2
  %265 = fadd fast float %264, %262
  %266 = fadd fast float %264, %263
  %267 = fmul fast float %265, %243
  %268 = fmul fast float %265, %244
  %269 = fmul fast float %265, %245
  %270 = fmul fast float %266, %255
  %271 = fmul fast float %266, %256
  %272 = fmul fast float %266, %257
  %273 = fadd fast float %270, %267
  %274 = fmul fast float %273, 2.000000e+00
  %275 = fsub fast float %146, %243
  %276 = fsub fast float %275, %255
  %277 = fadd fast float %276, %274
  %278 = fadd fast float %271, %268
  %279 = fmul fast float %278, 2.000000e+00
  %280 = fsub fast float %147, %244
  %281 = fsub fast float %280, %256
  %282 = fadd fast float %281, %279
  %283 = fadd fast float %272, %269
  %284 = fmul fast float %283, 2.000000e+00
  %285 = fsub fast float %191, %245
  %286 = fsub fast float %285, %257
  %287 = fadd fast float %286, %284
  %288 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %289 = extractvalue %dx.types.CBufRet.i32 %288, 2
  %290 = extractvalue %dx.types.CBufRet.i32 %288, 1
  %291 = extractvalue %dx.types.CBufRet.i32 %288, 0
  %292 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 0
  store float 0.000000e+00, float* %292, align 4
  %293 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 1
  store float 0.000000e+00, float* %293, align 4
  %294 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 2
  store float 0.000000e+00, float* %294, align 4
  %295 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 3
  store float 0.000000e+00, float* %295, align 4
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = extractvalue %dx.types.ResRet.i32 %298, 1
  %301 = extractvalue %dx.types.ResRet.i32 %298, 2
  %302 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.f32 %302, 0
  %304 = extractvalue %dx.types.ResRet.f32 %302, 1
  %305 = extractvalue %dx.types.ResRet.f32 %302, 2
  %306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.f32 %306, 0
  %308 = extractvalue %dx.types.ResRet.f32 %306, 1
  %309 = extractvalue %dx.types.ResRet.f32 %306, 2
  %310 = fsub fast float %277, %303
  %311 = fsub fast float %282, %304
  %312 = fsub fast float %287, %305
  %313 = fptoui float %310 to i32
  %314 = fptoui float %311 to i32
  %315 = fptoui float %312 to i32
  %316 = fcmp fast olt float %277, %303
  %317 = fcmp fast olt float %282, %304
  %318 = fcmp fast olt float %287, %305
  %319 = or i1 %316, %317
  %320 = or i1 %318, %319
  %321 = fcmp fast oge float %277, %307
  %322 = fcmp fast oge float %282, %308
  %323 = fcmp fast oge float %287, %309
  %324 = or i1 %321, %322
  %325 = or i1 %323, %324
  %326 = or i1 %320, %325
  %327 = and i32 %299, 31
  %328 = lshr i32 %313, %327
  %329 = lshr i32 %314, %327
  %330 = lshr i32 %315, %327
  %331 = mul i32 %329, %297
  %332 = add i32 %331, %328
  %333 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %334 = extractvalue %dx.types.CBufRet.i32 %333, 0
  %335 = icmp ult i32 %332, %334
  br i1 %335, label %336, label %352, !dx.controlflow.hints !47

; <label>:336                                     ; preds = %190
  %337 = mul i32 %332, 12
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = add i32 %337, 4
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = add i32 %337, 8
  %344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.i32 %344, 0
  %346 = icmp ult i32 %330, %342
  %347 = icmp ugt i32 %330, %345
  %348 = or i1 %346, %347
  %349 = add i32 %339, %330
  %350 = sub i32 %349, %342
  %351 = select i1 %348, i32 -2147483648, i32 %350
  br label %352

; <label>:352                                     ; preds = %336, %190
  %353 = phi i32 [ %351, %336 ], [ -2147483648, %190 ]
  %354 = select i1 %326, i32 -2147483648, i32 %353
  %355 = icmp sgt i32 %354, -1
  %356 = and i32 %300, 31
  %357 = lshr i32 %313, %356
  %358 = lshr i32 %314, %356
  %359 = lshr i32 %315, %356
  %360 = and i32 %357, 3
  %361 = and i32 %359, 3
  %362 = shl nuw nsw i32 %361, 4
  %363 = shl i32 %358, 2
  %364 = and i32 %363, 12
  %365 = and i32 %362, 16
  %366 = or i32 %364, %360
  %367 = or i32 %366, %365
  %368 = shl i32 1, %367
  %369 = extractvalue %dx.types.CBufRet.i32 %333, 1
  %370 = icmp ult i32 %354, %369
  br i1 %370, label %371, label %389, !dx.controlflow.hints !48

; <label>:371                                     ; preds = %352
  %372 = lshr i32 %361, 1
  %373 = shl i32 %354, 4
  %374 = shl nuw nsw i32 %372, 2
  %375 = or i32 %373, %374
  %376 = or i32 %375, 8
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = and i32 %378, %368
  %380 = icmp eq i32 %379, 0
  %381 = add i32 %368, -1
  %382 = and i32 %378, %381
  %383 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %382)  ; Countbits(value)
  %384 = or i32 %373, %374
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  %387 = add i32 %386, %383
  %388 = select i1 %380, i32 -2147483648, i32 %387
  br label %389

; <label>:389                                     ; preds = %371, %352
  %390 = phi i32 [ %388, %371 ], [ -2147483648, %352 ]
  %391 = select i1 %355, i32 %390, i32 %354
  %392 = icmp sgt i32 %391, -1
  %393 = and i32 %301, 31
  %394 = lshr i32 %313, %393
  %395 = lshr i32 %314, %393
  %396 = lshr i32 %315, %393
  %397 = and i32 %394, 3
  %398 = and i32 %396, 3
  %399 = shl nuw nsw i32 %398, 4
  %400 = shl i32 %395, 2
  %401 = and i32 %400, 12
  %402 = and i32 %399, 16
  %403 = or i32 %401, %397
  %404 = or i32 %403, %402
  %405 = shl i32 1, %404
  %406 = icmp ult i32 %391, %369
  br i1 %406, label %407, label %425, !dx.controlflow.hints !48

; <label>:407                                     ; preds = %389
  %408 = lshr i32 %398, 1
  %409 = shl i32 %391, 4
  %410 = shl nuw nsw i32 %408, 2
  %411 = or i32 %409, %410
  %412 = or i32 %411, 8
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = and i32 %414, %405
  %416 = icmp eq i32 %415, 0
  %417 = add i32 %405, -1
  %418 = and i32 %414, %417
  %419 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %418)  ; Countbits(value)
  %420 = or i32 %409, %410
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = add i32 %422, %419
  %424 = select i1 %416, i32 -2147483648, i32 %423
  br label %425

; <label>:425                                     ; preds = %407, %389
  %426 = phi i32 [ %424, %407 ], [ -2147483648, %389 ]
  %427 = select i1 %392, i32 %426, i32 %391
  br i1 %326, label %442, label %428, !dx.controlflow.hints !49

; <label>:428                                     ; preds = %425
  %429 = icmp eq i32 %427, -2147483648
  %430 = icmp eq i32 %391, -2147483648
  %431 = select i1 %430, i32 %354, i32 %391
  %432 = select i1 %429, i32 %431, i32 %427
  %433 = icmp sgt i32 %432, -1
  %434 = icmp ne i32 %289, -1
  %435 = and i1 %434, %433
  %436 = select i1 %435, i32 %289, i32 0
  %437 = add i32 %432, %290
  %438 = add i32 %437, %436
  %439 = shl i32 %438, 2
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  br label %442

; <label>:442                                     ; preds = %428, %425
  %443 = phi i32 [ %441, %428 ], [ -1, %425 ]
  %444 = icmp eq i32 %443, -1
  %445 = select i1 %444, i32 %291, i32 %443
  %446 = icmp eq i32 %445, -1
  br i1 %446, label %595, label %447

; <label>:447                                     ; preds = %442
  br label %448

; <label>:448                                     ; preds = %586, %447
  %449 = phi i32 [ %587, %586 ], [ 0, %447 ]
  %450 = phi i32 [ %451, %586 ], [ -1, %447 ]
  %451 = phi i32 [ %582, %586 ], [ %445, %447 ]
  %452 = phi float [ %558, %586 ], [ 0.000000e+00, %447 ]
  %453 = phi float [ %559, %586 ], [ 0.000000e+00, %447 ]
  %454 = phi float [ %560, %586 ], [ 0.000000e+00, %447 ]
  %455 = phi float [ %563, %586 ], [ 0.000000e+00, %447 ]
  %456 = icmp ugt i32 %449, 25
  br i1 %456, label %589, label %457, !dx.controlflow.hints !50

; <label>:457                                     ; preds = %448
  %458 = shl i32 %451, 4
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = extractvalue %dx.types.ResRet.i32 %459, 1
  %462 = extractvalue %dx.types.ResRet.i32 %459, 2
  %463 = extractvalue %dx.types.ResRet.i32 %459, 3
  %464 = and i32 %460, 2147483647
  %465 = mul nsw i32 %464, 12
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = extractvalue %dx.types.ResRet.i32 %466, 1
  %469 = extractvalue %dx.types.ResRet.i32 %466, 2
  %470 = and i32 %461, 2147483647
  %471 = mul nsw i32 %470, 12
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = extractvalue %dx.types.ResRet.i32 %472, 1
  %475 = extractvalue %dx.types.ResRet.i32 %472, 2
  %476 = and i32 %462, 2147483647
  %477 = mul nsw i32 %476, 12
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = extractvalue %dx.types.ResRet.i32 %478, 1
  %481 = extractvalue %dx.types.ResRet.i32 %478, 2
  %482 = and i32 %463, 2147483647
  %483 = mul nsw i32 %482, 12
  %484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.i32 %484, 0
  %486 = extractvalue %dx.types.ResRet.i32 %484, 1
  %487 = extractvalue %dx.types.ResRet.i32 %484, 2
  %488 = bitcast i32 %467 to float
  %489 = bitcast i32 %468 to float
  %490 = bitcast i32 %469 to float
  %491 = bitcast i32 %485 to float
  %492 = bitcast i32 %486 to float
  %493 = bitcast i32 %487 to float
  %494 = fsub fast float %488, %491
  %495 = fsub fast float %489, %492
  %496 = fsub fast float %490, %493
  %497 = bitcast i32 %473 to float
  %498 = bitcast i32 %474 to float
  %499 = bitcast i32 %475 to float
  %500 = fsub fast float %497, %491
  %501 = fsub fast float %498, %492
  %502 = fsub fast float %499, %493
  %503 = bitcast i32 %479 to float
  %504 = bitcast i32 %480 to float
  %505 = bitcast i32 %481 to float
  %506 = fsub fast float %503, %491
  %507 = fsub fast float %504, %492
  %508 = fsub fast float %505, %493
  %509 = fsub fast float %277, %491
  %510 = fsub fast float %282, %492
  %511 = fsub fast float %287, %493
  %512 = fmul fast float %501, %508
  %513 = fmul fast float %507, %502
  %514 = fsub fast float %512, %513
  %515 = fmul fast float %514, %494
  %516 = fmul fast float %500, %508
  %517 = fmul fast float %502, %506
  %518 = fsub fast float %516, %517
  %519 = fmul fast float %518, %495
  %520 = fsub fast float %515, %519
  %521 = fmul fast float %500, %507
  %522 = fmul fast float %501, %506
  %523 = fsub fast float %521, %522
  %524 = fmul fast float %523, %496
  %525 = fadd fast float %520, %524
  %526 = fdiv fast float 1.000000e+00, %525
  %527 = fmul fast float %514, %526
  %528 = fmul fast float %526, %518
  %529 = fsub fast float -0.000000e+00, %528
  %530 = fmul fast float %523, %526
  %531 = fmul fast float %495, %508
  %532 = fmul fast float %496, %507
  %533 = fsub fast float %531, %532
  %534 = fmul fast float %526, %533
  %535 = fsub fast float -0.000000e+00, %534
  %536 = fmul fast float %494, %508
  %537 = fmul fast float %506, %496
  %538 = fsub fast float %536, %537
  %539 = fmul fast float %538, %526
  %540 = fmul fast float %494, %507
  %541 = fmul fast float %495, %506
  %542 = fsub fast float %540, %541
  %543 = fmul fast float %526, %542
  %544 = fsub fast float -0.000000e+00, %543
  %545 = fmul fast float %495, %502
  %546 = fmul fast float %496, %501
  %547 = fsub fast float %545, %546
  %548 = fmul fast float %547, %526
  %549 = fmul fast float %494, %502
  %550 = fmul fast float %496, %500
  %551 = fsub fast float %549, %550
  %552 = fmul fast float %526, %551
  %553 = fsub fast float -0.000000e+00, %552
  %554 = fmul fast float %494, %501
  %555 = fmul fast float %495, %500
  %556 = fsub fast float %554, %555
  %557 = fmul fast float %556, %526
  %558 = call float @dx.op.dot3.f32(i32 55, float %527, float %529, float %530, float %509, float %510, float %511)  ; Dot3(ax,ay,az,bx,by,bz)
  %559 = call float @dx.op.dot3.f32(i32 55, float %535, float %539, float %544, float %509, float %510, float %511)  ; Dot3(ax,ay,az,bx,by,bz)
  %560 = call float @dx.op.dot3.f32(i32 55, float %548, float %553, float %557, float %509, float %510, float %511)  ; Dot3(ax,ay,az,bx,by,bz)
  %561 = fsub fast float 1.000000e+00, %558
  %562 = fsub fast float %561, %559
  %563 = fsub fast float %562, %560
  %564 = call float @dx.op.binary.f32(i32 36, float %558, float %559)  ; FMin(a,b)
  %565 = call float @dx.op.binary.f32(i32 36, float %564, float %560)  ; FMin(a,b)
  %566 = call float @dx.op.binary.f32(i32 36, float %565, float %563)  ; FMin(a,b)
  %567 = call float @dx.op.binary.f32(i32 35, float %558, float %559)  ; FMax(a,b)
  %568 = call float @dx.op.binary.f32(i32 35, float %567, float %560)  ; FMax(a,b)
  %569 = call float @dx.op.binary.f32(i32 35, float %568, float %563)  ; FMax(a,b)
  %570 = fcmp fast oge float %566, 0xBF50624DE0000000
  %571 = fcmp fast olt float %569, 0x3FF00068E0000000
  %572 = and i1 %570, %571
  br i1 %572, label %589, label %573, !dx.controlflow.hints !51

; <label>:573                                     ; preds = %457
  %574 = fcmp fast oeq float %566, %558
  %575 = fcmp fast oeq float %566, %559
  %576 = fcmp fast oeq float %566, %560
  %577 = select i1 %576, i32 8, i32 12
  %578 = select i1 %575, i32 4, i32 %577
  %579 = select i1 %574, i32 0, i32 %578
  %580 = or i32 %579, %458
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %580, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = icmp ne i32 %450, -1
  %584 = icmp eq i32 %582, %450
  %585 = and i1 %583, %584
  br i1 %585, label %589, label %586, !dx.controlflow.hints !52

; <label>:586                                     ; preds = %573
  %587 = add nuw nsw i32 %449, 1
  %588 = icmp eq i32 %582, -1
  br i1 %588, label %589, label %448, !llvm.loop !53

; <label>:589                                     ; preds = %586, %573, %457, %448
  %590 = phi i32 [ %451, %573 ], [ %451, %457 ], [ -1, %586 ], [ -1, %448 ]
  %591 = phi float [ %558, %573 ], [ %558, %457 ], [ %558, %586 ], [ %452, %448 ]
  %592 = phi float [ %559, %573 ], [ %559, %457 ], [ %559, %586 ], [ %453, %448 ]
  %593 = phi float [ %560, %573 ], [ %560, %457 ], [ %560, %586 ], [ %454, %448 ]
  %594 = phi float [ %563, %573 ], [ %563, %457 ], [ %563, %586 ], [ %455, %448 ]
  br label %595

; <label>:595                                     ; preds = %589, %442
  %596 = phi i32 [ -1, %442 ], [ %590, %589 ]
  %597 = phi float [ 0.000000e+00, %442 ], [ %591, %589 ]
  %598 = phi float [ 0.000000e+00, %442 ], [ %592, %589 ]
  %599 = phi float [ 0.000000e+00, %442 ], [ %593, %589 ]
  %600 = phi float [ 0.000000e+00, %442 ], [ %594, %589 ]
  %601 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %597)  ; FMax(a,b)
  %602 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %598)  ; FMax(a,b)
  %603 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %599)  ; FMax(a,b)
  %604 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %600)  ; FMax(a,b)
  %605 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %601)  ; FMin(a,b)
  %606 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %602)  ; FMin(a,b)
  %607 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %603)  ; FMin(a,b)
  %608 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %604)  ; FMin(a,b)
  store float %605, float* %292, align 4
  store float %606, float* %293, align 4
  store float %607, float* %294, align 4
  store float %608, float* %295, align 4
  %609 = icmp eq i32 %596, -1
  br i1 %609, label %610, label %645, !dx.controlflow.hints !55

; <label>:610                                     ; preds = %595
  %611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.i32 %611, 1
  %613 = extractvalue %dx.types.ResRet.i32 %611, 2
  %614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.i32 %614, 0
  %616 = extractvalue %dx.types.ResRet.i32 %614, 1
  %617 = extractvalue %dx.types.ResRet.i32 %614, 2
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = extractvalue %dx.types.ResRet.i32 %618, 1
  %621 = and i32 %619, 65535
  %622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %621)  ; LegacyF16ToF32(value)
  %623 = lshr i32 %619, 16
  %624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %623)  ; LegacyF16ToF32(value)
  %625 = and i32 %620, 65535
  %626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %625)  ; LegacyF16ToF32(value)
  %627 = lshr i32 %620, 16
  %628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %627)  ; LegacyF16ToF32(value)
  %629 = lshr i32 %615, 16
  %630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %629)  ; LegacyF16ToF32(value)
  %631 = and i32 %616, 65535
  %632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %631)  ; LegacyF16ToF32(value)
  %633 = lshr i32 %616, 16
  %634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %633)  ; LegacyF16ToF32(value)
  %635 = and i32 %617, 65535
  %636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %635)  ; LegacyF16ToF32(value)
  %637 = and i32 %612, 65535
  %638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %637)  ; LegacyF16ToF32(value)
  %639 = lshr i32 %612, 16
  %640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %639)  ; LegacyF16ToF32(value)
  %641 = and i32 %613, 65535
  %642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %641)  ; LegacyF16ToF32(value)
  %643 = lshr i32 %613, 16
  %644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %643)  ; LegacyF16ToF32(value)
  br label %1199

; <label>:645                                     ; preds = %595
  %646 = shl nsw i32 %596, 4
  %647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %646, i32 undef)  ; BufferLoad(srv,index,wot)
  %648 = extractvalue %dx.types.ResRet.i32 %647, 0
  %649 = extractvalue %dx.types.ResRet.i32 %647, 1
  %650 = extractvalue %dx.types.ResRet.i32 %647, 2
  %651 = extractvalue %dx.types.ResRet.i32 %647, 3
  %652 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 0
  store i32 %648, i32* %652, align 4
  %653 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 1
  store i32 %649, i32* %653, align 4
  %654 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 2
  store i32 %650, i32* %654, align 4
  %655 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 3
  store i32 %651, i32* %655, align 4
  %656 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 0
  store float 0.000000e+00, float* %656, align 4
  %657 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 1
  store float 0.000000e+00, float* %657, align 4
  %658 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 2
  store float 0.000000e+00, float* %658, align 4
  %659 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 3
  store float 0.000000e+00, float* %659, align 4
  %660 = icmp slt i32 %648, 0
  br i1 %660, label %661, label %751, !dx.controlflow.hints !56

; <label>:661                                     ; preds = %645
  %662 = fsub fast float 1.000000e+00, %605
  %663 = fdiv fast float 1.000000e+00, %662
  %664 = shl nsw i32 %596, 6
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %664, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = extractvalue %dx.types.ResRet.i32 %665, 1
  %668 = extractvalue %dx.types.ResRet.i32 %665, 2
  %669 = extractvalue %dx.types.ResRet.i32 %665, 3
  %670 = fmul fast float %663, %608
  %671 = fmul fast float %663, %606
  %672 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %666, i32* %672, align 4
  %673 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %667, i32* %673, align 4
  %674 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %668, i32* %674, align 4
  %675 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %669, i32* %675, align 4
  %676 = fmul fast float %671, 4.000000e+00
  %677 = call float @dx.op.unary.f32(i32 27, float %676)  ; Round_ni(value)
  %678 = fmul fast float %670, 4.000000e+00
  %679 = call float @dx.op.unary.f32(i32 27, float %678)  ; Round_ni(value)
  %680 = fsub fast float 1.100000e+01, %677
  %681 = fmul fast float %677, 5.000000e-01
  %682 = fmul fast float %681, %680
  %683 = fadd fast float %679, 5.000000e-01
  %684 = fadd fast float %683, %682
  %685 = fptosi float %684 to i32
  %686 = fptosi float %677 to i32
  %687 = sub nsw i32 5, %686
  %688 = fmul fast float %679, 2.500000e-01
  %689 = fmul fast float %677, 2.500000e-01
  %690 = add nsw i32 %685, 1
  %691 = add nsw i32 %685, %687
  %692 = fsub fast float %670, %688
  %693 = fmul fast float %692, 4.000000e+00
  %694 = fsub fast float %671, %689
  %695 = fmul fast float %694, 4.000000e+00
  %696 = fadd fast float %692, %694
  %697 = fmul fast float %696, 4.000000e+00
  %698 = fcmp fast ogt float %697, 1.000000e+00
  br i1 %698, label %699, label %705, !dx.controlflow.hints !57

; <label>:699                                     ; preds = %661
  %700 = add nsw i32 %691, 1
  %701 = fadd fast float %695, -1.000000e+00
  %702 = fsub fast float -0.000000e+00, %701
  %703 = fadd fast float %693, -1.000000e+00
  %704 = fsub fast float -0.000000e+00, %703
  br label %705

; <label>:705                                     ; preds = %699, %661
  %706 = phi i32 [ %700, %699 ], [ %685, %661 ]
  %707 = phi i32 [ %690, %699 ], [ %691, %661 ]
  %708 = phi i32 [ %691, %699 ], [ %690, %661 ]
  %709 = phi float [ %704, %699 ], [ %695, %661 ]
  %710 = phi float [ %702, %699 ], [ %693, %661 ]
  %711 = fsub fast float 1.000000e+00, %709
  %712 = fsub fast float %711, %710
  %713 = lshr i32 %708, 2
  %714 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %713
  %715 = load i32, i32* %714, align 4, !tbaa !58, !noalias !62
  %716 = shl i32 %708, 3
  %717 = and i32 %716, 24
  %718 = lshr i32 %715, %717
  %719 = and i32 %718, 255
  %720 = sitofp i32 %719 to float
  %721 = fmul fast float %710, 0x3F70101020000000
  %722 = fmul fast float %721, %720
  %723 = lshr i32 %707, 2
  %724 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %723
  %725 = load i32, i32* %724, align 4, !tbaa !58, !noalias !62
  %726 = shl i32 %707, 3
  %727 = and i32 %726, 24
  %728 = lshr i32 %725, %727
  %729 = and i32 %728, 255
  %730 = sitofp i32 %729 to float
  %731 = fmul fast float %709, 0x3F70101020000000
  %732 = fmul fast float %731, %730
  %733 = lshr i32 %706, 2
  %734 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %733
  %735 = load i32, i32* %734, align 4, !tbaa !58, !noalias !62
  %736 = shl i32 %706, 3
  %737 = and i32 %736, 24
  %738 = lshr i32 %735, %737
  %739 = and i32 %738, 255
  %740 = sitofp i32 %739 to float
  %741 = fmul fast float %712, 0x3F70101020000000
  %742 = fmul fast float %741, %740
  %743 = fsub fast float 1.000000e+00, %722
  %744 = fsub fast float %743, %732
  %745 = fsub fast float %744, %742
  %746 = fmul fast float %605, 2.000000e+01
  %747 = fadd fast float %746, 1.000000e+00
  %748 = fmul fast float %745, 2.000000e+01
  %749 = fsub fast float %747, %748
  %750 = call float @dx.op.unary.f32(i32 7, float %749)  ; Saturate(value)
  br label %751

; <label>:751                                     ; preds = %705, %645
  %752 = phi float [ %750, %705 ], [ 1.000000e+00, %645 ]
  store float %752, float* %656, align 4, !tbaa !70, !noalias !62
  %753 = icmp slt i32 %649, 0
  br i1 %753, label %754, label %845, !dx.controlflow.hints !56

; <label>:754                                     ; preds = %751
  %755 = fsub fast float 1.000000e+00, %606
  %756 = fdiv fast float 1.000000e+00, %755
  %757 = shl i32 %596, 6
  %758 = or i32 %757, 16
  %759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %758, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.i32 %759, 0
  %761 = extractvalue %dx.types.ResRet.i32 %759, 1
  %762 = extractvalue %dx.types.ResRet.i32 %759, 2
  %763 = extractvalue %dx.types.ResRet.i32 %759, 3
  %764 = fmul fast float %756, %605
  %765 = fmul fast float %756, %608
  %766 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %760, i32* %766, align 4
  %767 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %761, i32* %767, align 4
  %768 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %762, i32* %768, align 4
  %769 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %763, i32* %769, align 4
  %770 = fmul fast float %765, 4.000000e+00
  %771 = call float @dx.op.unary.f32(i32 27, float %770)  ; Round_ni(value)
  %772 = fmul fast float %764, 4.000000e+00
  %773 = call float @dx.op.unary.f32(i32 27, float %772)  ; Round_ni(value)
  %774 = fsub fast float 1.100000e+01, %771
  %775 = fmul fast float %771, 5.000000e-01
  %776 = fmul fast float %775, %774
  %777 = fadd fast float %773, 5.000000e-01
  %778 = fadd fast float %777, %776
  %779 = fptosi float %778 to i32
  %780 = fptosi float %771 to i32
  %781 = sub nsw i32 5, %780
  %782 = fmul fast float %773, 2.500000e-01
  %783 = fmul fast float %771, 2.500000e-01
  %784 = add nsw i32 %779, 1
  %785 = add nsw i32 %779, %781
  %786 = fsub fast float %764, %782
  %787 = fmul fast float %786, 4.000000e+00
  %788 = fsub fast float %765, %783
  %789 = fmul fast float %788, 4.000000e+00
  %790 = fadd fast float %786, %788
  %791 = fmul fast float %790, 4.000000e+00
  %792 = fcmp fast ogt float %791, 1.000000e+00
  br i1 %792, label %793, label %799, !dx.controlflow.hints !57

; <label>:793                                     ; preds = %754
  %794 = add nsw i32 %785, 1
  %795 = fadd fast float %789, -1.000000e+00
  %796 = fsub fast float -0.000000e+00, %795
  %797 = fadd fast float %787, -1.000000e+00
  %798 = fsub fast float -0.000000e+00, %797
  br label %799

; <label>:799                                     ; preds = %793, %754
  %800 = phi i32 [ %794, %793 ], [ %779, %754 ]
  %801 = phi i32 [ %784, %793 ], [ %785, %754 ]
  %802 = phi i32 [ %785, %793 ], [ %784, %754 ]
  %803 = phi float [ %798, %793 ], [ %789, %754 ]
  %804 = phi float [ %796, %793 ], [ %787, %754 ]
  %805 = fsub fast float 1.000000e+00, %803
  %806 = fsub fast float %805, %804
  %807 = lshr i32 %802, 2
  %808 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %807
  %809 = load i32, i32* %808, align 4, !tbaa !58, !noalias !62
  %810 = shl i32 %802, 3
  %811 = and i32 %810, 24
  %812 = lshr i32 %809, %811
  %813 = and i32 %812, 255
  %814 = sitofp i32 %813 to float
  %815 = fmul fast float %804, 0x3F70101020000000
  %816 = fmul fast float %815, %814
  %817 = lshr i32 %801, 2
  %818 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %817
  %819 = load i32, i32* %818, align 4, !tbaa !58, !noalias !62
  %820 = shl i32 %801, 3
  %821 = and i32 %820, 24
  %822 = lshr i32 %819, %821
  %823 = and i32 %822, 255
  %824 = sitofp i32 %823 to float
  %825 = fmul fast float %803, 0x3F70101020000000
  %826 = fmul fast float %825, %824
  %827 = lshr i32 %800, 2
  %828 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %827
  %829 = load i32, i32* %828, align 4, !tbaa !58, !noalias !62
  %830 = shl i32 %800, 3
  %831 = and i32 %830, 24
  %832 = lshr i32 %829, %831
  %833 = and i32 %832, 255
  %834 = sitofp i32 %833 to float
  %835 = fmul fast float %806, 0x3F70101020000000
  %836 = fmul fast float %835, %834
  %837 = fsub fast float 1.000000e+00, %816
  %838 = fsub fast float %837, %826
  %839 = fsub fast float %838, %836
  %840 = fmul fast float %606, 2.000000e+01
  %841 = fadd fast float %840, 1.000000e+00
  %842 = fmul fast float %839, 2.000000e+01
  %843 = fsub fast float %841, %842
  %844 = call float @dx.op.unary.f32(i32 7, float %843)  ; Saturate(value)
  br label %845

; <label>:845                                     ; preds = %799, %751
  %846 = phi float [ %844, %799 ], [ 1.000000e+00, %751 ]
  store float %846, float* %657, align 4, !tbaa !70, !noalias !62
  %847 = fadd fast float %846, %752
  %848 = icmp slt i32 %650, 0
  br i1 %848, label %849, label %940, !dx.controlflow.hints !56

; <label>:849                                     ; preds = %845
  %850 = fsub fast float 1.000000e+00, %607
  %851 = fdiv fast float 1.000000e+00, %850
  %852 = shl i32 %596, 6
  %853 = or i32 %852, 32
  %854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %855 = extractvalue %dx.types.ResRet.i32 %854, 0
  %856 = extractvalue %dx.types.ResRet.i32 %854, 1
  %857 = extractvalue %dx.types.ResRet.i32 %854, 2
  %858 = extractvalue %dx.types.ResRet.i32 %854, 3
  %859 = fmul fast float %851, %605
  %860 = fmul fast float %851, %606
  %861 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %855, i32* %861, align 4
  %862 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %856, i32* %862, align 4
  %863 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %857, i32* %863, align 4
  %864 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %858, i32* %864, align 4
  %865 = fmul fast float %860, 4.000000e+00
  %866 = call float @dx.op.unary.f32(i32 27, float %865)  ; Round_ni(value)
  %867 = fmul fast float %859, 4.000000e+00
  %868 = call float @dx.op.unary.f32(i32 27, float %867)  ; Round_ni(value)
  %869 = fsub fast float 1.100000e+01, %866
  %870 = fmul fast float %866, 5.000000e-01
  %871 = fmul fast float %870, %869
  %872 = fadd fast float %868, 5.000000e-01
  %873 = fadd fast float %872, %871
  %874 = fptosi float %873 to i32
  %875 = fptosi float %866 to i32
  %876 = sub nsw i32 5, %875
  %877 = fmul fast float %868, 2.500000e-01
  %878 = fmul fast float %866, 2.500000e-01
  %879 = add nsw i32 %874, 1
  %880 = add nsw i32 %874, %876
  %881 = fsub fast float %859, %877
  %882 = fmul fast float %881, 4.000000e+00
  %883 = fsub fast float %860, %878
  %884 = fmul fast float %883, 4.000000e+00
  %885 = fadd fast float %881, %883
  %886 = fmul fast float %885, 4.000000e+00
  %887 = fcmp fast ogt float %886, 1.000000e+00
  br i1 %887, label %888, label %894, !dx.controlflow.hints !57

; <label>:888                                     ; preds = %849
  %889 = add nsw i32 %880, 1
  %890 = fadd fast float %884, -1.000000e+00
  %891 = fsub fast float -0.000000e+00, %890
  %892 = fadd fast float %882, -1.000000e+00
  %893 = fsub fast float -0.000000e+00, %892
  br label %894

; <label>:894                                     ; preds = %888, %849
  %895 = phi i32 [ %889, %888 ], [ %874, %849 ]
  %896 = phi i32 [ %879, %888 ], [ %880, %849 ]
  %897 = phi i32 [ %880, %888 ], [ %879, %849 ]
  %898 = phi float [ %893, %888 ], [ %884, %849 ]
  %899 = phi float [ %891, %888 ], [ %882, %849 ]
  %900 = fsub fast float 1.000000e+00, %898
  %901 = fsub fast float %900, %899
  %902 = lshr i32 %897, 2
  %903 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %902
  %904 = load i32, i32* %903, align 4, !tbaa !58, !noalias !62
  %905 = shl i32 %897, 3
  %906 = and i32 %905, 24
  %907 = lshr i32 %904, %906
  %908 = and i32 %907, 255
  %909 = sitofp i32 %908 to float
  %910 = fmul fast float %899, 0x3F70101020000000
  %911 = fmul fast float %910, %909
  %912 = lshr i32 %896, 2
  %913 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %912
  %914 = load i32, i32* %913, align 4, !tbaa !58, !noalias !62
  %915 = shl i32 %896, 3
  %916 = and i32 %915, 24
  %917 = lshr i32 %914, %916
  %918 = and i32 %917, 255
  %919 = sitofp i32 %918 to float
  %920 = fmul fast float %898, 0x3F70101020000000
  %921 = fmul fast float %920, %919
  %922 = lshr i32 %895, 2
  %923 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %922
  %924 = load i32, i32* %923, align 4, !tbaa !58, !noalias !62
  %925 = shl i32 %895, 3
  %926 = and i32 %925, 24
  %927 = lshr i32 %924, %926
  %928 = and i32 %927, 255
  %929 = sitofp i32 %928 to float
  %930 = fmul fast float %901, 0x3F70101020000000
  %931 = fmul fast float %930, %929
  %932 = fsub fast float 1.000000e+00, %911
  %933 = fsub fast float %932, %921
  %934 = fsub fast float %933, %931
  %935 = fmul fast float %607, 2.000000e+01
  %936 = fadd fast float %935, 1.000000e+00
  %937 = fmul fast float %934, 2.000000e+01
  %938 = fsub fast float %936, %937
  %939 = call float @dx.op.unary.f32(i32 7, float %938)  ; Saturate(value)
  br label %940

; <label>:940                                     ; preds = %894, %845
  %941 = phi float [ %939, %894 ], [ 1.000000e+00, %845 ]
  store float %941, float* %658, align 4, !tbaa !70, !noalias !62
  %942 = fadd fast float %847, %941
  %943 = icmp slt i32 %651, 0
  br i1 %943, label %944, label %1035, !dx.controlflow.hints !56

; <label>:944                                     ; preds = %940
  %945 = fsub fast float 1.000000e+00, %608
  %946 = fdiv fast float 1.000000e+00, %945
  %947 = shl i32 %596, 6
  %948 = or i32 %947, 48
  %949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %948, i32 undef)  ; BufferLoad(srv,index,wot)
  %950 = extractvalue %dx.types.ResRet.i32 %949, 0
  %951 = extractvalue %dx.types.ResRet.i32 %949, 1
  %952 = extractvalue %dx.types.ResRet.i32 %949, 2
  %953 = extractvalue %dx.types.ResRet.i32 %949, 3
  %954 = fmul fast float %946, %605
  %955 = fmul fast float %946, %606
  %956 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %950, i32* %956, align 4
  %957 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %951, i32* %957, align 4
  %958 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %952, i32* %958, align 4
  %959 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %953, i32* %959, align 4
  %960 = fmul fast float %955, 4.000000e+00
  %961 = call float @dx.op.unary.f32(i32 27, float %960)  ; Round_ni(value)
  %962 = fmul fast float %954, 4.000000e+00
  %963 = call float @dx.op.unary.f32(i32 27, float %962)  ; Round_ni(value)
  %964 = fsub fast float 1.100000e+01, %961
  %965 = fmul fast float %961, 5.000000e-01
  %966 = fmul fast float %965, %964
  %967 = fadd fast float %963, 5.000000e-01
  %968 = fadd fast float %967, %966
  %969 = fptosi float %968 to i32
  %970 = fptosi float %961 to i32
  %971 = sub nsw i32 5, %970
  %972 = fmul fast float %963, 2.500000e-01
  %973 = fmul fast float %961, 2.500000e-01
  %974 = add nsw i32 %969, 1
  %975 = add nsw i32 %969, %971
  %976 = fsub fast float %954, %972
  %977 = fmul fast float %976, 4.000000e+00
  %978 = fsub fast float %955, %973
  %979 = fmul fast float %978, 4.000000e+00
  %980 = fadd fast float %976, %978
  %981 = fmul fast float %980, 4.000000e+00
  %982 = fcmp fast ogt float %981, 1.000000e+00
  br i1 %982, label %983, label %989, !dx.controlflow.hints !57

; <label>:983                                     ; preds = %944
  %984 = add nsw i32 %975, 1
  %985 = fadd fast float %979, -1.000000e+00
  %986 = fsub fast float -0.000000e+00, %985
  %987 = fadd fast float %977, -1.000000e+00
  %988 = fsub fast float -0.000000e+00, %987
  br label %989

; <label>:989                                     ; preds = %983, %944
  %990 = phi i32 [ %984, %983 ], [ %969, %944 ]
  %991 = phi i32 [ %974, %983 ], [ %975, %944 ]
  %992 = phi i32 [ %975, %983 ], [ %974, %944 ]
  %993 = phi float [ %988, %983 ], [ %979, %944 ]
  %994 = phi float [ %986, %983 ], [ %977, %944 ]
  %995 = fsub fast float 1.000000e+00, %993
  %996 = fsub fast float %995, %994
  %997 = lshr i32 %992, 2
  %998 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %997
  %999 = load i32, i32* %998, align 4, !tbaa !58, !noalias !62
  %1000 = shl i32 %992, 3
  %1001 = and i32 %1000, 24
  %1002 = lshr i32 %999, %1001
  %1003 = and i32 %1002, 255
  %1004 = sitofp i32 %1003 to float
  %1005 = fmul fast float %994, 0x3F70101020000000
  %1006 = fmul fast float %1005, %1004
  %1007 = lshr i32 %991, 2
  %1008 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %1007
  %1009 = load i32, i32* %1008, align 4, !tbaa !58, !noalias !62
  %1010 = shl i32 %991, 3
  %1011 = and i32 %1010, 24
  %1012 = lshr i32 %1009, %1011
  %1013 = and i32 %1012, 255
  %1014 = sitofp i32 %1013 to float
  %1015 = fmul fast float %993, 0x3F70101020000000
  %1016 = fmul fast float %1015, %1014
  %1017 = lshr i32 %990, 2
  %1018 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %1017
  %1019 = load i32, i32* %1018, align 4, !tbaa !58, !noalias !62
  %1020 = shl i32 %990, 3
  %1021 = and i32 %1020, 24
  %1022 = lshr i32 %1019, %1021
  %1023 = and i32 %1022, 255
  %1024 = sitofp i32 %1023 to float
  %1025 = fmul fast float %996, 0x3F70101020000000
  %1026 = fmul fast float %1025, %1024
  %1027 = fsub fast float 1.000000e+00, %1006
  %1028 = fsub fast float %1027, %1016
  %1029 = fsub fast float %1028, %1026
  %1030 = fmul fast float %608, 2.000000e+01
  %1031 = fadd fast float %1030, 1.000000e+00
  %1032 = fmul fast float %1029, 2.000000e+01
  %1033 = fsub fast float %1031, %1032
  %1034 = call float @dx.op.unary.f32(i32 7, float %1033)  ; Saturate(value)
  br label %1035

; <label>:1035                                    ; preds = %989, %940
  %1036 = phi float [ %1034, %989 ], [ 1.000000e+00, %940 ]
  store float %1036, float* %659, align 4, !tbaa !70, !noalias !62
  %1037 = fadd fast float %942, %1036
  %1038 = fcmp fast oeq float %1037, 0.000000e+00
  br i1 %1038, label %1039, label %1040, !dx.controlflow.hints !72

; <label>:1039                                    ; preds = %1035
  store float 2.500000e-01, float* %656, align 4
  store float 2.500000e-01, float* %657, align 4
  store float 2.500000e-01, float* %658, align 4
  store float 2.500000e-01, float* %659, align 4
  br label %1040

; <label>:1040                                    ; preds = %1039, %1035
  %1041 = phi float [ 2.500000e-01, %1039 ], [ %752, %1035 ]
  %1042 = phi i32 [ 0, %1039 ], [ 1, %1035 ]
  br label %1043

; <label>:1043                                    ; preds = %1179, %1040
  %1044 = phi float [ %1041, %1040 ], [ %1181, %1179 ]
  %1045 = phi float [ 0.000000e+00, %1040 ], [ %1163, %1179 ]
  %1046 = phi float [ 0.000000e+00, %1040 ], [ %1164, %1179 ]
  %1047 = phi float [ 0.000000e+00, %1040 ], [ %1165, %1179 ]
  %1048 = phi float [ 0.000000e+00, %1040 ], [ %1166, %1179 ]
  %1049 = phi float [ 0.000000e+00, %1040 ], [ %1167, %1179 ]
  %1050 = phi float [ 0.000000e+00, %1040 ], [ %1168, %1179 ]
  %1051 = phi float [ 0.000000e+00, %1040 ], [ %1169, %1179 ]
  %1052 = phi float [ 0.000000e+00, %1040 ], [ %1170, %1179 ]
  %1053 = phi float [ 0.000000e+00, %1040 ], [ %1171, %1179 ]
  %1054 = phi float [ 0.000000e+00, %1040 ], [ %1172, %1179 ]
  %1055 = phi float [ 0.000000e+00, %1040 ], [ %1173, %1179 ]
  %1056 = phi float [ 0.000000e+00, %1040 ], [ %1174, %1179 ]
  %1057 = phi float [ 0.000000e+00, %1040 ], [ %1175, %1179 ]
  %1058 = phi float [ 0.000000e+00, %1040 ], [ %1176, %1179 ]
  %1059 = phi i32 [ 0, %1040 ], [ %1177, %1179 ]
  %1060 = fcmp fast ogt float %1044, 0.000000e+00
  br i1 %1060, label %1061, label %1162, !dx.controlflow.hints !73

; <label>:1061                                    ; preds = %1043
  %1062 = getelementptr [4 x float], [4 x float]* %29, i32 0, i32 %1059
  %1063 = load float, float* %1062, align 4, !tbaa !70, !noalias !62
  %1064 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %1059
  %1065 = load i32, i32* %1064, align 4, !tbaa !58, !noalias !62
  %1066 = fmul fast float %1063, %1044
  %1067 = shl i32 %1065, 5
  %1068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1067, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.i32 %1068, 0
  %1070 = extractvalue %dx.types.ResRet.i32 %1068, 1
  %1071 = extractvalue %dx.types.ResRet.i32 %1068, 3
  %1072 = or i32 %1067, 16
  %1073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1072, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.i32 %1073, 1
  %1075 = extractvalue %dx.types.ResRet.i32 %1073, 3
  %1076 = shl i32 %1069, 4
  %1077 = and i32 %1076, 32752
  %1078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1077)  ; LegacyF16ToF32(value)
  %1079 = lshr i32 %1069, 7
  %1080 = and i32 %1079, 32752
  %1081 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1080)  ; LegacyF16ToF32(value)
  %1082 = lshr i32 %1069, 22
  %1083 = shl nuw nsw i32 %1082, 5
  %1084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1083)  ; LegacyF16ToF32(value)
  %1085 = and i32 %1070, 255
  %1086 = uitofp i32 %1085 to float
  %1087 = fmul fast float %1086, 0x3F80204080000000
  %1088 = fadd fast float %1087, -1.000000e+00
  %1089 = lshr i32 %1070, 8
  %1090 = and i32 %1089, 255
  %1091 = uitofp i32 %1090 to float
  %1092 = fmul fast float %1091, 0x3F80204080000000
  %1093 = fadd fast float %1092, -1.000000e+00
  %1094 = lshr i32 %1070, 16
  %1095 = and i32 %1094, 255
  %1096 = uitofp i32 %1095 to float
  %1097 = fmul fast float %1096, 0x3F80204080000000
  %1098 = fadd fast float %1097, -1.000000e+00
  %1099 = and i32 %1071, 255
  %1100 = uitofp i32 %1099 to float
  %1101 = fmul fast float %1100, 0x3F80204080000000
  %1102 = fadd fast float %1101, -1.000000e+00
  %1103 = lshr i32 %1071, 8
  %1104 = and i32 %1103, 255
  %1105 = uitofp i32 %1104 to float
  %1106 = fmul fast float %1105, 0x3F80204080000000
  %1107 = fadd fast float %1106, -1.000000e+00
  %1108 = lshr i32 %1071, 16
  %1109 = and i32 %1108, 255
  %1110 = uitofp i32 %1109 to float
  %1111 = fmul fast float %1110, 0x3F80204080000000
  %1112 = fadd fast float %1111, -1.000000e+00
  %1113 = and i32 %1074, 255
  %1114 = uitofp i32 %1113 to float
  %1115 = fmul fast float %1114, 0x3F80204080000000
  %1116 = fadd fast float %1115, -1.000000e+00
  %1117 = lshr i32 %1074, 8
  %1118 = and i32 %1117, 255
  %1119 = uitofp i32 %1118 to float
  %1120 = fmul fast float %1119, 0x3F80204080000000
  %1121 = fadd fast float %1120, -1.000000e+00
  %1122 = lshr i32 %1074, 16
  %1123 = and i32 %1122, 255
  %1124 = uitofp i32 %1123 to float
  %1125 = fmul fast float %1124, 0x3F80204080000000
  %1126 = fadd fast float %1125, -1.000000e+00
  %1127 = lshr i32 %1075, 8
  %1128 = and i32 %1127, 255
  %1129 = uitofp i32 %1128 to float
  %1130 = fmul fast float %1078, %1066
  %1131 = fadd fast float %1130, %1048
  %1132 = fmul fast float %1066, 0x3FFBB67AE0000000
  %1133 = fmul fast float %1132, %1078
  %1134 = fmul fast float %1133, %1088
  %1135 = fadd fast float %1134, %1047
  %1136 = fmul fast float %1133, %1093
  %1137 = fadd fast float %1136, %1046
  %1138 = fmul fast float %1133, %1098
  %1139 = fadd fast float %1138, %1045
  %1140 = fmul fast float %1081, %1066
  %1141 = fadd fast float %1140, %1052
  %1142 = fmul fast float %1132, %1081
  %1143 = fmul fast float %1142, %1102
  %1144 = fadd fast float %1143, %1051
  %1145 = fmul fast float %1142, %1107
  %1146 = fadd fast float %1145, %1050
  %1147 = fmul fast float %1142, %1112
  %1148 = fadd fast float %1147, %1049
  %1149 = fmul fast float %1084, %1066
  %1150 = fadd fast float %1149, %1056
  %1151 = fmul fast float %1132, %1084
  %1152 = fmul fast float %1151, %1116
  %1153 = fadd fast float %1152, %1055
  %1154 = fmul fast float %1151, %1121
  %1155 = fadd fast float %1154, %1054
  %1156 = fmul fast float %1151, %1126
  %1157 = fadd fast float %1156, %1053
  %1158 = fmul fast float %1066, 0x3F70101020000000
  %1159 = fmul fast float %1158, %1129
  %1160 = fadd fast float %1159, %1057
  %1161 = fadd fast float %1066, %1058
  br label %1162

; <label>:1162                                    ; preds = %1061, %1043
  %1163 = phi float [ %1139, %1061 ], [ %1045, %1043 ]
  %1164 = phi float [ %1137, %1061 ], [ %1046, %1043 ]
  %1165 = phi float [ %1135, %1061 ], [ %1047, %1043 ]
  %1166 = phi float [ %1131, %1061 ], [ %1048, %1043 ]
  %1167 = phi float [ %1148, %1061 ], [ %1049, %1043 ]
  %1168 = phi float [ %1146, %1061 ], [ %1050, %1043 ]
  %1169 = phi float [ %1144, %1061 ], [ %1051, %1043 ]
  %1170 = phi float [ %1141, %1061 ], [ %1052, %1043 ]
  %1171 = phi float [ %1157, %1061 ], [ %1053, %1043 ]
  %1172 = phi float [ %1155, %1061 ], [ %1054, %1043 ]
  %1173 = phi float [ %1153, %1061 ], [ %1055, %1043 ]
  %1174 = phi float [ %1150, %1061 ], [ %1056, %1043 ]
  %1175 = phi float [ %1160, %1061 ], [ %1057, %1043 ]
  %1176 = phi float [ %1161, %1061 ], [ %1058, %1043 ]
  %1177 = add nuw nsw i32 %1059, 1
  %1178 = icmp eq i32 %1177, 4
  br i1 %1178, label %1182, label %1179

; <label>:1179                                    ; preds = %1162
  %1180 = getelementptr [4 x float], [4 x float]* %31, i32 0, i32 %1177
  %1181 = load float, float* %1180, align 4, !tbaa !70, !noalias !62
  br label %1043

; <label>:1182                                    ; preds = %1162
  %1183 = fcmp fast ogt float %1176, 0.000000e+00
  %1184 = fdiv fast float 1.000000e+00, %1176
  %1185 = select i1 %1183, float %1184, float 1.000000e+00
  %1186 = fmul fast float %1185, %1166
  %1187 = fmul fast float %1185, %1165
  %1188 = fmul fast float %1185, %1164
  %1189 = fmul fast float %1185, %1163
  %1190 = fmul fast float %1185, %1170
  %1191 = fmul fast float %1185, %1169
  %1192 = fmul fast float %1185, %1168
  %1193 = fmul fast float %1185, %1167
  %1194 = fmul fast float %1185, %1174
  %1195 = fmul fast float %1185, %1173
  %1196 = fmul fast float %1185, %1172
  %1197 = fmul fast float %1185, %1171
  %1198 = fmul fast float %1185, %1175
  br label %1199

; <label>:1199                                    ; preds = %1182, %610
  %1200 = phi float [ %628, %610 ], [ %1189, %1182 ]
  %1201 = phi float [ %626, %610 ], [ %1188, %1182 ]
  %1202 = phi float [ %624, %610 ], [ %1187, %1182 ]
  %1203 = phi float [ %622, %610 ], [ %1186, %1182 ]
  %1204 = phi float [ %636, %610 ], [ %1193, %1182 ]
  %1205 = phi float [ %634, %610 ], [ %1192, %1182 ]
  %1206 = phi float [ %632, %610 ], [ %1191, %1182 ]
  %1207 = phi float [ %630, %610 ], [ %1190, %1182 ]
  %1208 = phi float [ %644, %610 ], [ %1197, %1182 ]
  %1209 = phi float [ %642, %610 ], [ %1196, %1182 ]
  %1210 = phi float [ %640, %610 ], [ %1195, %1182 ]
  %1211 = phi float [ %638, %610 ], [ %1194, %1182 ]
  %1212 = phi float [ 0.000000e+00, %610 ], [ %1198, %1182 ]
  %1213 = phi i32 [ 1, %610 ], [ %1042, %1182 ]
  %1214 = icmp ne i32 %1213, 0
  %1215 = select i1 %1214, float %1212, float 3.125000e-02
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %139, i32 0)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = icmp eq i32 %1217, 262144
  br i1 %1218, label %1238, label %1219, !dx.controlflow.hints !74

; <label>:1219                                    ; preds = %1199
  %1220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %139, i32 0)  ; BufferLoad(srv,index,wot)
  %1221 = extractvalue %dx.types.ResRet.i32 %1220, 0
  %1222 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1223 = extractvalue %dx.types.CBufRet.i32 %1222, 0
  %1224 = and i32 %1223, 31
  %1225 = shl i32 1, %1224
  %1226 = add i32 %1225, -1
  %1227 = and i32 %1226, %1221
  %1228 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1227)  ; Countbits(value)
  %1229 = extractvalue %dx.types.CBufRet.i32 %1222, 2
  %1230 = and i32 %1229, 31
  %1231 = shl i32 1, %1230
  %1232 = shl i32 %1231, %1230
  %1233 = shl i32 %27, %1230
  %1234 = mul i32 %1232, %1228
  %1235 = add i32 %1217, %26
  %1236 = add i32 %1235, %1233
  %1237 = add i32 %1236, %1234
  br label %1238

; <label>:1238                                    ; preds = %1219, %1199
  %1239 = phi i32 [ %1237, %1219 ], [ -1, %1199 ]
  %1240 = icmp eq i32 %1239, -1
  br i1 %1240, label %1258, label %1241, !dx.controlflow.hints !75

; <label>:1241                                    ; preds = %1238
  %1242 = fmul fast float %1203, 0x3FFBB67AE0000000
  %1243 = fadd fast float %1242, %1202
  %1244 = fadd fast float %1242, %1201
  %1245 = fadd fast float %1242, %1200
  %1246 = fmul fast float %1207, 0x3FFBB67AE0000000
  %1247 = fadd fast float %1246, %1206
  %1248 = fadd fast float %1246, %1205
  %1249 = fadd fast float %1246, %1204
  %1250 = fmul fast float %1211, 0x3FFBB67AE0000000
  %1251 = fadd fast float %1250, %1210
  %1252 = fadd fast float %1250, %1209
  %1253 = fadd fast float %1250, %1208
  %1254 = shl i32 %1239, 2
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %1254, i32 undef, float %1203, float %1207, float %1211, float %1203, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1255 = or i32 %1254, 1
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %1255, i32 undef, float %1243, float %1247, float %1251, float %1243, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1256 = or i32 %1254, 2
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %1256, i32 undef, float %1244, float %1248, float %1252, float %1244, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1257 = or i32 %1254, 3
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %1257, i32 undef, float %1245, float %1249, float %1253, float %1245, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %1239, i32 undef, float %1215, float %1215, float %1215, float %1215, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1258

; <label>:1258                                    ; preds = %1241, %1238, %133, %44, %35
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

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
!37 = !{void ()* @cs_del_sh_sample_lightgrid_1_lowres, !"cs_del_sh_sample_lightgrid_1_lowres", null, !4, !38}
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

