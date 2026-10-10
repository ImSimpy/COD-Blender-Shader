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
; shader hash: b7c4ae491e1fd5ddc0b7cb82350d7cfc
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
;                                   texture    byte         r/o      T8             t4     1
;                                   texture    byte         r/o      T9            t13     1
;                                   texture    byte         r/o     T10            t27     1
;                                   texture    byte         r/o     T11            t28     1
;                                   texture    byte         r/o     T12            t19     1
;                                   texture    byte         r/o     T13            t20     1
;                                       UAV  struct         r/w      U0             u2     1
;                                       UAV    byte         r/w      U1             u3     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.RWStructuredBuffer<GPCulledSubMesh>" = type { %struct.GPCulledSubMesh }
%struct.GPCulledSubMesh = type { <2 x i32> }
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

define void @cluster_culling_pass() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %22 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %23 = alloca [8 x float], align 4
  %24 = alloca [8 x float], align 4
  %25 = alloca [8 x float], align 4
  %26 = shl i32 %21, 2
  %27 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %26, i32 undef)  ; BufferLoad(srv,index,wot)
  %28 = extractvalue %dx.types.ResRet.i32 %27, 0
  %29 = and i32 %28, 65535
  %30 = and i32 %28, 2097152
  %31 = and i32 %28, 4194304
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46, !dx.controlflow.hints !34

; <label>:33                                      ; preds = %0
  %34 = shl nuw nsw i32 %29, 3
  %35 = or i32 %34, 5242880
  %36 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %35, i32 undef)  ; BufferLoad(srv,index,wot)
  %37 = extractvalue %dx.types.ResRet.i32 %36, 0
  %38 = extractvalue %dx.types.ResRet.i32 %36, 1
  %39 = and i32 %37, 65535
  %40 = lshr i32 %37, 16
  %41 = and i32 %38, 16777215
  %42 = lshr i32 %38, 24
  %43 = lshr i32 %38, 25
  %44 = and i32 %43, 2
  %45 = xor i32 %44, 3
  br label %62

; <label>:46                                      ; preds = %0
  %47 = mul nuw nsw i32 %29, 12
  %48 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %47, i32 undef)  ; BufferLoad(srv,index,wot)
  %49 = extractvalue %dx.types.ResRet.i32 %48, 0
  %50 = extractvalue %dx.types.ResRet.i32 %48, 1
  %51 = extractvalue %dx.types.ResRet.i32 %48, 2
  %52 = lshr i32 %49, 28
  %53 = and i32 %50, 65535
  %54 = shl nuw nsw i32 %52, 16
  %55 = or i32 %54, %53
  %56 = and i32 %49, 268435455
  %57 = lshr i32 %50, 16
  %58 = and i32 %51, 15
  %59 = lshr i32 %51, 4
  %60 = and i32 %59, 15
  %61 = lshr i32 %51, 8
  br label %62

; <label>:62                                      ; preds = %46, %33
  %63 = phi i32 [ %41, %33 ], [ 0, %46 ]
  %64 = phi i32 [ %37, %33 ], [ %51, %46 ]
  %65 = phi i32 [ %40, %33 ], [ %61, %46 ]
  %66 = phi i32 [ %42, %33 ], [ %60, %46 ]
  %67 = phi i32 [ %45, %33 ], [ %58, %46 ]
  %68 = phi i32 [ %39, %33 ], [ %57, %46 ]
  %69 = phi i32 [ 0, %33 ], [ %55, %46 ]
  %70 = phi i32 [ 0, %33 ], [ %56, %46 ]
  %71 = lshr i32 %64, 24
  br i1 %32, label %72, label %78, !dx.controlflow.hints !35

; <label>:72                                      ; preds = %62
  %73 = shl nuw nsw i32 %29, 4
  %74 = add nuw nsw i32 %73, 5767168
  %75 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %74, i32 undef)  ; BufferLoad(srv,index,wot)
  %76 = extractvalue %dx.types.ResRet.i32 %75, 2
  %77 = extractvalue %dx.types.ResRet.i32 %75, 3
  br label %83

; <label>:78                                      ; preds = %62
  %79 = mul nuw nsw i32 %29, 12
  %80 = add nuw nsw i32 %79, 1572864
  %81 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %80, i32 undef)  ; BufferLoad(srv,index,wot)
  %82 = extractvalue %dx.types.ResRet.i32 %81, 2
  br label %83

; <label>:83                                      ; preds = %78, %72
  %84 = phi i32 [ %77, %72 ], [ 0, %78 ]
  %85 = phi i32 [ %76, %72 ], [ %82, %78 ]
  %86 = lshr i32 %28, 10
  %87 = and i32 %86, 960
  %88 = call i32 @dx.op.binary.i32(i32 40, i32 %68, i32 %87)  ; UMin(a,b)
  %89 = sub i32 %68, %88
  %90 = icmp ult i32 %22, %89
  %91 = add i32 %88, %22
  %92 = and i32 %28, 1048576
  %93 = shl nuw nsw i32 %29, 2
  %94 = add nuw nsw i32 %93, 212992
  %95 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %94, i32 undef)  ; BufferLoad(srv,index,wot)
  %96 = extractvalue %dx.types.ResRet.i32 %95, 0
  %97 = icmp eq i32 %67, 2
  %98 = icmp ne i32 %96, 0
  %99 = and i1 %97, %98
  %100 = icmp ne i32 %92, 0
  %101 = or i1 %100, %99
  %102 = and i1 %90, %101
  br i1 %102, label %103, label %1273, !dx.controlflow.hints !36

; <label>:103                                     ; preds = %83
  %104 = add i32 %91, %85
  %105 = shl i32 %104, 2
  %106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %105, i32 undef)  ; BufferLoad(srv,index,wot)
  %107 = extractvalue %dx.types.ResRet.i32 %106, 0
  %108 = shl i32 %107, 5
  %109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %108, i32 undef)  ; BufferLoad(srv,index,wot)
  %110 = extractvalue %dx.types.ResRet.i32 %109, 0
  %111 = extractvalue %dx.types.ResRet.i32 %109, 1
  %112 = extractvalue %dx.types.ResRet.i32 %109, 2
  %113 = extractvalue %dx.types.ResRet.i32 %109, 3
  %114 = or i32 %108, 16
  %115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %114, i32 undef)  ; BufferLoad(srv,index,wot)
  %116 = extractvalue %dx.types.ResRet.i32 %115, 0
  %117 = extractvalue %dx.types.ResRet.i32 %115, 1
  %118 = extractvalue %dx.types.ResRet.i32 %115, 2
  %119 = bitcast i32 %117 to float
  %120 = bitcast i32 %118 to float
  br i1 %97, label %121, label %201, !dx.controlflow.hints !37

; <label>:121                                     ; preds = %103
  %122 = shl nsw i32 %69, 5
  %123 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %122, i32 undef)  ; BufferLoad(srv,index,wot)
  %124 = extractvalue %dx.types.ResRet.f32 %123, 0
  %125 = extractvalue %dx.types.ResRet.f32 %123, 1
  %126 = extractvalue %dx.types.ResRet.f32 %123, 2
  %127 = or i32 %122, 16
  %128 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %127, i32 undef)  ; BufferLoad(srv,index,wot)
  %129 = extractvalue %dx.types.ResRet.f32 %128, 0
  %130 = extractvalue %dx.types.ResRet.f32 %128, 1
  %131 = extractvalue %dx.types.ResRet.f32 %128, 2
  %132 = mul i32 %70, 24
  %133 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %132, i32 undef)  ; BufferLoad(srv,index,wot)
  %134 = extractvalue %dx.types.ResRet.f32 %133, 0
  %135 = extractvalue %dx.types.ResRet.f32 %133, 1
  %136 = extractvalue %dx.types.ResRet.f32 %133, 2
  %137 = add i32 %132, 12
  %138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %137, i32 undef)  ; BufferLoad(srv,index,wot)
  %139 = extractvalue %dx.types.ResRet.i32 %138, 0
  %140 = extractvalue %dx.types.ResRet.i32 %138, 1
  %141 = add i32 %132, 20
  %142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %141, i32 undef)  ; BufferLoad(srv,index,wot)
  %143 = extractvalue %dx.types.ResRet.i32 %142, 0
  %144 = and i32 %139, 65535
  %145 = uitofp i32 %144 to float
  %146 = lshr i32 %139, 16
  %147 = uitofp i32 %146 to float
  %148 = and i32 %140, 65535
  %149 = uitofp i32 %148 to float
  %150 = lshr i32 %140, 16
  %151 = uitofp i32 %150 to float
  %152 = fmul fast float %145, 0x3F00001000000000
  %153 = fmul fast float %147, 0x3F00001000000000
  %154 = fmul fast float %149, 0x3F00001000000000
  %155 = fmul fast float %151, 0x3F00001000000000
  %156 = fadd fast float %152, -1.000000e+00
  %157 = fadd fast float %153, -1.000000e+00
  %158 = fadd fast float %154, -1.000000e+00
  %159 = fadd fast float %155, -1.000000e+00
  %160 = and i32 %143, 65535
  %161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %160)  ; LegacyF16ToF32(value)
  %162 = fmul fast float %147, 0x3F10001000000000
  %163 = fadd fast float %162, -2.000000e+00
  %164 = fmul fast float %163, %157
  %165 = fsub fast float 1.000000e+00, %164
  %166 = fmul fast float %149, 0x3F10001000000000
  %167 = fadd fast float %166, -2.000000e+00
  %168 = fmul fast float %167, %158
  %169 = fsub fast float %165, %168
  %170 = fmul fast float %145, 0x3F10001000000000
  %171 = fadd fast float %170, -2.000000e+00
  %172 = fmul fast float %171, %157
  %173 = fmul fast float %167, %159
  %174 = fsub fast float %172, %173
  %175 = fmul fast float %171, %158
  %176 = fmul fast float %163, %159
  %177 = fadd fast float %175, %176
  %178 = fadd fast float %172, %173
  %179 = fmul fast float %171, %156
  %180 = fsub fast float 1.000000e+00, %179
  %181 = fsub fast float %180, %168
  %182 = fmul fast float %163, %158
  %183 = fmul fast float %171, %159
  %184 = fsub fast float %182, %183
  %185 = fsub fast float %175, %176
  %186 = fadd fast float %182, %183
  %187 = fsub fast float %180, %164
  %188 = fmul fast float %169, %161
  %189 = fmul fast float %178, %161
  %190 = fmul fast float %185, %161
  %191 = fmul fast float %174, %161
  %192 = fmul fast float %181, %161
  %193 = fmul fast float %186, %161
  %194 = fmul fast float %177, %161
  %195 = fmul fast float %184, %161
  %196 = fmul fast float %187, %161
  %197 = fmul fast float %161, %161
  %198 = fdiv fast float 1.000000e+00, %197
  %199 = call float @dx.op.binary.f32(i32 35, float %130, float %131), !dx.precise !38  ; FMax(a,b)
  %200 = call float @dx.op.binary.f32(i32 35, float %129, float %199), !dx.precise !38  ; FMax(a,b)
  br label %422

; <label>:201                                     ; preds = %103
  %202 = icmp eq i32 %67, 0
  br i1 %202, label %203, label %325, !dx.controlflow.hints !39

; <label>:203                                     ; preds = %201
  %204 = and i32 %66, 1
  %205 = icmp eq i32 %204, 0
  %206 = shl i32 %70, 6
  %207 = add i32 %206, %30
  %208 = or i32 %207, 16
  %209 = or i32 %207, 32
  %210 = or i32 %207, 48
  br i1 %205, label %229, label %211, !dx.controlflow.hints !40

; <label>:211                                     ; preds = %203
  %212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.i32 %212, 3
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = extractvalue %dx.types.ResRet.i32 %214, 1
  %217 = extractvalue %dx.types.ResRet.i32 %214, 2
  %218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %219 = extractvalue %dx.types.ResRet.i32 %218, 0
  %220 = extractvalue %dx.types.ResRet.i32 %218, 1
  %221 = extractvalue %dx.types.ResRet.i32 %218, 2
  %222 = bitcast i32 %213 to float
  %223 = bitcast i32 %215 to float
  %224 = bitcast i32 %216 to float
  %225 = bitcast i32 %217 to float
  %226 = bitcast i32 %219 to float
  %227 = bitcast i32 %220 to float
  %228 = bitcast i32 %221 to float
  br label %422

; <label>:229                                     ; preds = %203
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = extractvalue %dx.types.ResRet.i32 %230, 1
  %233 = extractvalue %dx.types.ResRet.i32 %230, 2
  %234 = extractvalue %dx.types.ResRet.i32 %230, 3
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = extractvalue %dx.types.ResRet.i32 %235, 1
  %238 = extractvalue %dx.types.ResRet.i32 %235, 2
  %239 = extractvalue %dx.types.ResRet.i32 %235, 3
  %240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = extractvalue %dx.types.ResRet.i32 %240, 1
  %243 = extractvalue %dx.types.ResRet.i32 %240, 2
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = extractvalue %dx.types.ResRet.i32 %244, 1
  %247 = extractvalue %dx.types.ResRet.i32 %244, 2
  %248 = extractvalue %dx.types.ResRet.i32 %244, 3
  %249 = bitcast i32 %231 to float
  %250 = bitcast i32 %232 to float
  %251 = bitcast i32 %233 to float
  %252 = bitcast i32 %234 to float
  %253 = bitcast i32 %236 to float
  %254 = bitcast i32 %237 to float
  %255 = bitcast i32 %238 to float
  %256 = bitcast i32 %239 to float
  %257 = bitcast i32 %245 to float
  %258 = bitcast i32 %246 to float
  %259 = bitcast i32 %247 to float
  %260 = bitcast i32 %248 to float
  %261 = and i32 %241, 65535
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = lshr i32 %241, 16
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = and i32 %242, 65535
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = lshr i32 %242, 16
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = and i32 %243, 65535
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = lshr i32 %243, 16
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = fmul fast float %250, %250
  %274 = fmul fast float %273, 2.000000e+00
  %275 = fsub fast float 1.000000e+00, %274
  %276 = fmul fast float %251, %251
  %277 = fmul fast float %276, 2.000000e+00
  %278 = fsub fast float %275, %277
  %279 = fmul fast float %249, 2.000000e+00
  %280 = fmul fast float %279, %250
  %281 = fmul fast float %251, 2.000000e+00
  %282 = fmul fast float %281, %252
  %283 = fsub fast float %280, %282
  %284 = fmul fast float %251, %249
  %285 = fmul fast float %252, %250
  %286 = fadd fast float %284, %285
  %287 = fmul fast float %286, 2.000000e+00
  %288 = fmul fast float %250, %249
  %289 = fmul fast float %252, %251
  %290 = fadd fast float %288, %289
  %291 = fmul fast float %290, 2.000000e+00
  %292 = fmul fast float %249, %249
  %293 = fmul fast float %292, 2.000000e+00
  %294 = fsub fast float 1.000000e+00, %293
  %295 = fsub fast float %294, %277
  %296 = fmul fast float %250, 2.000000e+00
  %297 = fmul fast float %296, %251
  %298 = fmul fast float %279, %252
  %299 = fsub fast float %297, %298
  %300 = fmul fast float %279, %251
  %301 = fmul fast float %296, %252
  %302 = fsub fast float %300, %301
  %303 = fmul fast float %251, %250
  %304 = fmul fast float %252, %249
  %305 = fadd fast float %303, %304
  %306 = fmul fast float %305, 2.000000e+00
  %307 = fsub fast float %294, %274
  %308 = fmul fast float %278, %256
  %309 = fmul fast float %291, %256
  %310 = fmul fast float %302, %256
  %311 = fmul fast float %283, %256
  %312 = fmul fast float %295, %256
  %313 = fmul fast float %306, %256
  %314 = fmul fast float %287, %256
  %315 = fmul fast float %299, %256
  %316 = fmul fast float %307, %256
  %317 = fmul fast float %256, %256
  %318 = fdiv fast float 1.000000e+00, %317
  %319 = and i32 %66, 2
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %422, label %321, !dx.controlflow.hints !41

; <label>:321                                     ; preds = %229
  %322 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.i32 %322, 3
  %324 = and i32 %323, 1
  br label %422

; <label>:325                                     ; preds = %201
  %326 = icmp eq i32 %67, 3
  br i1 %326, label %327, label %346, !dx.controlflow.hints !42

; <label>:327                                     ; preds = %325
  %328 = mul i32 %84, 24
  %329 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.f32 %329, 0
  %331 = extractvalue %dx.types.ResRet.f32 %329, 1
  %332 = extractvalue %dx.types.ResRet.f32 %329, 2
  %333 = add i32 %328, 12
  %334 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.f32 %334, 0
  %336 = extractvalue %dx.types.ResRet.f32 %334, 1
  %337 = extractvalue %dx.types.ResRet.f32 %334, 2
  %338 = shl nuw nsw i32 %63, 7
  %339 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.f32 %339, 0
  %341 = extractvalue %dx.types.ResRet.f32 %339, 1
  %342 = extractvalue %dx.types.ResRet.f32 %339, 2
  %343 = or i32 %338, 12
  %344 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.f32 %344, 0
  br label %422

; <label>:346                                     ; preds = %325
  %347 = icmp eq i32 %67, 1
  br i1 %347, label %348, label %422, !dx.controlflow.hints !43

; <label>:348                                     ; preds = %346
  %349 = shl nuw nsw i32 %29, 6
  %350 = or i32 %30, 1572864
  %351 = add nuw nsw i32 %350, %349
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = extractvalue %dx.types.ResRet.i32 %352, 1
  %355 = extractvalue %dx.types.ResRet.i32 %352, 2
  %356 = extractvalue %dx.types.ResRet.i32 %352, 3
  %357 = or i32 %351, 16
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = extractvalue %dx.types.ResRet.i32 %358, 1
  %361 = extractvalue %dx.types.ResRet.i32 %358, 2
  %362 = bitcast i32 %353 to float
  %363 = bitcast i32 %354 to float
  %364 = bitcast i32 %355 to float
  %365 = bitcast i32 %356 to float
  %366 = bitcast i32 %359 to float
  %367 = bitcast i32 %360 to float
  %368 = bitcast i32 %361 to float
  %369 = mul i32 %84, 24
  %370 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.f32 %370, 0
  %372 = extractvalue %dx.types.ResRet.f32 %370, 1
  %373 = extractvalue %dx.types.ResRet.f32 %370, 2
  %374 = add i32 %369, 12
  %375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.f32 %375, 0
  %377 = extractvalue %dx.types.ResRet.f32 %375, 1
  %378 = extractvalue %dx.types.ResRet.f32 %375, 2
  %379 = fmul fast float %363, %363
  %380 = fmul fast float %379, 2.000000e+00
  %381 = fsub fast float 1.000000e+00, %380
  %382 = fmul fast float %364, %364
  %383 = fmul fast float %382, 2.000000e+00
  %384 = fsub fast float %381, %383
  %385 = fmul fast float %362, 2.000000e+00
  %386 = fmul fast float %385, %363
  %387 = fmul fast float %364, 2.000000e+00
  %388 = fmul fast float %387, %365
  %389 = fsub fast float %386, %388
  %390 = fmul fast float %364, %362
  %391 = fmul fast float %365, %363
  %392 = fadd fast float %390, %391
  %393 = fmul fast float %392, 2.000000e+00
  %394 = fmul fast float %363, %362
  %395 = fmul fast float %365, %364
  %396 = fadd fast float %394, %395
  %397 = fmul fast float %396, 2.000000e+00
  %398 = fmul fast float %362, %362
  %399 = fmul fast float %398, 2.000000e+00
  %400 = fsub fast float 1.000000e+00, %399
  %401 = fsub fast float %400, %383
  %402 = fmul fast float %363, 2.000000e+00
  %403 = fmul fast float %402, %364
  %404 = fmul fast float %385, %365
  %405 = fsub fast float %403, %404
  %406 = fmul fast float %385, %364
  %407 = fmul fast float %402, %365
  %408 = fsub fast float %406, %407
  %409 = fmul fast float %364, %363
  %410 = fmul fast float %365, %362
  %411 = fadd fast float %409, %410
  %412 = fmul fast float %411, 2.000000e+00
  %413 = fsub fast float %400, %380
  %414 = shl nuw nsw i32 %63, 7
  %415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.f32 %415, 0
  %417 = extractvalue %dx.types.ResRet.f32 %415, 1
  %418 = extractvalue %dx.types.ResRet.f32 %415, 2
  %419 = or i32 %414, 12
  %420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.f32 %420, 0
  br label %422

; <label>:422                                     ; preds = %348, %346, %327, %321, %229, %211, %121
  %423 = phi float [ %129, %121 ], [ %223, %211 ], [ %268, %321 ], [ %268, %229 ], [ %335, %327 ], [ %376, %348 ], [ 0.000000e+00, %346 ]
  %424 = phi float [ %130, %121 ], [ %224, %211 ], [ %270, %321 ], [ %270, %229 ], [ %336, %327 ], [ %377, %348 ], [ 0.000000e+00, %346 ]
  %425 = phi float [ %131, %121 ], [ %225, %211 ], [ %272, %321 ], [ %272, %229 ], [ %337, %327 ], [ %378, %348 ], [ 0.000000e+00, %346 ]
  %426 = phi float [ %124, %121 ], [ %226, %211 ], [ %262, %321 ], [ %262, %229 ], [ %330, %327 ], [ %371, %348 ], [ 0.000000e+00, %346 ]
  %427 = phi float [ %125, %121 ], [ %227, %211 ], [ %264, %321 ], [ %264, %229 ], [ %331, %327 ], [ %372, %348 ], [ 0.000000e+00, %346 ]
  %428 = phi float [ %126, %121 ], [ %228, %211 ], [ %266, %321 ], [ %266, %229 ], [ %332, %327 ], [ %373, %348 ], [ 0.000000e+00, %346 ]
  %429 = phi float [ %188, %121 ], [ 1.000000e+00, %211 ], [ %308, %321 ], [ %308, %229 ], [ 1.000000e+00, %327 ], [ %384, %348 ], [ 0.000000e+00, %346 ]
  %430 = phi float [ %191, %121 ], [ 0.000000e+00, %211 ], [ %311, %321 ], [ %311, %229 ], [ 0.000000e+00, %327 ], [ %389, %348 ], [ 0.000000e+00, %346 ]
  %431 = phi float [ %194, %121 ], [ 0.000000e+00, %211 ], [ %314, %321 ], [ %314, %229 ], [ 0.000000e+00, %327 ], [ %393, %348 ], [ 0.000000e+00, %346 ]
  %432 = phi float [ %134, %121 ], [ 0.000000e+00, %211 ], [ %253, %321 ], [ %253, %229 ], [ 0.000000e+00, %327 ], [ %366, %348 ], [ 0.000000e+00, %346 ]
  %433 = phi float [ %189, %121 ], [ 0.000000e+00, %211 ], [ %309, %321 ], [ %309, %229 ], [ 0.000000e+00, %327 ], [ %397, %348 ], [ 0.000000e+00, %346 ]
  %434 = phi float [ %192, %121 ], [ 1.000000e+00, %211 ], [ %312, %321 ], [ %312, %229 ], [ 1.000000e+00, %327 ], [ %401, %348 ], [ 0.000000e+00, %346 ]
  %435 = phi float [ %195, %121 ], [ 0.000000e+00, %211 ], [ %315, %321 ], [ %315, %229 ], [ 0.000000e+00, %327 ], [ %405, %348 ], [ 0.000000e+00, %346 ]
  %436 = phi float [ %135, %121 ], [ 0.000000e+00, %211 ], [ %254, %321 ], [ %254, %229 ], [ 0.000000e+00, %327 ], [ %367, %348 ], [ 0.000000e+00, %346 ]
  %437 = phi float [ %190, %121 ], [ 0.000000e+00, %211 ], [ %310, %321 ], [ %310, %229 ], [ 0.000000e+00, %327 ], [ %408, %348 ], [ 0.000000e+00, %346 ]
  %438 = phi float [ %193, %121 ], [ 0.000000e+00, %211 ], [ %313, %321 ], [ %313, %229 ], [ 0.000000e+00, %327 ], [ %412, %348 ], [ 0.000000e+00, %346 ]
  %439 = phi float [ %196, %121 ], [ 1.000000e+00, %211 ], [ %316, %321 ], [ %316, %229 ], [ 1.000000e+00, %327 ], [ %413, %348 ], [ 0.000000e+00, %346 ]
  %440 = phi float [ %136, %121 ], [ 0.000000e+00, %211 ], [ %255, %321 ], [ %255, %229 ], [ 0.000000e+00, %327 ], [ %368, %348 ], [ 0.000000e+00, %346 ]
  %441 = phi float [ 1.000000e+00, %121 ], [ 1.000000e+00, %211 ], [ 1.000000e+00, %321 ], [ 1.000000e+00, %229 ], [ 1.000000e+00, %327 ], [ 1.000000e+00, %348 ], [ 0.000000e+00, %346 ]
  %442 = phi float [ %198, %121 ], [ 1.000000e+00, %211 ], [ %318, %321 ], [ %318, %229 ], [ 1.000000e+00, %327 ], [ 1.000000e+00, %348 ], [ 0.000000e+00, %346 ]
  %443 = phi float [ %124, %121 ], [ 0.000000e+00, %211 ], [ %257, %321 ], [ %257, %229 ], [ %340, %327 ], [ %416, %348 ], [ 0.000000e+00, %346 ]
  %444 = phi float [ %125, %121 ], [ 0.000000e+00, %211 ], [ %258, %321 ], [ %258, %229 ], [ %341, %327 ], [ %417, %348 ], [ 0.000000e+00, %346 ]
  %445 = phi float [ %126, %121 ], [ 0.000000e+00, %211 ], [ %259, %321 ], [ %259, %229 ], [ %342, %327 ], [ %418, %348 ], [ 0.000000e+00, %346 ]
  %446 = phi float [ %200, %121 ], [ %222, %211 ], [ %260, %321 ], [ %260, %229 ], [ %345, %327 ], [ %421, %348 ], [ 0.000000e+00, %346 ]
  %447 = phi i32 [ 1, %121 ], [ 0, %211 ], [ %324, %321 ], [ 1, %229 ], [ 1, %327 ], [ 1, %348 ], [ 1, %346 ]
  %448 = shl nuw nsw i32 %71, 6
  %449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.i32 %449, 0
  %451 = extractvalue %dx.types.ResRet.i32 %449, 1
  %452 = extractvalue %dx.types.ResRet.i32 %449, 3
  %453 = bitcast i32 %450 to float
  %454 = bitcast i32 %451 to float
  %455 = bitcast i32 %452 to float
  %456 = or i32 %448, 16
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = extractvalue %dx.types.ResRet.i32 %457, 1
  %460 = extractvalue %dx.types.ResRet.i32 %457, 3
  %461 = bitcast i32 %458 to float
  %462 = bitcast i32 %459 to float
  %463 = bitcast i32 %460 to float
  %464 = or i32 %448, 32
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = extractvalue %dx.types.ResRet.i32 %465, 1
  %468 = extractvalue %dx.types.ResRet.i32 %465, 3
  %469 = bitcast i32 %466 to float
  %470 = bitcast i32 %467 to float
  %471 = bitcast i32 %468 to float
  %472 = or i32 %448, 48
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = extractvalue %dx.types.ResRet.i32 %473, 1
  %476 = extractvalue %dx.types.ResRet.i32 %473, 3
  %477 = bitcast i32 %474 to float
  %478 = bitcast i32 %475 to float
  %479 = bitcast i32 %476 to float
  %480 = shl nuw nsw i32 %71, 4
  %481 = or i32 %480, 4096
  %482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %481, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.i32 %482, 0
  %484 = extractvalue %dx.types.ResRet.i32 %482, 1
  %485 = extractvalue %dx.types.ResRet.i32 %482, 2
  %486 = extractvalue %dx.types.ResRet.i32 %482, 3
  %487 = icmp eq i32 %486, 1
  %488 = bitcast i32 %483 to float
  %489 = bitcast i32 %484 to float
  %490 = bitcast i32 %485 to float
  %491 = add nuw nsw i32 %480, 5120
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = extractvalue %dx.types.ResRet.i32 %492, 1
  %495 = bitcast i32 %493 to float
  %496 = bitcast i32 %494 to float
  %497 = bitcast float %432 to i32
  %498 = bitcast float %436 to i32
  %499 = bitcast float %440 to i32
  %500 = select i1 %487, i32 0, i32 %483
  %501 = select i1 %487, i32 0, i32 %484
  %502 = select i1 %487, i32 0, i32 %485
  %503 = sub i32 %497, %500
  %504 = sub i32 %498, %501
  %505 = sub i32 %499, %502
  %506 = sitofp i32 %503 to float
  %507 = sitofp i32 %504 to float
  %508 = sitofp i32 %505 to float
  %509 = fmul fast float %506, 0x3F30000000000000
  %510 = fmul fast float %507, 0x3F30000000000000
  %511 = fmul fast float %508, 0x3F30000000000000
  %512 = fmul fast float %453, %429
  %513 = call float @dx.op.tertiary.f32(i32 46, float %433, float %461, float %512)  ; FMad(a,b,c)
  %514 = call float @dx.op.tertiary.f32(i32 46, float %437, float %469, float %513)  ; FMad(a,b,c)
  %515 = fmul fast float %454, %429
  %516 = call float @dx.op.tertiary.f32(i32 46, float %433, float %462, float %515)  ; FMad(a,b,c)
  %517 = call float @dx.op.tertiary.f32(i32 46, float %437, float %470, float %516)  ; FMad(a,b,c)
  %518 = fmul fast float %455, %429
  %519 = call float @dx.op.tertiary.f32(i32 46, float %433, float %463, float %518)  ; FMad(a,b,c)
  %520 = call float @dx.op.tertiary.f32(i32 46, float %437, float %471, float %519)  ; FMad(a,b,c)
  %521 = fmul fast float %453, %430
  %522 = call float @dx.op.tertiary.f32(i32 46, float %434, float %461, float %521)  ; FMad(a,b,c)
  %523 = call float @dx.op.tertiary.f32(i32 46, float %438, float %469, float %522)  ; FMad(a,b,c)
  %524 = fmul fast float %454, %430
  %525 = call float @dx.op.tertiary.f32(i32 46, float %434, float %462, float %524)  ; FMad(a,b,c)
  %526 = call float @dx.op.tertiary.f32(i32 46, float %438, float %470, float %525)  ; FMad(a,b,c)
  %527 = fmul fast float %455, %430
  %528 = call float @dx.op.tertiary.f32(i32 46, float %434, float %463, float %527)  ; FMad(a,b,c)
  %529 = call float @dx.op.tertiary.f32(i32 46, float %438, float %471, float %528)  ; FMad(a,b,c)
  %530 = fmul fast float %453, %431
  %531 = call float @dx.op.tertiary.f32(i32 46, float %435, float %461, float %530)  ; FMad(a,b,c)
  %532 = call float @dx.op.tertiary.f32(i32 46, float %439, float %469, float %531)  ; FMad(a,b,c)
  %533 = fmul fast float %454, %431
  %534 = call float @dx.op.tertiary.f32(i32 46, float %435, float %462, float %533)  ; FMad(a,b,c)
  %535 = call float @dx.op.tertiary.f32(i32 46, float %439, float %470, float %534)  ; FMad(a,b,c)
  %536 = fmul fast float %455, %431
  %537 = call float @dx.op.tertiary.f32(i32 46, float %435, float %463, float %536)  ; FMad(a,b,c)
  %538 = call float @dx.op.tertiary.f32(i32 46, float %439, float %471, float %537)  ; FMad(a,b,c)
  %539 = fmul fast float %509, %453
  %540 = call float @dx.op.tertiary.f32(i32 46, float %510, float %461, float %539)  ; FMad(a,b,c)
  %541 = call float @dx.op.tertiary.f32(i32 46, float %511, float %469, float %540)  ; FMad(a,b,c)
  %542 = call float @dx.op.tertiary.f32(i32 46, float %441, float %477, float %541)  ; FMad(a,b,c)
  %543 = fmul fast float %509, %454
  %544 = call float @dx.op.tertiary.f32(i32 46, float %510, float %462, float %543)  ; FMad(a,b,c)
  %545 = call float @dx.op.tertiary.f32(i32 46, float %511, float %470, float %544)  ; FMad(a,b,c)
  %546 = call float @dx.op.tertiary.f32(i32 46, float %441, float %478, float %545)  ; FMad(a,b,c)
  %547 = fmul fast float %509, %455
  %548 = call float @dx.op.tertiary.f32(i32 46, float %510, float %463, float %547)  ; FMad(a,b,c)
  %549 = call float @dx.op.tertiary.f32(i32 46, float %511, float %471, float %548)  ; FMad(a,b,c)
  %550 = call float @dx.op.tertiary.f32(i32 46, float %441, float %479, float %549)  ; FMad(a,b,c)
  br i1 %99, label %551, label %592, !dx.controlflow.hints !44

; <label>:551                                     ; preds = %422
  %552 = sub i32 0, %500
  %553 = sub i32 0, %501
  %554 = sub i32 0, %502
  %555 = sitofp i32 %552 to float
  %556 = sitofp i32 %553 to float
  %557 = sitofp i32 %554 to float
  %558 = fmul fast float %555, 0x3F30000000000000
  %559 = fmul fast float %556, 0x3F30000000000000
  %560 = fmul fast float %557, 0x3F30000000000000
  %561 = fmul fast float %558, %453
  %562 = call float @dx.op.tertiary.f32(i32 46, float %559, float %461, float %561)  ; FMad(a,b,c)
  %563 = call float @dx.op.tertiary.f32(i32 46, float %560, float %469, float %562)  ; FMad(a,b,c)
  %564 = fadd fast float %563, %477
  %565 = fmul fast float %558, %454
  %566 = call float @dx.op.tertiary.f32(i32 46, float %559, float %462, float %565)  ; FMad(a,b,c)
  %567 = call float @dx.op.tertiary.f32(i32 46, float %560, float %470, float %566)  ; FMad(a,b,c)
  %568 = fadd fast float %567, %478
  %569 = fmul fast float %558, %455
  %570 = call float @dx.op.tertiary.f32(i32 46, float %559, float %463, float %569)  ; FMad(a,b,c)
  %571 = call float @dx.op.tertiary.f32(i32 46, float %560, float %471, float %570)  ; FMad(a,b,c)
  %572 = fadd fast float %571, %479
  %573 = mul i32 %91, 6
  %574 = add i32 %573, 2
  %575 = add i32 %574, %96
  %576 = shl i32 %575, 2
  %577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %576, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.i32 %577, 0
  %579 = extractvalue %dx.types.ResRet.i32 %577, 1
  %580 = extractvalue %dx.types.ResRet.i32 %577, 2
  %581 = bitcast i32 %578 to float
  %582 = bitcast i32 %579 to float
  %583 = bitcast i32 %580 to float
  %584 = add i32 %576, 12
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %584, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = extractvalue %dx.types.ResRet.i32 %585, 1
  %588 = extractvalue %dx.types.ResRet.i32 %585, 2
  %589 = bitcast i32 %586 to float
  %590 = bitcast i32 %587 to float
  %591 = bitcast i32 %588 to float
  br label %742

; <label>:592                                     ; preds = %422
  %593 = icmp eq i32 %447, 0
  br i1 %593, label %742, label %594, !dx.controlflow.hints !45

; <label>:594                                     ; preds = %592
  %595 = and i32 %110, 2097151
  %596 = uitofp i32 %595 to float
  %597 = lshr i32 %110, 21
  %598 = shl i32 %111, 11
  %599 = and i32 %598, 2095104
  %600 = or i32 %599, %597
  %601 = uitofp i32 %600 to float
  %602 = lshr i32 %111, 10
  %603 = and i32 %602, 2097151
  %604 = uitofp i32 %603 to float
  br i1 %32, label %615, label %605, !dx.controlflow.hints !46

; <label>:605                                     ; preds = %594
  %606 = fdiv float %596, 2.097151e+06
  %607 = fdiv float %601, 2.097151e+06
  %608 = fdiv float %604, 2.097151e+06
  %609 = fmul float %606, 2.000000e+00
  %610 = fmul float %607, 2.000000e+00
  %611 = fmul float %608, 2.000000e+00
  %612 = fadd float %609, -1.000000e+00
  %613 = fadd float %610, -1.000000e+00
  %614 = fadd float %611, -1.000000e+00
  br label %615

; <label>:615                                     ; preds = %605, %594
  %616 = phi float [ %612, %605 ], [ %596, %594 ]
  %617 = phi float [ %613, %605 ], [ %601, %594 ]
  %618 = phi float [ %614, %605 ], [ %604, %594 ]
  %619 = fmul float %446, %618
  %620 = fadd float %445, %619
  %621 = fmul float %446, %617
  %622 = fadd float %444, %621
  %623 = fmul float %446, %616
  %624 = fadd float %443, %623
  %625 = and i32 %112, 2097151
  %626 = uitofp i32 %625 to float
  %627 = lshr i32 %112, 21
  %628 = shl i32 %113, 11
  %629 = and i32 %628, 2095104
  %630 = or i32 %629, %627
  %631 = uitofp i32 %630 to float
  %632 = lshr i32 %113, 10
  %633 = and i32 %632, 2097151
  %634 = uitofp i32 %633 to float
  br i1 %32, label %645, label %635, !dx.controlflow.hints !46

; <label>:635                                     ; preds = %615
  %636 = fdiv float %626, 2.097151e+06
  %637 = fdiv float %631, 2.097151e+06
  %638 = fdiv float %634, 2.097151e+06
  %639 = fmul float %636, 2.000000e+00
  %640 = fmul float %637, 2.000000e+00
  %641 = fmul float %638, 2.000000e+00
  %642 = fadd float %639, -1.000000e+00
  %643 = fadd float %640, -1.000000e+00
  %644 = fadd float %641, -1.000000e+00
  br label %645

; <label>:645                                     ; preds = %635, %615
  %646 = phi float [ %642, %635 ], [ %626, %615 ]
  %647 = phi float [ %643, %635 ], [ %631, %615 ]
  %648 = phi float [ %644, %635 ], [ %634, %615 ]
  %649 = fmul float %446, %648
  %650 = fadd float %445, %649
  %651 = fmul float %446, %647
  %652 = fadd float %444, %651
  %653 = fmul float %446, %646
  %654 = fadd float %443, %653
  %655 = fadd fast float %654, %624
  %656 = fadd fast float %652, %622
  %657 = fadd fast float %650, %620
  %658 = fmul fast float %655, 5.000000e-01
  %659 = fmul fast float %656, 5.000000e-01
  %660 = fmul fast float %657, 5.000000e-01
  %661 = fsub fast float %646, %616
  %662 = fsub fast float %647, %617
  %663 = fsub fast float %648, %618
  %664 = fmul fast float %446, 5.000000e-01
  %665 = fmul fast float %664, %661
  %666 = fmul fast float %664, %662
  %667 = fmul fast float %664, %663
  %668 = and i32 %116, 1023
  %669 = uitofp i32 %668 to float
  %670 = lshr i32 %116, 10
  %671 = and i32 %670, 1023
  %672 = uitofp i32 %671 to float
  %673 = lshr i32 %116, 20
  %674 = and i32 %673, 1023
  %675 = uitofp i32 %674 to float
  %676 = fmul fast float %669, 0x3F60040100000000
  %677 = fmul fast float %672, 0x3F60040100000000
  %678 = fmul fast float %675, 0x3F60040100000000
  %679 = fadd fast float %676, -1.000000e+00
  %680 = fadd fast float %677, -1.000000e+00
  %681 = fadd fast float %678, -1.000000e+00
  %682 = fmul fast float %679, %119
  %683 = fmul fast float %680, %119
  %684 = fmul fast float %681, %119
  %685 = and i32 %65, 1
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %742, label %687, !dx.controlflow.hints !47

; <label>:687                                     ; preds = %645
  %688 = fcmp fast ugt float %120, 0.000000e+00
  br i1 %688, label %689, label %739, !dx.controlflow.hints !48

; <label>:689                                     ; preds = %687
  br i1 %487, label %690, label %703, !dx.controlflow.hints !49

; <label>:690                                     ; preds = %689
  %691 = fsub fast float -0.000000e+00, %488
  %692 = fsub fast float -0.000000e+00, %489
  %693 = fsub fast float -0.000000e+00, %490
  %694 = fmul fast float %429, %691
  %695 = call float @dx.op.tertiary.f32(i32 46, float %433, float %692, float %694)  ; FMad(a,b,c)
  %696 = call float @dx.op.tertiary.f32(i32 46, float %437, float %693, float %695)  ; FMad(a,b,c)
  %697 = fmul fast float %430, %691
  %698 = call float @dx.op.tertiary.f32(i32 46, float %434, float %692, float %697)  ; FMad(a,b,c)
  %699 = call float @dx.op.tertiary.f32(i32 46, float %438, float %693, float %698)  ; FMad(a,b,c)
  %700 = fmul fast float %431, %691
  %701 = call float @dx.op.tertiary.f32(i32 46, float %435, float %692, float %700)  ; FMad(a,b,c)
  %702 = call float @dx.op.tertiary.f32(i32 46, float %439, float %693, float %701)  ; FMad(a,b,c)
  br label %728

; <label>:703                                     ; preds = %689
  %704 = fsub fast float -0.000000e+00, %509
  %705 = fsub fast float -0.000000e+00, %510
  %706 = fsub fast float -0.000000e+00, %511
  %707 = fmul fast float %429, %704
  %708 = call float @dx.op.tertiary.f32(i32 46, float %433, float %705, float %707)  ; FMad(a,b,c)
  %709 = call float @dx.op.tertiary.f32(i32 46, float %437, float %706, float %708)  ; FMad(a,b,c)
  %710 = fmul fast float %430, %704
  %711 = call float @dx.op.tertiary.f32(i32 46, float %434, float %705, float %710)  ; FMad(a,b,c)
  %712 = call float @dx.op.tertiary.f32(i32 46, float %438, float %706, float %711)  ; FMad(a,b,c)
  %713 = fmul fast float %431, %704
  %714 = call float @dx.op.tertiary.f32(i32 46, float %435, float %705, float %713)  ; FMad(a,b,c)
  %715 = call float @dx.op.tertiary.f32(i32 46, float %439, float %706, float %714)  ; FMad(a,b,c)
  %716 = fmul fast float %709, %442
  %717 = fmul fast float %712, %442
  %718 = fmul fast float %715, %442
  %719 = fsub fast float -0.000000e+00, %682
  %720 = fsub fast float %719, %658
  %721 = fadd fast float %720, %716
  %722 = fsub fast float -0.000000e+00, %683
  %723 = fsub fast float %722, %659
  %724 = fadd fast float %723, %717
  %725 = fsub fast float -0.000000e+00, %684
  %726 = fsub fast float %725, %660
  %727 = fadd fast float %726, %718
  br label %728

; <label>:728                                     ; preds = %703, %690
  %729 = phi float [ %696, %690 ], [ %721, %703 ]
  %730 = phi float [ %699, %690 ], [ %724, %703 ]
  %731 = phi float [ %702, %690 ], [ %727, %703 ]
  %732 = call float @dx.op.dot3.f32(i32 55, float %729, float %730, float %731, float %729, float %730, float %731)  ; Dot3(ax,ay,az,bx,by,bz)
  %733 = call float @dx.op.unary.f32(i32 25, float %732)  ; Rsqrt(value)
  %734 = fmul fast float %733, %729
  %735 = fmul fast float %733, %730
  %736 = fmul fast float %733, %731
  %737 = call float @dx.op.dot3.f32(i32 55, float %734, float %735, float %736, float %679, float %680, float %681)  ; Dot3(ax,ay,az,bx,by,bz)
  %738 = fcmp fast olt float %737, %120
  br label %739

; <label>:739                                     ; preds = %728, %687
  %740 = phi i1 [ %738, %728 ], [ true, %687 ]
  %741 = zext i1 %740 to i32
  br label %742

; <label>:742                                     ; preds = %739, %645, %592, %551
  %743 = phi i32 [ 1, %551 ], [ %741, %739 ], [ 1, %645 ], [ 1, %592 ]
  %744 = phi float [ %581, %551 ], [ %658, %739 ], [ %658, %645 ], [ %426, %592 ]
  %745 = phi float [ %582, %551 ], [ %659, %739 ], [ %659, %645 ], [ %427, %592 ]
  %746 = phi float [ %583, %551 ], [ %660, %739 ], [ %660, %645 ], [ %428, %592 ]
  %747 = phi float [ %589, %551 ], [ %665, %739 ], [ %665, %645 ], [ %423, %592 ]
  %748 = phi float [ %590, %551 ], [ %666, %739 ], [ %666, %645 ], [ %424, %592 ]
  %749 = phi float [ %591, %551 ], [ %667, %739 ], [ %667, %645 ], [ %425, %592 ]
  %750 = phi float [ %453, %551 ], [ %514, %739 ], [ %514, %645 ], [ %514, %592 ]
  %751 = phi float [ %461, %551 ], [ %523, %739 ], [ %523, %645 ], [ %523, %592 ]
  %752 = phi float [ %469, %551 ], [ %532, %739 ], [ %532, %645 ], [ %532, %592 ]
  %753 = phi float [ %564, %551 ], [ %542, %739 ], [ %542, %645 ], [ %542, %592 ]
  %754 = phi float [ %454, %551 ], [ %517, %739 ], [ %517, %645 ], [ %517, %592 ]
  %755 = phi float [ %462, %551 ], [ %526, %739 ], [ %526, %645 ], [ %526, %592 ]
  %756 = phi float [ %470, %551 ], [ %535, %739 ], [ %535, %645 ], [ %535, %592 ]
  %757 = phi float [ %568, %551 ], [ %546, %739 ], [ %546, %645 ], [ %546, %592 ]
  %758 = phi float [ %455, %551 ], [ %520, %739 ], [ %520, %645 ], [ %520, %592 ]
  %759 = phi float [ %463, %551 ], [ %529, %739 ], [ %529, %645 ], [ %529, %592 ]
  %760 = phi float [ %471, %551 ], [ %538, %739 ], [ %538, %645 ], [ %538, %592 ]
  %761 = phi float [ %572, %551 ], [ %550, %739 ], [ %550, %645 ], [ %550, %592 ]
  %762 = call i1 @dx.op.isSpecialFloat.f32(i32 9, float %744)  ; IsInf(value)
  %763 = call i1 @dx.op.isSpecialFloat.f32(i32 9, float %745)  ; IsInf(value)
  %764 = call i1 @dx.op.isSpecialFloat.f32(i32 9, float %746)  ; IsInf(value)
  %765 = or i1 %762, %763
  %766 = or i1 %765, %764
  %767 = call i1 @dx.op.isSpecialFloat.f32(i32 9, float %747)  ; IsInf(value)
  %768 = call i1 @dx.op.isSpecialFloat.f32(i32 9, float %748)  ; IsInf(value)
  %769 = call i1 @dx.op.isSpecialFloat.f32(i32 9, float %749)  ; IsInf(value)
  %770 = or i1 %767, %768
  %771 = or i1 %770, %769
  %772 = or i1 %766, %771
  br i1 %772, label %1273, label %773, !dx.controlflow.hints !50

; <label>:773                                     ; preds = %742
  %774 = and i32 %65, 32
  %775 = icmp ne i32 %774, 0
  %776 = or i1 %775, %99
  %777 = icmp ne i32 %743, 0
  %778 = and i1 %776, %777
  br i1 %778, label %779, label %1273, !dx.controlflow.hints !51

; <label>:779                                     ; preds = %773
  %780 = and i32 %71, 254
  %781 = icmp eq i32 %780, 62
  %782 = fsub fast float %744, %747
  %783 = fsub fast float %745, %748
  %784 = fsub fast float %746, %749
  %785 = fmul fast float %750, %782
  %786 = call float @dx.op.tertiary.f32(i32 46, float %783, float %751, float %785)  ; FMad(a,b,c)
  %787 = call float @dx.op.tertiary.f32(i32 46, float %784, float %752, float %786)  ; FMad(a,b,c)
  %788 = fadd fast float %787, %753
  %789 = fmul fast float %754, %782
  %790 = call float @dx.op.tertiary.f32(i32 46, float %783, float %755, float %789)  ; FMad(a,b,c)
  %791 = call float @dx.op.tertiary.f32(i32 46, float %784, float %756, float %790)  ; FMad(a,b,c)
  %792 = fadd fast float %791, %757
  %793 = fmul fast float %758, %782
  %794 = call float @dx.op.tertiary.f32(i32 46, float %783, float %759, float %793)  ; FMad(a,b,c)
  %795 = call float @dx.op.tertiary.f32(i32 46, float %784, float %760, float %794)  ; FMad(a,b,c)
  %796 = fadd fast float %795, %761
  %797 = fmul fast float %747, 2.000000e+00
  %798 = fmul fast float %748, 2.000000e+00
  %799 = fmul fast float %749, 2.000000e+00
  %800 = fmul fast float %750, %797
  %801 = fmul fast float %754, %797
  %802 = fmul fast float %758, %797
  %803 = fmul fast float %751, %798
  %804 = fmul fast float %755, %798
  %805 = fmul fast float %759, %798
  %806 = fcmp fast oeq float %760, 0.000000e+00
  br i1 %806, label %1269, label %807, !dx.controlflow.hints !52

; <label>:807                                     ; preds = %779
  %808 = fmul fast float %760, %799
  %809 = fmul fast float %756, %799
  %810 = fmul fast float %752, %799
  %811 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 0
  %812 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 0
  %813 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 0
  store float 0.000000e+00, float* %811, align 4
  store float 0.000000e+00, float* %812, align 4
  store float 0.000000e+00, float* %813, align 4
  %814 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 1
  %815 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 1
  %816 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 1
  store float %800, float* %814, align 4
  store float %801, float* %815, align 4
  store float %802, float* %816, align 4
  %817 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 2
  %818 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 2
  %819 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 2
  store float %803, float* %817, align 4
  store float %804, float* %818, align 4
  store float %805, float* %819, align 4
  %820 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 3
  %821 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 3
  %822 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 3
  %823 = fsub fast float -0.000000e+00, %800
  %824 = fsub fast float -0.000000e+00, %801
  %825 = fsub fast float -0.000000e+00, %802
  store float %823, float* %820, align 4
  store float %824, float* %821, align 4
  store float %825, float* %822, align 4
  %826 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 4
  %827 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 4
  %828 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 4
  store float %810, float* %826, align 4
  store float %809, float* %827, align 4
  store float %808, float* %828, align 4
  %829 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 5
  %830 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 5
  %831 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 5
  store float %800, float* %829, align 4
  store float %801, float* %830, align 4
  store float %802, float* %831, align 4
  %832 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 6
  %833 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 6
  %834 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 6
  %835 = fsub fast float -0.000000e+00, %803
  %836 = fsub fast float -0.000000e+00, %804
  %837 = fsub fast float -0.000000e+00, %805
  store float %835, float* %832, align 4
  store float %836, float* %833, align 4
  store float %837, float* %834, align 4
  %838 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 7
  %839 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 7
  %840 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 7
  store float %823, float* %838, align 4
  store float %824, float* %839, align 4
  store float %825, float* %840, align 4
  %841 = fcmp fast olt float %796, 0.000000e+00
  %842 = zext i1 %841 to i32
  %843 = fadd fast float %796, %802
  %844 = fcmp fast olt float %843, 0.000000e+00
  %845 = select i1 %844, i32 2, i32 0
  %846 = or i32 %845, %842
  %847 = fadd fast float %843, %805
  %848 = fcmp fast olt float %847, 0.000000e+00
  %849 = select i1 %848, i32 4, i32 0
  %850 = or i32 %846, %849
  %851 = fsub fast float %847, %802
  %852 = fcmp fast olt float %851, 0.000000e+00
  %853 = select i1 %852, i32 8, i32 0
  %854 = or i32 %850, %853
  %855 = fadd fast float %851, %808
  %856 = fcmp fast olt float %855, 0.000000e+00
  %857 = select i1 %856, i32 16, i32 0
  %858 = or i32 %854, %857
  %859 = fadd fast float %855, %802
  %860 = fcmp fast olt float %859, 0.000000e+00
  %861 = select i1 %860, i32 32, i32 0
  %862 = or i32 %858, %861
  %863 = fsub fast float %859, %805
  %864 = fcmp fast olt float %863, 0.000000e+00
  %865 = select i1 %864, i32 64, i32 0
  %866 = or i32 %862, %865
  %867 = fsub fast float %863, %802
  %868 = fcmp fast olt float %867, 0.000000e+00
  %869 = select i1 %868, i32 128, i32 0
  %870 = or i32 %866, %869
  %871 = icmp eq i32 %870, 255
  br i1 %871, label %1269, label %872, !dx.controlflow.hints !53

; <label>:872                                     ; preds = %807
  %873 = icmp eq i32 %870, 0
  br i1 %873, label %874, label %1269, !dx.controlflow.hints !54

; <label>:874                                     ; preds = %872
  br label %875

; <label>:875                                     ; preds = %906, %874
  %876 = phi float [ %912, %906 ], [ 0.000000e+00, %874 ]
  %877 = phi float [ %910, %906 ], [ 0.000000e+00, %874 ]
  %878 = phi float [ %908, %906 ], [ 0.000000e+00, %874 ]
  %879 = phi float [ %900, %906 ], [ 9.999999e+06, %874 ]
  %880 = phi float [ %901, %906 ], [ 9.999999e+06, %874 ]
  %881 = phi float [ %902, %906 ], [ -9.999999e+06, %874 ]
  %882 = phi float [ %903, %906 ], [ -9.999999e+06, %874 ]
  %883 = phi float [ %891, %906 ], [ 9.999999e+06, %874 ]
  %884 = phi float [ %888, %906 ], [ %788, %874 ]
  %885 = phi float [ %889, %906 ], [ %792, %874 ]
  %886 = phi float [ %890, %906 ], [ %796, %874 ]
  %887 = phi i32 [ %904, %906 ], [ 0, %874 ]
  %888 = fadd fast float %878, %884
  %889 = fadd fast float %877, %885
  %890 = fadd fast float %876, %886
  %891 = call float @dx.op.binary.f32(i32 36, float %883, float %890)  ; FMin(a,b)
  %892 = fdiv fast float %888, %890
  %893 = fdiv fast float %889, %890
  %894 = fmul fast float %892, 5.000000e-01
  %895 = fmul fast float %893, 5.000000e-01
  %896 = fadd fast float %894, 5.000000e-01
  %897 = fsub fast float 5.000000e-01, %895
  %898 = call float @dx.op.unary.f32(i32 7, float %896)  ; Saturate(value)
  %899 = call float @dx.op.unary.f32(i32 7, float %897)  ; Saturate(value)
  %900 = call float @dx.op.binary.f32(i32 36, float %879, float %898)  ; FMin(a,b)
  %901 = call float @dx.op.binary.f32(i32 36, float %880, float %899)  ; FMin(a,b)
  %902 = call float @dx.op.binary.f32(i32 35, float %881, float %898)  ; FMax(a,b)
  %903 = call float @dx.op.binary.f32(i32 35, float %882, float %899)  ; FMax(a,b)
  %904 = add nuw nsw i32 %887, 1
  %905 = icmp eq i32 %904, 8
  br i1 %905, label %913, label %906

; <label>:906                                     ; preds = %875
  %907 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 %904
  %908 = load float, float* %907, align 4
  %909 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 %904
  %910 = load float, float* %909, align 4
  %911 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 %904
  %912 = load float, float* %911, align 4
  br label %875

; <label>:913                                     ; preds = %875
  %914 = fcmp fast ole float %902, 0.000000e+00
  %915 = fcmp fast oge float %900, 1.000000e+00
  %916 = or i1 %915, %914
  %917 = fcmp fast ole float %903, 0.000000e+00
  %918 = or i1 %916, %917
  %919 = fcmp fast oge float %901, 1.000000e+00
  %920 = or i1 %919, %918
  br i1 %920, label %1269, label %921, !dx.controlflow.hints !55

; <label>:921                                     ; preds = %913
  %922 = fmul fast float %900, %495
  %923 = fmul fast float %901, %496
  %924 = fmul fast float %902, %495
  %925 = fmul fast float %903, %496
  %926 = call float @dx.op.unary.f32(i32 26, float %922)  ; Round_ne(value)
  %927 = call float @dx.op.unary.f32(i32 26, float %923)  ; Round_ne(value)
  %928 = call float @dx.op.unary.f32(i32 26, float %924)  ; Round_ne(value)
  %929 = call float @dx.op.unary.f32(i32 26, float %925)  ; Round_ne(value)
  %930 = fcmp fast oeq float %926, %928
  %931 = fcmp fast oeq float %927, %929
  %932 = or i1 %930, %931
  br i1 %932, label %1269, label %933, !dx.controlflow.hints !56

; <label>:933                                     ; preds = %921
  %934 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %935 = extractvalue %dx.types.CBufRet.i32 %934, 0
  %936 = icmp ne i32 %935, 0
  %937 = and i32 %65, 2
  %938 = icmp ne i32 %937, 0
  %939 = and i1 %938, %936
  br i1 %939, label %940, label %1269, !dx.controlflow.hints !57

; <label>:940                                     ; preds = %933
  %941 = and i32 %935, 2
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %1095, label %943, !dx.controlflow.hints !58

; <label>:943                                     ; preds = %940
  %944 = fsub fast float %902, %900
  %945 = fsub fast float %903, %901
  %946 = fmul fast float %944, 6.400000e+01
  %947 = fmul fast float %945, 6.400000e+01
  %948 = call float @dx.op.unary.f32(i32 28, float %946)  ; Round_pi(value)
  %949 = call float @dx.op.unary.f32(i32 28, float %947)  ; Round_pi(value)
  %950 = call float @dx.op.binary.f32(i32 35, float %948, float %949)  ; FMax(a,b)
  %951 = call float @dx.op.unary.f32(i32 23, float %950)  ; Log(value)
  %952 = call float @dx.op.unary.f32(i32 28, float %951)  ; Round_pi(value)
  %953 = fptosi float %952 to i32
  %954 = call i32 @dx.op.binary.i32(i32 37, i32 %953, i32 0)  ; IMax(a,b)
  %955 = call i32 @dx.op.binary.i32(i32 38, i32 %954, i32 6)  ; IMin(a,b)
  %956 = and i32 %955, 31
  %957 = lshr i32 64, %956
  %958 = uitofp i32 %957 to float
  %959 = call float @dx.op.binary.f32(i32 35, float %958, float 1.000000e+00)  ; FMax(a,b)
  %960 = fdiv fast float 1.000000e+00, %959
  %961 = fmul fast float %959, %900
  %962 = fmul fast float %959, %901
  %963 = call float @dx.op.unary.f32(i32 27, float %961)  ; Round_ni(value)
  %964 = call float @dx.op.unary.f32(i32 27, float %962)  ; Round_ni(value)
  %965 = call float @dx.op.binary.f32(i32 35, float %963, float 0.000000e+00)  ; FMax(a,b)
  %966 = call float @dx.op.binary.f32(i32 35, float %964, float 0.000000e+00)  ; FMax(a,b)
  %967 = call float @dx.op.binary.f32(i32 36, float %965, float %959)  ; FMin(a,b)
  %968 = call float @dx.op.binary.f32(i32 36, float %966, float %959)  ; FMin(a,b)
  %969 = fmul fast float %959, %902
  %970 = fmul fast float %959, %903
  %971 = call float @dx.op.unary.f32(i32 28, float %969)  ; Round_pi(value)
  %972 = call float @dx.op.unary.f32(i32 28, float %970)  ; Round_pi(value)
  %973 = call float @dx.op.binary.f32(i32 35, float %971, float 0.000000e+00)  ; FMax(a,b)
  %974 = call float @dx.op.binary.f32(i32 35, float %972, float 0.000000e+00)  ; FMax(a,b)
  %975 = call float @dx.op.binary.f32(i32 36, float %973, float %959)  ; FMin(a,b)
  %976 = call float @dx.op.binary.f32(i32 36, float %974, float %959)  ; FMin(a,b)
  %977 = fadd fast float %967, 1.000000e+00
  %978 = fmul fast float %977, %960
  %979 = fmul fast float %960, 2.000000e+00
  %980 = fsub fast float %975, %967
  %981 = fsub fast float %976, %968
  %982 = fmul fast float %980, 5.000000e-01
  %983 = fmul fast float %981, 5.000000e-01
  %984 = call float @dx.op.unary.f32(i32 28, float %982)  ; Round_pi(value)
  %985 = call float @dx.op.unary.f32(i32 28, float %983)  ; Round_pi(value)
  %986 = fptoui float %984 to i32
  %987 = fptoui float %985 to i32
  %988 = shl i32 1, %956
  %989 = add i32 %988, -1
  %990 = lshr i32 %989, 6
  %991 = and i32 %990, 1
  %992 = sub nsw i32 0, %991
  %993 = icmp eq i32 %987, %992
  br i1 %993, label %1075, label %994

; <label>:994                                     ; preds = %943
  %995 = fadd fast float %968, 1.000000e+00
  %996 = fmul fast float %995, %960
  %997 = and i32 %990, 1
  %998 = add i32 %986, %997
  %999 = add i32 %987, %997
  br label %1000

; <label>:1000                                    ; preds = %1068, %994
  %1001 = phi i32 [ %1069, %1068 ], [ 1, %994 ]
  %1002 = phi float [ %1070, %1068 ], [ 0.000000e+00, %994 ]
  %1003 = phi float [ %1071, %1068 ], [ %996, %994 ]
  %1004 = phi i32 [ %1072, %1068 ], [ 0, %994 ]
  %1005 = sub nsw i32 0, %991
  %1006 = icmp eq i32 %986, %1005
  br i1 %1006, label %1068, label %1007

; <label>:1007                                    ; preds = %1000
  br label %1008

; <label>:1008                                    ; preds = %1008, %1007
  %1009 = phi i32 [ %1059, %1008 ], [ %1001, %1007 ]
  %1010 = phi float [ %1063, %1008 ], [ %1002, %1007 ]
  %1011 = phi float [ %1064, %1008 ], [ %978, %1007 ]
  %1012 = phi i32 [ %1065, %1008 ], [ 0, %1007 ]
  %1013 = sitofp i32 %955 to float
  %1014 = fmul fast float %960, 0xBFDFE00000000000
  %1015 = fadd fast float %1014, %1011
  %1016 = fmul fast float %960, 0x3FE0100000000000
  %1017 = fadd fast float %1016, %1003
  %1018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %1015, float %1017, float undef, float undef, i32 0, i32 0, i32 undef, float %1013)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1019 = extractvalue %dx.types.ResRet.f32 %1018, 0
  %1020 = fadd fast float %1016, %1011
  %1021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %1020, float %1017, float undef, float undef, i32 0, i32 0, i32 undef, float %1013)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1022 = extractvalue %dx.types.ResRet.f32 %1021, 0
  %1023 = fadd fast float %1014, %1003
  %1024 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %1020, float %1023, float undef, float undef, i32 0, i32 0, i32 undef, float %1013)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1025 = extractvalue %dx.types.ResRet.f32 %1024, 0
  %1026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %1015, float %1023, float undef, float undef, i32 0, i32 0, i32 undef, float %1013)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1027 = extractvalue %dx.types.ResRet.f32 %1026, 0
  %1028 = fcmp fast olt float %1019, -1.000000e+00
  %1029 = fcmp fast ogt float %1019, -1.000000e+00
  %1030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1031 = extractvalue %dx.types.CBufRet.f32 %1030, 1
  %1032 = select i1 %1029, float %1031, float 1.000000e+00
  %1033 = fadd fast float %1019, 1.000000e+00
  %1034 = fmul fast float %1032, %1033
  %1035 = call float @dx.op.unary.f32(i32 6, float %1034)  ; FAbs(value)
  %1036 = fcmp fast olt float %1022, -1.000000e+00
  %1037 = fcmp fast ogt float %1022, -1.000000e+00
  %1038 = select i1 %1037, float %1031, float 1.000000e+00
  %1039 = fadd fast float %1022, 1.000000e+00
  %1040 = fmul fast float %1038, %1039
  %1041 = call float @dx.op.unary.f32(i32 6, float %1040)  ; FAbs(value)
  %1042 = fcmp fast olt float %1025, -1.000000e+00
  %1043 = fcmp fast ogt float %1025, -1.000000e+00
  %1044 = select i1 %1043, float %1031, float 1.000000e+00
  %1045 = fadd fast float %1025, 1.000000e+00
  %1046 = fmul fast float %1044, %1045
  %1047 = call float @dx.op.unary.f32(i32 6, float %1046)  ; FAbs(value)
  %1048 = fcmp fast olt float %1027, -1.000000e+00
  %1049 = fcmp fast ogt float %1027, -1.000000e+00
  %1050 = select i1 %1049, float %1031, float 1.000000e+00
  %1051 = fadd fast float %1027, 1.000000e+00
  %1052 = fmul fast float %1050, %1051
  %1053 = call float @dx.op.unary.f32(i32 6, float %1052)  ; FAbs(value)
  %1054 = and i1 %1028, %1036
  %1055 = and i1 %1054, %1042
  %1056 = and i1 %1055, %1048
  %1057 = icmp ne i32 %1009, 0
  %1058 = and i1 %1057, %1056
  %1059 = zext i1 %1058 to i32
  %1060 = call float @dx.op.binary.f32(i32 35, float %1041, float %1047)  ; FMax(a,b)
  %1061 = call float @dx.op.binary.f32(i32 35, float %1035, float %1060)  ; FMax(a,b)
  %1062 = call float @dx.op.binary.f32(i32 35, float %1061, float %1053)  ; FMax(a,b)
  %1063 = call float @dx.op.binary.f32(i32 35, float %1062, float %1010)  ; FMax(a,b)
  %1064 = fadd fast float %1011, %979
  %1065 = add nuw i32 %1012, 1
  %1066 = icmp eq i32 %1065, %998
  br i1 %1066, label %1067, label %1008

; <label>:1067                                    ; preds = %1008
  br label %1068

; <label>:1068                                    ; preds = %1067, %1000
  %1069 = phi i32 [ %1001, %1000 ], [ %1059, %1067 ]
  %1070 = phi float [ %1002, %1000 ], [ %1063, %1067 ]
  %1071 = fadd fast float %1003, %979
  %1072 = add nuw i32 %1004, 1
  %1073 = icmp eq i32 %1072, %999
  br i1 %1073, label %1074, label %1000

; <label>:1074                                    ; preds = %1068
  br label %1075

; <label>:1075                                    ; preds = %1074, %943
  %1076 = phi i32 [ 1, %943 ], [ %1069, %1074 ]
  %1077 = phi float [ 0.000000e+00, %943 ], [ %1070, %1074 ]
  %1078 = icmp eq i32 %1076, 0
  %1079 = and i1 %781, %1078
  br i1 %1079, label %1092, label %1080, !dx.controlflow.hints !59

; <label>:1080                                    ; preds = %1075
  %1081 = fcmp fast une float %891, 0.000000e+00
  %1082 = bitcast float %891 to i32
  %1083 = and i32 %1082, 2139095040
  %1084 = add nsw i32 %1083, -1056964608
  %1085 = ashr exact i32 %1084, 23
  %1086 = add nsw i32 %1085, -10
  %1087 = sitofp i32 %1086 to float
  %1088 = select i1 %1081, float %1087, float -1.000000e+01
  %1089 = call float @dx.op.unary.f32(i32 21, float %1088)  ; Exp(value)
  %1090 = fsub fast float %891, %1089
  %1091 = fcmp fast ogt float %1077, %1090
  br label %1092

; <label>:1092                                    ; preds = %1080, %1075
  %1093 = phi i1 [ %1091, %1080 ], [ true, %1075 ]
  %1094 = zext i1 %1093 to i32
  br label %1095

; <label>:1095                                    ; preds = %1092, %940
  %1096 = phi i32 [ %1094, %1092 ], [ 1, %940 ]
  %1097 = and i32 %935, 1
  %1098 = icmp ne i32 %1097, 0
  %1099 = icmp ne i32 %1096, 0
  %1100 = and i1 %1099, %1098
  br i1 %1100, label %1101, label %1269, !dx.controlflow.hints !60

; <label>:1101                                    ; preds = %1095
  %1102 = extractvalue %dx.types.CBufRet.i32 %934, 3
  %1103 = extractvalue %dx.types.CBufRet.i32 %934, 1
  %1104 = extractvalue %dx.types.CBufRet.i32 %934, 2
  %1105 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1106 = extractvalue %dx.types.CBufRet.i32 %1105, 0
  %1107 = fsub fast float %902, %900
  %1108 = fsub fast float %903, %901
  %1109 = uitofp i32 %1103 to float
  %1110 = uitofp i32 %1104 to float
  %1111 = fmul fast float %1109, %1107
  %1112 = fmul fast float %1110, %1108
  %1113 = call float @dx.op.unary.f32(i32 28, float %1111)  ; Round_pi(value)
  %1114 = call float @dx.op.unary.f32(i32 28, float %1112)  ; Round_pi(value)
  %1115 = call float @dx.op.binary.f32(i32 35, float %1113, float %1114)  ; FMax(a,b)
  %1116 = call float @dx.op.unary.f32(i32 23, float %1115)  ; Log(value)
  %1117 = call float @dx.op.unary.f32(i32 28, float %1116)  ; Round_pi(value)
  %1118 = fptosi float %1117 to i32
  %1119 = sub nsw i32 %1118, %1106
  %1120 = call i32 @dx.op.binary.i32(i32 37, i32 %1119, i32 0)  ; IMax(a,b)
  %1121 = call i32 @dx.op.binary.i32(i32 38, i32 %1120, i32 %1102)  ; IMin(a,b)
  %1122 = and i32 %1121, 31
  %1123 = lshr i32 %1103, %1122
  %1124 = lshr i32 %1104, %1122
  %1125 = uitofp i32 %1123 to float
  %1126 = uitofp i32 %1124 to float
  %1127 = call float @dx.op.binary.f32(i32 35, float %1125, float 1.000000e+00)  ; FMax(a,b)
  %1128 = call float @dx.op.binary.f32(i32 35, float %1126, float 1.000000e+00)  ; FMax(a,b)
  %1129 = fdiv fast float 1.000000e+00, %1127
  %1130 = fdiv fast float 1.000000e+00, %1128
  %1131 = fmul fast float %1127, %900
  %1132 = fmul fast float %1128, %901
  %1133 = call float @dx.op.unary.f32(i32 27, float %1131)  ; Round_ni(value)
  %1134 = call float @dx.op.unary.f32(i32 27, float %1132)  ; Round_ni(value)
  %1135 = call float @dx.op.binary.f32(i32 35, float %1133, float 0.000000e+00)  ; FMax(a,b)
  %1136 = call float @dx.op.binary.f32(i32 35, float %1134, float 0.000000e+00)  ; FMax(a,b)
  %1137 = call float @dx.op.binary.f32(i32 36, float %1135, float %1127)  ; FMin(a,b)
  %1138 = call float @dx.op.binary.f32(i32 36, float %1136, float %1128)  ; FMin(a,b)
  %1139 = fmul fast float %1127, %902
  %1140 = fmul fast float %1128, %903
  %1141 = call float @dx.op.unary.f32(i32 28, float %1139)  ; Round_pi(value)
  %1142 = call float @dx.op.unary.f32(i32 28, float %1140)  ; Round_pi(value)
  %1143 = call float @dx.op.binary.f32(i32 35, float %1141, float 0.000000e+00)  ; FMax(a,b)
  %1144 = call float @dx.op.binary.f32(i32 35, float %1142, float 0.000000e+00)  ; FMax(a,b)
  %1145 = call float @dx.op.binary.f32(i32 36, float %1143, float %1127)  ; FMin(a,b)
  %1146 = call float @dx.op.binary.f32(i32 36, float %1144, float %1128)  ; FMin(a,b)
  %1147 = fadd fast float %1137, 1.000000e+00
  %1148 = fmul fast float %1147, %1129
  %1149 = fmul fast float %1129, 2.000000e+00
  %1150 = fmul fast float %1130, 2.000000e+00
  %1151 = fsub fast float %1145, %1137
  %1152 = fsub fast float %1146, %1138
  %1153 = fmul fast float %1151, 5.000000e-01
  %1154 = fmul fast float %1152, 5.000000e-01
  %1155 = call float @dx.op.unary.f32(i32 28, float %1153)  ; Round_pi(value)
  %1156 = call float @dx.op.unary.f32(i32 28, float %1154)  ; Round_pi(value)
  %1157 = fptoui float %1155 to i32
  %1158 = fptoui float %1156 to i32
  %1159 = shl i32 1, %1122
  %1160 = add i32 %1159, -1
  %1161 = and i32 %1160, %1103
  %1162 = icmp ne i32 %1161, 0
  %1163 = zext i1 %1162 to i32
  %1164 = add i32 %1157, %1163
  %1165 = and i32 %1160, %1104
  %1166 = icmp ne i32 %1165, 0
  %1167 = zext i1 %1166 to i32
  %1168 = add i32 %1158, %1167
  %1169 = icmp eq i32 %1168, 0
  br i1 %1169, label %1249, label %1170

; <label>:1170                                    ; preds = %1101
  %1171 = fadd fast float %1138, 1.000000e+00
  %1172 = fmul fast float %1171, %1130
  br label %1173

; <label>:1173                                    ; preds = %1242, %1170
  %1174 = phi i32 [ %1243, %1242 ], [ 1, %1170 ]
  %1175 = phi float [ %1244, %1242 ], [ 0.000000e+00, %1170 ]
  %1176 = phi float [ %1245, %1242 ], [ %1172, %1170 ]
  %1177 = phi i32 [ %1246, %1242 ], [ 0, %1170 ]
  %1178 = icmp eq i32 %1164, 0
  br i1 %1178, label %1242, label %1179

; <label>:1179                                    ; preds = %1173
  br label %1180

; <label>:1180                                    ; preds = %1180, %1179
  %1181 = phi i32 [ %1233, %1180 ], [ %1174, %1179 ]
  %1182 = phi float [ %1237, %1180 ], [ %1175, %1179 ]
  %1183 = phi float [ %1238, %1180 ], [ %1148, %1179 ]
  %1184 = phi i32 [ %1239, %1180 ], [ 0, %1179 ]
  %1185 = sitofp i32 %1121 to float
  %1186 = fmul fast float %1129, 0xBFDFE00000000000
  %1187 = fadd fast float %1186, %1183
  %1188 = fmul fast float %1130, 0x3FE0100000000000
  %1189 = fadd fast float %1188, %1176
  %1190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %1187, float %1189, float undef, float undef, i32 0, i32 0, i32 undef, float %1185)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1191 = extractvalue %dx.types.ResRet.f32 %1190, 0
  %1192 = fmul fast float %1129, 0x3FE0100000000000
  %1193 = fadd fast float %1192, %1183
  %1194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %1193, float %1189, float undef, float undef, i32 0, i32 0, i32 undef, float %1185)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1195 = extractvalue %dx.types.ResRet.f32 %1194, 0
  %1196 = fmul fast float %1130, 0xBFDFE00000000000
  %1197 = fadd fast float %1196, %1176
  %1198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %1193, float %1197, float undef, float undef, i32 0, i32 0, i32 undef, float %1185)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1199 = extractvalue %dx.types.ResRet.f32 %1198, 0
  %1200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %1187, float %1197, float undef, float undef, i32 0, i32 0, i32 undef, float %1185)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1201 = extractvalue %dx.types.ResRet.f32 %1200, 0
  %1202 = fcmp fast olt float %1191, -1.000000e+00
  %1203 = fcmp fast ogt float %1191, -1.000000e+00
  %1204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1205 = extractvalue %dx.types.CBufRet.f32 %1204, 1
  %1206 = select i1 %1203, float %1205, float 1.000000e+00
  %1207 = fadd fast float %1191, 1.000000e+00
  %1208 = fmul fast float %1206, %1207
  %1209 = call float @dx.op.unary.f32(i32 6, float %1208)  ; FAbs(value)
  %1210 = fcmp fast olt float %1195, -1.000000e+00
  %1211 = fcmp fast ogt float %1195, -1.000000e+00
  %1212 = select i1 %1211, float %1205, float 1.000000e+00
  %1213 = fadd fast float %1195, 1.000000e+00
  %1214 = fmul fast float %1212, %1213
  %1215 = call float @dx.op.unary.f32(i32 6, float %1214)  ; FAbs(value)
  %1216 = fcmp fast olt float %1199, -1.000000e+00
  %1217 = fcmp fast ogt float %1199, -1.000000e+00
  %1218 = select i1 %1217, float %1205, float 1.000000e+00
  %1219 = fadd fast float %1199, 1.000000e+00
  %1220 = fmul fast float %1218, %1219
  %1221 = call float @dx.op.unary.f32(i32 6, float %1220)  ; FAbs(value)
  %1222 = fcmp fast olt float %1201, -1.000000e+00
  %1223 = fcmp fast ogt float %1201, -1.000000e+00
  %1224 = select i1 %1223, float %1205, float 1.000000e+00
  %1225 = fadd fast float %1201, 1.000000e+00
  %1226 = fmul fast float %1224, %1225
  %1227 = call float @dx.op.unary.f32(i32 6, float %1226)  ; FAbs(value)
  %1228 = and i1 %1202, %1210
  %1229 = and i1 %1228, %1216
  %1230 = and i1 %1229, %1222
  %1231 = icmp ne i32 %1181, 0
  %1232 = and i1 %1231, %1230
  %1233 = zext i1 %1232 to i32
  %1234 = call float @dx.op.binary.f32(i32 35, float %1215, float %1221)  ; FMax(a,b)
  %1235 = call float @dx.op.binary.f32(i32 35, float %1209, float %1234)  ; FMax(a,b)
  %1236 = call float @dx.op.binary.f32(i32 35, float %1235, float %1227)  ; FMax(a,b)
  %1237 = call float @dx.op.binary.f32(i32 35, float %1236, float %1182)  ; FMax(a,b)
  %1238 = fadd fast float %1183, %1149
  %1239 = add nuw i32 %1184, 1
  %1240 = icmp eq i32 %1239, %1164
  br i1 %1240, label %1241, label %1180

; <label>:1241                                    ; preds = %1180
  br label %1242

; <label>:1242                                    ; preds = %1241, %1173
  %1243 = phi i32 [ %1174, %1173 ], [ %1233, %1241 ]
  %1244 = phi float [ %1175, %1173 ], [ %1237, %1241 ]
  %1245 = fadd fast float %1176, %1150
  %1246 = add nuw i32 %1177, 1
  %1247 = icmp eq i32 %1246, %1168
  br i1 %1247, label %1248, label %1173

; <label>:1248                                    ; preds = %1242
  br label %1249

; <label>:1249                                    ; preds = %1248, %1101
  %1250 = phi i32 [ 1, %1101 ], [ %1243, %1248 ]
  %1251 = phi float [ 0.000000e+00, %1101 ], [ %1244, %1248 ]
  %1252 = icmp eq i32 %1250, 0
  %1253 = and i1 %781, %1252
  br i1 %1253, label %1266, label %1254, !dx.controlflow.hints !59

; <label>:1254                                    ; preds = %1249
  %1255 = fcmp fast une float %891, 0.000000e+00
  %1256 = bitcast float %891 to i32
  %1257 = and i32 %1256, 2139095040
  %1258 = add nsw i32 %1257, -1056964608
  %1259 = ashr exact i32 %1258, 23
  %1260 = add nsw i32 %1259, -10
  %1261 = sitofp i32 %1260 to float
  %1262 = select i1 %1255, float %1261, float -1.000000e+01
  %1263 = call float @dx.op.unary.f32(i32 21, float %1262)  ; Exp(value)
  %1264 = fsub fast float %891, %1263
  %1265 = fcmp fast ogt float %1251, %1264
  br label %1266

; <label>:1266                                    ; preds = %1254, %1249
  %1267 = phi i1 [ %1265, %1254 ], [ true, %1249 ]
  %1268 = zext i1 %1267 to i32
  br label %1269

; <label>:1269                                    ; preds = %1266, %1095, %933, %921, %913, %872, %807, %779
  %1270 = phi i32 [ 1, %779 ], [ 1, %807 ], [ 1, %872 ], [ 1, %913 ], [ 1, %921 ], [ %1268, %1266 ], [ %1096, %1095 ], [ 1, %933 ]
  %1271 = phi i32 [ 1, %779 ], [ 0, %807 ], [ 1, %872 ], [ 0, %913 ], [ 0, %921 ], [ 1, %1266 ], [ 1, %1095 ], [ 1, %933 ]
  %1272 = icmp ne i32 %1270, 0
  br label %1273

; <label>:1273                                    ; preds = %1269, %773, %742, %83
  %1274 = phi i32 [ %1271, %1269 ], [ %743, %773 ], [ 1, %83 ], [ 1, %742 ]
  %1275 = phi i1 [ %1272, %1269 ], [ true, %773 ], [ true, %83 ], [ true, %742 ]
  %1276 = icmp ne i32 %1274, 0
  %1277 = and i1 %90, %1276
  %1278 = and i1 %1275, %1277
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1279 = and i32 %22, 31
  %1280 = shl i32 1, %1279
  %1281 = select i1 %1278, i32 %1280, i32 0
  %1282 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %22
  store i32 %1281, i32 addrspace(3)* %1282, align 4, !tbaa !61
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1283 = icmp ult i32 %1279, 16
  br i1 %1283, label %1284, label %1290, !dx.controlflow.hints !65

; <label>:1284                                    ; preds = %1273
  %1285 = add i32 %22, 16
  %1286 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1285
  %1287 = load i32, i32 addrspace(3)* %1286, align 4, !tbaa !61
  %1288 = load i32, i32 addrspace(3)* %1282, align 4, !tbaa !61
  %1289 = or i32 %1288, %1287
  store i32 %1289, i32 addrspace(3)* %1282, align 4, !tbaa !61
  br label %1290

; <label>:1290                                    ; preds = %1284, %1273
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1291 = icmp ult i32 %1279, 8
  br i1 %1291, label %1292, label %1298, !dx.controlflow.hints !66

; <label>:1292                                    ; preds = %1290
  %1293 = add i32 %22, 8
  %1294 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1293
  %1295 = load i32, i32 addrspace(3)* %1294, align 4, !tbaa !61
  %1296 = load i32, i32 addrspace(3)* %1282, align 4, !tbaa !61
  %1297 = or i32 %1296, %1295
  store i32 %1297, i32 addrspace(3)* %1282, align 4, !tbaa !61
  br label %1298

; <label>:1298                                    ; preds = %1292, %1290
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1299 = icmp ult i32 %1279, 4
  br i1 %1299, label %1300, label %1306, !dx.controlflow.hints !67

; <label>:1300                                    ; preds = %1298
  %1301 = add i32 %22, 4
  %1302 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1301
  %1303 = load i32, i32 addrspace(3)* %1302, align 4, !tbaa !61
  %1304 = load i32, i32 addrspace(3)* %1282, align 4, !tbaa !61
  %1305 = or i32 %1304, %1303
  store i32 %1305, i32 addrspace(3)* %1282, align 4, !tbaa !61
  br label %1306

; <label>:1306                                    ; preds = %1300, %1298
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1307 = icmp ult i32 %1279, 2
  br i1 %1307, label %1308, label %1314, !dx.controlflow.hints !68

; <label>:1308                                    ; preds = %1306
  %1309 = add i32 %22, 2
  %1310 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1309
  %1311 = load i32, i32 addrspace(3)* %1310, align 4, !tbaa !61
  %1312 = load i32, i32 addrspace(3)* %1282, align 4, !tbaa !61
  %1313 = or i32 %1312, %1311
  store i32 %1313, i32 addrspace(3)* %1282, align 4, !tbaa !61
  br label %1314

; <label>:1314                                    ; preds = %1308, %1306
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1315 = icmp eq i32 %1279, 0
  br i1 %1315, label %1316, label %1322, !dx.controlflow.hints !69

; <label>:1316                                    ; preds = %1314
  %1317 = add i32 %22, 1
  %1318 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1317
  %1319 = load i32, i32 addrspace(3)* %1318, align 4, !tbaa !61
  %1320 = load i32, i32 addrspace(3)* %1282, align 4, !tbaa !61
  %1321 = or i32 %1320, %1319
  store i32 %1321, i32 addrspace(3)* %1282, align 4, !tbaa !61
  br label %1322

; <label>:1322                                    ; preds = %1316, %1314
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1323 = and i32 %22, -64
  %1324 = or i32 %1323, 32
  %1325 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1323
  %1326 = load i32, i32 addrspace(3)* %1325, align 4, !tbaa !61
  %1327 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1324
  %1328 = load i32, i32 addrspace(3)* %1327, align 4, !tbaa !61
  %1329 = icmp eq i32 %22, 0
  br i1 %1329, label %1330, label %1334, !dx.controlflow.hints !70

; <label>:1330                                    ; preds = %1322
  %1331 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1326)  ; Countbits(value)
  %1332 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1328)  ; Countbits(value)
  %1333 = add i32 %1332, %1331
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %21, i32 0, i32 %1326, i32 %1328, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %26, i32 undef, i32 %1333, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1334

; <label>:1334                                    ; preds = %1330, %1322
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i1 @dx.op.isSpecialFloat.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

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
!dx.entryPoints = !{!31}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !21, !25, !29}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18, !19, !20}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!11 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!12 = !{i32 6, %"class.Texture2D<float>"* undef, !"", i32 0, i32 7, i32 1, i32 2, i32 0, !13}
!13 = !{i32 0, i32 9}
!14 = !{i32 7, %"class.Texture2D<float>"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !13}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 27, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 28, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 20, i32 1, i32 11, i32 0, null}
!21 = !{!22, !24}
!22 = !{i32 0, %"class.RWStructuredBuffer<GPCulledSubMesh>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i1 false, i1 false, i1 false, !23}
!23 = !{i32 1, i32 8}
!24 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!25 = !{!26, !27, !28}
!26 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!27 = !{i32 1, %GPSurfPassConsts* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!28 = !{i32 2, %GPOcclusionPassConsts* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!29 = !{!30}
!30 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!31 = !{void ()* @cluster_culling_pass, !"cluster_culling_pass", null, !4, !32}
!32 = !{i32 0, i64 272, i32 4, !33}
!33 = !{i32 64, i32 1, i32 1}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = !{i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
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
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}

