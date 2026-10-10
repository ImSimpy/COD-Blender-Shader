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
; shader hash: fb013a99393d3e5b8aac22e7b9cf0ad3
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
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
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
%struct.SamplerState = type { i32 }

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4

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
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %24 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %25 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %23, i32 4)  ; BufferLoad(srv,index,wot)
  %26 = extractvalue %dx.types.ResRet.i32 %25, 0
  %27 = shl i32 %26, 2
  %28 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %27, i32 undef)  ; BufferLoad(srv,index,wot)
  %29 = extractvalue %dx.types.ResRet.i32 %28, 0
  %30 = and i32 %29, 65535
  %31 = lshr i32 %29, 16
  %32 = and i32 %31, 1023
  %33 = and i32 %29, 67108864
  %34 = icmp ne i32 %33, 0
  %35 = and i32 %29, 134217728
  %36 = and i32 %29, 536870912
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50, !dx.controlflow.hints !36

; <label>:38                                      ; preds = %0
  %39 = shl nuw nsw i32 %30, 3
  %40 = or i32 %39, 5242880
  %41 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %40, i32 undef)  ; BufferLoad(srv,index,wot)
  %42 = extractvalue %dx.types.ResRet.i32 %41, 0
  %43 = extractvalue %dx.types.ResRet.i32 %41, 1
  %44 = lshr i32 %42, 16
  %45 = and i32 %43, 16777215
  %46 = lshr i32 %43, 24
  %47 = lshr i32 %43, 25
  %48 = and i32 %47, 2
  %49 = xor i32 %48, 3
  br label %65

; <label>:50                                      ; preds = %0
  %51 = mul nuw nsw i32 %30, 12
  %52 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %51, i32 undef)  ; BufferLoad(srv,index,wot)
  %53 = extractvalue %dx.types.ResRet.i32 %52, 0
  %54 = extractvalue %dx.types.ResRet.i32 %52, 1
  %55 = extractvalue %dx.types.ResRet.i32 %52, 2
  %56 = lshr i32 %53, 28
  %57 = and i32 %54, 65535
  %58 = shl nuw nsw i32 %56, 16
  %59 = or i32 %58, %57
  %60 = and i32 %53, 268435455
  %61 = and i32 %55, 15
  %62 = lshr i32 %55, 4
  %63 = and i32 %62, 15
  %64 = lshr i32 %55, 8
  br label %65

; <label>:65                                      ; preds = %50, %38
  %66 = phi i32 [ %45, %38 ], [ 0, %50 ]
  %67 = phi i32 [ %42, %38 ], [ %55, %50 ]
  %68 = phi i32 [ %44, %38 ], [ %64, %50 ]
  %69 = phi i32 [ %46, %38 ], [ %63, %50 ]
  %70 = phi i32 [ %49, %38 ], [ %61, %50 ]
  %71 = phi i32 [ 0, %38 ], [ %59, %50 ]
  %72 = phi i32 [ 0, %38 ], [ %60, %50 ]
  %73 = lshr i32 %67, 24
  br i1 %37, label %74, label %79, !dx.controlflow.hints !37

; <label>:74                                      ; preds = %65
  %75 = shl nuw nsw i32 %30, 4
  %76 = add nuw nsw i32 %75, 5767168
  %77 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %76, i32 undef)  ; BufferLoad(srv,index,wot)
  %78 = extractvalue %dx.types.ResRet.i32 %77, 2
  br label %84

; <label>:79                                      ; preds = %65
  %80 = mul nuw nsw i32 %30, 12
  %81 = add nuw nsw i32 %80, 1572864
  %82 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %81, i32 undef)  ; BufferLoad(srv,index,wot)
  %83 = extractvalue %dx.types.ResRet.i32 %82, 2
  br label %84

; <label>:84                                      ; preds = %79, %74
  %85 = phi i32 [ %78, %74 ], [ %83, %79 ]
  br i1 %37, label %86, label %92, !dx.controlflow.hints !38

; <label>:86                                      ; preds = %84
  %87 = shl nuw nsw i32 %30, 3
  %88 = or i32 %87, 6815744
  %89 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %88, i32 undef)  ; BufferLoad(srv,index,wot)
  %90 = extractvalue %dx.types.ResRet.i32 %89, 0
  %91 = extractvalue %dx.types.ResRet.i32 %89, 1
  br label %99

; <label>:92                                      ; preds = %84
  %93 = mul nuw nsw i32 %30, 12
  %94 = add nuw nsw i32 %93, 786432
  %95 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %94, i32 undef)  ; BufferLoad(srv,index,wot)
  %96 = extractvalue %dx.types.ResRet.i32 %95, 0
  %97 = extractvalue %dx.types.ResRet.i32 %95, 1
  %98 = extractvalue %dx.types.ResRet.i32 %95, 2
  br label %99

; <label>:99                                      ; preds = %92, %86
  %100 = phi i32 [ %91, %86 ], [ %98, %92 ]
  %101 = phi i32 [ 0, %86 ], [ %97, %92 ]
  %102 = phi i32 [ %90, %86 ], [ %96, %92 ]
  %103 = add i32 %85, %32
  %104 = shl i32 %103, 2
  %105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %104, i32 undef)  ; BufferLoad(srv,index,wot)
  %106 = extractvalue %dx.types.ResRet.i32 %105, 0
  %107 = shl i32 %106, 5
  %108 = or i32 %107, 16
  %109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %108, i32 undef)  ; BufferLoad(srv,index,wot)
  %110 = extractvalue %dx.types.ResRet.i32 %109, 3
  %111 = lshr i32 %110, 16
  %112 = icmp ult i32 %24, %111
  %113 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.i32 %113, 2
  %115 = icmp ult i32 %101, %114
  %116 = and i1 %112, %115
  %117 = zext i1 %116 to i32
  %118 = and i1 %34, %116
  br i1 %118, label %119, label %1174, !dx.controlflow.hints !39

; <label>:119                                     ; preds = %99
  %120 = shl nuw nsw i32 %73, 6
  %121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %120, i32 undef)  ; BufferLoad(srv,index,wot)
  %122 = extractvalue %dx.types.ResRet.i32 %121, 0
  %123 = extractvalue %dx.types.ResRet.i32 %121, 1
  %124 = extractvalue %dx.types.ResRet.i32 %121, 3
  %125 = bitcast i32 %122 to float
  %126 = bitcast i32 %123 to float
  %127 = bitcast i32 %124 to float
  %128 = or i32 %120, 16
  %129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %128, i32 undef)  ; BufferLoad(srv,index,wot)
  %130 = extractvalue %dx.types.ResRet.i32 %129, 0
  %131 = extractvalue %dx.types.ResRet.i32 %129, 1
  %132 = extractvalue %dx.types.ResRet.i32 %129, 3
  %133 = bitcast i32 %130 to float
  %134 = bitcast i32 %131 to float
  %135 = bitcast i32 %132 to float
  %136 = or i32 %120, 32
  %137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %136, i32 undef)  ; BufferLoad(srv,index,wot)
  %138 = extractvalue %dx.types.ResRet.i32 %137, 0
  %139 = extractvalue %dx.types.ResRet.i32 %137, 1
  %140 = extractvalue %dx.types.ResRet.i32 %137, 3
  %141 = bitcast i32 %138 to float
  %142 = bitcast i32 %139 to float
  %143 = bitcast i32 %140 to float
  %144 = or i32 %120, 48
  %145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %144, i32 undef)  ; BufferLoad(srv,index,wot)
  %146 = extractvalue %dx.types.ResRet.i32 %145, 0
  %147 = extractvalue %dx.types.ResRet.i32 %145, 1
  %148 = extractvalue %dx.types.ResRet.i32 %145, 3
  %149 = bitcast i32 %146 to float
  %150 = bitcast i32 %147 to float
  %151 = bitcast i32 %148 to float
  %152 = shl nuw nsw i32 %73, 4
  %153 = or i32 %152, 4096
  %154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %153, i32 undef)  ; BufferLoad(srv,index,wot)
  %155 = extractvalue %dx.types.ResRet.i32 %154, 0
  %156 = extractvalue %dx.types.ResRet.i32 %154, 1
  %157 = extractvalue %dx.types.ResRet.i32 %154, 2
  %158 = extractvalue %dx.types.ResRet.i32 %154, 3
  %159 = icmp eq i32 %158, 1
  %160 = add nuw nsw i32 %152, 5120
  %161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %160, i32 undef)  ; BufferLoad(srv,index,wot)
  %162 = extractvalue %dx.types.ResRet.i32 %161, 0
  %163 = extractvalue %dx.types.ResRet.i32 %161, 1
  %164 = bitcast i32 %162 to float
  %165 = bitcast i32 %163 to float
  %166 = icmp eq i32 %70, 2
  br i1 %166, label %167, label %245, !dx.controlflow.hints !40

; <label>:167                                     ; preds = %119
  %168 = shl nsw i32 %71, 5
  %169 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %168, i32 undef)  ; BufferLoad(srv,index,wot)
  %170 = extractvalue %dx.types.ResRet.f32 %169, 0
  %171 = extractvalue %dx.types.ResRet.f32 %169, 1
  %172 = extractvalue %dx.types.ResRet.f32 %169, 2
  %173 = or i32 %168, 16
  %174 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %173, i32 undef)  ; BufferLoad(srv,index,wot)
  %175 = extractvalue %dx.types.ResRet.f32 %174, 0
  %176 = extractvalue %dx.types.ResRet.f32 %174, 1
  %177 = extractvalue %dx.types.ResRet.f32 %174, 2
  %178 = mul i32 %72, 24
  %179 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %178, i32 undef)  ; BufferLoad(srv,index,wot)
  %180 = extractvalue %dx.types.ResRet.f32 %179, 0
  %181 = extractvalue %dx.types.ResRet.f32 %179, 1
  %182 = extractvalue %dx.types.ResRet.f32 %179, 2
  %183 = add i32 %178, 12
  %184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %183, i32 undef)  ; BufferLoad(srv,index,wot)
  %185 = extractvalue %dx.types.ResRet.i32 %184, 0
  %186 = extractvalue %dx.types.ResRet.i32 %184, 1
  %187 = add i32 %178, 20
  %188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %187, i32 undef)  ; BufferLoad(srv,index,wot)
  %189 = extractvalue %dx.types.ResRet.i32 %188, 0
  %190 = and i32 %185, 65535
  %191 = uitofp i32 %190 to float
  %192 = lshr i32 %185, 16
  %193 = uitofp i32 %192 to float
  %194 = and i32 %186, 65535
  %195 = uitofp i32 %194 to float
  %196 = lshr i32 %186, 16
  %197 = uitofp i32 %196 to float
  %198 = fmul fast float %191, 0x3F00001000000000
  %199 = fmul fast float %193, 0x3F00001000000000
  %200 = fmul fast float %195, 0x3F00001000000000
  %201 = fmul fast float %197, 0x3F00001000000000
  %202 = fadd fast float %198, -1.000000e+00
  %203 = fadd fast float %199, -1.000000e+00
  %204 = fadd fast float %200, -1.000000e+00
  %205 = fadd fast float %201, -1.000000e+00
  %206 = and i32 %189, 65535
  %207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %206)  ; LegacyF16ToF32(value)
  %208 = fmul fast float %193, 0x3F10001000000000
  %209 = fadd fast float %208, -2.000000e+00
  %210 = fmul fast float %209, %203
  %211 = fsub fast float 1.000000e+00, %210
  %212 = fmul fast float %195, 0x3F10001000000000
  %213 = fadd fast float %212, -2.000000e+00
  %214 = fmul fast float %213, %204
  %215 = fsub fast float %211, %214
  %216 = fmul fast float %191, 0x3F10001000000000
  %217 = fadd fast float %216, -2.000000e+00
  %218 = fmul fast float %217, %203
  %219 = fmul fast float %213, %205
  %220 = fsub fast float %218, %219
  %221 = fmul fast float %217, %204
  %222 = fmul fast float %209, %205
  %223 = fadd fast float %221, %222
  %224 = fadd fast float %218, %219
  %225 = fmul fast float %217, %202
  %226 = fsub fast float 1.000000e+00, %225
  %227 = fsub fast float %226, %214
  %228 = fmul fast float %209, %204
  %229 = fmul fast float %217, %205
  %230 = fsub fast float %228, %229
  %231 = fsub fast float %221, %222
  %232 = fadd fast float %228, %229
  %233 = fsub fast float %226, %210
  %234 = fmul fast float %215, %207
  %235 = fmul fast float %224, %207
  %236 = fmul fast float %231, %207
  %237 = fmul fast float %220, %207
  %238 = fmul fast float %227, %207
  %239 = fmul fast float %232, %207
  %240 = fmul fast float %223, %207
  %241 = fmul fast float %230, %207
  %242 = fmul fast float %233, %207
  %243 = call float @dx.op.binary.f32(i32 35, float %176, float %177), !dx.precise !41  ; FMax(a,b)
  %244 = call float @dx.op.binary.f32(i32 35, float %175, float %243), !dx.precise !41  ; FMax(a,b)
  br label %459

; <label>:245                                     ; preds = %119
  %246 = icmp eq i32 %70, 0
  br i1 %246, label %247, label %381, !dx.controlflow.hints !42

; <label>:247                                     ; preds = %245
  %248 = and i32 %69, 1
  %249 = icmp eq i32 %248, 0
  %250 = lshr exact i32 %35, 6
  %251 = shl i32 %72, 6
  %252 = add i32 %251, %250
  %253 = or i32 %252, 16
  br i1 %249, label %308, label %254, !dx.controlflow.hints !43

; <label>:254                                     ; preds = %247
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = extractvalue %dx.types.ResRet.i32 %255, 1
  %258 = extractvalue %dx.types.ResRet.i32 %255, 2
  %259 = extractvalue %dx.types.ResRet.i32 %255, 3
  %260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.i32 %260, 0
  %262 = extractvalue %dx.types.ResRet.i32 %260, 1
  %263 = extractvalue %dx.types.ResRet.i32 %260, 2
  %264 = extractvalue %dx.types.ResRet.i32 %260, 3
  %265 = bitcast i32 %256 to float
  %266 = bitcast i32 %257 to float
  %267 = bitcast i32 %258 to float
  %268 = bitcast i32 %259 to float
  %269 = bitcast i32 %261 to float
  %270 = bitcast i32 %262 to float
  %271 = bitcast i32 %263 to float
  %272 = bitcast i32 %264 to float
  %273 = fmul fast float %266, %266
  %274 = fmul fast float %273, 2.000000e+00
  %275 = fsub fast float 1.000000e+00, %274
  %276 = fmul fast float %267, %267
  %277 = fmul fast float %276, 2.000000e+00
  %278 = fsub fast float %275, %277
  %279 = fmul fast float %265, 2.000000e+00
  %280 = fmul fast float %279, %266
  %281 = fmul fast float %267, 2.000000e+00
  %282 = fmul fast float %281, %268
  %283 = fsub fast float %280, %282
  %284 = fmul fast float %267, %265
  %285 = fmul fast float %268, %266
  %286 = fadd fast float %284, %285
  %287 = fmul fast float %286, 2.000000e+00
  %288 = fmul fast float %266, %265
  %289 = fmul fast float %268, %267
  %290 = fadd fast float %288, %289
  %291 = fmul fast float %290, 2.000000e+00
  %292 = fmul fast float %265, %265
  %293 = fmul fast float %292, 2.000000e+00
  %294 = fsub fast float 1.000000e+00, %293
  %295 = fsub fast float %294, %277
  %296 = fmul fast float %266, 2.000000e+00
  %297 = fmul fast float %296, %267
  %298 = fmul fast float %279, %268
  %299 = fsub fast float %297, %298
  %300 = fmul fast float %279, %267
  %301 = fmul fast float %296, %268
  %302 = fsub fast float %300, %301
  %303 = fmul fast float %267, %266
  %304 = fmul fast float %268, %265
  %305 = fadd fast float %303, %304
  %306 = fmul fast float %305, 2.000000e+00
  %307 = fsub fast float %294, %274
  br label %459

; <label>:308                                     ; preds = %247
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = extractvalue %dx.types.ResRet.i32 %309, 1
  %312 = extractvalue %dx.types.ResRet.i32 %309, 2
  %313 = extractvalue %dx.types.ResRet.i32 %309, 3
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = extractvalue %dx.types.ResRet.i32 %314, 1
  %317 = extractvalue %dx.types.ResRet.i32 %314, 2
  %318 = extractvalue %dx.types.ResRet.i32 %314, 3
  %319 = or i32 %252, 48
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = extractvalue %dx.types.ResRet.i32 %320, 1
  %323 = extractvalue %dx.types.ResRet.i32 %320, 2
  %324 = extractvalue %dx.types.ResRet.i32 %320, 3
  %325 = bitcast i32 %310 to float
  %326 = bitcast i32 %311 to float
  %327 = bitcast i32 %312 to float
  %328 = bitcast i32 %313 to float
  %329 = bitcast i32 %315 to float
  %330 = bitcast i32 %316 to float
  %331 = bitcast i32 %317 to float
  %332 = bitcast i32 %318 to float
  %333 = bitcast i32 %321 to float
  %334 = bitcast i32 %322 to float
  %335 = bitcast i32 %323 to float
  %336 = bitcast i32 %324 to float
  %337 = fmul fast float %326, %326
  %338 = fmul fast float %337, 2.000000e+00
  %339 = fsub fast float 1.000000e+00, %338
  %340 = fmul fast float %327, %327
  %341 = fmul fast float %340, 2.000000e+00
  %342 = fsub fast float %339, %341
  %343 = fmul fast float %325, 2.000000e+00
  %344 = fmul fast float %343, %326
  %345 = fmul fast float %327, 2.000000e+00
  %346 = fmul fast float %345, %328
  %347 = fsub fast float %344, %346
  %348 = fmul fast float %327, %325
  %349 = fmul fast float %328, %326
  %350 = fadd fast float %348, %349
  %351 = fmul fast float %350, 2.000000e+00
  %352 = fmul fast float %326, %325
  %353 = fmul fast float %328, %327
  %354 = fadd fast float %352, %353
  %355 = fmul fast float %354, 2.000000e+00
  %356 = fmul fast float %325, %325
  %357 = fmul fast float %356, 2.000000e+00
  %358 = fsub fast float 1.000000e+00, %357
  %359 = fsub fast float %358, %341
  %360 = fmul fast float %326, 2.000000e+00
  %361 = fmul fast float %360, %327
  %362 = fmul fast float %343, %328
  %363 = fsub fast float %361, %362
  %364 = fmul fast float %343, %327
  %365 = fmul fast float %360, %328
  %366 = fsub fast float %364, %365
  %367 = fmul fast float %327, %326
  %368 = fmul fast float %328, %325
  %369 = fadd fast float %367, %368
  %370 = fmul fast float %369, 2.000000e+00
  %371 = fsub fast float %358, %338
  %372 = fmul fast float %342, %332
  %373 = fmul fast float %355, %332
  %374 = fmul fast float %366, %332
  %375 = fmul fast float %347, %332
  %376 = fmul fast float %359, %332
  %377 = fmul fast float %370, %332
  %378 = fmul fast float %351, %332
  %379 = fmul fast float %363, %332
  %380 = fmul fast float %371, %332
  br label %459

; <label>:381                                     ; preds = %245
  %382 = icmp eq i32 %70, 3
  br i1 %382, label %383, label %392, !dx.controlflow.hints !44

; <label>:383                                     ; preds = %381
  %384 = shl nuw nsw i32 %66, 7
  %385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.f32 %385, 0
  %387 = extractvalue %dx.types.ResRet.f32 %385, 1
  %388 = extractvalue %dx.types.ResRet.f32 %385, 2
  %389 = or i32 %384, 12
  %390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.f32 %390, 0
  br label %459

; <label>:392                                     ; preds = %381
  %393 = icmp eq i32 %70, 1
  br i1 %393, label %394, label %459, !dx.controlflow.hints !45

; <label>:394                                     ; preds = %392
  %395 = lshr exact i32 %35, 6
  %396 = shl nuw nsw i32 %30, 6
  %397 = add nuw nsw i32 %396, 1572864
  %398 = add nuw nsw i32 %397, %395
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = extractvalue %dx.types.ResRet.i32 %399, 1
  %402 = extractvalue %dx.types.ResRet.i32 %399, 2
  %403 = extractvalue %dx.types.ResRet.i32 %399, 3
  %404 = or i32 %398, 16
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = extractvalue %dx.types.ResRet.i32 %405, 1
  %408 = extractvalue %dx.types.ResRet.i32 %405, 2
  %409 = bitcast i32 %400 to float
  %410 = bitcast i32 %401 to float
  %411 = bitcast i32 %402 to float
  %412 = bitcast i32 %403 to float
  %413 = bitcast i32 %406 to float
  %414 = bitcast i32 %407 to float
  %415 = bitcast i32 %408 to float
  %416 = fmul fast float %410, %410
  %417 = fmul fast float %416, 2.000000e+00
  %418 = fsub fast float 1.000000e+00, %417
  %419 = fmul fast float %411, %411
  %420 = fmul fast float %419, 2.000000e+00
  %421 = fsub fast float %418, %420
  %422 = fmul fast float %409, 2.000000e+00
  %423 = fmul fast float %422, %410
  %424 = fmul fast float %411, 2.000000e+00
  %425 = fmul fast float %424, %412
  %426 = fsub fast float %423, %425
  %427 = fmul fast float %411, %409
  %428 = fmul fast float %412, %410
  %429 = fadd fast float %427, %428
  %430 = fmul fast float %429, 2.000000e+00
  %431 = fmul fast float %410, %409
  %432 = fmul fast float %412, %411
  %433 = fadd fast float %431, %432
  %434 = fmul fast float %433, 2.000000e+00
  %435 = fmul fast float %409, %409
  %436 = fmul fast float %435, 2.000000e+00
  %437 = fsub fast float 1.000000e+00, %436
  %438 = fsub fast float %437, %420
  %439 = fmul fast float %410, 2.000000e+00
  %440 = fmul fast float %439, %411
  %441 = fmul fast float %422, %412
  %442 = fsub fast float %440, %441
  %443 = fmul fast float %422, %411
  %444 = fmul fast float %439, %412
  %445 = fsub fast float %443, %444
  %446 = fmul fast float %411, %410
  %447 = fmul fast float %412, %409
  %448 = fadd fast float %446, %447
  %449 = fmul fast float %448, 2.000000e+00
  %450 = fsub fast float %437, %417
  %451 = shl nuw nsw i32 %66, 7
  %452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.f32 %452, 0
  %454 = extractvalue %dx.types.ResRet.f32 %452, 1
  %455 = extractvalue %dx.types.ResRet.f32 %452, 2
  %456 = or i32 %451, 12
  %457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.f32 %457, 0
  br label %459

; <label>:459                                     ; preds = %394, %392, %383, %308, %254, %167
  %460 = phi float [ %234, %167 ], [ %278, %254 ], [ %372, %308 ], [ 1.000000e+00, %383 ], [ %421, %394 ], [ 0.000000e+00, %392 ]
  %461 = phi float [ %237, %167 ], [ %283, %254 ], [ %375, %308 ], [ 0.000000e+00, %383 ], [ %426, %394 ], [ 0.000000e+00, %392 ]
  %462 = phi float [ %240, %167 ], [ %287, %254 ], [ %378, %308 ], [ 0.000000e+00, %383 ], [ %430, %394 ], [ 0.000000e+00, %392 ]
  %463 = phi float [ %180, %167 ], [ %269, %254 ], [ %329, %308 ], [ 0.000000e+00, %383 ], [ %413, %394 ], [ 0.000000e+00, %392 ]
  %464 = phi float [ %235, %167 ], [ %291, %254 ], [ %373, %308 ], [ 0.000000e+00, %383 ], [ %434, %394 ], [ 0.000000e+00, %392 ]
  %465 = phi float [ %238, %167 ], [ %295, %254 ], [ %376, %308 ], [ 1.000000e+00, %383 ], [ %438, %394 ], [ 0.000000e+00, %392 ]
  %466 = phi float [ %241, %167 ], [ %299, %254 ], [ %379, %308 ], [ 0.000000e+00, %383 ], [ %442, %394 ], [ 0.000000e+00, %392 ]
  %467 = phi float [ %181, %167 ], [ %270, %254 ], [ %330, %308 ], [ 0.000000e+00, %383 ], [ %414, %394 ], [ 0.000000e+00, %392 ]
  %468 = phi float [ %236, %167 ], [ %302, %254 ], [ %374, %308 ], [ 0.000000e+00, %383 ], [ %445, %394 ], [ 0.000000e+00, %392 ]
  %469 = phi float [ %239, %167 ], [ %306, %254 ], [ %377, %308 ], [ 0.000000e+00, %383 ], [ %449, %394 ], [ 0.000000e+00, %392 ]
  %470 = phi float [ %242, %167 ], [ %307, %254 ], [ %380, %308 ], [ 1.000000e+00, %383 ], [ %450, %394 ], [ 0.000000e+00, %392 ]
  %471 = phi float [ %182, %167 ], [ %271, %254 ], [ %331, %308 ], [ 0.000000e+00, %383 ], [ %415, %394 ], [ 0.000000e+00, %392 ]
  %472 = phi float [ 1.000000e+00, %167 ], [ 1.000000e+00, %254 ], [ 1.000000e+00, %308 ], [ 1.000000e+00, %383 ], [ 1.000000e+00, %394 ], [ 0.000000e+00, %392 ]
  %473 = phi float [ %170, %167 ], [ 0.000000e+00, %254 ], [ %333, %308 ], [ %386, %383 ], [ %453, %394 ], [ 0.000000e+00, %392 ]
  %474 = phi float [ %171, %167 ], [ 0.000000e+00, %254 ], [ %334, %308 ], [ %387, %383 ], [ %454, %394 ], [ 0.000000e+00, %392 ]
  %475 = phi float [ %172, %167 ], [ 0.000000e+00, %254 ], [ %335, %308 ], [ %388, %383 ], [ %455, %394 ], [ 0.000000e+00, %392 ]
  %476 = phi float [ %244, %167 ], [ %272, %254 ], [ %336, %308 ], [ %391, %383 ], [ %458, %394 ], [ 0.000000e+00, %392 ]
  %477 = bitcast float %463 to i32
  %478 = bitcast float %467 to i32
  %479 = bitcast float %471 to i32
  %480 = select i1 %159, i32 0, i32 %155
  %481 = select i1 %159, i32 0, i32 %156
  %482 = select i1 %159, i32 0, i32 %157
  %483 = sub i32 %477, %480
  %484 = sub i32 %478, %481
  %485 = sub i32 %479, %482
  %486 = sitofp i32 %483 to float
  %487 = sitofp i32 %484 to float
  %488 = sitofp i32 %485 to float
  %489 = fmul fast float %486, 0x3F30000000000000
  %490 = fmul fast float %487, 0x3F30000000000000
  %491 = fmul fast float %488, 0x3F30000000000000
  %492 = shl i32 %106, 6
  %493 = add i32 %492, %24
  %494 = mul i32 %493, 3
  %495 = mul i32 %493, 6
  %496 = and i32 %495, -4
  %497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.i32 %497, 0
  %499 = extractvalue %dx.types.ResRet.i32 %497, 1
  %500 = and i32 %494, 1
  %501 = icmp eq i32 %500, 0
  %502 = lshr i32 %498, 16
  %503 = and i32 %499, 65535
  %504 = lshr i32 %499, 16
  %505 = and i32 %498, 65535
  %506 = select i1 %501, i32 %505, i32 %502
  %507 = select i1 %501, i32 %502, i32 %503
  %508 = select i1 %501, i32 %503, i32 %504
  %509 = and i32 %69, 1
  %510 = icmp eq i32 %509, 0
  %511 = shl nuw nsw i32 %506, 3
  %512 = shl nuw nsw i32 %507, 3
  %513 = shl nuw nsw i32 %508, 3
  br i1 %510, label %534, label %514, !dx.controlflow.hints !46

; <label>:514                                     ; preds = %459
  %515 = shl i32 %100, 3
  %516 = add i32 %101, %515
  %517 = add i32 %511, %516
  %518 = add i32 %512, %516
  %519 = add i32 %513, %516
  %520 = call i32 @dx.op.binary.i32(i32 37, i32 %518, i32 %519)  ; IMax(a,b)
  %521 = call i32 @dx.op.binary.i32(i32 37, i32 %517, i32 %520)  ; IMax(a,b)
  %522 = add nsw i32 %521, 8
  %523 = icmp ult i32 %522, %114
  br i1 %523, label %524, label %568, !dx.controlflow.hints !47

; <label>:524                                     ; preds = %514
  %525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %517, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.i32 %525, 0
  %527 = extractvalue %dx.types.ResRet.i32 %525, 1
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = extractvalue %dx.types.ResRet.i32 %528, 1
  %531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.i32 %531, 0
  %533 = extractvalue %dx.types.ResRet.i32 %531, 1
  br label %568

; <label>:534                                     ; preds = %459
  %535 = lshr i32 %506, 7
  %536 = add i32 %535, %102
  %537 = shl i32 %536, 2
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = shl i32 %539, 10
  %541 = and i32 %511, 1016
  %542 = or i32 %540, %541
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = extractvalue %dx.types.ResRet.i32 %543, 1
  %546 = lshr i32 %507, 7
  %547 = add i32 %546, %102
  %548 = shl i32 %547, 2
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = shl i32 %550, 10
  %552 = and i32 %512, 1016
  %553 = or i32 %551, %552
  %554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %553, i32 undef)  ; BufferLoad(srv,index,wot)
  %555 = extractvalue %dx.types.ResRet.i32 %554, 0
  %556 = extractvalue %dx.types.ResRet.i32 %554, 1
  %557 = lshr i32 %508, 7
  %558 = add i32 %557, %102
  %559 = shl i32 %558, 2
  %560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %559, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.i32 %560, 0
  %562 = shl i32 %561, 10
  %563 = and i32 %513, 1016
  %564 = or i32 %562, %563
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %564, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = extractvalue %dx.types.ResRet.i32 %565, 1
  br label %568

; <label>:568                                     ; preds = %534, %524, %514
  %569 = phi i32 [ %526, %524 ], [ %544, %534 ], [ 0, %514 ]
  %570 = phi i32 [ %527, %524 ], [ %545, %534 ], [ 0, %514 ]
  %571 = phi i32 [ %529, %524 ], [ %555, %534 ], [ 0, %514 ]
  %572 = phi i32 [ %530, %524 ], [ %556, %534 ], [ 0, %514 ]
  %573 = phi i32 [ %532, %524 ], [ %566, %534 ], [ 0, %514 ]
  %574 = phi i32 [ %533, %524 ], [ %567, %534 ], [ 0, %514 ]
  %575 = and i32 %569, 2097151
  %576 = uitofp i32 %575 to float
  %577 = lshr i32 %569, 21
  %578 = shl i32 %570, 11
  %579 = and i32 %578, 2095104
  %580 = or i32 %579, %577
  %581 = uitofp i32 %580 to float
  %582 = lshr i32 %570, 10
  %583 = and i32 %582, 2097151
  %584 = uitofp i32 %583 to float
  br i1 %37, label %595, label %585, !dx.controlflow.hints !48

; <label>:585                                     ; preds = %568
  %586 = fdiv float %576, 2.097151e+06
  %587 = fdiv float %581, 2.097151e+06
  %588 = fdiv float %584, 2.097151e+06
  %589 = fmul float %586, 2.000000e+00
  %590 = fmul float %587, 2.000000e+00
  %591 = fmul float %588, 2.000000e+00
  %592 = fadd float %589, -1.000000e+00
  %593 = fadd float %590, -1.000000e+00
  %594 = fadd float %591, -1.000000e+00
  br label %595

; <label>:595                                     ; preds = %585, %568
  %596 = phi float [ %592, %585 ], [ %576, %568 ]
  %597 = phi float [ %593, %585 ], [ %581, %568 ]
  %598 = phi float [ %594, %585 ], [ %584, %568 ]
  %599 = fmul float %476, %598
  %600 = fadd float %475, %599
  %601 = fmul float %476, %597
  %602 = fadd float %474, %601
  %603 = fmul float %476, %596
  %604 = fadd float %473, %603
  %605 = and i32 %571, 2097151
  %606 = uitofp i32 %605 to float
  %607 = lshr i32 %571, 21
  %608 = shl i32 %572, 11
  %609 = and i32 %608, 2095104
  %610 = or i32 %609, %607
  %611 = uitofp i32 %610 to float
  %612 = lshr i32 %572, 10
  %613 = and i32 %612, 2097151
  %614 = uitofp i32 %613 to float
  br i1 %37, label %625, label %615, !dx.controlflow.hints !48

; <label>:615                                     ; preds = %595
  %616 = fdiv float %606, 2.097151e+06
  %617 = fdiv float %611, 2.097151e+06
  %618 = fdiv float %614, 2.097151e+06
  %619 = fmul float %616, 2.000000e+00
  %620 = fmul float %617, 2.000000e+00
  %621 = fmul float %618, 2.000000e+00
  %622 = fadd float %619, -1.000000e+00
  %623 = fadd float %620, -1.000000e+00
  %624 = fadd float %621, -1.000000e+00
  br label %625

; <label>:625                                     ; preds = %615, %595
  %626 = phi float [ %622, %615 ], [ %606, %595 ]
  %627 = phi float [ %623, %615 ], [ %611, %595 ]
  %628 = phi float [ %624, %615 ], [ %614, %595 ]
  %629 = fmul float %476, %628
  %630 = fadd float %475, %629
  %631 = fmul float %476, %627
  %632 = fadd float %474, %631
  %633 = fmul float %476, %626
  %634 = fadd float %473, %633
  %635 = and i32 %573, 2097151
  %636 = uitofp i32 %635 to float
  %637 = lshr i32 %573, 21
  %638 = shl i32 %574, 11
  %639 = and i32 %638, 2095104
  %640 = or i32 %639, %637
  %641 = uitofp i32 %640 to float
  %642 = lshr i32 %574, 10
  %643 = and i32 %642, 2097151
  %644 = uitofp i32 %643 to float
  br i1 %37, label %655, label %645, !dx.controlflow.hints !48

; <label>:645                                     ; preds = %625
  %646 = fdiv float %636, 2.097151e+06
  %647 = fdiv float %641, 2.097151e+06
  %648 = fdiv float %644, 2.097151e+06
  %649 = fmul float %646, 2.000000e+00
  %650 = fmul float %647, 2.000000e+00
  %651 = fmul float %648, 2.000000e+00
  %652 = fadd float %649, -1.000000e+00
  %653 = fadd float %650, -1.000000e+00
  %654 = fadd float %651, -1.000000e+00
  br label %655

; <label>:655                                     ; preds = %645, %625
  %656 = phi float [ %652, %645 ], [ %636, %625 ]
  %657 = phi float [ %653, %645 ], [ %641, %625 ]
  %658 = phi float [ %654, %645 ], [ %644, %625 ]
  %659 = fmul float %476, %658
  %660 = fadd float %475, %659
  %661 = fmul float %476, %657
  %662 = fadd float %474, %661
  %663 = fmul float %476, %656
  %664 = fadd float %473, %663
  %665 = fmul fast float %604, %460
  %666 = call float @dx.op.tertiary.f32(i32 46, float %602, float %461, float %665)  ; FMad(a,b,c)
  %667 = call float @dx.op.tertiary.f32(i32 46, float %600, float %462, float %666)  ; FMad(a,b,c)
  %668 = fadd fast float %667, %489
  %669 = fmul fast float %604, %464
  %670 = call float @dx.op.tertiary.f32(i32 46, float %602, float %465, float %669)  ; FMad(a,b,c)
  %671 = call float @dx.op.tertiary.f32(i32 46, float %600, float %466, float %670)  ; FMad(a,b,c)
  %672 = fadd fast float %671, %490
  %673 = fmul fast float %604, %468
  %674 = call float @dx.op.tertiary.f32(i32 46, float %602, float %469, float %673)  ; FMad(a,b,c)
  %675 = call float @dx.op.tertiary.f32(i32 46, float %600, float %470, float %674)  ; FMad(a,b,c)
  %676 = fadd fast float %675, %491
  %677 = fmul fast float %668, %125
  %678 = call float @dx.op.tertiary.f32(i32 46, float %672, float %133, float %677)  ; FMad(a,b,c)
  %679 = call float @dx.op.tertiary.f32(i32 46, float %676, float %141, float %678)  ; FMad(a,b,c)
  %680 = call float @dx.op.tertiary.f32(i32 46, float %472, float %149, float %679)  ; FMad(a,b,c)
  %681 = fmul fast float %668, %126
  %682 = call float @dx.op.tertiary.f32(i32 46, float %672, float %134, float %681)  ; FMad(a,b,c)
  %683 = call float @dx.op.tertiary.f32(i32 46, float %676, float %142, float %682)  ; FMad(a,b,c)
  %684 = call float @dx.op.tertiary.f32(i32 46, float %472, float %150, float %683)  ; FMad(a,b,c)
  %685 = fmul fast float %668, %127
  %686 = call float @dx.op.tertiary.f32(i32 46, float %672, float %135, float %685)  ; FMad(a,b,c)
  %687 = call float @dx.op.tertiary.f32(i32 46, float %676, float %143, float %686)  ; FMad(a,b,c)
  %688 = call float @dx.op.tertiary.f32(i32 46, float %472, float %151, float %687)  ; FMad(a,b,c)
  %689 = fmul fast float %634, %460
  %690 = call float @dx.op.tertiary.f32(i32 46, float %632, float %461, float %689)  ; FMad(a,b,c)
  %691 = call float @dx.op.tertiary.f32(i32 46, float %630, float %462, float %690)  ; FMad(a,b,c)
  %692 = fadd fast float %691, %489
  %693 = fmul fast float %634, %464
  %694 = call float @dx.op.tertiary.f32(i32 46, float %632, float %465, float %693)  ; FMad(a,b,c)
  %695 = call float @dx.op.tertiary.f32(i32 46, float %630, float %466, float %694)  ; FMad(a,b,c)
  %696 = fadd fast float %695, %490
  %697 = fmul fast float %634, %468
  %698 = call float @dx.op.tertiary.f32(i32 46, float %632, float %469, float %697)  ; FMad(a,b,c)
  %699 = call float @dx.op.tertiary.f32(i32 46, float %630, float %470, float %698)  ; FMad(a,b,c)
  %700 = fadd fast float %699, %491
  %701 = fmul fast float %692, %125
  %702 = call float @dx.op.tertiary.f32(i32 46, float %696, float %133, float %701)  ; FMad(a,b,c)
  %703 = call float @dx.op.tertiary.f32(i32 46, float %700, float %141, float %702)  ; FMad(a,b,c)
  %704 = call float @dx.op.tertiary.f32(i32 46, float %472, float %149, float %703)  ; FMad(a,b,c)
  %705 = fmul fast float %692, %126
  %706 = call float @dx.op.tertiary.f32(i32 46, float %696, float %134, float %705)  ; FMad(a,b,c)
  %707 = call float @dx.op.tertiary.f32(i32 46, float %700, float %142, float %706)  ; FMad(a,b,c)
  %708 = call float @dx.op.tertiary.f32(i32 46, float %472, float %150, float %707)  ; FMad(a,b,c)
  %709 = fmul fast float %692, %127
  %710 = call float @dx.op.tertiary.f32(i32 46, float %696, float %135, float %709)  ; FMad(a,b,c)
  %711 = call float @dx.op.tertiary.f32(i32 46, float %700, float %143, float %710)  ; FMad(a,b,c)
  %712 = call float @dx.op.tertiary.f32(i32 46, float %472, float %151, float %711)  ; FMad(a,b,c)
  %713 = fmul fast float %664, %460
  %714 = call float @dx.op.tertiary.f32(i32 46, float %662, float %461, float %713)  ; FMad(a,b,c)
  %715 = call float @dx.op.tertiary.f32(i32 46, float %660, float %462, float %714)  ; FMad(a,b,c)
  %716 = fadd fast float %715, %489
  %717 = fmul fast float %664, %464
  %718 = call float @dx.op.tertiary.f32(i32 46, float %662, float %465, float %717)  ; FMad(a,b,c)
  %719 = call float @dx.op.tertiary.f32(i32 46, float %660, float %466, float %718)  ; FMad(a,b,c)
  %720 = fadd fast float %719, %490
  %721 = fmul fast float %664, %468
  %722 = call float @dx.op.tertiary.f32(i32 46, float %662, float %469, float %721)  ; FMad(a,b,c)
  %723 = call float @dx.op.tertiary.f32(i32 46, float %660, float %470, float %722)  ; FMad(a,b,c)
  %724 = fadd fast float %723, %491
  %725 = fmul fast float %716, %125
  %726 = call float @dx.op.tertiary.f32(i32 46, float %720, float %133, float %725)  ; FMad(a,b,c)
  %727 = call float @dx.op.tertiary.f32(i32 46, float %724, float %141, float %726)  ; FMad(a,b,c)
  %728 = call float @dx.op.tertiary.f32(i32 46, float %472, float %149, float %727)  ; FMad(a,b,c)
  %729 = fmul fast float %716, %126
  %730 = call float @dx.op.tertiary.f32(i32 46, float %720, float %134, float %729)  ; FMad(a,b,c)
  %731 = call float @dx.op.tertiary.f32(i32 46, float %724, float %142, float %730)  ; FMad(a,b,c)
  %732 = call float @dx.op.tertiary.f32(i32 46, float %472, float %150, float %731)  ; FMad(a,b,c)
  %733 = fmul fast float %716, %127
  %734 = call float @dx.op.tertiary.f32(i32 46, float %720, float %135, float %733)  ; FMad(a,b,c)
  %735 = call float @dx.op.tertiary.f32(i32 46, float %724, float %143, float %734)  ; FMad(a,b,c)
  %736 = call float @dx.op.tertiary.f32(i32 46, float %472, float %151, float %735)  ; FMad(a,b,c)
  %737 = and i32 %68, 1
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %755, label %739, !dx.controlflow.hints !49

; <label>:739                                     ; preds = %655
  %740 = fmul fast float %736, %708
  %741 = fmul fast float %732, %712
  %742 = fsub fast float %740, %741
  %743 = fmul fast float %736, %704
  %744 = fmul fast float %728, %712
  %745 = fsub fast float %743, %744
  %746 = fmul fast float %732, %704
  %747 = fmul fast float %728, %708
  %748 = fsub fast float %746, %747
  %749 = fmul fast float %742, %680
  %750 = fmul fast float %745, %684
  %751 = fmul fast float %748, %688
  %752 = fsub fast float %751, %750
  %753 = fadd fast float %752, %749
  %754 = fcmp fast ogt float %753, 0.000000e+00
  br i1 %754, label %1171, label %755, !dx.controlflow.hints !50

; <label>:755                                     ; preds = %739, %655
  %756 = fcmp fast olt float %688, 0.000000e+00
  %757 = zext i1 %756 to i32
  %758 = call float @dx.op.unary.f32(i32 6, float %688)  ; FAbs(value)
  %759 = fdiv fast float 1.000000e+00, %758
  %760 = fmul fast float %680, %759
  %761 = fmul fast float %684, %759
  %762 = fmul fast float %760, 5.000000e-01
  %763 = fmul fast float %761, 5.000000e-01
  %764 = fadd fast float %762, 5.000000e-01
  %765 = fsub fast float 5.000000e-01, %763
  %766 = call float @dx.op.unary.f32(i32 7, float %764)  ; Saturate(value)
  %767 = call float @dx.op.unary.f32(i32 7, float %765)  ; Saturate(value)
  %768 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %688)  ; FMax(a,b)
  %769 = fcmp fast olt float %712, 0.000000e+00
  %770 = zext i1 %769 to i32
  %771 = add nuw nsw i32 %770, %757
  %772 = call float @dx.op.unary.f32(i32 6, float %712)  ; FAbs(value)
  %773 = fdiv fast float 1.000000e+00, %772
  %774 = fmul fast float %704, %773
  %775 = fmul fast float %708, %773
  %776 = fmul fast float %774, 5.000000e-01
  %777 = fmul fast float %775, 5.000000e-01
  %778 = fadd fast float %776, 5.000000e-01
  %779 = fsub fast float 5.000000e-01, %777
  %780 = call float @dx.op.unary.f32(i32 7, float %778)  ; Saturate(value)
  %781 = call float @dx.op.unary.f32(i32 7, float %779)  ; Saturate(value)
  %782 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %712)  ; FMax(a,b)
  %783 = fcmp fast olt float %736, 0.000000e+00
  %784 = zext i1 %783 to i32
  %785 = add nuw nsw i32 %784, %771
  %786 = call float @dx.op.unary.f32(i32 6, float %736)  ; FAbs(value)
  %787 = fdiv fast float 1.000000e+00, %786
  %788 = fmul fast float %728, %787
  %789 = fmul fast float %732, %787
  %790 = fmul fast float %788, 5.000000e-01
  %791 = fmul fast float %789, 5.000000e-01
  %792 = fadd fast float %790, 5.000000e-01
  %793 = fsub fast float 5.000000e-01, %791
  %794 = call float @dx.op.unary.f32(i32 7, float %792)  ; Saturate(value)
  %795 = call float @dx.op.unary.f32(i32 7, float %793)  ; Saturate(value)
  %796 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %736)  ; FMax(a,b)
  %797 = call float @dx.op.binary.f32(i32 36, float %780, float %794)  ; FMin(a,b)
  %798 = call float @dx.op.binary.f32(i32 36, float %766, float %797)  ; FMin(a,b)
  %799 = call float @dx.op.binary.f32(i32 36, float %781, float %795)  ; FMin(a,b)
  %800 = call float @dx.op.binary.f32(i32 36, float %767, float %799)  ; FMin(a,b)
  %801 = call float @dx.op.binary.f32(i32 35, float %780, float %794)  ; FMax(a,b)
  %802 = call float @dx.op.binary.f32(i32 35, float %766, float %801)  ; FMax(a,b)
  %803 = call float @dx.op.binary.f32(i32 35, float %781, float %795)  ; FMax(a,b)
  %804 = call float @dx.op.binary.f32(i32 35, float %767, float %803)  ; FMax(a,b)
  %805 = and i32 %68, 4
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %831, label %807, !dx.controlflow.hints !51

; <label>:807                                     ; preds = %755
  %808 = icmp eq i32 %785, 3
  br i1 %808, label %1171, label %809, !dx.controlflow.hints !52

; <label>:809                                     ; preds = %807
  %810 = fcmp fast ole float %802, 0.000000e+00
  %811 = fcmp fast ole float %804, 0.000000e+00
  %812 = or i1 %810, %811
  %813 = fcmp fast oge float %798, 1.000000e+00
  %814 = or i1 %813, %812
  %815 = fcmp fast oge float %800, 1.000000e+00
  %816 = or i1 %815, %814
  br i1 %816, label %1171, label %817, !dx.controlflow.hints !53

; <label>:817                                     ; preds = %809
  %818 = fmul fast float %798, %164
  %819 = fmul fast float %800, %165
  %820 = fmul fast float %802, %164
  %821 = fmul fast float %804, %165
  %822 = icmp eq i32 %785, 0
  %823 = call float @dx.op.unary.f32(i32 26, float %818)  ; Round_ne(value)
  %824 = call float @dx.op.unary.f32(i32 26, float %819)  ; Round_ne(value)
  %825 = call float @dx.op.unary.f32(i32 26, float %820)  ; Round_ne(value)
  %826 = call float @dx.op.unary.f32(i32 26, float %821)  ; Round_ne(value)
  %827 = fcmp fast oeq float %823, %825
  %828 = fcmp fast oeq float %824, %826
  %829 = or i1 %827, %828
  %830 = and i1 %822, %829
  br i1 %830, label %1171, label %831, !dx.controlflow.hints !54

; <label>:831                                     ; preds = %817, %755
  %832 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %833 = extractvalue %dx.types.CBufRet.i32 %832, 0
  %834 = icmp ne i32 %833, 0
  %835 = and i32 %68, 2
  %836 = icmp ne i32 %835, 0
  %837 = and i1 %836, %834
  br i1 %837, label %838, label %1168, !dx.controlflow.hints !55

; <label>:838                                     ; preds = %831
  %839 = and i32 %73, 254
  %840 = icmp eq i32 %839, 62
  %841 = call float @dx.op.binary.f32(i32 36, float %782, float %796)  ; FMin(a,b)
  %842 = call float @dx.op.binary.f32(i32 36, float %768, float %841)  ; FMin(a,b)
  %843 = and i32 %833, 2
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %997, label %845, !dx.controlflow.hints !56

; <label>:845                                     ; preds = %838
  %846 = fsub fast float %802, %798
  %847 = fsub fast float %804, %800
  %848 = fmul fast float %846, 6.400000e+01
  %849 = fmul fast float %847, 6.400000e+01
  %850 = call float @dx.op.unary.f32(i32 28, float %848)  ; Round_pi(value)
  %851 = call float @dx.op.unary.f32(i32 28, float %849)  ; Round_pi(value)
  %852 = call float @dx.op.binary.f32(i32 35, float %850, float %851)  ; FMax(a,b)
  %853 = call float @dx.op.unary.f32(i32 23, float %852)  ; Log(value)
  %854 = call float @dx.op.unary.f32(i32 28, float %853)  ; Round_pi(value)
  %855 = fptosi float %854 to i32
  %856 = call i32 @dx.op.binary.i32(i32 37, i32 %855, i32 0)  ; IMax(a,b)
  %857 = call i32 @dx.op.binary.i32(i32 38, i32 %856, i32 6)  ; IMin(a,b)
  %858 = and i32 %857, 31
  %859 = lshr i32 64, %858
  %860 = uitofp i32 %859 to float
  %861 = call float @dx.op.binary.f32(i32 35, float %860, float 1.000000e+00)  ; FMax(a,b)
  %862 = fdiv fast float 1.000000e+00, %861
  %863 = fmul fast float %861, %798
  %864 = fmul fast float %861, %800
  %865 = call float @dx.op.unary.f32(i32 27, float %863)  ; Round_ni(value)
  %866 = call float @dx.op.unary.f32(i32 27, float %864)  ; Round_ni(value)
  %867 = call float @dx.op.binary.f32(i32 35, float %865, float 0.000000e+00)  ; FMax(a,b)
  %868 = call float @dx.op.binary.f32(i32 35, float %866, float 0.000000e+00)  ; FMax(a,b)
  %869 = call float @dx.op.binary.f32(i32 36, float %867, float %861)  ; FMin(a,b)
  %870 = call float @dx.op.binary.f32(i32 36, float %868, float %861)  ; FMin(a,b)
  %871 = fmul fast float %861, %802
  %872 = fmul fast float %861, %804
  %873 = call float @dx.op.unary.f32(i32 28, float %871)  ; Round_pi(value)
  %874 = call float @dx.op.unary.f32(i32 28, float %872)  ; Round_pi(value)
  %875 = call float @dx.op.binary.f32(i32 35, float %873, float 0.000000e+00)  ; FMax(a,b)
  %876 = call float @dx.op.binary.f32(i32 35, float %874, float 0.000000e+00)  ; FMax(a,b)
  %877 = call float @dx.op.binary.f32(i32 36, float %875, float %861)  ; FMin(a,b)
  %878 = call float @dx.op.binary.f32(i32 36, float %876, float %861)  ; FMin(a,b)
  %879 = fadd fast float %869, 1.000000e+00
  %880 = fmul fast float %879, %862
  %881 = fmul fast float %862, 2.000000e+00
  %882 = fsub fast float %877, %869
  %883 = fsub fast float %878, %870
  %884 = fmul fast float %882, 5.000000e-01
  %885 = fmul fast float %883, 5.000000e-01
  %886 = call float @dx.op.unary.f32(i32 28, float %884)  ; Round_pi(value)
  %887 = call float @dx.op.unary.f32(i32 28, float %885)  ; Round_pi(value)
  %888 = fptoui float %886 to i32
  %889 = fptoui float %887 to i32
  %890 = shl i32 1, %858
  %891 = add i32 %890, -1
  %892 = lshr i32 %891, 6
  %893 = and i32 %892, 1
  %894 = sub nsw i32 0, %893
  %895 = icmp eq i32 %889, %894
  br i1 %895, label %977, label %896

; <label>:896                                     ; preds = %845
  %897 = fadd fast float %870, 1.000000e+00
  %898 = fmul fast float %897, %862
  %899 = and i32 %892, 1
  %900 = add i32 %888, %899
  %901 = add i32 %889, %899
  br label %902

; <label>:902                                     ; preds = %970, %896
  %903 = phi i32 [ %971, %970 ], [ 1, %896 ]
  %904 = phi float [ %972, %970 ], [ 0.000000e+00, %896 ]
  %905 = phi float [ %973, %970 ], [ %898, %896 ]
  %906 = phi i32 [ %974, %970 ], [ 0, %896 ]
  %907 = sub nsw i32 0, %893
  %908 = icmp eq i32 %888, %907
  br i1 %908, label %970, label %909

; <label>:909                                     ; preds = %902
  br label %910

; <label>:910                                     ; preds = %910, %909
  %911 = phi i32 [ %961, %910 ], [ %903, %909 ]
  %912 = phi float [ %965, %910 ], [ %904, %909 ]
  %913 = phi float [ %966, %910 ], [ %880, %909 ]
  %914 = phi i32 [ %967, %910 ], [ 0, %909 ]
  %915 = sitofp i32 %857 to float
  %916 = fmul fast float %862, 0xBFDFE00000000000
  %917 = fadd fast float %916, %913
  %918 = fmul fast float %862, 0x3FE0100000000000
  %919 = fadd fast float %918, %905
  %920 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %917, float %919, float undef, float undef, i32 0, i32 0, i32 undef, float %915)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %921 = extractvalue %dx.types.ResRet.f32 %920, 0
  %922 = fadd fast float %918, %913
  %923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %922, float %919, float undef, float undef, i32 0, i32 0, i32 undef, float %915)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %924 = extractvalue %dx.types.ResRet.f32 %923, 0
  %925 = fadd fast float %916, %905
  %926 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %922, float %925, float undef, float undef, i32 0, i32 0, i32 undef, float %915)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %927 = extractvalue %dx.types.ResRet.f32 %926, 0
  %928 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %917, float %925, float undef, float undef, i32 0, i32 0, i32 undef, float %915)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %929 = extractvalue %dx.types.ResRet.f32 %928, 0
  %930 = fcmp fast olt float %921, -1.000000e+00
  %931 = fcmp fast ogt float %921, -1.000000e+00
  %932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %933 = extractvalue %dx.types.CBufRet.f32 %932, 1
  %934 = select i1 %931, float %933, float 1.000000e+00
  %935 = fadd fast float %921, 1.000000e+00
  %936 = fmul fast float %934, %935
  %937 = call float @dx.op.unary.f32(i32 6, float %936)  ; FAbs(value)
  %938 = fcmp fast olt float %924, -1.000000e+00
  %939 = fcmp fast ogt float %924, -1.000000e+00
  %940 = select i1 %939, float %933, float 1.000000e+00
  %941 = fadd fast float %924, 1.000000e+00
  %942 = fmul fast float %940, %941
  %943 = call float @dx.op.unary.f32(i32 6, float %942)  ; FAbs(value)
  %944 = fcmp fast olt float %927, -1.000000e+00
  %945 = fcmp fast ogt float %927, -1.000000e+00
  %946 = select i1 %945, float %933, float 1.000000e+00
  %947 = fadd fast float %927, 1.000000e+00
  %948 = fmul fast float %946, %947
  %949 = call float @dx.op.unary.f32(i32 6, float %948)  ; FAbs(value)
  %950 = fcmp fast olt float %929, -1.000000e+00
  %951 = fcmp fast ogt float %929, -1.000000e+00
  %952 = select i1 %951, float %933, float 1.000000e+00
  %953 = fadd fast float %929, 1.000000e+00
  %954 = fmul fast float %952, %953
  %955 = call float @dx.op.unary.f32(i32 6, float %954)  ; FAbs(value)
  %956 = and i1 %930, %938
  %957 = and i1 %956, %944
  %958 = and i1 %957, %950
  %959 = icmp ne i32 %911, 0
  %960 = and i1 %959, %958
  %961 = zext i1 %960 to i32
  %962 = call float @dx.op.binary.f32(i32 35, float %943, float %949)  ; FMax(a,b)
  %963 = call float @dx.op.binary.f32(i32 35, float %937, float %962)  ; FMax(a,b)
  %964 = call float @dx.op.binary.f32(i32 35, float %963, float %955)  ; FMax(a,b)
  %965 = call float @dx.op.binary.f32(i32 35, float %964, float %912)  ; FMax(a,b)
  %966 = fadd fast float %913, %881
  %967 = add nuw i32 %914, 1
  %968 = icmp eq i32 %967, %900
  br i1 %968, label %969, label %910

; <label>:969                                     ; preds = %910
  br label %970

; <label>:970                                     ; preds = %969, %902
  %971 = phi i32 [ %903, %902 ], [ %961, %969 ]
  %972 = phi float [ %904, %902 ], [ %965, %969 ]
  %973 = fadd fast float %905, %881
  %974 = add nuw i32 %906, 1
  %975 = icmp eq i32 %974, %901
  br i1 %975, label %976, label %902

; <label>:976                                     ; preds = %970
  br label %977

; <label>:977                                     ; preds = %976, %845
  %978 = phi i32 [ 1, %845 ], [ %971, %976 ]
  %979 = phi float [ 0.000000e+00, %845 ], [ %972, %976 ]
  %980 = icmp eq i32 %978, 0
  %981 = and i1 %840, %980
  br i1 %981, label %994, label %982, !dx.controlflow.hints !57

; <label>:982                                     ; preds = %977
  %983 = fcmp fast une float %842, 0.000000e+00
  %984 = bitcast float %842 to i32
  %985 = and i32 %984, 2139095040
  %986 = add nsw i32 %985, -1056964608
  %987 = ashr exact i32 %986, 23
  %988 = add nsw i32 %987, -10
  %989 = sitofp i32 %988 to float
  %990 = select i1 %983, float %989, float -1.000000e+01
  %991 = call float @dx.op.unary.f32(i32 21, float %990)  ; Exp(value)
  %992 = fsub fast float %842, %991
  %993 = fcmp fast ogt float %979, %992
  br label %994

; <label>:994                                     ; preds = %982, %977
  %995 = phi i1 [ %993, %982 ], [ true, %977 ]
  %996 = zext i1 %995 to i32
  br label %997

; <label>:997                                     ; preds = %994, %838
  %998 = phi i32 [ %996, %994 ], [ 1, %838 ]
  %999 = and i32 %833, 1
  %1000 = icmp ne i32 %999, 0
  %1001 = icmp ne i32 %998, 0
  %1002 = and i1 %1001, %1000
  br i1 %1002, label %1003, label %1168, !dx.controlflow.hints !58

; <label>:1003                                    ; preds = %997
  %1004 = extractvalue %dx.types.CBufRet.i32 %832, 3
  %1005 = extractvalue %dx.types.CBufRet.i32 %832, 1
  %1006 = extractvalue %dx.types.CBufRet.i32 %832, 2
  %1007 = fsub fast float %802, %798
  %1008 = fsub fast float %804, %800
  %1009 = uitofp i32 %1005 to float
  %1010 = uitofp i32 %1006 to float
  %1011 = fmul fast float %1009, %1007
  %1012 = fmul fast float %1010, %1008
  %1013 = call float @dx.op.unary.f32(i32 28, float %1011)  ; Round_pi(value)
  %1014 = call float @dx.op.unary.f32(i32 28, float %1012)  ; Round_pi(value)
  %1015 = call float @dx.op.binary.f32(i32 35, float %1013, float %1014)  ; FMax(a,b)
  %1016 = call float @dx.op.unary.f32(i32 23, float %1015)  ; Log(value)
  %1017 = call float @dx.op.unary.f32(i32 28, float %1016)  ; Round_pi(value)
  %1018 = fptosi float %1017 to i32
  %1019 = call i32 @dx.op.binary.i32(i32 37, i32 %1018, i32 0)  ; IMax(a,b)
  %1020 = call i32 @dx.op.binary.i32(i32 38, i32 %1019, i32 %1004)  ; IMin(a,b)
  %1021 = and i32 %1020, 31
  %1022 = lshr i32 %1005, %1021
  %1023 = lshr i32 %1006, %1021
  %1024 = uitofp i32 %1022 to float
  %1025 = uitofp i32 %1023 to float
  %1026 = call float @dx.op.binary.f32(i32 35, float %1024, float 1.000000e+00)  ; FMax(a,b)
  %1027 = call float @dx.op.binary.f32(i32 35, float %1025, float 1.000000e+00)  ; FMax(a,b)
  %1028 = fdiv fast float 1.000000e+00, %1026
  %1029 = fdiv fast float 1.000000e+00, %1027
  %1030 = fmul fast float %1026, %798
  %1031 = fmul fast float %1027, %800
  %1032 = call float @dx.op.unary.f32(i32 27, float %1030)  ; Round_ni(value)
  %1033 = call float @dx.op.unary.f32(i32 27, float %1031)  ; Round_ni(value)
  %1034 = call float @dx.op.binary.f32(i32 35, float %1032, float 0.000000e+00)  ; FMax(a,b)
  %1035 = call float @dx.op.binary.f32(i32 35, float %1033, float 0.000000e+00)  ; FMax(a,b)
  %1036 = call float @dx.op.binary.f32(i32 36, float %1034, float %1026)  ; FMin(a,b)
  %1037 = call float @dx.op.binary.f32(i32 36, float %1035, float %1027)  ; FMin(a,b)
  %1038 = fmul fast float %1026, %802
  %1039 = fmul fast float %1027, %804
  %1040 = call float @dx.op.unary.f32(i32 28, float %1038)  ; Round_pi(value)
  %1041 = call float @dx.op.unary.f32(i32 28, float %1039)  ; Round_pi(value)
  %1042 = call float @dx.op.binary.f32(i32 35, float %1040, float 0.000000e+00)  ; FMax(a,b)
  %1043 = call float @dx.op.binary.f32(i32 35, float %1041, float 0.000000e+00)  ; FMax(a,b)
  %1044 = call float @dx.op.binary.f32(i32 36, float %1042, float %1026)  ; FMin(a,b)
  %1045 = call float @dx.op.binary.f32(i32 36, float %1043, float %1027)  ; FMin(a,b)
  %1046 = fadd fast float %1036, 1.000000e+00
  %1047 = fmul fast float %1046, %1028
  %1048 = fmul fast float %1028, 2.000000e+00
  %1049 = fmul fast float %1029, 2.000000e+00
  %1050 = fsub fast float %1044, %1036
  %1051 = fsub fast float %1045, %1037
  %1052 = fmul fast float %1050, 5.000000e-01
  %1053 = fmul fast float %1051, 5.000000e-01
  %1054 = call float @dx.op.unary.f32(i32 28, float %1052)  ; Round_pi(value)
  %1055 = call float @dx.op.unary.f32(i32 28, float %1053)  ; Round_pi(value)
  %1056 = fptoui float %1054 to i32
  %1057 = fptoui float %1055 to i32
  %1058 = shl i32 1, %1021
  %1059 = add i32 %1058, -1
  %1060 = and i32 %1059, %1005
  %1061 = icmp ne i32 %1060, 0
  %1062 = zext i1 %1061 to i32
  %1063 = add i32 %1056, %1062
  %1064 = and i32 %1059, %1006
  %1065 = icmp ne i32 %1064, 0
  %1066 = zext i1 %1065 to i32
  %1067 = add i32 %1057, %1066
  %1068 = icmp eq i32 %1067, 0
  br i1 %1068, label %1148, label %1069

; <label>:1069                                    ; preds = %1003
  %1070 = fadd fast float %1037, 1.000000e+00
  %1071 = fmul fast float %1070, %1029
  br label %1072

; <label>:1072                                    ; preds = %1141, %1069
  %1073 = phi i32 [ %1142, %1141 ], [ 1, %1069 ]
  %1074 = phi float [ %1143, %1141 ], [ 0.000000e+00, %1069 ]
  %1075 = phi float [ %1144, %1141 ], [ %1071, %1069 ]
  %1076 = phi i32 [ %1145, %1141 ], [ 0, %1069 ]
  %1077 = icmp eq i32 %1063, 0
  br i1 %1077, label %1141, label %1078

; <label>:1078                                    ; preds = %1072
  br label %1079

; <label>:1079                                    ; preds = %1079, %1078
  %1080 = phi i32 [ %1132, %1079 ], [ %1073, %1078 ]
  %1081 = phi float [ %1136, %1079 ], [ %1074, %1078 ]
  %1082 = phi float [ %1137, %1079 ], [ %1047, %1078 ]
  %1083 = phi i32 [ %1138, %1079 ], [ 0, %1078 ]
  %1084 = sitofp i32 %1020 to float
  %1085 = fmul fast float %1028, 0xBFDFE00000000000
  %1086 = fadd fast float %1085, %1082
  %1087 = fmul fast float %1029, 0x3FE0100000000000
  %1088 = fadd fast float %1087, %1075
  %1089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %1086, float %1088, float undef, float undef, i32 0, i32 0, i32 undef, float %1084)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1090 = extractvalue %dx.types.ResRet.f32 %1089, 0
  %1091 = fmul fast float %1028, 0x3FE0100000000000
  %1092 = fadd fast float %1091, %1082
  %1093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %1092, float %1088, float undef, float undef, i32 0, i32 0, i32 undef, float %1084)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1094 = extractvalue %dx.types.ResRet.f32 %1093, 0
  %1095 = fmul fast float %1029, 0xBFDFE00000000000
  %1096 = fadd fast float %1095, %1075
  %1097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %1092, float %1096, float undef, float undef, i32 0, i32 0, i32 undef, float %1084)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1098 = extractvalue %dx.types.ResRet.f32 %1097, 0
  %1099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %1086, float %1096, float undef, float undef, i32 0, i32 0, i32 undef, float %1084)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1100 = extractvalue %dx.types.ResRet.f32 %1099, 0
  %1101 = fcmp fast olt float %1090, -1.000000e+00
  %1102 = fcmp fast ogt float %1090, -1.000000e+00
  %1103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1104 = extractvalue %dx.types.CBufRet.f32 %1103, 1
  %1105 = select i1 %1102, float %1104, float 1.000000e+00
  %1106 = fadd fast float %1090, 1.000000e+00
  %1107 = fmul fast float %1105, %1106
  %1108 = call float @dx.op.unary.f32(i32 6, float %1107)  ; FAbs(value)
  %1109 = fcmp fast olt float %1094, -1.000000e+00
  %1110 = fcmp fast ogt float %1094, -1.000000e+00
  %1111 = select i1 %1110, float %1104, float 1.000000e+00
  %1112 = fadd fast float %1094, 1.000000e+00
  %1113 = fmul fast float %1111, %1112
  %1114 = call float @dx.op.unary.f32(i32 6, float %1113)  ; FAbs(value)
  %1115 = fcmp fast olt float %1098, -1.000000e+00
  %1116 = fcmp fast ogt float %1098, -1.000000e+00
  %1117 = select i1 %1116, float %1104, float 1.000000e+00
  %1118 = fadd fast float %1098, 1.000000e+00
  %1119 = fmul fast float %1117, %1118
  %1120 = call float @dx.op.unary.f32(i32 6, float %1119)  ; FAbs(value)
  %1121 = fcmp fast olt float %1100, -1.000000e+00
  %1122 = fcmp fast ogt float %1100, -1.000000e+00
  %1123 = select i1 %1122, float %1104, float 1.000000e+00
  %1124 = fadd fast float %1100, 1.000000e+00
  %1125 = fmul fast float %1123, %1124
  %1126 = call float @dx.op.unary.f32(i32 6, float %1125)  ; FAbs(value)
  %1127 = and i1 %1101, %1109
  %1128 = and i1 %1127, %1115
  %1129 = and i1 %1128, %1121
  %1130 = icmp ne i32 %1080, 0
  %1131 = and i1 %1130, %1129
  %1132 = zext i1 %1131 to i32
  %1133 = call float @dx.op.binary.f32(i32 35, float %1114, float %1120)  ; FMax(a,b)
  %1134 = call float @dx.op.binary.f32(i32 35, float %1108, float %1133)  ; FMax(a,b)
  %1135 = call float @dx.op.binary.f32(i32 35, float %1134, float %1126)  ; FMax(a,b)
  %1136 = call float @dx.op.binary.f32(i32 35, float %1135, float %1081)  ; FMax(a,b)
  %1137 = fadd fast float %1082, %1048
  %1138 = add nuw i32 %1083, 1
  %1139 = icmp eq i32 %1138, %1063
  br i1 %1139, label %1140, label %1079

; <label>:1140                                    ; preds = %1079
  br label %1141

; <label>:1141                                    ; preds = %1140, %1072
  %1142 = phi i32 [ %1073, %1072 ], [ %1132, %1140 ]
  %1143 = phi float [ %1074, %1072 ], [ %1136, %1140 ]
  %1144 = fadd fast float %1075, %1049
  %1145 = add nuw i32 %1076, 1
  %1146 = icmp eq i32 %1145, %1067
  br i1 %1146, label %1147, label %1072

; <label>:1147                                    ; preds = %1141
  br label %1148

; <label>:1148                                    ; preds = %1147, %1003
  %1149 = phi i32 [ 1, %1003 ], [ %1142, %1147 ]
  %1150 = phi float [ 0.000000e+00, %1003 ], [ %1143, %1147 ]
  %1151 = icmp eq i32 %1149, 0
  %1152 = and i1 %840, %1151
  br i1 %1152, label %1165, label %1153, !dx.controlflow.hints !57

; <label>:1153                                    ; preds = %1148
  %1154 = fcmp fast une float %842, 0.000000e+00
  %1155 = bitcast float %842 to i32
  %1156 = and i32 %1155, 2139095040
  %1157 = add nsw i32 %1156, -1056964608
  %1158 = ashr exact i32 %1157, 23
  %1159 = add nsw i32 %1158, -10
  %1160 = sitofp i32 %1159 to float
  %1161 = select i1 %1154, float %1160, float -1.000000e+01
  %1162 = call float @dx.op.unary.f32(i32 21, float %1161)  ; Exp(value)
  %1163 = fsub fast float %842, %1162
  %1164 = fcmp fast ogt float %1150, %1163
  br label %1165

; <label>:1165                                    ; preds = %1153, %1148
  %1166 = phi i1 [ %1164, %1153 ], [ true, %1148 ]
  %1167 = zext i1 %1166 to i32
  br label %1168

; <label>:1168                                    ; preds = %1165, %997, %831
  %1169 = phi i32 [ %1167, %1165 ], [ %998, %997 ], [ 1, %831 ]
  %1170 = icmp ne i32 %1169, 0
  br label %1171

; <label>:1171                                    ; preds = %1168, %817, %809, %807, %739
  %1172 = phi i1 [ %1170, %1168 ], [ false, %739 ], [ false, %807 ], [ false, %809 ], [ false, %817 ]
  %1173 = zext i1 %1172 to i32
  br label %1174

; <label>:1174                                    ; preds = %1171, %99
  %1175 = phi i32 [ %1173, %1171 ], [ %117, %99 ]
  %1176 = icmp ne i32 %1175, 0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1177 = and i32 %24, 31
  %1178 = shl i32 1, %1177
  %1179 = select i1 %1176, i32 %1178, i32 0
  %1180 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %24
  store i32 %1179, i32 addrspace(3)* %1180, align 4, !tbaa !59
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1181 = icmp ult i32 %1177, 16
  br i1 %1181, label %1182, label %1188, !dx.controlflow.hints !63

; <label>:1182                                    ; preds = %1174
  %1183 = add i32 %24, 16
  %1184 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1183
  %1185 = load i32, i32 addrspace(3)* %1184, align 4, !tbaa !59
  %1186 = load i32, i32 addrspace(3)* %1180, align 4, !tbaa !59
  %1187 = or i32 %1186, %1185
  store i32 %1187, i32 addrspace(3)* %1180, align 4, !tbaa !59
  br label %1188

; <label>:1188                                    ; preds = %1182, %1174
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1189 = icmp ult i32 %1177, 8
  br i1 %1189, label %1190, label %1196, !dx.controlflow.hints !64

; <label>:1190                                    ; preds = %1188
  %1191 = add i32 %24, 8
  %1192 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1191
  %1193 = load i32, i32 addrspace(3)* %1192, align 4, !tbaa !59
  %1194 = load i32, i32 addrspace(3)* %1180, align 4, !tbaa !59
  %1195 = or i32 %1194, %1193
  store i32 %1195, i32 addrspace(3)* %1180, align 4, !tbaa !59
  br label %1196

; <label>:1196                                    ; preds = %1190, %1188
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1197 = icmp ult i32 %1177, 4
  br i1 %1197, label %1198, label %1204, !dx.controlflow.hints !65

; <label>:1198                                    ; preds = %1196
  %1199 = add i32 %24, 4
  %1200 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1199
  %1201 = load i32, i32 addrspace(3)* %1200, align 4, !tbaa !59
  %1202 = load i32, i32 addrspace(3)* %1180, align 4, !tbaa !59
  %1203 = or i32 %1202, %1201
  store i32 %1203, i32 addrspace(3)* %1180, align 4, !tbaa !59
  br label %1204

; <label>:1204                                    ; preds = %1198, %1196
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1205 = icmp ult i32 %1177, 2
  br i1 %1205, label %1206, label %1212, !dx.controlflow.hints !66

; <label>:1206                                    ; preds = %1204
  %1207 = add i32 %24, 2
  %1208 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1207
  %1209 = load i32, i32 addrspace(3)* %1208, align 4, !tbaa !59
  %1210 = load i32, i32 addrspace(3)* %1180, align 4, !tbaa !59
  %1211 = or i32 %1210, %1209
  store i32 %1211, i32 addrspace(3)* %1180, align 4, !tbaa !59
  br label %1212

; <label>:1212                                    ; preds = %1206, %1204
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1213 = icmp eq i32 %1177, 0
  br i1 %1213, label %1214, label %1220, !dx.controlflow.hints !67

; <label>:1214                                    ; preds = %1212
  %1215 = add i32 %24, 1
  %1216 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1215
  %1217 = load i32, i32 addrspace(3)* %1216, align 4, !tbaa !59
  %1218 = load i32, i32 addrspace(3)* %1180, align 4, !tbaa !59
  %1219 = or i32 %1218, %1217
  store i32 %1219, i32 addrspace(3)* %1180, align 4, !tbaa !59
  br label %1220

; <label>:1220                                    ; preds = %1214, %1212
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1221 = and i32 %24, -64
  %1222 = or i32 %1221, 32
  %1223 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1221
  %1224 = load i32, i32 addrspace(3)* %1223, align 4, !tbaa !59
  %1225 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1222
  %1226 = load i32, i32 addrspace(3)* %1225, align 4, !tbaa !59
  %1227 = icmp eq i32 %24, 0
  br i1 %1227, label %1228, label %1233, !dx.controlflow.hints !68

; <label>:1228                                    ; preds = %1220
  %1229 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1224)  ; Countbits(value)
  %1230 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1226)  ; Countbits(value)
  %1231 = add i32 %1230, %1229
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %23, i32 0, i32 %1224, i32 %1226, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1232 = shl i32 %23, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1232, i32 undef, i32 %1231, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1233

; <label>:1233                                    ; preds = %1228, %1220
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { noduplicate nounwind }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!33}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !24, !27, !31}
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
!27 = !{!28, !29, !30}
!28 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!29 = !{i32 1, %GPSurfPassConsts* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!30 = !{i32 2, %GPOcclusionPassConsts* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!31 = !{!32}
!32 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!33 = !{void ()* @sorted_triangle_cull_pass, !"sorted_triangle_cull_pass", null, !4, !34}
!34 = !{i32 0, i64 272, i32 4, !35}
!35 = !{i32 64, i32 1, i32 1}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = !{i32 1}
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
!59 = !{!60, !60, i64 0}
!60 = !{!"int", !61, i64 0}
!61 = !{!"omnipotent char", !62, i64 0}
!62 = !{!"Simple C/C++ TBAA"}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}

