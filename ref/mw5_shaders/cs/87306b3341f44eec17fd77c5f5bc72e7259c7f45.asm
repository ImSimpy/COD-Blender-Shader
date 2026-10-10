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
; shader hash: 4d1a079d8b37aad6d6e0a926b36ce4e7
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
  br i1 %102, label %103, label %1271, !dx.controlflow.hints !36

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
  br i1 %772, label %1271, label %773, !dx.controlflow.hints !50

; <label>:773                                     ; preds = %742
  %774 = and i32 %65, 32
  %775 = icmp ne i32 %774, 0
  %776 = or i1 %775, %99
  %777 = icmp ne i32 %743, 0
  %778 = and i1 %776, %777
  br i1 %778, label %779, label %1271, !dx.controlflow.hints !51

; <label>:779                                     ; preds = %773
  %780 = and i32 %71, 254
  %781 = icmp eq i32 %780, 62
  %782 = fsub fast float %744, %747
  %783 = fsub fast float %745, %748
  %784 = fsub fast float %746, %749
  %785 = fmul fast float %758, %782
  %786 = call float @dx.op.tertiary.f32(i32 46, float %783, float %759, float %785)  ; FMad(a,b,c)
  %787 = call float @dx.op.tertiary.f32(i32 46, float %784, float %760, float %786)  ; FMad(a,b,c)
  %788 = fadd fast float %787, %761
  %789 = fmul fast float %747, 2.000000e+00
  %790 = fmul fast float %748, 2.000000e+00
  %791 = fmul fast float %749, 2.000000e+00
  %792 = fmul fast float %750, %789
  %793 = fmul fast float %754, %789
  %794 = fmul fast float %758, %789
  %795 = fmul fast float %751, %790
  %796 = fmul fast float %755, %790
  %797 = fmul fast float %759, %790
  %798 = fmul fast float %752, %791
  %799 = fmul fast float %756, %791
  %800 = fmul fast float %760, %791
  %801 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 0
  %802 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 0
  %803 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 0
  store float 0.000000e+00, float* %801, align 4
  store float 0.000000e+00, float* %802, align 4
  store float 0.000000e+00, float* %803, align 4
  %804 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 1
  %805 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 1
  %806 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 1
  store float %792, float* %804, align 4
  store float %793, float* %805, align 4
  store float %794, float* %806, align 4
  %807 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 2
  %808 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 2
  %809 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 2
  store float %795, float* %807, align 4
  store float %796, float* %808, align 4
  store float %797, float* %809, align 4
  %810 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 3
  %811 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 3
  %812 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 3
  %813 = fsub fast float -0.000000e+00, %792
  %814 = fsub fast float -0.000000e+00, %793
  %815 = fsub fast float -0.000000e+00, %794
  store float %813, float* %810, align 4
  store float %814, float* %811, align 4
  store float %815, float* %812, align 4
  %816 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 4
  %817 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 4
  %818 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 4
  store float %798, float* %816, align 4
  store float %799, float* %817, align 4
  store float %800, float* %818, align 4
  %819 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 5
  %820 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 5
  %821 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 5
  store float %792, float* %819, align 4
  store float %793, float* %820, align 4
  store float %794, float* %821, align 4
  %822 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 6
  %823 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 6
  %824 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 6
  %825 = fsub fast float -0.000000e+00, %795
  %826 = fsub fast float -0.000000e+00, %796
  %827 = fsub fast float -0.000000e+00, %797
  store float %825, float* %822, align 4
  store float %826, float* %823, align 4
  store float %827, float* %824, align 4
  %828 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 7
  %829 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 7
  %830 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 7
  store float %813, float* %828, align 4
  store float %814, float* %829, align 4
  store float %815, float* %830, align 4
  %831 = fcmp fast olt float %788, 0.000000e+00
  %832 = zext i1 %831 to i32
  %833 = fadd fast float %788, %794
  %834 = fcmp fast olt float %833, 0.000000e+00
  %835 = select i1 %834, i32 2, i32 0
  %836 = or i32 %835, %832
  %837 = fadd fast float %833, %797
  %838 = fcmp fast olt float %837, 0.000000e+00
  %839 = select i1 %838, i32 4, i32 0
  %840 = or i32 %836, %839
  %841 = fsub fast float %837, %794
  %842 = fcmp fast olt float %841, 0.000000e+00
  %843 = select i1 %842, i32 8, i32 0
  %844 = or i32 %840, %843
  %845 = fadd fast float %841, %800
  %846 = fcmp fast olt float %845, 0.000000e+00
  %847 = select i1 %846, i32 16, i32 0
  %848 = or i32 %844, %847
  %849 = fadd fast float %845, %794
  %850 = fcmp fast olt float %849, 0.000000e+00
  %851 = select i1 %850, i32 32, i32 0
  %852 = or i32 %848, %851
  %853 = fsub fast float %849, %797
  %854 = fcmp fast olt float %853, 0.000000e+00
  %855 = select i1 %854, i32 64, i32 0
  %856 = or i32 %852, %855
  %857 = fsub fast float %853, %794
  %858 = fcmp fast olt float %857, 0.000000e+00
  %859 = select i1 %858, i32 128, i32 0
  %860 = or i32 %856, %859
  %861 = icmp eq i32 %860, 255
  br i1 %861, label %1267, label %862, !dx.controlflow.hints !52

; <label>:862                                     ; preds = %779
  %863 = icmp eq i32 %860, 0
  br i1 %863, label %864, label %1267, !dx.controlflow.hints !53

; <label>:864                                     ; preds = %862
  %865 = fmul fast float %750, %782
  %866 = call float @dx.op.tertiary.f32(i32 46, float %783, float %751, float %865)  ; FMad(a,b,c)
  %867 = call float @dx.op.tertiary.f32(i32 46, float %784, float %752, float %866)  ; FMad(a,b,c)
  %868 = fadd fast float %867, %753
  %869 = fmul fast float %754, %782
  %870 = call float @dx.op.tertiary.f32(i32 46, float %783, float %755, float %869)  ; FMad(a,b,c)
  %871 = call float @dx.op.tertiary.f32(i32 46, float %784, float %756, float %870)  ; FMad(a,b,c)
  %872 = fadd fast float %871, %757
  br label %873

; <label>:873                                     ; preds = %904, %864
  %874 = phi float [ %910, %904 ], [ 0.000000e+00, %864 ]
  %875 = phi float [ %908, %904 ], [ 0.000000e+00, %864 ]
  %876 = phi float [ %906, %904 ], [ 0.000000e+00, %864 ]
  %877 = phi float [ %898, %904 ], [ 9.999999e+06, %864 ]
  %878 = phi float [ %899, %904 ], [ 9.999999e+06, %864 ]
  %879 = phi float [ %900, %904 ], [ -9.999999e+06, %864 ]
  %880 = phi float [ %901, %904 ], [ -9.999999e+06, %864 ]
  %881 = phi float [ %889, %904 ], [ 9.999999e+06, %864 ]
  %882 = phi float [ %886, %904 ], [ %868, %864 ]
  %883 = phi float [ %887, %904 ], [ %872, %864 ]
  %884 = phi float [ %888, %904 ], [ %788, %864 ]
  %885 = phi i32 [ %902, %904 ], [ 0, %864 ]
  %886 = fadd fast float %876, %882
  %887 = fadd fast float %875, %883
  %888 = fadd fast float %874, %884
  %889 = call float @dx.op.binary.f32(i32 36, float %881, float %888)  ; FMin(a,b)
  %890 = fdiv fast float %886, %888
  %891 = fdiv fast float %887, %888
  %892 = fmul fast float %890, 5.000000e-01
  %893 = fmul fast float %891, 5.000000e-01
  %894 = fadd fast float %892, 5.000000e-01
  %895 = fsub fast float 5.000000e-01, %893
  %896 = call float @dx.op.unary.f32(i32 7, float %894)  ; Saturate(value)
  %897 = call float @dx.op.unary.f32(i32 7, float %895)  ; Saturate(value)
  %898 = call float @dx.op.binary.f32(i32 36, float %877, float %896)  ; FMin(a,b)
  %899 = call float @dx.op.binary.f32(i32 36, float %878, float %897)  ; FMin(a,b)
  %900 = call float @dx.op.binary.f32(i32 35, float %879, float %896)  ; FMax(a,b)
  %901 = call float @dx.op.binary.f32(i32 35, float %880, float %897)  ; FMax(a,b)
  %902 = add nuw nsw i32 %885, 1
  %903 = icmp eq i32 %902, 8
  br i1 %903, label %911, label %904

; <label>:904                                     ; preds = %873
  %905 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 %902
  %906 = load float, float* %905, align 4
  %907 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 %902
  %908 = load float, float* %907, align 4
  %909 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 %902
  %910 = load float, float* %909, align 4
  br label %873

; <label>:911                                     ; preds = %873
  %912 = fcmp fast ole float %900, 0.000000e+00
  %913 = fcmp fast oge float %898, 1.000000e+00
  %914 = or i1 %913, %912
  %915 = fcmp fast ole float %901, 0.000000e+00
  %916 = or i1 %914, %915
  %917 = fcmp fast oge float %899, 1.000000e+00
  %918 = or i1 %917, %916
  br i1 %918, label %1267, label %919, !dx.controlflow.hints !54

; <label>:919                                     ; preds = %911
  %920 = fmul fast float %898, %495
  %921 = fmul fast float %899, %496
  %922 = fmul fast float %900, %495
  %923 = fmul fast float %901, %496
  %924 = call float @dx.op.unary.f32(i32 26, float %920)  ; Round_ne(value)
  %925 = call float @dx.op.unary.f32(i32 26, float %921)  ; Round_ne(value)
  %926 = call float @dx.op.unary.f32(i32 26, float %922)  ; Round_ne(value)
  %927 = call float @dx.op.unary.f32(i32 26, float %923)  ; Round_ne(value)
  %928 = fcmp fast oeq float %924, %926
  %929 = fcmp fast oeq float %925, %927
  %930 = or i1 %928, %929
  br i1 %930, label %1267, label %931, !dx.controlflow.hints !55

; <label>:931                                     ; preds = %919
  %932 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %933 = extractvalue %dx.types.CBufRet.i32 %932, 0
  %934 = icmp ne i32 %933, 0
  %935 = and i32 %65, 2
  %936 = icmp ne i32 %935, 0
  %937 = and i1 %936, %934
  br i1 %937, label %938, label %1267, !dx.controlflow.hints !56

; <label>:938                                     ; preds = %931
  %939 = and i32 %933, 2
  %940 = icmp eq i32 %939, 0
  br i1 %940, label %1093, label %941, !dx.controlflow.hints !57

; <label>:941                                     ; preds = %938
  %942 = fsub fast float %900, %898
  %943 = fsub fast float %901, %899
  %944 = fmul fast float %942, 6.400000e+01
  %945 = fmul fast float %943, 6.400000e+01
  %946 = call float @dx.op.unary.f32(i32 28, float %944)  ; Round_pi(value)
  %947 = call float @dx.op.unary.f32(i32 28, float %945)  ; Round_pi(value)
  %948 = call float @dx.op.binary.f32(i32 35, float %946, float %947)  ; FMax(a,b)
  %949 = call float @dx.op.unary.f32(i32 23, float %948)  ; Log(value)
  %950 = call float @dx.op.unary.f32(i32 28, float %949)  ; Round_pi(value)
  %951 = fptosi float %950 to i32
  %952 = call i32 @dx.op.binary.i32(i32 37, i32 %951, i32 0)  ; IMax(a,b)
  %953 = call i32 @dx.op.binary.i32(i32 38, i32 %952, i32 6)  ; IMin(a,b)
  %954 = and i32 %953, 31
  %955 = lshr i32 64, %954
  %956 = uitofp i32 %955 to float
  %957 = call float @dx.op.binary.f32(i32 35, float %956, float 1.000000e+00)  ; FMax(a,b)
  %958 = fdiv fast float 1.000000e+00, %957
  %959 = fmul fast float %957, %898
  %960 = fmul fast float %957, %899
  %961 = call float @dx.op.unary.f32(i32 27, float %959)  ; Round_ni(value)
  %962 = call float @dx.op.unary.f32(i32 27, float %960)  ; Round_ni(value)
  %963 = call float @dx.op.binary.f32(i32 35, float %961, float 0.000000e+00)  ; FMax(a,b)
  %964 = call float @dx.op.binary.f32(i32 35, float %962, float 0.000000e+00)  ; FMax(a,b)
  %965 = call float @dx.op.binary.f32(i32 36, float %963, float %957)  ; FMin(a,b)
  %966 = call float @dx.op.binary.f32(i32 36, float %964, float %957)  ; FMin(a,b)
  %967 = fmul fast float %957, %900
  %968 = fmul fast float %957, %901
  %969 = call float @dx.op.unary.f32(i32 28, float %967)  ; Round_pi(value)
  %970 = call float @dx.op.unary.f32(i32 28, float %968)  ; Round_pi(value)
  %971 = call float @dx.op.binary.f32(i32 35, float %969, float 0.000000e+00)  ; FMax(a,b)
  %972 = call float @dx.op.binary.f32(i32 35, float %970, float 0.000000e+00)  ; FMax(a,b)
  %973 = call float @dx.op.binary.f32(i32 36, float %971, float %957)  ; FMin(a,b)
  %974 = call float @dx.op.binary.f32(i32 36, float %972, float %957)  ; FMin(a,b)
  %975 = fadd fast float %965, 1.000000e+00
  %976 = fmul fast float %975, %958
  %977 = fmul fast float %958, 2.000000e+00
  %978 = fsub fast float %973, %965
  %979 = fsub fast float %974, %966
  %980 = fmul fast float %978, 5.000000e-01
  %981 = fmul fast float %979, 5.000000e-01
  %982 = call float @dx.op.unary.f32(i32 28, float %980)  ; Round_pi(value)
  %983 = call float @dx.op.unary.f32(i32 28, float %981)  ; Round_pi(value)
  %984 = fptoui float %982 to i32
  %985 = fptoui float %983 to i32
  %986 = shl i32 1, %954
  %987 = add i32 %986, -1
  %988 = lshr i32 %987, 6
  %989 = and i32 %988, 1
  %990 = sub nsw i32 0, %989
  %991 = icmp eq i32 %985, %990
  br i1 %991, label %1073, label %992

; <label>:992                                     ; preds = %941
  %993 = fadd fast float %966, 1.000000e+00
  %994 = fmul fast float %993, %958
  %995 = and i32 %988, 1
  %996 = add i32 %984, %995
  %997 = add i32 %985, %995
  br label %998

; <label>:998                                     ; preds = %1066, %992
  %999 = phi i32 [ %1067, %1066 ], [ 1, %992 ]
  %1000 = phi float [ %1068, %1066 ], [ 0.000000e+00, %992 ]
  %1001 = phi float [ %1069, %1066 ], [ %994, %992 ]
  %1002 = phi i32 [ %1070, %1066 ], [ 0, %992 ]
  %1003 = sub nsw i32 0, %989
  %1004 = icmp eq i32 %984, %1003
  br i1 %1004, label %1066, label %1005

; <label>:1005                                    ; preds = %998
  br label %1006

; <label>:1006                                    ; preds = %1006, %1005
  %1007 = phi i32 [ %1057, %1006 ], [ %999, %1005 ]
  %1008 = phi float [ %1061, %1006 ], [ %1000, %1005 ]
  %1009 = phi float [ %1062, %1006 ], [ %976, %1005 ]
  %1010 = phi i32 [ %1063, %1006 ], [ 0, %1005 ]
  %1011 = sitofp i32 %953 to float
  %1012 = fmul fast float %958, 0xBFDFE00000000000
  %1013 = fadd fast float %1012, %1009
  %1014 = fmul fast float %958, 0x3FE0100000000000
  %1015 = fadd fast float %1014, %1001
  %1016 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %1013, float %1015, float undef, float undef, i32 0, i32 0, i32 undef, float %1011)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1017 = extractvalue %dx.types.ResRet.f32 %1016, 0
  %1018 = fadd fast float %1014, %1009
  %1019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %1018, float %1015, float undef, float undef, i32 0, i32 0, i32 undef, float %1011)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1020 = extractvalue %dx.types.ResRet.f32 %1019, 0
  %1021 = fadd fast float %1012, %1001
  %1022 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %1018, float %1021, float undef, float undef, i32 0, i32 0, i32 undef, float %1011)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1023 = extractvalue %dx.types.ResRet.f32 %1022, 0
  %1024 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %1013, float %1021, float undef, float undef, i32 0, i32 0, i32 undef, float %1011)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1025 = extractvalue %dx.types.ResRet.f32 %1024, 0
  %1026 = fcmp fast olt float %1017, -1.000000e+00
  %1027 = fcmp fast ogt float %1017, -1.000000e+00
  %1028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1029 = extractvalue %dx.types.CBufRet.f32 %1028, 1
  %1030 = select i1 %1027, float %1029, float 1.000000e+00
  %1031 = fadd fast float %1017, 1.000000e+00
  %1032 = fmul fast float %1030, %1031
  %1033 = call float @dx.op.unary.f32(i32 6, float %1032)  ; FAbs(value)
  %1034 = fcmp fast olt float %1020, -1.000000e+00
  %1035 = fcmp fast ogt float %1020, -1.000000e+00
  %1036 = select i1 %1035, float %1029, float 1.000000e+00
  %1037 = fadd fast float %1020, 1.000000e+00
  %1038 = fmul fast float %1036, %1037
  %1039 = call float @dx.op.unary.f32(i32 6, float %1038)  ; FAbs(value)
  %1040 = fcmp fast olt float %1023, -1.000000e+00
  %1041 = fcmp fast ogt float %1023, -1.000000e+00
  %1042 = select i1 %1041, float %1029, float 1.000000e+00
  %1043 = fadd fast float %1023, 1.000000e+00
  %1044 = fmul fast float %1042, %1043
  %1045 = call float @dx.op.unary.f32(i32 6, float %1044)  ; FAbs(value)
  %1046 = fcmp fast olt float %1025, -1.000000e+00
  %1047 = fcmp fast ogt float %1025, -1.000000e+00
  %1048 = select i1 %1047, float %1029, float 1.000000e+00
  %1049 = fadd fast float %1025, 1.000000e+00
  %1050 = fmul fast float %1048, %1049
  %1051 = call float @dx.op.unary.f32(i32 6, float %1050)  ; FAbs(value)
  %1052 = and i1 %1026, %1034
  %1053 = and i1 %1052, %1040
  %1054 = and i1 %1053, %1046
  %1055 = icmp ne i32 %1007, 0
  %1056 = and i1 %1055, %1054
  %1057 = zext i1 %1056 to i32
  %1058 = call float @dx.op.binary.f32(i32 35, float %1039, float %1045)  ; FMax(a,b)
  %1059 = call float @dx.op.binary.f32(i32 35, float %1033, float %1058)  ; FMax(a,b)
  %1060 = call float @dx.op.binary.f32(i32 35, float %1059, float %1051)  ; FMax(a,b)
  %1061 = call float @dx.op.binary.f32(i32 35, float %1060, float %1008)  ; FMax(a,b)
  %1062 = fadd fast float %1009, %977
  %1063 = add nuw i32 %1010, 1
  %1064 = icmp eq i32 %1063, %996
  br i1 %1064, label %1065, label %1006

; <label>:1065                                    ; preds = %1006
  br label %1066

; <label>:1066                                    ; preds = %1065, %998
  %1067 = phi i32 [ %999, %998 ], [ %1057, %1065 ]
  %1068 = phi float [ %1000, %998 ], [ %1061, %1065 ]
  %1069 = fadd fast float %1001, %977
  %1070 = add nuw i32 %1002, 1
  %1071 = icmp eq i32 %1070, %997
  br i1 %1071, label %1072, label %998

; <label>:1072                                    ; preds = %1066
  br label %1073

; <label>:1073                                    ; preds = %1072, %941
  %1074 = phi i32 [ 1, %941 ], [ %1067, %1072 ]
  %1075 = phi float [ 0.000000e+00, %941 ], [ %1068, %1072 ]
  %1076 = icmp eq i32 %1074, 0
  %1077 = and i1 %781, %1076
  br i1 %1077, label %1090, label %1078, !dx.controlflow.hints !58

; <label>:1078                                    ; preds = %1073
  %1079 = fcmp fast une float %889, 0.000000e+00
  %1080 = bitcast float %889 to i32
  %1081 = and i32 %1080, 2139095040
  %1082 = add nsw i32 %1081, -1056964608
  %1083 = ashr exact i32 %1082, 23
  %1084 = add nsw i32 %1083, -10
  %1085 = sitofp i32 %1084 to float
  %1086 = select i1 %1079, float %1085, float -1.000000e+01
  %1087 = call float @dx.op.unary.f32(i32 21, float %1086)  ; Exp(value)
  %1088 = fsub fast float %889, %1087
  %1089 = fcmp fast ogt float %1075, %1088
  br label %1090

; <label>:1090                                    ; preds = %1078, %1073
  %1091 = phi i1 [ %1089, %1078 ], [ true, %1073 ]
  %1092 = zext i1 %1091 to i32
  br label %1093

; <label>:1093                                    ; preds = %1090, %938
  %1094 = phi i32 [ %1092, %1090 ], [ 1, %938 ]
  %1095 = and i32 %933, 1
  %1096 = icmp ne i32 %1095, 0
  %1097 = icmp ne i32 %1094, 0
  %1098 = and i1 %1097, %1096
  br i1 %1098, label %1099, label %1267, !dx.controlflow.hints !59

; <label>:1099                                    ; preds = %1093
  %1100 = extractvalue %dx.types.CBufRet.i32 %932, 3
  %1101 = extractvalue %dx.types.CBufRet.i32 %932, 1
  %1102 = extractvalue %dx.types.CBufRet.i32 %932, 2
  %1103 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1104 = extractvalue %dx.types.CBufRet.i32 %1103, 0
  %1105 = fsub fast float %900, %898
  %1106 = fsub fast float %901, %899
  %1107 = uitofp i32 %1101 to float
  %1108 = uitofp i32 %1102 to float
  %1109 = fmul fast float %1107, %1105
  %1110 = fmul fast float %1108, %1106
  %1111 = call float @dx.op.unary.f32(i32 28, float %1109)  ; Round_pi(value)
  %1112 = call float @dx.op.unary.f32(i32 28, float %1110)  ; Round_pi(value)
  %1113 = call float @dx.op.binary.f32(i32 35, float %1111, float %1112)  ; FMax(a,b)
  %1114 = call float @dx.op.unary.f32(i32 23, float %1113)  ; Log(value)
  %1115 = call float @dx.op.unary.f32(i32 28, float %1114)  ; Round_pi(value)
  %1116 = fptosi float %1115 to i32
  %1117 = sub nsw i32 %1116, %1104
  %1118 = call i32 @dx.op.binary.i32(i32 37, i32 %1117, i32 0)  ; IMax(a,b)
  %1119 = call i32 @dx.op.binary.i32(i32 38, i32 %1118, i32 %1100)  ; IMin(a,b)
  %1120 = and i32 %1119, 31
  %1121 = lshr i32 %1101, %1120
  %1122 = lshr i32 %1102, %1120
  %1123 = uitofp i32 %1121 to float
  %1124 = uitofp i32 %1122 to float
  %1125 = call float @dx.op.binary.f32(i32 35, float %1123, float 1.000000e+00)  ; FMax(a,b)
  %1126 = call float @dx.op.binary.f32(i32 35, float %1124, float 1.000000e+00)  ; FMax(a,b)
  %1127 = fdiv fast float 1.000000e+00, %1125
  %1128 = fdiv fast float 1.000000e+00, %1126
  %1129 = fmul fast float %1125, %898
  %1130 = fmul fast float %1126, %899
  %1131 = call float @dx.op.unary.f32(i32 27, float %1129)  ; Round_ni(value)
  %1132 = call float @dx.op.unary.f32(i32 27, float %1130)  ; Round_ni(value)
  %1133 = call float @dx.op.binary.f32(i32 35, float %1131, float 0.000000e+00)  ; FMax(a,b)
  %1134 = call float @dx.op.binary.f32(i32 35, float %1132, float 0.000000e+00)  ; FMax(a,b)
  %1135 = call float @dx.op.binary.f32(i32 36, float %1133, float %1125)  ; FMin(a,b)
  %1136 = call float @dx.op.binary.f32(i32 36, float %1134, float %1126)  ; FMin(a,b)
  %1137 = fmul fast float %1125, %900
  %1138 = fmul fast float %1126, %901
  %1139 = call float @dx.op.unary.f32(i32 28, float %1137)  ; Round_pi(value)
  %1140 = call float @dx.op.unary.f32(i32 28, float %1138)  ; Round_pi(value)
  %1141 = call float @dx.op.binary.f32(i32 35, float %1139, float 0.000000e+00)  ; FMax(a,b)
  %1142 = call float @dx.op.binary.f32(i32 35, float %1140, float 0.000000e+00)  ; FMax(a,b)
  %1143 = call float @dx.op.binary.f32(i32 36, float %1141, float %1125)  ; FMin(a,b)
  %1144 = call float @dx.op.binary.f32(i32 36, float %1142, float %1126)  ; FMin(a,b)
  %1145 = fadd fast float %1135, 1.000000e+00
  %1146 = fmul fast float %1145, %1127
  %1147 = fmul fast float %1127, 2.000000e+00
  %1148 = fmul fast float %1128, 2.000000e+00
  %1149 = fsub fast float %1143, %1135
  %1150 = fsub fast float %1144, %1136
  %1151 = fmul fast float %1149, 5.000000e-01
  %1152 = fmul fast float %1150, 5.000000e-01
  %1153 = call float @dx.op.unary.f32(i32 28, float %1151)  ; Round_pi(value)
  %1154 = call float @dx.op.unary.f32(i32 28, float %1152)  ; Round_pi(value)
  %1155 = fptoui float %1153 to i32
  %1156 = fptoui float %1154 to i32
  %1157 = shl i32 1, %1120
  %1158 = add i32 %1157, -1
  %1159 = and i32 %1158, %1101
  %1160 = icmp ne i32 %1159, 0
  %1161 = zext i1 %1160 to i32
  %1162 = add i32 %1155, %1161
  %1163 = and i32 %1158, %1102
  %1164 = icmp ne i32 %1163, 0
  %1165 = zext i1 %1164 to i32
  %1166 = add i32 %1156, %1165
  %1167 = icmp eq i32 %1166, 0
  br i1 %1167, label %1247, label %1168

; <label>:1168                                    ; preds = %1099
  %1169 = fadd fast float %1136, 1.000000e+00
  %1170 = fmul fast float %1169, %1128
  br label %1171

; <label>:1171                                    ; preds = %1240, %1168
  %1172 = phi i32 [ %1241, %1240 ], [ 1, %1168 ]
  %1173 = phi float [ %1242, %1240 ], [ 0.000000e+00, %1168 ]
  %1174 = phi float [ %1243, %1240 ], [ %1170, %1168 ]
  %1175 = phi i32 [ %1244, %1240 ], [ 0, %1168 ]
  %1176 = icmp eq i32 %1162, 0
  br i1 %1176, label %1240, label %1177

; <label>:1177                                    ; preds = %1171
  br label %1178

; <label>:1178                                    ; preds = %1178, %1177
  %1179 = phi i32 [ %1231, %1178 ], [ %1172, %1177 ]
  %1180 = phi float [ %1235, %1178 ], [ %1173, %1177 ]
  %1181 = phi float [ %1236, %1178 ], [ %1146, %1177 ]
  %1182 = phi i32 [ %1237, %1178 ], [ 0, %1177 ]
  %1183 = sitofp i32 %1119 to float
  %1184 = fmul fast float %1127, 0xBFDFE00000000000
  %1185 = fadd fast float %1184, %1181
  %1186 = fmul fast float %1128, 0x3FE0100000000000
  %1187 = fadd fast float %1186, %1174
  %1188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %1185, float %1187, float undef, float undef, i32 0, i32 0, i32 undef, float %1183)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1189 = extractvalue %dx.types.ResRet.f32 %1188, 0
  %1190 = fmul fast float %1127, 0x3FE0100000000000
  %1191 = fadd fast float %1190, %1181
  %1192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %1191, float %1187, float undef, float undef, i32 0, i32 0, i32 undef, float %1183)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1193 = extractvalue %dx.types.ResRet.f32 %1192, 0
  %1194 = fmul fast float %1128, 0xBFDFE00000000000
  %1195 = fadd fast float %1194, %1174
  %1196 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %1191, float %1195, float undef, float undef, i32 0, i32 0, i32 undef, float %1183)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1197 = extractvalue %dx.types.ResRet.f32 %1196, 0
  %1198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %1185, float %1195, float undef, float undef, i32 0, i32 0, i32 undef, float %1183)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1199 = extractvalue %dx.types.ResRet.f32 %1198, 0
  %1200 = fcmp fast olt float %1189, -1.000000e+00
  %1201 = fcmp fast ogt float %1189, -1.000000e+00
  %1202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1203 = extractvalue %dx.types.CBufRet.f32 %1202, 1
  %1204 = select i1 %1201, float %1203, float 1.000000e+00
  %1205 = fadd fast float %1189, 1.000000e+00
  %1206 = fmul fast float %1204, %1205
  %1207 = call float @dx.op.unary.f32(i32 6, float %1206)  ; FAbs(value)
  %1208 = fcmp fast olt float %1193, -1.000000e+00
  %1209 = fcmp fast ogt float %1193, -1.000000e+00
  %1210 = select i1 %1209, float %1203, float 1.000000e+00
  %1211 = fadd fast float %1193, 1.000000e+00
  %1212 = fmul fast float %1210, %1211
  %1213 = call float @dx.op.unary.f32(i32 6, float %1212)  ; FAbs(value)
  %1214 = fcmp fast olt float %1197, -1.000000e+00
  %1215 = fcmp fast ogt float %1197, -1.000000e+00
  %1216 = select i1 %1215, float %1203, float 1.000000e+00
  %1217 = fadd fast float %1197, 1.000000e+00
  %1218 = fmul fast float %1216, %1217
  %1219 = call float @dx.op.unary.f32(i32 6, float %1218)  ; FAbs(value)
  %1220 = fcmp fast olt float %1199, -1.000000e+00
  %1221 = fcmp fast ogt float %1199, -1.000000e+00
  %1222 = select i1 %1221, float %1203, float 1.000000e+00
  %1223 = fadd fast float %1199, 1.000000e+00
  %1224 = fmul fast float %1222, %1223
  %1225 = call float @dx.op.unary.f32(i32 6, float %1224)  ; FAbs(value)
  %1226 = and i1 %1200, %1208
  %1227 = and i1 %1226, %1214
  %1228 = and i1 %1227, %1220
  %1229 = icmp ne i32 %1179, 0
  %1230 = and i1 %1229, %1228
  %1231 = zext i1 %1230 to i32
  %1232 = call float @dx.op.binary.f32(i32 35, float %1213, float %1219)  ; FMax(a,b)
  %1233 = call float @dx.op.binary.f32(i32 35, float %1207, float %1232)  ; FMax(a,b)
  %1234 = call float @dx.op.binary.f32(i32 35, float %1233, float %1225)  ; FMax(a,b)
  %1235 = call float @dx.op.binary.f32(i32 35, float %1234, float %1180)  ; FMax(a,b)
  %1236 = fadd fast float %1181, %1147
  %1237 = add nuw i32 %1182, 1
  %1238 = icmp eq i32 %1237, %1162
  br i1 %1238, label %1239, label %1178

; <label>:1239                                    ; preds = %1178
  br label %1240

; <label>:1240                                    ; preds = %1239, %1171
  %1241 = phi i32 [ %1172, %1171 ], [ %1231, %1239 ]
  %1242 = phi float [ %1173, %1171 ], [ %1235, %1239 ]
  %1243 = fadd fast float %1174, %1148
  %1244 = add nuw i32 %1175, 1
  %1245 = icmp eq i32 %1244, %1166
  br i1 %1245, label %1246, label %1171

; <label>:1246                                    ; preds = %1240
  br label %1247

; <label>:1247                                    ; preds = %1246, %1099
  %1248 = phi i32 [ 1, %1099 ], [ %1241, %1246 ]
  %1249 = phi float [ 0.000000e+00, %1099 ], [ %1242, %1246 ]
  %1250 = icmp eq i32 %1248, 0
  %1251 = and i1 %781, %1250
  br i1 %1251, label %1264, label %1252, !dx.controlflow.hints !58

; <label>:1252                                    ; preds = %1247
  %1253 = fcmp fast une float %889, 0.000000e+00
  %1254 = bitcast float %889 to i32
  %1255 = and i32 %1254, 2139095040
  %1256 = add nsw i32 %1255, -1056964608
  %1257 = ashr exact i32 %1256, 23
  %1258 = add nsw i32 %1257, -10
  %1259 = sitofp i32 %1258 to float
  %1260 = select i1 %1253, float %1259, float -1.000000e+01
  %1261 = call float @dx.op.unary.f32(i32 21, float %1260)  ; Exp(value)
  %1262 = fsub fast float %889, %1261
  %1263 = fcmp fast ogt float %1249, %1262
  br label %1264

; <label>:1264                                    ; preds = %1252, %1247
  %1265 = phi i1 [ %1263, %1252 ], [ true, %1247 ]
  %1266 = zext i1 %1265 to i32
  br label %1267

; <label>:1267                                    ; preds = %1264, %1093, %931, %919, %911, %862, %779
  %1268 = phi i32 [ 1, %779 ], [ 1, %862 ], [ 1, %911 ], [ 1, %919 ], [ %1266, %1264 ], [ %1094, %1093 ], [ 1, %931 ]
  %1269 = phi i32 [ 0, %779 ], [ 1, %862 ], [ 0, %911 ], [ 0, %919 ], [ 1, %1264 ], [ 1, %1093 ], [ 1, %931 ]
  %1270 = icmp ne i32 %1268, 0
  br label %1271

; <label>:1271                                    ; preds = %1267, %773, %742, %83
  %1272 = phi i32 [ %1269, %1267 ], [ %743, %773 ], [ 1, %83 ], [ 1, %742 ]
  %1273 = phi i1 [ %1270, %1267 ], [ true, %773 ], [ true, %83 ], [ true, %742 ]
  %1274 = icmp ne i32 %1272, 0
  %1275 = and i1 %90, %1274
  %1276 = and i1 %1273, %1275
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1277 = and i32 %22, 31
  %1278 = shl i32 1, %1277
  %1279 = select i1 %1276, i32 %1278, i32 0
  %1280 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %22
  store i32 %1279, i32 addrspace(3)* %1280, align 4, !tbaa !60
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1281 = icmp ult i32 %1277, 16
  br i1 %1281, label %1282, label %1288, !dx.controlflow.hints !64

; <label>:1282                                    ; preds = %1271
  %1283 = add i32 %22, 16
  %1284 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1283
  %1285 = load i32, i32 addrspace(3)* %1284, align 4, !tbaa !60
  %1286 = load i32, i32 addrspace(3)* %1280, align 4, !tbaa !60
  %1287 = or i32 %1286, %1285
  store i32 %1287, i32 addrspace(3)* %1280, align 4, !tbaa !60
  br label %1288

; <label>:1288                                    ; preds = %1282, %1271
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1289 = icmp ult i32 %1277, 8
  br i1 %1289, label %1290, label %1296, !dx.controlflow.hints !65

; <label>:1290                                    ; preds = %1288
  %1291 = add i32 %22, 8
  %1292 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1291
  %1293 = load i32, i32 addrspace(3)* %1292, align 4, !tbaa !60
  %1294 = load i32, i32 addrspace(3)* %1280, align 4, !tbaa !60
  %1295 = or i32 %1294, %1293
  store i32 %1295, i32 addrspace(3)* %1280, align 4, !tbaa !60
  br label %1296

; <label>:1296                                    ; preds = %1290, %1288
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1297 = icmp ult i32 %1277, 4
  br i1 %1297, label %1298, label %1304, !dx.controlflow.hints !66

; <label>:1298                                    ; preds = %1296
  %1299 = add i32 %22, 4
  %1300 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1299
  %1301 = load i32, i32 addrspace(3)* %1300, align 4, !tbaa !60
  %1302 = load i32, i32 addrspace(3)* %1280, align 4, !tbaa !60
  %1303 = or i32 %1302, %1301
  store i32 %1303, i32 addrspace(3)* %1280, align 4, !tbaa !60
  br label %1304

; <label>:1304                                    ; preds = %1298, %1296
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1305 = icmp ult i32 %1277, 2
  br i1 %1305, label %1306, label %1312, !dx.controlflow.hints !67

; <label>:1306                                    ; preds = %1304
  %1307 = add i32 %22, 2
  %1308 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1307
  %1309 = load i32, i32 addrspace(3)* %1308, align 4, !tbaa !60
  %1310 = load i32, i32 addrspace(3)* %1280, align 4, !tbaa !60
  %1311 = or i32 %1310, %1309
  store i32 %1311, i32 addrspace(3)* %1280, align 4, !tbaa !60
  br label %1312

; <label>:1312                                    ; preds = %1306, %1304
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1313 = icmp eq i32 %1277, 0
  br i1 %1313, label %1314, label %1320, !dx.controlflow.hints !68

; <label>:1314                                    ; preds = %1312
  %1315 = add i32 %22, 1
  %1316 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1315
  %1317 = load i32, i32 addrspace(3)* %1316, align 4, !tbaa !60
  %1318 = load i32, i32 addrspace(3)* %1280, align 4, !tbaa !60
  %1319 = or i32 %1318, %1317
  store i32 %1319, i32 addrspace(3)* %1280, align 4, !tbaa !60
  br label %1320

; <label>:1320                                    ; preds = %1314, %1312
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1321 = and i32 %22, -64
  %1322 = or i32 %1321, 32
  %1323 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1321
  %1324 = load i32, i32 addrspace(3)* %1323, align 4, !tbaa !60
  %1325 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1322
  %1326 = load i32, i32 addrspace(3)* %1325, align 4, !tbaa !60
  %1327 = icmp eq i32 %22, 0
  br i1 %1327, label %1328, label %1332, !dx.controlflow.hints !69

; <label>:1328                                    ; preds = %1320
  %1329 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1324)  ; Countbits(value)
  %1330 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1326)  ; Countbits(value)
  %1331 = add i32 %1330, %1329
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %21, i32 0, i32 %1324, i32 %1326, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %26, i32 undef, i32 %1331, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1332

; <label>:1332                                    ; preds = %1328, %1320
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
!60 = !{!61, !61, i64 0}
!61 = !{!"int", !62, i64 0}
!62 = !{!"omnipotent char", !63, i64 0}
!63 = !{!"Simple C/C++ TBAA"}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}

