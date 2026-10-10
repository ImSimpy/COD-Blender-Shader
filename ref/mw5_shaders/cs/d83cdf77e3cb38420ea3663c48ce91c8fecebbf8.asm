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
; shader hash: 1a5e0e8acc947aec9f2ff7b8066eb31c
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
  br i1 %43, label %46, label %1261, !dx.controlflow.hints !41

; <label>:44                                      ; preds = %0
  %45 = icmp ult i32 %25, %33
  br i1 %45, label %46, label %1261, !dx.controlflow.hints !42

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
  br i1 %137, label %138, label %1261, !dx.controlflow.hints !45

; <label>:138                                     ; preds = %133
  %139 = shl i32 %26, 1
  %140 = shl i32 %27, 1
  %141 = add i32 %136, %52
  %142 = shl i32 %141, 5
  %143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %142, i32 undef)  ; BufferLoad(srv,index,wot)
  %144 = extractvalue %dx.types.ResRet.i32 %143, 0
  %145 = extractvalue %dx.types.ResRet.i32 %143, 1
  %146 = extractvalue %dx.types.ResRet.i32 %143, 2
  %147 = extractvalue %dx.types.ResRet.i32 %143, 3
  %148 = bitcast i32 %144 to float
  %149 = bitcast i32 %145 to float
  %150 = bitcast i32 %146 to float
  %151 = and i32 %147, 536870912
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %192, label %153, !dx.controlflow.hints !46

; <label>:153                                     ; preds = %138
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %156 = extractvalue %dx.types.CBufRet.f32 %154, 3
  %157 = fmul fast float %155, %148
  %158 = fmul fast float %156, %149
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %161 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %162 = fadd fast float %157, %160
  %163 = fadd fast float %158, %161
  %164 = call float @dx.op.unary.f32(i32 7, float %162)  ; Saturate(value)
  %165 = call float @dx.op.unary.f32(i32 7, float %163)  ; Saturate(value)
  %166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %21, float %164, float %165, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %167 = extractvalue %dx.types.ResRet.f32 %166, 0
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 0
  %170 = fmul fast float %169, %167
  %171 = fsub fast float %162, %164
  %172 = fsub fast float %163, %165
  %173 = extractvalue %dx.types.CBufRet.f32 %154, 0
  %174 = extractvalue %dx.types.CBufRet.f32 %154, 1
  %175 = fmul fast float %173, %171
  %176 = fmul fast float %174, %172
  %177 = fmul fast float %175, %175
  %178 = fmul fast float %176, %176
  %179 = fadd fast float %177, %178
  %180 = call float @dx.op.unary.f32(i32 24, float %179)  ; Sqrt(value)
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 3
  %183 = fmul fast float %182, %180
  %184 = call float @dx.op.unary.f32(i32 7, float %183)  ; Saturate(value)
  %185 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %186 = fsub fast float %185, %170
  %187 = fmul fast float %186, %184
  %188 = extractvalue %dx.types.CBufRet.f32 %168, 1
  %189 = fadd fast float %170, %150
  %190 = fadd fast float %189, %188
  %191 = fadd fast float %190, %187
  br label %192

; <label>:192                                     ; preds = %153, %138
  %193 = phi float [ %191, %153 ], [ %150, %138 ]
  %194 = or i32 %142, 16
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
  %234 = call float @dx.op.unary.f32(i32 13, float %233)  ; Sin(value)
  %235 = call float @dx.op.unary.f32(i32 12, float %233)  ; Cos(value)
  %236 = fmul fast float %235, %215
  %237 = fmul fast float %216, %235
  %238 = fmul fast float %217, %235
  %239 = fmul fast float %229, %234
  %240 = fmul fast float %230, %234
  %241 = fmul fast float %231, %234
  %242 = fadd fast float %236, %239
  %243 = fadd fast float %237, %240
  %244 = fadd fast float %238, %241
  %245 = fmul fast float %242, %201
  %246 = fmul fast float %243, %201
  %247 = fmul fast float %244, %201
  %248 = fmul fast float %215, %234
  %249 = fmul fast float %216, %234
  %250 = fmul fast float %217, %234
  %251 = fmul fast float %235, %229
  %252 = fmul fast float %230, %235
  %253 = fmul fast float %231, %235
  %254 = fsub fast float %248, %251
  %255 = fsub fast float %249, %252
  %256 = fsub fast float %250, %253
  %257 = fmul fast float %254, %203
  %258 = fmul fast float %255, %203
  %259 = fmul fast float %256, %203
  %260 = uitofp i32 %139 to float
  %261 = uitofp i32 %140 to float
  %262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.f32 %262, 1
  %264 = fdiv fast float %260, %263
  %265 = fdiv fast float %261, %263
  %266 = extractvalue %dx.types.CBufRet.f32 %262, 2
  %267 = fmul fast float %266, 2.000000e+00
  %268 = fadd fast float %267, %264
  %269 = fadd fast float %267, %265
  %270 = fmul fast float %268, %245
  %271 = fmul fast float %268, %246
  %272 = fmul fast float %268, %247
  %273 = fmul fast float %269, %257
  %274 = fmul fast float %269, %258
  %275 = fmul fast float %269, %259
  %276 = fadd fast float %273, %270
  %277 = fmul fast float %276, 2.000000e+00
  %278 = fsub fast float %148, %245
  %279 = fsub fast float %278, %257
  %280 = fadd fast float %279, %277
  %281 = fadd fast float %274, %271
  %282 = fmul fast float %281, 2.000000e+00
  %283 = fsub fast float %149, %246
  %284 = fsub fast float %283, %258
  %285 = fadd fast float %284, %282
  %286 = fadd fast float %275, %272
  %287 = fmul fast float %286, 2.000000e+00
  %288 = fsub fast float %193, %247
  %289 = fsub fast float %288, %259
  %290 = fadd fast float %289, %287
  %291 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %292 = extractvalue %dx.types.CBufRet.i32 %291, 2
  %293 = extractvalue %dx.types.CBufRet.i32 %291, 1
  %294 = extractvalue %dx.types.CBufRet.i32 %291, 0
  %295 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 0
  store float 0.000000e+00, float* %295, align 4
  %296 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 1
  store float 0.000000e+00, float* %296, align 4
  %297 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 2
  store float 0.000000e+00, float* %297, align 4
  %298 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 3
  store float 0.000000e+00, float* %298, align 4
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = extractvalue %dx.types.ResRet.i32 %301, 1
  %304 = extractvalue %dx.types.ResRet.i32 %301, 2
  %305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.f32 %305, 0
  %307 = extractvalue %dx.types.ResRet.f32 %305, 1
  %308 = extractvalue %dx.types.ResRet.f32 %305, 2
  %309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.f32 %309, 0
  %311 = extractvalue %dx.types.ResRet.f32 %309, 1
  %312 = extractvalue %dx.types.ResRet.f32 %309, 2
  %313 = fsub fast float %280, %306
  %314 = fsub fast float %285, %307
  %315 = fsub fast float %290, %308
  %316 = fptoui float %313 to i32
  %317 = fptoui float %314 to i32
  %318 = fptoui float %315 to i32
  %319 = fcmp fast olt float %280, %306
  %320 = fcmp fast olt float %285, %307
  %321 = fcmp fast olt float %290, %308
  %322 = or i1 %319, %320
  %323 = or i1 %321, %322
  %324 = fcmp fast oge float %280, %310
  %325 = fcmp fast oge float %285, %311
  %326 = fcmp fast oge float %290, %312
  %327 = or i1 %324, %325
  %328 = or i1 %326, %327
  %329 = or i1 %323, %328
  %330 = and i32 %302, 31
  %331 = lshr i32 %316, %330
  %332 = lshr i32 %317, %330
  %333 = lshr i32 %318, %330
  %334 = mul i32 %332, %300
  %335 = add i32 %334, %331
  %336 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.i32 %336, 0
  %338 = icmp ult i32 %335, %337
  br i1 %338, label %339, label %355, !dx.controlflow.hints !47

; <label>:339                                     ; preds = %192
  %340 = mul i32 %335, 12
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = add i32 %340, 4
  %344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.i32 %344, 0
  %346 = add i32 %340, 8
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = icmp ult i32 %333, %345
  %350 = icmp ugt i32 %333, %348
  %351 = or i1 %349, %350
  %352 = add i32 %342, %333
  %353 = sub i32 %352, %345
  %354 = select i1 %351, i32 -2147483648, i32 %353
  br label %355

; <label>:355                                     ; preds = %339, %192
  %356 = phi i32 [ %354, %339 ], [ -2147483648, %192 ]
  %357 = select i1 %329, i32 -2147483648, i32 %356
  %358 = icmp sgt i32 %357, -1
  %359 = and i32 %303, 31
  %360 = lshr i32 %316, %359
  %361 = lshr i32 %317, %359
  %362 = lshr i32 %318, %359
  %363 = and i32 %360, 3
  %364 = and i32 %362, 3
  %365 = shl nuw nsw i32 %364, 4
  %366 = shl i32 %361, 2
  %367 = and i32 %366, 12
  %368 = and i32 %365, 16
  %369 = or i32 %367, %363
  %370 = or i32 %369, %368
  %371 = shl i32 1, %370
  %372 = extractvalue %dx.types.CBufRet.i32 %336, 1
  %373 = icmp ult i32 %357, %372
  br i1 %373, label %374, label %392, !dx.controlflow.hints !48

; <label>:374                                     ; preds = %355
  %375 = lshr i32 %364, 1
  %376 = shl i32 %357, 4
  %377 = shl nuw nsw i32 %375, 2
  %378 = or i32 %376, %377
  %379 = or i32 %378, 8
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = and i32 %381, %371
  %383 = icmp eq i32 %382, 0
  %384 = add i32 %371, -1
  %385 = and i32 %381, %384
  %386 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %385)  ; Countbits(value)
  %387 = or i32 %376, %377
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = add i32 %389, %386
  %391 = select i1 %383, i32 -2147483648, i32 %390
  br label %392

; <label>:392                                     ; preds = %374, %355
  %393 = phi i32 [ %391, %374 ], [ -2147483648, %355 ]
  %394 = select i1 %358, i32 %393, i32 %357
  %395 = icmp sgt i32 %394, -1
  %396 = and i32 %304, 31
  %397 = lshr i32 %316, %396
  %398 = lshr i32 %317, %396
  %399 = lshr i32 %318, %396
  %400 = and i32 %397, 3
  %401 = and i32 %399, 3
  %402 = shl nuw nsw i32 %401, 4
  %403 = shl i32 %398, 2
  %404 = and i32 %403, 12
  %405 = and i32 %402, 16
  %406 = or i32 %404, %400
  %407 = or i32 %406, %405
  %408 = shl i32 1, %407
  %409 = icmp ult i32 %394, %372
  br i1 %409, label %410, label %428, !dx.controlflow.hints !48

; <label>:410                                     ; preds = %392
  %411 = lshr i32 %401, 1
  %412 = shl i32 %394, 4
  %413 = shl nuw nsw i32 %411, 2
  %414 = or i32 %412, %413
  %415 = or i32 %414, 8
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = and i32 %417, %408
  %419 = icmp eq i32 %418, 0
  %420 = add i32 %408, -1
  %421 = and i32 %417, %420
  %422 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %421)  ; Countbits(value)
  %423 = or i32 %412, %413
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = add i32 %425, %422
  %427 = select i1 %419, i32 -2147483648, i32 %426
  br label %428

; <label>:428                                     ; preds = %410, %392
  %429 = phi i32 [ %427, %410 ], [ -2147483648, %392 ]
  %430 = select i1 %395, i32 %429, i32 %394
  br i1 %329, label %445, label %431, !dx.controlflow.hints !49

; <label>:431                                     ; preds = %428
  %432 = icmp eq i32 %430, -2147483648
  %433 = icmp eq i32 %394, -2147483648
  %434 = select i1 %433, i32 %357, i32 %394
  %435 = select i1 %432, i32 %434, i32 %430
  %436 = icmp sgt i32 %435, -1
  %437 = icmp ne i32 %292, -1
  %438 = and i1 %437, %436
  %439 = select i1 %438, i32 %292, i32 0
  %440 = add i32 %435, %293
  %441 = add i32 %440, %439
  %442 = shl i32 %441, 2
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  br label %445

; <label>:445                                     ; preds = %431, %428
  %446 = phi i32 [ %444, %431 ], [ -1, %428 ]
  %447 = icmp eq i32 %446, -1
  %448 = select i1 %447, i32 %294, i32 %446
  %449 = icmp eq i32 %448, -1
  br i1 %449, label %598, label %450

; <label>:450                                     ; preds = %445
  br label %451

; <label>:451                                     ; preds = %589, %450
  %452 = phi i32 [ %590, %589 ], [ 0, %450 ]
  %453 = phi i32 [ %454, %589 ], [ -1, %450 ]
  %454 = phi i32 [ %585, %589 ], [ %448, %450 ]
  %455 = phi float [ %561, %589 ], [ 0.000000e+00, %450 ]
  %456 = phi float [ %562, %589 ], [ 0.000000e+00, %450 ]
  %457 = phi float [ %563, %589 ], [ 0.000000e+00, %450 ]
  %458 = phi float [ %566, %589 ], [ 0.000000e+00, %450 ]
  %459 = icmp ugt i32 %452, 25
  br i1 %459, label %592, label %460, !dx.controlflow.hints !50

; <label>:460                                     ; preds = %451
  %461 = shl i32 %454, 4
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = extractvalue %dx.types.ResRet.i32 %462, 1
  %465 = extractvalue %dx.types.ResRet.i32 %462, 2
  %466 = extractvalue %dx.types.ResRet.i32 %462, 3
  %467 = and i32 %463, 2147483647
  %468 = mul nsw i32 %467, 12
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = extractvalue %dx.types.ResRet.i32 %469, 1
  %472 = extractvalue %dx.types.ResRet.i32 %469, 2
  %473 = and i32 %464, 2147483647
  %474 = mul nsw i32 %473, 12
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = extractvalue %dx.types.ResRet.i32 %475, 1
  %478 = extractvalue %dx.types.ResRet.i32 %475, 2
  %479 = and i32 %465, 2147483647
  %480 = mul nsw i32 %479, 12
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = extractvalue %dx.types.ResRet.i32 %481, 1
  %484 = extractvalue %dx.types.ResRet.i32 %481, 2
  %485 = and i32 %466, 2147483647
  %486 = mul nsw i32 %485, 12
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = extractvalue %dx.types.ResRet.i32 %487, 1
  %490 = extractvalue %dx.types.ResRet.i32 %487, 2
  %491 = bitcast i32 %470 to float
  %492 = bitcast i32 %471 to float
  %493 = bitcast i32 %472 to float
  %494 = bitcast i32 %488 to float
  %495 = bitcast i32 %489 to float
  %496 = bitcast i32 %490 to float
  %497 = fsub fast float %491, %494
  %498 = fsub fast float %492, %495
  %499 = fsub fast float %493, %496
  %500 = bitcast i32 %476 to float
  %501 = bitcast i32 %477 to float
  %502 = bitcast i32 %478 to float
  %503 = fsub fast float %500, %494
  %504 = fsub fast float %501, %495
  %505 = fsub fast float %502, %496
  %506 = bitcast i32 %482 to float
  %507 = bitcast i32 %483 to float
  %508 = bitcast i32 %484 to float
  %509 = fsub fast float %506, %494
  %510 = fsub fast float %507, %495
  %511 = fsub fast float %508, %496
  %512 = fsub fast float %280, %494
  %513 = fsub fast float %285, %495
  %514 = fsub fast float %290, %496
  %515 = fmul fast float %504, %511
  %516 = fmul fast float %510, %505
  %517 = fsub fast float %515, %516
  %518 = fmul fast float %517, %497
  %519 = fmul fast float %503, %511
  %520 = fmul fast float %505, %509
  %521 = fsub fast float %519, %520
  %522 = fmul fast float %521, %498
  %523 = fsub fast float %518, %522
  %524 = fmul fast float %503, %510
  %525 = fmul fast float %504, %509
  %526 = fsub fast float %524, %525
  %527 = fmul fast float %526, %499
  %528 = fadd fast float %523, %527
  %529 = fdiv fast float 1.000000e+00, %528
  %530 = fmul fast float %517, %529
  %531 = fmul fast float %529, %521
  %532 = fsub fast float -0.000000e+00, %531
  %533 = fmul fast float %526, %529
  %534 = fmul fast float %498, %511
  %535 = fmul fast float %499, %510
  %536 = fsub fast float %534, %535
  %537 = fmul fast float %529, %536
  %538 = fsub fast float -0.000000e+00, %537
  %539 = fmul fast float %497, %511
  %540 = fmul fast float %509, %499
  %541 = fsub fast float %539, %540
  %542 = fmul fast float %541, %529
  %543 = fmul fast float %497, %510
  %544 = fmul fast float %498, %509
  %545 = fsub fast float %543, %544
  %546 = fmul fast float %529, %545
  %547 = fsub fast float -0.000000e+00, %546
  %548 = fmul fast float %498, %505
  %549 = fmul fast float %499, %504
  %550 = fsub fast float %548, %549
  %551 = fmul fast float %550, %529
  %552 = fmul fast float %497, %505
  %553 = fmul fast float %499, %503
  %554 = fsub fast float %552, %553
  %555 = fmul fast float %529, %554
  %556 = fsub fast float -0.000000e+00, %555
  %557 = fmul fast float %497, %504
  %558 = fmul fast float %498, %503
  %559 = fsub fast float %557, %558
  %560 = fmul fast float %559, %529
  %561 = call float @dx.op.dot3.f32(i32 55, float %530, float %532, float %533, float %512, float %513, float %514)  ; Dot3(ax,ay,az,bx,by,bz)
  %562 = call float @dx.op.dot3.f32(i32 55, float %538, float %542, float %547, float %512, float %513, float %514)  ; Dot3(ax,ay,az,bx,by,bz)
  %563 = call float @dx.op.dot3.f32(i32 55, float %551, float %556, float %560, float %512, float %513, float %514)  ; Dot3(ax,ay,az,bx,by,bz)
  %564 = fsub fast float 1.000000e+00, %561
  %565 = fsub fast float %564, %562
  %566 = fsub fast float %565, %563
  %567 = call float @dx.op.binary.f32(i32 36, float %561, float %562)  ; FMin(a,b)
  %568 = call float @dx.op.binary.f32(i32 36, float %567, float %563)  ; FMin(a,b)
  %569 = call float @dx.op.binary.f32(i32 36, float %568, float %566)  ; FMin(a,b)
  %570 = call float @dx.op.binary.f32(i32 35, float %561, float %562)  ; FMax(a,b)
  %571 = call float @dx.op.binary.f32(i32 35, float %570, float %563)  ; FMax(a,b)
  %572 = call float @dx.op.binary.f32(i32 35, float %571, float %566)  ; FMax(a,b)
  %573 = fcmp fast oge float %569, 0xBF50624DE0000000
  %574 = fcmp fast olt float %572, 0x3FF00068E0000000
  %575 = and i1 %573, %574
  br i1 %575, label %592, label %576, !dx.controlflow.hints !51

; <label>:576                                     ; preds = %460
  %577 = fcmp fast oeq float %569, %561
  %578 = fcmp fast oeq float %569, %562
  %579 = fcmp fast oeq float %569, %563
  %580 = select i1 %579, i32 8, i32 12
  %581 = select i1 %578, i32 4, i32 %580
  %582 = select i1 %577, i32 0, i32 %581
  %583 = or i32 %582, %461
  %584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %583, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.i32 %584, 0
  %586 = icmp ne i32 %453, -1
  %587 = icmp eq i32 %585, %453
  %588 = and i1 %586, %587
  br i1 %588, label %592, label %589, !dx.controlflow.hints !52

; <label>:589                                     ; preds = %576
  %590 = add nuw nsw i32 %452, 1
  %591 = icmp eq i32 %585, -1
  br i1 %591, label %592, label %451, !llvm.loop !53

; <label>:592                                     ; preds = %589, %576, %460, %451
  %593 = phi i32 [ %454, %576 ], [ %454, %460 ], [ -1, %589 ], [ -1, %451 ]
  %594 = phi float [ %561, %576 ], [ %561, %460 ], [ %561, %589 ], [ %455, %451 ]
  %595 = phi float [ %562, %576 ], [ %562, %460 ], [ %562, %589 ], [ %456, %451 ]
  %596 = phi float [ %563, %576 ], [ %563, %460 ], [ %563, %589 ], [ %457, %451 ]
  %597 = phi float [ %566, %576 ], [ %566, %460 ], [ %566, %589 ], [ %458, %451 ]
  br label %598

; <label>:598                                     ; preds = %592, %445
  %599 = phi i32 [ -1, %445 ], [ %593, %592 ]
  %600 = phi float [ 0.000000e+00, %445 ], [ %594, %592 ]
  %601 = phi float [ 0.000000e+00, %445 ], [ %595, %592 ]
  %602 = phi float [ 0.000000e+00, %445 ], [ %596, %592 ]
  %603 = phi float [ 0.000000e+00, %445 ], [ %597, %592 ]
  %604 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %600)  ; FMax(a,b)
  %605 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %601)  ; FMax(a,b)
  %606 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %602)  ; FMax(a,b)
  %607 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %603)  ; FMax(a,b)
  %608 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %604)  ; FMin(a,b)
  %609 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %605)  ; FMin(a,b)
  %610 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %606)  ; FMin(a,b)
  %611 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %607)  ; FMin(a,b)
  store float %608, float* %295, align 4
  store float %609, float* %296, align 4
  store float %610, float* %297, align 4
  store float %611, float* %298, align 4
  %612 = icmp eq i32 %599, -1
  br i1 %612, label %613, label %648, !dx.controlflow.hints !55

; <label>:613                                     ; preds = %598
  %614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.i32 %614, 1
  %616 = extractvalue %dx.types.ResRet.i32 %614, 2
  %617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.i32 %617, 0
  %619 = extractvalue %dx.types.ResRet.i32 %617, 1
  %620 = extractvalue %dx.types.ResRet.i32 %617, 2
  %621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %622 = extractvalue %dx.types.ResRet.i32 %621, 0
  %623 = extractvalue %dx.types.ResRet.i32 %621, 1
  %624 = and i32 %622, 65535
  %625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %624)  ; LegacyF16ToF32(value)
  %626 = lshr i32 %622, 16
  %627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %626)  ; LegacyF16ToF32(value)
  %628 = and i32 %623, 65535
  %629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %628)  ; LegacyF16ToF32(value)
  %630 = lshr i32 %623, 16
  %631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %630)  ; LegacyF16ToF32(value)
  %632 = lshr i32 %618, 16
  %633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %632)  ; LegacyF16ToF32(value)
  %634 = and i32 %619, 65535
  %635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %634)  ; LegacyF16ToF32(value)
  %636 = lshr i32 %619, 16
  %637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %636)  ; LegacyF16ToF32(value)
  %638 = and i32 %620, 65535
  %639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %638)  ; LegacyF16ToF32(value)
  %640 = and i32 %615, 65535
  %641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %640)  ; LegacyF16ToF32(value)
  %642 = lshr i32 %615, 16
  %643 = call float @dx.op.legacyF16ToF32(i32 131, i32 %642)  ; LegacyF16ToF32(value)
  %644 = and i32 %616, 65535
  %645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %644)  ; LegacyF16ToF32(value)
  %646 = lshr i32 %616, 16
  %647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %646)  ; LegacyF16ToF32(value)
  br label %1202

; <label>:648                                     ; preds = %598
  %649 = shl nsw i32 %599, 4
  %650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %649, i32 undef)  ; BufferLoad(srv,index,wot)
  %651 = extractvalue %dx.types.ResRet.i32 %650, 0
  %652 = extractvalue %dx.types.ResRet.i32 %650, 1
  %653 = extractvalue %dx.types.ResRet.i32 %650, 2
  %654 = extractvalue %dx.types.ResRet.i32 %650, 3
  %655 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 0
  store i32 %651, i32* %655, align 4
  %656 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 1
  store i32 %652, i32* %656, align 4
  %657 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 2
  store i32 %653, i32* %657, align 4
  %658 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 3
  store i32 %654, i32* %658, align 4
  %659 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 0
  store float 0.000000e+00, float* %659, align 4
  %660 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 1
  store float 0.000000e+00, float* %660, align 4
  %661 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 2
  store float 0.000000e+00, float* %661, align 4
  %662 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 3
  store float 0.000000e+00, float* %662, align 4
  %663 = icmp slt i32 %651, 0
  br i1 %663, label %664, label %754, !dx.controlflow.hints !56

; <label>:664                                     ; preds = %648
  %665 = fsub fast float 1.000000e+00, %608
  %666 = fdiv fast float 1.000000e+00, %665
  %667 = shl nsw i32 %599, 6
  %668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %667, i32 undef)  ; BufferLoad(srv,index,wot)
  %669 = extractvalue %dx.types.ResRet.i32 %668, 0
  %670 = extractvalue %dx.types.ResRet.i32 %668, 1
  %671 = extractvalue %dx.types.ResRet.i32 %668, 2
  %672 = extractvalue %dx.types.ResRet.i32 %668, 3
  %673 = fmul fast float %666, %611
  %674 = fmul fast float %666, %609
  %675 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %669, i32* %675, align 4
  %676 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %670, i32* %676, align 4
  %677 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %671, i32* %677, align 4
  %678 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %672, i32* %678, align 4
  %679 = fmul fast float %674, 4.000000e+00
  %680 = call float @dx.op.unary.f32(i32 27, float %679)  ; Round_ni(value)
  %681 = fmul fast float %673, 4.000000e+00
  %682 = call float @dx.op.unary.f32(i32 27, float %681)  ; Round_ni(value)
  %683 = fsub fast float 1.100000e+01, %680
  %684 = fmul fast float %680, 5.000000e-01
  %685 = fmul fast float %684, %683
  %686 = fadd fast float %682, 5.000000e-01
  %687 = fadd fast float %686, %685
  %688 = fptosi float %687 to i32
  %689 = fptosi float %680 to i32
  %690 = sub nsw i32 5, %689
  %691 = fmul fast float %682, 2.500000e-01
  %692 = fmul fast float %680, 2.500000e-01
  %693 = add nsw i32 %688, 1
  %694 = add nsw i32 %688, %690
  %695 = fsub fast float %673, %691
  %696 = fmul fast float %695, 4.000000e+00
  %697 = fsub fast float %674, %692
  %698 = fmul fast float %697, 4.000000e+00
  %699 = fadd fast float %695, %697
  %700 = fmul fast float %699, 4.000000e+00
  %701 = fcmp fast ogt float %700, 1.000000e+00
  br i1 %701, label %702, label %708, !dx.controlflow.hints !57

; <label>:702                                     ; preds = %664
  %703 = add nsw i32 %694, 1
  %704 = fadd fast float %698, -1.000000e+00
  %705 = fsub fast float -0.000000e+00, %704
  %706 = fadd fast float %696, -1.000000e+00
  %707 = fsub fast float -0.000000e+00, %706
  br label %708

; <label>:708                                     ; preds = %702, %664
  %709 = phi i32 [ %703, %702 ], [ %688, %664 ]
  %710 = phi i32 [ %693, %702 ], [ %694, %664 ]
  %711 = phi i32 [ %694, %702 ], [ %693, %664 ]
  %712 = phi float [ %707, %702 ], [ %698, %664 ]
  %713 = phi float [ %705, %702 ], [ %696, %664 ]
  %714 = fsub fast float 1.000000e+00, %712
  %715 = fsub fast float %714, %713
  %716 = lshr i32 %711, 2
  %717 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %716
  %718 = load i32, i32* %717, align 4, !tbaa !58, !noalias !62
  %719 = shl i32 %711, 3
  %720 = and i32 %719, 24
  %721 = lshr i32 %718, %720
  %722 = and i32 %721, 255
  %723 = sitofp i32 %722 to float
  %724 = fmul fast float %713, 0x3F70101020000000
  %725 = fmul fast float %724, %723
  %726 = lshr i32 %710, 2
  %727 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %726
  %728 = load i32, i32* %727, align 4, !tbaa !58, !noalias !62
  %729 = shl i32 %710, 3
  %730 = and i32 %729, 24
  %731 = lshr i32 %728, %730
  %732 = and i32 %731, 255
  %733 = sitofp i32 %732 to float
  %734 = fmul fast float %712, 0x3F70101020000000
  %735 = fmul fast float %734, %733
  %736 = lshr i32 %709, 2
  %737 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %736
  %738 = load i32, i32* %737, align 4, !tbaa !58, !noalias !62
  %739 = shl i32 %709, 3
  %740 = and i32 %739, 24
  %741 = lshr i32 %738, %740
  %742 = and i32 %741, 255
  %743 = sitofp i32 %742 to float
  %744 = fmul fast float %715, 0x3F70101020000000
  %745 = fmul fast float %744, %743
  %746 = fsub fast float 1.000000e+00, %725
  %747 = fsub fast float %746, %735
  %748 = fsub fast float %747, %745
  %749 = fmul fast float %608, 2.000000e+01
  %750 = fadd fast float %749, 1.000000e+00
  %751 = fmul fast float %748, 2.000000e+01
  %752 = fsub fast float %750, %751
  %753 = call float @dx.op.unary.f32(i32 7, float %752)  ; Saturate(value)
  br label %754

; <label>:754                                     ; preds = %708, %648
  %755 = phi float [ %753, %708 ], [ 1.000000e+00, %648 ]
  store float %755, float* %659, align 4, !tbaa !70, !noalias !62
  %756 = icmp slt i32 %652, 0
  br i1 %756, label %757, label %848, !dx.controlflow.hints !56

; <label>:757                                     ; preds = %754
  %758 = fsub fast float 1.000000e+00, %609
  %759 = fdiv fast float 1.000000e+00, %758
  %760 = shl i32 %599, 6
  %761 = or i32 %760, 16
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %761, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = extractvalue %dx.types.ResRet.i32 %762, 1
  %765 = extractvalue %dx.types.ResRet.i32 %762, 2
  %766 = extractvalue %dx.types.ResRet.i32 %762, 3
  %767 = fmul fast float %759, %608
  %768 = fmul fast float %759, %611
  %769 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %763, i32* %769, align 4
  %770 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %764, i32* %770, align 4
  %771 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %765, i32* %771, align 4
  %772 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %766, i32* %772, align 4
  %773 = fmul fast float %768, 4.000000e+00
  %774 = call float @dx.op.unary.f32(i32 27, float %773)  ; Round_ni(value)
  %775 = fmul fast float %767, 4.000000e+00
  %776 = call float @dx.op.unary.f32(i32 27, float %775)  ; Round_ni(value)
  %777 = fsub fast float 1.100000e+01, %774
  %778 = fmul fast float %774, 5.000000e-01
  %779 = fmul fast float %778, %777
  %780 = fadd fast float %776, 5.000000e-01
  %781 = fadd fast float %780, %779
  %782 = fptosi float %781 to i32
  %783 = fptosi float %774 to i32
  %784 = sub nsw i32 5, %783
  %785 = fmul fast float %776, 2.500000e-01
  %786 = fmul fast float %774, 2.500000e-01
  %787 = add nsw i32 %782, 1
  %788 = add nsw i32 %782, %784
  %789 = fsub fast float %767, %785
  %790 = fmul fast float %789, 4.000000e+00
  %791 = fsub fast float %768, %786
  %792 = fmul fast float %791, 4.000000e+00
  %793 = fadd fast float %789, %791
  %794 = fmul fast float %793, 4.000000e+00
  %795 = fcmp fast ogt float %794, 1.000000e+00
  br i1 %795, label %796, label %802, !dx.controlflow.hints !57

; <label>:796                                     ; preds = %757
  %797 = add nsw i32 %788, 1
  %798 = fadd fast float %792, -1.000000e+00
  %799 = fsub fast float -0.000000e+00, %798
  %800 = fadd fast float %790, -1.000000e+00
  %801 = fsub fast float -0.000000e+00, %800
  br label %802

; <label>:802                                     ; preds = %796, %757
  %803 = phi i32 [ %797, %796 ], [ %782, %757 ]
  %804 = phi i32 [ %787, %796 ], [ %788, %757 ]
  %805 = phi i32 [ %788, %796 ], [ %787, %757 ]
  %806 = phi float [ %801, %796 ], [ %792, %757 ]
  %807 = phi float [ %799, %796 ], [ %790, %757 ]
  %808 = fsub fast float 1.000000e+00, %806
  %809 = fsub fast float %808, %807
  %810 = lshr i32 %805, 2
  %811 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %810
  %812 = load i32, i32* %811, align 4, !tbaa !58, !noalias !62
  %813 = shl i32 %805, 3
  %814 = and i32 %813, 24
  %815 = lshr i32 %812, %814
  %816 = and i32 %815, 255
  %817 = sitofp i32 %816 to float
  %818 = fmul fast float %807, 0x3F70101020000000
  %819 = fmul fast float %818, %817
  %820 = lshr i32 %804, 2
  %821 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %820
  %822 = load i32, i32* %821, align 4, !tbaa !58, !noalias !62
  %823 = shl i32 %804, 3
  %824 = and i32 %823, 24
  %825 = lshr i32 %822, %824
  %826 = and i32 %825, 255
  %827 = sitofp i32 %826 to float
  %828 = fmul fast float %806, 0x3F70101020000000
  %829 = fmul fast float %828, %827
  %830 = lshr i32 %803, 2
  %831 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %830
  %832 = load i32, i32* %831, align 4, !tbaa !58, !noalias !62
  %833 = shl i32 %803, 3
  %834 = and i32 %833, 24
  %835 = lshr i32 %832, %834
  %836 = and i32 %835, 255
  %837 = sitofp i32 %836 to float
  %838 = fmul fast float %809, 0x3F70101020000000
  %839 = fmul fast float %838, %837
  %840 = fsub fast float 1.000000e+00, %819
  %841 = fsub fast float %840, %829
  %842 = fsub fast float %841, %839
  %843 = fmul fast float %609, 2.000000e+01
  %844 = fadd fast float %843, 1.000000e+00
  %845 = fmul fast float %842, 2.000000e+01
  %846 = fsub fast float %844, %845
  %847 = call float @dx.op.unary.f32(i32 7, float %846)  ; Saturate(value)
  br label %848

; <label>:848                                     ; preds = %802, %754
  %849 = phi float [ %847, %802 ], [ 1.000000e+00, %754 ]
  store float %849, float* %660, align 4, !tbaa !70, !noalias !62
  %850 = fadd fast float %849, %755
  %851 = icmp slt i32 %653, 0
  br i1 %851, label %852, label %943, !dx.controlflow.hints !56

; <label>:852                                     ; preds = %848
  %853 = fsub fast float 1.000000e+00, %610
  %854 = fdiv fast float 1.000000e+00, %853
  %855 = shl i32 %599, 6
  %856 = or i32 %855, 32
  %857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %856, i32 undef)  ; BufferLoad(srv,index,wot)
  %858 = extractvalue %dx.types.ResRet.i32 %857, 0
  %859 = extractvalue %dx.types.ResRet.i32 %857, 1
  %860 = extractvalue %dx.types.ResRet.i32 %857, 2
  %861 = extractvalue %dx.types.ResRet.i32 %857, 3
  %862 = fmul fast float %854, %608
  %863 = fmul fast float %854, %609
  %864 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %858, i32* %864, align 4
  %865 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %859, i32* %865, align 4
  %866 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %860, i32* %866, align 4
  %867 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %861, i32* %867, align 4
  %868 = fmul fast float %863, 4.000000e+00
  %869 = call float @dx.op.unary.f32(i32 27, float %868)  ; Round_ni(value)
  %870 = fmul fast float %862, 4.000000e+00
  %871 = call float @dx.op.unary.f32(i32 27, float %870)  ; Round_ni(value)
  %872 = fsub fast float 1.100000e+01, %869
  %873 = fmul fast float %869, 5.000000e-01
  %874 = fmul fast float %873, %872
  %875 = fadd fast float %871, 5.000000e-01
  %876 = fadd fast float %875, %874
  %877 = fptosi float %876 to i32
  %878 = fptosi float %869 to i32
  %879 = sub nsw i32 5, %878
  %880 = fmul fast float %871, 2.500000e-01
  %881 = fmul fast float %869, 2.500000e-01
  %882 = add nsw i32 %877, 1
  %883 = add nsw i32 %877, %879
  %884 = fsub fast float %862, %880
  %885 = fmul fast float %884, 4.000000e+00
  %886 = fsub fast float %863, %881
  %887 = fmul fast float %886, 4.000000e+00
  %888 = fadd fast float %884, %886
  %889 = fmul fast float %888, 4.000000e+00
  %890 = fcmp fast ogt float %889, 1.000000e+00
  br i1 %890, label %891, label %897, !dx.controlflow.hints !57

; <label>:891                                     ; preds = %852
  %892 = add nsw i32 %883, 1
  %893 = fadd fast float %887, -1.000000e+00
  %894 = fsub fast float -0.000000e+00, %893
  %895 = fadd fast float %885, -1.000000e+00
  %896 = fsub fast float -0.000000e+00, %895
  br label %897

; <label>:897                                     ; preds = %891, %852
  %898 = phi i32 [ %892, %891 ], [ %877, %852 ]
  %899 = phi i32 [ %882, %891 ], [ %883, %852 ]
  %900 = phi i32 [ %883, %891 ], [ %882, %852 ]
  %901 = phi float [ %896, %891 ], [ %887, %852 ]
  %902 = phi float [ %894, %891 ], [ %885, %852 ]
  %903 = fsub fast float 1.000000e+00, %901
  %904 = fsub fast float %903, %902
  %905 = lshr i32 %900, 2
  %906 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %905
  %907 = load i32, i32* %906, align 4, !tbaa !58, !noalias !62
  %908 = shl i32 %900, 3
  %909 = and i32 %908, 24
  %910 = lshr i32 %907, %909
  %911 = and i32 %910, 255
  %912 = sitofp i32 %911 to float
  %913 = fmul fast float %902, 0x3F70101020000000
  %914 = fmul fast float %913, %912
  %915 = lshr i32 %899, 2
  %916 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %915
  %917 = load i32, i32* %916, align 4, !tbaa !58, !noalias !62
  %918 = shl i32 %899, 3
  %919 = and i32 %918, 24
  %920 = lshr i32 %917, %919
  %921 = and i32 %920, 255
  %922 = sitofp i32 %921 to float
  %923 = fmul fast float %901, 0x3F70101020000000
  %924 = fmul fast float %923, %922
  %925 = lshr i32 %898, 2
  %926 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %925
  %927 = load i32, i32* %926, align 4, !tbaa !58, !noalias !62
  %928 = shl i32 %898, 3
  %929 = and i32 %928, 24
  %930 = lshr i32 %927, %929
  %931 = and i32 %930, 255
  %932 = sitofp i32 %931 to float
  %933 = fmul fast float %904, 0x3F70101020000000
  %934 = fmul fast float %933, %932
  %935 = fsub fast float 1.000000e+00, %914
  %936 = fsub fast float %935, %924
  %937 = fsub fast float %936, %934
  %938 = fmul fast float %610, 2.000000e+01
  %939 = fadd fast float %938, 1.000000e+00
  %940 = fmul fast float %937, 2.000000e+01
  %941 = fsub fast float %939, %940
  %942 = call float @dx.op.unary.f32(i32 7, float %941)  ; Saturate(value)
  br label %943

; <label>:943                                     ; preds = %897, %848
  %944 = phi float [ %942, %897 ], [ 1.000000e+00, %848 ]
  store float %944, float* %661, align 4, !tbaa !70, !noalias !62
  %945 = fadd fast float %850, %944
  %946 = icmp slt i32 %654, 0
  br i1 %946, label %947, label %1038, !dx.controlflow.hints !56

; <label>:947                                     ; preds = %943
  %948 = fsub fast float 1.000000e+00, %611
  %949 = fdiv fast float 1.000000e+00, %948
  %950 = shl i32 %599, 6
  %951 = or i32 %950, 48
  %952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %951, i32 undef)  ; BufferLoad(srv,index,wot)
  %953 = extractvalue %dx.types.ResRet.i32 %952, 0
  %954 = extractvalue %dx.types.ResRet.i32 %952, 1
  %955 = extractvalue %dx.types.ResRet.i32 %952, 2
  %956 = extractvalue %dx.types.ResRet.i32 %952, 3
  %957 = fmul fast float %949, %608
  %958 = fmul fast float %949, %609
  %959 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %953, i32* %959, align 4
  %960 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %954, i32* %960, align 4
  %961 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %955, i32* %961, align 4
  %962 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %956, i32* %962, align 4
  %963 = fmul fast float %958, 4.000000e+00
  %964 = call float @dx.op.unary.f32(i32 27, float %963)  ; Round_ni(value)
  %965 = fmul fast float %957, 4.000000e+00
  %966 = call float @dx.op.unary.f32(i32 27, float %965)  ; Round_ni(value)
  %967 = fsub fast float 1.100000e+01, %964
  %968 = fmul fast float %964, 5.000000e-01
  %969 = fmul fast float %968, %967
  %970 = fadd fast float %966, 5.000000e-01
  %971 = fadd fast float %970, %969
  %972 = fptosi float %971 to i32
  %973 = fptosi float %964 to i32
  %974 = sub nsw i32 5, %973
  %975 = fmul fast float %966, 2.500000e-01
  %976 = fmul fast float %964, 2.500000e-01
  %977 = add nsw i32 %972, 1
  %978 = add nsw i32 %972, %974
  %979 = fsub fast float %957, %975
  %980 = fmul fast float %979, 4.000000e+00
  %981 = fsub fast float %958, %976
  %982 = fmul fast float %981, 4.000000e+00
  %983 = fadd fast float %979, %981
  %984 = fmul fast float %983, 4.000000e+00
  %985 = fcmp fast ogt float %984, 1.000000e+00
  br i1 %985, label %986, label %992, !dx.controlflow.hints !57

; <label>:986                                     ; preds = %947
  %987 = add nsw i32 %978, 1
  %988 = fadd fast float %982, -1.000000e+00
  %989 = fsub fast float -0.000000e+00, %988
  %990 = fadd fast float %980, -1.000000e+00
  %991 = fsub fast float -0.000000e+00, %990
  br label %992

; <label>:992                                     ; preds = %986, %947
  %993 = phi i32 [ %987, %986 ], [ %972, %947 ]
  %994 = phi i32 [ %977, %986 ], [ %978, %947 ]
  %995 = phi i32 [ %978, %986 ], [ %977, %947 ]
  %996 = phi float [ %991, %986 ], [ %982, %947 ]
  %997 = phi float [ %989, %986 ], [ %980, %947 ]
  %998 = fsub fast float 1.000000e+00, %996
  %999 = fsub fast float %998, %997
  %1000 = lshr i32 %995, 2
  %1001 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %1000
  %1002 = load i32, i32* %1001, align 4, !tbaa !58, !noalias !62
  %1003 = shl i32 %995, 3
  %1004 = and i32 %1003, 24
  %1005 = lshr i32 %1002, %1004
  %1006 = and i32 %1005, 255
  %1007 = sitofp i32 %1006 to float
  %1008 = fmul fast float %997, 0x3F70101020000000
  %1009 = fmul fast float %1008, %1007
  %1010 = lshr i32 %994, 2
  %1011 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %1010
  %1012 = load i32, i32* %1011, align 4, !tbaa !58, !noalias !62
  %1013 = shl i32 %994, 3
  %1014 = and i32 %1013, 24
  %1015 = lshr i32 %1012, %1014
  %1016 = and i32 %1015, 255
  %1017 = sitofp i32 %1016 to float
  %1018 = fmul fast float %996, 0x3F70101020000000
  %1019 = fmul fast float %1018, %1017
  %1020 = lshr i32 %993, 2
  %1021 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %1020
  %1022 = load i32, i32* %1021, align 4, !tbaa !58, !noalias !62
  %1023 = shl i32 %993, 3
  %1024 = and i32 %1023, 24
  %1025 = lshr i32 %1022, %1024
  %1026 = and i32 %1025, 255
  %1027 = sitofp i32 %1026 to float
  %1028 = fmul fast float %999, 0x3F70101020000000
  %1029 = fmul fast float %1028, %1027
  %1030 = fsub fast float 1.000000e+00, %1009
  %1031 = fsub fast float %1030, %1019
  %1032 = fsub fast float %1031, %1029
  %1033 = fmul fast float %611, 2.000000e+01
  %1034 = fadd fast float %1033, 1.000000e+00
  %1035 = fmul fast float %1032, 2.000000e+01
  %1036 = fsub fast float %1034, %1035
  %1037 = call float @dx.op.unary.f32(i32 7, float %1036)  ; Saturate(value)
  br label %1038

; <label>:1038                                    ; preds = %992, %943
  %1039 = phi float [ %1037, %992 ], [ 1.000000e+00, %943 ]
  store float %1039, float* %662, align 4, !tbaa !70, !noalias !62
  %1040 = fadd fast float %945, %1039
  %1041 = fcmp fast oeq float %1040, 0.000000e+00
  br i1 %1041, label %1042, label %1043, !dx.controlflow.hints !72

; <label>:1042                                    ; preds = %1038
  store float 2.500000e-01, float* %659, align 4
  store float 2.500000e-01, float* %660, align 4
  store float 2.500000e-01, float* %661, align 4
  store float 2.500000e-01, float* %662, align 4
  br label %1043

; <label>:1043                                    ; preds = %1042, %1038
  %1044 = phi float [ 2.500000e-01, %1042 ], [ %755, %1038 ]
  %1045 = phi i32 [ 0, %1042 ], [ 1, %1038 ]
  br label %1046

; <label>:1046                                    ; preds = %1182, %1043
  %1047 = phi float [ %1044, %1043 ], [ %1184, %1182 ]
  %1048 = phi float [ 0.000000e+00, %1043 ], [ %1166, %1182 ]
  %1049 = phi float [ 0.000000e+00, %1043 ], [ %1167, %1182 ]
  %1050 = phi float [ 0.000000e+00, %1043 ], [ %1168, %1182 ]
  %1051 = phi float [ 0.000000e+00, %1043 ], [ %1169, %1182 ]
  %1052 = phi float [ 0.000000e+00, %1043 ], [ %1170, %1182 ]
  %1053 = phi float [ 0.000000e+00, %1043 ], [ %1171, %1182 ]
  %1054 = phi float [ 0.000000e+00, %1043 ], [ %1172, %1182 ]
  %1055 = phi float [ 0.000000e+00, %1043 ], [ %1173, %1182 ]
  %1056 = phi float [ 0.000000e+00, %1043 ], [ %1174, %1182 ]
  %1057 = phi float [ 0.000000e+00, %1043 ], [ %1175, %1182 ]
  %1058 = phi float [ 0.000000e+00, %1043 ], [ %1176, %1182 ]
  %1059 = phi float [ 0.000000e+00, %1043 ], [ %1177, %1182 ]
  %1060 = phi float [ 0.000000e+00, %1043 ], [ %1178, %1182 ]
  %1061 = phi float [ 0.000000e+00, %1043 ], [ %1179, %1182 ]
  %1062 = phi i32 [ 0, %1043 ], [ %1180, %1182 ]
  %1063 = fcmp fast ogt float %1047, 0.000000e+00
  br i1 %1063, label %1064, label %1165, !dx.controlflow.hints !73

; <label>:1064                                    ; preds = %1046
  %1065 = getelementptr [4 x float], [4 x float]* %29, i32 0, i32 %1062
  %1066 = load float, float* %1065, align 4, !tbaa !70, !noalias !62
  %1067 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %1062
  %1068 = load i32, i32* %1067, align 4, !tbaa !58, !noalias !62
  %1069 = fmul fast float %1066, %1047
  %1070 = shl i32 %1068, 5
  %1071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1070, i32 undef)  ; BufferLoad(srv,index,wot)
  %1072 = extractvalue %dx.types.ResRet.i32 %1071, 0
  %1073 = extractvalue %dx.types.ResRet.i32 %1071, 1
  %1074 = extractvalue %dx.types.ResRet.i32 %1071, 3
  %1075 = or i32 %1070, 16
  %1076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1075, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.i32 %1076, 1
  %1078 = extractvalue %dx.types.ResRet.i32 %1076, 3
  %1079 = shl i32 %1072, 4
  %1080 = and i32 %1079, 32752
  %1081 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1080)  ; LegacyF16ToF32(value)
  %1082 = lshr i32 %1072, 7
  %1083 = and i32 %1082, 32752
  %1084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1083)  ; LegacyF16ToF32(value)
  %1085 = lshr i32 %1072, 22
  %1086 = shl nuw nsw i32 %1085, 5
  %1087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1086)  ; LegacyF16ToF32(value)
  %1088 = and i32 %1073, 255
  %1089 = uitofp i32 %1088 to float
  %1090 = fmul fast float %1089, 0x3F80204080000000
  %1091 = fadd fast float %1090, -1.000000e+00
  %1092 = lshr i32 %1073, 8
  %1093 = and i32 %1092, 255
  %1094 = uitofp i32 %1093 to float
  %1095 = fmul fast float %1094, 0x3F80204080000000
  %1096 = fadd fast float %1095, -1.000000e+00
  %1097 = lshr i32 %1073, 16
  %1098 = and i32 %1097, 255
  %1099 = uitofp i32 %1098 to float
  %1100 = fmul fast float %1099, 0x3F80204080000000
  %1101 = fadd fast float %1100, -1.000000e+00
  %1102 = and i32 %1074, 255
  %1103 = uitofp i32 %1102 to float
  %1104 = fmul fast float %1103, 0x3F80204080000000
  %1105 = fadd fast float %1104, -1.000000e+00
  %1106 = lshr i32 %1074, 8
  %1107 = and i32 %1106, 255
  %1108 = uitofp i32 %1107 to float
  %1109 = fmul fast float %1108, 0x3F80204080000000
  %1110 = fadd fast float %1109, -1.000000e+00
  %1111 = lshr i32 %1074, 16
  %1112 = and i32 %1111, 255
  %1113 = uitofp i32 %1112 to float
  %1114 = fmul fast float %1113, 0x3F80204080000000
  %1115 = fadd fast float %1114, -1.000000e+00
  %1116 = and i32 %1077, 255
  %1117 = uitofp i32 %1116 to float
  %1118 = fmul fast float %1117, 0x3F80204080000000
  %1119 = fadd fast float %1118, -1.000000e+00
  %1120 = lshr i32 %1077, 8
  %1121 = and i32 %1120, 255
  %1122 = uitofp i32 %1121 to float
  %1123 = fmul fast float %1122, 0x3F80204080000000
  %1124 = fadd fast float %1123, -1.000000e+00
  %1125 = lshr i32 %1077, 16
  %1126 = and i32 %1125, 255
  %1127 = uitofp i32 %1126 to float
  %1128 = fmul fast float %1127, 0x3F80204080000000
  %1129 = fadd fast float %1128, -1.000000e+00
  %1130 = lshr i32 %1078, 8
  %1131 = and i32 %1130, 255
  %1132 = uitofp i32 %1131 to float
  %1133 = fmul fast float %1081, %1069
  %1134 = fadd fast float %1133, %1051
  %1135 = fmul fast float %1069, 0x3FFBB67AE0000000
  %1136 = fmul fast float %1135, %1081
  %1137 = fmul fast float %1136, %1091
  %1138 = fadd fast float %1137, %1050
  %1139 = fmul fast float %1136, %1096
  %1140 = fadd fast float %1139, %1049
  %1141 = fmul fast float %1136, %1101
  %1142 = fadd fast float %1141, %1048
  %1143 = fmul fast float %1084, %1069
  %1144 = fadd fast float %1143, %1055
  %1145 = fmul fast float %1135, %1084
  %1146 = fmul fast float %1145, %1105
  %1147 = fadd fast float %1146, %1054
  %1148 = fmul fast float %1145, %1110
  %1149 = fadd fast float %1148, %1053
  %1150 = fmul fast float %1145, %1115
  %1151 = fadd fast float %1150, %1052
  %1152 = fmul fast float %1087, %1069
  %1153 = fadd fast float %1152, %1059
  %1154 = fmul fast float %1135, %1087
  %1155 = fmul fast float %1154, %1119
  %1156 = fadd fast float %1155, %1058
  %1157 = fmul fast float %1154, %1124
  %1158 = fadd fast float %1157, %1057
  %1159 = fmul fast float %1154, %1129
  %1160 = fadd fast float %1159, %1056
  %1161 = fmul fast float %1069, 0x3F70101020000000
  %1162 = fmul fast float %1161, %1132
  %1163 = fadd fast float %1162, %1060
  %1164 = fadd fast float %1069, %1061
  br label %1165

; <label>:1165                                    ; preds = %1064, %1046
  %1166 = phi float [ %1142, %1064 ], [ %1048, %1046 ]
  %1167 = phi float [ %1140, %1064 ], [ %1049, %1046 ]
  %1168 = phi float [ %1138, %1064 ], [ %1050, %1046 ]
  %1169 = phi float [ %1134, %1064 ], [ %1051, %1046 ]
  %1170 = phi float [ %1151, %1064 ], [ %1052, %1046 ]
  %1171 = phi float [ %1149, %1064 ], [ %1053, %1046 ]
  %1172 = phi float [ %1147, %1064 ], [ %1054, %1046 ]
  %1173 = phi float [ %1144, %1064 ], [ %1055, %1046 ]
  %1174 = phi float [ %1160, %1064 ], [ %1056, %1046 ]
  %1175 = phi float [ %1158, %1064 ], [ %1057, %1046 ]
  %1176 = phi float [ %1156, %1064 ], [ %1058, %1046 ]
  %1177 = phi float [ %1153, %1064 ], [ %1059, %1046 ]
  %1178 = phi float [ %1163, %1064 ], [ %1060, %1046 ]
  %1179 = phi float [ %1164, %1064 ], [ %1061, %1046 ]
  %1180 = add nuw nsw i32 %1062, 1
  %1181 = icmp eq i32 %1180, 4
  br i1 %1181, label %1185, label %1182

; <label>:1182                                    ; preds = %1165
  %1183 = getelementptr [4 x float], [4 x float]* %31, i32 0, i32 %1180
  %1184 = load float, float* %1183, align 4, !tbaa !70, !noalias !62
  br label %1046

; <label>:1185                                    ; preds = %1165
  %1186 = fcmp fast ogt float %1179, 0.000000e+00
  %1187 = fdiv fast float 1.000000e+00, %1179
  %1188 = select i1 %1186, float %1187, float 1.000000e+00
  %1189 = fmul fast float %1188, %1169
  %1190 = fmul fast float %1188, %1168
  %1191 = fmul fast float %1188, %1167
  %1192 = fmul fast float %1188, %1166
  %1193 = fmul fast float %1188, %1173
  %1194 = fmul fast float %1188, %1172
  %1195 = fmul fast float %1188, %1171
  %1196 = fmul fast float %1188, %1170
  %1197 = fmul fast float %1188, %1177
  %1198 = fmul fast float %1188, %1176
  %1199 = fmul fast float %1188, %1175
  %1200 = fmul fast float %1188, %1174
  %1201 = fmul fast float %1188, %1178
  br label %1202

; <label>:1202                                    ; preds = %1185, %613
  %1203 = phi float [ %631, %613 ], [ %1192, %1185 ]
  %1204 = phi float [ %629, %613 ], [ %1191, %1185 ]
  %1205 = phi float [ %627, %613 ], [ %1190, %1185 ]
  %1206 = phi float [ %625, %613 ], [ %1189, %1185 ]
  %1207 = phi float [ %639, %613 ], [ %1196, %1185 ]
  %1208 = phi float [ %637, %613 ], [ %1195, %1185 ]
  %1209 = phi float [ %635, %613 ], [ %1194, %1185 ]
  %1210 = phi float [ %633, %613 ], [ %1193, %1185 ]
  %1211 = phi float [ %647, %613 ], [ %1200, %1185 ]
  %1212 = phi float [ %645, %613 ], [ %1199, %1185 ]
  %1213 = phi float [ %643, %613 ], [ %1198, %1185 ]
  %1214 = phi float [ %641, %613 ], [ %1197, %1185 ]
  %1215 = phi float [ 0.000000e+00, %613 ], [ %1201, %1185 ]
  %1216 = phi i32 [ 1, %613 ], [ %1045, %1185 ]
  %1217 = icmp ne i32 %1216, 0
  %1218 = select i1 %1217, float %1215, float 3.125000e-02
  %1219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %141, i32 0)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.i32 %1219, 0
  %1221 = icmp eq i32 %1220, 262144
  br i1 %1221, label %1241, label %1222, !dx.controlflow.hints !74

; <label>:1222                                    ; preds = %1202
  %1223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %141, i32 0)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.i32 %1223, 0
  %1225 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1226 = extractvalue %dx.types.CBufRet.i32 %1225, 0
  %1227 = and i32 %1226, 31
  %1228 = shl i32 1, %1227
  %1229 = add i32 %1228, -1
  %1230 = and i32 %1229, %1224
  %1231 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1230)  ; Countbits(value)
  %1232 = extractvalue %dx.types.CBufRet.i32 %1225, 2
  %1233 = and i32 %1232, 31
  %1234 = shl i32 1, %1233
  %1235 = shl i32 %1234, %1233
  %1236 = shl i32 %27, %1233
  %1237 = mul i32 %1235, %1231
  %1238 = add i32 %1220, %26
  %1239 = add i32 %1238, %1236
  %1240 = add i32 %1239, %1237
  br label %1241

; <label>:1241                                    ; preds = %1222, %1202
  %1242 = phi i32 [ %1240, %1222 ], [ -1, %1202 ]
  %1243 = icmp eq i32 %1242, -1
  br i1 %1243, label %1261, label %1244, !dx.controlflow.hints !75

; <label>:1244                                    ; preds = %1241
  %1245 = fmul fast float %1206, 0x3FFBB67AE0000000
  %1246 = fadd fast float %1245, %1205
  %1247 = fadd fast float %1245, %1204
  %1248 = fadd fast float %1245, %1203
  %1249 = fmul fast float %1210, 0x3FFBB67AE0000000
  %1250 = fadd fast float %1249, %1209
  %1251 = fadd fast float %1249, %1208
  %1252 = fadd fast float %1249, %1207
  %1253 = fmul fast float %1214, 0x3FFBB67AE0000000
  %1254 = fadd fast float %1253, %1213
  %1255 = fadd fast float %1253, %1212
  %1256 = fadd fast float %1253, %1211
  %1257 = shl i32 %1242, 2
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %1257, i32 undef, float %1206, float %1210, float %1214, float %1206, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1258 = or i32 %1257, 1
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %1258, i32 undef, float %1246, float %1250, float %1254, float %1246, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1259 = or i32 %1257, 2
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %1259, i32 undef, float %1247, float %1251, float %1255, float %1247, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1260 = or i32 %1257, 3
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %1260, i32 undef, float %1248, float %1252, float %1256, float %1248, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %1242, i32 undef, float %1218, float %1218, float %1218, float %1218, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1261

; <label>:1261                                    ; preds = %1244, %1241, %133, %44, %35
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

