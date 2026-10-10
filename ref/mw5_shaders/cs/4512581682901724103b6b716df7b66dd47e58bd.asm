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
; shader hash: d02483f7ce3a4547b0de7ee4a82ac54b
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
  br i1 %135, label %136, label %1307, !dx.controlflow.hints !38

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
  br i1 %806, label %1307, label %807, !dx.controlflow.hints !52

; <label>:807                                     ; preds = %776
  %808 = and i32 %107, 32
  %809 = icmp ne i32 %808, 0
  %810 = or i1 %809, %133
  %811 = icmp ne i32 %777, 0
  %812 = and i1 %810, %811
  br i1 %812, label %813, label %1307, !dx.controlflow.hints !53

; <label>:813                                     ; preds = %807
  %814 = and i32 %106, -2
  %815 = icmp eq i32 %814, 62
  %816 = fsub fast float %778, %781
  %817 = fsub fast float %779, %782
  %818 = fsub fast float %780, %783
  %819 = fmul fast float %784, %816
  %820 = call float @dx.op.tertiary.f32(i32 46, float %817, float %785, float %819)  ; FMad(a,b,c)
  %821 = call float @dx.op.tertiary.f32(i32 46, float %818, float %786, float %820)  ; FMad(a,b,c)
  %822 = fadd fast float %821, %787
  %823 = fmul fast float %788, %816
  %824 = call float @dx.op.tertiary.f32(i32 46, float %817, float %789, float %823)  ; FMad(a,b,c)
  %825 = call float @dx.op.tertiary.f32(i32 46, float %818, float %790, float %824)  ; FMad(a,b,c)
  %826 = fadd fast float %825, %791
  %827 = fmul fast float %792, %816
  %828 = call float @dx.op.tertiary.f32(i32 46, float %817, float %793, float %827)  ; FMad(a,b,c)
  %829 = call float @dx.op.tertiary.f32(i32 46, float %818, float %794, float %828)  ; FMad(a,b,c)
  %830 = fadd fast float %829, %795
  %831 = fmul fast float %781, 2.000000e+00
  %832 = fmul fast float %782, 2.000000e+00
  %833 = fmul fast float %783, 2.000000e+00
  %834 = fmul fast float %784, %831
  %835 = fmul fast float %788, %831
  %836 = fmul fast float %792, %831
  %837 = fmul fast float %785, %832
  %838 = fmul fast float %789, %832
  %839 = fmul fast float %793, %832
  %840 = fcmp fast oeq float %794, 0.000000e+00
  br i1 %840, label %1303, label %841, !dx.controlflow.hints !54

; <label>:841                                     ; preds = %813
  %842 = fmul fast float %794, %833
  %843 = fmul fast float %790, %833
  %844 = fmul fast float %786, %833
  %845 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 0
  %846 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 0
  %847 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 0
  store float 0.000000e+00, float* %845, align 4
  store float 0.000000e+00, float* %846, align 4
  store float 0.000000e+00, float* %847, align 4
  %848 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 1
  %849 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 1
  %850 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 1
  store float %834, float* %848, align 4
  store float %835, float* %849, align 4
  store float %836, float* %850, align 4
  %851 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 2
  %852 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 2
  %853 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 2
  store float %837, float* %851, align 4
  store float %838, float* %852, align 4
  store float %839, float* %853, align 4
  %854 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 3
  %855 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 3
  %856 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 3
  %857 = fsub fast float -0.000000e+00, %834
  %858 = fsub fast float -0.000000e+00, %835
  %859 = fsub fast float -0.000000e+00, %836
  store float %857, float* %854, align 4
  store float %858, float* %855, align 4
  store float %859, float* %856, align 4
  %860 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 4
  %861 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 4
  %862 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 4
  store float %844, float* %860, align 4
  store float %843, float* %861, align 4
  store float %842, float* %862, align 4
  %863 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 5
  %864 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 5
  %865 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 5
  store float %834, float* %863, align 4
  store float %835, float* %864, align 4
  store float %836, float* %865, align 4
  %866 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 6
  %867 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 6
  %868 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 6
  %869 = fsub fast float -0.000000e+00, %837
  %870 = fsub fast float -0.000000e+00, %838
  %871 = fsub fast float -0.000000e+00, %839
  store float %869, float* %866, align 4
  store float %870, float* %867, align 4
  store float %871, float* %868, align 4
  %872 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 7
  %873 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 7
  %874 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 7
  store float %857, float* %872, align 4
  store float %858, float* %873, align 4
  store float %859, float* %874, align 4
  %875 = fcmp fast olt float %830, 0.000000e+00
  %876 = zext i1 %875 to i32
  %877 = fadd fast float %830, %836
  %878 = fcmp fast olt float %877, 0.000000e+00
  %879 = select i1 %878, i32 2, i32 0
  %880 = or i32 %879, %876
  %881 = fadd fast float %877, %839
  %882 = fcmp fast olt float %881, 0.000000e+00
  %883 = select i1 %882, i32 4, i32 0
  %884 = or i32 %880, %883
  %885 = fsub fast float %881, %836
  %886 = fcmp fast olt float %885, 0.000000e+00
  %887 = select i1 %886, i32 8, i32 0
  %888 = or i32 %884, %887
  %889 = fadd fast float %885, %842
  %890 = fcmp fast olt float %889, 0.000000e+00
  %891 = select i1 %890, i32 16, i32 0
  %892 = or i32 %888, %891
  %893 = fadd fast float %889, %836
  %894 = fcmp fast olt float %893, 0.000000e+00
  %895 = select i1 %894, i32 32, i32 0
  %896 = or i32 %892, %895
  %897 = fsub fast float %893, %839
  %898 = fcmp fast olt float %897, 0.000000e+00
  %899 = select i1 %898, i32 64, i32 0
  %900 = or i32 %896, %899
  %901 = fsub fast float %897, %836
  %902 = fcmp fast olt float %901, 0.000000e+00
  %903 = select i1 %902, i32 128, i32 0
  %904 = or i32 %900, %903
  %905 = icmp eq i32 %904, 255
  br i1 %905, label %1303, label %906, !dx.controlflow.hints !55

; <label>:906                                     ; preds = %841
  %907 = icmp eq i32 %904, 0
  br i1 %907, label %908, label %1303, !dx.controlflow.hints !56

; <label>:908                                     ; preds = %906
  br label %909

; <label>:909                                     ; preds = %940, %908
  %910 = phi float [ %946, %940 ], [ 0.000000e+00, %908 ]
  %911 = phi float [ %944, %940 ], [ 0.000000e+00, %908 ]
  %912 = phi float [ %942, %940 ], [ 0.000000e+00, %908 ]
  %913 = phi float [ %934, %940 ], [ 9.999999e+06, %908 ]
  %914 = phi float [ %935, %940 ], [ 9.999999e+06, %908 ]
  %915 = phi float [ %936, %940 ], [ -9.999999e+06, %908 ]
  %916 = phi float [ %937, %940 ], [ -9.999999e+06, %908 ]
  %917 = phi float [ %925, %940 ], [ 9.999999e+06, %908 ]
  %918 = phi float [ %922, %940 ], [ %822, %908 ]
  %919 = phi float [ %923, %940 ], [ %826, %908 ]
  %920 = phi float [ %924, %940 ], [ %830, %908 ]
  %921 = phi i32 [ %938, %940 ], [ 0, %908 ]
  %922 = fadd fast float %912, %918
  %923 = fadd fast float %911, %919
  %924 = fadd fast float %910, %920
  %925 = call float @dx.op.binary.f32(i32 36, float %917, float %924)  ; FMin(a,b)
  %926 = fdiv fast float %922, %924
  %927 = fdiv fast float %923, %924
  %928 = fmul fast float %926, 5.000000e-01
  %929 = fmul fast float %927, 5.000000e-01
  %930 = fadd fast float %928, 5.000000e-01
  %931 = fsub fast float 5.000000e-01, %929
  %932 = call float @dx.op.unary.f32(i32 7, float %930)  ; Saturate(value)
  %933 = call float @dx.op.unary.f32(i32 7, float %931)  ; Saturate(value)
  %934 = call float @dx.op.binary.f32(i32 36, float %913, float %932)  ; FMin(a,b)
  %935 = call float @dx.op.binary.f32(i32 36, float %914, float %933)  ; FMin(a,b)
  %936 = call float @dx.op.binary.f32(i32 35, float %915, float %932)  ; FMax(a,b)
  %937 = call float @dx.op.binary.f32(i32 35, float %916, float %933)  ; FMax(a,b)
  %938 = add nuw nsw i32 %921, 1
  %939 = icmp eq i32 %938, 8
  br i1 %939, label %947, label %940

; <label>:940                                     ; preds = %909
  %941 = getelementptr [8 x float], [8 x float]* %24, i32 0, i32 %938
  %942 = load float, float* %941, align 4
  %943 = getelementptr [8 x float], [8 x float]* %25, i32 0, i32 %938
  %944 = load float, float* %943, align 4
  %945 = getelementptr [8 x float], [8 x float]* %26, i32 0, i32 %938
  %946 = load float, float* %945, align 4
  br label %909

; <label>:947                                     ; preds = %909
  %948 = fcmp fast ole float %936, 0.000000e+00
  %949 = fcmp fast oge float %934, 1.000000e+00
  %950 = or i1 %949, %948
  %951 = fcmp fast ole float %937, 0.000000e+00
  %952 = or i1 %950, %951
  %953 = fcmp fast oge float %935, 1.000000e+00
  %954 = or i1 %953, %952
  br i1 %954, label %1303, label %955, !dx.controlflow.hints !57

; <label>:955                                     ; preds = %947
  %956 = fmul fast float %934, %529
  %957 = fmul fast float %935, %530
  %958 = fmul fast float %936, %529
  %959 = fmul fast float %937, %530
  %960 = call float @dx.op.unary.f32(i32 26, float %956)  ; Round_ne(value)
  %961 = call float @dx.op.unary.f32(i32 26, float %957)  ; Round_ne(value)
  %962 = call float @dx.op.unary.f32(i32 26, float %958)  ; Round_ne(value)
  %963 = call float @dx.op.unary.f32(i32 26, float %959)  ; Round_ne(value)
  %964 = fcmp fast oeq float %960, %962
  %965 = fcmp fast oeq float %961, %963
  %966 = or i1 %964, %965
  br i1 %966, label %1303, label %967, !dx.controlflow.hints !58

; <label>:967                                     ; preds = %955
  %968 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.i32 %968, 0
  %970 = icmp ne i32 %969, 0
  %971 = and i32 %107, 2
  %972 = icmp ne i32 %971, 0
  %973 = and i1 %972, %970
  br i1 %973, label %974, label %1303, !dx.controlflow.hints !59

; <label>:974                                     ; preds = %967
  %975 = and i32 %969, 2
  %976 = icmp eq i32 %975, 0
  br i1 %976, label %1129, label %977, !dx.controlflow.hints !60

; <label>:977                                     ; preds = %974
  %978 = fsub fast float %936, %934
  %979 = fsub fast float %937, %935
  %980 = fmul fast float %978, 6.400000e+01
  %981 = fmul fast float %979, 6.400000e+01
  %982 = call float @dx.op.unary.f32(i32 28, float %980)  ; Round_pi(value)
  %983 = call float @dx.op.unary.f32(i32 28, float %981)  ; Round_pi(value)
  %984 = call float @dx.op.binary.f32(i32 35, float %982, float %983)  ; FMax(a,b)
  %985 = call float @dx.op.unary.f32(i32 23, float %984)  ; Log(value)
  %986 = call float @dx.op.unary.f32(i32 28, float %985)  ; Round_pi(value)
  %987 = fptosi float %986 to i32
  %988 = call i32 @dx.op.binary.i32(i32 37, i32 %987, i32 0)  ; IMax(a,b)
  %989 = call i32 @dx.op.binary.i32(i32 38, i32 %988, i32 6)  ; IMin(a,b)
  %990 = and i32 %989, 31
  %991 = lshr i32 64, %990
  %992 = uitofp i32 %991 to float
  %993 = call float @dx.op.binary.f32(i32 35, float %992, float 1.000000e+00)  ; FMax(a,b)
  %994 = fdiv fast float 1.000000e+00, %993
  %995 = fmul fast float %993, %934
  %996 = fmul fast float %993, %935
  %997 = call float @dx.op.unary.f32(i32 27, float %995)  ; Round_ni(value)
  %998 = call float @dx.op.unary.f32(i32 27, float %996)  ; Round_ni(value)
  %999 = call float @dx.op.binary.f32(i32 35, float %997, float 0.000000e+00)  ; FMax(a,b)
  %1000 = call float @dx.op.binary.f32(i32 35, float %998, float 0.000000e+00)  ; FMax(a,b)
  %1001 = call float @dx.op.binary.f32(i32 36, float %999, float %993)  ; FMin(a,b)
  %1002 = call float @dx.op.binary.f32(i32 36, float %1000, float %993)  ; FMin(a,b)
  %1003 = fmul fast float %993, %936
  %1004 = fmul fast float %993, %937
  %1005 = call float @dx.op.unary.f32(i32 28, float %1003)  ; Round_pi(value)
  %1006 = call float @dx.op.unary.f32(i32 28, float %1004)  ; Round_pi(value)
  %1007 = call float @dx.op.binary.f32(i32 35, float %1005, float 0.000000e+00)  ; FMax(a,b)
  %1008 = call float @dx.op.binary.f32(i32 35, float %1006, float 0.000000e+00)  ; FMax(a,b)
  %1009 = call float @dx.op.binary.f32(i32 36, float %1007, float %993)  ; FMin(a,b)
  %1010 = call float @dx.op.binary.f32(i32 36, float %1008, float %993)  ; FMin(a,b)
  %1011 = fadd fast float %1001, 1.000000e+00
  %1012 = fmul fast float %1011, %994
  %1013 = fmul fast float %994, 2.000000e+00
  %1014 = fsub fast float %1009, %1001
  %1015 = fsub fast float %1010, %1002
  %1016 = fmul fast float %1014, 5.000000e-01
  %1017 = fmul fast float %1015, 5.000000e-01
  %1018 = call float @dx.op.unary.f32(i32 28, float %1016)  ; Round_pi(value)
  %1019 = call float @dx.op.unary.f32(i32 28, float %1017)  ; Round_pi(value)
  %1020 = fptoui float %1018 to i32
  %1021 = fptoui float %1019 to i32
  %1022 = shl i32 1, %990
  %1023 = add i32 %1022, -1
  %1024 = lshr i32 %1023, 6
  %1025 = and i32 %1024, 1
  %1026 = sub nsw i32 0, %1025
  %1027 = icmp eq i32 %1021, %1026
  br i1 %1027, label %1109, label %1028

; <label>:1028                                    ; preds = %977
  %1029 = fadd fast float %1002, 1.000000e+00
  %1030 = fmul fast float %1029, %994
  %1031 = and i32 %1024, 1
  %1032 = add i32 %1020, %1031
  %1033 = add i32 %1021, %1031
  br label %1034

; <label>:1034                                    ; preds = %1102, %1028
  %1035 = phi i32 [ %1103, %1102 ], [ 1, %1028 ]
  %1036 = phi float [ %1104, %1102 ], [ 0.000000e+00, %1028 ]
  %1037 = phi float [ %1105, %1102 ], [ %1030, %1028 ]
  %1038 = phi i32 [ %1106, %1102 ], [ 0, %1028 ]
  %1039 = sub nsw i32 0, %1025
  %1040 = icmp eq i32 %1020, %1039
  br i1 %1040, label %1102, label %1041

; <label>:1041                                    ; preds = %1034
  br label %1042

; <label>:1042                                    ; preds = %1042, %1041
  %1043 = phi i32 [ %1093, %1042 ], [ %1035, %1041 ]
  %1044 = phi float [ %1097, %1042 ], [ %1036, %1041 ]
  %1045 = phi float [ %1098, %1042 ], [ %1012, %1041 ]
  %1046 = phi i32 [ %1099, %1042 ], [ 0, %1041 ]
  %1047 = sitofp i32 %989 to float
  %1048 = fmul fast float %994, 0xBFDFE00000000000
  %1049 = fadd fast float %1048, %1045
  %1050 = fmul fast float %994, 0x3FE0100000000000
  %1051 = fadd fast float %1050, %1037
  %1052 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %1049, float %1051, float undef, float undef, i32 0, i32 0, i32 undef, float %1047)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1053 = extractvalue %dx.types.ResRet.f32 %1052, 0
  %1054 = fadd fast float %1050, %1045
  %1055 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %1054, float %1051, float undef, float undef, i32 0, i32 0, i32 undef, float %1047)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1056 = extractvalue %dx.types.ResRet.f32 %1055, 0
  %1057 = fadd fast float %1048, %1037
  %1058 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %1054, float %1057, float undef, float undef, i32 0, i32 0, i32 undef, float %1047)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1059 = extractvalue %dx.types.ResRet.f32 %1058, 0
  %1060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %1049, float %1057, float undef, float undef, i32 0, i32 0, i32 undef, float %1047)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1061 = extractvalue %dx.types.ResRet.f32 %1060, 0
  %1062 = fcmp fast olt float %1053, -1.000000e+00
  %1063 = fcmp fast ogt float %1053, -1.000000e+00
  %1064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1065 = extractvalue %dx.types.CBufRet.f32 %1064, 1
  %1066 = select i1 %1063, float %1065, float 1.000000e+00
  %1067 = fadd fast float %1053, 1.000000e+00
  %1068 = fmul fast float %1066, %1067
  %1069 = call float @dx.op.unary.f32(i32 6, float %1068)  ; FAbs(value)
  %1070 = fcmp fast olt float %1056, -1.000000e+00
  %1071 = fcmp fast ogt float %1056, -1.000000e+00
  %1072 = select i1 %1071, float %1065, float 1.000000e+00
  %1073 = fadd fast float %1056, 1.000000e+00
  %1074 = fmul fast float %1072, %1073
  %1075 = call float @dx.op.unary.f32(i32 6, float %1074)  ; FAbs(value)
  %1076 = fcmp fast olt float %1059, -1.000000e+00
  %1077 = fcmp fast ogt float %1059, -1.000000e+00
  %1078 = select i1 %1077, float %1065, float 1.000000e+00
  %1079 = fadd fast float %1059, 1.000000e+00
  %1080 = fmul fast float %1078, %1079
  %1081 = call float @dx.op.unary.f32(i32 6, float %1080)  ; FAbs(value)
  %1082 = fcmp fast olt float %1061, -1.000000e+00
  %1083 = fcmp fast ogt float %1061, -1.000000e+00
  %1084 = select i1 %1083, float %1065, float 1.000000e+00
  %1085 = fadd fast float %1061, 1.000000e+00
  %1086 = fmul fast float %1084, %1085
  %1087 = call float @dx.op.unary.f32(i32 6, float %1086)  ; FAbs(value)
  %1088 = and i1 %1062, %1070
  %1089 = and i1 %1088, %1076
  %1090 = and i1 %1089, %1082
  %1091 = icmp ne i32 %1043, 0
  %1092 = and i1 %1091, %1090
  %1093 = zext i1 %1092 to i32
  %1094 = call float @dx.op.binary.f32(i32 35, float %1075, float %1081)  ; FMax(a,b)
  %1095 = call float @dx.op.binary.f32(i32 35, float %1069, float %1094)  ; FMax(a,b)
  %1096 = call float @dx.op.binary.f32(i32 35, float %1095, float %1087)  ; FMax(a,b)
  %1097 = call float @dx.op.binary.f32(i32 35, float %1096, float %1044)  ; FMax(a,b)
  %1098 = fadd fast float %1045, %1013
  %1099 = add nuw i32 %1046, 1
  %1100 = icmp eq i32 %1099, %1032
  br i1 %1100, label %1101, label %1042

; <label>:1101                                    ; preds = %1042
  br label %1102

; <label>:1102                                    ; preds = %1101, %1034
  %1103 = phi i32 [ %1035, %1034 ], [ %1093, %1101 ]
  %1104 = phi float [ %1036, %1034 ], [ %1097, %1101 ]
  %1105 = fadd fast float %1037, %1013
  %1106 = add nuw i32 %1038, 1
  %1107 = icmp eq i32 %1106, %1033
  br i1 %1107, label %1108, label %1034

; <label>:1108                                    ; preds = %1102
  br label %1109

; <label>:1109                                    ; preds = %1108, %977
  %1110 = phi i32 [ 1, %977 ], [ %1103, %1108 ]
  %1111 = phi float [ 0.000000e+00, %977 ], [ %1104, %1108 ]
  %1112 = icmp eq i32 %1110, 0
  %1113 = and i1 %815, %1112
  br i1 %1113, label %1126, label %1114, !dx.controlflow.hints !61

; <label>:1114                                    ; preds = %1109
  %1115 = fcmp fast une float %925, 0.000000e+00
  %1116 = bitcast float %925 to i32
  %1117 = and i32 %1116, 2139095040
  %1118 = add nsw i32 %1117, -1056964608
  %1119 = ashr exact i32 %1118, 23
  %1120 = add nsw i32 %1119, -10
  %1121 = sitofp i32 %1120 to float
  %1122 = select i1 %1115, float %1121, float -1.000000e+01
  %1123 = call float @dx.op.unary.f32(i32 21, float %1122)  ; Exp(value)
  %1124 = fsub fast float %925, %1123
  %1125 = fcmp fast ogt float %1111, %1124
  br label %1126

; <label>:1126                                    ; preds = %1114, %1109
  %1127 = phi i1 [ %1125, %1114 ], [ true, %1109 ]
  %1128 = zext i1 %1127 to i32
  br label %1129

; <label>:1129                                    ; preds = %1126, %974
  %1130 = phi i32 [ %1128, %1126 ], [ 1, %974 ]
  %1131 = and i32 %969, 1
  %1132 = icmp ne i32 %1131, 0
  %1133 = icmp ne i32 %1130, 0
  %1134 = and i1 %1133, %1132
  br i1 %1134, label %1135, label %1303, !dx.controlflow.hints !62

; <label>:1135                                    ; preds = %1129
  %1136 = extractvalue %dx.types.CBufRet.i32 %968, 3
  %1137 = extractvalue %dx.types.CBufRet.i32 %968, 1
  %1138 = extractvalue %dx.types.CBufRet.i32 %968, 2
  %1139 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1140 = extractvalue %dx.types.CBufRet.i32 %1139, 0
  %1141 = fsub fast float %936, %934
  %1142 = fsub fast float %937, %935
  %1143 = uitofp i32 %1137 to float
  %1144 = uitofp i32 %1138 to float
  %1145 = fmul fast float %1143, %1141
  %1146 = fmul fast float %1144, %1142
  %1147 = call float @dx.op.unary.f32(i32 28, float %1145)  ; Round_pi(value)
  %1148 = call float @dx.op.unary.f32(i32 28, float %1146)  ; Round_pi(value)
  %1149 = call float @dx.op.binary.f32(i32 35, float %1147, float %1148)  ; FMax(a,b)
  %1150 = call float @dx.op.unary.f32(i32 23, float %1149)  ; Log(value)
  %1151 = call float @dx.op.unary.f32(i32 28, float %1150)  ; Round_pi(value)
  %1152 = fptosi float %1151 to i32
  %1153 = sub nsw i32 %1152, %1140
  %1154 = call i32 @dx.op.binary.i32(i32 37, i32 %1153, i32 0)  ; IMax(a,b)
  %1155 = call i32 @dx.op.binary.i32(i32 38, i32 %1154, i32 %1136)  ; IMin(a,b)
  %1156 = and i32 %1155, 31
  %1157 = lshr i32 %1137, %1156
  %1158 = lshr i32 %1138, %1156
  %1159 = uitofp i32 %1157 to float
  %1160 = uitofp i32 %1158 to float
  %1161 = call float @dx.op.binary.f32(i32 35, float %1159, float 1.000000e+00)  ; FMax(a,b)
  %1162 = call float @dx.op.binary.f32(i32 35, float %1160, float 1.000000e+00)  ; FMax(a,b)
  %1163 = fdiv fast float 1.000000e+00, %1161
  %1164 = fdiv fast float 1.000000e+00, %1162
  %1165 = fmul fast float %1161, %934
  %1166 = fmul fast float %1162, %935
  %1167 = call float @dx.op.unary.f32(i32 27, float %1165)  ; Round_ni(value)
  %1168 = call float @dx.op.unary.f32(i32 27, float %1166)  ; Round_ni(value)
  %1169 = call float @dx.op.binary.f32(i32 35, float %1167, float 0.000000e+00)  ; FMax(a,b)
  %1170 = call float @dx.op.binary.f32(i32 35, float %1168, float 0.000000e+00)  ; FMax(a,b)
  %1171 = call float @dx.op.binary.f32(i32 36, float %1169, float %1161)  ; FMin(a,b)
  %1172 = call float @dx.op.binary.f32(i32 36, float %1170, float %1162)  ; FMin(a,b)
  %1173 = fmul fast float %1161, %936
  %1174 = fmul fast float %1162, %937
  %1175 = call float @dx.op.unary.f32(i32 28, float %1173)  ; Round_pi(value)
  %1176 = call float @dx.op.unary.f32(i32 28, float %1174)  ; Round_pi(value)
  %1177 = call float @dx.op.binary.f32(i32 35, float %1175, float 0.000000e+00)  ; FMax(a,b)
  %1178 = call float @dx.op.binary.f32(i32 35, float %1176, float 0.000000e+00)  ; FMax(a,b)
  %1179 = call float @dx.op.binary.f32(i32 36, float %1177, float %1161)  ; FMin(a,b)
  %1180 = call float @dx.op.binary.f32(i32 36, float %1178, float %1162)  ; FMin(a,b)
  %1181 = fadd fast float %1171, 1.000000e+00
  %1182 = fmul fast float %1181, %1163
  %1183 = fmul fast float %1163, 2.000000e+00
  %1184 = fmul fast float %1164, 2.000000e+00
  %1185 = fsub fast float %1179, %1171
  %1186 = fsub fast float %1180, %1172
  %1187 = fmul fast float %1185, 5.000000e-01
  %1188 = fmul fast float %1186, 5.000000e-01
  %1189 = call float @dx.op.unary.f32(i32 28, float %1187)  ; Round_pi(value)
  %1190 = call float @dx.op.unary.f32(i32 28, float %1188)  ; Round_pi(value)
  %1191 = fptoui float %1189 to i32
  %1192 = fptoui float %1190 to i32
  %1193 = shl i32 1, %1156
  %1194 = add i32 %1193, -1
  %1195 = and i32 %1194, %1137
  %1196 = icmp ne i32 %1195, 0
  %1197 = zext i1 %1196 to i32
  %1198 = add i32 %1191, %1197
  %1199 = and i32 %1194, %1138
  %1200 = icmp ne i32 %1199, 0
  %1201 = zext i1 %1200 to i32
  %1202 = add i32 %1192, %1201
  %1203 = icmp eq i32 %1202, 0
  br i1 %1203, label %1283, label %1204

; <label>:1204                                    ; preds = %1135
  %1205 = fadd fast float %1172, 1.000000e+00
  %1206 = fmul fast float %1205, %1164
  br label %1207

; <label>:1207                                    ; preds = %1276, %1204
  %1208 = phi i32 [ %1277, %1276 ], [ 1, %1204 ]
  %1209 = phi float [ %1278, %1276 ], [ 0.000000e+00, %1204 ]
  %1210 = phi float [ %1279, %1276 ], [ %1206, %1204 ]
  %1211 = phi i32 [ %1280, %1276 ], [ 0, %1204 ]
  %1212 = icmp eq i32 %1198, 0
  br i1 %1212, label %1276, label %1213

; <label>:1213                                    ; preds = %1207
  br label %1214

; <label>:1214                                    ; preds = %1214, %1213
  %1215 = phi i32 [ %1267, %1214 ], [ %1208, %1213 ]
  %1216 = phi float [ %1271, %1214 ], [ %1209, %1213 ]
  %1217 = phi float [ %1272, %1214 ], [ %1182, %1213 ]
  %1218 = phi i32 [ %1273, %1214 ], [ 0, %1213 ]
  %1219 = sitofp i32 %1155 to float
  %1220 = fmul fast float %1163, 0xBFDFE00000000000
  %1221 = fadd fast float %1220, %1217
  %1222 = fmul fast float %1164, 0x3FE0100000000000
  %1223 = fadd fast float %1222, %1210
  %1224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %1221, float %1223, float undef, float undef, i32 0, i32 0, i32 undef, float %1219)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1225 = extractvalue %dx.types.ResRet.f32 %1224, 0
  %1226 = fmul fast float %1163, 0x3FE0100000000000
  %1227 = fadd fast float %1226, %1217
  %1228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %1227, float %1223, float undef, float undef, i32 0, i32 0, i32 undef, float %1219)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1229 = extractvalue %dx.types.ResRet.f32 %1228, 0
  %1230 = fmul fast float %1164, 0xBFDFE00000000000
  %1231 = fadd fast float %1230, %1210
  %1232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %1227, float %1231, float undef, float undef, i32 0, i32 0, i32 undef, float %1219)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1233 = extractvalue %dx.types.ResRet.f32 %1232, 0
  %1234 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %1221, float %1231, float undef, float undef, i32 0, i32 0, i32 undef, float %1219)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1235 = extractvalue %dx.types.ResRet.f32 %1234, 0
  %1236 = fcmp fast olt float %1225, -1.000000e+00
  %1237 = fcmp fast ogt float %1225, -1.000000e+00
  %1238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1239 = extractvalue %dx.types.CBufRet.f32 %1238, 1
  %1240 = select i1 %1237, float %1239, float 1.000000e+00
  %1241 = fadd fast float %1225, 1.000000e+00
  %1242 = fmul fast float %1240, %1241
  %1243 = call float @dx.op.unary.f32(i32 6, float %1242)  ; FAbs(value)
  %1244 = fcmp fast olt float %1229, -1.000000e+00
  %1245 = fcmp fast ogt float %1229, -1.000000e+00
  %1246 = select i1 %1245, float %1239, float 1.000000e+00
  %1247 = fadd fast float %1229, 1.000000e+00
  %1248 = fmul fast float %1246, %1247
  %1249 = call float @dx.op.unary.f32(i32 6, float %1248)  ; FAbs(value)
  %1250 = fcmp fast olt float %1233, -1.000000e+00
  %1251 = fcmp fast ogt float %1233, -1.000000e+00
  %1252 = select i1 %1251, float %1239, float 1.000000e+00
  %1253 = fadd fast float %1233, 1.000000e+00
  %1254 = fmul fast float %1252, %1253
  %1255 = call float @dx.op.unary.f32(i32 6, float %1254)  ; FAbs(value)
  %1256 = fcmp fast olt float %1235, -1.000000e+00
  %1257 = fcmp fast ogt float %1235, -1.000000e+00
  %1258 = select i1 %1257, float %1239, float 1.000000e+00
  %1259 = fadd fast float %1235, 1.000000e+00
  %1260 = fmul fast float %1258, %1259
  %1261 = call float @dx.op.unary.f32(i32 6, float %1260)  ; FAbs(value)
  %1262 = and i1 %1236, %1244
  %1263 = and i1 %1262, %1250
  %1264 = and i1 %1263, %1256
  %1265 = icmp ne i32 %1215, 0
  %1266 = and i1 %1265, %1264
  %1267 = zext i1 %1266 to i32
  %1268 = call float @dx.op.binary.f32(i32 35, float %1249, float %1255)  ; FMax(a,b)
  %1269 = call float @dx.op.binary.f32(i32 35, float %1243, float %1268)  ; FMax(a,b)
  %1270 = call float @dx.op.binary.f32(i32 35, float %1269, float %1261)  ; FMax(a,b)
  %1271 = call float @dx.op.binary.f32(i32 35, float %1270, float %1216)  ; FMax(a,b)
  %1272 = fadd fast float %1217, %1183
  %1273 = add nuw i32 %1218, 1
  %1274 = icmp eq i32 %1273, %1198
  br i1 %1274, label %1275, label %1214

; <label>:1275                                    ; preds = %1214
  br label %1276

; <label>:1276                                    ; preds = %1275, %1207
  %1277 = phi i32 [ %1208, %1207 ], [ %1267, %1275 ]
  %1278 = phi float [ %1209, %1207 ], [ %1271, %1275 ]
  %1279 = fadd fast float %1210, %1184
  %1280 = add nuw i32 %1211, 1
  %1281 = icmp eq i32 %1280, %1202
  br i1 %1281, label %1282, label %1207

; <label>:1282                                    ; preds = %1276
  br label %1283

; <label>:1283                                    ; preds = %1282, %1135
  %1284 = phi i32 [ 1, %1135 ], [ %1277, %1282 ]
  %1285 = phi float [ 0.000000e+00, %1135 ], [ %1278, %1282 ]
  %1286 = icmp eq i32 %1284, 0
  %1287 = and i1 %815, %1286
  br i1 %1287, label %1300, label %1288, !dx.controlflow.hints !61

; <label>:1288                                    ; preds = %1283
  %1289 = fcmp fast une float %925, 0.000000e+00
  %1290 = bitcast float %925 to i32
  %1291 = and i32 %1290, 2139095040
  %1292 = add nsw i32 %1291, -1056964608
  %1293 = ashr exact i32 %1292, 23
  %1294 = add nsw i32 %1293, -10
  %1295 = sitofp i32 %1294 to float
  %1296 = select i1 %1289, float %1295, float -1.000000e+01
  %1297 = call float @dx.op.unary.f32(i32 21, float %1296)  ; Exp(value)
  %1298 = fsub fast float %925, %1297
  %1299 = fcmp fast ogt float %1285, %1298
  br label %1300

; <label>:1300                                    ; preds = %1288, %1283
  %1301 = phi i1 [ %1299, %1288 ], [ true, %1283 ]
  %1302 = zext i1 %1301 to i32
  br label %1303

; <label>:1303                                    ; preds = %1300, %1129, %967, %955, %947, %906, %841, %813
  %1304 = phi i32 [ 1, %813 ], [ 1, %841 ], [ 1, %906 ], [ 1, %947 ], [ 1, %955 ], [ %1302, %1300 ], [ %1130, %1129 ], [ 1, %967 ]
  %1305 = phi i32 [ 1, %813 ], [ 0, %841 ], [ 1, %906 ], [ 0, %947 ], [ 0, %955 ], [ 1, %1300 ], [ 1, %1129 ], [ 1, %967 ]
  %1306 = icmp ne i32 %1304, 0
  br label %1307

; <label>:1307                                    ; preds = %1303, %807, %776, %104
  %1308 = phi i32 [ %1305, %1303 ], [ %777, %807 ], [ 1, %104 ], [ 1, %776 ]
  %1309 = phi i1 [ %1306, %1303 ], [ true, %807 ], [ true, %104 ], [ true, %776 ]
  %1310 = icmp ne i32 %1308, 0
  %1311 = and i1 %121, %1310
  %1312 = and i1 %1309, %1311
  %1313 = call %dx.types.fouri32 @dx.op.waveActiveBallot(i32 116, i1 %1312)  ; WaveActiveBallot(cond)
  %1314 = extractvalue %dx.types.fouri32 %1313, 0
  %1315 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsBallotResult@@3PAIA", i32 0, i32 %126
  store i32 %1314, i32 addrspace(3)* %1315, align 4, !tbaa !63
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1316 = shl nuw nsw i32 %28, 1
  %1317 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsBallotResult@@3PAIA", i32 0, i32 %1316
  %1318 = load i32, i32 addrspace(3)* %1317, align 4, !tbaa !63
  %1319 = or i32 %1316, 1
  %1320 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsBallotResult@@3PAIA", i32 0, i32 %1319
  %1321 = load i32, i32 addrspace(3)* %1320, align 4, !tbaa !63
  %1322 = icmp eq i32 %30, 0
  br i1 %1322, label %1323, label %1328, !dx.controlflow.hints !67

; <label>:1323                                    ; preds = %1307
  %1324 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1318)  ; Countbits(value)
  %1325 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1321)  ; Countbits(value)
  %1326 = add i32 %1325, %1324
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %29, i32 0, i32 %1318, i32 %1321, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1327 = shl i32 %29, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1327, i32 undef, i32 %1326, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1328

; <label>:1328                                    ; preds = %1323, %1307
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
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = !{!64, !64, i64 0}
!64 = !{!"int", !65, i64 0}
!65 = !{!"omnipotent char", !66, i64 0}
!66 = !{!"Simple C/C++ TBAA"}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}

