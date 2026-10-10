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
; shader hash: fb9d4231fa827706fc00a54ee4625ddf
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
;                                   texture    byte         r/o      T8             t4     1
;                                   texture    byte         r/o      T9            t13     1
;                                   texture  struct         r/o     T10            t14     1
;                                   texture    byte         r/o     T11            t21     1
;                                   texture    byte         r/o     T12            t27     1
;                                   texture    byte         r/o     T13            t28     1
;                                   texture    byte         r/o     T14            t19     1
;                                   texture    byte         r/o     T15            t20     1
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
%"class.StructuredBuffer<GPCulledSubMesh>" = type { %struct.GPCulledSubMesh }
%struct.GPCulledSubMesh = type { <2 x i32> }
%"class.RWStructuredBuffer<GPCulledSubMesh>" = type { %struct.GPCulledSubMesh }
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

define void @cluster_culling_pass_two_pass_retest() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %25 = alloca [8 x float], align 4
  %26 = alloca [8 x float], align 4
  %27 = alloca [8 x float], align 4
  %28 = shl i32 %23, 2
  %29 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %28, i32 undef)  ; BufferLoad(srv,index,wot)
  %30 = extractvalue %dx.types.ResRet.i32 %29, 0
  %31 = and i32 %30, 65535
  %32 = and i32 %30, 2097152
  %33 = and i32 %30, 4194304
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48, !dx.controlflow.hints !36

; <label>:35                                      ; preds = %0
  %36 = shl nuw nsw i32 %31, 3
  %37 = or i32 %36, 5242880
  %38 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %37, i32 undef)  ; BufferLoad(srv,index,wot)
  %39 = extractvalue %dx.types.ResRet.i32 %38, 0
  %40 = extractvalue %dx.types.ResRet.i32 %38, 1
  %41 = and i32 %39, 65535
  %42 = lshr i32 %39, 16
  %43 = and i32 %40, 16777215
  %44 = lshr i32 %40, 24
  %45 = lshr i32 %40, 25
  %46 = and i32 %45, 2
  %47 = xor i32 %46, 3
  br label %64

; <label>:48                                      ; preds = %0
  %49 = mul nuw nsw i32 %31, 12
  %50 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %49, i32 undef)  ; BufferLoad(srv,index,wot)
  %51 = extractvalue %dx.types.ResRet.i32 %50, 0
  %52 = extractvalue %dx.types.ResRet.i32 %50, 1
  %53 = extractvalue %dx.types.ResRet.i32 %50, 2
  %54 = lshr i32 %51, 28
  %55 = and i32 %52, 65535
  %56 = shl nuw nsw i32 %54, 16
  %57 = or i32 %56, %55
  %58 = and i32 %51, 268435455
  %59 = lshr i32 %52, 16
  %60 = and i32 %53, 15
  %61 = lshr i32 %53, 4
  %62 = and i32 %61, 15
  %63 = lshr i32 %53, 8
  br label %64

; <label>:64                                      ; preds = %48, %35
  %65 = phi i32 [ %43, %35 ], [ 0, %48 ]
  %66 = phi i32 [ %39, %35 ], [ %53, %48 ]
  %67 = phi i32 [ %42, %35 ], [ %63, %48 ]
  %68 = phi i32 [ %44, %35 ], [ %62, %48 ]
  %69 = phi i32 [ %47, %35 ], [ %60, %48 ]
  %70 = phi i32 [ %41, %35 ], [ %59, %48 ]
  %71 = phi i32 [ 0, %35 ], [ %57, %48 ]
  %72 = phi i32 [ 0, %35 ], [ %58, %48 ]
  %73 = lshr i32 %66, 24
  br i1 %34, label %74, label %81, !dx.controlflow.hints !37

; <label>:74                                      ; preds = %64
  %75 = shl nuw nsw i32 %31, 4
  %76 = add nuw nsw i32 %75, 5767168
  %77 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %76, i32 undef)  ; BufferLoad(srv,index,wot)
  %78 = extractvalue %dx.types.ResRet.i32 %77, 0
  %79 = extractvalue %dx.types.ResRet.i32 %77, 2
  %80 = extractvalue %dx.types.ResRet.i32 %77, 3
  br label %88

; <label>:81                                      ; preds = %64
  %82 = mul nuw nsw i32 %31, 12
  %83 = add nuw nsw i32 %82, 1572864
  %84 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %83, i32 undef)  ; BufferLoad(srv,index,wot)
  %85 = extractvalue %dx.types.ResRet.i32 %84, 1
  %86 = extractvalue %dx.types.ResRet.i32 %84, 2
  %87 = lshr i32 %85, 16
  br label %88

; <label>:88                                      ; preds = %81, %74
  %89 = phi i32 [ %80, %74 ], [ 0, %81 ]
  %90 = phi i32 [ %79, %74 ], [ %86, %81 ]
  %91 = phi i32 [ %78, %74 ], [ %87, %81 ]
  %92 = lshr i32 %30, 10
  %93 = and i32 %92, 960
  %94 = call i32 @dx.op.binary.i32(i32 40, i32 %70, i32 %93)  ; UMin(a,b)
  %95 = sub i32 %70, %94
  %96 = icmp ult i32 %24, %95
  %97 = add i32 %94, %24
  %98 = and i32 %30, 1048576
  %99 = shl nuw nsw i32 %31, 2
  %100 = add nuw nsw i32 %99, 212992
  %101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %100, i32 undef)  ; BufferLoad(srv,index,wot)
  %102 = extractvalue %dx.types.ResRet.i32 %101, 0
  %103 = icmp eq i32 %69, 2
  %104 = icmp ne i32 %102, 0
  %105 = and i1 %103, %104
  %106 = lshr i32 %24, 5
  %107 = shl nuw nsw i32 %106, 2
  %108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %23, i32 %107)  ; BufferLoad(srv,index,wot)
  %109 = extractvalue %dx.types.ResRet.i32 %108, 0
  %110 = and i32 %24, 31
  %111 = shl i32 1, %110
  %112 = and i32 %109, %111
  %113 = icmp eq i32 %112, 0
  %114 = lshr i32 %91, 5
  %115 = and i32 %91, 31
  %116 = shl nuw nsw i32 %114, 2
  %117 = add nuw nsw i32 %116, 2048
  %118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %117, i32 undef)  ; BufferLoad(srv,index,wot)
  %119 = extractvalue %dx.types.ResRet.i32 %118, 0
  %120 = shl i32 1, %115
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  %123 = or i1 %113, %122
  %124 = and i1 %96, %123
  %125 = icmp ne i32 %98, 0
  %126 = or i1 %125, %105
  %127 = and i1 %126, %124
  br i1 %127, label %128, label %1296, !dx.controlflow.hints !38

; <label>:128                                     ; preds = %88
  %129 = add i32 %97, %90
  %130 = shl i32 %129, 2
  %131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %130, i32 undef)  ; BufferLoad(srv,index,wot)
  %132 = extractvalue %dx.types.ResRet.i32 %131, 0
  %133 = shl i32 %132, 5
  %134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %133, i32 undef)  ; BufferLoad(srv,index,wot)
  %135 = extractvalue %dx.types.ResRet.i32 %134, 0
  %136 = extractvalue %dx.types.ResRet.i32 %134, 1
  %137 = extractvalue %dx.types.ResRet.i32 %134, 2
  %138 = extractvalue %dx.types.ResRet.i32 %134, 3
  %139 = or i32 %133, 16
  %140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %139, i32 undef)  ; BufferLoad(srv,index,wot)
  %141 = extractvalue %dx.types.ResRet.i32 %140, 0
  %142 = extractvalue %dx.types.ResRet.i32 %140, 1
  %143 = extractvalue %dx.types.ResRet.i32 %140, 2
  %144 = bitcast i32 %142 to float
  %145 = bitcast i32 %143 to float
  br i1 %103, label %146, label %226, !dx.controlflow.hints !39

; <label>:146                                     ; preds = %128
  %147 = shl nsw i32 %71, 5
  %148 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %147, i32 undef)  ; BufferLoad(srv,index,wot)
  %149 = extractvalue %dx.types.ResRet.f32 %148, 0
  %150 = extractvalue %dx.types.ResRet.f32 %148, 1
  %151 = extractvalue %dx.types.ResRet.f32 %148, 2
  %152 = or i32 %147, 16
  %153 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %152, i32 undef)  ; BufferLoad(srv,index,wot)
  %154 = extractvalue %dx.types.ResRet.f32 %153, 0
  %155 = extractvalue %dx.types.ResRet.f32 %153, 1
  %156 = extractvalue %dx.types.ResRet.f32 %153, 2
  %157 = mul i32 %72, 24
  %158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %157, i32 undef)  ; BufferLoad(srv,index,wot)
  %159 = extractvalue %dx.types.ResRet.f32 %158, 0
  %160 = extractvalue %dx.types.ResRet.f32 %158, 1
  %161 = extractvalue %dx.types.ResRet.f32 %158, 2
  %162 = add i32 %157, 12
  %163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %162, i32 undef)  ; BufferLoad(srv,index,wot)
  %164 = extractvalue %dx.types.ResRet.i32 %163, 0
  %165 = extractvalue %dx.types.ResRet.i32 %163, 1
  %166 = add i32 %157, 20
  %167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %166, i32 undef)  ; BufferLoad(srv,index,wot)
  %168 = extractvalue %dx.types.ResRet.i32 %167, 0
  %169 = and i32 %164, 65535
  %170 = uitofp i32 %169 to float
  %171 = lshr i32 %164, 16
  %172 = uitofp i32 %171 to float
  %173 = and i32 %165, 65535
  %174 = uitofp i32 %173 to float
  %175 = lshr i32 %165, 16
  %176 = uitofp i32 %175 to float
  %177 = fmul fast float %170, 0x3F00001000000000
  %178 = fmul fast float %172, 0x3F00001000000000
  %179 = fmul fast float %174, 0x3F00001000000000
  %180 = fmul fast float %176, 0x3F00001000000000
  %181 = fadd fast float %177, -1.000000e+00
  %182 = fadd fast float %178, -1.000000e+00
  %183 = fadd fast float %179, -1.000000e+00
  %184 = fadd fast float %180, -1.000000e+00
  %185 = and i32 %168, 65535
  %186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %185)  ; LegacyF16ToF32(value)
  %187 = fmul fast float %172, 0x3F10001000000000
  %188 = fadd fast float %187, -2.000000e+00
  %189 = fmul fast float %188, %182
  %190 = fsub fast float 1.000000e+00, %189
  %191 = fmul fast float %174, 0x3F10001000000000
  %192 = fadd fast float %191, -2.000000e+00
  %193 = fmul fast float %192, %183
  %194 = fsub fast float %190, %193
  %195 = fmul fast float %170, 0x3F10001000000000
  %196 = fadd fast float %195, -2.000000e+00
  %197 = fmul fast float %196, %182
  %198 = fmul fast float %192, %184
  %199 = fsub fast float %197, %198
  %200 = fmul fast float %196, %183
  %201 = fmul fast float %188, %184
  %202 = fadd fast float %200, %201
  %203 = fadd fast float %197, %198
  %204 = fmul fast float %196, %181
  %205 = fsub fast float 1.000000e+00, %204
  %206 = fsub fast float %205, %193
  %207 = fmul fast float %188, %183
  %208 = fmul fast float %196, %184
  %209 = fsub fast float %207, %208
  %210 = fsub fast float %200, %201
  %211 = fadd fast float %207, %208
  %212 = fsub fast float %205, %189
  %213 = fmul fast float %194, %186
  %214 = fmul fast float %203, %186
  %215 = fmul fast float %210, %186
  %216 = fmul fast float %199, %186
  %217 = fmul fast float %206, %186
  %218 = fmul fast float %211, %186
  %219 = fmul fast float %202, %186
  %220 = fmul fast float %209, %186
  %221 = fmul fast float %212, %186
  %222 = fmul fast float %186, %186
  %223 = fdiv fast float 1.000000e+00, %222
  %224 = call float @dx.op.binary.f32(i32 35, float %155, float %156), !dx.precise !40  ; FMax(a,b)
  %225 = call float @dx.op.binary.f32(i32 35, float %154, float %224), !dx.precise !40  ; FMax(a,b)
  br label %447

; <label>:226                                     ; preds = %128
  %227 = icmp eq i32 %69, 0
  br i1 %227, label %228, label %350, !dx.controlflow.hints !41

; <label>:228                                     ; preds = %226
  %229 = and i32 %68, 1
  %230 = icmp eq i32 %229, 0
  %231 = shl i32 %72, 6
  %232 = add i32 %231, %32
  %233 = or i32 %232, 16
  %234 = or i32 %232, 32
  %235 = or i32 %232, 48
  br i1 %230, label %254, label %236, !dx.controlflow.hints !42

; <label>:236                                     ; preds = %228
  %237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 3
  %239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.i32 %239, 0
  %241 = extractvalue %dx.types.ResRet.i32 %239, 1
  %242 = extractvalue %dx.types.ResRet.i32 %239, 2
  %243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = extractvalue %dx.types.ResRet.i32 %243, 1
  %246 = extractvalue %dx.types.ResRet.i32 %243, 2
  %247 = bitcast i32 %238 to float
  %248 = bitcast i32 %240 to float
  %249 = bitcast i32 %241 to float
  %250 = bitcast i32 %242 to float
  %251 = bitcast i32 %244 to float
  %252 = bitcast i32 %245 to float
  %253 = bitcast i32 %246 to float
  br label %447

; <label>:254                                     ; preds = %228
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %232, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = extractvalue %dx.types.ResRet.i32 %255, 1
  %258 = extractvalue %dx.types.ResRet.i32 %255, 2
  %259 = extractvalue %dx.types.ResRet.i32 %255, 3
  %260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.i32 %260, 0
  %262 = extractvalue %dx.types.ResRet.i32 %260, 1
  %263 = extractvalue %dx.types.ResRet.i32 %260, 2
  %264 = extractvalue %dx.types.ResRet.i32 %260, 3
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = extractvalue %dx.types.ResRet.i32 %265, 1
  %268 = extractvalue %dx.types.ResRet.i32 %265, 2
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = extractvalue %dx.types.ResRet.i32 %269, 1
  %272 = extractvalue %dx.types.ResRet.i32 %269, 2
  %273 = extractvalue %dx.types.ResRet.i32 %269, 3
  %274 = bitcast i32 %256 to float
  %275 = bitcast i32 %257 to float
  %276 = bitcast i32 %258 to float
  %277 = bitcast i32 %259 to float
  %278 = bitcast i32 %261 to float
  %279 = bitcast i32 %262 to float
  %280 = bitcast i32 %263 to float
  %281 = bitcast i32 %264 to float
  %282 = bitcast i32 %270 to float
  %283 = bitcast i32 %271 to float
  %284 = bitcast i32 %272 to float
  %285 = bitcast i32 %273 to float
  %286 = and i32 %266, 65535
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = lshr i32 %266, 16
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = and i32 %267, 65535
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = lshr i32 %267, 16
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = and i32 %268, 65535
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = lshr i32 %268, 16
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = fmul fast float %275, %275
  %299 = fmul fast float %298, 2.000000e+00
  %300 = fsub fast float 1.000000e+00, %299
  %301 = fmul fast float %276, %276
  %302 = fmul fast float %301, 2.000000e+00
  %303 = fsub fast float %300, %302
  %304 = fmul fast float %274, 2.000000e+00
  %305 = fmul fast float %304, %275
  %306 = fmul fast float %276, 2.000000e+00
  %307 = fmul fast float %306, %277
  %308 = fsub fast float %305, %307
  %309 = fmul fast float %276, %274
  %310 = fmul fast float %277, %275
  %311 = fadd fast float %309, %310
  %312 = fmul fast float %311, 2.000000e+00
  %313 = fmul fast float %275, %274
  %314 = fmul fast float %277, %276
  %315 = fadd fast float %313, %314
  %316 = fmul fast float %315, 2.000000e+00
  %317 = fmul fast float %274, %274
  %318 = fmul fast float %317, 2.000000e+00
  %319 = fsub fast float 1.000000e+00, %318
  %320 = fsub fast float %319, %302
  %321 = fmul fast float %275, 2.000000e+00
  %322 = fmul fast float %321, %276
  %323 = fmul fast float %304, %277
  %324 = fsub fast float %322, %323
  %325 = fmul fast float %304, %276
  %326 = fmul fast float %321, %277
  %327 = fsub fast float %325, %326
  %328 = fmul fast float %276, %275
  %329 = fmul fast float %277, %274
  %330 = fadd fast float %328, %329
  %331 = fmul fast float %330, 2.000000e+00
  %332 = fsub fast float %319, %299
  %333 = fmul fast float %303, %281
  %334 = fmul fast float %316, %281
  %335 = fmul fast float %327, %281
  %336 = fmul fast float %308, %281
  %337 = fmul fast float %320, %281
  %338 = fmul fast float %331, %281
  %339 = fmul fast float %312, %281
  %340 = fmul fast float %324, %281
  %341 = fmul fast float %332, %281
  %342 = fmul fast float %281, %281
  %343 = fdiv fast float 1.000000e+00, %342
  %344 = and i32 %68, 2
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %447, label %346, !dx.controlflow.hints !43

; <label>:346                                     ; preds = %254
  %347 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %348 = extractvalue %dx.types.CBufRet.i32 %347, 3
  %349 = and i32 %348, 1
  br label %447

; <label>:350                                     ; preds = %226
  %351 = icmp eq i32 %69, 3
  br i1 %351, label %352, label %371, !dx.controlflow.hints !44

; <label>:352                                     ; preds = %350
  %353 = mul i32 %89, 24
  %354 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.f32 %354, 0
  %356 = extractvalue %dx.types.ResRet.f32 %354, 1
  %357 = extractvalue %dx.types.ResRet.f32 %354, 2
  %358 = add i32 %353, 12
  %359 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.f32 %359, 0
  %361 = extractvalue %dx.types.ResRet.f32 %359, 1
  %362 = extractvalue %dx.types.ResRet.f32 %359, 2
  %363 = shl nuw nsw i32 %65, 7
  %364 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.f32 %364, 0
  %366 = extractvalue %dx.types.ResRet.f32 %364, 1
  %367 = extractvalue %dx.types.ResRet.f32 %364, 2
  %368 = or i32 %363, 12
  %369 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.f32 %369, 0
  br label %447

; <label>:371                                     ; preds = %350
  %372 = icmp eq i32 %69, 1
  br i1 %372, label %373, label %447, !dx.controlflow.hints !45

; <label>:373                                     ; preds = %371
  %374 = shl nuw nsw i32 %31, 6
  %375 = or i32 %32, 1572864
  %376 = add nuw nsw i32 %375, %374
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = extractvalue %dx.types.ResRet.i32 %377, 1
  %380 = extractvalue %dx.types.ResRet.i32 %377, 2
  %381 = extractvalue %dx.types.ResRet.i32 %377, 3
  %382 = or i32 %376, 16
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = extractvalue %dx.types.ResRet.i32 %383, 1
  %386 = extractvalue %dx.types.ResRet.i32 %383, 2
  %387 = bitcast i32 %378 to float
  %388 = bitcast i32 %379 to float
  %389 = bitcast i32 %380 to float
  %390 = bitcast i32 %381 to float
  %391 = bitcast i32 %384 to float
  %392 = bitcast i32 %385 to float
  %393 = bitcast i32 %386 to float
  %394 = mul i32 %89, 24
  %395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.f32 %395, 0
  %397 = extractvalue %dx.types.ResRet.f32 %395, 1
  %398 = extractvalue %dx.types.ResRet.f32 %395, 2
  %399 = add i32 %394, 12
  %400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.f32 %400, 0
  %402 = extractvalue %dx.types.ResRet.f32 %400, 1
  %403 = extractvalue %dx.types.ResRet.f32 %400, 2
  %404 = fmul fast float %388, %388
  %405 = fmul fast float %404, 2.000000e+00
  %406 = fsub fast float 1.000000e+00, %405
  %407 = fmul fast float %389, %389
  %408 = fmul fast float %407, 2.000000e+00
  %409 = fsub fast float %406, %408
  %410 = fmul fast float %387, 2.000000e+00
  %411 = fmul fast float %410, %388
  %412 = fmul fast float %389, 2.000000e+00
  %413 = fmul fast float %412, %390
  %414 = fsub fast float %411, %413
  %415 = fmul fast float %389, %387
  %416 = fmul fast float %390, %388
  %417 = fadd fast float %415, %416
  %418 = fmul fast float %417, 2.000000e+00
  %419 = fmul fast float %388, %387
  %420 = fmul fast float %390, %389
  %421 = fadd fast float %419, %420
  %422 = fmul fast float %421, 2.000000e+00
  %423 = fmul fast float %387, %387
  %424 = fmul fast float %423, 2.000000e+00
  %425 = fsub fast float 1.000000e+00, %424
  %426 = fsub fast float %425, %408
  %427 = fmul fast float %388, 2.000000e+00
  %428 = fmul fast float %427, %389
  %429 = fmul fast float %410, %390
  %430 = fsub fast float %428, %429
  %431 = fmul fast float %410, %389
  %432 = fmul fast float %427, %390
  %433 = fsub fast float %431, %432
  %434 = fmul fast float %389, %388
  %435 = fmul fast float %390, %387
  %436 = fadd fast float %434, %435
  %437 = fmul fast float %436, 2.000000e+00
  %438 = fsub fast float %425, %405
  %439 = shl nuw nsw i32 %65, 7
  %440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.f32 %440, 0
  %442 = extractvalue %dx.types.ResRet.f32 %440, 1
  %443 = extractvalue %dx.types.ResRet.f32 %440, 2
  %444 = or i32 %439, 12
  %445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.f32 %445, 0
  br label %447

; <label>:447                                     ; preds = %373, %371, %352, %346, %254, %236, %146
  %448 = phi float [ %154, %146 ], [ %248, %236 ], [ %293, %346 ], [ %293, %254 ], [ %360, %352 ], [ %401, %373 ], [ 0.000000e+00, %371 ]
  %449 = phi float [ %155, %146 ], [ %249, %236 ], [ %295, %346 ], [ %295, %254 ], [ %361, %352 ], [ %402, %373 ], [ 0.000000e+00, %371 ]
  %450 = phi float [ %156, %146 ], [ %250, %236 ], [ %297, %346 ], [ %297, %254 ], [ %362, %352 ], [ %403, %373 ], [ 0.000000e+00, %371 ]
  %451 = phi float [ %149, %146 ], [ %251, %236 ], [ %287, %346 ], [ %287, %254 ], [ %355, %352 ], [ %396, %373 ], [ 0.000000e+00, %371 ]
  %452 = phi float [ %150, %146 ], [ %252, %236 ], [ %289, %346 ], [ %289, %254 ], [ %356, %352 ], [ %397, %373 ], [ 0.000000e+00, %371 ]
  %453 = phi float [ %151, %146 ], [ %253, %236 ], [ %291, %346 ], [ %291, %254 ], [ %357, %352 ], [ %398, %373 ], [ 0.000000e+00, %371 ]
  %454 = phi float [ %213, %146 ], [ 1.000000e+00, %236 ], [ %333, %346 ], [ %333, %254 ], [ 1.000000e+00, %352 ], [ %409, %373 ], [ 0.000000e+00, %371 ]
  %455 = phi float [ %216, %146 ], [ 0.000000e+00, %236 ], [ %336, %346 ], [ %336, %254 ], [ 0.000000e+00, %352 ], [ %414, %373 ], [ 0.000000e+00, %371 ]
  %456 = phi float [ %219, %146 ], [ 0.000000e+00, %236 ], [ %339, %346 ], [ %339, %254 ], [ 0.000000e+00, %352 ], [ %418, %373 ], [ 0.000000e+00, %371 ]
  %457 = phi float [ %159, %146 ], [ 0.000000e+00, %236 ], [ %278, %346 ], [ %278, %254 ], [ 0.000000e+00, %352 ], [ %391, %373 ], [ 0.000000e+00, %371 ]
  %458 = phi float [ %214, %146 ], [ 0.000000e+00, %236 ], [ %334, %346 ], [ %334, %254 ], [ 0.000000e+00, %352 ], [ %422, %373 ], [ 0.000000e+00, %371 ]
  %459 = phi float [ %217, %146 ], [ 1.000000e+00, %236 ], [ %337, %346 ], [ %337, %254 ], [ 1.000000e+00, %352 ], [ %426, %373 ], [ 0.000000e+00, %371 ]
  %460 = phi float [ %220, %146 ], [ 0.000000e+00, %236 ], [ %340, %346 ], [ %340, %254 ], [ 0.000000e+00, %352 ], [ %430, %373 ], [ 0.000000e+00, %371 ]
  %461 = phi float [ %160, %146 ], [ 0.000000e+00, %236 ], [ %279, %346 ], [ %279, %254 ], [ 0.000000e+00, %352 ], [ %392, %373 ], [ 0.000000e+00, %371 ]
  %462 = phi float [ %215, %146 ], [ 0.000000e+00, %236 ], [ %335, %346 ], [ %335, %254 ], [ 0.000000e+00, %352 ], [ %433, %373 ], [ 0.000000e+00, %371 ]
  %463 = phi float [ %218, %146 ], [ 0.000000e+00, %236 ], [ %338, %346 ], [ %338, %254 ], [ 0.000000e+00, %352 ], [ %437, %373 ], [ 0.000000e+00, %371 ]
  %464 = phi float [ %221, %146 ], [ 1.000000e+00, %236 ], [ %341, %346 ], [ %341, %254 ], [ 1.000000e+00, %352 ], [ %438, %373 ], [ 0.000000e+00, %371 ]
  %465 = phi float [ %161, %146 ], [ 0.000000e+00, %236 ], [ %280, %346 ], [ %280, %254 ], [ 0.000000e+00, %352 ], [ %393, %373 ], [ 0.000000e+00, %371 ]
  %466 = phi float [ 1.000000e+00, %146 ], [ 1.000000e+00, %236 ], [ 1.000000e+00, %346 ], [ 1.000000e+00, %254 ], [ 1.000000e+00, %352 ], [ 1.000000e+00, %373 ], [ 0.000000e+00, %371 ]
  %467 = phi float [ %223, %146 ], [ 1.000000e+00, %236 ], [ %343, %346 ], [ %343, %254 ], [ 1.000000e+00, %352 ], [ 1.000000e+00, %373 ], [ 0.000000e+00, %371 ]
  %468 = phi float [ %149, %146 ], [ 0.000000e+00, %236 ], [ %282, %346 ], [ %282, %254 ], [ %365, %352 ], [ %441, %373 ], [ 0.000000e+00, %371 ]
  %469 = phi float [ %150, %146 ], [ 0.000000e+00, %236 ], [ %283, %346 ], [ %283, %254 ], [ %366, %352 ], [ %442, %373 ], [ 0.000000e+00, %371 ]
  %470 = phi float [ %151, %146 ], [ 0.000000e+00, %236 ], [ %284, %346 ], [ %284, %254 ], [ %367, %352 ], [ %443, %373 ], [ 0.000000e+00, %371 ]
  %471 = phi float [ %225, %146 ], [ %247, %236 ], [ %285, %346 ], [ %285, %254 ], [ %370, %352 ], [ %446, %373 ], [ 0.000000e+00, %371 ]
  %472 = phi i32 [ 1, %146 ], [ 0, %236 ], [ %349, %346 ], [ 1, %254 ], [ 1, %352 ], [ 1, %373 ], [ 1, %371 ]
  %473 = shl nuw nsw i32 %73, 6
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = extractvalue %dx.types.ResRet.i32 %474, 1
  %477 = extractvalue %dx.types.ResRet.i32 %474, 3
  %478 = bitcast i32 %475 to float
  %479 = bitcast i32 %476 to float
  %480 = bitcast i32 %477 to float
  %481 = or i32 %473, 16
  %482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %481, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.i32 %482, 0
  %484 = extractvalue %dx.types.ResRet.i32 %482, 1
  %485 = extractvalue %dx.types.ResRet.i32 %482, 3
  %486 = bitcast i32 %483 to float
  %487 = bitcast i32 %484 to float
  %488 = bitcast i32 %485 to float
  %489 = or i32 %473, 32
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = extractvalue %dx.types.ResRet.i32 %490, 1
  %493 = extractvalue %dx.types.ResRet.i32 %490, 3
  %494 = bitcast i32 %491 to float
  %495 = bitcast i32 %492 to float
  %496 = bitcast i32 %493 to float
  %497 = or i32 %473, 48
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = extractvalue %dx.types.ResRet.i32 %498, 1
  %501 = extractvalue %dx.types.ResRet.i32 %498, 3
  %502 = bitcast i32 %499 to float
  %503 = bitcast i32 %500 to float
  %504 = bitcast i32 %501 to float
  %505 = shl nuw nsw i32 %73, 4
  %506 = or i32 %505, 4096
  %507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.i32 %507, 0
  %509 = extractvalue %dx.types.ResRet.i32 %507, 1
  %510 = extractvalue %dx.types.ResRet.i32 %507, 2
  %511 = extractvalue %dx.types.ResRet.i32 %507, 3
  %512 = icmp eq i32 %511, 1
  %513 = bitcast i32 %508 to float
  %514 = bitcast i32 %509 to float
  %515 = bitcast i32 %510 to float
  %516 = add nuw nsw i32 %505, 5120
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = extractvalue %dx.types.ResRet.i32 %517, 1
  %520 = bitcast i32 %518 to float
  %521 = bitcast i32 %519 to float
  %522 = bitcast float %457 to i32
  %523 = bitcast float %461 to i32
  %524 = bitcast float %465 to i32
  %525 = select i1 %512, i32 0, i32 %508
  %526 = select i1 %512, i32 0, i32 %509
  %527 = select i1 %512, i32 0, i32 %510
  %528 = sub i32 %522, %525
  %529 = sub i32 %523, %526
  %530 = sub i32 %524, %527
  %531 = sitofp i32 %528 to float
  %532 = sitofp i32 %529 to float
  %533 = sitofp i32 %530 to float
  %534 = fmul fast float %531, 0x3F30000000000000
  %535 = fmul fast float %532, 0x3F30000000000000
  %536 = fmul fast float %533, 0x3F30000000000000
  %537 = fmul fast float %478, %454
  %538 = call float @dx.op.tertiary.f32(i32 46, float %458, float %486, float %537)  ; FMad(a,b,c)
  %539 = call float @dx.op.tertiary.f32(i32 46, float %462, float %494, float %538)  ; FMad(a,b,c)
  %540 = fmul fast float %479, %454
  %541 = call float @dx.op.tertiary.f32(i32 46, float %458, float %487, float %540)  ; FMad(a,b,c)
  %542 = call float @dx.op.tertiary.f32(i32 46, float %462, float %495, float %541)  ; FMad(a,b,c)
  %543 = fmul fast float %480, %454
  %544 = call float @dx.op.tertiary.f32(i32 46, float %458, float %488, float %543)  ; FMad(a,b,c)
  %545 = call float @dx.op.tertiary.f32(i32 46, float %462, float %496, float %544)  ; FMad(a,b,c)
  %546 = fmul fast float %478, %455
  %547 = call float @dx.op.tertiary.f32(i32 46, float %459, float %486, float %546)  ; FMad(a,b,c)
  %548 = call float @dx.op.tertiary.f32(i32 46, float %463, float %494, float %547)  ; FMad(a,b,c)
  %549 = fmul fast float %479, %455
  %550 = call float @dx.op.tertiary.f32(i32 46, float %459, float %487, float %549)  ; FMad(a,b,c)
  %551 = call float @dx.op.tertiary.f32(i32 46, float %463, float %495, float %550)  ; FMad(a,b,c)
  %552 = fmul fast float %480, %455
  %553 = call float @dx.op.tertiary.f32(i32 46, float %459, float %488, float %552)  ; FMad(a,b,c)
  %554 = call float @dx.op.tertiary.f32(i32 46, float %463, float %496, float %553)  ; FMad(a,b,c)
  %555 = fmul fast float %478, %456
  %556 = call float @dx.op.tertiary.f32(i32 46, float %460, float %486, float %555)  ; FMad(a,b,c)
  %557 = call float @dx.op.tertiary.f32(i32 46, float %464, float %494, float %556)  ; FMad(a,b,c)
  %558 = fmul fast float %479, %456
  %559 = call float @dx.op.tertiary.f32(i32 46, float %460, float %487, float %558)  ; FMad(a,b,c)
  %560 = call float @dx.op.tertiary.f32(i32 46, float %464, float %495, float %559)  ; FMad(a,b,c)
  %561 = fmul fast float %480, %456
  %562 = call float @dx.op.tertiary.f32(i32 46, float %460, float %488, float %561)  ; FMad(a,b,c)
  %563 = call float @dx.op.tertiary.f32(i32 46, float %464, float %496, float %562)  ; FMad(a,b,c)
  %564 = fmul fast float %534, %478
  %565 = call float @dx.op.tertiary.f32(i32 46, float %535, float %486, float %564)  ; FMad(a,b,c)
  %566 = call float @dx.op.tertiary.f32(i32 46, float %536, float %494, float %565)  ; FMad(a,b,c)
  %567 = call float @dx.op.tertiary.f32(i32 46, float %466, float %502, float %566)  ; FMad(a,b,c)
  %568 = fmul fast float %534, %479
  %569 = call float @dx.op.tertiary.f32(i32 46, float %535, float %487, float %568)  ; FMad(a,b,c)
  %570 = call float @dx.op.tertiary.f32(i32 46, float %536, float %495, float %569)  ; FMad(a,b,c)
  %571 = call float @dx.op.tertiary.f32(i32 46, float %466, float %503, float %570)  ; FMad(a,b,c)
  %572 = fmul fast float %534, %480
  %573 = call float @dx.op.tertiary.f32(i32 46, float %535, float %488, float %572)  ; FMad(a,b,c)
  %574 = call float @dx.op.tertiary.f32(i32 46, float %536, float %496, float %573)  ; FMad(a,b,c)
  %575 = call float @dx.op.tertiary.f32(i32 46, float %466, float %504, float %574)  ; FMad(a,b,c)
  br i1 %105, label %576, label %617, !dx.controlflow.hints !46

; <label>:576                                     ; preds = %447
  %577 = sub i32 0, %525
  %578 = sub i32 0, %526
  %579 = sub i32 0, %527
  %580 = sitofp i32 %577 to float
  %581 = sitofp i32 %578 to float
  %582 = sitofp i32 %579 to float
  %583 = fmul fast float %580, 0x3F30000000000000
  %584 = fmul fast float %581, 0x3F30000000000000
  %585 = fmul fast float %582, 0x3F30000000000000
  %586 = fmul fast float %583, %478
  %587 = call float @dx.op.tertiary.f32(i32 46, float %584, float %486, float %586)  ; FMad(a,b,c)
  %588 = call float @dx.op.tertiary.f32(i32 46, float %585, float %494, float %587)  ; FMad(a,b,c)
  %589 = fadd fast float %588, %502
  %590 = fmul fast float %583, %479
  %591 = call float @dx.op.tertiary.f32(i32 46, float %584, float %487, float %590)  ; FMad(a,b,c)
  %592 = call float @dx.op.tertiary.f32(i32 46, float %585, float %495, float %591)  ; FMad(a,b,c)
  %593 = fadd fast float %592, %503
  %594 = fmul fast float %583, %480
  %595 = call float @dx.op.tertiary.f32(i32 46, float %584, float %488, float %594)  ; FMad(a,b,c)
  %596 = call float @dx.op.tertiary.f32(i32 46, float %585, float %496, float %595)  ; FMad(a,b,c)
  %597 = fadd fast float %596, %504
  %598 = mul i32 %97, 6
  %599 = add i32 %598, 2
  %600 = add i32 %599, %102
  %601 = shl i32 %600, 2
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = extractvalue %dx.types.ResRet.i32 %602, 1
  %605 = extractvalue %dx.types.ResRet.i32 %602, 2
  %606 = bitcast i32 %603 to float
  %607 = bitcast i32 %604 to float
  %608 = bitcast i32 %605 to float
  %609 = add i32 %601, 12
  %610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.i32 %610, 0
  %612 = extractvalue %dx.types.ResRet.i32 %610, 1
  %613 = extractvalue %dx.types.ResRet.i32 %610, 2
  %614 = bitcast i32 %611 to float
  %615 = bitcast i32 %612 to float
  %616 = bitcast i32 %613 to float
  br label %767

; <label>:617                                     ; preds = %447
  %618 = icmp eq i32 %472, 0
  br i1 %618, label %767, label %619, !dx.controlflow.hints !47

; <label>:619                                     ; preds = %617
  %620 = and i32 %135, 2097151
  %621 = uitofp i32 %620 to float
  %622 = lshr i32 %135, 21
  %623 = shl i32 %136, 11
  %624 = and i32 %623, 2095104
  %625 = or i32 %624, %622
  %626 = uitofp i32 %625 to float
  %627 = lshr i32 %136, 10
  %628 = and i32 %627, 2097151
  %629 = uitofp i32 %628 to float
  br i1 %34, label %640, label %630, !dx.controlflow.hints !48

; <label>:630                                     ; preds = %619
  %631 = fdiv float %621, 2.097151e+06
  %632 = fdiv float %626, 2.097151e+06
  %633 = fdiv float %629, 2.097151e+06
  %634 = fmul float %631, 2.000000e+00
  %635 = fmul float %632, 2.000000e+00
  %636 = fmul float %633, 2.000000e+00
  %637 = fadd float %634, -1.000000e+00
  %638 = fadd float %635, -1.000000e+00
  %639 = fadd float %636, -1.000000e+00
  br label %640

; <label>:640                                     ; preds = %630, %619
  %641 = phi float [ %637, %630 ], [ %621, %619 ]
  %642 = phi float [ %638, %630 ], [ %626, %619 ]
  %643 = phi float [ %639, %630 ], [ %629, %619 ]
  %644 = fmul float %471, %643
  %645 = fadd float %470, %644
  %646 = fmul float %471, %642
  %647 = fadd float %469, %646
  %648 = fmul float %471, %641
  %649 = fadd float %468, %648
  %650 = and i32 %137, 2097151
  %651 = uitofp i32 %650 to float
  %652 = lshr i32 %137, 21
  %653 = shl i32 %138, 11
  %654 = and i32 %653, 2095104
  %655 = or i32 %654, %652
  %656 = uitofp i32 %655 to float
  %657 = lshr i32 %138, 10
  %658 = and i32 %657, 2097151
  %659 = uitofp i32 %658 to float
  br i1 %34, label %670, label %660, !dx.controlflow.hints !48

; <label>:660                                     ; preds = %640
  %661 = fdiv float %651, 2.097151e+06
  %662 = fdiv float %656, 2.097151e+06
  %663 = fdiv float %659, 2.097151e+06
  %664 = fmul float %661, 2.000000e+00
  %665 = fmul float %662, 2.000000e+00
  %666 = fmul float %663, 2.000000e+00
  %667 = fadd float %664, -1.000000e+00
  %668 = fadd float %665, -1.000000e+00
  %669 = fadd float %666, -1.000000e+00
  br label %670

; <label>:670                                     ; preds = %660, %640
  %671 = phi float [ %667, %660 ], [ %651, %640 ]
  %672 = phi float [ %668, %660 ], [ %656, %640 ]
  %673 = phi float [ %669, %660 ], [ %659, %640 ]
  %674 = fmul float %471, %673
  %675 = fadd float %470, %674
  %676 = fmul float %471, %672
  %677 = fadd float %469, %676
  %678 = fmul float %471, %671
  %679 = fadd float %468, %678
  %680 = fadd fast float %679, %649
  %681 = fadd fast float %677, %647
  %682 = fadd fast float %675, %645
  %683 = fmul fast float %680, 5.000000e-01
  %684 = fmul fast float %681, 5.000000e-01
  %685 = fmul fast float %682, 5.000000e-01
  %686 = fsub fast float %671, %641
  %687 = fsub fast float %672, %642
  %688 = fsub fast float %673, %643
  %689 = fmul fast float %471, 5.000000e-01
  %690 = fmul fast float %689, %686
  %691 = fmul fast float %689, %687
  %692 = fmul fast float %689, %688
  %693 = and i32 %141, 1023
  %694 = uitofp i32 %693 to float
  %695 = lshr i32 %141, 10
  %696 = and i32 %695, 1023
  %697 = uitofp i32 %696 to float
  %698 = lshr i32 %141, 20
  %699 = and i32 %698, 1023
  %700 = uitofp i32 %699 to float
  %701 = fmul fast float %694, 0x3F60040100000000
  %702 = fmul fast float %697, 0x3F60040100000000
  %703 = fmul fast float %700, 0x3F60040100000000
  %704 = fadd fast float %701, -1.000000e+00
  %705 = fadd fast float %702, -1.000000e+00
  %706 = fadd fast float %703, -1.000000e+00
  %707 = fmul fast float %704, %144
  %708 = fmul fast float %705, %144
  %709 = fmul fast float %706, %144
  %710 = and i32 %67, 1
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %767, label %712, !dx.controlflow.hints !49

; <label>:712                                     ; preds = %670
  %713 = fcmp fast ugt float %145, 0.000000e+00
  br i1 %713, label %714, label %764, !dx.controlflow.hints !50

; <label>:714                                     ; preds = %712
  br i1 %512, label %715, label %728, !dx.controlflow.hints !51

; <label>:715                                     ; preds = %714
  %716 = fsub fast float -0.000000e+00, %513
  %717 = fsub fast float -0.000000e+00, %514
  %718 = fsub fast float -0.000000e+00, %515
  %719 = fmul fast float %454, %716
  %720 = call float @dx.op.tertiary.f32(i32 46, float %458, float %717, float %719)  ; FMad(a,b,c)
  %721 = call float @dx.op.tertiary.f32(i32 46, float %462, float %718, float %720)  ; FMad(a,b,c)
  %722 = fmul fast float %455, %716
  %723 = call float @dx.op.tertiary.f32(i32 46, float %459, float %717, float %722)  ; FMad(a,b,c)
  %724 = call float @dx.op.tertiary.f32(i32 46, float %463, float %718, float %723)  ; FMad(a,b,c)
  %725 = fmul fast float %456, %716
  %726 = call float @dx.op.tertiary.f32(i32 46, float %460, float %717, float %725)  ; FMad(a,b,c)
  %727 = call float @dx.op.tertiary.f32(i32 46, float %464, float %718, float %726)  ; FMad(a,b,c)
  br label %753

; <label>:728                                     ; preds = %714
  %729 = fsub fast float -0.000000e+00, %534
  %730 = fsub fast float -0.000000e+00, %535
  %731 = fsub fast float -0.000000e+00, %536
  %732 = fmul fast float %454, %729
  %733 = call float @dx.op.tertiary.f32(i32 46, float %458, float %730, float %732)  ; FMad(a,b,c)
  %734 = call float @dx.op.tertiary.f32(i32 46, float %462, float %731, float %733)  ; FMad(a,b,c)
  %735 = fmul fast float %455, %729
  %736 = call float @dx.op.tertiary.f32(i32 46, float %459, float %730, float %735)  ; FMad(a,b,c)
  %737 = call float @dx.op.tertiary.f32(i32 46, float %463, float %731, float %736)  ; FMad(a,b,c)
  %738 = fmul fast float %456, %729
  %739 = call float @dx.op.tertiary.f32(i32 46, float %460, float %730, float %738)  ; FMad(a,b,c)
  %740 = call float @dx.op.tertiary.f32(i32 46, float %464, float %731, float %739)  ; FMad(a,b,c)
  %741 = fmul fast float %734, %467
  %742 = fmul fast float %737, %467
  %743 = fmul fast float %740, %467
  %744 = fsub fast float -0.000000e+00, %707
  %745 = fsub fast float %744, %683
  %746 = fadd fast float %745, %741
  %747 = fsub fast float -0.000000e+00, %708
  %748 = fsub fast float %747, %684
  %749 = fadd fast float %748, %742
  %750 = fsub fast float -0.000000e+00, %709
  %751 = fsub fast float %750, %685
  %752 = fadd fast float %751, %743
  br label %753

; <label>:753                                     ; preds = %728, %715
  %754 = phi float [ %721, %715 ], [ %746, %728 ]
  %755 = phi float [ %724, %715 ], [ %749, %728 ]
  %756 = phi float [ %727, %715 ], [ %752, %728 ]
  %757 = call float @dx.op.dot3.f32(i32 55, float %754, float %755, float %756, float %754, float %755, float %756)  ; Dot3(ax,ay,az,bx,by,bz)
  %758 = call float @dx.op.unary.f32(i32 25, float %757)  ; Rsqrt(value)
  %759 = fmul fast float %758, %754
  %760 = fmul fast float %758, %755
  %761 = fmul fast float %758, %756
  %762 = call float @dx.op.dot3.f32(i32 55, float %759, float %760, float %761, float %704, float %705, float %706)  ; Dot3(ax,ay,az,bx,by,bz)
  %763 = fcmp fast olt float %762, %145
  br label %764

; <label>:764                                     ; preds = %753, %712
  %765 = phi i1 [ %763, %753 ], [ true, %712 ]
  %766 = zext i1 %765 to i32
  br label %767

; <label>:767                                     ; preds = %764, %670, %617, %576
  %768 = phi i32 [ 1, %576 ], [ %766, %764 ], [ 1, %670 ], [ 1, %617 ]
  %769 = phi float [ %606, %576 ], [ %683, %764 ], [ %683, %670 ], [ %451, %617 ]
  %770 = phi float [ %607, %576 ], [ %684, %764 ], [ %684, %670 ], [ %452, %617 ]
  %771 = phi float [ %608, %576 ], [ %685, %764 ], [ %685, %670 ], [ %453, %617 ]
  %772 = phi float [ %614, %576 ], [ %690, %764 ], [ %690, %670 ], [ %448, %617 ]
  %773 = phi float [ %615, %576 ], [ %691, %764 ], [ %691, %670 ], [ %449, %617 ]
  %774 = phi float [ %616, %576 ], [ %692, %764 ], [ %692, %670 ], [ %450, %617 ]
  %775 = phi float [ %478, %576 ], [ %539, %764 ], [ %539, %670 ], [ %539, %617 ]
  %776 = phi float [ %486, %576 ], [ %548, %764 ], [ %548, %670 ], [ %548, %617 ]
  %777 = phi float [ %494, %576 ], [ %557, %764 ], [ %557, %670 ], [ %557, %617 ]
  %778 = phi float [ %589, %576 ], [ %567, %764 ], [ %567, %670 ], [ %567, %617 ]
  %779 = phi float [ %479, %576 ], [ %542, %764 ], [ %542, %670 ], [ %542, %617 ]
  %780 = phi float [ %487, %576 ], [ %551, %764 ], [ %551, %670 ], [ %551, %617 ]
  %781 = phi float [ %495, %576 ], [ %560, %764 ], [ %560, %670 ], [ %560, %617 ]
  %782 = phi float [ %593, %576 ], [ %571, %764 ], [ %571, %670 ], [ %571, %617 ]
  %783 = phi float [ %480, %576 ], [ %545, %764 ], [ %545, %670 ], [ %545, %617 ]
  %784 = phi float [ %488, %576 ], [ %554, %764 ], [ %554, %670 ], [ %554, %617 ]
  %785 = phi float [ %496, %576 ], [ %563, %764 ], [ %563, %670 ], [ %563, %617 ]
  %786 = phi float [ %597, %576 ], [ %575, %764 ], [ %575, %670 ], [ %575, %617 ]
  %787 = call i1 @dx.op.isSpecialFloat.f32(i32 9, float %769)  ; IsInf(value)
  %788 = call i1 @dx.op.isSpecialFloat.f32(i32 9, float %770)  ; IsInf(value)
  %789 = call i1 @dx.op.isSpecialFloat.f32(i32 9, float %771)  ; IsInf(value)
  %790 = or i1 %787, %788
  %791 = or i1 %790, %789
  %792 = call i1 @dx.op.isSpecialFloat.f32(i32 9, float %772)  ; IsInf(value)
  %793 = call i1 @dx.op.isSpecialFloat.f32(i32 9, float %773)  ; IsInf(value)
  %794 = call i1 @dx.op.isSpecialFloat.f32(i32 9, float %774)  ; IsInf(value)
  %795 = or i1 %792, %793
  %796 = or i1 %795, %794
  %797 = or i1 %791, %796
  br i1 %797, label %1296, label %798, !dx.controlflow.hints !52

; <label>:798                                     ; preds = %767
  %799 = and i32 %67, 32
  %800 = icmp ne i32 %799, 0
  %801 = or i1 %800, %105
  %802 = icmp ne i32 %768, 0
  %803 = and i1 %801, %802
  br i1 %803, label %804, label %1296, !dx.controlflow.hints !53

; <label>:804                                     ; preds = %798
  %805 = and i32 %73, 254
  %806 = icmp eq i32 %805, 62
  %807 = fsub fast float %769, %772
  %808 = fsub fast float %770, %773
  %809 = fsub fast float %771, %774
  %810 = fmul fast float %783, %807
  %811 = call float @dx.op.tertiary.f32(i32 46, float %808, float %784, float %810)  ; FMad(a,b,c)
  %812 = call float @dx.op.tertiary.f32(i32 46, float %809, float %785, float %811)  ; FMad(a,b,c)
  %813 = fadd fast float %812, %786
  %814 = fmul fast float %772, 2.000000e+00
  %815 = fmul fast float %773, 2.000000e+00
  %816 = fmul fast float %774, 2.000000e+00
  %817 = fmul fast float %775, %814
  %818 = fmul fast float %779, %814
  %819 = fmul fast float %783, %814
  %820 = fmul fast float %776, %815
  %821 = fmul fast float %780, %815
  %822 = fmul fast float %784, %815
  %823 = fmul fast float %777, %816
  %824 = fmul fast float %781, %816
  %825 = fmul fast float %785, %816
  %826 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 0
  %827 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 0
  %828 = getelementptr [8 x float], [8 x float]* %27, i32 0, i32 0
  store float 0.000000e+00, float* %826, align 4
  store float 0.000000e+00, float* %827, align 4
  store float 0.000000e+00, float* %828, align 4
  %829 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 1
  %830 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 1
  %831 = getelementptr [8 x float], [8 x float]* %27, i32 0, i32 1
  store float %817, float* %829, align 4
  store float %818, float* %830, align 4
  store float %819, float* %831, align 4
  %832 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 2
  %833 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 2
  %834 = getelementptr [8 x float], [8 x float]* %27, i32 0, i32 2
  store float %820, float* %832, align 4
  store float %821, float* %833, align 4
  store float %822, float* %834, align 4
  %835 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 3
  %836 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 3
  %837 = getelementptr [8 x float], [8 x float]* %27, i32 0, i32 3
  %838 = fsub fast float -0.000000e+00, %817
  %839 = fsub fast float -0.000000e+00, %818
  %840 = fsub fast float -0.000000e+00, %819
  store float %838, float* %835, align 4
  store float %839, float* %836, align 4
  store float %840, float* %837, align 4
  %841 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 4
  %842 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 4
  %843 = getelementptr [8 x float], [8 x float]* %27, i32 0, i32 4
  store float %823, float* %841, align 4
  store float %824, float* %842, align 4
  store float %825, float* %843, align 4
  %844 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 5
  %845 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 5
  %846 = getelementptr [8 x float], [8 x float]* %27, i32 0, i32 5
  store float %817, float* %844, align 4
  store float %818, float* %845, align 4
  store float %819, float* %846, align 4
  %847 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 6
  %848 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 6
  %849 = getelementptr [8 x float], [8 x float]* %27, i32 0, i32 6
  %850 = fsub fast float -0.000000e+00, %820
  %851 = fsub fast float -0.000000e+00, %821
  %852 = fsub fast float -0.000000e+00, %822
  store float %850, float* %847, align 4
  store float %851, float* %848, align 4
  store float %852, float* %849, align 4
  %853 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 7
  %854 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 7
  %855 = getelementptr [8 x float], [8 x float]* %27, i32 0, i32 7
  store float %838, float* %853, align 4
  store float %839, float* %854, align 4
  store float %840, float* %855, align 4
  %856 = fcmp fast olt float %813, 0.000000e+00
  %857 = zext i1 %856 to i32
  %858 = fadd fast float %813, %819
  %859 = fcmp fast olt float %858, 0.000000e+00
  %860 = select i1 %859, i32 2, i32 0
  %861 = or i32 %860, %857
  %862 = fadd fast float %858, %822
  %863 = fcmp fast olt float %862, 0.000000e+00
  %864 = select i1 %863, i32 4, i32 0
  %865 = or i32 %861, %864
  %866 = fsub fast float %862, %819
  %867 = fcmp fast olt float %866, 0.000000e+00
  %868 = select i1 %867, i32 8, i32 0
  %869 = or i32 %865, %868
  %870 = fadd fast float %866, %825
  %871 = fcmp fast olt float %870, 0.000000e+00
  %872 = select i1 %871, i32 16, i32 0
  %873 = or i32 %869, %872
  %874 = fadd fast float %870, %819
  %875 = fcmp fast olt float %874, 0.000000e+00
  %876 = select i1 %875, i32 32, i32 0
  %877 = or i32 %873, %876
  %878 = fsub fast float %874, %822
  %879 = fcmp fast olt float %878, 0.000000e+00
  %880 = select i1 %879, i32 64, i32 0
  %881 = or i32 %877, %880
  %882 = fsub fast float %878, %819
  %883 = fcmp fast olt float %882, 0.000000e+00
  %884 = select i1 %883, i32 128, i32 0
  %885 = or i32 %881, %884
  %886 = icmp eq i32 %885, 255
  br i1 %886, label %1292, label %887, !dx.controlflow.hints !54

; <label>:887                                     ; preds = %804
  %888 = icmp eq i32 %885, 0
  br i1 %888, label %889, label %1292, !dx.controlflow.hints !55

; <label>:889                                     ; preds = %887
  %890 = fmul fast float %775, %807
  %891 = call float @dx.op.tertiary.f32(i32 46, float %808, float %776, float %890)  ; FMad(a,b,c)
  %892 = call float @dx.op.tertiary.f32(i32 46, float %809, float %777, float %891)  ; FMad(a,b,c)
  %893 = fadd fast float %892, %778
  %894 = fmul fast float %779, %807
  %895 = call float @dx.op.tertiary.f32(i32 46, float %808, float %780, float %894)  ; FMad(a,b,c)
  %896 = call float @dx.op.tertiary.f32(i32 46, float %809, float %781, float %895)  ; FMad(a,b,c)
  %897 = fadd fast float %896, %782
  br label %898

; <label>:898                                     ; preds = %929, %889
  %899 = phi float [ %935, %929 ], [ 0.000000e+00, %889 ]
  %900 = phi float [ %933, %929 ], [ 0.000000e+00, %889 ]
  %901 = phi float [ %931, %929 ], [ 0.000000e+00, %889 ]
  %902 = phi float [ %923, %929 ], [ 9.999999e+06, %889 ]
  %903 = phi float [ %924, %929 ], [ 9.999999e+06, %889 ]
  %904 = phi float [ %925, %929 ], [ -9.999999e+06, %889 ]
  %905 = phi float [ %926, %929 ], [ -9.999999e+06, %889 ]
  %906 = phi float [ %914, %929 ], [ 9.999999e+06, %889 ]
  %907 = phi float [ %911, %929 ], [ %893, %889 ]
  %908 = phi float [ %912, %929 ], [ %897, %889 ]
  %909 = phi float [ %913, %929 ], [ %813, %889 ]
  %910 = phi i32 [ %927, %929 ], [ 0, %889 ]
  %911 = fadd fast float %901, %907
  %912 = fadd fast float %900, %908
  %913 = fadd fast float %899, %909
  %914 = call float @dx.op.binary.f32(i32 36, float %906, float %913)  ; FMin(a,b)
  %915 = fdiv fast float %911, %913
  %916 = fdiv fast float %912, %913
  %917 = fmul fast float %915, 5.000000e-01
  %918 = fmul fast float %916, 5.000000e-01
  %919 = fadd fast float %917, 5.000000e-01
  %920 = fsub fast float 5.000000e-01, %918
  %921 = call float @dx.op.unary.f32(i32 7, float %919)  ; Saturate(value)
  %922 = call float @dx.op.unary.f32(i32 7, float %920)  ; Saturate(value)
  %923 = call float @dx.op.binary.f32(i32 36, float %902, float %921)  ; FMin(a,b)
  %924 = call float @dx.op.binary.f32(i32 36, float %903, float %922)  ; FMin(a,b)
  %925 = call float @dx.op.binary.f32(i32 35, float %904, float %921)  ; FMax(a,b)
  %926 = call float @dx.op.binary.f32(i32 35, float %905, float %922)  ; FMax(a,b)
  %927 = add nuw nsw i32 %910, 1
  %928 = icmp eq i32 %927, 8
  br i1 %928, label %936, label %929

; <label>:929                                     ; preds = %898
  %930 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 %927
  %931 = load float, float* %930, align 4
  %932 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 %927
  %933 = load float, float* %932, align 4
  %934 = getelementptr [8 x float], [8 x float]* %27, i32 0, i32 %927
  %935 = load float, float* %934, align 4
  br label %898

; <label>:936                                     ; preds = %898
  %937 = fcmp fast ole float %925, 0.000000e+00
  %938 = fcmp fast oge float %923, 1.000000e+00
  %939 = or i1 %938, %937
  %940 = fcmp fast ole float %926, 0.000000e+00
  %941 = or i1 %939, %940
  %942 = fcmp fast oge float %924, 1.000000e+00
  %943 = or i1 %942, %941
  br i1 %943, label %1292, label %944, !dx.controlflow.hints !56

; <label>:944                                     ; preds = %936
  %945 = fmul fast float %923, %520
  %946 = fmul fast float %924, %521
  %947 = fmul fast float %925, %520
  %948 = fmul fast float %926, %521
  %949 = call float @dx.op.unary.f32(i32 26, float %945)  ; Round_ne(value)
  %950 = call float @dx.op.unary.f32(i32 26, float %946)  ; Round_ne(value)
  %951 = call float @dx.op.unary.f32(i32 26, float %947)  ; Round_ne(value)
  %952 = call float @dx.op.unary.f32(i32 26, float %948)  ; Round_ne(value)
  %953 = fcmp fast oeq float %949, %951
  %954 = fcmp fast oeq float %950, %952
  %955 = or i1 %953, %954
  br i1 %955, label %1292, label %956, !dx.controlflow.hints !57

; <label>:956                                     ; preds = %944
  %957 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.i32 %957, 0
  %959 = icmp ne i32 %958, 0
  %960 = and i32 %67, 2
  %961 = icmp ne i32 %960, 0
  %962 = and i1 %961, %959
  br i1 %962, label %963, label %1292, !dx.controlflow.hints !58

; <label>:963                                     ; preds = %956
  %964 = and i32 %958, 2
  %965 = icmp eq i32 %964, 0
  br i1 %965, label %1118, label %966, !dx.controlflow.hints !59

; <label>:966                                     ; preds = %963
  %967 = fsub fast float %925, %923
  %968 = fsub fast float %926, %924
  %969 = fmul fast float %967, 6.400000e+01
  %970 = fmul fast float %968, 6.400000e+01
  %971 = call float @dx.op.unary.f32(i32 28, float %969)  ; Round_pi(value)
  %972 = call float @dx.op.unary.f32(i32 28, float %970)  ; Round_pi(value)
  %973 = call float @dx.op.binary.f32(i32 35, float %971, float %972)  ; FMax(a,b)
  %974 = call float @dx.op.unary.f32(i32 23, float %973)  ; Log(value)
  %975 = call float @dx.op.unary.f32(i32 28, float %974)  ; Round_pi(value)
  %976 = fptosi float %975 to i32
  %977 = call i32 @dx.op.binary.i32(i32 37, i32 %976, i32 0)  ; IMax(a,b)
  %978 = call i32 @dx.op.binary.i32(i32 38, i32 %977, i32 6)  ; IMin(a,b)
  %979 = and i32 %978, 31
  %980 = lshr i32 64, %979
  %981 = uitofp i32 %980 to float
  %982 = call float @dx.op.binary.f32(i32 35, float %981, float 1.000000e+00)  ; FMax(a,b)
  %983 = fdiv fast float 1.000000e+00, %982
  %984 = fmul fast float %982, %923
  %985 = fmul fast float %982, %924
  %986 = call float @dx.op.unary.f32(i32 27, float %984)  ; Round_ni(value)
  %987 = call float @dx.op.unary.f32(i32 27, float %985)  ; Round_ni(value)
  %988 = call float @dx.op.binary.f32(i32 35, float %986, float 0.000000e+00)  ; FMax(a,b)
  %989 = call float @dx.op.binary.f32(i32 35, float %987, float 0.000000e+00)  ; FMax(a,b)
  %990 = call float @dx.op.binary.f32(i32 36, float %988, float %982)  ; FMin(a,b)
  %991 = call float @dx.op.binary.f32(i32 36, float %989, float %982)  ; FMin(a,b)
  %992 = fmul fast float %982, %925
  %993 = fmul fast float %982, %926
  %994 = call float @dx.op.unary.f32(i32 28, float %992)  ; Round_pi(value)
  %995 = call float @dx.op.unary.f32(i32 28, float %993)  ; Round_pi(value)
  %996 = call float @dx.op.binary.f32(i32 35, float %994, float 0.000000e+00)  ; FMax(a,b)
  %997 = call float @dx.op.binary.f32(i32 35, float %995, float 0.000000e+00)  ; FMax(a,b)
  %998 = call float @dx.op.binary.f32(i32 36, float %996, float %982)  ; FMin(a,b)
  %999 = call float @dx.op.binary.f32(i32 36, float %997, float %982)  ; FMin(a,b)
  %1000 = fadd fast float %990, 1.000000e+00
  %1001 = fmul fast float %1000, %983
  %1002 = fmul fast float %983, 2.000000e+00
  %1003 = fsub fast float %998, %990
  %1004 = fsub fast float %999, %991
  %1005 = fmul fast float %1003, 5.000000e-01
  %1006 = fmul fast float %1004, 5.000000e-01
  %1007 = call float @dx.op.unary.f32(i32 28, float %1005)  ; Round_pi(value)
  %1008 = call float @dx.op.unary.f32(i32 28, float %1006)  ; Round_pi(value)
  %1009 = fptoui float %1007 to i32
  %1010 = fptoui float %1008 to i32
  %1011 = shl i32 1, %979
  %1012 = add i32 %1011, -1
  %1013 = lshr i32 %1012, 6
  %1014 = and i32 %1013, 1
  %1015 = sub nsw i32 0, %1014
  %1016 = icmp eq i32 %1010, %1015
  br i1 %1016, label %1098, label %1017

; <label>:1017                                    ; preds = %966
  %1018 = fadd fast float %991, 1.000000e+00
  %1019 = fmul fast float %1018, %983
  %1020 = and i32 %1013, 1
  %1021 = add i32 %1009, %1020
  %1022 = add i32 %1010, %1020
  br label %1023

; <label>:1023                                    ; preds = %1091, %1017
  %1024 = phi i32 [ %1092, %1091 ], [ 1, %1017 ]
  %1025 = phi float [ %1093, %1091 ], [ 0.000000e+00, %1017 ]
  %1026 = phi float [ %1094, %1091 ], [ %1019, %1017 ]
  %1027 = phi i32 [ %1095, %1091 ], [ 0, %1017 ]
  %1028 = sub nsw i32 0, %1014
  %1029 = icmp eq i32 %1009, %1028
  br i1 %1029, label %1091, label %1030

; <label>:1030                                    ; preds = %1023
  br label %1031

; <label>:1031                                    ; preds = %1031, %1030
  %1032 = phi i32 [ %1082, %1031 ], [ %1024, %1030 ]
  %1033 = phi float [ %1086, %1031 ], [ %1025, %1030 ]
  %1034 = phi float [ %1087, %1031 ], [ %1001, %1030 ]
  %1035 = phi i32 [ %1088, %1031 ], [ 0, %1030 ]
  %1036 = sitofp i32 %978 to float
  %1037 = fmul fast float %983, 0xBFDFE00000000000
  %1038 = fadd fast float %1037, %1034
  %1039 = fmul fast float %983, 0x3FE0100000000000
  %1040 = fadd fast float %1039, %1026
  %1041 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %1038, float %1040, float undef, float undef, i32 0, i32 0, i32 undef, float %1036)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1042 = extractvalue %dx.types.ResRet.f32 %1041, 0
  %1043 = fadd fast float %1039, %1034
  %1044 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %1043, float %1040, float undef, float undef, i32 0, i32 0, i32 undef, float %1036)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1045 = extractvalue %dx.types.ResRet.f32 %1044, 0
  %1046 = fadd fast float %1037, %1026
  %1047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %1043, float %1046, float undef, float undef, i32 0, i32 0, i32 undef, float %1036)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1048 = extractvalue %dx.types.ResRet.f32 %1047, 0
  %1049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %1038, float %1046, float undef, float undef, i32 0, i32 0, i32 undef, float %1036)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1050 = extractvalue %dx.types.ResRet.f32 %1049, 0
  %1051 = fcmp fast olt float %1042, -1.000000e+00
  %1052 = fcmp fast ogt float %1042, -1.000000e+00
  %1053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1054 = extractvalue %dx.types.CBufRet.f32 %1053, 1
  %1055 = select i1 %1052, float %1054, float 1.000000e+00
  %1056 = fadd fast float %1042, 1.000000e+00
  %1057 = fmul fast float %1055, %1056
  %1058 = call float @dx.op.unary.f32(i32 6, float %1057)  ; FAbs(value)
  %1059 = fcmp fast olt float %1045, -1.000000e+00
  %1060 = fcmp fast ogt float %1045, -1.000000e+00
  %1061 = select i1 %1060, float %1054, float 1.000000e+00
  %1062 = fadd fast float %1045, 1.000000e+00
  %1063 = fmul fast float %1061, %1062
  %1064 = call float @dx.op.unary.f32(i32 6, float %1063)  ; FAbs(value)
  %1065 = fcmp fast olt float %1048, -1.000000e+00
  %1066 = fcmp fast ogt float %1048, -1.000000e+00
  %1067 = select i1 %1066, float %1054, float 1.000000e+00
  %1068 = fadd fast float %1048, 1.000000e+00
  %1069 = fmul fast float %1067, %1068
  %1070 = call float @dx.op.unary.f32(i32 6, float %1069)  ; FAbs(value)
  %1071 = fcmp fast olt float %1050, -1.000000e+00
  %1072 = fcmp fast ogt float %1050, -1.000000e+00
  %1073 = select i1 %1072, float %1054, float 1.000000e+00
  %1074 = fadd fast float %1050, 1.000000e+00
  %1075 = fmul fast float %1073, %1074
  %1076 = call float @dx.op.unary.f32(i32 6, float %1075)  ; FAbs(value)
  %1077 = and i1 %1051, %1059
  %1078 = and i1 %1077, %1065
  %1079 = and i1 %1078, %1071
  %1080 = icmp ne i32 %1032, 0
  %1081 = and i1 %1080, %1079
  %1082 = zext i1 %1081 to i32
  %1083 = call float @dx.op.binary.f32(i32 35, float %1064, float %1070)  ; FMax(a,b)
  %1084 = call float @dx.op.binary.f32(i32 35, float %1058, float %1083)  ; FMax(a,b)
  %1085 = call float @dx.op.binary.f32(i32 35, float %1084, float %1076)  ; FMax(a,b)
  %1086 = call float @dx.op.binary.f32(i32 35, float %1085, float %1033)  ; FMax(a,b)
  %1087 = fadd fast float %1034, %1002
  %1088 = add nuw i32 %1035, 1
  %1089 = icmp eq i32 %1088, %1021
  br i1 %1089, label %1090, label %1031

; <label>:1090                                    ; preds = %1031
  br label %1091

; <label>:1091                                    ; preds = %1090, %1023
  %1092 = phi i32 [ %1024, %1023 ], [ %1082, %1090 ]
  %1093 = phi float [ %1025, %1023 ], [ %1086, %1090 ]
  %1094 = fadd fast float %1026, %1002
  %1095 = add nuw i32 %1027, 1
  %1096 = icmp eq i32 %1095, %1022
  br i1 %1096, label %1097, label %1023

; <label>:1097                                    ; preds = %1091
  br label %1098

; <label>:1098                                    ; preds = %1097, %966
  %1099 = phi i32 [ 1, %966 ], [ %1092, %1097 ]
  %1100 = phi float [ 0.000000e+00, %966 ], [ %1093, %1097 ]
  %1101 = icmp eq i32 %1099, 0
  %1102 = and i1 %806, %1101
  br i1 %1102, label %1115, label %1103, !dx.controlflow.hints !60

; <label>:1103                                    ; preds = %1098
  %1104 = fcmp fast une float %914, 0.000000e+00
  %1105 = bitcast float %914 to i32
  %1106 = and i32 %1105, 2139095040
  %1107 = add nsw i32 %1106, -1056964608
  %1108 = ashr exact i32 %1107, 23
  %1109 = add nsw i32 %1108, -10
  %1110 = sitofp i32 %1109 to float
  %1111 = select i1 %1104, float %1110, float -1.000000e+01
  %1112 = call float @dx.op.unary.f32(i32 21, float %1111)  ; Exp(value)
  %1113 = fsub fast float %914, %1112
  %1114 = fcmp fast ogt float %1100, %1113
  br label %1115

; <label>:1115                                    ; preds = %1103, %1098
  %1116 = phi i1 [ %1114, %1103 ], [ true, %1098 ]
  %1117 = zext i1 %1116 to i32
  br label %1118

; <label>:1118                                    ; preds = %1115, %963
  %1119 = phi i32 [ %1117, %1115 ], [ 1, %963 ]
  %1120 = and i32 %958, 1
  %1121 = icmp ne i32 %1120, 0
  %1122 = icmp ne i32 %1119, 0
  %1123 = and i1 %1122, %1121
  br i1 %1123, label %1124, label %1292, !dx.controlflow.hints !61

; <label>:1124                                    ; preds = %1118
  %1125 = extractvalue %dx.types.CBufRet.i32 %957, 3
  %1126 = extractvalue %dx.types.CBufRet.i32 %957, 1
  %1127 = extractvalue %dx.types.CBufRet.i32 %957, 2
  %1128 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1129 = extractvalue %dx.types.CBufRet.i32 %1128, 0
  %1130 = fsub fast float %925, %923
  %1131 = fsub fast float %926, %924
  %1132 = uitofp i32 %1126 to float
  %1133 = uitofp i32 %1127 to float
  %1134 = fmul fast float %1132, %1130
  %1135 = fmul fast float %1133, %1131
  %1136 = call float @dx.op.unary.f32(i32 28, float %1134)  ; Round_pi(value)
  %1137 = call float @dx.op.unary.f32(i32 28, float %1135)  ; Round_pi(value)
  %1138 = call float @dx.op.binary.f32(i32 35, float %1136, float %1137)  ; FMax(a,b)
  %1139 = call float @dx.op.unary.f32(i32 23, float %1138)  ; Log(value)
  %1140 = call float @dx.op.unary.f32(i32 28, float %1139)  ; Round_pi(value)
  %1141 = fptosi float %1140 to i32
  %1142 = sub nsw i32 %1141, %1129
  %1143 = call i32 @dx.op.binary.i32(i32 37, i32 %1142, i32 0)  ; IMax(a,b)
  %1144 = call i32 @dx.op.binary.i32(i32 38, i32 %1143, i32 %1125)  ; IMin(a,b)
  %1145 = and i32 %1144, 31
  %1146 = lshr i32 %1126, %1145
  %1147 = lshr i32 %1127, %1145
  %1148 = uitofp i32 %1146 to float
  %1149 = uitofp i32 %1147 to float
  %1150 = call float @dx.op.binary.f32(i32 35, float %1148, float 1.000000e+00)  ; FMax(a,b)
  %1151 = call float @dx.op.binary.f32(i32 35, float %1149, float 1.000000e+00)  ; FMax(a,b)
  %1152 = fdiv fast float 1.000000e+00, %1150
  %1153 = fdiv fast float 1.000000e+00, %1151
  %1154 = fmul fast float %1150, %923
  %1155 = fmul fast float %1151, %924
  %1156 = call float @dx.op.unary.f32(i32 27, float %1154)  ; Round_ni(value)
  %1157 = call float @dx.op.unary.f32(i32 27, float %1155)  ; Round_ni(value)
  %1158 = call float @dx.op.binary.f32(i32 35, float %1156, float 0.000000e+00)  ; FMax(a,b)
  %1159 = call float @dx.op.binary.f32(i32 35, float %1157, float 0.000000e+00)  ; FMax(a,b)
  %1160 = call float @dx.op.binary.f32(i32 36, float %1158, float %1150)  ; FMin(a,b)
  %1161 = call float @dx.op.binary.f32(i32 36, float %1159, float %1151)  ; FMin(a,b)
  %1162 = fmul fast float %1150, %925
  %1163 = fmul fast float %1151, %926
  %1164 = call float @dx.op.unary.f32(i32 28, float %1162)  ; Round_pi(value)
  %1165 = call float @dx.op.unary.f32(i32 28, float %1163)  ; Round_pi(value)
  %1166 = call float @dx.op.binary.f32(i32 35, float %1164, float 0.000000e+00)  ; FMax(a,b)
  %1167 = call float @dx.op.binary.f32(i32 35, float %1165, float 0.000000e+00)  ; FMax(a,b)
  %1168 = call float @dx.op.binary.f32(i32 36, float %1166, float %1150)  ; FMin(a,b)
  %1169 = call float @dx.op.binary.f32(i32 36, float %1167, float %1151)  ; FMin(a,b)
  %1170 = fadd fast float %1160, 1.000000e+00
  %1171 = fmul fast float %1170, %1152
  %1172 = fmul fast float %1152, 2.000000e+00
  %1173 = fmul fast float %1153, 2.000000e+00
  %1174 = fsub fast float %1168, %1160
  %1175 = fsub fast float %1169, %1161
  %1176 = fmul fast float %1174, 5.000000e-01
  %1177 = fmul fast float %1175, 5.000000e-01
  %1178 = call float @dx.op.unary.f32(i32 28, float %1176)  ; Round_pi(value)
  %1179 = call float @dx.op.unary.f32(i32 28, float %1177)  ; Round_pi(value)
  %1180 = fptoui float %1178 to i32
  %1181 = fptoui float %1179 to i32
  %1182 = shl i32 1, %1145
  %1183 = add i32 %1182, -1
  %1184 = and i32 %1183, %1126
  %1185 = icmp ne i32 %1184, 0
  %1186 = zext i1 %1185 to i32
  %1187 = add i32 %1180, %1186
  %1188 = and i32 %1183, %1127
  %1189 = icmp ne i32 %1188, 0
  %1190 = zext i1 %1189 to i32
  %1191 = add i32 %1181, %1190
  %1192 = icmp eq i32 %1191, 0
  br i1 %1192, label %1272, label %1193

; <label>:1193                                    ; preds = %1124
  %1194 = fadd fast float %1161, 1.000000e+00
  %1195 = fmul fast float %1194, %1153
  br label %1196

; <label>:1196                                    ; preds = %1265, %1193
  %1197 = phi i32 [ %1266, %1265 ], [ 1, %1193 ]
  %1198 = phi float [ %1267, %1265 ], [ 0.000000e+00, %1193 ]
  %1199 = phi float [ %1268, %1265 ], [ %1195, %1193 ]
  %1200 = phi i32 [ %1269, %1265 ], [ 0, %1193 ]
  %1201 = icmp eq i32 %1187, 0
  br i1 %1201, label %1265, label %1202

; <label>:1202                                    ; preds = %1196
  br label %1203

; <label>:1203                                    ; preds = %1203, %1202
  %1204 = phi i32 [ %1256, %1203 ], [ %1197, %1202 ]
  %1205 = phi float [ %1260, %1203 ], [ %1198, %1202 ]
  %1206 = phi float [ %1261, %1203 ], [ %1171, %1202 ]
  %1207 = phi i32 [ %1262, %1203 ], [ 0, %1202 ]
  %1208 = sitofp i32 %1144 to float
  %1209 = fmul fast float %1152, 0xBFDFE00000000000
  %1210 = fadd fast float %1209, %1206
  %1211 = fmul fast float %1153, 0x3FE0100000000000
  %1212 = fadd fast float %1211, %1199
  %1213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %1210, float %1212, float undef, float undef, i32 0, i32 0, i32 undef, float %1208)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1214 = extractvalue %dx.types.ResRet.f32 %1213, 0
  %1215 = fmul fast float %1152, 0x3FE0100000000000
  %1216 = fadd fast float %1215, %1206
  %1217 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %1216, float %1212, float undef, float undef, i32 0, i32 0, i32 undef, float %1208)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1218 = extractvalue %dx.types.ResRet.f32 %1217, 0
  %1219 = fmul fast float %1153, 0xBFDFE00000000000
  %1220 = fadd fast float %1219, %1199
  %1221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %1216, float %1220, float undef, float undef, i32 0, i32 0, i32 undef, float %1208)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1222 = extractvalue %dx.types.ResRet.f32 %1221, 0
  %1223 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %1210, float %1220, float undef, float undef, i32 0, i32 0, i32 undef, float %1208)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1224 = extractvalue %dx.types.ResRet.f32 %1223, 0
  %1225 = fcmp fast olt float %1214, -1.000000e+00
  %1226 = fcmp fast ogt float %1214, -1.000000e+00
  %1227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1228 = extractvalue %dx.types.CBufRet.f32 %1227, 1
  %1229 = select i1 %1226, float %1228, float 1.000000e+00
  %1230 = fadd fast float %1214, 1.000000e+00
  %1231 = fmul fast float %1229, %1230
  %1232 = call float @dx.op.unary.f32(i32 6, float %1231)  ; FAbs(value)
  %1233 = fcmp fast olt float %1218, -1.000000e+00
  %1234 = fcmp fast ogt float %1218, -1.000000e+00
  %1235 = select i1 %1234, float %1228, float 1.000000e+00
  %1236 = fadd fast float %1218, 1.000000e+00
  %1237 = fmul fast float %1235, %1236
  %1238 = call float @dx.op.unary.f32(i32 6, float %1237)  ; FAbs(value)
  %1239 = fcmp fast olt float %1222, -1.000000e+00
  %1240 = fcmp fast ogt float %1222, -1.000000e+00
  %1241 = select i1 %1240, float %1228, float 1.000000e+00
  %1242 = fadd fast float %1222, 1.000000e+00
  %1243 = fmul fast float %1241, %1242
  %1244 = call float @dx.op.unary.f32(i32 6, float %1243)  ; FAbs(value)
  %1245 = fcmp fast olt float %1224, -1.000000e+00
  %1246 = fcmp fast ogt float %1224, -1.000000e+00
  %1247 = select i1 %1246, float %1228, float 1.000000e+00
  %1248 = fadd fast float %1224, 1.000000e+00
  %1249 = fmul fast float %1247, %1248
  %1250 = call float @dx.op.unary.f32(i32 6, float %1249)  ; FAbs(value)
  %1251 = and i1 %1225, %1233
  %1252 = and i1 %1251, %1239
  %1253 = and i1 %1252, %1245
  %1254 = icmp ne i32 %1204, 0
  %1255 = and i1 %1254, %1253
  %1256 = zext i1 %1255 to i32
  %1257 = call float @dx.op.binary.f32(i32 35, float %1238, float %1244)  ; FMax(a,b)
  %1258 = call float @dx.op.binary.f32(i32 35, float %1232, float %1257)  ; FMax(a,b)
  %1259 = call float @dx.op.binary.f32(i32 35, float %1258, float %1250)  ; FMax(a,b)
  %1260 = call float @dx.op.binary.f32(i32 35, float %1259, float %1205)  ; FMax(a,b)
  %1261 = fadd fast float %1206, %1172
  %1262 = add nuw i32 %1207, 1
  %1263 = icmp eq i32 %1262, %1187
  br i1 %1263, label %1264, label %1203

; <label>:1264                                    ; preds = %1203
  br label %1265

; <label>:1265                                    ; preds = %1264, %1196
  %1266 = phi i32 [ %1197, %1196 ], [ %1256, %1264 ]
  %1267 = phi float [ %1198, %1196 ], [ %1260, %1264 ]
  %1268 = fadd fast float %1199, %1173
  %1269 = add nuw i32 %1200, 1
  %1270 = icmp eq i32 %1269, %1191
  br i1 %1270, label %1271, label %1196

; <label>:1271                                    ; preds = %1265
  br label %1272

; <label>:1272                                    ; preds = %1271, %1124
  %1273 = phi i32 [ 1, %1124 ], [ %1266, %1271 ]
  %1274 = phi float [ 0.000000e+00, %1124 ], [ %1267, %1271 ]
  %1275 = icmp eq i32 %1273, 0
  %1276 = and i1 %806, %1275
  br i1 %1276, label %1289, label %1277, !dx.controlflow.hints !60

; <label>:1277                                    ; preds = %1272
  %1278 = fcmp fast une float %914, 0.000000e+00
  %1279 = bitcast float %914 to i32
  %1280 = and i32 %1279, 2139095040
  %1281 = add nsw i32 %1280, -1056964608
  %1282 = ashr exact i32 %1281, 23
  %1283 = add nsw i32 %1282, -10
  %1284 = sitofp i32 %1283 to float
  %1285 = select i1 %1278, float %1284, float -1.000000e+01
  %1286 = call float @dx.op.unary.f32(i32 21, float %1285)  ; Exp(value)
  %1287 = fsub fast float %914, %1286
  %1288 = fcmp fast ogt float %1274, %1287
  br label %1289

; <label>:1289                                    ; preds = %1277, %1272
  %1290 = phi i1 [ %1288, %1277 ], [ true, %1272 ]
  %1291 = zext i1 %1290 to i32
  br label %1292

; <label>:1292                                    ; preds = %1289, %1118, %956, %944, %936, %887, %804
  %1293 = phi i32 [ 1, %804 ], [ 1, %887 ], [ 1, %936 ], [ 1, %944 ], [ %1291, %1289 ], [ %1119, %1118 ], [ 1, %956 ]
  %1294 = phi i32 [ 0, %804 ], [ 1, %887 ], [ 0, %936 ], [ 0, %944 ], [ 1, %1289 ], [ 1, %1118 ], [ 1, %956 ]
  %1295 = icmp ne i32 %1293, 0
  br label %1296

; <label>:1296                                    ; preds = %1292, %798, %767, %88
  %1297 = phi i32 [ %1294, %1292 ], [ %768, %798 ], [ 1, %88 ], [ 1, %767 ]
  %1298 = phi i1 [ %1295, %1292 ], [ true, %798 ], [ true, %88 ], [ true, %767 ]
  %1299 = icmp ne i32 %1297, 0
  %1300 = and i1 %124, %1299
  %1301 = and i1 %1298, %1300
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1302 = select i1 %1301, i32 %111, i32 0
  %1303 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %24
  store i32 %1302, i32 addrspace(3)* %1303, align 4, !tbaa !62
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1304 = icmp ult i32 %110, 16
  br i1 %1304, label %1305, label %1311, !dx.controlflow.hints !66

; <label>:1305                                    ; preds = %1296
  %1306 = add i32 %24, 16
  %1307 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1306
  %1308 = load i32, i32 addrspace(3)* %1307, align 4, !tbaa !62
  %1309 = load i32, i32 addrspace(3)* %1303, align 4, !tbaa !62
  %1310 = or i32 %1309, %1308
  store i32 %1310, i32 addrspace(3)* %1303, align 4, !tbaa !62
  br label %1311

; <label>:1311                                    ; preds = %1305, %1296
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1312 = icmp ult i32 %110, 8
  br i1 %1312, label %1313, label %1319, !dx.controlflow.hints !67

; <label>:1313                                    ; preds = %1311
  %1314 = add i32 %24, 8
  %1315 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1314
  %1316 = load i32, i32 addrspace(3)* %1315, align 4, !tbaa !62
  %1317 = load i32, i32 addrspace(3)* %1303, align 4, !tbaa !62
  %1318 = or i32 %1317, %1316
  store i32 %1318, i32 addrspace(3)* %1303, align 4, !tbaa !62
  br label %1319

; <label>:1319                                    ; preds = %1313, %1311
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1320 = icmp ult i32 %110, 4
  br i1 %1320, label %1321, label %1327, !dx.controlflow.hints !68

; <label>:1321                                    ; preds = %1319
  %1322 = add i32 %24, 4
  %1323 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1322
  %1324 = load i32, i32 addrspace(3)* %1323, align 4, !tbaa !62
  %1325 = load i32, i32 addrspace(3)* %1303, align 4, !tbaa !62
  %1326 = or i32 %1325, %1324
  store i32 %1326, i32 addrspace(3)* %1303, align 4, !tbaa !62
  br label %1327

; <label>:1327                                    ; preds = %1321, %1319
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1328 = icmp ult i32 %110, 2
  br i1 %1328, label %1329, label %1335, !dx.controlflow.hints !69

; <label>:1329                                    ; preds = %1327
  %1330 = add i32 %24, 2
  %1331 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1330
  %1332 = load i32, i32 addrspace(3)* %1331, align 4, !tbaa !62
  %1333 = load i32, i32 addrspace(3)* %1303, align 4, !tbaa !62
  %1334 = or i32 %1333, %1332
  store i32 %1334, i32 addrspace(3)* %1303, align 4, !tbaa !62
  br label %1335

; <label>:1335                                    ; preds = %1329, %1327
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1336 = icmp eq i32 %110, 0
  br i1 %1336, label %1337, label %1343, !dx.controlflow.hints !70

; <label>:1337                                    ; preds = %1335
  %1338 = add i32 %24, 1
  %1339 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1338
  %1340 = load i32, i32 addrspace(3)* %1339, align 4, !tbaa !62
  %1341 = load i32, i32 addrspace(3)* %1303, align 4, !tbaa !62
  %1342 = or i32 %1341, %1340
  store i32 %1342, i32 addrspace(3)* %1303, align 4, !tbaa !62
  br label %1343

; <label>:1343                                    ; preds = %1337, %1335
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1344 = and i32 %24, -64
  %1345 = or i32 %1344, 32
  %1346 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1344
  %1347 = load i32, i32 addrspace(3)* %1346, align 4, !tbaa !62
  %1348 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1345
  %1349 = load i32, i32 addrspace(3)* %1348, align 4, !tbaa !62
  %1350 = icmp eq i32 %24, 0
  br i1 %1350, label %1351, label %1355, !dx.controlflow.hints !71

; <label>:1351                                    ; preds = %1343
  %1352 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1347)  ; Countbits(value)
  %1353 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1349)  ; Countbits(value)
  %1354 = add i32 %1353, %1352
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %23, i32 0, i32 %1347, i32 %1349, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %28, i32 undef, i32 %1354, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1355

; <label>:1355                                    ; preds = %1351, %1343
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
!dx.entryPoints = !{!33}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !24, !27, !31}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !23}
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
!17 = !{i32 10, %"class.StructuredBuffer<GPCulledSubMesh>"* undef, !"", i32 0, i32 14, i32 1, i32 12, i32 0, !18}
!18 = !{i32 1, i32 8}
!19 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 21, i32 1, i32 11, i32 0, null}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 27, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 28, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 20, i32 1, i32 11, i32 0, null}
!24 = !{!25, !26}
!25 = !{i32 0, %"class.RWStructuredBuffer<GPCulledSubMesh>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i1 false, i1 false, i1 false, !18}
!26 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!27 = !{!28, !29, !30}
!28 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!29 = !{i32 1, %GPSurfPassConsts* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!30 = !{i32 2, %GPOcclusionPassConsts* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!31 = !{!32}
!32 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!33 = !{void ()* @cluster_culling_pass_two_pass_retest, !"cluster_culling_pass_two_pass_retest", null, !4, !34}
!34 = !{i32 0, i64 272, i32 4, !35}
!35 = !{i32 64, i32 1, i32 1}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
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
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = !{!63, !63, i64 0}
!63 = !{!"int", !64, i64 0}
!64 = !{!"omnipotent char", !65, i64 0}
!65 = !{!"Simple C/C++ TBAA"}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}

