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
; shader hash: 70e71d90d43b67e0ca0258558b3b974f
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
%dx.types.fouri32 = type { i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
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

@"\01?gsTempData@@3PAIA" = external addrspace(3) global [4 x i32], align 4

define void @triangle_cull_pass() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %23 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %24 = shl i32 %22, 2
  %25 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %24, i32 undef)  ; BufferLoad(srv,index,wot)
  %26 = extractvalue %dx.types.ResRet.i32 %25, 0
  %27 = and i32 %26, 65535
  %28 = lshr i32 %26, 16
  %29 = and i32 %28, 1023
  %30 = and i32 %26, 67108864
  %31 = icmp ne i32 %30, 0
  %32 = and i32 %26, 134217728
  %33 = and i32 %26, 536870912
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47, !dx.controlflow.hints !35

; <label>:35                                      ; preds = %0
  %36 = shl nuw nsw i32 %27, 3
  %37 = or i32 %36, 5242880
  %38 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %37, i32 undef)  ; BufferLoad(srv,index,wot)
  %39 = extractvalue %dx.types.ResRet.i32 %38, 0
  %40 = extractvalue %dx.types.ResRet.i32 %38, 1
  %41 = lshr i32 %39, 16
  %42 = and i32 %40, 16777215
  %43 = lshr i32 %40, 24
  %44 = lshr i32 %40, 25
  %45 = and i32 %44, 2
  %46 = xor i32 %45, 3
  br label %62

; <label>:47                                      ; preds = %0
  %48 = mul nuw nsw i32 %27, 12
  %49 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %48, i32 undef)  ; BufferLoad(srv,index,wot)
  %50 = extractvalue %dx.types.ResRet.i32 %49, 0
  %51 = extractvalue %dx.types.ResRet.i32 %49, 1
  %52 = extractvalue %dx.types.ResRet.i32 %49, 2
  %53 = lshr i32 %50, 28
  %54 = and i32 %51, 65535
  %55 = shl nuw nsw i32 %53, 16
  %56 = or i32 %55, %54
  %57 = and i32 %50, 268435455
  %58 = and i32 %52, 15
  %59 = lshr i32 %52, 4
  %60 = and i32 %59, 15
  %61 = lshr i32 %52, 8
  br label %62

; <label>:62                                      ; preds = %47, %35
  %63 = phi i32 [ %42, %35 ], [ 0, %47 ]
  %64 = phi i32 [ %39, %35 ], [ %52, %47 ]
  %65 = phi i32 [ %41, %35 ], [ %61, %47 ]
  %66 = phi i32 [ %43, %35 ], [ %60, %47 ]
  %67 = phi i32 [ %46, %35 ], [ %58, %47 ]
  %68 = phi i32 [ 0, %35 ], [ %56, %47 ]
  %69 = phi i32 [ 0, %35 ], [ %57, %47 ]
  %70 = lshr i32 %64, 24
  br i1 %34, label %71, label %76, !dx.controlflow.hints !36

; <label>:71                                      ; preds = %62
  %72 = shl nuw nsw i32 %27, 4
  %73 = add nuw nsw i32 %72, 5767168
  %74 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %73, i32 undef)  ; BufferLoad(srv,index,wot)
  %75 = extractvalue %dx.types.ResRet.i32 %74, 2
  br label %81

; <label>:76                                      ; preds = %62
  %77 = mul nuw nsw i32 %27, 12
  %78 = add nuw nsw i32 %77, 1572864
  %79 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %78, i32 undef)  ; BufferLoad(srv,index,wot)
  %80 = extractvalue %dx.types.ResRet.i32 %79, 2
  br label %81

; <label>:81                                      ; preds = %76, %71
  %82 = phi i32 [ %75, %71 ], [ %80, %76 ]
  br i1 %34, label %83, label %89, !dx.controlflow.hints !37

; <label>:83                                      ; preds = %81
  %84 = shl nuw nsw i32 %27, 3
  %85 = or i32 %84, 6815744
  %86 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %85, i32 undef)  ; BufferLoad(srv,index,wot)
  %87 = extractvalue %dx.types.ResRet.i32 %86, 0
  %88 = extractvalue %dx.types.ResRet.i32 %86, 1
  br label %96

; <label>:89                                      ; preds = %81
  %90 = mul nuw nsw i32 %27, 12
  %91 = add nuw nsw i32 %90, 786432
  %92 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %91, i32 undef)  ; BufferLoad(srv,index,wot)
  %93 = extractvalue %dx.types.ResRet.i32 %92, 0
  %94 = extractvalue %dx.types.ResRet.i32 %92, 1
  %95 = extractvalue %dx.types.ResRet.i32 %92, 2
  br label %96

; <label>:96                                      ; preds = %89, %83
  %97 = phi i32 [ %88, %83 ], [ %95, %89 ]
  %98 = phi i32 [ 0, %83 ], [ %94, %89 ]
  %99 = phi i32 [ %87, %83 ], [ %93, %89 ]
  %100 = add i32 %82, %29
  %101 = shl i32 %100, 2
  %102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %101, i32 undef)  ; BufferLoad(srv,index,wot)
  %103 = extractvalue %dx.types.ResRet.i32 %102, 0
  %104 = shl i32 %103, 5
  %105 = or i32 %104, 16
  %106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %105, i32 undef)  ; BufferLoad(srv,index,wot)
  %107 = extractvalue %dx.types.ResRet.i32 %106, 3
  %108 = lshr i32 %107, 16
  %109 = icmp ult i32 %23, %108
  %110 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.i32 %110, 2
  %112 = icmp ult i32 %98, %111
  %113 = and i1 %109, %112
  %114 = zext i1 %113 to i32
  %115 = and i1 %31, %113
  br i1 %115, label %116, label %1171, !dx.controlflow.hints !38

; <label>:116                                     ; preds = %96
  %117 = shl nuw nsw i32 %70, 6
  %118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %117, i32 undef)  ; BufferLoad(srv,index,wot)
  %119 = extractvalue %dx.types.ResRet.i32 %118, 0
  %120 = extractvalue %dx.types.ResRet.i32 %118, 1
  %121 = extractvalue %dx.types.ResRet.i32 %118, 3
  %122 = bitcast i32 %119 to float
  %123 = bitcast i32 %120 to float
  %124 = bitcast i32 %121 to float
  %125 = or i32 %117, 16
  %126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %125, i32 undef)  ; BufferLoad(srv,index,wot)
  %127 = extractvalue %dx.types.ResRet.i32 %126, 0
  %128 = extractvalue %dx.types.ResRet.i32 %126, 1
  %129 = extractvalue %dx.types.ResRet.i32 %126, 3
  %130 = bitcast i32 %127 to float
  %131 = bitcast i32 %128 to float
  %132 = bitcast i32 %129 to float
  %133 = or i32 %117, 32
  %134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %133, i32 undef)  ; BufferLoad(srv,index,wot)
  %135 = extractvalue %dx.types.ResRet.i32 %134, 0
  %136 = extractvalue %dx.types.ResRet.i32 %134, 1
  %137 = extractvalue %dx.types.ResRet.i32 %134, 3
  %138 = bitcast i32 %135 to float
  %139 = bitcast i32 %136 to float
  %140 = bitcast i32 %137 to float
  %141 = or i32 %117, 48
  %142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %141, i32 undef)  ; BufferLoad(srv,index,wot)
  %143 = extractvalue %dx.types.ResRet.i32 %142, 0
  %144 = extractvalue %dx.types.ResRet.i32 %142, 1
  %145 = extractvalue %dx.types.ResRet.i32 %142, 3
  %146 = bitcast i32 %143 to float
  %147 = bitcast i32 %144 to float
  %148 = bitcast i32 %145 to float
  %149 = shl nuw nsw i32 %70, 4
  %150 = or i32 %149, 4096
  %151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %150, i32 undef)  ; BufferLoad(srv,index,wot)
  %152 = extractvalue %dx.types.ResRet.i32 %151, 0
  %153 = extractvalue %dx.types.ResRet.i32 %151, 1
  %154 = extractvalue %dx.types.ResRet.i32 %151, 2
  %155 = extractvalue %dx.types.ResRet.i32 %151, 3
  %156 = icmp eq i32 %155, 1
  %157 = add nuw nsw i32 %149, 5120
  %158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %157, i32 undef)  ; BufferLoad(srv,index,wot)
  %159 = extractvalue %dx.types.ResRet.i32 %158, 0
  %160 = extractvalue %dx.types.ResRet.i32 %158, 1
  %161 = bitcast i32 %159 to float
  %162 = bitcast i32 %160 to float
  %163 = icmp eq i32 %67, 2
  br i1 %163, label %164, label %242, !dx.controlflow.hints !39

; <label>:164                                     ; preds = %116
  %165 = shl nsw i32 %68, 5
  %166 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %165, i32 undef)  ; BufferLoad(srv,index,wot)
  %167 = extractvalue %dx.types.ResRet.f32 %166, 0
  %168 = extractvalue %dx.types.ResRet.f32 %166, 1
  %169 = extractvalue %dx.types.ResRet.f32 %166, 2
  %170 = or i32 %165, 16
  %171 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %170, i32 undef)  ; BufferLoad(srv,index,wot)
  %172 = extractvalue %dx.types.ResRet.f32 %171, 0
  %173 = extractvalue %dx.types.ResRet.f32 %171, 1
  %174 = extractvalue %dx.types.ResRet.f32 %171, 2
  %175 = mul i32 %69, 24
  %176 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %175, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.f32 %176, 0
  %178 = extractvalue %dx.types.ResRet.f32 %176, 1
  %179 = extractvalue %dx.types.ResRet.f32 %176, 2
  %180 = add i32 %175, 12
  %181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %180, i32 undef)  ; BufferLoad(srv,index,wot)
  %182 = extractvalue %dx.types.ResRet.i32 %181, 0
  %183 = extractvalue %dx.types.ResRet.i32 %181, 1
  %184 = add i32 %175, 20
  %185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %184, i32 undef)  ; BufferLoad(srv,index,wot)
  %186 = extractvalue %dx.types.ResRet.i32 %185, 0
  %187 = and i32 %182, 65535
  %188 = uitofp i32 %187 to float
  %189 = lshr i32 %182, 16
  %190 = uitofp i32 %189 to float
  %191 = and i32 %183, 65535
  %192 = uitofp i32 %191 to float
  %193 = lshr i32 %183, 16
  %194 = uitofp i32 %193 to float
  %195 = fmul fast float %188, 0x3F00001000000000
  %196 = fmul fast float %190, 0x3F00001000000000
  %197 = fmul fast float %192, 0x3F00001000000000
  %198 = fmul fast float %194, 0x3F00001000000000
  %199 = fadd fast float %195, -1.000000e+00
  %200 = fadd fast float %196, -1.000000e+00
  %201 = fadd fast float %197, -1.000000e+00
  %202 = fadd fast float %198, -1.000000e+00
  %203 = and i32 %186, 65535
  %204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %203)  ; LegacyF16ToF32(value)
  %205 = fmul fast float %190, 0x3F10001000000000
  %206 = fadd fast float %205, -2.000000e+00
  %207 = fmul fast float %206, %200
  %208 = fsub fast float 1.000000e+00, %207
  %209 = fmul fast float %192, 0x3F10001000000000
  %210 = fadd fast float %209, -2.000000e+00
  %211 = fmul fast float %210, %201
  %212 = fsub fast float %208, %211
  %213 = fmul fast float %188, 0x3F10001000000000
  %214 = fadd fast float %213, -2.000000e+00
  %215 = fmul fast float %214, %200
  %216 = fmul fast float %210, %202
  %217 = fsub fast float %215, %216
  %218 = fmul fast float %214, %201
  %219 = fmul fast float %206, %202
  %220 = fadd fast float %218, %219
  %221 = fadd fast float %215, %216
  %222 = fmul fast float %214, %199
  %223 = fsub fast float 1.000000e+00, %222
  %224 = fsub fast float %223, %211
  %225 = fmul fast float %206, %201
  %226 = fmul fast float %214, %202
  %227 = fsub fast float %225, %226
  %228 = fsub fast float %218, %219
  %229 = fadd fast float %225, %226
  %230 = fsub fast float %223, %207
  %231 = fmul fast float %212, %204
  %232 = fmul fast float %221, %204
  %233 = fmul fast float %228, %204
  %234 = fmul fast float %217, %204
  %235 = fmul fast float %224, %204
  %236 = fmul fast float %229, %204
  %237 = fmul fast float %220, %204
  %238 = fmul fast float %227, %204
  %239 = fmul fast float %230, %204
  %240 = call float @dx.op.binary.f32(i32 35, float %173, float %174), !dx.precise !40  ; FMax(a,b)
  %241 = call float @dx.op.binary.f32(i32 35, float %172, float %240), !dx.precise !40  ; FMax(a,b)
  br label %456

; <label>:242                                     ; preds = %116
  %243 = icmp eq i32 %67, 0
  br i1 %243, label %244, label %378, !dx.controlflow.hints !41

; <label>:244                                     ; preds = %242
  %245 = and i32 %66, 1
  %246 = icmp eq i32 %245, 0
  %247 = lshr exact i32 %32, 6
  %248 = shl i32 %69, 6
  %249 = add i32 %248, %247
  %250 = or i32 %249, 16
  br i1 %246, label %305, label %251, !dx.controlflow.hints !42

; <label>:251                                     ; preds = %244
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = extractvalue %dx.types.ResRet.i32 %252, 1
  %255 = extractvalue %dx.types.ResRet.i32 %252, 2
  %256 = extractvalue %dx.types.ResRet.i32 %252, 3
  %257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.i32 %257, 0
  %259 = extractvalue %dx.types.ResRet.i32 %257, 1
  %260 = extractvalue %dx.types.ResRet.i32 %257, 2
  %261 = extractvalue %dx.types.ResRet.i32 %257, 3
  %262 = bitcast i32 %253 to float
  %263 = bitcast i32 %254 to float
  %264 = bitcast i32 %255 to float
  %265 = bitcast i32 %256 to float
  %266 = bitcast i32 %258 to float
  %267 = bitcast i32 %259 to float
  %268 = bitcast i32 %260 to float
  %269 = bitcast i32 %261 to float
  %270 = fmul fast float %263, %263
  %271 = fmul fast float %270, 2.000000e+00
  %272 = fsub fast float 1.000000e+00, %271
  %273 = fmul fast float %264, %264
  %274 = fmul fast float %273, 2.000000e+00
  %275 = fsub fast float %272, %274
  %276 = fmul fast float %262, 2.000000e+00
  %277 = fmul fast float %276, %263
  %278 = fmul fast float %264, 2.000000e+00
  %279 = fmul fast float %278, %265
  %280 = fsub fast float %277, %279
  %281 = fmul fast float %264, %262
  %282 = fmul fast float %265, %263
  %283 = fadd fast float %281, %282
  %284 = fmul fast float %283, 2.000000e+00
  %285 = fmul fast float %263, %262
  %286 = fmul fast float %265, %264
  %287 = fadd fast float %285, %286
  %288 = fmul fast float %287, 2.000000e+00
  %289 = fmul fast float %262, %262
  %290 = fmul fast float %289, 2.000000e+00
  %291 = fsub fast float 1.000000e+00, %290
  %292 = fsub fast float %291, %274
  %293 = fmul fast float %263, 2.000000e+00
  %294 = fmul fast float %293, %264
  %295 = fmul fast float %276, %265
  %296 = fsub fast float %294, %295
  %297 = fmul fast float %276, %264
  %298 = fmul fast float %293, %265
  %299 = fsub fast float %297, %298
  %300 = fmul fast float %264, %263
  %301 = fmul fast float %265, %262
  %302 = fadd fast float %300, %301
  %303 = fmul fast float %302, 2.000000e+00
  %304 = fsub fast float %291, %271
  br label %456

; <label>:305                                     ; preds = %244
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = extractvalue %dx.types.ResRet.i32 %306, 1
  %309 = extractvalue %dx.types.ResRet.i32 %306, 2
  %310 = extractvalue %dx.types.ResRet.i32 %306, 3
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = extractvalue %dx.types.ResRet.i32 %311, 1
  %314 = extractvalue %dx.types.ResRet.i32 %311, 2
  %315 = extractvalue %dx.types.ResRet.i32 %311, 3
  %316 = or i32 %249, 48
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = extractvalue %dx.types.ResRet.i32 %317, 1
  %320 = extractvalue %dx.types.ResRet.i32 %317, 2
  %321 = extractvalue %dx.types.ResRet.i32 %317, 3
  %322 = bitcast i32 %307 to float
  %323 = bitcast i32 %308 to float
  %324 = bitcast i32 %309 to float
  %325 = bitcast i32 %310 to float
  %326 = bitcast i32 %312 to float
  %327 = bitcast i32 %313 to float
  %328 = bitcast i32 %314 to float
  %329 = bitcast i32 %315 to float
  %330 = bitcast i32 %318 to float
  %331 = bitcast i32 %319 to float
  %332 = bitcast i32 %320 to float
  %333 = bitcast i32 %321 to float
  %334 = fmul fast float %323, %323
  %335 = fmul fast float %334, 2.000000e+00
  %336 = fsub fast float 1.000000e+00, %335
  %337 = fmul fast float %324, %324
  %338 = fmul fast float %337, 2.000000e+00
  %339 = fsub fast float %336, %338
  %340 = fmul fast float %322, 2.000000e+00
  %341 = fmul fast float %340, %323
  %342 = fmul fast float %324, 2.000000e+00
  %343 = fmul fast float %342, %325
  %344 = fsub fast float %341, %343
  %345 = fmul fast float %324, %322
  %346 = fmul fast float %325, %323
  %347 = fadd fast float %345, %346
  %348 = fmul fast float %347, 2.000000e+00
  %349 = fmul fast float %323, %322
  %350 = fmul fast float %325, %324
  %351 = fadd fast float %349, %350
  %352 = fmul fast float %351, 2.000000e+00
  %353 = fmul fast float %322, %322
  %354 = fmul fast float %353, 2.000000e+00
  %355 = fsub fast float 1.000000e+00, %354
  %356 = fsub fast float %355, %338
  %357 = fmul fast float %323, 2.000000e+00
  %358 = fmul fast float %357, %324
  %359 = fmul fast float %340, %325
  %360 = fsub fast float %358, %359
  %361 = fmul fast float %340, %324
  %362 = fmul fast float %357, %325
  %363 = fsub fast float %361, %362
  %364 = fmul fast float %324, %323
  %365 = fmul fast float %325, %322
  %366 = fadd fast float %364, %365
  %367 = fmul fast float %366, 2.000000e+00
  %368 = fsub fast float %355, %335
  %369 = fmul fast float %339, %329
  %370 = fmul fast float %352, %329
  %371 = fmul fast float %363, %329
  %372 = fmul fast float %344, %329
  %373 = fmul fast float %356, %329
  %374 = fmul fast float %367, %329
  %375 = fmul fast float %348, %329
  %376 = fmul fast float %360, %329
  %377 = fmul fast float %368, %329
  br label %456

; <label>:378                                     ; preds = %242
  %379 = icmp eq i32 %67, 3
  br i1 %379, label %380, label %389, !dx.controlflow.hints !43

; <label>:380                                     ; preds = %378
  %381 = shl nuw nsw i32 %63, 7
  %382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.f32 %382, 0
  %384 = extractvalue %dx.types.ResRet.f32 %382, 1
  %385 = extractvalue %dx.types.ResRet.f32 %382, 2
  %386 = or i32 %381, 12
  %387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.f32 %387, 0
  br label %456

; <label>:389                                     ; preds = %378
  %390 = icmp eq i32 %67, 1
  br i1 %390, label %391, label %456, !dx.controlflow.hints !44

; <label>:391                                     ; preds = %389
  %392 = lshr exact i32 %32, 6
  %393 = shl nuw nsw i32 %27, 6
  %394 = add nuw nsw i32 %393, 1572864
  %395 = add nuw nsw i32 %394, %392
  %396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  %398 = extractvalue %dx.types.ResRet.i32 %396, 1
  %399 = extractvalue %dx.types.ResRet.i32 %396, 2
  %400 = extractvalue %dx.types.ResRet.i32 %396, 3
  %401 = or i32 %395, 16
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = extractvalue %dx.types.ResRet.i32 %402, 1
  %405 = extractvalue %dx.types.ResRet.i32 %402, 2
  %406 = bitcast i32 %397 to float
  %407 = bitcast i32 %398 to float
  %408 = bitcast i32 %399 to float
  %409 = bitcast i32 %400 to float
  %410 = bitcast i32 %403 to float
  %411 = bitcast i32 %404 to float
  %412 = bitcast i32 %405 to float
  %413 = fmul fast float %407, %407
  %414 = fmul fast float %413, 2.000000e+00
  %415 = fsub fast float 1.000000e+00, %414
  %416 = fmul fast float %408, %408
  %417 = fmul fast float %416, 2.000000e+00
  %418 = fsub fast float %415, %417
  %419 = fmul fast float %406, 2.000000e+00
  %420 = fmul fast float %419, %407
  %421 = fmul fast float %408, 2.000000e+00
  %422 = fmul fast float %421, %409
  %423 = fsub fast float %420, %422
  %424 = fmul fast float %408, %406
  %425 = fmul fast float %409, %407
  %426 = fadd fast float %424, %425
  %427 = fmul fast float %426, 2.000000e+00
  %428 = fmul fast float %407, %406
  %429 = fmul fast float %409, %408
  %430 = fadd fast float %428, %429
  %431 = fmul fast float %430, 2.000000e+00
  %432 = fmul fast float %406, %406
  %433 = fmul fast float %432, 2.000000e+00
  %434 = fsub fast float 1.000000e+00, %433
  %435 = fsub fast float %434, %417
  %436 = fmul fast float %407, 2.000000e+00
  %437 = fmul fast float %436, %408
  %438 = fmul fast float %419, %409
  %439 = fsub fast float %437, %438
  %440 = fmul fast float %419, %408
  %441 = fmul fast float %436, %409
  %442 = fsub fast float %440, %441
  %443 = fmul fast float %408, %407
  %444 = fmul fast float %409, %406
  %445 = fadd fast float %443, %444
  %446 = fmul fast float %445, 2.000000e+00
  %447 = fsub fast float %434, %414
  %448 = shl nuw nsw i32 %63, 7
  %449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.f32 %449, 0
  %451 = extractvalue %dx.types.ResRet.f32 %449, 1
  %452 = extractvalue %dx.types.ResRet.f32 %449, 2
  %453 = or i32 %448, 12
  %454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.f32 %454, 0
  br label %456

; <label>:456                                     ; preds = %391, %389, %380, %305, %251, %164
  %457 = phi float [ %231, %164 ], [ %275, %251 ], [ %369, %305 ], [ 1.000000e+00, %380 ], [ %418, %391 ], [ 0.000000e+00, %389 ]
  %458 = phi float [ %234, %164 ], [ %280, %251 ], [ %372, %305 ], [ 0.000000e+00, %380 ], [ %423, %391 ], [ 0.000000e+00, %389 ]
  %459 = phi float [ %237, %164 ], [ %284, %251 ], [ %375, %305 ], [ 0.000000e+00, %380 ], [ %427, %391 ], [ 0.000000e+00, %389 ]
  %460 = phi float [ %177, %164 ], [ %266, %251 ], [ %326, %305 ], [ 0.000000e+00, %380 ], [ %410, %391 ], [ 0.000000e+00, %389 ]
  %461 = phi float [ %232, %164 ], [ %288, %251 ], [ %370, %305 ], [ 0.000000e+00, %380 ], [ %431, %391 ], [ 0.000000e+00, %389 ]
  %462 = phi float [ %235, %164 ], [ %292, %251 ], [ %373, %305 ], [ 1.000000e+00, %380 ], [ %435, %391 ], [ 0.000000e+00, %389 ]
  %463 = phi float [ %238, %164 ], [ %296, %251 ], [ %376, %305 ], [ 0.000000e+00, %380 ], [ %439, %391 ], [ 0.000000e+00, %389 ]
  %464 = phi float [ %178, %164 ], [ %267, %251 ], [ %327, %305 ], [ 0.000000e+00, %380 ], [ %411, %391 ], [ 0.000000e+00, %389 ]
  %465 = phi float [ %233, %164 ], [ %299, %251 ], [ %371, %305 ], [ 0.000000e+00, %380 ], [ %442, %391 ], [ 0.000000e+00, %389 ]
  %466 = phi float [ %236, %164 ], [ %303, %251 ], [ %374, %305 ], [ 0.000000e+00, %380 ], [ %446, %391 ], [ 0.000000e+00, %389 ]
  %467 = phi float [ %239, %164 ], [ %304, %251 ], [ %377, %305 ], [ 1.000000e+00, %380 ], [ %447, %391 ], [ 0.000000e+00, %389 ]
  %468 = phi float [ %179, %164 ], [ %268, %251 ], [ %328, %305 ], [ 0.000000e+00, %380 ], [ %412, %391 ], [ 0.000000e+00, %389 ]
  %469 = phi float [ 1.000000e+00, %164 ], [ 1.000000e+00, %251 ], [ 1.000000e+00, %305 ], [ 1.000000e+00, %380 ], [ 1.000000e+00, %391 ], [ 0.000000e+00, %389 ]
  %470 = phi float [ %167, %164 ], [ 0.000000e+00, %251 ], [ %330, %305 ], [ %383, %380 ], [ %450, %391 ], [ 0.000000e+00, %389 ]
  %471 = phi float [ %168, %164 ], [ 0.000000e+00, %251 ], [ %331, %305 ], [ %384, %380 ], [ %451, %391 ], [ 0.000000e+00, %389 ]
  %472 = phi float [ %169, %164 ], [ 0.000000e+00, %251 ], [ %332, %305 ], [ %385, %380 ], [ %452, %391 ], [ 0.000000e+00, %389 ]
  %473 = phi float [ %241, %164 ], [ %269, %251 ], [ %333, %305 ], [ %388, %380 ], [ %455, %391 ], [ 0.000000e+00, %389 ]
  %474 = bitcast float %460 to i32
  %475 = bitcast float %464 to i32
  %476 = bitcast float %468 to i32
  %477 = select i1 %156, i32 0, i32 %152
  %478 = select i1 %156, i32 0, i32 %153
  %479 = select i1 %156, i32 0, i32 %154
  %480 = sub i32 %474, %477
  %481 = sub i32 %475, %478
  %482 = sub i32 %476, %479
  %483 = sitofp i32 %480 to float
  %484 = sitofp i32 %481 to float
  %485 = sitofp i32 %482 to float
  %486 = fmul fast float %483, 0x3F30000000000000
  %487 = fmul fast float %484, 0x3F30000000000000
  %488 = fmul fast float %485, 0x3F30000000000000
  %489 = shl i32 %103, 6
  %490 = add i32 %489, %23
  %491 = mul i32 %490, 3
  %492 = mul i32 %490, 6
  %493 = and i32 %492, -4
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = extractvalue %dx.types.ResRet.i32 %494, 1
  %497 = and i32 %491, 1
  %498 = icmp eq i32 %497, 0
  %499 = lshr i32 %495, 16
  %500 = and i32 %496, 65535
  %501 = lshr i32 %496, 16
  %502 = and i32 %495, 65535
  %503 = select i1 %498, i32 %502, i32 %499
  %504 = select i1 %498, i32 %499, i32 %500
  %505 = select i1 %498, i32 %500, i32 %501
  %506 = and i32 %66, 1
  %507 = icmp eq i32 %506, 0
  %508 = shl nuw nsw i32 %503, 3
  %509 = shl nuw nsw i32 %504, 3
  %510 = shl nuw nsw i32 %505, 3
  br i1 %507, label %531, label %511, !dx.controlflow.hints !45

; <label>:511                                     ; preds = %456
  %512 = shl i32 %97, 3
  %513 = add i32 %98, %512
  %514 = add i32 %508, %513
  %515 = add i32 %509, %513
  %516 = add i32 %510, %513
  %517 = call i32 @dx.op.binary.i32(i32 37, i32 %515, i32 %516)  ; IMax(a,b)
  %518 = call i32 @dx.op.binary.i32(i32 37, i32 %514, i32 %517)  ; IMax(a,b)
  %519 = add nsw i32 %518, 8
  %520 = icmp ult i32 %519, %111
  br i1 %520, label %521, label %565, !dx.controlflow.hints !46

; <label>:521                                     ; preds = %511
  %522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.i32 %522, 0
  %524 = extractvalue %dx.types.ResRet.i32 %522, 1
  %525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %515, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.i32 %525, 0
  %527 = extractvalue %dx.types.ResRet.i32 %525, 1
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = extractvalue %dx.types.ResRet.i32 %528, 1
  br label %565

; <label>:531                                     ; preds = %456
  %532 = lshr i32 %503, 7
  %533 = add i32 %532, %99
  %534 = shl i32 %533, 2
  %535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.i32 %535, 0
  %537 = shl i32 %536, 10
  %538 = and i32 %508, 1016
  %539 = or i32 %537, %538
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = extractvalue %dx.types.ResRet.i32 %540, 1
  %543 = lshr i32 %504, 7
  %544 = add i32 %543, %99
  %545 = shl i32 %544, 2
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %545, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = shl i32 %547, 10
  %549 = and i32 %509, 1016
  %550 = or i32 %548, %549
  %551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.i32 %551, 0
  %553 = extractvalue %dx.types.ResRet.i32 %551, 1
  %554 = lshr i32 %505, 7
  %555 = add i32 %554, %99
  %556 = shl i32 %555, 2
  %557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.i32 %557, 0
  %559 = shl i32 %558, 10
  %560 = and i32 %510, 1016
  %561 = or i32 %559, %560
  %562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %561, i32 undef)  ; BufferLoad(srv,index,wot)
  %563 = extractvalue %dx.types.ResRet.i32 %562, 0
  %564 = extractvalue %dx.types.ResRet.i32 %562, 1
  br label %565

; <label>:565                                     ; preds = %531, %521, %511
  %566 = phi i32 [ %523, %521 ], [ %541, %531 ], [ 0, %511 ]
  %567 = phi i32 [ %524, %521 ], [ %542, %531 ], [ 0, %511 ]
  %568 = phi i32 [ %526, %521 ], [ %552, %531 ], [ 0, %511 ]
  %569 = phi i32 [ %527, %521 ], [ %553, %531 ], [ 0, %511 ]
  %570 = phi i32 [ %529, %521 ], [ %563, %531 ], [ 0, %511 ]
  %571 = phi i32 [ %530, %521 ], [ %564, %531 ], [ 0, %511 ]
  %572 = and i32 %566, 2097151
  %573 = uitofp i32 %572 to float
  %574 = lshr i32 %566, 21
  %575 = shl i32 %567, 11
  %576 = and i32 %575, 2095104
  %577 = or i32 %576, %574
  %578 = uitofp i32 %577 to float
  %579 = lshr i32 %567, 10
  %580 = and i32 %579, 2097151
  %581 = uitofp i32 %580 to float
  br i1 %34, label %592, label %582, !dx.controlflow.hints !47

; <label>:582                                     ; preds = %565
  %583 = fdiv float %573, 2.097151e+06
  %584 = fdiv float %578, 2.097151e+06
  %585 = fdiv float %581, 2.097151e+06
  %586 = fmul float %583, 2.000000e+00
  %587 = fmul float %584, 2.000000e+00
  %588 = fmul float %585, 2.000000e+00
  %589 = fadd float %586, -1.000000e+00
  %590 = fadd float %587, -1.000000e+00
  %591 = fadd float %588, -1.000000e+00
  br label %592

; <label>:592                                     ; preds = %582, %565
  %593 = phi float [ %589, %582 ], [ %573, %565 ]
  %594 = phi float [ %590, %582 ], [ %578, %565 ]
  %595 = phi float [ %591, %582 ], [ %581, %565 ]
  %596 = fmul float %473, %595
  %597 = fadd float %472, %596
  %598 = fmul float %473, %594
  %599 = fadd float %471, %598
  %600 = fmul float %473, %593
  %601 = fadd float %470, %600
  %602 = and i32 %568, 2097151
  %603 = uitofp i32 %602 to float
  %604 = lshr i32 %568, 21
  %605 = shl i32 %569, 11
  %606 = and i32 %605, 2095104
  %607 = or i32 %606, %604
  %608 = uitofp i32 %607 to float
  %609 = lshr i32 %569, 10
  %610 = and i32 %609, 2097151
  %611 = uitofp i32 %610 to float
  br i1 %34, label %622, label %612, !dx.controlflow.hints !47

; <label>:612                                     ; preds = %592
  %613 = fdiv float %603, 2.097151e+06
  %614 = fdiv float %608, 2.097151e+06
  %615 = fdiv float %611, 2.097151e+06
  %616 = fmul float %613, 2.000000e+00
  %617 = fmul float %614, 2.000000e+00
  %618 = fmul float %615, 2.000000e+00
  %619 = fadd float %616, -1.000000e+00
  %620 = fadd float %617, -1.000000e+00
  %621 = fadd float %618, -1.000000e+00
  br label %622

; <label>:622                                     ; preds = %612, %592
  %623 = phi float [ %619, %612 ], [ %603, %592 ]
  %624 = phi float [ %620, %612 ], [ %608, %592 ]
  %625 = phi float [ %621, %612 ], [ %611, %592 ]
  %626 = fmul float %473, %625
  %627 = fadd float %472, %626
  %628 = fmul float %473, %624
  %629 = fadd float %471, %628
  %630 = fmul float %473, %623
  %631 = fadd float %470, %630
  %632 = and i32 %570, 2097151
  %633 = uitofp i32 %632 to float
  %634 = lshr i32 %570, 21
  %635 = shl i32 %571, 11
  %636 = and i32 %635, 2095104
  %637 = or i32 %636, %634
  %638 = uitofp i32 %637 to float
  %639 = lshr i32 %571, 10
  %640 = and i32 %639, 2097151
  %641 = uitofp i32 %640 to float
  br i1 %34, label %652, label %642, !dx.controlflow.hints !47

; <label>:642                                     ; preds = %622
  %643 = fdiv float %633, 2.097151e+06
  %644 = fdiv float %638, 2.097151e+06
  %645 = fdiv float %641, 2.097151e+06
  %646 = fmul float %643, 2.000000e+00
  %647 = fmul float %644, 2.000000e+00
  %648 = fmul float %645, 2.000000e+00
  %649 = fadd float %646, -1.000000e+00
  %650 = fadd float %647, -1.000000e+00
  %651 = fadd float %648, -1.000000e+00
  br label %652

; <label>:652                                     ; preds = %642, %622
  %653 = phi float [ %649, %642 ], [ %633, %622 ]
  %654 = phi float [ %650, %642 ], [ %638, %622 ]
  %655 = phi float [ %651, %642 ], [ %641, %622 ]
  %656 = fmul float %473, %655
  %657 = fadd float %472, %656
  %658 = fmul float %473, %654
  %659 = fadd float %471, %658
  %660 = fmul float %473, %653
  %661 = fadd float %470, %660
  %662 = fmul fast float %601, %457
  %663 = call float @dx.op.tertiary.f32(i32 46, float %599, float %458, float %662)  ; FMad(a,b,c)
  %664 = call float @dx.op.tertiary.f32(i32 46, float %597, float %459, float %663)  ; FMad(a,b,c)
  %665 = fadd fast float %664, %486
  %666 = fmul fast float %601, %461
  %667 = call float @dx.op.tertiary.f32(i32 46, float %599, float %462, float %666)  ; FMad(a,b,c)
  %668 = call float @dx.op.tertiary.f32(i32 46, float %597, float %463, float %667)  ; FMad(a,b,c)
  %669 = fadd fast float %668, %487
  %670 = fmul fast float %601, %465
  %671 = call float @dx.op.tertiary.f32(i32 46, float %599, float %466, float %670)  ; FMad(a,b,c)
  %672 = call float @dx.op.tertiary.f32(i32 46, float %597, float %467, float %671)  ; FMad(a,b,c)
  %673 = fadd fast float %672, %488
  %674 = fmul fast float %665, %122
  %675 = call float @dx.op.tertiary.f32(i32 46, float %669, float %130, float %674)  ; FMad(a,b,c)
  %676 = call float @dx.op.tertiary.f32(i32 46, float %673, float %138, float %675)  ; FMad(a,b,c)
  %677 = call float @dx.op.tertiary.f32(i32 46, float %469, float %146, float %676)  ; FMad(a,b,c)
  %678 = fmul fast float %665, %123
  %679 = call float @dx.op.tertiary.f32(i32 46, float %669, float %131, float %678)  ; FMad(a,b,c)
  %680 = call float @dx.op.tertiary.f32(i32 46, float %673, float %139, float %679)  ; FMad(a,b,c)
  %681 = call float @dx.op.tertiary.f32(i32 46, float %469, float %147, float %680)  ; FMad(a,b,c)
  %682 = fmul fast float %665, %124
  %683 = call float @dx.op.tertiary.f32(i32 46, float %669, float %132, float %682)  ; FMad(a,b,c)
  %684 = call float @dx.op.tertiary.f32(i32 46, float %673, float %140, float %683)  ; FMad(a,b,c)
  %685 = call float @dx.op.tertiary.f32(i32 46, float %469, float %148, float %684)  ; FMad(a,b,c)
  %686 = fmul fast float %631, %457
  %687 = call float @dx.op.tertiary.f32(i32 46, float %629, float %458, float %686)  ; FMad(a,b,c)
  %688 = call float @dx.op.tertiary.f32(i32 46, float %627, float %459, float %687)  ; FMad(a,b,c)
  %689 = fadd fast float %688, %486
  %690 = fmul fast float %631, %461
  %691 = call float @dx.op.tertiary.f32(i32 46, float %629, float %462, float %690)  ; FMad(a,b,c)
  %692 = call float @dx.op.tertiary.f32(i32 46, float %627, float %463, float %691)  ; FMad(a,b,c)
  %693 = fadd fast float %692, %487
  %694 = fmul fast float %631, %465
  %695 = call float @dx.op.tertiary.f32(i32 46, float %629, float %466, float %694)  ; FMad(a,b,c)
  %696 = call float @dx.op.tertiary.f32(i32 46, float %627, float %467, float %695)  ; FMad(a,b,c)
  %697 = fadd fast float %696, %488
  %698 = fmul fast float %689, %122
  %699 = call float @dx.op.tertiary.f32(i32 46, float %693, float %130, float %698)  ; FMad(a,b,c)
  %700 = call float @dx.op.tertiary.f32(i32 46, float %697, float %138, float %699)  ; FMad(a,b,c)
  %701 = call float @dx.op.tertiary.f32(i32 46, float %469, float %146, float %700)  ; FMad(a,b,c)
  %702 = fmul fast float %689, %123
  %703 = call float @dx.op.tertiary.f32(i32 46, float %693, float %131, float %702)  ; FMad(a,b,c)
  %704 = call float @dx.op.tertiary.f32(i32 46, float %697, float %139, float %703)  ; FMad(a,b,c)
  %705 = call float @dx.op.tertiary.f32(i32 46, float %469, float %147, float %704)  ; FMad(a,b,c)
  %706 = fmul fast float %689, %124
  %707 = call float @dx.op.tertiary.f32(i32 46, float %693, float %132, float %706)  ; FMad(a,b,c)
  %708 = call float @dx.op.tertiary.f32(i32 46, float %697, float %140, float %707)  ; FMad(a,b,c)
  %709 = call float @dx.op.tertiary.f32(i32 46, float %469, float %148, float %708)  ; FMad(a,b,c)
  %710 = fmul fast float %661, %457
  %711 = call float @dx.op.tertiary.f32(i32 46, float %659, float %458, float %710)  ; FMad(a,b,c)
  %712 = call float @dx.op.tertiary.f32(i32 46, float %657, float %459, float %711)  ; FMad(a,b,c)
  %713 = fadd fast float %712, %486
  %714 = fmul fast float %661, %461
  %715 = call float @dx.op.tertiary.f32(i32 46, float %659, float %462, float %714)  ; FMad(a,b,c)
  %716 = call float @dx.op.tertiary.f32(i32 46, float %657, float %463, float %715)  ; FMad(a,b,c)
  %717 = fadd fast float %716, %487
  %718 = fmul fast float %661, %465
  %719 = call float @dx.op.tertiary.f32(i32 46, float %659, float %466, float %718)  ; FMad(a,b,c)
  %720 = call float @dx.op.tertiary.f32(i32 46, float %657, float %467, float %719)  ; FMad(a,b,c)
  %721 = fadd fast float %720, %488
  %722 = fmul fast float %713, %122
  %723 = call float @dx.op.tertiary.f32(i32 46, float %717, float %130, float %722)  ; FMad(a,b,c)
  %724 = call float @dx.op.tertiary.f32(i32 46, float %721, float %138, float %723)  ; FMad(a,b,c)
  %725 = call float @dx.op.tertiary.f32(i32 46, float %469, float %146, float %724)  ; FMad(a,b,c)
  %726 = fmul fast float %713, %123
  %727 = call float @dx.op.tertiary.f32(i32 46, float %717, float %131, float %726)  ; FMad(a,b,c)
  %728 = call float @dx.op.tertiary.f32(i32 46, float %721, float %139, float %727)  ; FMad(a,b,c)
  %729 = call float @dx.op.tertiary.f32(i32 46, float %469, float %147, float %728)  ; FMad(a,b,c)
  %730 = fmul fast float %713, %124
  %731 = call float @dx.op.tertiary.f32(i32 46, float %717, float %132, float %730)  ; FMad(a,b,c)
  %732 = call float @dx.op.tertiary.f32(i32 46, float %721, float %140, float %731)  ; FMad(a,b,c)
  %733 = call float @dx.op.tertiary.f32(i32 46, float %469, float %148, float %732)  ; FMad(a,b,c)
  %734 = and i32 %65, 1
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %752, label %736, !dx.controlflow.hints !48

; <label>:736                                     ; preds = %652
  %737 = fmul fast float %733, %705
  %738 = fmul fast float %729, %709
  %739 = fsub fast float %737, %738
  %740 = fmul fast float %733, %701
  %741 = fmul fast float %725, %709
  %742 = fsub fast float %740, %741
  %743 = fmul fast float %729, %701
  %744 = fmul fast float %725, %705
  %745 = fsub fast float %743, %744
  %746 = fmul fast float %739, %677
  %747 = fmul fast float %742, %681
  %748 = fmul fast float %745, %685
  %749 = fsub fast float %748, %747
  %750 = fadd fast float %749, %746
  %751 = fcmp fast ogt float %750, 0.000000e+00
  br i1 %751, label %1168, label %752, !dx.controlflow.hints !49

; <label>:752                                     ; preds = %736, %652
  %753 = fcmp fast olt float %685, 0.000000e+00
  %754 = zext i1 %753 to i32
  %755 = call float @dx.op.unary.f32(i32 6, float %685)  ; FAbs(value)
  %756 = fdiv fast float 1.000000e+00, %755
  %757 = fmul fast float %677, %756
  %758 = fmul fast float %681, %756
  %759 = fmul fast float %757, 5.000000e-01
  %760 = fmul fast float %758, 5.000000e-01
  %761 = fadd fast float %759, 5.000000e-01
  %762 = fsub fast float 5.000000e-01, %760
  %763 = call float @dx.op.unary.f32(i32 7, float %761)  ; Saturate(value)
  %764 = call float @dx.op.unary.f32(i32 7, float %762)  ; Saturate(value)
  %765 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %685)  ; FMax(a,b)
  %766 = fcmp fast olt float %709, 0.000000e+00
  %767 = zext i1 %766 to i32
  %768 = add nuw nsw i32 %767, %754
  %769 = call float @dx.op.unary.f32(i32 6, float %709)  ; FAbs(value)
  %770 = fdiv fast float 1.000000e+00, %769
  %771 = fmul fast float %701, %770
  %772 = fmul fast float %705, %770
  %773 = fmul fast float %771, 5.000000e-01
  %774 = fmul fast float %772, 5.000000e-01
  %775 = fadd fast float %773, 5.000000e-01
  %776 = fsub fast float 5.000000e-01, %774
  %777 = call float @dx.op.unary.f32(i32 7, float %775)  ; Saturate(value)
  %778 = call float @dx.op.unary.f32(i32 7, float %776)  ; Saturate(value)
  %779 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %709)  ; FMax(a,b)
  %780 = fcmp fast olt float %733, 0.000000e+00
  %781 = zext i1 %780 to i32
  %782 = add nuw nsw i32 %781, %768
  %783 = call float @dx.op.unary.f32(i32 6, float %733)  ; FAbs(value)
  %784 = fdiv fast float 1.000000e+00, %783
  %785 = fmul fast float %725, %784
  %786 = fmul fast float %729, %784
  %787 = fmul fast float %785, 5.000000e-01
  %788 = fmul fast float %786, 5.000000e-01
  %789 = fadd fast float %787, 5.000000e-01
  %790 = fsub fast float 5.000000e-01, %788
  %791 = call float @dx.op.unary.f32(i32 7, float %789)  ; Saturate(value)
  %792 = call float @dx.op.unary.f32(i32 7, float %790)  ; Saturate(value)
  %793 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %733)  ; FMax(a,b)
  %794 = call float @dx.op.binary.f32(i32 36, float %777, float %791)  ; FMin(a,b)
  %795 = call float @dx.op.binary.f32(i32 36, float %763, float %794)  ; FMin(a,b)
  %796 = call float @dx.op.binary.f32(i32 36, float %778, float %792)  ; FMin(a,b)
  %797 = call float @dx.op.binary.f32(i32 36, float %764, float %796)  ; FMin(a,b)
  %798 = call float @dx.op.binary.f32(i32 35, float %777, float %791)  ; FMax(a,b)
  %799 = call float @dx.op.binary.f32(i32 35, float %763, float %798)  ; FMax(a,b)
  %800 = call float @dx.op.binary.f32(i32 35, float %778, float %792)  ; FMax(a,b)
  %801 = call float @dx.op.binary.f32(i32 35, float %764, float %800)  ; FMax(a,b)
  %802 = and i32 %65, 4
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %828, label %804, !dx.controlflow.hints !50

; <label>:804                                     ; preds = %752
  %805 = icmp eq i32 %782, 3
  br i1 %805, label %1168, label %806, !dx.controlflow.hints !51

; <label>:806                                     ; preds = %804
  %807 = fcmp fast ole float %799, 0.000000e+00
  %808 = fcmp fast ole float %801, 0.000000e+00
  %809 = or i1 %807, %808
  %810 = fcmp fast oge float %795, 1.000000e+00
  %811 = or i1 %810, %809
  %812 = fcmp fast oge float %797, 1.000000e+00
  %813 = or i1 %812, %811
  br i1 %813, label %1168, label %814, !dx.controlflow.hints !52

; <label>:814                                     ; preds = %806
  %815 = fmul fast float %795, %161
  %816 = fmul fast float %797, %162
  %817 = fmul fast float %799, %161
  %818 = fmul fast float %801, %162
  %819 = icmp eq i32 %782, 0
  %820 = call float @dx.op.unary.f32(i32 26, float %815)  ; Round_ne(value)
  %821 = call float @dx.op.unary.f32(i32 26, float %816)  ; Round_ne(value)
  %822 = call float @dx.op.unary.f32(i32 26, float %817)  ; Round_ne(value)
  %823 = call float @dx.op.unary.f32(i32 26, float %818)  ; Round_ne(value)
  %824 = fcmp fast oeq float %820, %822
  %825 = fcmp fast oeq float %821, %823
  %826 = or i1 %824, %825
  %827 = and i1 %819, %826
  br i1 %827, label %1168, label %828, !dx.controlflow.hints !53

; <label>:828                                     ; preds = %814, %752
  %829 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %830 = extractvalue %dx.types.CBufRet.i32 %829, 0
  %831 = icmp ne i32 %830, 0
  %832 = and i32 %65, 2
  %833 = icmp ne i32 %832, 0
  %834 = and i1 %833, %831
  br i1 %834, label %835, label %1165, !dx.controlflow.hints !54

; <label>:835                                     ; preds = %828
  %836 = and i32 %70, 254
  %837 = icmp eq i32 %836, 62
  %838 = call float @dx.op.binary.f32(i32 36, float %779, float %793)  ; FMin(a,b)
  %839 = call float @dx.op.binary.f32(i32 36, float %765, float %838)  ; FMin(a,b)
  %840 = and i32 %830, 2
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %994, label %842, !dx.controlflow.hints !55

; <label>:842                                     ; preds = %835
  %843 = fsub fast float %799, %795
  %844 = fsub fast float %801, %797
  %845 = fmul fast float %843, 6.400000e+01
  %846 = fmul fast float %844, 6.400000e+01
  %847 = call float @dx.op.unary.f32(i32 28, float %845)  ; Round_pi(value)
  %848 = call float @dx.op.unary.f32(i32 28, float %846)  ; Round_pi(value)
  %849 = call float @dx.op.binary.f32(i32 35, float %847, float %848)  ; FMax(a,b)
  %850 = call float @dx.op.unary.f32(i32 23, float %849)  ; Log(value)
  %851 = call float @dx.op.unary.f32(i32 28, float %850)  ; Round_pi(value)
  %852 = fptosi float %851 to i32
  %853 = call i32 @dx.op.binary.i32(i32 37, i32 %852, i32 0)  ; IMax(a,b)
  %854 = call i32 @dx.op.binary.i32(i32 38, i32 %853, i32 6)  ; IMin(a,b)
  %855 = and i32 %854, 31
  %856 = lshr i32 64, %855
  %857 = uitofp i32 %856 to float
  %858 = call float @dx.op.binary.f32(i32 35, float %857, float 1.000000e+00)  ; FMax(a,b)
  %859 = fdiv fast float 1.000000e+00, %858
  %860 = fmul fast float %858, %795
  %861 = fmul fast float %858, %797
  %862 = call float @dx.op.unary.f32(i32 27, float %860)  ; Round_ni(value)
  %863 = call float @dx.op.unary.f32(i32 27, float %861)  ; Round_ni(value)
  %864 = call float @dx.op.binary.f32(i32 35, float %862, float 0.000000e+00)  ; FMax(a,b)
  %865 = call float @dx.op.binary.f32(i32 35, float %863, float 0.000000e+00)  ; FMax(a,b)
  %866 = call float @dx.op.binary.f32(i32 36, float %864, float %858)  ; FMin(a,b)
  %867 = call float @dx.op.binary.f32(i32 36, float %865, float %858)  ; FMin(a,b)
  %868 = fmul fast float %858, %799
  %869 = fmul fast float %858, %801
  %870 = call float @dx.op.unary.f32(i32 28, float %868)  ; Round_pi(value)
  %871 = call float @dx.op.unary.f32(i32 28, float %869)  ; Round_pi(value)
  %872 = call float @dx.op.binary.f32(i32 35, float %870, float 0.000000e+00)  ; FMax(a,b)
  %873 = call float @dx.op.binary.f32(i32 35, float %871, float 0.000000e+00)  ; FMax(a,b)
  %874 = call float @dx.op.binary.f32(i32 36, float %872, float %858)  ; FMin(a,b)
  %875 = call float @dx.op.binary.f32(i32 36, float %873, float %858)  ; FMin(a,b)
  %876 = fadd fast float %866, 1.000000e+00
  %877 = fmul fast float %876, %859
  %878 = fmul fast float %859, 2.000000e+00
  %879 = fsub fast float %874, %866
  %880 = fsub fast float %875, %867
  %881 = fmul fast float %879, 5.000000e-01
  %882 = fmul fast float %880, 5.000000e-01
  %883 = call float @dx.op.unary.f32(i32 28, float %881)  ; Round_pi(value)
  %884 = call float @dx.op.unary.f32(i32 28, float %882)  ; Round_pi(value)
  %885 = fptoui float %883 to i32
  %886 = fptoui float %884 to i32
  %887 = shl i32 1, %855
  %888 = add i32 %887, -1
  %889 = lshr i32 %888, 6
  %890 = and i32 %889, 1
  %891 = sub nsw i32 0, %890
  %892 = icmp eq i32 %886, %891
  br i1 %892, label %974, label %893

; <label>:893                                     ; preds = %842
  %894 = fadd fast float %867, 1.000000e+00
  %895 = fmul fast float %894, %859
  %896 = and i32 %889, 1
  %897 = add i32 %885, %896
  %898 = add i32 %886, %896
  br label %899

; <label>:899                                     ; preds = %967, %893
  %900 = phi i32 [ %968, %967 ], [ 1, %893 ]
  %901 = phi float [ %969, %967 ], [ 0.000000e+00, %893 ]
  %902 = phi float [ %970, %967 ], [ %895, %893 ]
  %903 = phi i32 [ %971, %967 ], [ 0, %893 ]
  %904 = sub nsw i32 0, %890
  %905 = icmp eq i32 %885, %904
  br i1 %905, label %967, label %906

; <label>:906                                     ; preds = %899
  br label %907

; <label>:907                                     ; preds = %907, %906
  %908 = phi i32 [ %958, %907 ], [ %900, %906 ]
  %909 = phi float [ %962, %907 ], [ %901, %906 ]
  %910 = phi float [ %963, %907 ], [ %877, %906 ]
  %911 = phi i32 [ %964, %907 ], [ 0, %906 ]
  %912 = sitofp i32 %854 to float
  %913 = fmul fast float %859, 0xBFDFE00000000000
  %914 = fadd fast float %913, %910
  %915 = fmul fast float %859, 0x3FE0100000000000
  %916 = fadd fast float %915, %902
  %917 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %914, float %916, float undef, float undef, i32 0, i32 0, i32 undef, float %912)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %918 = extractvalue %dx.types.ResRet.f32 %917, 0
  %919 = fadd fast float %915, %910
  %920 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %919, float %916, float undef, float undef, i32 0, i32 0, i32 undef, float %912)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %921 = extractvalue %dx.types.ResRet.f32 %920, 0
  %922 = fadd fast float %913, %902
  %923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %919, float %922, float undef, float undef, i32 0, i32 0, i32 undef, float %912)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %924 = extractvalue %dx.types.ResRet.f32 %923, 0
  %925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %914, float %922, float undef, float undef, i32 0, i32 0, i32 undef, float %912)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %926 = extractvalue %dx.types.ResRet.f32 %925, 0
  %927 = fcmp fast olt float %918, -1.000000e+00
  %928 = fcmp fast ogt float %918, -1.000000e+00
  %929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %930 = extractvalue %dx.types.CBufRet.f32 %929, 1
  %931 = select i1 %928, float %930, float 1.000000e+00
  %932 = fadd fast float %918, 1.000000e+00
  %933 = fmul fast float %931, %932
  %934 = call float @dx.op.unary.f32(i32 6, float %933)  ; FAbs(value)
  %935 = fcmp fast olt float %921, -1.000000e+00
  %936 = fcmp fast ogt float %921, -1.000000e+00
  %937 = select i1 %936, float %930, float 1.000000e+00
  %938 = fadd fast float %921, 1.000000e+00
  %939 = fmul fast float %937, %938
  %940 = call float @dx.op.unary.f32(i32 6, float %939)  ; FAbs(value)
  %941 = fcmp fast olt float %924, -1.000000e+00
  %942 = fcmp fast ogt float %924, -1.000000e+00
  %943 = select i1 %942, float %930, float 1.000000e+00
  %944 = fadd fast float %924, 1.000000e+00
  %945 = fmul fast float %943, %944
  %946 = call float @dx.op.unary.f32(i32 6, float %945)  ; FAbs(value)
  %947 = fcmp fast olt float %926, -1.000000e+00
  %948 = fcmp fast ogt float %926, -1.000000e+00
  %949 = select i1 %948, float %930, float 1.000000e+00
  %950 = fadd fast float %926, 1.000000e+00
  %951 = fmul fast float %949, %950
  %952 = call float @dx.op.unary.f32(i32 6, float %951)  ; FAbs(value)
  %953 = and i1 %927, %935
  %954 = and i1 %953, %941
  %955 = and i1 %954, %947
  %956 = icmp ne i32 %908, 0
  %957 = and i1 %956, %955
  %958 = zext i1 %957 to i32
  %959 = call float @dx.op.binary.f32(i32 35, float %940, float %946)  ; FMax(a,b)
  %960 = call float @dx.op.binary.f32(i32 35, float %934, float %959)  ; FMax(a,b)
  %961 = call float @dx.op.binary.f32(i32 35, float %960, float %952)  ; FMax(a,b)
  %962 = call float @dx.op.binary.f32(i32 35, float %961, float %909)  ; FMax(a,b)
  %963 = fadd fast float %910, %878
  %964 = add nuw i32 %911, 1
  %965 = icmp eq i32 %964, %897
  br i1 %965, label %966, label %907

; <label>:966                                     ; preds = %907
  br label %967

; <label>:967                                     ; preds = %966, %899
  %968 = phi i32 [ %900, %899 ], [ %958, %966 ]
  %969 = phi float [ %901, %899 ], [ %962, %966 ]
  %970 = fadd fast float %902, %878
  %971 = add nuw i32 %903, 1
  %972 = icmp eq i32 %971, %898
  br i1 %972, label %973, label %899

; <label>:973                                     ; preds = %967
  br label %974

; <label>:974                                     ; preds = %973, %842
  %975 = phi i32 [ 1, %842 ], [ %968, %973 ]
  %976 = phi float [ 0.000000e+00, %842 ], [ %969, %973 ]
  %977 = icmp eq i32 %975, 0
  %978 = and i1 %837, %977
  br i1 %978, label %991, label %979, !dx.controlflow.hints !56

; <label>:979                                     ; preds = %974
  %980 = fcmp fast une float %839, 0.000000e+00
  %981 = bitcast float %839 to i32
  %982 = and i32 %981, 2139095040
  %983 = add nsw i32 %982, -1056964608
  %984 = ashr exact i32 %983, 23
  %985 = add nsw i32 %984, -10
  %986 = sitofp i32 %985 to float
  %987 = select i1 %980, float %986, float -1.000000e+01
  %988 = call float @dx.op.unary.f32(i32 21, float %987)  ; Exp(value)
  %989 = fsub fast float %839, %988
  %990 = fcmp fast ogt float %976, %989
  br label %991

; <label>:991                                     ; preds = %979, %974
  %992 = phi i1 [ %990, %979 ], [ true, %974 ]
  %993 = zext i1 %992 to i32
  br label %994

; <label>:994                                     ; preds = %991, %835
  %995 = phi i32 [ %993, %991 ], [ 1, %835 ]
  %996 = and i32 %830, 1
  %997 = icmp ne i32 %996, 0
  %998 = icmp ne i32 %995, 0
  %999 = and i1 %998, %997
  br i1 %999, label %1000, label %1165, !dx.controlflow.hints !57

; <label>:1000                                    ; preds = %994
  %1001 = extractvalue %dx.types.CBufRet.i32 %829, 3
  %1002 = extractvalue %dx.types.CBufRet.i32 %829, 1
  %1003 = extractvalue %dx.types.CBufRet.i32 %829, 2
  %1004 = fsub fast float %799, %795
  %1005 = fsub fast float %801, %797
  %1006 = uitofp i32 %1002 to float
  %1007 = uitofp i32 %1003 to float
  %1008 = fmul fast float %1006, %1004
  %1009 = fmul fast float %1007, %1005
  %1010 = call float @dx.op.unary.f32(i32 28, float %1008)  ; Round_pi(value)
  %1011 = call float @dx.op.unary.f32(i32 28, float %1009)  ; Round_pi(value)
  %1012 = call float @dx.op.binary.f32(i32 35, float %1010, float %1011)  ; FMax(a,b)
  %1013 = call float @dx.op.unary.f32(i32 23, float %1012)  ; Log(value)
  %1014 = call float @dx.op.unary.f32(i32 28, float %1013)  ; Round_pi(value)
  %1015 = fptosi float %1014 to i32
  %1016 = call i32 @dx.op.binary.i32(i32 37, i32 %1015, i32 0)  ; IMax(a,b)
  %1017 = call i32 @dx.op.binary.i32(i32 38, i32 %1016, i32 %1001)  ; IMin(a,b)
  %1018 = and i32 %1017, 31
  %1019 = lshr i32 %1002, %1018
  %1020 = lshr i32 %1003, %1018
  %1021 = uitofp i32 %1019 to float
  %1022 = uitofp i32 %1020 to float
  %1023 = call float @dx.op.binary.f32(i32 35, float %1021, float 1.000000e+00)  ; FMax(a,b)
  %1024 = call float @dx.op.binary.f32(i32 35, float %1022, float 1.000000e+00)  ; FMax(a,b)
  %1025 = fdiv fast float 1.000000e+00, %1023
  %1026 = fdiv fast float 1.000000e+00, %1024
  %1027 = fmul fast float %1023, %795
  %1028 = fmul fast float %1024, %797
  %1029 = call float @dx.op.unary.f32(i32 27, float %1027)  ; Round_ni(value)
  %1030 = call float @dx.op.unary.f32(i32 27, float %1028)  ; Round_ni(value)
  %1031 = call float @dx.op.binary.f32(i32 35, float %1029, float 0.000000e+00)  ; FMax(a,b)
  %1032 = call float @dx.op.binary.f32(i32 35, float %1030, float 0.000000e+00)  ; FMax(a,b)
  %1033 = call float @dx.op.binary.f32(i32 36, float %1031, float %1023)  ; FMin(a,b)
  %1034 = call float @dx.op.binary.f32(i32 36, float %1032, float %1024)  ; FMin(a,b)
  %1035 = fmul fast float %1023, %799
  %1036 = fmul fast float %1024, %801
  %1037 = call float @dx.op.unary.f32(i32 28, float %1035)  ; Round_pi(value)
  %1038 = call float @dx.op.unary.f32(i32 28, float %1036)  ; Round_pi(value)
  %1039 = call float @dx.op.binary.f32(i32 35, float %1037, float 0.000000e+00)  ; FMax(a,b)
  %1040 = call float @dx.op.binary.f32(i32 35, float %1038, float 0.000000e+00)  ; FMax(a,b)
  %1041 = call float @dx.op.binary.f32(i32 36, float %1039, float %1023)  ; FMin(a,b)
  %1042 = call float @dx.op.binary.f32(i32 36, float %1040, float %1024)  ; FMin(a,b)
  %1043 = fadd fast float %1033, 1.000000e+00
  %1044 = fmul fast float %1043, %1025
  %1045 = fmul fast float %1025, 2.000000e+00
  %1046 = fmul fast float %1026, 2.000000e+00
  %1047 = fsub fast float %1041, %1033
  %1048 = fsub fast float %1042, %1034
  %1049 = fmul fast float %1047, 5.000000e-01
  %1050 = fmul fast float %1048, 5.000000e-01
  %1051 = call float @dx.op.unary.f32(i32 28, float %1049)  ; Round_pi(value)
  %1052 = call float @dx.op.unary.f32(i32 28, float %1050)  ; Round_pi(value)
  %1053 = fptoui float %1051 to i32
  %1054 = fptoui float %1052 to i32
  %1055 = shl i32 1, %1018
  %1056 = add i32 %1055, -1
  %1057 = and i32 %1056, %1002
  %1058 = icmp ne i32 %1057, 0
  %1059 = zext i1 %1058 to i32
  %1060 = add i32 %1053, %1059
  %1061 = and i32 %1056, %1003
  %1062 = icmp ne i32 %1061, 0
  %1063 = zext i1 %1062 to i32
  %1064 = add i32 %1054, %1063
  %1065 = icmp eq i32 %1064, 0
  br i1 %1065, label %1145, label %1066

; <label>:1066                                    ; preds = %1000
  %1067 = fadd fast float %1034, 1.000000e+00
  %1068 = fmul fast float %1067, %1026
  br label %1069

; <label>:1069                                    ; preds = %1138, %1066
  %1070 = phi i32 [ %1139, %1138 ], [ 1, %1066 ]
  %1071 = phi float [ %1140, %1138 ], [ 0.000000e+00, %1066 ]
  %1072 = phi float [ %1141, %1138 ], [ %1068, %1066 ]
  %1073 = phi i32 [ %1142, %1138 ], [ 0, %1066 ]
  %1074 = icmp eq i32 %1060, 0
  br i1 %1074, label %1138, label %1075

; <label>:1075                                    ; preds = %1069
  br label %1076

; <label>:1076                                    ; preds = %1076, %1075
  %1077 = phi i32 [ %1129, %1076 ], [ %1070, %1075 ]
  %1078 = phi float [ %1133, %1076 ], [ %1071, %1075 ]
  %1079 = phi float [ %1134, %1076 ], [ %1044, %1075 ]
  %1080 = phi i32 [ %1135, %1076 ], [ 0, %1075 ]
  %1081 = sitofp i32 %1017 to float
  %1082 = fmul fast float %1025, 0xBFDFE00000000000
  %1083 = fadd fast float %1082, %1079
  %1084 = fmul fast float %1026, 0x3FE0100000000000
  %1085 = fadd fast float %1084, %1072
  %1086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %1083, float %1085, float undef, float undef, i32 0, i32 0, i32 undef, float %1081)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1087 = extractvalue %dx.types.ResRet.f32 %1086, 0
  %1088 = fmul fast float %1025, 0x3FE0100000000000
  %1089 = fadd fast float %1088, %1079
  %1090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %1089, float %1085, float undef, float undef, i32 0, i32 0, i32 undef, float %1081)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1091 = extractvalue %dx.types.ResRet.f32 %1090, 0
  %1092 = fmul fast float %1026, 0xBFDFE00000000000
  %1093 = fadd fast float %1092, %1072
  %1094 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %1089, float %1093, float undef, float undef, i32 0, i32 0, i32 undef, float %1081)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1095 = extractvalue %dx.types.ResRet.f32 %1094, 0
  %1096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %1083, float %1093, float undef, float undef, i32 0, i32 0, i32 undef, float %1081)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1097 = extractvalue %dx.types.ResRet.f32 %1096, 0
  %1098 = fcmp fast olt float %1087, -1.000000e+00
  %1099 = fcmp fast ogt float %1087, -1.000000e+00
  %1100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1101 = extractvalue %dx.types.CBufRet.f32 %1100, 1
  %1102 = select i1 %1099, float %1101, float 1.000000e+00
  %1103 = fadd fast float %1087, 1.000000e+00
  %1104 = fmul fast float %1102, %1103
  %1105 = call float @dx.op.unary.f32(i32 6, float %1104)  ; FAbs(value)
  %1106 = fcmp fast olt float %1091, -1.000000e+00
  %1107 = fcmp fast ogt float %1091, -1.000000e+00
  %1108 = select i1 %1107, float %1101, float 1.000000e+00
  %1109 = fadd fast float %1091, 1.000000e+00
  %1110 = fmul fast float %1108, %1109
  %1111 = call float @dx.op.unary.f32(i32 6, float %1110)  ; FAbs(value)
  %1112 = fcmp fast olt float %1095, -1.000000e+00
  %1113 = fcmp fast ogt float %1095, -1.000000e+00
  %1114 = select i1 %1113, float %1101, float 1.000000e+00
  %1115 = fadd fast float %1095, 1.000000e+00
  %1116 = fmul fast float %1114, %1115
  %1117 = call float @dx.op.unary.f32(i32 6, float %1116)  ; FAbs(value)
  %1118 = fcmp fast olt float %1097, -1.000000e+00
  %1119 = fcmp fast ogt float %1097, -1.000000e+00
  %1120 = select i1 %1119, float %1101, float 1.000000e+00
  %1121 = fadd fast float %1097, 1.000000e+00
  %1122 = fmul fast float %1120, %1121
  %1123 = call float @dx.op.unary.f32(i32 6, float %1122)  ; FAbs(value)
  %1124 = and i1 %1098, %1106
  %1125 = and i1 %1124, %1112
  %1126 = and i1 %1125, %1118
  %1127 = icmp ne i32 %1077, 0
  %1128 = and i1 %1127, %1126
  %1129 = zext i1 %1128 to i32
  %1130 = call float @dx.op.binary.f32(i32 35, float %1111, float %1117)  ; FMax(a,b)
  %1131 = call float @dx.op.binary.f32(i32 35, float %1105, float %1130)  ; FMax(a,b)
  %1132 = call float @dx.op.binary.f32(i32 35, float %1131, float %1123)  ; FMax(a,b)
  %1133 = call float @dx.op.binary.f32(i32 35, float %1132, float %1078)  ; FMax(a,b)
  %1134 = fadd fast float %1079, %1045
  %1135 = add nuw i32 %1080, 1
  %1136 = icmp eq i32 %1135, %1060
  br i1 %1136, label %1137, label %1076

; <label>:1137                                    ; preds = %1076
  br label %1138

; <label>:1138                                    ; preds = %1137, %1069
  %1139 = phi i32 [ %1070, %1069 ], [ %1129, %1137 ]
  %1140 = phi float [ %1071, %1069 ], [ %1133, %1137 ]
  %1141 = fadd fast float %1072, %1046
  %1142 = add nuw i32 %1073, 1
  %1143 = icmp eq i32 %1142, %1064
  br i1 %1143, label %1144, label %1069

; <label>:1144                                    ; preds = %1138
  br label %1145

; <label>:1145                                    ; preds = %1144, %1000
  %1146 = phi i32 [ 1, %1000 ], [ %1139, %1144 ]
  %1147 = phi float [ 0.000000e+00, %1000 ], [ %1140, %1144 ]
  %1148 = icmp eq i32 %1146, 0
  %1149 = and i1 %837, %1148
  br i1 %1149, label %1162, label %1150, !dx.controlflow.hints !56

; <label>:1150                                    ; preds = %1145
  %1151 = fcmp fast une float %839, 0.000000e+00
  %1152 = bitcast float %839 to i32
  %1153 = and i32 %1152, 2139095040
  %1154 = add nsw i32 %1153, -1056964608
  %1155 = ashr exact i32 %1154, 23
  %1156 = add nsw i32 %1155, -10
  %1157 = sitofp i32 %1156 to float
  %1158 = select i1 %1151, float %1157, float -1.000000e+01
  %1159 = call float @dx.op.unary.f32(i32 21, float %1158)  ; Exp(value)
  %1160 = fsub fast float %839, %1159
  %1161 = fcmp fast ogt float %1147, %1160
  br label %1162

; <label>:1162                                    ; preds = %1150, %1145
  %1163 = phi i1 [ %1161, %1150 ], [ true, %1145 ]
  %1164 = zext i1 %1163 to i32
  br label %1165

; <label>:1165                                    ; preds = %1162, %994, %828
  %1166 = phi i32 [ %1164, %1162 ], [ %995, %994 ], [ 1, %828 ]
  %1167 = icmp ne i32 %1166, 0
  br label %1168

; <label>:1168                                    ; preds = %1165, %814, %806, %804, %736
  %1169 = phi i1 [ %1167, %1165 ], [ false, %736 ], [ false, %804 ], [ false, %806 ], [ false, %814 ]
  %1170 = zext i1 %1169 to i32
  br label %1171

; <label>:1171                                    ; preds = %1168, %96
  %1172 = phi i32 [ %1170, %1168 ], [ %114, %96 ]
  %1173 = icmp ne i32 %1172, 0
  %1174 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %1175 = call %dx.types.fouri32 @dx.op.waveActiveBallot(i32 116, i1 %1173)  ; WaveActiveBallot(cond)
  %1176 = extractvalue %dx.types.fouri32 %1175, 0
  %1177 = extractvalue %dx.types.fouri32 %1175, 1
  %1178 = icmp ugt i32 %1174, 63
  br i1 %1178, label %1200, label %1179, !dx.controlflow.hints !58

; <label>:1179                                    ; preds = %1171
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1180 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %1180, label %1181, label %1184, !dx.controlflow.hints !59

; <label>:1181                                    ; preds = %1179
  %1182 = udiv i32 %23, %1174
  %1183 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1182
  store i32 %1176, i32 addrspace(3)* %1183, align 4, !tbaa !60
  br label %1184

; <label>:1184                                    ; preds = %1181, %1179
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1185 = icmp eq i32 %1174, 32
  br i1 %1185, label %1186, label %1189, !dx.controlflow.hints !64

; <label>:1186                                    ; preds = %1184
  %1187 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 0), align 4, !tbaa !60
  %1188 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 1), align 4, !tbaa !60
  br label %1200

; <label>:1189                                    ; preds = %1184
  %1190 = icmp eq i32 %1174, 16
  br i1 %1190, label %1191, label %1200, !dx.controlflow.hints !65

; <label>:1191                                    ; preds = %1189
  %1192 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 0), align 4, !tbaa !60
  %1193 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 1), align 4, !tbaa !60
  %1194 = shl i32 %1193, 16
  %1195 = or i32 %1194, %1192
  %1196 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 2), align 4, !tbaa !60
  %1197 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 3), align 4, !tbaa !60
  %1198 = shl i32 %1197, 16
  %1199 = or i32 %1198, %1196
  br label %1200

; <label>:1200                                    ; preds = %1191, %1189, %1186, %1171
  %1201 = phi i32 [ %1187, %1186 ], [ %1195, %1191 ], [ 0, %1189 ], [ %1176, %1171 ]
  %1202 = phi i32 [ %1188, %1186 ], [ %1199, %1191 ], [ 0, %1189 ], [ %1177, %1171 ]
  %1203 = icmp eq i32 %23, 0
  br i1 %1203, label %1204, label %1208, !dx.controlflow.hints !66

; <label>:1204                                    ; preds = %1200
  %1205 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1201)  ; Countbits(value)
  %1206 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1202)  ; Countbits(value)
  %1207 = add i32 %1206, %1205
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %22, i32 0, i32 %1201, i32 %1202, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %24, i32 undef, i32 %1207, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1208

; <label>:1208                                    ; preds = %1204, %1200
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

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneCount(i32) #0

; Function Attrs: nounwind
declare %dx.types.fouri32 @dx.op.waveActiveBallot(i32, i1) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind
declare i1 @dx.op.waveIsFirstLane(i32) #2

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
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }
attributes #3 = { noduplicate nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!32}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !22, !26, !30}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18, !19, !20, !21}
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
!22 = !{!23, !25}
!23 = !{i32 0, %"class.RWStructuredBuffer<GPCulledTriCluster>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i1 false, i1 false, i1 false, !24}
!24 = !{i32 1, i32 8}
!25 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!26 = !{!27, !28, !29}
!27 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!28 = !{i32 1, %GPSurfPassConsts* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!29 = !{i32 2, %GPOcclusionPassConsts* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!30 = !{!31}
!31 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!32 = !{void ()* @triangle_cull_pass, !"triangle_cull_pass", null, !4, !33}
!33 = !{i32 0, i64 524560, i32 4, !34}
!34 = !{i32 64, i32 1, i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = !{i32 1}
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
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = !{!61, !61, i64 0}
!61 = !{!"int", !62, i64 0}
!62 = !{!"omnipotent char", !63, i64 0}
!63 = !{!"Simple C/C++ TBAA"}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}

