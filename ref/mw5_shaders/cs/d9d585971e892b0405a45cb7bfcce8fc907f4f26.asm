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
; shader hash: 26acc2723b64c580ff096de0cf0b303b
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
;                                   texture     u32        2dMS     T13            t11     1
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
%"class.Texture2DMS<vector<unsigned int, 4>, 0>" = type { <4 x i32>, %"class.Texture2DMS<vector<unsigned int, 4>, 0>::sample_type" }
%"class.Texture2DMS<vector<unsigned int, 4>, 0>::sample_type" = type { i32 }
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
  %23 = alloca [4 x i32], align 4
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 0
  %26 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %25, i32 0)  ; BufferLoad(srv,index,wot)
  %27 = extractvalue %dx.types.ResRet.i32 %26, 0
  %28 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %25, i32 4)  ; BufferLoad(srv,index,wot)
  %29 = extractvalue %dx.types.ResRet.i32 %28, 0
  %30 = icmp ugt i32 %27, 1
  br i1 %30, label %31, label %54

; <label>:31                                      ; preds = %0
  br label %32

; <label>:32                                      ; preds = %32, %31
  %33 = phi i32 [ %44, %32 ], [ 0, %31 ]
  %34 = phi i32 [ %45, %32 ], [ 0, %31 ]
  %35 = phi i32 [ %46, %32 ], [ %27, %31 ]
  %36 = sub i32 %35, %33
  %37 = lshr i32 %36, 1
  %38 = add i32 %37, %33
  %39 = add i32 %29, 255
  %40 = add i32 %39, %38
  %41 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %40, i32 0)  ; BufferLoad(srv,index,wot)
  %42 = extractvalue %dx.types.ResRet.i32 %41, 0
  %43 = icmp ult i32 %22, %42
  %44 = select i1 %43, i32 %33, i32 %38
  %45 = select i1 %43, i32 %34, i32 %42
  %46 = select i1 %43, i32 %38, i32 %35
  %47 = sub i32 %35, %38
  %48 = select i1 %43, i32 %37, i32 %47
  %49 = icmp ugt i32 %48, 1
  br i1 %49, label %32, label %50

; <label>:50                                      ; preds = %32
  %51 = icmp eq i32 %44, 0
  %52 = shl i32 %45, 6
  %53 = select i1 %51, i32 0, i32 %52
  br label %54

; <label>:54                                      ; preds = %50, %0
  %55 = phi i32 [ 0, %0 ], [ %53, %50 ]
  %56 = phi i32 [ %27, %0 ], [ %46, %50 ]
  %57 = sub i32 %21, %55
  %58 = add i32 %29, -1
  %59 = add i32 %58, %56
  %60 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %59, i32 0)  ; BufferLoad(srv,index,wot)
  %61 = extractvalue %dx.types.ResRet.i32 %60, 0
  %62 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %61, i32 0)  ; BufferLoad(srv,index,wot)
  %63 = extractvalue %dx.types.ResRet.f32 %62, 0
  %64 = extractvalue %dx.types.ResRet.f32 %62, 1
  %65 = extractvalue %dx.types.ResRet.f32 %62, 2
  %66 = extractvalue %dx.types.ResRet.f32 %62, 3
  %67 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %61, i32 16)  ; BufferLoad(srv,index,wot)
  %68 = extractvalue %dx.types.ResRet.f32 %67, 0
  %69 = extractvalue %dx.types.ResRet.f32 %67, 1
  %70 = extractvalue %dx.types.ResRet.f32 %67, 2
  %71 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %61, i32 52)  ; BufferLoad(srv,index,wot)
  %72 = extractvalue %dx.types.ResRet.f32 %71, 0
  %73 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %61, i32 56)  ; BufferLoad(srv,index,wot)
  %74 = extractvalue %dx.types.ResRet.f32 %73, 0
  %75 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %61, i32 60)  ; BufferLoad(srv,index,wot)
  %76 = extractvalue %dx.types.ResRet.i32 %75, 0
  %77 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %61, i32 64)  ; BufferLoad(srv,index,wot)
  %78 = extractvalue %dx.types.ResRet.i32 %77, 0
  %79 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %61, i32 0)  ; BufferLoad(srv,index,wot)
  %80 = extractvalue %dx.types.ResRet.i32 %79, 0
  %81 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %61, i32 4)  ; BufferLoad(srv,index,wot)
  %82 = extractvalue %dx.types.ResRet.i32 %81, 0
  %83 = icmp ult i32 %57, %80
  br i1 %83, label %84, label %2801, !dx.controlflow.hints !40

; <label>:84                                      ; preds = %54
  %85 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.i32 %85, 3
  %87 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %88 = extractvalue %dx.types.ResRet.f32 %87, 0
  %89 = extractvalue %dx.types.ResRet.f32 %87, 1
  %90 = extractvalue %dx.types.ResRet.f32 %87, 2
  %91 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %92 = extractvalue %dx.types.ResRet.i32 %91, 0
  %93 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %94 = extractvalue %dx.types.ResRet.f32 %93, 0
  %95 = extractvalue %dx.types.ResRet.f32 %93, 1
  %96 = extractvalue %dx.types.ResRet.f32 %93, 2
  %97 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %98 = extractvalue %dx.types.ResRet.f32 %97, 0
  %99 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %100 = extractvalue %dx.types.ResRet.f32 %99, 0
  %101 = extractvalue %dx.types.ResRet.f32 %99, 1
  %102 = extractvalue %dx.types.ResRet.f32 %99, 2
  %103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %104 = extractvalue %dx.types.ResRet.f32 %103, 0
  %105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %106 = extractvalue %dx.types.ResRet.f32 %105, 0
  %107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %108 = extractvalue %dx.types.ResRet.f32 %107, 0
  %109 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %110 = extractvalue %dx.types.ResRet.f32 %109, 0
  %111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 68, i32 undef)  ; BufferLoad(srv,index,wot)
  %112 = extractvalue %dx.types.ResRet.f32 %111, 0
  %113 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %114 = extractvalue %dx.types.ResRet.f32 %113, 0
  %115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %116 = extractvalue %dx.types.ResRet.f32 %115, 0
  %117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %118 = extractvalue %dx.types.ResRet.f32 %117, 0
  %119 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %120 = extractvalue %dx.types.ResRet.f32 %119, 0
  %121 = extractvalue %dx.types.ResRet.f32 %119, 1
  %122 = extractvalue %dx.types.ResRet.f32 %119, 2
  %123 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %124 = extractvalue %dx.types.ResRet.f32 %123, 0
  %125 = extractvalue %dx.types.ResRet.f32 %123, 1
  %126 = extractvalue %dx.types.ResRet.f32 %123, 2
  %127 = extractvalue %dx.types.ResRet.f32 %123, 3
  %128 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %129 = extractvalue %dx.types.ResRet.f32 %128, 0
  %130 = extractvalue %dx.types.ResRet.f32 %128, 1
  %131 = extractvalue %dx.types.ResRet.f32 %128, 2
  %132 = extractvalue %dx.types.ResRet.f32 %128, 3
  %133 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %134 = extractvalue %dx.types.ResRet.f32 %133, 0
  %135 = extractvalue %dx.types.ResRet.f32 %133, 1
  %136 = extractvalue %dx.types.ResRet.f32 %133, 2
  %137 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %138 = extractvalue %dx.types.ResRet.f32 %137, 0
  %139 = extractvalue %dx.types.ResRet.f32 %137, 1
  %140 = extractvalue %dx.types.ResRet.f32 %137, 2
  %141 = extractvalue %dx.types.ResRet.f32 %137, 3
  %142 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 164, i32 undef)  ; BufferLoad(srv,index,wot)
  %143 = extractvalue %dx.types.ResRet.f32 %142, 0
  %144 = extractvalue %dx.types.ResRet.f32 %142, 1
  %145 = extractvalue %dx.types.ResRet.f32 %142, 2
  %146 = extractvalue %dx.types.ResRet.f32 %142, 3
  %147 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 180, i32 undef)  ; BufferLoad(srv,index,wot)
  %148 = extractvalue %dx.types.ResRet.f32 %147, 0
  %149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 184, i32 undef)  ; BufferLoad(srv,index,wot)
  %150 = extractvalue %dx.types.ResRet.f32 %149, 0
  %151 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %152 = extractvalue %dx.types.ResRet.f32 %151, 0
  %153 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 292, i32 undef)  ; BufferLoad(srv,index,wot)
  %154 = extractvalue %dx.types.ResRet.f32 %153, 0
  %155 = extractvalue %dx.types.ResRet.f32 %153, 1
  %156 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 300, i32 undef)  ; BufferLoad(srv,index,wot)
  %157 = extractvalue %dx.types.ResRet.f32 %156, 0
  %158 = shl i32 %86, 8
  %159 = xor i32 %158, 258
  %160 = add i32 %159, %61
  %161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %160, i32 0)  ; BufferLoad(srv,index,wot)
  %162 = extractvalue %dx.types.ResRet.i32 %161, 0
  %163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %61, i32 0)  ; BufferLoad(srv,index,wot)
  %164 = extractvalue %dx.types.ResRet.i32 %163, 0
  %165 = and i32 %92, 16
  %166 = icmp ne i32 %165, 0
  %167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.i32 %167, 1
  %169 = icmp ne i32 %168, 0
  %170 = and i1 %166, %169
  br i1 %170, label %171, label %507, !dx.controlflow.hints !41

; <label>:171                                     ; preds = %84
  %172 = fsub fast float %68, %148
  %173 = fsub fast float %69, %148
  %174 = fadd fast float %148, %68
  %175 = fadd fast float %148, %69
  %176 = fptosi float %172 to i32
  %177 = fptosi float %173 to i32
  %178 = add i32 %176, 130048
  %179 = add i32 %177, 130048
  %180 = call i32 @dx.op.binary.i32(i32 37, i32 %178, i32 0)  ; IMax(a,b)
  %181 = call i32 @dx.op.binary.i32(i32 37, i32 %179, i32 0)  ; IMax(a,b)
  %182 = call i32 @dx.op.binary.i32(i32 38, i32 %180, i32 262144)  ; IMin(a,b)
  %183 = call i32 @dx.op.binary.i32(i32 38, i32 %181, i32 262144)  ; IMin(a,b)
  %184 = fptosi float %174 to i32
  %185 = fptosi float %175 to i32
  %186 = add i32 %184, 130048
  %187 = add i32 %185, 130048
  %188 = call i32 @dx.op.binary.i32(i32 37, i32 %186, i32 0)  ; IMax(a,b)
  %189 = call i32 @dx.op.binary.i32(i32 37, i32 %187, i32 0)  ; IMax(a,b)
  %190 = call i32 @dx.op.binary.i32(i32 38, i32 %188, i32 262144)  ; IMin(a,b)
  %191 = call i32 @dx.op.binary.i32(i32 38, i32 %189, i32 262144)  ; IMin(a,b)
  %192 = lshr i32 %182, 10
  %193 = lshr i32 %183, 10
  %194 = lshr i32 %190, 10
  %195 = lshr i32 %191, 10
  %196 = icmp ugt i32 %192, %194
  br i1 %196, label %507, label %197

; <label>:197                                     ; preds = %171
  br label %198

; <label>:198                                     ; preds = %498, %197
  %199 = phi i32 [ %499, %498 ], [ -1, %197 ]
  %200 = phi i32 [ %500, %498 ], [ -1, %197 ]
  %201 = phi i32 [ %501, %498 ], [ 0, %197 ]
  %202 = phi i32 [ %502, %498 ], [ %192, %197 ]
  %203 = icmp ugt i32 %193, %195
  br i1 %203, label %498, label %204

; <label>:204                                     ; preds = %198
  br label %205

; <label>:205                                     ; preds = %491, %204
  %206 = phi i32 [ %492, %491 ], [ %199, %204 ]
  %207 = phi i32 [ %493, %491 ], [ %200, %204 ]
  %208 = phi i32 [ %494, %491 ], [ %201, %204 ]
  %209 = phi i32 [ %495, %491 ], [ %193, %204 ]
  %210 = or i32 %209, %202
  %211 = icmp ult i32 %210, 256
  br i1 %211, label %212, label %491, !dx.controlflow.hints !42

; <label>:212                                     ; preds = %205
  %213 = shl i32 %202, 8
  %214 = add i32 %209, %213
  %215 = and i32 %214, -4
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = shl i32 %209, 3
  %219 = and i32 %218, 24
  %220 = lshr i32 %217, %219
  %221 = and i32 %220, 255
  %222 = shl i32 %214, 3
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = extractvalue %dx.types.ResRet.i32 %223, 1
  %226 = icmp ult i32 %221, 4
  br i1 %226, label %227, label %232, !dx.controlflow.hints !43

; <label>:227                                     ; preds = %212
  %228 = shl i32 %220, 3
  %229 = and i32 %228, 24
  %230 = shl i32 -1, %229
  %231 = or i32 %230, %224
  br label %239

; <label>:232                                     ; preds = %212
  %233 = icmp ult i32 %221, 8
  br i1 %233, label %234, label %239, !dx.controlflow.hints !44

; <label>:234                                     ; preds = %232
  %235 = shl i32 %220, 3
  %236 = and i32 %235, 24
  %237 = shl i32 -1, %236
  %238 = or i32 %237, %225
  br label %239

; <label>:239                                     ; preds = %234, %232, %227
  %240 = phi i32 [ %231, %227 ], [ %224, %234 ], [ %224, %232 ]
  %241 = phi i32 [ -1, %227 ], [ %238, %234 ], [ %225, %232 ]
  br label %242

; <label>:242                                     ; preds = %356, %239
  %243 = phi i32 [ %206, %239 ], [ %357, %356 ]
  %244 = phi i32 [ %207, %239 ], [ %358, %356 ]
  %245 = phi i32 [ %208, %239 ], [ %359, %356 ]
  %246 = phi i32 [ 0, %239 ], [ %360, %356 ]
  %247 = icmp ult i32 %246, %221
  br i1 %247, label %248, label %362, !dx.controlflow.hints !45

; <label>:248                                     ; preds = %242
  %249 = shl i32 %246, 3
  %250 = lshr i32 %240, %249
  %251 = and i32 %250, 255
  %252 = icmp eq i32 %251, 255
  br i1 %252, label %362, label %253, !dx.controlflow.hints !46

; <label>:253                                     ; preds = %248
  %254 = shl nuw nsw i32 %251, 8
  %255 = or i32 %254, %251
  %256 = shl nuw i32 %255, 16
  %257 = or i32 %256, %255
  %258 = xor i32 %257, %243
  %259 = xor i32 %257, %244
  %260 = and i32 %258, 255
  %261 = and i32 %258, 65280
  %262 = and i32 %258, 16711680
  %263 = and i32 %259, 255
  %264 = and i32 %259, 65280
  %265 = and i32 %259, 16711680
  %266 = icmp eq i32 %260, 0
  %267 = icmp eq i32 %261, 0
  %268 = icmp eq i32 %262, 0
  %269 = icmp ult i32 %258, 16777216
  %270 = or i1 %266, %267
  %271 = or i1 %268, %270
  %272 = or i1 %269, %271
  %273 = icmp eq i32 %263, 0
  %274 = icmp eq i32 %264, 0
  %275 = icmp eq i32 %265, 0
  %276 = icmp ult i32 %259, 16777216
  %277 = or i1 %273, %274
  %278 = or i1 %275, %277
  %279 = or i1 %276, %278
  %280 = or i1 %272, %279
  br i1 %280, label %356, label %281, !dx.controlflow.hints !47

; <label>:281                                     ; preds = %253
  %282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %251, i32 0)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.f32 %282, 0
  %284 = extractvalue %dx.types.ResRet.f32 %282, 1
  %285 = extractvalue %dx.types.ResRet.f32 %282, 2
  %286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %251, i32 16)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.f32 %286, 0
  %288 = extractvalue %dx.types.ResRet.f32 %286, 1
  %289 = extractvalue %dx.types.ResRet.f32 %286, 2
  %290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %251, i32 32)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.f32 %290, 0
  %292 = extractvalue %dx.types.ResRet.f32 %290, 1
  %293 = extractvalue %dx.types.ResRet.f32 %290, 2
  %294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %251, i32 44)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.f32 %294, 0
  %296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %251, i32 48)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.f32 %296, 0
  %298 = extractvalue %dx.types.ResRet.f32 %296, 1
  %299 = extractvalue %dx.types.ResRet.f32 %296, 2
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %251, i32 60)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %251, i32 64)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.f32 %302, 0
  %304 = extractvalue %dx.types.ResRet.f32 %302, 1
  %305 = extractvalue %dx.types.ResRet.f32 %302, 2
  %306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %251, i32 76)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.f32 %306, 0
  %308 = extractvalue %dx.types.ResRet.f32 %306, 1
  %309 = extractvalue %dx.types.ResRet.f32 %306, 2
  %310 = and i32 %301, 16777216
  %311 = icmp ne i32 %310, 0
  %312 = fsub fast float %68, %297
  %313 = fsub fast float %69, %298
  %314 = fsub fast float %70, %299
  %315 = fmul fast float %312, %283
  %316 = call float @dx.op.tertiary.f32(i32 46, float %287, float %313, float %315)  ; FMad(a,b,c)
  %317 = call float @dx.op.tertiary.f32(i32 46, float %291, float %314, float %316)  ; FMad(a,b,c)
  %318 = fmul fast float %312, %284
  %319 = call float @dx.op.tertiary.f32(i32 46, float %288, float %313, float %318)  ; FMad(a,b,c)
  %320 = call float @dx.op.tertiary.f32(i32 46, float %292, float %314, float %319)  ; FMad(a,b,c)
  %321 = fmul fast float %312, %285
  %322 = call float @dx.op.tertiary.f32(i32 46, float %289, float %313, float %321)  ; FMad(a,b,c)
  %323 = call float @dx.op.tertiary.f32(i32 46, float %293, float %314, float %322)  ; FMad(a,b,c)
  %324 = fmul fast float %307, %295
  %325 = fmul fast float %308, %295
  %326 = fmul fast float %309, %295
  %327 = fadd fast float %324, %148
  %328 = fadd fast float %325, %148
  %329 = fadd fast float %326, %148
  %330 = fmul fast float %303, %295
  %331 = fmul fast float %304, %295
  %332 = fmul fast float %305, %295
  %333 = fsub fast float %330, %148
  %334 = fsub fast float %331, %148
  %335 = fsub fast float %332, %148
  %336 = fcmp fast olt float %317, %327
  %337 = fcmp fast olt float %320, %328
  %338 = fcmp fast olt float %323, %329
  %339 = and i1 %336, %337
  %340 = and i1 %339, %338
  %341 = fcmp fast ogt float %317, %333
  %342 = fcmp fast ogt float %320, %334
  %343 = fcmp fast ogt float %323, %335
  %344 = and i1 %341, %342
  %345 = and i1 %344, %343
  %346 = and i1 %340, %345
  %347 = and i1 %311, %346
  br i1 %347, label %348, label %356, !dx.controlflow.hints !48

; <label>:348                                     ; preds = %281
  %349 = shl i32 %244, 8
  %350 = lshr i32 %243, 24
  %351 = or i32 %349, %350
  %352 = shl i32 %243, 8
  %353 = or i32 %251, %352
  %354 = add i32 %245, 1
  %355 = icmp ugt i32 %354, 7
  br i1 %355, label %505, label %356, !dx.controlflow.hints !49

; <label>:356                                     ; preds = %348, %281, %253
  %357 = phi i32 [ %243, %253 ], [ %353, %348 ], [ %243, %281 ]
  %358 = phi i32 [ %244, %253 ], [ %351, %348 ], [ %244, %281 ]
  %359 = phi i32 [ %245, %253 ], [ %354, %348 ], [ %245, %281 ]
  %360 = add nuw nsw i32 %246, 1
  %361 = icmp ult i32 %360, 4
  br i1 %361, label %242, label %362

; <label>:362                                     ; preds = %356, %248, %242
  %363 = phi i32 [ %357, %356 ], [ %243, %242 ], [ %243, %248 ]
  %364 = phi i32 [ %358, %356 ], [ %244, %242 ], [ %244, %248 ]
  %365 = phi i32 [ %359, %356 ], [ %245, %242 ], [ %245, %248 ]
  br label %366

; <label>:366                                     ; preds = %481, %362
  %367 = phi i32 [ %482, %481 ], [ %363, %362 ]
  %368 = phi i32 [ %483, %481 ], [ %364, %362 ]
  %369 = phi i32 [ %484, %481 ], [ %365, %362 ]
  %370 = phi i32 [ %485, %481 ], [ 4, %362 ]
  %371 = icmp ult i32 %370, %221
  br i1 %371, label %372, label %487, !dx.controlflow.hints !50

; <label>:372                                     ; preds = %366
  %373 = shl i32 %370, 3
  %374 = and i32 %373, 24
  %375 = lshr i32 %241, %374
  %376 = and i32 %375, 255
  %377 = icmp eq i32 %376, 255
  br i1 %377, label %487, label %378, !dx.controlflow.hints !51

; <label>:378                                     ; preds = %372
  %379 = shl nuw nsw i32 %376, 8
  %380 = or i32 %379, %376
  %381 = shl nuw i32 %380, 16
  %382 = or i32 %381, %380
  %383 = xor i32 %382, %367
  %384 = xor i32 %382, %368
  %385 = and i32 %383, 255
  %386 = and i32 %383, 65280
  %387 = and i32 %383, 16711680
  %388 = and i32 %384, 255
  %389 = and i32 %384, 65280
  %390 = and i32 %384, 16711680
  %391 = icmp eq i32 %385, 0
  %392 = icmp eq i32 %386, 0
  %393 = icmp eq i32 %387, 0
  %394 = icmp ult i32 %383, 16777216
  %395 = or i1 %391, %392
  %396 = or i1 %393, %395
  %397 = or i1 %394, %396
  %398 = icmp eq i32 %388, 0
  %399 = icmp eq i32 %389, 0
  %400 = icmp eq i32 %390, 0
  %401 = icmp ult i32 %384, 16777216
  %402 = or i1 %398, %399
  %403 = or i1 %400, %402
  %404 = or i1 %401, %403
  %405 = or i1 %397, %404
  br i1 %405, label %481, label %406, !dx.controlflow.hints !52

; <label>:406                                     ; preds = %378
  %407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %376, i32 0)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.f32 %407, 0
  %409 = extractvalue %dx.types.ResRet.f32 %407, 1
  %410 = extractvalue %dx.types.ResRet.f32 %407, 2
  %411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %376, i32 16)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.f32 %411, 0
  %413 = extractvalue %dx.types.ResRet.f32 %411, 1
  %414 = extractvalue %dx.types.ResRet.f32 %411, 2
  %415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %376, i32 32)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.f32 %415, 0
  %417 = extractvalue %dx.types.ResRet.f32 %415, 1
  %418 = extractvalue %dx.types.ResRet.f32 %415, 2
  %419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %376, i32 44)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.f32 %419, 0
  %421 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %376, i32 48)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.f32 %421, 0
  %423 = extractvalue %dx.types.ResRet.f32 %421, 1
  %424 = extractvalue %dx.types.ResRet.f32 %421, 2
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %376, i32 60)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %376, i32 64)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.f32 %427, 0
  %429 = extractvalue %dx.types.ResRet.f32 %427, 1
  %430 = extractvalue %dx.types.ResRet.f32 %427, 2
  %431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %376, i32 76)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.f32 %431, 0
  %433 = extractvalue %dx.types.ResRet.f32 %431, 1
  %434 = extractvalue %dx.types.ResRet.f32 %431, 2
  %435 = and i32 %426, 16777216
  %436 = icmp ne i32 %435, 0
  %437 = fsub fast float %68, %422
  %438 = fsub fast float %69, %423
  %439 = fsub fast float %70, %424
  %440 = fmul fast float %437, %408
  %441 = call float @dx.op.tertiary.f32(i32 46, float %412, float %438, float %440)  ; FMad(a,b,c)
  %442 = call float @dx.op.tertiary.f32(i32 46, float %416, float %439, float %441)  ; FMad(a,b,c)
  %443 = fmul fast float %437, %409
  %444 = call float @dx.op.tertiary.f32(i32 46, float %413, float %438, float %443)  ; FMad(a,b,c)
  %445 = call float @dx.op.tertiary.f32(i32 46, float %417, float %439, float %444)  ; FMad(a,b,c)
  %446 = fmul fast float %437, %410
  %447 = call float @dx.op.tertiary.f32(i32 46, float %414, float %438, float %446)  ; FMad(a,b,c)
  %448 = call float @dx.op.tertiary.f32(i32 46, float %418, float %439, float %447)  ; FMad(a,b,c)
  %449 = fmul fast float %432, %420
  %450 = fmul fast float %433, %420
  %451 = fmul fast float %434, %420
  %452 = fadd fast float %449, %148
  %453 = fadd fast float %450, %148
  %454 = fadd fast float %451, %148
  %455 = fmul fast float %428, %420
  %456 = fmul fast float %429, %420
  %457 = fmul fast float %430, %420
  %458 = fsub fast float %455, %148
  %459 = fsub fast float %456, %148
  %460 = fsub fast float %457, %148
  %461 = fcmp fast olt float %442, %452
  %462 = fcmp fast olt float %445, %453
  %463 = fcmp fast olt float %448, %454
  %464 = and i1 %461, %462
  %465 = and i1 %464, %463
  %466 = fcmp fast ogt float %442, %458
  %467 = fcmp fast ogt float %445, %459
  %468 = fcmp fast ogt float %448, %460
  %469 = and i1 %466, %467
  %470 = and i1 %469, %468
  %471 = and i1 %465, %470
  %472 = and i1 %436, %471
  br i1 %472, label %473, label %481, !dx.controlflow.hints !53

; <label>:473                                     ; preds = %406
  %474 = shl i32 %368, 8
  %475 = lshr i32 %367, 24
  %476 = or i32 %474, %475
  %477 = shl i32 %367, 8
  %478 = or i32 %376, %477
  %479 = add i32 %369, 1
  %480 = icmp ugt i32 %479, 7
  br i1 %480, label %504, label %481, !dx.controlflow.hints !54

; <label>:481                                     ; preds = %473, %406, %378
  %482 = phi i32 [ %367, %378 ], [ %478, %473 ], [ %367, %406 ]
  %483 = phi i32 [ %368, %378 ], [ %476, %473 ], [ %368, %406 ]
  %484 = phi i32 [ %369, %378 ], [ %479, %473 ], [ %369, %406 ]
  %485 = add nuw nsw i32 %370, 1
  %486 = icmp ult i32 %485, 8
  br i1 %486, label %366, label %487

; <label>:487                                     ; preds = %481, %372, %366
  %488 = phi i32 [ %367, %372 ], [ %367, %366 ], [ %482, %481 ]
  %489 = phi i32 [ %368, %372 ], [ %368, %366 ], [ %483, %481 ]
  %490 = phi i32 [ %369, %372 ], [ %369, %366 ], [ %484, %481 ]
  br label %491

; <label>:491                                     ; preds = %487, %205
  %492 = phi i32 [ %206, %205 ], [ %488, %487 ]
  %493 = phi i32 [ %207, %205 ], [ %489, %487 ]
  %494 = phi i32 [ %208, %205 ], [ %490, %487 ]
  %495 = add nuw nsw i32 %209, 1
  %496 = icmp ugt i32 %495, %195
  br i1 %496, label %497, label %205

; <label>:497                                     ; preds = %491
  br label %498

; <label>:498                                     ; preds = %497, %198
  %499 = phi i32 [ %199, %198 ], [ %492, %497 ]
  %500 = phi i32 [ %200, %198 ], [ %493, %497 ]
  %501 = phi i32 [ %201, %198 ], [ %494, %497 ]
  %502 = add nuw nsw i32 %202, 1
  %503 = icmp ugt i32 %502, %194
  br i1 %503, label %506, label %198

; <label>:504                                     ; preds = %473
  br label %507

; <label>:505                                     ; preds = %348
  br label %507

; <label>:506                                     ; preds = %498
  br label %507

; <label>:507                                     ; preds = %506, %505, %504, %171, %84
  %508 = phi i32 [ 0, %84 ], [ -1, %171 ], [ %478, %504 ], [ %353, %505 ], [ %499, %506 ]
  %509 = phi i32 [ 0, %84 ], [ -1, %171 ], [ %476, %504 ], [ %351, %505 ], [ %500, %506 ]
  %510 = phi i32 [ 0, %84 ], [ 0, %171 ], [ %479, %504 ], [ %354, %505 ], [ %501, %506 ]
  %511 = sub i32 %82, %80
  %512 = add i32 %511, %57
  %513 = icmp slt i32 %512, 0
  %514 = select i1 %513, i32 %162, i32 %164
  %515 = select i1 %513, i32 %57, i32 %512
  %516 = add i32 %514, %515
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %516, i32 0)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = extractvalue %dx.types.ResRet.i32 %517, 1
  %520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %516, i32 8)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.i32 %520, 0
  %522 = extractvalue %dx.types.ResRet.i32 %520, 1
  %523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %516, i32 16)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.i32 %523, 0
  %525 = and i32 %518, -2048
  %526 = bitcast i32 %525 to float
  %527 = shl i32 %518, 21
  %528 = lshr i32 %519, 11
  %529 = and i32 %528, 2095104
  %530 = or i32 %529, %527
  %531 = bitcast i32 %530 to float
  %532 = shl i32 %519, 10
  %533 = and i32 %532, -2048
  %534 = bitcast i32 %533 to float
  %535 = and i32 %92, 4194304
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %537, label %545, !dx.controlflow.hints !55

; <label>:537                                     ; preds = %507
  %538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %539 = extractvalue %dx.types.CBufRet.f32 %538, 0
  %540 = extractvalue %dx.types.CBufRet.f32 %538, 1
  %541 = extractvalue %dx.types.CBufRet.f32 %538, 2
  %542 = fadd fast float %539, %526
  %543 = fadd fast float %540, %531
  %544 = fadd fast float %541, %534
  br label %545

; <label>:545                                     ; preds = %537, %507
  %546 = phi float [ %526, %507 ], [ %542, %537 ]
  %547 = phi float [ %531, %507 ], [ %543, %537 ]
  %548 = phi float [ %534, %507 ], [ %544, %537 ]
  %549 = and i32 %519, 1
  %550 = lshr i32 %521, 16
  %551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %550)  ; LegacyF16ToF32(value)
  %552 = and i32 %522, 65535
  %553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %552)  ; LegacyF16ToF32(value)
  %554 = lshr i32 %522, 16
  %555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %554)  ; LegacyF16ToF32(value)
  %556 = and i32 %521, 65535
  %557 = uitofp i32 %556 to float
  %558 = fmul fast float %557, 0x3EF0001000000000
  %559 = and i32 %524, 65535
  %560 = lshr i32 %524, 16
  %561 = shl nuw nsw i32 %560, 7
  %562 = and i32 %561, 65408
  %563 = xor i32 %562, %560
  %564 = lshr i32 %563, 9
  %565 = xor i32 %564, %563
  %566 = shl nuw nsw i32 %565, 8
  %567 = and i32 %566, 65280
  %568 = xor i32 %567, %565
  %569 = uitofp i32 %568 to float
  %570 = fmul fast float %152, 0x3EF0001000000000
  %571 = fmul fast float %570, %569
  %572 = fadd fast float %571, %150
  br i1 %536, label %637, label %573, !dx.controlflow.hints !56

; <label>:573                                     ; preds = %545
  %574 = fmul fast float %548, %64
  %575 = fmul fast float %547, %65
  %576 = fsub fast float %574, %575
  %577 = fmul fast float %546, %65
  %578 = fmul fast float %548, %63
  %579 = fsub fast float %577, %578
  %580 = fmul fast float %547, %63
  %581 = fmul fast float %546, %64
  %582 = fsub fast float %580, %581
  %583 = fmul fast float %576, 2.000000e+00
  %584 = fmul fast float %579, 2.000000e+00
  %585 = fmul fast float %582, 2.000000e+00
  %586 = fmul fast float %583, %66
  %587 = fmul fast float %584, %66
  %588 = fmul fast float %585, %66
  %589 = fmul fast float %585, %64
  %590 = fmul fast float %584, %65
  %591 = fmul fast float %583, %65
  %592 = fmul fast float %585, %63
  %593 = fmul fast float %584, %63
  %594 = fmul fast float %583, %64
  %595 = fadd fast float %546, %68
  %596 = fadd fast float %595, %589
  %597 = fadd fast float %596, %586
  %598 = fsub fast float %597, %590
  %599 = fadd fast float %547, %69
  %600 = fsub fast float %599, %592
  %601 = fadd fast float %600, %587
  %602 = fadd fast float %601, %591
  %603 = fadd fast float %548, %70
  %604 = fadd fast float %603, %588
  %605 = fsub fast float %604, %594
  %606 = fadd fast float %605, %593
  %607 = fmul fast float %555, %64
  %608 = fmul fast float %553, %65
  %609 = fsub fast float %607, %608
  %610 = fmul fast float %551, %65
  %611 = fmul fast float %555, %63
  %612 = fsub fast float %610, %611
  %613 = fmul fast float %553, %63
  %614 = fmul fast float %551, %64
  %615 = fsub fast float %613, %614
  %616 = fmul fast float %609, 2.000000e+00
  %617 = fmul fast float %612, 2.000000e+00
  %618 = fmul fast float %615, 2.000000e+00
  %619 = fmul fast float %616, %66
  %620 = fmul fast float %617, %66
  %621 = fmul fast float %618, %66
  %622 = fmul fast float %618, %64
  %623 = fmul fast float %617, %65
  %624 = fmul fast float %616, %65
  %625 = fmul fast float %618, %63
  %626 = fmul fast float %617, %63
  %627 = fmul fast float %616, %64
  %628 = fadd fast float %622, %551
  %629 = fadd fast float %628, %619
  %630 = fsub fast float %629, %623
  %631 = fsub fast float %553, %625
  %632 = fadd fast float %631, %620
  %633 = fadd fast float %632, %624
  %634 = fadd fast float %621, %555
  %635 = fsub fast float %634, %627
  %636 = fadd fast float %635, %626
  br label %637

; <label>:637                                     ; preds = %573, %545
  %638 = phi float [ %630, %573 ], [ %551, %545 ]
  %639 = phi float [ %633, %573 ], [ %553, %545 ]
  %640 = phi float [ %636, %573 ], [ %555, %545 ]
  %641 = phi float [ %598, %573 ], [ %546, %545 ]
  %642 = phi float [ %602, %573 ], [ %547, %545 ]
  %643 = phi float [ %606, %573 ], [ %548, %545 ]
  %644 = sitofp i32 %512 to float
  %645 = fmul fast float %644, %74
  %646 = call float @dx.op.unary.f32(i32 27, float %645)  ; Round_ni(value)
  %647 = fptoui float %646 to i32
  %648 = select i1 %513, i32 0, i32 %647
  %649 = fcmp fast une float %572, 0.000000e+00
  %650 = fdiv fast float %72, %572
  %651 = select i1 %649, float %650, float 0.000000e+00
  %652 = and i32 %92, 4
  %653 = icmp ne i32 %652, 0
  %654 = fdiv fast float %104, %572
  %655 = select i1 %649, float %654, float 0.000000e+00
  %656 = select i1 %653, float %104, float %655
  %657 = and i32 %92, 2048
  %658 = icmp ne i32 %657, 0
  %659 = icmp ult i32 %648, %76
  br i1 %659, label %660, label %2665

; <label>:660                                     ; preds = %637
  %661 = and i32 %92, 16777217
  %662 = icmp eq i32 %661, 16777216
  %663 = fmul fast float %572, %558
  %664 = select i1 %662, float 0.000000e+00, float %663
  br label %665

; <label>:665                                     ; preds = %2566, %660
  %666 = phi i32 [ %697, %2566 ], [ %559, %660 ]
  %667 = phi i32 [ %2567, %2566 ], [ %549, %660 ]
  %668 = phi float [ %2568, %2566 ], [ %638, %660 ]
  %669 = phi float [ %2569, %2566 ], [ %639, %660 ]
  %670 = phi float [ %2570, %2566 ], [ %640, %660 ]
  %671 = phi float [ %2571, %2566 ], [ %558, %660 ]
  %672 = phi float [ %2572, %2566 ], [ %641, %660 ]
  %673 = phi float [ %2573, %2566 ], [ %642, %660 ]
  %674 = phi float [ %2574, %2566 ], [ %643, %660 ]
  %675 = phi i32 [ %2575, %2566 ], [ 1, %660 ]
  %676 = phi i32 [ %678, %2566 ], [ %648, %660 ]
  %677 = phi float [ %680, %2566 ], [ %664, %660 ]
  %678 = add nuw i32 %676, 1
  %679 = fadd fast float %671, %651
  %680 = fadd fast float %677, %72
  %681 = fcmp fast ult float %679, 1.000000e+00
  br i1 %681, label %696, label %682, !dx.controlflow.hints !57

; <label>:682                                     ; preds = %665
  %683 = and i32 %92, 1
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %696, label %685, !dx.controlflow.hints !58

; <label>:685                                     ; preds = %682
  %686 = shl i32 %666, 7
  %687 = and i32 %686, 65408
  %688 = and i32 %666, 65535
  %689 = xor i32 %687, %688
  %690 = lshr i32 %689, 9
  %691 = xor i32 %690, %689
  %692 = shl nuw nsw i32 %691, 8
  %693 = and i32 %692, 65280
  %694 = xor i32 %693, %691
  %695 = call float @dx.op.unary.f32(i32 22, float %679)  ; Frc(value)
  br label %696

; <label>:696                                     ; preds = %685, %682, %665
  %697 = phi i32 [ %694, %685 ], [ %666, %665 ], [ %666, %682 ]
  %698 = phi float [ %695, %685 ], [ %679, %665 ], [ %679, %682 ]
  %699 = phi i32 [ %675, %685 ], [ %675, %665 ], [ 0, %682 ]
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %2566, label %701, !dx.controlflow.hints !59

; <label>:701                                     ; preds = %696
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = and i32 %703, 65535
  %705 = lshr i32 %703, 16
  %706 = call float @dx.op.unary.f32(i32 7, float %698)  ; Saturate(value)
  %707 = uitofp i32 %704 to float
  %708 = fmul fast float %707, %706
  %709 = add nsw i32 %704, -1
  %710 = call float @dx.op.unary.f32(i32 27, float %708)  ; Round_ni(value)
  %711 = fptosi float %710 to i32
  %712 = call i32 @dx.op.binary.i32(i32 38, i32 %711, i32 %709)  ; IMin(a,b)
  %713 = uitofp i32 %712 to float
  %714 = fsub fast float %708, %713
  %715 = shl i32 %712, 1
  %716 = mul i32 %712, 96
  %717 = add i32 %716, %705
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %717, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = extractvalue %dx.types.ResRet.i32 %718, 1
  %721 = add i32 %717, 8
  %722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %721, i32 undef)  ; BufferLoad(srv,index,wot)
  %723 = extractvalue %dx.types.ResRet.i32 %722, 0
  %724 = extractvalue %dx.types.ResRet.i32 %722, 1
  %725 = add i32 %717, 16
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = add i32 %717, 20
  %729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %728, i32 undef)  ; BufferLoad(srv,index,wot)
  %730 = extractvalue %dx.types.ResRet.i32 %729, 0
  %731 = and i32 %730, 65535
  %732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %731)  ; LegacyF16ToF32(value)
  %733 = lshr i32 %730, 16
  %734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %733)  ; LegacyF16ToF32(value)
  %735 = and i32 %727, 65535
  %736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %735)  ; LegacyF16ToF32(value)
  %737 = lshr i32 %727, 16
  %738 = call float @dx.op.legacyF16ToF32(i32 131, i32 %737)  ; LegacyF16ToF32(value)
  %739 = and i32 %719, 65535
  %740 = call float @dx.op.legacyF16ToF32(i32 131, i32 %739)  ; LegacyF16ToF32(value)
  %741 = lshr i32 %719, 16
  %742 = call float @dx.op.legacyF16ToF32(i32 131, i32 %741)  ; LegacyF16ToF32(value)
  %743 = and i32 %720, 65535
  %744 = call float @dx.op.legacyF16ToF32(i32 131, i32 %743)  ; LegacyF16ToF32(value)
  %745 = and i32 %723, 65535
  %746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %745)  ; LegacyF16ToF32(value)
  %747 = lshr i32 %723, 16
  %748 = call float @dx.op.legacyF16ToF32(i32 131, i32 %747)  ; LegacyF16ToF32(value)
  %749 = and i32 %724, 65535
  %750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %749)  ; LegacyF16ToF32(value)
  %751 = lshr i32 %724, 16
  %752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %751)  ; LegacyF16ToF32(value)
  %753 = or i32 %715, 1
  %754 = mul i32 %753, 48
  %755 = add i32 %754, %705
  %756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %755, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = extractvalue %dx.types.ResRet.i32 %756, 1
  %759 = add i32 %755, 8
  %760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %759, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.i32 %760, 0
  %762 = extractvalue %dx.types.ResRet.i32 %760, 1
  %763 = add i32 %755, 16
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %763, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = add i32 %755, 20
  %767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %766, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.i32 %767, 0
  %769 = and i32 %768, 65535
  %770 = call float @dx.op.legacyF16ToF32(i32 131, i32 %769)  ; LegacyF16ToF32(value)
  %771 = lshr i32 %768, 16
  %772 = call float @dx.op.legacyF16ToF32(i32 131, i32 %771)  ; LegacyF16ToF32(value)
  %773 = and i32 %765, 65535
  %774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %773)  ; LegacyF16ToF32(value)
  %775 = lshr i32 %765, 16
  %776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %775)  ; LegacyF16ToF32(value)
  %777 = and i32 %757, 65535
  %778 = call float @dx.op.legacyF16ToF32(i32 131, i32 %777)  ; LegacyF16ToF32(value)
  %779 = lshr i32 %757, 16
  %780 = call float @dx.op.legacyF16ToF32(i32 131, i32 %779)  ; LegacyF16ToF32(value)
  %781 = and i32 %758, 65535
  %782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %781)  ; LegacyF16ToF32(value)
  %783 = and i32 %761, 65535
  %784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %783)  ; LegacyF16ToF32(value)
  %785 = lshr i32 %761, 16
  %786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %785)  ; LegacyF16ToF32(value)
  %787 = and i32 %762, 65535
  %788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %787)  ; LegacyF16ToF32(value)
  %789 = lshr i32 %762, 16
  %790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %789)  ; LegacyF16ToF32(value)
  %791 = add nuw nsw i32 %705, 96
  %792 = add i32 %791, %716
  %793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.i32 %793, 0
  %795 = extractvalue %dx.types.ResRet.i32 %793, 1
  %796 = add i32 %792, 8
  %797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %796, i32 undef)  ; BufferLoad(srv,index,wot)
  %798 = extractvalue %dx.types.ResRet.i32 %797, 0
  %799 = extractvalue %dx.types.ResRet.i32 %797, 1
  %800 = add i32 %792, 16
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = add i32 %792, 20
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %803, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = and i32 %805, 65535
  %807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %806)  ; LegacyF16ToF32(value)
  %808 = lshr i32 %805, 16
  %809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %808)  ; LegacyF16ToF32(value)
  %810 = and i32 %802, 65535
  %811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %810)  ; LegacyF16ToF32(value)
  %812 = lshr i32 %802, 16
  %813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %812)  ; LegacyF16ToF32(value)
  %814 = and i32 %794, 65535
  %815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %814)  ; LegacyF16ToF32(value)
  %816 = lshr i32 %794, 16
  %817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %816)  ; LegacyF16ToF32(value)
  %818 = and i32 %795, 65535
  %819 = call float @dx.op.legacyF16ToF32(i32 131, i32 %818)  ; LegacyF16ToF32(value)
  %820 = and i32 %798, 65535
  %821 = call float @dx.op.legacyF16ToF32(i32 131, i32 %820)  ; LegacyF16ToF32(value)
  %822 = lshr i32 %798, 16
  %823 = call float @dx.op.legacyF16ToF32(i32 131, i32 %822)  ; LegacyF16ToF32(value)
  %824 = and i32 %799, 65535
  %825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %824)  ; LegacyF16ToF32(value)
  %826 = lshr i32 %799, 16
  %827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %826)  ; LegacyF16ToF32(value)
  %828 = add nuw nsw i32 %705, 144
  %829 = add i32 %828, %716
  %830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %829, i32 undef)  ; BufferLoad(srv,index,wot)
  %831 = extractvalue %dx.types.ResRet.i32 %830, 0
  %832 = extractvalue %dx.types.ResRet.i32 %830, 1
  %833 = add i32 %829, 8
  %834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %833, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.i32 %834, 0
  %836 = extractvalue %dx.types.ResRet.i32 %834, 1
  %837 = add i32 %829, 16
  %838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %837, i32 undef)  ; BufferLoad(srv,index,wot)
  %839 = extractvalue %dx.types.ResRet.i32 %838, 0
  %840 = add i32 %829, 20
  %841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %840, i32 undef)  ; BufferLoad(srv,index,wot)
  %842 = extractvalue %dx.types.ResRet.i32 %841, 0
  %843 = and i32 %842, 65535
  %844 = call float @dx.op.legacyF16ToF32(i32 131, i32 %843)  ; LegacyF16ToF32(value)
  %845 = lshr i32 %842, 16
  %846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %845)  ; LegacyF16ToF32(value)
  %847 = and i32 %839, 65535
  %848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %847)  ; LegacyF16ToF32(value)
  %849 = lshr i32 %839, 16
  %850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %849)  ; LegacyF16ToF32(value)
  %851 = and i32 %831, 65535
  %852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %851)  ; LegacyF16ToF32(value)
  %853 = lshr i32 %831, 16
  %854 = call float @dx.op.legacyF16ToF32(i32 131, i32 %853)  ; LegacyF16ToF32(value)
  %855 = and i32 %832, 65535
  %856 = call float @dx.op.legacyF16ToF32(i32 131, i32 %855)  ; LegacyF16ToF32(value)
  %857 = and i32 %835, 65535
  %858 = call float @dx.op.legacyF16ToF32(i32 131, i32 %857)  ; LegacyF16ToF32(value)
  %859 = lshr i32 %835, 16
  %860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %859)  ; LegacyF16ToF32(value)
  %861 = and i32 %836, 65535
  %862 = call float @dx.op.legacyF16ToF32(i32 131, i32 %861)  ; LegacyF16ToF32(value)
  %863 = lshr i32 %836, 16
  %864 = call float @dx.op.legacyF16ToF32(i32 131, i32 %863)  ; LegacyF16ToF32(value)
  %865 = shl i32 %697, 7
  %866 = and i32 %865, 65408
  %867 = and i32 %697, 65535
  %868 = xor i32 %866, %867
  %869 = lshr i32 %868, 9
  %870 = xor i32 %869, %868
  %871 = shl nuw nsw i32 %870, 8
  %872 = and i32 %871, 65280
  %873 = xor i32 %872, %870
  %874 = uitofp i32 %873 to float
  %875 = fmul fast float %874, 0x3EF0001000000000
  %876 = shl nuw nsw i32 %873, 7
  %877 = and i32 %876, 65408
  %878 = xor i32 %877, %873
  %879 = lshr i32 %878, 9
  %880 = and i32 %879, 65535
  %881 = xor i32 %880, %878
  %882 = shl nuw nsw i32 %881, 8
  %883 = xor i32 %882, %881
  %884 = and i32 %883, 65535
  %885 = uitofp i32 %884 to float
  %886 = fmul fast float %885, 0x3EF0001000000000
  %887 = shl nuw nsw i32 %884, 7
  %888 = xor i32 %887, %883
  %889 = lshr i32 %888, 9
  %890 = and i32 %889, 127
  %891 = and i32 %888, 65535
  %892 = xor i32 %890, %891
  %893 = shl nuw nsw i32 %892, 8
  %894 = and i32 %893, 65280
  %895 = xor i32 %894, %892
  %896 = uitofp i32 %895 to float
  %897 = fmul fast float %896, 0x3EF0001000000000
  %898 = shl nuw nsw i32 %895, 7
  %899 = and i32 %898, 65408
  %900 = xor i32 %899, %895
  %901 = lshr i32 %900, 9
  %902 = xor i32 %901, %900
  %903 = shl nuw nsw i32 %902, 8
  %904 = and i32 %903, 65280
  %905 = xor i32 %904, %902
  %906 = shl nuw nsw i32 %905, 7
  %907 = xor i32 %906, %905
  %908 = lshr i32 %907, 9
  %909 = and i32 %908, 127
  %910 = and i32 %907, 65535
  %911 = xor i32 %909, %910
  %912 = shl nuw nsw i32 %911, 8
  %913 = and i32 %912, 65280
  %914 = xor i32 %913, %911
  %915 = uitofp i32 %914 to float
  %916 = fmul fast float %118, 0x3EF0001000000000
  %917 = fmul fast float %916, %915
  %918 = fadd fast float %917, %116
  %919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %920 = extractvalue %dx.types.CBufRet.f32 %919, 0
  %921 = extractvalue %dx.types.CBufRet.f32 %919, 1
  %922 = extractvalue %dx.types.CBufRet.f32 %919, 2
  %923 = fmul fast float %920, %918
  %924 = fmul fast float %921, %918
  %925 = fmul fast float %922, %918
  %926 = shl nuw nsw i32 %914, 7
  %927 = and i32 %926, 65408
  %928 = xor i32 %927, %914
  %929 = lshr i32 %928, 9
  %930 = xor i32 %929, %928
  %931 = shl nuw nsw i32 %930, 8
  %932 = and i32 %931, 65280
  %933 = xor i32 %932, %930
  %934 = uitofp i32 %933 to float
  %935 = fmul fast float %934, 0x3EF0001000000000
  %936 = fmul fast float %776, %935
  %937 = fadd fast float %936, %738
  %938 = fmul fast float %850, %935
  %939 = fsub fast float %813, %937
  %940 = fadd fast float %939, %938
  %941 = fmul fast float %940, %714
  %942 = fadd fast float %941, %937
  %943 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %944 = extractvalue %dx.types.CBufRet.i32 %943, 1
  %945 = icmp ne i32 %944, 0
  %946 = and i1 %166, %945
  %947 = icmp ne i32 %510, 0
  %948 = and i1 %947, %946
  br i1 %948, label %949, label %1660, !dx.controlflow.hints !60

; <label>:949                                     ; preds = %701
  br label %950

; <label>:950                                     ; preds = %1284, %949
  %951 = phi float [ %1288, %1284 ], [ 0.000000e+00, %949 ]
  %952 = phi float [ %1289, %1284 ], [ 0.000000e+00, %949 ]
  %953 = phi float [ %1290, %1284 ], [ 0.000000e+00, %949 ]
  %954 = phi i32 [ %1291, %1284 ], [ 0, %949 ]
  %955 = icmp ult i32 %954, %510
  br i1 %955, label %956, label %1293, !dx.controlflow.hints !61

; <label>:956                                     ; preds = %950
  %957 = shl i32 %954, 3
  %958 = lshr i32 %508, %957
  %959 = and i32 %958, 255
  %960 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %959, i32 0)  ; BufferLoad(srv,index,wot)
  %961 = extractvalue %dx.types.ResRet.f32 %960, 0
  %962 = extractvalue %dx.types.ResRet.f32 %960, 1
  %963 = extractvalue %dx.types.ResRet.f32 %960, 2
  %964 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %959, i32 12)  ; BufferLoad(srv,index,wot)
  %965 = extractvalue %dx.types.ResRet.f32 %964, 0
  %966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %959, i32 16)  ; BufferLoad(srv,index,wot)
  %967 = extractvalue %dx.types.ResRet.f32 %966, 0
  %968 = extractvalue %dx.types.ResRet.f32 %966, 1
  %969 = extractvalue %dx.types.ResRet.f32 %966, 2
  %970 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %959, i32 32)  ; BufferLoad(srv,index,wot)
  %971 = extractvalue %dx.types.ResRet.f32 %970, 0
  %972 = extractvalue %dx.types.ResRet.f32 %970, 1
  %973 = extractvalue %dx.types.ResRet.f32 %970, 2
  %974 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %959, i32 44)  ; BufferLoad(srv,index,wot)
  %975 = extractvalue %dx.types.ResRet.f32 %974, 0
  %976 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %959, i32 48)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.f32 %976, 0
  %978 = extractvalue %dx.types.ResRet.f32 %976, 1
  %979 = extractvalue %dx.types.ResRet.f32 %976, 2
  %980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %959, i32 60)  ; BufferLoad(srv,index,wot)
  %981 = extractvalue %dx.types.ResRet.i32 %980, 0
  %982 = and i32 %981, 4095
  %983 = icmp eq i32 %982, 0
  br i1 %983, label %1284, label %984

; <label>:984                                     ; preds = %956
  %985 = and i32 %981, 4095
  br label %986

; <label>:986                                     ; preds = %1277, %984
  %987 = phi float [ %1278, %1277 ], [ 0.000000e+00, %984 ]
  %988 = phi float [ %1279, %1277 ], [ 0.000000e+00, %984 ]
  %989 = phi float [ %1280, %1277 ], [ 0.000000e+00, %984 ]
  %990 = phi i32 [ %1281, %1277 ], [ 0, %984 ]
  %991 = lshr i32 %981, 12
  %992 = and i32 %991, 4095
  %993 = add nuw nsw i32 %990, %992
  %994 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %993, i32 0)  ; BufferLoad(srv,index,wot)
  %995 = extractvalue %dx.types.ResRet.f32 %994, 0
  %996 = extractvalue %dx.types.ResRet.f32 %994, 1
  %997 = extractvalue %dx.types.ResRet.f32 %994, 2
  %998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %993, i32 12)  ; BufferLoad(srv,index,wot)
  %999 = extractvalue %dx.types.ResRet.i32 %998, 0
  %1000 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %993, i32 16)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.f32 %1000, 0
  %1002 = extractvalue %dx.types.ResRet.f32 %1000, 1
  %1003 = extractvalue %dx.types.ResRet.f32 %1000, 2
  %1004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %993, i32 28)  ; BufferLoad(srv,index,wot)
  %1005 = extractvalue %dx.types.ResRet.i32 %1004, 0
  %1006 = icmp slt i32 %1005, 0
  %1007 = fsub fast float %672, %977
  %1008 = fsub fast float %673, %978
  %1009 = fsub fast float %674, %979
  %1010 = fmul fast float %1007, %961
  %1011 = call float @dx.op.tertiary.f32(i32 46, float %962, float %1008, float %1010)  ; FMad(a,b,c)
  %1012 = call float @dx.op.tertiary.f32(i32 46, float %963, float %1009, float %1011)  ; FMad(a,b,c)
  %1013 = fmul fast float %1007, %967
  %1014 = call float @dx.op.tertiary.f32(i32 46, float %968, float %1008, float %1013)  ; FMad(a,b,c)
  %1015 = call float @dx.op.tertiary.f32(i32 46, float %969, float %1009, float %1014)  ; FMad(a,b,c)
  %1016 = fmul fast float %1007, %971
  %1017 = call float @dx.op.tertiary.f32(i32 46, float %972, float %1008, float %1016)  ; FMad(a,b,c)
  %1018 = call float @dx.op.tertiary.f32(i32 46, float %973, float %1009, float %1017)  ; FMad(a,b,c)
  %1019 = fmul fast float %995, %975
  %1020 = fmul fast float %996, %975
  %1021 = fmul fast float %997, %975
  %1022 = fmul fast float %1019, 5.000000e-01
  %1023 = fmul fast float %1020, 5.000000e-01
  %1024 = fmul fast float %1021, 5.000000e-01
  %1025 = fadd fast float %1022, 0xBF50624DE0000000
  %1026 = fadd fast float %1023, 0xBF50624DE0000000
  %1027 = fadd fast float %1024, 0xBF50624DE0000000
  %1028 = fcmp fast ogt float %1012, %1025
  %1029 = fcmp fast ogt float %1015, %1026
  %1030 = fcmp fast ogt float %1018, %1027
  %1031 = or i1 %1028, %1029
  %1032 = or i1 %1031, %1030
  br i1 %1006, label %1033, label %1060, !dx.controlflow.hints !62

; <label>:1033                                    ; preds = %986
  %1034 = fsub fast float 0x3F50624DE0000000, %1022
  %1035 = fsub fast float 0x3F50624DE0000000, %1023
  %1036 = fsub fast float 0x3F50624DE0000000, %1024
  %1037 = fcmp fast olt float %1012, %1034
  %1038 = fcmp fast olt float %1015, %1035
  %1039 = fcmp fast olt float %1018, %1036
  %1040 = or i1 %1037, %1038
  %1041 = or i1 %1040, %1039
  %1042 = or i1 %1032, %1041
  br i1 %1042, label %1262, label %1043, !dx.controlflow.hints !63

; <label>:1043                                    ; preds = %1033
  %1044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %999, i32 0)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.i32 %1044, 0
  %1046 = extractvalue %dx.types.ResRet.i32 %1044, 1
  %1047 = extractvalue %dx.types.ResRet.i32 %1044, 2
  %1048 = bitcast i32 %1045 to float
  %1049 = bitcast i32 %1046 to float
  %1050 = bitcast i32 %1047 to float
  %1051 = fmul fast float %1048, %961
  %1052 = call float @dx.op.tertiary.f32(i32 46, float %967, float %1049, float %1051)  ; FMad(a,b,c)
  %1053 = call float @dx.op.tertiary.f32(i32 46, float %971, float %1050, float %1052)  ; FMad(a,b,c)
  %1054 = fmul fast float %1048, %962
  %1055 = call float @dx.op.tertiary.f32(i32 46, float %968, float %1049, float %1054)  ; FMad(a,b,c)
  %1056 = call float @dx.op.tertiary.f32(i32 46, float %972, float %1050, float %1055)  ; FMad(a,b,c)
  %1057 = fmul fast float %1048, %963
  %1058 = call float @dx.op.tertiary.f32(i32 46, float %969, float %1049, float %1057)  ; FMad(a,b,c)
  %1059 = call float @dx.op.tertiary.f32(i32 46, float %973, float %1050, float %1058)  ; FMad(a,b,c)
  br label %1262

; <label>:1060                                    ; preds = %986
  %1061 = fmul fast float %1019, -5.000000e-01
  %1062 = fmul fast float %1020, -5.000000e-01
  %1063 = fmul fast float %1021, -5.000000e-01
  %1064 = fadd fast float %1061, 0x3F50624DE0000000
  %1065 = fadd fast float %1062, 0x3F50624DE0000000
  %1066 = fadd fast float %1063, 0x3F50624DE0000000
  %1067 = fcmp fast olt float %1012, %1064
  %1068 = fcmp fast olt float %1015, %1065
  %1069 = fcmp fast olt float %1018, %1066
  %1070 = or i1 %1067, %1068
  %1071 = or i1 %1070, %1069
  %1072 = or i1 %1032, %1071
  br i1 %1072, label %1262, label %1073, !dx.controlflow.hints !63

; <label>:1073                                    ; preds = %1060
  %1074 = and i32 %1005, 1023
  %1075 = lshr i32 %1005, 10
  %1076 = and i32 %1075, 1023
  %1077 = lshr i32 %1005, 20
  %1078 = and i32 %1077, 1023
  %1079 = add nuw nsw i32 %1074, 1
  %1080 = add nuw nsw i32 %1076, 1
  %1081 = fsub fast float %1012, %1061
  %1082 = fsub fast float %1015, %1062
  %1083 = fsub fast float %1018, %1063
  %1084 = fmul fast float %1001, %975
  %1085 = fmul fast float %1002, %975
  %1086 = fmul fast float %1003, %975
  %1087 = fdiv fast float 1.000000e+00, %1084
  %1088 = fdiv fast float 1.000000e+00, %1085
  %1089 = fdiv fast float 1.000000e+00, %1086
  %1090 = fmul fast float %1087, %1081
  %1091 = fmul fast float %1088, %1082
  %1092 = fmul fast float %1089, %1083
  %1093 = call float @dx.op.unary.f32(i32 27, float %1090)  ; Round_ni(value)
  %1094 = call float @dx.op.unary.f32(i32 27, float %1091)  ; Round_ni(value)
  %1095 = call float @dx.op.unary.f32(i32 27, float %1092)  ; Round_ni(value)
  %1096 = fptosi float %1093 to i32
  %1097 = fptosi float %1094 to i32
  %1098 = fptosi float %1095 to i32
  %1099 = call i32 @dx.op.binary.i32(i32 37, i32 %1096, i32 0)  ; IMax(a,b)
  %1100 = call i32 @dx.op.binary.i32(i32 37, i32 %1097, i32 0)  ; IMax(a,b)
  %1101 = call i32 @dx.op.binary.i32(i32 37, i32 %1098, i32 0)  ; IMax(a,b)
  %1102 = call i32 @dx.op.binary.i32(i32 38, i32 %1099, i32 %1074)  ; IMin(a,b)
  %1103 = call i32 @dx.op.binary.i32(i32 38, i32 %1100, i32 %1076)  ; IMin(a,b)
  %1104 = call i32 @dx.op.binary.i32(i32 38, i32 %1101, i32 %1078)  ; IMin(a,b)
  %1105 = call float @dx.op.unary.f32(i32 22, float %1090)  ; Frc(value)
  %1106 = call float @dx.op.unary.f32(i32 22, float %1091)  ; Frc(value)
  %1107 = call float @dx.op.unary.f32(i32 22, float %1092)  ; Frc(value)
  %1108 = fsub fast float 1.000000e+00, %1106
  %1109 = fsub fast float 1.000000e+00, %1107
  %1110 = fmul fast float %1109, %1108
  %1111 = fmul fast float %1108, %1107
  %1112 = fmul fast float %1109, %1106
  %1113 = fmul fast float %1107, %1106
  %1114 = fsub fast float 1.000000e+00, %1105
  %1115 = fmul fast float %1110, %1114
  %1116 = fmul fast float %1111, %1114
  %1117 = fmul fast float %1112, %1114
  %1118 = fmul fast float %1113, %1114
  %1119 = fmul fast float %1110, %1105
  %1120 = fmul fast float %1111, %1105
  %1121 = fmul fast float %1112, %1105
  %1122 = fmul fast float %1113, %1105
  %1123 = call i32 @dx.op.binary.i32(i32 40, i32 %1102, i32 %1074)  ; UMin(a,b)
  %1124 = call i32 @dx.op.binary.i32(i32 40, i32 %1103, i32 %1076)  ; UMin(a,b)
  %1125 = call i32 @dx.op.binary.i32(i32 40, i32 %1104, i32 %1078)  ; UMin(a,b)
  %1126 = mul i32 %1125, %1080
  %1127 = add i32 %1126, %1124
  %1128 = mul i32 %1127, %1079
  %1129 = add i32 %1123, %999
  %1130 = add i32 %1129, %1128
  %1131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1130, i32 0)  ; BufferLoad(srv,index,wot)
  %1132 = extractvalue %dx.types.ResRet.i32 %1131, 0
  %1133 = extractvalue %dx.types.ResRet.i32 %1131, 1
  %1134 = extractvalue %dx.types.ResRet.i32 %1131, 2
  %1135 = bitcast i32 %1132 to float
  %1136 = bitcast i32 %1133 to float
  %1137 = bitcast i32 %1134 to float
  %1138 = add i32 %1104, 1
  %1139 = call i32 @dx.op.binary.i32(i32 40, i32 %1138, i32 %1078)  ; UMin(a,b)
  %1140 = mul i32 %1139, %1080
  %1141 = add i32 %1140, %1124
  %1142 = mul i32 %1141, %1079
  %1143 = add i32 %1129, %1142
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1143, i32 0)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = extractvalue %dx.types.ResRet.i32 %1144, 1
  %1147 = extractvalue %dx.types.ResRet.i32 %1144, 2
  %1148 = bitcast i32 %1145 to float
  %1149 = bitcast i32 %1146 to float
  %1150 = bitcast i32 %1147 to float
  %1151 = add i32 %1103, 1
  %1152 = call i32 @dx.op.binary.i32(i32 40, i32 %1151, i32 %1076)  ; UMin(a,b)
  %1153 = add i32 %1126, %1152
  %1154 = mul i32 %1153, %1079
  %1155 = add i32 %1129, %1154
  %1156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1155, i32 0)  ; BufferLoad(srv,index,wot)
  %1157 = extractvalue %dx.types.ResRet.i32 %1156, 0
  %1158 = extractvalue %dx.types.ResRet.i32 %1156, 1
  %1159 = extractvalue %dx.types.ResRet.i32 %1156, 2
  %1160 = bitcast i32 %1157 to float
  %1161 = bitcast i32 %1158 to float
  %1162 = bitcast i32 %1159 to float
  %1163 = add i32 %1140, %1152
  %1164 = mul i32 %1163, %1079
  %1165 = add i32 %1129, %1164
  %1166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1165, i32 0)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.i32 %1166, 0
  %1168 = extractvalue %dx.types.ResRet.i32 %1166, 1
  %1169 = extractvalue %dx.types.ResRet.i32 %1166, 2
  %1170 = bitcast i32 %1167 to float
  %1171 = bitcast i32 %1168 to float
  %1172 = bitcast i32 %1169 to float
  %1173 = add i32 %1102, 1
  %1174 = call i32 @dx.op.binary.i32(i32 40, i32 %1173, i32 %1074)  ; UMin(a,b)
  %1175 = add i32 %1174, %999
  %1176 = add i32 %1175, %1128
  %1177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1176, i32 0)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.i32 %1177, 0
  %1179 = extractvalue %dx.types.ResRet.i32 %1177, 1
  %1180 = extractvalue %dx.types.ResRet.i32 %1177, 2
  %1181 = bitcast i32 %1178 to float
  %1182 = bitcast i32 %1179 to float
  %1183 = bitcast i32 %1180 to float
  %1184 = add i32 %1175, %1142
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1184, i32 0)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = extractvalue %dx.types.ResRet.i32 %1185, 1
  %1188 = extractvalue %dx.types.ResRet.i32 %1185, 2
  %1189 = bitcast i32 %1186 to float
  %1190 = bitcast i32 %1187 to float
  %1191 = bitcast i32 %1188 to float
  %1192 = add i32 %1175, %1154
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1192, i32 0)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.i32 %1193, 0
  %1195 = extractvalue %dx.types.ResRet.i32 %1193, 1
  %1196 = extractvalue %dx.types.ResRet.i32 %1193, 2
  %1197 = bitcast i32 %1194 to float
  %1198 = bitcast i32 %1195 to float
  %1199 = bitcast i32 %1196 to float
  %1200 = add i32 %1175, %1164
  %1201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1200, i32 0)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.i32 %1201, 0
  %1203 = extractvalue %dx.types.ResRet.i32 %1201, 1
  %1204 = extractvalue %dx.types.ResRet.i32 %1201, 2
  %1205 = bitcast i32 %1202 to float
  %1206 = bitcast i32 %1203 to float
  %1207 = bitcast i32 %1204 to float
  %1208 = fmul fast float %1135, %1115
  %1209 = fmul fast float %1136, %1115
  %1210 = fmul fast float %1137, %1115
  %1211 = fmul fast float %1148, %1116
  %1212 = fmul fast float %1149, %1116
  %1213 = fmul fast float %1150, %1116
  %1214 = fadd fast float %1211, %1208
  %1215 = fadd fast float %1212, %1209
  %1216 = fadd fast float %1213, %1210
  %1217 = fmul fast float %1160, %1117
  %1218 = fmul fast float %1161, %1117
  %1219 = fmul fast float %1162, %1117
  %1220 = fadd fast float %1214, %1217
  %1221 = fadd fast float %1215, %1218
  %1222 = fadd fast float %1216, %1219
  %1223 = fmul fast float %1170, %1118
  %1224 = fmul fast float %1171, %1118
  %1225 = fmul fast float %1172, %1118
  %1226 = fadd fast float %1220, %1223
  %1227 = fadd fast float %1221, %1224
  %1228 = fadd fast float %1222, %1225
  %1229 = fmul fast float %1181, %1119
  %1230 = fmul fast float %1182, %1119
  %1231 = fmul fast float %1183, %1119
  %1232 = fadd fast float %1226, %1229
  %1233 = fadd fast float %1227, %1230
  %1234 = fadd fast float %1228, %1231
  %1235 = fmul fast float %1189, %1120
  %1236 = fmul fast float %1190, %1120
  %1237 = fmul fast float %1191, %1120
  %1238 = fadd fast float %1232, %1235
  %1239 = fadd fast float %1233, %1236
  %1240 = fadd fast float %1234, %1237
  %1241 = fmul fast float %1197, %1121
  %1242 = fmul fast float %1198, %1121
  %1243 = fmul fast float %1199, %1121
  %1244 = fadd fast float %1238, %1241
  %1245 = fadd fast float %1239, %1242
  %1246 = fadd fast float %1240, %1243
  %1247 = fmul fast float %1205, %1122
  %1248 = fmul fast float %1206, %1122
  %1249 = fmul fast float %1207, %1122
  %1250 = fadd fast float %1244, %1247
  %1251 = fadd fast float %1245, %1248
  %1252 = fadd fast float %1246, %1249
  %1253 = fmul fast float %1250, %961
  %1254 = call float @dx.op.tertiary.f32(i32 46, float %967, float %1251, float %1253)  ; FMad(a,b,c)
  %1255 = call float @dx.op.tertiary.f32(i32 46, float %971, float %1252, float %1254)  ; FMad(a,b,c)
  %1256 = fmul fast float %1250, %962
  %1257 = call float @dx.op.tertiary.f32(i32 46, float %968, float %1251, float %1256)  ; FMad(a,b,c)
  %1258 = call float @dx.op.tertiary.f32(i32 46, float %972, float %1252, float %1257)  ; FMad(a,b,c)
  %1259 = fmul fast float %1250, %963
  %1260 = call float @dx.op.tertiary.f32(i32 46, float %969, float %1251, float %1259)  ; FMad(a,b,c)
  %1261 = call float @dx.op.tertiary.f32(i32 46, float %973, float %1252, float %1260)  ; FMad(a,b,c)
  br label %1262

; <label>:1262                                    ; preds = %1073, %1060, %1043, %1033
  %1263 = phi i1 [ true, %1073 ], [ false, %1060 ], [ true, %1043 ], [ false, %1033 ]
  %1264 = phi float [ %1255, %1073 ], [ 0.000000e+00, %1060 ], [ %1053, %1043 ], [ 0.000000e+00, %1033 ]
  %1265 = phi float [ %1258, %1073 ], [ 0.000000e+00, %1060 ], [ %1056, %1043 ], [ 0.000000e+00, %1033 ]
  %1266 = phi float [ %1261, %1073 ], [ 0.000000e+00, %1060 ], [ %1059, %1043 ], [ 0.000000e+00, %1033 ]
  %1267 = and i32 %1005, 1073741824
  %1268 = icmp eq i32 %1267, 0
  %1269 = and i1 %1263, %1268
  br i1 %1269, label %1270, label %1277, !dx.controlflow.hints !64

; <label>:1270                                    ; preds = %1262
  %1271 = fmul fast float %1266, %965
  %1272 = fmul fast float %1265, %965
  %1273 = fmul fast float %1264, %965
  %1274 = fadd fast float %1273, %987
  %1275 = fadd fast float %1272, %988
  %1276 = fadd fast float %1271, %989
  br label %1277

; <label>:1277                                    ; preds = %1270, %1262
  %1278 = phi float [ %1274, %1270 ], [ %987, %1262 ]
  %1279 = phi float [ %1275, %1270 ], [ %988, %1262 ]
  %1280 = phi float [ %1276, %1270 ], [ %989, %1262 ]
  %1281 = add nuw nsw i32 %990, 1
  %1282 = icmp eq i32 %1281, %985
  br i1 %1282, label %1283, label %986

; <label>:1283                                    ; preds = %1277
  br label %1284

; <label>:1284                                    ; preds = %1283, %956
  %1285 = phi float [ 0.000000e+00, %956 ], [ %1278, %1283 ]
  %1286 = phi float [ 0.000000e+00, %956 ], [ %1279, %1283 ]
  %1287 = phi float [ 0.000000e+00, %956 ], [ %1280, %1283 ]
  %1288 = fadd fast float %1285, %951
  %1289 = fadd fast float %1286, %952
  %1290 = fadd fast float %1287, %953
  %1291 = add nuw nsw i32 %954, 1
  %1292 = icmp ult i32 %1291, 4
  br i1 %1292, label %950, label %1293

; <label>:1293                                    ; preds = %1284, %950
  %1294 = phi float [ %951, %950 ], [ %1288, %1284 ]
  %1295 = phi float [ %952, %950 ], [ %1289, %1284 ]
  %1296 = phi float [ %953, %950 ], [ %1290, %1284 ]
  %1297 = icmp ugt i32 %510, 4
  br i1 %1297, label %1298, label %1650, !dx.controlflow.hints !65

; <label>:1298                                    ; preds = %1293
  %1299 = add i32 %510, -4
  br label %1300

; <label>:1300                                    ; preds = %1634, %1298
  %1301 = phi float [ 0.000000e+00, %1298 ], [ %1638, %1634 ]
  %1302 = phi float [ 0.000000e+00, %1298 ], [ %1639, %1634 ]
  %1303 = phi float [ 0.000000e+00, %1298 ], [ %1640, %1634 ]
  %1304 = phi i32 [ 0, %1298 ], [ %1641, %1634 ]
  %1305 = icmp ult i32 %1304, %1299
  br i1 %1305, label %1306, label %1643, !dx.controlflow.hints !61

; <label>:1306                                    ; preds = %1300
  %1307 = shl i32 %1304, 3
  %1308 = lshr i32 %509, %1307
  %1309 = and i32 %1308, 255
  %1310 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1309, i32 0)  ; BufferLoad(srv,index,wot)
  %1311 = extractvalue %dx.types.ResRet.f32 %1310, 0
  %1312 = extractvalue %dx.types.ResRet.f32 %1310, 1
  %1313 = extractvalue %dx.types.ResRet.f32 %1310, 2
  %1314 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1309, i32 12)  ; BufferLoad(srv,index,wot)
  %1315 = extractvalue %dx.types.ResRet.f32 %1314, 0
  %1316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1309, i32 16)  ; BufferLoad(srv,index,wot)
  %1317 = extractvalue %dx.types.ResRet.f32 %1316, 0
  %1318 = extractvalue %dx.types.ResRet.f32 %1316, 1
  %1319 = extractvalue %dx.types.ResRet.f32 %1316, 2
  %1320 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1309, i32 32)  ; BufferLoad(srv,index,wot)
  %1321 = extractvalue %dx.types.ResRet.f32 %1320, 0
  %1322 = extractvalue %dx.types.ResRet.f32 %1320, 1
  %1323 = extractvalue %dx.types.ResRet.f32 %1320, 2
  %1324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1309, i32 44)  ; BufferLoad(srv,index,wot)
  %1325 = extractvalue %dx.types.ResRet.f32 %1324, 0
  %1326 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1309, i32 48)  ; BufferLoad(srv,index,wot)
  %1327 = extractvalue %dx.types.ResRet.f32 %1326, 0
  %1328 = extractvalue %dx.types.ResRet.f32 %1326, 1
  %1329 = extractvalue %dx.types.ResRet.f32 %1326, 2
  %1330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1309, i32 60)  ; BufferLoad(srv,index,wot)
  %1331 = extractvalue %dx.types.ResRet.i32 %1330, 0
  %1332 = and i32 %1331, 4095
  %1333 = icmp eq i32 %1332, 0
  br i1 %1333, label %1634, label %1334

; <label>:1334                                    ; preds = %1306
  %1335 = and i32 %1331, 4095
  br label %1336

; <label>:1336                                    ; preds = %1627, %1334
  %1337 = phi float [ %1628, %1627 ], [ 0.000000e+00, %1334 ]
  %1338 = phi float [ %1629, %1627 ], [ 0.000000e+00, %1334 ]
  %1339 = phi float [ %1630, %1627 ], [ 0.000000e+00, %1334 ]
  %1340 = phi i32 [ %1631, %1627 ], [ 0, %1334 ]
  %1341 = lshr i32 %1331, 12
  %1342 = and i32 %1341, 4095
  %1343 = add nuw nsw i32 %1340, %1342
  %1344 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1343, i32 0)  ; BufferLoad(srv,index,wot)
  %1345 = extractvalue %dx.types.ResRet.f32 %1344, 0
  %1346 = extractvalue %dx.types.ResRet.f32 %1344, 1
  %1347 = extractvalue %dx.types.ResRet.f32 %1344, 2
  %1348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1343, i32 12)  ; BufferLoad(srv,index,wot)
  %1349 = extractvalue %dx.types.ResRet.i32 %1348, 0
  %1350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1343, i32 16)  ; BufferLoad(srv,index,wot)
  %1351 = extractvalue %dx.types.ResRet.f32 %1350, 0
  %1352 = extractvalue %dx.types.ResRet.f32 %1350, 1
  %1353 = extractvalue %dx.types.ResRet.f32 %1350, 2
  %1354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1343, i32 28)  ; BufferLoad(srv,index,wot)
  %1355 = extractvalue %dx.types.ResRet.i32 %1354, 0
  %1356 = icmp slt i32 %1355, 0
  %1357 = fsub fast float %672, %1327
  %1358 = fsub fast float %673, %1328
  %1359 = fsub fast float %674, %1329
  %1360 = fmul fast float %1357, %1311
  %1361 = call float @dx.op.tertiary.f32(i32 46, float %1312, float %1358, float %1360)  ; FMad(a,b,c)
  %1362 = call float @dx.op.tertiary.f32(i32 46, float %1313, float %1359, float %1361)  ; FMad(a,b,c)
  %1363 = fmul fast float %1357, %1317
  %1364 = call float @dx.op.tertiary.f32(i32 46, float %1318, float %1358, float %1363)  ; FMad(a,b,c)
  %1365 = call float @dx.op.tertiary.f32(i32 46, float %1319, float %1359, float %1364)  ; FMad(a,b,c)
  %1366 = fmul fast float %1357, %1321
  %1367 = call float @dx.op.tertiary.f32(i32 46, float %1322, float %1358, float %1366)  ; FMad(a,b,c)
  %1368 = call float @dx.op.tertiary.f32(i32 46, float %1323, float %1359, float %1367)  ; FMad(a,b,c)
  %1369 = fmul fast float %1345, %1325
  %1370 = fmul fast float %1346, %1325
  %1371 = fmul fast float %1347, %1325
  %1372 = fmul fast float %1369, 5.000000e-01
  %1373 = fmul fast float %1370, 5.000000e-01
  %1374 = fmul fast float %1371, 5.000000e-01
  %1375 = fadd fast float %1372, 0xBF50624DE0000000
  %1376 = fadd fast float %1373, 0xBF50624DE0000000
  %1377 = fadd fast float %1374, 0xBF50624DE0000000
  %1378 = fcmp fast ogt float %1362, %1375
  %1379 = fcmp fast ogt float %1365, %1376
  %1380 = fcmp fast ogt float %1368, %1377
  %1381 = or i1 %1378, %1379
  %1382 = or i1 %1381, %1380
  br i1 %1356, label %1383, label %1410, !dx.controlflow.hints !62

; <label>:1383                                    ; preds = %1336
  %1384 = fsub fast float 0x3F50624DE0000000, %1372
  %1385 = fsub fast float 0x3F50624DE0000000, %1373
  %1386 = fsub fast float 0x3F50624DE0000000, %1374
  %1387 = fcmp fast olt float %1362, %1384
  %1388 = fcmp fast olt float %1365, %1385
  %1389 = fcmp fast olt float %1368, %1386
  %1390 = or i1 %1387, %1388
  %1391 = or i1 %1390, %1389
  %1392 = or i1 %1382, %1391
  br i1 %1392, label %1612, label %1393, !dx.controlflow.hints !63

; <label>:1393                                    ; preds = %1383
  %1394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1349, i32 0)  ; BufferLoad(srv,index,wot)
  %1395 = extractvalue %dx.types.ResRet.i32 %1394, 0
  %1396 = extractvalue %dx.types.ResRet.i32 %1394, 1
  %1397 = extractvalue %dx.types.ResRet.i32 %1394, 2
  %1398 = bitcast i32 %1395 to float
  %1399 = bitcast i32 %1396 to float
  %1400 = bitcast i32 %1397 to float
  %1401 = fmul fast float %1398, %1311
  %1402 = call float @dx.op.tertiary.f32(i32 46, float %1317, float %1399, float %1401)  ; FMad(a,b,c)
  %1403 = call float @dx.op.tertiary.f32(i32 46, float %1321, float %1400, float %1402)  ; FMad(a,b,c)
  %1404 = fmul fast float %1398, %1312
  %1405 = call float @dx.op.tertiary.f32(i32 46, float %1318, float %1399, float %1404)  ; FMad(a,b,c)
  %1406 = call float @dx.op.tertiary.f32(i32 46, float %1322, float %1400, float %1405)  ; FMad(a,b,c)
  %1407 = fmul fast float %1398, %1313
  %1408 = call float @dx.op.tertiary.f32(i32 46, float %1319, float %1399, float %1407)  ; FMad(a,b,c)
  %1409 = call float @dx.op.tertiary.f32(i32 46, float %1323, float %1400, float %1408)  ; FMad(a,b,c)
  br label %1612

; <label>:1410                                    ; preds = %1336
  %1411 = fmul fast float %1369, -5.000000e-01
  %1412 = fmul fast float %1370, -5.000000e-01
  %1413 = fmul fast float %1371, -5.000000e-01
  %1414 = fadd fast float %1411, 0x3F50624DE0000000
  %1415 = fadd fast float %1412, 0x3F50624DE0000000
  %1416 = fadd fast float %1413, 0x3F50624DE0000000
  %1417 = fcmp fast olt float %1362, %1414
  %1418 = fcmp fast olt float %1365, %1415
  %1419 = fcmp fast olt float %1368, %1416
  %1420 = or i1 %1417, %1418
  %1421 = or i1 %1420, %1419
  %1422 = or i1 %1382, %1421
  br i1 %1422, label %1612, label %1423, !dx.controlflow.hints !63

; <label>:1423                                    ; preds = %1410
  %1424 = and i32 %1355, 1023
  %1425 = lshr i32 %1355, 10
  %1426 = and i32 %1425, 1023
  %1427 = lshr i32 %1355, 20
  %1428 = and i32 %1427, 1023
  %1429 = add nuw nsw i32 %1424, 1
  %1430 = add nuw nsw i32 %1426, 1
  %1431 = fsub fast float %1362, %1411
  %1432 = fsub fast float %1365, %1412
  %1433 = fsub fast float %1368, %1413
  %1434 = fmul fast float %1351, %1325
  %1435 = fmul fast float %1352, %1325
  %1436 = fmul fast float %1353, %1325
  %1437 = fdiv fast float 1.000000e+00, %1434
  %1438 = fdiv fast float 1.000000e+00, %1435
  %1439 = fdiv fast float 1.000000e+00, %1436
  %1440 = fmul fast float %1437, %1431
  %1441 = fmul fast float %1438, %1432
  %1442 = fmul fast float %1439, %1433
  %1443 = call float @dx.op.unary.f32(i32 27, float %1440)  ; Round_ni(value)
  %1444 = call float @dx.op.unary.f32(i32 27, float %1441)  ; Round_ni(value)
  %1445 = call float @dx.op.unary.f32(i32 27, float %1442)  ; Round_ni(value)
  %1446 = fptosi float %1443 to i32
  %1447 = fptosi float %1444 to i32
  %1448 = fptosi float %1445 to i32
  %1449 = call i32 @dx.op.binary.i32(i32 37, i32 %1446, i32 0)  ; IMax(a,b)
  %1450 = call i32 @dx.op.binary.i32(i32 37, i32 %1447, i32 0)  ; IMax(a,b)
  %1451 = call i32 @dx.op.binary.i32(i32 37, i32 %1448, i32 0)  ; IMax(a,b)
  %1452 = call i32 @dx.op.binary.i32(i32 38, i32 %1449, i32 %1424)  ; IMin(a,b)
  %1453 = call i32 @dx.op.binary.i32(i32 38, i32 %1450, i32 %1426)  ; IMin(a,b)
  %1454 = call i32 @dx.op.binary.i32(i32 38, i32 %1451, i32 %1428)  ; IMin(a,b)
  %1455 = call float @dx.op.unary.f32(i32 22, float %1440)  ; Frc(value)
  %1456 = call float @dx.op.unary.f32(i32 22, float %1441)  ; Frc(value)
  %1457 = call float @dx.op.unary.f32(i32 22, float %1442)  ; Frc(value)
  %1458 = fsub fast float 1.000000e+00, %1456
  %1459 = fsub fast float 1.000000e+00, %1457
  %1460 = fmul fast float %1459, %1458
  %1461 = fmul fast float %1458, %1457
  %1462 = fmul fast float %1459, %1456
  %1463 = fmul fast float %1457, %1456
  %1464 = fsub fast float 1.000000e+00, %1455
  %1465 = fmul fast float %1460, %1464
  %1466 = fmul fast float %1461, %1464
  %1467 = fmul fast float %1462, %1464
  %1468 = fmul fast float %1463, %1464
  %1469 = fmul fast float %1460, %1455
  %1470 = fmul fast float %1461, %1455
  %1471 = fmul fast float %1462, %1455
  %1472 = fmul fast float %1463, %1455
  %1473 = call i32 @dx.op.binary.i32(i32 40, i32 %1452, i32 %1424)  ; UMin(a,b)
  %1474 = call i32 @dx.op.binary.i32(i32 40, i32 %1453, i32 %1426)  ; UMin(a,b)
  %1475 = call i32 @dx.op.binary.i32(i32 40, i32 %1454, i32 %1428)  ; UMin(a,b)
  %1476 = mul i32 %1475, %1430
  %1477 = add i32 %1476, %1474
  %1478 = mul i32 %1477, %1429
  %1479 = add i32 %1473, %1349
  %1480 = add i32 %1479, %1478
  %1481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1480, i32 0)  ; BufferLoad(srv,index,wot)
  %1482 = extractvalue %dx.types.ResRet.i32 %1481, 0
  %1483 = extractvalue %dx.types.ResRet.i32 %1481, 1
  %1484 = extractvalue %dx.types.ResRet.i32 %1481, 2
  %1485 = bitcast i32 %1482 to float
  %1486 = bitcast i32 %1483 to float
  %1487 = bitcast i32 %1484 to float
  %1488 = add i32 %1454, 1
  %1489 = call i32 @dx.op.binary.i32(i32 40, i32 %1488, i32 %1428)  ; UMin(a,b)
  %1490 = mul i32 %1489, %1430
  %1491 = add i32 %1490, %1474
  %1492 = mul i32 %1491, %1429
  %1493 = add i32 %1479, %1492
  %1494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1493, i32 0)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = extractvalue %dx.types.ResRet.i32 %1494, 1
  %1497 = extractvalue %dx.types.ResRet.i32 %1494, 2
  %1498 = bitcast i32 %1495 to float
  %1499 = bitcast i32 %1496 to float
  %1500 = bitcast i32 %1497 to float
  %1501 = add i32 %1453, 1
  %1502 = call i32 @dx.op.binary.i32(i32 40, i32 %1501, i32 %1426)  ; UMin(a,b)
  %1503 = add i32 %1476, %1502
  %1504 = mul i32 %1503, %1429
  %1505 = add i32 %1479, %1504
  %1506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1505, i32 0)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.i32 %1506, 0
  %1508 = extractvalue %dx.types.ResRet.i32 %1506, 1
  %1509 = extractvalue %dx.types.ResRet.i32 %1506, 2
  %1510 = bitcast i32 %1507 to float
  %1511 = bitcast i32 %1508 to float
  %1512 = bitcast i32 %1509 to float
  %1513 = add i32 %1490, %1502
  %1514 = mul i32 %1513, %1429
  %1515 = add i32 %1479, %1514
  %1516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1515, i32 0)  ; BufferLoad(srv,index,wot)
  %1517 = extractvalue %dx.types.ResRet.i32 %1516, 0
  %1518 = extractvalue %dx.types.ResRet.i32 %1516, 1
  %1519 = extractvalue %dx.types.ResRet.i32 %1516, 2
  %1520 = bitcast i32 %1517 to float
  %1521 = bitcast i32 %1518 to float
  %1522 = bitcast i32 %1519 to float
  %1523 = add i32 %1452, 1
  %1524 = call i32 @dx.op.binary.i32(i32 40, i32 %1523, i32 %1424)  ; UMin(a,b)
  %1525 = add i32 %1524, %1349
  %1526 = add i32 %1525, %1478
  %1527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1526, i32 0)  ; BufferLoad(srv,index,wot)
  %1528 = extractvalue %dx.types.ResRet.i32 %1527, 0
  %1529 = extractvalue %dx.types.ResRet.i32 %1527, 1
  %1530 = extractvalue %dx.types.ResRet.i32 %1527, 2
  %1531 = bitcast i32 %1528 to float
  %1532 = bitcast i32 %1529 to float
  %1533 = bitcast i32 %1530 to float
  %1534 = add i32 %1525, %1492
  %1535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1534, i32 0)  ; BufferLoad(srv,index,wot)
  %1536 = extractvalue %dx.types.ResRet.i32 %1535, 0
  %1537 = extractvalue %dx.types.ResRet.i32 %1535, 1
  %1538 = extractvalue %dx.types.ResRet.i32 %1535, 2
  %1539 = bitcast i32 %1536 to float
  %1540 = bitcast i32 %1537 to float
  %1541 = bitcast i32 %1538 to float
  %1542 = add i32 %1525, %1504
  %1543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1542, i32 0)  ; BufferLoad(srv,index,wot)
  %1544 = extractvalue %dx.types.ResRet.i32 %1543, 0
  %1545 = extractvalue %dx.types.ResRet.i32 %1543, 1
  %1546 = extractvalue %dx.types.ResRet.i32 %1543, 2
  %1547 = bitcast i32 %1544 to float
  %1548 = bitcast i32 %1545 to float
  %1549 = bitcast i32 %1546 to float
  %1550 = add i32 %1525, %1514
  %1551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1550, i32 0)  ; BufferLoad(srv,index,wot)
  %1552 = extractvalue %dx.types.ResRet.i32 %1551, 0
  %1553 = extractvalue %dx.types.ResRet.i32 %1551, 1
  %1554 = extractvalue %dx.types.ResRet.i32 %1551, 2
  %1555 = bitcast i32 %1552 to float
  %1556 = bitcast i32 %1553 to float
  %1557 = bitcast i32 %1554 to float
  %1558 = fmul fast float %1485, %1465
  %1559 = fmul fast float %1486, %1465
  %1560 = fmul fast float %1487, %1465
  %1561 = fmul fast float %1498, %1466
  %1562 = fmul fast float %1499, %1466
  %1563 = fmul fast float %1500, %1466
  %1564 = fadd fast float %1561, %1558
  %1565 = fadd fast float %1562, %1559
  %1566 = fadd fast float %1563, %1560
  %1567 = fmul fast float %1510, %1467
  %1568 = fmul fast float %1511, %1467
  %1569 = fmul fast float %1512, %1467
  %1570 = fadd fast float %1564, %1567
  %1571 = fadd fast float %1565, %1568
  %1572 = fadd fast float %1566, %1569
  %1573 = fmul fast float %1520, %1468
  %1574 = fmul fast float %1521, %1468
  %1575 = fmul fast float %1522, %1468
  %1576 = fadd fast float %1570, %1573
  %1577 = fadd fast float %1571, %1574
  %1578 = fadd fast float %1572, %1575
  %1579 = fmul fast float %1531, %1469
  %1580 = fmul fast float %1532, %1469
  %1581 = fmul fast float %1533, %1469
  %1582 = fadd fast float %1576, %1579
  %1583 = fadd fast float %1577, %1580
  %1584 = fadd fast float %1578, %1581
  %1585 = fmul fast float %1539, %1470
  %1586 = fmul fast float %1540, %1470
  %1587 = fmul fast float %1541, %1470
  %1588 = fadd fast float %1582, %1585
  %1589 = fadd fast float %1583, %1586
  %1590 = fadd fast float %1584, %1587
  %1591 = fmul fast float %1547, %1471
  %1592 = fmul fast float %1548, %1471
  %1593 = fmul fast float %1549, %1471
  %1594 = fadd fast float %1588, %1591
  %1595 = fadd fast float %1589, %1592
  %1596 = fadd fast float %1590, %1593
  %1597 = fmul fast float %1555, %1472
  %1598 = fmul fast float %1556, %1472
  %1599 = fmul fast float %1557, %1472
  %1600 = fadd fast float %1594, %1597
  %1601 = fadd fast float %1595, %1598
  %1602 = fadd fast float %1596, %1599
  %1603 = fmul fast float %1600, %1311
  %1604 = call float @dx.op.tertiary.f32(i32 46, float %1317, float %1601, float %1603)  ; FMad(a,b,c)
  %1605 = call float @dx.op.tertiary.f32(i32 46, float %1321, float %1602, float %1604)  ; FMad(a,b,c)
  %1606 = fmul fast float %1600, %1312
  %1607 = call float @dx.op.tertiary.f32(i32 46, float %1318, float %1601, float %1606)  ; FMad(a,b,c)
  %1608 = call float @dx.op.tertiary.f32(i32 46, float %1322, float %1602, float %1607)  ; FMad(a,b,c)
  %1609 = fmul fast float %1600, %1313
  %1610 = call float @dx.op.tertiary.f32(i32 46, float %1319, float %1601, float %1609)  ; FMad(a,b,c)
  %1611 = call float @dx.op.tertiary.f32(i32 46, float %1323, float %1602, float %1610)  ; FMad(a,b,c)
  br label %1612

; <label>:1612                                    ; preds = %1423, %1410, %1393, %1383
  %1613 = phi i1 [ true, %1423 ], [ false, %1410 ], [ true, %1393 ], [ false, %1383 ]
  %1614 = phi float [ %1605, %1423 ], [ 0.000000e+00, %1410 ], [ %1403, %1393 ], [ 0.000000e+00, %1383 ]
  %1615 = phi float [ %1608, %1423 ], [ 0.000000e+00, %1410 ], [ %1406, %1393 ], [ 0.000000e+00, %1383 ]
  %1616 = phi float [ %1611, %1423 ], [ 0.000000e+00, %1410 ], [ %1409, %1393 ], [ 0.000000e+00, %1383 ]
  %1617 = and i32 %1355, 1073741824
  %1618 = icmp eq i32 %1617, 0
  %1619 = and i1 %1613, %1618
  br i1 %1619, label %1620, label %1627, !dx.controlflow.hints !64

; <label>:1620                                    ; preds = %1612
  %1621 = fmul fast float %1616, %1315
  %1622 = fmul fast float %1615, %1315
  %1623 = fmul fast float %1614, %1315
  %1624 = fadd fast float %1623, %1337
  %1625 = fadd fast float %1622, %1338
  %1626 = fadd fast float %1621, %1339
  br label %1627

; <label>:1627                                    ; preds = %1620, %1612
  %1628 = phi float [ %1624, %1620 ], [ %1337, %1612 ]
  %1629 = phi float [ %1625, %1620 ], [ %1338, %1612 ]
  %1630 = phi float [ %1626, %1620 ], [ %1339, %1612 ]
  %1631 = add nuw nsw i32 %1340, 1
  %1632 = icmp eq i32 %1631, %1335
  br i1 %1632, label %1633, label %1336

; <label>:1633                                    ; preds = %1627
  br label %1634

; <label>:1634                                    ; preds = %1633, %1306
  %1635 = phi float [ 0.000000e+00, %1306 ], [ %1628, %1633 ]
  %1636 = phi float [ 0.000000e+00, %1306 ], [ %1629, %1633 ]
  %1637 = phi float [ 0.000000e+00, %1306 ], [ %1630, %1633 ]
  %1638 = fadd fast float %1635, %1301
  %1639 = fadd fast float %1636, %1302
  %1640 = fadd fast float %1637, %1303
  %1641 = add nuw nsw i32 %1304, 1
  %1642 = icmp ult i32 %1641, 4
  br i1 %1642, label %1300, label %1643

; <label>:1643                                    ; preds = %1634, %1300
  %1644 = phi float [ %1301, %1300 ], [ %1638, %1634 ]
  %1645 = phi float [ %1302, %1300 ], [ %1639, %1634 ]
  %1646 = phi float [ %1303, %1300 ], [ %1640, %1634 ]
  %1647 = fadd fast float %1644, %1294
  %1648 = fadd fast float %1645, %1295
  %1649 = fadd fast float %1646, %1296
  br label %1650

; <label>:1650                                    ; preds = %1643, %1293
  %1651 = phi float [ %1647, %1643 ], [ %1294, %1293 ]
  %1652 = phi float [ %1648, %1643 ], [ %1295, %1293 ]
  %1653 = phi float [ %1649, %1643 ], [ %1296, %1293 ]
  %1654 = fmul fast float %1651, %942
  %1655 = fmul fast float %1652, %942
  %1656 = fmul fast float %1653, %942
  %1657 = fadd fast float %1654, %923
  %1658 = fadd fast float %1655, %924
  %1659 = fadd fast float %1656, %925
  br label %1660

; <label>:1660                                    ; preds = %1650, %701
  %1661 = phi float [ %1657, %1650 ], [ %923, %701 ]
  %1662 = phi float [ %1658, %1650 ], [ %924, %701 ]
  %1663 = phi float [ %1659, %1650 ], [ %925, %701 ]
  %1664 = and i32 %92, 8
  %1665 = icmp eq i32 %1664, 0
  br i1 %1665, label %1798, label %1666, !dx.controlflow.hints !66

; <label>:1666                                    ; preds = %1660
  %1667 = shl nuw nsw i32 %933, 7
  %1668 = xor i32 %1667, %933
  %1669 = lshr i32 %1668, 9
  %1670 = and i32 %1669, 127
  %1671 = and i32 %1668, 65535
  %1672 = xor i32 %1670, %1671
  %1673 = shl nuw nsw i32 %1672, 8
  %1674 = and i32 %1673, 65280
  %1675 = xor i32 %1674, %1672
  %1676 = uitofp i32 %1675 to float
  %1677 = fmul fast float %1676, 0x3EF0001000000000
  %1678 = shl nuw nsw i32 %1675, 7
  %1679 = and i32 %1678, 65408
  %1680 = xor i32 %1679, %1675
  %1681 = lshr i32 %1680, 9
  %1682 = xor i32 %1681, %1680
  %1683 = shl nuw nsw i32 %1682, 8
  %1684 = and i32 %1683, 65280
  %1685 = xor i32 %1684, %1682
  %1686 = uitofp i32 %1685 to float
  %1687 = fmul fast float %1686, 0x3EF0001000000000
  %1688 = shl nuw nsw i32 %1685, 7
  %1689 = xor i32 %1688, %1685
  %1690 = lshr i32 %1689, 9
  %1691 = and i32 %1690, 127
  %1692 = and i32 %1689, 65535
  %1693 = xor i32 %1691, %1692
  %1694 = shl nuw nsw i32 %1693, 8
  %1695 = and i32 %1694, 65280
  %1696 = xor i32 %1695, %1693
  %1697 = uitofp i32 %1696 to float
  %1698 = fmul fast float %1697, 0x3EF0001000000000
  %1699 = shl nuw nsw i32 %1696, 7
  %1700 = and i32 %1699, 65408
  %1701 = xor i32 %1700, %1696
  %1702 = lshr i32 %1701, 9
  %1703 = xor i32 %1702, %1701
  %1704 = shl nuw nsw i32 %1703, 8
  %1705 = and i32 %1704, 65280
  %1706 = xor i32 %1705, %1703
  %1707 = uitofp i32 %1706 to float
  %1708 = fmul fast float %1707, 0x3EF0001000000000
  %1709 = fmul fast float %784, %1677
  %1710 = fmul fast float %786, %1687
  %1711 = fmul fast float %788, %1698
  %1712 = fmul fast float %790, %1708
  %1713 = fadd fast float %1709, %746
  %1714 = fadd fast float %1710, %748
  %1715 = fadd fast float %1711, %750
  %1716 = fadd fast float %1712, %752
  %1717 = fmul fast float %858, %1677
  %1718 = fmul fast float %860, %1687
  %1719 = fmul fast float %862, %1698
  %1720 = fmul fast float %864, %1708
  %1721 = fsub fast float %821, %1713
  %1722 = fadd fast float %1721, %1717
  %1723 = fsub fast float %823, %1714
  %1724 = fadd fast float %1723, %1718
  %1725 = fsub fast float %825, %1715
  %1726 = fadd fast float %1725, %1719
  %1727 = fsub fast float %827, %1716
  %1728 = fadd fast float %1727, %1720
  %1729 = fmul fast float %1722, %714
  %1730 = fmul fast float %1724, %714
  %1731 = fmul fast float %1726, %714
  %1732 = fmul fast float %1728, %714
  %1733 = fadd fast float %1729, %1713
  %1734 = fadd fast float %1730, %1714
  %1735 = fadd fast float %1731, %1715
  %1736 = fadd fast float %1732, %1716
  %1737 = and i32 %92, 4096
  %1738 = icmp eq i32 %1737, 0
  br i1 %1738, label %1770, label %1739, !dx.controlflow.hints !67

; <label>:1739                                    ; preds = %1666
  %1740 = fmul fast float %1735, %64
  %1741 = fmul fast float %1734, %65
  %1742 = fsub fast float %1740, %1741
  %1743 = fmul fast float %1733, %65
  %1744 = fmul fast float %1735, %63
  %1745 = fsub fast float %1743, %1744
  %1746 = fmul fast float %1734, %63
  %1747 = fmul fast float %1733, %64
  %1748 = fsub fast float %1746, %1747
  %1749 = fmul fast float %1742, 2.000000e+00
  %1750 = fmul fast float %1745, 2.000000e+00
  %1751 = fmul fast float %1748, 2.000000e+00
  %1752 = fmul fast float %1749, %66
  %1753 = fmul fast float %1750, %66
  %1754 = fmul fast float %1751, %66
  %1755 = fmul fast float %1751, %64
  %1756 = fmul fast float %1750, %65
  %1757 = fmul fast float %1749, %65
  %1758 = fmul fast float %1751, %63
  %1759 = fmul fast float %1750, %63
  %1760 = fmul fast float %1749, %64
  %1761 = fadd fast float %1755, %1733
  %1762 = fadd fast float %1761, %1752
  %1763 = fsub fast float %1762, %1756
  %1764 = fsub fast float %1734, %1758
  %1765 = fadd fast float %1764, %1753
  %1766 = fadd fast float %1765, %1757
  %1767 = fadd fast float %1754, %1735
  %1768 = fsub fast float %1767, %1760
  %1769 = fadd fast float %1768, %1759
  br label %1770

; <label>:1770                                    ; preds = %1739, %1666
  %1771 = phi float [ %1763, %1739 ], [ %1733, %1666 ]
  %1772 = phi float [ %1766, %1739 ], [ %1734, %1666 ]
  %1773 = phi float [ %1769, %1739 ], [ %1735, %1666 ]
  %1774 = fsub fast float %68, %672
  %1775 = fadd fast float %1774, %1771
  %1776 = fsub fast float %69, %673
  %1777 = fadd fast float %1776, %1772
  %1778 = fsub fast float %70, %674
  %1779 = fadd fast float %1778, %1773
  %1780 = call float @dx.op.dot3.f32(i32 55, float %1775, float %1777, float %1779, float %1775, float %1777, float %1779)  ; Dot3(ax,ay,az,bx,by,bz)
  %1781 = fcmp fast ogt float %98, 0.000000e+00
  %1782 = fcmp fast ole float %1780, %98
  %1783 = and i1 %1781, %1782
  br i1 %1783, label %1789, label %1784, !dx.controlflow.hints !68

; <label>:1784                                    ; preds = %1770
  %1785 = fcmp fast ogt float %1780, 0x3E45798EE0000000
  br i1 %1785, label %1786, label %1789, !dx.controlflow.hints !69

; <label>:1786                                    ; preds = %1784
  %1787 = call float @dx.op.unary.f32(i32 25, float %1780)  ; Rsqrt(value)
  %1788 = fmul fast float %1787, %1736
  br label %1789

; <label>:1789                                    ; preds = %1786, %1784, %1770
  %1790 = phi i32 [ %699, %1786 ], [ %699, %1784 ], [ 0, %1770 ]
  %1791 = phi float [ %1788, %1786 ], [ %1736, %1784 ], [ %1736, %1770 ]
  %1792 = fmul fast float %1791, %1775
  %1793 = fmul fast float %1791, %1777
  %1794 = fmul fast float %1791, %1779
  %1795 = fadd fast float %1792, %1661
  %1796 = fadd fast float %1793, %1662
  %1797 = fadd fast float %1794, %1663
  br label %1798

; <label>:1798                                    ; preds = %1789, %1660
  %1799 = phi i32 [ %1790, %1789 ], [ %699, %1660 ]
  %1800 = phi i32 [ %1706, %1789 ], [ %933, %1660 ]
  %1801 = phi float [ %1795, %1789 ], [ %1661, %1660 ]
  %1802 = phi float [ %1796, %1789 ], [ %1662, %1660 ]
  %1803 = phi float [ %1797, %1789 ], [ %1663, %1660 ]
  %1804 = shl i32 %1800, 7
  %1805 = and i32 %1804, 65408
  %1806 = and i32 %1800, 65535
  %1807 = xor i32 %1805, %1806
  %1808 = lshr i32 %1807, 9
  %1809 = xor i32 %1808, %1807
  %1810 = shl nuw nsw i32 %1809, 8
  %1811 = and i32 %1810, 65280
  %1812 = xor i32 %1811, %1809
  %1813 = uitofp i32 %1812 to float
  %1814 = fmul fast float %1813, 0x3EF0001000000000
  %1815 = shl nuw nsw i32 %1812, 7
  %1816 = and i32 %1815, 65408
  %1817 = xor i32 %1816, %1812
  %1818 = lshr i32 %1817, 9
  %1819 = and i32 %1818, 65535
  %1820 = xor i32 %1819, %1817
  %1821 = shl nuw nsw i32 %1820, 8
  %1822 = xor i32 %1821, %1820
  %1823 = and i32 %1822, 65535
  %1824 = uitofp i32 %1823 to float
  %1825 = fmul fast float %1824, 0x3EF0001000000000
  %1826 = shl nuw nsw i32 %1823, 7
  %1827 = xor i32 %1826, %1822
  %1828 = lshr i32 %1827, 9
  %1829 = and i32 %1828, 127
  %1830 = and i32 %1827, 65535
  %1831 = xor i32 %1829, %1830
  %1832 = shl nuw nsw i32 %1831, 8
  %1833 = and i32 %1832, 65280
  %1834 = xor i32 %1833, %1831
  %1835 = uitofp i32 %1834 to float
  %1836 = fmul fast float %1835, 0x3EF0001000000000
  %1837 = shl nuw nsw i32 %1834, 7
  %1838 = and i32 %1837, 65408
  %1839 = xor i32 %1838, %1834
  %1840 = lshr i32 %1839, 9
  %1841 = xor i32 %1840, %1839
  %1842 = shl nuw nsw i32 %1841, 8
  %1843 = and i32 %1842, 65280
  %1844 = xor i32 %1843, %1841
  %1845 = and i32 %92, 512
  %1846 = icmp ne i32 %1845, 0
  %1847 = select i1 %1846, float %1825, float %1814
  %1848 = select i1 %1846, float %1836, float %1814
  %1849 = fmul fast float %1814, %778
  %1850 = fmul fast float %1847, %780
  %1851 = fmul fast float %1848, %782
  %1852 = fadd fast float %1849, %740
  %1853 = fadd fast float %1850, %742
  %1854 = fadd fast float %1851, %744
  %1855 = fmul fast float %1814, %852
  %1856 = fmul fast float %1847, %854
  %1857 = fmul fast float %1848, %856
  %1858 = fadd fast float %1855, %815
  %1859 = fadd fast float %1856, %817
  %1860 = fadd fast float %1857, %819
  %1861 = fsub fast float %1858, %1852
  %1862 = fsub fast float %1859, %1853
  %1863 = fsub fast float %1860, %1854
  %1864 = fmul fast float %1861, %714
  %1865 = fmul fast float %1862, %714
  %1866 = fmul fast float %1863, %714
  %1867 = fadd fast float %1864, %1852
  %1868 = fadd fast float %1865, %1853
  %1869 = fadd fast float %1866, %1854
  %1870 = and i32 %92, 1024
  %1871 = icmp eq i32 %1870, 0
  br i1 %1871, label %1903, label %1872, !dx.controlflow.hints !70

; <label>:1872                                    ; preds = %1798
  %1873 = fmul fast float %1869, %64
  %1874 = fmul fast float %1868, %65
  %1875 = fsub fast float %1873, %1874
  %1876 = fmul fast float %1867, %65
  %1877 = fmul fast float %1869, %63
  %1878 = fsub fast float %1876, %1877
  %1879 = fmul fast float %1868, %63
  %1880 = fmul fast float %1867, %64
  %1881 = fsub fast float %1879, %1880
  %1882 = fmul fast float %1875, 2.000000e+00
  %1883 = fmul fast float %1878, 2.000000e+00
  %1884 = fmul fast float %1881, 2.000000e+00
  %1885 = fmul fast float %1882, %66
  %1886 = fmul fast float %1883, %66
  %1887 = fmul fast float %1884, %66
  %1888 = fmul fast float %1884, %64
  %1889 = fmul fast float %1883, %65
  %1890 = fmul fast float %1882, %65
  %1891 = fmul fast float %1884, %63
  %1892 = fmul fast float %1883, %63
  %1893 = fmul fast float %1882, %64
  %1894 = fadd fast float %1888, %1867
  %1895 = fadd fast float %1894, %1885
  %1896 = fsub fast float %1895, %1889
  %1897 = fsub fast float %1868, %1891
  %1898 = fadd fast float %1897, %1886
  %1899 = fadd fast float %1898, %1890
  %1900 = fadd fast float %1869, %1887
  %1901 = fsub fast float %1900, %1893
  %1902 = fadd fast float %1901, %1892
  br label %1903

; <label>:1903                                    ; preds = %1872, %1798
  %1904 = phi float [ %1896, %1872 ], [ %1867, %1798 ]
  %1905 = phi float [ %1899, %1872 ], [ %1868, %1798 ]
  %1906 = phi float [ %1902, %1872 ], [ %1869, %1798 ]
  %1907 = and i32 %667, 1
  %1908 = icmp eq i32 %1907, 0
  %1909 = and i1 %658, %1908
  br i1 %1909, label %1910, label %1917, !dx.controlflow.hints !71

; <label>:1910                                    ; preds = %1903
  %1911 = fmul fast float %1801, %680
  %1912 = fmul fast float %1802, %680
  %1913 = fmul fast float %1803, %680
  %1914 = fadd fast float %1904, %1911
  %1915 = fadd fast float %1905, %1912
  %1916 = fadd fast float %1906, %1913
  br label %1935

; <label>:1917                                    ; preds = %1903
  br i1 %658, label %1928, label %1918, !dx.controlflow.hints !72

; <label>:1918                                    ; preds = %1917
  %1919 = fadd fast float %1904, %1801
  %1920 = fadd fast float %1905, %1802
  %1921 = fadd fast float %1906, %1803
  %1922 = fmul fast float %1919, %72
  %1923 = fmul fast float %1920, %72
  %1924 = fmul fast float %1921, %72
  %1925 = fadd fast float %1922, %668
  %1926 = fadd fast float %1923, %669
  %1927 = fadd fast float %1924, %670
  br label %1935

; <label>:1928                                    ; preds = %1917
  %1929 = fmul fast float %1801, %72
  %1930 = fmul fast float %1802, %72
  %1931 = fmul fast float %1803, %72
  %1932 = fadd fast float %1929, %668
  %1933 = fadd fast float %1930, %669
  %1934 = fadd fast float %1931, %670
  br label %1935

; <label>:1935                                    ; preds = %1928, %1918, %1910
  %1936 = phi float [ %1914, %1910 ], [ %1932, %1928 ], [ %1925, %1918 ]
  %1937 = phi float [ %1915, %1910 ], [ %1933, %1928 ], [ %1926, %1918 ]
  %1938 = phi float [ %1916, %1910 ], [ %1934, %1928 ], [ %1927, %1918 ]
  %1939 = shl nuw nsw i32 %1844, 7
  %1940 = xor i32 %1939, %1844
  %1941 = lshr i32 %1940, 9
  %1942 = and i32 %1941, 127
  %1943 = and i32 %1940, 65535
  %1944 = xor i32 %1942, %1943
  %1945 = shl nuw nsw i32 %1944, 8
  %1946 = and i32 %1945, 65280
  %1947 = xor i32 %1946, %1944
  %1948 = uitofp i32 %1947 to float
  %1949 = fmul fast float %1948, 0x3EF0001000000000
  %1950 = fmul fast float %1949, %774
  %1951 = fadd fast float %1950, %736
  %1952 = fmul fast float %1949, %848
  %1953 = fadd fast float %1952, %811
  %1954 = fsub fast float %1953, %1951
  %1955 = fmul fast float %1954, %714
  %1956 = fadd fast float %1955, %1951
  %1957 = fmul fast float %1956, %72
  %1958 = fsub fast float 1.000000e+00, %1957
  %1959 = call float @dx.op.unary.f32(i32 7, float %1958)  ; Saturate(value)
  %1960 = fmul fast float %1959, %1936
  %1961 = fmul fast float %1959, %1937
  %1962 = fmul fast float %1959, %1938
  %1963 = fmul fast float %1960, %72
  %1964 = fmul fast float %1961, %72
  %1965 = fmul fast float %1962, %72
  %1966 = fadd fast float %1963, %672
  %1967 = fadd fast float %1964, %673
  %1968 = fadd fast float %1965, %674
  %1969 = and i32 %92, 2
  %1970 = icmp eq i32 %1969, 0
  br i1 %1970, label %2554, label %1971, !dx.controlflow.hints !73

; <label>:1971                                    ; preds = %1935
  %1972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %1973 = extractvalue %dx.types.CBufRet.f32 %1972, 0
  %1974 = extractvalue %dx.types.CBufRet.f32 %1972, 1
  %1975 = extractvalue %dx.types.CBufRet.f32 %1972, 2
  %1976 = fsub fast float %1966, %1973
  %1977 = fsub fast float %1967, %1974
  %1978 = fsub fast float %1968, %1975
  %1979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1980 = extractvalue %dx.types.CBufRet.f32 %1979, 0
  %1981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1982 = extractvalue %dx.types.CBufRet.f32 %1981, 0
  %1983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1984 = extractvalue %dx.types.CBufRet.f32 %1983, 0
  %1985 = call float @dx.op.dot3.f32(i32 55, float %1980, float %1982, float %1984, float %1976, float %1977, float %1978)  ; Dot3(ax,ay,az,bx,by,bz)
  %1986 = fcmp fast ogt float %1985, 0.000000e+00
  br i1 %1986, label %1987, label %2054, !dx.controlflow.hints !74

; <label>:1987                                    ; preds = %1971
  %1988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1989 = extractvalue %dx.types.CBufRet.f32 %1988, 0
  %1990 = extractvalue %dx.types.CBufRet.f32 %1988, 1
  %1991 = extractvalue %dx.types.CBufRet.f32 %1988, 3
  %1992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1993 = extractvalue %dx.types.CBufRet.f32 %1992, 0
  %1994 = extractvalue %dx.types.CBufRet.f32 %1992, 1
  %1995 = extractvalue %dx.types.CBufRet.f32 %1992, 3
  %1996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1997 = extractvalue %dx.types.CBufRet.f32 %1996, 0
  %1998 = extractvalue %dx.types.CBufRet.f32 %1996, 1
  %1999 = extractvalue %dx.types.CBufRet.f32 %1996, 3
  %2000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2001 = extractvalue %dx.types.CBufRet.f32 %2000, 0
  %2002 = extractvalue %dx.types.CBufRet.f32 %2000, 1
  %2003 = extractvalue %dx.types.CBufRet.f32 %2000, 3
  %2004 = fmul fast float %1989, %1976
  %2005 = call float @dx.op.tertiary.f32(i32 46, float %1993, float %1977, float %2004)  ; FMad(a,b,c)
  %2006 = call float @dx.op.tertiary.f32(i32 46, float %1997, float %1978, float %2005)  ; FMad(a,b,c)
  %2007 = fadd fast float %2006, %2001
  %2008 = fmul fast float %1990, %1976
  %2009 = call float @dx.op.tertiary.f32(i32 46, float %1994, float %1977, float %2008)  ; FMad(a,b,c)
  %2010 = call float @dx.op.tertiary.f32(i32 46, float %1998, float %1978, float %2009)  ; FMad(a,b,c)
  %2011 = fadd fast float %2010, %2002
  %2012 = fmul fast float %1991, %1976
  %2013 = call float @dx.op.tertiary.f32(i32 46, float %1995, float %1977, float %2012)  ; FMad(a,b,c)
  %2014 = call float @dx.op.tertiary.f32(i32 46, float %1999, float %1978, float %2013)  ; FMad(a,b,c)
  %2015 = fadd fast float %2014, %2003
  %2016 = fdiv fast float %2007, %2015
  %2017 = fdiv fast float %2011, %2015
  %2018 = fcmp fast ogt float %2016, -1.000000e+00
  %2019 = fcmp fast olt float %2016, 1.000000e+00
  %2020 = and i1 %2018, %2019
  %2021 = fcmp fast ogt float %2017, -1.000000e+00
  %2022 = and i1 %2020, %2021
  %2023 = fcmp fast olt float %2017, 1.000000e+00
  %2024 = and i1 %2023, %2022
  br i1 %2024, label %2025, label %2054, !dx.controlflow.hints !75

; <label>:2025                                    ; preds = %1987
  %2026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2027 = extractvalue %dx.types.CBufRet.f32 %2026, 2
  %2028 = extractvalue %dx.types.CBufRet.f32 %2026, 3
  %2029 = fsub fast float %2016, %2027
  %2030 = fsub fast float %2017, %2028
  %2031 = fmul fast float %2029, 5.000000e-01
  %2032 = fmul fast float %2030, 5.000000e-01
  %2033 = fadd fast float %2031, 5.000000e-01
  %2034 = fsub fast float 5.000000e-01, %2032
  %2035 = extractvalue %dx.types.CBufRet.f32 %2026, 0
  %2036 = extractvalue %dx.types.CBufRet.f32 %2026, 1
  %2037 = fmul fast float %2033, %2035
  %2038 = fmul fast float %2034, %2036
  %2039 = fptoui float %2037 to i32
  %2040 = fptoui float %2038 to i32
  %2041 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %2039, i32 %2040, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2042 = extractvalue %dx.types.ResRet.f32 %2041, 0
  %2043 = fcmp fast ogt float %2042, -1.000000e+00
  %2044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2045 = extractvalue %dx.types.CBufRet.f32 %2044, 1
  %2046 = select i1 %2043, float %2045, float 1.000000e+00
  %2047 = fadd fast float %2042, 1.000000e+00
  %2048 = fmul fast float %2046, %2047
  %2049 = call float @dx.op.unary.f32(i32 6, float %2048)  ; FAbs(value)
  %2050 = fsub fast float %2015, %2049
  %2051 = call float @dx.op.unary.f32(i32 6, float %2050)  ; FAbs(value)
  %2052 = extractvalue %dx.types.CBufRet.f32 %1972, 3
  %2053 = fcmp fast olt float %2051, %2052
  br i1 %2053, label %2058, label %2054, !dx.controlflow.hints !76

; <label>:2054                                    ; preds = %2025, %1987, %1971
  %2055 = phi float [ %2049, %2025 ], [ 0.000000e+00, %1987 ], [ 0.000000e+00, %1971 ]
  %2056 = phi i32 [ %2039, %2025 ], [ 0, %1987 ], [ 0, %1971 ]
  %2057 = phi i32 [ %2040, %2025 ], [ 0, %1987 ], [ 0, %1971 ]
  br label %2058

; <label>:2058                                    ; preds = %2054, %2025
  %2059 = phi float [ %2055, %2054 ], [ %2049, %2025 ]
  %2060 = phi i32 [ %2056, %2054 ], [ %2039, %2025 ]
  %2061 = phi i32 [ %2057, %2054 ], [ %2040, %2025 ]
  %2062 = phi i1 [ false, %2054 ], [ true, %2025 ]
  br i1 %2062, label %2063, label %2554, !dx.controlflow.hints !77

; <label>:2063                                    ; preds = %2058
  %2064 = fcmp fast ogt float %157, 0.000000e+00
  br i1 %2064, label %2065, label %2093, !dx.controlflow.hints !78

; <label>:2065                                    ; preds = %2063
  %2066 = shl nuw i32 %1947, 16
  %2067 = or i32 %2066, %1947
  %2068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2069 = extractvalue %dx.types.CBufRet.i32 %2068, 1
  %2070 = xor i32 %2069, %2067
  %2071 = xor i32 %2070, 61
  %2072 = lshr i32 %2070, 16
  %2073 = xor i32 %2071, %2072
  %2074 = mul i32 %2073, 9
  %2075 = lshr i32 %2074, 4
  %2076 = xor i32 %2075, %2074
  %2077 = mul i32 %2076, 668265261
  %2078 = lshr i32 %2077, 15
  %2079 = xor i32 %2078, %2077
  %2080 = shl i32 %2079, 7
  %2081 = and i32 %2080, 65408
  %2082 = and i32 %2079, 65535
  %2083 = xor i32 %2081, %2082
  %2084 = lshr i32 %2083, 9
  %2085 = xor i32 %2084, %2083
  %2086 = shl nuw nsw i32 %2085, 8
  %2087 = and i32 %2086, 65280
  %2088 = xor i32 %2087, %2085
  %2089 = uitofp i32 %2088 to float
  %2090 = fmul fast float %2089, 0x3EF0001000000000
  %2091 = fcmp fast ugt float %2090, %157
  br i1 %2091, label %2093, label %2092, !dx.controlflow.hints !79

; <label>:2092                                    ; preds = %2065
  br label %2093

; <label>:2093                                    ; preds = %2092, %2065, %2063
  %2094 = phi i1 [ true, %2092 ], [ false, %2065 ], [ false, %2063 ]
  br i1 %2094, label %2095, label %2225, !dx.controlflow.hints !80

; <label>:2095                                    ; preds = %2093
  %2096 = call float @dx.op.dot3.f32(i32 55, float %1963, float %1964, float %1965, float %1963, float %1964, float %1965)  ; Dot3(ax,ay,az,bx,by,bz)
  %2097 = call float @dx.op.unary.f32(i32 25, float %2096)  ; Rsqrt(value)
  %2098 = fmul fast float %2097, 5.000000e-01
  %2099 = fcmp fast ugt float %2098, 1.000000e+00
  br i1 %2099, label %2225, label %2100

; <label>:2100                                    ; preds = %2095
  br label %2101

; <label>:2101                                    ; preds = %2204, %2100
  %2102 = phi float [ %2209, %2204 ], [ 0.000000e+00, %2100 ]
  %2103 = phi float [ %2210, %2204 ], [ 1.000000e+00, %2100 ]
  %2104 = phi float [ %2219, %2204 ], [ 5.000000e-01, %2100 ]
  %2105 = phi i32 [ %2220, %2204 ], [ 0, %2100 ]
  %2106 = phi float [ %2211, %2204 ], [ %1976, %2100 ]
  %2107 = phi float [ %2212, %2204 ], [ %1977, %2100 ]
  %2108 = phi float [ %2213, %2204 ], [ %1978, %2100 ]
  %2109 = phi i32 [ %2214, %2204 ], [ %2060, %2100 ]
  %2110 = phi i32 [ %2215, %2204 ], [ %2061, %2100 ]
  %2111 = phi float [ %2216, %2204 ], [ %2059, %2100 ]
  %2112 = fmul fast float %2104, %1963
  %2113 = fmul fast float %2104, %1964
  %2114 = fmul fast float %2104, %1965
  %2115 = fadd fast float %2112, %672
  %2116 = fadd fast float %2113, %673
  %2117 = fadd fast float %2114, %674
  %2118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %2119 = extractvalue %dx.types.CBufRet.f32 %2118, 0
  %2120 = extractvalue %dx.types.CBufRet.f32 %2118, 1
  %2121 = extractvalue %dx.types.CBufRet.f32 %2118, 2
  %2122 = fsub fast float %2115, %2119
  %2123 = fsub fast float %2116, %2120
  %2124 = fsub fast float %2117, %2121
  %2125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %2126 = extractvalue %dx.types.CBufRet.f32 %2125, 0
  %2127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2128 = extractvalue %dx.types.CBufRet.f32 %2127, 0
  %2129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2130 = extractvalue %dx.types.CBufRet.f32 %2129, 0
  %2131 = call float @dx.op.dot3.f32(i32 55, float %2126, float %2128, float %2130, float %2122, float %2123, float %2124)  ; Dot3(ax,ay,az,bx,by,bz)
  %2132 = fcmp fast ogt float %2131, 0.000000e+00
  br i1 %2132, label %2133, label %2200, !dx.controlflow.hints !74

; <label>:2133                                    ; preds = %2101
  %2134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2135 = extractvalue %dx.types.CBufRet.f32 %2134, 0
  %2136 = extractvalue %dx.types.CBufRet.f32 %2134, 1
  %2137 = extractvalue %dx.types.CBufRet.f32 %2134, 3
  %2138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2139 = extractvalue %dx.types.CBufRet.f32 %2138, 0
  %2140 = extractvalue %dx.types.CBufRet.f32 %2138, 1
  %2141 = extractvalue %dx.types.CBufRet.f32 %2138, 3
  %2142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2143 = extractvalue %dx.types.CBufRet.f32 %2142, 0
  %2144 = extractvalue %dx.types.CBufRet.f32 %2142, 1
  %2145 = extractvalue %dx.types.CBufRet.f32 %2142, 3
  %2146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2147 = extractvalue %dx.types.CBufRet.f32 %2146, 0
  %2148 = extractvalue %dx.types.CBufRet.f32 %2146, 1
  %2149 = extractvalue %dx.types.CBufRet.f32 %2146, 3
  %2150 = fmul fast float %2135, %2122
  %2151 = call float @dx.op.tertiary.f32(i32 46, float %2139, float %2123, float %2150)  ; FMad(a,b,c)
  %2152 = call float @dx.op.tertiary.f32(i32 46, float %2143, float %2124, float %2151)  ; FMad(a,b,c)
  %2153 = fadd fast float %2152, %2147
  %2154 = fmul fast float %2136, %2122
  %2155 = call float @dx.op.tertiary.f32(i32 46, float %2140, float %2123, float %2154)  ; FMad(a,b,c)
  %2156 = call float @dx.op.tertiary.f32(i32 46, float %2144, float %2124, float %2155)  ; FMad(a,b,c)
  %2157 = fadd fast float %2156, %2148
  %2158 = fmul fast float %2137, %2122
  %2159 = call float @dx.op.tertiary.f32(i32 46, float %2141, float %2123, float %2158)  ; FMad(a,b,c)
  %2160 = call float @dx.op.tertiary.f32(i32 46, float %2145, float %2124, float %2159)  ; FMad(a,b,c)
  %2161 = fadd fast float %2160, %2149
  %2162 = fdiv fast float %2153, %2161
  %2163 = fdiv fast float %2157, %2161
  %2164 = fcmp fast ogt float %2162, -1.000000e+00
  %2165 = fcmp fast olt float %2162, 1.000000e+00
  %2166 = and i1 %2164, %2165
  %2167 = fcmp fast ogt float %2163, -1.000000e+00
  %2168 = and i1 %2166, %2167
  %2169 = fcmp fast olt float %2163, 1.000000e+00
  %2170 = and i1 %2169, %2168
  br i1 %2170, label %2171, label %2200, !dx.controlflow.hints !75

; <label>:2171                                    ; preds = %2133
  %2172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2173 = extractvalue %dx.types.CBufRet.f32 %2172, 2
  %2174 = extractvalue %dx.types.CBufRet.f32 %2172, 3
  %2175 = fsub fast float %2162, %2173
  %2176 = fsub fast float %2163, %2174
  %2177 = fmul fast float %2175, 5.000000e-01
  %2178 = fmul fast float %2176, 5.000000e-01
  %2179 = fadd fast float %2177, 5.000000e-01
  %2180 = fsub fast float 5.000000e-01, %2178
  %2181 = extractvalue %dx.types.CBufRet.f32 %2172, 0
  %2182 = extractvalue %dx.types.CBufRet.f32 %2172, 1
  %2183 = fmul fast float %2179, %2181
  %2184 = fmul fast float %2180, %2182
  %2185 = fptoui float %2183 to i32
  %2186 = fptoui float %2184 to i32
  %2187 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %2185, i32 %2186, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2188 = extractvalue %dx.types.ResRet.f32 %2187, 0
  %2189 = fcmp fast ogt float %2188, -1.000000e+00
  %2190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2191 = extractvalue %dx.types.CBufRet.f32 %2190, 1
  %2192 = select i1 %2189, float %2191, float 1.000000e+00
  %2193 = fadd fast float %2188, 1.000000e+00
  %2194 = fmul fast float %2192, %2193
  %2195 = call float @dx.op.unary.f32(i32 6, float %2194)  ; FAbs(value)
  %2196 = fsub fast float %2161, %2195
  %2197 = call float @dx.op.unary.f32(i32 6, float %2196)  ; FAbs(value)
  %2198 = extractvalue %dx.types.CBufRet.f32 %2118, 3
  %2199 = fcmp fast olt float %2197, %2198
  br i1 %2199, label %2204, label %2200, !dx.controlflow.hints !76

; <label>:2200                                    ; preds = %2171, %2133, %2101
  %2201 = phi float [ %2195, %2171 ], [ 0.000000e+00, %2133 ], [ 0.000000e+00, %2101 ]
  %2202 = phi i32 [ %2185, %2171 ], [ 0, %2133 ], [ 0, %2101 ]
  %2203 = phi i32 [ %2186, %2171 ], [ 0, %2133 ], [ 0, %2101 ]
  br label %2204

; <label>:2204                                    ; preds = %2200, %2171
  %2205 = phi float [ %2201, %2200 ], [ %2195, %2171 ]
  %2206 = phi i32 [ %2202, %2200 ], [ %2185, %2171 ]
  %2207 = phi i32 [ %2203, %2200 ], [ %2186, %2171 ]
  %2208 = phi i1 [ false, %2200 ], [ true, %2171 ]
  %2209 = select i1 %2208, float %2102, float %2104
  %2210 = select i1 %2208, float %2104, float %2103
  %2211 = select i1 %2208, float %2122, float %2106
  %2212 = select i1 %2208, float %2123, float %2107
  %2213 = select i1 %2208, float %2124, float %2108
  %2214 = select i1 %2208, i32 %2206, i32 %2109
  %2215 = select i1 %2208, i32 %2207, i32 %2110
  %2216 = select i1 %2208, float %2205, float %2111
  %2217 = fsub fast float %2210, %2209
  %2218 = fmul fast float %2217, 5.000000e-01
  %2219 = fadd fast float %2218, %2209
  %2220 = add nuw nsw i32 %2105, 1
  %2221 = fcmp fast oge float %2217, %2098
  %2222 = icmp ult i32 %2220, 8
  %2223 = and i1 %2222, %2221
  br i1 %2223, label %2101, label %2224

; <label>:2224                                    ; preds = %2204
  br label %2225

; <label>:2225                                    ; preds = %2224, %2095, %2093
  %2226 = phi float [ %1976, %2093 ], [ %1976, %2095 ], [ %2211, %2224 ]
  %2227 = phi float [ %1977, %2093 ], [ %1977, %2095 ], [ %2212, %2224 ]
  %2228 = phi float [ %1978, %2093 ], [ %1978, %2095 ], [ %2213, %2224 ]
  %2229 = phi i32 [ %2060, %2093 ], [ %2060, %2095 ], [ %2214, %2224 ]
  %2230 = phi i32 [ %2061, %2093 ], [ %2061, %2095 ], [ %2215, %2224 ]
  %2231 = phi float [ %2059, %2093 ], [ %2059, %2095 ], [ %2216, %2224 ]
  %2232 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2233 = extractvalue %dx.types.CBufRet.i32 %2232, 0
  %2234 = extractvalue %dx.types.CBufRet.i32 %2232, 1
  %2235 = extractvalue %dx.types.CBufRet.i32 %2232, 2
  %2236 = extractvalue %dx.types.CBufRet.i32 %2232, 3
  %2237 = lshr i32 %2229, 1
  %2238 = lshr i32 %2230, 1
  %2239 = and i32 %2229, 1
  %2240 = shl i32 %2230, 1
  %2241 = and i32 %2240, 2
  %2242 = or i32 %2241, %2239
  %2243 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 0
  store i32 %2233, i32* %2243, align 4
  %2244 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 1
  store i32 %2234, i32* %2244, align 4
  %2245 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 2
  store i32 %2235, i32* %2245, align 4
  %2246 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 3
  store i32 %2236, i32* %2246, align 4
  %2247 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 %2242
  %2248 = load i32, i32* %2247, align 4, !tbaa !81
  %2249 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %4, i32 %2248, i32 %2237, i32 %2238, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2250 = extractvalue %dx.types.ResRet.i32 %2249, 0
  %2251 = lshr i32 %2250, 8
  %2252 = and i32 %2250, 255
  %2253 = and i32 %2251, 255
  %2254 = uitofp i32 %2252 to float
  %2255 = uitofp i32 %2253 to float
  %2256 = fmul fast float %2254, 0x3F80101020000000
  %2257 = fmul fast float %2255, 0x3F80101020000000
  %2258 = fadd fast float %2256, -1.000000e+00
  %2259 = fadd fast float %2257, -1.000000e+00
  %2260 = call float @dx.op.unary.f32(i32 6, float %2258)  ; FAbs(value)
  %2261 = fsub fast float 1.000000e+00, %2260
  %2262 = call float @dx.op.unary.f32(i32 6, float %2259)  ; FAbs(value)
  %2263 = fsub fast float %2261, %2262
  %2264 = fsub fast float -0.000000e+00, %2263
  %2265 = call float @dx.op.binary.f32(i32 35, float %2264, float 0.000000e+00)  ; FMax(a,b)
  %2266 = fcmp fast ogt float %2258, 0.000000e+00
  %2267 = fsub fast float -0.000000e+00, %2265
  %2268 = select i1 %2266, float %2267, float %2265
  %2269 = fadd fast float %2268, %2258
  %2270 = fcmp fast ogt float %2259, 0.000000e+00
  %2271 = select i1 %2270, float %2267, float %2265
  %2272 = fadd fast float %2271, %2259
  %2273 = call float @dx.op.dot3.f32(i32 55, float %2269, float %2272, float %2263, float %2269, float %2272, float %2263)  ; Dot3(ax,ay,az,bx,by,bz)
  %2274 = call float @dx.op.unary.f32(i32 25, float %2273)  ; Rsqrt(value)
  %2275 = fmul fast float %2269, %2274
  %2276 = fmul fast float %2272, %2274
  %2277 = fmul fast float %2274, %2263
  %2278 = and i32 %92, 256
  %2279 = icmp ne i32 %2278, 0
  %2280 = select i1 %2279, float %886, float %875
  %2281 = fmul fast float %770, %875
  %2282 = fmul fast float %772, %2280
  %2283 = fadd fast float %2281, %732
  %2284 = fadd fast float %2282, %734
  %2285 = fmul fast float %844, %875
  %2286 = fmul fast float %846, %2280
  %2287 = fsub fast float %807, %2283
  %2288 = fadd fast float %2287, %2285
  %2289 = fsub fast float %809, %2284
  %2290 = fadd fast float %2289, %2286
  %2291 = fmul fast float %2288, %714
  %2292 = fmul fast float %2290, %714
  %2293 = fadd fast float %2291, %2283
  %2294 = fadd fast float %2292, %2284
  %2295 = fcmp fast ogt float %154, 0.000000e+00
  %2296 = fcmp fast ogt float %155, 0.000000e+00
  %2297 = or i1 %2295, %2296
  %2298 = call float @dx.op.binary.f32(i32 35, float %2294, float %154)  ; FMax(a,b)
  %2299 = call float @dx.op.binary.f32(i32 36, float %2298, float %155)  ; FMin(a,b)
  %2300 = select i1 %2297, float %2299, float %2294
  %2301 = fmul fast float %2226, %2226
  %2302 = fmul fast float %2227, %2227
  %2303 = fadd fast float %2302, %2301
  %2304 = fmul fast float %2228, %2228
  %2305 = fadd fast float %2303, %2304
  %2306 = call float @dx.op.unary.f32(i32 24, float %2305)  ; Sqrt(value)
  %2307 = and i32 %92, 2097152
  %2308 = icmp ne i32 %2307, 0
  %2309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2310 = extractvalue %dx.types.CBufRet.f32 %2309, 3
  %2311 = select i1 %2308, float 1.000000e+00, float %2310
  %2312 = fmul fast float %2311, %2306
  %2313 = call float @dx.op.binary.f32(i32 35, float %2312, float %124)  ; FMax(a,b)
  %2314 = call float @dx.op.binary.f32(i32 36, float %2313, float %125)  ; FMin(a,b)
  %2315 = fsub fast float %2314, %124
  %2316 = fmul fast float %130, %120
  %2317 = fmul fast float %2316, %2315
  %2318 = fadd fast float %2317, %129
  %2319 = call float @dx.op.binary.f32(i32 35, float %2312, float %125)  ; FMax(a,b)
  %2320 = call float @dx.op.binary.f32(i32 36, float %2319, float %126)  ; FMin(a,b)
  %2321 = fsub fast float %2320, %125
  %2322 = fmul fast float %2321, %121
  %2323 = fsub fast float %131, %2318
  %2324 = fmul fast float %2322, %2323
  %2325 = fadd fast float %2324, %2318
  %2326 = call float @dx.op.binary.f32(i32 35, float %2312, float %126)  ; FMax(a,b)
  %2327 = call float @dx.op.binary.f32(i32 36, float %2326, float %127)  ; FMin(a,b)
  %2328 = fsub fast float %2327, %126
  %2329 = fmul fast float %2328, %122
  %2330 = fsub fast float %132, %2325
  %2331 = fmul fast float %2329, %2330
  %2332 = fadd fast float %2331, %2325
  %2333 = call float @dx.op.binary.f32(i32 35, float %2312, float %138)  ; FMax(a,b)
  %2334 = call float @dx.op.binary.f32(i32 36, float %2333, float %139)  ; FMin(a,b)
  %2335 = fsub fast float %2334, %138
  %2336 = fmul fast float %144, %134
  %2337 = fmul fast float %2336, %2335
  %2338 = fadd fast float %2337, %143
  %2339 = call float @dx.op.binary.f32(i32 35, float %2312, float %139)  ; FMax(a,b)
  %2340 = call float @dx.op.binary.f32(i32 36, float %2339, float %140)  ; FMin(a,b)
  %2341 = fsub fast float %2340, %139
  %2342 = fmul fast float %2341, %135
  %2343 = fsub fast float %145, %2338
  %2344 = fmul fast float %2342, %2343
  %2345 = fadd fast float %2344, %2338
  %2346 = call float @dx.op.binary.f32(i32 35, float %2312, float %140)  ; FMax(a,b)
  %2347 = call float @dx.op.binary.f32(i32 36, float %2346, float %141)  ; FMin(a,b)
  %2348 = fsub fast float %2347, %140
  %2349 = fmul fast float %2348, %136
  %2350 = fsub fast float %146, %2345
  %2351 = fmul fast float %2349, %2350
  %2352 = fsub fast float %2345, %2332
  %2353 = fadd fast float %2352, %2351
  %2354 = fmul fast float %897, %2353
  %2355 = fadd fast float %2354, %2332
  %2356 = fmul fast float %2355, %2293
  %2357 = fmul fast float %2355, %2300
  %2358 = fmul fast float %2356, %2356
  %2359 = fmul fast float %2357, %2357
  %2360 = fadd fast float %2358, %2359
  %2361 = call float @dx.op.unary.f32(i32 24, float %2360)  ; Sqrt(value)
  %2362 = fmul fast float %2361, %108
  %2363 = fadd fast float %2362, %110
  %2364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %2365 = extractvalue %dx.types.CBufRet.f32 %2364, 0
  %2366 = extractvalue %dx.types.CBufRet.f32 %2364, 1
  %2367 = extractvalue %dx.types.CBufRet.f32 %2364, 2
  %2368 = uitofp i32 %2229 to float
  %2369 = uitofp i32 %2230 to float
  %2370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2371 = extractvalue %dx.types.CBufRet.f32 %2370, 2
  %2372 = extractvalue %dx.types.CBufRet.f32 %2370, 3
  %2373 = fmul fast float %2368, 2.000000e+00
  %2374 = fmul fast float %2373, %2371
  %2375 = fmul fast float %2369, 2.000000e+00
  %2376 = fmul fast float %2375, %2372
  %2377 = fsub fast float 1.000000e+00, %2374
  %2378 = fsub fast float 1.000000e+00, %2376
  %2379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2380 = extractvalue %dx.types.CBufRet.f32 %2379, 0
  %2381 = extractvalue %dx.types.CBufRet.f32 %2379, 1
  %2382 = extractvalue %dx.types.CBufRet.f32 %2379, 2
  %2383 = fmul fast float %2377, %2380
  %2384 = fmul fast float %2377, %2381
  %2385 = fmul fast float %2377, %2382
  %2386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2387 = extractvalue %dx.types.CBufRet.f32 %2386, 0
  %2388 = extractvalue %dx.types.CBufRet.f32 %2386, 1
  %2389 = extractvalue %dx.types.CBufRet.f32 %2386, 2
  %2390 = fmul fast float %2378, %2387
  %2391 = fmul fast float %2378, %2388
  %2392 = fmul fast float %2378, %2389
  %2393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2394 = extractvalue %dx.types.CBufRet.f32 %2393, 0
  %2395 = extractvalue %dx.types.CBufRet.f32 %2393, 1
  %2396 = extractvalue %dx.types.CBufRet.f32 %2393, 2
  %2397 = fadd fast float %2390, %2394
  %2398 = fadd fast float %2397, %2383
  %2399 = fadd fast float %2391, %2395
  %2400 = fadd fast float %2399, %2384
  %2401 = fadd fast float %2392, %2396
  %2402 = fadd fast float %2401, %2385
  %2403 = fmul fast float %2398, %2231
  %2404 = fmul fast float %2400, %2231
  %2405 = fmul fast float %2402, %2231
  %2406 = fadd fast float %2403, %2365
  %2407 = fadd fast float %2404, %2366
  %2408 = fadd fast float %2405, %2367
  %2409 = call float @dx.op.dot3.f32(i32 55, float %2275, float %2276, float %2277, float %2406, float %2407, float %2408)  ; Dot3(ax,ay,az,bx,by,bz)
  %2410 = call float @dx.op.dot3.f32(i32 55, float %2275, float %2276, float %2277, float %672, float %673, float %674)  ; Dot3(ax,ay,az,bx,by,bz)
  %2411 = call float @dx.op.dot3.f32(i32 55, float %2275, float %2276, float %2277, float %1963, float %1964, float %1965)  ; Dot3(ax,ay,az,bx,by,bz)
  %2412 = fdiv fast float 1.000000e+00, %2411
  %2413 = fsub fast float -0.000000e+00, %2412
  %2414 = fsub fast float %2410, %2409
  %2415 = fadd fast float %2414, %2363
  %2416 = fmul fast float %2415, %2413
  %2417 = fsub fast float %2414, %2363
  %2418 = fmul fast float %2417, %2413
  %2419 = fcmp fast oge float %2416, 0.000000e+00
  %2420 = fcmp fast ole float %2418, 1.000000e+00
  %2421 = and i1 %2419, %2420
  %2422 = fcmp fast oge float %2414, 0.000000e+00
  %2423 = and i1 %2422, %2421
  br i1 %2423, label %2424, label %2547, !dx.controlflow.hints !85

; <label>:2424                                    ; preds = %2225
  %2425 = shl nuw nsw i32 %1947, 7
  %2426 = and i32 %2425, 65408
  %2427 = xor i32 %2426, %1947
  %2428 = lshr i32 %2427, 9
  %2429 = xor i32 %2428, %2427
  %2430 = shl nuw nsw i32 %2429, 8
  %2431 = and i32 %2430, 65280
  %2432 = xor i32 %2431, %2429
  %2433 = uitofp i32 %2432 to float
  %2434 = fmul fast float %114, 0x3EF0001000000000
  %2435 = fmul fast float %2434, %2433
  %2436 = fadd fast float %2435, %112
  %2437 = call float @dx.op.dot3.f32(i32 55, float %2275, float %2276, float %2277, float %1960, float %1961, float %1962)  ; Dot3(ax,ay,az,bx,by,bz)
  %2438 = fmul fast float %2437, %2275
  %2439 = fmul fast float %2437, %2276
  %2440 = fmul fast float %2437, %2277
  %2441 = fsub fast float %1960, %2438
  %2442 = fsub fast float %1961, %2439
  %2443 = fsub fast float %1962, %2440
  %2444 = fmul fast float %2441, %106
  %2445 = fmul fast float %2442, %106
  %2446 = fmul fast float %2443, %106
  %2447 = fmul fast float %2438, %2436
  %2448 = fmul fast float %2439, %2436
  %2449 = fmul fast float %2440, %2436
  %2450 = fsub fast float %2444, %2447
  %2451 = fsub fast float %2445, %2448
  %2452 = fsub fast float %2446, %2449
  %2453 = fcmp fast olt float %2411, 0xBFB99999A0000000
  %2454 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2418)  ; FMax(a,b)
  %2455 = select i1 %2453, float %2454, float 0.000000e+00
  %2456 = fmul fast float %2455, %1963
  %2457 = fmul fast float %2455, %1964
  %2458 = fmul fast float %2455, %1965
  %2459 = fadd fast float %2456, %672
  %2460 = fadd fast float %2457, %673
  %2461 = fadd fast float %2458, %674
  %2462 = fsub fast float 1.000000e+00, %2455
  %2463 = fmul fast float %2462, %72
  %2464 = fmul fast float %2463, %2450
  %2465 = fmul fast float %2463, %2451
  %2466 = fmul fast float %2463, %2452
  %2467 = fadd fast float %2464, %2459
  %2468 = fadd fast float %2465, %2460
  %2469 = fadd fast float %2466, %2461
  %2470 = or i32 %667, 1
  %2471 = fadd fast float %698, %656
  %2472 = icmp ne i32 %1799, 0
  %2473 = fcmp fast olt float %2471, 1.000000e+00
  %2474 = and i1 %2473, %2472
  %2475 = zext i1 %2474 to i32
  br i1 %2094, label %2476, label %2554, !dx.controlflow.hints !86

; <label>:2476                                    ; preds = %2424
  %2477 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 0, i32 0, i32 undef, i32 7)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %2478 = add i32 %2477, 7
  %2479 = icmp ugt i32 %2478, 4095
  br i1 %2479, label %2480, label %2483, !dx.controlflow.hints !87

; <label>:2480                                    ; preds = %2476
  %2481 = icmp ult i32 %2477, 4096
  br i1 %2481, label %2482, label %2483, !dx.controlflow.hints !88

; <label>:2482                                    ; preds = %2480
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %2477, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %2483

; <label>:2483                                    ; preds = %2482, %2480, %2476
  %2484 = phi i32 [ %2477, %2476 ], [ 0, %2482 ], [ 0, %2480 ]
  %2485 = icmp eq i32 %2484, 0
  br i1 %2485, label %2554, label %2486, !dx.controlflow.hints !89

; <label>:2486                                    ; preds = %2483
  %2487 = fmul fast float %2363, %2275
  %2488 = fmul fast float %2363, %2276
  %2489 = fmul fast float %2363, %2277
  %2490 = fsub fast float %2459, %2487
  %2491 = fsub fast float %2460, %2488
  %2492 = fsub fast float %2461, %2489
  %2493 = shl i32 %61, 16
  %2494 = or i32 %2493, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %2484, i32 0, i32 %2494, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2495 = add i32 %2484, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %2495, i32 0, i32 %78, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2496 = bitcast float %2490 to i32
  %2497 = add i32 %2484, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %2497, i32 0, i32 %2496, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2498 = bitcast float %2491 to i32
  %2499 = add i32 %2484, 3
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %2499, i32 0, i32 %2498, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2500 = bitcast float %2492 to i32
  %2501 = add i32 %2484, 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %2501, i32 0, i32 %2500, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2502 = fadd fast float %2275, 1.000000e+00
  %2503 = fadd fast float %2276, 1.000000e+00
  %2504 = fadd fast float %2277, 1.000000e+00
  %2505 = fmul fast float %2502, 5.000000e-01
  %2506 = fmul fast float %2503, 5.000000e-01
  %2507 = fmul fast float %2504, 5.000000e-01
  %2508 = call float @dx.op.unary.f32(i32 7, float %2505)  ; Saturate(value)
  %2509 = call float @dx.op.unary.f32(i32 7, float %2506)  ; Saturate(value)
  %2510 = call float @dx.op.unary.f32(i32 7, float %2507)  ; Saturate(value)
  %2511 = fmul fast float %2508, 1.023000e+03
  %2512 = fmul fast float %2509, 1.023000e+03
  %2513 = fmul fast float %2510, 1.023000e+03
  %2514 = fptoui float %2511 to i32
  %2515 = fptoui float %2512 to i32
  %2516 = fptoui float %2513 to i32
  %2517 = shl i32 %2515, 10
  %2518 = or i32 %2517, %2514
  %2519 = shl i32 %2516, 20
  %2520 = or i32 %2518, %2519
  %2521 = add i32 %2484, 5
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %2521, i32 0, i32 %2520, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2522 = call float @dx.op.dot3.f32(i32 55, float %1963, float %1964, float %1965, float %1963, float %1964, float %1965)  ; Dot3(ax,ay,az,bx,by,bz)
  %2523 = call float @dx.op.unary.f32(i32 25, float %2522)  ; Rsqrt(value)
  %2524 = fmul fast float %2523, %1963
  %2525 = fmul fast float %2523, %1964
  %2526 = fmul fast float %2523, %1965
  %2527 = fadd fast float %2524, 1.000000e+00
  %2528 = fadd fast float %2525, 1.000000e+00
  %2529 = fadd fast float %2526, 1.000000e+00
  %2530 = fmul fast float %2527, 5.000000e-01
  %2531 = fmul fast float %2528, 5.000000e-01
  %2532 = fmul fast float %2529, 5.000000e-01
  %2533 = call float @dx.op.unary.f32(i32 7, float %2530)  ; Saturate(value)
  %2534 = call float @dx.op.unary.f32(i32 7, float %2531)  ; Saturate(value)
  %2535 = call float @dx.op.unary.f32(i32 7, float %2532)  ; Saturate(value)
  %2536 = fmul fast float %2533, 1.023000e+03
  %2537 = fmul fast float %2534, 1.023000e+03
  %2538 = fmul fast float %2535, 1.023000e+03
  %2539 = fptoui float %2536 to i32
  %2540 = fptoui float %2537 to i32
  %2541 = fptoui float %2538 to i32
  %2542 = shl i32 %2540, 10
  %2543 = or i32 %2542, %2539
  %2544 = shl i32 %2541, 20
  %2545 = or i32 %2543, %2544
  %2546 = add i32 %2484, 6
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %2546, i32 0, i32 %2545, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %2554

; <label>:2547                                    ; preds = %2225
  %2548 = fcmp fast ogt float %2418, 0.000000e+00
  %2549 = fcmp fast olt float %2416, 1.000000e+00
  %2550 = and i1 %2548, %2549
  %2551 = fcmp fast olt float %2414, 0.000000e+00
  %2552 = and i1 %2551, %2550
  %2553 = select i1 %2552, i32 0, i32 %1799
  br label %2554

; <label>:2554                                    ; preds = %2547, %2486, %2483, %2424, %2058, %1935
  %2555 = phi i32 [ %2470, %2486 ], [ %2470, %2483 ], [ %2470, %2424 ], [ %667, %2058 ], [ %667, %1935 ], [ %667, %2547 ]
  %2556 = phi float [ %2450, %2486 ], [ %2450, %2483 ], [ %2450, %2424 ], [ %1960, %2058 ], [ %1960, %1935 ], [ %1960, %2547 ]
  %2557 = phi float [ %2451, %2486 ], [ %2451, %2483 ], [ %2451, %2424 ], [ %1961, %2058 ], [ %1961, %1935 ], [ %1961, %2547 ]
  %2558 = phi float [ %2452, %2486 ], [ %2452, %2483 ], [ %2452, %2424 ], [ %1962, %2058 ], [ %1962, %1935 ], [ %1962, %2547 ]
  %2559 = phi float [ %2471, %2486 ], [ %2471, %2483 ], [ %2471, %2424 ], [ %698, %2058 ], [ %698, %1935 ], [ %698, %2547 ]
  %2560 = phi float [ %2467, %2486 ], [ %2467, %2483 ], [ %2467, %2424 ], [ %1966, %2058 ], [ %1966, %1935 ], [ %1966, %2547 ]
  %2561 = phi float [ %2468, %2486 ], [ %2468, %2483 ], [ %2468, %2424 ], [ %1967, %2058 ], [ %1967, %1935 ], [ %1967, %2547 ]
  %2562 = phi float [ %2469, %2486 ], [ %2469, %2483 ], [ %2469, %2424 ], [ %1968, %2058 ], [ %1968, %1935 ], [ %1968, %2547 ]
  %2563 = phi i32 [ %2475, %2486 ], [ %2475, %2483 ], [ %2475, %2424 ], [ %1799, %2058 ], [ %1799, %1935 ], [ %2553, %2547 ]
  %2564 = and i32 %92, 32
  %2565 = icmp eq i32 %2564, 0
  br i1 %2565, label %2566, label %2579, !dx.controlflow.hints !90

; <label>:2566                                    ; preds = %2579, %2554, %696
  %2567 = phi i32 [ %2555, %2579 ], [ %2555, %2554 ], [ %667, %696 ]
  %2568 = phi float [ %2556, %2579 ], [ %2556, %2554 ], [ %668, %696 ]
  %2569 = phi float [ %2557, %2579 ], [ %2557, %2554 ], [ %669, %696 ]
  %2570 = phi float [ %2558, %2579 ], [ %2558, %2554 ], [ %670, %696 ]
  %2571 = phi float [ %2559, %2579 ], [ %2559, %2554 ], [ %698, %696 ]
  %2572 = phi float [ %2655, %2579 ], [ %2560, %2554 ], [ %672, %696 ]
  %2573 = phi float [ %2659, %2579 ], [ %2561, %2554 ], [ %673, %696 ]
  %2574 = phi float [ %2663, %2579 ], [ %2562, %2554 ], [ %674, %696 ]
  %2575 = phi i32 [ %2563, %2579 ], [ %2563, %2554 ], [ 0, %696 ]
  %2576 = icmp ult i32 %678, %76
  %2577 = icmp ne i32 %2575, 0
  %2578 = and i1 %2576, %2577
  br i1 %2578, label %665, label %2664

; <label>:2579                                    ; preds = %2554
  %2580 = fsub fast float %2560, %68
  %2581 = fsub fast float %2561, %69
  %2582 = fsub fast float %2562, %70
  %2583 = fmul fast float %2582, %64
  %2584 = fmul fast float %2581, %65
  %2585 = fsub fast float %2583, %2584
  %2586 = fmul fast float %2580, %65
  %2587 = fmul fast float %2582, %63
  %2588 = fsub fast float %2586, %2587
  %2589 = fmul fast float %2581, %63
  %2590 = fmul fast float %2580, %64
  %2591 = fsub fast float %2589, %2590
  %2592 = fmul fast float %2585, 2.000000e+00
  %2593 = fmul fast float %2588, 2.000000e+00
  %2594 = fmul fast float %2591, 2.000000e+00
  %2595 = fmul fast float %2592, %66
  %2596 = fmul fast float %2593, %66
  %2597 = fmul fast float %2594, %66
  %2598 = fmul fast float %2594, %64
  %2599 = fmul fast float %2593, %65
  %2600 = fmul fast float %2592, %65
  %2601 = fmul fast float %2594, %63
  %2602 = fmul fast float %2593, %63
  %2603 = fmul fast float %2592, %64
  %2604 = fadd fast float %100, %88
  %2605 = fadd fast float %101, %89
  %2606 = fadd fast float %102, %90
  %2607 = fsub fast float %2580, %2604
  %2608 = fadd fast float %2607, %2598
  %2609 = fsub fast float %2608, %2595
  %2610 = fsub fast float %2609, %2599
  %2611 = fsub fast float %2581, %2605
  %2612 = fsub fast float %2611, %2601
  %2613 = fsub fast float %2612, %2596
  %2614 = fadd fast float %2613, %2600
  %2615 = fsub fast float %2582, %2606
  %2616 = fsub fast float %2615, %2597
  %2617 = fsub fast float %2616, %2603
  %2618 = fadd fast float %2617, %2602
  %2619 = fdiv fast float %2610, %94
  %2620 = fdiv fast float %2614, %95
  %2621 = fdiv fast float %2618, %96
  %2622 = call float @dx.op.unary.f32(i32 22, float %2619)  ; Frc(value)
  %2623 = call float @dx.op.unary.f32(i32 22, float %2620)  ; Frc(value)
  %2624 = call float @dx.op.unary.f32(i32 22, float %2621)  ; Frc(value)
  %2625 = fmul fast float %2622, %94
  %2626 = fmul fast float %2623, %95
  %2627 = fmul fast float %2624, %96
  %2628 = fadd fast float %2625, %2604
  %2629 = fadd fast float %2626, %2605
  %2630 = fadd fast float %2627, %2606
  %2631 = fmul fast float %2630, %64
  %2632 = fmul fast float %2629, %65
  %2633 = fsub fast float %2631, %2632
  %2634 = fmul fast float %2628, %65
  %2635 = fmul fast float %2630, %63
  %2636 = fsub fast float %2634, %2635
  %2637 = fmul fast float %2629, %63
  %2638 = fmul fast float %2628, %64
  %2639 = fsub fast float %2637, %2638
  %2640 = fmul fast float %2633, 2.000000e+00
  %2641 = fmul fast float %2636, 2.000000e+00
  %2642 = fmul fast float %2639, 2.000000e+00
  %2643 = fmul fast float %2640, %66
  %2644 = fmul fast float %2641, %66
  %2645 = fmul fast float %2642, %66
  %2646 = fmul fast float %2642, %64
  %2647 = fmul fast float %2641, %65
  %2648 = fmul fast float %2640, %65
  %2649 = fmul fast float %2642, %63
  %2650 = fmul fast float %2641, %63
  %2651 = fmul fast float %2640, %64
  %2652 = fadd fast float %2628, %68
  %2653 = fadd fast float %2652, %2646
  %2654 = fadd fast float %2653, %2643
  %2655 = fsub fast float %2654, %2647
  %2656 = fadd fast float %2629, %69
  %2657 = fsub fast float %2656, %2649
  %2658 = fadd fast float %2657, %2644
  %2659 = fadd fast float %2658, %2648
  %2660 = fadd fast float %2630, %70
  %2661 = fadd fast float %2660, %2645
  %2662 = fsub fast float %2661, %2651
  %2663 = fadd fast float %2662, %2650
  br label %2566

; <label>:2664                                    ; preds = %2566
  br label %2665

; <label>:2665                                    ; preds = %2664, %637
  %2666 = phi i32 [ %559, %637 ], [ %697, %2664 ]
  %2667 = phi i32 [ %549, %637 ], [ %2567, %2664 ]
  %2668 = phi float [ %638, %637 ], [ %2568, %2664 ]
  %2669 = phi float [ %639, %637 ], [ %2569, %2664 ]
  %2670 = phi float [ %640, %637 ], [ %2570, %2664 ]
  %2671 = phi float [ %558, %637 ], [ %2571, %2664 ]
  %2672 = phi float [ %641, %637 ], [ %2572, %2664 ]
  %2673 = phi float [ %642, %637 ], [ %2573, %2664 ]
  %2674 = phi float [ %643, %637 ], [ %2574, %2664 ]
  %2675 = phi i32 [ 1, %637 ], [ %2575, %2664 ]
  %2676 = icmp eq i32 %2675, 0
  br i1 %2676, label %2801, label %2677, !dx.controlflow.hints !91

; <label>:2677                                    ; preds = %2665
  %2678 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %61, i32 8, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %2679 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2680 = extractvalue %dx.types.CBufRet.i32 %2679, 3
  %2681 = shl i32 %2680, 8
  %2682 = or i32 %2681, 2
  %2683 = add i32 %2682, %61
  %2684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2683, i32 0)  ; BufferLoad(srv,index,wot)
  %2685 = extractvalue %dx.types.ResRet.i32 %2684, 0
  %2686 = add i32 %2685, %2678
  br i1 %536, label %2751, label %2687, !dx.controlflow.hints !92

; <label>:2687                                    ; preds = %2677
  %2688 = fsub fast float %2672, %68
  %2689 = fsub fast float %2673, %69
  %2690 = fsub fast float %2674, %70
  %2691 = fmul fast float %2690, %64
  %2692 = fmul fast float %2689, %65
  %2693 = fsub fast float %2691, %2692
  %2694 = fmul fast float %2688, %65
  %2695 = fmul fast float %2690, %63
  %2696 = fsub fast float %2694, %2695
  %2697 = fmul fast float %2689, %63
  %2698 = fmul fast float %2688, %64
  %2699 = fsub fast float %2697, %2698
  %2700 = fmul fast float %2693, 2.000000e+00
  %2701 = fmul fast float %2696, 2.000000e+00
  %2702 = fmul fast float %2699, 2.000000e+00
  %2703 = fmul fast float %2700, %66
  %2704 = fmul fast float %2701, %66
  %2705 = fmul fast float %2702, %66
  %2706 = fmul fast float %2702, %64
  %2707 = fmul fast float %2701, %65
  %2708 = fmul fast float %2700, %65
  %2709 = fmul fast float %2702, %63
  %2710 = fmul fast float %2701, %63
  %2711 = fmul fast float %2700, %64
  %2712 = fadd fast float %2706, %2688
  %2713 = fsub fast float %2712, %2703
  %2714 = fsub fast float %2713, %2707
  %2715 = fsub fast float %2689, %2709
  %2716 = fsub fast float %2715, %2704
  %2717 = fadd fast float %2716, %2708
  %2718 = fsub fast float %2690, %2705
  %2719 = fsub fast float %2718, %2711
  %2720 = fadd fast float %2719, %2710
  %2721 = fmul fast float %2670, %64
  %2722 = fmul fast float %2669, %65
  %2723 = fsub fast float %2721, %2722
  %2724 = fmul fast float %2668, %65
  %2725 = fmul fast float %2670, %63
  %2726 = fsub fast float %2724, %2725
  %2727 = fmul fast float %2669, %63
  %2728 = fmul fast float %2668, %64
  %2729 = fsub fast float %2727, %2728
  %2730 = fmul fast float %2723, 2.000000e+00
  %2731 = fmul fast float %2726, 2.000000e+00
  %2732 = fmul fast float %2729, 2.000000e+00
  %2733 = fmul fast float %2730, %66
  %2734 = fmul fast float %2731, %66
  %2735 = fmul fast float %2732, %66
  %2736 = fmul fast float %2732, %64
  %2737 = fmul fast float %2731, %65
  %2738 = fmul fast float %2730, %65
  %2739 = fmul fast float %2732, %63
  %2740 = fmul fast float %2731, %63
  %2741 = fmul fast float %2730, %64
  %2742 = fadd fast float %2736, %2668
  %2743 = fsub fast float %2742, %2733
  %2744 = fsub fast float %2743, %2737
  %2745 = fsub fast float %2669, %2739
  %2746 = fsub fast float %2745, %2734
  %2747 = fadd fast float %2746, %2738
  %2748 = fsub fast float %2670, %2735
  %2749 = fsub fast float %2748, %2741
  %2750 = fadd fast float %2749, %2740
  br label %2751

; <label>:2751                                    ; preds = %2687, %2677
  %2752 = phi float [ %2744, %2687 ], [ %2668, %2677 ]
  %2753 = phi float [ %2747, %2687 ], [ %2669, %2677 ]
  %2754 = phi float [ %2750, %2687 ], [ %2670, %2677 ]
  %2755 = phi float [ %2714, %2687 ], [ %2672, %2677 ]
  %2756 = phi float [ %2717, %2687 ], [ %2673, %2677 ]
  %2757 = phi float [ %2720, %2687 ], [ %2674, %2677 ]
  br i1 %536, label %2758, label %2766, !dx.controlflow.hints !93

; <label>:2758                                    ; preds = %2751
  %2759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %2760 = extractvalue %dx.types.CBufRet.f32 %2759, 0
  %2761 = extractvalue %dx.types.CBufRet.f32 %2759, 1
  %2762 = extractvalue %dx.types.CBufRet.f32 %2759, 2
  %2763 = fsub fast float %2755, %2760
  %2764 = fsub fast float %2756, %2761
  %2765 = fsub fast float %2757, %2762
  br label %2766

; <label>:2766                                    ; preds = %2758, %2751
  %2767 = phi float [ %2755, %2751 ], [ %2763, %2758 ]
  %2768 = phi float [ %2756, %2751 ], [ %2764, %2758 ]
  %2769 = phi float [ %2757, %2751 ], [ %2765, %2758 ]
  %2770 = bitcast float %2767 to i32
  %2771 = and i32 %2770, -2048
  %2772 = bitcast float %2768 to i32
  %2773 = lshr i32 %2772, 21
  %2774 = or i32 %2773, %2771
  %2775 = shl i32 %2772, 11
  %2776 = and i32 %2775, -4194304
  %2777 = bitcast float %2769 to i32
  %2778 = lshr i32 %2777, 10
  %2779 = and i32 %2778, 4194302
  %2780 = and i32 %2667, 1
  %2781 = or i32 %2776, %2780
  %2782 = or i32 %2781, %2779
  %2783 = call i32 @dx.op.legacyF32ToF16(i32 130, float 0.000000e+00)  ; LegacyF32ToF16(value)
  %2784 = call i32 @dx.op.legacyF32ToF16(i32 130, float %2752)  ; LegacyF32ToF16(value)
  %2785 = shl i32 %2784, 16
  %2786 = or i32 %2785, %2783
  %2787 = call i32 @dx.op.legacyF32ToF16(i32 130, float %2753)  ; LegacyF32ToF16(value)
  %2788 = call i32 @dx.op.legacyF32ToF16(i32 130, float %2754)  ; LegacyF32ToF16(value)
  %2789 = shl i32 %2788, 16
  %2790 = or i32 %2789, %2787
  %2791 = fmul fast float %2671, 6.553500e+04
  %2792 = call float @dx.op.unary.f32(i32 26, float %2791)  ; Round_ne(value)
  %2793 = fptosi float %2792 to i32
  %2794 = call i32 @dx.op.binary.i32(i32 37, i32 %2793, i32 0)  ; IMax(a,b)
  %2795 = call i32 @dx.op.binary.i32(i32 38, i32 %2794, i32 65535)  ; IMin(a,b)
  %2796 = and i32 %2795, 65535
  %2797 = or i32 %2786, %2796
  %2798 = shl nuw i32 %560, 16
  %2799 = and i32 %2666, 65535
  %2800 = or i32 %2799, %2798
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %2686, i32 0, i32 %2774, i32 %2782, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %2686, i32 8, i32 %2797, i32 %2790, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %2686, i32 16, i32 %2800, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %2801

; <label>:2801                                    ; preds = %2766, %2665, %54
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
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!26 = !{i32 13, %"class.Texture2DMS<vector<unsigned int, 4>, 0>"* undef, !"", i32 0, i32 11, i32 1, i32 3, i32 0, !27}
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
!81 = !{!82, !82, i64 0}
!82 = !{!"int", !83, i64 0}
!83 = !{!"omnipotent char", !84, i64 0}
!84 = !{!"Simple C/C++ TBAA"}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}

