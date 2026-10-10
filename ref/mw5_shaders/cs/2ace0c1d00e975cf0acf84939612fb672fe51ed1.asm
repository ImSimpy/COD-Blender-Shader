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
; shader hash: 3342ceec5c84881ea53aefda44d83211
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

define void @cs_del_sh_sample_lightgrid_2_lowres() {
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
  br i1 %42, label %45, label %1647, !dx.controlflow.hints !41

; <label>:43                                      ; preds = %0
  %44 = icmp ult i32 %25, %33
  br i1 %44, label %45, label %1647, !dx.controlflow.hints !42

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
  br i1 %135, label %136, label %1647, !dx.controlflow.hints !45

; <label>:136                                     ; preds = %131
  %137 = shl i32 %26, 1
  %138 = shl i32 %27, 1
  %139 = add i32 %134, %51
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

; <label>:151                                     ; preds = %136
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

; <label>:190                                     ; preds = %151, %136
  %191 = phi float [ %189, %151 ], [ %148, %136 ]
  %192 = and i32 %145, 268435456
  %193 = icmp eq i32 %192, 0
  %194 = or i32 %140, 16
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %194, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = extractvalue %dx.types.ResRet.i32 %195, 1
  %198 = extractvalue %dx.types.ResRet.i32 %195, 2
  %199 = extractvalue %dx.types.ResRet.i32 %195, 3
  %200 = and i32 %196, 65535
  %201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %200)  ; LegacyF16ToF32(value)
  %202 = lshr i32 %196, 16
  %203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %202)  ; LegacyF16ToF32(value)
  %204 = and i32 %197, 1023
  %205 = uitofp i32 %204 to float
  %206 = lshr i32 %197, 10
  %207 = and i32 %206, 1023
  %208 = uitofp i32 %207 to float
  %209 = lshr i32 %197, 20
  %210 = and i32 %209, 1023
  %211 = uitofp i32 %210 to float
  %212 = fmul fast float %205, 0x3F60040100000000
  %213 = fmul fast float %208, 0x3F60040100000000
  %214 = fmul fast float %211, 0x3F60040100000000
  %215 = fadd fast float %212, -1.000000e+00
  %216 = fadd fast float %213, -1.000000e+00
  %217 = fadd fast float %214, -1.000000e+00
  %218 = and i32 %198, 1023
  %219 = uitofp i32 %218 to float
  %220 = lshr i32 %198, 10
  %221 = and i32 %220, 1023
  %222 = uitofp i32 %221 to float
  %223 = lshr i32 %198, 20
  %224 = and i32 %223, 1023
  %225 = uitofp i32 %224 to float
  %226 = fmul fast float %219, 0x3F60040100000000
  %227 = fmul fast float %222, 0x3F60040100000000
  %228 = fmul fast float %225, 0x3F60040100000000
  %229 = fadd fast float %226, -1.000000e+00
  %230 = fadd fast float %227, -1.000000e+00
  %231 = fadd fast float %228, -1.000000e+00
  %232 = and i32 %199, 65535
  %233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %232)  ; LegacyF16ToF32(value)
  %234 = lshr i32 %199, 16
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234)  ; LegacyF16ToF32(value)
  %236 = call float @dx.op.unary.f32(i32 13, float %233)  ; Sin(value)
  %237 = call float @dx.op.unary.f32(i32 12, float %233)  ; Cos(value)
  %238 = fmul fast float %237, %215
  %239 = fmul fast float %237, %216
  %240 = fmul fast float %237, %217
  %241 = fmul fast float %236, %229
  %242 = fmul fast float %230, %236
  %243 = fmul fast float %231, %236
  %244 = fadd fast float %238, %241
  %245 = fadd fast float %239, %242
  %246 = fadd fast float %240, %243
  %247 = fmul fast float %244, %201
  %248 = fmul fast float %245, %201
  %249 = fmul fast float %246, %201
  %250 = fmul fast float %236, %215
  %251 = fmul fast float %216, %236
  %252 = fmul fast float %217, %236
  %253 = fmul fast float %237, %229
  %254 = fmul fast float %237, %230
  %255 = fmul fast float %237, %231
  %256 = fsub fast float %250, %253
  %257 = fsub fast float %251, %254
  %258 = fsub fast float %252, %255
  %259 = fmul fast float %256, %203
  %260 = fmul fast float %257, %203
  %261 = fmul fast float %258, %203
  %262 = uitofp i32 %137 to float
  %263 = uitofp i32 %138 to float
  %264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.f32 %264, 1
  %266 = fdiv fast float %262, %265
  %267 = fdiv fast float %263, %265
  %268 = extractvalue %dx.types.CBufRet.f32 %264, 2
  %269 = fmul fast float %268, 2.000000e+00
  %270 = fadd fast float %269, %266
  %271 = fadd fast float %269, %267
  %272 = fmul fast float %270, %247
  %273 = fmul fast float %270, %248
  %274 = fmul fast float %270, %249
  %275 = fmul fast float %271, %259
  %276 = fmul fast float %271, %260
  %277 = fmul fast float %271, %261
  %278 = fadd fast float %275, %272
  %279 = fmul fast float %278, 2.000000e+00
  %280 = fsub fast float %146, %247
  %281 = fsub fast float %280, %259
  %282 = fadd fast float %281, %279
  %283 = fadd fast float %276, %273
  %284 = fmul fast float %283, 2.000000e+00
  %285 = fsub fast float %147, %248
  %286 = fsub fast float %285, %260
  %287 = fadd fast float %286, %284
  %288 = fadd fast float %277, %274
  %289 = fmul fast float %288, 2.000000e+00
  %290 = fsub fast float %191, %249
  %291 = fsub fast float %290, %261
  %292 = fadd fast float %291, %289
  %293 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.i32 %293, 2
  %295 = extractvalue %dx.types.CBufRet.i32 %293, 1
  %296 = extractvalue %dx.types.CBufRet.i32 %293, 0
  %297 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 0
  store float 0.000000e+00, float* %297, align 4
  %298 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 1
  store float 0.000000e+00, float* %298, align 4
  %299 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 2
  store float 0.000000e+00, float* %299, align 4
  %300 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 3
  store float 0.000000e+00, float* %300, align 4
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = extractvalue %dx.types.ResRet.i32 %303, 1
  %306 = extractvalue %dx.types.ResRet.i32 %303, 2
  %307 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.f32 %307, 0
  %309 = extractvalue %dx.types.ResRet.f32 %307, 1
  %310 = extractvalue %dx.types.ResRet.f32 %307, 2
  %311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.f32 %311, 0
  %313 = extractvalue %dx.types.ResRet.f32 %311, 1
  %314 = extractvalue %dx.types.ResRet.f32 %311, 2
  %315 = fsub fast float %282, %308
  %316 = fsub fast float %287, %309
  %317 = fsub fast float %292, %310
  %318 = fptoui float %315 to i32
  %319 = fptoui float %316 to i32
  %320 = fptoui float %317 to i32
  %321 = fcmp fast olt float %282, %308
  %322 = fcmp fast olt float %287, %309
  %323 = fcmp fast olt float %292, %310
  %324 = or i1 %321, %322
  %325 = or i1 %323, %324
  %326 = fcmp fast oge float %282, %312
  %327 = fcmp fast oge float %287, %313
  %328 = fcmp fast oge float %292, %314
  %329 = or i1 %326, %327
  %330 = or i1 %328, %329
  %331 = or i1 %325, %330
  %332 = and i32 %304, 31
  %333 = lshr i32 %318, %332
  %334 = lshr i32 %319, %332
  %335 = lshr i32 %320, %332
  %336 = mul i32 %334, %302
  %337 = add i32 %336, %333
  %338 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.i32 %338, 0
  %340 = icmp ult i32 %337, %339
  br i1 %340, label %341, label %357, !dx.controlflow.hints !47

; <label>:341                                     ; preds = %190
  %342 = mul i32 %337, 12
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = add i32 %342, 4
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = add i32 %342, 8
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = icmp ult i32 %335, %347
  %352 = icmp ugt i32 %335, %350
  %353 = or i1 %351, %352
  %354 = add i32 %344, %335
  %355 = sub i32 %354, %347
  %356 = select i1 %353, i32 -2147483648, i32 %355
  br label %357

; <label>:357                                     ; preds = %341, %190
  %358 = phi i32 [ %356, %341 ], [ -2147483648, %190 ]
  %359 = select i1 %331, i32 -2147483648, i32 %358
  %360 = icmp sgt i32 %359, -1
  %361 = and i32 %305, 31
  %362 = lshr i32 %318, %361
  %363 = lshr i32 %319, %361
  %364 = lshr i32 %320, %361
  %365 = and i32 %362, 3
  %366 = and i32 %364, 3
  %367 = shl nuw nsw i32 %366, 4
  %368 = shl i32 %363, 2
  %369 = and i32 %368, 12
  %370 = and i32 %367, 16
  %371 = or i32 %369, %365
  %372 = or i32 %371, %370
  %373 = shl i32 1, %372
  %374 = extractvalue %dx.types.CBufRet.i32 %338, 1
  %375 = icmp ult i32 %359, %374
  br i1 %375, label %376, label %394, !dx.controlflow.hints !48

; <label>:376                                     ; preds = %357
  %377 = lshr i32 %366, 1
  %378 = shl i32 %359, 4
  %379 = shl nuw nsw i32 %377, 2
  %380 = or i32 %378, %379
  %381 = or i32 %380, 8
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, %373
  %385 = icmp eq i32 %384, 0
  %386 = add i32 %373, -1
  %387 = and i32 %383, %386
  %388 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %387)  ; Countbits(value)
  %389 = or i32 %378, %379
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  %392 = add i32 %391, %388
  %393 = select i1 %385, i32 -2147483648, i32 %392
  br label %394

; <label>:394                                     ; preds = %376, %357
  %395 = phi i32 [ %393, %376 ], [ -2147483648, %357 ]
  %396 = select i1 %360, i32 %395, i32 %359
  %397 = icmp sgt i32 %396, -1
  %398 = and i32 %306, 31
  %399 = lshr i32 %318, %398
  %400 = lshr i32 %319, %398
  %401 = lshr i32 %320, %398
  %402 = and i32 %399, 3
  %403 = and i32 %401, 3
  %404 = shl nuw nsw i32 %403, 4
  %405 = shl i32 %400, 2
  %406 = and i32 %405, 12
  %407 = and i32 %404, 16
  %408 = or i32 %406, %402
  %409 = or i32 %408, %407
  %410 = shl i32 1, %409
  %411 = icmp ult i32 %396, %374
  br i1 %411, label %412, label %430, !dx.controlflow.hints !48

; <label>:412                                     ; preds = %394
  %413 = lshr i32 %403, 1
  %414 = shl i32 %396, 4
  %415 = shl nuw nsw i32 %413, 2
  %416 = or i32 %414, %415
  %417 = or i32 %416, 8
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = and i32 %419, %410
  %421 = icmp eq i32 %420, 0
  %422 = add i32 %410, -1
  %423 = and i32 %419, %422
  %424 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %423)  ; Countbits(value)
  %425 = or i32 %414, %415
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = add i32 %427, %424
  %429 = select i1 %421, i32 -2147483648, i32 %428
  br label %430

; <label>:430                                     ; preds = %412, %394
  %431 = phi i32 [ %429, %412 ], [ -2147483648, %394 ]
  %432 = select i1 %397, i32 %431, i32 %396
  br i1 %331, label %447, label %433, !dx.controlflow.hints !49

; <label>:433                                     ; preds = %430
  %434 = icmp eq i32 %432, -2147483648
  %435 = icmp eq i32 %396, -2147483648
  %436 = select i1 %435, i32 %359, i32 %396
  %437 = select i1 %434, i32 %436, i32 %432
  %438 = icmp sgt i32 %437, -1
  %439 = icmp ne i32 %294, -1
  %440 = and i1 %439, %438
  %441 = select i1 %440, i32 %294, i32 0
  %442 = add i32 %437, %295
  %443 = add i32 %442, %441
  %444 = shl i32 %443, 2
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  br label %447

; <label>:447                                     ; preds = %433, %430
  %448 = phi i32 [ %446, %433 ], [ -1, %430 ]
  %449 = icmp eq i32 %448, -1
  %450 = select i1 %449, i32 %296, i32 %448
  %451 = icmp eq i32 %450, -1
  br i1 %451, label %600, label %452

; <label>:452                                     ; preds = %447
  br label %453

; <label>:453                                     ; preds = %591, %452
  %454 = phi i32 [ %592, %591 ], [ 0, %452 ]
  %455 = phi i32 [ %456, %591 ], [ -1, %452 ]
  %456 = phi i32 [ %587, %591 ], [ %450, %452 ]
  %457 = phi float [ %563, %591 ], [ 0.000000e+00, %452 ]
  %458 = phi float [ %564, %591 ], [ 0.000000e+00, %452 ]
  %459 = phi float [ %565, %591 ], [ 0.000000e+00, %452 ]
  %460 = phi float [ %568, %591 ], [ 0.000000e+00, %452 ]
  %461 = icmp ugt i32 %454, 25
  br i1 %461, label %594, label %462, !dx.controlflow.hints !50

; <label>:462                                     ; preds = %453
  %463 = shl i32 %456, 4
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = extractvalue %dx.types.ResRet.i32 %464, 1
  %467 = extractvalue %dx.types.ResRet.i32 %464, 2
  %468 = extractvalue %dx.types.ResRet.i32 %464, 3
  %469 = and i32 %465, 2147483647
  %470 = mul nsw i32 %469, 12
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = extractvalue %dx.types.ResRet.i32 %471, 1
  %474 = extractvalue %dx.types.ResRet.i32 %471, 2
  %475 = and i32 %466, 2147483647
  %476 = mul nsw i32 %475, 12
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = extractvalue %dx.types.ResRet.i32 %477, 1
  %480 = extractvalue %dx.types.ResRet.i32 %477, 2
  %481 = and i32 %467, 2147483647
  %482 = mul nsw i32 %481, 12
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = extractvalue %dx.types.ResRet.i32 %483, 1
  %486 = extractvalue %dx.types.ResRet.i32 %483, 2
  %487 = and i32 %468, 2147483647
  %488 = mul nsw i32 %487, 12
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = extractvalue %dx.types.ResRet.i32 %489, 1
  %492 = extractvalue %dx.types.ResRet.i32 %489, 2
  %493 = bitcast i32 %472 to float
  %494 = bitcast i32 %473 to float
  %495 = bitcast i32 %474 to float
  %496 = bitcast i32 %490 to float
  %497 = bitcast i32 %491 to float
  %498 = bitcast i32 %492 to float
  %499 = fsub fast float %493, %496
  %500 = fsub fast float %494, %497
  %501 = fsub fast float %495, %498
  %502 = bitcast i32 %478 to float
  %503 = bitcast i32 %479 to float
  %504 = bitcast i32 %480 to float
  %505 = fsub fast float %502, %496
  %506 = fsub fast float %503, %497
  %507 = fsub fast float %504, %498
  %508 = bitcast i32 %484 to float
  %509 = bitcast i32 %485 to float
  %510 = bitcast i32 %486 to float
  %511 = fsub fast float %508, %496
  %512 = fsub fast float %509, %497
  %513 = fsub fast float %510, %498
  %514 = fsub fast float %282, %496
  %515 = fsub fast float %287, %497
  %516 = fsub fast float %292, %498
  %517 = fmul fast float %506, %513
  %518 = fmul fast float %512, %507
  %519 = fsub fast float %517, %518
  %520 = fmul fast float %519, %499
  %521 = fmul fast float %505, %513
  %522 = fmul fast float %507, %511
  %523 = fsub fast float %521, %522
  %524 = fmul fast float %523, %500
  %525 = fsub fast float %520, %524
  %526 = fmul fast float %505, %512
  %527 = fmul fast float %506, %511
  %528 = fsub fast float %526, %527
  %529 = fmul fast float %528, %501
  %530 = fadd fast float %525, %529
  %531 = fdiv fast float 1.000000e+00, %530
  %532 = fmul fast float %519, %531
  %533 = fmul fast float %531, %523
  %534 = fsub fast float -0.000000e+00, %533
  %535 = fmul fast float %528, %531
  %536 = fmul fast float %500, %513
  %537 = fmul fast float %501, %512
  %538 = fsub fast float %536, %537
  %539 = fmul fast float %531, %538
  %540 = fsub fast float -0.000000e+00, %539
  %541 = fmul fast float %499, %513
  %542 = fmul fast float %511, %501
  %543 = fsub fast float %541, %542
  %544 = fmul fast float %543, %531
  %545 = fmul fast float %499, %512
  %546 = fmul fast float %500, %511
  %547 = fsub fast float %545, %546
  %548 = fmul fast float %531, %547
  %549 = fsub fast float -0.000000e+00, %548
  %550 = fmul fast float %500, %507
  %551 = fmul fast float %501, %506
  %552 = fsub fast float %550, %551
  %553 = fmul fast float %552, %531
  %554 = fmul fast float %499, %507
  %555 = fmul fast float %501, %505
  %556 = fsub fast float %554, %555
  %557 = fmul fast float %531, %556
  %558 = fsub fast float -0.000000e+00, %557
  %559 = fmul fast float %499, %506
  %560 = fmul fast float %500, %505
  %561 = fsub fast float %559, %560
  %562 = fmul fast float %561, %531
  %563 = call float @dx.op.dot3.f32(i32 55, float %532, float %534, float %535, float %514, float %515, float %516)  ; Dot3(ax,ay,az,bx,by,bz)
  %564 = call float @dx.op.dot3.f32(i32 55, float %540, float %544, float %549, float %514, float %515, float %516)  ; Dot3(ax,ay,az,bx,by,bz)
  %565 = call float @dx.op.dot3.f32(i32 55, float %553, float %558, float %562, float %514, float %515, float %516)  ; Dot3(ax,ay,az,bx,by,bz)
  %566 = fsub fast float 1.000000e+00, %563
  %567 = fsub fast float %566, %564
  %568 = fsub fast float %567, %565
  %569 = call float @dx.op.binary.f32(i32 36, float %563, float %564)  ; FMin(a,b)
  %570 = call float @dx.op.binary.f32(i32 36, float %569, float %565)  ; FMin(a,b)
  %571 = call float @dx.op.binary.f32(i32 36, float %570, float %568)  ; FMin(a,b)
  %572 = call float @dx.op.binary.f32(i32 35, float %563, float %564)  ; FMax(a,b)
  %573 = call float @dx.op.binary.f32(i32 35, float %572, float %565)  ; FMax(a,b)
  %574 = call float @dx.op.binary.f32(i32 35, float %573, float %568)  ; FMax(a,b)
  %575 = fcmp fast oge float %571, 0xBF50624DE0000000
  %576 = fcmp fast olt float %574, 0x3FF00068E0000000
  %577 = and i1 %575, %576
  br i1 %577, label %594, label %578, !dx.controlflow.hints !51

; <label>:578                                     ; preds = %462
  %579 = fcmp fast oeq float %571, %563
  %580 = fcmp fast oeq float %571, %564
  %581 = fcmp fast oeq float %571, %565
  %582 = select i1 %581, i32 8, i32 12
  %583 = select i1 %580, i32 4, i32 %582
  %584 = select i1 %579, i32 0, i32 %583
  %585 = or i32 %584, %463
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = icmp ne i32 %455, -1
  %589 = icmp eq i32 %587, %455
  %590 = and i1 %588, %589
  br i1 %590, label %594, label %591, !dx.controlflow.hints !52

; <label>:591                                     ; preds = %578
  %592 = add nuw nsw i32 %454, 1
  %593 = icmp eq i32 %587, -1
  br i1 %593, label %594, label %453, !llvm.loop !53

; <label>:594                                     ; preds = %591, %578, %462, %453
  %595 = phi i32 [ %456, %578 ], [ %456, %462 ], [ -1, %591 ], [ -1, %453 ]
  %596 = phi float [ %563, %578 ], [ %563, %462 ], [ %563, %591 ], [ %457, %453 ]
  %597 = phi float [ %564, %578 ], [ %564, %462 ], [ %564, %591 ], [ %458, %453 ]
  %598 = phi float [ %565, %578 ], [ %565, %462 ], [ %565, %591 ], [ %459, %453 ]
  %599 = phi float [ %568, %578 ], [ %568, %462 ], [ %568, %591 ], [ %460, %453 ]
  br label %600

; <label>:600                                     ; preds = %594, %447
  %601 = phi i32 [ -1, %447 ], [ %595, %594 ]
  %602 = phi float [ 0.000000e+00, %447 ], [ %596, %594 ]
  %603 = phi float [ 0.000000e+00, %447 ], [ %597, %594 ]
  %604 = phi float [ 0.000000e+00, %447 ], [ %598, %594 ]
  %605 = phi float [ 0.000000e+00, %447 ], [ %599, %594 ]
  %606 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %602)  ; FMax(a,b)
  %607 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %603)  ; FMax(a,b)
  %608 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %604)  ; FMax(a,b)
  %609 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %605)  ; FMax(a,b)
  %610 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %606)  ; FMin(a,b)
  %611 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %607)  ; FMin(a,b)
  %612 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %608)  ; FMin(a,b)
  %613 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %609)  ; FMin(a,b)
  store float %610, float* %297, align 4
  store float %611, float* %298, align 4
  store float %612, float* %299, align 4
  store float %613, float* %300, align 4
  %614 = icmp eq i32 %601, -1
  br i1 %614, label %615, label %688, !dx.controlflow.hints !55

; <label>:615                                     ; preds = %600
  %616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.i32 %616, 0
  %618 = extractvalue %dx.types.ResRet.i32 %616, 1
  %619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.i32 %619, 0
  %621 = extractvalue %dx.types.ResRet.i32 %619, 1
  %622 = extractvalue %dx.types.ResRet.i32 %619, 2
  %623 = extractvalue %dx.types.ResRet.i32 %619, 3
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.i32 %624, 0
  %626 = extractvalue %dx.types.ResRet.i32 %624, 1
  %627 = extractvalue %dx.types.ResRet.i32 %624, 2
  %628 = extractvalue %dx.types.ResRet.i32 %624, 3
  %629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %630 = extractvalue %dx.types.ResRet.i32 %629, 0
  %631 = extractvalue %dx.types.ResRet.i32 %629, 1
  %632 = extractvalue %dx.types.ResRet.i32 %629, 2
  %633 = extractvalue %dx.types.ResRet.i32 %629, 3
  %634 = and i32 %630, 65535
  %635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %634)  ; LegacyF16ToF32(value)
  %636 = lshr i32 %630, 16
  %637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %636)  ; LegacyF16ToF32(value)
  %638 = and i32 %631, 65535
  %639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %638)  ; LegacyF16ToF32(value)
  %640 = lshr i32 %631, 16
  %641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %640)  ; LegacyF16ToF32(value)
  %642 = and i32 %632, 65535
  %643 = call float @dx.op.legacyF16ToF32(i32 131, i32 %642)  ; LegacyF16ToF32(value)
  %644 = lshr i32 %632, 16
  %645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %644)  ; LegacyF16ToF32(value)
  %646 = and i32 %633, 65535
  %647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %646)  ; LegacyF16ToF32(value)
  %648 = lshr i32 %633, 16
  %649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %648)  ; LegacyF16ToF32(value)
  %650 = and i32 %625, 65535
  %651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %650)  ; LegacyF16ToF32(value)
  %652 = lshr i32 %625, 16
  %653 = call float @dx.op.legacyF16ToF32(i32 131, i32 %652)  ; LegacyF16ToF32(value)
  %654 = and i32 %626, 65535
  %655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %654)  ; LegacyF16ToF32(value)
  %656 = lshr i32 %626, 16
  %657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %656)  ; LegacyF16ToF32(value)
  %658 = and i32 %627, 65535
  %659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %658)  ; LegacyF16ToF32(value)
  %660 = lshr i32 %627, 16
  %661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %660)  ; LegacyF16ToF32(value)
  %662 = and i32 %628, 65535
  %663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %662)  ; LegacyF16ToF32(value)
  %664 = lshr i32 %628, 16
  %665 = call float @dx.op.legacyF16ToF32(i32 131, i32 %664)  ; LegacyF16ToF32(value)
  %666 = and i32 %620, 65535
  %667 = call float @dx.op.legacyF16ToF32(i32 131, i32 %666)  ; LegacyF16ToF32(value)
  %668 = lshr i32 %620, 16
  %669 = call float @dx.op.legacyF16ToF32(i32 131, i32 %668)  ; LegacyF16ToF32(value)
  %670 = and i32 %621, 65535
  %671 = call float @dx.op.legacyF16ToF32(i32 131, i32 %670)  ; LegacyF16ToF32(value)
  %672 = lshr i32 %621, 16
  %673 = call float @dx.op.legacyF16ToF32(i32 131, i32 %672)  ; LegacyF16ToF32(value)
  %674 = and i32 %622, 65535
  %675 = call float @dx.op.legacyF16ToF32(i32 131, i32 %674)  ; LegacyF16ToF32(value)
  %676 = lshr i32 %622, 16
  %677 = call float @dx.op.legacyF16ToF32(i32 131, i32 %676)  ; LegacyF16ToF32(value)
  %678 = and i32 %623, 65535
  %679 = call float @dx.op.legacyF16ToF32(i32 131, i32 %678)  ; LegacyF16ToF32(value)
  %680 = lshr i32 %623, 16
  %681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %680)  ; LegacyF16ToF32(value)
  %682 = and i32 %617, 65535
  %683 = call float @dx.op.legacyF16ToF32(i32 131, i32 %682)  ; LegacyF16ToF32(value)
  %684 = lshr i32 %617, 16
  %685 = call float @dx.op.legacyF16ToF32(i32 131, i32 %684)  ; LegacyF16ToF32(value)
  %686 = and i32 %618, 65535
  %687 = call float @dx.op.legacyF16ToF32(i32 131, i32 %686)  ; LegacyF16ToF32(value)
  br label %1394

; <label>:688                                     ; preds = %600
  %689 = shl nsw i32 %601, 4
  %690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %689, i32 undef)  ; BufferLoad(srv,index,wot)
  %691 = extractvalue %dx.types.ResRet.i32 %690, 0
  %692 = extractvalue %dx.types.ResRet.i32 %690, 1
  %693 = extractvalue %dx.types.ResRet.i32 %690, 2
  %694 = extractvalue %dx.types.ResRet.i32 %690, 3
  %695 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 0
  store i32 %691, i32* %695, align 4
  %696 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 1
  store i32 %692, i32* %696, align 4
  %697 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 2
  store i32 %693, i32* %697, align 4
  %698 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 3
  store i32 %694, i32* %698, align 4
  %699 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 0
  store float 0.000000e+00, float* %699, align 4
  %700 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 1
  store float 0.000000e+00, float* %700, align 4
  %701 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 2
  store float 0.000000e+00, float* %701, align 4
  %702 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 3
  store float 0.000000e+00, float* %702, align 4
  %703 = icmp slt i32 %691, 0
  br i1 %703, label %704, label %794, !dx.controlflow.hints !56

; <label>:704                                     ; preds = %688
  %705 = fsub fast float 1.000000e+00, %610
  %706 = fdiv fast float 1.000000e+00, %705
  %707 = shl nsw i32 %601, 6
  %708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %707, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.i32 %708, 0
  %710 = extractvalue %dx.types.ResRet.i32 %708, 1
  %711 = extractvalue %dx.types.ResRet.i32 %708, 2
  %712 = extractvalue %dx.types.ResRet.i32 %708, 3
  %713 = fmul fast float %706, %613
  %714 = fmul fast float %706, %611
  %715 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %709, i32* %715, align 4
  %716 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %710, i32* %716, align 4
  %717 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %711, i32* %717, align 4
  %718 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %712, i32* %718, align 4
  %719 = fmul fast float %714, 4.000000e+00
  %720 = call float @dx.op.unary.f32(i32 27, float %719)  ; Round_ni(value)
  %721 = fmul fast float %713, 4.000000e+00
  %722 = call float @dx.op.unary.f32(i32 27, float %721)  ; Round_ni(value)
  %723 = fsub fast float 1.100000e+01, %720
  %724 = fmul fast float %720, 5.000000e-01
  %725 = fmul fast float %724, %723
  %726 = fadd fast float %722, 5.000000e-01
  %727 = fadd fast float %726, %725
  %728 = fptosi float %727 to i32
  %729 = fptosi float %720 to i32
  %730 = sub nsw i32 5, %729
  %731 = fmul fast float %722, 2.500000e-01
  %732 = fmul fast float %720, 2.500000e-01
  %733 = add nsw i32 %728, 1
  %734 = add nsw i32 %728, %730
  %735 = fsub fast float %713, %731
  %736 = fmul fast float %735, 4.000000e+00
  %737 = fsub fast float %714, %732
  %738 = fmul fast float %737, 4.000000e+00
  %739 = fadd fast float %735, %737
  %740 = fmul fast float %739, 4.000000e+00
  %741 = fcmp fast ogt float %740, 1.000000e+00
  br i1 %741, label %742, label %748, !dx.controlflow.hints !57

; <label>:742                                     ; preds = %704
  %743 = add nsw i32 %734, 1
  %744 = fadd fast float %738, -1.000000e+00
  %745 = fsub fast float -0.000000e+00, %744
  %746 = fadd fast float %736, -1.000000e+00
  %747 = fsub fast float -0.000000e+00, %746
  br label %748

; <label>:748                                     ; preds = %742, %704
  %749 = phi i32 [ %743, %742 ], [ %728, %704 ]
  %750 = phi i32 [ %733, %742 ], [ %734, %704 ]
  %751 = phi i32 [ %734, %742 ], [ %733, %704 ]
  %752 = phi float [ %747, %742 ], [ %738, %704 ]
  %753 = phi float [ %745, %742 ], [ %736, %704 ]
  %754 = fsub fast float 1.000000e+00, %752
  %755 = fsub fast float %754, %753
  %756 = lshr i32 %751, 2
  %757 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %756
  %758 = load i32, i32* %757, align 4, !tbaa !58, !noalias !62
  %759 = shl i32 %751, 3
  %760 = and i32 %759, 24
  %761 = lshr i32 %758, %760
  %762 = and i32 %761, 255
  %763 = sitofp i32 %762 to float
  %764 = fmul fast float %753, 0x3F70101020000000
  %765 = fmul fast float %764, %763
  %766 = lshr i32 %750, 2
  %767 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %766
  %768 = load i32, i32* %767, align 4, !tbaa !58, !noalias !62
  %769 = shl i32 %750, 3
  %770 = and i32 %769, 24
  %771 = lshr i32 %768, %770
  %772 = and i32 %771, 255
  %773 = sitofp i32 %772 to float
  %774 = fmul fast float %752, 0x3F70101020000000
  %775 = fmul fast float %774, %773
  %776 = lshr i32 %749, 2
  %777 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %776
  %778 = load i32, i32* %777, align 4, !tbaa !58, !noalias !62
  %779 = shl i32 %749, 3
  %780 = and i32 %779, 24
  %781 = lshr i32 %778, %780
  %782 = and i32 %781, 255
  %783 = sitofp i32 %782 to float
  %784 = fmul fast float %755, 0x3F70101020000000
  %785 = fmul fast float %784, %783
  %786 = fsub fast float 1.000000e+00, %765
  %787 = fsub fast float %786, %775
  %788 = fsub fast float %787, %785
  %789 = fmul fast float %610, 2.000000e+01
  %790 = fadd fast float %789, 1.000000e+00
  %791 = fmul fast float %788, 2.000000e+01
  %792 = fsub fast float %790, %791
  %793 = call float @dx.op.unary.f32(i32 7, float %792)  ; Saturate(value)
  br label %794

; <label>:794                                     ; preds = %748, %688
  %795 = phi float [ %793, %748 ], [ 1.000000e+00, %688 ]
  store float %795, float* %699, align 4, !tbaa !70, !noalias !62
  %796 = icmp slt i32 %692, 0
  br i1 %796, label %797, label %888, !dx.controlflow.hints !56

; <label>:797                                     ; preds = %794
  %798 = fsub fast float 1.000000e+00, %611
  %799 = fdiv fast float 1.000000e+00, %798
  %800 = shl i32 %601, 6
  %801 = or i32 %800, 16
  %802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %801, i32 undef)  ; BufferLoad(srv,index,wot)
  %803 = extractvalue %dx.types.ResRet.i32 %802, 0
  %804 = extractvalue %dx.types.ResRet.i32 %802, 1
  %805 = extractvalue %dx.types.ResRet.i32 %802, 2
  %806 = extractvalue %dx.types.ResRet.i32 %802, 3
  %807 = fmul fast float %799, %610
  %808 = fmul fast float %799, %613
  %809 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %803, i32* %809, align 4
  %810 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %804, i32* %810, align 4
  %811 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %805, i32* %811, align 4
  %812 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %806, i32* %812, align 4
  %813 = fmul fast float %808, 4.000000e+00
  %814 = call float @dx.op.unary.f32(i32 27, float %813)  ; Round_ni(value)
  %815 = fmul fast float %807, 4.000000e+00
  %816 = call float @dx.op.unary.f32(i32 27, float %815)  ; Round_ni(value)
  %817 = fsub fast float 1.100000e+01, %814
  %818 = fmul fast float %814, 5.000000e-01
  %819 = fmul fast float %818, %817
  %820 = fadd fast float %816, 5.000000e-01
  %821 = fadd fast float %820, %819
  %822 = fptosi float %821 to i32
  %823 = fptosi float %814 to i32
  %824 = sub nsw i32 5, %823
  %825 = fmul fast float %816, 2.500000e-01
  %826 = fmul fast float %814, 2.500000e-01
  %827 = add nsw i32 %822, 1
  %828 = add nsw i32 %822, %824
  %829 = fsub fast float %807, %825
  %830 = fmul fast float %829, 4.000000e+00
  %831 = fsub fast float %808, %826
  %832 = fmul fast float %831, 4.000000e+00
  %833 = fadd fast float %829, %831
  %834 = fmul fast float %833, 4.000000e+00
  %835 = fcmp fast ogt float %834, 1.000000e+00
  br i1 %835, label %836, label %842, !dx.controlflow.hints !57

; <label>:836                                     ; preds = %797
  %837 = add nsw i32 %828, 1
  %838 = fadd fast float %832, -1.000000e+00
  %839 = fsub fast float -0.000000e+00, %838
  %840 = fadd fast float %830, -1.000000e+00
  %841 = fsub fast float -0.000000e+00, %840
  br label %842

; <label>:842                                     ; preds = %836, %797
  %843 = phi i32 [ %837, %836 ], [ %822, %797 ]
  %844 = phi i32 [ %827, %836 ], [ %828, %797 ]
  %845 = phi i32 [ %828, %836 ], [ %827, %797 ]
  %846 = phi float [ %841, %836 ], [ %832, %797 ]
  %847 = phi float [ %839, %836 ], [ %830, %797 ]
  %848 = fsub fast float 1.000000e+00, %846
  %849 = fsub fast float %848, %847
  %850 = lshr i32 %845, 2
  %851 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %850
  %852 = load i32, i32* %851, align 4, !tbaa !58, !noalias !62
  %853 = shl i32 %845, 3
  %854 = and i32 %853, 24
  %855 = lshr i32 %852, %854
  %856 = and i32 %855, 255
  %857 = sitofp i32 %856 to float
  %858 = fmul fast float %847, 0x3F70101020000000
  %859 = fmul fast float %858, %857
  %860 = lshr i32 %844, 2
  %861 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %860
  %862 = load i32, i32* %861, align 4, !tbaa !58, !noalias !62
  %863 = shl i32 %844, 3
  %864 = and i32 %863, 24
  %865 = lshr i32 %862, %864
  %866 = and i32 %865, 255
  %867 = sitofp i32 %866 to float
  %868 = fmul fast float %846, 0x3F70101020000000
  %869 = fmul fast float %868, %867
  %870 = lshr i32 %843, 2
  %871 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %870
  %872 = load i32, i32* %871, align 4, !tbaa !58, !noalias !62
  %873 = shl i32 %843, 3
  %874 = and i32 %873, 24
  %875 = lshr i32 %872, %874
  %876 = and i32 %875, 255
  %877 = sitofp i32 %876 to float
  %878 = fmul fast float %849, 0x3F70101020000000
  %879 = fmul fast float %878, %877
  %880 = fsub fast float 1.000000e+00, %859
  %881 = fsub fast float %880, %869
  %882 = fsub fast float %881, %879
  %883 = fmul fast float %611, 2.000000e+01
  %884 = fadd fast float %883, 1.000000e+00
  %885 = fmul fast float %882, 2.000000e+01
  %886 = fsub fast float %884, %885
  %887 = call float @dx.op.unary.f32(i32 7, float %886)  ; Saturate(value)
  br label %888

; <label>:888                                     ; preds = %842, %794
  %889 = phi float [ %887, %842 ], [ 1.000000e+00, %794 ]
  store float %889, float* %700, align 4, !tbaa !70, !noalias !62
  %890 = fadd fast float %889, %795
  %891 = icmp slt i32 %693, 0
  br i1 %891, label %892, label %983, !dx.controlflow.hints !56

; <label>:892                                     ; preds = %888
  %893 = fsub fast float 1.000000e+00, %612
  %894 = fdiv fast float 1.000000e+00, %893
  %895 = shl i32 %601, 6
  %896 = or i32 %895, 32
  %897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %896, i32 undef)  ; BufferLoad(srv,index,wot)
  %898 = extractvalue %dx.types.ResRet.i32 %897, 0
  %899 = extractvalue %dx.types.ResRet.i32 %897, 1
  %900 = extractvalue %dx.types.ResRet.i32 %897, 2
  %901 = extractvalue %dx.types.ResRet.i32 %897, 3
  %902 = fmul fast float %894, %610
  %903 = fmul fast float %894, %611
  %904 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %898, i32* %904, align 4
  %905 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %899, i32* %905, align 4
  %906 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %900, i32* %906, align 4
  %907 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %901, i32* %907, align 4
  %908 = fmul fast float %903, 4.000000e+00
  %909 = call float @dx.op.unary.f32(i32 27, float %908)  ; Round_ni(value)
  %910 = fmul fast float %902, 4.000000e+00
  %911 = call float @dx.op.unary.f32(i32 27, float %910)  ; Round_ni(value)
  %912 = fsub fast float 1.100000e+01, %909
  %913 = fmul fast float %909, 5.000000e-01
  %914 = fmul fast float %913, %912
  %915 = fadd fast float %911, 5.000000e-01
  %916 = fadd fast float %915, %914
  %917 = fptosi float %916 to i32
  %918 = fptosi float %909 to i32
  %919 = sub nsw i32 5, %918
  %920 = fmul fast float %911, 2.500000e-01
  %921 = fmul fast float %909, 2.500000e-01
  %922 = add nsw i32 %917, 1
  %923 = add nsw i32 %917, %919
  %924 = fsub fast float %902, %920
  %925 = fmul fast float %924, 4.000000e+00
  %926 = fsub fast float %903, %921
  %927 = fmul fast float %926, 4.000000e+00
  %928 = fadd fast float %924, %926
  %929 = fmul fast float %928, 4.000000e+00
  %930 = fcmp fast ogt float %929, 1.000000e+00
  br i1 %930, label %931, label %937, !dx.controlflow.hints !57

; <label>:931                                     ; preds = %892
  %932 = add nsw i32 %923, 1
  %933 = fadd fast float %927, -1.000000e+00
  %934 = fsub fast float -0.000000e+00, %933
  %935 = fadd fast float %925, -1.000000e+00
  %936 = fsub fast float -0.000000e+00, %935
  br label %937

; <label>:937                                     ; preds = %931, %892
  %938 = phi i32 [ %932, %931 ], [ %917, %892 ]
  %939 = phi i32 [ %922, %931 ], [ %923, %892 ]
  %940 = phi i32 [ %923, %931 ], [ %922, %892 ]
  %941 = phi float [ %936, %931 ], [ %927, %892 ]
  %942 = phi float [ %934, %931 ], [ %925, %892 ]
  %943 = fsub fast float 1.000000e+00, %941
  %944 = fsub fast float %943, %942
  %945 = lshr i32 %940, 2
  %946 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %945
  %947 = load i32, i32* %946, align 4, !tbaa !58, !noalias !62
  %948 = shl i32 %940, 3
  %949 = and i32 %948, 24
  %950 = lshr i32 %947, %949
  %951 = and i32 %950, 255
  %952 = sitofp i32 %951 to float
  %953 = fmul fast float %942, 0x3F70101020000000
  %954 = fmul fast float %953, %952
  %955 = lshr i32 %939, 2
  %956 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %955
  %957 = load i32, i32* %956, align 4, !tbaa !58, !noalias !62
  %958 = shl i32 %939, 3
  %959 = and i32 %958, 24
  %960 = lshr i32 %957, %959
  %961 = and i32 %960, 255
  %962 = sitofp i32 %961 to float
  %963 = fmul fast float %941, 0x3F70101020000000
  %964 = fmul fast float %963, %962
  %965 = lshr i32 %938, 2
  %966 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %965
  %967 = load i32, i32* %966, align 4, !tbaa !58, !noalias !62
  %968 = shl i32 %938, 3
  %969 = and i32 %968, 24
  %970 = lshr i32 %967, %969
  %971 = and i32 %970, 255
  %972 = sitofp i32 %971 to float
  %973 = fmul fast float %944, 0x3F70101020000000
  %974 = fmul fast float %973, %972
  %975 = fsub fast float 1.000000e+00, %954
  %976 = fsub fast float %975, %964
  %977 = fsub fast float %976, %974
  %978 = fmul fast float %612, 2.000000e+01
  %979 = fadd fast float %978, 1.000000e+00
  %980 = fmul fast float %977, 2.000000e+01
  %981 = fsub fast float %979, %980
  %982 = call float @dx.op.unary.f32(i32 7, float %981)  ; Saturate(value)
  br label %983

; <label>:983                                     ; preds = %937, %888
  %984 = phi float [ %982, %937 ], [ 1.000000e+00, %888 ]
  store float %984, float* %701, align 4, !tbaa !70, !noalias !62
  %985 = fadd fast float %890, %984
  %986 = icmp slt i32 %694, 0
  br i1 %986, label %987, label %1078, !dx.controlflow.hints !56

; <label>:987                                     ; preds = %983
  %988 = fsub fast float 1.000000e+00, %613
  %989 = fdiv fast float 1.000000e+00, %988
  %990 = shl i32 %601, 6
  %991 = or i32 %990, 48
  %992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %991, i32 undef)  ; BufferLoad(srv,index,wot)
  %993 = extractvalue %dx.types.ResRet.i32 %992, 0
  %994 = extractvalue %dx.types.ResRet.i32 %992, 1
  %995 = extractvalue %dx.types.ResRet.i32 %992, 2
  %996 = extractvalue %dx.types.ResRet.i32 %992, 3
  %997 = fmul fast float %989, %610
  %998 = fmul fast float %989, %611
  %999 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %993, i32* %999, align 4
  %1000 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %994, i32* %1000, align 4
  %1001 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %995, i32* %1001, align 4
  %1002 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %996, i32* %1002, align 4
  %1003 = fmul fast float %998, 4.000000e+00
  %1004 = call float @dx.op.unary.f32(i32 27, float %1003)  ; Round_ni(value)
  %1005 = fmul fast float %997, 4.000000e+00
  %1006 = call float @dx.op.unary.f32(i32 27, float %1005)  ; Round_ni(value)
  %1007 = fsub fast float 1.100000e+01, %1004
  %1008 = fmul fast float %1004, 5.000000e-01
  %1009 = fmul fast float %1008, %1007
  %1010 = fadd fast float %1006, 5.000000e-01
  %1011 = fadd fast float %1010, %1009
  %1012 = fptosi float %1011 to i32
  %1013 = fptosi float %1004 to i32
  %1014 = sub nsw i32 5, %1013
  %1015 = fmul fast float %1006, 2.500000e-01
  %1016 = fmul fast float %1004, 2.500000e-01
  %1017 = add nsw i32 %1012, 1
  %1018 = add nsw i32 %1012, %1014
  %1019 = fsub fast float %997, %1015
  %1020 = fmul fast float %1019, 4.000000e+00
  %1021 = fsub fast float %998, %1016
  %1022 = fmul fast float %1021, 4.000000e+00
  %1023 = fadd fast float %1019, %1021
  %1024 = fmul fast float %1023, 4.000000e+00
  %1025 = fcmp fast ogt float %1024, 1.000000e+00
  br i1 %1025, label %1026, label %1032, !dx.controlflow.hints !57

; <label>:1026                                    ; preds = %987
  %1027 = add nsw i32 %1018, 1
  %1028 = fadd fast float %1022, -1.000000e+00
  %1029 = fsub fast float -0.000000e+00, %1028
  %1030 = fadd fast float %1020, -1.000000e+00
  %1031 = fsub fast float -0.000000e+00, %1030
  br label %1032

; <label>:1032                                    ; preds = %1026, %987
  %1033 = phi i32 [ %1027, %1026 ], [ %1012, %987 ]
  %1034 = phi i32 [ %1017, %1026 ], [ %1018, %987 ]
  %1035 = phi i32 [ %1018, %1026 ], [ %1017, %987 ]
  %1036 = phi float [ %1031, %1026 ], [ %1022, %987 ]
  %1037 = phi float [ %1029, %1026 ], [ %1020, %987 ]
  %1038 = fsub fast float 1.000000e+00, %1036
  %1039 = fsub fast float %1038, %1037
  %1040 = lshr i32 %1035, 2
  %1041 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %1040
  %1042 = load i32, i32* %1041, align 4, !tbaa !58, !noalias !62
  %1043 = shl i32 %1035, 3
  %1044 = and i32 %1043, 24
  %1045 = lshr i32 %1042, %1044
  %1046 = and i32 %1045, 255
  %1047 = sitofp i32 %1046 to float
  %1048 = fmul fast float %1037, 0x3F70101020000000
  %1049 = fmul fast float %1048, %1047
  %1050 = lshr i32 %1034, 2
  %1051 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %1050
  %1052 = load i32, i32* %1051, align 4, !tbaa !58, !noalias !62
  %1053 = shl i32 %1034, 3
  %1054 = and i32 %1053, 24
  %1055 = lshr i32 %1052, %1054
  %1056 = and i32 %1055, 255
  %1057 = sitofp i32 %1056 to float
  %1058 = fmul fast float %1036, 0x3F70101020000000
  %1059 = fmul fast float %1058, %1057
  %1060 = lshr i32 %1033, 2
  %1061 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %1060
  %1062 = load i32, i32* %1061, align 4, !tbaa !58, !noalias !62
  %1063 = shl i32 %1033, 3
  %1064 = and i32 %1063, 24
  %1065 = lshr i32 %1062, %1064
  %1066 = and i32 %1065, 255
  %1067 = sitofp i32 %1066 to float
  %1068 = fmul fast float %1039, 0x3F70101020000000
  %1069 = fmul fast float %1068, %1067
  %1070 = fsub fast float 1.000000e+00, %1049
  %1071 = fsub fast float %1070, %1059
  %1072 = fsub fast float %1071, %1069
  %1073 = fmul fast float %613, 2.000000e+01
  %1074 = fadd fast float %1073, 1.000000e+00
  %1075 = fmul fast float %1072, 2.000000e+01
  %1076 = fsub fast float %1074, %1075
  %1077 = call float @dx.op.unary.f32(i32 7, float %1076)  ; Saturate(value)
  br label %1078

; <label>:1078                                    ; preds = %1032, %983
  %1079 = phi float [ %1077, %1032 ], [ 1.000000e+00, %983 ]
  store float %1079, float* %702, align 4, !tbaa !70, !noalias !62
  %1080 = fadd fast float %985, %1079
  %1081 = fcmp fast oeq float %1080, 0.000000e+00
  br i1 %1081, label %1082, label %1083, !dx.controlflow.hints !72

; <label>:1082                                    ; preds = %1078
  store float 2.500000e-01, float* %699, align 4
  store float 2.500000e-01, float* %700, align 4
  store float 2.500000e-01, float* %701, align 4
  store float 2.500000e-01, float* %702, align 4
  br label %1083

; <label>:1083                                    ; preds = %1082, %1078
  %1084 = phi float [ 2.500000e-01, %1082 ], [ %795, %1078 ]
  %1085 = phi i32 [ 0, %1082 ], [ 1, %1078 ]
  br label %1086

; <label>:1086                                    ; preds = %1359, %1083
  %1087 = phi float [ %1084, %1083 ], [ %1361, %1359 ]
  %1088 = phi float [ 0.000000e+00, %1083 ], [ %1328, %1359 ]
  %1089 = phi float [ 0.000000e+00, %1083 ], [ %1329, %1359 ]
  %1090 = phi float [ 0.000000e+00, %1083 ], [ %1330, %1359 ]
  %1091 = phi float [ 0.000000e+00, %1083 ], [ %1331, %1359 ]
  %1092 = phi float [ 0.000000e+00, %1083 ], [ %1332, %1359 ]
  %1093 = phi float [ 0.000000e+00, %1083 ], [ %1333, %1359 ]
  %1094 = phi float [ 0.000000e+00, %1083 ], [ %1334, %1359 ]
  %1095 = phi float [ 0.000000e+00, %1083 ], [ %1335, %1359 ]
  %1096 = phi float [ 0.000000e+00, %1083 ], [ %1336, %1359 ]
  %1097 = phi float [ 0.000000e+00, %1083 ], [ %1337, %1359 ]
  %1098 = phi float [ 0.000000e+00, %1083 ], [ %1338, %1359 ]
  %1099 = phi float [ 0.000000e+00, %1083 ], [ %1339, %1359 ]
  %1100 = phi float [ 0.000000e+00, %1083 ], [ %1340, %1359 ]
  %1101 = phi float [ 0.000000e+00, %1083 ], [ %1341, %1359 ]
  %1102 = phi float [ 0.000000e+00, %1083 ], [ %1342, %1359 ]
  %1103 = phi float [ 0.000000e+00, %1083 ], [ %1343, %1359 ]
  %1104 = phi float [ 0.000000e+00, %1083 ], [ %1344, %1359 ]
  %1105 = phi float [ 0.000000e+00, %1083 ], [ %1345, %1359 ]
  %1106 = phi float [ 0.000000e+00, %1083 ], [ %1346, %1359 ]
  %1107 = phi float [ 0.000000e+00, %1083 ], [ %1347, %1359 ]
  %1108 = phi float [ 0.000000e+00, %1083 ], [ %1348, %1359 ]
  %1109 = phi float [ 0.000000e+00, %1083 ], [ %1349, %1359 ]
  %1110 = phi float [ 0.000000e+00, %1083 ], [ %1350, %1359 ]
  %1111 = phi float [ 0.000000e+00, %1083 ], [ %1351, %1359 ]
  %1112 = phi float [ 0.000000e+00, %1083 ], [ %1352, %1359 ]
  %1113 = phi float [ 0.000000e+00, %1083 ], [ %1353, %1359 ]
  %1114 = phi float [ 0.000000e+00, %1083 ], [ %1354, %1359 ]
  %1115 = phi float [ 0.000000e+00, %1083 ], [ %1355, %1359 ]
  %1116 = phi float [ 0.000000e+00, %1083 ], [ %1356, %1359 ]
  %1117 = phi i32 [ 0, %1083 ], [ %1357, %1359 ]
  %1118 = fcmp fast ogt float %1087, 0.000000e+00
  br i1 %1118, label %1119, label %1327, !dx.controlflow.hints !73

; <label>:1119                                    ; preds = %1086
  %1120 = getelementptr [4 x float], [4 x float]* %29, i32 0, i32 %1117
  %1121 = load float, float* %1120, align 4, !tbaa !70, !noalias !62
  %1122 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %1117
  %1123 = load i32, i32* %1122, align 4, !tbaa !58, !noalias !62
  %1124 = fmul fast float %1121, %1087
  %1125 = shl i32 %1123, 5
  %1126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1125, i32 undef)  ; BufferLoad(srv,index,wot)
  %1127 = extractvalue %dx.types.ResRet.i32 %1126, 0
  %1128 = extractvalue %dx.types.ResRet.i32 %1126, 1
  %1129 = extractvalue %dx.types.ResRet.i32 %1126, 2
  %1130 = extractvalue %dx.types.ResRet.i32 %1126, 3
  %1131 = or i32 %1125, 16
  %1132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1131, i32 undef)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.i32 %1132, 0
  %1134 = extractvalue %dx.types.ResRet.i32 %1132, 1
  %1135 = extractvalue %dx.types.ResRet.i32 %1132, 2
  %1136 = extractvalue %dx.types.ResRet.i32 %1132, 3
  %1137 = shl i32 %1127, 4
  %1138 = and i32 %1137, 32752
  %1139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1138)  ; LegacyF16ToF32(value)
  %1140 = lshr i32 %1127, 7
  %1141 = and i32 %1140, 32752
  %1142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1141)  ; LegacyF16ToF32(value)
  %1143 = lshr i32 %1127, 22
  %1144 = shl nuw nsw i32 %1143, 5
  %1145 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1144)  ; LegacyF16ToF32(value)
  %1146 = and i32 %1128, 255
  %1147 = uitofp i32 %1146 to float
  %1148 = fmul fast float %1147, 0x3F80204080000000
  %1149 = fadd fast float %1148, -1.000000e+00
  %1150 = lshr i32 %1128, 8
  %1151 = and i32 %1150, 255
  %1152 = uitofp i32 %1151 to float
  %1153 = fmul fast float %1152, 0x3F80204080000000
  %1154 = fadd fast float %1153, -1.000000e+00
  %1155 = lshr i32 %1128, 16
  %1156 = and i32 %1155, 255
  %1157 = uitofp i32 %1156 to float
  %1158 = fmul fast float %1157, 0x3F80204080000000
  %1159 = fadd fast float %1158, -1.000000e+00
  %1160 = lshr i32 %1128, 24
  %1161 = uitofp i32 %1160 to float
  %1162 = fmul fast float %1161, 0x3F80204080000000
  %1163 = fadd fast float %1162, -1.000000e+00
  %1164 = and i32 %1129, 255
  %1165 = uitofp i32 %1164 to float
  %1166 = fmul fast float %1165, 0x3F80204080000000
  %1167 = fadd fast float %1166, -1.000000e+00
  %1168 = lshr i32 %1129, 8
  %1169 = and i32 %1168, 255
  %1170 = uitofp i32 %1169 to float
  %1171 = fmul fast float %1170, 0x3F80204080000000
  %1172 = fadd fast float %1171, -1.000000e+00
  %1173 = lshr i32 %1129, 16
  %1174 = and i32 %1173, 255
  %1175 = uitofp i32 %1174 to float
  %1176 = fmul fast float %1175, 0x3F80204080000000
  %1177 = fadd fast float %1176, -1.000000e+00
  %1178 = lshr i32 %1129, 24
  %1179 = uitofp i32 %1178 to float
  %1180 = fmul fast float %1179, 0x3F80204080000000
  %1181 = fadd fast float %1180, -1.000000e+00
  %1182 = and i32 %1130, 255
  %1183 = uitofp i32 %1182 to float
  %1184 = fmul fast float %1183, 0x3F80204080000000
  %1185 = fadd fast float %1184, -1.000000e+00
  %1186 = lshr i32 %1130, 8
  %1187 = and i32 %1186, 255
  %1188 = uitofp i32 %1187 to float
  %1189 = fmul fast float %1188, 0x3F80204080000000
  %1190 = fadd fast float %1189, -1.000000e+00
  %1191 = lshr i32 %1130, 16
  %1192 = and i32 %1191, 255
  %1193 = uitofp i32 %1192 to float
  %1194 = fmul fast float %1193, 0x3F80204080000000
  %1195 = fadd fast float %1194, -1.000000e+00
  %1196 = lshr i32 %1130, 24
  %1197 = uitofp i32 %1196 to float
  %1198 = fmul fast float %1197, 0x3F80204080000000
  %1199 = fadd fast float %1198, -1.000000e+00
  %1200 = and i32 %1133, 255
  %1201 = uitofp i32 %1200 to float
  %1202 = fmul fast float %1201, 0x3F80204080000000
  %1203 = fadd fast float %1202, -1.000000e+00
  %1204 = lshr i32 %1133, 8
  %1205 = and i32 %1204, 255
  %1206 = uitofp i32 %1205 to float
  %1207 = fmul fast float %1206, 0x3F80204080000000
  %1208 = fadd fast float %1207, -1.000000e+00
  %1209 = lshr i32 %1133, 16
  %1210 = and i32 %1209, 255
  %1211 = uitofp i32 %1210 to float
  %1212 = fmul fast float %1211, 0x3F80204080000000
  %1213 = fadd fast float %1212, -1.000000e+00
  %1214 = lshr i32 %1133, 24
  %1215 = uitofp i32 %1214 to float
  %1216 = fmul fast float %1215, 0x3F80204080000000
  %1217 = fadd fast float %1216, -1.000000e+00
  %1218 = and i32 %1134, 255
  %1219 = uitofp i32 %1218 to float
  %1220 = fmul fast float %1219, 0x3F80204080000000
  %1221 = fadd fast float %1220, -1.000000e+00
  %1222 = lshr i32 %1134, 8
  %1223 = and i32 %1222, 255
  %1224 = uitofp i32 %1223 to float
  %1225 = fmul fast float %1224, 0x3F80204080000000
  %1226 = fadd fast float %1225, -1.000000e+00
  %1227 = lshr i32 %1134, 16
  %1228 = and i32 %1227, 255
  %1229 = uitofp i32 %1228 to float
  %1230 = fmul fast float %1229, 0x3F80204080000000
  %1231 = fadd fast float %1230, -1.000000e+00
  %1232 = lshr i32 %1134, 24
  %1233 = uitofp i32 %1232 to float
  %1234 = fmul fast float %1233, 0x3F80204080000000
  %1235 = fadd fast float %1234, -1.000000e+00
  %1236 = and i32 %1135, 255
  %1237 = uitofp i32 %1236 to float
  %1238 = fmul fast float %1237, 0x3F80204080000000
  %1239 = fadd fast float %1238, -1.000000e+00
  %1240 = lshr i32 %1135, 8
  %1241 = and i32 %1240, 255
  %1242 = uitofp i32 %1241 to float
  %1243 = fmul fast float %1242, 0x3F80204080000000
  %1244 = fadd fast float %1243, -1.000000e+00
  %1245 = lshr i32 %1135, 16
  %1246 = and i32 %1245, 255
  %1247 = uitofp i32 %1246 to float
  %1248 = fmul fast float %1247, 0x3F80204080000000
  %1249 = fadd fast float %1248, -1.000000e+00
  %1250 = lshr i32 %1135, 24
  %1251 = uitofp i32 %1250 to float
  %1252 = fmul fast float %1251, 0x3F80204080000000
  %1253 = fadd fast float %1252, -1.000000e+00
  %1254 = lshr i32 %1136, 8
  %1255 = and i32 %1254, 255
  %1256 = uitofp i32 %1255 to float
  %1257 = fmul fast float %1139, %1124
  %1258 = fadd fast float %1257, %1096
  %1259 = fmul fast float %1124, 0x3FFBB67AE0000000
  %1260 = fmul fast float %1259, %1139
  %1261 = fmul fast float %1260, %1149
  %1262 = fadd fast float %1261, %1095
  %1263 = fmul fast float %1260, %1154
  %1264 = fadd fast float %1263, %1094
  %1265 = fmul fast float %1260, %1159
  %1266 = fadd fast float %1265, %1093
  %1267 = fmul fast float %1124, 0x3FFEFBDEC0000000
  %1268 = fmul fast float %1267, %1139
  %1269 = fmul fast float %1268, %1163
  %1270 = fadd fast float %1269, %1092
  %1271 = fmul fast float %1268, %1167
  %1272 = fadd fast float %1271, %1091
  %1273 = fmul fast float %1124, 0x4001E377A0000000
  %1274 = fmul fast float %1273, %1139
  %1275 = fmul fast float %1274, %1172
  %1276 = fadd fast float %1275, %1090
  %1277 = fmul fast float %1268, %1177
  %1278 = fadd fast float %1277, %1089
  %1279 = fmul fast float %1268, %1181
  %1280 = fadd fast float %1279, %1088
  %1281 = fmul fast float %1142, %1124
  %1282 = fadd fast float %1281, %1105
  %1283 = fmul fast float %1259, %1142
  %1284 = fmul fast float %1283, %1185
  %1285 = fadd fast float %1284, %1104
  %1286 = fmul fast float %1283, %1190
  %1287 = fadd fast float %1286, %1103
  %1288 = fmul fast float %1283, %1195
  %1289 = fadd fast float %1288, %1102
  %1290 = fmul fast float %1267, %1142
  %1291 = fmul fast float %1290, %1199
  %1292 = fadd fast float %1291, %1101
  %1293 = fmul fast float %1290, %1203
  %1294 = fadd fast float %1293, %1100
  %1295 = fmul fast float %1273, %1142
  %1296 = fmul fast float %1295, %1208
  %1297 = fadd fast float %1296, %1099
  %1298 = fmul fast float %1290, %1213
  %1299 = fadd fast float %1298, %1098
  %1300 = fmul fast float %1290, %1217
  %1301 = fadd fast float %1300, %1097
  %1302 = fmul fast float %1145, %1124
  %1303 = fadd fast float %1302, %1114
  %1304 = fmul fast float %1259, %1145
  %1305 = fmul fast float %1304, %1221
  %1306 = fadd fast float %1305, %1113
  %1307 = fmul fast float %1304, %1226
  %1308 = fadd fast float %1307, %1112
  %1309 = fmul fast float %1304, %1231
  %1310 = fadd fast float %1309, %1111
  %1311 = fmul fast float %1267, %1145
  %1312 = fmul fast float %1311, %1235
  %1313 = fadd fast float %1312, %1110
  %1314 = fmul fast float %1311, %1239
  %1315 = fadd fast float %1314, %1109
  %1316 = fmul fast float %1273, %1145
  %1317 = fmul fast float %1316, %1244
  %1318 = fadd fast float %1317, %1108
  %1319 = fmul fast float %1311, %1249
  %1320 = fadd fast float %1319, %1107
  %1321 = fmul fast float %1311, %1253
  %1322 = fadd fast float %1321, %1106
  %1323 = fmul fast float %1124, 0x3F70101020000000
  %1324 = fmul fast float %1323, %1256
  %1325 = fadd fast float %1324, %1115
  %1326 = fadd fast float %1124, %1116
  br label %1327

; <label>:1327                                    ; preds = %1119, %1086
  %1328 = phi float [ %1280, %1119 ], [ %1088, %1086 ]
  %1329 = phi float [ %1278, %1119 ], [ %1089, %1086 ]
  %1330 = phi float [ %1276, %1119 ], [ %1090, %1086 ]
  %1331 = phi float [ %1272, %1119 ], [ %1091, %1086 ]
  %1332 = phi float [ %1270, %1119 ], [ %1092, %1086 ]
  %1333 = phi float [ %1266, %1119 ], [ %1093, %1086 ]
  %1334 = phi float [ %1264, %1119 ], [ %1094, %1086 ]
  %1335 = phi float [ %1262, %1119 ], [ %1095, %1086 ]
  %1336 = phi float [ %1258, %1119 ], [ %1096, %1086 ]
  %1337 = phi float [ %1301, %1119 ], [ %1097, %1086 ]
  %1338 = phi float [ %1299, %1119 ], [ %1098, %1086 ]
  %1339 = phi float [ %1297, %1119 ], [ %1099, %1086 ]
  %1340 = phi float [ %1294, %1119 ], [ %1100, %1086 ]
  %1341 = phi float [ %1292, %1119 ], [ %1101, %1086 ]
  %1342 = phi float [ %1289, %1119 ], [ %1102, %1086 ]
  %1343 = phi float [ %1287, %1119 ], [ %1103, %1086 ]
  %1344 = phi float [ %1285, %1119 ], [ %1104, %1086 ]
  %1345 = phi float [ %1282, %1119 ], [ %1105, %1086 ]
  %1346 = phi float [ %1322, %1119 ], [ %1106, %1086 ]
  %1347 = phi float [ %1320, %1119 ], [ %1107, %1086 ]
  %1348 = phi float [ %1318, %1119 ], [ %1108, %1086 ]
  %1349 = phi float [ %1315, %1119 ], [ %1109, %1086 ]
  %1350 = phi float [ %1313, %1119 ], [ %1110, %1086 ]
  %1351 = phi float [ %1310, %1119 ], [ %1111, %1086 ]
  %1352 = phi float [ %1308, %1119 ], [ %1112, %1086 ]
  %1353 = phi float [ %1306, %1119 ], [ %1113, %1086 ]
  %1354 = phi float [ %1303, %1119 ], [ %1114, %1086 ]
  %1355 = phi float [ %1325, %1119 ], [ %1115, %1086 ]
  %1356 = phi float [ %1326, %1119 ], [ %1116, %1086 ]
  %1357 = add nuw nsw i32 %1117, 1
  %1358 = icmp eq i32 %1357, 4
  br i1 %1358, label %1362, label %1359

; <label>:1359                                    ; preds = %1327
  %1360 = getelementptr [4 x float], [4 x float]* %31, i32 0, i32 %1357
  %1361 = load float, float* %1360, align 4, !tbaa !70, !noalias !62
  br label %1086

; <label>:1362                                    ; preds = %1327
  %1363 = fcmp fast ogt float %1356, 0.000000e+00
  %1364 = fdiv fast float 1.000000e+00, %1356
  %1365 = select i1 %1363, float %1364, float 1.000000e+00
  %1366 = fmul fast float %1365, %1336
  %1367 = fmul fast float %1365, %1335
  %1368 = fmul fast float %1365, %1334
  %1369 = fmul fast float %1365, %1333
  %1370 = fmul fast float %1365, %1332
  %1371 = fmul fast float %1365, %1331
  %1372 = fmul fast float %1365, %1330
  %1373 = fmul fast float %1365, %1329
  %1374 = fmul fast float %1365, %1328
  %1375 = fmul fast float %1365, %1345
  %1376 = fmul fast float %1365, %1344
  %1377 = fmul fast float %1365, %1343
  %1378 = fmul fast float %1365, %1342
  %1379 = fmul fast float %1365, %1341
  %1380 = fmul fast float %1365, %1340
  %1381 = fmul fast float %1365, %1339
  %1382 = fmul fast float %1365, %1338
  %1383 = fmul fast float %1365, %1337
  %1384 = fmul fast float %1365, %1354
  %1385 = fmul fast float %1365, %1353
  %1386 = fmul fast float %1365, %1352
  %1387 = fmul fast float %1365, %1351
  %1388 = fmul fast float %1365, %1350
  %1389 = fmul fast float %1365, %1349
  %1390 = fmul fast float %1365, %1348
  %1391 = fmul fast float %1365, %1347
  %1392 = fmul fast float %1365, %1346
  %1393 = fmul fast float %1365, %1355
  br label %1394

; <label>:1394                                    ; preds = %1362, %615
  %1395 = phi float [ %651, %615 ], [ %1374, %1362 ]
  %1396 = phi float [ %649, %615 ], [ %1373, %1362 ]
  %1397 = phi float [ %647, %615 ], [ %1372, %1362 ]
  %1398 = phi float [ %645, %615 ], [ %1371, %1362 ]
  %1399 = phi float [ %643, %615 ], [ %1370, %1362 ]
  %1400 = phi float [ %641, %615 ], [ %1369, %1362 ]
  %1401 = phi float [ %639, %615 ], [ %1368, %1362 ]
  %1402 = phi float [ %637, %615 ], [ %1367, %1362 ]
  %1403 = phi float [ %635, %615 ], [ %1366, %1362 ]
  %1404 = phi float [ %669, %615 ], [ %1383, %1362 ]
  %1405 = phi float [ %667, %615 ], [ %1382, %1362 ]
  %1406 = phi float [ %665, %615 ], [ %1381, %1362 ]
  %1407 = phi float [ %663, %615 ], [ %1380, %1362 ]
  %1408 = phi float [ %661, %615 ], [ %1379, %1362 ]
  %1409 = phi float [ %659, %615 ], [ %1378, %1362 ]
  %1410 = phi float [ %657, %615 ], [ %1377, %1362 ]
  %1411 = phi float [ %655, %615 ], [ %1376, %1362 ]
  %1412 = phi float [ %653, %615 ], [ %1375, %1362 ]
  %1413 = phi float [ %687, %615 ], [ %1392, %1362 ]
  %1414 = phi float [ %685, %615 ], [ %1391, %1362 ]
  %1415 = phi float [ %683, %615 ], [ %1390, %1362 ]
  %1416 = phi float [ %681, %615 ], [ %1389, %1362 ]
  %1417 = phi float [ %679, %615 ], [ %1388, %1362 ]
  %1418 = phi float [ %677, %615 ], [ %1387, %1362 ]
  %1419 = phi float [ %675, %615 ], [ %1386, %1362 ]
  %1420 = phi float [ %673, %615 ], [ %1385, %1362 ]
  %1421 = phi float [ %671, %615 ], [ %1384, %1362 ]
  %1422 = phi float [ 0.000000e+00, %615 ], [ %1393, %1362 ]
  %1423 = phi i32 [ 1, %615 ], [ %1085, %1362 ]
  %1424 = icmp ne i32 %1423, 0
  %1425 = select i1 %1424, float %1422, float 3.125000e-02
  %1426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1427 = extractvalue %dx.types.CBufRet.f32 %1426, 0
  %1428 = extractvalue %dx.types.CBufRet.f32 %1426, 1
  %1429 = extractvalue %dx.types.CBufRet.f32 %1426, 2
  %1430 = fsub fast float %282, %1427
  %1431 = fsub fast float %287, %1428
  %1432 = fsub fast float %292, %1429
  %1433 = call float @dx.op.dot3.f32(i32 55, float %1430, float %1431, float %1432, float %1430, float %1431, float %1432)  ; Dot3(ax,ay,az,bx,by,bz)
  %1434 = call float @dx.op.unary.f32(i32 25, float %1433)  ; Rsqrt(value)
  %1435 = fmul fast float %1430, %1434
  %1436 = fmul fast float %1431, %1434
  %1437 = fmul fast float %1432, %1434
  %1438 = fsub fast float -0.000000e+00, %1435
  %1439 = fsub fast float -0.000000e+00, %1436
  %1440 = fmul fast float %1403, 0x3FD20DD760000000
  %1441 = fmul fast float %1412, 0x3FD20DD760000000
  %1442 = fmul fast float %1421, 0x3FD20DD760000000
  br i1 %193, label %1523, label %1443, !dx.controlflow.hints !74

; <label>:1443                                    ; preds = %1394
  %1444 = fmul fast float %1401, 0xBFD4D8D7C0000000
  %1445 = fmul fast float %1444, %1437
  %1446 = fmul fast float %1437, %1437
  %1447 = fmul fast float %1446, 0x3FEE471020000000
  %1448 = fadd fast float %1447, 0xBFD42F6020000000
  %1449 = fmul fast float %1448, %1397
  %1450 = fmul fast float %1400, 0x3FD4D8D7C0000000
  %1451 = fmul fast float %1402, 0x3FD4D8D7C0000000
  %1452 = fmul fast float %1451, %1436
  %1453 = fmul fast float %1437, 0x3FF17B1420000000
  %1454 = fmul fast float %1396, %1438
  %1455 = fmul fast float %1398, %1439
  %1456 = fmul fast float %1435, %1435
  %1457 = fmul fast float %1436, %1436
  %1458 = fsub fast float %1456, %1457
  %1459 = fmul fast float %1395, 0x3FC17B1420000000
  %1460 = fmul fast float %1459, %1458
  %1461 = fmul fast float %1399, 0x3FD17B1420000000
  %1462 = fmul fast float %1461, %1434
  %1463 = fmul fast float %1462, %1431
  %1464 = fadd fast float %1454, %1455
  %1465 = fmul fast float %1453, %1464
  %1466 = fadd fast float %1465, %1449
  %1467 = fmul fast float %1466, 2.500000e-01
  %1468 = fadd fast float %1463, %1450
  %1469 = fmul fast float %1468, %1435
  %1470 = fadd fast float %1445, %1440
  %1471 = fadd fast float %1470, %1452
  %1472 = fadd fast float %1471, %1460
  %1473 = fadd fast float %1472, %1467
  %1474 = fadd fast float %1473, %1469
  %1475 = fmul fast float %1410, 0xBFD4D8D7C0000000
  %1476 = fmul fast float %1475, %1437
  %1477 = fmul fast float %1448, %1406
  %1478 = fmul fast float %1409, 0x3FD4D8D7C0000000
  %1479 = fmul fast float %1411, 0x3FD4D8D7C0000000
  %1480 = fmul fast float %1479, %1436
  %1481 = fmul fast float %1405, %1438
  %1482 = fmul fast float %1407, %1439
  %1483 = fmul fast float %1404, 0x3FC17B1420000000
  %1484 = fmul fast float %1483, %1458
  %1485 = fmul fast float %1408, 0x3FD17B1420000000
  %1486 = fmul fast float %1485, %1434
  %1487 = fmul fast float %1486, %1431
  %1488 = fadd fast float %1481, %1482
  %1489 = fmul fast float %1453, %1488
  %1490 = fadd fast float %1489, %1477
  %1491 = fmul fast float %1490, 2.500000e-01
  %1492 = fadd fast float %1487, %1478
  %1493 = fmul fast float %1492, %1435
  %1494 = fadd fast float %1476, %1441
  %1495 = fadd fast float %1494, %1480
  %1496 = fadd fast float %1495, %1484
  %1497 = fadd fast float %1496, %1491
  %1498 = fadd fast float %1497, %1493
  %1499 = fmul fast float %1419, 0xBFD4D8D7C0000000
  %1500 = fmul fast float %1499, %1437
  %1501 = fmul fast float %1448, %1415
  %1502 = fmul fast float %1418, 0x3FD4D8D7C0000000
  %1503 = fmul fast float %1420, 0x3FD4D8D7C0000000
  %1504 = fmul fast float %1503, %1436
  %1505 = fmul fast float %1414, %1438
  %1506 = fmul fast float %1416, %1439
  %1507 = fmul fast float %1413, 0x3FC17B1420000000
  %1508 = fmul fast float %1507, %1458
  %1509 = fmul fast float %1417, 0x3FD17B1420000000
  %1510 = fmul fast float %1509, %1434
  %1511 = fmul fast float %1510, %1431
  %1512 = fadd fast float %1505, %1506
  %1513 = fmul fast float %1453, %1512
  %1514 = fadd fast float %1513, %1501
  %1515 = fmul fast float %1514, 2.500000e-01
  %1516 = fadd fast float %1511, %1502
  %1517 = fmul fast float %1516, %1435
  %1518 = fadd fast float %1500, %1442
  %1519 = fadd fast float %1518, %1504
  %1520 = fadd fast float %1519, %1508
  %1521 = fadd fast float %1520, %1515
  %1522 = fadd fast float %1521, %1517
  br label %1617

; <label>:1523                                    ; preds = %1394
  %1524 = fmul fast float %235, %235
  %1525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1526 = extractvalue %dx.types.CBufRet.f32 %1525, 0
  %1527 = extractvalue %dx.types.CBufRet.f32 %1525, 1
  %1528 = extractvalue %dx.types.CBufRet.f32 %1525, 2
  %1529 = fmul fast float %1401, %235
  %1530 = fmul fast float %1529, %1528
  %1531 = fmul fast float %1528, %1528
  %1532 = fmul fast float %1531, 0x3FEE471020000000
  %1533 = fadd fast float %1532, 0xBFD42F6020000000
  %1534 = fmul fast float %1533, %1397
  %1535 = fmul fast float %1526, %1400
  %1536 = fmul fast float %1527, %1402
  %1537 = fmul fast float %1528, 0x3FF17B1420000000
  %1538 = fmul fast float %1396, %1524
  %1539 = fmul fast float %1538, %1526
  %1540 = fmul fast float %1539, %1537
  %1541 = fmul fast float %1398, %1524
  %1542 = fmul fast float %1541, %1527
  %1543 = fmul fast float %1542, %1537
  %1544 = fmul fast float %1526, %1526
  %1545 = fmul fast float %1527, %1527
  %1546 = fsub fast float %1544, %1545
  %1547 = fmul fast float %1395, 0x3FE17B1420000000
  %1548 = fmul fast float %1547, %1546
  %1549 = fmul fast float %1399, 0x3FF17B1420000000
  %1550 = fmul fast float %1549, %1527
  %1551 = fmul fast float %1550, %1526
  %1552 = fadd fast float %1548, %1551
  %1553 = fadd fast float %1552, %1534
  %1554 = fmul fast float %1553, %1524
  %1555 = fadd fast float %1536, %1535
  %1556 = fmul fast float %1555, %235
  %1557 = fsub fast float %1556, %1530
  %1558 = fmul fast float %1557, 0x3FDF454380000000
  %1559 = fsub fast float %1440, %1540
  %1560 = fsub fast float %1559, %1543
  %1561 = fadd fast float %1560, %1554
  %1562 = fadd fast float %1561, %1558
  %1563 = fmul fast float %1410, %235
  %1564 = fmul fast float %1563, %1528
  %1565 = fmul fast float %1533, %1406
  %1566 = fmul fast float %1526, %1409
  %1567 = fmul fast float %1527, %1411
  %1568 = fmul fast float %1405, %1524
  %1569 = fmul fast float %1568, %1526
  %1570 = fmul fast float %1569, %1537
  %1571 = fmul fast float %1407, %1524
  %1572 = fmul fast float %1571, %1527
  %1573 = fmul fast float %1572, %1537
  %1574 = fmul fast float %1404, 0x3FE17B1420000000
  %1575 = fmul fast float %1574, %1546
  %1576 = fmul fast float %1408, 0x3FF17B1420000000
  %1577 = fmul fast float %1576, %1527
  %1578 = fmul fast float %1577, %1526
  %1579 = fadd fast float %1575, %1578
  %1580 = fadd fast float %1579, %1565
  %1581 = fmul fast float %1580, %1524
  %1582 = fadd fast float %1567, %1566
  %1583 = fmul fast float %1582, %235
  %1584 = fsub fast float %1583, %1564
  %1585 = fmul fast float %1584, 0x3FDF454380000000
  %1586 = fsub fast float %1441, %1570
  %1587 = fsub fast float %1586, %1573
  %1588 = fadd fast float %1587, %1581
  %1589 = fadd fast float %1588, %1585
  %1590 = fmul fast float %1419, %235
  %1591 = fmul fast float %1590, %1528
  %1592 = fmul fast float %1533, %1415
  %1593 = fmul fast float %1526, %1418
  %1594 = fmul fast float %1527, %1420
  %1595 = fmul fast float %1414, %1524
  %1596 = fmul fast float %1595, %1526
  %1597 = fmul fast float %1596, %1537
  %1598 = fmul fast float %1416, %1524
  %1599 = fmul fast float %1598, %1527
  %1600 = fmul fast float %1599, %1537
  %1601 = fmul fast float %1413, 0x3FE17B1420000000
  %1602 = fmul fast float %1601, %1546
  %1603 = fmul fast float %1417, 0x3FF17B1420000000
  %1604 = fmul fast float %1603, %1527
  %1605 = fmul fast float %1604, %1526
  %1606 = fadd fast float %1602, %1605
  %1607 = fadd fast float %1606, %1592
  %1608 = fmul fast float %1607, %1524
  %1609 = fadd fast float %1594, %1593
  %1610 = fmul fast float %1609, %235
  %1611 = fsub fast float %1610, %1591
  %1612 = fmul fast float %1611, 0x3FDF454380000000
  %1613 = fsub fast float %1442, %1597
  %1614 = fsub fast float %1613, %1600
  %1615 = fadd fast float %1614, %1608
  %1616 = fadd fast float %1615, %1612
  br label %1617

; <label>:1617                                    ; preds = %1523, %1443
  %1618 = phi float [ %1474, %1443 ], [ %1562, %1523 ]
  %1619 = phi float [ %1498, %1443 ], [ %1589, %1523 ]
  %1620 = phi float [ %1522, %1443 ], [ %1616, %1523 ]
  %1621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %139, i32 0)  ; BufferLoad(srv,index,wot)
  %1622 = extractvalue %dx.types.ResRet.i32 %1621, 0
  %1623 = icmp eq i32 %1622, 262144
  br i1 %1623, label %1643, label %1624, !dx.controlflow.hints !75

; <label>:1624                                    ; preds = %1617
  %1625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %139, i32 0)  ; BufferLoad(srv,index,wot)
  %1626 = extractvalue %dx.types.ResRet.i32 %1625, 0
  %1627 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1628 = extractvalue %dx.types.CBufRet.i32 %1627, 0
  %1629 = and i32 %1628, 31
  %1630 = shl i32 1, %1629
  %1631 = add i32 %1630, -1
  %1632 = and i32 %1631, %1626
  %1633 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1632)  ; Countbits(value)
  %1634 = extractvalue %dx.types.CBufRet.i32 %1627, 2
  %1635 = and i32 %1634, 31
  %1636 = shl i32 1, %1635
  %1637 = shl i32 %1636, %1635
  %1638 = shl i32 %27, %1635
  %1639 = mul i32 %1637, %1633
  %1640 = add i32 %1622, %26
  %1641 = add i32 %1640, %1638
  %1642 = add i32 %1641, %1639
  br label %1643

; <label>:1643                                    ; preds = %1624, %1617
  %1644 = phi i32 [ %1642, %1624 ], [ -1, %1617 ]
  %1645 = icmp eq i32 %1644, -1
  br i1 %1645, label %1647, label %1646, !dx.controlflow.hints !76

; <label>:1646                                    ; preds = %1643
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %1644, i32 undef, float %1618, float %1619, float %1620, float %1618, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %1644, i32 undef, float %1425, float %1425, float %1425, float %1425, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1647

; <label>:1647                                    ; preds = %1646, %1643, %131, %43, %35
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
!37 = !{void ()* @cs_del_sh_sample_lightgrid_2_lowres, !"cs_del_sh_sample_lightgrid_2_lowres", null, !4, !38}
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

