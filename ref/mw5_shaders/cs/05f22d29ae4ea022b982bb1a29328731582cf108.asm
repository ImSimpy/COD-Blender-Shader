;
; Note: shader requires additional functionality:
;       Wave level operations
;
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
; shader hash: 469bd05a52fa5a3814d333385a89c8bf
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
;   [32 x i8] (type annotation not present)
;
; }
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
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb0     1
;                                   cbuffer      NA          NA     CB2            cb1     1
;                                   cbuffer      NA          NA     CB3            cb2     1
;                                   sampler      NA          NA      S0             s1     1
;                                   texture    byte         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t1     1
;                                   texture    byte         r/o      T2             t2     1
;                                   texture    byte         r/o      T3             t3     1
;                                   texture    byte         r/o      T4             t5     1
;                                   texture    byte         r/o      T5             t6     1
;                                   texture     f32          2d      T6             t7     1
;                                   texture     f32          2d      T7             t8     1
;                                   texture    byte         r/o      T8            t10     1
;                                   texture    byte         r/o      T9            t11     1
;                                   texture    byte         r/o     T10            t12     1
;                                   texture    byte         r/o     T11            t13     1
;                                   texture    byte         r/o     T12            t14     1
;                                   texture    byte         r/o     T13            t15     1
;                                   texture    byte         r/o     T14            t16     1
;                                   texture  struct         r/o     T15            t19     1
;                                       UAV  struct         r/w      U0             u2     1
;                                       UAV    byte         r/w      U1             u3     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.fouri32 = type { i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.StructuredBuffer<GPSortItem>" = type { %struct.GPSortItem }
%struct.GPSortItem = type { i32, i32 }
%"class.RWStructuredBuffer<GPCulledTriCluster>" = type { %struct.GPCulledTriCluster }
%struct.GPCulledTriCluster = type { <2 x i32> }
%struct.RWByteAddressBuffer = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%GPSurfPassConsts = type { <3 x float>, i32, i32, i32, i32, i32 }
%GPOcclusionPassConsts = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%TriCullIndirectArgs = type { i32, i32, i32, i32 }
%struct.SamplerState = type { i32 }

@"\01?gsBallotResult@@3PAIA" = external addrspace(3) global [4 x i32], align 4

define void @sorted_triangle_cull_pass() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %25 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %26 = shl i32 %24, 1
  %27 = lshr i32 %25, 6
  %28 = add i32 %27, %26
  %29 = and i32 %25, 63
  %30 = lshr i32 %25, 5
  %31 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.i32 %31, 0
  %33 = icmp ult i32 %28, %32
  br i1 %33, label %34, label %125, !dx.controlflow.hints !37

; <label>:34                                      ; preds = %0
  %35 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %28, i32 4)  ; BufferLoad(srv,index,wot)
  %36 = extractvalue %dx.types.ResRet.i32 %35, 0
  %37 = shl i32 %36, 2
  %38 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %37, i32 undef)  ; BufferLoad(srv,index,wot)
  %39 = extractvalue %dx.types.ResRet.i32 %38, 0
  %40 = and i32 %39, 65535
  %41 = lshr i32 %39, 16
  %42 = and i32 %41, 1023
  %43 = lshr i32 %39, 26
  %44 = and i32 %43, 1
  %45 = lshr i32 %39, 27
  %46 = and i32 %45, 1
  %47 = and i32 %39, 536870912
  %48 = icmp ne i32 %47, 0
  %49 = lshr exact i32 %47, 29
  br i1 %48, label %50, label %62, !dx.controlflow.hints !38

; <label>:50                                      ; preds = %34
  %51 = shl nuw nsw i32 %40, 3
  %52 = or i32 %51, 5242880
  %53 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %52, i32 undef)  ; BufferLoad(srv,index,wot)
  %54 = extractvalue %dx.types.ResRet.i32 %53, 0
  %55 = extractvalue %dx.types.ResRet.i32 %53, 1
  %56 = lshr i32 %54, 16
  %57 = and i32 %55, 16777215
  %58 = lshr i32 %55, 24
  %59 = lshr i32 %55, 25
  %60 = and i32 %59, 2
  %61 = xor i32 %60, 3
  br label %77

; <label>:62                                      ; preds = %34
  %63 = mul nuw nsw i32 %40, 12
  %64 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %63, i32 undef)  ; BufferLoad(srv,index,wot)
  %65 = extractvalue %dx.types.ResRet.i32 %64, 0
  %66 = extractvalue %dx.types.ResRet.i32 %64, 1
  %67 = extractvalue %dx.types.ResRet.i32 %64, 2
  %68 = lshr i32 %65, 28
  %69 = and i32 %66, 65535
  %70 = shl nuw nsw i32 %68, 16
  %71 = or i32 %70, %69
  %72 = and i32 %65, 268435455
  %73 = and i32 %67, 15
  %74 = lshr i32 %67, 4
  %75 = and i32 %74, 15
  %76 = lshr i32 %67, 8
  br label %77

; <label>:77                                      ; preds = %62, %50
  %78 = phi i32 [ %57, %50 ], [ 0, %62 ]
  %79 = phi i32 [ %54, %50 ], [ %67, %62 ]
  %80 = phi i32 [ %56, %50 ], [ %76, %62 ]
  %81 = phi i32 [ %58, %50 ], [ %75, %62 ]
  %82 = phi i32 [ %61, %50 ], [ %73, %62 ]
  %83 = phi i32 [ 0, %50 ], [ %71, %62 ]
  %84 = phi i32 [ 0, %50 ], [ %72, %62 ]
  %85 = lshr i32 %79, 24
  %86 = and i32 %80, 255
  br i1 %48, label %87, label %92, !dx.controlflow.hints !39

; <label>:87                                      ; preds = %77
  %88 = shl nuw nsw i32 %40, 4
  %89 = add nuw nsw i32 %88, 5767168
  %90 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %89, i32 undef)  ; BufferLoad(srv,index,wot)
  %91 = extractvalue %dx.types.ResRet.i32 %90, 2
  br label %97

; <label>:92                                      ; preds = %77
  %93 = mul nuw nsw i32 %40, 12
  %94 = add nuw nsw i32 %93, 1572864
  %95 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %94, i32 undef)  ; BufferLoad(srv,index,wot)
  %96 = extractvalue %dx.types.ResRet.i32 %95, 2
  br label %97

; <label>:97                                      ; preds = %92, %87
  %98 = phi i32 [ %91, %87 ], [ %96, %92 ]
  br i1 %48, label %99, label %105, !dx.controlflow.hints !40

; <label>:99                                      ; preds = %97
  %100 = shl nuw nsw i32 %40, 3
  %101 = or i32 %100, 6815744
  %102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %101, i32 undef)  ; BufferLoad(srv,index,wot)
  %103 = extractvalue %dx.types.ResRet.i32 %102, 0
  %104 = extractvalue %dx.types.ResRet.i32 %102, 1
  br label %112

; <label>:105                                     ; preds = %97
  %106 = mul nuw nsw i32 %40, 12
  %107 = add nuw nsw i32 %106, 786432
  %108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %107, i32 undef)  ; BufferLoad(srv,index,wot)
  %109 = extractvalue %dx.types.ResRet.i32 %108, 0
  %110 = extractvalue %dx.types.ResRet.i32 %108, 1
  %111 = extractvalue %dx.types.ResRet.i32 %108, 2
  br label %112

; <label>:112                                     ; preds = %105, %99
  %113 = phi i32 [ %104, %99 ], [ %111, %105 ]
  %114 = phi i32 [ 0, %99 ], [ %110, %105 ]
  %115 = phi i32 [ %103, %99 ], [ %109, %105 ]
  %116 = add i32 %98, %42
  %117 = shl i32 %116, 2
  %118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %117, i32 undef)  ; BufferLoad(srv,index,wot)
  %119 = extractvalue %dx.types.ResRet.i32 %118, 0
  %120 = shl i32 %119, 5
  %121 = or i32 %120, 16
  %122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %121, i32 undef)  ; BufferLoad(srv,index,wot)
  %123 = extractvalue %dx.types.ResRet.i32 %122, 3
  %124 = lshr i32 %123, 16
  br label %125

; <label>:125                                     ; preds = %112, %0
  %126 = phi i32 [ %116, %112 ], [ undef, %0 ]
  %127 = phi i32 [ %124, %112 ], [ undef, %0 ]
  %128 = phi i32 [ %78, %112 ], [ undef, %0 ]
  %129 = phi i32 [ %85, %112 ], [ undef, %0 ]
  %130 = phi i32 [ %86, %112 ], [ undef, %0 ]
  %131 = phi i32 [ %81, %112 ], [ undef, %0 ]
  %132 = phi i32 [ %82, %112 ], [ undef, %0 ]
  %133 = phi i32 [ %83, %112 ], [ undef, %0 ]
  %134 = phi i32 [ %84, %112 ], [ undef, %0 ]
  %135 = phi i32 [ %49, %112 ], [ undef, %0 ]
  %136 = phi i32 [ %46, %112 ], [ undef, %0 ]
  %137 = phi i32 [ %44, %112 ], [ undef, %0 ]
  %138 = phi i32 [ %40, %112 ], [ undef, %0 ]
  %139 = phi i32 [ %113, %112 ], [ undef, %0 ]
  %140 = phi i32 [ %114, %112 ], [ undef, %0 ]
  %141 = phi i32 [ %115, %112 ], [ undef, %0 ]
  %142 = icmp ult i32 %29, %127
  %143 = and i1 %33, %142
  %144 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.i32 %144, 2
  %146 = icmp ult i32 %140, %145
  %147 = and i1 %143, %146
  %148 = zext i1 %147 to i32
  %149 = icmp ne i32 %137, 0
  %150 = and i1 %149, %147
  br i1 %150, label %151, label %1211, !dx.controlflow.hints !41

; <label>:151                                     ; preds = %125
  %152 = shl i32 %129, 6
  %153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %152, i32 undef)  ; BufferLoad(srv,index,wot)
  %154 = extractvalue %dx.types.ResRet.i32 %153, 0
  %155 = extractvalue %dx.types.ResRet.i32 %153, 1
  %156 = extractvalue %dx.types.ResRet.i32 %153, 3
  %157 = bitcast i32 %154 to float
  %158 = bitcast i32 %155 to float
  %159 = bitcast i32 %156 to float
  %160 = or i32 %152, 16
  %161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %160, i32 undef)  ; BufferLoad(srv,index,wot)
  %162 = extractvalue %dx.types.ResRet.i32 %161, 0
  %163 = extractvalue %dx.types.ResRet.i32 %161, 1
  %164 = extractvalue %dx.types.ResRet.i32 %161, 3
  %165 = bitcast i32 %162 to float
  %166 = bitcast i32 %163 to float
  %167 = bitcast i32 %164 to float
  %168 = or i32 %152, 32
  %169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %168, i32 undef)  ; BufferLoad(srv,index,wot)
  %170 = extractvalue %dx.types.ResRet.i32 %169, 0
  %171 = extractvalue %dx.types.ResRet.i32 %169, 1
  %172 = extractvalue %dx.types.ResRet.i32 %169, 3
  %173 = bitcast i32 %170 to float
  %174 = bitcast i32 %171 to float
  %175 = bitcast i32 %172 to float
  %176 = or i32 %152, 48
  %177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %176, i32 undef)  ; BufferLoad(srv,index,wot)
  %178 = extractvalue %dx.types.ResRet.i32 %177, 0
  %179 = extractvalue %dx.types.ResRet.i32 %177, 1
  %180 = extractvalue %dx.types.ResRet.i32 %177, 3
  %181 = bitcast i32 %178 to float
  %182 = bitcast i32 %179 to float
  %183 = bitcast i32 %180 to float
  %184 = shl i32 %129, 4
  %185 = add i32 %184, 4096
  %186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.i32 %186, 0
  %188 = extractvalue %dx.types.ResRet.i32 %186, 1
  %189 = extractvalue %dx.types.ResRet.i32 %186, 2
  %190 = extractvalue %dx.types.ResRet.i32 %186, 3
  %191 = icmp eq i32 %190, 1
  %192 = add i32 %184, 5120
  %193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %192, i32 undef)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.i32 %193, 0
  %195 = extractvalue %dx.types.ResRet.i32 %193, 1
  %196 = bitcast i32 %194 to float
  %197 = bitcast i32 %195 to float
  %198 = icmp eq i32 %132, 2
  br i1 %198, label %199, label %277, !dx.controlflow.hints !42

; <label>:199                                     ; preds = %151
  %200 = shl i32 %133, 5
  %201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.f32 %201, 0
  %203 = extractvalue %dx.types.ResRet.f32 %201, 1
  %204 = extractvalue %dx.types.ResRet.f32 %201, 2
  %205 = or i32 %200, 16
  %206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.f32 %206, 0
  %208 = extractvalue %dx.types.ResRet.f32 %206, 1
  %209 = extractvalue %dx.types.ResRet.f32 %206, 2
  %210 = mul i32 %134, 24
  %211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.f32 %211, 0
  %213 = extractvalue %dx.types.ResRet.f32 %211, 1
  %214 = extractvalue %dx.types.ResRet.f32 %211, 2
  %215 = add i32 %210, 12
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = extractvalue %dx.types.ResRet.i32 %216, 1
  %219 = add i32 %210, 20
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = and i32 %217, 65535
  %223 = uitofp i32 %222 to float
  %224 = lshr i32 %217, 16
  %225 = uitofp i32 %224 to float
  %226 = and i32 %218, 65535
  %227 = uitofp i32 %226 to float
  %228 = lshr i32 %218, 16
  %229 = uitofp i32 %228 to float
  %230 = fmul fast float %223, 0x3F00001000000000
  %231 = fmul fast float %225, 0x3F00001000000000
  %232 = fmul fast float %227, 0x3F00001000000000
  %233 = fmul fast float %229, 0x3F00001000000000
  %234 = fadd fast float %230, -1.000000e+00
  %235 = fadd fast float %231, -1.000000e+00
  %236 = fadd fast float %232, -1.000000e+00
  %237 = fadd fast float %233, -1.000000e+00
  %238 = and i32 %221, 65535
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = fmul fast float %225, 0x3F10001000000000
  %241 = fadd fast float %240, -2.000000e+00
  %242 = fmul fast float %241, %235
  %243 = fsub fast float 1.000000e+00, %242
  %244 = fmul fast float %227, 0x3F10001000000000
  %245 = fadd fast float %244, -2.000000e+00
  %246 = fmul fast float %245, %236
  %247 = fsub fast float %243, %246
  %248 = fmul fast float %223, 0x3F10001000000000
  %249 = fadd fast float %248, -2.000000e+00
  %250 = fmul fast float %249, %235
  %251 = fmul fast float %245, %237
  %252 = fsub fast float %250, %251
  %253 = fmul fast float %249, %236
  %254 = fmul fast float %241, %237
  %255 = fadd fast float %253, %254
  %256 = fadd fast float %250, %251
  %257 = fmul fast float %249, %234
  %258 = fsub fast float 1.000000e+00, %257
  %259 = fsub fast float %258, %246
  %260 = fmul fast float %241, %236
  %261 = fmul fast float %249, %237
  %262 = fsub fast float %260, %261
  %263 = fsub fast float %253, %254
  %264 = fadd fast float %260, %261
  %265 = fsub fast float %258, %242
  %266 = fmul fast float %247, %239
  %267 = fmul fast float %256, %239
  %268 = fmul fast float %263, %239
  %269 = fmul fast float %252, %239
  %270 = fmul fast float %259, %239
  %271 = fmul fast float %264, %239
  %272 = fmul fast float %255, %239
  %273 = fmul fast float %262, %239
  %274 = fmul fast float %265, %239
  %275 = call float @dx.op.binary.f32(i32 35, float %208, float %209), !dx.precise !43  ; FMax(a,b)
  %276 = call float @dx.op.binary.f32(i32 35, float %207, float %275), !dx.precise !43  ; FMax(a,b)
  br label %492

; <label>:277                                     ; preds = %151
  %278 = icmp eq i32 %132, 0
  br i1 %278, label %279, label %414, !dx.controlflow.hints !44

; <label>:279                                     ; preds = %277
  %280 = and i32 %131, 1
  %281 = icmp eq i32 %280, 0
  %282 = icmp ne i32 %136, 0
  %283 = select i1 %282, i32 2097152, i32 0
  %284 = shl i32 %134, 6
  %285 = add i32 %283, %284
  %286 = or i32 %285, 16
  br i1 %281, label %341, label %287, !dx.controlflow.hints !45

; <label>:287                                     ; preds = %279
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = extractvalue %dx.types.ResRet.i32 %288, 1
  %291 = extractvalue %dx.types.ResRet.i32 %288, 2
  %292 = extractvalue %dx.types.ResRet.i32 %288, 3
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = extractvalue %dx.types.ResRet.i32 %293, 1
  %296 = extractvalue %dx.types.ResRet.i32 %293, 2
  %297 = extractvalue %dx.types.ResRet.i32 %293, 3
  %298 = bitcast i32 %289 to float
  %299 = bitcast i32 %290 to float
  %300 = bitcast i32 %291 to float
  %301 = bitcast i32 %292 to float
  %302 = bitcast i32 %294 to float
  %303 = bitcast i32 %295 to float
  %304 = bitcast i32 %296 to float
  %305 = bitcast i32 %297 to float
  %306 = fmul fast float %299, %299
  %307 = fmul fast float %306, 2.000000e+00
  %308 = fsub fast float 1.000000e+00, %307
  %309 = fmul fast float %300, %300
  %310 = fmul fast float %309, 2.000000e+00
  %311 = fsub fast float %308, %310
  %312 = fmul fast float %298, 2.000000e+00
  %313 = fmul fast float %312, %299
  %314 = fmul fast float %300, 2.000000e+00
  %315 = fmul fast float %314, %301
  %316 = fsub fast float %313, %315
  %317 = fmul fast float %300, %298
  %318 = fmul fast float %301, %299
  %319 = fadd fast float %317, %318
  %320 = fmul fast float %319, 2.000000e+00
  %321 = fmul fast float %299, %298
  %322 = fmul fast float %301, %300
  %323 = fadd fast float %321, %322
  %324 = fmul fast float %323, 2.000000e+00
  %325 = fmul fast float %298, %298
  %326 = fmul fast float %325, 2.000000e+00
  %327 = fsub fast float 1.000000e+00, %326
  %328 = fsub fast float %327, %310
  %329 = fmul fast float %299, 2.000000e+00
  %330 = fmul fast float %329, %300
  %331 = fmul fast float %312, %301
  %332 = fsub fast float %330, %331
  %333 = fmul fast float %312, %300
  %334 = fmul fast float %329, %301
  %335 = fsub fast float %333, %334
  %336 = fmul fast float %300, %299
  %337 = fmul fast float %301, %298
  %338 = fadd fast float %336, %337
  %339 = fmul fast float %338, 2.000000e+00
  %340 = fsub fast float %327, %307
  br label %492

; <label>:341                                     ; preds = %279
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = extractvalue %dx.types.ResRet.i32 %342, 1
  %345 = extractvalue %dx.types.ResRet.i32 %342, 2
  %346 = extractvalue %dx.types.ResRet.i32 %342, 3
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = extractvalue %dx.types.ResRet.i32 %347, 1
  %350 = extractvalue %dx.types.ResRet.i32 %347, 2
  %351 = extractvalue %dx.types.ResRet.i32 %347, 3
  %352 = or i32 %285, 48
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = extractvalue %dx.types.ResRet.i32 %353, 1
  %356 = extractvalue %dx.types.ResRet.i32 %353, 2
  %357 = extractvalue %dx.types.ResRet.i32 %353, 3
  %358 = bitcast i32 %343 to float
  %359 = bitcast i32 %344 to float
  %360 = bitcast i32 %345 to float
  %361 = bitcast i32 %346 to float
  %362 = bitcast i32 %348 to float
  %363 = bitcast i32 %349 to float
  %364 = bitcast i32 %350 to float
  %365 = bitcast i32 %351 to float
  %366 = bitcast i32 %354 to float
  %367 = bitcast i32 %355 to float
  %368 = bitcast i32 %356 to float
  %369 = bitcast i32 %357 to float
  %370 = fmul fast float %359, %359
  %371 = fmul fast float %370, 2.000000e+00
  %372 = fsub fast float 1.000000e+00, %371
  %373 = fmul fast float %360, %360
  %374 = fmul fast float %373, 2.000000e+00
  %375 = fsub fast float %372, %374
  %376 = fmul fast float %358, 2.000000e+00
  %377 = fmul fast float %376, %359
  %378 = fmul fast float %360, 2.000000e+00
  %379 = fmul fast float %378, %361
  %380 = fsub fast float %377, %379
  %381 = fmul fast float %360, %358
  %382 = fmul fast float %361, %359
  %383 = fadd fast float %381, %382
  %384 = fmul fast float %383, 2.000000e+00
  %385 = fmul fast float %359, %358
  %386 = fmul fast float %361, %360
  %387 = fadd fast float %385, %386
  %388 = fmul fast float %387, 2.000000e+00
  %389 = fmul fast float %358, %358
  %390 = fmul fast float %389, 2.000000e+00
  %391 = fsub fast float 1.000000e+00, %390
  %392 = fsub fast float %391, %374
  %393 = fmul fast float %359, 2.000000e+00
  %394 = fmul fast float %393, %360
  %395 = fmul fast float %376, %361
  %396 = fsub fast float %394, %395
  %397 = fmul fast float %376, %360
  %398 = fmul fast float %393, %361
  %399 = fsub fast float %397, %398
  %400 = fmul fast float %360, %359
  %401 = fmul fast float %361, %358
  %402 = fadd fast float %400, %401
  %403 = fmul fast float %402, 2.000000e+00
  %404 = fsub fast float %391, %371
  %405 = fmul fast float %375, %365
  %406 = fmul fast float %388, %365
  %407 = fmul fast float %399, %365
  %408 = fmul fast float %380, %365
  %409 = fmul fast float %392, %365
  %410 = fmul fast float %403, %365
  %411 = fmul fast float %384, %365
  %412 = fmul fast float %396, %365
  %413 = fmul fast float %404, %365
  br label %492

; <label>:414                                     ; preds = %277
  %415 = icmp eq i32 %132, 3
  br i1 %415, label %416, label %425, !dx.controlflow.hints !46

; <label>:416                                     ; preds = %414
  %417 = shl i32 %128, 7
  %418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.f32 %418, 0
  %420 = extractvalue %dx.types.ResRet.f32 %418, 1
  %421 = extractvalue %dx.types.ResRet.f32 %418, 2
  %422 = or i32 %417, 12
  %423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.f32 %423, 0
  br label %492

; <label>:425                                     ; preds = %414
  %426 = icmp eq i32 %132, 1
  br i1 %426, label %427, label %492, !dx.controlflow.hints !47

; <label>:427                                     ; preds = %425
  %428 = icmp ne i32 %136, 0
  %429 = shl i32 %138, 6
  %430 = select i1 %428, i32 3670016, i32 1572864
  %431 = add i32 %430, %429
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = extractvalue %dx.types.ResRet.i32 %432, 1
  %435 = extractvalue %dx.types.ResRet.i32 %432, 2
  %436 = extractvalue %dx.types.ResRet.i32 %432, 3
  %437 = or i32 %431, 16
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = extractvalue %dx.types.ResRet.i32 %438, 1
  %441 = extractvalue %dx.types.ResRet.i32 %438, 2
  %442 = bitcast i32 %433 to float
  %443 = bitcast i32 %434 to float
  %444 = bitcast i32 %435 to float
  %445 = bitcast i32 %436 to float
  %446 = bitcast i32 %439 to float
  %447 = bitcast i32 %440 to float
  %448 = bitcast i32 %441 to float
  %449 = fmul fast float %443, %443
  %450 = fmul fast float %449, 2.000000e+00
  %451 = fsub fast float 1.000000e+00, %450
  %452 = fmul fast float %444, %444
  %453 = fmul fast float %452, 2.000000e+00
  %454 = fsub fast float %451, %453
  %455 = fmul fast float %442, 2.000000e+00
  %456 = fmul fast float %455, %443
  %457 = fmul fast float %444, 2.000000e+00
  %458 = fmul fast float %457, %445
  %459 = fsub fast float %456, %458
  %460 = fmul fast float %444, %442
  %461 = fmul fast float %445, %443
  %462 = fadd fast float %460, %461
  %463 = fmul fast float %462, 2.000000e+00
  %464 = fmul fast float %443, %442
  %465 = fmul fast float %445, %444
  %466 = fadd fast float %464, %465
  %467 = fmul fast float %466, 2.000000e+00
  %468 = fmul fast float %442, %442
  %469 = fmul fast float %468, 2.000000e+00
  %470 = fsub fast float 1.000000e+00, %469
  %471 = fsub fast float %470, %453
  %472 = fmul fast float %443, 2.000000e+00
  %473 = fmul fast float %472, %444
  %474 = fmul fast float %455, %445
  %475 = fsub fast float %473, %474
  %476 = fmul fast float %455, %444
  %477 = fmul fast float %472, %445
  %478 = fsub fast float %476, %477
  %479 = fmul fast float %444, %443
  %480 = fmul fast float %445, %442
  %481 = fadd fast float %479, %480
  %482 = fmul fast float %481, 2.000000e+00
  %483 = fsub fast float %470, %450
  %484 = shl i32 %128, 7
  %485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.f32 %485, 0
  %487 = extractvalue %dx.types.ResRet.f32 %485, 1
  %488 = extractvalue %dx.types.ResRet.f32 %485, 2
  %489 = or i32 %484, 12
  %490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.f32 %490, 0
  br label %492

; <label>:492                                     ; preds = %427, %425, %416, %341, %287, %199
  %493 = phi float [ %266, %199 ], [ %311, %287 ], [ %405, %341 ], [ 1.000000e+00, %416 ], [ %454, %427 ], [ 0.000000e+00, %425 ]
  %494 = phi float [ %269, %199 ], [ %316, %287 ], [ %408, %341 ], [ 0.000000e+00, %416 ], [ %459, %427 ], [ 0.000000e+00, %425 ]
  %495 = phi float [ %272, %199 ], [ %320, %287 ], [ %411, %341 ], [ 0.000000e+00, %416 ], [ %463, %427 ], [ 0.000000e+00, %425 ]
  %496 = phi float [ %212, %199 ], [ %302, %287 ], [ %362, %341 ], [ 0.000000e+00, %416 ], [ %446, %427 ], [ 0.000000e+00, %425 ]
  %497 = phi float [ %267, %199 ], [ %324, %287 ], [ %406, %341 ], [ 0.000000e+00, %416 ], [ %467, %427 ], [ 0.000000e+00, %425 ]
  %498 = phi float [ %270, %199 ], [ %328, %287 ], [ %409, %341 ], [ 1.000000e+00, %416 ], [ %471, %427 ], [ 0.000000e+00, %425 ]
  %499 = phi float [ %273, %199 ], [ %332, %287 ], [ %412, %341 ], [ 0.000000e+00, %416 ], [ %475, %427 ], [ 0.000000e+00, %425 ]
  %500 = phi float [ %213, %199 ], [ %303, %287 ], [ %363, %341 ], [ 0.000000e+00, %416 ], [ %447, %427 ], [ 0.000000e+00, %425 ]
  %501 = phi float [ %268, %199 ], [ %335, %287 ], [ %407, %341 ], [ 0.000000e+00, %416 ], [ %478, %427 ], [ 0.000000e+00, %425 ]
  %502 = phi float [ %271, %199 ], [ %339, %287 ], [ %410, %341 ], [ 0.000000e+00, %416 ], [ %482, %427 ], [ 0.000000e+00, %425 ]
  %503 = phi float [ %274, %199 ], [ %340, %287 ], [ %413, %341 ], [ 1.000000e+00, %416 ], [ %483, %427 ], [ 0.000000e+00, %425 ]
  %504 = phi float [ %214, %199 ], [ %304, %287 ], [ %364, %341 ], [ 0.000000e+00, %416 ], [ %448, %427 ], [ 0.000000e+00, %425 ]
  %505 = phi float [ 1.000000e+00, %199 ], [ 1.000000e+00, %287 ], [ 1.000000e+00, %341 ], [ 1.000000e+00, %416 ], [ 1.000000e+00, %427 ], [ 0.000000e+00, %425 ]
  %506 = phi float [ %202, %199 ], [ 0.000000e+00, %287 ], [ %366, %341 ], [ %419, %416 ], [ %486, %427 ], [ 0.000000e+00, %425 ]
  %507 = phi float [ %203, %199 ], [ 0.000000e+00, %287 ], [ %367, %341 ], [ %420, %416 ], [ %487, %427 ], [ 0.000000e+00, %425 ]
  %508 = phi float [ %204, %199 ], [ 0.000000e+00, %287 ], [ %368, %341 ], [ %421, %416 ], [ %488, %427 ], [ 0.000000e+00, %425 ]
  %509 = phi float [ %276, %199 ], [ %305, %287 ], [ %369, %341 ], [ %424, %416 ], [ %491, %427 ], [ 0.000000e+00, %425 ]
  %510 = bitcast float %496 to i32
  %511 = bitcast float %500 to i32
  %512 = bitcast float %504 to i32
  %513 = select i1 %191, i32 0, i32 %187
  %514 = select i1 %191, i32 0, i32 %188
  %515 = select i1 %191, i32 0, i32 %189
  %516 = sub i32 %510, %513
  %517 = sub i32 %511, %514
  %518 = sub i32 %512, %515
  %519 = sitofp i32 %516 to float
  %520 = sitofp i32 %517 to float
  %521 = sitofp i32 %518 to float
  %522 = fmul fast float %519, 0x3F30000000000000
  %523 = fmul fast float %520, 0x3F30000000000000
  %524 = fmul fast float %521, 0x3F30000000000000
  %525 = shl i32 %126, 2
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = shl i32 %527, 6
  %529 = or i32 %528, %29
  %530 = mul i32 %529, 3
  %531 = mul i32 %529, 6
  %532 = and i32 %531, -4
  %533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %534 = extractvalue %dx.types.ResRet.i32 %533, 0
  %535 = extractvalue %dx.types.ResRet.i32 %533, 1
  %536 = and i32 %530, 1
  %537 = icmp eq i32 %536, 0
  %538 = lshr i32 %534, 16
  %539 = and i32 %535, 65535
  %540 = lshr i32 %535, 16
  %541 = and i32 %534, 65535
  %542 = select i1 %537, i32 %541, i32 %538
  %543 = select i1 %537, i32 %538, i32 %539
  %544 = select i1 %537, i32 %539, i32 %540
  %545 = and i32 %131, 1
  %546 = icmp eq i32 %545, 0
  %547 = shl nuw nsw i32 %542, 3
  %548 = shl nuw nsw i32 %543, 3
  %549 = shl nuw nsw i32 %544, 3
  br i1 %546, label %570, label %550, !dx.controlflow.hints !48

; <label>:550                                     ; preds = %492
  %551 = shl i32 %139, 3
  %552 = add i32 %140, %551
  %553 = add i32 %547, %552
  %554 = add i32 %548, %552
  %555 = add i32 %549, %552
  %556 = call i32 @dx.op.binary.i32(i32 37, i32 %554, i32 %555)  ; IMax(a,b)
  %557 = call i32 @dx.op.binary.i32(i32 37, i32 %553, i32 %556)  ; IMax(a,b)
  %558 = add nsw i32 %557, 8
  %559 = icmp ult i32 %558, %145
  br i1 %559, label %560, label %604, !dx.controlflow.hints !49

; <label>:560                                     ; preds = %550
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %553, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = extractvalue %dx.types.ResRet.i32 %561, 1
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = extractvalue %dx.types.ResRet.i32 %564, 1
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %555, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = extractvalue %dx.types.ResRet.i32 %567, 1
  br label %604

; <label>:570                                     ; preds = %492
  %571 = lshr i32 %542, 7
  %572 = add i32 %571, %141
  %573 = shl i32 %572, 2
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %573, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = shl i32 %575, 10
  %577 = and i32 %547, 1016
  %578 = or i32 %576, %577
  %579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 0
  %581 = extractvalue %dx.types.ResRet.i32 %579, 1
  %582 = lshr i32 %543, 7
  %583 = add i32 %582, %141
  %584 = shl i32 %583, 2
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %584, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = shl i32 %586, 10
  %588 = and i32 %548, 1016
  %589 = or i32 %587, %588
  %590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %589, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = extractvalue %dx.types.ResRet.i32 %590, 1
  %593 = lshr i32 %544, 7
  %594 = add i32 %593, %141
  %595 = shl i32 %594, 2
  %596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %595, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.i32 %596, 0
  %598 = shl i32 %597, 10
  %599 = and i32 %549, 1016
  %600 = or i32 %598, %599
  %601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.i32 %601, 0
  %603 = extractvalue %dx.types.ResRet.i32 %601, 1
  br label %604

; <label>:604                                     ; preds = %570, %560, %550
  %605 = phi i32 [ %562, %560 ], [ %580, %570 ], [ 0, %550 ]
  %606 = phi i32 [ %563, %560 ], [ %581, %570 ], [ 0, %550 ]
  %607 = phi i32 [ %565, %560 ], [ %591, %570 ], [ 0, %550 ]
  %608 = phi i32 [ %566, %560 ], [ %592, %570 ], [ 0, %550 ]
  %609 = phi i32 [ %568, %560 ], [ %602, %570 ], [ 0, %550 ]
  %610 = phi i32 [ %569, %560 ], [ %603, %570 ], [ 0, %550 ]
  %611 = icmp eq i32 %135, 0
  %612 = and i32 %605, 2097151
  %613 = uitofp i32 %612 to float
  %614 = lshr i32 %605, 21
  %615 = shl i32 %606, 11
  %616 = and i32 %615, 2095104
  %617 = or i32 %616, %614
  %618 = uitofp i32 %617 to float
  %619 = lshr i32 %606, 10
  %620 = and i32 %619, 2097151
  %621 = uitofp i32 %620 to float
  br i1 %611, label %622, label %632, !dx.controlflow.hints !50

; <label>:622                                     ; preds = %604
  %623 = fdiv float %613, 2.097151e+06
  %624 = fdiv float %618, 2.097151e+06
  %625 = fdiv float %621, 2.097151e+06
  %626 = fmul float %623, 2.000000e+00
  %627 = fmul float %624, 2.000000e+00
  %628 = fmul float %625, 2.000000e+00
  %629 = fadd float %626, -1.000000e+00
  %630 = fadd float %627, -1.000000e+00
  %631 = fadd float %628, -1.000000e+00
  br label %632

; <label>:632                                     ; preds = %622, %604
  %633 = phi float [ %629, %622 ], [ %613, %604 ]
  %634 = phi float [ %630, %622 ], [ %618, %604 ]
  %635 = phi float [ %631, %622 ], [ %621, %604 ]
  %636 = fmul float %509, %635
  %637 = fadd float %508, %636
  %638 = fmul float %509, %634
  %639 = fadd float %507, %638
  %640 = fmul float %509, %633
  %641 = fadd float %506, %640
  %642 = and i32 %607, 2097151
  %643 = uitofp i32 %642 to float
  %644 = lshr i32 %607, 21
  %645 = shl i32 %608, 11
  %646 = and i32 %645, 2095104
  %647 = or i32 %646, %644
  %648 = uitofp i32 %647 to float
  %649 = lshr i32 %608, 10
  %650 = and i32 %649, 2097151
  %651 = uitofp i32 %650 to float
  br i1 %611, label %652, label %662, !dx.controlflow.hints !50

; <label>:652                                     ; preds = %632
  %653 = fdiv float %643, 2.097151e+06
  %654 = fdiv float %648, 2.097151e+06
  %655 = fdiv float %651, 2.097151e+06
  %656 = fmul float %653, 2.000000e+00
  %657 = fmul float %654, 2.000000e+00
  %658 = fmul float %655, 2.000000e+00
  %659 = fadd float %656, -1.000000e+00
  %660 = fadd float %657, -1.000000e+00
  %661 = fadd float %658, -1.000000e+00
  br label %662

; <label>:662                                     ; preds = %652, %632
  %663 = phi float [ %659, %652 ], [ %643, %632 ]
  %664 = phi float [ %660, %652 ], [ %648, %632 ]
  %665 = phi float [ %661, %652 ], [ %651, %632 ]
  %666 = fmul float %509, %665
  %667 = fadd float %508, %666
  %668 = fmul float %509, %664
  %669 = fadd float %507, %668
  %670 = fmul float %509, %663
  %671 = fadd float %506, %670
  %672 = and i32 %609, 2097151
  %673 = uitofp i32 %672 to float
  %674 = lshr i32 %609, 21
  %675 = shl i32 %610, 11
  %676 = and i32 %675, 2095104
  %677 = or i32 %676, %674
  %678 = uitofp i32 %677 to float
  %679 = lshr i32 %610, 10
  %680 = and i32 %679, 2097151
  %681 = uitofp i32 %680 to float
  br i1 %611, label %682, label %692, !dx.controlflow.hints !50

; <label>:682                                     ; preds = %662
  %683 = fdiv float %673, 2.097151e+06
  %684 = fdiv float %678, 2.097151e+06
  %685 = fdiv float %681, 2.097151e+06
  %686 = fmul float %683, 2.000000e+00
  %687 = fmul float %684, 2.000000e+00
  %688 = fmul float %685, 2.000000e+00
  %689 = fadd float %686, -1.000000e+00
  %690 = fadd float %687, -1.000000e+00
  %691 = fadd float %688, -1.000000e+00
  br label %692

; <label>:692                                     ; preds = %682, %662
  %693 = phi float [ %689, %682 ], [ %673, %662 ]
  %694 = phi float [ %690, %682 ], [ %678, %662 ]
  %695 = phi float [ %691, %682 ], [ %681, %662 ]
  %696 = fmul float %509, %695
  %697 = fadd float %508, %696
  %698 = fmul float %509, %694
  %699 = fadd float %507, %698
  %700 = fmul float %509, %693
  %701 = fadd float %506, %700
  %702 = fmul fast float %641, %493
  %703 = call float @dx.op.tertiary.f32(i32 46, float %639, float %494, float %702)  ; FMad(a,b,c)
  %704 = call float @dx.op.tertiary.f32(i32 46, float %637, float %495, float %703)  ; FMad(a,b,c)
  %705 = fadd fast float %704, %522
  %706 = fmul fast float %641, %497
  %707 = call float @dx.op.tertiary.f32(i32 46, float %639, float %498, float %706)  ; FMad(a,b,c)
  %708 = call float @dx.op.tertiary.f32(i32 46, float %637, float %499, float %707)  ; FMad(a,b,c)
  %709 = fadd fast float %708, %523
  %710 = fmul fast float %641, %501
  %711 = call float @dx.op.tertiary.f32(i32 46, float %639, float %502, float %710)  ; FMad(a,b,c)
  %712 = call float @dx.op.tertiary.f32(i32 46, float %637, float %503, float %711)  ; FMad(a,b,c)
  %713 = fadd fast float %712, %524
  %714 = fmul fast float %705, %157
  %715 = call float @dx.op.tertiary.f32(i32 46, float %709, float %165, float %714)  ; FMad(a,b,c)
  %716 = call float @dx.op.tertiary.f32(i32 46, float %713, float %173, float %715)  ; FMad(a,b,c)
  %717 = call float @dx.op.tertiary.f32(i32 46, float %505, float %181, float %716)  ; FMad(a,b,c)
  %718 = fmul fast float %705, %158
  %719 = call float @dx.op.tertiary.f32(i32 46, float %709, float %166, float %718)  ; FMad(a,b,c)
  %720 = call float @dx.op.tertiary.f32(i32 46, float %713, float %174, float %719)  ; FMad(a,b,c)
  %721 = call float @dx.op.tertiary.f32(i32 46, float %505, float %182, float %720)  ; FMad(a,b,c)
  %722 = fmul fast float %705, %159
  %723 = call float @dx.op.tertiary.f32(i32 46, float %709, float %167, float %722)  ; FMad(a,b,c)
  %724 = call float @dx.op.tertiary.f32(i32 46, float %713, float %175, float %723)  ; FMad(a,b,c)
  %725 = call float @dx.op.tertiary.f32(i32 46, float %505, float %183, float %724)  ; FMad(a,b,c)
  %726 = fmul fast float %671, %493
  %727 = call float @dx.op.tertiary.f32(i32 46, float %669, float %494, float %726)  ; FMad(a,b,c)
  %728 = call float @dx.op.tertiary.f32(i32 46, float %667, float %495, float %727)  ; FMad(a,b,c)
  %729 = fadd fast float %728, %522
  %730 = fmul fast float %671, %497
  %731 = call float @dx.op.tertiary.f32(i32 46, float %669, float %498, float %730)  ; FMad(a,b,c)
  %732 = call float @dx.op.tertiary.f32(i32 46, float %667, float %499, float %731)  ; FMad(a,b,c)
  %733 = fadd fast float %732, %523
  %734 = fmul fast float %671, %501
  %735 = call float @dx.op.tertiary.f32(i32 46, float %669, float %502, float %734)  ; FMad(a,b,c)
  %736 = call float @dx.op.tertiary.f32(i32 46, float %667, float %503, float %735)  ; FMad(a,b,c)
  %737 = fadd fast float %736, %524
  %738 = fmul fast float %729, %157
  %739 = call float @dx.op.tertiary.f32(i32 46, float %733, float %165, float %738)  ; FMad(a,b,c)
  %740 = call float @dx.op.tertiary.f32(i32 46, float %737, float %173, float %739)  ; FMad(a,b,c)
  %741 = call float @dx.op.tertiary.f32(i32 46, float %505, float %181, float %740)  ; FMad(a,b,c)
  %742 = fmul fast float %729, %158
  %743 = call float @dx.op.tertiary.f32(i32 46, float %733, float %166, float %742)  ; FMad(a,b,c)
  %744 = call float @dx.op.tertiary.f32(i32 46, float %737, float %174, float %743)  ; FMad(a,b,c)
  %745 = call float @dx.op.tertiary.f32(i32 46, float %505, float %182, float %744)  ; FMad(a,b,c)
  %746 = fmul fast float %729, %159
  %747 = call float @dx.op.tertiary.f32(i32 46, float %733, float %167, float %746)  ; FMad(a,b,c)
  %748 = call float @dx.op.tertiary.f32(i32 46, float %737, float %175, float %747)  ; FMad(a,b,c)
  %749 = call float @dx.op.tertiary.f32(i32 46, float %505, float %183, float %748)  ; FMad(a,b,c)
  %750 = fmul fast float %701, %493
  %751 = call float @dx.op.tertiary.f32(i32 46, float %699, float %494, float %750)  ; FMad(a,b,c)
  %752 = call float @dx.op.tertiary.f32(i32 46, float %697, float %495, float %751)  ; FMad(a,b,c)
  %753 = fadd fast float %752, %522
  %754 = fmul fast float %701, %497
  %755 = call float @dx.op.tertiary.f32(i32 46, float %699, float %498, float %754)  ; FMad(a,b,c)
  %756 = call float @dx.op.tertiary.f32(i32 46, float %697, float %499, float %755)  ; FMad(a,b,c)
  %757 = fadd fast float %756, %523
  %758 = fmul fast float %701, %501
  %759 = call float @dx.op.tertiary.f32(i32 46, float %699, float %502, float %758)  ; FMad(a,b,c)
  %760 = call float @dx.op.tertiary.f32(i32 46, float %697, float %503, float %759)  ; FMad(a,b,c)
  %761 = fadd fast float %760, %524
  %762 = fmul fast float %753, %157
  %763 = call float @dx.op.tertiary.f32(i32 46, float %757, float %165, float %762)  ; FMad(a,b,c)
  %764 = call float @dx.op.tertiary.f32(i32 46, float %761, float %173, float %763)  ; FMad(a,b,c)
  %765 = call float @dx.op.tertiary.f32(i32 46, float %505, float %181, float %764)  ; FMad(a,b,c)
  %766 = fmul fast float %753, %158
  %767 = call float @dx.op.tertiary.f32(i32 46, float %757, float %166, float %766)  ; FMad(a,b,c)
  %768 = call float @dx.op.tertiary.f32(i32 46, float %761, float %174, float %767)  ; FMad(a,b,c)
  %769 = call float @dx.op.tertiary.f32(i32 46, float %505, float %182, float %768)  ; FMad(a,b,c)
  %770 = fmul fast float %753, %159
  %771 = call float @dx.op.tertiary.f32(i32 46, float %757, float %167, float %770)  ; FMad(a,b,c)
  %772 = call float @dx.op.tertiary.f32(i32 46, float %761, float %175, float %771)  ; FMad(a,b,c)
  %773 = call float @dx.op.tertiary.f32(i32 46, float %505, float %183, float %772)  ; FMad(a,b,c)
  %774 = and i32 %130, 1
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %792, label %776, !dx.controlflow.hints !51

; <label>:776                                     ; preds = %692
  %777 = fmul fast float %773, %745
  %778 = fmul fast float %769, %749
  %779 = fsub fast float %777, %778
  %780 = fmul fast float %773, %741
  %781 = fmul fast float %765, %749
  %782 = fsub fast float %780, %781
  %783 = fmul fast float %769, %741
  %784 = fmul fast float %765, %745
  %785 = fsub fast float %783, %784
  %786 = fmul fast float %779, %717
  %787 = fmul fast float %782, %721
  %788 = fmul fast float %785, %725
  %789 = fsub fast float %788, %787
  %790 = fadd fast float %789, %786
  %791 = fcmp fast ogt float %790, 0.000000e+00
  br i1 %791, label %1208, label %792, !dx.controlflow.hints !52

; <label>:792                                     ; preds = %776, %692
  %793 = fcmp fast olt float %725, 0.000000e+00
  %794 = zext i1 %793 to i32
  %795 = call float @dx.op.unary.f32(i32 6, float %725)  ; FAbs(value)
  %796 = fdiv fast float 1.000000e+00, %795
  %797 = fmul fast float %717, %796
  %798 = fmul fast float %721, %796
  %799 = fmul fast float %797, 5.000000e-01
  %800 = fmul fast float %798, 5.000000e-01
  %801 = fadd fast float %799, 5.000000e-01
  %802 = fsub fast float 5.000000e-01, %800
  %803 = call float @dx.op.unary.f32(i32 7, float %801)  ; Saturate(value)
  %804 = call float @dx.op.unary.f32(i32 7, float %802)  ; Saturate(value)
  %805 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %725)  ; FMax(a,b)
  %806 = fcmp fast olt float %749, 0.000000e+00
  %807 = zext i1 %806 to i32
  %808 = add nuw nsw i32 %807, %794
  %809 = call float @dx.op.unary.f32(i32 6, float %749)  ; FAbs(value)
  %810 = fdiv fast float 1.000000e+00, %809
  %811 = fmul fast float %741, %810
  %812 = fmul fast float %745, %810
  %813 = fmul fast float %811, 5.000000e-01
  %814 = fmul fast float %812, 5.000000e-01
  %815 = fadd fast float %813, 5.000000e-01
  %816 = fsub fast float 5.000000e-01, %814
  %817 = call float @dx.op.unary.f32(i32 7, float %815)  ; Saturate(value)
  %818 = call float @dx.op.unary.f32(i32 7, float %816)  ; Saturate(value)
  %819 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %749)  ; FMax(a,b)
  %820 = fcmp fast olt float %773, 0.000000e+00
  %821 = zext i1 %820 to i32
  %822 = add nuw nsw i32 %821, %808
  %823 = call float @dx.op.unary.f32(i32 6, float %773)  ; FAbs(value)
  %824 = fdiv fast float 1.000000e+00, %823
  %825 = fmul fast float %765, %824
  %826 = fmul fast float %769, %824
  %827 = fmul fast float %825, 5.000000e-01
  %828 = fmul fast float %826, 5.000000e-01
  %829 = fadd fast float %827, 5.000000e-01
  %830 = fsub fast float 5.000000e-01, %828
  %831 = call float @dx.op.unary.f32(i32 7, float %829)  ; Saturate(value)
  %832 = call float @dx.op.unary.f32(i32 7, float %830)  ; Saturate(value)
  %833 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %773)  ; FMax(a,b)
  %834 = call float @dx.op.binary.f32(i32 36, float %817, float %831)  ; FMin(a,b)
  %835 = call float @dx.op.binary.f32(i32 36, float %803, float %834)  ; FMin(a,b)
  %836 = call float @dx.op.binary.f32(i32 36, float %818, float %832)  ; FMin(a,b)
  %837 = call float @dx.op.binary.f32(i32 36, float %804, float %836)  ; FMin(a,b)
  %838 = call float @dx.op.binary.f32(i32 35, float %817, float %831)  ; FMax(a,b)
  %839 = call float @dx.op.binary.f32(i32 35, float %803, float %838)  ; FMax(a,b)
  %840 = call float @dx.op.binary.f32(i32 35, float %818, float %832)  ; FMax(a,b)
  %841 = call float @dx.op.binary.f32(i32 35, float %804, float %840)  ; FMax(a,b)
  %842 = and i32 %130, 4
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %868, label %844, !dx.controlflow.hints !53

; <label>:844                                     ; preds = %792
  %845 = icmp eq i32 %822, 3
  br i1 %845, label %1208, label %846, !dx.controlflow.hints !54

; <label>:846                                     ; preds = %844
  %847 = fcmp fast ole float %839, 0.000000e+00
  %848 = fcmp fast ole float %841, 0.000000e+00
  %849 = or i1 %847, %848
  %850 = fcmp fast oge float %835, 1.000000e+00
  %851 = or i1 %850, %849
  %852 = fcmp fast oge float %837, 1.000000e+00
  %853 = or i1 %852, %851
  br i1 %853, label %1208, label %854, !dx.controlflow.hints !55

; <label>:854                                     ; preds = %846
  %855 = fmul fast float %835, %196
  %856 = fmul fast float %837, %197
  %857 = fmul fast float %839, %196
  %858 = fmul fast float %841, %197
  %859 = icmp eq i32 %822, 0
  %860 = call float @dx.op.unary.f32(i32 26, float %855)  ; Round_ne(value)
  %861 = call float @dx.op.unary.f32(i32 26, float %856)  ; Round_ne(value)
  %862 = call float @dx.op.unary.f32(i32 26, float %857)  ; Round_ne(value)
  %863 = call float @dx.op.unary.f32(i32 26, float %858)  ; Round_ne(value)
  %864 = fcmp fast oeq float %860, %862
  %865 = fcmp fast oeq float %861, %863
  %866 = or i1 %864, %865
  %867 = and i1 %859, %866
  br i1 %867, label %1208, label %868, !dx.controlflow.hints !56

; <label>:868                                     ; preds = %854, %792
  %869 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %870 = extractvalue %dx.types.CBufRet.i32 %869, 0
  %871 = icmp ne i32 %870, 0
  %872 = and i32 %130, 2
  %873 = icmp ne i32 %872, 0
  %874 = and i1 %873, %871
  br i1 %874, label %875, label %1205, !dx.controlflow.hints !57

; <label>:875                                     ; preds = %868
  %876 = and i32 %129, -2
  %877 = icmp eq i32 %876, 62
  %878 = call float @dx.op.binary.f32(i32 36, float %819, float %833)  ; FMin(a,b)
  %879 = call float @dx.op.binary.f32(i32 36, float %805, float %878)  ; FMin(a,b)
  %880 = and i32 %870, 2
  %881 = icmp eq i32 %880, 0
  br i1 %881, label %1034, label %882, !dx.controlflow.hints !58

; <label>:882                                     ; preds = %875
  %883 = fsub fast float %839, %835
  %884 = fsub fast float %841, %837
  %885 = fmul fast float %883, 6.400000e+01
  %886 = fmul fast float %884, 6.400000e+01
  %887 = call float @dx.op.unary.f32(i32 28, float %885)  ; Round_pi(value)
  %888 = call float @dx.op.unary.f32(i32 28, float %886)  ; Round_pi(value)
  %889 = call float @dx.op.binary.f32(i32 35, float %887, float %888)  ; FMax(a,b)
  %890 = call float @dx.op.unary.f32(i32 23, float %889)  ; Log(value)
  %891 = call float @dx.op.unary.f32(i32 28, float %890)  ; Round_pi(value)
  %892 = fptosi float %891 to i32
  %893 = call i32 @dx.op.binary.i32(i32 37, i32 %892, i32 0)  ; IMax(a,b)
  %894 = call i32 @dx.op.binary.i32(i32 38, i32 %893, i32 6)  ; IMin(a,b)
  %895 = and i32 %894, 31
  %896 = lshr i32 64, %895
  %897 = uitofp i32 %896 to float
  %898 = call float @dx.op.binary.f32(i32 35, float %897, float 1.000000e+00)  ; FMax(a,b)
  %899 = fdiv fast float 1.000000e+00, %898
  %900 = fmul fast float %898, %835
  %901 = fmul fast float %898, %837
  %902 = call float @dx.op.unary.f32(i32 27, float %900)  ; Round_ni(value)
  %903 = call float @dx.op.unary.f32(i32 27, float %901)  ; Round_ni(value)
  %904 = call float @dx.op.binary.f32(i32 35, float %902, float 0.000000e+00)  ; FMax(a,b)
  %905 = call float @dx.op.binary.f32(i32 35, float %903, float 0.000000e+00)  ; FMax(a,b)
  %906 = call float @dx.op.binary.f32(i32 36, float %904, float %898)  ; FMin(a,b)
  %907 = call float @dx.op.binary.f32(i32 36, float %905, float %898)  ; FMin(a,b)
  %908 = fmul fast float %898, %839
  %909 = fmul fast float %898, %841
  %910 = call float @dx.op.unary.f32(i32 28, float %908)  ; Round_pi(value)
  %911 = call float @dx.op.unary.f32(i32 28, float %909)  ; Round_pi(value)
  %912 = call float @dx.op.binary.f32(i32 35, float %910, float 0.000000e+00)  ; FMax(a,b)
  %913 = call float @dx.op.binary.f32(i32 35, float %911, float 0.000000e+00)  ; FMax(a,b)
  %914 = call float @dx.op.binary.f32(i32 36, float %912, float %898)  ; FMin(a,b)
  %915 = call float @dx.op.binary.f32(i32 36, float %913, float %898)  ; FMin(a,b)
  %916 = fadd fast float %906, 1.000000e+00
  %917 = fmul fast float %916, %899
  %918 = fmul fast float %899, 2.000000e+00
  %919 = fsub fast float %914, %906
  %920 = fsub fast float %915, %907
  %921 = fmul fast float %919, 5.000000e-01
  %922 = fmul fast float %920, 5.000000e-01
  %923 = call float @dx.op.unary.f32(i32 28, float %921)  ; Round_pi(value)
  %924 = call float @dx.op.unary.f32(i32 28, float %922)  ; Round_pi(value)
  %925 = fptoui float %923 to i32
  %926 = fptoui float %924 to i32
  %927 = shl i32 1, %895
  %928 = add i32 %927, -1
  %929 = lshr i32 %928, 6
  %930 = and i32 %929, 1
  %931 = sub nsw i32 0, %930
  %932 = icmp eq i32 %926, %931
  br i1 %932, label %1014, label %933

; <label>:933                                     ; preds = %882
  %934 = fadd fast float %907, 1.000000e+00
  %935 = fmul fast float %934, %899
  %936 = and i32 %929, 1
  %937 = add i32 %925, %936
  %938 = add i32 %926, %936
  br label %939

; <label>:939                                     ; preds = %1007, %933
  %940 = phi i32 [ %1008, %1007 ], [ 1, %933 ]
  %941 = phi float [ %1009, %1007 ], [ 0.000000e+00, %933 ]
  %942 = phi float [ %1010, %1007 ], [ %935, %933 ]
  %943 = phi i32 [ %1011, %1007 ], [ 0, %933 ]
  %944 = sub nsw i32 0, %930
  %945 = icmp eq i32 %925, %944
  br i1 %945, label %1007, label %946

; <label>:946                                     ; preds = %939
  br label %947

; <label>:947                                     ; preds = %947, %946
  %948 = phi i32 [ %998, %947 ], [ %940, %946 ]
  %949 = phi float [ %1002, %947 ], [ %941, %946 ]
  %950 = phi float [ %1003, %947 ], [ %917, %946 ]
  %951 = phi i32 [ %1004, %947 ], [ 0, %946 ]
  %952 = sitofp i32 %894 to float
  %953 = fmul fast float %899, 0xBFDFE00000000000
  %954 = fadd fast float %953, %950
  %955 = fmul fast float %899, 0x3FE0100000000000
  %956 = fadd fast float %955, %942
  %957 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %954, float %956, float undef, float undef, i32 0, i32 0, i32 undef, float %952)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %958 = extractvalue %dx.types.ResRet.f32 %957, 0
  %959 = fadd fast float %955, %950
  %960 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %959, float %956, float undef, float undef, i32 0, i32 0, i32 undef, float %952)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %961 = extractvalue %dx.types.ResRet.f32 %960, 0
  %962 = fadd fast float %953, %942
  %963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %959, float %962, float undef, float undef, i32 0, i32 0, i32 undef, float %952)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %964 = extractvalue %dx.types.ResRet.f32 %963, 0
  %965 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %954, float %962, float undef, float undef, i32 0, i32 0, i32 undef, float %952)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %966 = extractvalue %dx.types.ResRet.f32 %965, 0
  %967 = fcmp fast olt float %958, -1.000000e+00
  %968 = fcmp fast ogt float %958, -1.000000e+00
  %969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %970 = extractvalue %dx.types.CBufRet.f32 %969, 1
  %971 = select i1 %968, float %970, float 1.000000e+00
  %972 = fadd fast float %958, 1.000000e+00
  %973 = fmul fast float %971, %972
  %974 = call float @dx.op.unary.f32(i32 6, float %973)  ; FAbs(value)
  %975 = fcmp fast olt float %961, -1.000000e+00
  %976 = fcmp fast ogt float %961, -1.000000e+00
  %977 = select i1 %976, float %970, float 1.000000e+00
  %978 = fadd fast float %961, 1.000000e+00
  %979 = fmul fast float %977, %978
  %980 = call float @dx.op.unary.f32(i32 6, float %979)  ; FAbs(value)
  %981 = fcmp fast olt float %964, -1.000000e+00
  %982 = fcmp fast ogt float %964, -1.000000e+00
  %983 = select i1 %982, float %970, float 1.000000e+00
  %984 = fadd fast float %964, 1.000000e+00
  %985 = fmul fast float %983, %984
  %986 = call float @dx.op.unary.f32(i32 6, float %985)  ; FAbs(value)
  %987 = fcmp fast olt float %966, -1.000000e+00
  %988 = fcmp fast ogt float %966, -1.000000e+00
  %989 = select i1 %988, float %970, float 1.000000e+00
  %990 = fadd fast float %966, 1.000000e+00
  %991 = fmul fast float %989, %990
  %992 = call float @dx.op.unary.f32(i32 6, float %991)  ; FAbs(value)
  %993 = and i1 %967, %975
  %994 = and i1 %993, %981
  %995 = and i1 %994, %987
  %996 = icmp ne i32 %948, 0
  %997 = and i1 %996, %995
  %998 = zext i1 %997 to i32
  %999 = call float @dx.op.binary.f32(i32 35, float %980, float %986)  ; FMax(a,b)
  %1000 = call float @dx.op.binary.f32(i32 35, float %974, float %999)  ; FMax(a,b)
  %1001 = call float @dx.op.binary.f32(i32 35, float %1000, float %992)  ; FMax(a,b)
  %1002 = call float @dx.op.binary.f32(i32 35, float %1001, float %949)  ; FMax(a,b)
  %1003 = fadd fast float %950, %918
  %1004 = add nuw i32 %951, 1
  %1005 = icmp eq i32 %1004, %937
  br i1 %1005, label %1006, label %947

; <label>:1006                                    ; preds = %947
  br label %1007

; <label>:1007                                    ; preds = %1006, %939
  %1008 = phi i32 [ %940, %939 ], [ %998, %1006 ]
  %1009 = phi float [ %941, %939 ], [ %1002, %1006 ]
  %1010 = fadd fast float %942, %918
  %1011 = add nuw i32 %943, 1
  %1012 = icmp eq i32 %1011, %938
  br i1 %1012, label %1013, label %939

; <label>:1013                                    ; preds = %1007
  br label %1014

; <label>:1014                                    ; preds = %1013, %882
  %1015 = phi i32 [ 1, %882 ], [ %1008, %1013 ]
  %1016 = phi float [ 0.000000e+00, %882 ], [ %1009, %1013 ]
  %1017 = icmp eq i32 %1015, 0
  %1018 = and i1 %877, %1017
  br i1 %1018, label %1031, label %1019, !dx.controlflow.hints !59

; <label>:1019                                    ; preds = %1014
  %1020 = fcmp fast une float %879, 0.000000e+00
  %1021 = bitcast float %879 to i32
  %1022 = and i32 %1021, 2139095040
  %1023 = add nsw i32 %1022, -1056964608
  %1024 = ashr exact i32 %1023, 23
  %1025 = add nsw i32 %1024, -10
  %1026 = sitofp i32 %1025 to float
  %1027 = select i1 %1020, float %1026, float -1.000000e+01
  %1028 = call float @dx.op.unary.f32(i32 21, float %1027)  ; Exp(value)
  %1029 = fsub fast float %879, %1028
  %1030 = fcmp fast ogt float %1016, %1029
  br label %1031

; <label>:1031                                    ; preds = %1019, %1014
  %1032 = phi i1 [ %1030, %1019 ], [ true, %1014 ]
  %1033 = zext i1 %1032 to i32
  br label %1034

; <label>:1034                                    ; preds = %1031, %875
  %1035 = phi i32 [ %1033, %1031 ], [ 1, %875 ]
  %1036 = and i32 %870, 1
  %1037 = icmp ne i32 %1036, 0
  %1038 = icmp ne i32 %1035, 0
  %1039 = and i1 %1038, %1037
  br i1 %1039, label %1040, label %1205, !dx.controlflow.hints !60

; <label>:1040                                    ; preds = %1034
  %1041 = extractvalue %dx.types.CBufRet.i32 %869, 3
  %1042 = extractvalue %dx.types.CBufRet.i32 %869, 1
  %1043 = extractvalue %dx.types.CBufRet.i32 %869, 2
  %1044 = fsub fast float %839, %835
  %1045 = fsub fast float %841, %837
  %1046 = uitofp i32 %1042 to float
  %1047 = uitofp i32 %1043 to float
  %1048 = fmul fast float %1046, %1044
  %1049 = fmul fast float %1047, %1045
  %1050 = call float @dx.op.unary.f32(i32 28, float %1048)  ; Round_pi(value)
  %1051 = call float @dx.op.unary.f32(i32 28, float %1049)  ; Round_pi(value)
  %1052 = call float @dx.op.binary.f32(i32 35, float %1050, float %1051)  ; FMax(a,b)
  %1053 = call float @dx.op.unary.f32(i32 23, float %1052)  ; Log(value)
  %1054 = call float @dx.op.unary.f32(i32 28, float %1053)  ; Round_pi(value)
  %1055 = fptosi float %1054 to i32
  %1056 = call i32 @dx.op.binary.i32(i32 37, i32 %1055, i32 0)  ; IMax(a,b)
  %1057 = call i32 @dx.op.binary.i32(i32 38, i32 %1056, i32 %1041)  ; IMin(a,b)
  %1058 = and i32 %1057, 31
  %1059 = lshr i32 %1042, %1058
  %1060 = lshr i32 %1043, %1058
  %1061 = uitofp i32 %1059 to float
  %1062 = uitofp i32 %1060 to float
  %1063 = call float @dx.op.binary.f32(i32 35, float %1061, float 1.000000e+00)  ; FMax(a,b)
  %1064 = call float @dx.op.binary.f32(i32 35, float %1062, float 1.000000e+00)  ; FMax(a,b)
  %1065 = fdiv fast float 1.000000e+00, %1063
  %1066 = fdiv fast float 1.000000e+00, %1064
  %1067 = fmul fast float %1063, %835
  %1068 = fmul fast float %1064, %837
  %1069 = call float @dx.op.unary.f32(i32 27, float %1067)  ; Round_ni(value)
  %1070 = call float @dx.op.unary.f32(i32 27, float %1068)  ; Round_ni(value)
  %1071 = call float @dx.op.binary.f32(i32 35, float %1069, float 0.000000e+00)  ; FMax(a,b)
  %1072 = call float @dx.op.binary.f32(i32 35, float %1070, float 0.000000e+00)  ; FMax(a,b)
  %1073 = call float @dx.op.binary.f32(i32 36, float %1071, float %1063)  ; FMin(a,b)
  %1074 = call float @dx.op.binary.f32(i32 36, float %1072, float %1064)  ; FMin(a,b)
  %1075 = fmul fast float %1063, %839
  %1076 = fmul fast float %1064, %841
  %1077 = call float @dx.op.unary.f32(i32 28, float %1075)  ; Round_pi(value)
  %1078 = call float @dx.op.unary.f32(i32 28, float %1076)  ; Round_pi(value)
  %1079 = call float @dx.op.binary.f32(i32 35, float %1077, float 0.000000e+00)  ; FMax(a,b)
  %1080 = call float @dx.op.binary.f32(i32 35, float %1078, float 0.000000e+00)  ; FMax(a,b)
  %1081 = call float @dx.op.binary.f32(i32 36, float %1079, float %1063)  ; FMin(a,b)
  %1082 = call float @dx.op.binary.f32(i32 36, float %1080, float %1064)  ; FMin(a,b)
  %1083 = fadd fast float %1073, 1.000000e+00
  %1084 = fmul fast float %1083, %1065
  %1085 = fmul fast float %1065, 2.000000e+00
  %1086 = fmul fast float %1066, 2.000000e+00
  %1087 = fsub fast float %1081, %1073
  %1088 = fsub fast float %1082, %1074
  %1089 = fmul fast float %1087, 5.000000e-01
  %1090 = fmul fast float %1088, 5.000000e-01
  %1091 = call float @dx.op.unary.f32(i32 28, float %1089)  ; Round_pi(value)
  %1092 = call float @dx.op.unary.f32(i32 28, float %1090)  ; Round_pi(value)
  %1093 = fptoui float %1091 to i32
  %1094 = fptoui float %1092 to i32
  %1095 = shl i32 1, %1058
  %1096 = add i32 %1095, -1
  %1097 = and i32 %1096, %1042
  %1098 = icmp ne i32 %1097, 0
  %1099 = zext i1 %1098 to i32
  %1100 = add i32 %1093, %1099
  %1101 = and i32 %1096, %1043
  %1102 = icmp ne i32 %1101, 0
  %1103 = zext i1 %1102 to i32
  %1104 = add i32 %1094, %1103
  %1105 = icmp eq i32 %1104, 0
  br i1 %1105, label %1185, label %1106

; <label>:1106                                    ; preds = %1040
  %1107 = fadd fast float %1074, 1.000000e+00
  %1108 = fmul fast float %1107, %1066
  br label %1109

; <label>:1109                                    ; preds = %1178, %1106
  %1110 = phi i32 [ %1179, %1178 ], [ 1, %1106 ]
  %1111 = phi float [ %1180, %1178 ], [ 0.000000e+00, %1106 ]
  %1112 = phi float [ %1181, %1178 ], [ %1108, %1106 ]
  %1113 = phi i32 [ %1182, %1178 ], [ 0, %1106 ]
  %1114 = icmp eq i32 %1100, 0
  br i1 %1114, label %1178, label %1115

; <label>:1115                                    ; preds = %1109
  br label %1116

; <label>:1116                                    ; preds = %1116, %1115
  %1117 = phi i32 [ %1169, %1116 ], [ %1110, %1115 ]
  %1118 = phi float [ %1173, %1116 ], [ %1111, %1115 ]
  %1119 = phi float [ %1174, %1116 ], [ %1084, %1115 ]
  %1120 = phi i32 [ %1175, %1116 ], [ 0, %1115 ]
  %1121 = sitofp i32 %1057 to float
  %1122 = fmul fast float %1065, 0xBFDFE00000000000
  %1123 = fadd fast float %1122, %1119
  %1124 = fmul fast float %1066, 0x3FE0100000000000
  %1125 = fadd fast float %1124, %1112
  %1126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %1123, float %1125, float undef, float undef, i32 0, i32 0, i32 undef, float %1121)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1127 = extractvalue %dx.types.ResRet.f32 %1126, 0
  %1128 = fmul fast float %1065, 0x3FE0100000000000
  %1129 = fadd fast float %1128, %1119
  %1130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %1129, float %1125, float undef, float undef, i32 0, i32 0, i32 undef, float %1121)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1131 = extractvalue %dx.types.ResRet.f32 %1130, 0
  %1132 = fmul fast float %1066, 0xBFDFE00000000000
  %1133 = fadd fast float %1132, %1112
  %1134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %1129, float %1133, float undef, float undef, i32 0, i32 0, i32 undef, float %1121)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1135 = extractvalue %dx.types.ResRet.f32 %1134, 0
  %1136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %1123, float %1133, float undef, float undef, i32 0, i32 0, i32 undef, float %1121)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1137 = extractvalue %dx.types.ResRet.f32 %1136, 0
  %1138 = fcmp fast olt float %1127, -1.000000e+00
  %1139 = fcmp fast ogt float %1127, -1.000000e+00
  %1140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1141 = extractvalue %dx.types.CBufRet.f32 %1140, 1
  %1142 = select i1 %1139, float %1141, float 1.000000e+00
  %1143 = fadd fast float %1127, 1.000000e+00
  %1144 = fmul fast float %1142, %1143
  %1145 = call float @dx.op.unary.f32(i32 6, float %1144)  ; FAbs(value)
  %1146 = fcmp fast olt float %1131, -1.000000e+00
  %1147 = fcmp fast ogt float %1131, -1.000000e+00
  %1148 = select i1 %1147, float %1141, float 1.000000e+00
  %1149 = fadd fast float %1131, 1.000000e+00
  %1150 = fmul fast float %1148, %1149
  %1151 = call float @dx.op.unary.f32(i32 6, float %1150)  ; FAbs(value)
  %1152 = fcmp fast olt float %1135, -1.000000e+00
  %1153 = fcmp fast ogt float %1135, -1.000000e+00
  %1154 = select i1 %1153, float %1141, float 1.000000e+00
  %1155 = fadd fast float %1135, 1.000000e+00
  %1156 = fmul fast float %1154, %1155
  %1157 = call float @dx.op.unary.f32(i32 6, float %1156)  ; FAbs(value)
  %1158 = fcmp fast olt float %1137, -1.000000e+00
  %1159 = fcmp fast ogt float %1137, -1.000000e+00
  %1160 = select i1 %1159, float %1141, float 1.000000e+00
  %1161 = fadd fast float %1137, 1.000000e+00
  %1162 = fmul fast float %1160, %1161
  %1163 = call float @dx.op.unary.f32(i32 6, float %1162)  ; FAbs(value)
  %1164 = and i1 %1138, %1146
  %1165 = and i1 %1164, %1152
  %1166 = and i1 %1165, %1158
  %1167 = icmp ne i32 %1117, 0
  %1168 = and i1 %1167, %1166
  %1169 = zext i1 %1168 to i32
  %1170 = call float @dx.op.binary.f32(i32 35, float %1151, float %1157)  ; FMax(a,b)
  %1171 = call float @dx.op.binary.f32(i32 35, float %1145, float %1170)  ; FMax(a,b)
  %1172 = call float @dx.op.binary.f32(i32 35, float %1171, float %1163)  ; FMax(a,b)
  %1173 = call float @dx.op.binary.f32(i32 35, float %1172, float %1118)  ; FMax(a,b)
  %1174 = fadd fast float %1119, %1085
  %1175 = add nuw i32 %1120, 1
  %1176 = icmp eq i32 %1175, %1100
  br i1 %1176, label %1177, label %1116

; <label>:1177                                    ; preds = %1116
  br label %1178

; <label>:1178                                    ; preds = %1177, %1109
  %1179 = phi i32 [ %1110, %1109 ], [ %1169, %1177 ]
  %1180 = phi float [ %1111, %1109 ], [ %1173, %1177 ]
  %1181 = fadd fast float %1112, %1086
  %1182 = add nuw i32 %1113, 1
  %1183 = icmp eq i32 %1182, %1104
  br i1 %1183, label %1184, label %1109

; <label>:1184                                    ; preds = %1178
  br label %1185

; <label>:1185                                    ; preds = %1184, %1040
  %1186 = phi i32 [ 1, %1040 ], [ %1179, %1184 ]
  %1187 = phi float [ 0.000000e+00, %1040 ], [ %1180, %1184 ]
  %1188 = icmp eq i32 %1186, 0
  %1189 = and i1 %877, %1188
  br i1 %1189, label %1202, label %1190, !dx.controlflow.hints !59

; <label>:1190                                    ; preds = %1185
  %1191 = fcmp fast une float %879, 0.000000e+00
  %1192 = bitcast float %879 to i32
  %1193 = and i32 %1192, 2139095040
  %1194 = add nsw i32 %1193, -1056964608
  %1195 = ashr exact i32 %1194, 23
  %1196 = add nsw i32 %1195, -10
  %1197 = sitofp i32 %1196 to float
  %1198 = select i1 %1191, float %1197, float -1.000000e+01
  %1199 = call float @dx.op.unary.f32(i32 21, float %1198)  ; Exp(value)
  %1200 = fsub fast float %879, %1199
  %1201 = fcmp fast ogt float %1187, %1200
  br label %1202

; <label>:1202                                    ; preds = %1190, %1185
  %1203 = phi i1 [ %1201, %1190 ], [ true, %1185 ]
  %1204 = zext i1 %1203 to i32
  br label %1205

; <label>:1205                                    ; preds = %1202, %1034, %868
  %1206 = phi i32 [ %1204, %1202 ], [ %1035, %1034 ], [ 1, %868 ]
  %1207 = icmp ne i32 %1206, 0
  br label %1208

; <label>:1208                                    ; preds = %1205, %854, %846, %844, %776
  %1209 = phi i1 [ %1207, %1205 ], [ false, %776 ], [ false, %844 ], [ false, %846 ], [ false, %854 ]
  %1210 = zext i1 %1209 to i32
  br label %1211

; <label>:1211                                    ; preds = %1208, %125
  %1212 = phi i32 [ %1210, %1208 ], [ %148, %125 ]
  %1213 = icmp ne i32 %1212, 0
  %1214 = call %dx.types.fouri32 @dx.op.waveActiveBallot(i32 116, i1 %1213)  ; WaveActiveBallot(cond)
  %1215 = extractvalue %dx.types.fouri32 %1214, 0
  %1216 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsBallotResult@@3PAIA", i32 0, i32 %30
  store i32 %1215, i32 addrspace(3)* %1216, align 4, !tbaa !61
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1217 = shl nuw nsw i32 %27, 1
  %1218 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsBallotResult@@3PAIA", i32 0, i32 %1217
  %1219 = load i32, i32 addrspace(3)* %1218, align 4, !tbaa !61
  %1220 = or i32 %1217, 1
  %1221 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsBallotResult@@3PAIA", i32 0, i32 %1220
  %1222 = load i32, i32 addrspace(3)* %1221, align 4, !tbaa !61
  %1223 = icmp eq i32 %29, 0
  br i1 %1223, label %1224, label %1229, !dx.controlflow.hints !65

; <label>:1224                                    ; preds = %1211
  %1225 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1219)  ; Countbits(value)
  %1226 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1222)  ; Countbits(value)
  %1227 = add i32 %1226, %1225
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %28, i32 0, i32 %1219, i32 %1222, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1228 = shl i32 %28, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1228, i32 undef, i32 %1227, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1229

; <label>:1229                                    ; preds = %1224, %1211
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind
declare %dx.types.fouri32 @dx.op.waveActiveBallot(i32, i1) #1

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #3

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #3

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #3

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { noduplicate nounwind }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!34}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !24, !27, !32}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18, !19, !20, !21, !22}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!11 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!12 = !{i32 6, %"class.Texture2D<float>"* undef, !"", i32 0, i32 7, i32 1, i32 2, i32 0, !13}
!13 = !{i32 0, i32 9}
!14 = !{i32 7, %"class.Texture2D<float>"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !13}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 10, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 11, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 14, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!21 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 16, i32 1, i32 11, i32 0, null}
!22 = !{i32 15, %"class.StructuredBuffer<GPSortItem>"* undef, !"", i32 0, i32 19, i32 1, i32 12, i32 0, !23}
!23 = !{i32 1, i32 8}
!24 = !{!25, !26}
!25 = !{i32 0, %"class.RWStructuredBuffer<GPCulledTriCluster>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i1 false, i1 false, i1 false, !23}
!26 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!27 = !{!28, !29, !30, !31}
!28 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!29 = !{i32 1, %GPSurfPassConsts* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!30 = !{i32 2, %GPOcclusionPassConsts* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!31 = !{i32 3, %TriCullIndirectArgs* undef, !"", i32 0, i32 2, i32 1, i32 16, null}
!32 = !{!33}
!33 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!34 = !{void ()* @sorted_triangle_cull_pass, !"sorted_triangle_cull_pass", null, !4, !35}
!35 = !{i32 0, i64 524560, i32 4, !36}
!36 = !{i32 128, i32 1, i32 1}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 1}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = !{i32 1}
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
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = !{!62, !62, i64 0}
!62 = !{!"int", !63, i64 0}
!63 = !{!"omnipotent char", !64, i64 0}
!64 = !{!"Simple C/C++ TBAA"}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}

