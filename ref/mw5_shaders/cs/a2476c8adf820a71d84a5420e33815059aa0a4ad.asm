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
; shader hash: df3ca4847bd3bc88d7eda483930ac6bf
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
; cbuffer 
; {
;
;   [464 x i8] (type annotation not present)
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
; Resource bind info for 
; {
;
;   [88 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [32 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [16 x i8] (type annotation not present)
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
;   [8 x i8] (type annotation not present)
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
;   [20 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB1            cb0     1
;                                   cbuffer      NA          NA     CB2            cb1     1
;                                   texture  struct         r/o      T0            t13     1
;                                   texture  struct         r/o      T1            t14     1
;                                   texture  struct         r/o      T2            t15     1
;                                   texture    byte         r/o      T3            t16     1
;                                   texture    byte         r/o      T4            t17     1
;                                   texture    byte         r/o      T5             t1     1
;                                   texture  struct         r/o      T6             t2     1
;                                   texture  struct         r/o      T7             t3     1
;                                   texture  struct         r/o      T8             t4     1
;                                   texture  struct         r/o      T9             t8     1
;                                   texture  struct         r/o     T10             t9     1
;                                   texture     f32          2d     T11            t10     1
;                                   texture  struct         r/o     T12             t0     1
;                                   texture     u32          2d     T13            t11     1
;                                       UAV  struct         r/w      U0             u0     1
;                                       UAV  struct         r/w      U1             u4     1
;                                       UAV  struct         r/w      U2             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.StructuredBuffer<VectorFieldGpu>" = type { %struct.VectorFieldGpu }
%struct.VectorFieldGpu = type { <3 x float>, float, <3 x float>, float, <3 x float>, float, <3 x float>, i32, <3 x float>, <3 x float> }
%"class.StructuredBuffer<VectorSubFieldGpu>" = type { %struct.VectorSubFieldGpu }
%struct.VectorSubFieldGpu = type { <3 x float>, i32, <3 x float>, i32 }
%"class.StructuredBuffer<vector<unsigned int, 4> >" = type { <4 x i32> }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<FxEmitterInstancePerFrameData>" = type { %struct.FxEmitterInstancePerFrameData }
%struct.FxEmitterInstancePerFrameData = type { <4 x float>, <3 x float>, i32, <3 x float>, i32, i32, float, float, i32, i32, i32, i32, i32 }
%"class.StructuredBuffer<FxEmitterDefPerFrameData>" = type { %struct.FxEmitterDefPerFrameData }
%struct.FxEmitterDefPerFrameData = type { i32, i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.RWStructuredBuffer<FxParticle>" = type { %struct.FxParticle }
%struct.FxParticle = type { <2 x i32>, <2 x i32>, i32 }
%"class.RWStructuredBuffer<FxParticleCounter>" = type { %struct.FxParticleCounter }
%struct.FxParticleCounter = type { i32, i32, i32, i32 }
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
%hostlayout.FxFrameConsts_decl = type { %hostlayout.struct.FxFrameConsts }
%hostlayout.struct.FxFrameConsts = type { [4 x <4 x float>], [4 x <4 x float>], <4 x i32>, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, i32, i32, i32, i32, i32, i32, float, float, <3 x float>, i32, i32, float, float, float, <4 x i32>, [12 x <4 x i32>] }
%FxEmitConsts_decl = type { %struct.FxEmitConsts }
%struct.FxEmitConsts = type { i32, i32, i32, i32 }

define void @cs_fx_update_particles() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %22 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %23 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = extractvalue %dx.types.CBufRet.i32 %23, 0
  %25 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %24, i32 0)  ; BufferLoad(srv,index,wot)
  %26 = extractvalue %dx.types.ResRet.i32 %25, 0
  %27 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %24, i32 4)  ; BufferLoad(srv,index,wot)
  %28 = extractvalue %dx.types.ResRet.i32 %27, 0
  %29 = icmp ugt i32 %26, 1
  br i1 %29, label %30, label %53

; <label>:30                                      ; preds = %0
  br label %31

; <label>:31                                      ; preds = %31, %30
  %32 = phi i32 [ %43, %31 ], [ 0, %30 ]
  %33 = phi i32 [ %44, %31 ], [ 0, %30 ]
  %34 = phi i32 [ %45, %31 ], [ %26, %30 ]
  %35 = sub i32 %34, %32
  %36 = lshr i32 %35, 1
  %37 = add i32 %36, %32
  %38 = add i32 %28, 255
  %39 = add i32 %38, %37
  %40 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %39, i32 0)  ; BufferLoad(srv,index,wot)
  %41 = extractvalue %dx.types.ResRet.i32 %40, 0
  %42 = icmp ult i32 %22, %41
  %43 = select i1 %42, i32 %32, i32 %37
  %44 = select i1 %42, i32 %33, i32 %41
  %45 = select i1 %42, i32 %37, i32 %34
  %46 = sub i32 %34, %37
  %47 = select i1 %42, i32 %36, i32 %46
  %48 = icmp ugt i32 %47, 1
  br i1 %48, label %31, label %49

; <label>:49                                      ; preds = %31
  %50 = icmp eq i32 %43, 0
  %51 = shl i32 %44, 6
  %52 = select i1 %50, i32 0, i32 %51
  br label %53

; <label>:53                                      ; preds = %49, %0
  %54 = phi i32 [ 0, %0 ], [ %52, %49 ]
  %55 = phi i32 [ %26, %0 ], [ %45, %49 ]
  %56 = sub i32 %21, %54
  %57 = add i32 %28, -1
  %58 = add i32 %57, %55
  %59 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %58, i32 0)  ; BufferLoad(srv,index,wot)
  %60 = extractvalue %dx.types.ResRet.i32 %59, 0
  %61 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %60, i32 0)  ; BufferLoad(srv,index,wot)
  %62 = extractvalue %dx.types.ResRet.f32 %61, 0
  %63 = extractvalue %dx.types.ResRet.f32 %61, 1
  %64 = extractvalue %dx.types.ResRet.f32 %61, 2
  %65 = extractvalue %dx.types.ResRet.f32 %61, 3
  %66 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %60, i32 16)  ; BufferLoad(srv,index,wot)
  %67 = extractvalue %dx.types.ResRet.f32 %66, 0
  %68 = extractvalue %dx.types.ResRet.f32 %66, 1
  %69 = extractvalue %dx.types.ResRet.f32 %66, 2
  %70 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %60, i32 52)  ; BufferLoad(srv,index,wot)
  %71 = extractvalue %dx.types.ResRet.f32 %70, 0
  %72 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %60, i32 56)  ; BufferLoad(srv,index,wot)
  %73 = extractvalue %dx.types.ResRet.f32 %72, 0
  %74 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %60, i32 60)  ; BufferLoad(srv,index,wot)
  %75 = extractvalue %dx.types.ResRet.i32 %74, 0
  %76 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %60, i32 64)  ; BufferLoad(srv,index,wot)
  %77 = extractvalue %dx.types.ResRet.i32 %76, 0
  %78 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %60, i32 0)  ; BufferLoad(srv,index,wot)
  %79 = extractvalue %dx.types.ResRet.i32 %78, 0
  %80 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %60, i32 4)  ; BufferLoad(srv,index,wot)
  %81 = extractvalue %dx.types.ResRet.i32 %80, 0
  %82 = icmp ult i32 %56, %79
  br i1 %82, label %83, label %2783, !dx.controlflow.hints !40

; <label>:83                                      ; preds = %53
  %84 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.i32 %84, 3
  %86 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %87 = extractvalue %dx.types.ResRet.f32 %86, 0
  %88 = extractvalue %dx.types.ResRet.f32 %86, 1
  %89 = extractvalue %dx.types.ResRet.f32 %86, 2
  %90 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %91 = extractvalue %dx.types.ResRet.i32 %90, 0
  %92 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %93 = extractvalue %dx.types.ResRet.f32 %92, 0
  %94 = extractvalue %dx.types.ResRet.f32 %92, 1
  %95 = extractvalue %dx.types.ResRet.f32 %92, 2
  %96 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %97 = extractvalue %dx.types.ResRet.f32 %96, 0
  %98 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %99 = extractvalue %dx.types.ResRet.f32 %98, 0
  %100 = extractvalue %dx.types.ResRet.f32 %98, 1
  %101 = extractvalue %dx.types.ResRet.f32 %98, 2
  %102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %103 = extractvalue %dx.types.ResRet.f32 %102, 0
  %104 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %105 = extractvalue %dx.types.ResRet.f32 %104, 0
  %106 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %107 = extractvalue %dx.types.ResRet.f32 %106, 0
  %108 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %109 = extractvalue %dx.types.ResRet.f32 %108, 0
  %110 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 68, i32 undef)  ; BufferLoad(srv,index,wot)
  %111 = extractvalue %dx.types.ResRet.f32 %110, 0
  %112 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %113 = extractvalue %dx.types.ResRet.f32 %112, 0
  %114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 0
  %116 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %117 = extractvalue %dx.types.ResRet.f32 %116, 0
  %118 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %119 = extractvalue %dx.types.ResRet.f32 %118, 0
  %120 = extractvalue %dx.types.ResRet.f32 %118, 1
  %121 = extractvalue %dx.types.ResRet.f32 %118, 2
  %122 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %123 = extractvalue %dx.types.ResRet.f32 %122, 0
  %124 = extractvalue %dx.types.ResRet.f32 %122, 1
  %125 = extractvalue %dx.types.ResRet.f32 %122, 2
  %126 = extractvalue %dx.types.ResRet.f32 %122, 3
  %127 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %128 = extractvalue %dx.types.ResRet.f32 %127, 0
  %129 = extractvalue %dx.types.ResRet.f32 %127, 1
  %130 = extractvalue %dx.types.ResRet.f32 %127, 2
  %131 = extractvalue %dx.types.ResRet.f32 %127, 3
  %132 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %133 = extractvalue %dx.types.ResRet.f32 %132, 0
  %134 = extractvalue %dx.types.ResRet.f32 %132, 1
  %135 = extractvalue %dx.types.ResRet.f32 %132, 2
  %136 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %137 = extractvalue %dx.types.ResRet.f32 %136, 0
  %138 = extractvalue %dx.types.ResRet.f32 %136, 1
  %139 = extractvalue %dx.types.ResRet.f32 %136, 2
  %140 = extractvalue %dx.types.ResRet.f32 %136, 3
  %141 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 164, i32 undef)  ; BufferLoad(srv,index,wot)
  %142 = extractvalue %dx.types.ResRet.f32 %141, 0
  %143 = extractvalue %dx.types.ResRet.f32 %141, 1
  %144 = extractvalue %dx.types.ResRet.f32 %141, 2
  %145 = extractvalue %dx.types.ResRet.f32 %141, 3
  %146 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 180, i32 undef)  ; BufferLoad(srv,index,wot)
  %147 = extractvalue %dx.types.ResRet.f32 %146, 0
  %148 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 184, i32 undef)  ; BufferLoad(srv,index,wot)
  %149 = extractvalue %dx.types.ResRet.f32 %148, 0
  %150 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %151 = extractvalue %dx.types.ResRet.f32 %150, 0
  %152 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 292, i32 undef)  ; BufferLoad(srv,index,wot)
  %153 = extractvalue %dx.types.ResRet.f32 %152, 0
  %154 = extractvalue %dx.types.ResRet.f32 %152, 1
  %155 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 300, i32 undef)  ; BufferLoad(srv,index,wot)
  %156 = extractvalue %dx.types.ResRet.f32 %155, 0
  %157 = shl i32 %85, 8
  %158 = xor i32 %157, 258
  %159 = add i32 %158, %60
  %160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %159, i32 0)  ; BufferLoad(srv,index,wot)
  %161 = extractvalue %dx.types.ResRet.i32 %160, 0
  %162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %60, i32 0)  ; BufferLoad(srv,index,wot)
  %163 = extractvalue %dx.types.ResRet.i32 %162, 0
  %164 = and i32 %91, 16
  %165 = icmp ne i32 %164, 0
  %166 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.i32 %166, 1
  %168 = icmp ne i32 %167, 0
  %169 = and i1 %165, %168
  br i1 %169, label %170, label %506, !dx.controlflow.hints !41

; <label>:170                                     ; preds = %83
  %171 = fsub fast float %67, %147
  %172 = fsub fast float %68, %147
  %173 = fadd fast float %147, %67
  %174 = fadd fast float %147, %68
  %175 = fptosi float %171 to i32
  %176 = fptosi float %172 to i32
  %177 = add i32 %175, 130048
  %178 = add i32 %176, 130048
  %179 = call i32 @dx.op.binary.i32(i32 37, i32 %177, i32 0)  ; IMax(a,b)
  %180 = call i32 @dx.op.binary.i32(i32 37, i32 %178, i32 0)  ; IMax(a,b)
  %181 = call i32 @dx.op.binary.i32(i32 38, i32 %179, i32 262144)  ; IMin(a,b)
  %182 = call i32 @dx.op.binary.i32(i32 38, i32 %180, i32 262144)  ; IMin(a,b)
  %183 = fptosi float %173 to i32
  %184 = fptosi float %174 to i32
  %185 = add i32 %183, 130048
  %186 = add i32 %184, 130048
  %187 = call i32 @dx.op.binary.i32(i32 37, i32 %185, i32 0)  ; IMax(a,b)
  %188 = call i32 @dx.op.binary.i32(i32 37, i32 %186, i32 0)  ; IMax(a,b)
  %189 = call i32 @dx.op.binary.i32(i32 38, i32 %187, i32 262144)  ; IMin(a,b)
  %190 = call i32 @dx.op.binary.i32(i32 38, i32 %188, i32 262144)  ; IMin(a,b)
  %191 = lshr i32 %181, 10
  %192 = lshr i32 %182, 10
  %193 = lshr i32 %189, 10
  %194 = lshr i32 %190, 10
  %195 = icmp ugt i32 %191, %193
  br i1 %195, label %506, label %196

; <label>:196                                     ; preds = %170
  br label %197

; <label>:197                                     ; preds = %497, %196
  %198 = phi i32 [ %498, %497 ], [ -1, %196 ]
  %199 = phi i32 [ %499, %497 ], [ -1, %196 ]
  %200 = phi i32 [ %500, %497 ], [ 0, %196 ]
  %201 = phi i32 [ %501, %497 ], [ %191, %196 ]
  %202 = icmp ugt i32 %192, %194
  br i1 %202, label %497, label %203

; <label>:203                                     ; preds = %197
  br label %204

; <label>:204                                     ; preds = %490, %203
  %205 = phi i32 [ %491, %490 ], [ %198, %203 ]
  %206 = phi i32 [ %492, %490 ], [ %199, %203 ]
  %207 = phi i32 [ %493, %490 ], [ %200, %203 ]
  %208 = phi i32 [ %494, %490 ], [ %192, %203 ]
  %209 = or i32 %208, %201
  %210 = icmp ult i32 %209, 256
  br i1 %210, label %211, label %490, !dx.controlflow.hints !42

; <label>:211                                     ; preds = %204
  %212 = shl i32 %201, 8
  %213 = add i32 %208, %212
  %214 = and i32 %213, -4
  %215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %214, i32 undef)  ; BufferLoad(srv,index,wot)
  %216 = extractvalue %dx.types.ResRet.i32 %215, 0
  %217 = shl i32 %208, 3
  %218 = and i32 %217, 24
  %219 = lshr i32 %216, %218
  %220 = and i32 %219, 255
  %221 = shl i32 %213, 3
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.i32 %222, 0
  %224 = extractvalue %dx.types.ResRet.i32 %222, 1
  %225 = icmp ult i32 %220, 4
  br i1 %225, label %226, label %231, !dx.controlflow.hints !43

; <label>:226                                     ; preds = %211
  %227 = shl i32 %219, 3
  %228 = and i32 %227, 24
  %229 = shl i32 -1, %228
  %230 = or i32 %229, %223
  br label %238

; <label>:231                                     ; preds = %211
  %232 = icmp ult i32 %220, 8
  br i1 %232, label %233, label %238, !dx.controlflow.hints !44

; <label>:233                                     ; preds = %231
  %234 = shl i32 %219, 3
  %235 = and i32 %234, 24
  %236 = shl i32 -1, %235
  %237 = or i32 %236, %224
  br label %238

; <label>:238                                     ; preds = %233, %231, %226
  %239 = phi i32 [ %230, %226 ], [ %223, %233 ], [ %223, %231 ]
  %240 = phi i32 [ -1, %226 ], [ %237, %233 ], [ %224, %231 ]
  br label %241

; <label>:241                                     ; preds = %355, %238
  %242 = phi i32 [ %205, %238 ], [ %356, %355 ]
  %243 = phi i32 [ %206, %238 ], [ %357, %355 ]
  %244 = phi i32 [ %207, %238 ], [ %358, %355 ]
  %245 = phi i32 [ 0, %238 ], [ %359, %355 ]
  %246 = icmp ult i32 %245, %220
  br i1 %246, label %247, label %361, !dx.controlflow.hints !45

; <label>:247                                     ; preds = %241
  %248 = shl i32 %245, 3
  %249 = lshr i32 %239, %248
  %250 = and i32 %249, 255
  %251 = icmp eq i32 %250, 255
  br i1 %251, label %361, label %252, !dx.controlflow.hints !46

; <label>:252                                     ; preds = %247
  %253 = shl nuw nsw i32 %250, 8
  %254 = or i32 %253, %250
  %255 = shl nuw i32 %254, 16
  %256 = or i32 %255, %254
  %257 = xor i32 %256, %242
  %258 = xor i32 %256, %243
  %259 = and i32 %257, 255
  %260 = and i32 %257, 65280
  %261 = and i32 %257, 16711680
  %262 = and i32 %258, 255
  %263 = and i32 %258, 65280
  %264 = and i32 %258, 16711680
  %265 = icmp eq i32 %259, 0
  %266 = icmp eq i32 %260, 0
  %267 = icmp eq i32 %261, 0
  %268 = icmp ult i32 %257, 16777216
  %269 = or i1 %265, %266
  %270 = or i1 %267, %269
  %271 = or i1 %268, %270
  %272 = icmp eq i32 %262, 0
  %273 = icmp eq i32 %263, 0
  %274 = icmp eq i32 %264, 0
  %275 = icmp ult i32 %258, 16777216
  %276 = or i1 %272, %273
  %277 = or i1 %274, %276
  %278 = or i1 %275, %277
  %279 = or i1 %271, %278
  br i1 %279, label %355, label %280, !dx.controlflow.hints !47

; <label>:280                                     ; preds = %252
  %281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %250, i32 0)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.f32 %281, 0
  %283 = extractvalue %dx.types.ResRet.f32 %281, 1
  %284 = extractvalue %dx.types.ResRet.f32 %281, 2
  %285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %250, i32 16)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.f32 %285, 0
  %287 = extractvalue %dx.types.ResRet.f32 %285, 1
  %288 = extractvalue %dx.types.ResRet.f32 %285, 2
  %289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %250, i32 32)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.f32 %289, 0
  %291 = extractvalue %dx.types.ResRet.f32 %289, 1
  %292 = extractvalue %dx.types.ResRet.f32 %289, 2
  %293 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %250, i32 44)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.f32 %293, 0
  %295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %250, i32 48)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.f32 %295, 0
  %297 = extractvalue %dx.types.ResRet.f32 %295, 1
  %298 = extractvalue %dx.types.ResRet.f32 %295, 2
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %250, i32 60)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %250, i32 64)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.f32 %301, 0
  %303 = extractvalue %dx.types.ResRet.f32 %301, 1
  %304 = extractvalue %dx.types.ResRet.f32 %301, 2
  %305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %250, i32 76)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.f32 %305, 0
  %307 = extractvalue %dx.types.ResRet.f32 %305, 1
  %308 = extractvalue %dx.types.ResRet.f32 %305, 2
  %309 = and i32 %300, 16777216
  %310 = icmp ne i32 %309, 0
  %311 = fsub fast float %67, %296
  %312 = fsub fast float %68, %297
  %313 = fsub fast float %69, %298
  %314 = fmul fast float %311, %282
  %315 = call float @dx.op.tertiary.f32(i32 46, float %286, float %312, float %314)  ; FMad(a,b,c)
  %316 = call float @dx.op.tertiary.f32(i32 46, float %290, float %313, float %315)  ; FMad(a,b,c)
  %317 = fmul fast float %311, %283
  %318 = call float @dx.op.tertiary.f32(i32 46, float %287, float %312, float %317)  ; FMad(a,b,c)
  %319 = call float @dx.op.tertiary.f32(i32 46, float %291, float %313, float %318)  ; FMad(a,b,c)
  %320 = fmul fast float %311, %284
  %321 = call float @dx.op.tertiary.f32(i32 46, float %288, float %312, float %320)  ; FMad(a,b,c)
  %322 = call float @dx.op.tertiary.f32(i32 46, float %292, float %313, float %321)  ; FMad(a,b,c)
  %323 = fmul fast float %306, %294
  %324 = fmul fast float %307, %294
  %325 = fmul fast float %308, %294
  %326 = fadd fast float %323, %147
  %327 = fadd fast float %324, %147
  %328 = fadd fast float %325, %147
  %329 = fmul fast float %302, %294
  %330 = fmul fast float %303, %294
  %331 = fmul fast float %304, %294
  %332 = fsub fast float %329, %147
  %333 = fsub fast float %330, %147
  %334 = fsub fast float %331, %147
  %335 = fcmp fast olt float %316, %326
  %336 = fcmp fast olt float %319, %327
  %337 = fcmp fast olt float %322, %328
  %338 = and i1 %335, %336
  %339 = and i1 %338, %337
  %340 = fcmp fast ogt float %316, %332
  %341 = fcmp fast ogt float %319, %333
  %342 = fcmp fast ogt float %322, %334
  %343 = and i1 %340, %341
  %344 = and i1 %343, %342
  %345 = and i1 %339, %344
  %346 = and i1 %310, %345
  br i1 %346, label %347, label %355, !dx.controlflow.hints !48

; <label>:347                                     ; preds = %280
  %348 = shl i32 %243, 8
  %349 = lshr i32 %242, 24
  %350 = or i32 %348, %349
  %351 = shl i32 %242, 8
  %352 = or i32 %250, %351
  %353 = add i32 %244, 1
  %354 = icmp ugt i32 %353, 7
  br i1 %354, label %504, label %355, !dx.controlflow.hints !49

; <label>:355                                     ; preds = %347, %280, %252
  %356 = phi i32 [ %242, %252 ], [ %352, %347 ], [ %242, %280 ]
  %357 = phi i32 [ %243, %252 ], [ %350, %347 ], [ %243, %280 ]
  %358 = phi i32 [ %244, %252 ], [ %353, %347 ], [ %244, %280 ]
  %359 = add nuw nsw i32 %245, 1
  %360 = icmp ult i32 %359, 4
  br i1 %360, label %241, label %361

; <label>:361                                     ; preds = %355, %247, %241
  %362 = phi i32 [ %356, %355 ], [ %242, %241 ], [ %242, %247 ]
  %363 = phi i32 [ %357, %355 ], [ %243, %241 ], [ %243, %247 ]
  %364 = phi i32 [ %358, %355 ], [ %244, %241 ], [ %244, %247 ]
  br label %365

; <label>:365                                     ; preds = %480, %361
  %366 = phi i32 [ %481, %480 ], [ %362, %361 ]
  %367 = phi i32 [ %482, %480 ], [ %363, %361 ]
  %368 = phi i32 [ %483, %480 ], [ %364, %361 ]
  %369 = phi i32 [ %484, %480 ], [ 4, %361 ]
  %370 = icmp ult i32 %369, %220
  br i1 %370, label %371, label %486, !dx.controlflow.hints !50

; <label>:371                                     ; preds = %365
  %372 = shl i32 %369, 3
  %373 = and i32 %372, 24
  %374 = lshr i32 %240, %373
  %375 = and i32 %374, 255
  %376 = icmp eq i32 %375, 255
  br i1 %376, label %486, label %377, !dx.controlflow.hints !51

; <label>:377                                     ; preds = %371
  %378 = shl nuw nsw i32 %375, 8
  %379 = or i32 %378, %375
  %380 = shl nuw i32 %379, 16
  %381 = or i32 %380, %379
  %382 = xor i32 %381, %366
  %383 = xor i32 %381, %367
  %384 = and i32 %382, 255
  %385 = and i32 %382, 65280
  %386 = and i32 %382, 16711680
  %387 = and i32 %383, 255
  %388 = and i32 %383, 65280
  %389 = and i32 %383, 16711680
  %390 = icmp eq i32 %384, 0
  %391 = icmp eq i32 %385, 0
  %392 = icmp eq i32 %386, 0
  %393 = icmp ult i32 %382, 16777216
  %394 = or i1 %390, %391
  %395 = or i1 %392, %394
  %396 = or i1 %393, %395
  %397 = icmp eq i32 %387, 0
  %398 = icmp eq i32 %388, 0
  %399 = icmp eq i32 %389, 0
  %400 = icmp ult i32 %383, 16777216
  %401 = or i1 %397, %398
  %402 = or i1 %399, %401
  %403 = or i1 %400, %402
  %404 = or i1 %396, %403
  br i1 %404, label %480, label %405, !dx.controlflow.hints !52

; <label>:405                                     ; preds = %377
  %406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %375, i32 0)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.f32 %406, 0
  %408 = extractvalue %dx.types.ResRet.f32 %406, 1
  %409 = extractvalue %dx.types.ResRet.f32 %406, 2
  %410 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %375, i32 16)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.f32 %410, 0
  %412 = extractvalue %dx.types.ResRet.f32 %410, 1
  %413 = extractvalue %dx.types.ResRet.f32 %410, 2
  %414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %375, i32 32)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.f32 %414, 0
  %416 = extractvalue %dx.types.ResRet.f32 %414, 1
  %417 = extractvalue %dx.types.ResRet.f32 %414, 2
  %418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %375, i32 44)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.f32 %418, 0
  %420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %375, i32 48)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.f32 %420, 0
  %422 = extractvalue %dx.types.ResRet.f32 %420, 1
  %423 = extractvalue %dx.types.ResRet.f32 %420, 2
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %375, i32 60)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %375, i32 64)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.f32 %426, 0
  %428 = extractvalue %dx.types.ResRet.f32 %426, 1
  %429 = extractvalue %dx.types.ResRet.f32 %426, 2
  %430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %375, i32 76)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.f32 %430, 0
  %432 = extractvalue %dx.types.ResRet.f32 %430, 1
  %433 = extractvalue %dx.types.ResRet.f32 %430, 2
  %434 = and i32 %425, 16777216
  %435 = icmp ne i32 %434, 0
  %436 = fsub fast float %67, %421
  %437 = fsub fast float %68, %422
  %438 = fsub fast float %69, %423
  %439 = fmul fast float %436, %407
  %440 = call float @dx.op.tertiary.f32(i32 46, float %411, float %437, float %439)  ; FMad(a,b,c)
  %441 = call float @dx.op.tertiary.f32(i32 46, float %415, float %438, float %440)  ; FMad(a,b,c)
  %442 = fmul fast float %436, %408
  %443 = call float @dx.op.tertiary.f32(i32 46, float %412, float %437, float %442)  ; FMad(a,b,c)
  %444 = call float @dx.op.tertiary.f32(i32 46, float %416, float %438, float %443)  ; FMad(a,b,c)
  %445 = fmul fast float %436, %409
  %446 = call float @dx.op.tertiary.f32(i32 46, float %413, float %437, float %445)  ; FMad(a,b,c)
  %447 = call float @dx.op.tertiary.f32(i32 46, float %417, float %438, float %446)  ; FMad(a,b,c)
  %448 = fmul fast float %431, %419
  %449 = fmul fast float %432, %419
  %450 = fmul fast float %433, %419
  %451 = fadd fast float %448, %147
  %452 = fadd fast float %449, %147
  %453 = fadd fast float %450, %147
  %454 = fmul fast float %427, %419
  %455 = fmul fast float %428, %419
  %456 = fmul fast float %429, %419
  %457 = fsub fast float %454, %147
  %458 = fsub fast float %455, %147
  %459 = fsub fast float %456, %147
  %460 = fcmp fast olt float %441, %451
  %461 = fcmp fast olt float %444, %452
  %462 = fcmp fast olt float %447, %453
  %463 = and i1 %460, %461
  %464 = and i1 %463, %462
  %465 = fcmp fast ogt float %441, %457
  %466 = fcmp fast ogt float %444, %458
  %467 = fcmp fast ogt float %447, %459
  %468 = and i1 %465, %466
  %469 = and i1 %468, %467
  %470 = and i1 %464, %469
  %471 = and i1 %435, %470
  br i1 %471, label %472, label %480, !dx.controlflow.hints !53

; <label>:472                                     ; preds = %405
  %473 = shl i32 %367, 8
  %474 = lshr i32 %366, 24
  %475 = or i32 %473, %474
  %476 = shl i32 %366, 8
  %477 = or i32 %375, %476
  %478 = add i32 %368, 1
  %479 = icmp ugt i32 %478, 7
  br i1 %479, label %503, label %480, !dx.controlflow.hints !54

; <label>:480                                     ; preds = %472, %405, %377
  %481 = phi i32 [ %366, %377 ], [ %477, %472 ], [ %366, %405 ]
  %482 = phi i32 [ %367, %377 ], [ %475, %472 ], [ %367, %405 ]
  %483 = phi i32 [ %368, %377 ], [ %478, %472 ], [ %368, %405 ]
  %484 = add nuw nsw i32 %369, 1
  %485 = icmp ult i32 %484, 8
  br i1 %485, label %365, label %486

; <label>:486                                     ; preds = %480, %371, %365
  %487 = phi i32 [ %366, %371 ], [ %366, %365 ], [ %481, %480 ]
  %488 = phi i32 [ %367, %371 ], [ %367, %365 ], [ %482, %480 ]
  %489 = phi i32 [ %368, %371 ], [ %368, %365 ], [ %483, %480 ]
  br label %490

; <label>:490                                     ; preds = %486, %204
  %491 = phi i32 [ %205, %204 ], [ %487, %486 ]
  %492 = phi i32 [ %206, %204 ], [ %488, %486 ]
  %493 = phi i32 [ %207, %204 ], [ %489, %486 ]
  %494 = add nuw nsw i32 %208, 1
  %495 = icmp ugt i32 %494, %194
  br i1 %495, label %496, label %204

; <label>:496                                     ; preds = %490
  br label %497

; <label>:497                                     ; preds = %496, %197
  %498 = phi i32 [ %198, %197 ], [ %491, %496 ]
  %499 = phi i32 [ %199, %197 ], [ %492, %496 ]
  %500 = phi i32 [ %200, %197 ], [ %493, %496 ]
  %501 = add nuw nsw i32 %201, 1
  %502 = icmp ugt i32 %501, %193
  br i1 %502, label %505, label %197

; <label>:503                                     ; preds = %472
  br label %506

; <label>:504                                     ; preds = %347
  br label %506

; <label>:505                                     ; preds = %497
  br label %506

; <label>:506                                     ; preds = %505, %504, %503, %170, %83
  %507 = phi i32 [ 0, %83 ], [ -1, %170 ], [ %477, %503 ], [ %352, %504 ], [ %498, %505 ]
  %508 = phi i32 [ 0, %83 ], [ -1, %170 ], [ %475, %503 ], [ %350, %504 ], [ %499, %505 ]
  %509 = phi i32 [ 0, %83 ], [ 0, %170 ], [ %478, %503 ], [ %353, %504 ], [ %500, %505 ]
  %510 = sub i32 %81, %79
  %511 = add i32 %510, %56
  %512 = icmp slt i32 %511, 0
  %513 = select i1 %512, i32 %161, i32 %163
  %514 = select i1 %512, i32 %56, i32 %511
  %515 = add i32 %513, %514
  %516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %515, i32 0)  ; BufferLoad(srv,index,wot)
  %517 = extractvalue %dx.types.ResRet.i32 %516, 0
  %518 = extractvalue %dx.types.ResRet.i32 %516, 1
  %519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %515, i32 8)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.i32 %519, 0
  %521 = extractvalue %dx.types.ResRet.i32 %519, 1
  %522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %515, i32 16)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.i32 %522, 0
  %524 = and i32 %517, -2048
  %525 = bitcast i32 %524 to float
  %526 = shl i32 %517, 21
  %527 = lshr i32 %518, 11
  %528 = and i32 %527, 2095104
  %529 = or i32 %528, %526
  %530 = bitcast i32 %529 to float
  %531 = shl i32 %518, 10
  %532 = and i32 %531, -2048
  %533 = bitcast i32 %532 to float
  %534 = and i32 %91, 4194304
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %536, label %544, !dx.controlflow.hints !55

; <label>:536                                     ; preds = %506
  %537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %538 = extractvalue %dx.types.CBufRet.f32 %537, 0
  %539 = extractvalue %dx.types.CBufRet.f32 %537, 1
  %540 = extractvalue %dx.types.CBufRet.f32 %537, 2
  %541 = fadd fast float %538, %525
  %542 = fadd fast float %539, %530
  %543 = fadd fast float %540, %533
  br label %544

; <label>:544                                     ; preds = %536, %506
  %545 = phi float [ %525, %506 ], [ %541, %536 ]
  %546 = phi float [ %530, %506 ], [ %542, %536 ]
  %547 = phi float [ %533, %506 ], [ %543, %536 ]
  %548 = and i32 %518, 1
  %549 = lshr i32 %520, 16
  %550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %549)  ; LegacyF16ToF32(value)
  %551 = and i32 %521, 65535
  %552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %551)  ; LegacyF16ToF32(value)
  %553 = lshr i32 %521, 16
  %554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %553)  ; LegacyF16ToF32(value)
  %555 = and i32 %520, 65535
  %556 = uitofp i32 %555 to float
  %557 = fmul fast float %556, 0x3EF0001000000000
  %558 = and i32 %523, 65535
  %559 = lshr i32 %523, 16
  %560 = shl nuw nsw i32 %559, 7
  %561 = and i32 %560, 65408
  %562 = xor i32 %561, %559
  %563 = lshr i32 %562, 9
  %564 = xor i32 %563, %562
  %565 = shl nuw nsw i32 %564, 8
  %566 = and i32 %565, 65280
  %567 = xor i32 %566, %564
  %568 = uitofp i32 %567 to float
  %569 = fmul fast float %151, 0x3EF0001000000000
  %570 = fmul fast float %569, %568
  %571 = fadd fast float %570, %149
  br i1 %535, label %636, label %572, !dx.controlflow.hints !56

; <label>:572                                     ; preds = %544
  %573 = fmul fast float %547, %63
  %574 = fmul fast float %546, %64
  %575 = fsub fast float %573, %574
  %576 = fmul fast float %545, %64
  %577 = fmul fast float %547, %62
  %578 = fsub fast float %576, %577
  %579 = fmul fast float %546, %62
  %580 = fmul fast float %545, %63
  %581 = fsub fast float %579, %580
  %582 = fmul fast float %575, 2.000000e+00
  %583 = fmul fast float %578, 2.000000e+00
  %584 = fmul fast float %581, 2.000000e+00
  %585 = fmul fast float %582, %65
  %586 = fmul fast float %583, %65
  %587 = fmul fast float %584, %65
  %588 = fmul fast float %584, %63
  %589 = fmul fast float %583, %64
  %590 = fmul fast float %582, %64
  %591 = fmul fast float %584, %62
  %592 = fmul fast float %583, %62
  %593 = fmul fast float %582, %63
  %594 = fadd fast float %545, %67
  %595 = fadd fast float %594, %588
  %596 = fadd fast float %595, %585
  %597 = fsub fast float %596, %589
  %598 = fadd fast float %546, %68
  %599 = fsub fast float %598, %591
  %600 = fadd fast float %599, %586
  %601 = fadd fast float %600, %590
  %602 = fadd fast float %547, %69
  %603 = fadd fast float %602, %587
  %604 = fsub fast float %603, %593
  %605 = fadd fast float %604, %592
  %606 = fmul fast float %554, %63
  %607 = fmul fast float %552, %64
  %608 = fsub fast float %606, %607
  %609 = fmul fast float %550, %64
  %610 = fmul fast float %554, %62
  %611 = fsub fast float %609, %610
  %612 = fmul fast float %552, %62
  %613 = fmul fast float %550, %63
  %614 = fsub fast float %612, %613
  %615 = fmul fast float %608, 2.000000e+00
  %616 = fmul fast float %611, 2.000000e+00
  %617 = fmul fast float %614, 2.000000e+00
  %618 = fmul fast float %615, %65
  %619 = fmul fast float %616, %65
  %620 = fmul fast float %617, %65
  %621 = fmul fast float %617, %63
  %622 = fmul fast float %616, %64
  %623 = fmul fast float %615, %64
  %624 = fmul fast float %617, %62
  %625 = fmul fast float %616, %62
  %626 = fmul fast float %615, %63
  %627 = fadd fast float %621, %550
  %628 = fadd fast float %627, %618
  %629 = fsub fast float %628, %622
  %630 = fsub fast float %552, %624
  %631 = fadd fast float %630, %619
  %632 = fadd fast float %631, %623
  %633 = fadd fast float %620, %554
  %634 = fsub fast float %633, %626
  %635 = fadd fast float %634, %625
  br label %636

; <label>:636                                     ; preds = %572, %544
  %637 = phi float [ %629, %572 ], [ %550, %544 ]
  %638 = phi float [ %632, %572 ], [ %552, %544 ]
  %639 = phi float [ %635, %572 ], [ %554, %544 ]
  %640 = phi float [ %597, %572 ], [ %545, %544 ]
  %641 = phi float [ %601, %572 ], [ %546, %544 ]
  %642 = phi float [ %605, %572 ], [ %547, %544 ]
  %643 = sitofp i32 %511 to float
  %644 = fmul fast float %643, %73
  %645 = call float @dx.op.unary.f32(i32 27, float %644)  ; Round_ni(value)
  %646 = fptoui float %645 to i32
  %647 = select i1 %512, i32 0, i32 %646
  %648 = fcmp fast une float %571, 0.000000e+00
  %649 = fdiv fast float %71, %571
  %650 = select i1 %648, float %649, float 0.000000e+00
  %651 = and i32 %91, 4
  %652 = icmp ne i32 %651, 0
  %653 = fdiv fast float %103, %571
  %654 = select i1 %648, float %653, float 0.000000e+00
  %655 = select i1 %652, float %103, float %654
  %656 = and i32 %91, 2048
  %657 = icmp ne i32 %656, 0
  %658 = icmp ult i32 %647, %75
  br i1 %658, label %659, label %2647

; <label>:659                                     ; preds = %636
  %660 = and i32 %91, 16777217
  %661 = icmp eq i32 %660, 16777216
  %662 = fmul fast float %571, %557
  %663 = select i1 %661, float 0.000000e+00, float %662
  br label %664

; <label>:664                                     ; preds = %2548, %659
  %665 = phi i32 [ %696, %2548 ], [ %558, %659 ]
  %666 = phi i32 [ %2549, %2548 ], [ %548, %659 ]
  %667 = phi float [ %2550, %2548 ], [ %637, %659 ]
  %668 = phi float [ %2551, %2548 ], [ %638, %659 ]
  %669 = phi float [ %2552, %2548 ], [ %639, %659 ]
  %670 = phi float [ %2553, %2548 ], [ %557, %659 ]
  %671 = phi float [ %2554, %2548 ], [ %640, %659 ]
  %672 = phi float [ %2555, %2548 ], [ %641, %659 ]
  %673 = phi float [ %2556, %2548 ], [ %642, %659 ]
  %674 = phi i32 [ %2557, %2548 ], [ 1, %659 ]
  %675 = phi i32 [ %677, %2548 ], [ %647, %659 ]
  %676 = phi float [ %679, %2548 ], [ %663, %659 ]
  %677 = add nuw i32 %675, 1
  %678 = fadd fast float %670, %650
  %679 = fadd fast float %676, %71
  %680 = fcmp fast ult float %678, 1.000000e+00
  br i1 %680, label %695, label %681, !dx.controlflow.hints !57

; <label>:681                                     ; preds = %664
  %682 = and i32 %91, 1
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %695, label %684, !dx.controlflow.hints !58

; <label>:684                                     ; preds = %681
  %685 = shl i32 %665, 7
  %686 = and i32 %685, 65408
  %687 = and i32 %665, 65535
  %688 = xor i32 %686, %687
  %689 = lshr i32 %688, 9
  %690 = xor i32 %689, %688
  %691 = shl nuw nsw i32 %690, 8
  %692 = and i32 %691, 65280
  %693 = xor i32 %692, %690
  %694 = call float @dx.op.unary.f32(i32 22, float %678)  ; Frc(value)
  br label %695

; <label>:695                                     ; preds = %684, %681, %664
  %696 = phi i32 [ %693, %684 ], [ %665, %664 ], [ %665, %681 ]
  %697 = phi float [ %694, %684 ], [ %678, %664 ], [ %678, %681 ]
  %698 = phi i32 [ %674, %684 ], [ %674, %664 ], [ 0, %681 ]
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %2548, label %700, !dx.controlflow.hints !59

; <label>:700                                     ; preds = %695
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = and i32 %702, 65535
  %704 = lshr i32 %702, 16
  %705 = call float @dx.op.unary.f32(i32 7, float %697)  ; Saturate(value)
  %706 = uitofp i32 %703 to float
  %707 = fmul fast float %706, %705
  %708 = add nsw i32 %703, -1
  %709 = call float @dx.op.unary.f32(i32 27, float %707)  ; Round_ni(value)
  %710 = fptosi float %709 to i32
  %711 = call i32 @dx.op.binary.i32(i32 38, i32 %710, i32 %708)  ; IMin(a,b)
  %712 = uitofp i32 %711 to float
  %713 = fsub fast float %707, %712
  %714 = shl i32 %711, 1
  %715 = mul i32 %711, 96
  %716 = add i32 %715, %704
  %717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %718 = extractvalue %dx.types.ResRet.i32 %717, 0
  %719 = extractvalue %dx.types.ResRet.i32 %717, 1
  %720 = add i32 %716, 8
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = extractvalue %dx.types.ResRet.i32 %721, 1
  %724 = add i32 %716, 16
  %725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %724, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.i32 %725, 0
  %727 = add i32 %716, 20
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = and i32 %729, 65535
  %731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %730)  ; LegacyF16ToF32(value)
  %732 = lshr i32 %729, 16
  %733 = call float @dx.op.legacyF16ToF32(i32 131, i32 %732)  ; LegacyF16ToF32(value)
  %734 = and i32 %726, 65535
  %735 = call float @dx.op.legacyF16ToF32(i32 131, i32 %734)  ; LegacyF16ToF32(value)
  %736 = lshr i32 %726, 16
  %737 = call float @dx.op.legacyF16ToF32(i32 131, i32 %736)  ; LegacyF16ToF32(value)
  %738 = and i32 %718, 65535
  %739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %738)  ; LegacyF16ToF32(value)
  %740 = lshr i32 %718, 16
  %741 = call float @dx.op.legacyF16ToF32(i32 131, i32 %740)  ; LegacyF16ToF32(value)
  %742 = and i32 %719, 65535
  %743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %742)  ; LegacyF16ToF32(value)
  %744 = and i32 %722, 65535
  %745 = call float @dx.op.legacyF16ToF32(i32 131, i32 %744)  ; LegacyF16ToF32(value)
  %746 = lshr i32 %722, 16
  %747 = call float @dx.op.legacyF16ToF32(i32 131, i32 %746)  ; LegacyF16ToF32(value)
  %748 = and i32 %723, 65535
  %749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %748)  ; LegacyF16ToF32(value)
  %750 = lshr i32 %723, 16
  %751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %750)  ; LegacyF16ToF32(value)
  %752 = or i32 %714, 1
  %753 = mul i32 %752, 48
  %754 = add i32 %753, %704
  %755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %754, i32 undef)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.i32 %755, 0
  %757 = extractvalue %dx.types.ResRet.i32 %755, 1
  %758 = add i32 %754, 8
  %759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %758, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.i32 %759, 0
  %761 = extractvalue %dx.types.ResRet.i32 %759, 1
  %762 = add i32 %754, 16
  %763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %762, i32 undef)  ; BufferLoad(srv,index,wot)
  %764 = extractvalue %dx.types.ResRet.i32 %763, 0
  %765 = add i32 %754, 20
  %766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %765, i32 undef)  ; BufferLoad(srv,index,wot)
  %767 = extractvalue %dx.types.ResRet.i32 %766, 0
  %768 = and i32 %767, 65535
  %769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %768)  ; LegacyF16ToF32(value)
  %770 = lshr i32 %767, 16
  %771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %770)  ; LegacyF16ToF32(value)
  %772 = and i32 %764, 65535
  %773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %772)  ; LegacyF16ToF32(value)
  %774 = lshr i32 %764, 16
  %775 = call float @dx.op.legacyF16ToF32(i32 131, i32 %774)  ; LegacyF16ToF32(value)
  %776 = and i32 %756, 65535
  %777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %776)  ; LegacyF16ToF32(value)
  %778 = lshr i32 %756, 16
  %779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %778)  ; LegacyF16ToF32(value)
  %780 = and i32 %757, 65535
  %781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %780)  ; LegacyF16ToF32(value)
  %782 = and i32 %760, 65535
  %783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %782)  ; LegacyF16ToF32(value)
  %784 = lshr i32 %760, 16
  %785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %784)  ; LegacyF16ToF32(value)
  %786 = and i32 %761, 65535
  %787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %786)  ; LegacyF16ToF32(value)
  %788 = lshr i32 %761, 16
  %789 = call float @dx.op.legacyF16ToF32(i32 131, i32 %788)  ; LegacyF16ToF32(value)
  %790 = add nuw nsw i32 %704, 96
  %791 = add i32 %790, %715
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %791, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = extractvalue %dx.types.ResRet.i32 %792, 1
  %795 = add i32 %791, 8
  %796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %795, i32 undef)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.i32 %796, 0
  %798 = extractvalue %dx.types.ResRet.i32 %796, 1
  %799 = add i32 %791, 16
  %800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %799, i32 undef)  ; BufferLoad(srv,index,wot)
  %801 = extractvalue %dx.types.ResRet.i32 %800, 0
  %802 = add i32 %791, 20
  %803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %804 = extractvalue %dx.types.ResRet.i32 %803, 0
  %805 = and i32 %804, 65535
  %806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %805)  ; LegacyF16ToF32(value)
  %807 = lshr i32 %804, 16
  %808 = call float @dx.op.legacyF16ToF32(i32 131, i32 %807)  ; LegacyF16ToF32(value)
  %809 = and i32 %801, 65535
  %810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %809)  ; LegacyF16ToF32(value)
  %811 = lshr i32 %801, 16
  %812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %811)  ; LegacyF16ToF32(value)
  %813 = and i32 %793, 65535
  %814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %813)  ; LegacyF16ToF32(value)
  %815 = lshr i32 %793, 16
  %816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %815)  ; LegacyF16ToF32(value)
  %817 = and i32 %794, 65535
  %818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %817)  ; LegacyF16ToF32(value)
  %819 = and i32 %797, 65535
  %820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %819)  ; LegacyF16ToF32(value)
  %821 = lshr i32 %797, 16
  %822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %821)  ; LegacyF16ToF32(value)
  %823 = and i32 %798, 65535
  %824 = call float @dx.op.legacyF16ToF32(i32 131, i32 %823)  ; LegacyF16ToF32(value)
  %825 = lshr i32 %798, 16
  %826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %825)  ; LegacyF16ToF32(value)
  %827 = add nuw nsw i32 %704, 144
  %828 = add i32 %827, %715
  %829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %828, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.i32 %829, 0
  %831 = extractvalue %dx.types.ResRet.i32 %829, 1
  %832 = add i32 %828, 8
  %833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.i32 %833, 0
  %835 = extractvalue %dx.types.ResRet.i32 %833, 1
  %836 = add i32 %828, 16
  %837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %836, i32 undef)  ; BufferLoad(srv,index,wot)
  %838 = extractvalue %dx.types.ResRet.i32 %837, 0
  %839 = add i32 %828, 20
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %839, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = and i32 %841, 65535
  %843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %842)  ; LegacyF16ToF32(value)
  %844 = lshr i32 %841, 16
  %845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %844)  ; LegacyF16ToF32(value)
  %846 = and i32 %838, 65535
  %847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %846)  ; LegacyF16ToF32(value)
  %848 = lshr i32 %838, 16
  %849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %848)  ; LegacyF16ToF32(value)
  %850 = and i32 %830, 65535
  %851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %850)  ; LegacyF16ToF32(value)
  %852 = lshr i32 %830, 16
  %853 = call float @dx.op.legacyF16ToF32(i32 131, i32 %852)  ; LegacyF16ToF32(value)
  %854 = and i32 %831, 65535
  %855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %854)  ; LegacyF16ToF32(value)
  %856 = and i32 %834, 65535
  %857 = call float @dx.op.legacyF16ToF32(i32 131, i32 %856)  ; LegacyF16ToF32(value)
  %858 = lshr i32 %834, 16
  %859 = call float @dx.op.legacyF16ToF32(i32 131, i32 %858)  ; LegacyF16ToF32(value)
  %860 = and i32 %835, 65535
  %861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %860)  ; LegacyF16ToF32(value)
  %862 = lshr i32 %835, 16
  %863 = call float @dx.op.legacyF16ToF32(i32 131, i32 %862)  ; LegacyF16ToF32(value)
  %864 = shl i32 %696, 7
  %865 = and i32 %864, 65408
  %866 = and i32 %696, 65535
  %867 = xor i32 %865, %866
  %868 = lshr i32 %867, 9
  %869 = xor i32 %868, %867
  %870 = shl nuw nsw i32 %869, 8
  %871 = and i32 %870, 65280
  %872 = xor i32 %871, %869
  %873 = uitofp i32 %872 to float
  %874 = fmul fast float %873, 0x3EF0001000000000
  %875 = shl nuw nsw i32 %872, 7
  %876 = and i32 %875, 65408
  %877 = xor i32 %876, %872
  %878 = lshr i32 %877, 9
  %879 = and i32 %878, 65535
  %880 = xor i32 %879, %877
  %881 = shl nuw nsw i32 %880, 8
  %882 = xor i32 %881, %880
  %883 = and i32 %882, 65535
  %884 = uitofp i32 %883 to float
  %885 = fmul fast float %884, 0x3EF0001000000000
  %886 = shl nuw nsw i32 %883, 7
  %887 = xor i32 %886, %882
  %888 = lshr i32 %887, 9
  %889 = and i32 %888, 127
  %890 = and i32 %887, 65535
  %891 = xor i32 %889, %890
  %892 = shl nuw nsw i32 %891, 8
  %893 = and i32 %892, 65280
  %894 = xor i32 %893, %891
  %895 = uitofp i32 %894 to float
  %896 = fmul fast float %895, 0x3EF0001000000000
  %897 = shl nuw nsw i32 %894, 7
  %898 = and i32 %897, 65408
  %899 = xor i32 %898, %894
  %900 = lshr i32 %899, 9
  %901 = xor i32 %900, %899
  %902 = shl nuw nsw i32 %901, 8
  %903 = and i32 %902, 65280
  %904 = xor i32 %903, %901
  %905 = shl nuw nsw i32 %904, 7
  %906 = xor i32 %905, %904
  %907 = lshr i32 %906, 9
  %908 = and i32 %907, 127
  %909 = and i32 %906, 65535
  %910 = xor i32 %908, %909
  %911 = shl nuw nsw i32 %910, 8
  %912 = and i32 %911, 65280
  %913 = xor i32 %912, %910
  %914 = uitofp i32 %913 to float
  %915 = fmul fast float %117, 0x3EF0001000000000
  %916 = fmul fast float %915, %914
  %917 = fadd fast float %916, %115
  %918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %919 = extractvalue %dx.types.CBufRet.f32 %918, 0
  %920 = extractvalue %dx.types.CBufRet.f32 %918, 1
  %921 = extractvalue %dx.types.CBufRet.f32 %918, 2
  %922 = fmul fast float %919, %917
  %923 = fmul fast float %920, %917
  %924 = fmul fast float %921, %917
  %925 = shl nuw nsw i32 %913, 7
  %926 = and i32 %925, 65408
  %927 = xor i32 %926, %913
  %928 = lshr i32 %927, 9
  %929 = xor i32 %928, %927
  %930 = shl nuw nsw i32 %929, 8
  %931 = and i32 %930, 65280
  %932 = xor i32 %931, %929
  %933 = uitofp i32 %932 to float
  %934 = fmul fast float %933, 0x3EF0001000000000
  %935 = fmul fast float %775, %934
  %936 = fadd fast float %935, %737
  %937 = fmul fast float %849, %934
  %938 = fsub fast float %812, %936
  %939 = fadd fast float %938, %937
  %940 = fmul fast float %939, %713
  %941 = fadd fast float %940, %936
  %942 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %943 = extractvalue %dx.types.CBufRet.i32 %942, 1
  %944 = icmp ne i32 %943, 0
  %945 = and i1 %165, %944
  %946 = icmp ne i32 %509, 0
  %947 = and i1 %946, %945
  br i1 %947, label %948, label %1659, !dx.controlflow.hints !60

; <label>:948                                     ; preds = %700
  br label %949

; <label>:949                                     ; preds = %1283, %948
  %950 = phi float [ %1287, %1283 ], [ 0.000000e+00, %948 ]
  %951 = phi float [ %1288, %1283 ], [ 0.000000e+00, %948 ]
  %952 = phi float [ %1289, %1283 ], [ 0.000000e+00, %948 ]
  %953 = phi i32 [ %1290, %1283 ], [ 0, %948 ]
  %954 = icmp ult i32 %953, %509
  br i1 %954, label %955, label %1292, !dx.controlflow.hints !61

; <label>:955                                     ; preds = %949
  %956 = shl i32 %953, 3
  %957 = lshr i32 %507, %956
  %958 = and i32 %957, 255
  %959 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %958, i32 0)  ; BufferLoad(srv,index,wot)
  %960 = extractvalue %dx.types.ResRet.f32 %959, 0
  %961 = extractvalue %dx.types.ResRet.f32 %959, 1
  %962 = extractvalue %dx.types.ResRet.f32 %959, 2
  %963 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %958, i32 12)  ; BufferLoad(srv,index,wot)
  %964 = extractvalue %dx.types.ResRet.f32 %963, 0
  %965 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %958, i32 16)  ; BufferLoad(srv,index,wot)
  %966 = extractvalue %dx.types.ResRet.f32 %965, 0
  %967 = extractvalue %dx.types.ResRet.f32 %965, 1
  %968 = extractvalue %dx.types.ResRet.f32 %965, 2
  %969 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %958, i32 32)  ; BufferLoad(srv,index,wot)
  %970 = extractvalue %dx.types.ResRet.f32 %969, 0
  %971 = extractvalue %dx.types.ResRet.f32 %969, 1
  %972 = extractvalue %dx.types.ResRet.f32 %969, 2
  %973 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %958, i32 44)  ; BufferLoad(srv,index,wot)
  %974 = extractvalue %dx.types.ResRet.f32 %973, 0
  %975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %958, i32 48)  ; BufferLoad(srv,index,wot)
  %976 = extractvalue %dx.types.ResRet.f32 %975, 0
  %977 = extractvalue %dx.types.ResRet.f32 %975, 1
  %978 = extractvalue %dx.types.ResRet.f32 %975, 2
  %979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %958, i32 60)  ; BufferLoad(srv,index,wot)
  %980 = extractvalue %dx.types.ResRet.i32 %979, 0
  %981 = and i32 %980, 4095
  %982 = icmp eq i32 %981, 0
  br i1 %982, label %1283, label %983

; <label>:983                                     ; preds = %955
  %984 = and i32 %980, 4095
  br label %985

; <label>:985                                     ; preds = %1276, %983
  %986 = phi float [ %1277, %1276 ], [ 0.000000e+00, %983 ]
  %987 = phi float [ %1278, %1276 ], [ 0.000000e+00, %983 ]
  %988 = phi float [ %1279, %1276 ], [ 0.000000e+00, %983 ]
  %989 = phi i32 [ %1280, %1276 ], [ 0, %983 ]
  %990 = lshr i32 %980, 12
  %991 = and i32 %990, 4095
  %992 = add nuw nsw i32 %989, %991
  %993 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %992, i32 0)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.f32 %993, 0
  %995 = extractvalue %dx.types.ResRet.f32 %993, 1
  %996 = extractvalue %dx.types.ResRet.f32 %993, 2
  %997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %992, i32 12)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.i32 %997, 0
  %999 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %992, i32 16)  ; BufferLoad(srv,index,wot)
  %1000 = extractvalue %dx.types.ResRet.f32 %999, 0
  %1001 = extractvalue %dx.types.ResRet.f32 %999, 1
  %1002 = extractvalue %dx.types.ResRet.f32 %999, 2
  %1003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %992, i32 28)  ; BufferLoad(srv,index,wot)
  %1004 = extractvalue %dx.types.ResRet.i32 %1003, 0
  %1005 = icmp slt i32 %1004, 0
  %1006 = fsub fast float %671, %976
  %1007 = fsub fast float %672, %977
  %1008 = fsub fast float %673, %978
  %1009 = fmul fast float %1006, %960
  %1010 = call float @dx.op.tertiary.f32(i32 46, float %961, float %1007, float %1009)  ; FMad(a,b,c)
  %1011 = call float @dx.op.tertiary.f32(i32 46, float %962, float %1008, float %1010)  ; FMad(a,b,c)
  %1012 = fmul fast float %1006, %966
  %1013 = call float @dx.op.tertiary.f32(i32 46, float %967, float %1007, float %1012)  ; FMad(a,b,c)
  %1014 = call float @dx.op.tertiary.f32(i32 46, float %968, float %1008, float %1013)  ; FMad(a,b,c)
  %1015 = fmul fast float %1006, %970
  %1016 = call float @dx.op.tertiary.f32(i32 46, float %971, float %1007, float %1015)  ; FMad(a,b,c)
  %1017 = call float @dx.op.tertiary.f32(i32 46, float %972, float %1008, float %1016)  ; FMad(a,b,c)
  %1018 = fmul fast float %994, %974
  %1019 = fmul fast float %995, %974
  %1020 = fmul fast float %996, %974
  %1021 = fmul fast float %1018, 5.000000e-01
  %1022 = fmul fast float %1019, 5.000000e-01
  %1023 = fmul fast float %1020, 5.000000e-01
  %1024 = fadd fast float %1021, 0xBF50624DE0000000
  %1025 = fadd fast float %1022, 0xBF50624DE0000000
  %1026 = fadd fast float %1023, 0xBF50624DE0000000
  %1027 = fcmp fast ogt float %1011, %1024
  %1028 = fcmp fast ogt float %1014, %1025
  %1029 = fcmp fast ogt float %1017, %1026
  %1030 = or i1 %1027, %1028
  %1031 = or i1 %1030, %1029
  br i1 %1005, label %1032, label %1059, !dx.controlflow.hints !62

; <label>:1032                                    ; preds = %985
  %1033 = fsub fast float 0x3F50624DE0000000, %1021
  %1034 = fsub fast float 0x3F50624DE0000000, %1022
  %1035 = fsub fast float 0x3F50624DE0000000, %1023
  %1036 = fcmp fast olt float %1011, %1033
  %1037 = fcmp fast olt float %1014, %1034
  %1038 = fcmp fast olt float %1017, %1035
  %1039 = or i1 %1036, %1037
  %1040 = or i1 %1039, %1038
  %1041 = or i1 %1031, %1040
  br i1 %1041, label %1261, label %1042, !dx.controlflow.hints !63

; <label>:1042                                    ; preds = %1032
  %1043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %998, i32 0)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.i32 %1043, 0
  %1045 = extractvalue %dx.types.ResRet.i32 %1043, 1
  %1046 = extractvalue %dx.types.ResRet.i32 %1043, 2
  %1047 = bitcast i32 %1044 to float
  %1048 = bitcast i32 %1045 to float
  %1049 = bitcast i32 %1046 to float
  %1050 = fmul fast float %1047, %960
  %1051 = call float @dx.op.tertiary.f32(i32 46, float %966, float %1048, float %1050)  ; FMad(a,b,c)
  %1052 = call float @dx.op.tertiary.f32(i32 46, float %970, float %1049, float %1051)  ; FMad(a,b,c)
  %1053 = fmul fast float %1047, %961
  %1054 = call float @dx.op.tertiary.f32(i32 46, float %967, float %1048, float %1053)  ; FMad(a,b,c)
  %1055 = call float @dx.op.tertiary.f32(i32 46, float %971, float %1049, float %1054)  ; FMad(a,b,c)
  %1056 = fmul fast float %1047, %962
  %1057 = call float @dx.op.tertiary.f32(i32 46, float %968, float %1048, float %1056)  ; FMad(a,b,c)
  %1058 = call float @dx.op.tertiary.f32(i32 46, float %972, float %1049, float %1057)  ; FMad(a,b,c)
  br label %1261

; <label>:1059                                    ; preds = %985
  %1060 = fmul fast float %1018, -5.000000e-01
  %1061 = fmul fast float %1019, -5.000000e-01
  %1062 = fmul fast float %1020, -5.000000e-01
  %1063 = fadd fast float %1060, 0x3F50624DE0000000
  %1064 = fadd fast float %1061, 0x3F50624DE0000000
  %1065 = fadd fast float %1062, 0x3F50624DE0000000
  %1066 = fcmp fast olt float %1011, %1063
  %1067 = fcmp fast olt float %1014, %1064
  %1068 = fcmp fast olt float %1017, %1065
  %1069 = or i1 %1066, %1067
  %1070 = or i1 %1069, %1068
  %1071 = or i1 %1031, %1070
  br i1 %1071, label %1261, label %1072, !dx.controlflow.hints !63

; <label>:1072                                    ; preds = %1059
  %1073 = and i32 %1004, 1023
  %1074 = lshr i32 %1004, 10
  %1075 = and i32 %1074, 1023
  %1076 = lshr i32 %1004, 20
  %1077 = and i32 %1076, 1023
  %1078 = add nuw nsw i32 %1073, 1
  %1079 = add nuw nsw i32 %1075, 1
  %1080 = fsub fast float %1011, %1060
  %1081 = fsub fast float %1014, %1061
  %1082 = fsub fast float %1017, %1062
  %1083 = fmul fast float %1000, %974
  %1084 = fmul fast float %1001, %974
  %1085 = fmul fast float %1002, %974
  %1086 = fdiv fast float 1.000000e+00, %1083
  %1087 = fdiv fast float 1.000000e+00, %1084
  %1088 = fdiv fast float 1.000000e+00, %1085
  %1089 = fmul fast float %1086, %1080
  %1090 = fmul fast float %1087, %1081
  %1091 = fmul fast float %1088, %1082
  %1092 = call float @dx.op.unary.f32(i32 27, float %1089)  ; Round_ni(value)
  %1093 = call float @dx.op.unary.f32(i32 27, float %1090)  ; Round_ni(value)
  %1094 = call float @dx.op.unary.f32(i32 27, float %1091)  ; Round_ni(value)
  %1095 = fptosi float %1092 to i32
  %1096 = fptosi float %1093 to i32
  %1097 = fptosi float %1094 to i32
  %1098 = call i32 @dx.op.binary.i32(i32 37, i32 %1095, i32 0)  ; IMax(a,b)
  %1099 = call i32 @dx.op.binary.i32(i32 37, i32 %1096, i32 0)  ; IMax(a,b)
  %1100 = call i32 @dx.op.binary.i32(i32 37, i32 %1097, i32 0)  ; IMax(a,b)
  %1101 = call i32 @dx.op.binary.i32(i32 38, i32 %1098, i32 %1073)  ; IMin(a,b)
  %1102 = call i32 @dx.op.binary.i32(i32 38, i32 %1099, i32 %1075)  ; IMin(a,b)
  %1103 = call i32 @dx.op.binary.i32(i32 38, i32 %1100, i32 %1077)  ; IMin(a,b)
  %1104 = call float @dx.op.unary.f32(i32 22, float %1089)  ; Frc(value)
  %1105 = call float @dx.op.unary.f32(i32 22, float %1090)  ; Frc(value)
  %1106 = call float @dx.op.unary.f32(i32 22, float %1091)  ; Frc(value)
  %1107 = fsub fast float 1.000000e+00, %1105
  %1108 = fsub fast float 1.000000e+00, %1106
  %1109 = fmul fast float %1108, %1107
  %1110 = fmul fast float %1107, %1106
  %1111 = fmul fast float %1108, %1105
  %1112 = fmul fast float %1106, %1105
  %1113 = fsub fast float 1.000000e+00, %1104
  %1114 = fmul fast float %1109, %1113
  %1115 = fmul fast float %1110, %1113
  %1116 = fmul fast float %1111, %1113
  %1117 = fmul fast float %1112, %1113
  %1118 = fmul fast float %1109, %1104
  %1119 = fmul fast float %1110, %1104
  %1120 = fmul fast float %1111, %1104
  %1121 = fmul fast float %1112, %1104
  %1122 = call i32 @dx.op.binary.i32(i32 40, i32 %1101, i32 %1073)  ; UMin(a,b)
  %1123 = call i32 @dx.op.binary.i32(i32 40, i32 %1102, i32 %1075)  ; UMin(a,b)
  %1124 = call i32 @dx.op.binary.i32(i32 40, i32 %1103, i32 %1077)  ; UMin(a,b)
  %1125 = mul i32 %1124, %1079
  %1126 = add i32 %1125, %1123
  %1127 = mul i32 %1126, %1078
  %1128 = add i32 %1122, %998
  %1129 = add i32 %1128, %1127
  %1130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1129, i32 0)  ; BufferLoad(srv,index,wot)
  %1131 = extractvalue %dx.types.ResRet.i32 %1130, 0
  %1132 = extractvalue %dx.types.ResRet.i32 %1130, 1
  %1133 = extractvalue %dx.types.ResRet.i32 %1130, 2
  %1134 = bitcast i32 %1131 to float
  %1135 = bitcast i32 %1132 to float
  %1136 = bitcast i32 %1133 to float
  %1137 = add i32 %1103, 1
  %1138 = call i32 @dx.op.binary.i32(i32 40, i32 %1137, i32 %1077)  ; UMin(a,b)
  %1139 = mul i32 %1138, %1079
  %1140 = add i32 %1139, %1123
  %1141 = mul i32 %1140, %1078
  %1142 = add i32 %1128, %1141
  %1143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1142, i32 0)  ; BufferLoad(srv,index,wot)
  %1144 = extractvalue %dx.types.ResRet.i32 %1143, 0
  %1145 = extractvalue %dx.types.ResRet.i32 %1143, 1
  %1146 = extractvalue %dx.types.ResRet.i32 %1143, 2
  %1147 = bitcast i32 %1144 to float
  %1148 = bitcast i32 %1145 to float
  %1149 = bitcast i32 %1146 to float
  %1150 = add i32 %1102, 1
  %1151 = call i32 @dx.op.binary.i32(i32 40, i32 %1150, i32 %1075)  ; UMin(a,b)
  %1152 = add i32 %1125, %1151
  %1153 = mul i32 %1152, %1078
  %1154 = add i32 %1128, %1153
  %1155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1154, i32 0)  ; BufferLoad(srv,index,wot)
  %1156 = extractvalue %dx.types.ResRet.i32 %1155, 0
  %1157 = extractvalue %dx.types.ResRet.i32 %1155, 1
  %1158 = extractvalue %dx.types.ResRet.i32 %1155, 2
  %1159 = bitcast i32 %1156 to float
  %1160 = bitcast i32 %1157 to float
  %1161 = bitcast i32 %1158 to float
  %1162 = add i32 %1139, %1151
  %1163 = mul i32 %1162, %1078
  %1164 = add i32 %1128, %1163
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1164, i32 0)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = extractvalue %dx.types.ResRet.i32 %1165, 1
  %1168 = extractvalue %dx.types.ResRet.i32 %1165, 2
  %1169 = bitcast i32 %1166 to float
  %1170 = bitcast i32 %1167 to float
  %1171 = bitcast i32 %1168 to float
  %1172 = add i32 %1101, 1
  %1173 = call i32 @dx.op.binary.i32(i32 40, i32 %1172, i32 %1073)  ; UMin(a,b)
  %1174 = add i32 %1173, %998
  %1175 = add i32 %1174, %1127
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1175, i32 0)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = extractvalue %dx.types.ResRet.i32 %1176, 1
  %1179 = extractvalue %dx.types.ResRet.i32 %1176, 2
  %1180 = bitcast i32 %1177 to float
  %1181 = bitcast i32 %1178 to float
  %1182 = bitcast i32 %1179 to float
  %1183 = add i32 %1174, %1141
  %1184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1183, i32 0)  ; BufferLoad(srv,index,wot)
  %1185 = extractvalue %dx.types.ResRet.i32 %1184, 0
  %1186 = extractvalue %dx.types.ResRet.i32 %1184, 1
  %1187 = extractvalue %dx.types.ResRet.i32 %1184, 2
  %1188 = bitcast i32 %1185 to float
  %1189 = bitcast i32 %1186 to float
  %1190 = bitcast i32 %1187 to float
  %1191 = add i32 %1174, %1153
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1191, i32 0)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = extractvalue %dx.types.ResRet.i32 %1192, 1
  %1195 = extractvalue %dx.types.ResRet.i32 %1192, 2
  %1196 = bitcast i32 %1193 to float
  %1197 = bitcast i32 %1194 to float
  %1198 = bitcast i32 %1195 to float
  %1199 = add i32 %1174, %1163
  %1200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1199, i32 0)  ; BufferLoad(srv,index,wot)
  %1201 = extractvalue %dx.types.ResRet.i32 %1200, 0
  %1202 = extractvalue %dx.types.ResRet.i32 %1200, 1
  %1203 = extractvalue %dx.types.ResRet.i32 %1200, 2
  %1204 = bitcast i32 %1201 to float
  %1205 = bitcast i32 %1202 to float
  %1206 = bitcast i32 %1203 to float
  %1207 = fmul fast float %1134, %1114
  %1208 = fmul fast float %1135, %1114
  %1209 = fmul fast float %1136, %1114
  %1210 = fmul fast float %1147, %1115
  %1211 = fmul fast float %1148, %1115
  %1212 = fmul fast float %1149, %1115
  %1213 = fadd fast float %1210, %1207
  %1214 = fadd fast float %1211, %1208
  %1215 = fadd fast float %1212, %1209
  %1216 = fmul fast float %1159, %1116
  %1217 = fmul fast float %1160, %1116
  %1218 = fmul fast float %1161, %1116
  %1219 = fadd fast float %1213, %1216
  %1220 = fadd fast float %1214, %1217
  %1221 = fadd fast float %1215, %1218
  %1222 = fmul fast float %1169, %1117
  %1223 = fmul fast float %1170, %1117
  %1224 = fmul fast float %1171, %1117
  %1225 = fadd fast float %1219, %1222
  %1226 = fadd fast float %1220, %1223
  %1227 = fadd fast float %1221, %1224
  %1228 = fmul fast float %1180, %1118
  %1229 = fmul fast float %1181, %1118
  %1230 = fmul fast float %1182, %1118
  %1231 = fadd fast float %1225, %1228
  %1232 = fadd fast float %1226, %1229
  %1233 = fadd fast float %1227, %1230
  %1234 = fmul fast float %1188, %1119
  %1235 = fmul fast float %1189, %1119
  %1236 = fmul fast float %1190, %1119
  %1237 = fadd fast float %1231, %1234
  %1238 = fadd fast float %1232, %1235
  %1239 = fadd fast float %1233, %1236
  %1240 = fmul fast float %1196, %1120
  %1241 = fmul fast float %1197, %1120
  %1242 = fmul fast float %1198, %1120
  %1243 = fadd fast float %1237, %1240
  %1244 = fadd fast float %1238, %1241
  %1245 = fadd fast float %1239, %1242
  %1246 = fmul fast float %1204, %1121
  %1247 = fmul fast float %1205, %1121
  %1248 = fmul fast float %1206, %1121
  %1249 = fadd fast float %1243, %1246
  %1250 = fadd fast float %1244, %1247
  %1251 = fadd fast float %1245, %1248
  %1252 = fmul fast float %1249, %960
  %1253 = call float @dx.op.tertiary.f32(i32 46, float %966, float %1250, float %1252)  ; FMad(a,b,c)
  %1254 = call float @dx.op.tertiary.f32(i32 46, float %970, float %1251, float %1253)  ; FMad(a,b,c)
  %1255 = fmul fast float %1249, %961
  %1256 = call float @dx.op.tertiary.f32(i32 46, float %967, float %1250, float %1255)  ; FMad(a,b,c)
  %1257 = call float @dx.op.tertiary.f32(i32 46, float %971, float %1251, float %1256)  ; FMad(a,b,c)
  %1258 = fmul fast float %1249, %962
  %1259 = call float @dx.op.tertiary.f32(i32 46, float %968, float %1250, float %1258)  ; FMad(a,b,c)
  %1260 = call float @dx.op.tertiary.f32(i32 46, float %972, float %1251, float %1259)  ; FMad(a,b,c)
  br label %1261

; <label>:1261                                    ; preds = %1072, %1059, %1042, %1032
  %1262 = phi i1 [ true, %1072 ], [ false, %1059 ], [ true, %1042 ], [ false, %1032 ]
  %1263 = phi float [ %1254, %1072 ], [ 0.000000e+00, %1059 ], [ %1052, %1042 ], [ 0.000000e+00, %1032 ]
  %1264 = phi float [ %1257, %1072 ], [ 0.000000e+00, %1059 ], [ %1055, %1042 ], [ 0.000000e+00, %1032 ]
  %1265 = phi float [ %1260, %1072 ], [ 0.000000e+00, %1059 ], [ %1058, %1042 ], [ 0.000000e+00, %1032 ]
  %1266 = and i32 %1004, 1073741824
  %1267 = icmp eq i32 %1266, 0
  %1268 = and i1 %1262, %1267
  br i1 %1268, label %1269, label %1276, !dx.controlflow.hints !64

; <label>:1269                                    ; preds = %1261
  %1270 = fmul fast float %1265, %964
  %1271 = fmul fast float %1264, %964
  %1272 = fmul fast float %1263, %964
  %1273 = fadd fast float %1272, %986
  %1274 = fadd fast float %1271, %987
  %1275 = fadd fast float %1270, %988
  br label %1276

; <label>:1276                                    ; preds = %1269, %1261
  %1277 = phi float [ %1273, %1269 ], [ %986, %1261 ]
  %1278 = phi float [ %1274, %1269 ], [ %987, %1261 ]
  %1279 = phi float [ %1275, %1269 ], [ %988, %1261 ]
  %1280 = add nuw nsw i32 %989, 1
  %1281 = icmp eq i32 %1280, %984
  br i1 %1281, label %1282, label %985

; <label>:1282                                    ; preds = %1276
  br label %1283

; <label>:1283                                    ; preds = %1282, %955
  %1284 = phi float [ 0.000000e+00, %955 ], [ %1277, %1282 ]
  %1285 = phi float [ 0.000000e+00, %955 ], [ %1278, %1282 ]
  %1286 = phi float [ 0.000000e+00, %955 ], [ %1279, %1282 ]
  %1287 = fadd fast float %1284, %950
  %1288 = fadd fast float %1285, %951
  %1289 = fadd fast float %1286, %952
  %1290 = add nuw nsw i32 %953, 1
  %1291 = icmp ult i32 %1290, 4
  br i1 %1291, label %949, label %1292

; <label>:1292                                    ; preds = %1283, %949
  %1293 = phi float [ %950, %949 ], [ %1287, %1283 ]
  %1294 = phi float [ %951, %949 ], [ %1288, %1283 ]
  %1295 = phi float [ %952, %949 ], [ %1289, %1283 ]
  %1296 = icmp ugt i32 %509, 4
  br i1 %1296, label %1297, label %1649, !dx.controlflow.hints !65

; <label>:1297                                    ; preds = %1292
  %1298 = add i32 %509, -4
  br label %1299

; <label>:1299                                    ; preds = %1633, %1297
  %1300 = phi float [ 0.000000e+00, %1297 ], [ %1637, %1633 ]
  %1301 = phi float [ 0.000000e+00, %1297 ], [ %1638, %1633 ]
  %1302 = phi float [ 0.000000e+00, %1297 ], [ %1639, %1633 ]
  %1303 = phi i32 [ 0, %1297 ], [ %1640, %1633 ]
  %1304 = icmp ult i32 %1303, %1298
  br i1 %1304, label %1305, label %1642, !dx.controlflow.hints !61

; <label>:1305                                    ; preds = %1299
  %1306 = shl i32 %1303, 3
  %1307 = lshr i32 %508, %1306
  %1308 = and i32 %1307, 255
  %1309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1308, i32 0)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.f32 %1309, 0
  %1311 = extractvalue %dx.types.ResRet.f32 %1309, 1
  %1312 = extractvalue %dx.types.ResRet.f32 %1309, 2
  %1313 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1308, i32 12)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.f32 %1313, 0
  %1315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1308, i32 16)  ; BufferLoad(srv,index,wot)
  %1316 = extractvalue %dx.types.ResRet.f32 %1315, 0
  %1317 = extractvalue %dx.types.ResRet.f32 %1315, 1
  %1318 = extractvalue %dx.types.ResRet.f32 %1315, 2
  %1319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1308, i32 32)  ; BufferLoad(srv,index,wot)
  %1320 = extractvalue %dx.types.ResRet.f32 %1319, 0
  %1321 = extractvalue %dx.types.ResRet.f32 %1319, 1
  %1322 = extractvalue %dx.types.ResRet.f32 %1319, 2
  %1323 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1308, i32 44)  ; BufferLoad(srv,index,wot)
  %1324 = extractvalue %dx.types.ResRet.f32 %1323, 0
  %1325 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1308, i32 48)  ; BufferLoad(srv,index,wot)
  %1326 = extractvalue %dx.types.ResRet.f32 %1325, 0
  %1327 = extractvalue %dx.types.ResRet.f32 %1325, 1
  %1328 = extractvalue %dx.types.ResRet.f32 %1325, 2
  %1329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1308, i32 60)  ; BufferLoad(srv,index,wot)
  %1330 = extractvalue %dx.types.ResRet.i32 %1329, 0
  %1331 = and i32 %1330, 4095
  %1332 = icmp eq i32 %1331, 0
  br i1 %1332, label %1633, label %1333

; <label>:1333                                    ; preds = %1305
  %1334 = and i32 %1330, 4095
  br label %1335

; <label>:1335                                    ; preds = %1626, %1333
  %1336 = phi float [ %1627, %1626 ], [ 0.000000e+00, %1333 ]
  %1337 = phi float [ %1628, %1626 ], [ 0.000000e+00, %1333 ]
  %1338 = phi float [ %1629, %1626 ], [ 0.000000e+00, %1333 ]
  %1339 = phi i32 [ %1630, %1626 ], [ 0, %1333 ]
  %1340 = lshr i32 %1330, 12
  %1341 = and i32 %1340, 4095
  %1342 = add nuw nsw i32 %1339, %1341
  %1343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1342, i32 0)  ; BufferLoad(srv,index,wot)
  %1344 = extractvalue %dx.types.ResRet.f32 %1343, 0
  %1345 = extractvalue %dx.types.ResRet.f32 %1343, 1
  %1346 = extractvalue %dx.types.ResRet.f32 %1343, 2
  %1347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1342, i32 12)  ; BufferLoad(srv,index,wot)
  %1348 = extractvalue %dx.types.ResRet.i32 %1347, 0
  %1349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1342, i32 16)  ; BufferLoad(srv,index,wot)
  %1350 = extractvalue %dx.types.ResRet.f32 %1349, 0
  %1351 = extractvalue %dx.types.ResRet.f32 %1349, 1
  %1352 = extractvalue %dx.types.ResRet.f32 %1349, 2
  %1353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1342, i32 28)  ; BufferLoad(srv,index,wot)
  %1354 = extractvalue %dx.types.ResRet.i32 %1353, 0
  %1355 = icmp slt i32 %1354, 0
  %1356 = fsub fast float %671, %1326
  %1357 = fsub fast float %672, %1327
  %1358 = fsub fast float %673, %1328
  %1359 = fmul fast float %1356, %1310
  %1360 = call float @dx.op.tertiary.f32(i32 46, float %1311, float %1357, float %1359)  ; FMad(a,b,c)
  %1361 = call float @dx.op.tertiary.f32(i32 46, float %1312, float %1358, float %1360)  ; FMad(a,b,c)
  %1362 = fmul fast float %1356, %1316
  %1363 = call float @dx.op.tertiary.f32(i32 46, float %1317, float %1357, float %1362)  ; FMad(a,b,c)
  %1364 = call float @dx.op.tertiary.f32(i32 46, float %1318, float %1358, float %1363)  ; FMad(a,b,c)
  %1365 = fmul fast float %1356, %1320
  %1366 = call float @dx.op.tertiary.f32(i32 46, float %1321, float %1357, float %1365)  ; FMad(a,b,c)
  %1367 = call float @dx.op.tertiary.f32(i32 46, float %1322, float %1358, float %1366)  ; FMad(a,b,c)
  %1368 = fmul fast float %1344, %1324
  %1369 = fmul fast float %1345, %1324
  %1370 = fmul fast float %1346, %1324
  %1371 = fmul fast float %1368, 5.000000e-01
  %1372 = fmul fast float %1369, 5.000000e-01
  %1373 = fmul fast float %1370, 5.000000e-01
  %1374 = fadd fast float %1371, 0xBF50624DE0000000
  %1375 = fadd fast float %1372, 0xBF50624DE0000000
  %1376 = fadd fast float %1373, 0xBF50624DE0000000
  %1377 = fcmp fast ogt float %1361, %1374
  %1378 = fcmp fast ogt float %1364, %1375
  %1379 = fcmp fast ogt float %1367, %1376
  %1380 = or i1 %1377, %1378
  %1381 = or i1 %1380, %1379
  br i1 %1355, label %1382, label %1409, !dx.controlflow.hints !62

; <label>:1382                                    ; preds = %1335
  %1383 = fsub fast float 0x3F50624DE0000000, %1371
  %1384 = fsub fast float 0x3F50624DE0000000, %1372
  %1385 = fsub fast float 0x3F50624DE0000000, %1373
  %1386 = fcmp fast olt float %1361, %1383
  %1387 = fcmp fast olt float %1364, %1384
  %1388 = fcmp fast olt float %1367, %1385
  %1389 = or i1 %1386, %1387
  %1390 = or i1 %1389, %1388
  %1391 = or i1 %1381, %1390
  br i1 %1391, label %1611, label %1392, !dx.controlflow.hints !63

; <label>:1392                                    ; preds = %1382
  %1393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1348, i32 0)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.i32 %1393, 0
  %1395 = extractvalue %dx.types.ResRet.i32 %1393, 1
  %1396 = extractvalue %dx.types.ResRet.i32 %1393, 2
  %1397 = bitcast i32 %1394 to float
  %1398 = bitcast i32 %1395 to float
  %1399 = bitcast i32 %1396 to float
  %1400 = fmul fast float %1397, %1310
  %1401 = call float @dx.op.tertiary.f32(i32 46, float %1316, float %1398, float %1400)  ; FMad(a,b,c)
  %1402 = call float @dx.op.tertiary.f32(i32 46, float %1320, float %1399, float %1401)  ; FMad(a,b,c)
  %1403 = fmul fast float %1397, %1311
  %1404 = call float @dx.op.tertiary.f32(i32 46, float %1317, float %1398, float %1403)  ; FMad(a,b,c)
  %1405 = call float @dx.op.tertiary.f32(i32 46, float %1321, float %1399, float %1404)  ; FMad(a,b,c)
  %1406 = fmul fast float %1397, %1312
  %1407 = call float @dx.op.tertiary.f32(i32 46, float %1318, float %1398, float %1406)  ; FMad(a,b,c)
  %1408 = call float @dx.op.tertiary.f32(i32 46, float %1322, float %1399, float %1407)  ; FMad(a,b,c)
  br label %1611

; <label>:1409                                    ; preds = %1335
  %1410 = fmul fast float %1368, -5.000000e-01
  %1411 = fmul fast float %1369, -5.000000e-01
  %1412 = fmul fast float %1370, -5.000000e-01
  %1413 = fadd fast float %1410, 0x3F50624DE0000000
  %1414 = fadd fast float %1411, 0x3F50624DE0000000
  %1415 = fadd fast float %1412, 0x3F50624DE0000000
  %1416 = fcmp fast olt float %1361, %1413
  %1417 = fcmp fast olt float %1364, %1414
  %1418 = fcmp fast olt float %1367, %1415
  %1419 = or i1 %1416, %1417
  %1420 = or i1 %1419, %1418
  %1421 = or i1 %1381, %1420
  br i1 %1421, label %1611, label %1422, !dx.controlflow.hints !63

; <label>:1422                                    ; preds = %1409
  %1423 = and i32 %1354, 1023
  %1424 = lshr i32 %1354, 10
  %1425 = and i32 %1424, 1023
  %1426 = lshr i32 %1354, 20
  %1427 = and i32 %1426, 1023
  %1428 = add nuw nsw i32 %1423, 1
  %1429 = add nuw nsw i32 %1425, 1
  %1430 = fsub fast float %1361, %1410
  %1431 = fsub fast float %1364, %1411
  %1432 = fsub fast float %1367, %1412
  %1433 = fmul fast float %1350, %1324
  %1434 = fmul fast float %1351, %1324
  %1435 = fmul fast float %1352, %1324
  %1436 = fdiv fast float 1.000000e+00, %1433
  %1437 = fdiv fast float 1.000000e+00, %1434
  %1438 = fdiv fast float 1.000000e+00, %1435
  %1439 = fmul fast float %1436, %1430
  %1440 = fmul fast float %1437, %1431
  %1441 = fmul fast float %1438, %1432
  %1442 = call float @dx.op.unary.f32(i32 27, float %1439)  ; Round_ni(value)
  %1443 = call float @dx.op.unary.f32(i32 27, float %1440)  ; Round_ni(value)
  %1444 = call float @dx.op.unary.f32(i32 27, float %1441)  ; Round_ni(value)
  %1445 = fptosi float %1442 to i32
  %1446 = fptosi float %1443 to i32
  %1447 = fptosi float %1444 to i32
  %1448 = call i32 @dx.op.binary.i32(i32 37, i32 %1445, i32 0)  ; IMax(a,b)
  %1449 = call i32 @dx.op.binary.i32(i32 37, i32 %1446, i32 0)  ; IMax(a,b)
  %1450 = call i32 @dx.op.binary.i32(i32 37, i32 %1447, i32 0)  ; IMax(a,b)
  %1451 = call i32 @dx.op.binary.i32(i32 38, i32 %1448, i32 %1423)  ; IMin(a,b)
  %1452 = call i32 @dx.op.binary.i32(i32 38, i32 %1449, i32 %1425)  ; IMin(a,b)
  %1453 = call i32 @dx.op.binary.i32(i32 38, i32 %1450, i32 %1427)  ; IMin(a,b)
  %1454 = call float @dx.op.unary.f32(i32 22, float %1439)  ; Frc(value)
  %1455 = call float @dx.op.unary.f32(i32 22, float %1440)  ; Frc(value)
  %1456 = call float @dx.op.unary.f32(i32 22, float %1441)  ; Frc(value)
  %1457 = fsub fast float 1.000000e+00, %1455
  %1458 = fsub fast float 1.000000e+00, %1456
  %1459 = fmul fast float %1458, %1457
  %1460 = fmul fast float %1457, %1456
  %1461 = fmul fast float %1458, %1455
  %1462 = fmul fast float %1456, %1455
  %1463 = fsub fast float 1.000000e+00, %1454
  %1464 = fmul fast float %1459, %1463
  %1465 = fmul fast float %1460, %1463
  %1466 = fmul fast float %1461, %1463
  %1467 = fmul fast float %1462, %1463
  %1468 = fmul fast float %1459, %1454
  %1469 = fmul fast float %1460, %1454
  %1470 = fmul fast float %1461, %1454
  %1471 = fmul fast float %1462, %1454
  %1472 = call i32 @dx.op.binary.i32(i32 40, i32 %1451, i32 %1423)  ; UMin(a,b)
  %1473 = call i32 @dx.op.binary.i32(i32 40, i32 %1452, i32 %1425)  ; UMin(a,b)
  %1474 = call i32 @dx.op.binary.i32(i32 40, i32 %1453, i32 %1427)  ; UMin(a,b)
  %1475 = mul i32 %1474, %1429
  %1476 = add i32 %1475, %1473
  %1477 = mul i32 %1476, %1428
  %1478 = add i32 %1472, %1348
  %1479 = add i32 %1478, %1477
  %1480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1479, i32 0)  ; BufferLoad(srv,index,wot)
  %1481 = extractvalue %dx.types.ResRet.i32 %1480, 0
  %1482 = extractvalue %dx.types.ResRet.i32 %1480, 1
  %1483 = extractvalue %dx.types.ResRet.i32 %1480, 2
  %1484 = bitcast i32 %1481 to float
  %1485 = bitcast i32 %1482 to float
  %1486 = bitcast i32 %1483 to float
  %1487 = add i32 %1453, 1
  %1488 = call i32 @dx.op.binary.i32(i32 40, i32 %1487, i32 %1427)  ; UMin(a,b)
  %1489 = mul i32 %1488, %1429
  %1490 = add i32 %1489, %1473
  %1491 = mul i32 %1490, %1428
  %1492 = add i32 %1478, %1491
  %1493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1492, i32 0)  ; BufferLoad(srv,index,wot)
  %1494 = extractvalue %dx.types.ResRet.i32 %1493, 0
  %1495 = extractvalue %dx.types.ResRet.i32 %1493, 1
  %1496 = extractvalue %dx.types.ResRet.i32 %1493, 2
  %1497 = bitcast i32 %1494 to float
  %1498 = bitcast i32 %1495 to float
  %1499 = bitcast i32 %1496 to float
  %1500 = add i32 %1452, 1
  %1501 = call i32 @dx.op.binary.i32(i32 40, i32 %1500, i32 %1425)  ; UMin(a,b)
  %1502 = add i32 %1475, %1501
  %1503 = mul i32 %1502, %1428
  %1504 = add i32 %1478, %1503
  %1505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1504, i32 0)  ; BufferLoad(srv,index,wot)
  %1506 = extractvalue %dx.types.ResRet.i32 %1505, 0
  %1507 = extractvalue %dx.types.ResRet.i32 %1505, 1
  %1508 = extractvalue %dx.types.ResRet.i32 %1505, 2
  %1509 = bitcast i32 %1506 to float
  %1510 = bitcast i32 %1507 to float
  %1511 = bitcast i32 %1508 to float
  %1512 = add i32 %1489, %1501
  %1513 = mul i32 %1512, %1428
  %1514 = add i32 %1478, %1513
  %1515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1514, i32 0)  ; BufferLoad(srv,index,wot)
  %1516 = extractvalue %dx.types.ResRet.i32 %1515, 0
  %1517 = extractvalue %dx.types.ResRet.i32 %1515, 1
  %1518 = extractvalue %dx.types.ResRet.i32 %1515, 2
  %1519 = bitcast i32 %1516 to float
  %1520 = bitcast i32 %1517 to float
  %1521 = bitcast i32 %1518 to float
  %1522 = add i32 %1451, 1
  %1523 = call i32 @dx.op.binary.i32(i32 40, i32 %1522, i32 %1423)  ; UMin(a,b)
  %1524 = add i32 %1523, %1348
  %1525 = add i32 %1524, %1477
  %1526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1525, i32 0)  ; BufferLoad(srv,index,wot)
  %1527 = extractvalue %dx.types.ResRet.i32 %1526, 0
  %1528 = extractvalue %dx.types.ResRet.i32 %1526, 1
  %1529 = extractvalue %dx.types.ResRet.i32 %1526, 2
  %1530 = bitcast i32 %1527 to float
  %1531 = bitcast i32 %1528 to float
  %1532 = bitcast i32 %1529 to float
  %1533 = add i32 %1524, %1491
  %1534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1533, i32 0)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.i32 %1534, 0
  %1536 = extractvalue %dx.types.ResRet.i32 %1534, 1
  %1537 = extractvalue %dx.types.ResRet.i32 %1534, 2
  %1538 = bitcast i32 %1535 to float
  %1539 = bitcast i32 %1536 to float
  %1540 = bitcast i32 %1537 to float
  %1541 = add i32 %1524, %1503
  %1542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1541, i32 0)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.i32 %1542, 0
  %1544 = extractvalue %dx.types.ResRet.i32 %1542, 1
  %1545 = extractvalue %dx.types.ResRet.i32 %1542, 2
  %1546 = bitcast i32 %1543 to float
  %1547 = bitcast i32 %1544 to float
  %1548 = bitcast i32 %1545 to float
  %1549 = add i32 %1524, %1513
  %1550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1549, i32 0)  ; BufferLoad(srv,index,wot)
  %1551 = extractvalue %dx.types.ResRet.i32 %1550, 0
  %1552 = extractvalue %dx.types.ResRet.i32 %1550, 1
  %1553 = extractvalue %dx.types.ResRet.i32 %1550, 2
  %1554 = bitcast i32 %1551 to float
  %1555 = bitcast i32 %1552 to float
  %1556 = bitcast i32 %1553 to float
  %1557 = fmul fast float %1484, %1464
  %1558 = fmul fast float %1485, %1464
  %1559 = fmul fast float %1486, %1464
  %1560 = fmul fast float %1497, %1465
  %1561 = fmul fast float %1498, %1465
  %1562 = fmul fast float %1499, %1465
  %1563 = fadd fast float %1560, %1557
  %1564 = fadd fast float %1561, %1558
  %1565 = fadd fast float %1562, %1559
  %1566 = fmul fast float %1509, %1466
  %1567 = fmul fast float %1510, %1466
  %1568 = fmul fast float %1511, %1466
  %1569 = fadd fast float %1563, %1566
  %1570 = fadd fast float %1564, %1567
  %1571 = fadd fast float %1565, %1568
  %1572 = fmul fast float %1519, %1467
  %1573 = fmul fast float %1520, %1467
  %1574 = fmul fast float %1521, %1467
  %1575 = fadd fast float %1569, %1572
  %1576 = fadd fast float %1570, %1573
  %1577 = fadd fast float %1571, %1574
  %1578 = fmul fast float %1530, %1468
  %1579 = fmul fast float %1531, %1468
  %1580 = fmul fast float %1532, %1468
  %1581 = fadd fast float %1575, %1578
  %1582 = fadd fast float %1576, %1579
  %1583 = fadd fast float %1577, %1580
  %1584 = fmul fast float %1538, %1469
  %1585 = fmul fast float %1539, %1469
  %1586 = fmul fast float %1540, %1469
  %1587 = fadd fast float %1581, %1584
  %1588 = fadd fast float %1582, %1585
  %1589 = fadd fast float %1583, %1586
  %1590 = fmul fast float %1546, %1470
  %1591 = fmul fast float %1547, %1470
  %1592 = fmul fast float %1548, %1470
  %1593 = fadd fast float %1587, %1590
  %1594 = fadd fast float %1588, %1591
  %1595 = fadd fast float %1589, %1592
  %1596 = fmul fast float %1554, %1471
  %1597 = fmul fast float %1555, %1471
  %1598 = fmul fast float %1556, %1471
  %1599 = fadd fast float %1593, %1596
  %1600 = fadd fast float %1594, %1597
  %1601 = fadd fast float %1595, %1598
  %1602 = fmul fast float %1599, %1310
  %1603 = call float @dx.op.tertiary.f32(i32 46, float %1316, float %1600, float %1602)  ; FMad(a,b,c)
  %1604 = call float @dx.op.tertiary.f32(i32 46, float %1320, float %1601, float %1603)  ; FMad(a,b,c)
  %1605 = fmul fast float %1599, %1311
  %1606 = call float @dx.op.tertiary.f32(i32 46, float %1317, float %1600, float %1605)  ; FMad(a,b,c)
  %1607 = call float @dx.op.tertiary.f32(i32 46, float %1321, float %1601, float %1606)  ; FMad(a,b,c)
  %1608 = fmul fast float %1599, %1312
  %1609 = call float @dx.op.tertiary.f32(i32 46, float %1318, float %1600, float %1608)  ; FMad(a,b,c)
  %1610 = call float @dx.op.tertiary.f32(i32 46, float %1322, float %1601, float %1609)  ; FMad(a,b,c)
  br label %1611

; <label>:1611                                    ; preds = %1422, %1409, %1392, %1382
  %1612 = phi i1 [ true, %1422 ], [ false, %1409 ], [ true, %1392 ], [ false, %1382 ]
  %1613 = phi float [ %1604, %1422 ], [ 0.000000e+00, %1409 ], [ %1402, %1392 ], [ 0.000000e+00, %1382 ]
  %1614 = phi float [ %1607, %1422 ], [ 0.000000e+00, %1409 ], [ %1405, %1392 ], [ 0.000000e+00, %1382 ]
  %1615 = phi float [ %1610, %1422 ], [ 0.000000e+00, %1409 ], [ %1408, %1392 ], [ 0.000000e+00, %1382 ]
  %1616 = and i32 %1354, 1073741824
  %1617 = icmp eq i32 %1616, 0
  %1618 = and i1 %1612, %1617
  br i1 %1618, label %1619, label %1626, !dx.controlflow.hints !64

; <label>:1619                                    ; preds = %1611
  %1620 = fmul fast float %1615, %1314
  %1621 = fmul fast float %1614, %1314
  %1622 = fmul fast float %1613, %1314
  %1623 = fadd fast float %1622, %1336
  %1624 = fadd fast float %1621, %1337
  %1625 = fadd fast float %1620, %1338
  br label %1626

; <label>:1626                                    ; preds = %1619, %1611
  %1627 = phi float [ %1623, %1619 ], [ %1336, %1611 ]
  %1628 = phi float [ %1624, %1619 ], [ %1337, %1611 ]
  %1629 = phi float [ %1625, %1619 ], [ %1338, %1611 ]
  %1630 = add nuw nsw i32 %1339, 1
  %1631 = icmp eq i32 %1630, %1334
  br i1 %1631, label %1632, label %1335

; <label>:1632                                    ; preds = %1626
  br label %1633

; <label>:1633                                    ; preds = %1632, %1305
  %1634 = phi float [ 0.000000e+00, %1305 ], [ %1627, %1632 ]
  %1635 = phi float [ 0.000000e+00, %1305 ], [ %1628, %1632 ]
  %1636 = phi float [ 0.000000e+00, %1305 ], [ %1629, %1632 ]
  %1637 = fadd fast float %1634, %1300
  %1638 = fadd fast float %1635, %1301
  %1639 = fadd fast float %1636, %1302
  %1640 = add nuw nsw i32 %1303, 1
  %1641 = icmp ult i32 %1640, 4
  br i1 %1641, label %1299, label %1642

; <label>:1642                                    ; preds = %1633, %1299
  %1643 = phi float [ %1300, %1299 ], [ %1637, %1633 ]
  %1644 = phi float [ %1301, %1299 ], [ %1638, %1633 ]
  %1645 = phi float [ %1302, %1299 ], [ %1639, %1633 ]
  %1646 = fadd fast float %1643, %1293
  %1647 = fadd fast float %1644, %1294
  %1648 = fadd fast float %1645, %1295
  br label %1649

; <label>:1649                                    ; preds = %1642, %1292
  %1650 = phi float [ %1646, %1642 ], [ %1293, %1292 ]
  %1651 = phi float [ %1647, %1642 ], [ %1294, %1292 ]
  %1652 = phi float [ %1648, %1642 ], [ %1295, %1292 ]
  %1653 = fmul fast float %1650, %941
  %1654 = fmul fast float %1651, %941
  %1655 = fmul fast float %1652, %941
  %1656 = fadd fast float %1653, %922
  %1657 = fadd fast float %1654, %923
  %1658 = fadd fast float %1655, %924
  br label %1659

; <label>:1659                                    ; preds = %1649, %700
  %1660 = phi float [ %1656, %1649 ], [ %922, %700 ]
  %1661 = phi float [ %1657, %1649 ], [ %923, %700 ]
  %1662 = phi float [ %1658, %1649 ], [ %924, %700 ]
  %1663 = and i32 %91, 8
  %1664 = icmp eq i32 %1663, 0
  br i1 %1664, label %1797, label %1665, !dx.controlflow.hints !66

; <label>:1665                                    ; preds = %1659
  %1666 = shl nuw nsw i32 %932, 7
  %1667 = xor i32 %1666, %932
  %1668 = lshr i32 %1667, 9
  %1669 = and i32 %1668, 127
  %1670 = and i32 %1667, 65535
  %1671 = xor i32 %1669, %1670
  %1672 = shl nuw nsw i32 %1671, 8
  %1673 = and i32 %1672, 65280
  %1674 = xor i32 %1673, %1671
  %1675 = uitofp i32 %1674 to float
  %1676 = fmul fast float %1675, 0x3EF0001000000000
  %1677 = shl nuw nsw i32 %1674, 7
  %1678 = and i32 %1677, 65408
  %1679 = xor i32 %1678, %1674
  %1680 = lshr i32 %1679, 9
  %1681 = xor i32 %1680, %1679
  %1682 = shl nuw nsw i32 %1681, 8
  %1683 = and i32 %1682, 65280
  %1684 = xor i32 %1683, %1681
  %1685 = uitofp i32 %1684 to float
  %1686 = fmul fast float %1685, 0x3EF0001000000000
  %1687 = shl nuw nsw i32 %1684, 7
  %1688 = xor i32 %1687, %1684
  %1689 = lshr i32 %1688, 9
  %1690 = and i32 %1689, 127
  %1691 = and i32 %1688, 65535
  %1692 = xor i32 %1690, %1691
  %1693 = shl nuw nsw i32 %1692, 8
  %1694 = and i32 %1693, 65280
  %1695 = xor i32 %1694, %1692
  %1696 = uitofp i32 %1695 to float
  %1697 = fmul fast float %1696, 0x3EF0001000000000
  %1698 = shl nuw nsw i32 %1695, 7
  %1699 = and i32 %1698, 65408
  %1700 = xor i32 %1699, %1695
  %1701 = lshr i32 %1700, 9
  %1702 = xor i32 %1701, %1700
  %1703 = shl nuw nsw i32 %1702, 8
  %1704 = and i32 %1703, 65280
  %1705 = xor i32 %1704, %1702
  %1706 = uitofp i32 %1705 to float
  %1707 = fmul fast float %1706, 0x3EF0001000000000
  %1708 = fmul fast float %783, %1676
  %1709 = fmul fast float %785, %1686
  %1710 = fmul fast float %787, %1697
  %1711 = fmul fast float %789, %1707
  %1712 = fadd fast float %1708, %745
  %1713 = fadd fast float %1709, %747
  %1714 = fadd fast float %1710, %749
  %1715 = fadd fast float %1711, %751
  %1716 = fmul fast float %857, %1676
  %1717 = fmul fast float %859, %1686
  %1718 = fmul fast float %861, %1697
  %1719 = fmul fast float %863, %1707
  %1720 = fsub fast float %820, %1712
  %1721 = fadd fast float %1720, %1716
  %1722 = fsub fast float %822, %1713
  %1723 = fadd fast float %1722, %1717
  %1724 = fsub fast float %824, %1714
  %1725 = fadd fast float %1724, %1718
  %1726 = fsub fast float %826, %1715
  %1727 = fadd fast float %1726, %1719
  %1728 = fmul fast float %1721, %713
  %1729 = fmul fast float %1723, %713
  %1730 = fmul fast float %1725, %713
  %1731 = fmul fast float %1727, %713
  %1732 = fadd fast float %1728, %1712
  %1733 = fadd fast float %1729, %1713
  %1734 = fadd fast float %1730, %1714
  %1735 = fadd fast float %1731, %1715
  %1736 = and i32 %91, 4096
  %1737 = icmp eq i32 %1736, 0
  br i1 %1737, label %1769, label %1738, !dx.controlflow.hints !67

; <label>:1738                                    ; preds = %1665
  %1739 = fmul fast float %1734, %63
  %1740 = fmul fast float %1733, %64
  %1741 = fsub fast float %1739, %1740
  %1742 = fmul fast float %1732, %64
  %1743 = fmul fast float %1734, %62
  %1744 = fsub fast float %1742, %1743
  %1745 = fmul fast float %1733, %62
  %1746 = fmul fast float %1732, %63
  %1747 = fsub fast float %1745, %1746
  %1748 = fmul fast float %1741, 2.000000e+00
  %1749 = fmul fast float %1744, 2.000000e+00
  %1750 = fmul fast float %1747, 2.000000e+00
  %1751 = fmul fast float %1748, %65
  %1752 = fmul fast float %1749, %65
  %1753 = fmul fast float %1750, %65
  %1754 = fmul fast float %1750, %63
  %1755 = fmul fast float %1749, %64
  %1756 = fmul fast float %1748, %64
  %1757 = fmul fast float %1750, %62
  %1758 = fmul fast float %1749, %62
  %1759 = fmul fast float %1748, %63
  %1760 = fadd fast float %1754, %1732
  %1761 = fadd fast float %1760, %1751
  %1762 = fsub fast float %1761, %1755
  %1763 = fsub fast float %1733, %1757
  %1764 = fadd fast float %1763, %1752
  %1765 = fadd fast float %1764, %1756
  %1766 = fadd fast float %1753, %1734
  %1767 = fsub fast float %1766, %1759
  %1768 = fadd fast float %1767, %1758
  br label %1769

; <label>:1769                                    ; preds = %1738, %1665
  %1770 = phi float [ %1762, %1738 ], [ %1732, %1665 ]
  %1771 = phi float [ %1765, %1738 ], [ %1733, %1665 ]
  %1772 = phi float [ %1768, %1738 ], [ %1734, %1665 ]
  %1773 = fsub fast float %67, %671
  %1774 = fadd fast float %1773, %1770
  %1775 = fsub fast float %68, %672
  %1776 = fadd fast float %1775, %1771
  %1777 = fsub fast float %69, %673
  %1778 = fadd fast float %1777, %1772
  %1779 = call float @dx.op.dot3.f32(i32 55, float %1774, float %1776, float %1778, float %1774, float %1776, float %1778)  ; Dot3(ax,ay,az,bx,by,bz)
  %1780 = fcmp fast ogt float %97, 0.000000e+00
  %1781 = fcmp fast ole float %1779, %97
  %1782 = and i1 %1780, %1781
  br i1 %1782, label %1788, label %1783, !dx.controlflow.hints !68

; <label>:1783                                    ; preds = %1769
  %1784 = fcmp fast ogt float %1779, 0x3E45798EE0000000
  br i1 %1784, label %1785, label %1788, !dx.controlflow.hints !69

; <label>:1785                                    ; preds = %1783
  %1786 = call float @dx.op.unary.f32(i32 25, float %1779)  ; Rsqrt(value)
  %1787 = fmul fast float %1786, %1735
  br label %1788

; <label>:1788                                    ; preds = %1785, %1783, %1769
  %1789 = phi i32 [ %698, %1785 ], [ %698, %1783 ], [ 0, %1769 ]
  %1790 = phi float [ %1787, %1785 ], [ %1735, %1783 ], [ %1735, %1769 ]
  %1791 = fmul fast float %1790, %1774
  %1792 = fmul fast float %1790, %1776
  %1793 = fmul fast float %1790, %1778
  %1794 = fadd fast float %1791, %1660
  %1795 = fadd fast float %1792, %1661
  %1796 = fadd fast float %1793, %1662
  br label %1797

; <label>:1797                                    ; preds = %1788, %1659
  %1798 = phi i32 [ %1789, %1788 ], [ %698, %1659 ]
  %1799 = phi i32 [ %1705, %1788 ], [ %932, %1659 ]
  %1800 = phi float [ %1794, %1788 ], [ %1660, %1659 ]
  %1801 = phi float [ %1795, %1788 ], [ %1661, %1659 ]
  %1802 = phi float [ %1796, %1788 ], [ %1662, %1659 ]
  %1803 = shl i32 %1799, 7
  %1804 = and i32 %1803, 65408
  %1805 = and i32 %1799, 65535
  %1806 = xor i32 %1804, %1805
  %1807 = lshr i32 %1806, 9
  %1808 = xor i32 %1807, %1806
  %1809 = shl nuw nsw i32 %1808, 8
  %1810 = and i32 %1809, 65280
  %1811 = xor i32 %1810, %1808
  %1812 = uitofp i32 %1811 to float
  %1813 = fmul fast float %1812, 0x3EF0001000000000
  %1814 = shl nuw nsw i32 %1811, 7
  %1815 = and i32 %1814, 65408
  %1816 = xor i32 %1815, %1811
  %1817 = lshr i32 %1816, 9
  %1818 = and i32 %1817, 65535
  %1819 = xor i32 %1818, %1816
  %1820 = shl nuw nsw i32 %1819, 8
  %1821 = xor i32 %1820, %1819
  %1822 = and i32 %1821, 65535
  %1823 = uitofp i32 %1822 to float
  %1824 = fmul fast float %1823, 0x3EF0001000000000
  %1825 = shl nuw nsw i32 %1822, 7
  %1826 = xor i32 %1825, %1821
  %1827 = lshr i32 %1826, 9
  %1828 = and i32 %1827, 127
  %1829 = and i32 %1826, 65535
  %1830 = xor i32 %1828, %1829
  %1831 = shl nuw nsw i32 %1830, 8
  %1832 = and i32 %1831, 65280
  %1833 = xor i32 %1832, %1830
  %1834 = uitofp i32 %1833 to float
  %1835 = fmul fast float %1834, 0x3EF0001000000000
  %1836 = shl nuw nsw i32 %1833, 7
  %1837 = and i32 %1836, 65408
  %1838 = xor i32 %1837, %1833
  %1839 = lshr i32 %1838, 9
  %1840 = xor i32 %1839, %1838
  %1841 = shl nuw nsw i32 %1840, 8
  %1842 = and i32 %1841, 65280
  %1843 = xor i32 %1842, %1840
  %1844 = and i32 %91, 512
  %1845 = icmp ne i32 %1844, 0
  %1846 = select i1 %1845, float %1824, float %1813
  %1847 = select i1 %1845, float %1835, float %1813
  %1848 = fmul fast float %1813, %777
  %1849 = fmul fast float %1846, %779
  %1850 = fmul fast float %1847, %781
  %1851 = fadd fast float %1848, %739
  %1852 = fadd fast float %1849, %741
  %1853 = fadd fast float %1850, %743
  %1854 = fmul fast float %1813, %851
  %1855 = fmul fast float %1846, %853
  %1856 = fmul fast float %1847, %855
  %1857 = fadd fast float %1854, %814
  %1858 = fadd fast float %1855, %816
  %1859 = fadd fast float %1856, %818
  %1860 = fsub fast float %1857, %1851
  %1861 = fsub fast float %1858, %1852
  %1862 = fsub fast float %1859, %1853
  %1863 = fmul fast float %1860, %713
  %1864 = fmul fast float %1861, %713
  %1865 = fmul fast float %1862, %713
  %1866 = fadd fast float %1863, %1851
  %1867 = fadd fast float %1864, %1852
  %1868 = fadd fast float %1865, %1853
  %1869 = and i32 %91, 1024
  %1870 = icmp eq i32 %1869, 0
  br i1 %1870, label %1902, label %1871, !dx.controlflow.hints !70

; <label>:1871                                    ; preds = %1797
  %1872 = fmul fast float %1868, %63
  %1873 = fmul fast float %1867, %64
  %1874 = fsub fast float %1872, %1873
  %1875 = fmul fast float %1866, %64
  %1876 = fmul fast float %1868, %62
  %1877 = fsub fast float %1875, %1876
  %1878 = fmul fast float %1867, %62
  %1879 = fmul fast float %1866, %63
  %1880 = fsub fast float %1878, %1879
  %1881 = fmul fast float %1874, 2.000000e+00
  %1882 = fmul fast float %1877, 2.000000e+00
  %1883 = fmul fast float %1880, 2.000000e+00
  %1884 = fmul fast float %1881, %65
  %1885 = fmul fast float %1882, %65
  %1886 = fmul fast float %1883, %65
  %1887 = fmul fast float %1883, %63
  %1888 = fmul fast float %1882, %64
  %1889 = fmul fast float %1881, %64
  %1890 = fmul fast float %1883, %62
  %1891 = fmul fast float %1882, %62
  %1892 = fmul fast float %1881, %63
  %1893 = fadd fast float %1887, %1866
  %1894 = fadd fast float %1893, %1884
  %1895 = fsub fast float %1894, %1888
  %1896 = fsub fast float %1867, %1890
  %1897 = fadd fast float %1896, %1885
  %1898 = fadd fast float %1897, %1889
  %1899 = fadd fast float %1868, %1886
  %1900 = fsub fast float %1899, %1892
  %1901 = fadd fast float %1900, %1891
  br label %1902

; <label>:1902                                    ; preds = %1871, %1797
  %1903 = phi float [ %1895, %1871 ], [ %1866, %1797 ]
  %1904 = phi float [ %1898, %1871 ], [ %1867, %1797 ]
  %1905 = phi float [ %1901, %1871 ], [ %1868, %1797 ]
  %1906 = and i32 %666, 1
  %1907 = icmp eq i32 %1906, 0
  %1908 = and i1 %657, %1907
  br i1 %1908, label %1909, label %1916, !dx.controlflow.hints !71

; <label>:1909                                    ; preds = %1902
  %1910 = fmul fast float %1800, %679
  %1911 = fmul fast float %1801, %679
  %1912 = fmul fast float %1802, %679
  %1913 = fadd fast float %1903, %1910
  %1914 = fadd fast float %1904, %1911
  %1915 = fadd fast float %1905, %1912
  br label %1934

; <label>:1916                                    ; preds = %1902
  br i1 %657, label %1927, label %1917, !dx.controlflow.hints !72

; <label>:1917                                    ; preds = %1916
  %1918 = fadd fast float %1903, %1800
  %1919 = fadd fast float %1904, %1801
  %1920 = fadd fast float %1905, %1802
  %1921 = fmul fast float %1918, %71
  %1922 = fmul fast float %1919, %71
  %1923 = fmul fast float %1920, %71
  %1924 = fadd fast float %1921, %667
  %1925 = fadd fast float %1922, %668
  %1926 = fadd fast float %1923, %669
  br label %1934

; <label>:1927                                    ; preds = %1916
  %1928 = fmul fast float %1800, %71
  %1929 = fmul fast float %1801, %71
  %1930 = fmul fast float %1802, %71
  %1931 = fadd fast float %1928, %667
  %1932 = fadd fast float %1929, %668
  %1933 = fadd fast float %1930, %669
  br label %1934

; <label>:1934                                    ; preds = %1927, %1917, %1909
  %1935 = phi float [ %1913, %1909 ], [ %1931, %1927 ], [ %1924, %1917 ]
  %1936 = phi float [ %1914, %1909 ], [ %1932, %1927 ], [ %1925, %1917 ]
  %1937 = phi float [ %1915, %1909 ], [ %1933, %1927 ], [ %1926, %1917 ]
  %1938 = shl nuw nsw i32 %1843, 7
  %1939 = xor i32 %1938, %1843
  %1940 = lshr i32 %1939, 9
  %1941 = and i32 %1940, 127
  %1942 = and i32 %1939, 65535
  %1943 = xor i32 %1941, %1942
  %1944 = shl nuw nsw i32 %1943, 8
  %1945 = and i32 %1944, 65280
  %1946 = xor i32 %1945, %1943
  %1947 = uitofp i32 %1946 to float
  %1948 = fmul fast float %1947, 0x3EF0001000000000
  %1949 = fmul fast float %1948, %773
  %1950 = fadd fast float %1949, %735
  %1951 = fmul fast float %1948, %847
  %1952 = fadd fast float %1951, %810
  %1953 = fsub fast float %1952, %1950
  %1954 = fmul fast float %1953, %713
  %1955 = fadd fast float %1954, %1950
  %1956 = fmul fast float %1955, %71
  %1957 = fsub fast float 1.000000e+00, %1956
  %1958 = call float @dx.op.unary.f32(i32 7, float %1957)  ; Saturate(value)
  %1959 = fmul fast float %1958, %1935
  %1960 = fmul fast float %1958, %1936
  %1961 = fmul fast float %1958, %1937
  %1962 = fmul fast float %1959, %71
  %1963 = fmul fast float %1960, %71
  %1964 = fmul fast float %1961, %71
  %1965 = fadd fast float %1962, %671
  %1966 = fadd fast float %1963, %672
  %1967 = fadd fast float %1964, %673
  %1968 = and i32 %91, 2
  %1969 = icmp eq i32 %1968, 0
  br i1 %1969, label %2536, label %1970, !dx.controlflow.hints !73

; <label>:1970                                    ; preds = %1934
  %1971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %1972 = extractvalue %dx.types.CBufRet.f32 %1971, 0
  %1973 = extractvalue %dx.types.CBufRet.f32 %1971, 1
  %1974 = extractvalue %dx.types.CBufRet.f32 %1971, 2
  %1975 = fsub fast float %1965, %1972
  %1976 = fsub fast float %1966, %1973
  %1977 = fsub fast float %1967, %1974
  %1978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1979 = extractvalue %dx.types.CBufRet.f32 %1978, 0
  %1980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1981 = extractvalue %dx.types.CBufRet.f32 %1980, 0
  %1982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1983 = extractvalue %dx.types.CBufRet.f32 %1982, 0
  %1984 = call float @dx.op.dot3.f32(i32 55, float %1979, float %1981, float %1983, float %1975, float %1976, float %1977)  ; Dot3(ax,ay,az,bx,by,bz)
  %1985 = fcmp fast ogt float %1984, 0.000000e+00
  br i1 %1985, label %1986, label %2053, !dx.controlflow.hints !74

; <label>:1986                                    ; preds = %1970
  %1987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1988 = extractvalue %dx.types.CBufRet.f32 %1987, 0
  %1989 = extractvalue %dx.types.CBufRet.f32 %1987, 1
  %1990 = extractvalue %dx.types.CBufRet.f32 %1987, 3
  %1991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1992 = extractvalue %dx.types.CBufRet.f32 %1991, 0
  %1993 = extractvalue %dx.types.CBufRet.f32 %1991, 1
  %1994 = extractvalue %dx.types.CBufRet.f32 %1991, 3
  %1995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1996 = extractvalue %dx.types.CBufRet.f32 %1995, 0
  %1997 = extractvalue %dx.types.CBufRet.f32 %1995, 1
  %1998 = extractvalue %dx.types.CBufRet.f32 %1995, 3
  %1999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2000 = extractvalue %dx.types.CBufRet.f32 %1999, 0
  %2001 = extractvalue %dx.types.CBufRet.f32 %1999, 1
  %2002 = extractvalue %dx.types.CBufRet.f32 %1999, 3
  %2003 = fmul fast float %1988, %1975
  %2004 = call float @dx.op.tertiary.f32(i32 46, float %1992, float %1976, float %2003)  ; FMad(a,b,c)
  %2005 = call float @dx.op.tertiary.f32(i32 46, float %1996, float %1977, float %2004)  ; FMad(a,b,c)
  %2006 = fadd fast float %2005, %2000
  %2007 = fmul fast float %1989, %1975
  %2008 = call float @dx.op.tertiary.f32(i32 46, float %1993, float %1976, float %2007)  ; FMad(a,b,c)
  %2009 = call float @dx.op.tertiary.f32(i32 46, float %1997, float %1977, float %2008)  ; FMad(a,b,c)
  %2010 = fadd fast float %2009, %2001
  %2011 = fmul fast float %1990, %1975
  %2012 = call float @dx.op.tertiary.f32(i32 46, float %1994, float %1976, float %2011)  ; FMad(a,b,c)
  %2013 = call float @dx.op.tertiary.f32(i32 46, float %1998, float %1977, float %2012)  ; FMad(a,b,c)
  %2014 = fadd fast float %2013, %2002
  %2015 = fdiv fast float %2006, %2014
  %2016 = fdiv fast float %2010, %2014
  %2017 = fcmp fast ogt float %2015, -1.000000e+00
  %2018 = fcmp fast olt float %2015, 1.000000e+00
  %2019 = and i1 %2017, %2018
  %2020 = fcmp fast ogt float %2016, -1.000000e+00
  %2021 = and i1 %2019, %2020
  %2022 = fcmp fast olt float %2016, 1.000000e+00
  %2023 = and i1 %2022, %2021
  br i1 %2023, label %2024, label %2053, !dx.controlflow.hints !75

; <label>:2024                                    ; preds = %1986
  %2025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2026 = extractvalue %dx.types.CBufRet.f32 %2025, 2
  %2027 = extractvalue %dx.types.CBufRet.f32 %2025, 3
  %2028 = fsub fast float %2015, %2026
  %2029 = fsub fast float %2016, %2027
  %2030 = fmul fast float %2028, 5.000000e-01
  %2031 = fmul fast float %2029, 5.000000e-01
  %2032 = fadd fast float %2030, 5.000000e-01
  %2033 = fsub fast float 5.000000e-01, %2031
  %2034 = extractvalue %dx.types.CBufRet.f32 %2025, 0
  %2035 = extractvalue %dx.types.CBufRet.f32 %2025, 1
  %2036 = fmul fast float %2032, %2034
  %2037 = fmul fast float %2033, %2035
  %2038 = fptoui float %2036 to i32
  %2039 = fptoui float %2037 to i32
  %2040 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %2038, i32 %2039, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2041 = extractvalue %dx.types.ResRet.f32 %2040, 0
  %2042 = fcmp fast ogt float %2041, -1.000000e+00
  %2043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2044 = extractvalue %dx.types.CBufRet.f32 %2043, 1
  %2045 = select i1 %2042, float %2044, float 1.000000e+00
  %2046 = fadd fast float %2041, 1.000000e+00
  %2047 = fmul fast float %2045, %2046
  %2048 = call float @dx.op.unary.f32(i32 6, float %2047)  ; FAbs(value)
  %2049 = fsub fast float %2014, %2048
  %2050 = call float @dx.op.unary.f32(i32 6, float %2049)  ; FAbs(value)
  %2051 = extractvalue %dx.types.CBufRet.f32 %1971, 3
  %2052 = fcmp fast olt float %2050, %2051
  br i1 %2052, label %2057, label %2053, !dx.controlflow.hints !76

; <label>:2053                                    ; preds = %2024, %1986, %1970
  %2054 = phi float [ %2048, %2024 ], [ 0.000000e+00, %1986 ], [ 0.000000e+00, %1970 ]
  %2055 = phi i32 [ %2038, %2024 ], [ 0, %1986 ], [ 0, %1970 ]
  %2056 = phi i32 [ %2039, %2024 ], [ 0, %1986 ], [ 0, %1970 ]
  br label %2057

; <label>:2057                                    ; preds = %2053, %2024
  %2058 = phi float [ %2054, %2053 ], [ %2048, %2024 ]
  %2059 = phi i32 [ %2055, %2053 ], [ %2038, %2024 ]
  %2060 = phi i32 [ %2056, %2053 ], [ %2039, %2024 ]
  %2061 = phi i1 [ false, %2053 ], [ true, %2024 ]
  br i1 %2061, label %2062, label %2536, !dx.controlflow.hints !77

; <label>:2062                                    ; preds = %2057
  %2063 = fcmp fast ogt float %156, 0.000000e+00
  br i1 %2063, label %2064, label %2092, !dx.controlflow.hints !78

; <label>:2064                                    ; preds = %2062
  %2065 = shl nuw i32 %1946, 16
  %2066 = or i32 %2065, %1946
  %2067 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2068 = extractvalue %dx.types.CBufRet.i32 %2067, 1
  %2069 = xor i32 %2068, %2066
  %2070 = xor i32 %2069, 61
  %2071 = lshr i32 %2069, 16
  %2072 = xor i32 %2070, %2071
  %2073 = mul i32 %2072, 9
  %2074 = lshr i32 %2073, 4
  %2075 = xor i32 %2074, %2073
  %2076 = mul i32 %2075, 668265261
  %2077 = lshr i32 %2076, 15
  %2078 = xor i32 %2077, %2076
  %2079 = shl i32 %2078, 7
  %2080 = and i32 %2079, 65408
  %2081 = and i32 %2078, 65535
  %2082 = xor i32 %2080, %2081
  %2083 = lshr i32 %2082, 9
  %2084 = xor i32 %2083, %2082
  %2085 = shl nuw nsw i32 %2084, 8
  %2086 = and i32 %2085, 65280
  %2087 = xor i32 %2086, %2084
  %2088 = uitofp i32 %2087 to float
  %2089 = fmul fast float %2088, 0x3EF0001000000000
  %2090 = fcmp fast ugt float %2089, %156
  br i1 %2090, label %2092, label %2091, !dx.controlflow.hints !79

; <label>:2091                                    ; preds = %2064
  br label %2092

; <label>:2092                                    ; preds = %2091, %2064, %2062
  %2093 = phi i1 [ true, %2091 ], [ false, %2064 ], [ false, %2062 ]
  br i1 %2093, label %2094, label %2224, !dx.controlflow.hints !80

; <label>:2094                                    ; preds = %2092
  %2095 = call float @dx.op.dot3.f32(i32 55, float %1962, float %1963, float %1964, float %1962, float %1963, float %1964)  ; Dot3(ax,ay,az,bx,by,bz)
  %2096 = call float @dx.op.unary.f32(i32 25, float %2095)  ; Rsqrt(value)
  %2097 = fmul fast float %2096, 5.000000e-01
  %2098 = fcmp fast ugt float %2097, 1.000000e+00
  br i1 %2098, label %2224, label %2099

; <label>:2099                                    ; preds = %2094
  br label %2100

; <label>:2100                                    ; preds = %2203, %2099
  %2101 = phi float [ %2208, %2203 ], [ 0.000000e+00, %2099 ]
  %2102 = phi float [ %2209, %2203 ], [ 1.000000e+00, %2099 ]
  %2103 = phi float [ %2218, %2203 ], [ 5.000000e-01, %2099 ]
  %2104 = phi i32 [ %2219, %2203 ], [ 0, %2099 ]
  %2105 = phi float [ %2210, %2203 ], [ %1975, %2099 ]
  %2106 = phi float [ %2211, %2203 ], [ %1976, %2099 ]
  %2107 = phi float [ %2212, %2203 ], [ %1977, %2099 ]
  %2108 = phi i32 [ %2213, %2203 ], [ %2059, %2099 ]
  %2109 = phi i32 [ %2214, %2203 ], [ %2060, %2099 ]
  %2110 = phi float [ %2215, %2203 ], [ %2058, %2099 ]
  %2111 = fmul fast float %2103, %1962
  %2112 = fmul fast float %2103, %1963
  %2113 = fmul fast float %2103, %1964
  %2114 = fadd fast float %2111, %671
  %2115 = fadd fast float %2112, %672
  %2116 = fadd fast float %2113, %673
  %2117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %2118 = extractvalue %dx.types.CBufRet.f32 %2117, 0
  %2119 = extractvalue %dx.types.CBufRet.f32 %2117, 1
  %2120 = extractvalue %dx.types.CBufRet.f32 %2117, 2
  %2121 = fsub fast float %2114, %2118
  %2122 = fsub fast float %2115, %2119
  %2123 = fsub fast float %2116, %2120
  %2124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %2125 = extractvalue %dx.types.CBufRet.f32 %2124, 0
  %2126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2127 = extractvalue %dx.types.CBufRet.f32 %2126, 0
  %2128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2129 = extractvalue %dx.types.CBufRet.f32 %2128, 0
  %2130 = call float @dx.op.dot3.f32(i32 55, float %2125, float %2127, float %2129, float %2121, float %2122, float %2123)  ; Dot3(ax,ay,az,bx,by,bz)
  %2131 = fcmp fast ogt float %2130, 0.000000e+00
  br i1 %2131, label %2132, label %2199, !dx.controlflow.hints !74

; <label>:2132                                    ; preds = %2100
  %2133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2134 = extractvalue %dx.types.CBufRet.f32 %2133, 0
  %2135 = extractvalue %dx.types.CBufRet.f32 %2133, 1
  %2136 = extractvalue %dx.types.CBufRet.f32 %2133, 3
  %2137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2138 = extractvalue %dx.types.CBufRet.f32 %2137, 0
  %2139 = extractvalue %dx.types.CBufRet.f32 %2137, 1
  %2140 = extractvalue %dx.types.CBufRet.f32 %2137, 3
  %2141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2142 = extractvalue %dx.types.CBufRet.f32 %2141, 0
  %2143 = extractvalue %dx.types.CBufRet.f32 %2141, 1
  %2144 = extractvalue %dx.types.CBufRet.f32 %2141, 3
  %2145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2146 = extractvalue %dx.types.CBufRet.f32 %2145, 0
  %2147 = extractvalue %dx.types.CBufRet.f32 %2145, 1
  %2148 = extractvalue %dx.types.CBufRet.f32 %2145, 3
  %2149 = fmul fast float %2134, %2121
  %2150 = call float @dx.op.tertiary.f32(i32 46, float %2138, float %2122, float %2149)  ; FMad(a,b,c)
  %2151 = call float @dx.op.tertiary.f32(i32 46, float %2142, float %2123, float %2150)  ; FMad(a,b,c)
  %2152 = fadd fast float %2151, %2146
  %2153 = fmul fast float %2135, %2121
  %2154 = call float @dx.op.tertiary.f32(i32 46, float %2139, float %2122, float %2153)  ; FMad(a,b,c)
  %2155 = call float @dx.op.tertiary.f32(i32 46, float %2143, float %2123, float %2154)  ; FMad(a,b,c)
  %2156 = fadd fast float %2155, %2147
  %2157 = fmul fast float %2136, %2121
  %2158 = call float @dx.op.tertiary.f32(i32 46, float %2140, float %2122, float %2157)  ; FMad(a,b,c)
  %2159 = call float @dx.op.tertiary.f32(i32 46, float %2144, float %2123, float %2158)  ; FMad(a,b,c)
  %2160 = fadd fast float %2159, %2148
  %2161 = fdiv fast float %2152, %2160
  %2162 = fdiv fast float %2156, %2160
  %2163 = fcmp fast ogt float %2161, -1.000000e+00
  %2164 = fcmp fast olt float %2161, 1.000000e+00
  %2165 = and i1 %2163, %2164
  %2166 = fcmp fast ogt float %2162, -1.000000e+00
  %2167 = and i1 %2165, %2166
  %2168 = fcmp fast olt float %2162, 1.000000e+00
  %2169 = and i1 %2168, %2167
  br i1 %2169, label %2170, label %2199, !dx.controlflow.hints !75

; <label>:2170                                    ; preds = %2132
  %2171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2172 = extractvalue %dx.types.CBufRet.f32 %2171, 2
  %2173 = extractvalue %dx.types.CBufRet.f32 %2171, 3
  %2174 = fsub fast float %2161, %2172
  %2175 = fsub fast float %2162, %2173
  %2176 = fmul fast float %2174, 5.000000e-01
  %2177 = fmul fast float %2175, 5.000000e-01
  %2178 = fadd fast float %2176, 5.000000e-01
  %2179 = fsub fast float 5.000000e-01, %2177
  %2180 = extractvalue %dx.types.CBufRet.f32 %2171, 0
  %2181 = extractvalue %dx.types.CBufRet.f32 %2171, 1
  %2182 = fmul fast float %2178, %2180
  %2183 = fmul fast float %2179, %2181
  %2184 = fptoui float %2182 to i32
  %2185 = fptoui float %2183 to i32
  %2186 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %2184, i32 %2185, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2187 = extractvalue %dx.types.ResRet.f32 %2186, 0
  %2188 = fcmp fast ogt float %2187, -1.000000e+00
  %2189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2190 = extractvalue %dx.types.CBufRet.f32 %2189, 1
  %2191 = select i1 %2188, float %2190, float 1.000000e+00
  %2192 = fadd fast float %2187, 1.000000e+00
  %2193 = fmul fast float %2191, %2192
  %2194 = call float @dx.op.unary.f32(i32 6, float %2193)  ; FAbs(value)
  %2195 = fsub fast float %2160, %2194
  %2196 = call float @dx.op.unary.f32(i32 6, float %2195)  ; FAbs(value)
  %2197 = extractvalue %dx.types.CBufRet.f32 %2117, 3
  %2198 = fcmp fast olt float %2196, %2197
  br i1 %2198, label %2203, label %2199, !dx.controlflow.hints !76

; <label>:2199                                    ; preds = %2170, %2132, %2100
  %2200 = phi float [ %2194, %2170 ], [ 0.000000e+00, %2132 ], [ 0.000000e+00, %2100 ]
  %2201 = phi i32 [ %2184, %2170 ], [ 0, %2132 ], [ 0, %2100 ]
  %2202 = phi i32 [ %2185, %2170 ], [ 0, %2132 ], [ 0, %2100 ]
  br label %2203

; <label>:2203                                    ; preds = %2199, %2170
  %2204 = phi float [ %2200, %2199 ], [ %2194, %2170 ]
  %2205 = phi i32 [ %2201, %2199 ], [ %2184, %2170 ]
  %2206 = phi i32 [ %2202, %2199 ], [ %2185, %2170 ]
  %2207 = phi i1 [ false, %2199 ], [ true, %2170 ]
  %2208 = select i1 %2207, float %2101, float %2103
  %2209 = select i1 %2207, float %2103, float %2102
  %2210 = select i1 %2207, float %2121, float %2105
  %2211 = select i1 %2207, float %2122, float %2106
  %2212 = select i1 %2207, float %2123, float %2107
  %2213 = select i1 %2207, i32 %2205, i32 %2108
  %2214 = select i1 %2207, i32 %2206, i32 %2109
  %2215 = select i1 %2207, float %2204, float %2110
  %2216 = fsub fast float %2209, %2208
  %2217 = fmul fast float %2216, 5.000000e-01
  %2218 = fadd fast float %2217, %2208
  %2219 = add nuw nsw i32 %2104, 1
  %2220 = fcmp fast oge float %2216, %2097
  %2221 = icmp ult i32 %2219, 8
  %2222 = and i1 %2221, %2220
  br i1 %2222, label %2100, label %2223

; <label>:2223                                    ; preds = %2203
  br label %2224

; <label>:2224                                    ; preds = %2223, %2094, %2092
  %2225 = phi float [ %1975, %2092 ], [ %1975, %2094 ], [ %2210, %2223 ]
  %2226 = phi float [ %1976, %2092 ], [ %1976, %2094 ], [ %2211, %2223 ]
  %2227 = phi float [ %1977, %2092 ], [ %1977, %2094 ], [ %2212, %2223 ]
  %2228 = phi i32 [ %2059, %2092 ], [ %2059, %2094 ], [ %2213, %2223 ]
  %2229 = phi i32 [ %2060, %2092 ], [ %2060, %2094 ], [ %2214, %2223 ]
  %2230 = phi float [ %2058, %2092 ], [ %2058, %2094 ], [ %2215, %2223 ]
  %2231 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %4, i32 0, i32 %2228, i32 %2229, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2232 = extractvalue %dx.types.ResRet.i32 %2231, 0
  %2233 = lshr i32 %2232, 8
  %2234 = and i32 %2232, 255
  %2235 = and i32 %2233, 255
  %2236 = uitofp i32 %2234 to float
  %2237 = uitofp i32 %2235 to float
  %2238 = fmul fast float %2236, 0x3F80101020000000
  %2239 = fmul fast float %2237, 0x3F80101020000000
  %2240 = fadd fast float %2238, -1.000000e+00
  %2241 = fadd fast float %2239, -1.000000e+00
  %2242 = call float @dx.op.unary.f32(i32 6, float %2240)  ; FAbs(value)
  %2243 = fsub fast float 1.000000e+00, %2242
  %2244 = call float @dx.op.unary.f32(i32 6, float %2241)  ; FAbs(value)
  %2245 = fsub fast float %2243, %2244
  %2246 = fsub fast float -0.000000e+00, %2245
  %2247 = call float @dx.op.binary.f32(i32 35, float %2246, float 0.000000e+00)  ; FMax(a,b)
  %2248 = fcmp fast ogt float %2240, 0.000000e+00
  %2249 = fsub fast float -0.000000e+00, %2247
  %2250 = select i1 %2248, float %2249, float %2247
  %2251 = fadd fast float %2250, %2240
  %2252 = fcmp fast ogt float %2241, 0.000000e+00
  %2253 = select i1 %2252, float %2249, float %2247
  %2254 = fadd fast float %2253, %2241
  %2255 = call float @dx.op.dot3.f32(i32 55, float %2251, float %2254, float %2245, float %2251, float %2254, float %2245)  ; Dot3(ax,ay,az,bx,by,bz)
  %2256 = call float @dx.op.unary.f32(i32 25, float %2255)  ; Rsqrt(value)
  %2257 = fmul fast float %2251, %2256
  %2258 = fmul fast float %2254, %2256
  %2259 = fmul fast float %2256, %2245
  %2260 = and i32 %91, 256
  %2261 = icmp ne i32 %2260, 0
  %2262 = select i1 %2261, float %885, float %874
  %2263 = fmul fast float %769, %874
  %2264 = fmul fast float %771, %2262
  %2265 = fadd fast float %2263, %731
  %2266 = fadd fast float %2264, %733
  %2267 = fmul fast float %843, %874
  %2268 = fmul fast float %845, %2262
  %2269 = fsub fast float %806, %2265
  %2270 = fadd fast float %2269, %2267
  %2271 = fsub fast float %808, %2266
  %2272 = fadd fast float %2271, %2268
  %2273 = fmul fast float %2270, %713
  %2274 = fmul fast float %2272, %713
  %2275 = fadd fast float %2273, %2265
  %2276 = fadd fast float %2274, %2266
  %2277 = fcmp fast ogt float %153, 0.000000e+00
  %2278 = fcmp fast ogt float %154, 0.000000e+00
  %2279 = or i1 %2277, %2278
  %2280 = call float @dx.op.binary.f32(i32 35, float %2276, float %153)  ; FMax(a,b)
  %2281 = call float @dx.op.binary.f32(i32 36, float %2280, float %154)  ; FMin(a,b)
  %2282 = select i1 %2279, float %2281, float %2276
  %2283 = fmul fast float %2225, %2225
  %2284 = fmul fast float %2226, %2226
  %2285 = fadd fast float %2284, %2283
  %2286 = fmul fast float %2227, %2227
  %2287 = fadd fast float %2285, %2286
  %2288 = call float @dx.op.unary.f32(i32 24, float %2287)  ; Sqrt(value)
  %2289 = and i32 %91, 2097152
  %2290 = icmp ne i32 %2289, 0
  %2291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2292 = extractvalue %dx.types.CBufRet.f32 %2291, 3
  %2293 = select i1 %2290, float 1.000000e+00, float %2292
  %2294 = fmul fast float %2293, %2288
  %2295 = call float @dx.op.binary.f32(i32 35, float %2294, float %123)  ; FMax(a,b)
  %2296 = call float @dx.op.binary.f32(i32 36, float %2295, float %124)  ; FMin(a,b)
  %2297 = fsub fast float %2296, %123
  %2298 = fmul fast float %129, %119
  %2299 = fmul fast float %2298, %2297
  %2300 = fadd fast float %2299, %128
  %2301 = call float @dx.op.binary.f32(i32 35, float %2294, float %124)  ; FMax(a,b)
  %2302 = call float @dx.op.binary.f32(i32 36, float %2301, float %125)  ; FMin(a,b)
  %2303 = fsub fast float %2302, %124
  %2304 = fmul fast float %2303, %120
  %2305 = fsub fast float %130, %2300
  %2306 = fmul fast float %2304, %2305
  %2307 = fadd fast float %2306, %2300
  %2308 = call float @dx.op.binary.f32(i32 35, float %2294, float %125)  ; FMax(a,b)
  %2309 = call float @dx.op.binary.f32(i32 36, float %2308, float %126)  ; FMin(a,b)
  %2310 = fsub fast float %2309, %125
  %2311 = fmul fast float %2310, %121
  %2312 = fsub fast float %131, %2307
  %2313 = fmul fast float %2311, %2312
  %2314 = fadd fast float %2313, %2307
  %2315 = call float @dx.op.binary.f32(i32 35, float %2294, float %137)  ; FMax(a,b)
  %2316 = call float @dx.op.binary.f32(i32 36, float %2315, float %138)  ; FMin(a,b)
  %2317 = fsub fast float %2316, %137
  %2318 = fmul fast float %143, %133
  %2319 = fmul fast float %2318, %2317
  %2320 = fadd fast float %2319, %142
  %2321 = call float @dx.op.binary.f32(i32 35, float %2294, float %138)  ; FMax(a,b)
  %2322 = call float @dx.op.binary.f32(i32 36, float %2321, float %139)  ; FMin(a,b)
  %2323 = fsub fast float %2322, %138
  %2324 = fmul fast float %2323, %134
  %2325 = fsub fast float %144, %2320
  %2326 = fmul fast float %2324, %2325
  %2327 = fadd fast float %2326, %2320
  %2328 = call float @dx.op.binary.f32(i32 35, float %2294, float %139)  ; FMax(a,b)
  %2329 = call float @dx.op.binary.f32(i32 36, float %2328, float %140)  ; FMin(a,b)
  %2330 = fsub fast float %2329, %139
  %2331 = fmul fast float %2330, %135
  %2332 = fsub fast float %145, %2327
  %2333 = fmul fast float %2331, %2332
  %2334 = fsub fast float %2327, %2314
  %2335 = fadd fast float %2334, %2333
  %2336 = fmul fast float %896, %2335
  %2337 = fadd fast float %2336, %2314
  %2338 = fmul fast float %2337, %2275
  %2339 = fmul fast float %2337, %2282
  %2340 = fmul fast float %2338, %2338
  %2341 = fmul fast float %2339, %2339
  %2342 = fadd fast float %2340, %2341
  %2343 = call float @dx.op.unary.f32(i32 24, float %2342)  ; Sqrt(value)
  %2344 = fmul fast float %2343, %107
  %2345 = fadd fast float %2344, %109
  %2346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %2347 = extractvalue %dx.types.CBufRet.f32 %2346, 0
  %2348 = extractvalue %dx.types.CBufRet.f32 %2346, 1
  %2349 = extractvalue %dx.types.CBufRet.f32 %2346, 2
  %2350 = uitofp i32 %2228 to float
  %2351 = uitofp i32 %2229 to float
  %2352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2353 = extractvalue %dx.types.CBufRet.f32 %2352, 2
  %2354 = extractvalue %dx.types.CBufRet.f32 %2352, 3
  %2355 = fmul fast float %2350, 2.000000e+00
  %2356 = fmul fast float %2355, %2353
  %2357 = fmul fast float %2351, 2.000000e+00
  %2358 = fmul fast float %2357, %2354
  %2359 = fsub fast float 1.000000e+00, %2356
  %2360 = fsub fast float 1.000000e+00, %2358
  %2361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2362 = extractvalue %dx.types.CBufRet.f32 %2361, 0
  %2363 = extractvalue %dx.types.CBufRet.f32 %2361, 1
  %2364 = extractvalue %dx.types.CBufRet.f32 %2361, 2
  %2365 = fmul fast float %2359, %2362
  %2366 = fmul fast float %2359, %2363
  %2367 = fmul fast float %2359, %2364
  %2368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2369 = extractvalue %dx.types.CBufRet.f32 %2368, 0
  %2370 = extractvalue %dx.types.CBufRet.f32 %2368, 1
  %2371 = extractvalue %dx.types.CBufRet.f32 %2368, 2
  %2372 = fmul fast float %2360, %2369
  %2373 = fmul fast float %2360, %2370
  %2374 = fmul fast float %2360, %2371
  %2375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2376 = extractvalue %dx.types.CBufRet.f32 %2375, 0
  %2377 = extractvalue %dx.types.CBufRet.f32 %2375, 1
  %2378 = extractvalue %dx.types.CBufRet.f32 %2375, 2
  %2379 = fadd fast float %2372, %2376
  %2380 = fadd fast float %2379, %2365
  %2381 = fadd fast float %2373, %2377
  %2382 = fadd fast float %2381, %2366
  %2383 = fadd fast float %2374, %2378
  %2384 = fadd fast float %2383, %2367
  %2385 = fmul fast float %2380, %2230
  %2386 = fmul fast float %2382, %2230
  %2387 = fmul fast float %2384, %2230
  %2388 = fadd fast float %2385, %2347
  %2389 = fadd fast float %2386, %2348
  %2390 = fadd fast float %2387, %2349
  %2391 = call float @dx.op.dot3.f32(i32 55, float %2257, float %2258, float %2259, float %2388, float %2389, float %2390)  ; Dot3(ax,ay,az,bx,by,bz)
  %2392 = call float @dx.op.dot3.f32(i32 55, float %2257, float %2258, float %2259, float %671, float %672, float %673)  ; Dot3(ax,ay,az,bx,by,bz)
  %2393 = call float @dx.op.dot3.f32(i32 55, float %2257, float %2258, float %2259, float %1962, float %1963, float %1964)  ; Dot3(ax,ay,az,bx,by,bz)
  %2394 = fdiv fast float 1.000000e+00, %2393
  %2395 = fsub fast float -0.000000e+00, %2394
  %2396 = fsub fast float %2392, %2391
  %2397 = fadd fast float %2396, %2345
  %2398 = fmul fast float %2397, %2395
  %2399 = fsub fast float %2396, %2345
  %2400 = fmul fast float %2399, %2395
  %2401 = fcmp fast oge float %2398, 0.000000e+00
  %2402 = fcmp fast ole float %2400, 1.000000e+00
  %2403 = and i1 %2401, %2402
  %2404 = fcmp fast oge float %2396, 0.000000e+00
  %2405 = and i1 %2404, %2403
  br i1 %2405, label %2406, label %2529, !dx.controlflow.hints !81

; <label>:2406                                    ; preds = %2224
  %2407 = shl nuw nsw i32 %1946, 7
  %2408 = and i32 %2407, 65408
  %2409 = xor i32 %2408, %1946
  %2410 = lshr i32 %2409, 9
  %2411 = xor i32 %2410, %2409
  %2412 = shl nuw nsw i32 %2411, 8
  %2413 = and i32 %2412, 65280
  %2414 = xor i32 %2413, %2411
  %2415 = uitofp i32 %2414 to float
  %2416 = fmul fast float %113, 0x3EF0001000000000
  %2417 = fmul fast float %2416, %2415
  %2418 = fadd fast float %2417, %111
  %2419 = call float @dx.op.dot3.f32(i32 55, float %2257, float %2258, float %2259, float %1959, float %1960, float %1961)  ; Dot3(ax,ay,az,bx,by,bz)
  %2420 = fmul fast float %2419, %2257
  %2421 = fmul fast float %2419, %2258
  %2422 = fmul fast float %2419, %2259
  %2423 = fsub fast float %1959, %2420
  %2424 = fsub fast float %1960, %2421
  %2425 = fsub fast float %1961, %2422
  %2426 = fmul fast float %2423, %105
  %2427 = fmul fast float %2424, %105
  %2428 = fmul fast float %2425, %105
  %2429 = fmul fast float %2420, %2418
  %2430 = fmul fast float %2421, %2418
  %2431 = fmul fast float %2422, %2418
  %2432 = fsub fast float %2426, %2429
  %2433 = fsub fast float %2427, %2430
  %2434 = fsub fast float %2428, %2431
  %2435 = fcmp fast olt float %2393, 0xBFB99999A0000000
  %2436 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2400)  ; FMax(a,b)
  %2437 = select i1 %2435, float %2436, float 0.000000e+00
  %2438 = fmul fast float %2437, %1962
  %2439 = fmul fast float %2437, %1963
  %2440 = fmul fast float %2437, %1964
  %2441 = fadd fast float %2438, %671
  %2442 = fadd fast float %2439, %672
  %2443 = fadd fast float %2440, %673
  %2444 = fsub fast float 1.000000e+00, %2437
  %2445 = fmul fast float %2444, %71
  %2446 = fmul fast float %2445, %2432
  %2447 = fmul fast float %2445, %2433
  %2448 = fmul fast float %2445, %2434
  %2449 = fadd fast float %2446, %2441
  %2450 = fadd fast float %2447, %2442
  %2451 = fadd fast float %2448, %2443
  %2452 = or i32 %666, 1
  %2453 = fadd fast float %697, %655
  %2454 = icmp ne i32 %1798, 0
  %2455 = fcmp fast olt float %2453, 1.000000e+00
  %2456 = and i1 %2455, %2454
  %2457 = zext i1 %2456 to i32
  br i1 %2093, label %2458, label %2536, !dx.controlflow.hints !82

; <label>:2458                                    ; preds = %2406
  %2459 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 0, i32 0, i32 undef, i32 7)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %2460 = add i32 %2459, 7
  %2461 = icmp ugt i32 %2460, 4095
  br i1 %2461, label %2462, label %2465, !dx.controlflow.hints !83

; <label>:2462                                    ; preds = %2458
  %2463 = icmp ult i32 %2459, 4096
  br i1 %2463, label %2464, label %2465, !dx.controlflow.hints !84

; <label>:2464                                    ; preds = %2462
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %2459, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %2465

; <label>:2465                                    ; preds = %2464, %2462, %2458
  %2466 = phi i32 [ %2459, %2458 ], [ 0, %2464 ], [ 0, %2462 ]
  %2467 = icmp eq i32 %2466, 0
  br i1 %2467, label %2536, label %2468, !dx.controlflow.hints !85

; <label>:2468                                    ; preds = %2465
  %2469 = fmul fast float %2345, %2257
  %2470 = fmul fast float %2345, %2258
  %2471 = fmul fast float %2345, %2259
  %2472 = fsub fast float %2441, %2469
  %2473 = fsub fast float %2442, %2470
  %2474 = fsub fast float %2443, %2471
  %2475 = shl i32 %60, 16
  %2476 = or i32 %2475, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %2466, i32 0, i32 %2476, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2477 = add i32 %2466, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %2477, i32 0, i32 %77, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2478 = bitcast float %2472 to i32
  %2479 = add i32 %2466, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %2479, i32 0, i32 %2478, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2480 = bitcast float %2473 to i32
  %2481 = add i32 %2466, 3
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %2481, i32 0, i32 %2480, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2482 = bitcast float %2474 to i32
  %2483 = add i32 %2466, 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %2483, i32 0, i32 %2482, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2484 = fadd fast float %2257, 1.000000e+00
  %2485 = fadd fast float %2258, 1.000000e+00
  %2486 = fadd fast float %2259, 1.000000e+00
  %2487 = fmul fast float %2484, 5.000000e-01
  %2488 = fmul fast float %2485, 5.000000e-01
  %2489 = fmul fast float %2486, 5.000000e-01
  %2490 = call float @dx.op.unary.f32(i32 7, float %2487)  ; Saturate(value)
  %2491 = call float @dx.op.unary.f32(i32 7, float %2488)  ; Saturate(value)
  %2492 = call float @dx.op.unary.f32(i32 7, float %2489)  ; Saturate(value)
  %2493 = fmul fast float %2490, 1.023000e+03
  %2494 = fmul fast float %2491, 1.023000e+03
  %2495 = fmul fast float %2492, 1.023000e+03
  %2496 = fptoui float %2493 to i32
  %2497 = fptoui float %2494 to i32
  %2498 = fptoui float %2495 to i32
  %2499 = shl i32 %2497, 10
  %2500 = or i32 %2499, %2496
  %2501 = shl i32 %2498, 20
  %2502 = or i32 %2500, %2501
  %2503 = add i32 %2466, 5
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %2503, i32 0, i32 %2502, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2504 = call float @dx.op.dot3.f32(i32 55, float %1962, float %1963, float %1964, float %1962, float %1963, float %1964)  ; Dot3(ax,ay,az,bx,by,bz)
  %2505 = call float @dx.op.unary.f32(i32 25, float %2504)  ; Rsqrt(value)
  %2506 = fmul fast float %2505, %1962
  %2507 = fmul fast float %2505, %1963
  %2508 = fmul fast float %2505, %1964
  %2509 = fadd fast float %2506, 1.000000e+00
  %2510 = fadd fast float %2507, 1.000000e+00
  %2511 = fadd fast float %2508, 1.000000e+00
  %2512 = fmul fast float %2509, 5.000000e-01
  %2513 = fmul fast float %2510, 5.000000e-01
  %2514 = fmul fast float %2511, 5.000000e-01
  %2515 = call float @dx.op.unary.f32(i32 7, float %2512)  ; Saturate(value)
  %2516 = call float @dx.op.unary.f32(i32 7, float %2513)  ; Saturate(value)
  %2517 = call float @dx.op.unary.f32(i32 7, float %2514)  ; Saturate(value)
  %2518 = fmul fast float %2515, 1.023000e+03
  %2519 = fmul fast float %2516, 1.023000e+03
  %2520 = fmul fast float %2517, 1.023000e+03
  %2521 = fptoui float %2518 to i32
  %2522 = fptoui float %2519 to i32
  %2523 = fptoui float %2520 to i32
  %2524 = shl i32 %2522, 10
  %2525 = or i32 %2524, %2521
  %2526 = shl i32 %2523, 20
  %2527 = or i32 %2525, %2526
  %2528 = add i32 %2466, 6
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %2528, i32 0, i32 %2527, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %2536

; <label>:2529                                    ; preds = %2224
  %2530 = fcmp fast ogt float %2400, 0.000000e+00
  %2531 = fcmp fast olt float %2398, 1.000000e+00
  %2532 = and i1 %2530, %2531
  %2533 = fcmp fast olt float %2396, 0.000000e+00
  %2534 = and i1 %2533, %2532
  %2535 = select i1 %2534, i32 0, i32 %1798
  br label %2536

; <label>:2536                                    ; preds = %2529, %2468, %2465, %2406, %2057, %1934
  %2537 = phi i32 [ %2452, %2468 ], [ %2452, %2465 ], [ %2452, %2406 ], [ %666, %2057 ], [ %666, %1934 ], [ %666, %2529 ]
  %2538 = phi float [ %2432, %2468 ], [ %2432, %2465 ], [ %2432, %2406 ], [ %1959, %2057 ], [ %1959, %1934 ], [ %1959, %2529 ]
  %2539 = phi float [ %2433, %2468 ], [ %2433, %2465 ], [ %2433, %2406 ], [ %1960, %2057 ], [ %1960, %1934 ], [ %1960, %2529 ]
  %2540 = phi float [ %2434, %2468 ], [ %2434, %2465 ], [ %2434, %2406 ], [ %1961, %2057 ], [ %1961, %1934 ], [ %1961, %2529 ]
  %2541 = phi float [ %2453, %2468 ], [ %2453, %2465 ], [ %2453, %2406 ], [ %697, %2057 ], [ %697, %1934 ], [ %697, %2529 ]
  %2542 = phi float [ %2449, %2468 ], [ %2449, %2465 ], [ %2449, %2406 ], [ %1965, %2057 ], [ %1965, %1934 ], [ %1965, %2529 ]
  %2543 = phi float [ %2450, %2468 ], [ %2450, %2465 ], [ %2450, %2406 ], [ %1966, %2057 ], [ %1966, %1934 ], [ %1966, %2529 ]
  %2544 = phi float [ %2451, %2468 ], [ %2451, %2465 ], [ %2451, %2406 ], [ %1967, %2057 ], [ %1967, %1934 ], [ %1967, %2529 ]
  %2545 = phi i32 [ %2457, %2468 ], [ %2457, %2465 ], [ %2457, %2406 ], [ %1798, %2057 ], [ %1798, %1934 ], [ %2535, %2529 ]
  %2546 = and i32 %91, 32
  %2547 = icmp eq i32 %2546, 0
  br i1 %2547, label %2548, label %2561, !dx.controlflow.hints !86

; <label>:2548                                    ; preds = %2561, %2536, %695
  %2549 = phi i32 [ %2537, %2561 ], [ %2537, %2536 ], [ %666, %695 ]
  %2550 = phi float [ %2538, %2561 ], [ %2538, %2536 ], [ %667, %695 ]
  %2551 = phi float [ %2539, %2561 ], [ %2539, %2536 ], [ %668, %695 ]
  %2552 = phi float [ %2540, %2561 ], [ %2540, %2536 ], [ %669, %695 ]
  %2553 = phi float [ %2541, %2561 ], [ %2541, %2536 ], [ %697, %695 ]
  %2554 = phi float [ %2637, %2561 ], [ %2542, %2536 ], [ %671, %695 ]
  %2555 = phi float [ %2641, %2561 ], [ %2543, %2536 ], [ %672, %695 ]
  %2556 = phi float [ %2645, %2561 ], [ %2544, %2536 ], [ %673, %695 ]
  %2557 = phi i32 [ %2545, %2561 ], [ %2545, %2536 ], [ 0, %695 ]
  %2558 = icmp ult i32 %677, %75
  %2559 = icmp ne i32 %2557, 0
  %2560 = and i1 %2558, %2559
  br i1 %2560, label %664, label %2646

; <label>:2561                                    ; preds = %2536
  %2562 = fsub fast float %2542, %67
  %2563 = fsub fast float %2543, %68
  %2564 = fsub fast float %2544, %69
  %2565 = fmul fast float %2564, %63
  %2566 = fmul fast float %2563, %64
  %2567 = fsub fast float %2565, %2566
  %2568 = fmul fast float %2562, %64
  %2569 = fmul fast float %2564, %62
  %2570 = fsub fast float %2568, %2569
  %2571 = fmul fast float %2563, %62
  %2572 = fmul fast float %2562, %63
  %2573 = fsub fast float %2571, %2572
  %2574 = fmul fast float %2567, 2.000000e+00
  %2575 = fmul fast float %2570, 2.000000e+00
  %2576 = fmul fast float %2573, 2.000000e+00
  %2577 = fmul fast float %2574, %65
  %2578 = fmul fast float %2575, %65
  %2579 = fmul fast float %2576, %65
  %2580 = fmul fast float %2576, %63
  %2581 = fmul fast float %2575, %64
  %2582 = fmul fast float %2574, %64
  %2583 = fmul fast float %2576, %62
  %2584 = fmul fast float %2575, %62
  %2585 = fmul fast float %2574, %63
  %2586 = fadd fast float %99, %87
  %2587 = fadd fast float %100, %88
  %2588 = fadd fast float %101, %89
  %2589 = fsub fast float %2562, %2586
  %2590 = fadd fast float %2589, %2580
  %2591 = fsub fast float %2590, %2577
  %2592 = fsub fast float %2591, %2581
  %2593 = fsub fast float %2563, %2587
  %2594 = fsub fast float %2593, %2583
  %2595 = fsub fast float %2594, %2578
  %2596 = fadd fast float %2595, %2582
  %2597 = fsub fast float %2564, %2588
  %2598 = fsub fast float %2597, %2579
  %2599 = fsub fast float %2598, %2585
  %2600 = fadd fast float %2599, %2584
  %2601 = fdiv fast float %2592, %93
  %2602 = fdiv fast float %2596, %94
  %2603 = fdiv fast float %2600, %95
  %2604 = call float @dx.op.unary.f32(i32 22, float %2601)  ; Frc(value)
  %2605 = call float @dx.op.unary.f32(i32 22, float %2602)  ; Frc(value)
  %2606 = call float @dx.op.unary.f32(i32 22, float %2603)  ; Frc(value)
  %2607 = fmul fast float %2604, %93
  %2608 = fmul fast float %2605, %94
  %2609 = fmul fast float %2606, %95
  %2610 = fadd fast float %2607, %2586
  %2611 = fadd fast float %2608, %2587
  %2612 = fadd fast float %2609, %2588
  %2613 = fmul fast float %2612, %63
  %2614 = fmul fast float %2611, %64
  %2615 = fsub fast float %2613, %2614
  %2616 = fmul fast float %2610, %64
  %2617 = fmul fast float %2612, %62
  %2618 = fsub fast float %2616, %2617
  %2619 = fmul fast float %2611, %62
  %2620 = fmul fast float %2610, %63
  %2621 = fsub fast float %2619, %2620
  %2622 = fmul fast float %2615, 2.000000e+00
  %2623 = fmul fast float %2618, 2.000000e+00
  %2624 = fmul fast float %2621, 2.000000e+00
  %2625 = fmul fast float %2622, %65
  %2626 = fmul fast float %2623, %65
  %2627 = fmul fast float %2624, %65
  %2628 = fmul fast float %2624, %63
  %2629 = fmul fast float %2623, %64
  %2630 = fmul fast float %2622, %64
  %2631 = fmul fast float %2624, %62
  %2632 = fmul fast float %2623, %62
  %2633 = fmul fast float %2622, %63
  %2634 = fadd fast float %2610, %67
  %2635 = fadd fast float %2634, %2628
  %2636 = fadd fast float %2635, %2625
  %2637 = fsub fast float %2636, %2629
  %2638 = fadd fast float %2611, %68
  %2639 = fsub fast float %2638, %2631
  %2640 = fadd fast float %2639, %2626
  %2641 = fadd fast float %2640, %2630
  %2642 = fadd fast float %2612, %69
  %2643 = fadd fast float %2642, %2627
  %2644 = fsub fast float %2643, %2633
  %2645 = fadd fast float %2644, %2632
  br label %2548

; <label>:2646                                    ; preds = %2548
  br label %2647

; <label>:2647                                    ; preds = %2646, %636
  %2648 = phi i32 [ %558, %636 ], [ %696, %2646 ]
  %2649 = phi i32 [ %548, %636 ], [ %2549, %2646 ]
  %2650 = phi float [ %637, %636 ], [ %2550, %2646 ]
  %2651 = phi float [ %638, %636 ], [ %2551, %2646 ]
  %2652 = phi float [ %639, %636 ], [ %2552, %2646 ]
  %2653 = phi float [ %557, %636 ], [ %2553, %2646 ]
  %2654 = phi float [ %640, %636 ], [ %2554, %2646 ]
  %2655 = phi float [ %641, %636 ], [ %2555, %2646 ]
  %2656 = phi float [ %642, %636 ], [ %2556, %2646 ]
  %2657 = phi i32 [ 1, %636 ], [ %2557, %2646 ]
  %2658 = icmp eq i32 %2657, 0
  br i1 %2658, label %2783, label %2659, !dx.controlflow.hints !87

; <label>:2659                                    ; preds = %2647
  %2660 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %60, i32 8, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %2661 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2662 = extractvalue %dx.types.CBufRet.i32 %2661, 3
  %2663 = shl i32 %2662, 8
  %2664 = or i32 %2663, 2
  %2665 = add i32 %2664, %60
  %2666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2665, i32 0)  ; BufferLoad(srv,index,wot)
  %2667 = extractvalue %dx.types.ResRet.i32 %2666, 0
  %2668 = add i32 %2667, %2660
  br i1 %535, label %2733, label %2669, !dx.controlflow.hints !88

; <label>:2669                                    ; preds = %2659
  %2670 = fsub fast float %2654, %67
  %2671 = fsub fast float %2655, %68
  %2672 = fsub fast float %2656, %69
  %2673 = fmul fast float %2672, %63
  %2674 = fmul fast float %2671, %64
  %2675 = fsub fast float %2673, %2674
  %2676 = fmul fast float %2670, %64
  %2677 = fmul fast float %2672, %62
  %2678 = fsub fast float %2676, %2677
  %2679 = fmul fast float %2671, %62
  %2680 = fmul fast float %2670, %63
  %2681 = fsub fast float %2679, %2680
  %2682 = fmul fast float %2675, 2.000000e+00
  %2683 = fmul fast float %2678, 2.000000e+00
  %2684 = fmul fast float %2681, 2.000000e+00
  %2685 = fmul fast float %2682, %65
  %2686 = fmul fast float %2683, %65
  %2687 = fmul fast float %2684, %65
  %2688 = fmul fast float %2684, %63
  %2689 = fmul fast float %2683, %64
  %2690 = fmul fast float %2682, %64
  %2691 = fmul fast float %2684, %62
  %2692 = fmul fast float %2683, %62
  %2693 = fmul fast float %2682, %63
  %2694 = fadd fast float %2688, %2670
  %2695 = fsub fast float %2694, %2685
  %2696 = fsub fast float %2695, %2689
  %2697 = fsub fast float %2671, %2691
  %2698 = fsub fast float %2697, %2686
  %2699 = fadd fast float %2698, %2690
  %2700 = fsub fast float %2672, %2687
  %2701 = fsub fast float %2700, %2693
  %2702 = fadd fast float %2701, %2692
  %2703 = fmul fast float %2652, %63
  %2704 = fmul fast float %2651, %64
  %2705 = fsub fast float %2703, %2704
  %2706 = fmul fast float %2650, %64
  %2707 = fmul fast float %2652, %62
  %2708 = fsub fast float %2706, %2707
  %2709 = fmul fast float %2651, %62
  %2710 = fmul fast float %2650, %63
  %2711 = fsub fast float %2709, %2710
  %2712 = fmul fast float %2705, 2.000000e+00
  %2713 = fmul fast float %2708, 2.000000e+00
  %2714 = fmul fast float %2711, 2.000000e+00
  %2715 = fmul fast float %2712, %65
  %2716 = fmul fast float %2713, %65
  %2717 = fmul fast float %2714, %65
  %2718 = fmul fast float %2714, %63
  %2719 = fmul fast float %2713, %64
  %2720 = fmul fast float %2712, %64
  %2721 = fmul fast float %2714, %62
  %2722 = fmul fast float %2713, %62
  %2723 = fmul fast float %2712, %63
  %2724 = fadd fast float %2718, %2650
  %2725 = fsub fast float %2724, %2715
  %2726 = fsub fast float %2725, %2719
  %2727 = fsub fast float %2651, %2721
  %2728 = fsub fast float %2727, %2716
  %2729 = fadd fast float %2728, %2720
  %2730 = fsub fast float %2652, %2717
  %2731 = fsub fast float %2730, %2723
  %2732 = fadd fast float %2731, %2722
  br label %2733

; <label>:2733                                    ; preds = %2669, %2659
  %2734 = phi float [ %2726, %2669 ], [ %2650, %2659 ]
  %2735 = phi float [ %2729, %2669 ], [ %2651, %2659 ]
  %2736 = phi float [ %2732, %2669 ], [ %2652, %2659 ]
  %2737 = phi float [ %2696, %2669 ], [ %2654, %2659 ]
  %2738 = phi float [ %2699, %2669 ], [ %2655, %2659 ]
  %2739 = phi float [ %2702, %2669 ], [ %2656, %2659 ]
  br i1 %535, label %2740, label %2748, !dx.controlflow.hints !89

; <label>:2740                                    ; preds = %2733
  %2741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %2742 = extractvalue %dx.types.CBufRet.f32 %2741, 0
  %2743 = extractvalue %dx.types.CBufRet.f32 %2741, 1
  %2744 = extractvalue %dx.types.CBufRet.f32 %2741, 2
  %2745 = fsub fast float %2737, %2742
  %2746 = fsub fast float %2738, %2743
  %2747 = fsub fast float %2739, %2744
  br label %2748

; <label>:2748                                    ; preds = %2740, %2733
  %2749 = phi float [ %2737, %2733 ], [ %2745, %2740 ]
  %2750 = phi float [ %2738, %2733 ], [ %2746, %2740 ]
  %2751 = phi float [ %2739, %2733 ], [ %2747, %2740 ]
  %2752 = bitcast float %2749 to i32
  %2753 = and i32 %2752, -2048
  %2754 = bitcast float %2750 to i32
  %2755 = lshr i32 %2754, 21
  %2756 = or i32 %2755, %2753
  %2757 = shl i32 %2754, 11
  %2758 = and i32 %2757, -4194304
  %2759 = bitcast float %2751 to i32
  %2760 = lshr i32 %2759, 10
  %2761 = and i32 %2760, 4194302
  %2762 = and i32 %2649, 1
  %2763 = or i32 %2758, %2762
  %2764 = or i32 %2763, %2761
  %2765 = call i32 @dx.op.legacyF32ToF16(i32 130, float 0.000000e+00)  ; LegacyF32ToF16(value)
  %2766 = call i32 @dx.op.legacyF32ToF16(i32 130, float %2734)  ; LegacyF32ToF16(value)
  %2767 = shl i32 %2766, 16
  %2768 = or i32 %2767, %2765
  %2769 = call i32 @dx.op.legacyF32ToF16(i32 130, float %2735)  ; LegacyF32ToF16(value)
  %2770 = call i32 @dx.op.legacyF32ToF16(i32 130, float %2736)  ; LegacyF32ToF16(value)
  %2771 = shl i32 %2770, 16
  %2772 = or i32 %2771, %2769
  %2773 = fmul fast float %2653, 6.553500e+04
  %2774 = call float @dx.op.unary.f32(i32 26, float %2773)  ; Round_ne(value)
  %2775 = fptosi float %2774 to i32
  %2776 = call i32 @dx.op.binary.i32(i32 37, i32 %2775, i32 0)  ; IMax(a,b)
  %2777 = call i32 @dx.op.binary.i32(i32 38, i32 %2776, i32 65535)  ; IMin(a,b)
  %2778 = and i32 %2777, 65535
  %2779 = or i32 %2768, %2778
  %2780 = shl nuw i32 %559, 16
  %2781 = and i32 %2648, 65535
  %2782 = or i32 %2781, %2780
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %2668, i32 0, i32 %2756, i32 %2764, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %2668, i32 8, i32 %2779, i32 %2772, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %2668, i32 16, i32 %2782, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %2783

; <label>:2783                                    ; preds = %2748, %2647, %53
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

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
!4 = !{!5, !28, !33, null}
!5 = !{!6, !8, !10, !12, !13, !14, !15, !17, !19, !21, !22, !23, !25, !26}
!6 = !{i32 0, %"class.StructuredBuffer<VectorFieldGpu>"* undef, !"", i32 0, i32 13, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 88}
!8 = !{i32 1, %"class.StructuredBuffer<VectorSubFieldGpu>"* undef, !"", i32 0, i32 14, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 32}
!10 = !{i32 2, %"class.StructuredBuffer<vector<unsigned int, 4> >"* undef, !"", i32 0, i32 15, i32 1, i32 12, i32 0, !11}
!11 = !{i32 1, i32 16}
!12 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 16, i32 1, i32 11, i32 0, null}
!13 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!14 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!15 = !{i32 6, %"class.StructuredBuffer<FxEmitterInstancePerFrameData>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !16}
!16 = !{i32 1, i32 80}
!17 = !{i32 7, %"class.StructuredBuffer<FxEmitterDefPerFrameData>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i32 0, !18}
!18 = !{i32 1, i32 8}
!19 = !{i32 8, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 12, i32 0, !20}
!20 = !{i32 1, i32 4}
!21 = !{i32 9, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 8, i32 1, i32 12, i32 0, !20}
!22 = !{i32 10, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 9, i32 1, i32 12, i32 0, !20}
!23 = !{i32 11, %"class.Texture2D<float>"* undef, !"", i32 0, i32 10, i32 1, i32 2, i32 0, !24}
!24 = !{i32 0, i32 9}
!25 = !{i32 12, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !20}
!26 = !{i32 13, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 11, i32 1, i32 2, i32 0, !27}
!27 = !{i32 0, i32 5}
!28 = !{!29, !31, !32}
!29 = !{i32 0, %"class.RWStructuredBuffer<FxParticle>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !30}
!30 = !{i32 1, i32 20}
!31 = !{i32 1, %"class.RWStructuredBuffer<FxParticleCounter>"* undef, !"", i32 0, i32 4, i32 1, i32 12, i1 false, i1 false, i1 false, !11}
!32 = !{i32 2, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i1 false, i1 false, i1 false, !20}
!33 = !{!34, !35, !36}
!34 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!35 = !{i32 1, %hostlayout.FxFrameConsts_decl* undef, !"", i32 0, i32 0, i32 1, i32 464, null}
!36 = !{i32 2, %FxEmitConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!37 = !{void ()* @cs_fx_update_particles, !"cs_fx_update_particles", null, !4, !38}
!38 = !{i32 0, i64 272, i32 4, !39}
!39 = !{i32 64, i32 1, i32 1}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 1}
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
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}

