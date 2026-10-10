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
; shader hash: 17b54f5931bd0cc04c15e345a23ee36f
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
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.fouri32 = type { i32, i32, i32, i32 }
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
%ClusterCullIndirectArgs = type { i32, i32, i32, i32 }
%struct.SamplerState = type { i32 }

@"\01?gsBallotResult@@3PAIA" = external addrspace(3) global [4 x i32], align 4

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
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %23 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %24 = alloca [8 x float], align 4
  %25 = alloca [8 x float], align 4
  %26 = alloca [8 x float], align 4
  %27 = shl i32 %22, 1
  %28 = lshr i32 %23, 6
  %29 = add i32 %28, %27
  %30 = and i32 %23, 63
  %31 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.i32 %31, 0
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %104, !dx.controlflow.hints !35

; <label>:34                                      ; preds = %0
  %35 = shl i32 %29, 2
  %36 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %35, i32 undef)  ; BufferLoad(srv,index,wot)
  %37 = extractvalue %dx.types.ResRet.i32 %36, 0
  %38 = and i32 %37, 65535
  %39 = lshr i32 %37, 20
  %40 = and i32 %39, 1
  %41 = lshr i32 %37, 21
  %42 = and i32 %41, 1
  %43 = and i32 %37, 4194304
  %44 = icmp ne i32 %43, 0
  %45 = lshr exact i32 %43, 22
  br i1 %44, label %46, label %59, !dx.controlflow.hints !36

; <label>:46                                      ; preds = %34
  %47 = shl nuw nsw i32 %38, 3
  %48 = or i32 %47, 5242880
  %49 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %48, i32 undef)  ; BufferLoad(srv,index,wot)
  %50 = extractvalue %dx.types.ResRet.i32 %49, 0
  %51 = extractvalue %dx.types.ResRet.i32 %49, 1
  %52 = and i32 %50, 65535
  %53 = lshr i32 %50, 16
  %54 = and i32 %51, 16777215
  %55 = lshr i32 %51, 24
  %56 = lshr i32 %51, 25
  %57 = and i32 %56, 2
  %58 = xor i32 %57, 3
  br label %75

; <label>:59                                      ; preds = %34
  %60 = mul nuw nsw i32 %38, 12
  %61 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %60, i32 undef)  ; BufferLoad(srv,index,wot)
  %62 = extractvalue %dx.types.ResRet.i32 %61, 0
  %63 = extractvalue %dx.types.ResRet.i32 %61, 1
  %64 = extractvalue %dx.types.ResRet.i32 %61, 2
  %65 = lshr i32 %62, 28
  %66 = and i32 %63, 65535
  %67 = shl nuw nsw i32 %65, 16
  %68 = or i32 %67, %66
  %69 = and i32 %62, 268435455
  %70 = lshr i32 %63, 16
  %71 = and i32 %64, 15
  %72 = lshr i32 %64, 4
  %73 = and i32 %72, 15
  %74 = lshr i32 %64, 8
  br label %75

; <label>:75                                      ; preds = %59, %46
  %76 = phi i32 [ %54, %46 ], [ 0, %59 ]
  %77 = phi i32 [ %50, %46 ], [ %64, %59 ]
  %78 = phi i32 [ %53, %46 ], [ %74, %59 ]
  %79 = phi i32 [ %55, %46 ], [ %73, %59 ]
  %80 = phi i32 [ %58, %46 ], [ %71, %59 ]
  %81 = phi i32 [ %52, %46 ], [ %70, %59 ]
  %82 = phi i32 [ 0, %46 ], [ %68, %59 ]
  %83 = phi i32 [ 0, %46 ], [ %69, %59 ]
  %84 = lshr i32 %77, 24
  %85 = and i32 %78, 255
  br i1 %44, label %86, label %92, !dx.controlflow.hints !37

; <label>:86                                      ; preds = %75
  %87 = shl nuw nsw i32 %38, 4
  %88 = add nuw nsw i32 %87, 5767168
  %89 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %88, i32 undef)  ; BufferLoad(srv,index,wot)
  %90 = extractvalue %dx.types.ResRet.i32 %89, 2
  %91 = extractvalue %dx.types.ResRet.i32 %89, 3
  br label %97

; <label>:92                                      ; preds = %75
  %93 = mul nuw nsw i32 %38, 12
  %94 = add nuw nsw i32 %93, 1572864
  %95 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %94, i32 undef)  ; BufferLoad(srv,index,wot)
  %96 = extractvalue %dx.types.ResRet.i32 %95, 2
  br label %97

; <label>:97                                      ; preds = %92, %86
  %98 = phi i32 [ %91, %86 ], [ 0, %92 ]
  %99 = phi i32 [ %90, %86 ], [ %96, %92 ]
  %100 = lshr i32 %37, 10
  %101 = and i32 %100, 960
  %102 = call i32 @dx.op.binary.i32(i32 40, i32 %81, i32 %101)  ; UMin(a,b)
  %103 = sub i32 %81, %102
  br label %104

; <label>:104                                     ; preds = %97, %0
  %105 = phi i32 [ %76, %97 ], [ undef, %0 ]
  %106 = phi i32 [ %84, %97 ], [ undef, %0 ]
  %107 = phi i32 [ %85, %97 ], [ undef, %0 ]
  %108 = phi i32 [ %79, %97 ], [ undef, %0 ]
  %109 = phi i32 [ %80, %97 ], [ undef, %0 ]
  %110 = phi i32 [ %82, %97 ], [ undef, %0 ]
  %111 = phi i32 [ %83, %97 ], [ undef, %0 ]
  %112 = phi i32 [ %45, %97 ], [ undef, %0 ]
  %113 = phi i32 [ %42, %97 ], [ undef, %0 ]
  %114 = phi i32 [ %40, %97 ], [ undef, %0 ]
  %115 = phi i32 [ %38, %97 ], [ undef, %0 ]
  %116 = phi i32 [ %98, %97 ], [ undef, %0 ]
  %117 = phi i32 [ %99, %97 ], [ undef, %0 ]
  %118 = phi i32 [ %102, %97 ], [ undef, %0 ]
  %119 = phi i32 [ %103, %97 ], [ undef, %0 ]
  %120 = icmp ult i32 %30, %119
  %121 = and i1 %33, %120
  %122 = icmp ne i32 %114, 0
  %123 = add i32 %118, %30
  %124 = icmp ne i32 %113, 0
  %125 = icmp ne i32 %112, 0
  %126 = lshr i32 %23, 5
  %127 = shl i32 %115, 2
  %128 = add i32 %127, 212992
  %129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %128, i32 undef)  ; BufferLoad(srv,index,wot)
  %130 = extractvalue %dx.types.ResRet.i32 %129, 0
  %131 = icmp eq i32 %109, 2
  %132 = icmp ne i32 %130, 0
  %133 = and i1 %131, %132
  %134 = or i1 %122, %133
  %135 = and i1 %121, %134
  br i1 %135, label %136, label %1305, !dx.controlflow.hints !38

; <label>:136                                     ; preds = %104
  %137 = add i32 %123, %117
  %138 = shl i32 %137, 2
  %139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %138, i32 undef)  ; BufferLoad(srv,index,wot)
  %140 = extractvalue %dx.types.ResRet.i32 %139, 0
  %141 = shl i32 %140, 5
  %142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %141, i32 undef)  ; BufferLoad(srv,index,wot)
  %143 = extractvalue %dx.types.ResRet.i32 %142, 0
  %144 = extractvalue %dx.types.ResRet.i32 %142, 1
  %145 = extractvalue %dx.types.ResRet.i32 %142, 2
  %146 = extractvalue %dx.types.ResRet.i32 %142, 3
  %147 = or i32 %141, 16
  %148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %147, i32 undef)  ; BufferLoad(srv,index,wot)
  %149 = extractvalue %dx.types.ResRet.i32 %148, 0
  %150 = extractvalue %dx.types.ResRet.i32 %148, 1
  %151 = extractvalue %dx.types.ResRet.i32 %148, 2
  %152 = bitcast i32 %150 to float
  %153 = bitcast i32 %151 to float
  br i1 %131, label %154, label %234, !dx.controlflow.hints !39

; <label>:154                                     ; preds = %136
  %155 = shl i32 %110, 5
  %156 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %155, i32 undef)  ; BufferLoad(srv,index,wot)
  %157 = extractvalue %dx.types.ResRet.f32 %156, 0
  %158 = extractvalue %dx.types.ResRet.f32 %156, 1
  %159 = extractvalue %dx.types.ResRet.f32 %156, 2
  %160 = or i32 %155, 16
  %161 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %160, i32 undef)  ; BufferLoad(srv,index,wot)
  %162 = extractvalue %dx.types.ResRet.f32 %161, 0
  %163 = extractvalue %dx.types.ResRet.f32 %161, 1
  %164 = extractvalue %dx.types.ResRet.f32 %161, 2
  %165 = mul i32 %111, 24
  %166 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %165, i32 undef)  ; BufferLoad(srv,index,wot)
  %167 = extractvalue %dx.types.ResRet.f32 %166, 0
  %168 = extractvalue %dx.types.ResRet.f32 %166, 1
  %169 = extractvalue %dx.types.ResRet.f32 %166, 2
  %170 = add i32 %165, 12
  %171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %170, i32 undef)  ; BufferLoad(srv,index,wot)
  %172 = extractvalue %dx.types.ResRet.i32 %171, 0
  %173 = extractvalue %dx.types.ResRet.i32 %171, 1
  %174 = add i32 %165, 20
  %175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %174, i32 undef)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.i32 %175, 0
  %177 = and i32 %172, 65535
  %178 = uitofp i32 %177 to float
  %179 = lshr i32 %172, 16
  %180 = uitofp i32 %179 to float
  %181 = and i32 %173, 65535
  %182 = uitofp i32 %181 to float
  %183 = lshr i32 %173, 16
  %184 = uitofp i32 %183 to float
  %185 = fmul fast float %178, 0x3F00001000000000
  %186 = fmul fast float %180, 0x3F00001000000000
  %187 = fmul fast float %182, 0x3F00001000000000
  %188 = fmul fast float %184, 0x3F00001000000000
  %189 = fadd fast float %185, -1.000000e+00
  %190 = fadd fast float %186, -1.000000e+00
  %191 = fadd fast float %187, -1.000000e+00
  %192 = fadd fast float %188, -1.000000e+00
  %193 = and i32 %176, 65535
  %194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %193)  ; LegacyF16ToF32(value)
  %195 = fmul fast float %180, 0x3F10001000000000
  %196 = fadd fast float %195, -2.000000e+00
  %197 = fmul fast float %196, %190
  %198 = fsub fast float 1.000000e+00, %197
  %199 = fmul fast float %182, 0x3F10001000000000
  %200 = fadd fast float %199, -2.000000e+00
  %201 = fmul fast float %200, %191
  %202 = fsub fast float %198, %201
  %203 = fmul fast float %178, 0x3F10001000000000
  %204 = fadd fast float %203, -2.000000e+00
  %205 = fmul fast float %204, %190
  %206 = fmul fast float %200, %192
  %207 = fsub fast float %205, %206
  %208 = fmul fast float %204, %191
  %209 = fmul fast float %196, %192
  %210 = fadd fast float %208, %209
  %211 = fadd fast float %205, %206
  %212 = fmul fast float %204, %189
  %213 = fsub fast float 1.000000e+00, %212
  %214 = fsub fast float %213, %201
  %215 = fmul fast float %196, %191
  %216 = fmul fast float %204, %192
  %217 = fsub fast float %215, %216
  %218 = fsub fast float %208, %209
  %219 = fadd fast float %215, %216
  %220 = fsub fast float %213, %197
  %221 = fmul fast float %202, %194
  %222 = fmul fast float %211, %194
  %223 = fmul fast float %218, %194
  %224 = fmul fast float %207, %194
  %225 = fmul fast float %214, %194
  %226 = fmul fast float %219, %194
  %227 = fmul fast float %210, %194
  %228 = fmul fast float %217, %194
  %229 = fmul fast float %220, %194
  %230 = fmul fast float %194, %194
  %231 = fdiv fast float 1.000000e+00, %230
  %232 = call float @dx.op.binary.f32(i32 35, float %163, float %164), !dx.precise !40  ; FMax(a,b)
  %233 = call float @dx.op.binary.f32(i32 35, float %162, float %232), !dx.precise !40  ; FMax(a,b)
  br label %456

; <label>:234                                     ; preds = %136
  %235 = icmp eq i32 %109, 0
  br i1 %235, label %236, label %359, !dx.controlflow.hints !41

; <label>:236                                     ; preds = %234
  %237 = and i32 %108, 1
  %238 = icmp eq i32 %237, 0
  %239 = select i1 %124, i32 2097152, i32 0
  %240 = shl i32 %111, 6
  %241 = add i32 %239, %240
  %242 = or i32 %241, 16
  %243 = or i32 %241, 32
  %244 = or i32 %241, 48
  br i1 %238, label %263, label %245, !dx.controlflow.hints !42

; <label>:245                                     ; preds = %236
  %246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.i32 %246, 3
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = extractvalue %dx.types.ResRet.i32 %248, 1
  %251 = extractvalue %dx.types.ResRet.i32 %248, 2
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = extractvalue %dx.types.ResRet.i32 %252, 1
  %255 = extractvalue %dx.types.ResRet.i32 %252, 2
  %256 = bitcast i32 %247 to float
  %257 = bitcast i32 %249 to float
  %258 = bitcast i32 %250 to float
  %259 = bitcast i32 %251 to float
  %260 = bitcast i32 %253 to float
  %261 = bitcast i32 %254 to float
  %262 = bitcast i32 %255 to float
  br label %456

; <label>:263                                     ; preds = %236
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = extractvalue %dx.types.ResRet.i32 %264, 1
  %267 = extractvalue %dx.types.ResRet.i32 %264, 2
  %268 = extractvalue %dx.types.ResRet.i32 %264, 3
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = extractvalue %dx.types.ResRet.i32 %269, 1
  %272 = extractvalue %dx.types.ResRet.i32 %269, 2
  %273 = extractvalue %dx.types.ResRet.i32 %269, 3
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = extractvalue %dx.types.ResRet.i32 %274, 1
  %277 = extractvalue %dx.types.ResRet.i32 %274, 2
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = extractvalue %dx.types.ResRet.i32 %278, 1
  %281 = extractvalue %dx.types.ResRet.i32 %278, 2
  %282 = extractvalue %dx.types.ResRet.i32 %278, 3
  %283 = bitcast i32 %265 to float
  %284 = bitcast i32 %266 to float
  %285 = bitcast i32 %267 to float
  %286 = bitcast i32 %268 to float
  %287 = bitcast i32 %270 to float
  %288 = bitcast i32 %271 to float
  %289 = bitcast i32 %272 to float
  %290 = bitcast i32 %273 to float
  %291 = bitcast i32 %279 to float
  %292 = bitcast i32 %280 to float
  %293 = bitcast i32 %281 to float
  %294 = bitcast i32 %282 to float
  %295 = and i32 %275, 65535
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = lshr i32 %275, 16
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = and i32 %276, 65535
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = lshr i32 %276, 16
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = and i32 %277, 65535
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = lshr i32 %277, 16
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = fmul fast float %284, %284
  %308 = fmul fast float %307, 2.000000e+00
  %309 = fsub fast float 1.000000e+00, %308
  %310 = fmul fast float %285, %285
  %311 = fmul fast float %310, 2.000000e+00
  %312 = fsub fast float %309, %311
  %313 = fmul fast float %283, 2.000000e+00
  %314 = fmul fast float %313, %284
  %315 = fmul fast float %285, 2.000000e+00
  %316 = fmul fast float %315, %286
  %317 = fsub fast float %314, %316
  %318 = fmul fast float %285, %283
  %319 = fmul fast float %286, %284
  %320 = fadd fast float %318, %319
  %321 = fmul fast float %320, 2.000000e+00
  %322 = fmul fast float %284, %283
  %323 = fmul fast float %286, %285
  %324 = fadd fast float %322, %323
  %325 = fmul fast float %324, 2.000000e+00
  %326 = fmul fast float %283, %283
  %327 = fmul fast float %326, 2.000000e+00
  %328 = fsub fast float 1.000000e+00, %327
  %329 = fsub fast float %328, %311
  %330 = fmul fast float %284, 2.000000e+00
  %331 = fmul fast float %330, %285
  %332 = fmul fast float %313, %286
  %333 = fsub fast float %331, %332
  %334 = fmul fast float %313, %285
  %335 = fmul fast float %330, %286
  %336 = fsub fast float %334, %335
  %337 = fmul fast float %285, %284
  %338 = fmul fast float %286, %283
  %339 = fadd fast float %337, %338
  %340 = fmul fast float %339, 2.000000e+00
  %341 = fsub fast float %328, %308
  %342 = fmul fast float %312, %290
  %343 = fmul fast float %325, %290
  %344 = fmul fast float %336, %290
  %345 = fmul fast float %317, %290
  %346 = fmul fast float %329, %290
  %347 = fmul fast float %340, %290
  %348 = fmul fast float %321, %290
  %349 = fmul fast float %333, %290
  %350 = fmul fast float %341, %290
  %351 = fmul fast float %290, %290
  %352 = fdiv fast float 1.000000e+00, %351
  %353 = and i32 %108, 2
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %456, label %355, !dx.controlflow.hints !43

; <label>:355                                     ; preds = %263
  %356 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.i32 %356, 3
  %358 = and i32 %357, 1
  br label %456

; <label>:359                                     ; preds = %234
  %360 = icmp eq i32 %109, 3
  br i1 %360, label %361, label %380, !dx.controlflow.hints !44

; <label>:361                                     ; preds = %359
  %362 = mul i32 %116, 24
  %363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.f32 %363, 0
  %365 = extractvalue %dx.types.ResRet.f32 %363, 1
  %366 = extractvalue %dx.types.ResRet.f32 %363, 2
  %367 = add i32 %362, 12
  %368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.f32 %368, 0
  %370 = extractvalue %dx.types.ResRet.f32 %368, 1
  %371 = extractvalue %dx.types.ResRet.f32 %368, 2
  %372 = shl i32 %105, 7
  %373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.f32 %373, 0
  %375 = extractvalue %dx.types.ResRet.f32 %373, 1
  %376 = extractvalue %dx.types.ResRet.f32 %373, 2
  %377 = or i32 %372, 12
  %378 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.f32 %378, 0
  br label %456

; <label>:380                                     ; preds = %359
  %381 = icmp eq i32 %109, 1
  br i1 %381, label %382, label %456, !dx.controlflow.hints !45

; <label>:382                                     ; preds = %380
  %383 = shl i32 %115, 6
  %384 = select i1 %124, i32 3670016, i32 1572864
  %385 = add i32 %384, %383
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.i32 %386, 0
  %388 = extractvalue %dx.types.ResRet.i32 %386, 1
  %389 = extractvalue %dx.types.ResRet.i32 %386, 2
  %390 = extractvalue %dx.types.ResRet.i32 %386, 3
  %391 = or i32 %385, 16
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = extractvalue %dx.types.ResRet.i32 %392, 1
  %395 = extractvalue %dx.types.ResRet.i32 %392, 2
  %396 = bitcast i32 %387 to float
  %397 = bitcast i32 %388 to float
  %398 = bitcast i32 %389 to float
  %399 = bitcast i32 %390 to float
  %400 = bitcast i32 %393 to float
  %401 = bitcast i32 %394 to float
  %402 = bitcast i32 %395 to float
  %403 = mul i32 %116, 24
  %404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.f32 %404, 0
  %406 = extractvalue %dx.types.ResRet.f32 %404, 1
  %407 = extractvalue %dx.types.ResRet.f32 %404, 2
  %408 = add i32 %403, 12
  %409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.f32 %409, 0
  %411 = extractvalue %dx.types.ResRet.f32 %409, 1
  %412 = extractvalue %dx.types.ResRet.f32 %409, 2
  %413 = fmul fast float %397, %397
  %414 = fmul fast float %413, 2.000000e+00
  %415 = fsub fast float 1.000000e+00, %414
  %416 = fmul fast float %398, %398
  %417 = fmul fast float %416, 2.000000e+00
  %418 = fsub fast float %415, %417
  %419 = fmul fast float %396, 2.000000e+00
  %420 = fmul fast float %419, %397
  %421 = fmul fast float %398, 2.000000e+00
  %422 = fmul fast float %421, %399
  %423 = fsub fast float %420, %422
  %424 = fmul fast float %398, %396
  %425 = fmul fast float %399, %397
  %426 = fadd fast float %424, %425
  %427 = fmul fast float %426, 2.000000e+00
  %428 = fmul fast float %397, %396
  %429 = fmul fast float %399, %398
  %430 = fadd fast float %428, %429
  %431 = fmul fast float %430, 2.000000e+00
  %432 = fmul fast float %396, %396
  %433 = fmul fast float %432, 2.000000e+00
  %434 = fsub fast float 1.000000e+00, %433
  %435 = fsub fast float %434, %417
  %436 = fmul fast float %397, 2.000000e+00
  %437 = fmul fast float %436, %398
  %438 = fmul fast float %419, %399
  %439 = fsub fast float %437, %438
  %440 = fmul fast float %419, %398
  %441 = fmul fast float %436, %399
  %442 = fsub fast float %440, %441
  %443 = fmul fast float %398, %397
  %444 = fmul fast float %399, %396
  %445 = fadd fast float %443, %444
  %446 = fmul fast float %445, 2.000000e+00
  %447 = fsub fast float %434, %414
  %448 = shl i32 %105, 7
  %449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.f32 %449, 0
  %451 = extractvalue %dx.types.ResRet.f32 %449, 1
  %452 = extractvalue %dx.types.ResRet.f32 %449, 2
  %453 = or i32 %448, 12
  %454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.f32 %454, 0
  br label %456

; <label>:456                                     ; preds = %382, %380, %361, %355, %263, %245, %154
  %457 = phi float [ %162, %154 ], [ %257, %245 ], [ %302, %355 ], [ %302, %263 ], [ %369, %361 ], [ %410, %382 ], [ 0.000000e+00, %380 ]
  %458 = phi float [ %163, %154 ], [ %258, %245 ], [ %304, %355 ], [ %304, %263 ], [ %370, %361 ], [ %411, %382 ], [ 0.000000e+00, %380 ]
  %459 = phi float [ %164, %154 ], [ %259, %245 ], [ %306, %355 ], [ %306, %263 ], [ %371, %361 ], [ %412, %382 ], [ 0.000000e+00, %380 ]
  %460 = phi float [ %157, %154 ], [ %260, %245 ], [ %296, %355 ], [ %296, %263 ], [ %364, %361 ], [ %405, %382 ], [ 0.000000e+00, %380 ]
  %461 = phi float [ %158, %154 ], [ %261, %245 ], [ %298, %355 ], [ %298, %263 ], [ %365, %361 ], [ %406, %382 ], [ 0.000000e+00, %380 ]
  %462 = phi float [ %159, %154 ], [ %262, %245 ], [ %300, %355 ], [ %300, %263 ], [ %366, %361 ], [ %407, %382 ], [ 0.000000e+00, %380 ]
  %463 = phi float [ %221, %154 ], [ 1.000000e+00, %245 ], [ %342, %355 ], [ %342, %263 ], [ 1.000000e+00, %361 ], [ %418, %382 ], [ 0.000000e+00, %380 ]
  %464 = phi float [ %224, %154 ], [ 0.000000e+00, %245 ], [ %345, %355 ], [ %345, %263 ], [ 0.000000e+00, %361 ], [ %423, %382 ], [ 0.000000e+00, %380 ]
  %465 = phi float [ %227, %154 ], [ 0.000000e+00, %245 ], [ %348, %355 ], [ %348, %263 ], [ 0.000000e+00, %361 ], [ %427, %382 ], [ 0.000000e+00, %380 ]
  %466 = phi float [ %167, %154 ], [ 0.000000e+00, %245 ], [ %287, %355 ], [ %287, %263 ], [ 0.000000e+00, %361 ], [ %400, %382 ], [ 0.000000e+00, %380 ]
  %467 = phi float [ %222, %154 ], [ 0.000000e+00, %245 ], [ %343, %355 ], [ %343, %263 ], [ 0.000000e+00, %361 ], [ %431, %382 ], [ 0.000000e+00, %380 ]
  %468 = phi float [ %225, %154 ], [ 1.000000e+00, %245 ], [ %346, %355 ], [ %346, %263 ], [ 1.000000e+00, %361 ], [ %435, %382 ], [ 0.000000e+00, %380 ]
  %469 = phi float [ %228, %154 ], [ 0.000000e+00, %245 ], [ %349, %355 ], [ %349, %263 ], [ 0.000000e+00, %361 ], [ %439, %382 ], [ 0.000000e+00, %380 ]
  %470 = phi float [ %168, %154 ], [ 0.000000e+00, %245 ], [ %288, %355 ], [ %288, %263 ], [ 0.000000e+00, %361 ], [ %401, %382 ], [ 0.000000e+00, %380 ]
  %471 = phi float [ %223, %154 ], [ 0.000000e+00, %245 ], [ %344, %355 ], [ %344, %263 ], [ 0.000000e+00, %361 ], [ %442, %382 ], [ 0.000000e+00, %380 ]
  %472 = phi float [ %226, %154 ], [ 0.000000e+00, %245 ], [ %347, %355 ], [ %347, %263 ], [ 0.000000e+00, %361 ], [ %446, %382 ], [ 0.000000e+00, %380 ]
  %473 = phi float [ %229, %154 ], [ 1.000000e+00, %245 ], [ %350, %355 ], [ %350, %263 ], [ 1.000000e+00, %361 ], [ %447, %382 ], [ 0.000000e+00, %380 ]
  %474 = phi float [ %169, %154 ], [ 0.000000e+00, %245 ], [ %289, %355 ], [ %289, %263 ], [ 0.000000e+00, %361 ], [ %402, %382 ], [ 0.000000e+00, %380 ]
  %475 = phi float [ 1.000000e+00, %154 ], [ 1.000000e+00, %245 ], [ 1.000000e+00, %355 ], [ 1.000000e+00, %263 ], [ 1.000000e+00, %361 ], [ 1.000000e+00, %382 ], [ 0.000000e+00, %380 ]
  %476 = phi float [ %231, %154 ], [ 1.000000e+00, %245 ], [ %352, %355 ], [ %352, %263 ], [ 1.000000e+00, %361 ], [ 1.000000e+00, %382 ], [ 0.000000e+00, %380 ]
  %477 = phi float [ %157, %154 ], [ 0.000000e+00, %245 ], [ %291, %355 ], [ %291, %263 ], [ %374, %361 ], [ %450, %382 ], [ 0.000000e+00, %380 ]
  %478 = phi float [ %158, %154 ], [ 0.000000e+00, %245 ], [ %292, %355 ], [ %292, %263 ], [ %375, %361 ], [ %451, %382 ], [ 0.000000e+00, %380 ]
  %479 = phi float [ %159, %154 ], [ 0.000000e+00, %245 ], [ %293, %355 ], [ %293, %263 ], [ %376, %361 ], [ %452, %382 ], [ 0.000000e+00, %380 ]
  %480 = phi float [ %233, %154 ], [ %256, %245 ], [ %294, %355 ], [ %294, %263 ], [ %379, %361 ], [ %455, %382 ], [ 0.000000e+00, %380 ]
  %481 = phi i32 [ 1, %154 ], [ 0, %245 ], [ %358, %355 ], [ 1, %263 ], [ 1, %361 ], [ 1, %382 ], [ 1, %380 ]
  %482 = shl i32 %106, 6
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = extractvalue %dx.types.ResRet.i32 %483, 1
  %486 = extractvalue %dx.types.ResRet.i32 %483, 3
  %487 = bitcast i32 %484 to float
  %488 = bitcast i32 %485 to float
  %489 = bitcast i32 %486 to float
  %490 = or i32 %482, 16
  %491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.i32 %491, 0
  %493 = extractvalue %dx.types.ResRet.i32 %491, 1
  %494 = extractvalue %dx.types.ResRet.i32 %491, 3
  %495 = bitcast i32 %492 to float
  %496 = bitcast i32 %493 to float
  %497 = bitcast i32 %494 to float
  %498 = or i32 %482, 32
  %499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.i32 %499, 0
  %501 = extractvalue %dx.types.ResRet.i32 %499, 1
  %502 = extractvalue %dx.types.ResRet.i32 %499, 3
  %503 = bitcast i32 %500 to float
  %504 = bitcast i32 %501 to float
  %505 = bitcast i32 %502 to float
  %506 = or i32 %482, 48
  %507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.i32 %507, 0
  %509 = extractvalue %dx.types.ResRet.i32 %507, 1
  %510 = extractvalue %dx.types.ResRet.i32 %507, 3
  %511 = bitcast i32 %508 to float
  %512 = bitcast i32 %509 to float
  %513 = bitcast i32 %510 to float
  %514 = shl i32 %106, 4
  %515 = add i32 %514, 4096
  %516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %515, i32 undef)  ; BufferLoad(srv,index,wot)
  %517 = extractvalue %dx.types.ResRet.i32 %516, 0
  %518 = extractvalue %dx.types.ResRet.i32 %516, 1
  %519 = extractvalue %dx.types.ResRet.i32 %516, 2
  %520 = extractvalue %dx.types.ResRet.i32 %516, 3
  %521 = icmp eq i32 %520, 1
  %522 = bitcast i32 %517 to float
  %523 = bitcast i32 %518 to float
  %524 = bitcast i32 %519 to float
  %525 = add i32 %514, 5120
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = extractvalue %dx.types.ResRet.i32 %526, 1
  %529 = bitcast i32 %527 to float
  %530 = bitcast i32 %528 to float
  %531 = bitcast float %466 to i32
  %532 = bitcast float %470 to i32
  %533 = bitcast float %474 to i32
  %534 = select i1 %521, i32 0, i32 %517
  %535 = select i1 %521, i32 0, i32 %518
  %536 = select i1 %521, i32 0, i32 %519
  %537 = sub i32 %531, %534
  %538 = sub i32 %532, %535
  %539 = sub i32 %533, %536
  %540 = sitofp i32 %537 to float
  %541 = sitofp i32 %538 to float
  %542 = sitofp i32 %539 to float
  %543 = fmul fast float %540, 0x3F30000000000000
  %544 = fmul fast float %541, 0x3F30000000000000
  %545 = fmul fast float %542, 0x3F30000000000000
  %546 = fmul fast float %487, %463
  %547 = call float @dx.op.tertiary.f32(i32 46, float %467, float %495, float %546)  ; FMad(a,b,c)
  %548 = call float @dx.op.tertiary.f32(i32 46, float %471, float %503, float %547)  ; FMad(a,b,c)
  %549 = fmul fast float %488, %463
  %550 = call float @dx.op.tertiary.f32(i32 46, float %467, float %496, float %549)  ; FMad(a,b,c)
  %551 = call float @dx.op.tertiary.f32(i32 46, float %471, float %504, float %550)  ; FMad(a,b,c)
  %552 = fmul fast float %489, %463
  %553 = call float @dx.op.tertiary.f32(i32 46, float %467, float %497, float %552)  ; FMad(a,b,c)
  %554 = call float @dx.op.tertiary.f32(i32 46, float %471, float %505, float %553)  ; FMad(a,b,c)
  %555 = fmul fast float %487, %464
  %556 = call float @dx.op.tertiary.f32(i32 46, float %468, float %495, float %555)  ; FMad(a,b,c)
  %557 = call float @dx.op.tertiary.f32(i32 46, float %472, float %503, float %556)  ; FMad(a,b,c)
  %558 = fmul fast float %488, %464
  %559 = call float @dx.op.tertiary.f32(i32 46, float %468, float %496, float %558)  ; FMad(a,b,c)
  %560 = call float @dx.op.tertiary.f32(i32 46, float %472, float %504, float %559)  ; FMad(a,b,c)
  %561 = fmul fast float %489, %464
  %562 = call float @dx.op.tertiary.f32(i32 46, float %468, float %497, float %561)  ; FMad(a,b,c)
  %563 = call float @dx.op.tertiary.f32(i32 46, float %472, float %505, float %562)  ; FMad(a,b,c)
  %564 = fmul fast float %487, %465
  %565 = call float @dx.op.tertiary.f32(i32 46, float %469, float %495, float %564)  ; FMad(a,b,c)
  %566 = call float @dx.op.tertiary.f32(i32 46, float %473, float %503, float %565)  ; FMad(a,b,c)
  %567 = fmul fast float %488, %465
  %568 = call float @dx.op.tertiary.f32(i32 46, float %469, float %496, float %567)  ; FMad(a,b,c)
  %569 = call float @dx.op.tertiary.f32(i32 46, float %473, float %504, float %568)  ; FMad(a,b,c)
  %570 = fmul fast float %489, %465
  %571 = call float @dx.op.tertiary.f32(i32 46, float %469, float %497, float %570)  ; FMad(a,b,c)
  %572 = call float @dx.op.tertiary.f32(i32 46, float %473, float %505, float %571)  ; FMad(a,b,c)
  %573 = fmul fast float %543, %487
  %574 = call float @dx.op.tertiary.f32(i32 46, float %544, float %495, float %573)  ; FMad(a,b,c)
  %575 = call float @dx.op.tertiary.f32(i32 46, float %545, float %503, float %574)  ; FMad(a,b,c)
  %576 = call float @dx.op.tertiary.f32(i32 46, float %475, float %511, float %575)  ; FMad(a,b,c)
  %577 = fmul fast float %543, %488
  %578 = call float @dx.op.tertiary.f32(i32 46, float %544, float %496, float %577)  ; FMad(a,b,c)
  %579 = call float @dx.op.tertiary.f32(i32 46, float %545, float %504, float %578)  ; FMad(a,b,c)
  %580 = call float @dx.op.tertiary.f32(i32 46, float %475, float %512, float %579)  ; FMad(a,b,c)
  %581 = fmul fast float %543, %489
  %582 = call float @dx.op.tertiary.f32(i32 46, float %544, float %497, float %581)  ; FMad(a,b,c)
  %583 = call float @dx.op.tertiary.f32(i32 46, float %545, float %505, float %582)  ; FMad(a,b,c)
  %584 = call float @dx.op.tertiary.f32(i32 46, float %475, float %513, float %583)  ; FMad(a,b,c)
  br i1 %133, label %585, label %626, !dx.controlflow.hints !46

; <label>:585                                     ; preds = %456
  %586 = sub i32 0, %534
  %587 = sub i32 0, %535
  %588 = sub i32 0, %536
  %589 = sitofp i32 %586 to float
  %590 = sitofp i32 %587 to float
  %591 = sitofp i32 %588 to float
  %592 = fmul fast float %589, 0x3F30000000000000
  %593 = fmul fast float %590, 0x3F30000000000000
  %594 = fmul fast float %591, 0x3F30000000000000
  %595 = fmul fast float %592, %487
  %596 = call float @dx.op.tertiary.f32(i32 46, float %593, float %495, float %595)  ; FMad(a,b,c)
  %597 = call float @dx.op.tertiary.f32(i32 46, float %594, float %503, float %596)  ; FMad(a,b,c)
  %598 = fadd fast float %597, %511
  %599 = fmul fast float %592, %488
  %600 = call float @dx.op.tertiary.f32(i32 46, float %593, float %496, float %599)  ; FMad(a,b,c)
  %601 = call float @dx.op.tertiary.f32(i32 46, float %594, float %504, float %600)  ; FMad(a,b,c)
  %602 = fadd fast float %601, %512
  %603 = fmul fast float %592, %489
  %604 = call float @dx.op.tertiary.f32(i32 46, float %593, float %497, float %603)  ; FMad(a,b,c)
  %605 = call float @dx.op.tertiary.f32(i32 46, float %594, float %505, float %604)  ; FMad(a,b,c)
  %606 = fadd fast float %605, %513
  %607 = mul i32 %123, 6
  %608 = add i32 %607, 2
  %609 = add i32 %608, %130
  %610 = shl i32 %609, 2
  %611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.i32 %611, 0
  %613 = extractvalue %dx.types.ResRet.i32 %611, 1
  %614 = extractvalue %dx.types.ResRet.i32 %611, 2
  %615 = bitcast i32 %612 to float
  %616 = bitcast i32 %613 to float
  %617 = bitcast i32 %614 to float
  %618 = add i32 %610, 12
  %619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %618, i32 undef)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.i32 %619, 0
  %621 = extractvalue %dx.types.ResRet.i32 %619, 1
  %622 = extractvalue %dx.types.ResRet.i32 %619, 2
  %623 = bitcast i32 %620 to float
  %624 = bitcast i32 %621 to float
  %625 = bitcast i32 %622 to float
  br label %776

; <label>:626                                     ; preds = %456
  %627 = icmp eq i32 %481, 0
  br i1 %627, label %776, label %628, !dx.controlflow.hints !47

; <label>:628                                     ; preds = %626
  %629 = and i32 %143, 2097151
  %630 = uitofp i32 %629 to float
  %631 = lshr i32 %143, 21
  %632 = shl i32 %144, 11
  %633 = and i32 %632, 2095104
  %634 = or i32 %633, %631
  %635 = uitofp i32 %634 to float
  %636 = lshr i32 %144, 10
  %637 = and i32 %636, 2097151
  %638 = uitofp i32 %637 to float
  br i1 %125, label %649, label %639, !dx.controlflow.hints !48

; <label>:639                                     ; preds = %628
  %640 = fdiv float %630, 2.097151e+06
  %641 = fdiv float %635, 2.097151e+06
  %642 = fdiv float %638, 2.097151e+06
  %643 = fmul float %640, 2.000000e+00
  %644 = fmul float %641, 2.000000e+00
  %645 = fmul float %642, 2.000000e+00
  %646 = fadd float %643, -1.000000e+00
  %647 = fadd float %644, -1.000000e+00
  %648 = fadd float %645, -1.000000e+00
  br label %649

; <label>:649                                     ; preds = %639, %628
  %650 = phi float [ %646, %639 ], [ %630, %628 ]
  %651 = phi float [ %647, %639 ], [ %635, %628 ]
  %652 = phi float [ %648, %639 ], [ %638, %628 ]
  %653 = fmul float %480, %652
  %654 = fadd float %479, %653
  %655 = fmul float %480, %651
  %656 = fadd float %478, %655
  %657 = fmul float %480, %650
  %658 = fadd float %477, %657
  %659 = and i32 %145, 2097151
  %660 = uitofp i32 %659 to float
  %661 = lshr i32 %145, 21
  %662 = shl i32 %146, 11
  %663 = and i32 %662, 2095104
  %664 = or i32 %663, %661
  %665 = uitofp i32 %664 to float
  %666 = lshr i32 %146, 10
  %667 = and i32 %666, 2097151
  %668 = uitofp i32 %667 to float
  br i1 %125, label %679, label %669, !dx.controlflow.hints !48

; <label>:669                                     ; preds = %649
  %670 = fdiv float %660, 2.097151e+06
  %671 = fdiv float %665, 2.097151e+06
  %672 = fdiv float %668, 2.097151e+06
  %673 = fmul float %670, 2.000000e+00
  %674 = fmul float %671, 2.000000e+00
  %675 = fmul float %672, 2.000000e+00
  %676 = fadd float %673, -1.000000e+00
  %677 = fadd float %674, -1.000000e+00
  %678 = fadd float %675, -1.000000e+00
  br label %679

; <label>:679                                     ; preds = %669, %649
  %680 = phi float [ %676, %669 ], [ %660, %649 ]
  %681 = phi float [ %677, %669 ], [ %665, %649 ]
  %682 = phi float [ %678, %669 ], [ %668, %649 ]
  %683 = fmul float %480, %682
  %684 = fadd float %479, %683
  %685 = fmul float %480, %681
  %686 = fadd float %478, %685
  %687 = fmul float %480, %680
  %688 = fadd float %477, %687
  %689 = fadd fast float %688, %658
  %690 = fadd fast float %686, %656
  %691 = fadd fast float %684, %654
  %692 = fmul fast float %689, 5.000000e-01
  %693 = fmul fast float %690, 5.000000e-01
  %694 = fmul fast float %691, 5.000000e-01
  %695 = fsub fast float %680, %650
  %696 = fsub fast float %681, %651
  %697 = fsub fast float %682, %652
  %698 = fmul fast float %480, 5.000000e-01
  %699 = fmul fast float %698, %695
  %700 = fmul fast float %698, %696
  %701 = fmul fast float %698, %697
  %702 = and i32 %149, 1023
  %703 = uitofp i32 %702 to float
  %704 = lshr i32 %149, 10
  %705 = and i32 %704, 1023
  %706 = uitofp i32 %705 to float
  %707 = lshr i32 %149, 20
  %708 = and i32 %707, 1023
  %709 = uitofp i32 %708 to float
  %710 = fmul fast float %703, 0x3F60040100000000
  %711 = fmul fast float %706, 0x3F60040100000000
  %712 = fmul fast float %709, 0x3F60040100000000
  %713 = fadd fast float %710, -1.000000e+00
  %714 = fadd fast float %711, -1.000000e+00
  %715 = fadd fast float %712, -1.000000e+00
  %716 = fmul fast float %713, %152
  %717 = fmul fast float %714, %152
  %718 = fmul fast float %715, %152
  %719 = and i32 %107, 1
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %776, label %721, !dx.controlflow.hints !49

; <label>:721                                     ; preds = %679
  %722 = fcmp fast ugt float %153, 0.000000e+00
  br i1 %722, label %723, label %773, !dx.controlflow.hints !50

; <label>:723                                     ; preds = %721
  br i1 %521, label %724, label %737, !dx.controlflow.hints !51

; <label>:724                                     ; preds = %723
  %725 = fsub fast float -0.000000e+00, %522
  %726 = fsub fast float -0.000000e+00, %523
  %727 = fsub fast float -0.000000e+00, %524
  %728 = fmul fast float %463, %725
  %729 = call float @dx.op.tertiary.f32(i32 46, float %467, float %726, float %728)  ; FMad(a,b,c)
  %730 = call float @dx.op.tertiary.f32(i32 46, float %471, float %727, float %729)  ; FMad(a,b,c)
  %731 = fmul fast float %464, %725
  %732 = call float @dx.op.tertiary.f32(i32 46, float %468, float %726, float %731)  ; FMad(a,b,c)
  %733 = call float @dx.op.tertiary.f32(i32 46, float %472, float %727, float %732)  ; FMad(a,b,c)
  %734 = fmul fast float %465, %725
  %735 = call float @dx.op.tertiary.f32(i32 46, float %469, float %726, float %734)  ; FMad(a,b,c)
  %736 = call float @dx.op.tertiary.f32(i32 46, float %473, float %727, float %735)  ; FMad(a,b,c)
  br label %762

; <label>:737                                     ; preds = %723
  %738 = fsub fast float -0.000000e+00, %543
  %739 = fsub fast float -0.000000e+00, %544
  %740 = fsub fast float -0.000000e+00, %545
  %741 = fmul fast float %463, %738
  %742 = call float @dx.op.tertiary.f32(i32 46, float %467, float %739, float %741)  ; FMad(a,b,c)
  %743 = call float @dx.op.tertiary.f32(i32 46, float %471, float %740, float %742)  ; FMad(a,b,c)
  %744 = fmul fast float %464, %738
  %745 = call float @dx.op.tertiary.f32(i32 46, float %468, float %739, float %744)  ; FMad(a,b,c)
  %746 = call float @dx.op.tertiary.f32(i32 46, float %472, float %740, float %745)  ; FMad(a,b,c)
  %747 = fmul fast float %465, %738
  %748 = call float @dx.op.tertiary.f32(i32 46, float %469, float %739, float %747)  ; FMad(a,b,c)
  %749 = call float @dx.op.tertiary.f32(i32 46, float %473, float %740, float %748)  ; FMad(a,b,c)
  %750 = fmul fast float %743, %476
  %751 = fmul fast float %746, %476
  %752 = fmul fast float %749, %476
  %753 = fsub fast float -0.000000e+00, %716
  %754 = fsub fast float %753, %692
  %755 = fadd fast float %754, %750
  %756 = fsub fast float -0.000000e+00, %717
  %757 = fsub fast float %756, %693
  %758 = fadd fast float %757, %751
  %759 = fsub fast float -0.000000e+00, %718
  %760 = fsub fast float %759, %694
  %761 = fadd fast float %760, %752
  br label %762

; <label>:762                                     ; preds = %737, %724
  %763 = phi float [ %730, %724 ], [ %755, %737 ]
  %764 = phi float [ %733, %724 ], [ %758, %737 ]
  %765 = phi float [ %736, %724 ], [ %761, %737 ]
  %766 = call float @dx.op.dot3.f32(i32 55, float %763, float %764, float %765, float %763, float %764, float %765)  ; Dot3(ax,ay,az,bx,by,bz)
  %767 = call float @dx.op.unary.f32(i32 25, float %766)  ; Rsqrt(value)
  %768 = fmul fast float %767, %763
  %769 = fmul fast float %767, %764
  %770 = fmul fast float %767, %765
  %771 = call float @dx.op.dot3.f32(i32 55, float %768, float %769, float %770, float %713, float %714, float %715)  ; Dot3(ax,ay,az,bx,by,bz)
  %772 = fcmp fast olt float %771, %153
  br label %773

; <label>:773                                     ; preds = %762, %721
  %774 = phi i1 [ %772, %762 ], [ true, %721 ]
  %775 = zext i1 %774 to i32
  br label %776

; <label>:776                                     ; preds = %773, %679, %626, %585
  %777 = phi i32 [ 1, %585 ], [ %775, %773 ], [ 1, %679 ], [ 1, %626 ]
  %778 = phi float [ %615, %585 ], [ %692, %773 ], [ %692, %679 ], [ %460, %626 ]
  %779 = phi float [ %616, %585 ], [ %693, %773 ], [ %693, %679 ], [ %461, %626 ]
  %780 = phi float [ %617, %585 ], [ %694, %773 ], [ %694, %679 ], [ %462, %626 ]
  %781 = phi float [ %623, %585 ], [ %699, %773 ], [ %699, %679 ], [ %457, %626 ]
  %782 = phi float [ %624, %585 ], [ %700, %773 ], [ %700, %679 ], [ %458, %626 ]
  %783 = phi float [ %625, %585 ], [ %701, %773 ], [ %701, %679 ], [ %459, %626 ]
  %784 = phi float [ %487, %585 ], [ %548, %773 ], [ %548, %679 ], [ %548, %626 ]
  %785 = phi float [ %495, %585 ], [ %557, %773 ], [ %557, %679 ], [ %557, %626 ]
  %786 = phi float [ %503, %585 ], [ %566, %773 ], [ %566, %679 ], [ %566, %626 ]
  %787 = phi float [ %598, %585 ], [ %576, %773 ], [ %576, %679 ], [ %576, %626 ]
  %788 = phi float [ %488, %585 ], [ %551, %773 ], [ %551, %679 ], [ %551, %626 ]
  %789 = phi float [ %496, %585 ], [ %560, %773 ], [ %560, %679 ], [ %560, %626 ]
  %790 = phi float [ %504, %585 ], [ %569, %773 ], [ %569, %679 ], [ %569, %626 ]
  %791 = phi float [ %602, %585 ], [ %580, %773 ], [ %580, %679 ], [ %580, %626 ]
  %792 = phi float [ %489, %585 ], [ %554, %773 ], [ %554, %679 ], [ %554, %626 ]
  %793 = phi float [ %497, %585 ], [ %563, %773 ], [ %563, %679 ], [ %563, %626 ]
  %794 = phi float [ %505, %585 ], [ %572, %773 ], [ %572, %679 ], [ %572, %626 ]
  %795 = phi float [ %606, %585 ], [ %584, %773 ], [ %584, %679 ], [ %584, %626 ]
  %796 = call i1 @dx.op.isSpecialFloat.f32(i32 9, float %778)  ; IsInf(value)
  %797 = call i1 @dx.op.isSpecialFloat.f32(i32 9, float %779)  ; IsInf(value)
  %798 = call i1 @dx.op.isSpecialFloat.f32(i32 9, float %780)  ; IsInf(value)
  %799 = or i1 %796, %797
  %800 = or i1 %799, %798
  %801 = call i1 @dx.op.isSpecialFloat.f32(i32 9, float %781)  ; IsInf(value)
  %802 = call i1 @dx.op.isSpecialFloat.f32(i32 9, float %782)  ; IsInf(value)
  %803 = call i1 @dx.op.isSpecialFloat.f32(i32 9, float %783)  ; IsInf(value)
  %804 = or i1 %801, %802
  %805 = or i1 %804, %803
  %806 = or i1 %800, %805
  br i1 %806, label %1305, label %807, !dx.controlflow.hints !52

; <label>:807                                     ; preds = %776
  %808 = and i32 %107, 32
  %809 = icmp ne i32 %808, 0
  %810 = or i1 %809, %133
  %811 = icmp ne i32 %777, 0
  %812 = and i1 %810, %811
  br i1 %812, label %813, label %1305, !dx.controlflow.hints !53

; <label>:813                                     ; preds = %807
  %814 = and i32 %106, -2
  %815 = icmp eq i32 %814, 62
  %816 = fsub fast float %778, %781
  %817 = fsub fast float %779, %782
  %818 = fsub fast float %780, %783
  %819 = fmul fast float %792, %816
  %820 = call float @dx.op.tertiary.f32(i32 46, float %817, float %793, float %819)  ; FMad(a,b,c)
  %821 = call float @dx.op.tertiary.f32(i32 46, float %818, float %794, float %820)  ; FMad(a,b,c)
  %822 = fadd fast float %821, %795
  %823 = fmul fast float %781, 2.000000e+00
  %824 = fmul fast float %782, 2.000000e+00
  %825 = fmul fast float %783, 2.000000e+00
  %826 = fmul fast float %784, %823
  %827 = fmul fast float %788, %823
  %828 = fmul fast float %792, %823
  %829 = fmul fast float %785, %824
  %830 = fmul fast float %789, %824
  %831 = fmul fast float %793, %824
  %832 = fmul fast float %786, %825
  %833 = fmul fast float %790, %825
  %834 = fmul fast float %794, %825
  %835 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 0
  %836 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 0
  %837 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 0
  store float 0.000000e+00, float* %835, align 4
  store float 0.000000e+00, float* %836, align 4
  store float 0.000000e+00, float* %837, align 4
  %838 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 1
  %839 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 1
  %840 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 1
  store float %826, float* %838, align 4
  store float %827, float* %839, align 4
  store float %828, float* %840, align 4
  %841 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 2
  %842 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 2
  %843 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 2
  store float %829, float* %841, align 4
  store float %830, float* %842, align 4
  store float %831, float* %843, align 4
  %844 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 3
  %845 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 3
  %846 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 3
  %847 = fsub fast float -0.000000e+00, %826
  %848 = fsub fast float -0.000000e+00, %827
  %849 = fsub fast float -0.000000e+00, %828
  store float %847, float* %844, align 4
  store float %848, float* %845, align 4
  store float %849, float* %846, align 4
  %850 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 4
  %851 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 4
  %852 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 4
  store float %832, float* %850, align 4
  store float %833, float* %851, align 4
  store float %834, float* %852, align 4
  %853 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 5
  %854 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 5
  %855 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 5
  store float %826, float* %853, align 4
  store float %827, float* %854, align 4
  store float %828, float* %855, align 4
  %856 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 6
  %857 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 6
  %858 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 6
  %859 = fsub fast float -0.000000e+00, %829
  %860 = fsub fast float -0.000000e+00, %830
  %861 = fsub fast float -0.000000e+00, %831
  store float %859, float* %856, align 4
  store float %860, float* %857, align 4
  store float %861, float* %858, align 4
  %862 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 7
  %863 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 7
  %864 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 7
  store float %847, float* %862, align 4
  store float %848, float* %863, align 4
  store float %849, float* %864, align 4
  %865 = fcmp fast olt float %822, 0.000000e+00
  %866 = zext i1 %865 to i32
  %867 = fadd fast float %822, %828
  %868 = fcmp fast olt float %867, 0.000000e+00
  %869 = select i1 %868, i32 2, i32 0
  %870 = or i32 %869, %866
  %871 = fadd fast float %867, %831
  %872 = fcmp fast olt float %871, 0.000000e+00
  %873 = select i1 %872, i32 4, i32 0
  %874 = or i32 %870, %873
  %875 = fsub fast float %871, %828
  %876 = fcmp fast olt float %875, 0.000000e+00
  %877 = select i1 %876, i32 8, i32 0
  %878 = or i32 %874, %877
  %879 = fadd fast float %875, %834
  %880 = fcmp fast olt float %879, 0.000000e+00
  %881 = select i1 %880, i32 16, i32 0
  %882 = or i32 %878, %881
  %883 = fadd fast float %879, %828
  %884 = fcmp fast olt float %883, 0.000000e+00
  %885 = select i1 %884, i32 32, i32 0
  %886 = or i32 %882, %885
  %887 = fsub fast float %883, %831
  %888 = fcmp fast olt float %887, 0.000000e+00
  %889 = select i1 %888, i32 64, i32 0
  %890 = or i32 %886, %889
  %891 = fsub fast float %887, %828
  %892 = fcmp fast olt float %891, 0.000000e+00
  %893 = select i1 %892, i32 128, i32 0
  %894 = or i32 %890, %893
  %895 = icmp eq i32 %894, 255
  br i1 %895, label %1301, label %896, !dx.controlflow.hints !54

; <label>:896                                     ; preds = %813
  %897 = icmp eq i32 %894, 0
  br i1 %897, label %898, label %1301, !dx.controlflow.hints !55

; <label>:898                                     ; preds = %896
  %899 = fmul fast float %784, %816
  %900 = call float @dx.op.tertiary.f32(i32 46, float %817, float %785, float %899)  ; FMad(a,b,c)
  %901 = call float @dx.op.tertiary.f32(i32 46, float %818, float %786, float %900)  ; FMad(a,b,c)
  %902 = fadd fast float %901, %787
  %903 = fmul fast float %788, %816
  %904 = call float @dx.op.tertiary.f32(i32 46, float %817, float %789, float %903)  ; FMad(a,b,c)
  %905 = call float @dx.op.tertiary.f32(i32 46, float %818, float %790, float %904)  ; FMad(a,b,c)
  %906 = fadd fast float %905, %791
  br label %907

; <label>:907                                     ; preds = %938, %898
  %908 = phi float [ %944, %938 ], [ 0.000000e+00, %898 ]
  %909 = phi float [ %942, %938 ], [ 0.000000e+00, %898 ]
  %910 = phi float [ %940, %938 ], [ 0.000000e+00, %898 ]
  %911 = phi float [ %932, %938 ], [ 9.999999e+06, %898 ]
  %912 = phi float [ %933, %938 ], [ 9.999999e+06, %898 ]
  %913 = phi float [ %934, %938 ], [ -9.999999e+06, %898 ]
  %914 = phi float [ %935, %938 ], [ -9.999999e+06, %898 ]
  %915 = phi float [ %923, %938 ], [ 9.999999e+06, %898 ]
  %916 = phi float [ %920, %938 ], [ %902, %898 ]
  %917 = phi float [ %921, %938 ], [ %906, %898 ]
  %918 = phi float [ %922, %938 ], [ %822, %898 ]
  %919 = phi i32 [ %936, %938 ], [ 0, %898 ]
  %920 = fadd fast float %910, %916
  %921 = fadd fast float %909, %917
  %922 = fadd fast float %908, %918
  %923 = call float @dx.op.binary.f32(i32 36, float %915, float %922)  ; FMin(a,b)
  %924 = fdiv fast float %920, %922
  %925 = fdiv fast float %921, %922
  %926 = fmul fast float %924, 5.000000e-01
  %927 = fmul fast float %925, 5.000000e-01
  %928 = fadd fast float %926, 5.000000e-01
  %929 = fsub fast float 5.000000e-01, %927
  %930 = call float @dx.op.unary.f32(i32 7, float %928)  ; Saturate(value)
  %931 = call float @dx.op.unary.f32(i32 7, float %929)  ; Saturate(value)
  %932 = call float @dx.op.binary.f32(i32 36, float %911, float %930)  ; FMin(a,b)
  %933 = call float @dx.op.binary.f32(i32 36, float %912, float %931)  ; FMin(a,b)
  %934 = call float @dx.op.binary.f32(i32 35, float %913, float %930)  ; FMax(a,b)
  %935 = call float @dx.op.binary.f32(i32 35, float %914, float %931)  ; FMax(a,b)
  %936 = add nuw nsw i32 %919, 1
  %937 = icmp eq i32 %936, 8
  br i1 %937, label %945, label %938

; <label>:938                                     ; preds = %907
  %939 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 %936
  %940 = load float, float* %939, align 4
  %941 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 %936
  %942 = load float, float* %941, align 4
  %943 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 %936
  %944 = load float, float* %943, align 4
  br label %907

; <label>:945                                     ; preds = %907
  %946 = fcmp fast ole float %934, 0.000000e+00
  %947 = fcmp fast oge float %932, 1.000000e+00
  %948 = or i1 %947, %946
  %949 = fcmp fast ole float %935, 0.000000e+00
  %950 = or i1 %948, %949
  %951 = fcmp fast oge float %933, 1.000000e+00
  %952 = or i1 %951, %950
  br i1 %952, label %1301, label %953, !dx.controlflow.hints !56

; <label>:953                                     ; preds = %945
  %954 = fmul fast float %932, %529
  %955 = fmul fast float %933, %530
  %956 = fmul fast float %934, %529
  %957 = fmul fast float %935, %530
  %958 = call float @dx.op.unary.f32(i32 26, float %954)  ; Round_ne(value)
  %959 = call float @dx.op.unary.f32(i32 26, float %955)  ; Round_ne(value)
  %960 = call float @dx.op.unary.f32(i32 26, float %956)  ; Round_ne(value)
  %961 = call float @dx.op.unary.f32(i32 26, float %957)  ; Round_ne(value)
  %962 = fcmp fast oeq float %958, %960
  %963 = fcmp fast oeq float %959, %961
  %964 = or i1 %962, %963
  br i1 %964, label %1301, label %965, !dx.controlflow.hints !57

; <label>:965                                     ; preds = %953
  %966 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.i32 %966, 0
  %968 = icmp ne i32 %967, 0
  %969 = and i32 %107, 2
  %970 = icmp ne i32 %969, 0
  %971 = and i1 %970, %968
  br i1 %971, label %972, label %1301, !dx.controlflow.hints !58

; <label>:972                                     ; preds = %965
  %973 = and i32 %967, 2
  %974 = icmp eq i32 %973, 0
  br i1 %974, label %1127, label %975, !dx.controlflow.hints !59

; <label>:975                                     ; preds = %972
  %976 = fsub fast float %934, %932
  %977 = fsub fast float %935, %933
  %978 = fmul fast float %976, 6.400000e+01
  %979 = fmul fast float %977, 6.400000e+01
  %980 = call float @dx.op.unary.f32(i32 28, float %978)  ; Round_pi(value)
  %981 = call float @dx.op.unary.f32(i32 28, float %979)  ; Round_pi(value)
  %982 = call float @dx.op.binary.f32(i32 35, float %980, float %981)  ; FMax(a,b)
  %983 = call float @dx.op.unary.f32(i32 23, float %982)  ; Log(value)
  %984 = call float @dx.op.unary.f32(i32 28, float %983)  ; Round_pi(value)
  %985 = fptosi float %984 to i32
  %986 = call i32 @dx.op.binary.i32(i32 37, i32 %985, i32 0)  ; IMax(a,b)
  %987 = call i32 @dx.op.binary.i32(i32 38, i32 %986, i32 6)  ; IMin(a,b)
  %988 = and i32 %987, 31
  %989 = lshr i32 64, %988
  %990 = uitofp i32 %989 to float
  %991 = call float @dx.op.binary.f32(i32 35, float %990, float 1.000000e+00)  ; FMax(a,b)
  %992 = fdiv fast float 1.000000e+00, %991
  %993 = fmul fast float %991, %932
  %994 = fmul fast float %991, %933
  %995 = call float @dx.op.unary.f32(i32 27, float %993)  ; Round_ni(value)
  %996 = call float @dx.op.unary.f32(i32 27, float %994)  ; Round_ni(value)
  %997 = call float @dx.op.binary.f32(i32 35, float %995, float 0.000000e+00)  ; FMax(a,b)
  %998 = call float @dx.op.binary.f32(i32 35, float %996, float 0.000000e+00)  ; FMax(a,b)
  %999 = call float @dx.op.binary.f32(i32 36, float %997, float %991)  ; FMin(a,b)
  %1000 = call float @dx.op.binary.f32(i32 36, float %998, float %991)  ; FMin(a,b)
  %1001 = fmul fast float %991, %934
  %1002 = fmul fast float %991, %935
  %1003 = call float @dx.op.unary.f32(i32 28, float %1001)  ; Round_pi(value)
  %1004 = call float @dx.op.unary.f32(i32 28, float %1002)  ; Round_pi(value)
  %1005 = call float @dx.op.binary.f32(i32 35, float %1003, float 0.000000e+00)  ; FMax(a,b)
  %1006 = call float @dx.op.binary.f32(i32 35, float %1004, float 0.000000e+00)  ; FMax(a,b)
  %1007 = call float @dx.op.binary.f32(i32 36, float %1005, float %991)  ; FMin(a,b)
  %1008 = call float @dx.op.binary.f32(i32 36, float %1006, float %991)  ; FMin(a,b)
  %1009 = fadd fast float %999, 1.000000e+00
  %1010 = fmul fast float %1009, %992
  %1011 = fmul fast float %992, 2.000000e+00
  %1012 = fsub fast float %1007, %999
  %1013 = fsub fast float %1008, %1000
  %1014 = fmul fast float %1012, 5.000000e-01
  %1015 = fmul fast float %1013, 5.000000e-01
  %1016 = call float @dx.op.unary.f32(i32 28, float %1014)  ; Round_pi(value)
  %1017 = call float @dx.op.unary.f32(i32 28, float %1015)  ; Round_pi(value)
  %1018 = fptoui float %1016 to i32
  %1019 = fptoui float %1017 to i32
  %1020 = shl i32 1, %988
  %1021 = add i32 %1020, -1
  %1022 = lshr i32 %1021, 6
  %1023 = and i32 %1022, 1
  %1024 = sub nsw i32 0, %1023
  %1025 = icmp eq i32 %1019, %1024
  br i1 %1025, label %1107, label %1026

; <label>:1026                                    ; preds = %975
  %1027 = fadd fast float %1000, 1.000000e+00
  %1028 = fmul fast float %1027, %992
  %1029 = and i32 %1022, 1
  %1030 = add i32 %1018, %1029
  %1031 = add i32 %1019, %1029
  br label %1032

; <label>:1032                                    ; preds = %1100, %1026
  %1033 = phi i32 [ %1101, %1100 ], [ 1, %1026 ]
  %1034 = phi float [ %1102, %1100 ], [ 0.000000e+00, %1026 ]
  %1035 = phi float [ %1103, %1100 ], [ %1028, %1026 ]
  %1036 = phi i32 [ %1104, %1100 ], [ 0, %1026 ]
  %1037 = sub nsw i32 0, %1023
  %1038 = icmp eq i32 %1018, %1037
  br i1 %1038, label %1100, label %1039

; <label>:1039                                    ; preds = %1032
  br label %1040

; <label>:1040                                    ; preds = %1040, %1039
  %1041 = phi i32 [ %1091, %1040 ], [ %1033, %1039 ]
  %1042 = phi float [ %1095, %1040 ], [ %1034, %1039 ]
  %1043 = phi float [ %1096, %1040 ], [ %1010, %1039 ]
  %1044 = phi i32 [ %1097, %1040 ], [ 0, %1039 ]
  %1045 = sitofp i32 %987 to float
  %1046 = fmul fast float %992, 0xBFDFE00000000000
  %1047 = fadd fast float %1046, %1043
  %1048 = fmul fast float %992, 0x3FE0100000000000
  %1049 = fadd fast float %1048, %1035
  %1050 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %1047, float %1049, float undef, float undef, i32 0, i32 0, i32 undef, float %1045)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1051 = extractvalue %dx.types.ResRet.f32 %1050, 0
  %1052 = fadd fast float %1048, %1043
  %1053 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %1052, float %1049, float undef, float undef, i32 0, i32 0, i32 undef, float %1045)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1054 = extractvalue %dx.types.ResRet.f32 %1053, 0
  %1055 = fadd fast float %1046, %1035
  %1056 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %1052, float %1055, float undef, float undef, i32 0, i32 0, i32 undef, float %1045)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1057 = extractvalue %dx.types.ResRet.f32 %1056, 0
  %1058 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %1047, float %1055, float undef, float undef, i32 0, i32 0, i32 undef, float %1045)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1059 = extractvalue %dx.types.ResRet.f32 %1058, 0
  %1060 = fcmp fast olt float %1051, -1.000000e+00
  %1061 = fcmp fast ogt float %1051, -1.000000e+00
  %1062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1063 = extractvalue %dx.types.CBufRet.f32 %1062, 1
  %1064 = select i1 %1061, float %1063, float 1.000000e+00
  %1065 = fadd fast float %1051, 1.000000e+00
  %1066 = fmul fast float %1064, %1065
  %1067 = call float @dx.op.unary.f32(i32 6, float %1066)  ; FAbs(value)
  %1068 = fcmp fast olt float %1054, -1.000000e+00
  %1069 = fcmp fast ogt float %1054, -1.000000e+00
  %1070 = select i1 %1069, float %1063, float 1.000000e+00
  %1071 = fadd fast float %1054, 1.000000e+00
  %1072 = fmul fast float %1070, %1071
  %1073 = call float @dx.op.unary.f32(i32 6, float %1072)  ; FAbs(value)
  %1074 = fcmp fast olt float %1057, -1.000000e+00
  %1075 = fcmp fast ogt float %1057, -1.000000e+00
  %1076 = select i1 %1075, float %1063, float 1.000000e+00
  %1077 = fadd fast float %1057, 1.000000e+00
  %1078 = fmul fast float %1076, %1077
  %1079 = call float @dx.op.unary.f32(i32 6, float %1078)  ; FAbs(value)
  %1080 = fcmp fast olt float %1059, -1.000000e+00
  %1081 = fcmp fast ogt float %1059, -1.000000e+00
  %1082 = select i1 %1081, float %1063, float 1.000000e+00
  %1083 = fadd fast float %1059, 1.000000e+00
  %1084 = fmul fast float %1082, %1083
  %1085 = call float @dx.op.unary.f32(i32 6, float %1084)  ; FAbs(value)
  %1086 = and i1 %1060, %1068
  %1087 = and i1 %1086, %1074
  %1088 = and i1 %1087, %1080
  %1089 = icmp ne i32 %1041, 0
  %1090 = and i1 %1089, %1088
  %1091 = zext i1 %1090 to i32
  %1092 = call float @dx.op.binary.f32(i32 35, float %1073, float %1079)  ; FMax(a,b)
  %1093 = call float @dx.op.binary.f32(i32 35, float %1067, float %1092)  ; FMax(a,b)
  %1094 = call float @dx.op.binary.f32(i32 35, float %1093, float %1085)  ; FMax(a,b)
  %1095 = call float @dx.op.binary.f32(i32 35, float %1094, float %1042)  ; FMax(a,b)
  %1096 = fadd fast float %1043, %1011
  %1097 = add nuw i32 %1044, 1
  %1098 = icmp eq i32 %1097, %1030
  br i1 %1098, label %1099, label %1040

; <label>:1099                                    ; preds = %1040
  br label %1100

; <label>:1100                                    ; preds = %1099, %1032
  %1101 = phi i32 [ %1033, %1032 ], [ %1091, %1099 ]
  %1102 = phi float [ %1034, %1032 ], [ %1095, %1099 ]
  %1103 = fadd fast float %1035, %1011
  %1104 = add nuw i32 %1036, 1
  %1105 = icmp eq i32 %1104, %1031
  br i1 %1105, label %1106, label %1032

; <label>:1106                                    ; preds = %1100
  br label %1107

; <label>:1107                                    ; preds = %1106, %975
  %1108 = phi i32 [ 1, %975 ], [ %1101, %1106 ]
  %1109 = phi float [ 0.000000e+00, %975 ], [ %1102, %1106 ]
  %1110 = icmp eq i32 %1108, 0
  %1111 = and i1 %815, %1110
  br i1 %1111, label %1124, label %1112, !dx.controlflow.hints !60

; <label>:1112                                    ; preds = %1107
  %1113 = fcmp fast une float %923, 0.000000e+00
  %1114 = bitcast float %923 to i32
  %1115 = and i32 %1114, 2139095040
  %1116 = add nsw i32 %1115, -1056964608
  %1117 = ashr exact i32 %1116, 23
  %1118 = add nsw i32 %1117, -10
  %1119 = sitofp i32 %1118 to float
  %1120 = select i1 %1113, float %1119, float -1.000000e+01
  %1121 = call float @dx.op.unary.f32(i32 21, float %1120)  ; Exp(value)
  %1122 = fsub fast float %923, %1121
  %1123 = fcmp fast ogt float %1109, %1122
  br label %1124

; <label>:1124                                    ; preds = %1112, %1107
  %1125 = phi i1 [ %1123, %1112 ], [ true, %1107 ]
  %1126 = zext i1 %1125 to i32
  br label %1127

; <label>:1127                                    ; preds = %1124, %972
  %1128 = phi i32 [ %1126, %1124 ], [ 1, %972 ]
  %1129 = and i32 %967, 1
  %1130 = icmp ne i32 %1129, 0
  %1131 = icmp ne i32 %1128, 0
  %1132 = and i1 %1131, %1130
  br i1 %1132, label %1133, label %1301, !dx.controlflow.hints !61

; <label>:1133                                    ; preds = %1127
  %1134 = extractvalue %dx.types.CBufRet.i32 %966, 3
  %1135 = extractvalue %dx.types.CBufRet.i32 %966, 1
  %1136 = extractvalue %dx.types.CBufRet.i32 %966, 2
  %1137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1138 = extractvalue %dx.types.CBufRet.i32 %1137, 0
  %1139 = fsub fast float %934, %932
  %1140 = fsub fast float %935, %933
  %1141 = uitofp i32 %1135 to float
  %1142 = uitofp i32 %1136 to float
  %1143 = fmul fast float %1141, %1139
  %1144 = fmul fast float %1142, %1140
  %1145 = call float @dx.op.unary.f32(i32 28, float %1143)  ; Round_pi(value)
  %1146 = call float @dx.op.unary.f32(i32 28, float %1144)  ; Round_pi(value)
  %1147 = call float @dx.op.binary.f32(i32 35, float %1145, float %1146)  ; FMax(a,b)
  %1148 = call float @dx.op.unary.f32(i32 23, float %1147)  ; Log(value)
  %1149 = call float @dx.op.unary.f32(i32 28, float %1148)  ; Round_pi(value)
  %1150 = fptosi float %1149 to i32
  %1151 = sub nsw i32 %1150, %1138
  %1152 = call i32 @dx.op.binary.i32(i32 37, i32 %1151, i32 0)  ; IMax(a,b)
  %1153 = call i32 @dx.op.binary.i32(i32 38, i32 %1152, i32 %1134)  ; IMin(a,b)
  %1154 = and i32 %1153, 31
  %1155 = lshr i32 %1135, %1154
  %1156 = lshr i32 %1136, %1154
  %1157 = uitofp i32 %1155 to float
  %1158 = uitofp i32 %1156 to float
  %1159 = call float @dx.op.binary.f32(i32 35, float %1157, float 1.000000e+00)  ; FMax(a,b)
  %1160 = call float @dx.op.binary.f32(i32 35, float %1158, float 1.000000e+00)  ; FMax(a,b)
  %1161 = fdiv fast float 1.000000e+00, %1159
  %1162 = fdiv fast float 1.000000e+00, %1160
  %1163 = fmul fast float %1159, %932
  %1164 = fmul fast float %1160, %933
  %1165 = call float @dx.op.unary.f32(i32 27, float %1163)  ; Round_ni(value)
  %1166 = call float @dx.op.unary.f32(i32 27, float %1164)  ; Round_ni(value)
  %1167 = call float @dx.op.binary.f32(i32 35, float %1165, float 0.000000e+00)  ; FMax(a,b)
  %1168 = call float @dx.op.binary.f32(i32 35, float %1166, float 0.000000e+00)  ; FMax(a,b)
  %1169 = call float @dx.op.binary.f32(i32 36, float %1167, float %1159)  ; FMin(a,b)
  %1170 = call float @dx.op.binary.f32(i32 36, float %1168, float %1160)  ; FMin(a,b)
  %1171 = fmul fast float %1159, %934
  %1172 = fmul fast float %1160, %935
  %1173 = call float @dx.op.unary.f32(i32 28, float %1171)  ; Round_pi(value)
  %1174 = call float @dx.op.unary.f32(i32 28, float %1172)  ; Round_pi(value)
  %1175 = call float @dx.op.binary.f32(i32 35, float %1173, float 0.000000e+00)  ; FMax(a,b)
  %1176 = call float @dx.op.binary.f32(i32 35, float %1174, float 0.000000e+00)  ; FMax(a,b)
  %1177 = call float @dx.op.binary.f32(i32 36, float %1175, float %1159)  ; FMin(a,b)
  %1178 = call float @dx.op.binary.f32(i32 36, float %1176, float %1160)  ; FMin(a,b)
  %1179 = fadd fast float %1169, 1.000000e+00
  %1180 = fmul fast float %1179, %1161
  %1181 = fmul fast float %1161, 2.000000e+00
  %1182 = fmul fast float %1162, 2.000000e+00
  %1183 = fsub fast float %1177, %1169
  %1184 = fsub fast float %1178, %1170
  %1185 = fmul fast float %1183, 5.000000e-01
  %1186 = fmul fast float %1184, 5.000000e-01
  %1187 = call float @dx.op.unary.f32(i32 28, float %1185)  ; Round_pi(value)
  %1188 = call float @dx.op.unary.f32(i32 28, float %1186)  ; Round_pi(value)
  %1189 = fptoui float %1187 to i32
  %1190 = fptoui float %1188 to i32
  %1191 = shl i32 1, %1154
  %1192 = add i32 %1191, -1
  %1193 = and i32 %1192, %1135
  %1194 = icmp ne i32 %1193, 0
  %1195 = zext i1 %1194 to i32
  %1196 = add i32 %1189, %1195
  %1197 = and i32 %1192, %1136
  %1198 = icmp ne i32 %1197, 0
  %1199 = zext i1 %1198 to i32
  %1200 = add i32 %1190, %1199
  %1201 = icmp eq i32 %1200, 0
  br i1 %1201, label %1281, label %1202

; <label>:1202                                    ; preds = %1133
  %1203 = fadd fast float %1170, 1.000000e+00
  %1204 = fmul fast float %1203, %1162
  br label %1205

; <label>:1205                                    ; preds = %1274, %1202
  %1206 = phi i32 [ %1275, %1274 ], [ 1, %1202 ]
  %1207 = phi float [ %1276, %1274 ], [ 0.000000e+00, %1202 ]
  %1208 = phi float [ %1277, %1274 ], [ %1204, %1202 ]
  %1209 = phi i32 [ %1278, %1274 ], [ 0, %1202 ]
  %1210 = icmp eq i32 %1196, 0
  br i1 %1210, label %1274, label %1211

; <label>:1211                                    ; preds = %1205
  br label %1212

; <label>:1212                                    ; preds = %1212, %1211
  %1213 = phi i32 [ %1265, %1212 ], [ %1206, %1211 ]
  %1214 = phi float [ %1269, %1212 ], [ %1207, %1211 ]
  %1215 = phi float [ %1270, %1212 ], [ %1180, %1211 ]
  %1216 = phi i32 [ %1271, %1212 ], [ 0, %1211 ]
  %1217 = sitofp i32 %1153 to float
  %1218 = fmul fast float %1161, 0xBFDFE00000000000
  %1219 = fadd fast float %1218, %1215
  %1220 = fmul fast float %1162, 0x3FE0100000000000
  %1221 = fadd fast float %1220, %1208
  %1222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %1219, float %1221, float undef, float undef, i32 0, i32 0, i32 undef, float %1217)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1223 = extractvalue %dx.types.ResRet.f32 %1222, 0
  %1224 = fmul fast float %1161, 0x3FE0100000000000
  %1225 = fadd fast float %1224, %1215
  %1226 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %1225, float %1221, float undef, float undef, i32 0, i32 0, i32 undef, float %1217)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1227 = extractvalue %dx.types.ResRet.f32 %1226, 0
  %1228 = fmul fast float %1162, 0xBFDFE00000000000
  %1229 = fadd fast float %1228, %1208
  %1230 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %1225, float %1229, float undef, float undef, i32 0, i32 0, i32 undef, float %1217)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1231 = extractvalue %dx.types.ResRet.f32 %1230, 0
  %1232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %1219, float %1229, float undef, float undef, i32 0, i32 0, i32 undef, float %1217)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1233 = extractvalue %dx.types.ResRet.f32 %1232, 0
  %1234 = fcmp fast olt float %1223, -1.000000e+00
  %1235 = fcmp fast ogt float %1223, -1.000000e+00
  %1236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1237 = extractvalue %dx.types.CBufRet.f32 %1236, 1
  %1238 = select i1 %1235, float %1237, float 1.000000e+00
  %1239 = fadd fast float %1223, 1.000000e+00
  %1240 = fmul fast float %1238, %1239
  %1241 = call float @dx.op.unary.f32(i32 6, float %1240)  ; FAbs(value)
  %1242 = fcmp fast olt float %1227, -1.000000e+00
  %1243 = fcmp fast ogt float %1227, -1.000000e+00
  %1244 = select i1 %1243, float %1237, float 1.000000e+00
  %1245 = fadd fast float %1227, 1.000000e+00
  %1246 = fmul fast float %1244, %1245
  %1247 = call float @dx.op.unary.f32(i32 6, float %1246)  ; FAbs(value)
  %1248 = fcmp fast olt float %1231, -1.000000e+00
  %1249 = fcmp fast ogt float %1231, -1.000000e+00
  %1250 = select i1 %1249, float %1237, float 1.000000e+00
  %1251 = fadd fast float %1231, 1.000000e+00
  %1252 = fmul fast float %1250, %1251
  %1253 = call float @dx.op.unary.f32(i32 6, float %1252)  ; FAbs(value)
  %1254 = fcmp fast olt float %1233, -1.000000e+00
  %1255 = fcmp fast ogt float %1233, -1.000000e+00
  %1256 = select i1 %1255, float %1237, float 1.000000e+00
  %1257 = fadd fast float %1233, 1.000000e+00
  %1258 = fmul fast float %1256, %1257
  %1259 = call float @dx.op.unary.f32(i32 6, float %1258)  ; FAbs(value)
  %1260 = and i1 %1234, %1242
  %1261 = and i1 %1260, %1248
  %1262 = and i1 %1261, %1254
  %1263 = icmp ne i32 %1213, 0
  %1264 = and i1 %1263, %1262
  %1265 = zext i1 %1264 to i32
  %1266 = call float @dx.op.binary.f32(i32 35, float %1247, float %1253)  ; FMax(a,b)
  %1267 = call float @dx.op.binary.f32(i32 35, float %1241, float %1266)  ; FMax(a,b)
  %1268 = call float @dx.op.binary.f32(i32 35, float %1267, float %1259)  ; FMax(a,b)
  %1269 = call float @dx.op.binary.f32(i32 35, float %1268, float %1214)  ; FMax(a,b)
  %1270 = fadd fast float %1215, %1181
  %1271 = add nuw i32 %1216, 1
  %1272 = icmp eq i32 %1271, %1196
  br i1 %1272, label %1273, label %1212

; <label>:1273                                    ; preds = %1212
  br label %1274

; <label>:1274                                    ; preds = %1273, %1205
  %1275 = phi i32 [ %1206, %1205 ], [ %1265, %1273 ]
  %1276 = phi float [ %1207, %1205 ], [ %1269, %1273 ]
  %1277 = fadd fast float %1208, %1182
  %1278 = add nuw i32 %1209, 1
  %1279 = icmp eq i32 %1278, %1200
  br i1 %1279, label %1280, label %1205

; <label>:1280                                    ; preds = %1274
  br label %1281

; <label>:1281                                    ; preds = %1280, %1133
  %1282 = phi i32 [ 1, %1133 ], [ %1275, %1280 ]
  %1283 = phi float [ 0.000000e+00, %1133 ], [ %1276, %1280 ]
  %1284 = icmp eq i32 %1282, 0
  %1285 = and i1 %815, %1284
  br i1 %1285, label %1298, label %1286, !dx.controlflow.hints !60

; <label>:1286                                    ; preds = %1281
  %1287 = fcmp fast une float %923, 0.000000e+00
  %1288 = bitcast float %923 to i32
  %1289 = and i32 %1288, 2139095040
  %1290 = add nsw i32 %1289, -1056964608
  %1291 = ashr exact i32 %1290, 23
  %1292 = add nsw i32 %1291, -10
  %1293 = sitofp i32 %1292 to float
  %1294 = select i1 %1287, float %1293, float -1.000000e+01
  %1295 = call float @dx.op.unary.f32(i32 21, float %1294)  ; Exp(value)
  %1296 = fsub fast float %923, %1295
  %1297 = fcmp fast ogt float %1283, %1296
  br label %1298

; <label>:1298                                    ; preds = %1286, %1281
  %1299 = phi i1 [ %1297, %1286 ], [ true, %1281 ]
  %1300 = zext i1 %1299 to i32
  br label %1301

; <label>:1301                                    ; preds = %1298, %1127, %965, %953, %945, %896, %813
  %1302 = phi i32 [ 1, %813 ], [ 1, %896 ], [ 1, %945 ], [ 1, %953 ], [ %1300, %1298 ], [ %1128, %1127 ], [ 1, %965 ]
  %1303 = phi i32 [ 0, %813 ], [ 1, %896 ], [ 0, %945 ], [ 0, %953 ], [ 1, %1298 ], [ 1, %1127 ], [ 1, %965 ]
  %1304 = icmp ne i32 %1302, 0
  br label %1305

; <label>:1305                                    ; preds = %1301, %807, %776, %104
  %1306 = phi i32 [ %1303, %1301 ], [ %777, %807 ], [ 1, %104 ], [ 1, %776 ]
  %1307 = phi i1 [ %1304, %1301 ], [ true, %807 ], [ true, %104 ], [ true, %776 ]
  %1308 = icmp ne i32 %1306, 0
  %1309 = and i1 %121, %1308
  %1310 = and i1 %1307, %1309
  %1311 = call %dx.types.fouri32 @dx.op.waveActiveBallot(i32 116, i1 %1310)  ; WaveActiveBallot(cond)
  %1312 = extractvalue %dx.types.fouri32 %1311, 0
  %1313 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsBallotResult@@3PAIA", i32 0, i32 %126
  store i32 %1312, i32 addrspace(3)* %1313, align 4, !tbaa !62
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1314 = shl nuw nsw i32 %28, 1
  %1315 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsBallotResult@@3PAIA", i32 0, i32 %1314
  %1316 = load i32, i32 addrspace(3)* %1315, align 4, !tbaa !62
  %1317 = or i32 %1314, 1
  %1318 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsBallotResult@@3PAIA", i32 0, i32 %1317
  %1319 = load i32, i32 addrspace(3)* %1318, align 4, !tbaa !62
  %1320 = icmp eq i32 %30, 0
  br i1 %1320, label %1321, label %1326, !dx.controlflow.hints !66

; <label>:1321                                    ; preds = %1305
  %1322 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1316)  ; Countbits(value)
  %1323 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1319)  ; Countbits(value)
  %1324 = add i32 %1323, %1322
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %29, i32 0, i32 %1316, i32 %1319, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1325 = shl i32 %29, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1325, i32 undef, i32 %1324, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1326

; <label>:1326                                    ; preds = %1321, %1305
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

; Function Attrs: nounwind
declare %dx.types.fouri32 @dx.op.waveActiveBallot(i32, i1) #1

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

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
!dx.entryPoints = !{!32}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !21, !25, !30}
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
!25 = !{!26, !27, !28, !29}
!26 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!27 = !{i32 1, %GPSurfPassConsts* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!28 = !{i32 2, %GPOcclusionPassConsts* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!29 = !{i32 3, %ClusterCullIndirectArgs* undef, !"", i32 0, i32 2, i32 1, i32 16, null}
!30 = !{!31}
!31 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!32 = !{void ()* @cluster_culling_pass, !"cluster_culling_pass", null, !4, !33}
!33 = !{i32 0, i64 524560, i32 4, !34}
!34 = !{i32 128, i32 1, i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
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
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}

