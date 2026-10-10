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
; shader hash: 438dd0c70b9505989a33783eee1e46fa
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
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %24 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %25 = shl i32 %23, 1
  %26 = lshr i32 %24, 6
  %27 = add i32 %26, %25
  %28 = and i32 %24, 63
  %29 = lshr i32 %24, 5
  %30 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %31 = extractvalue %dx.types.CBufRet.i32 %30, 0
  %32 = icmp ult i32 %27, %31
  br i1 %32, label %33, label %122, !dx.controlflow.hints !36

; <label>:33                                      ; preds = %0
  %34 = shl i32 %27, 2
  %35 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %34, i32 undef)  ; BufferLoad(srv,index,wot)
  %36 = extractvalue %dx.types.ResRet.i32 %35, 0
  %37 = and i32 %36, 65535
  %38 = lshr i32 %36, 16
  %39 = and i32 %38, 1023
  %40 = lshr i32 %36, 26
  %41 = and i32 %40, 1
  %42 = lshr i32 %36, 27
  %43 = and i32 %42, 1
  %44 = and i32 %36, 536870912
  %45 = icmp ne i32 %44, 0
  %46 = lshr exact i32 %44, 29
  br i1 %45, label %47, label %59, !dx.controlflow.hints !37

; <label>:47                                      ; preds = %33
  %48 = shl nuw nsw i32 %37, 3
  %49 = or i32 %48, 5242880
  %50 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %49, i32 undef)  ; BufferLoad(srv,index,wot)
  %51 = extractvalue %dx.types.ResRet.i32 %50, 0
  %52 = extractvalue %dx.types.ResRet.i32 %50, 1
  %53 = lshr i32 %51, 16
  %54 = and i32 %52, 16777215
  %55 = lshr i32 %52, 24
  %56 = lshr i32 %52, 25
  %57 = and i32 %56, 2
  %58 = xor i32 %57, 3
  br label %74

; <label>:59                                      ; preds = %33
  %60 = mul nuw nsw i32 %37, 12
  %61 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %60, i32 undef)  ; BufferLoad(srv,index,wot)
  %62 = extractvalue %dx.types.ResRet.i32 %61, 0
  %63 = extractvalue %dx.types.ResRet.i32 %61, 1
  %64 = extractvalue %dx.types.ResRet.i32 %61, 2
  %65 = lshr i32 %62, 28
  %66 = and i32 %63, 65535
  %67 = shl nuw nsw i32 %65, 16
  %68 = or i32 %67, %66
  %69 = and i32 %62, 268435455
  %70 = and i32 %64, 15
  %71 = lshr i32 %64, 4
  %72 = and i32 %71, 15
  %73 = lshr i32 %64, 8
  br label %74

; <label>:74                                      ; preds = %59, %47
  %75 = phi i32 [ %54, %47 ], [ 0, %59 ]
  %76 = phi i32 [ %51, %47 ], [ %64, %59 ]
  %77 = phi i32 [ %53, %47 ], [ %73, %59 ]
  %78 = phi i32 [ %55, %47 ], [ %72, %59 ]
  %79 = phi i32 [ %58, %47 ], [ %70, %59 ]
  %80 = phi i32 [ 0, %47 ], [ %68, %59 ]
  %81 = phi i32 [ 0, %47 ], [ %69, %59 ]
  %82 = lshr i32 %76, 24
  %83 = and i32 %77, 255
  br i1 %45, label %84, label %89, !dx.controlflow.hints !38

; <label>:84                                      ; preds = %74
  %85 = shl nuw nsw i32 %37, 4
  %86 = add nuw nsw i32 %85, 5767168
  %87 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %86, i32 undef)  ; BufferLoad(srv,index,wot)
  %88 = extractvalue %dx.types.ResRet.i32 %87, 2
  br label %94

; <label>:89                                      ; preds = %74
  %90 = mul nuw nsw i32 %37, 12
  %91 = add nuw nsw i32 %90, 1572864
  %92 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %91, i32 undef)  ; BufferLoad(srv,index,wot)
  %93 = extractvalue %dx.types.ResRet.i32 %92, 2
  br label %94

; <label>:94                                      ; preds = %89, %84
  %95 = phi i32 [ %88, %84 ], [ %93, %89 ]
  br i1 %45, label %96, label %102, !dx.controlflow.hints !39

; <label>:96                                      ; preds = %94
  %97 = shl nuw nsw i32 %37, 3
  %98 = or i32 %97, 6815744
  %99 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %98, i32 undef)  ; BufferLoad(srv,index,wot)
  %100 = extractvalue %dx.types.ResRet.i32 %99, 0
  %101 = extractvalue %dx.types.ResRet.i32 %99, 1
  br label %109

; <label>:102                                     ; preds = %94
  %103 = mul nuw nsw i32 %37, 12
  %104 = add nuw nsw i32 %103, 786432
  %105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %104, i32 undef)  ; BufferLoad(srv,index,wot)
  %106 = extractvalue %dx.types.ResRet.i32 %105, 0
  %107 = extractvalue %dx.types.ResRet.i32 %105, 1
  %108 = extractvalue %dx.types.ResRet.i32 %105, 2
  br label %109

; <label>:109                                     ; preds = %102, %96
  %110 = phi i32 [ %101, %96 ], [ %108, %102 ]
  %111 = phi i32 [ 0, %96 ], [ %107, %102 ]
  %112 = phi i32 [ %100, %96 ], [ %106, %102 ]
  %113 = add i32 %95, %39
  %114 = shl i32 %113, 2
  %115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %114, i32 undef)  ; BufferLoad(srv,index,wot)
  %116 = extractvalue %dx.types.ResRet.i32 %115, 0
  %117 = shl i32 %116, 5
  %118 = or i32 %117, 16
  %119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %118, i32 undef)  ; BufferLoad(srv,index,wot)
  %120 = extractvalue %dx.types.ResRet.i32 %119, 3
  %121 = lshr i32 %120, 16
  br label %122

; <label>:122                                     ; preds = %109, %0
  %123 = phi i32 [ %113, %109 ], [ undef, %0 ]
  %124 = phi i32 [ %121, %109 ], [ undef, %0 ]
  %125 = phi i32 [ %75, %109 ], [ undef, %0 ]
  %126 = phi i32 [ %82, %109 ], [ undef, %0 ]
  %127 = phi i32 [ %83, %109 ], [ undef, %0 ]
  %128 = phi i32 [ %78, %109 ], [ undef, %0 ]
  %129 = phi i32 [ %79, %109 ], [ undef, %0 ]
  %130 = phi i32 [ %80, %109 ], [ undef, %0 ]
  %131 = phi i32 [ %81, %109 ], [ undef, %0 ]
  %132 = phi i32 [ %46, %109 ], [ undef, %0 ]
  %133 = phi i32 [ %43, %109 ], [ undef, %0 ]
  %134 = phi i32 [ %41, %109 ], [ undef, %0 ]
  %135 = phi i32 [ %37, %109 ], [ undef, %0 ]
  %136 = phi i32 [ %110, %109 ], [ undef, %0 ]
  %137 = phi i32 [ %111, %109 ], [ undef, %0 ]
  %138 = phi i32 [ %112, %109 ], [ undef, %0 ]
  %139 = icmp ult i32 %28, %124
  %140 = and i1 %32, %139
  %141 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.i32 %141, 2
  %143 = icmp ult i32 %137, %142
  %144 = and i1 %140, %143
  %145 = zext i1 %144 to i32
  %146 = icmp ne i32 %134, 0
  %147 = and i1 %146, %144
  br i1 %147, label %148, label %1208, !dx.controlflow.hints !40

; <label>:148                                     ; preds = %122
  %149 = shl i32 %126, 6
  %150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %149, i32 undef)  ; BufferLoad(srv,index,wot)
  %151 = extractvalue %dx.types.ResRet.i32 %150, 0
  %152 = extractvalue %dx.types.ResRet.i32 %150, 1
  %153 = extractvalue %dx.types.ResRet.i32 %150, 3
  %154 = bitcast i32 %151 to float
  %155 = bitcast i32 %152 to float
  %156 = bitcast i32 %153 to float
  %157 = or i32 %149, 16
  %158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %157, i32 undef)  ; BufferLoad(srv,index,wot)
  %159 = extractvalue %dx.types.ResRet.i32 %158, 0
  %160 = extractvalue %dx.types.ResRet.i32 %158, 1
  %161 = extractvalue %dx.types.ResRet.i32 %158, 3
  %162 = bitcast i32 %159 to float
  %163 = bitcast i32 %160 to float
  %164 = bitcast i32 %161 to float
  %165 = or i32 %149, 32
  %166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %165, i32 undef)  ; BufferLoad(srv,index,wot)
  %167 = extractvalue %dx.types.ResRet.i32 %166, 0
  %168 = extractvalue %dx.types.ResRet.i32 %166, 1
  %169 = extractvalue %dx.types.ResRet.i32 %166, 3
  %170 = bitcast i32 %167 to float
  %171 = bitcast i32 %168 to float
  %172 = bitcast i32 %169 to float
  %173 = or i32 %149, 48
  %174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %173, i32 undef)  ; BufferLoad(srv,index,wot)
  %175 = extractvalue %dx.types.ResRet.i32 %174, 0
  %176 = extractvalue %dx.types.ResRet.i32 %174, 1
  %177 = extractvalue %dx.types.ResRet.i32 %174, 3
  %178 = bitcast i32 %175 to float
  %179 = bitcast i32 %176 to float
  %180 = bitcast i32 %177 to float
  %181 = shl i32 %126, 4
  %182 = add i32 %181, 4096
  %183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %182, i32 undef)  ; BufferLoad(srv,index,wot)
  %184 = extractvalue %dx.types.ResRet.i32 %183, 0
  %185 = extractvalue %dx.types.ResRet.i32 %183, 1
  %186 = extractvalue %dx.types.ResRet.i32 %183, 2
  %187 = extractvalue %dx.types.ResRet.i32 %183, 3
  %188 = icmp eq i32 %187, 1
  %189 = add i32 %181, 5120
  %190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
  %191 = extractvalue %dx.types.ResRet.i32 %190, 0
  %192 = extractvalue %dx.types.ResRet.i32 %190, 1
  %193 = bitcast i32 %191 to float
  %194 = bitcast i32 %192 to float
  %195 = icmp eq i32 %129, 2
  br i1 %195, label %196, label %274, !dx.controlflow.hints !41

; <label>:196                                     ; preds = %148
  %197 = shl i32 %130, 5
  %198 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %197, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.f32 %198, 0
  %200 = extractvalue %dx.types.ResRet.f32 %198, 1
  %201 = extractvalue %dx.types.ResRet.f32 %198, 2
  %202 = or i32 %197, 16
  %203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %202, i32 undef)  ; BufferLoad(srv,index,wot)
  %204 = extractvalue %dx.types.ResRet.f32 %203, 0
  %205 = extractvalue %dx.types.ResRet.f32 %203, 1
  %206 = extractvalue %dx.types.ResRet.f32 %203, 2
  %207 = mul i32 %131, 24
  %208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.f32 %208, 0
  %210 = extractvalue %dx.types.ResRet.f32 %208, 1
  %211 = extractvalue %dx.types.ResRet.f32 %208, 2
  %212 = add i32 %207, 12
  %213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = extractvalue %dx.types.ResRet.i32 %213, 1
  %216 = add i32 %207, 20
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = and i32 %214, 65535
  %220 = uitofp i32 %219 to float
  %221 = lshr i32 %214, 16
  %222 = uitofp i32 %221 to float
  %223 = and i32 %215, 65535
  %224 = uitofp i32 %223 to float
  %225 = lshr i32 %215, 16
  %226 = uitofp i32 %225 to float
  %227 = fmul fast float %220, 0x3F00001000000000
  %228 = fmul fast float %222, 0x3F00001000000000
  %229 = fmul fast float %224, 0x3F00001000000000
  %230 = fmul fast float %226, 0x3F00001000000000
  %231 = fadd fast float %227, -1.000000e+00
  %232 = fadd fast float %228, -1.000000e+00
  %233 = fadd fast float %229, -1.000000e+00
  %234 = fadd fast float %230, -1.000000e+00
  %235 = and i32 %218, 65535
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = fmul fast float %222, 0x3F10001000000000
  %238 = fadd fast float %237, -2.000000e+00
  %239 = fmul fast float %238, %232
  %240 = fsub fast float 1.000000e+00, %239
  %241 = fmul fast float %224, 0x3F10001000000000
  %242 = fadd fast float %241, -2.000000e+00
  %243 = fmul fast float %242, %233
  %244 = fsub fast float %240, %243
  %245 = fmul fast float %220, 0x3F10001000000000
  %246 = fadd fast float %245, -2.000000e+00
  %247 = fmul fast float %246, %232
  %248 = fmul fast float %242, %234
  %249 = fsub fast float %247, %248
  %250 = fmul fast float %246, %233
  %251 = fmul fast float %238, %234
  %252 = fadd fast float %250, %251
  %253 = fadd fast float %247, %248
  %254 = fmul fast float %246, %231
  %255 = fsub fast float 1.000000e+00, %254
  %256 = fsub fast float %255, %243
  %257 = fmul fast float %238, %233
  %258 = fmul fast float %246, %234
  %259 = fsub fast float %257, %258
  %260 = fsub fast float %250, %251
  %261 = fadd fast float %257, %258
  %262 = fsub fast float %255, %239
  %263 = fmul fast float %244, %236
  %264 = fmul fast float %253, %236
  %265 = fmul fast float %260, %236
  %266 = fmul fast float %249, %236
  %267 = fmul fast float %256, %236
  %268 = fmul fast float %261, %236
  %269 = fmul fast float %252, %236
  %270 = fmul fast float %259, %236
  %271 = fmul fast float %262, %236
  %272 = call float @dx.op.binary.f32(i32 35, float %205, float %206), !dx.precise !42  ; FMax(a,b)
  %273 = call float @dx.op.binary.f32(i32 35, float %204, float %272), !dx.precise !42  ; FMax(a,b)
  br label %489

; <label>:274                                     ; preds = %148
  %275 = icmp eq i32 %129, 0
  br i1 %275, label %276, label %411, !dx.controlflow.hints !43

; <label>:276                                     ; preds = %274
  %277 = and i32 %128, 1
  %278 = icmp eq i32 %277, 0
  %279 = icmp ne i32 %133, 0
  %280 = select i1 %279, i32 2097152, i32 0
  %281 = shl i32 %131, 6
  %282 = add i32 %280, %281
  %283 = or i32 %282, 16
  br i1 %278, label %338, label %284, !dx.controlflow.hints !44

; <label>:284                                     ; preds = %276
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = extractvalue %dx.types.ResRet.i32 %285, 1
  %288 = extractvalue %dx.types.ResRet.i32 %285, 2
  %289 = extractvalue %dx.types.ResRet.i32 %285, 3
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = extractvalue %dx.types.ResRet.i32 %290, 1
  %293 = extractvalue %dx.types.ResRet.i32 %290, 2
  %294 = extractvalue %dx.types.ResRet.i32 %290, 3
  %295 = bitcast i32 %286 to float
  %296 = bitcast i32 %287 to float
  %297 = bitcast i32 %288 to float
  %298 = bitcast i32 %289 to float
  %299 = bitcast i32 %291 to float
  %300 = bitcast i32 %292 to float
  %301 = bitcast i32 %293 to float
  %302 = bitcast i32 %294 to float
  %303 = fmul fast float %296, %296
  %304 = fmul fast float %303, 2.000000e+00
  %305 = fsub fast float 1.000000e+00, %304
  %306 = fmul fast float %297, %297
  %307 = fmul fast float %306, 2.000000e+00
  %308 = fsub fast float %305, %307
  %309 = fmul fast float %295, 2.000000e+00
  %310 = fmul fast float %309, %296
  %311 = fmul fast float %297, 2.000000e+00
  %312 = fmul fast float %311, %298
  %313 = fsub fast float %310, %312
  %314 = fmul fast float %297, %295
  %315 = fmul fast float %298, %296
  %316 = fadd fast float %314, %315
  %317 = fmul fast float %316, 2.000000e+00
  %318 = fmul fast float %296, %295
  %319 = fmul fast float %298, %297
  %320 = fadd fast float %318, %319
  %321 = fmul fast float %320, 2.000000e+00
  %322 = fmul fast float %295, %295
  %323 = fmul fast float %322, 2.000000e+00
  %324 = fsub fast float 1.000000e+00, %323
  %325 = fsub fast float %324, %307
  %326 = fmul fast float %296, 2.000000e+00
  %327 = fmul fast float %326, %297
  %328 = fmul fast float %309, %298
  %329 = fsub fast float %327, %328
  %330 = fmul fast float %309, %297
  %331 = fmul fast float %326, %298
  %332 = fsub fast float %330, %331
  %333 = fmul fast float %297, %296
  %334 = fmul fast float %298, %295
  %335 = fadd fast float %333, %334
  %336 = fmul fast float %335, 2.000000e+00
  %337 = fsub fast float %324, %304
  br label %489

; <label>:338                                     ; preds = %276
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = extractvalue %dx.types.ResRet.i32 %339, 1
  %342 = extractvalue %dx.types.ResRet.i32 %339, 2
  %343 = extractvalue %dx.types.ResRet.i32 %339, 3
  %344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.i32 %344, 0
  %346 = extractvalue %dx.types.ResRet.i32 %344, 1
  %347 = extractvalue %dx.types.ResRet.i32 %344, 2
  %348 = extractvalue %dx.types.ResRet.i32 %344, 3
  %349 = or i32 %282, 48
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = extractvalue %dx.types.ResRet.i32 %350, 1
  %353 = extractvalue %dx.types.ResRet.i32 %350, 2
  %354 = extractvalue %dx.types.ResRet.i32 %350, 3
  %355 = bitcast i32 %340 to float
  %356 = bitcast i32 %341 to float
  %357 = bitcast i32 %342 to float
  %358 = bitcast i32 %343 to float
  %359 = bitcast i32 %345 to float
  %360 = bitcast i32 %346 to float
  %361 = bitcast i32 %347 to float
  %362 = bitcast i32 %348 to float
  %363 = bitcast i32 %351 to float
  %364 = bitcast i32 %352 to float
  %365 = bitcast i32 %353 to float
  %366 = bitcast i32 %354 to float
  %367 = fmul fast float %356, %356
  %368 = fmul fast float %367, 2.000000e+00
  %369 = fsub fast float 1.000000e+00, %368
  %370 = fmul fast float %357, %357
  %371 = fmul fast float %370, 2.000000e+00
  %372 = fsub fast float %369, %371
  %373 = fmul fast float %355, 2.000000e+00
  %374 = fmul fast float %373, %356
  %375 = fmul fast float %357, 2.000000e+00
  %376 = fmul fast float %375, %358
  %377 = fsub fast float %374, %376
  %378 = fmul fast float %357, %355
  %379 = fmul fast float %358, %356
  %380 = fadd fast float %378, %379
  %381 = fmul fast float %380, 2.000000e+00
  %382 = fmul fast float %356, %355
  %383 = fmul fast float %358, %357
  %384 = fadd fast float %382, %383
  %385 = fmul fast float %384, 2.000000e+00
  %386 = fmul fast float %355, %355
  %387 = fmul fast float %386, 2.000000e+00
  %388 = fsub fast float 1.000000e+00, %387
  %389 = fsub fast float %388, %371
  %390 = fmul fast float %356, 2.000000e+00
  %391 = fmul fast float %390, %357
  %392 = fmul fast float %373, %358
  %393 = fsub fast float %391, %392
  %394 = fmul fast float %373, %357
  %395 = fmul fast float %390, %358
  %396 = fsub fast float %394, %395
  %397 = fmul fast float %357, %356
  %398 = fmul fast float %358, %355
  %399 = fadd fast float %397, %398
  %400 = fmul fast float %399, 2.000000e+00
  %401 = fsub fast float %388, %368
  %402 = fmul fast float %372, %362
  %403 = fmul fast float %385, %362
  %404 = fmul fast float %396, %362
  %405 = fmul fast float %377, %362
  %406 = fmul fast float %389, %362
  %407 = fmul fast float %400, %362
  %408 = fmul fast float %381, %362
  %409 = fmul fast float %393, %362
  %410 = fmul fast float %401, %362
  br label %489

; <label>:411                                     ; preds = %274
  %412 = icmp eq i32 %129, 3
  br i1 %412, label %413, label %422, !dx.controlflow.hints !45

; <label>:413                                     ; preds = %411
  %414 = shl i32 %125, 7
  %415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.f32 %415, 0
  %417 = extractvalue %dx.types.ResRet.f32 %415, 1
  %418 = extractvalue %dx.types.ResRet.f32 %415, 2
  %419 = or i32 %414, 12
  %420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.f32 %420, 0
  br label %489

; <label>:422                                     ; preds = %411
  %423 = icmp eq i32 %129, 1
  br i1 %423, label %424, label %489, !dx.controlflow.hints !46

; <label>:424                                     ; preds = %422
  %425 = icmp ne i32 %133, 0
  %426 = shl i32 %135, 6
  %427 = select i1 %425, i32 3670016, i32 1572864
  %428 = add i32 %427, %426
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = extractvalue %dx.types.ResRet.i32 %429, 1
  %432 = extractvalue %dx.types.ResRet.i32 %429, 2
  %433 = extractvalue %dx.types.ResRet.i32 %429, 3
  %434 = or i32 %428, 16
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = extractvalue %dx.types.ResRet.i32 %435, 1
  %438 = extractvalue %dx.types.ResRet.i32 %435, 2
  %439 = bitcast i32 %430 to float
  %440 = bitcast i32 %431 to float
  %441 = bitcast i32 %432 to float
  %442 = bitcast i32 %433 to float
  %443 = bitcast i32 %436 to float
  %444 = bitcast i32 %437 to float
  %445 = bitcast i32 %438 to float
  %446 = fmul fast float %440, %440
  %447 = fmul fast float %446, 2.000000e+00
  %448 = fsub fast float 1.000000e+00, %447
  %449 = fmul fast float %441, %441
  %450 = fmul fast float %449, 2.000000e+00
  %451 = fsub fast float %448, %450
  %452 = fmul fast float %439, 2.000000e+00
  %453 = fmul fast float %452, %440
  %454 = fmul fast float %441, 2.000000e+00
  %455 = fmul fast float %454, %442
  %456 = fsub fast float %453, %455
  %457 = fmul fast float %441, %439
  %458 = fmul fast float %442, %440
  %459 = fadd fast float %457, %458
  %460 = fmul fast float %459, 2.000000e+00
  %461 = fmul fast float %440, %439
  %462 = fmul fast float %442, %441
  %463 = fadd fast float %461, %462
  %464 = fmul fast float %463, 2.000000e+00
  %465 = fmul fast float %439, %439
  %466 = fmul fast float %465, 2.000000e+00
  %467 = fsub fast float 1.000000e+00, %466
  %468 = fsub fast float %467, %450
  %469 = fmul fast float %440, 2.000000e+00
  %470 = fmul fast float %469, %441
  %471 = fmul fast float %452, %442
  %472 = fsub fast float %470, %471
  %473 = fmul fast float %452, %441
  %474 = fmul fast float %469, %442
  %475 = fsub fast float %473, %474
  %476 = fmul fast float %441, %440
  %477 = fmul fast float %442, %439
  %478 = fadd fast float %476, %477
  %479 = fmul fast float %478, 2.000000e+00
  %480 = fsub fast float %467, %447
  %481 = shl i32 %125, 7
  %482 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %481, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.f32 %482, 0
  %484 = extractvalue %dx.types.ResRet.f32 %482, 1
  %485 = extractvalue %dx.types.ResRet.f32 %482, 2
  %486 = or i32 %481, 12
  %487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.f32 %487, 0
  br label %489

; <label>:489                                     ; preds = %424, %422, %413, %338, %284, %196
  %490 = phi float [ %263, %196 ], [ %308, %284 ], [ %402, %338 ], [ 1.000000e+00, %413 ], [ %451, %424 ], [ 0.000000e+00, %422 ]
  %491 = phi float [ %266, %196 ], [ %313, %284 ], [ %405, %338 ], [ 0.000000e+00, %413 ], [ %456, %424 ], [ 0.000000e+00, %422 ]
  %492 = phi float [ %269, %196 ], [ %317, %284 ], [ %408, %338 ], [ 0.000000e+00, %413 ], [ %460, %424 ], [ 0.000000e+00, %422 ]
  %493 = phi float [ %209, %196 ], [ %299, %284 ], [ %359, %338 ], [ 0.000000e+00, %413 ], [ %443, %424 ], [ 0.000000e+00, %422 ]
  %494 = phi float [ %264, %196 ], [ %321, %284 ], [ %403, %338 ], [ 0.000000e+00, %413 ], [ %464, %424 ], [ 0.000000e+00, %422 ]
  %495 = phi float [ %267, %196 ], [ %325, %284 ], [ %406, %338 ], [ 1.000000e+00, %413 ], [ %468, %424 ], [ 0.000000e+00, %422 ]
  %496 = phi float [ %270, %196 ], [ %329, %284 ], [ %409, %338 ], [ 0.000000e+00, %413 ], [ %472, %424 ], [ 0.000000e+00, %422 ]
  %497 = phi float [ %210, %196 ], [ %300, %284 ], [ %360, %338 ], [ 0.000000e+00, %413 ], [ %444, %424 ], [ 0.000000e+00, %422 ]
  %498 = phi float [ %265, %196 ], [ %332, %284 ], [ %404, %338 ], [ 0.000000e+00, %413 ], [ %475, %424 ], [ 0.000000e+00, %422 ]
  %499 = phi float [ %268, %196 ], [ %336, %284 ], [ %407, %338 ], [ 0.000000e+00, %413 ], [ %479, %424 ], [ 0.000000e+00, %422 ]
  %500 = phi float [ %271, %196 ], [ %337, %284 ], [ %410, %338 ], [ 1.000000e+00, %413 ], [ %480, %424 ], [ 0.000000e+00, %422 ]
  %501 = phi float [ %211, %196 ], [ %301, %284 ], [ %361, %338 ], [ 0.000000e+00, %413 ], [ %445, %424 ], [ 0.000000e+00, %422 ]
  %502 = phi float [ 1.000000e+00, %196 ], [ 1.000000e+00, %284 ], [ 1.000000e+00, %338 ], [ 1.000000e+00, %413 ], [ 1.000000e+00, %424 ], [ 0.000000e+00, %422 ]
  %503 = phi float [ %199, %196 ], [ 0.000000e+00, %284 ], [ %363, %338 ], [ %416, %413 ], [ %483, %424 ], [ 0.000000e+00, %422 ]
  %504 = phi float [ %200, %196 ], [ 0.000000e+00, %284 ], [ %364, %338 ], [ %417, %413 ], [ %484, %424 ], [ 0.000000e+00, %422 ]
  %505 = phi float [ %201, %196 ], [ 0.000000e+00, %284 ], [ %365, %338 ], [ %418, %413 ], [ %485, %424 ], [ 0.000000e+00, %422 ]
  %506 = phi float [ %273, %196 ], [ %302, %284 ], [ %366, %338 ], [ %421, %413 ], [ %488, %424 ], [ 0.000000e+00, %422 ]
  %507 = bitcast float %493 to i32
  %508 = bitcast float %497 to i32
  %509 = bitcast float %501 to i32
  %510 = select i1 %188, i32 0, i32 %184
  %511 = select i1 %188, i32 0, i32 %185
  %512 = select i1 %188, i32 0, i32 %186
  %513 = sub i32 %507, %510
  %514 = sub i32 %508, %511
  %515 = sub i32 %509, %512
  %516 = sitofp i32 %513 to float
  %517 = sitofp i32 %514 to float
  %518 = sitofp i32 %515 to float
  %519 = fmul fast float %516, 0x3F30000000000000
  %520 = fmul fast float %517, 0x3F30000000000000
  %521 = fmul fast float %518, 0x3F30000000000000
  %522 = shl i32 %123, 2
  %523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.i32 %523, 0
  %525 = shl i32 %524, 6
  %526 = or i32 %525, %28
  %527 = mul i32 %526, 3
  %528 = mul i32 %526, 6
  %529 = and i32 %528, -4
  %530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.i32 %530, 0
  %532 = extractvalue %dx.types.ResRet.i32 %530, 1
  %533 = and i32 %527, 1
  %534 = icmp eq i32 %533, 0
  %535 = lshr i32 %531, 16
  %536 = and i32 %532, 65535
  %537 = lshr i32 %532, 16
  %538 = and i32 %531, 65535
  %539 = select i1 %534, i32 %538, i32 %535
  %540 = select i1 %534, i32 %535, i32 %536
  %541 = select i1 %534, i32 %536, i32 %537
  %542 = and i32 %128, 1
  %543 = icmp eq i32 %542, 0
  %544 = shl nuw nsw i32 %539, 3
  %545 = shl nuw nsw i32 %540, 3
  %546 = shl nuw nsw i32 %541, 3
  br i1 %543, label %567, label %547, !dx.controlflow.hints !47

; <label>:547                                     ; preds = %489
  %548 = shl i32 %136, 3
  %549 = add i32 %137, %548
  %550 = add i32 %544, %549
  %551 = add i32 %545, %549
  %552 = add i32 %546, %549
  %553 = call i32 @dx.op.binary.i32(i32 37, i32 %551, i32 %552)  ; IMax(a,b)
  %554 = call i32 @dx.op.binary.i32(i32 37, i32 %550, i32 %553)  ; IMax(a,b)
  %555 = add nsw i32 %554, 8
  %556 = icmp ult i32 %555, %142
  br i1 %556, label %557, label %601, !dx.controlflow.hints !48

; <label>:557                                     ; preds = %547
  %558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.i32 %558, 0
  %560 = extractvalue %dx.types.ResRet.i32 %558, 1
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = extractvalue %dx.types.ResRet.i32 %561, 1
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = extractvalue %dx.types.ResRet.i32 %564, 1
  br label %601

; <label>:567                                     ; preds = %489
  %568 = lshr i32 %539, 7
  %569 = add i32 %568, %138
  %570 = shl i32 %569, 2
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = shl i32 %572, 10
  %574 = and i32 %544, 1016
  %575 = or i32 %573, %574
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = extractvalue %dx.types.ResRet.i32 %576, 1
  %579 = lshr i32 %540, 7
  %580 = add i32 %579, %138
  %581 = shl i32 %580, 2
  %582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %581, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.i32 %582, 0
  %584 = shl i32 %583, 10
  %585 = and i32 %545, 1016
  %586 = or i32 %584, %585
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = extractvalue %dx.types.ResRet.i32 %587, 1
  %590 = lshr i32 %541, 7
  %591 = add i32 %590, %138
  %592 = shl i32 %591, 2
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 0
  %595 = shl i32 %594, 10
  %596 = and i32 %546, 1016
  %597 = or i32 %595, %596
  %598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %597, i32 undef)  ; BufferLoad(srv,index,wot)
  %599 = extractvalue %dx.types.ResRet.i32 %598, 0
  %600 = extractvalue %dx.types.ResRet.i32 %598, 1
  br label %601

; <label>:601                                     ; preds = %567, %557, %547
  %602 = phi i32 [ %559, %557 ], [ %577, %567 ], [ 0, %547 ]
  %603 = phi i32 [ %560, %557 ], [ %578, %567 ], [ 0, %547 ]
  %604 = phi i32 [ %562, %557 ], [ %588, %567 ], [ 0, %547 ]
  %605 = phi i32 [ %563, %557 ], [ %589, %567 ], [ 0, %547 ]
  %606 = phi i32 [ %565, %557 ], [ %599, %567 ], [ 0, %547 ]
  %607 = phi i32 [ %566, %557 ], [ %600, %567 ], [ 0, %547 ]
  %608 = icmp eq i32 %132, 0
  %609 = and i32 %602, 2097151
  %610 = uitofp i32 %609 to float
  %611 = lshr i32 %602, 21
  %612 = shl i32 %603, 11
  %613 = and i32 %612, 2095104
  %614 = or i32 %613, %611
  %615 = uitofp i32 %614 to float
  %616 = lshr i32 %603, 10
  %617 = and i32 %616, 2097151
  %618 = uitofp i32 %617 to float
  br i1 %608, label %619, label %629, !dx.controlflow.hints !49

; <label>:619                                     ; preds = %601
  %620 = fdiv float %610, 2.097151e+06
  %621 = fdiv float %615, 2.097151e+06
  %622 = fdiv float %618, 2.097151e+06
  %623 = fmul float %620, 2.000000e+00
  %624 = fmul float %621, 2.000000e+00
  %625 = fmul float %622, 2.000000e+00
  %626 = fadd float %623, -1.000000e+00
  %627 = fadd float %624, -1.000000e+00
  %628 = fadd float %625, -1.000000e+00
  br label %629

; <label>:629                                     ; preds = %619, %601
  %630 = phi float [ %626, %619 ], [ %610, %601 ]
  %631 = phi float [ %627, %619 ], [ %615, %601 ]
  %632 = phi float [ %628, %619 ], [ %618, %601 ]
  %633 = fmul float %506, %632
  %634 = fadd float %505, %633
  %635 = fmul float %506, %631
  %636 = fadd float %504, %635
  %637 = fmul float %506, %630
  %638 = fadd float %503, %637
  %639 = and i32 %604, 2097151
  %640 = uitofp i32 %639 to float
  %641 = lshr i32 %604, 21
  %642 = shl i32 %605, 11
  %643 = and i32 %642, 2095104
  %644 = or i32 %643, %641
  %645 = uitofp i32 %644 to float
  %646 = lshr i32 %605, 10
  %647 = and i32 %646, 2097151
  %648 = uitofp i32 %647 to float
  br i1 %608, label %649, label %659, !dx.controlflow.hints !49

; <label>:649                                     ; preds = %629
  %650 = fdiv float %640, 2.097151e+06
  %651 = fdiv float %645, 2.097151e+06
  %652 = fdiv float %648, 2.097151e+06
  %653 = fmul float %650, 2.000000e+00
  %654 = fmul float %651, 2.000000e+00
  %655 = fmul float %652, 2.000000e+00
  %656 = fadd float %653, -1.000000e+00
  %657 = fadd float %654, -1.000000e+00
  %658 = fadd float %655, -1.000000e+00
  br label %659

; <label>:659                                     ; preds = %649, %629
  %660 = phi float [ %656, %649 ], [ %640, %629 ]
  %661 = phi float [ %657, %649 ], [ %645, %629 ]
  %662 = phi float [ %658, %649 ], [ %648, %629 ]
  %663 = fmul float %506, %662
  %664 = fadd float %505, %663
  %665 = fmul float %506, %661
  %666 = fadd float %504, %665
  %667 = fmul float %506, %660
  %668 = fadd float %503, %667
  %669 = and i32 %606, 2097151
  %670 = uitofp i32 %669 to float
  %671 = lshr i32 %606, 21
  %672 = shl i32 %607, 11
  %673 = and i32 %672, 2095104
  %674 = or i32 %673, %671
  %675 = uitofp i32 %674 to float
  %676 = lshr i32 %607, 10
  %677 = and i32 %676, 2097151
  %678 = uitofp i32 %677 to float
  br i1 %608, label %679, label %689, !dx.controlflow.hints !49

; <label>:679                                     ; preds = %659
  %680 = fdiv float %670, 2.097151e+06
  %681 = fdiv float %675, 2.097151e+06
  %682 = fdiv float %678, 2.097151e+06
  %683 = fmul float %680, 2.000000e+00
  %684 = fmul float %681, 2.000000e+00
  %685 = fmul float %682, 2.000000e+00
  %686 = fadd float %683, -1.000000e+00
  %687 = fadd float %684, -1.000000e+00
  %688 = fadd float %685, -1.000000e+00
  br label %689

; <label>:689                                     ; preds = %679, %659
  %690 = phi float [ %686, %679 ], [ %670, %659 ]
  %691 = phi float [ %687, %679 ], [ %675, %659 ]
  %692 = phi float [ %688, %679 ], [ %678, %659 ]
  %693 = fmul float %506, %692
  %694 = fadd float %505, %693
  %695 = fmul float %506, %691
  %696 = fadd float %504, %695
  %697 = fmul float %506, %690
  %698 = fadd float %503, %697
  %699 = fmul fast float %638, %490
  %700 = call float @dx.op.tertiary.f32(i32 46, float %636, float %491, float %699)  ; FMad(a,b,c)
  %701 = call float @dx.op.tertiary.f32(i32 46, float %634, float %492, float %700)  ; FMad(a,b,c)
  %702 = fadd fast float %701, %519
  %703 = fmul fast float %638, %494
  %704 = call float @dx.op.tertiary.f32(i32 46, float %636, float %495, float %703)  ; FMad(a,b,c)
  %705 = call float @dx.op.tertiary.f32(i32 46, float %634, float %496, float %704)  ; FMad(a,b,c)
  %706 = fadd fast float %705, %520
  %707 = fmul fast float %638, %498
  %708 = call float @dx.op.tertiary.f32(i32 46, float %636, float %499, float %707)  ; FMad(a,b,c)
  %709 = call float @dx.op.tertiary.f32(i32 46, float %634, float %500, float %708)  ; FMad(a,b,c)
  %710 = fadd fast float %709, %521
  %711 = fmul fast float %702, %154
  %712 = call float @dx.op.tertiary.f32(i32 46, float %706, float %162, float %711)  ; FMad(a,b,c)
  %713 = call float @dx.op.tertiary.f32(i32 46, float %710, float %170, float %712)  ; FMad(a,b,c)
  %714 = call float @dx.op.tertiary.f32(i32 46, float %502, float %178, float %713)  ; FMad(a,b,c)
  %715 = fmul fast float %702, %155
  %716 = call float @dx.op.tertiary.f32(i32 46, float %706, float %163, float %715)  ; FMad(a,b,c)
  %717 = call float @dx.op.tertiary.f32(i32 46, float %710, float %171, float %716)  ; FMad(a,b,c)
  %718 = call float @dx.op.tertiary.f32(i32 46, float %502, float %179, float %717)  ; FMad(a,b,c)
  %719 = fmul fast float %702, %156
  %720 = call float @dx.op.tertiary.f32(i32 46, float %706, float %164, float %719)  ; FMad(a,b,c)
  %721 = call float @dx.op.tertiary.f32(i32 46, float %710, float %172, float %720)  ; FMad(a,b,c)
  %722 = call float @dx.op.tertiary.f32(i32 46, float %502, float %180, float %721)  ; FMad(a,b,c)
  %723 = fmul fast float %668, %490
  %724 = call float @dx.op.tertiary.f32(i32 46, float %666, float %491, float %723)  ; FMad(a,b,c)
  %725 = call float @dx.op.tertiary.f32(i32 46, float %664, float %492, float %724)  ; FMad(a,b,c)
  %726 = fadd fast float %725, %519
  %727 = fmul fast float %668, %494
  %728 = call float @dx.op.tertiary.f32(i32 46, float %666, float %495, float %727)  ; FMad(a,b,c)
  %729 = call float @dx.op.tertiary.f32(i32 46, float %664, float %496, float %728)  ; FMad(a,b,c)
  %730 = fadd fast float %729, %520
  %731 = fmul fast float %668, %498
  %732 = call float @dx.op.tertiary.f32(i32 46, float %666, float %499, float %731)  ; FMad(a,b,c)
  %733 = call float @dx.op.tertiary.f32(i32 46, float %664, float %500, float %732)  ; FMad(a,b,c)
  %734 = fadd fast float %733, %521
  %735 = fmul fast float %726, %154
  %736 = call float @dx.op.tertiary.f32(i32 46, float %730, float %162, float %735)  ; FMad(a,b,c)
  %737 = call float @dx.op.tertiary.f32(i32 46, float %734, float %170, float %736)  ; FMad(a,b,c)
  %738 = call float @dx.op.tertiary.f32(i32 46, float %502, float %178, float %737)  ; FMad(a,b,c)
  %739 = fmul fast float %726, %155
  %740 = call float @dx.op.tertiary.f32(i32 46, float %730, float %163, float %739)  ; FMad(a,b,c)
  %741 = call float @dx.op.tertiary.f32(i32 46, float %734, float %171, float %740)  ; FMad(a,b,c)
  %742 = call float @dx.op.tertiary.f32(i32 46, float %502, float %179, float %741)  ; FMad(a,b,c)
  %743 = fmul fast float %726, %156
  %744 = call float @dx.op.tertiary.f32(i32 46, float %730, float %164, float %743)  ; FMad(a,b,c)
  %745 = call float @dx.op.tertiary.f32(i32 46, float %734, float %172, float %744)  ; FMad(a,b,c)
  %746 = call float @dx.op.tertiary.f32(i32 46, float %502, float %180, float %745)  ; FMad(a,b,c)
  %747 = fmul fast float %698, %490
  %748 = call float @dx.op.tertiary.f32(i32 46, float %696, float %491, float %747)  ; FMad(a,b,c)
  %749 = call float @dx.op.tertiary.f32(i32 46, float %694, float %492, float %748)  ; FMad(a,b,c)
  %750 = fadd fast float %749, %519
  %751 = fmul fast float %698, %494
  %752 = call float @dx.op.tertiary.f32(i32 46, float %696, float %495, float %751)  ; FMad(a,b,c)
  %753 = call float @dx.op.tertiary.f32(i32 46, float %694, float %496, float %752)  ; FMad(a,b,c)
  %754 = fadd fast float %753, %520
  %755 = fmul fast float %698, %498
  %756 = call float @dx.op.tertiary.f32(i32 46, float %696, float %499, float %755)  ; FMad(a,b,c)
  %757 = call float @dx.op.tertiary.f32(i32 46, float %694, float %500, float %756)  ; FMad(a,b,c)
  %758 = fadd fast float %757, %521
  %759 = fmul fast float %750, %154
  %760 = call float @dx.op.tertiary.f32(i32 46, float %754, float %162, float %759)  ; FMad(a,b,c)
  %761 = call float @dx.op.tertiary.f32(i32 46, float %758, float %170, float %760)  ; FMad(a,b,c)
  %762 = call float @dx.op.tertiary.f32(i32 46, float %502, float %178, float %761)  ; FMad(a,b,c)
  %763 = fmul fast float %750, %155
  %764 = call float @dx.op.tertiary.f32(i32 46, float %754, float %163, float %763)  ; FMad(a,b,c)
  %765 = call float @dx.op.tertiary.f32(i32 46, float %758, float %171, float %764)  ; FMad(a,b,c)
  %766 = call float @dx.op.tertiary.f32(i32 46, float %502, float %179, float %765)  ; FMad(a,b,c)
  %767 = fmul fast float %750, %156
  %768 = call float @dx.op.tertiary.f32(i32 46, float %754, float %164, float %767)  ; FMad(a,b,c)
  %769 = call float @dx.op.tertiary.f32(i32 46, float %758, float %172, float %768)  ; FMad(a,b,c)
  %770 = call float @dx.op.tertiary.f32(i32 46, float %502, float %180, float %769)  ; FMad(a,b,c)
  %771 = and i32 %127, 1
  %772 = icmp eq i32 %771, 0
  br i1 %772, label %789, label %773, !dx.controlflow.hints !50

; <label>:773                                     ; preds = %689
  %774 = fmul fast float %770, %742
  %775 = fmul fast float %766, %746
  %776 = fsub fast float %774, %775
  %777 = fmul fast float %770, %738
  %778 = fmul fast float %762, %746
  %779 = fsub fast float %777, %778
  %780 = fmul fast float %766, %738
  %781 = fmul fast float %762, %742
  %782 = fsub fast float %780, %781
  %783 = fmul fast float %776, %714
  %784 = fmul fast float %779, %718
  %785 = fmul fast float %782, %722
  %786 = fsub fast float %785, %784
  %787 = fadd fast float %786, %783
  %788 = fcmp fast ogt float %787, 0.000000e+00
  br i1 %788, label %1205, label %789, !dx.controlflow.hints !51

; <label>:789                                     ; preds = %773, %689
  %790 = fcmp fast olt float %722, 0.000000e+00
  %791 = zext i1 %790 to i32
  %792 = call float @dx.op.unary.f32(i32 6, float %722)  ; FAbs(value)
  %793 = fdiv fast float 1.000000e+00, %792
  %794 = fmul fast float %714, %793
  %795 = fmul fast float %718, %793
  %796 = fmul fast float %794, 5.000000e-01
  %797 = fmul fast float %795, 5.000000e-01
  %798 = fadd fast float %796, 5.000000e-01
  %799 = fsub fast float 5.000000e-01, %797
  %800 = call float @dx.op.unary.f32(i32 7, float %798)  ; Saturate(value)
  %801 = call float @dx.op.unary.f32(i32 7, float %799)  ; Saturate(value)
  %802 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %722)  ; FMax(a,b)
  %803 = fcmp fast olt float %746, 0.000000e+00
  %804 = zext i1 %803 to i32
  %805 = add nuw nsw i32 %804, %791
  %806 = call float @dx.op.unary.f32(i32 6, float %746)  ; FAbs(value)
  %807 = fdiv fast float 1.000000e+00, %806
  %808 = fmul fast float %738, %807
  %809 = fmul fast float %742, %807
  %810 = fmul fast float %808, 5.000000e-01
  %811 = fmul fast float %809, 5.000000e-01
  %812 = fadd fast float %810, 5.000000e-01
  %813 = fsub fast float 5.000000e-01, %811
  %814 = call float @dx.op.unary.f32(i32 7, float %812)  ; Saturate(value)
  %815 = call float @dx.op.unary.f32(i32 7, float %813)  ; Saturate(value)
  %816 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %746)  ; FMax(a,b)
  %817 = fcmp fast olt float %770, 0.000000e+00
  %818 = zext i1 %817 to i32
  %819 = add nuw nsw i32 %818, %805
  %820 = call float @dx.op.unary.f32(i32 6, float %770)  ; FAbs(value)
  %821 = fdiv fast float 1.000000e+00, %820
  %822 = fmul fast float %762, %821
  %823 = fmul fast float %766, %821
  %824 = fmul fast float %822, 5.000000e-01
  %825 = fmul fast float %823, 5.000000e-01
  %826 = fadd fast float %824, 5.000000e-01
  %827 = fsub fast float 5.000000e-01, %825
  %828 = call float @dx.op.unary.f32(i32 7, float %826)  ; Saturate(value)
  %829 = call float @dx.op.unary.f32(i32 7, float %827)  ; Saturate(value)
  %830 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %770)  ; FMax(a,b)
  %831 = call float @dx.op.binary.f32(i32 36, float %814, float %828)  ; FMin(a,b)
  %832 = call float @dx.op.binary.f32(i32 36, float %800, float %831)  ; FMin(a,b)
  %833 = call float @dx.op.binary.f32(i32 36, float %815, float %829)  ; FMin(a,b)
  %834 = call float @dx.op.binary.f32(i32 36, float %801, float %833)  ; FMin(a,b)
  %835 = call float @dx.op.binary.f32(i32 35, float %814, float %828)  ; FMax(a,b)
  %836 = call float @dx.op.binary.f32(i32 35, float %800, float %835)  ; FMax(a,b)
  %837 = call float @dx.op.binary.f32(i32 35, float %815, float %829)  ; FMax(a,b)
  %838 = call float @dx.op.binary.f32(i32 35, float %801, float %837)  ; FMax(a,b)
  %839 = and i32 %127, 4
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %865, label %841, !dx.controlflow.hints !52

; <label>:841                                     ; preds = %789
  %842 = icmp eq i32 %819, 3
  br i1 %842, label %1205, label %843, !dx.controlflow.hints !53

; <label>:843                                     ; preds = %841
  %844 = fcmp fast ole float %836, 0.000000e+00
  %845 = fcmp fast ole float %838, 0.000000e+00
  %846 = or i1 %844, %845
  %847 = fcmp fast oge float %832, 1.000000e+00
  %848 = or i1 %847, %846
  %849 = fcmp fast oge float %834, 1.000000e+00
  %850 = or i1 %849, %848
  br i1 %850, label %1205, label %851, !dx.controlflow.hints !54

; <label>:851                                     ; preds = %843
  %852 = fmul fast float %832, %193
  %853 = fmul fast float %834, %194
  %854 = fmul fast float %836, %193
  %855 = fmul fast float %838, %194
  %856 = icmp eq i32 %819, 0
  %857 = call float @dx.op.unary.f32(i32 26, float %852)  ; Round_ne(value)
  %858 = call float @dx.op.unary.f32(i32 26, float %853)  ; Round_ne(value)
  %859 = call float @dx.op.unary.f32(i32 26, float %854)  ; Round_ne(value)
  %860 = call float @dx.op.unary.f32(i32 26, float %855)  ; Round_ne(value)
  %861 = fcmp fast oeq float %857, %859
  %862 = fcmp fast oeq float %858, %860
  %863 = or i1 %861, %862
  %864 = and i1 %856, %863
  br i1 %864, label %1205, label %865, !dx.controlflow.hints !55

; <label>:865                                     ; preds = %851, %789
  %866 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %867 = extractvalue %dx.types.CBufRet.i32 %866, 0
  %868 = icmp ne i32 %867, 0
  %869 = and i32 %127, 2
  %870 = icmp ne i32 %869, 0
  %871 = and i1 %870, %868
  br i1 %871, label %872, label %1202, !dx.controlflow.hints !56

; <label>:872                                     ; preds = %865
  %873 = and i32 %126, -2
  %874 = icmp eq i32 %873, 62
  %875 = call float @dx.op.binary.f32(i32 36, float %816, float %830)  ; FMin(a,b)
  %876 = call float @dx.op.binary.f32(i32 36, float %802, float %875)  ; FMin(a,b)
  %877 = and i32 %867, 2
  %878 = icmp eq i32 %877, 0
  br i1 %878, label %1031, label %879, !dx.controlflow.hints !57

; <label>:879                                     ; preds = %872
  %880 = fsub fast float %836, %832
  %881 = fsub fast float %838, %834
  %882 = fmul fast float %880, 6.400000e+01
  %883 = fmul fast float %881, 6.400000e+01
  %884 = call float @dx.op.unary.f32(i32 28, float %882)  ; Round_pi(value)
  %885 = call float @dx.op.unary.f32(i32 28, float %883)  ; Round_pi(value)
  %886 = call float @dx.op.binary.f32(i32 35, float %884, float %885)  ; FMax(a,b)
  %887 = call float @dx.op.unary.f32(i32 23, float %886)  ; Log(value)
  %888 = call float @dx.op.unary.f32(i32 28, float %887)  ; Round_pi(value)
  %889 = fptosi float %888 to i32
  %890 = call i32 @dx.op.binary.i32(i32 37, i32 %889, i32 0)  ; IMax(a,b)
  %891 = call i32 @dx.op.binary.i32(i32 38, i32 %890, i32 6)  ; IMin(a,b)
  %892 = and i32 %891, 31
  %893 = lshr i32 64, %892
  %894 = uitofp i32 %893 to float
  %895 = call float @dx.op.binary.f32(i32 35, float %894, float 1.000000e+00)  ; FMax(a,b)
  %896 = fdiv fast float 1.000000e+00, %895
  %897 = fmul fast float %895, %832
  %898 = fmul fast float %895, %834
  %899 = call float @dx.op.unary.f32(i32 27, float %897)  ; Round_ni(value)
  %900 = call float @dx.op.unary.f32(i32 27, float %898)  ; Round_ni(value)
  %901 = call float @dx.op.binary.f32(i32 35, float %899, float 0.000000e+00)  ; FMax(a,b)
  %902 = call float @dx.op.binary.f32(i32 35, float %900, float 0.000000e+00)  ; FMax(a,b)
  %903 = call float @dx.op.binary.f32(i32 36, float %901, float %895)  ; FMin(a,b)
  %904 = call float @dx.op.binary.f32(i32 36, float %902, float %895)  ; FMin(a,b)
  %905 = fmul fast float %895, %836
  %906 = fmul fast float %895, %838
  %907 = call float @dx.op.unary.f32(i32 28, float %905)  ; Round_pi(value)
  %908 = call float @dx.op.unary.f32(i32 28, float %906)  ; Round_pi(value)
  %909 = call float @dx.op.binary.f32(i32 35, float %907, float 0.000000e+00)  ; FMax(a,b)
  %910 = call float @dx.op.binary.f32(i32 35, float %908, float 0.000000e+00)  ; FMax(a,b)
  %911 = call float @dx.op.binary.f32(i32 36, float %909, float %895)  ; FMin(a,b)
  %912 = call float @dx.op.binary.f32(i32 36, float %910, float %895)  ; FMin(a,b)
  %913 = fadd fast float %903, 1.000000e+00
  %914 = fmul fast float %913, %896
  %915 = fmul fast float %896, 2.000000e+00
  %916 = fsub fast float %911, %903
  %917 = fsub fast float %912, %904
  %918 = fmul fast float %916, 5.000000e-01
  %919 = fmul fast float %917, 5.000000e-01
  %920 = call float @dx.op.unary.f32(i32 28, float %918)  ; Round_pi(value)
  %921 = call float @dx.op.unary.f32(i32 28, float %919)  ; Round_pi(value)
  %922 = fptoui float %920 to i32
  %923 = fptoui float %921 to i32
  %924 = shl i32 1, %892
  %925 = add i32 %924, -1
  %926 = lshr i32 %925, 6
  %927 = and i32 %926, 1
  %928 = sub nsw i32 0, %927
  %929 = icmp eq i32 %923, %928
  br i1 %929, label %1011, label %930

; <label>:930                                     ; preds = %879
  %931 = fadd fast float %904, 1.000000e+00
  %932 = fmul fast float %931, %896
  %933 = and i32 %926, 1
  %934 = add i32 %922, %933
  %935 = add i32 %923, %933
  br label %936

; <label>:936                                     ; preds = %1004, %930
  %937 = phi i32 [ %1005, %1004 ], [ 1, %930 ]
  %938 = phi float [ %1006, %1004 ], [ 0.000000e+00, %930 ]
  %939 = phi float [ %1007, %1004 ], [ %932, %930 ]
  %940 = phi i32 [ %1008, %1004 ], [ 0, %930 ]
  %941 = sub nsw i32 0, %927
  %942 = icmp eq i32 %922, %941
  br i1 %942, label %1004, label %943

; <label>:943                                     ; preds = %936
  br label %944

; <label>:944                                     ; preds = %944, %943
  %945 = phi i32 [ %995, %944 ], [ %937, %943 ]
  %946 = phi float [ %999, %944 ], [ %938, %943 ]
  %947 = phi float [ %1000, %944 ], [ %914, %943 ]
  %948 = phi i32 [ %1001, %944 ], [ 0, %943 ]
  %949 = sitofp i32 %891 to float
  %950 = fmul fast float %896, 0xBFDFE00000000000
  %951 = fadd fast float %950, %947
  %952 = fmul fast float %896, 0x3FE0100000000000
  %953 = fadd fast float %952, %939
  %954 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %951, float %953, float undef, float undef, i32 0, i32 0, i32 undef, float %949)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %955 = extractvalue %dx.types.ResRet.f32 %954, 0
  %956 = fadd fast float %952, %947
  %957 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %956, float %953, float undef, float undef, i32 0, i32 0, i32 undef, float %949)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %958 = extractvalue %dx.types.ResRet.f32 %957, 0
  %959 = fadd fast float %950, %939
  %960 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %956, float %959, float undef, float undef, i32 0, i32 0, i32 undef, float %949)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %961 = extractvalue %dx.types.ResRet.f32 %960, 0
  %962 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %951, float %959, float undef, float undef, i32 0, i32 0, i32 undef, float %949)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %963 = extractvalue %dx.types.ResRet.f32 %962, 0
  %964 = fcmp fast olt float %955, -1.000000e+00
  %965 = fcmp fast ogt float %955, -1.000000e+00
  %966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.f32 %966, 1
  %968 = select i1 %965, float %967, float 1.000000e+00
  %969 = fadd fast float %955, 1.000000e+00
  %970 = fmul fast float %968, %969
  %971 = call float @dx.op.unary.f32(i32 6, float %970)  ; FAbs(value)
  %972 = fcmp fast olt float %958, -1.000000e+00
  %973 = fcmp fast ogt float %958, -1.000000e+00
  %974 = select i1 %973, float %967, float 1.000000e+00
  %975 = fadd fast float %958, 1.000000e+00
  %976 = fmul fast float %974, %975
  %977 = call float @dx.op.unary.f32(i32 6, float %976)  ; FAbs(value)
  %978 = fcmp fast olt float %961, -1.000000e+00
  %979 = fcmp fast ogt float %961, -1.000000e+00
  %980 = select i1 %979, float %967, float 1.000000e+00
  %981 = fadd fast float %961, 1.000000e+00
  %982 = fmul fast float %980, %981
  %983 = call float @dx.op.unary.f32(i32 6, float %982)  ; FAbs(value)
  %984 = fcmp fast olt float %963, -1.000000e+00
  %985 = fcmp fast ogt float %963, -1.000000e+00
  %986 = select i1 %985, float %967, float 1.000000e+00
  %987 = fadd fast float %963, 1.000000e+00
  %988 = fmul fast float %986, %987
  %989 = call float @dx.op.unary.f32(i32 6, float %988)  ; FAbs(value)
  %990 = and i1 %964, %972
  %991 = and i1 %990, %978
  %992 = and i1 %991, %984
  %993 = icmp ne i32 %945, 0
  %994 = and i1 %993, %992
  %995 = zext i1 %994 to i32
  %996 = call float @dx.op.binary.f32(i32 35, float %977, float %983)  ; FMax(a,b)
  %997 = call float @dx.op.binary.f32(i32 35, float %971, float %996)  ; FMax(a,b)
  %998 = call float @dx.op.binary.f32(i32 35, float %997, float %989)  ; FMax(a,b)
  %999 = call float @dx.op.binary.f32(i32 35, float %998, float %946)  ; FMax(a,b)
  %1000 = fadd fast float %947, %915
  %1001 = add nuw i32 %948, 1
  %1002 = icmp eq i32 %1001, %934
  br i1 %1002, label %1003, label %944

; <label>:1003                                    ; preds = %944
  br label %1004

; <label>:1004                                    ; preds = %1003, %936
  %1005 = phi i32 [ %937, %936 ], [ %995, %1003 ]
  %1006 = phi float [ %938, %936 ], [ %999, %1003 ]
  %1007 = fadd fast float %939, %915
  %1008 = add nuw i32 %940, 1
  %1009 = icmp eq i32 %1008, %935
  br i1 %1009, label %1010, label %936

; <label>:1010                                    ; preds = %1004
  br label %1011

; <label>:1011                                    ; preds = %1010, %879
  %1012 = phi i32 [ 1, %879 ], [ %1005, %1010 ]
  %1013 = phi float [ 0.000000e+00, %879 ], [ %1006, %1010 ]
  %1014 = icmp eq i32 %1012, 0
  %1015 = and i1 %874, %1014
  br i1 %1015, label %1028, label %1016, !dx.controlflow.hints !58

; <label>:1016                                    ; preds = %1011
  %1017 = fcmp fast une float %876, 0.000000e+00
  %1018 = bitcast float %876 to i32
  %1019 = and i32 %1018, 2139095040
  %1020 = add nsw i32 %1019, -1056964608
  %1021 = ashr exact i32 %1020, 23
  %1022 = add nsw i32 %1021, -10
  %1023 = sitofp i32 %1022 to float
  %1024 = select i1 %1017, float %1023, float -1.000000e+01
  %1025 = call float @dx.op.unary.f32(i32 21, float %1024)  ; Exp(value)
  %1026 = fsub fast float %876, %1025
  %1027 = fcmp fast ogt float %1013, %1026
  br label %1028

; <label>:1028                                    ; preds = %1016, %1011
  %1029 = phi i1 [ %1027, %1016 ], [ true, %1011 ]
  %1030 = zext i1 %1029 to i32
  br label %1031

; <label>:1031                                    ; preds = %1028, %872
  %1032 = phi i32 [ %1030, %1028 ], [ 1, %872 ]
  %1033 = and i32 %867, 1
  %1034 = icmp ne i32 %1033, 0
  %1035 = icmp ne i32 %1032, 0
  %1036 = and i1 %1035, %1034
  br i1 %1036, label %1037, label %1202, !dx.controlflow.hints !59

; <label>:1037                                    ; preds = %1031
  %1038 = extractvalue %dx.types.CBufRet.i32 %866, 3
  %1039 = extractvalue %dx.types.CBufRet.i32 %866, 1
  %1040 = extractvalue %dx.types.CBufRet.i32 %866, 2
  %1041 = fsub fast float %836, %832
  %1042 = fsub fast float %838, %834
  %1043 = uitofp i32 %1039 to float
  %1044 = uitofp i32 %1040 to float
  %1045 = fmul fast float %1043, %1041
  %1046 = fmul fast float %1044, %1042
  %1047 = call float @dx.op.unary.f32(i32 28, float %1045)  ; Round_pi(value)
  %1048 = call float @dx.op.unary.f32(i32 28, float %1046)  ; Round_pi(value)
  %1049 = call float @dx.op.binary.f32(i32 35, float %1047, float %1048)  ; FMax(a,b)
  %1050 = call float @dx.op.unary.f32(i32 23, float %1049)  ; Log(value)
  %1051 = call float @dx.op.unary.f32(i32 28, float %1050)  ; Round_pi(value)
  %1052 = fptosi float %1051 to i32
  %1053 = call i32 @dx.op.binary.i32(i32 37, i32 %1052, i32 0)  ; IMax(a,b)
  %1054 = call i32 @dx.op.binary.i32(i32 38, i32 %1053, i32 %1038)  ; IMin(a,b)
  %1055 = and i32 %1054, 31
  %1056 = lshr i32 %1039, %1055
  %1057 = lshr i32 %1040, %1055
  %1058 = uitofp i32 %1056 to float
  %1059 = uitofp i32 %1057 to float
  %1060 = call float @dx.op.binary.f32(i32 35, float %1058, float 1.000000e+00)  ; FMax(a,b)
  %1061 = call float @dx.op.binary.f32(i32 35, float %1059, float 1.000000e+00)  ; FMax(a,b)
  %1062 = fdiv fast float 1.000000e+00, %1060
  %1063 = fdiv fast float 1.000000e+00, %1061
  %1064 = fmul fast float %1060, %832
  %1065 = fmul fast float %1061, %834
  %1066 = call float @dx.op.unary.f32(i32 27, float %1064)  ; Round_ni(value)
  %1067 = call float @dx.op.unary.f32(i32 27, float %1065)  ; Round_ni(value)
  %1068 = call float @dx.op.binary.f32(i32 35, float %1066, float 0.000000e+00)  ; FMax(a,b)
  %1069 = call float @dx.op.binary.f32(i32 35, float %1067, float 0.000000e+00)  ; FMax(a,b)
  %1070 = call float @dx.op.binary.f32(i32 36, float %1068, float %1060)  ; FMin(a,b)
  %1071 = call float @dx.op.binary.f32(i32 36, float %1069, float %1061)  ; FMin(a,b)
  %1072 = fmul fast float %1060, %836
  %1073 = fmul fast float %1061, %838
  %1074 = call float @dx.op.unary.f32(i32 28, float %1072)  ; Round_pi(value)
  %1075 = call float @dx.op.unary.f32(i32 28, float %1073)  ; Round_pi(value)
  %1076 = call float @dx.op.binary.f32(i32 35, float %1074, float 0.000000e+00)  ; FMax(a,b)
  %1077 = call float @dx.op.binary.f32(i32 35, float %1075, float 0.000000e+00)  ; FMax(a,b)
  %1078 = call float @dx.op.binary.f32(i32 36, float %1076, float %1060)  ; FMin(a,b)
  %1079 = call float @dx.op.binary.f32(i32 36, float %1077, float %1061)  ; FMin(a,b)
  %1080 = fadd fast float %1070, 1.000000e+00
  %1081 = fmul fast float %1080, %1062
  %1082 = fmul fast float %1062, 2.000000e+00
  %1083 = fmul fast float %1063, 2.000000e+00
  %1084 = fsub fast float %1078, %1070
  %1085 = fsub fast float %1079, %1071
  %1086 = fmul fast float %1084, 5.000000e-01
  %1087 = fmul fast float %1085, 5.000000e-01
  %1088 = call float @dx.op.unary.f32(i32 28, float %1086)  ; Round_pi(value)
  %1089 = call float @dx.op.unary.f32(i32 28, float %1087)  ; Round_pi(value)
  %1090 = fptoui float %1088 to i32
  %1091 = fptoui float %1089 to i32
  %1092 = shl i32 1, %1055
  %1093 = add i32 %1092, -1
  %1094 = and i32 %1093, %1039
  %1095 = icmp ne i32 %1094, 0
  %1096 = zext i1 %1095 to i32
  %1097 = add i32 %1090, %1096
  %1098 = and i32 %1093, %1040
  %1099 = icmp ne i32 %1098, 0
  %1100 = zext i1 %1099 to i32
  %1101 = add i32 %1091, %1100
  %1102 = icmp eq i32 %1101, 0
  br i1 %1102, label %1182, label %1103

; <label>:1103                                    ; preds = %1037
  %1104 = fadd fast float %1071, 1.000000e+00
  %1105 = fmul fast float %1104, %1063
  br label %1106

; <label>:1106                                    ; preds = %1175, %1103
  %1107 = phi i32 [ %1176, %1175 ], [ 1, %1103 ]
  %1108 = phi float [ %1177, %1175 ], [ 0.000000e+00, %1103 ]
  %1109 = phi float [ %1178, %1175 ], [ %1105, %1103 ]
  %1110 = phi i32 [ %1179, %1175 ], [ 0, %1103 ]
  %1111 = icmp eq i32 %1097, 0
  br i1 %1111, label %1175, label %1112

; <label>:1112                                    ; preds = %1106
  br label %1113

; <label>:1113                                    ; preds = %1113, %1112
  %1114 = phi i32 [ %1166, %1113 ], [ %1107, %1112 ]
  %1115 = phi float [ %1170, %1113 ], [ %1108, %1112 ]
  %1116 = phi float [ %1171, %1113 ], [ %1081, %1112 ]
  %1117 = phi i32 [ %1172, %1113 ], [ 0, %1112 ]
  %1118 = sitofp i32 %1054 to float
  %1119 = fmul fast float %1062, 0xBFDFE00000000000
  %1120 = fadd fast float %1119, %1116
  %1121 = fmul fast float %1063, 0x3FE0100000000000
  %1122 = fadd fast float %1121, %1109
  %1123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %1120, float %1122, float undef, float undef, i32 0, i32 0, i32 undef, float %1118)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1124 = extractvalue %dx.types.ResRet.f32 %1123, 0
  %1125 = fmul fast float %1062, 0x3FE0100000000000
  %1126 = fadd fast float %1125, %1116
  %1127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %1126, float %1122, float undef, float undef, i32 0, i32 0, i32 undef, float %1118)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1128 = extractvalue %dx.types.ResRet.f32 %1127, 0
  %1129 = fmul fast float %1063, 0xBFDFE00000000000
  %1130 = fadd fast float %1129, %1109
  %1131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %1126, float %1130, float undef, float undef, i32 0, i32 0, i32 undef, float %1118)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1132 = extractvalue %dx.types.ResRet.f32 %1131, 0
  %1133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %1120, float %1130, float undef, float undef, i32 0, i32 0, i32 undef, float %1118)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1134 = extractvalue %dx.types.ResRet.f32 %1133, 0
  %1135 = fcmp fast olt float %1124, -1.000000e+00
  %1136 = fcmp fast ogt float %1124, -1.000000e+00
  %1137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1138 = extractvalue %dx.types.CBufRet.f32 %1137, 1
  %1139 = select i1 %1136, float %1138, float 1.000000e+00
  %1140 = fadd fast float %1124, 1.000000e+00
  %1141 = fmul fast float %1139, %1140
  %1142 = call float @dx.op.unary.f32(i32 6, float %1141)  ; FAbs(value)
  %1143 = fcmp fast olt float %1128, -1.000000e+00
  %1144 = fcmp fast ogt float %1128, -1.000000e+00
  %1145 = select i1 %1144, float %1138, float 1.000000e+00
  %1146 = fadd fast float %1128, 1.000000e+00
  %1147 = fmul fast float %1145, %1146
  %1148 = call float @dx.op.unary.f32(i32 6, float %1147)  ; FAbs(value)
  %1149 = fcmp fast olt float %1132, -1.000000e+00
  %1150 = fcmp fast ogt float %1132, -1.000000e+00
  %1151 = select i1 %1150, float %1138, float 1.000000e+00
  %1152 = fadd fast float %1132, 1.000000e+00
  %1153 = fmul fast float %1151, %1152
  %1154 = call float @dx.op.unary.f32(i32 6, float %1153)  ; FAbs(value)
  %1155 = fcmp fast olt float %1134, -1.000000e+00
  %1156 = fcmp fast ogt float %1134, -1.000000e+00
  %1157 = select i1 %1156, float %1138, float 1.000000e+00
  %1158 = fadd fast float %1134, 1.000000e+00
  %1159 = fmul fast float %1157, %1158
  %1160 = call float @dx.op.unary.f32(i32 6, float %1159)  ; FAbs(value)
  %1161 = and i1 %1135, %1143
  %1162 = and i1 %1161, %1149
  %1163 = and i1 %1162, %1155
  %1164 = icmp ne i32 %1114, 0
  %1165 = and i1 %1164, %1163
  %1166 = zext i1 %1165 to i32
  %1167 = call float @dx.op.binary.f32(i32 35, float %1148, float %1154)  ; FMax(a,b)
  %1168 = call float @dx.op.binary.f32(i32 35, float %1142, float %1167)  ; FMax(a,b)
  %1169 = call float @dx.op.binary.f32(i32 35, float %1168, float %1160)  ; FMax(a,b)
  %1170 = call float @dx.op.binary.f32(i32 35, float %1169, float %1115)  ; FMax(a,b)
  %1171 = fadd fast float %1116, %1082
  %1172 = add nuw i32 %1117, 1
  %1173 = icmp eq i32 %1172, %1097
  br i1 %1173, label %1174, label %1113

; <label>:1174                                    ; preds = %1113
  br label %1175

; <label>:1175                                    ; preds = %1174, %1106
  %1176 = phi i32 [ %1107, %1106 ], [ %1166, %1174 ]
  %1177 = phi float [ %1108, %1106 ], [ %1170, %1174 ]
  %1178 = fadd fast float %1109, %1083
  %1179 = add nuw i32 %1110, 1
  %1180 = icmp eq i32 %1179, %1101
  br i1 %1180, label %1181, label %1106

; <label>:1181                                    ; preds = %1175
  br label %1182

; <label>:1182                                    ; preds = %1181, %1037
  %1183 = phi i32 [ 1, %1037 ], [ %1176, %1181 ]
  %1184 = phi float [ 0.000000e+00, %1037 ], [ %1177, %1181 ]
  %1185 = icmp eq i32 %1183, 0
  %1186 = and i1 %874, %1185
  br i1 %1186, label %1199, label %1187, !dx.controlflow.hints !58

; <label>:1187                                    ; preds = %1182
  %1188 = fcmp fast une float %876, 0.000000e+00
  %1189 = bitcast float %876 to i32
  %1190 = and i32 %1189, 2139095040
  %1191 = add nsw i32 %1190, -1056964608
  %1192 = ashr exact i32 %1191, 23
  %1193 = add nsw i32 %1192, -10
  %1194 = sitofp i32 %1193 to float
  %1195 = select i1 %1188, float %1194, float -1.000000e+01
  %1196 = call float @dx.op.unary.f32(i32 21, float %1195)  ; Exp(value)
  %1197 = fsub fast float %876, %1196
  %1198 = fcmp fast ogt float %1184, %1197
  br label %1199

; <label>:1199                                    ; preds = %1187, %1182
  %1200 = phi i1 [ %1198, %1187 ], [ true, %1182 ]
  %1201 = zext i1 %1200 to i32
  br label %1202

; <label>:1202                                    ; preds = %1199, %1031, %865
  %1203 = phi i32 [ %1201, %1199 ], [ %1032, %1031 ], [ 1, %865 ]
  %1204 = icmp ne i32 %1203, 0
  br label %1205

; <label>:1205                                    ; preds = %1202, %851, %843, %841, %773
  %1206 = phi i1 [ %1204, %1202 ], [ false, %773 ], [ false, %841 ], [ false, %843 ], [ false, %851 ]
  %1207 = zext i1 %1206 to i32
  br label %1208

; <label>:1208                                    ; preds = %1205, %122
  %1209 = phi i32 [ %1207, %1205 ], [ %145, %122 ]
  %1210 = icmp ne i32 %1209, 0
  %1211 = call %dx.types.fouri32 @dx.op.waveActiveBallot(i32 116, i1 %1210)  ; WaveActiveBallot(cond)
  %1212 = extractvalue %dx.types.fouri32 %1211, 0
  %1213 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsBallotResult@@3PAIA", i32 0, i32 %29
  store i32 %1212, i32 addrspace(3)* %1213, align 4, !tbaa !60
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1214 = shl nuw nsw i32 %26, 1
  %1215 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsBallotResult@@3PAIA", i32 0, i32 %1214
  %1216 = load i32, i32 addrspace(3)* %1215, align 4, !tbaa !60
  %1217 = or i32 %1214, 1
  %1218 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsBallotResult@@3PAIA", i32 0, i32 %1217
  %1219 = load i32, i32 addrspace(3)* %1218, align 4, !tbaa !60
  %1220 = icmp eq i32 %28, 0
  br i1 %1220, label %1221, label %1226, !dx.controlflow.hints !64

; <label>:1221                                    ; preds = %1208
  %1222 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1216)  ; Countbits(value)
  %1223 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1219)  ; Countbits(value)
  %1224 = add i32 %1223, %1222
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %27, i32 0, i32 %1216, i32 %1219, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1225 = shl i32 %27, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1225, i32 undef, i32 %1224, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1226

; <label>:1226                                    ; preds = %1221, %1208
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
!dx.entryPoints = !{!33}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !22, !26, !31}
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
!26 = !{!27, !28, !29, !30}
!27 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!28 = !{i32 1, %GPSurfPassConsts* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!29 = !{i32 2, %GPOcclusionPassConsts* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!30 = !{i32 3, %TriCullIndirectArgs* undef, !"", i32 0, i32 2, i32 1, i32 16, null}
!31 = !{!32}
!32 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!33 = !{void ()* @triangle_cull_pass, !"triangle_cull_pass", null, !4, !34}
!34 = !{i32 0, i64 524560, i32 4, !35}
!35 = !{i32 128, i32 1, i32 1}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 1}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = !{i32 1}
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
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}

