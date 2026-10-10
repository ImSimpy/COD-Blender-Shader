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
; shader hash: de308a5a47a077c142bb8a7fa1e7abbd
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
;                                   texture    byte         r/o     T15            t25     1
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

define void @triangle_cull_two_pass() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %25 = shl i32 %23, 2
  %26 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %25, i32 undef)  ; BufferLoad(srv,index,wot)
  %27 = extractvalue %dx.types.ResRet.i32 %26, 0
  %28 = shl i32 %27, 2
  %29 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %28, i32 undef)  ; BufferLoad(srv,index,wot)
  %30 = extractvalue %dx.types.ResRet.i32 %29, 0
  %31 = and i32 %30, 65535
  %32 = lshr i32 %30, 16
  %33 = and i32 %32, 1023
  %34 = and i32 %30, 67108864
  %35 = icmp ne i32 %34, 0
  %36 = and i32 %30, 134217728
  %37 = and i32 %30, 536870912
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51, !dx.controlflow.hints !36

; <label>:39                                      ; preds = %0
  %40 = shl nuw nsw i32 %31, 3
  %41 = or i32 %40, 5242880
  %42 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %41, i32 undef)  ; BufferLoad(srv,index,wot)
  %43 = extractvalue %dx.types.ResRet.i32 %42, 0
  %44 = extractvalue %dx.types.ResRet.i32 %42, 1
  %45 = lshr i32 %43, 16
  %46 = and i32 %44, 16777215
  %47 = lshr i32 %44, 24
  %48 = lshr i32 %44, 25
  %49 = and i32 %48, 2
  %50 = xor i32 %49, 3
  br label %66

; <label>:51                                      ; preds = %0
  %52 = mul nuw nsw i32 %31, 12
  %53 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %52, i32 undef)  ; BufferLoad(srv,index,wot)
  %54 = extractvalue %dx.types.ResRet.i32 %53, 0
  %55 = extractvalue %dx.types.ResRet.i32 %53, 1
  %56 = extractvalue %dx.types.ResRet.i32 %53, 2
  %57 = lshr i32 %54, 28
  %58 = and i32 %55, 65535
  %59 = shl nuw nsw i32 %57, 16
  %60 = or i32 %59, %58
  %61 = and i32 %54, 268435455
  %62 = and i32 %56, 15
  %63 = lshr i32 %56, 4
  %64 = and i32 %63, 15
  %65 = lshr i32 %56, 8
  br label %66

; <label>:66                                      ; preds = %51, %39
  %67 = phi i32 [ %46, %39 ], [ 0, %51 ]
  %68 = phi i32 [ %43, %39 ], [ %56, %51 ]
  %69 = phi i32 [ %45, %39 ], [ %65, %51 ]
  %70 = phi i32 [ %47, %39 ], [ %64, %51 ]
  %71 = phi i32 [ %50, %39 ], [ %62, %51 ]
  %72 = phi i32 [ 0, %39 ], [ %60, %51 ]
  %73 = phi i32 [ 0, %39 ], [ %61, %51 ]
  %74 = lshr i32 %68, 24
  br i1 %38, label %75, label %80, !dx.controlflow.hints !37

; <label>:75                                      ; preds = %66
  %76 = shl nuw nsw i32 %31, 4
  %77 = add nuw nsw i32 %76, 5767168
  %78 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %77, i32 undef)  ; BufferLoad(srv,index,wot)
  %79 = extractvalue %dx.types.ResRet.i32 %78, 2
  br label %85

; <label>:80                                      ; preds = %66
  %81 = mul nuw nsw i32 %31, 12
  %82 = add nuw nsw i32 %81, 1572864
  %83 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %82, i32 undef)  ; BufferLoad(srv,index,wot)
  %84 = extractvalue %dx.types.ResRet.i32 %83, 2
  br label %85

; <label>:85                                      ; preds = %80, %75
  %86 = phi i32 [ %79, %75 ], [ %84, %80 ]
  br i1 %38, label %87, label %93, !dx.controlflow.hints !38

; <label>:87                                      ; preds = %85
  %88 = shl nuw nsw i32 %31, 3
  %89 = or i32 %88, 6815744
  %90 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %89, i32 undef)  ; BufferLoad(srv,index,wot)
  %91 = extractvalue %dx.types.ResRet.i32 %90, 0
  %92 = extractvalue %dx.types.ResRet.i32 %90, 1
  br label %100

; <label>:93                                      ; preds = %85
  %94 = mul nuw nsw i32 %31, 12
  %95 = add nuw nsw i32 %94, 786432
  %96 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %95, i32 undef)  ; BufferLoad(srv,index,wot)
  %97 = extractvalue %dx.types.ResRet.i32 %96, 0
  %98 = extractvalue %dx.types.ResRet.i32 %96, 1
  %99 = extractvalue %dx.types.ResRet.i32 %96, 2
  br label %100

; <label>:100                                     ; preds = %93, %87
  %101 = phi i32 [ %92, %87 ], [ %99, %93 ]
  %102 = phi i32 [ 0, %87 ], [ %98, %93 ]
  %103 = phi i32 [ %91, %87 ], [ %97, %93 ]
  %104 = add i32 %86, %33
  %105 = shl i32 %104, 2
  %106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %105, i32 undef)  ; BufferLoad(srv,index,wot)
  %107 = extractvalue %dx.types.ResRet.i32 %106, 0
  %108 = shl i32 %107, 5
  %109 = or i32 %108, 16
  %110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %109, i32 undef)  ; BufferLoad(srv,index,wot)
  %111 = extractvalue %dx.types.ResRet.i32 %110, 3
  %112 = lshr i32 %111, 16
  %113 = icmp ult i32 %24, %112
  %114 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.i32 %114, 2
  %116 = icmp ult i32 %102, %115
  %117 = and i1 %113, %116
  %118 = zext i1 %117 to i32
  %119 = and i1 %35, %117
  br i1 %119, label %120, label %1175, !dx.controlflow.hints !39

; <label>:120                                     ; preds = %100
  %121 = shl nuw nsw i32 %74, 6
  %122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %121, i32 undef)  ; BufferLoad(srv,index,wot)
  %123 = extractvalue %dx.types.ResRet.i32 %122, 0
  %124 = extractvalue %dx.types.ResRet.i32 %122, 1
  %125 = extractvalue %dx.types.ResRet.i32 %122, 3
  %126 = bitcast i32 %123 to float
  %127 = bitcast i32 %124 to float
  %128 = bitcast i32 %125 to float
  %129 = or i32 %121, 16
  %130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %129, i32 undef)  ; BufferLoad(srv,index,wot)
  %131 = extractvalue %dx.types.ResRet.i32 %130, 0
  %132 = extractvalue %dx.types.ResRet.i32 %130, 1
  %133 = extractvalue %dx.types.ResRet.i32 %130, 3
  %134 = bitcast i32 %131 to float
  %135 = bitcast i32 %132 to float
  %136 = bitcast i32 %133 to float
  %137 = or i32 %121, 32
  %138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %137, i32 undef)  ; BufferLoad(srv,index,wot)
  %139 = extractvalue %dx.types.ResRet.i32 %138, 0
  %140 = extractvalue %dx.types.ResRet.i32 %138, 1
  %141 = extractvalue %dx.types.ResRet.i32 %138, 3
  %142 = bitcast i32 %139 to float
  %143 = bitcast i32 %140 to float
  %144 = bitcast i32 %141 to float
  %145 = or i32 %121, 48
  %146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %145, i32 undef)  ; BufferLoad(srv,index,wot)
  %147 = extractvalue %dx.types.ResRet.i32 %146, 0
  %148 = extractvalue %dx.types.ResRet.i32 %146, 1
  %149 = extractvalue %dx.types.ResRet.i32 %146, 3
  %150 = bitcast i32 %147 to float
  %151 = bitcast i32 %148 to float
  %152 = bitcast i32 %149 to float
  %153 = shl nuw nsw i32 %74, 4
  %154 = or i32 %153, 4096
  %155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %154, i32 undef)  ; BufferLoad(srv,index,wot)
  %156 = extractvalue %dx.types.ResRet.i32 %155, 0
  %157 = extractvalue %dx.types.ResRet.i32 %155, 1
  %158 = extractvalue %dx.types.ResRet.i32 %155, 2
  %159 = extractvalue %dx.types.ResRet.i32 %155, 3
  %160 = icmp eq i32 %159, 1
  %161 = add nuw nsw i32 %153, 5120
  %162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %161, i32 undef)  ; BufferLoad(srv,index,wot)
  %163 = extractvalue %dx.types.ResRet.i32 %162, 0
  %164 = extractvalue %dx.types.ResRet.i32 %162, 1
  %165 = bitcast i32 %163 to float
  %166 = bitcast i32 %164 to float
  %167 = icmp eq i32 %71, 2
  br i1 %167, label %168, label %246, !dx.controlflow.hints !40

; <label>:168                                     ; preds = %120
  %169 = shl nsw i32 %72, 5
  %170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.f32 %170, 0
  %172 = extractvalue %dx.types.ResRet.f32 %170, 1
  %173 = extractvalue %dx.types.ResRet.f32 %170, 2
  %174 = or i32 %169, 16
  %175 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %174, i32 undef)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.f32 %175, 0
  %177 = extractvalue %dx.types.ResRet.f32 %175, 1
  %178 = extractvalue %dx.types.ResRet.f32 %175, 2
  %179 = mul i32 %73, 24
  %180 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %179, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.f32 %180, 0
  %182 = extractvalue %dx.types.ResRet.f32 %180, 1
  %183 = extractvalue %dx.types.ResRet.f32 %180, 2
  %184 = add i32 %179, 12
  %185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %184, i32 undef)  ; BufferLoad(srv,index,wot)
  %186 = extractvalue %dx.types.ResRet.i32 %185, 0
  %187 = extractvalue %dx.types.ResRet.i32 %185, 1
  %188 = add i32 %179, 20
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = and i32 %186, 65535
  %192 = uitofp i32 %191 to float
  %193 = lshr i32 %186, 16
  %194 = uitofp i32 %193 to float
  %195 = and i32 %187, 65535
  %196 = uitofp i32 %195 to float
  %197 = lshr i32 %187, 16
  %198 = uitofp i32 %197 to float
  %199 = fmul fast float %192, 0x3F00001000000000
  %200 = fmul fast float %194, 0x3F00001000000000
  %201 = fmul fast float %196, 0x3F00001000000000
  %202 = fmul fast float %198, 0x3F00001000000000
  %203 = fadd fast float %199, -1.000000e+00
  %204 = fadd fast float %200, -1.000000e+00
  %205 = fadd fast float %201, -1.000000e+00
  %206 = fadd fast float %202, -1.000000e+00
  %207 = and i32 %190, 65535
  %208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %207)  ; LegacyF16ToF32(value)
  %209 = fmul fast float %194, 0x3F10001000000000
  %210 = fadd fast float %209, -2.000000e+00
  %211 = fmul fast float %210, %204
  %212 = fsub fast float 1.000000e+00, %211
  %213 = fmul fast float %196, 0x3F10001000000000
  %214 = fadd fast float %213, -2.000000e+00
  %215 = fmul fast float %214, %205
  %216 = fsub fast float %212, %215
  %217 = fmul fast float %192, 0x3F10001000000000
  %218 = fadd fast float %217, -2.000000e+00
  %219 = fmul fast float %218, %204
  %220 = fmul fast float %214, %206
  %221 = fsub fast float %219, %220
  %222 = fmul fast float %218, %205
  %223 = fmul fast float %210, %206
  %224 = fadd fast float %222, %223
  %225 = fadd fast float %219, %220
  %226 = fmul fast float %218, %203
  %227 = fsub fast float 1.000000e+00, %226
  %228 = fsub fast float %227, %215
  %229 = fmul fast float %210, %205
  %230 = fmul fast float %218, %206
  %231 = fsub fast float %229, %230
  %232 = fsub fast float %222, %223
  %233 = fadd fast float %229, %230
  %234 = fsub fast float %227, %211
  %235 = fmul fast float %216, %208
  %236 = fmul fast float %225, %208
  %237 = fmul fast float %232, %208
  %238 = fmul fast float %221, %208
  %239 = fmul fast float %228, %208
  %240 = fmul fast float %233, %208
  %241 = fmul fast float %224, %208
  %242 = fmul fast float %231, %208
  %243 = fmul fast float %234, %208
  %244 = call float @dx.op.binary.f32(i32 35, float %177, float %178), !dx.precise !41  ; FMax(a,b)
  %245 = call float @dx.op.binary.f32(i32 35, float %176, float %244), !dx.precise !41  ; FMax(a,b)
  br label %460

; <label>:246                                     ; preds = %120
  %247 = icmp eq i32 %71, 0
  br i1 %247, label %248, label %382, !dx.controlflow.hints !42

; <label>:248                                     ; preds = %246
  %249 = and i32 %70, 1
  %250 = icmp eq i32 %249, 0
  %251 = lshr exact i32 %36, 6
  %252 = shl i32 %73, 6
  %253 = add i32 %252, %251
  %254 = or i32 %253, 16
  br i1 %250, label %309, label %255, !dx.controlflow.hints !43

; <label>:255                                     ; preds = %248
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = extractvalue %dx.types.ResRet.i32 %256, 1
  %259 = extractvalue %dx.types.ResRet.i32 %256, 2
  %260 = extractvalue %dx.types.ResRet.i32 %256, 3
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = extractvalue %dx.types.ResRet.i32 %261, 1
  %264 = extractvalue %dx.types.ResRet.i32 %261, 2
  %265 = extractvalue %dx.types.ResRet.i32 %261, 3
  %266 = bitcast i32 %257 to float
  %267 = bitcast i32 %258 to float
  %268 = bitcast i32 %259 to float
  %269 = bitcast i32 %260 to float
  %270 = bitcast i32 %262 to float
  %271 = bitcast i32 %263 to float
  %272 = bitcast i32 %264 to float
  %273 = bitcast i32 %265 to float
  %274 = fmul fast float %267, %267
  %275 = fmul fast float %274, 2.000000e+00
  %276 = fsub fast float 1.000000e+00, %275
  %277 = fmul fast float %268, %268
  %278 = fmul fast float %277, 2.000000e+00
  %279 = fsub fast float %276, %278
  %280 = fmul fast float %266, 2.000000e+00
  %281 = fmul fast float %280, %267
  %282 = fmul fast float %268, 2.000000e+00
  %283 = fmul fast float %282, %269
  %284 = fsub fast float %281, %283
  %285 = fmul fast float %268, %266
  %286 = fmul fast float %269, %267
  %287 = fadd fast float %285, %286
  %288 = fmul fast float %287, 2.000000e+00
  %289 = fmul fast float %267, %266
  %290 = fmul fast float %269, %268
  %291 = fadd fast float %289, %290
  %292 = fmul fast float %291, 2.000000e+00
  %293 = fmul fast float %266, %266
  %294 = fmul fast float %293, 2.000000e+00
  %295 = fsub fast float 1.000000e+00, %294
  %296 = fsub fast float %295, %278
  %297 = fmul fast float %267, 2.000000e+00
  %298 = fmul fast float %297, %268
  %299 = fmul fast float %280, %269
  %300 = fsub fast float %298, %299
  %301 = fmul fast float %280, %268
  %302 = fmul fast float %297, %269
  %303 = fsub fast float %301, %302
  %304 = fmul fast float %268, %267
  %305 = fmul fast float %269, %266
  %306 = fadd fast float %304, %305
  %307 = fmul fast float %306, 2.000000e+00
  %308 = fsub fast float %295, %275
  br label %460

; <label>:309                                     ; preds = %248
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = extractvalue %dx.types.ResRet.i32 %310, 1
  %313 = extractvalue %dx.types.ResRet.i32 %310, 2
  %314 = extractvalue %dx.types.ResRet.i32 %310, 3
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = extractvalue %dx.types.ResRet.i32 %315, 1
  %318 = extractvalue %dx.types.ResRet.i32 %315, 2
  %319 = extractvalue %dx.types.ResRet.i32 %315, 3
  %320 = or i32 %253, 48
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = extractvalue %dx.types.ResRet.i32 %321, 1
  %324 = extractvalue %dx.types.ResRet.i32 %321, 2
  %325 = extractvalue %dx.types.ResRet.i32 %321, 3
  %326 = bitcast i32 %311 to float
  %327 = bitcast i32 %312 to float
  %328 = bitcast i32 %313 to float
  %329 = bitcast i32 %314 to float
  %330 = bitcast i32 %316 to float
  %331 = bitcast i32 %317 to float
  %332 = bitcast i32 %318 to float
  %333 = bitcast i32 %319 to float
  %334 = bitcast i32 %322 to float
  %335 = bitcast i32 %323 to float
  %336 = bitcast i32 %324 to float
  %337 = bitcast i32 %325 to float
  %338 = fmul fast float %327, %327
  %339 = fmul fast float %338, 2.000000e+00
  %340 = fsub fast float 1.000000e+00, %339
  %341 = fmul fast float %328, %328
  %342 = fmul fast float %341, 2.000000e+00
  %343 = fsub fast float %340, %342
  %344 = fmul fast float %326, 2.000000e+00
  %345 = fmul fast float %344, %327
  %346 = fmul fast float %328, 2.000000e+00
  %347 = fmul fast float %346, %329
  %348 = fsub fast float %345, %347
  %349 = fmul fast float %328, %326
  %350 = fmul fast float %329, %327
  %351 = fadd fast float %349, %350
  %352 = fmul fast float %351, 2.000000e+00
  %353 = fmul fast float %327, %326
  %354 = fmul fast float %329, %328
  %355 = fadd fast float %353, %354
  %356 = fmul fast float %355, 2.000000e+00
  %357 = fmul fast float %326, %326
  %358 = fmul fast float %357, 2.000000e+00
  %359 = fsub fast float 1.000000e+00, %358
  %360 = fsub fast float %359, %342
  %361 = fmul fast float %327, 2.000000e+00
  %362 = fmul fast float %361, %328
  %363 = fmul fast float %344, %329
  %364 = fsub fast float %362, %363
  %365 = fmul fast float %344, %328
  %366 = fmul fast float %361, %329
  %367 = fsub fast float %365, %366
  %368 = fmul fast float %328, %327
  %369 = fmul fast float %329, %326
  %370 = fadd fast float %368, %369
  %371 = fmul fast float %370, 2.000000e+00
  %372 = fsub fast float %359, %339
  %373 = fmul fast float %343, %333
  %374 = fmul fast float %356, %333
  %375 = fmul fast float %367, %333
  %376 = fmul fast float %348, %333
  %377 = fmul fast float %360, %333
  %378 = fmul fast float %371, %333
  %379 = fmul fast float %352, %333
  %380 = fmul fast float %364, %333
  %381 = fmul fast float %372, %333
  br label %460

; <label>:382                                     ; preds = %246
  %383 = icmp eq i32 %71, 3
  br i1 %383, label %384, label %393, !dx.controlflow.hints !44

; <label>:384                                     ; preds = %382
  %385 = shl nuw nsw i32 %67, 7
  %386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.f32 %386, 0
  %388 = extractvalue %dx.types.ResRet.f32 %386, 1
  %389 = extractvalue %dx.types.ResRet.f32 %386, 2
  %390 = or i32 %385, 12
  %391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.f32 %391, 0
  br label %460

; <label>:393                                     ; preds = %382
  %394 = icmp eq i32 %71, 1
  br i1 %394, label %395, label %460, !dx.controlflow.hints !45

; <label>:395                                     ; preds = %393
  %396 = lshr exact i32 %36, 6
  %397 = shl nuw nsw i32 %31, 6
  %398 = add nuw nsw i32 %397, 1572864
  %399 = add nuw nsw i32 %398, %396
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = extractvalue %dx.types.ResRet.i32 %400, 1
  %403 = extractvalue %dx.types.ResRet.i32 %400, 2
  %404 = extractvalue %dx.types.ResRet.i32 %400, 3
  %405 = or i32 %399, 16
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = extractvalue %dx.types.ResRet.i32 %406, 1
  %409 = extractvalue %dx.types.ResRet.i32 %406, 2
  %410 = bitcast i32 %401 to float
  %411 = bitcast i32 %402 to float
  %412 = bitcast i32 %403 to float
  %413 = bitcast i32 %404 to float
  %414 = bitcast i32 %407 to float
  %415 = bitcast i32 %408 to float
  %416 = bitcast i32 %409 to float
  %417 = fmul fast float %411, %411
  %418 = fmul fast float %417, 2.000000e+00
  %419 = fsub fast float 1.000000e+00, %418
  %420 = fmul fast float %412, %412
  %421 = fmul fast float %420, 2.000000e+00
  %422 = fsub fast float %419, %421
  %423 = fmul fast float %410, 2.000000e+00
  %424 = fmul fast float %423, %411
  %425 = fmul fast float %412, 2.000000e+00
  %426 = fmul fast float %425, %413
  %427 = fsub fast float %424, %426
  %428 = fmul fast float %412, %410
  %429 = fmul fast float %413, %411
  %430 = fadd fast float %428, %429
  %431 = fmul fast float %430, 2.000000e+00
  %432 = fmul fast float %411, %410
  %433 = fmul fast float %413, %412
  %434 = fadd fast float %432, %433
  %435 = fmul fast float %434, 2.000000e+00
  %436 = fmul fast float %410, %410
  %437 = fmul fast float %436, 2.000000e+00
  %438 = fsub fast float 1.000000e+00, %437
  %439 = fsub fast float %438, %421
  %440 = fmul fast float %411, 2.000000e+00
  %441 = fmul fast float %440, %412
  %442 = fmul fast float %423, %413
  %443 = fsub fast float %441, %442
  %444 = fmul fast float %423, %412
  %445 = fmul fast float %440, %413
  %446 = fsub fast float %444, %445
  %447 = fmul fast float %412, %411
  %448 = fmul fast float %413, %410
  %449 = fadd fast float %447, %448
  %450 = fmul fast float %449, 2.000000e+00
  %451 = fsub fast float %438, %418
  %452 = shl nuw nsw i32 %67, 7
  %453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.f32 %453, 0
  %455 = extractvalue %dx.types.ResRet.f32 %453, 1
  %456 = extractvalue %dx.types.ResRet.f32 %453, 2
  %457 = or i32 %452, 12
  %458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.f32 %458, 0
  br label %460

; <label>:460                                     ; preds = %395, %393, %384, %309, %255, %168
  %461 = phi float [ %235, %168 ], [ %279, %255 ], [ %373, %309 ], [ 1.000000e+00, %384 ], [ %422, %395 ], [ 0.000000e+00, %393 ]
  %462 = phi float [ %238, %168 ], [ %284, %255 ], [ %376, %309 ], [ 0.000000e+00, %384 ], [ %427, %395 ], [ 0.000000e+00, %393 ]
  %463 = phi float [ %241, %168 ], [ %288, %255 ], [ %379, %309 ], [ 0.000000e+00, %384 ], [ %431, %395 ], [ 0.000000e+00, %393 ]
  %464 = phi float [ %181, %168 ], [ %270, %255 ], [ %330, %309 ], [ 0.000000e+00, %384 ], [ %414, %395 ], [ 0.000000e+00, %393 ]
  %465 = phi float [ %236, %168 ], [ %292, %255 ], [ %374, %309 ], [ 0.000000e+00, %384 ], [ %435, %395 ], [ 0.000000e+00, %393 ]
  %466 = phi float [ %239, %168 ], [ %296, %255 ], [ %377, %309 ], [ 1.000000e+00, %384 ], [ %439, %395 ], [ 0.000000e+00, %393 ]
  %467 = phi float [ %242, %168 ], [ %300, %255 ], [ %380, %309 ], [ 0.000000e+00, %384 ], [ %443, %395 ], [ 0.000000e+00, %393 ]
  %468 = phi float [ %182, %168 ], [ %271, %255 ], [ %331, %309 ], [ 0.000000e+00, %384 ], [ %415, %395 ], [ 0.000000e+00, %393 ]
  %469 = phi float [ %237, %168 ], [ %303, %255 ], [ %375, %309 ], [ 0.000000e+00, %384 ], [ %446, %395 ], [ 0.000000e+00, %393 ]
  %470 = phi float [ %240, %168 ], [ %307, %255 ], [ %378, %309 ], [ 0.000000e+00, %384 ], [ %450, %395 ], [ 0.000000e+00, %393 ]
  %471 = phi float [ %243, %168 ], [ %308, %255 ], [ %381, %309 ], [ 1.000000e+00, %384 ], [ %451, %395 ], [ 0.000000e+00, %393 ]
  %472 = phi float [ %183, %168 ], [ %272, %255 ], [ %332, %309 ], [ 0.000000e+00, %384 ], [ %416, %395 ], [ 0.000000e+00, %393 ]
  %473 = phi float [ 1.000000e+00, %168 ], [ 1.000000e+00, %255 ], [ 1.000000e+00, %309 ], [ 1.000000e+00, %384 ], [ 1.000000e+00, %395 ], [ 0.000000e+00, %393 ]
  %474 = phi float [ %171, %168 ], [ 0.000000e+00, %255 ], [ %334, %309 ], [ %387, %384 ], [ %454, %395 ], [ 0.000000e+00, %393 ]
  %475 = phi float [ %172, %168 ], [ 0.000000e+00, %255 ], [ %335, %309 ], [ %388, %384 ], [ %455, %395 ], [ 0.000000e+00, %393 ]
  %476 = phi float [ %173, %168 ], [ 0.000000e+00, %255 ], [ %336, %309 ], [ %389, %384 ], [ %456, %395 ], [ 0.000000e+00, %393 ]
  %477 = phi float [ %245, %168 ], [ %273, %255 ], [ %337, %309 ], [ %392, %384 ], [ %459, %395 ], [ 0.000000e+00, %393 ]
  %478 = bitcast float %464 to i32
  %479 = bitcast float %468 to i32
  %480 = bitcast float %472 to i32
  %481 = select i1 %160, i32 0, i32 %156
  %482 = select i1 %160, i32 0, i32 %157
  %483 = select i1 %160, i32 0, i32 %158
  %484 = sub i32 %478, %481
  %485 = sub i32 %479, %482
  %486 = sub i32 %480, %483
  %487 = sitofp i32 %484 to float
  %488 = sitofp i32 %485 to float
  %489 = sitofp i32 %486 to float
  %490 = fmul fast float %487, 0x3F30000000000000
  %491 = fmul fast float %488, 0x3F30000000000000
  %492 = fmul fast float %489, 0x3F30000000000000
  %493 = shl i32 %107, 6
  %494 = add i32 %493, %24
  %495 = mul i32 %494, 3
  %496 = mul i32 %494, 6
  %497 = and i32 %496, -4
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = extractvalue %dx.types.ResRet.i32 %498, 1
  %501 = and i32 %495, 1
  %502 = icmp eq i32 %501, 0
  %503 = lshr i32 %499, 16
  %504 = and i32 %500, 65535
  %505 = lshr i32 %500, 16
  %506 = and i32 %499, 65535
  %507 = select i1 %502, i32 %506, i32 %503
  %508 = select i1 %502, i32 %503, i32 %504
  %509 = select i1 %502, i32 %504, i32 %505
  %510 = and i32 %70, 1
  %511 = icmp eq i32 %510, 0
  %512 = shl nuw nsw i32 %507, 3
  %513 = shl nuw nsw i32 %508, 3
  %514 = shl nuw nsw i32 %509, 3
  br i1 %511, label %535, label %515, !dx.controlflow.hints !46

; <label>:515                                     ; preds = %460
  %516 = shl i32 %101, 3
  %517 = add i32 %102, %516
  %518 = add i32 %512, %517
  %519 = add i32 %513, %517
  %520 = add i32 %514, %517
  %521 = call i32 @dx.op.binary.i32(i32 37, i32 %519, i32 %520)  ; IMax(a,b)
  %522 = call i32 @dx.op.binary.i32(i32 37, i32 %518, i32 %521)  ; IMax(a,b)
  %523 = add nsw i32 %522, 8
  %524 = icmp ult i32 %523, %115
  br i1 %524, label %525, label %569, !dx.controlflow.hints !47

; <label>:525                                     ; preds = %515
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = extractvalue %dx.types.ResRet.i32 %526, 1
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 0
  %531 = extractvalue %dx.types.ResRet.i32 %529, 1
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = extractvalue %dx.types.ResRet.i32 %532, 1
  br label %569

; <label>:535                                     ; preds = %460
  %536 = lshr i32 %507, 7
  %537 = add i32 %536, %103
  %538 = shl i32 %537, 2
  %539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
  %540 = extractvalue %dx.types.ResRet.i32 %539, 0
  %541 = shl i32 %540, 10
  %542 = and i32 %512, 1016
  %543 = or i32 %541, %542
  %544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %543, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.i32 %544, 0
  %546 = extractvalue %dx.types.ResRet.i32 %544, 1
  %547 = lshr i32 %508, 7
  %548 = add i32 %547, %103
  %549 = shl i32 %548, 2
  %550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %549, i32 undef)  ; BufferLoad(srv,index,wot)
  %551 = extractvalue %dx.types.ResRet.i32 %550, 0
  %552 = shl i32 %551, 10
  %553 = and i32 %513, 1016
  %554 = or i32 %552, %553
  %555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.i32 %555, 0
  %557 = extractvalue %dx.types.ResRet.i32 %555, 1
  %558 = lshr i32 %509, 7
  %559 = add i32 %558, %103
  %560 = shl i32 %559, 2
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = shl i32 %562, 10
  %564 = and i32 %514, 1016
  %565 = or i32 %563, %564
  %566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %565, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.i32 %566, 0
  %568 = extractvalue %dx.types.ResRet.i32 %566, 1
  br label %569

; <label>:569                                     ; preds = %535, %525, %515
  %570 = phi i32 [ %527, %525 ], [ %545, %535 ], [ 0, %515 ]
  %571 = phi i32 [ %528, %525 ], [ %546, %535 ], [ 0, %515 ]
  %572 = phi i32 [ %530, %525 ], [ %556, %535 ], [ 0, %515 ]
  %573 = phi i32 [ %531, %525 ], [ %557, %535 ], [ 0, %515 ]
  %574 = phi i32 [ %533, %525 ], [ %567, %535 ], [ 0, %515 ]
  %575 = phi i32 [ %534, %525 ], [ %568, %535 ], [ 0, %515 ]
  %576 = and i32 %570, 2097151
  %577 = uitofp i32 %576 to float
  %578 = lshr i32 %570, 21
  %579 = shl i32 %571, 11
  %580 = and i32 %579, 2095104
  %581 = or i32 %580, %578
  %582 = uitofp i32 %581 to float
  %583 = lshr i32 %571, 10
  %584 = and i32 %583, 2097151
  %585 = uitofp i32 %584 to float
  br i1 %38, label %596, label %586, !dx.controlflow.hints !48

; <label>:586                                     ; preds = %569
  %587 = fdiv float %577, 2.097151e+06
  %588 = fdiv float %582, 2.097151e+06
  %589 = fdiv float %585, 2.097151e+06
  %590 = fmul float %587, 2.000000e+00
  %591 = fmul float %588, 2.000000e+00
  %592 = fmul float %589, 2.000000e+00
  %593 = fadd float %590, -1.000000e+00
  %594 = fadd float %591, -1.000000e+00
  %595 = fadd float %592, -1.000000e+00
  br label %596

; <label>:596                                     ; preds = %586, %569
  %597 = phi float [ %593, %586 ], [ %577, %569 ]
  %598 = phi float [ %594, %586 ], [ %582, %569 ]
  %599 = phi float [ %595, %586 ], [ %585, %569 ]
  %600 = fmul float %477, %599
  %601 = fadd float %476, %600
  %602 = fmul float %477, %598
  %603 = fadd float %475, %602
  %604 = fmul float %477, %597
  %605 = fadd float %474, %604
  %606 = and i32 %572, 2097151
  %607 = uitofp i32 %606 to float
  %608 = lshr i32 %572, 21
  %609 = shl i32 %573, 11
  %610 = and i32 %609, 2095104
  %611 = or i32 %610, %608
  %612 = uitofp i32 %611 to float
  %613 = lshr i32 %573, 10
  %614 = and i32 %613, 2097151
  %615 = uitofp i32 %614 to float
  br i1 %38, label %626, label %616, !dx.controlflow.hints !48

; <label>:616                                     ; preds = %596
  %617 = fdiv float %607, 2.097151e+06
  %618 = fdiv float %612, 2.097151e+06
  %619 = fdiv float %615, 2.097151e+06
  %620 = fmul float %617, 2.000000e+00
  %621 = fmul float %618, 2.000000e+00
  %622 = fmul float %619, 2.000000e+00
  %623 = fadd float %620, -1.000000e+00
  %624 = fadd float %621, -1.000000e+00
  %625 = fadd float %622, -1.000000e+00
  br label %626

; <label>:626                                     ; preds = %616, %596
  %627 = phi float [ %623, %616 ], [ %607, %596 ]
  %628 = phi float [ %624, %616 ], [ %612, %596 ]
  %629 = phi float [ %625, %616 ], [ %615, %596 ]
  %630 = fmul float %477, %629
  %631 = fadd float %476, %630
  %632 = fmul float %477, %628
  %633 = fadd float %475, %632
  %634 = fmul float %477, %627
  %635 = fadd float %474, %634
  %636 = and i32 %574, 2097151
  %637 = uitofp i32 %636 to float
  %638 = lshr i32 %574, 21
  %639 = shl i32 %575, 11
  %640 = and i32 %639, 2095104
  %641 = or i32 %640, %638
  %642 = uitofp i32 %641 to float
  %643 = lshr i32 %575, 10
  %644 = and i32 %643, 2097151
  %645 = uitofp i32 %644 to float
  br i1 %38, label %656, label %646, !dx.controlflow.hints !48

; <label>:646                                     ; preds = %626
  %647 = fdiv float %637, 2.097151e+06
  %648 = fdiv float %642, 2.097151e+06
  %649 = fdiv float %645, 2.097151e+06
  %650 = fmul float %647, 2.000000e+00
  %651 = fmul float %648, 2.000000e+00
  %652 = fmul float %649, 2.000000e+00
  %653 = fadd float %650, -1.000000e+00
  %654 = fadd float %651, -1.000000e+00
  %655 = fadd float %652, -1.000000e+00
  br label %656

; <label>:656                                     ; preds = %646, %626
  %657 = phi float [ %653, %646 ], [ %637, %626 ]
  %658 = phi float [ %654, %646 ], [ %642, %626 ]
  %659 = phi float [ %655, %646 ], [ %645, %626 ]
  %660 = fmul float %477, %659
  %661 = fadd float %476, %660
  %662 = fmul float %477, %658
  %663 = fadd float %475, %662
  %664 = fmul float %477, %657
  %665 = fadd float %474, %664
  %666 = fmul fast float %605, %461
  %667 = call float @dx.op.tertiary.f32(i32 46, float %603, float %462, float %666)  ; FMad(a,b,c)
  %668 = call float @dx.op.tertiary.f32(i32 46, float %601, float %463, float %667)  ; FMad(a,b,c)
  %669 = fadd fast float %668, %490
  %670 = fmul fast float %605, %465
  %671 = call float @dx.op.tertiary.f32(i32 46, float %603, float %466, float %670)  ; FMad(a,b,c)
  %672 = call float @dx.op.tertiary.f32(i32 46, float %601, float %467, float %671)  ; FMad(a,b,c)
  %673 = fadd fast float %672, %491
  %674 = fmul fast float %605, %469
  %675 = call float @dx.op.tertiary.f32(i32 46, float %603, float %470, float %674)  ; FMad(a,b,c)
  %676 = call float @dx.op.tertiary.f32(i32 46, float %601, float %471, float %675)  ; FMad(a,b,c)
  %677 = fadd fast float %676, %492
  %678 = fmul fast float %669, %126
  %679 = call float @dx.op.tertiary.f32(i32 46, float %673, float %134, float %678)  ; FMad(a,b,c)
  %680 = call float @dx.op.tertiary.f32(i32 46, float %677, float %142, float %679)  ; FMad(a,b,c)
  %681 = call float @dx.op.tertiary.f32(i32 46, float %473, float %150, float %680)  ; FMad(a,b,c)
  %682 = fmul fast float %669, %127
  %683 = call float @dx.op.tertiary.f32(i32 46, float %673, float %135, float %682)  ; FMad(a,b,c)
  %684 = call float @dx.op.tertiary.f32(i32 46, float %677, float %143, float %683)  ; FMad(a,b,c)
  %685 = call float @dx.op.tertiary.f32(i32 46, float %473, float %151, float %684)  ; FMad(a,b,c)
  %686 = fmul fast float %669, %128
  %687 = call float @dx.op.tertiary.f32(i32 46, float %673, float %136, float %686)  ; FMad(a,b,c)
  %688 = call float @dx.op.tertiary.f32(i32 46, float %677, float %144, float %687)  ; FMad(a,b,c)
  %689 = call float @dx.op.tertiary.f32(i32 46, float %473, float %152, float %688)  ; FMad(a,b,c)
  %690 = fmul fast float %635, %461
  %691 = call float @dx.op.tertiary.f32(i32 46, float %633, float %462, float %690)  ; FMad(a,b,c)
  %692 = call float @dx.op.tertiary.f32(i32 46, float %631, float %463, float %691)  ; FMad(a,b,c)
  %693 = fadd fast float %692, %490
  %694 = fmul fast float %635, %465
  %695 = call float @dx.op.tertiary.f32(i32 46, float %633, float %466, float %694)  ; FMad(a,b,c)
  %696 = call float @dx.op.tertiary.f32(i32 46, float %631, float %467, float %695)  ; FMad(a,b,c)
  %697 = fadd fast float %696, %491
  %698 = fmul fast float %635, %469
  %699 = call float @dx.op.tertiary.f32(i32 46, float %633, float %470, float %698)  ; FMad(a,b,c)
  %700 = call float @dx.op.tertiary.f32(i32 46, float %631, float %471, float %699)  ; FMad(a,b,c)
  %701 = fadd fast float %700, %492
  %702 = fmul fast float %693, %126
  %703 = call float @dx.op.tertiary.f32(i32 46, float %697, float %134, float %702)  ; FMad(a,b,c)
  %704 = call float @dx.op.tertiary.f32(i32 46, float %701, float %142, float %703)  ; FMad(a,b,c)
  %705 = call float @dx.op.tertiary.f32(i32 46, float %473, float %150, float %704)  ; FMad(a,b,c)
  %706 = fmul fast float %693, %127
  %707 = call float @dx.op.tertiary.f32(i32 46, float %697, float %135, float %706)  ; FMad(a,b,c)
  %708 = call float @dx.op.tertiary.f32(i32 46, float %701, float %143, float %707)  ; FMad(a,b,c)
  %709 = call float @dx.op.tertiary.f32(i32 46, float %473, float %151, float %708)  ; FMad(a,b,c)
  %710 = fmul fast float %693, %128
  %711 = call float @dx.op.tertiary.f32(i32 46, float %697, float %136, float %710)  ; FMad(a,b,c)
  %712 = call float @dx.op.tertiary.f32(i32 46, float %701, float %144, float %711)  ; FMad(a,b,c)
  %713 = call float @dx.op.tertiary.f32(i32 46, float %473, float %152, float %712)  ; FMad(a,b,c)
  %714 = fmul fast float %665, %461
  %715 = call float @dx.op.tertiary.f32(i32 46, float %663, float %462, float %714)  ; FMad(a,b,c)
  %716 = call float @dx.op.tertiary.f32(i32 46, float %661, float %463, float %715)  ; FMad(a,b,c)
  %717 = fadd fast float %716, %490
  %718 = fmul fast float %665, %465
  %719 = call float @dx.op.tertiary.f32(i32 46, float %663, float %466, float %718)  ; FMad(a,b,c)
  %720 = call float @dx.op.tertiary.f32(i32 46, float %661, float %467, float %719)  ; FMad(a,b,c)
  %721 = fadd fast float %720, %491
  %722 = fmul fast float %665, %469
  %723 = call float @dx.op.tertiary.f32(i32 46, float %663, float %470, float %722)  ; FMad(a,b,c)
  %724 = call float @dx.op.tertiary.f32(i32 46, float %661, float %471, float %723)  ; FMad(a,b,c)
  %725 = fadd fast float %724, %492
  %726 = fmul fast float %717, %126
  %727 = call float @dx.op.tertiary.f32(i32 46, float %721, float %134, float %726)  ; FMad(a,b,c)
  %728 = call float @dx.op.tertiary.f32(i32 46, float %725, float %142, float %727)  ; FMad(a,b,c)
  %729 = call float @dx.op.tertiary.f32(i32 46, float %473, float %150, float %728)  ; FMad(a,b,c)
  %730 = fmul fast float %717, %127
  %731 = call float @dx.op.tertiary.f32(i32 46, float %721, float %135, float %730)  ; FMad(a,b,c)
  %732 = call float @dx.op.tertiary.f32(i32 46, float %725, float %143, float %731)  ; FMad(a,b,c)
  %733 = call float @dx.op.tertiary.f32(i32 46, float %473, float %151, float %732)  ; FMad(a,b,c)
  %734 = fmul fast float %717, %128
  %735 = call float @dx.op.tertiary.f32(i32 46, float %721, float %136, float %734)  ; FMad(a,b,c)
  %736 = call float @dx.op.tertiary.f32(i32 46, float %725, float %144, float %735)  ; FMad(a,b,c)
  %737 = call float @dx.op.tertiary.f32(i32 46, float %473, float %152, float %736)  ; FMad(a,b,c)
  %738 = and i32 %69, 1
  %739 = icmp eq i32 %738, 0
  br i1 %739, label %756, label %740, !dx.controlflow.hints !49

; <label>:740                                     ; preds = %656
  %741 = fmul fast float %737, %709
  %742 = fmul fast float %733, %713
  %743 = fsub fast float %741, %742
  %744 = fmul fast float %737, %705
  %745 = fmul fast float %729, %713
  %746 = fsub fast float %744, %745
  %747 = fmul fast float %733, %705
  %748 = fmul fast float %729, %709
  %749 = fsub fast float %747, %748
  %750 = fmul fast float %743, %681
  %751 = fmul fast float %746, %685
  %752 = fmul fast float %749, %689
  %753 = fsub fast float %752, %751
  %754 = fadd fast float %753, %750
  %755 = fcmp fast ogt float %754, 0.000000e+00
  br i1 %755, label %1172, label %756, !dx.controlflow.hints !50

; <label>:756                                     ; preds = %740, %656
  %757 = fcmp fast olt float %689, 0.000000e+00
  %758 = zext i1 %757 to i32
  %759 = call float @dx.op.unary.f32(i32 6, float %689)  ; FAbs(value)
  %760 = fdiv fast float 1.000000e+00, %759
  %761 = fmul fast float %681, %760
  %762 = fmul fast float %685, %760
  %763 = fmul fast float %761, 5.000000e-01
  %764 = fmul fast float %762, 5.000000e-01
  %765 = fadd fast float %763, 5.000000e-01
  %766 = fsub fast float 5.000000e-01, %764
  %767 = call float @dx.op.unary.f32(i32 7, float %765)  ; Saturate(value)
  %768 = call float @dx.op.unary.f32(i32 7, float %766)  ; Saturate(value)
  %769 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %689)  ; FMax(a,b)
  %770 = fcmp fast olt float %713, 0.000000e+00
  %771 = zext i1 %770 to i32
  %772 = add nuw nsw i32 %771, %758
  %773 = call float @dx.op.unary.f32(i32 6, float %713)  ; FAbs(value)
  %774 = fdiv fast float 1.000000e+00, %773
  %775 = fmul fast float %705, %774
  %776 = fmul fast float %709, %774
  %777 = fmul fast float %775, 5.000000e-01
  %778 = fmul fast float %776, 5.000000e-01
  %779 = fadd fast float %777, 5.000000e-01
  %780 = fsub fast float 5.000000e-01, %778
  %781 = call float @dx.op.unary.f32(i32 7, float %779)  ; Saturate(value)
  %782 = call float @dx.op.unary.f32(i32 7, float %780)  ; Saturate(value)
  %783 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %713)  ; FMax(a,b)
  %784 = fcmp fast olt float %737, 0.000000e+00
  %785 = zext i1 %784 to i32
  %786 = add nuw nsw i32 %785, %772
  %787 = call float @dx.op.unary.f32(i32 6, float %737)  ; FAbs(value)
  %788 = fdiv fast float 1.000000e+00, %787
  %789 = fmul fast float %729, %788
  %790 = fmul fast float %733, %788
  %791 = fmul fast float %789, 5.000000e-01
  %792 = fmul fast float %790, 5.000000e-01
  %793 = fadd fast float %791, 5.000000e-01
  %794 = fsub fast float 5.000000e-01, %792
  %795 = call float @dx.op.unary.f32(i32 7, float %793)  ; Saturate(value)
  %796 = call float @dx.op.unary.f32(i32 7, float %794)  ; Saturate(value)
  %797 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %737)  ; FMax(a,b)
  %798 = call float @dx.op.binary.f32(i32 36, float %781, float %795)  ; FMin(a,b)
  %799 = call float @dx.op.binary.f32(i32 36, float %767, float %798)  ; FMin(a,b)
  %800 = call float @dx.op.binary.f32(i32 36, float %782, float %796)  ; FMin(a,b)
  %801 = call float @dx.op.binary.f32(i32 36, float %768, float %800)  ; FMin(a,b)
  %802 = call float @dx.op.binary.f32(i32 35, float %781, float %795)  ; FMax(a,b)
  %803 = call float @dx.op.binary.f32(i32 35, float %767, float %802)  ; FMax(a,b)
  %804 = call float @dx.op.binary.f32(i32 35, float %782, float %796)  ; FMax(a,b)
  %805 = call float @dx.op.binary.f32(i32 35, float %768, float %804)  ; FMax(a,b)
  %806 = and i32 %69, 4
  %807 = icmp eq i32 %806, 0
  br i1 %807, label %832, label %808, !dx.controlflow.hints !51

; <label>:808                                     ; preds = %756
  %809 = icmp eq i32 %786, 3
  br i1 %809, label %1172, label %810, !dx.controlflow.hints !52

; <label>:810                                     ; preds = %808
  %811 = fcmp fast ole float %803, 0.000000e+00
  %812 = fcmp fast ole float %805, 0.000000e+00
  %813 = or i1 %811, %812
  %814 = fcmp fast oge float %799, 1.000000e+00
  %815 = or i1 %814, %813
  %816 = fcmp fast oge float %801, 1.000000e+00
  %817 = or i1 %816, %815
  br i1 %817, label %1172, label %818, !dx.controlflow.hints !53

; <label>:818                                     ; preds = %810
  %819 = fmul fast float %799, %165
  %820 = fmul fast float %801, %166
  %821 = fmul fast float %803, %165
  %822 = fmul fast float %805, %166
  %823 = icmp eq i32 %786, 0
  %824 = call float @dx.op.unary.f32(i32 26, float %819)  ; Round_ne(value)
  %825 = call float @dx.op.unary.f32(i32 26, float %820)  ; Round_ne(value)
  %826 = call float @dx.op.unary.f32(i32 26, float %821)  ; Round_ne(value)
  %827 = call float @dx.op.unary.f32(i32 26, float %822)  ; Round_ne(value)
  %828 = fcmp fast oeq float %824, %826
  %829 = fcmp fast oeq float %825, %827
  %830 = or i1 %828, %829
  %831 = and i1 %823, %830
  br i1 %831, label %1172, label %832, !dx.controlflow.hints !54

; <label>:832                                     ; preds = %818, %756
  %833 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %834 = extractvalue %dx.types.CBufRet.i32 %833, 0
  %835 = icmp ne i32 %834, 0
  %836 = and i32 %69, 2
  %837 = icmp ne i32 %836, 0
  %838 = and i1 %837, %835
  br i1 %838, label %839, label %1169, !dx.controlflow.hints !55

; <label>:839                                     ; preds = %832
  %840 = and i32 %74, 254
  %841 = icmp eq i32 %840, 62
  %842 = call float @dx.op.binary.f32(i32 36, float %783, float %797)  ; FMin(a,b)
  %843 = call float @dx.op.binary.f32(i32 36, float %769, float %842)  ; FMin(a,b)
  %844 = and i32 %834, 2
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %998, label %846, !dx.controlflow.hints !56

; <label>:846                                     ; preds = %839
  %847 = fsub fast float %803, %799
  %848 = fsub fast float %805, %801
  %849 = fmul fast float %847, 6.400000e+01
  %850 = fmul fast float %848, 6.400000e+01
  %851 = call float @dx.op.unary.f32(i32 28, float %849)  ; Round_pi(value)
  %852 = call float @dx.op.unary.f32(i32 28, float %850)  ; Round_pi(value)
  %853 = call float @dx.op.binary.f32(i32 35, float %851, float %852)  ; FMax(a,b)
  %854 = call float @dx.op.unary.f32(i32 23, float %853)  ; Log(value)
  %855 = call float @dx.op.unary.f32(i32 28, float %854)  ; Round_pi(value)
  %856 = fptosi float %855 to i32
  %857 = call i32 @dx.op.binary.i32(i32 37, i32 %856, i32 0)  ; IMax(a,b)
  %858 = call i32 @dx.op.binary.i32(i32 38, i32 %857, i32 6)  ; IMin(a,b)
  %859 = and i32 %858, 31
  %860 = lshr i32 64, %859
  %861 = uitofp i32 %860 to float
  %862 = call float @dx.op.binary.f32(i32 35, float %861, float 1.000000e+00)  ; FMax(a,b)
  %863 = fdiv fast float 1.000000e+00, %862
  %864 = fmul fast float %862, %799
  %865 = fmul fast float %862, %801
  %866 = call float @dx.op.unary.f32(i32 27, float %864)  ; Round_ni(value)
  %867 = call float @dx.op.unary.f32(i32 27, float %865)  ; Round_ni(value)
  %868 = call float @dx.op.binary.f32(i32 35, float %866, float 0.000000e+00)  ; FMax(a,b)
  %869 = call float @dx.op.binary.f32(i32 35, float %867, float 0.000000e+00)  ; FMax(a,b)
  %870 = call float @dx.op.binary.f32(i32 36, float %868, float %862)  ; FMin(a,b)
  %871 = call float @dx.op.binary.f32(i32 36, float %869, float %862)  ; FMin(a,b)
  %872 = fmul fast float %862, %803
  %873 = fmul fast float %862, %805
  %874 = call float @dx.op.unary.f32(i32 28, float %872)  ; Round_pi(value)
  %875 = call float @dx.op.unary.f32(i32 28, float %873)  ; Round_pi(value)
  %876 = call float @dx.op.binary.f32(i32 35, float %874, float 0.000000e+00)  ; FMax(a,b)
  %877 = call float @dx.op.binary.f32(i32 35, float %875, float 0.000000e+00)  ; FMax(a,b)
  %878 = call float @dx.op.binary.f32(i32 36, float %876, float %862)  ; FMin(a,b)
  %879 = call float @dx.op.binary.f32(i32 36, float %877, float %862)  ; FMin(a,b)
  %880 = fadd fast float %870, 1.000000e+00
  %881 = fmul fast float %880, %863
  %882 = fmul fast float %863, 2.000000e+00
  %883 = fsub fast float %878, %870
  %884 = fsub fast float %879, %871
  %885 = fmul fast float %883, 5.000000e-01
  %886 = fmul fast float %884, 5.000000e-01
  %887 = call float @dx.op.unary.f32(i32 28, float %885)  ; Round_pi(value)
  %888 = call float @dx.op.unary.f32(i32 28, float %886)  ; Round_pi(value)
  %889 = fptoui float %887 to i32
  %890 = fptoui float %888 to i32
  %891 = shl i32 1, %859
  %892 = add i32 %891, -1
  %893 = lshr i32 %892, 6
  %894 = and i32 %893, 1
  %895 = sub nsw i32 0, %894
  %896 = icmp eq i32 %890, %895
  br i1 %896, label %978, label %897

; <label>:897                                     ; preds = %846
  %898 = fadd fast float %871, 1.000000e+00
  %899 = fmul fast float %898, %863
  %900 = and i32 %893, 1
  %901 = add i32 %889, %900
  %902 = add i32 %890, %900
  br label %903

; <label>:903                                     ; preds = %971, %897
  %904 = phi i32 [ %972, %971 ], [ 1, %897 ]
  %905 = phi float [ %973, %971 ], [ 0.000000e+00, %897 ]
  %906 = phi float [ %974, %971 ], [ %899, %897 ]
  %907 = phi i32 [ %975, %971 ], [ 0, %897 ]
  %908 = sub nsw i32 0, %894
  %909 = icmp eq i32 %889, %908
  br i1 %909, label %971, label %910

; <label>:910                                     ; preds = %903
  br label %911

; <label>:911                                     ; preds = %911, %910
  %912 = phi i32 [ %962, %911 ], [ %904, %910 ]
  %913 = phi float [ %966, %911 ], [ %905, %910 ]
  %914 = phi float [ %967, %911 ], [ %881, %910 ]
  %915 = phi i32 [ %968, %911 ], [ 0, %910 ]
  %916 = sitofp i32 %858 to float
  %917 = fmul fast float %863, 0xBFDFE00000000000
  %918 = fadd fast float %917, %914
  %919 = fmul fast float %863, 0x3FE0100000000000
  %920 = fadd fast float %919, %906
  %921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %918, float %920, float undef, float undef, i32 0, i32 0, i32 undef, float %916)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %922 = extractvalue %dx.types.ResRet.f32 %921, 0
  %923 = fadd fast float %919, %914
  %924 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %923, float %920, float undef, float undef, i32 0, i32 0, i32 undef, float %916)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %925 = extractvalue %dx.types.ResRet.f32 %924, 0
  %926 = fadd fast float %917, %906
  %927 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %923, float %926, float undef, float undef, i32 0, i32 0, i32 undef, float %916)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %928 = extractvalue %dx.types.ResRet.f32 %927, 0
  %929 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %918, float %926, float undef, float undef, i32 0, i32 0, i32 undef, float %916)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %930 = extractvalue %dx.types.ResRet.f32 %929, 0
  %931 = fcmp fast olt float %922, -1.000000e+00
  %932 = fcmp fast ogt float %922, -1.000000e+00
  %933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %934 = extractvalue %dx.types.CBufRet.f32 %933, 1
  %935 = select i1 %932, float %934, float 1.000000e+00
  %936 = fadd fast float %922, 1.000000e+00
  %937 = fmul fast float %935, %936
  %938 = call float @dx.op.unary.f32(i32 6, float %937)  ; FAbs(value)
  %939 = fcmp fast olt float %925, -1.000000e+00
  %940 = fcmp fast ogt float %925, -1.000000e+00
  %941 = select i1 %940, float %934, float 1.000000e+00
  %942 = fadd fast float %925, 1.000000e+00
  %943 = fmul fast float %941, %942
  %944 = call float @dx.op.unary.f32(i32 6, float %943)  ; FAbs(value)
  %945 = fcmp fast olt float %928, -1.000000e+00
  %946 = fcmp fast ogt float %928, -1.000000e+00
  %947 = select i1 %946, float %934, float 1.000000e+00
  %948 = fadd fast float %928, 1.000000e+00
  %949 = fmul fast float %947, %948
  %950 = call float @dx.op.unary.f32(i32 6, float %949)  ; FAbs(value)
  %951 = fcmp fast olt float %930, -1.000000e+00
  %952 = fcmp fast ogt float %930, -1.000000e+00
  %953 = select i1 %952, float %934, float 1.000000e+00
  %954 = fadd fast float %930, 1.000000e+00
  %955 = fmul fast float %953, %954
  %956 = call float @dx.op.unary.f32(i32 6, float %955)  ; FAbs(value)
  %957 = and i1 %931, %939
  %958 = and i1 %957, %945
  %959 = and i1 %958, %951
  %960 = icmp ne i32 %912, 0
  %961 = and i1 %960, %959
  %962 = zext i1 %961 to i32
  %963 = call float @dx.op.binary.f32(i32 35, float %944, float %950)  ; FMax(a,b)
  %964 = call float @dx.op.binary.f32(i32 35, float %938, float %963)  ; FMax(a,b)
  %965 = call float @dx.op.binary.f32(i32 35, float %964, float %956)  ; FMax(a,b)
  %966 = call float @dx.op.binary.f32(i32 35, float %965, float %913)  ; FMax(a,b)
  %967 = fadd fast float %914, %882
  %968 = add nuw i32 %915, 1
  %969 = icmp eq i32 %968, %901
  br i1 %969, label %970, label %911

; <label>:970                                     ; preds = %911
  br label %971

; <label>:971                                     ; preds = %970, %903
  %972 = phi i32 [ %904, %903 ], [ %962, %970 ]
  %973 = phi float [ %905, %903 ], [ %966, %970 ]
  %974 = fadd fast float %906, %882
  %975 = add nuw i32 %907, 1
  %976 = icmp eq i32 %975, %902
  br i1 %976, label %977, label %903

; <label>:977                                     ; preds = %971
  br label %978

; <label>:978                                     ; preds = %977, %846
  %979 = phi i32 [ 1, %846 ], [ %972, %977 ]
  %980 = phi float [ 0.000000e+00, %846 ], [ %973, %977 ]
  %981 = icmp eq i32 %979, 0
  %982 = and i1 %841, %981
  br i1 %982, label %995, label %983, !dx.controlflow.hints !57

; <label>:983                                     ; preds = %978
  %984 = fcmp fast une float %843, 0.000000e+00
  %985 = bitcast float %843 to i32
  %986 = and i32 %985, 2139095040
  %987 = add nsw i32 %986, -1056964608
  %988 = ashr exact i32 %987, 23
  %989 = add nsw i32 %988, -10
  %990 = sitofp i32 %989 to float
  %991 = select i1 %984, float %990, float -1.000000e+01
  %992 = call float @dx.op.unary.f32(i32 21, float %991)  ; Exp(value)
  %993 = fsub fast float %843, %992
  %994 = fcmp fast ogt float %980, %993
  br label %995

; <label>:995                                     ; preds = %983, %978
  %996 = phi i1 [ %994, %983 ], [ true, %978 ]
  %997 = zext i1 %996 to i32
  br label %998

; <label>:998                                     ; preds = %995, %839
  %999 = phi i32 [ %997, %995 ], [ 1, %839 ]
  %1000 = and i32 %834, 1
  %1001 = icmp ne i32 %1000, 0
  %1002 = icmp ne i32 %999, 0
  %1003 = and i1 %1002, %1001
  br i1 %1003, label %1004, label %1169, !dx.controlflow.hints !58

; <label>:1004                                    ; preds = %998
  %1005 = extractvalue %dx.types.CBufRet.i32 %833, 3
  %1006 = extractvalue %dx.types.CBufRet.i32 %833, 1
  %1007 = extractvalue %dx.types.CBufRet.i32 %833, 2
  %1008 = fsub fast float %803, %799
  %1009 = fsub fast float %805, %801
  %1010 = uitofp i32 %1006 to float
  %1011 = uitofp i32 %1007 to float
  %1012 = fmul fast float %1010, %1008
  %1013 = fmul fast float %1011, %1009
  %1014 = call float @dx.op.unary.f32(i32 28, float %1012)  ; Round_pi(value)
  %1015 = call float @dx.op.unary.f32(i32 28, float %1013)  ; Round_pi(value)
  %1016 = call float @dx.op.binary.f32(i32 35, float %1014, float %1015)  ; FMax(a,b)
  %1017 = call float @dx.op.unary.f32(i32 23, float %1016)  ; Log(value)
  %1018 = call float @dx.op.unary.f32(i32 28, float %1017)  ; Round_pi(value)
  %1019 = fptosi float %1018 to i32
  %1020 = call i32 @dx.op.binary.i32(i32 37, i32 %1019, i32 0)  ; IMax(a,b)
  %1021 = call i32 @dx.op.binary.i32(i32 38, i32 %1020, i32 %1005)  ; IMin(a,b)
  %1022 = and i32 %1021, 31
  %1023 = lshr i32 %1006, %1022
  %1024 = lshr i32 %1007, %1022
  %1025 = uitofp i32 %1023 to float
  %1026 = uitofp i32 %1024 to float
  %1027 = call float @dx.op.binary.f32(i32 35, float %1025, float 1.000000e+00)  ; FMax(a,b)
  %1028 = call float @dx.op.binary.f32(i32 35, float %1026, float 1.000000e+00)  ; FMax(a,b)
  %1029 = fdiv fast float 1.000000e+00, %1027
  %1030 = fdiv fast float 1.000000e+00, %1028
  %1031 = fmul fast float %1027, %799
  %1032 = fmul fast float %1028, %801
  %1033 = call float @dx.op.unary.f32(i32 27, float %1031)  ; Round_ni(value)
  %1034 = call float @dx.op.unary.f32(i32 27, float %1032)  ; Round_ni(value)
  %1035 = call float @dx.op.binary.f32(i32 35, float %1033, float 0.000000e+00)  ; FMax(a,b)
  %1036 = call float @dx.op.binary.f32(i32 35, float %1034, float 0.000000e+00)  ; FMax(a,b)
  %1037 = call float @dx.op.binary.f32(i32 36, float %1035, float %1027)  ; FMin(a,b)
  %1038 = call float @dx.op.binary.f32(i32 36, float %1036, float %1028)  ; FMin(a,b)
  %1039 = fmul fast float %1027, %803
  %1040 = fmul fast float %1028, %805
  %1041 = call float @dx.op.unary.f32(i32 28, float %1039)  ; Round_pi(value)
  %1042 = call float @dx.op.unary.f32(i32 28, float %1040)  ; Round_pi(value)
  %1043 = call float @dx.op.binary.f32(i32 35, float %1041, float 0.000000e+00)  ; FMax(a,b)
  %1044 = call float @dx.op.binary.f32(i32 35, float %1042, float 0.000000e+00)  ; FMax(a,b)
  %1045 = call float @dx.op.binary.f32(i32 36, float %1043, float %1027)  ; FMin(a,b)
  %1046 = call float @dx.op.binary.f32(i32 36, float %1044, float %1028)  ; FMin(a,b)
  %1047 = fadd fast float %1037, 1.000000e+00
  %1048 = fmul fast float %1047, %1029
  %1049 = fmul fast float %1029, 2.000000e+00
  %1050 = fmul fast float %1030, 2.000000e+00
  %1051 = fsub fast float %1045, %1037
  %1052 = fsub fast float %1046, %1038
  %1053 = fmul fast float %1051, 5.000000e-01
  %1054 = fmul fast float %1052, 5.000000e-01
  %1055 = call float @dx.op.unary.f32(i32 28, float %1053)  ; Round_pi(value)
  %1056 = call float @dx.op.unary.f32(i32 28, float %1054)  ; Round_pi(value)
  %1057 = fptoui float %1055 to i32
  %1058 = fptoui float %1056 to i32
  %1059 = shl i32 1, %1022
  %1060 = add i32 %1059, -1
  %1061 = and i32 %1060, %1006
  %1062 = icmp ne i32 %1061, 0
  %1063 = zext i1 %1062 to i32
  %1064 = add i32 %1057, %1063
  %1065 = and i32 %1060, %1007
  %1066 = icmp ne i32 %1065, 0
  %1067 = zext i1 %1066 to i32
  %1068 = add i32 %1058, %1067
  %1069 = icmp eq i32 %1068, 0
  br i1 %1069, label %1149, label %1070

; <label>:1070                                    ; preds = %1004
  %1071 = fadd fast float %1038, 1.000000e+00
  %1072 = fmul fast float %1071, %1030
  br label %1073

; <label>:1073                                    ; preds = %1142, %1070
  %1074 = phi i32 [ %1143, %1142 ], [ 1, %1070 ]
  %1075 = phi float [ %1144, %1142 ], [ 0.000000e+00, %1070 ]
  %1076 = phi float [ %1145, %1142 ], [ %1072, %1070 ]
  %1077 = phi i32 [ %1146, %1142 ], [ 0, %1070 ]
  %1078 = icmp eq i32 %1064, 0
  br i1 %1078, label %1142, label %1079

; <label>:1079                                    ; preds = %1073
  br label %1080

; <label>:1080                                    ; preds = %1080, %1079
  %1081 = phi i32 [ %1133, %1080 ], [ %1074, %1079 ]
  %1082 = phi float [ %1137, %1080 ], [ %1075, %1079 ]
  %1083 = phi float [ %1138, %1080 ], [ %1048, %1079 ]
  %1084 = phi i32 [ %1139, %1080 ], [ 0, %1079 ]
  %1085 = sitofp i32 %1021 to float
  %1086 = fmul fast float %1029, 0xBFDFE00000000000
  %1087 = fadd fast float %1086, %1083
  %1088 = fmul fast float %1030, 0x3FE0100000000000
  %1089 = fadd fast float %1088, %1076
  %1090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %1087, float %1089, float undef, float undef, i32 0, i32 0, i32 undef, float %1085)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1091 = extractvalue %dx.types.ResRet.f32 %1090, 0
  %1092 = fmul fast float %1029, 0x3FE0100000000000
  %1093 = fadd fast float %1092, %1083
  %1094 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %1093, float %1089, float undef, float undef, i32 0, i32 0, i32 undef, float %1085)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1095 = extractvalue %dx.types.ResRet.f32 %1094, 0
  %1096 = fmul fast float %1030, 0xBFDFE00000000000
  %1097 = fadd fast float %1096, %1076
  %1098 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %1093, float %1097, float undef, float undef, i32 0, i32 0, i32 undef, float %1085)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1099 = extractvalue %dx.types.ResRet.f32 %1098, 0
  %1100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %1087, float %1097, float undef, float undef, i32 0, i32 0, i32 undef, float %1085)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1101 = extractvalue %dx.types.ResRet.f32 %1100, 0
  %1102 = fcmp fast olt float %1091, -1.000000e+00
  %1103 = fcmp fast ogt float %1091, -1.000000e+00
  %1104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1105 = extractvalue %dx.types.CBufRet.f32 %1104, 1
  %1106 = select i1 %1103, float %1105, float 1.000000e+00
  %1107 = fadd fast float %1091, 1.000000e+00
  %1108 = fmul fast float %1106, %1107
  %1109 = call float @dx.op.unary.f32(i32 6, float %1108)  ; FAbs(value)
  %1110 = fcmp fast olt float %1095, -1.000000e+00
  %1111 = fcmp fast ogt float %1095, -1.000000e+00
  %1112 = select i1 %1111, float %1105, float 1.000000e+00
  %1113 = fadd fast float %1095, 1.000000e+00
  %1114 = fmul fast float %1112, %1113
  %1115 = call float @dx.op.unary.f32(i32 6, float %1114)  ; FAbs(value)
  %1116 = fcmp fast olt float %1099, -1.000000e+00
  %1117 = fcmp fast ogt float %1099, -1.000000e+00
  %1118 = select i1 %1117, float %1105, float 1.000000e+00
  %1119 = fadd fast float %1099, 1.000000e+00
  %1120 = fmul fast float %1118, %1119
  %1121 = call float @dx.op.unary.f32(i32 6, float %1120)  ; FAbs(value)
  %1122 = fcmp fast olt float %1101, -1.000000e+00
  %1123 = fcmp fast ogt float %1101, -1.000000e+00
  %1124 = select i1 %1123, float %1105, float 1.000000e+00
  %1125 = fadd fast float %1101, 1.000000e+00
  %1126 = fmul fast float %1124, %1125
  %1127 = call float @dx.op.unary.f32(i32 6, float %1126)  ; FAbs(value)
  %1128 = and i1 %1102, %1110
  %1129 = and i1 %1128, %1116
  %1130 = and i1 %1129, %1122
  %1131 = icmp ne i32 %1081, 0
  %1132 = and i1 %1131, %1130
  %1133 = zext i1 %1132 to i32
  %1134 = call float @dx.op.binary.f32(i32 35, float %1115, float %1121)  ; FMax(a,b)
  %1135 = call float @dx.op.binary.f32(i32 35, float %1109, float %1134)  ; FMax(a,b)
  %1136 = call float @dx.op.binary.f32(i32 35, float %1135, float %1127)  ; FMax(a,b)
  %1137 = call float @dx.op.binary.f32(i32 35, float %1136, float %1082)  ; FMax(a,b)
  %1138 = fadd fast float %1083, %1049
  %1139 = add nuw i32 %1084, 1
  %1140 = icmp eq i32 %1139, %1064
  br i1 %1140, label %1141, label %1080

; <label>:1141                                    ; preds = %1080
  br label %1142

; <label>:1142                                    ; preds = %1141, %1073
  %1143 = phi i32 [ %1074, %1073 ], [ %1133, %1141 ]
  %1144 = phi float [ %1075, %1073 ], [ %1137, %1141 ]
  %1145 = fadd fast float %1076, %1050
  %1146 = add nuw i32 %1077, 1
  %1147 = icmp eq i32 %1146, %1068
  br i1 %1147, label %1148, label %1073

; <label>:1148                                    ; preds = %1142
  br label %1149

; <label>:1149                                    ; preds = %1148, %1004
  %1150 = phi i32 [ 1, %1004 ], [ %1143, %1148 ]
  %1151 = phi float [ 0.000000e+00, %1004 ], [ %1144, %1148 ]
  %1152 = icmp eq i32 %1150, 0
  %1153 = and i1 %841, %1152
  br i1 %1153, label %1166, label %1154, !dx.controlflow.hints !57

; <label>:1154                                    ; preds = %1149
  %1155 = fcmp fast une float %843, 0.000000e+00
  %1156 = bitcast float %843 to i32
  %1157 = and i32 %1156, 2139095040
  %1158 = add nsw i32 %1157, -1056964608
  %1159 = ashr exact i32 %1158, 23
  %1160 = add nsw i32 %1159, -10
  %1161 = sitofp i32 %1160 to float
  %1162 = select i1 %1155, float %1161, float -1.000000e+01
  %1163 = call float @dx.op.unary.f32(i32 21, float %1162)  ; Exp(value)
  %1164 = fsub fast float %843, %1163
  %1165 = fcmp fast ogt float %1151, %1164
  br label %1166

; <label>:1166                                    ; preds = %1154, %1149
  %1167 = phi i1 [ %1165, %1154 ], [ true, %1149 ]
  %1168 = zext i1 %1167 to i32
  br label %1169

; <label>:1169                                    ; preds = %1166, %998, %832
  %1170 = phi i32 [ %1168, %1166 ], [ %999, %998 ], [ 1, %832 ]
  %1171 = icmp ne i32 %1170, 0
  br label %1172

; <label>:1172                                    ; preds = %1169, %818, %810, %808, %740
  %1173 = phi i1 [ %1171, %1169 ], [ false, %740 ], [ false, %808 ], [ false, %810 ], [ false, %818 ]
  %1174 = zext i1 %1173 to i32
  br label %1175

; <label>:1175                                    ; preds = %1172, %100
  %1176 = phi i32 [ %1174, %1172 ], [ %118, %100 ]
  %1177 = icmp ne i32 %1176, 0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1178 = and i32 %24, 31
  %1179 = shl i32 1, %1178
  %1180 = select i1 %1177, i32 %1179, i32 0
  %1181 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %24
  store i32 %1180, i32 addrspace(3)* %1181, align 4, !tbaa !59
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1182 = icmp ult i32 %1178, 16
  br i1 %1182, label %1183, label %1189, !dx.controlflow.hints !63

; <label>:1183                                    ; preds = %1175
  %1184 = add i32 %24, 16
  %1185 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1184
  %1186 = load i32, i32 addrspace(3)* %1185, align 4, !tbaa !59
  %1187 = load i32, i32 addrspace(3)* %1181, align 4, !tbaa !59
  %1188 = or i32 %1187, %1186
  store i32 %1188, i32 addrspace(3)* %1181, align 4, !tbaa !59
  br label %1189

; <label>:1189                                    ; preds = %1183, %1175
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1190 = icmp ult i32 %1178, 8
  br i1 %1190, label %1191, label %1197, !dx.controlflow.hints !64

; <label>:1191                                    ; preds = %1189
  %1192 = add i32 %24, 8
  %1193 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1192
  %1194 = load i32, i32 addrspace(3)* %1193, align 4, !tbaa !59
  %1195 = load i32, i32 addrspace(3)* %1181, align 4, !tbaa !59
  %1196 = or i32 %1195, %1194
  store i32 %1196, i32 addrspace(3)* %1181, align 4, !tbaa !59
  br label %1197

; <label>:1197                                    ; preds = %1191, %1189
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1198 = icmp ult i32 %1178, 4
  br i1 %1198, label %1199, label %1205, !dx.controlflow.hints !65

; <label>:1199                                    ; preds = %1197
  %1200 = add i32 %24, 4
  %1201 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1200
  %1202 = load i32, i32 addrspace(3)* %1201, align 4, !tbaa !59
  %1203 = load i32, i32 addrspace(3)* %1181, align 4, !tbaa !59
  %1204 = or i32 %1203, %1202
  store i32 %1204, i32 addrspace(3)* %1181, align 4, !tbaa !59
  br label %1205

; <label>:1205                                    ; preds = %1199, %1197
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1206 = icmp ult i32 %1178, 2
  br i1 %1206, label %1207, label %1213, !dx.controlflow.hints !66

; <label>:1207                                    ; preds = %1205
  %1208 = add i32 %24, 2
  %1209 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1208
  %1210 = load i32, i32 addrspace(3)* %1209, align 4, !tbaa !59
  %1211 = load i32, i32 addrspace(3)* %1181, align 4, !tbaa !59
  %1212 = or i32 %1211, %1210
  store i32 %1212, i32 addrspace(3)* %1181, align 4, !tbaa !59
  br label %1213

; <label>:1213                                    ; preds = %1207, %1205
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1214 = icmp eq i32 %1178, 0
  br i1 %1214, label %1215, label %1221, !dx.controlflow.hints !67

; <label>:1215                                    ; preds = %1213
  %1216 = add i32 %24, 1
  %1217 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1216
  %1218 = load i32, i32 addrspace(3)* %1217, align 4, !tbaa !59
  %1219 = load i32, i32 addrspace(3)* %1181, align 4, !tbaa !59
  %1220 = or i32 %1219, %1218
  store i32 %1220, i32 addrspace(3)* %1181, align 4, !tbaa !59
  br label %1221

; <label>:1221                                    ; preds = %1215, %1213
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1222 = and i32 %24, -64
  %1223 = or i32 %1222, 32
  %1224 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1222
  %1225 = load i32, i32 addrspace(3)* %1224, align 4, !tbaa !59
  %1226 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1223
  %1227 = load i32, i32 addrspace(3)* %1226, align 4, !tbaa !59
  %1228 = icmp eq i32 %24, 0
  br i1 %1228, label %1229, label %1233, !dx.controlflow.hints !68

; <label>:1229                                    ; preds = %1221
  %1230 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1225)  ; Countbits(value)
  %1231 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1227)  ; Countbits(value)
  %1232 = add i32 %1231, %1230
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %23, i32 0, i32 %1225, i32 %1227, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %25, i32 undef, i32 %1232, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1233

; <label>:1233                                    ; preds = %1229, %1221
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
!4 = !{!5, !23, !27, !31}
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
!22 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 25, i32 1, i32 11, i32 0, null}
!23 = !{!24, !26}
!24 = !{i32 0, %"class.RWStructuredBuffer<GPCulledTriCluster>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i1 false, i1 false, i1 false, !25}
!25 = !{i32 1, i32 8}
!26 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!27 = !{!28, !29, !30}
!28 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!29 = !{i32 1, %GPSurfPassConsts* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!30 = !{i32 2, %GPOcclusionPassConsts* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!31 = !{!32}
!32 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!33 = !{void ()* @triangle_cull_two_pass, !"triangle_cull_two_pass", null, !4, !34}
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

