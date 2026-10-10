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
; shader hash: 3aa4a9463f143214c78e37b7abed57bc
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
;                                   texture    byte         r/o     T10            t21     1
;                                   texture    byte         r/o     T11            t27     1
;                                   texture    byte         r/o     T12            t28     1
;                                   texture    byte         r/o     T13            t19     1
;                                   texture    byte         r/o     T14            t20     1
;                                       UAV  struct         r/w      U0             u2     1
;                                       UAV    byte         r/w      U1             u3     1
;                                       UAV  struct         r/w      U2             u6     1
;                                       UAV    byte         r/w      U3             u7     1
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

define void @cluster_culling_pass_two_pass_test() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %25 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %26 = alloca [8 x float], align 4
  %27 = alloca [8 x float], align 4
  %28 = alloca [8 x float], align 4
  %29 = shl i32 %24, 2
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %29, i32 undef)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 0
  %32 = and i32 %31, 65535
  %33 = and i32 %31, 2097152
  %34 = and i32 %31, 4194304
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49, !dx.controlflow.hints !37

; <label>:36                                      ; preds = %0
  %37 = shl nuw nsw i32 %32, 3
  %38 = or i32 %37, 5242880
  %39 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %38, i32 undef)  ; BufferLoad(srv,index,wot)
  %40 = extractvalue %dx.types.ResRet.i32 %39, 0
  %41 = extractvalue %dx.types.ResRet.i32 %39, 1
  %42 = and i32 %40, 65535
  %43 = lshr i32 %40, 16
  %44 = and i32 %41, 16777215
  %45 = lshr i32 %41, 24
  %46 = lshr i32 %41, 25
  %47 = and i32 %46, 2
  %48 = xor i32 %47, 3
  br label %65

; <label>:49                                      ; preds = %0
  %50 = mul nuw nsw i32 %32, 12
  %51 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %50, i32 undef)  ; BufferLoad(srv,index,wot)
  %52 = extractvalue %dx.types.ResRet.i32 %51, 0
  %53 = extractvalue %dx.types.ResRet.i32 %51, 1
  %54 = extractvalue %dx.types.ResRet.i32 %51, 2
  %55 = lshr i32 %52, 28
  %56 = and i32 %53, 65535
  %57 = shl nuw nsw i32 %55, 16
  %58 = or i32 %57, %56
  %59 = and i32 %52, 268435455
  %60 = lshr i32 %53, 16
  %61 = and i32 %54, 15
  %62 = lshr i32 %54, 4
  %63 = and i32 %62, 15
  %64 = lshr i32 %54, 8
  br label %65

; <label>:65                                      ; preds = %49, %36
  %66 = phi i32 [ %44, %36 ], [ 0, %49 ]
  %67 = phi i32 [ %40, %36 ], [ %54, %49 ]
  %68 = phi i32 [ %43, %36 ], [ %64, %49 ]
  %69 = phi i32 [ %45, %36 ], [ %63, %49 ]
  %70 = phi i32 [ %48, %36 ], [ %61, %49 ]
  %71 = phi i32 [ %42, %36 ], [ %60, %49 ]
  %72 = phi i32 [ 0, %36 ], [ %58, %49 ]
  %73 = phi i32 [ 0, %36 ], [ %59, %49 ]
  %74 = lshr i32 %67, 24
  br i1 %35, label %75, label %82, !dx.controlflow.hints !38

; <label>:75                                      ; preds = %65
  %76 = shl nuw nsw i32 %32, 4
  %77 = add nuw nsw i32 %76, 5767168
  %78 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %77, i32 undef)  ; BufferLoad(srv,index,wot)
  %79 = extractvalue %dx.types.ResRet.i32 %78, 0
  %80 = extractvalue %dx.types.ResRet.i32 %78, 2
  %81 = extractvalue %dx.types.ResRet.i32 %78, 3
  br label %89

; <label>:82                                      ; preds = %65
  %83 = mul nuw nsw i32 %32, 12
  %84 = add nuw nsw i32 %83, 1572864
  %85 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %84, i32 undef)  ; BufferLoad(srv,index,wot)
  %86 = extractvalue %dx.types.ResRet.i32 %85, 1
  %87 = extractvalue %dx.types.ResRet.i32 %85, 2
  %88 = lshr i32 %86, 16
  br label %89

; <label>:89                                      ; preds = %82, %75
  %90 = phi i32 [ %81, %75 ], [ 0, %82 ]
  %91 = phi i32 [ %80, %75 ], [ %87, %82 ]
  %92 = phi i32 [ %79, %75 ], [ %88, %82 ]
  %93 = lshr i32 %31, 10
  %94 = and i32 %93, 960
  %95 = call i32 @dx.op.binary.i32(i32 40, i32 %71, i32 %94)  ; UMin(a,b)
  %96 = sub i32 %71, %95
  %97 = icmp ult i32 %25, %96
  %98 = add i32 %95, %25
  %99 = and i32 %31, 1048576
  %100 = shl nuw nsw i32 %32, 2
  %101 = add nuw nsw i32 %100, 212992
  %102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %101, i32 undef)  ; BufferLoad(srv,index,wot)
  %103 = extractvalue %dx.types.ResRet.i32 %102, 0
  %104 = icmp eq i32 %70, 2
  %105 = icmp ne i32 %103, 0
  %106 = and i1 %104, %105
  %107 = lshr i32 %92, 5
  %108 = and i32 %92, 31
  %109 = shl nuw nsw i32 %107, 2
  %110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %109, i32 undef)  ; BufferLoad(srv,index,wot)
  %111 = extractvalue %dx.types.ResRet.i32 %110, 0
  %112 = shl i32 1, %108
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  %115 = icmp ne i32 %99, 0
  %116 = or i1 %115, %106
  %117 = and i1 %116, %114
  %118 = and i1 %97, %117
  br i1 %118, label %119, label %1287, !dx.controlflow.hints !39

; <label>:119                                     ; preds = %89
  %120 = add i32 %98, %91
  %121 = shl i32 %120, 2
  %122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %121, i32 undef)  ; BufferLoad(srv,index,wot)
  %123 = extractvalue %dx.types.ResRet.i32 %122, 0
  %124 = shl i32 %123, 5
  %125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %124, i32 undef)  ; BufferLoad(srv,index,wot)
  %126 = extractvalue %dx.types.ResRet.i32 %125, 0
  %127 = extractvalue %dx.types.ResRet.i32 %125, 1
  %128 = extractvalue %dx.types.ResRet.i32 %125, 2
  %129 = extractvalue %dx.types.ResRet.i32 %125, 3
  %130 = or i32 %124, 16
  %131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %130, i32 undef)  ; BufferLoad(srv,index,wot)
  %132 = extractvalue %dx.types.ResRet.i32 %131, 0
  %133 = extractvalue %dx.types.ResRet.i32 %131, 1
  %134 = extractvalue %dx.types.ResRet.i32 %131, 2
  %135 = bitcast i32 %133 to float
  %136 = bitcast i32 %134 to float
  br i1 %104, label %137, label %217, !dx.controlflow.hints !40

; <label>:137                                     ; preds = %119
  %138 = shl nsw i32 %72, 5
  %139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %138, i32 undef)  ; BufferLoad(srv,index,wot)
  %140 = extractvalue %dx.types.ResRet.f32 %139, 0
  %141 = extractvalue %dx.types.ResRet.f32 %139, 1
  %142 = extractvalue %dx.types.ResRet.f32 %139, 2
  %143 = or i32 %138, 16
  %144 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %143, i32 undef)  ; BufferLoad(srv,index,wot)
  %145 = extractvalue %dx.types.ResRet.f32 %144, 0
  %146 = extractvalue %dx.types.ResRet.f32 %144, 1
  %147 = extractvalue %dx.types.ResRet.f32 %144, 2
  %148 = mul i32 %73, 24
  %149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %148, i32 undef)  ; BufferLoad(srv,index,wot)
  %150 = extractvalue %dx.types.ResRet.f32 %149, 0
  %151 = extractvalue %dx.types.ResRet.f32 %149, 1
  %152 = extractvalue %dx.types.ResRet.f32 %149, 2
  %153 = add i32 %148, 12
  %154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %153, i32 undef)  ; BufferLoad(srv,index,wot)
  %155 = extractvalue %dx.types.ResRet.i32 %154, 0
  %156 = extractvalue %dx.types.ResRet.i32 %154, 1
  %157 = add i32 %148, 20
  %158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %157, i32 undef)  ; BufferLoad(srv,index,wot)
  %159 = extractvalue %dx.types.ResRet.i32 %158, 0
  %160 = and i32 %155, 65535
  %161 = uitofp i32 %160 to float
  %162 = lshr i32 %155, 16
  %163 = uitofp i32 %162 to float
  %164 = and i32 %156, 65535
  %165 = uitofp i32 %164 to float
  %166 = lshr i32 %156, 16
  %167 = uitofp i32 %166 to float
  %168 = fmul fast float %161, 0x3F00001000000000
  %169 = fmul fast float %163, 0x3F00001000000000
  %170 = fmul fast float %165, 0x3F00001000000000
  %171 = fmul fast float %167, 0x3F00001000000000
  %172 = fadd fast float %168, -1.000000e+00
  %173 = fadd fast float %169, -1.000000e+00
  %174 = fadd fast float %170, -1.000000e+00
  %175 = fadd fast float %171, -1.000000e+00
  %176 = and i32 %159, 65535
  %177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %176)  ; LegacyF16ToF32(value)
  %178 = fmul fast float %163, 0x3F10001000000000
  %179 = fadd fast float %178, -2.000000e+00
  %180 = fmul fast float %179, %173
  %181 = fsub fast float 1.000000e+00, %180
  %182 = fmul fast float %165, 0x3F10001000000000
  %183 = fadd fast float %182, -2.000000e+00
  %184 = fmul fast float %183, %174
  %185 = fsub fast float %181, %184
  %186 = fmul fast float %161, 0x3F10001000000000
  %187 = fadd fast float %186, -2.000000e+00
  %188 = fmul fast float %187, %173
  %189 = fmul fast float %183, %175
  %190 = fsub fast float %188, %189
  %191 = fmul fast float %187, %174
  %192 = fmul fast float %179, %175
  %193 = fadd fast float %191, %192
  %194 = fadd fast float %188, %189
  %195 = fmul fast float %187, %172
  %196 = fsub fast float 1.000000e+00, %195
  %197 = fsub fast float %196, %184
  %198 = fmul fast float %179, %174
  %199 = fmul fast float %187, %175
  %200 = fsub fast float %198, %199
  %201 = fsub fast float %191, %192
  %202 = fadd fast float %198, %199
  %203 = fsub fast float %196, %180
  %204 = fmul fast float %185, %177
  %205 = fmul fast float %194, %177
  %206 = fmul fast float %201, %177
  %207 = fmul fast float %190, %177
  %208 = fmul fast float %197, %177
  %209 = fmul fast float %202, %177
  %210 = fmul fast float %193, %177
  %211 = fmul fast float %200, %177
  %212 = fmul fast float %203, %177
  %213 = fmul fast float %177, %177
  %214 = fdiv fast float 1.000000e+00, %213
  %215 = call float @dx.op.binary.f32(i32 35, float %146, float %147), !dx.precise !41  ; FMax(a,b)
  %216 = call float @dx.op.binary.f32(i32 35, float %145, float %215), !dx.precise !41  ; FMax(a,b)
  br label %438

; <label>:217                                     ; preds = %119
  %218 = icmp eq i32 %70, 0
  br i1 %218, label %219, label %341, !dx.controlflow.hints !42

; <label>:219                                     ; preds = %217
  %220 = and i32 %69, 1
  %221 = icmp eq i32 %220, 0
  %222 = shl i32 %73, 6
  %223 = add i32 %222, %33
  %224 = or i32 %223, 16
  %225 = or i32 %223, 32
  %226 = or i32 %223, 48
  br i1 %221, label %245, label %227, !dx.controlflow.hints !43

; <label>:227                                     ; preds = %219
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %224, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 3
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = extractvalue %dx.types.ResRet.i32 %230, 1
  %233 = extractvalue %dx.types.ResRet.i32 %230, 2
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = extractvalue %dx.types.ResRet.i32 %234, 1
  %237 = extractvalue %dx.types.ResRet.i32 %234, 2
  %238 = bitcast i32 %229 to float
  %239 = bitcast i32 %231 to float
  %240 = bitcast i32 %232 to float
  %241 = bitcast i32 %233 to float
  %242 = bitcast i32 %235 to float
  %243 = bitcast i32 %236 to float
  %244 = bitcast i32 %237 to float
  br label %438

; <label>:245                                     ; preds = %219
  %246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %223, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.i32 %246, 0
  %248 = extractvalue %dx.types.ResRet.i32 %246, 1
  %249 = extractvalue %dx.types.ResRet.i32 %246, 2
  %250 = extractvalue %dx.types.ResRet.i32 %246, 3
  %251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %224, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.i32 %251, 0
  %253 = extractvalue %dx.types.ResRet.i32 %251, 1
  %254 = extractvalue %dx.types.ResRet.i32 %251, 2
  %255 = extractvalue %dx.types.ResRet.i32 %251, 3
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = extractvalue %dx.types.ResRet.i32 %256, 1
  %259 = extractvalue %dx.types.ResRet.i32 %256, 2
  %260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.i32 %260, 0
  %262 = extractvalue %dx.types.ResRet.i32 %260, 1
  %263 = extractvalue %dx.types.ResRet.i32 %260, 2
  %264 = extractvalue %dx.types.ResRet.i32 %260, 3
  %265 = bitcast i32 %247 to float
  %266 = bitcast i32 %248 to float
  %267 = bitcast i32 %249 to float
  %268 = bitcast i32 %250 to float
  %269 = bitcast i32 %252 to float
  %270 = bitcast i32 %253 to float
  %271 = bitcast i32 %254 to float
  %272 = bitcast i32 %255 to float
  %273 = bitcast i32 %261 to float
  %274 = bitcast i32 %262 to float
  %275 = bitcast i32 %263 to float
  %276 = bitcast i32 %264 to float
  %277 = and i32 %257, 65535
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = lshr i32 %257, 16
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = and i32 %258, 65535
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = lshr i32 %258, 16
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = and i32 %259, 65535
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = lshr i32 %259, 16
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = fmul fast float %266, %266
  %290 = fmul fast float %289, 2.000000e+00
  %291 = fsub fast float 1.000000e+00, %290
  %292 = fmul fast float %267, %267
  %293 = fmul fast float %292, 2.000000e+00
  %294 = fsub fast float %291, %293
  %295 = fmul fast float %265, 2.000000e+00
  %296 = fmul fast float %295, %266
  %297 = fmul fast float %267, 2.000000e+00
  %298 = fmul fast float %297, %268
  %299 = fsub fast float %296, %298
  %300 = fmul fast float %267, %265
  %301 = fmul fast float %268, %266
  %302 = fadd fast float %300, %301
  %303 = fmul fast float %302, 2.000000e+00
  %304 = fmul fast float %266, %265
  %305 = fmul fast float %268, %267
  %306 = fadd fast float %304, %305
  %307 = fmul fast float %306, 2.000000e+00
  %308 = fmul fast float %265, %265
  %309 = fmul fast float %308, 2.000000e+00
  %310 = fsub fast float 1.000000e+00, %309
  %311 = fsub fast float %310, %293
  %312 = fmul fast float %266, 2.000000e+00
  %313 = fmul fast float %312, %267
  %314 = fmul fast float %295, %268
  %315 = fsub fast float %313, %314
  %316 = fmul fast float %295, %267
  %317 = fmul fast float %312, %268
  %318 = fsub fast float %316, %317
  %319 = fmul fast float %267, %266
  %320 = fmul fast float %268, %265
  %321 = fadd fast float %319, %320
  %322 = fmul fast float %321, 2.000000e+00
  %323 = fsub fast float %310, %290
  %324 = fmul fast float %294, %272
  %325 = fmul fast float %307, %272
  %326 = fmul fast float %318, %272
  %327 = fmul fast float %299, %272
  %328 = fmul fast float %311, %272
  %329 = fmul fast float %322, %272
  %330 = fmul fast float %303, %272
  %331 = fmul fast float %315, %272
  %332 = fmul fast float %323, %272
  %333 = fmul fast float %272, %272
  %334 = fdiv fast float 1.000000e+00, %333
  %335 = and i32 %69, 2
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %438, label %337, !dx.controlflow.hints !44

; <label>:337                                     ; preds = %245
  %338 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.i32 %338, 3
  %340 = and i32 %339, 1
  br label %438

; <label>:341                                     ; preds = %217
  %342 = icmp eq i32 %70, 3
  br i1 %342, label %343, label %362, !dx.controlflow.hints !45

; <label>:343                                     ; preds = %341
  %344 = mul i32 %90, 24
  %345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.f32 %345, 0
  %347 = extractvalue %dx.types.ResRet.f32 %345, 1
  %348 = extractvalue %dx.types.ResRet.f32 %345, 2
  %349 = add i32 %344, 12
  %350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.f32 %350, 0
  %352 = extractvalue %dx.types.ResRet.f32 %350, 1
  %353 = extractvalue %dx.types.ResRet.f32 %350, 2
  %354 = shl nuw nsw i32 %66, 7
  %355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.f32 %355, 0
  %357 = extractvalue %dx.types.ResRet.f32 %355, 1
  %358 = extractvalue %dx.types.ResRet.f32 %355, 2
  %359 = or i32 %354, 12
  %360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.f32 %360, 0
  br label %438

; <label>:362                                     ; preds = %341
  %363 = icmp eq i32 %70, 1
  br i1 %363, label %364, label %438, !dx.controlflow.hints !46

; <label>:364                                     ; preds = %362
  %365 = shl nuw nsw i32 %32, 6
  %366 = or i32 %33, 1572864
  %367 = add nuw nsw i32 %366, %365
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = extractvalue %dx.types.ResRet.i32 %368, 1
  %371 = extractvalue %dx.types.ResRet.i32 %368, 2
  %372 = extractvalue %dx.types.ResRet.i32 %368, 3
  %373 = or i32 %367, 16
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = extractvalue %dx.types.ResRet.i32 %374, 1
  %377 = extractvalue %dx.types.ResRet.i32 %374, 2
  %378 = bitcast i32 %369 to float
  %379 = bitcast i32 %370 to float
  %380 = bitcast i32 %371 to float
  %381 = bitcast i32 %372 to float
  %382 = bitcast i32 %375 to float
  %383 = bitcast i32 %376 to float
  %384 = bitcast i32 %377 to float
  %385 = mul i32 %90, 24
  %386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.f32 %386, 0
  %388 = extractvalue %dx.types.ResRet.f32 %386, 1
  %389 = extractvalue %dx.types.ResRet.f32 %386, 2
  %390 = add i32 %385, 12
  %391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.f32 %391, 0
  %393 = extractvalue %dx.types.ResRet.f32 %391, 1
  %394 = extractvalue %dx.types.ResRet.f32 %391, 2
  %395 = fmul fast float %379, %379
  %396 = fmul fast float %395, 2.000000e+00
  %397 = fsub fast float 1.000000e+00, %396
  %398 = fmul fast float %380, %380
  %399 = fmul fast float %398, 2.000000e+00
  %400 = fsub fast float %397, %399
  %401 = fmul fast float %378, 2.000000e+00
  %402 = fmul fast float %401, %379
  %403 = fmul fast float %380, 2.000000e+00
  %404 = fmul fast float %403, %381
  %405 = fsub fast float %402, %404
  %406 = fmul fast float %380, %378
  %407 = fmul fast float %381, %379
  %408 = fadd fast float %406, %407
  %409 = fmul fast float %408, 2.000000e+00
  %410 = fmul fast float %379, %378
  %411 = fmul fast float %381, %380
  %412 = fadd fast float %410, %411
  %413 = fmul fast float %412, 2.000000e+00
  %414 = fmul fast float %378, %378
  %415 = fmul fast float %414, 2.000000e+00
  %416 = fsub fast float 1.000000e+00, %415
  %417 = fsub fast float %416, %399
  %418 = fmul fast float %379, 2.000000e+00
  %419 = fmul fast float %418, %380
  %420 = fmul fast float %401, %381
  %421 = fsub fast float %419, %420
  %422 = fmul fast float %401, %380
  %423 = fmul fast float %418, %381
  %424 = fsub fast float %422, %423
  %425 = fmul fast float %380, %379
  %426 = fmul fast float %381, %378
  %427 = fadd fast float %425, %426
  %428 = fmul fast float %427, 2.000000e+00
  %429 = fsub fast float %416, %396
  %430 = shl nuw nsw i32 %66, 7
  %431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.f32 %431, 0
  %433 = extractvalue %dx.types.ResRet.f32 %431, 1
  %434 = extractvalue %dx.types.ResRet.f32 %431, 2
  %435 = or i32 %430, 12
  %436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.f32 %436, 0
  br label %438

; <label>:438                                     ; preds = %364, %362, %343, %337, %245, %227, %137
  %439 = phi float [ %145, %137 ], [ %239, %227 ], [ %284, %337 ], [ %284, %245 ], [ %351, %343 ], [ %392, %364 ], [ 0.000000e+00, %362 ]
  %440 = phi float [ %146, %137 ], [ %240, %227 ], [ %286, %337 ], [ %286, %245 ], [ %352, %343 ], [ %393, %364 ], [ 0.000000e+00, %362 ]
  %441 = phi float [ %147, %137 ], [ %241, %227 ], [ %288, %337 ], [ %288, %245 ], [ %353, %343 ], [ %394, %364 ], [ 0.000000e+00, %362 ]
  %442 = phi float [ %140, %137 ], [ %242, %227 ], [ %278, %337 ], [ %278, %245 ], [ %346, %343 ], [ %387, %364 ], [ 0.000000e+00, %362 ]
  %443 = phi float [ %141, %137 ], [ %243, %227 ], [ %280, %337 ], [ %280, %245 ], [ %347, %343 ], [ %388, %364 ], [ 0.000000e+00, %362 ]
  %444 = phi float [ %142, %137 ], [ %244, %227 ], [ %282, %337 ], [ %282, %245 ], [ %348, %343 ], [ %389, %364 ], [ 0.000000e+00, %362 ]
  %445 = phi float [ %204, %137 ], [ 1.000000e+00, %227 ], [ %324, %337 ], [ %324, %245 ], [ 1.000000e+00, %343 ], [ %400, %364 ], [ 0.000000e+00, %362 ]
  %446 = phi float [ %207, %137 ], [ 0.000000e+00, %227 ], [ %327, %337 ], [ %327, %245 ], [ 0.000000e+00, %343 ], [ %405, %364 ], [ 0.000000e+00, %362 ]
  %447 = phi float [ %210, %137 ], [ 0.000000e+00, %227 ], [ %330, %337 ], [ %330, %245 ], [ 0.000000e+00, %343 ], [ %409, %364 ], [ 0.000000e+00, %362 ]
  %448 = phi float [ %150, %137 ], [ 0.000000e+00, %227 ], [ %269, %337 ], [ %269, %245 ], [ 0.000000e+00, %343 ], [ %382, %364 ], [ 0.000000e+00, %362 ]
  %449 = phi float [ %205, %137 ], [ 0.000000e+00, %227 ], [ %325, %337 ], [ %325, %245 ], [ 0.000000e+00, %343 ], [ %413, %364 ], [ 0.000000e+00, %362 ]
  %450 = phi float [ %208, %137 ], [ 1.000000e+00, %227 ], [ %328, %337 ], [ %328, %245 ], [ 1.000000e+00, %343 ], [ %417, %364 ], [ 0.000000e+00, %362 ]
  %451 = phi float [ %211, %137 ], [ 0.000000e+00, %227 ], [ %331, %337 ], [ %331, %245 ], [ 0.000000e+00, %343 ], [ %421, %364 ], [ 0.000000e+00, %362 ]
  %452 = phi float [ %151, %137 ], [ 0.000000e+00, %227 ], [ %270, %337 ], [ %270, %245 ], [ 0.000000e+00, %343 ], [ %383, %364 ], [ 0.000000e+00, %362 ]
  %453 = phi float [ %206, %137 ], [ 0.000000e+00, %227 ], [ %326, %337 ], [ %326, %245 ], [ 0.000000e+00, %343 ], [ %424, %364 ], [ 0.000000e+00, %362 ]
  %454 = phi float [ %209, %137 ], [ 0.000000e+00, %227 ], [ %329, %337 ], [ %329, %245 ], [ 0.000000e+00, %343 ], [ %428, %364 ], [ 0.000000e+00, %362 ]
  %455 = phi float [ %212, %137 ], [ 1.000000e+00, %227 ], [ %332, %337 ], [ %332, %245 ], [ 1.000000e+00, %343 ], [ %429, %364 ], [ 0.000000e+00, %362 ]
  %456 = phi float [ %152, %137 ], [ 0.000000e+00, %227 ], [ %271, %337 ], [ %271, %245 ], [ 0.000000e+00, %343 ], [ %384, %364 ], [ 0.000000e+00, %362 ]
  %457 = phi float [ 1.000000e+00, %137 ], [ 1.000000e+00, %227 ], [ 1.000000e+00, %337 ], [ 1.000000e+00, %245 ], [ 1.000000e+00, %343 ], [ 1.000000e+00, %364 ], [ 0.000000e+00, %362 ]
  %458 = phi float [ %214, %137 ], [ 1.000000e+00, %227 ], [ %334, %337 ], [ %334, %245 ], [ 1.000000e+00, %343 ], [ 1.000000e+00, %364 ], [ 0.000000e+00, %362 ]
  %459 = phi float [ %140, %137 ], [ 0.000000e+00, %227 ], [ %273, %337 ], [ %273, %245 ], [ %356, %343 ], [ %432, %364 ], [ 0.000000e+00, %362 ]
  %460 = phi float [ %141, %137 ], [ 0.000000e+00, %227 ], [ %274, %337 ], [ %274, %245 ], [ %357, %343 ], [ %433, %364 ], [ 0.000000e+00, %362 ]
  %461 = phi float [ %142, %137 ], [ 0.000000e+00, %227 ], [ %275, %337 ], [ %275, %245 ], [ %358, %343 ], [ %434, %364 ], [ 0.000000e+00, %362 ]
  %462 = phi float [ %216, %137 ], [ %238, %227 ], [ %276, %337 ], [ %276, %245 ], [ %361, %343 ], [ %437, %364 ], [ 0.000000e+00, %362 ]
  %463 = phi i32 [ 1, %137 ], [ 0, %227 ], [ %340, %337 ], [ 1, %245 ], [ 1, %343 ], [ 1, %364 ], [ 1, %362 ]
  %464 = shl nuw nsw i32 %74, 6
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = extractvalue %dx.types.ResRet.i32 %465, 1
  %468 = extractvalue %dx.types.ResRet.i32 %465, 3
  %469 = bitcast i32 %466 to float
  %470 = bitcast i32 %467 to float
  %471 = bitcast i32 %468 to float
  %472 = or i32 %464, 16
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = extractvalue %dx.types.ResRet.i32 %473, 1
  %476 = extractvalue %dx.types.ResRet.i32 %473, 3
  %477 = bitcast i32 %474 to float
  %478 = bitcast i32 %475 to float
  %479 = bitcast i32 %476 to float
  %480 = or i32 %464, 32
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = extractvalue %dx.types.ResRet.i32 %481, 1
  %484 = extractvalue %dx.types.ResRet.i32 %481, 3
  %485 = bitcast i32 %482 to float
  %486 = bitcast i32 %483 to float
  %487 = bitcast i32 %484 to float
  %488 = or i32 %464, 48
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = extractvalue %dx.types.ResRet.i32 %489, 1
  %492 = extractvalue %dx.types.ResRet.i32 %489, 3
  %493 = bitcast i32 %490 to float
  %494 = bitcast i32 %491 to float
  %495 = bitcast i32 %492 to float
  %496 = shl nuw nsw i32 %74, 4
  %497 = or i32 %496, 4096
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = extractvalue %dx.types.ResRet.i32 %498, 1
  %501 = extractvalue %dx.types.ResRet.i32 %498, 2
  %502 = extractvalue %dx.types.ResRet.i32 %498, 3
  %503 = icmp eq i32 %502, 1
  %504 = bitcast i32 %499 to float
  %505 = bitcast i32 %500 to float
  %506 = bitcast i32 %501 to float
  %507 = add nuw nsw i32 %496, 5120
  %508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.i32 %508, 0
  %510 = extractvalue %dx.types.ResRet.i32 %508, 1
  %511 = bitcast i32 %509 to float
  %512 = bitcast i32 %510 to float
  %513 = bitcast float %448 to i32
  %514 = bitcast float %452 to i32
  %515 = bitcast float %456 to i32
  %516 = select i1 %503, i32 0, i32 %499
  %517 = select i1 %503, i32 0, i32 %500
  %518 = select i1 %503, i32 0, i32 %501
  %519 = sub i32 %513, %516
  %520 = sub i32 %514, %517
  %521 = sub i32 %515, %518
  %522 = sitofp i32 %519 to float
  %523 = sitofp i32 %520 to float
  %524 = sitofp i32 %521 to float
  %525 = fmul fast float %522, 0x3F30000000000000
  %526 = fmul fast float %523, 0x3F30000000000000
  %527 = fmul fast float %524, 0x3F30000000000000
  %528 = fmul fast float %469, %445
  %529 = call float @dx.op.tertiary.f32(i32 46, float %449, float %477, float %528)  ; FMad(a,b,c)
  %530 = call float @dx.op.tertiary.f32(i32 46, float %453, float %485, float %529)  ; FMad(a,b,c)
  %531 = fmul fast float %470, %445
  %532 = call float @dx.op.tertiary.f32(i32 46, float %449, float %478, float %531)  ; FMad(a,b,c)
  %533 = call float @dx.op.tertiary.f32(i32 46, float %453, float %486, float %532)  ; FMad(a,b,c)
  %534 = fmul fast float %471, %445
  %535 = call float @dx.op.tertiary.f32(i32 46, float %449, float %479, float %534)  ; FMad(a,b,c)
  %536 = call float @dx.op.tertiary.f32(i32 46, float %453, float %487, float %535)  ; FMad(a,b,c)
  %537 = fmul fast float %469, %446
  %538 = call float @dx.op.tertiary.f32(i32 46, float %450, float %477, float %537)  ; FMad(a,b,c)
  %539 = call float @dx.op.tertiary.f32(i32 46, float %454, float %485, float %538)  ; FMad(a,b,c)
  %540 = fmul fast float %470, %446
  %541 = call float @dx.op.tertiary.f32(i32 46, float %450, float %478, float %540)  ; FMad(a,b,c)
  %542 = call float @dx.op.tertiary.f32(i32 46, float %454, float %486, float %541)  ; FMad(a,b,c)
  %543 = fmul fast float %471, %446
  %544 = call float @dx.op.tertiary.f32(i32 46, float %450, float %479, float %543)  ; FMad(a,b,c)
  %545 = call float @dx.op.tertiary.f32(i32 46, float %454, float %487, float %544)  ; FMad(a,b,c)
  %546 = fmul fast float %469, %447
  %547 = call float @dx.op.tertiary.f32(i32 46, float %451, float %477, float %546)  ; FMad(a,b,c)
  %548 = call float @dx.op.tertiary.f32(i32 46, float %455, float %485, float %547)  ; FMad(a,b,c)
  %549 = fmul fast float %470, %447
  %550 = call float @dx.op.tertiary.f32(i32 46, float %451, float %478, float %549)  ; FMad(a,b,c)
  %551 = call float @dx.op.tertiary.f32(i32 46, float %455, float %486, float %550)  ; FMad(a,b,c)
  %552 = fmul fast float %471, %447
  %553 = call float @dx.op.tertiary.f32(i32 46, float %451, float %479, float %552)  ; FMad(a,b,c)
  %554 = call float @dx.op.tertiary.f32(i32 46, float %455, float %487, float %553)  ; FMad(a,b,c)
  %555 = fmul fast float %525, %469
  %556 = call float @dx.op.tertiary.f32(i32 46, float %526, float %477, float %555)  ; FMad(a,b,c)
  %557 = call float @dx.op.tertiary.f32(i32 46, float %527, float %485, float %556)  ; FMad(a,b,c)
  %558 = call float @dx.op.tertiary.f32(i32 46, float %457, float %493, float %557)  ; FMad(a,b,c)
  %559 = fmul fast float %525, %470
  %560 = call float @dx.op.tertiary.f32(i32 46, float %526, float %478, float %559)  ; FMad(a,b,c)
  %561 = call float @dx.op.tertiary.f32(i32 46, float %527, float %486, float %560)  ; FMad(a,b,c)
  %562 = call float @dx.op.tertiary.f32(i32 46, float %457, float %494, float %561)  ; FMad(a,b,c)
  %563 = fmul fast float %525, %471
  %564 = call float @dx.op.tertiary.f32(i32 46, float %526, float %479, float %563)  ; FMad(a,b,c)
  %565 = call float @dx.op.tertiary.f32(i32 46, float %527, float %487, float %564)  ; FMad(a,b,c)
  %566 = call float @dx.op.tertiary.f32(i32 46, float %457, float %495, float %565)  ; FMad(a,b,c)
  br i1 %106, label %567, label %608, !dx.controlflow.hints !47

; <label>:567                                     ; preds = %438
  %568 = sub i32 0, %516
  %569 = sub i32 0, %517
  %570 = sub i32 0, %518
  %571 = sitofp i32 %568 to float
  %572 = sitofp i32 %569 to float
  %573 = sitofp i32 %570 to float
  %574 = fmul fast float %571, 0x3F30000000000000
  %575 = fmul fast float %572, 0x3F30000000000000
  %576 = fmul fast float %573, 0x3F30000000000000
  %577 = fmul fast float %574, %469
  %578 = call float @dx.op.tertiary.f32(i32 46, float %575, float %477, float %577)  ; FMad(a,b,c)
  %579 = call float @dx.op.tertiary.f32(i32 46, float %576, float %485, float %578)  ; FMad(a,b,c)
  %580 = fadd fast float %579, %493
  %581 = fmul fast float %574, %470
  %582 = call float @dx.op.tertiary.f32(i32 46, float %575, float %478, float %581)  ; FMad(a,b,c)
  %583 = call float @dx.op.tertiary.f32(i32 46, float %576, float %486, float %582)  ; FMad(a,b,c)
  %584 = fadd fast float %583, %494
  %585 = fmul fast float %574, %471
  %586 = call float @dx.op.tertiary.f32(i32 46, float %575, float %479, float %585)  ; FMad(a,b,c)
  %587 = call float @dx.op.tertiary.f32(i32 46, float %576, float %487, float %586)  ; FMad(a,b,c)
  %588 = fadd fast float %587, %495
  %589 = mul i32 %98, 6
  %590 = add i32 %589, 2
  %591 = add i32 %590, %103
  %592 = shl i32 %591, 2
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 0
  %595 = extractvalue %dx.types.ResRet.i32 %593, 1
  %596 = extractvalue %dx.types.ResRet.i32 %593, 2
  %597 = bitcast i32 %594 to float
  %598 = bitcast i32 %595 to float
  %599 = bitcast i32 %596 to float
  %600 = add i32 %592, 12
  %601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.i32 %601, 0
  %603 = extractvalue %dx.types.ResRet.i32 %601, 1
  %604 = extractvalue %dx.types.ResRet.i32 %601, 2
  %605 = bitcast i32 %602 to float
  %606 = bitcast i32 %603 to float
  %607 = bitcast i32 %604 to float
  br label %758

; <label>:608                                     ; preds = %438
  %609 = icmp eq i32 %463, 0
  br i1 %609, label %758, label %610, !dx.controlflow.hints !48

; <label>:610                                     ; preds = %608
  %611 = and i32 %126, 2097151
  %612 = uitofp i32 %611 to float
  %613 = lshr i32 %126, 21
  %614 = shl i32 %127, 11
  %615 = and i32 %614, 2095104
  %616 = or i32 %615, %613
  %617 = uitofp i32 %616 to float
  %618 = lshr i32 %127, 10
  %619 = and i32 %618, 2097151
  %620 = uitofp i32 %619 to float
  br i1 %35, label %631, label %621, !dx.controlflow.hints !49

; <label>:621                                     ; preds = %610
  %622 = fdiv float %612, 2.097151e+06
  %623 = fdiv float %617, 2.097151e+06
  %624 = fdiv float %620, 2.097151e+06
  %625 = fmul float %622, 2.000000e+00
  %626 = fmul float %623, 2.000000e+00
  %627 = fmul float %624, 2.000000e+00
  %628 = fadd float %625, -1.000000e+00
  %629 = fadd float %626, -1.000000e+00
  %630 = fadd float %627, -1.000000e+00
  br label %631

; <label>:631                                     ; preds = %621, %610
  %632 = phi float [ %628, %621 ], [ %612, %610 ]
  %633 = phi float [ %629, %621 ], [ %617, %610 ]
  %634 = phi float [ %630, %621 ], [ %620, %610 ]
  %635 = fmul float %462, %634
  %636 = fadd float %461, %635
  %637 = fmul float %462, %633
  %638 = fadd float %460, %637
  %639 = fmul float %462, %632
  %640 = fadd float %459, %639
  %641 = and i32 %128, 2097151
  %642 = uitofp i32 %641 to float
  %643 = lshr i32 %128, 21
  %644 = shl i32 %129, 11
  %645 = and i32 %644, 2095104
  %646 = or i32 %645, %643
  %647 = uitofp i32 %646 to float
  %648 = lshr i32 %129, 10
  %649 = and i32 %648, 2097151
  %650 = uitofp i32 %649 to float
  br i1 %35, label %661, label %651, !dx.controlflow.hints !49

; <label>:651                                     ; preds = %631
  %652 = fdiv float %642, 2.097151e+06
  %653 = fdiv float %647, 2.097151e+06
  %654 = fdiv float %650, 2.097151e+06
  %655 = fmul float %652, 2.000000e+00
  %656 = fmul float %653, 2.000000e+00
  %657 = fmul float %654, 2.000000e+00
  %658 = fadd float %655, -1.000000e+00
  %659 = fadd float %656, -1.000000e+00
  %660 = fadd float %657, -1.000000e+00
  br label %661

; <label>:661                                     ; preds = %651, %631
  %662 = phi float [ %658, %651 ], [ %642, %631 ]
  %663 = phi float [ %659, %651 ], [ %647, %631 ]
  %664 = phi float [ %660, %651 ], [ %650, %631 ]
  %665 = fmul float %462, %664
  %666 = fadd float %461, %665
  %667 = fmul float %462, %663
  %668 = fadd float %460, %667
  %669 = fmul float %462, %662
  %670 = fadd float %459, %669
  %671 = fadd fast float %670, %640
  %672 = fadd fast float %668, %638
  %673 = fadd fast float %666, %636
  %674 = fmul fast float %671, 5.000000e-01
  %675 = fmul fast float %672, 5.000000e-01
  %676 = fmul fast float %673, 5.000000e-01
  %677 = fsub fast float %662, %632
  %678 = fsub fast float %663, %633
  %679 = fsub fast float %664, %634
  %680 = fmul fast float %462, 5.000000e-01
  %681 = fmul fast float %680, %677
  %682 = fmul fast float %680, %678
  %683 = fmul fast float %680, %679
  %684 = and i32 %132, 1023
  %685 = uitofp i32 %684 to float
  %686 = lshr i32 %132, 10
  %687 = and i32 %686, 1023
  %688 = uitofp i32 %687 to float
  %689 = lshr i32 %132, 20
  %690 = and i32 %689, 1023
  %691 = uitofp i32 %690 to float
  %692 = fmul fast float %685, 0x3F60040100000000
  %693 = fmul fast float %688, 0x3F60040100000000
  %694 = fmul fast float %691, 0x3F60040100000000
  %695 = fadd fast float %692, -1.000000e+00
  %696 = fadd fast float %693, -1.000000e+00
  %697 = fadd fast float %694, -1.000000e+00
  %698 = fmul fast float %695, %135
  %699 = fmul fast float %696, %135
  %700 = fmul fast float %697, %135
  %701 = and i32 %68, 1
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %758, label %703, !dx.controlflow.hints !50

; <label>:703                                     ; preds = %661
  %704 = fcmp fast ugt float %136, 0.000000e+00
  br i1 %704, label %705, label %755, !dx.controlflow.hints !51

; <label>:705                                     ; preds = %703
  br i1 %503, label %706, label %719, !dx.controlflow.hints !52

; <label>:706                                     ; preds = %705
  %707 = fsub fast float -0.000000e+00, %504
  %708 = fsub fast float -0.000000e+00, %505
  %709 = fsub fast float -0.000000e+00, %506
  %710 = fmul fast float %445, %707
  %711 = call float @dx.op.tertiary.f32(i32 46, float %449, float %708, float %710)  ; FMad(a,b,c)
  %712 = call float @dx.op.tertiary.f32(i32 46, float %453, float %709, float %711)  ; FMad(a,b,c)
  %713 = fmul fast float %446, %707
  %714 = call float @dx.op.tertiary.f32(i32 46, float %450, float %708, float %713)  ; FMad(a,b,c)
  %715 = call float @dx.op.tertiary.f32(i32 46, float %454, float %709, float %714)  ; FMad(a,b,c)
  %716 = fmul fast float %447, %707
  %717 = call float @dx.op.tertiary.f32(i32 46, float %451, float %708, float %716)  ; FMad(a,b,c)
  %718 = call float @dx.op.tertiary.f32(i32 46, float %455, float %709, float %717)  ; FMad(a,b,c)
  br label %744

; <label>:719                                     ; preds = %705
  %720 = fsub fast float -0.000000e+00, %525
  %721 = fsub fast float -0.000000e+00, %526
  %722 = fsub fast float -0.000000e+00, %527
  %723 = fmul fast float %445, %720
  %724 = call float @dx.op.tertiary.f32(i32 46, float %449, float %721, float %723)  ; FMad(a,b,c)
  %725 = call float @dx.op.tertiary.f32(i32 46, float %453, float %722, float %724)  ; FMad(a,b,c)
  %726 = fmul fast float %446, %720
  %727 = call float @dx.op.tertiary.f32(i32 46, float %450, float %721, float %726)  ; FMad(a,b,c)
  %728 = call float @dx.op.tertiary.f32(i32 46, float %454, float %722, float %727)  ; FMad(a,b,c)
  %729 = fmul fast float %447, %720
  %730 = call float @dx.op.tertiary.f32(i32 46, float %451, float %721, float %729)  ; FMad(a,b,c)
  %731 = call float @dx.op.tertiary.f32(i32 46, float %455, float %722, float %730)  ; FMad(a,b,c)
  %732 = fmul fast float %725, %458
  %733 = fmul fast float %728, %458
  %734 = fmul fast float %731, %458
  %735 = fsub fast float -0.000000e+00, %698
  %736 = fsub fast float %735, %674
  %737 = fadd fast float %736, %732
  %738 = fsub fast float -0.000000e+00, %699
  %739 = fsub fast float %738, %675
  %740 = fadd fast float %739, %733
  %741 = fsub fast float -0.000000e+00, %700
  %742 = fsub fast float %741, %676
  %743 = fadd fast float %742, %734
  br label %744

; <label>:744                                     ; preds = %719, %706
  %745 = phi float [ %712, %706 ], [ %737, %719 ]
  %746 = phi float [ %715, %706 ], [ %740, %719 ]
  %747 = phi float [ %718, %706 ], [ %743, %719 ]
  %748 = call float @dx.op.dot3.f32(i32 55, float %745, float %746, float %747, float %745, float %746, float %747)  ; Dot3(ax,ay,az,bx,by,bz)
  %749 = call float @dx.op.unary.f32(i32 25, float %748)  ; Rsqrt(value)
  %750 = fmul fast float %749, %745
  %751 = fmul fast float %749, %746
  %752 = fmul fast float %749, %747
  %753 = call float @dx.op.dot3.f32(i32 55, float %750, float %751, float %752, float %695, float %696, float %697)  ; Dot3(ax,ay,az,bx,by,bz)
  %754 = fcmp fast olt float %753, %136
  br label %755

; <label>:755                                     ; preds = %744, %703
  %756 = phi i1 [ %754, %744 ], [ true, %703 ]
  %757 = zext i1 %756 to i32
  br label %758

; <label>:758                                     ; preds = %755, %661, %608, %567
  %759 = phi i32 [ 1, %567 ], [ %757, %755 ], [ 1, %661 ], [ 1, %608 ]
  %760 = phi float [ %597, %567 ], [ %674, %755 ], [ %674, %661 ], [ %442, %608 ]
  %761 = phi float [ %598, %567 ], [ %675, %755 ], [ %675, %661 ], [ %443, %608 ]
  %762 = phi float [ %599, %567 ], [ %676, %755 ], [ %676, %661 ], [ %444, %608 ]
  %763 = phi float [ %605, %567 ], [ %681, %755 ], [ %681, %661 ], [ %439, %608 ]
  %764 = phi float [ %606, %567 ], [ %682, %755 ], [ %682, %661 ], [ %440, %608 ]
  %765 = phi float [ %607, %567 ], [ %683, %755 ], [ %683, %661 ], [ %441, %608 ]
  %766 = phi float [ %469, %567 ], [ %530, %755 ], [ %530, %661 ], [ %530, %608 ]
  %767 = phi float [ %477, %567 ], [ %539, %755 ], [ %539, %661 ], [ %539, %608 ]
  %768 = phi float [ %485, %567 ], [ %548, %755 ], [ %548, %661 ], [ %548, %608 ]
  %769 = phi float [ %580, %567 ], [ %558, %755 ], [ %558, %661 ], [ %558, %608 ]
  %770 = phi float [ %470, %567 ], [ %533, %755 ], [ %533, %661 ], [ %533, %608 ]
  %771 = phi float [ %478, %567 ], [ %542, %755 ], [ %542, %661 ], [ %542, %608 ]
  %772 = phi float [ %486, %567 ], [ %551, %755 ], [ %551, %661 ], [ %551, %608 ]
  %773 = phi float [ %584, %567 ], [ %562, %755 ], [ %562, %661 ], [ %562, %608 ]
  %774 = phi float [ %471, %567 ], [ %536, %755 ], [ %536, %661 ], [ %536, %608 ]
  %775 = phi float [ %479, %567 ], [ %545, %755 ], [ %545, %661 ], [ %545, %608 ]
  %776 = phi float [ %487, %567 ], [ %554, %755 ], [ %554, %661 ], [ %554, %608 ]
  %777 = phi float [ %588, %567 ], [ %566, %755 ], [ %566, %661 ], [ %566, %608 ]
  %778 = call i1 @dx.op.isSpecialFloat.f32(i32 9, float %760)  ; IsInf(value)
  %779 = call i1 @dx.op.isSpecialFloat.f32(i32 9, float %761)  ; IsInf(value)
  %780 = call i1 @dx.op.isSpecialFloat.f32(i32 9, float %762)  ; IsInf(value)
  %781 = or i1 %778, %779
  %782 = or i1 %781, %780
  %783 = call i1 @dx.op.isSpecialFloat.f32(i32 9, float %763)  ; IsInf(value)
  %784 = call i1 @dx.op.isSpecialFloat.f32(i32 9, float %764)  ; IsInf(value)
  %785 = call i1 @dx.op.isSpecialFloat.f32(i32 9, float %765)  ; IsInf(value)
  %786 = or i1 %783, %784
  %787 = or i1 %786, %785
  %788 = or i1 %782, %787
  br i1 %788, label %1287, label %789, !dx.controlflow.hints !53

; <label>:789                                     ; preds = %758
  %790 = and i32 %68, 32
  %791 = icmp ne i32 %790, 0
  %792 = or i1 %791, %106
  %793 = icmp ne i32 %759, 0
  %794 = and i1 %792, %793
  br i1 %794, label %795, label %1287, !dx.controlflow.hints !54

; <label>:795                                     ; preds = %789
  %796 = and i32 %74, 254
  %797 = icmp eq i32 %796, 62
  %798 = fsub fast float %760, %763
  %799 = fsub fast float %761, %764
  %800 = fsub fast float %762, %765
  %801 = fmul fast float %774, %798
  %802 = call float @dx.op.tertiary.f32(i32 46, float %799, float %775, float %801)  ; FMad(a,b,c)
  %803 = call float @dx.op.tertiary.f32(i32 46, float %800, float %776, float %802)  ; FMad(a,b,c)
  %804 = fadd fast float %803, %777
  %805 = fmul fast float %763, 2.000000e+00
  %806 = fmul fast float %764, 2.000000e+00
  %807 = fmul fast float %765, 2.000000e+00
  %808 = fmul fast float %766, %805
  %809 = fmul fast float %770, %805
  %810 = fmul fast float %774, %805
  %811 = fmul fast float %767, %806
  %812 = fmul fast float %771, %806
  %813 = fmul fast float %775, %806
  %814 = fmul fast float %768, %807
  %815 = fmul fast float %772, %807
  %816 = fmul fast float %776, %807
  %817 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 0
  %818 = getelementptr [8 x float], [8 x float]* %27, i32 0, i32 0
  %819 = getelementptr [8 x float], [8 x float]* %28, i32 0, i32 0
  store float 0.000000e+00, float* %817, align 4
  store float 0.000000e+00, float* %818, align 4
  store float 0.000000e+00, float* %819, align 4
  %820 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 1
  %821 = getelementptr [8 x float], [8 x float]* %27, i32 0, i32 1
  %822 = getelementptr [8 x float], [8 x float]* %28, i32 0, i32 1
  store float %808, float* %820, align 4
  store float %809, float* %821, align 4
  store float %810, float* %822, align 4
  %823 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 2
  %824 = getelementptr [8 x float], [8 x float]* %27, i32 0, i32 2
  %825 = getelementptr [8 x float], [8 x float]* %28, i32 0, i32 2
  store float %811, float* %823, align 4
  store float %812, float* %824, align 4
  store float %813, float* %825, align 4
  %826 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 3
  %827 = getelementptr [8 x float], [8 x float]* %27, i32 0, i32 3
  %828 = getelementptr [8 x float], [8 x float]* %28, i32 0, i32 3
  %829 = fsub fast float -0.000000e+00, %808
  %830 = fsub fast float -0.000000e+00, %809
  %831 = fsub fast float -0.000000e+00, %810
  store float %829, float* %826, align 4
  store float %830, float* %827, align 4
  store float %831, float* %828, align 4
  %832 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 4
  %833 = getelementptr [8 x float], [8 x float]* %27, i32 0, i32 4
  %834 = getelementptr [8 x float], [8 x float]* %28, i32 0, i32 4
  store float %814, float* %832, align 4
  store float %815, float* %833, align 4
  store float %816, float* %834, align 4
  %835 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 5
  %836 = getelementptr [8 x float], [8 x float]* %27, i32 0, i32 5
  %837 = getelementptr [8 x float], [8 x float]* %28, i32 0, i32 5
  store float %808, float* %835, align 4
  store float %809, float* %836, align 4
  store float %810, float* %837, align 4
  %838 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 6
  %839 = getelementptr [8 x float], [8 x float]* %27, i32 0, i32 6
  %840 = getelementptr [8 x float], [8 x float]* %28, i32 0, i32 6
  %841 = fsub fast float -0.000000e+00, %811
  %842 = fsub fast float -0.000000e+00, %812
  %843 = fsub fast float -0.000000e+00, %813
  store float %841, float* %838, align 4
  store float %842, float* %839, align 4
  store float %843, float* %840, align 4
  %844 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 7
  %845 = getelementptr [8 x float], [8 x float]* %27, i32 0, i32 7
  %846 = getelementptr [8 x float], [8 x float]* %28, i32 0, i32 7
  store float %829, float* %844, align 4
  store float %830, float* %845, align 4
  store float %831, float* %846, align 4
  %847 = fcmp fast olt float %804, 0.000000e+00
  %848 = zext i1 %847 to i32
  %849 = fadd fast float %804, %810
  %850 = fcmp fast olt float %849, 0.000000e+00
  %851 = select i1 %850, i32 2, i32 0
  %852 = or i32 %851, %848
  %853 = fadd fast float %849, %813
  %854 = fcmp fast olt float %853, 0.000000e+00
  %855 = select i1 %854, i32 4, i32 0
  %856 = or i32 %852, %855
  %857 = fsub fast float %853, %810
  %858 = fcmp fast olt float %857, 0.000000e+00
  %859 = select i1 %858, i32 8, i32 0
  %860 = or i32 %856, %859
  %861 = fadd fast float %857, %816
  %862 = fcmp fast olt float %861, 0.000000e+00
  %863 = select i1 %862, i32 16, i32 0
  %864 = or i32 %860, %863
  %865 = fadd fast float %861, %810
  %866 = fcmp fast olt float %865, 0.000000e+00
  %867 = select i1 %866, i32 32, i32 0
  %868 = or i32 %864, %867
  %869 = fsub fast float %865, %813
  %870 = fcmp fast olt float %869, 0.000000e+00
  %871 = select i1 %870, i32 64, i32 0
  %872 = or i32 %868, %871
  %873 = fsub fast float %869, %810
  %874 = fcmp fast olt float %873, 0.000000e+00
  %875 = select i1 %874, i32 128, i32 0
  %876 = or i32 %872, %875
  %877 = icmp eq i32 %876, 255
  br i1 %877, label %1283, label %878, !dx.controlflow.hints !55

; <label>:878                                     ; preds = %795
  %879 = icmp eq i32 %876, 0
  br i1 %879, label %880, label %1283, !dx.controlflow.hints !56

; <label>:880                                     ; preds = %878
  %881 = fmul fast float %766, %798
  %882 = call float @dx.op.tertiary.f32(i32 46, float %799, float %767, float %881)  ; FMad(a,b,c)
  %883 = call float @dx.op.tertiary.f32(i32 46, float %800, float %768, float %882)  ; FMad(a,b,c)
  %884 = fadd fast float %883, %769
  %885 = fmul fast float %770, %798
  %886 = call float @dx.op.tertiary.f32(i32 46, float %799, float %771, float %885)  ; FMad(a,b,c)
  %887 = call float @dx.op.tertiary.f32(i32 46, float %800, float %772, float %886)  ; FMad(a,b,c)
  %888 = fadd fast float %887, %773
  br label %889

; <label>:889                                     ; preds = %920, %880
  %890 = phi float [ %926, %920 ], [ 0.000000e+00, %880 ]
  %891 = phi float [ %924, %920 ], [ 0.000000e+00, %880 ]
  %892 = phi float [ %922, %920 ], [ 0.000000e+00, %880 ]
  %893 = phi float [ %914, %920 ], [ 9.999999e+06, %880 ]
  %894 = phi float [ %915, %920 ], [ 9.999999e+06, %880 ]
  %895 = phi float [ %916, %920 ], [ -9.999999e+06, %880 ]
  %896 = phi float [ %917, %920 ], [ -9.999999e+06, %880 ]
  %897 = phi float [ %905, %920 ], [ 9.999999e+06, %880 ]
  %898 = phi float [ %902, %920 ], [ %884, %880 ]
  %899 = phi float [ %903, %920 ], [ %888, %880 ]
  %900 = phi float [ %904, %920 ], [ %804, %880 ]
  %901 = phi i32 [ %918, %920 ], [ 0, %880 ]
  %902 = fadd fast float %892, %898
  %903 = fadd fast float %891, %899
  %904 = fadd fast float %890, %900
  %905 = call float @dx.op.binary.f32(i32 36, float %897, float %904)  ; FMin(a,b)
  %906 = fdiv fast float %902, %904
  %907 = fdiv fast float %903, %904
  %908 = fmul fast float %906, 5.000000e-01
  %909 = fmul fast float %907, 5.000000e-01
  %910 = fadd fast float %908, 5.000000e-01
  %911 = fsub fast float 5.000000e-01, %909
  %912 = call float @dx.op.unary.f32(i32 7, float %910)  ; Saturate(value)
  %913 = call float @dx.op.unary.f32(i32 7, float %911)  ; Saturate(value)
  %914 = call float @dx.op.binary.f32(i32 36, float %893, float %912)  ; FMin(a,b)
  %915 = call float @dx.op.binary.f32(i32 36, float %894, float %913)  ; FMin(a,b)
  %916 = call float @dx.op.binary.f32(i32 35, float %895, float %912)  ; FMax(a,b)
  %917 = call float @dx.op.binary.f32(i32 35, float %896, float %913)  ; FMax(a,b)
  %918 = add nuw nsw i32 %901, 1
  %919 = icmp eq i32 %918, 8
  br i1 %919, label %927, label %920

; <label>:920                                     ; preds = %889
  %921 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 %918
  %922 = load float, float* %921, align 4
  %923 = getelementptr [8 x float], [8 x float]* %27, i32 0, i32 %918
  %924 = load float, float* %923, align 4
  %925 = getelementptr [8 x float], [8 x float]* %28, i32 0, i32 %918
  %926 = load float, float* %925, align 4
  br label %889

; <label>:927                                     ; preds = %889
  %928 = fcmp fast ole float %916, 0.000000e+00
  %929 = fcmp fast oge float %914, 1.000000e+00
  %930 = or i1 %929, %928
  %931 = fcmp fast ole float %917, 0.000000e+00
  %932 = or i1 %930, %931
  %933 = fcmp fast oge float %915, 1.000000e+00
  %934 = or i1 %933, %932
  br i1 %934, label %1283, label %935, !dx.controlflow.hints !57

; <label>:935                                     ; preds = %927
  %936 = fmul fast float %914, %511
  %937 = fmul fast float %915, %512
  %938 = fmul fast float %916, %511
  %939 = fmul fast float %917, %512
  %940 = call float @dx.op.unary.f32(i32 26, float %936)  ; Round_ne(value)
  %941 = call float @dx.op.unary.f32(i32 26, float %937)  ; Round_ne(value)
  %942 = call float @dx.op.unary.f32(i32 26, float %938)  ; Round_ne(value)
  %943 = call float @dx.op.unary.f32(i32 26, float %939)  ; Round_ne(value)
  %944 = fcmp fast oeq float %940, %942
  %945 = fcmp fast oeq float %941, %943
  %946 = or i1 %944, %945
  br i1 %946, label %1283, label %947, !dx.controlflow.hints !58

; <label>:947                                     ; preds = %935
  %948 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %949 = extractvalue %dx.types.CBufRet.i32 %948, 0
  %950 = icmp ne i32 %949, 0
  %951 = and i32 %68, 2
  %952 = icmp ne i32 %951, 0
  %953 = and i1 %952, %950
  br i1 %953, label %954, label %1283, !dx.controlflow.hints !59

; <label>:954                                     ; preds = %947
  %955 = and i32 %949, 2
  %956 = icmp eq i32 %955, 0
  br i1 %956, label %1109, label %957, !dx.controlflow.hints !60

; <label>:957                                     ; preds = %954
  %958 = fsub fast float %916, %914
  %959 = fsub fast float %917, %915
  %960 = fmul fast float %958, 6.400000e+01
  %961 = fmul fast float %959, 6.400000e+01
  %962 = call float @dx.op.unary.f32(i32 28, float %960)  ; Round_pi(value)
  %963 = call float @dx.op.unary.f32(i32 28, float %961)  ; Round_pi(value)
  %964 = call float @dx.op.binary.f32(i32 35, float %962, float %963)  ; FMax(a,b)
  %965 = call float @dx.op.unary.f32(i32 23, float %964)  ; Log(value)
  %966 = call float @dx.op.unary.f32(i32 28, float %965)  ; Round_pi(value)
  %967 = fptosi float %966 to i32
  %968 = call i32 @dx.op.binary.i32(i32 37, i32 %967, i32 0)  ; IMax(a,b)
  %969 = call i32 @dx.op.binary.i32(i32 38, i32 %968, i32 6)  ; IMin(a,b)
  %970 = and i32 %969, 31
  %971 = lshr i32 64, %970
  %972 = uitofp i32 %971 to float
  %973 = call float @dx.op.binary.f32(i32 35, float %972, float 1.000000e+00)  ; FMax(a,b)
  %974 = fdiv fast float 1.000000e+00, %973
  %975 = fmul fast float %973, %914
  %976 = fmul fast float %973, %915
  %977 = call float @dx.op.unary.f32(i32 27, float %975)  ; Round_ni(value)
  %978 = call float @dx.op.unary.f32(i32 27, float %976)  ; Round_ni(value)
  %979 = call float @dx.op.binary.f32(i32 35, float %977, float 0.000000e+00)  ; FMax(a,b)
  %980 = call float @dx.op.binary.f32(i32 35, float %978, float 0.000000e+00)  ; FMax(a,b)
  %981 = call float @dx.op.binary.f32(i32 36, float %979, float %973)  ; FMin(a,b)
  %982 = call float @dx.op.binary.f32(i32 36, float %980, float %973)  ; FMin(a,b)
  %983 = fmul fast float %973, %916
  %984 = fmul fast float %973, %917
  %985 = call float @dx.op.unary.f32(i32 28, float %983)  ; Round_pi(value)
  %986 = call float @dx.op.unary.f32(i32 28, float %984)  ; Round_pi(value)
  %987 = call float @dx.op.binary.f32(i32 35, float %985, float 0.000000e+00)  ; FMax(a,b)
  %988 = call float @dx.op.binary.f32(i32 35, float %986, float 0.000000e+00)  ; FMax(a,b)
  %989 = call float @dx.op.binary.f32(i32 36, float %987, float %973)  ; FMin(a,b)
  %990 = call float @dx.op.binary.f32(i32 36, float %988, float %973)  ; FMin(a,b)
  %991 = fadd fast float %981, 1.000000e+00
  %992 = fmul fast float %991, %974
  %993 = fmul fast float %974, 2.000000e+00
  %994 = fsub fast float %989, %981
  %995 = fsub fast float %990, %982
  %996 = fmul fast float %994, 5.000000e-01
  %997 = fmul fast float %995, 5.000000e-01
  %998 = call float @dx.op.unary.f32(i32 28, float %996)  ; Round_pi(value)
  %999 = call float @dx.op.unary.f32(i32 28, float %997)  ; Round_pi(value)
  %1000 = fptoui float %998 to i32
  %1001 = fptoui float %999 to i32
  %1002 = shl i32 1, %970
  %1003 = add i32 %1002, -1
  %1004 = lshr i32 %1003, 6
  %1005 = and i32 %1004, 1
  %1006 = sub nsw i32 0, %1005
  %1007 = icmp eq i32 %1001, %1006
  br i1 %1007, label %1089, label %1008

; <label>:1008                                    ; preds = %957
  %1009 = fadd fast float %982, 1.000000e+00
  %1010 = fmul fast float %1009, %974
  %1011 = and i32 %1004, 1
  %1012 = add i32 %1000, %1011
  %1013 = add i32 %1001, %1011
  br label %1014

; <label>:1014                                    ; preds = %1082, %1008
  %1015 = phi i32 [ %1083, %1082 ], [ 1, %1008 ]
  %1016 = phi float [ %1084, %1082 ], [ 0.000000e+00, %1008 ]
  %1017 = phi float [ %1085, %1082 ], [ %1010, %1008 ]
  %1018 = phi i32 [ %1086, %1082 ], [ 0, %1008 ]
  %1019 = sub nsw i32 0, %1005
  %1020 = icmp eq i32 %1000, %1019
  br i1 %1020, label %1082, label %1021

; <label>:1021                                    ; preds = %1014
  br label %1022

; <label>:1022                                    ; preds = %1022, %1021
  %1023 = phi i32 [ %1073, %1022 ], [ %1015, %1021 ]
  %1024 = phi float [ %1077, %1022 ], [ %1016, %1021 ]
  %1025 = phi float [ %1078, %1022 ], [ %992, %1021 ]
  %1026 = phi i32 [ %1079, %1022 ], [ 0, %1021 ]
  %1027 = sitofp i32 %969 to float
  %1028 = fmul fast float %974, 0xBFDFE00000000000
  %1029 = fadd fast float %1028, %1025
  %1030 = fmul fast float %974, 0x3FE0100000000000
  %1031 = fadd fast float %1030, %1017
  %1032 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %20, float %1029, float %1031, float undef, float undef, i32 0, i32 0, i32 undef, float %1027)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1033 = extractvalue %dx.types.ResRet.f32 %1032, 0
  %1034 = fadd fast float %1030, %1025
  %1035 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %20, float %1034, float %1031, float undef, float undef, i32 0, i32 0, i32 undef, float %1027)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1036 = extractvalue %dx.types.ResRet.f32 %1035, 0
  %1037 = fadd fast float %1028, %1017
  %1038 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %20, float %1034, float %1037, float undef, float undef, i32 0, i32 0, i32 undef, float %1027)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1039 = extractvalue %dx.types.ResRet.f32 %1038, 0
  %1040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %20, float %1029, float %1037, float undef, float undef, i32 0, i32 0, i32 undef, float %1027)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1041 = extractvalue %dx.types.ResRet.f32 %1040, 0
  %1042 = fcmp fast olt float %1033, -1.000000e+00
  %1043 = fcmp fast ogt float %1033, -1.000000e+00
  %1044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1045 = extractvalue %dx.types.CBufRet.f32 %1044, 1
  %1046 = select i1 %1043, float %1045, float 1.000000e+00
  %1047 = fadd fast float %1033, 1.000000e+00
  %1048 = fmul fast float %1046, %1047
  %1049 = call float @dx.op.unary.f32(i32 6, float %1048)  ; FAbs(value)
  %1050 = fcmp fast olt float %1036, -1.000000e+00
  %1051 = fcmp fast ogt float %1036, -1.000000e+00
  %1052 = select i1 %1051, float %1045, float 1.000000e+00
  %1053 = fadd fast float %1036, 1.000000e+00
  %1054 = fmul fast float %1052, %1053
  %1055 = call float @dx.op.unary.f32(i32 6, float %1054)  ; FAbs(value)
  %1056 = fcmp fast olt float %1039, -1.000000e+00
  %1057 = fcmp fast ogt float %1039, -1.000000e+00
  %1058 = select i1 %1057, float %1045, float 1.000000e+00
  %1059 = fadd fast float %1039, 1.000000e+00
  %1060 = fmul fast float %1058, %1059
  %1061 = call float @dx.op.unary.f32(i32 6, float %1060)  ; FAbs(value)
  %1062 = fcmp fast olt float %1041, -1.000000e+00
  %1063 = fcmp fast ogt float %1041, -1.000000e+00
  %1064 = select i1 %1063, float %1045, float 1.000000e+00
  %1065 = fadd fast float %1041, 1.000000e+00
  %1066 = fmul fast float %1064, %1065
  %1067 = call float @dx.op.unary.f32(i32 6, float %1066)  ; FAbs(value)
  %1068 = and i1 %1042, %1050
  %1069 = and i1 %1068, %1056
  %1070 = and i1 %1069, %1062
  %1071 = icmp ne i32 %1023, 0
  %1072 = and i1 %1071, %1070
  %1073 = zext i1 %1072 to i32
  %1074 = call float @dx.op.binary.f32(i32 35, float %1055, float %1061)  ; FMax(a,b)
  %1075 = call float @dx.op.binary.f32(i32 35, float %1049, float %1074)  ; FMax(a,b)
  %1076 = call float @dx.op.binary.f32(i32 35, float %1075, float %1067)  ; FMax(a,b)
  %1077 = call float @dx.op.binary.f32(i32 35, float %1076, float %1024)  ; FMax(a,b)
  %1078 = fadd fast float %1025, %993
  %1079 = add nuw i32 %1026, 1
  %1080 = icmp eq i32 %1079, %1012
  br i1 %1080, label %1081, label %1022

; <label>:1081                                    ; preds = %1022
  br label %1082

; <label>:1082                                    ; preds = %1081, %1014
  %1083 = phi i32 [ %1015, %1014 ], [ %1073, %1081 ]
  %1084 = phi float [ %1016, %1014 ], [ %1077, %1081 ]
  %1085 = fadd fast float %1017, %993
  %1086 = add nuw i32 %1018, 1
  %1087 = icmp eq i32 %1086, %1013
  br i1 %1087, label %1088, label %1014

; <label>:1088                                    ; preds = %1082
  br label %1089

; <label>:1089                                    ; preds = %1088, %957
  %1090 = phi i32 [ 1, %957 ], [ %1083, %1088 ]
  %1091 = phi float [ 0.000000e+00, %957 ], [ %1084, %1088 ]
  %1092 = icmp eq i32 %1090, 0
  %1093 = and i1 %797, %1092
  br i1 %1093, label %1106, label %1094, !dx.controlflow.hints !61

; <label>:1094                                    ; preds = %1089
  %1095 = fcmp fast une float %905, 0.000000e+00
  %1096 = bitcast float %905 to i32
  %1097 = and i32 %1096, 2139095040
  %1098 = add nsw i32 %1097, -1056964608
  %1099 = ashr exact i32 %1098, 23
  %1100 = add nsw i32 %1099, -10
  %1101 = sitofp i32 %1100 to float
  %1102 = select i1 %1095, float %1101, float -1.000000e+01
  %1103 = call float @dx.op.unary.f32(i32 21, float %1102)  ; Exp(value)
  %1104 = fsub fast float %905, %1103
  %1105 = fcmp fast ogt float %1091, %1104
  br label %1106

; <label>:1106                                    ; preds = %1094, %1089
  %1107 = phi i1 [ %1105, %1094 ], [ true, %1089 ]
  %1108 = zext i1 %1107 to i32
  br label %1109

; <label>:1109                                    ; preds = %1106, %954
  %1110 = phi i32 [ %1108, %1106 ], [ 1, %954 ]
  %1111 = and i32 %949, 1
  %1112 = icmp ne i32 %1111, 0
  %1113 = icmp ne i32 %1110, 0
  %1114 = and i1 %1113, %1112
  br i1 %1114, label %1115, label %1283, !dx.controlflow.hints !62

; <label>:1115                                    ; preds = %1109
  %1116 = extractvalue %dx.types.CBufRet.i32 %948, 3
  %1117 = extractvalue %dx.types.CBufRet.i32 %948, 1
  %1118 = extractvalue %dx.types.CBufRet.i32 %948, 2
  %1119 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1120 = extractvalue %dx.types.CBufRet.i32 %1119, 0
  %1121 = fsub fast float %916, %914
  %1122 = fsub fast float %917, %915
  %1123 = uitofp i32 %1117 to float
  %1124 = uitofp i32 %1118 to float
  %1125 = fmul fast float %1123, %1121
  %1126 = fmul fast float %1124, %1122
  %1127 = call float @dx.op.unary.f32(i32 28, float %1125)  ; Round_pi(value)
  %1128 = call float @dx.op.unary.f32(i32 28, float %1126)  ; Round_pi(value)
  %1129 = call float @dx.op.binary.f32(i32 35, float %1127, float %1128)  ; FMax(a,b)
  %1130 = call float @dx.op.unary.f32(i32 23, float %1129)  ; Log(value)
  %1131 = call float @dx.op.unary.f32(i32 28, float %1130)  ; Round_pi(value)
  %1132 = fptosi float %1131 to i32
  %1133 = sub nsw i32 %1132, %1120
  %1134 = call i32 @dx.op.binary.i32(i32 37, i32 %1133, i32 0)  ; IMax(a,b)
  %1135 = call i32 @dx.op.binary.i32(i32 38, i32 %1134, i32 %1116)  ; IMin(a,b)
  %1136 = and i32 %1135, 31
  %1137 = lshr i32 %1117, %1136
  %1138 = lshr i32 %1118, %1136
  %1139 = uitofp i32 %1137 to float
  %1140 = uitofp i32 %1138 to float
  %1141 = call float @dx.op.binary.f32(i32 35, float %1139, float 1.000000e+00)  ; FMax(a,b)
  %1142 = call float @dx.op.binary.f32(i32 35, float %1140, float 1.000000e+00)  ; FMax(a,b)
  %1143 = fdiv fast float 1.000000e+00, %1141
  %1144 = fdiv fast float 1.000000e+00, %1142
  %1145 = fmul fast float %1141, %914
  %1146 = fmul fast float %1142, %915
  %1147 = call float @dx.op.unary.f32(i32 27, float %1145)  ; Round_ni(value)
  %1148 = call float @dx.op.unary.f32(i32 27, float %1146)  ; Round_ni(value)
  %1149 = call float @dx.op.binary.f32(i32 35, float %1147, float 0.000000e+00)  ; FMax(a,b)
  %1150 = call float @dx.op.binary.f32(i32 35, float %1148, float 0.000000e+00)  ; FMax(a,b)
  %1151 = call float @dx.op.binary.f32(i32 36, float %1149, float %1141)  ; FMin(a,b)
  %1152 = call float @dx.op.binary.f32(i32 36, float %1150, float %1142)  ; FMin(a,b)
  %1153 = fmul fast float %1141, %916
  %1154 = fmul fast float %1142, %917
  %1155 = call float @dx.op.unary.f32(i32 28, float %1153)  ; Round_pi(value)
  %1156 = call float @dx.op.unary.f32(i32 28, float %1154)  ; Round_pi(value)
  %1157 = call float @dx.op.binary.f32(i32 35, float %1155, float 0.000000e+00)  ; FMax(a,b)
  %1158 = call float @dx.op.binary.f32(i32 35, float %1156, float 0.000000e+00)  ; FMax(a,b)
  %1159 = call float @dx.op.binary.f32(i32 36, float %1157, float %1141)  ; FMin(a,b)
  %1160 = call float @dx.op.binary.f32(i32 36, float %1158, float %1142)  ; FMin(a,b)
  %1161 = fadd fast float %1151, 1.000000e+00
  %1162 = fmul fast float %1161, %1143
  %1163 = fmul fast float %1143, 2.000000e+00
  %1164 = fmul fast float %1144, 2.000000e+00
  %1165 = fsub fast float %1159, %1151
  %1166 = fsub fast float %1160, %1152
  %1167 = fmul fast float %1165, 5.000000e-01
  %1168 = fmul fast float %1166, 5.000000e-01
  %1169 = call float @dx.op.unary.f32(i32 28, float %1167)  ; Round_pi(value)
  %1170 = call float @dx.op.unary.f32(i32 28, float %1168)  ; Round_pi(value)
  %1171 = fptoui float %1169 to i32
  %1172 = fptoui float %1170 to i32
  %1173 = shl i32 1, %1136
  %1174 = add i32 %1173, -1
  %1175 = and i32 %1174, %1117
  %1176 = icmp ne i32 %1175, 0
  %1177 = zext i1 %1176 to i32
  %1178 = add i32 %1171, %1177
  %1179 = and i32 %1174, %1118
  %1180 = icmp ne i32 %1179, 0
  %1181 = zext i1 %1180 to i32
  %1182 = add i32 %1172, %1181
  %1183 = icmp eq i32 %1182, 0
  br i1 %1183, label %1263, label %1184

; <label>:1184                                    ; preds = %1115
  %1185 = fadd fast float %1152, 1.000000e+00
  %1186 = fmul fast float %1185, %1144
  br label %1187

; <label>:1187                                    ; preds = %1256, %1184
  %1188 = phi i32 [ %1257, %1256 ], [ 1, %1184 ]
  %1189 = phi float [ %1258, %1256 ], [ 0.000000e+00, %1184 ]
  %1190 = phi float [ %1259, %1256 ], [ %1186, %1184 ]
  %1191 = phi i32 [ %1260, %1256 ], [ 0, %1184 ]
  %1192 = icmp eq i32 %1178, 0
  br i1 %1192, label %1256, label %1193

; <label>:1193                                    ; preds = %1187
  br label %1194

; <label>:1194                                    ; preds = %1194, %1193
  %1195 = phi i32 [ %1247, %1194 ], [ %1188, %1193 ]
  %1196 = phi float [ %1251, %1194 ], [ %1189, %1193 ]
  %1197 = phi float [ %1252, %1194 ], [ %1162, %1193 ]
  %1198 = phi i32 [ %1253, %1194 ], [ 0, %1193 ]
  %1199 = sitofp i32 %1135 to float
  %1200 = fmul fast float %1143, 0xBFDFE00000000000
  %1201 = fadd fast float %1200, %1197
  %1202 = fmul fast float %1144, 0x3FE0100000000000
  %1203 = fadd fast float %1202, %1190
  %1204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %20, float %1201, float %1203, float undef, float undef, i32 0, i32 0, i32 undef, float %1199)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1205 = extractvalue %dx.types.ResRet.f32 %1204, 0
  %1206 = fmul fast float %1143, 0x3FE0100000000000
  %1207 = fadd fast float %1206, %1197
  %1208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %20, float %1207, float %1203, float undef, float undef, i32 0, i32 0, i32 undef, float %1199)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1209 = extractvalue %dx.types.ResRet.f32 %1208, 0
  %1210 = fmul fast float %1144, 0xBFDFE00000000000
  %1211 = fadd fast float %1210, %1190
  %1212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %20, float %1207, float %1211, float undef, float undef, i32 0, i32 0, i32 undef, float %1199)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1213 = extractvalue %dx.types.ResRet.f32 %1212, 0
  %1214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %20, float %1201, float %1211, float undef, float undef, i32 0, i32 0, i32 undef, float %1199)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1215 = extractvalue %dx.types.ResRet.f32 %1214, 0
  %1216 = fcmp fast ogt float %1205, -1.000000e+00
  %1217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1218 = extractvalue %dx.types.CBufRet.f32 %1217, 1
  %1219 = select i1 %1216, float %1218, float 1.000000e+00
  %1220 = fadd fast float %1205, 1.000000e+00
  %1221 = fmul fast float %1219, %1220
  %1222 = call float @dx.op.unary.f32(i32 6, float %1221)  ; FAbs(value)
  %1223 = fcmp fast ogt float %1209, -1.000000e+00
  %1224 = select i1 %1223, float %1218, float 1.000000e+00
  %1225 = fadd fast float %1209, 1.000000e+00
  %1226 = fmul fast float %1224, %1225
  %1227 = call float @dx.op.unary.f32(i32 6, float %1226)  ; FAbs(value)
  %1228 = fcmp fast ogt float %1213, -1.000000e+00
  %1229 = select i1 %1228, float %1218, float 1.000000e+00
  %1230 = fadd fast float %1213, 1.000000e+00
  %1231 = fmul fast float %1229, %1230
  %1232 = call float @dx.op.unary.f32(i32 6, float %1231)  ; FAbs(value)
  %1233 = fcmp fast ogt float %1215, -1.000000e+00
  %1234 = select i1 %1233, float %1218, float 1.000000e+00
  %1235 = fadd fast float %1215, 1.000000e+00
  %1236 = fmul fast float %1234, %1235
  %1237 = call float @dx.op.unary.f32(i32 6, float %1236)  ; FAbs(value)
  %1238 = fcmp fast olt float %1205, -1.000000e+00
  %1239 = fcmp fast olt float %1209, -1.000000e+00
  %1240 = fcmp fast olt float %1213, -1.000000e+00
  %1241 = fcmp fast olt float %1215, -1.000000e+00
  %1242 = and i1 %1238, %1239
  %1243 = and i1 %1242, %1240
  %1244 = and i1 %1243, %1241
  %1245 = icmp ne i32 %1195, 0
  %1246 = and i1 %1245, %1244
  %1247 = zext i1 %1246 to i32
  %1248 = call float @dx.op.binary.f32(i32 35, float %1227, float %1232)  ; FMax(a,b)
  %1249 = call float @dx.op.binary.f32(i32 35, float %1222, float %1248)  ; FMax(a,b)
  %1250 = call float @dx.op.binary.f32(i32 35, float %1249, float %1237)  ; FMax(a,b)
  %1251 = call float @dx.op.binary.f32(i32 35, float %1250, float %1196)  ; FMax(a,b)
  %1252 = fadd fast float %1197, %1163
  %1253 = add nuw i32 %1198, 1
  %1254 = icmp eq i32 %1253, %1178
  br i1 %1254, label %1255, label %1194

; <label>:1255                                    ; preds = %1194
  br label %1256

; <label>:1256                                    ; preds = %1255, %1187
  %1257 = phi i32 [ %1188, %1187 ], [ %1247, %1255 ]
  %1258 = phi float [ %1189, %1187 ], [ %1251, %1255 ]
  %1259 = fadd fast float %1190, %1164
  %1260 = add nuw i32 %1191, 1
  %1261 = icmp eq i32 %1260, %1182
  br i1 %1261, label %1262, label %1187

; <label>:1262                                    ; preds = %1256
  br label %1263

; <label>:1263                                    ; preds = %1262, %1115
  %1264 = phi i32 [ 1, %1115 ], [ %1257, %1262 ]
  %1265 = phi float [ 0.000000e+00, %1115 ], [ %1258, %1262 ]
  %1266 = icmp eq i32 %1264, 0
  %1267 = and i1 %797, %1266
  br i1 %1267, label %1280, label %1268, !dx.controlflow.hints !61

; <label>:1268                                    ; preds = %1263
  %1269 = fcmp fast une float %905, 0.000000e+00
  %1270 = bitcast float %905 to i32
  %1271 = and i32 %1270, 2139095040
  %1272 = add nsw i32 %1271, -1056964608
  %1273 = ashr exact i32 %1272, 23
  %1274 = add nsw i32 %1273, -10
  %1275 = sitofp i32 %1274 to float
  %1276 = select i1 %1269, float %1275, float -1.000000e+01
  %1277 = call float @dx.op.unary.f32(i32 21, float %1276)  ; Exp(value)
  %1278 = fsub fast float %905, %1277
  %1279 = fcmp fast ogt float %1265, %1278
  br label %1280

; <label>:1280                                    ; preds = %1268, %1263
  %1281 = phi i1 [ %1279, %1268 ], [ true, %1263 ]
  %1282 = zext i1 %1281 to i32
  br label %1283

; <label>:1283                                    ; preds = %1280, %1109, %947, %935, %927, %878, %795
  %1284 = phi i32 [ 1, %795 ], [ 1, %878 ], [ 1, %927 ], [ 1, %935 ], [ %1282, %1280 ], [ %1110, %1109 ], [ 1, %947 ]
  %1285 = phi i32 [ 0, %795 ], [ 1, %878 ], [ 0, %927 ], [ 0, %935 ], [ 1, %1280 ], [ 1, %1109 ], [ 1, %947 ]
  %1286 = icmp ne i32 %1284, 0
  br label %1287

; <label>:1287                                    ; preds = %1283, %789, %758, %89
  %1288 = phi i32 [ %1285, %1283 ], [ %759, %789 ], [ 1, %89 ], [ 1, %758 ]
  %1289 = phi i1 [ %1286, %1283 ], [ true, %789 ], [ true, %89 ], [ true, %758 ]
  %1290 = icmp ne i32 %1288, 0
  %1291 = and i1 %97, %1290
  %1292 = and i1 %1289, %1291
  %1293 = and i1 %114, %1292
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1294 = and i32 %25, 31
  %1295 = shl i32 1, %1294
  %1296 = select i1 %1293, i32 %1295, i32 0
  %1297 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %25
  store i32 %1296, i32 addrspace(3)* %1297, align 4, !tbaa !63
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1298 = icmp ult i32 %1294, 16
  br i1 %1298, label %1299, label %1305, !dx.controlflow.hints !67

; <label>:1299                                    ; preds = %1287
  %1300 = add i32 %25, 16
  %1301 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1300
  %1302 = load i32, i32 addrspace(3)* %1301, align 4, !tbaa !63
  %1303 = load i32, i32 addrspace(3)* %1297, align 4, !tbaa !63
  %1304 = or i32 %1303, %1302
  store i32 %1304, i32 addrspace(3)* %1297, align 4, !tbaa !63
  br label %1305

; <label>:1305                                    ; preds = %1299, %1287
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1306 = icmp ult i32 %1294, 8
  br i1 %1306, label %1307, label %1313, !dx.controlflow.hints !68

; <label>:1307                                    ; preds = %1305
  %1308 = add i32 %25, 8
  %1309 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1308
  %1310 = load i32, i32 addrspace(3)* %1309, align 4, !tbaa !63
  %1311 = load i32, i32 addrspace(3)* %1297, align 4, !tbaa !63
  %1312 = or i32 %1311, %1310
  store i32 %1312, i32 addrspace(3)* %1297, align 4, !tbaa !63
  br label %1313

; <label>:1313                                    ; preds = %1307, %1305
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1314 = icmp ult i32 %1294, 4
  br i1 %1314, label %1315, label %1321, !dx.controlflow.hints !69

; <label>:1315                                    ; preds = %1313
  %1316 = add i32 %25, 4
  %1317 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1316
  %1318 = load i32, i32 addrspace(3)* %1317, align 4, !tbaa !63
  %1319 = load i32, i32 addrspace(3)* %1297, align 4, !tbaa !63
  %1320 = or i32 %1319, %1318
  store i32 %1320, i32 addrspace(3)* %1297, align 4, !tbaa !63
  br label %1321

; <label>:1321                                    ; preds = %1315, %1313
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1322 = icmp ult i32 %1294, 2
  br i1 %1322, label %1323, label %1329, !dx.controlflow.hints !70

; <label>:1323                                    ; preds = %1321
  %1324 = add i32 %25, 2
  %1325 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1324
  %1326 = load i32, i32 addrspace(3)* %1325, align 4, !tbaa !63
  %1327 = load i32, i32 addrspace(3)* %1297, align 4, !tbaa !63
  %1328 = or i32 %1327, %1326
  store i32 %1328, i32 addrspace(3)* %1297, align 4, !tbaa !63
  br label %1329

; <label>:1329                                    ; preds = %1323, %1321
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1330 = icmp eq i32 %1294, 0
  br i1 %1330, label %1331, label %1337, !dx.controlflow.hints !71

; <label>:1331                                    ; preds = %1329
  %1332 = add i32 %25, 1
  %1333 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1332
  %1334 = load i32, i32 addrspace(3)* %1333, align 4, !tbaa !63
  %1335 = load i32, i32 addrspace(3)* %1297, align 4, !tbaa !63
  %1336 = or i32 %1335, %1334
  store i32 %1336, i32 addrspace(3)* %1297, align 4, !tbaa !63
  br label %1337

; <label>:1337                                    ; preds = %1331, %1329
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1338 = and i32 %25, -64
  %1339 = or i32 %1338, 32
  %1340 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1338
  %1341 = load i32, i32 addrspace(3)* %1340, align 4, !tbaa !63
  %1342 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1339
  %1343 = load i32, i32 addrspace(3)* %1342, align 4, !tbaa !63
  %1344 = icmp eq i32 %25, 0
  br i1 %1344, label %1345, label %1349, !dx.controlflow.hints !72

; <label>:1345                                    ; preds = %1337
  %1346 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1341)  ; Countbits(value)
  %1347 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1343)  ; Countbits(value)
  %1348 = add i32 %1347, %1346
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %24, i32 0, i32 %1341, i32 %1343, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %29, i32 undef, i32 %1348, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1349

; <label>:1349                                    ; preds = %1345, %1337
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1350 = select i1 %1291, i32 %1295, i32 0
  store i32 %1350, i32 addrspace(3)* %1297, align 4, !tbaa !63
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1298, label %1351, label %1357, !dx.controlflow.hints !67

; <label>:1351                                    ; preds = %1349
  %1352 = add i32 %25, 16
  %1353 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1352
  %1354 = load i32, i32 addrspace(3)* %1353, align 4, !tbaa !63
  %1355 = load i32, i32 addrspace(3)* %1297, align 4, !tbaa !63
  %1356 = or i32 %1355, %1354
  store i32 %1356, i32 addrspace(3)* %1297, align 4, !tbaa !63
  br label %1357

; <label>:1357                                    ; preds = %1351, %1349
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1306, label %1358, label %1364, !dx.controlflow.hints !68

; <label>:1358                                    ; preds = %1357
  %1359 = add i32 %25, 8
  %1360 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1359
  %1361 = load i32, i32 addrspace(3)* %1360, align 4, !tbaa !63
  %1362 = load i32, i32 addrspace(3)* %1297, align 4, !tbaa !63
  %1363 = or i32 %1362, %1361
  store i32 %1363, i32 addrspace(3)* %1297, align 4, !tbaa !63
  br label %1364

; <label>:1364                                    ; preds = %1358, %1357
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1314, label %1365, label %1371, !dx.controlflow.hints !69

; <label>:1365                                    ; preds = %1364
  %1366 = add i32 %25, 4
  %1367 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1366
  %1368 = load i32, i32 addrspace(3)* %1367, align 4, !tbaa !63
  %1369 = load i32, i32 addrspace(3)* %1297, align 4, !tbaa !63
  %1370 = or i32 %1369, %1368
  store i32 %1370, i32 addrspace(3)* %1297, align 4, !tbaa !63
  br label %1371

; <label>:1371                                    ; preds = %1365, %1364
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1322, label %1372, label %1378, !dx.controlflow.hints !70

; <label>:1372                                    ; preds = %1371
  %1373 = add i32 %25, 2
  %1374 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1373
  %1375 = load i32, i32 addrspace(3)* %1374, align 4, !tbaa !63
  %1376 = load i32, i32 addrspace(3)* %1297, align 4, !tbaa !63
  %1377 = or i32 %1376, %1375
  store i32 %1377, i32 addrspace(3)* %1297, align 4, !tbaa !63
  br label %1378

; <label>:1378                                    ; preds = %1372, %1371
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1330, label %1379, label %1385, !dx.controlflow.hints !71

; <label>:1379                                    ; preds = %1378
  %1380 = add i32 %25, 1
  %1381 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1380
  %1382 = load i32, i32 addrspace(3)* %1381, align 4, !tbaa !63
  %1383 = load i32, i32 addrspace(3)* %1297, align 4, !tbaa !63
  %1384 = or i32 %1383, %1382
  store i32 %1384, i32 addrspace(3)* %1297, align 4, !tbaa !63
  br label %1385

; <label>:1385                                    ; preds = %1379, %1378
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1386 = load i32, i32 addrspace(3)* %1340, align 4, !tbaa !63
  %1387 = load i32, i32 addrspace(3)* %1342, align 4, !tbaa !63
  br i1 %1344, label %1388, label %1392, !dx.controlflow.hints !73

; <label>:1388                                    ; preds = %1385
  %1389 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1386)  ; Countbits(value)
  %1390 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1387)  ; Countbits(value)
  %1391 = add i32 %1390, %1389
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %24, i32 0, i32 %1386, i32 %1387, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %29, i32 undef, i32 %1391, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1392

; <label>:1392                                    ; preds = %1388, %1385
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
!dx.entryPoints = !{!34}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !22, !28, !32}
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
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 21, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 27, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 28, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!21 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 20, i32 1, i32 11, i32 0, null}
!22 = !{!23, !25, !26, !27}
!23 = !{i32 0, %"class.RWStructuredBuffer<GPCulledSubMesh>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i1 false, i1 false, i1 false, !24}
!24 = !{i32 1, i32 8}
!25 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!26 = !{i32 2, %"class.RWStructuredBuffer<GPCulledSubMesh>"* undef, !"", i32 0, i32 6, i32 1, i32 12, i1 false, i1 false, i1 false, !24}
!27 = !{i32 3, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 7, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!28 = !{!29, !30, !31}
!29 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!30 = !{i32 1, %GPSurfPassConsts* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!31 = !{i32 2, %GPOcclusionPassConsts* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!32 = !{!33}
!33 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!34 = !{void ()* @cluster_culling_pass_two_pass_test, !"cluster_culling_pass_two_pass_test", null, !4, !35}
!35 = !{i32 0, i64 272, i32 4, !36}
!36 = !{i32 64, i32 1, i32 1}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
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
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = !{!64, !64, i64 0}
!64 = !{!"int", !65, i64 0}
!65 = !{!"omnipotent char", !66, i64 0}
!66 = !{!"Simple C/C++ TBAA"}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}

