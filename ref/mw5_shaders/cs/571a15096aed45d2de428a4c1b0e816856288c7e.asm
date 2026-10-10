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
; shader hash: b05fbc035073fb7a4d14c5f3dc0f3505
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
;   [16 x i8] (type annotation not present)
;
; }
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
;   [48 x i8] (type annotation not present)
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
;
; }
;
; Resource bind info for 
; {
;
;   [8 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb4     1
;                                   cbuffer      NA          NA     CB1            cb3     1
;                                   cbuffer      NA          NA     CB2            cb0     1
;                                   cbuffer      NA          NA     CB3            cb1     1
;                                   texture    byte         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t1     1
;                                   texture    byte         r/o      T2             t2     1
;                                   texture    byte         r/o      T3             t3     1
;                                   texture    byte         r/o      T4             t8     1
;                                   texture    byte         r/o      T5             t4     1
;                                   texture    byte         r/o      T6             t5     1
;                                   texture    byte         r/o      T7             t6     1
;                                   texture    byte         r/o      T8             t7     1
;                                   texture    byte         r/o      T9            t13     1
;                                   texture    byte         r/o     T10            t14     1
;                                   texture    byte         r/o     T11            t15     1
;                                   texture    byte         r/o     T12            t17     1
;                                   texture     u32         buf     T13            t19     1
;                                   texture    byte         r/o     T14            t20     1
;                                   texture  struct         r/o     T15            t18     1
;                                   texture    byte         r/o     T16            t43     1
;                                   texture    byte         r/o     T17            t11     1
;                                   texture    byte         r/o     T18            t12     1
;                                       UAV     u32         buf      U0             u3     1
;                                       UAV     f32          3d      U1             u0     1
;                                       UAVunorm_f32          3d      U2             u1     1
;                                       UAV  struct         r/w      U3             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%struct.ByteAddressBuffer = type { i32 }
%"class.Buffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<vector<unsigned int, 2> >" = type { <2 x i32> }
%"class.RWBuffer<unsigned int>" = type { i32 }
%"class.RWTexture3D<vector<float, 3> >" = type { <3 x float> }
%"class.RWTexture3D<vector<float, 4> >" = type { <4 x float> }
%"class.RWStructuredBuffer<vector<unsigned int, 2> >" = type { <2 x i32> }
%GfxLGBoundConsts = type { i32, i32, i32, i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%GfxSampleLightGridVolumesLightingConsts = type { i32, i32, float, float, i32, i32, i32, i32, <3 x float>, i32 }
%GfxSampleLightGridVolumesLightingVoxelTreeConsts = type { i32, i32, i32, i32 }

@"\01?g_batchVolumesProbeCounts@@3PAHA" = external addrspace(3) global [64 x i32], align 4

define void @cs_sample_lightgrid_reflection_volumes_lighting() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 43, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 3, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %29 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %30 = alloca [9 x float], align 4
  %31 = alloca [9 x float], align 4
  %32 = alloca [9 x float], align 4
  %33 = alloca [4 x i32], align 4
  %34 = alloca [4 x float], align 4
  %35 = alloca [4 x i32], align 4
  %36 = alloca [4 x float], align 4
  %37 = icmp ugt i32 %28, 16383
  br i1 %37, label %2351, label %38, !dx.controlflow.hints !42

; <label>:38                                      ; preds = %0
  %39 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %40 = extractvalue %dx.types.CBufRet.i32 %39, 0
  %41 = shl nsw i32 %28, 2
  %42 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %41, i32 undef)  ; BufferLoad(srv,index,wot)
  %43 = extractvalue %dx.types.ResRet.i32 %42, 0
  %44 = lshr i32 %43, 12
  %45 = and i32 %43, 4095
  %46 = add i32 %40, -1
  %47 = add i32 %44, %29
  %48 = call i32 @dx.op.binary.i32(i32 40, i32 %47, i32 %46)  ; UMin(a,b)
  %49 = shl i32 %48, 5
  %50 = or i32 %49, 12
  %51 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %50, i32 undef)  ; BufferLoad(srv,index,wot)
  %52 = extractvalue %dx.types.ResRet.i32 %51, 0
  %53 = and i32 %52, 255
  %54 = lshr i32 %52, 8
  %55 = and i32 %54, 255
  %56 = lshr i32 %52, 16
  %57 = and i32 %56, 255
  %58 = mul nuw nsw i32 %55, %53
  %59 = mul nuw nsw i32 %58, %57
  %60 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?g_batchVolumesProbeCounts@@3PAHA", i32 0, i32 %29
  store i32 %59, i32 addrspace(3)* %60, align 4, !tbaa !43, !noalias !47
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %61 = add i32 %45, %29
  %62 = load i32, i32 addrspace(3)* getelementptr inbounds ([64 x i32], [64 x i32] addrspace(3)* @"\01?g_batchVolumesProbeCounts@@3PAHA", i32 0, i32 0), align 4, !tbaa !43, !noalias !47
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %77, label %64

; <label>:64                                      ; preds = %38
  br label %65

; <label>:65                                      ; preds = %65, %64
  %66 = phi i32 [ %73, %65 ], [ %62, %64 ]
  %67 = phi i32 [ %69, %65 ], [ %61, %64 ]
  %68 = phi i32 [ %70, %65 ], [ 0, %64 ]
  %69 = sub nsw i32 %67, %66
  %70 = add nuw nsw i32 %68, 1
  %71 = icmp slt i32 %70, 64
  %72 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?g_batchVolumesProbeCounts@@3PAHA", i32 0, i32 %70
  %73 = load i32, i32 addrspace(3)* %72, align 4, !tbaa !43, !noalias !47
  %74 = icmp sge i32 %69, %73
  %75 = and i1 %71, %74
  br i1 %75, label %65, label %76

; <label>:76                                      ; preds = %65
  br label %77

; <label>:77                                      ; preds = %76, %38
  %78 = phi i32 [ %61, %38 ], [ %69, %76 ]
  %79 = phi i32 [ 0, %38 ], [ %70, %76 ]
  %80 = add nsw i32 %79, %44
  %81 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.i32 %81, 0
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %84, label %2351, !dx.controlflow.hints !51

; <label>:84                                      ; preds = %77
  %85 = shl i32 %80, 6
  %86 = or i32 %85, 48
  %87 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %86, i32 undef)  ; BufferLoad(srv,index,wot)
  %88 = extractvalue %dx.types.ResRet.i32 %87, 0
  %89 = or i32 %85, 52
  %90 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %89, i32 undef)  ; BufferLoad(srv,index,wot)
  %91 = extractvalue %dx.types.ResRet.i32 %90, 0
  %92 = or i32 %85, 56
  %93 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %92, i32 undef)  ; BufferLoad(srv,index,wot)
  %94 = extractvalue %dx.types.ResRet.i32 %93, 0
  %95 = or i32 %85, 60
  %96 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %95, i32 undef)  ; BufferLoad(srv,index,wot)
  %97 = extractvalue %dx.types.ResRet.i32 %96, 0
  %98 = shl i32 %80, 5
  %99 = or i32 %98, 12
  %100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %99, i32 undef)  ; BufferLoad(srv,index,wot)
  %101 = extractvalue %dx.types.ResRet.i32 %100, 0
  %102 = or i32 %98, 16
  %103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %102, i32 undef)  ; BufferLoad(srv,index,wot)
  %104 = extractvalue %dx.types.ResRet.f32 %103, 0
  %105 = extractvalue %dx.types.ResRet.f32 %103, 1
  %106 = extractvalue %dx.types.ResRet.f32 %103, 2
  %107 = or i32 %98, 28
  %108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %107, i32 undef)  ; BufferLoad(srv,index,wot)
  %109 = extractvalue %dx.types.ResRet.i32 %108, 0
  %110 = and i32 %101, 255
  %111 = lshr i32 %101, 8
  %112 = and i32 %111, 255
  %113 = lshr i32 %101, 16
  %114 = and i32 %113, 255
  %115 = mul nuw nsw i32 %112, %110
  %116 = udiv i32 %78, %115
  %117 = urem i32 %78, %115
  %118 = udiv i32 %117, %110
  %119 = urem i32 %117, %110
  %120 = and i32 %109, 1073741824
  %121 = icmp eq i32 %120, 0
  %122 = and i32 %109, -1610612736
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %2351, !dx.controlflow.hints !52

; <label>:124                                     ; preds = %84
  %125 = getelementptr inbounds [9 x float], [9 x float]* %32, i32 0, i32 0
  store float 0.000000e+00, float* %125, align 4
  %126 = getelementptr inbounds [9 x float], [9 x float]* %32, i32 0, i32 1
  store float 0.000000e+00, float* %126, align 4
  %127 = getelementptr inbounds [9 x float], [9 x float]* %32, i32 0, i32 2
  store float 0.000000e+00, float* %127, align 4
  %128 = getelementptr inbounds [9 x float], [9 x float]* %32, i32 0, i32 3
  store float 0.000000e+00, float* %128, align 4
  %129 = getelementptr inbounds [9 x float], [9 x float]* %32, i32 0, i32 4
  store float 0.000000e+00, float* %129, align 4
  %130 = getelementptr inbounds [9 x float], [9 x float]* %32, i32 0, i32 5
  store float 0.000000e+00, float* %130, align 4
  %131 = getelementptr inbounds [9 x float], [9 x float]* %32, i32 0, i32 6
  store float 0.000000e+00, float* %131, align 4
  %132 = getelementptr inbounds [9 x float], [9 x float]* %32, i32 0, i32 7
  store float 0.000000e+00, float* %132, align 4
  %133 = getelementptr inbounds [9 x float], [9 x float]* %32, i32 0, i32 8
  store float 0.000000e+00, float* %133, align 4
  %134 = getelementptr inbounds [9 x float], [9 x float]* %30, i32 0, i32 0
  store float 0.000000e+00, float* %134, align 4
  %135 = getelementptr inbounds [9 x float], [9 x float]* %30, i32 0, i32 1
  store float 0.000000e+00, float* %135, align 4
  %136 = getelementptr inbounds [9 x float], [9 x float]* %30, i32 0, i32 2
  store float 0.000000e+00, float* %136, align 4
  %137 = getelementptr inbounds [9 x float], [9 x float]* %30, i32 0, i32 3
  store float 0.000000e+00, float* %137, align 4
  %138 = getelementptr inbounds [9 x float], [9 x float]* %30, i32 0, i32 4
  store float 0.000000e+00, float* %138, align 4
  %139 = getelementptr inbounds [9 x float], [9 x float]* %30, i32 0, i32 5
  store float 0.000000e+00, float* %139, align 4
  %140 = getelementptr inbounds [9 x float], [9 x float]* %30, i32 0, i32 6
  store float 0.000000e+00, float* %140, align 4
  %141 = getelementptr inbounds [9 x float], [9 x float]* %30, i32 0, i32 7
  store float 0.000000e+00, float* %141, align 4
  %142 = getelementptr inbounds [9 x float], [9 x float]* %30, i32 0, i32 8
  store float 0.000000e+00, float* %142, align 4
  %143 = getelementptr inbounds [9 x float], [9 x float]* %31, i32 0, i32 0
  store float 0.000000e+00, float* %143, align 4
  %144 = getelementptr inbounds [9 x float], [9 x float]* %31, i32 0, i32 1
  store float 0.000000e+00, float* %144, align 4
  %145 = getelementptr inbounds [9 x float], [9 x float]* %31, i32 0, i32 2
  store float 0.000000e+00, float* %145, align 4
  %146 = getelementptr inbounds [9 x float], [9 x float]* %31, i32 0, i32 3
  store float 0.000000e+00, float* %146, align 4
  %147 = getelementptr inbounds [9 x float], [9 x float]* %31, i32 0, i32 4
  store float 0.000000e+00, float* %147, align 4
  %148 = getelementptr inbounds [9 x float], [9 x float]* %31, i32 0, i32 5
  store float 0.000000e+00, float* %148, align 4
  %149 = getelementptr inbounds [9 x float], [9 x float]* %31, i32 0, i32 6
  store float 0.000000e+00, float* %149, align 4
  %150 = getelementptr inbounds [9 x float], [9 x float]* %31, i32 0, i32 7
  store float 0.000000e+00, float* %150, align 4
  %151 = getelementptr inbounds [9 x float], [9 x float]* %31, i32 0, i32 8
  store float 0.000000e+00, float* %151, align 4
  %152 = and i32 %91, 524287
  %153 = lshr i32 %91, 19
  %154 = and i32 %153, 4095
  %155 = mul nuw nsw i32 %115, %114
  %156 = icmp eq i32 %154, %155
  %157 = icmp slt i32 %91, 0
  %158 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.i32 %158, 2
  %160 = icmp ne i32 %159, 0
  %161 = icmp ne i32 %152, 65535
  %162 = and i1 %161, %160
  %163 = and i1 %156, %162
  %164 = and i1 %157, %163
  br i1 %164, label %165, label %172, !dx.controlflow.hints !53

; <label>:165                                     ; preds = %124
  %166 = add i32 %152, %78
  %167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %166, i32 undef)  ; BufferLoad(srv,index,wot)
  %168 = extractvalue %dx.types.ResRet.i32 %167, 0
  %169 = and i32 %168, 16777215
  %170 = icmp eq i32 %169, 16777215
  %171 = select i1 %170, i32 -1, i32 %169
  br label %172

; <label>:172                                     ; preds = %165, %124
  %173 = phi i32 [ %171, %165 ], [ -1, %124 ]
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 2
  %176 = icmp ugt i32 %110, 1
  %177 = select i1 %176, float 0.000000e+00, float 5.000000e-01
  %178 = icmp ugt i32 %112, 1
  %179 = select i1 %178, float 0.000000e+00, float 5.000000e-01
  %180 = icmp ugt i32 %114, 1
  %181 = select i1 %180, float 0.000000e+00, float 5.000000e-01
  %182 = uitofp i32 %110 to float
  %183 = uitofp i32 %112 to float
  %184 = uitofp i32 %114 to float
  %185 = fadd fast float %182, -1.000000e+00
  %186 = fadd fast float %183, -1.000000e+00
  %187 = fadd fast float %184, -1.000000e+00
  %188 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %185)  ; FMax(a,b)
  %189 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %186)  ; FMax(a,b)
  %190 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %187)  ; FMax(a,b)
  %191 = fdiv fast float 1.000000e+00, %188
  %192 = fdiv fast float 1.000000e+00, %189
  %193 = fdiv fast float 1.000000e+00, %190
  %194 = uitofp i32 %119 to float
  %195 = uitofp i32 %118 to float
  %196 = uitofp i32 %116 to float
  %197 = fadd fast float %194, %177
  %198 = fadd fast float %195, %179
  %199 = fadd fast float %181, %196
  %200 = fmul fast float %191, %197
  %201 = fmul fast float %192, %198
  %202 = fmul fast float %193, %199
  %203 = fmul fast float %191, %175
  %204 = fsub fast float -0.000000e+00, %203
  %205 = fmul fast float %192, %175
  %206 = fsub fast float -0.000000e+00, %205
  %207 = fmul fast float %193, %175
  %208 = fsub fast float -0.000000e+00, %207
  %209 = fmul fast float %200, 5.000000e-01
  %210 = fmul fast float %201, 5.000000e-01
  %211 = fmul fast float %202, 5.000000e-01
  %212 = fsub fast float %203, %209
  %213 = fsub fast float %205, %210
  %214 = fsub fast float %207, %211
  %215 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %212)  ; FMax(a,b)
  %216 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %213)  ; FMax(a,b)
  %217 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %214)  ; FMax(a,b)
  %218 = call float @dx.op.binary.f32(i32 36, float %203, float %215)  ; FMin(a,b)
  %219 = call float @dx.op.binary.f32(i32 36, float %205, float %216)  ; FMin(a,b)
  %220 = call float @dx.op.binary.f32(i32 36, float %207, float %217)  ; FMin(a,b)
  %221 = fsub fast float 5.000000e-01, %203
  %222 = fsub fast float 5.000000e-01, %205
  %223 = fsub fast float 5.000000e-01, %207
  %224 = fsub fast float %221, %209
  %225 = fsub fast float %222, %210
  %226 = fsub fast float %223, %211
  %227 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %224)  ; FMin(a,b)
  %228 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %225)  ; FMin(a,b)
  %229 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %226)  ; FMin(a,b)
  %230 = call float @dx.op.binary.f32(i32 35, float %204, float %227)  ; FMax(a,b)
  %231 = call float @dx.op.binary.f32(i32 35, float %206, float %228)  ; FMax(a,b)
  %232 = call float @dx.op.binary.f32(i32 35, float %208, float %229)  ; FMax(a,b)
  %233 = fadd fast float %218, %200
  %234 = fadd fast float %219, %201
  %235 = fadd fast float %220, %202
  %236 = fadd fast float %233, %230
  %237 = fadd fast float %234, %231
  %238 = fadd fast float %235, %232
  %239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %85, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.f32 %239, 0
  %241 = or i32 %85, 16
  %242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 1
  %244 = or i32 %85, 32
  %245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.f32 %245, 2
  %247 = fmul fast float %246, %243
  %248 = extractvalue %dx.types.ResRet.f32 %242, 2
  %249 = extractvalue %dx.types.ResRet.f32 %245, 1
  %250 = fmul fast float %249, %248
  %251 = fsub fast float %247, %250
  %252 = fmul fast float %251, %240
  %253 = extractvalue %dx.types.ResRet.f32 %239, 1
  %254 = extractvalue %dx.types.ResRet.f32 %242, 0
  %255 = fmul fast float %246, %254
  %256 = extractvalue %dx.types.ResRet.f32 %245, 0
  %257 = fmul fast float %256, %248
  %258 = fsub fast float %255, %257
  %259 = fmul fast float %258, %253
  %260 = fsub fast float %252, %259
  %261 = extractvalue %dx.types.ResRet.f32 %239, 2
  %262 = fmul fast float %249, %254
  %263 = fmul fast float %256, %243
  %264 = fsub fast float %262, %263
  %265 = fmul fast float %264, %261
  %266 = fadd fast float %260, %265
  %267 = extractvalue %dx.types.ResRet.f32 %239, 3
  %268 = fmul fast float %251, %267
  %269 = extractvalue %dx.types.ResRet.f32 %242, 3
  %270 = fmul fast float %246, %253
  %271 = fmul fast float %249, %261
  %272 = fsub fast float %270, %271
  %273 = fmul fast float %272, %269
  %274 = fsub fast float %273, %268
  %275 = extractvalue %dx.types.ResRet.f32 %245, 3
  %276 = fmul fast float %248, %253
  %277 = fmul fast float %243, %261
  %278 = fsub fast float %276, %277
  %279 = fmul fast float %278, %275
  %280 = fsub fast float %274, %279
  %281 = fmul fast float %258, %267
  %282 = fmul fast float %246, %240
  %283 = fmul fast float %256, %261
  %284 = fsub fast float %282, %283
  %285 = fmul fast float %284, %269
  %286 = fsub fast float %281, %285
  %287 = fmul fast float %248, %240
  %288 = fmul fast float %254, %261
  %289 = fsub fast float %287, %288
  %290 = fmul fast float %289, %275
  %291 = fadd fast float %286, %290
  %292 = fmul fast float %264, %267
  %293 = fmul fast float %249, %240
  %294 = fmul fast float %256, %253
  %295 = fsub fast float %293, %294
  %296 = fmul fast float %295, %269
  %297 = fsub fast float %296, %292
  %298 = fmul fast float %243, %240
  %299 = fmul fast float %254, %253
  %300 = fsub fast float %298, %299
  %301 = fmul fast float %300, %275
  %302 = fsub fast float %297, %301
  %303 = fsub fast float %271, %270
  %304 = fsub fast float %257, %255
  %305 = fsub fast float %288, %287
  %306 = fsub fast float %294, %293
  %307 = fdiv fast float 1.000000e+00, %266
  %308 = fmul fast float %307, %251
  %309 = fmul fast float %307, %303
  %310 = fmul fast float %307, %278
  %311 = fmul fast float %307, %280
  %312 = fmul fast float %307, %304
  %313 = fmul fast float %307, %284
  %314 = fmul fast float %307, %305
  %315 = fmul fast float %307, %291
  %316 = fmul fast float %307, %264
  %317 = fmul fast float %307, %306
  %318 = fmul fast float %300, %307
  %319 = fmul fast float %307, %302
  %320 = call float @dx.op.dot4.f32(i32 56, float %308, float %309, float %310, float %311, float %236, float %237, float %238, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %321 = call float @dx.op.dot4.f32(i32 56, float %312, float %313, float %314, float %315, float %236, float %237, float %238, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %322 = call float @dx.op.dot4.f32(i32 56, float %316, float %317, float %318, float %319, float %236, float %237, float %238, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %323 = lshr i32 %97, 16
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = and i32 %97, 65535
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = and i32 %94, 65535
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = and i32 %94, 65536
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %344, label %331, !dx.controlflow.hints !54

; <label>:331                                     ; preds = %172
  %332 = fadd fast float %236, -5.000000e-01
  %333 = fadd fast float %237, -5.000000e-01
  %334 = fadd fast float %238, -5.000000e-01
  %335 = call float @dx.op.dot3.f32(i32 55, float %332, float %333, float %334, float %324, float %326, float %328)  ; Dot3(ax,ay,az,bx,by,bz)
  %336 = fcmp fast ogt float %335, 0.000000e+00
  %337 = select i1 %336, float 1.000000e+00, float -1.000000e+00
  %338 = call float @dx.op.dot3.f32(i32 55, float %308, float %309, float %310, float %324, float %326, float %328)  ; Dot3(ax,ay,az,bx,by,bz)
  %339 = call float @dx.op.dot3.f32(i32 55, float %312, float %313, float %314, float %324, float %326, float %328)  ; Dot3(ax,ay,az,bx,by,bz)
  %340 = call float @dx.op.dot3.f32(i32 55, float %316, float %317, float %318, float %324, float %326, float %328)  ; Dot3(ax,ay,az,bx,by,bz)
  %341 = fmul fast float %337, %338
  %342 = fmul fast float %339, %337
  %343 = fmul fast float %340, %337
  br label %344

; <label>:344                                     ; preds = %331, %172
  %345 = phi float [ %341, %331 ], [ %324, %172 ]
  %346 = phi float [ %342, %331 ], [ %326, %172 ]
  %347 = phi float [ %343, %331 ], [ %328, %172 ]
  %348 = fadd fast float %345, %320
  %349 = fadd fast float %346, %321
  %350 = fadd fast float %347, %322
  %351 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %352 = extractvalue %dx.types.CBufRet.i32 %351, 2
  %353 = extractvalue %dx.types.CBufRet.i32 %351, 1
  %354 = extractvalue %dx.types.CBufRet.i32 %351, 0
  %355 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 0
  store float 0.000000e+00, float* %355, align 4
  %356 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 1
  store float 0.000000e+00, float* %356, align 4
  %357 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 2
  store float 0.000000e+00, float* %357, align 4
  %358 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 3
  store float 0.000000e+00, float* %358, align 4
  br i1 %121, label %359, label %677, !dx.controlflow.hints !55

; <label>:359                                     ; preds = %344
  %360 = icmp eq i32 %173, -1
  br i1 %360, label %361, label %512, !dx.controlflow.hints !56

; <label>:361                                     ; preds = %359
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = extractvalue %dx.types.ResRet.i32 %364, 1
  %367 = extractvalue %dx.types.ResRet.i32 %364, 2
  %368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.f32 %368, 0
  %370 = extractvalue %dx.types.ResRet.f32 %368, 1
  %371 = extractvalue %dx.types.ResRet.f32 %368, 2
  %372 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.f32 %372, 0
  %374 = extractvalue %dx.types.ResRet.f32 %372, 1
  %375 = extractvalue %dx.types.ResRet.f32 %372, 2
  %376 = fsub fast float %348, %369
  %377 = fsub fast float %349, %370
  %378 = fsub fast float %350, %371
  %379 = fptoui float %376 to i32
  %380 = fptoui float %377 to i32
  %381 = fptoui float %378 to i32
  %382 = fcmp fast olt float %348, %369
  %383 = fcmp fast olt float %349, %370
  %384 = fcmp fast olt float %350, %371
  %385 = or i1 %382, %383
  %386 = or i1 %384, %385
  %387 = fcmp fast oge float %348, %373
  %388 = fcmp fast oge float %349, %374
  %389 = fcmp fast oge float %350, %375
  %390 = or i1 %387, %388
  %391 = or i1 %389, %390
  %392 = or i1 %386, %391
  %393 = and i32 %365, 31
  %394 = lshr i32 %379, %393
  %395 = lshr i32 %380, %393
  %396 = lshr i32 %381, %393
  %397 = mul i32 %395, %363
  %398 = add i32 %397, %394
  %399 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %400 = extractvalue %dx.types.CBufRet.i32 %399, 0
  %401 = icmp ult i32 %398, %400
  br i1 %401, label %402, label %418, !dx.controlflow.hints !57

; <label>:402                                     ; preds = %361
  %403 = mul i32 %398, 12
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = add i32 %403, 4
  %407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.i32 %407, 0
  %409 = add i32 %403, 8
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = icmp ult i32 %396, %408
  %413 = icmp ugt i32 %396, %411
  %414 = or i1 %412, %413
  %415 = add i32 %405, %396
  %416 = sub i32 %415, %408
  %417 = select i1 %414, i32 -2147483648, i32 %416
  br label %418

; <label>:418                                     ; preds = %402, %361
  %419 = phi i32 [ %417, %402 ], [ -2147483648, %361 ]
  %420 = select i1 %392, i32 -2147483648, i32 %419
  %421 = icmp sgt i32 %420, -1
  %422 = and i32 %366, 31
  %423 = lshr i32 %379, %422
  %424 = lshr i32 %380, %422
  %425 = lshr i32 %381, %422
  %426 = and i32 %423, 3
  %427 = and i32 %425, 3
  %428 = shl nuw nsw i32 %427, 4
  %429 = shl i32 %424, 2
  %430 = and i32 %429, 12
  %431 = and i32 %428, 16
  %432 = or i32 %430, %426
  %433 = or i32 %432, %431
  %434 = shl i32 1, %433
  %435 = extractvalue %dx.types.CBufRet.i32 %399, 1
  %436 = icmp ult i32 %420, %435
  br i1 %436, label %437, label %455, !dx.controlflow.hints !58

; <label>:437                                     ; preds = %418
  %438 = lshr i32 %427, 1
  %439 = shl i32 %420, 4
  %440 = shl nuw nsw i32 %438, 2
  %441 = or i32 %439, %440
  %442 = or i32 %441, 8
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = and i32 %444, %434
  %446 = icmp eq i32 %445, 0
  %447 = add i32 %434, -1
  %448 = and i32 %444, %447
  %449 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %448)  ; Countbits(value)
  %450 = or i32 %439, %440
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = add i32 %452, %449
  %454 = select i1 %446, i32 -2147483648, i32 %453
  br label %455

; <label>:455                                     ; preds = %437, %418
  %456 = phi i32 [ %454, %437 ], [ -2147483648, %418 ]
  %457 = select i1 %421, i32 %456, i32 %420
  %458 = icmp sgt i32 %457, -1
  %459 = and i32 %367, 31
  %460 = lshr i32 %379, %459
  %461 = lshr i32 %380, %459
  %462 = lshr i32 %381, %459
  %463 = and i32 %460, 3
  %464 = and i32 %462, 3
  %465 = shl nuw nsw i32 %464, 4
  %466 = shl i32 %461, 2
  %467 = and i32 %466, 12
  %468 = and i32 %465, 16
  %469 = or i32 %467, %463
  %470 = or i32 %469, %468
  %471 = shl i32 1, %470
  %472 = icmp ult i32 %457, %435
  br i1 %472, label %473, label %491, !dx.controlflow.hints !58

; <label>:473                                     ; preds = %455
  %474 = lshr i32 %464, 1
  %475 = shl i32 %457, 4
  %476 = shl nuw nsw i32 %474, 2
  %477 = or i32 %475, %476
  %478 = or i32 %477, 8
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = and i32 %480, %471
  %482 = icmp eq i32 %481, 0
  %483 = add i32 %471, -1
  %484 = and i32 %480, %483
  %485 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %484)  ; Countbits(value)
  %486 = or i32 %475, %476
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = add i32 %488, %485
  %490 = select i1 %482, i32 -2147483648, i32 %489
  br label %491

; <label>:491                                     ; preds = %473, %455
  %492 = phi i32 [ %490, %473 ], [ -2147483648, %455 ]
  %493 = select i1 %458, i32 %492, i32 %457
  br i1 %392, label %508, label %494, !dx.controlflow.hints !59

; <label>:494                                     ; preds = %491
  %495 = icmp eq i32 %493, -2147483648
  %496 = icmp eq i32 %457, -2147483648
  %497 = select i1 %496, i32 %420, i32 %457
  %498 = select i1 %495, i32 %497, i32 %493
  %499 = icmp sgt i32 %498, -1
  %500 = icmp ne i32 %352, -1
  %501 = and i1 %500, %499
  %502 = select i1 %501, i32 %352, i32 0
  %503 = add i32 %498, %353
  %504 = add i32 %503, %502
  %505 = shl i32 %504, 2
  %506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.i32 %506, 0
  br label %508

; <label>:508                                     ; preds = %494, %491
  %509 = phi i32 [ %507, %494 ], [ -1, %491 ]
  %510 = icmp eq i32 %509, -1
  %511 = select i1 %510, i32 %354, i32 %509
  br label %512

; <label>:512                                     ; preds = %508, %359
  %513 = phi i32 [ %511, %508 ], [ %173, %359 ]
  %514 = icmp eq i32 %513, -1
  br i1 %514, label %663, label %515

; <label>:515                                     ; preds = %512
  br label %516

; <label>:516                                     ; preds = %654, %515
  %517 = phi i32 [ %655, %654 ], [ 0, %515 ]
  %518 = phi i32 [ %519, %654 ], [ -1, %515 ]
  %519 = phi i32 [ %650, %654 ], [ %513, %515 ]
  %520 = phi float [ %626, %654 ], [ 0.000000e+00, %515 ]
  %521 = phi float [ %627, %654 ], [ 0.000000e+00, %515 ]
  %522 = phi float [ %628, %654 ], [ 0.000000e+00, %515 ]
  %523 = phi float [ %631, %654 ], [ 0.000000e+00, %515 ]
  %524 = icmp ugt i32 %517, 50
  br i1 %524, label %657, label %525, !dx.controlflow.hints !60

; <label>:525                                     ; preds = %516
  %526 = shl i32 %519, 4
  %527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.i32 %527, 0
  %529 = extractvalue %dx.types.ResRet.i32 %527, 1
  %530 = extractvalue %dx.types.ResRet.i32 %527, 2
  %531 = extractvalue %dx.types.ResRet.i32 %527, 3
  %532 = and i32 %528, 2147483647
  %533 = mul nsw i32 %532, 12
  %534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.i32 %534, 0
  %536 = extractvalue %dx.types.ResRet.i32 %534, 1
  %537 = extractvalue %dx.types.ResRet.i32 %534, 2
  %538 = and i32 %529, 2147483647
  %539 = mul nsw i32 %538, 12
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = extractvalue %dx.types.ResRet.i32 %540, 1
  %543 = extractvalue %dx.types.ResRet.i32 %540, 2
  %544 = and i32 %530, 2147483647
  %545 = mul nsw i32 %544, 12
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %545, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = extractvalue %dx.types.ResRet.i32 %546, 1
  %549 = extractvalue %dx.types.ResRet.i32 %546, 2
  %550 = and i32 %531, 2147483647
  %551 = mul nsw i32 %550, 12
  %552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.i32 %552, 0
  %554 = extractvalue %dx.types.ResRet.i32 %552, 1
  %555 = extractvalue %dx.types.ResRet.i32 %552, 2
  %556 = bitcast i32 %535 to float
  %557 = bitcast i32 %536 to float
  %558 = bitcast i32 %537 to float
  %559 = bitcast i32 %553 to float
  %560 = bitcast i32 %554 to float
  %561 = bitcast i32 %555 to float
  %562 = fsub fast float %556, %559
  %563 = fsub fast float %557, %560
  %564 = fsub fast float %558, %561
  %565 = bitcast i32 %541 to float
  %566 = bitcast i32 %542 to float
  %567 = bitcast i32 %543 to float
  %568 = fsub fast float %565, %559
  %569 = fsub fast float %566, %560
  %570 = fsub fast float %567, %561
  %571 = bitcast i32 %547 to float
  %572 = bitcast i32 %548 to float
  %573 = bitcast i32 %549 to float
  %574 = fsub fast float %571, %559
  %575 = fsub fast float %572, %560
  %576 = fsub fast float %573, %561
  %577 = fsub fast float %348, %559
  %578 = fsub fast float %349, %560
  %579 = fsub fast float %350, %561
  %580 = fmul fast float %569, %576
  %581 = fmul fast float %575, %570
  %582 = fsub fast float %580, %581
  %583 = fmul fast float %582, %562
  %584 = fmul fast float %568, %576
  %585 = fmul fast float %570, %574
  %586 = fsub fast float %584, %585
  %587 = fmul fast float %586, %563
  %588 = fsub fast float %583, %587
  %589 = fmul fast float %568, %575
  %590 = fmul fast float %569, %574
  %591 = fsub fast float %589, %590
  %592 = fmul fast float %591, %564
  %593 = fadd fast float %588, %592
  %594 = fdiv fast float 1.000000e+00, %593
  %595 = fmul fast float %582, %594
  %596 = fmul fast float %594, %586
  %597 = fsub fast float -0.000000e+00, %596
  %598 = fmul fast float %591, %594
  %599 = fmul fast float %563, %576
  %600 = fmul fast float %564, %575
  %601 = fsub fast float %599, %600
  %602 = fmul fast float %594, %601
  %603 = fsub fast float -0.000000e+00, %602
  %604 = fmul fast float %562, %576
  %605 = fmul fast float %574, %564
  %606 = fsub fast float %604, %605
  %607 = fmul fast float %606, %594
  %608 = fmul fast float %562, %575
  %609 = fmul fast float %563, %574
  %610 = fsub fast float %608, %609
  %611 = fmul fast float %594, %610
  %612 = fsub fast float -0.000000e+00, %611
  %613 = fmul fast float %563, %570
  %614 = fmul fast float %564, %569
  %615 = fsub fast float %613, %614
  %616 = fmul fast float %615, %594
  %617 = fmul fast float %562, %570
  %618 = fmul fast float %564, %568
  %619 = fsub fast float %617, %618
  %620 = fmul fast float %594, %619
  %621 = fsub fast float -0.000000e+00, %620
  %622 = fmul fast float %562, %569
  %623 = fmul fast float %563, %568
  %624 = fsub fast float %622, %623
  %625 = fmul fast float %624, %594
  %626 = call float @dx.op.dot3.f32(i32 55, float %595, float %597, float %598, float %577, float %578, float %579)  ; Dot3(ax,ay,az,bx,by,bz)
  %627 = call float @dx.op.dot3.f32(i32 55, float %603, float %607, float %612, float %577, float %578, float %579)  ; Dot3(ax,ay,az,bx,by,bz)
  %628 = call float @dx.op.dot3.f32(i32 55, float %616, float %621, float %625, float %577, float %578, float %579)  ; Dot3(ax,ay,az,bx,by,bz)
  %629 = fsub fast float 1.000000e+00, %626
  %630 = fsub fast float %629, %627
  %631 = fsub fast float %630, %628
  %632 = call float @dx.op.binary.f32(i32 36, float %626, float %627)  ; FMin(a,b)
  %633 = call float @dx.op.binary.f32(i32 36, float %632, float %628)  ; FMin(a,b)
  %634 = call float @dx.op.binary.f32(i32 36, float %633, float %631)  ; FMin(a,b)
  %635 = call float @dx.op.binary.f32(i32 35, float %626, float %627)  ; FMax(a,b)
  %636 = call float @dx.op.binary.f32(i32 35, float %635, float %628)  ; FMax(a,b)
  %637 = call float @dx.op.binary.f32(i32 35, float %636, float %631)  ; FMax(a,b)
  %638 = fcmp fast oge float %634, 0xBF50624DE0000000
  %639 = fcmp fast olt float %637, 0x3FF00068E0000000
  %640 = and i1 %638, %639
  br i1 %640, label %657, label %641, !dx.controlflow.hints !61

; <label>:641                                     ; preds = %525
  %642 = fcmp fast oeq float %634, %626
  %643 = fcmp fast oeq float %634, %627
  %644 = fcmp fast oeq float %634, %628
  %645 = select i1 %644, i32 8, i32 12
  %646 = select i1 %643, i32 4, i32 %645
  %647 = select i1 %642, i32 0, i32 %646
  %648 = or i32 %647, %526
  %649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %648, i32 undef)  ; BufferLoad(srv,index,wot)
  %650 = extractvalue %dx.types.ResRet.i32 %649, 0
  %651 = icmp ne i32 %518, -1
  %652 = icmp eq i32 %650, %518
  %653 = and i1 %651, %652
  br i1 %653, label %657, label %654, !dx.controlflow.hints !62

; <label>:654                                     ; preds = %641
  %655 = add nuw nsw i32 %517, 1
  %656 = icmp eq i32 %650, -1
  br i1 %656, label %657, label %516, !llvm.loop !63

; <label>:657                                     ; preds = %654, %641, %525, %516
  %658 = phi i32 [ %519, %641 ], [ %519, %525 ], [ -1, %654 ], [ -1, %516 ]
  %659 = phi float [ %626, %641 ], [ %626, %525 ], [ %626, %654 ], [ %520, %516 ]
  %660 = phi float [ %627, %641 ], [ %627, %525 ], [ %627, %654 ], [ %521, %516 ]
  %661 = phi float [ %628, %641 ], [ %628, %525 ], [ %628, %654 ], [ %522, %516 ]
  %662 = phi float [ %631, %641 ], [ %631, %525 ], [ %631, %654 ], [ %523, %516 ]
  br label %663

; <label>:663                                     ; preds = %657, %512
  %664 = phi i32 [ -1, %512 ], [ %658, %657 ]
  %665 = phi float [ 0.000000e+00, %512 ], [ %659, %657 ]
  %666 = phi float [ 0.000000e+00, %512 ], [ %660, %657 ]
  %667 = phi float [ 0.000000e+00, %512 ], [ %661, %657 ]
  %668 = phi float [ 0.000000e+00, %512 ], [ %662, %657 ]
  %669 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %665)  ; FMax(a,b)
  %670 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %666)  ; FMax(a,b)
  %671 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %667)  ; FMax(a,b)
  %672 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %668)  ; FMax(a,b)
  %673 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %669)  ; FMin(a,b)
  %674 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %670)  ; FMin(a,b)
  %675 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %671)  ; FMin(a,b)
  %676 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %672)  ; FMin(a,b)
  store float %673, float* %355, align 4
  store float %674, float* %356, align 4
  store float %675, float* %357, align 4
  store float %676, float* %358, align 4
  br label %677

; <label>:677                                     ; preds = %663, %344
  %678 = phi float [ 0.000000e+00, %344 ], [ %675, %663 ]
  %679 = phi float [ 0.000000e+00, %344 ], [ %674, %663 ]
  %680 = phi float [ 0.000000e+00, %344 ], [ %676, %663 ]
  %681 = phi float [ 0.000000e+00, %344 ], [ %673, %663 ]
  %682 = phi i32 [ -1, %344 ], [ %664, %663 ]
  %683 = icmp eq i32 %682, -1
  br i1 %683, label %684, label %759, !dx.controlflow.hints !65

; <label>:684                                     ; preds = %677
  %685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %686 = extractvalue %dx.types.ResRet.i32 %685, 0
  %687 = extractvalue %dx.types.ResRet.i32 %685, 1
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = extractvalue %dx.types.ResRet.i32 %688, 1
  %691 = extractvalue %dx.types.ResRet.i32 %688, 2
  %692 = extractvalue %dx.types.ResRet.i32 %688, 3
  %693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %694 = extractvalue %dx.types.ResRet.i32 %693, 0
  %695 = extractvalue %dx.types.ResRet.i32 %693, 1
  %696 = extractvalue %dx.types.ResRet.i32 %693, 2
  %697 = extractvalue %dx.types.ResRet.i32 %693, 3
  %698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.i32 %698, 0
  %700 = extractvalue %dx.types.ResRet.i32 %698, 1
  %701 = extractvalue %dx.types.ResRet.i32 %698, 2
  %702 = extractvalue %dx.types.ResRet.i32 %698, 3
  %703 = and i32 %699, 65535
  %704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %703)  ; LegacyF16ToF32(value)
  %705 = lshr i32 %699, 16
  %706 = call float @dx.op.legacyF16ToF32(i32 131, i32 %705)  ; LegacyF16ToF32(value)
  %707 = and i32 %700, 65535
  %708 = call float @dx.op.legacyF16ToF32(i32 131, i32 %707)  ; LegacyF16ToF32(value)
  %709 = lshr i32 %700, 16
  %710 = call float @dx.op.legacyF16ToF32(i32 131, i32 %709)  ; LegacyF16ToF32(value)
  %711 = and i32 %701, 65535
  %712 = call float @dx.op.legacyF16ToF32(i32 131, i32 %711)  ; LegacyF16ToF32(value)
  %713 = lshr i32 %701, 16
  %714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %713)  ; LegacyF16ToF32(value)
  %715 = and i32 %702, 65535
  %716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %715)  ; LegacyF16ToF32(value)
  %717 = lshr i32 %702, 16
  %718 = call float @dx.op.legacyF16ToF32(i32 131, i32 %717)  ; LegacyF16ToF32(value)
  %719 = and i32 %694, 65535
  %720 = call float @dx.op.legacyF16ToF32(i32 131, i32 %719)  ; LegacyF16ToF32(value)
  %721 = lshr i32 %694, 16
  %722 = call float @dx.op.legacyF16ToF32(i32 131, i32 %721)  ; LegacyF16ToF32(value)
  %723 = and i32 %695, 65535
  %724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %723)  ; LegacyF16ToF32(value)
  %725 = lshr i32 %695, 16
  %726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %725)  ; LegacyF16ToF32(value)
  %727 = and i32 %696, 65535
  %728 = call float @dx.op.legacyF16ToF32(i32 131, i32 %727)  ; LegacyF16ToF32(value)
  %729 = lshr i32 %696, 16
  %730 = call float @dx.op.legacyF16ToF32(i32 131, i32 %729)  ; LegacyF16ToF32(value)
  %731 = and i32 %697, 65535
  %732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %731)  ; LegacyF16ToF32(value)
  %733 = lshr i32 %697, 16
  %734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %733)  ; LegacyF16ToF32(value)
  %735 = and i32 %689, 65535
  %736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %735)  ; LegacyF16ToF32(value)
  %737 = lshr i32 %689, 16
  %738 = call float @dx.op.legacyF16ToF32(i32 131, i32 %737)  ; LegacyF16ToF32(value)
  %739 = and i32 %690, 65535
  %740 = call float @dx.op.legacyF16ToF32(i32 131, i32 %739)  ; LegacyF16ToF32(value)
  %741 = lshr i32 %690, 16
  %742 = call float @dx.op.legacyF16ToF32(i32 131, i32 %741)  ; LegacyF16ToF32(value)
  %743 = and i32 %691, 65535
  %744 = call float @dx.op.legacyF16ToF32(i32 131, i32 %743)  ; LegacyF16ToF32(value)
  %745 = lshr i32 %691, 16
  %746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %745)  ; LegacyF16ToF32(value)
  %747 = and i32 %692, 65535
  %748 = call float @dx.op.legacyF16ToF32(i32 131, i32 %747)  ; LegacyF16ToF32(value)
  %749 = lshr i32 %692, 16
  %750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %749)  ; LegacyF16ToF32(value)
  %751 = and i32 %686, 65535
  %752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %751)  ; LegacyF16ToF32(value)
  %753 = lshr i32 %686, 16
  %754 = call float @dx.op.legacyF16ToF32(i32 131, i32 %753)  ; LegacyF16ToF32(value)
  %755 = and i32 %687, 65535
  %756 = call float @dx.op.legacyF16ToF32(i32 131, i32 %755)  ; LegacyF16ToF32(value)
  %757 = lshr i32 %687, 16
  %758 = call float @dx.op.legacyF16ToF32(i32 131, i32 %757)  ; LegacyF16ToF32(value)
  br label %1458

; <label>:759                                     ; preds = %677
  %760 = shl nsw i32 %682, 4
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %760, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = extractvalue %dx.types.ResRet.i32 %761, 1
  %764 = extractvalue %dx.types.ResRet.i32 %761, 2
  %765 = extractvalue %dx.types.ResRet.i32 %761, 3
  %766 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 0
  store i32 %762, i32* %766, align 4
  %767 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 1
  store i32 %763, i32* %767, align 4
  %768 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 2
  store i32 %764, i32* %768, align 4
  %769 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 3
  store i32 %765, i32* %769, align 4
  %770 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 0
  store float 0.000000e+00, float* %770, align 4
  %771 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 1
  store float 0.000000e+00, float* %771, align 4
  %772 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 2
  store float 0.000000e+00, float* %772, align 4
  %773 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 3
  store float 0.000000e+00, float* %773, align 4
  %774 = icmp slt i32 %762, 0
  br i1 %774, label %775, label %865, !dx.controlflow.hints !66

; <label>:775                                     ; preds = %759
  %776 = fsub fast float 1.000000e+00, %681
  %777 = fdiv fast float 1.000000e+00, %776
  %778 = shl nsw i32 %682, 6
  %779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %778, i32 undef)  ; BufferLoad(srv,index,wot)
  %780 = extractvalue %dx.types.ResRet.i32 %779, 0
  %781 = extractvalue %dx.types.ResRet.i32 %779, 1
  %782 = extractvalue %dx.types.ResRet.i32 %779, 2
  %783 = extractvalue %dx.types.ResRet.i32 %779, 3
  %784 = fmul fast float %777, %680
  %785 = fmul fast float %777, %679
  %786 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 0
  store i32 %780, i32* %786, align 4
  %787 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 1
  store i32 %781, i32* %787, align 4
  %788 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 2
  store i32 %782, i32* %788, align 4
  %789 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 3
  store i32 %783, i32* %789, align 4
  %790 = fmul fast float %785, 4.000000e+00
  %791 = call float @dx.op.unary.f32(i32 27, float %790)  ; Round_ni(value)
  %792 = fmul fast float %784, 4.000000e+00
  %793 = call float @dx.op.unary.f32(i32 27, float %792)  ; Round_ni(value)
  %794 = fsub fast float 1.100000e+01, %791
  %795 = fmul fast float %791, 5.000000e-01
  %796 = fmul fast float %795, %794
  %797 = fadd fast float %793, 5.000000e-01
  %798 = fadd fast float %797, %796
  %799 = fptosi float %798 to i32
  %800 = fptosi float %791 to i32
  %801 = sub nsw i32 5, %800
  %802 = fmul fast float %793, 2.500000e-01
  %803 = fmul fast float %791, 2.500000e-01
  %804 = add nsw i32 %799, 1
  %805 = add nsw i32 %799, %801
  %806 = fsub fast float %784, %802
  %807 = fmul fast float %806, 4.000000e+00
  %808 = fsub fast float %785, %803
  %809 = fmul fast float %808, 4.000000e+00
  %810 = fadd fast float %806, %808
  %811 = fmul fast float %810, 4.000000e+00
  %812 = fcmp fast ogt float %811, 1.000000e+00
  br i1 %812, label %813, label %819, !dx.controlflow.hints !67

; <label>:813                                     ; preds = %775
  %814 = add nsw i32 %805, 1
  %815 = fadd fast float %809, -1.000000e+00
  %816 = fsub fast float -0.000000e+00, %815
  %817 = fadd fast float %807, -1.000000e+00
  %818 = fsub fast float -0.000000e+00, %817
  br label %819

; <label>:819                                     ; preds = %813, %775
  %820 = phi i32 [ %814, %813 ], [ %799, %775 ]
  %821 = phi i32 [ %804, %813 ], [ %805, %775 ]
  %822 = phi i32 [ %805, %813 ], [ %804, %775 ]
  %823 = phi float [ %818, %813 ], [ %809, %775 ]
  %824 = phi float [ %816, %813 ], [ %807, %775 ]
  %825 = fsub fast float 1.000000e+00, %823
  %826 = fsub fast float %825, %824
  %827 = lshr i32 %822, 2
  %828 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 %827
  %829 = load i32, i32* %828, align 4, !tbaa !43, !noalias !68
  %830 = shl i32 %822, 3
  %831 = and i32 %830, 24
  %832 = lshr i32 %829, %831
  %833 = and i32 %832, 255
  %834 = sitofp i32 %833 to float
  %835 = fmul fast float %824, 0x3F70101020000000
  %836 = fmul fast float %835, %834
  %837 = lshr i32 %821, 2
  %838 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 %837
  %839 = load i32, i32* %838, align 4, !tbaa !43, !noalias !68
  %840 = shl i32 %821, 3
  %841 = and i32 %840, 24
  %842 = lshr i32 %839, %841
  %843 = and i32 %842, 255
  %844 = sitofp i32 %843 to float
  %845 = fmul fast float %823, 0x3F70101020000000
  %846 = fmul fast float %845, %844
  %847 = lshr i32 %820, 2
  %848 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 %847
  %849 = load i32, i32* %848, align 4, !tbaa !43, !noalias !68
  %850 = shl i32 %820, 3
  %851 = and i32 %850, 24
  %852 = lshr i32 %849, %851
  %853 = and i32 %852, 255
  %854 = sitofp i32 %853 to float
  %855 = fmul fast float %826, 0x3F70101020000000
  %856 = fmul fast float %855, %854
  %857 = fsub fast float 1.000000e+00, %836
  %858 = fsub fast float %857, %846
  %859 = fsub fast float %858, %856
  %860 = fmul fast float %681, 2.000000e+01
  %861 = fadd fast float %860, 1.000000e+00
  %862 = fmul fast float %859, 2.000000e+01
  %863 = fsub fast float %861, %862
  %864 = call float @dx.op.unary.f32(i32 7, float %863)  ; Saturate(value)
  br label %865

; <label>:865                                     ; preds = %819, %759
  %866 = phi float [ %864, %819 ], [ 1.000000e+00, %759 ]
  store float %866, float* %770, align 4, !tbaa !76, !noalias !68
  %867 = icmp slt i32 %763, 0
  br i1 %867, label %868, label %959, !dx.controlflow.hints !66

; <label>:868                                     ; preds = %865
  %869 = fsub fast float 1.000000e+00, %679
  %870 = fdiv fast float 1.000000e+00, %869
  %871 = shl i32 %682, 6
  %872 = or i32 %871, 16
  %873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = extractvalue %dx.types.ResRet.i32 %873, 1
  %876 = extractvalue %dx.types.ResRet.i32 %873, 2
  %877 = extractvalue %dx.types.ResRet.i32 %873, 3
  %878 = fmul fast float %870, %681
  %879 = fmul fast float %870, %680
  %880 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 0
  store i32 %874, i32* %880, align 4
  %881 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 1
  store i32 %875, i32* %881, align 4
  %882 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 2
  store i32 %876, i32* %882, align 4
  %883 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 3
  store i32 %877, i32* %883, align 4
  %884 = fmul fast float %879, 4.000000e+00
  %885 = call float @dx.op.unary.f32(i32 27, float %884)  ; Round_ni(value)
  %886 = fmul fast float %878, 4.000000e+00
  %887 = call float @dx.op.unary.f32(i32 27, float %886)  ; Round_ni(value)
  %888 = fsub fast float 1.100000e+01, %885
  %889 = fmul fast float %885, 5.000000e-01
  %890 = fmul fast float %889, %888
  %891 = fadd fast float %887, 5.000000e-01
  %892 = fadd fast float %891, %890
  %893 = fptosi float %892 to i32
  %894 = fptosi float %885 to i32
  %895 = sub nsw i32 5, %894
  %896 = fmul fast float %887, 2.500000e-01
  %897 = fmul fast float %885, 2.500000e-01
  %898 = add nsw i32 %893, 1
  %899 = add nsw i32 %893, %895
  %900 = fsub fast float %878, %896
  %901 = fmul fast float %900, 4.000000e+00
  %902 = fsub fast float %879, %897
  %903 = fmul fast float %902, 4.000000e+00
  %904 = fadd fast float %900, %902
  %905 = fmul fast float %904, 4.000000e+00
  %906 = fcmp fast ogt float %905, 1.000000e+00
  br i1 %906, label %907, label %913, !dx.controlflow.hints !67

; <label>:907                                     ; preds = %868
  %908 = add nsw i32 %899, 1
  %909 = fadd fast float %903, -1.000000e+00
  %910 = fsub fast float -0.000000e+00, %909
  %911 = fadd fast float %901, -1.000000e+00
  %912 = fsub fast float -0.000000e+00, %911
  br label %913

; <label>:913                                     ; preds = %907, %868
  %914 = phi i32 [ %908, %907 ], [ %893, %868 ]
  %915 = phi i32 [ %898, %907 ], [ %899, %868 ]
  %916 = phi i32 [ %899, %907 ], [ %898, %868 ]
  %917 = phi float [ %912, %907 ], [ %903, %868 ]
  %918 = phi float [ %910, %907 ], [ %901, %868 ]
  %919 = fsub fast float 1.000000e+00, %917
  %920 = fsub fast float %919, %918
  %921 = lshr i32 %916, 2
  %922 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 %921
  %923 = load i32, i32* %922, align 4, !tbaa !43, !noalias !68
  %924 = shl i32 %916, 3
  %925 = and i32 %924, 24
  %926 = lshr i32 %923, %925
  %927 = and i32 %926, 255
  %928 = sitofp i32 %927 to float
  %929 = fmul fast float %918, 0x3F70101020000000
  %930 = fmul fast float %929, %928
  %931 = lshr i32 %915, 2
  %932 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 %931
  %933 = load i32, i32* %932, align 4, !tbaa !43, !noalias !68
  %934 = shl i32 %915, 3
  %935 = and i32 %934, 24
  %936 = lshr i32 %933, %935
  %937 = and i32 %936, 255
  %938 = sitofp i32 %937 to float
  %939 = fmul fast float %917, 0x3F70101020000000
  %940 = fmul fast float %939, %938
  %941 = lshr i32 %914, 2
  %942 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 %941
  %943 = load i32, i32* %942, align 4, !tbaa !43, !noalias !68
  %944 = shl i32 %914, 3
  %945 = and i32 %944, 24
  %946 = lshr i32 %943, %945
  %947 = and i32 %946, 255
  %948 = sitofp i32 %947 to float
  %949 = fmul fast float %920, 0x3F70101020000000
  %950 = fmul fast float %949, %948
  %951 = fsub fast float 1.000000e+00, %930
  %952 = fsub fast float %951, %940
  %953 = fsub fast float %952, %950
  %954 = fmul fast float %679, 2.000000e+01
  %955 = fadd fast float %954, 1.000000e+00
  %956 = fmul fast float %953, 2.000000e+01
  %957 = fsub fast float %955, %956
  %958 = call float @dx.op.unary.f32(i32 7, float %957)  ; Saturate(value)
  br label %959

; <label>:959                                     ; preds = %913, %865
  %960 = phi float [ %958, %913 ], [ 1.000000e+00, %865 ]
  store float %960, float* %771, align 4, !tbaa !76, !noalias !68
  %961 = fadd fast float %960, %866
  %962 = icmp slt i32 %764, 0
  br i1 %962, label %963, label %1054, !dx.controlflow.hints !66

; <label>:963                                     ; preds = %959
  %964 = fsub fast float 1.000000e+00, %678
  %965 = fdiv fast float 1.000000e+00, %964
  %966 = shl i32 %682, 6
  %967 = or i32 %966, 32
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = extractvalue %dx.types.ResRet.i32 %968, 1
  %971 = extractvalue %dx.types.ResRet.i32 %968, 2
  %972 = extractvalue %dx.types.ResRet.i32 %968, 3
  %973 = fmul fast float %965, %681
  %974 = fmul fast float %965, %679
  %975 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 0
  store i32 %969, i32* %975, align 4
  %976 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 1
  store i32 %970, i32* %976, align 4
  %977 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 2
  store i32 %971, i32* %977, align 4
  %978 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 3
  store i32 %972, i32* %978, align 4
  %979 = fmul fast float %974, 4.000000e+00
  %980 = call float @dx.op.unary.f32(i32 27, float %979)  ; Round_ni(value)
  %981 = fmul fast float %973, 4.000000e+00
  %982 = call float @dx.op.unary.f32(i32 27, float %981)  ; Round_ni(value)
  %983 = fsub fast float 1.100000e+01, %980
  %984 = fmul fast float %980, 5.000000e-01
  %985 = fmul fast float %984, %983
  %986 = fadd fast float %982, 5.000000e-01
  %987 = fadd fast float %986, %985
  %988 = fptosi float %987 to i32
  %989 = fptosi float %980 to i32
  %990 = sub nsw i32 5, %989
  %991 = fmul fast float %982, 2.500000e-01
  %992 = fmul fast float %980, 2.500000e-01
  %993 = add nsw i32 %988, 1
  %994 = add nsw i32 %988, %990
  %995 = fsub fast float %973, %991
  %996 = fmul fast float %995, 4.000000e+00
  %997 = fsub fast float %974, %992
  %998 = fmul fast float %997, 4.000000e+00
  %999 = fadd fast float %995, %997
  %1000 = fmul fast float %999, 4.000000e+00
  %1001 = fcmp fast ogt float %1000, 1.000000e+00
  br i1 %1001, label %1002, label %1008, !dx.controlflow.hints !67

; <label>:1002                                    ; preds = %963
  %1003 = add nsw i32 %994, 1
  %1004 = fadd fast float %998, -1.000000e+00
  %1005 = fsub fast float -0.000000e+00, %1004
  %1006 = fadd fast float %996, -1.000000e+00
  %1007 = fsub fast float -0.000000e+00, %1006
  br label %1008

; <label>:1008                                    ; preds = %1002, %963
  %1009 = phi i32 [ %1003, %1002 ], [ %988, %963 ]
  %1010 = phi i32 [ %993, %1002 ], [ %994, %963 ]
  %1011 = phi i32 [ %994, %1002 ], [ %993, %963 ]
  %1012 = phi float [ %1007, %1002 ], [ %998, %963 ]
  %1013 = phi float [ %1005, %1002 ], [ %996, %963 ]
  %1014 = fsub fast float 1.000000e+00, %1012
  %1015 = fsub fast float %1014, %1013
  %1016 = lshr i32 %1011, 2
  %1017 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 %1016
  %1018 = load i32, i32* %1017, align 4, !tbaa !43, !noalias !68
  %1019 = shl i32 %1011, 3
  %1020 = and i32 %1019, 24
  %1021 = lshr i32 %1018, %1020
  %1022 = and i32 %1021, 255
  %1023 = sitofp i32 %1022 to float
  %1024 = fmul fast float %1013, 0x3F70101020000000
  %1025 = fmul fast float %1024, %1023
  %1026 = lshr i32 %1010, 2
  %1027 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 %1026
  %1028 = load i32, i32* %1027, align 4, !tbaa !43, !noalias !68
  %1029 = shl i32 %1010, 3
  %1030 = and i32 %1029, 24
  %1031 = lshr i32 %1028, %1030
  %1032 = and i32 %1031, 255
  %1033 = sitofp i32 %1032 to float
  %1034 = fmul fast float %1012, 0x3F70101020000000
  %1035 = fmul fast float %1034, %1033
  %1036 = lshr i32 %1009, 2
  %1037 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 %1036
  %1038 = load i32, i32* %1037, align 4, !tbaa !43, !noalias !68
  %1039 = shl i32 %1009, 3
  %1040 = and i32 %1039, 24
  %1041 = lshr i32 %1038, %1040
  %1042 = and i32 %1041, 255
  %1043 = sitofp i32 %1042 to float
  %1044 = fmul fast float %1015, 0x3F70101020000000
  %1045 = fmul fast float %1044, %1043
  %1046 = fsub fast float 1.000000e+00, %1025
  %1047 = fsub fast float %1046, %1035
  %1048 = fsub fast float %1047, %1045
  %1049 = fmul fast float %678, 2.000000e+01
  %1050 = fadd fast float %1049, 1.000000e+00
  %1051 = fmul fast float %1048, 2.000000e+01
  %1052 = fsub fast float %1050, %1051
  %1053 = call float @dx.op.unary.f32(i32 7, float %1052)  ; Saturate(value)
  br label %1054

; <label>:1054                                    ; preds = %1008, %959
  %1055 = phi float [ %1053, %1008 ], [ 1.000000e+00, %959 ]
  store float %1055, float* %772, align 4, !tbaa !76, !noalias !68
  %1056 = fadd fast float %961, %1055
  %1057 = icmp slt i32 %765, 0
  br i1 %1057, label %1058, label %1149, !dx.controlflow.hints !66

; <label>:1058                                    ; preds = %1054
  %1059 = fsub fast float 1.000000e+00, %680
  %1060 = fdiv fast float 1.000000e+00, %1059
  %1061 = shl i32 %682, 6
  %1062 = or i32 %1061, 48
  %1063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1062, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.i32 %1063, 0
  %1065 = extractvalue %dx.types.ResRet.i32 %1063, 1
  %1066 = extractvalue %dx.types.ResRet.i32 %1063, 2
  %1067 = extractvalue %dx.types.ResRet.i32 %1063, 3
  %1068 = fmul fast float %1060, %681
  %1069 = fmul fast float %1060, %679
  %1070 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 0
  store i32 %1064, i32* %1070, align 4
  %1071 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 1
  store i32 %1065, i32* %1071, align 4
  %1072 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 2
  store i32 %1066, i32* %1072, align 4
  %1073 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 3
  store i32 %1067, i32* %1073, align 4
  %1074 = fmul fast float %1069, 4.000000e+00
  %1075 = call float @dx.op.unary.f32(i32 27, float %1074)  ; Round_ni(value)
  %1076 = fmul fast float %1068, 4.000000e+00
  %1077 = call float @dx.op.unary.f32(i32 27, float %1076)  ; Round_ni(value)
  %1078 = fsub fast float 1.100000e+01, %1075
  %1079 = fmul fast float %1075, 5.000000e-01
  %1080 = fmul fast float %1079, %1078
  %1081 = fadd fast float %1077, 5.000000e-01
  %1082 = fadd fast float %1081, %1080
  %1083 = fptosi float %1082 to i32
  %1084 = fptosi float %1075 to i32
  %1085 = sub nsw i32 5, %1084
  %1086 = fmul fast float %1077, 2.500000e-01
  %1087 = fmul fast float %1075, 2.500000e-01
  %1088 = add nsw i32 %1083, 1
  %1089 = add nsw i32 %1083, %1085
  %1090 = fsub fast float %1068, %1086
  %1091 = fmul fast float %1090, 4.000000e+00
  %1092 = fsub fast float %1069, %1087
  %1093 = fmul fast float %1092, 4.000000e+00
  %1094 = fadd fast float %1090, %1092
  %1095 = fmul fast float %1094, 4.000000e+00
  %1096 = fcmp fast ogt float %1095, 1.000000e+00
  br i1 %1096, label %1097, label %1103, !dx.controlflow.hints !67

; <label>:1097                                    ; preds = %1058
  %1098 = add nsw i32 %1089, 1
  %1099 = fadd fast float %1093, -1.000000e+00
  %1100 = fsub fast float -0.000000e+00, %1099
  %1101 = fadd fast float %1091, -1.000000e+00
  %1102 = fsub fast float -0.000000e+00, %1101
  br label %1103

; <label>:1103                                    ; preds = %1097, %1058
  %1104 = phi i32 [ %1098, %1097 ], [ %1083, %1058 ]
  %1105 = phi i32 [ %1088, %1097 ], [ %1089, %1058 ]
  %1106 = phi i32 [ %1089, %1097 ], [ %1088, %1058 ]
  %1107 = phi float [ %1102, %1097 ], [ %1093, %1058 ]
  %1108 = phi float [ %1100, %1097 ], [ %1091, %1058 ]
  %1109 = fsub fast float 1.000000e+00, %1107
  %1110 = fsub fast float %1109, %1108
  %1111 = lshr i32 %1106, 2
  %1112 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 %1111
  %1113 = load i32, i32* %1112, align 4, !tbaa !43, !noalias !68
  %1114 = shl i32 %1106, 3
  %1115 = and i32 %1114, 24
  %1116 = lshr i32 %1113, %1115
  %1117 = and i32 %1116, 255
  %1118 = sitofp i32 %1117 to float
  %1119 = fmul fast float %1108, 0x3F70101020000000
  %1120 = fmul fast float %1119, %1118
  %1121 = lshr i32 %1105, 2
  %1122 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 %1121
  %1123 = load i32, i32* %1122, align 4, !tbaa !43, !noalias !68
  %1124 = shl i32 %1105, 3
  %1125 = and i32 %1124, 24
  %1126 = lshr i32 %1123, %1125
  %1127 = and i32 %1126, 255
  %1128 = sitofp i32 %1127 to float
  %1129 = fmul fast float %1107, 0x3F70101020000000
  %1130 = fmul fast float %1129, %1128
  %1131 = lshr i32 %1104, 2
  %1132 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 %1131
  %1133 = load i32, i32* %1132, align 4, !tbaa !43, !noalias !68
  %1134 = shl i32 %1104, 3
  %1135 = and i32 %1134, 24
  %1136 = lshr i32 %1133, %1135
  %1137 = and i32 %1136, 255
  %1138 = sitofp i32 %1137 to float
  %1139 = fmul fast float %1110, 0x3F70101020000000
  %1140 = fmul fast float %1139, %1138
  %1141 = fsub fast float 1.000000e+00, %1120
  %1142 = fsub fast float %1141, %1130
  %1143 = fsub fast float %1142, %1140
  %1144 = fmul fast float %680, 2.000000e+01
  %1145 = fadd fast float %1144, 1.000000e+00
  %1146 = fmul fast float %1143, 2.000000e+01
  %1147 = fsub fast float %1145, %1146
  %1148 = call float @dx.op.unary.f32(i32 7, float %1147)  ; Saturate(value)
  br label %1149

; <label>:1149                                    ; preds = %1103, %1054
  %1150 = phi float [ %1148, %1103 ], [ 1.000000e+00, %1054 ]
  store float %1150, float* %773, align 4, !tbaa !76, !noalias !68
  %1151 = fadd fast float %1056, %1150
  %1152 = fcmp fast oeq float %1151, 0.000000e+00
  br i1 %1152, label %1153, label %1154, !dx.controlflow.hints !78

; <label>:1153                                    ; preds = %1149
  store float 2.500000e-01, float* %770, align 4
  store float 2.500000e-01, float* %771, align 4
  store float 2.500000e-01, float* %772, align 4
  store float 2.500000e-01, float* %773, align 4
  br label %1154

; <label>:1154                                    ; preds = %1153, %1149
  %1155 = phi float [ 2.500000e-01, %1153 ], [ %866, %1149 ]
  %1156 = phi i32 [ 0, %1153 ], [ 1, %1149 ]
  br label %1157

; <label>:1157                                    ; preds = %1424, %1154
  %1158 = phi float [ %1155, %1154 ], [ %1426, %1424 ]
  %1159 = phi float [ 0.000000e+00, %1154 ], [ %1393, %1424 ]
  %1160 = phi float [ 0.000000e+00, %1154 ], [ %1394, %1424 ]
  %1161 = phi float [ 0.000000e+00, %1154 ], [ %1395, %1424 ]
  %1162 = phi float [ 0.000000e+00, %1154 ], [ %1396, %1424 ]
  %1163 = phi float [ 0.000000e+00, %1154 ], [ %1397, %1424 ]
  %1164 = phi float [ 0.000000e+00, %1154 ], [ %1398, %1424 ]
  %1165 = phi float [ 0.000000e+00, %1154 ], [ %1399, %1424 ]
  %1166 = phi float [ 0.000000e+00, %1154 ], [ %1400, %1424 ]
  %1167 = phi float [ 0.000000e+00, %1154 ], [ %1401, %1424 ]
  %1168 = phi float [ 0.000000e+00, %1154 ], [ %1402, %1424 ]
  %1169 = phi float [ 0.000000e+00, %1154 ], [ %1403, %1424 ]
  %1170 = phi float [ 0.000000e+00, %1154 ], [ %1404, %1424 ]
  %1171 = phi float [ 0.000000e+00, %1154 ], [ %1405, %1424 ]
  %1172 = phi float [ 0.000000e+00, %1154 ], [ %1406, %1424 ]
  %1173 = phi float [ 0.000000e+00, %1154 ], [ %1407, %1424 ]
  %1174 = phi float [ 0.000000e+00, %1154 ], [ %1408, %1424 ]
  %1175 = phi float [ 0.000000e+00, %1154 ], [ %1409, %1424 ]
  %1176 = phi float [ 0.000000e+00, %1154 ], [ %1410, %1424 ]
  %1177 = phi float [ 0.000000e+00, %1154 ], [ %1411, %1424 ]
  %1178 = phi float [ 0.000000e+00, %1154 ], [ %1412, %1424 ]
  %1179 = phi float [ 0.000000e+00, %1154 ], [ %1413, %1424 ]
  %1180 = phi float [ 0.000000e+00, %1154 ], [ %1414, %1424 ]
  %1181 = phi float [ 0.000000e+00, %1154 ], [ %1415, %1424 ]
  %1182 = phi float [ 0.000000e+00, %1154 ], [ %1416, %1424 ]
  %1183 = phi float [ 0.000000e+00, %1154 ], [ %1417, %1424 ]
  %1184 = phi float [ 0.000000e+00, %1154 ], [ %1418, %1424 ]
  %1185 = phi float [ 0.000000e+00, %1154 ], [ %1419, %1424 ]
  %1186 = phi float [ 0.000000e+00, %1154 ], [ %1420, %1424 ]
  %1187 = phi float [ 0.000000e+00, %1154 ], [ %1421, %1424 ]
  %1188 = phi i32 [ 0, %1154 ], [ %1422, %1424 ]
  %1189 = fcmp fast ogt float %1158, 0.000000e+00
  br i1 %1189, label %1190, label %1392, !dx.controlflow.hints !79

; <label>:1190                                    ; preds = %1157
  %1191 = getelementptr [4 x float], [4 x float]* %34, i32 0, i32 %1188
  %1192 = load float, float* %1191, align 4, !tbaa !76, !noalias !68
  %1193 = getelementptr [4 x i32], [4 x i32]* %35, i32 0, i32 %1188
  %1194 = load i32, i32* %1193, align 4, !tbaa !43, !noalias !68
  %1195 = fmul fast float %1192, %1158
  %1196 = shl i32 %1194, 5
  %1197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1196, i32 undef)  ; BufferLoad(srv,index,wot)
  %1198 = extractvalue %dx.types.ResRet.i32 %1197, 0
  %1199 = extractvalue %dx.types.ResRet.i32 %1197, 1
  %1200 = extractvalue %dx.types.ResRet.i32 %1197, 2
  %1201 = extractvalue %dx.types.ResRet.i32 %1197, 3
  %1202 = or i32 %1196, 16
  %1203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1202, i32 undef)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.i32 %1203, 0
  %1205 = extractvalue %dx.types.ResRet.i32 %1203, 1
  %1206 = extractvalue %dx.types.ResRet.i32 %1203, 2
  %1207 = shl i32 %1198, 4
  %1208 = and i32 %1207, 32752
  %1209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1208)  ; LegacyF16ToF32(value)
  %1210 = lshr i32 %1198, 7
  %1211 = and i32 %1210, 32752
  %1212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1211)  ; LegacyF16ToF32(value)
  %1213 = lshr i32 %1198, 22
  %1214 = shl nuw nsw i32 %1213, 5
  %1215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1214)  ; LegacyF16ToF32(value)
  %1216 = and i32 %1199, 255
  %1217 = uitofp i32 %1216 to float
  %1218 = fmul fast float %1217, 0x3F80204080000000
  %1219 = fadd fast float %1218, -1.000000e+00
  %1220 = lshr i32 %1199, 8
  %1221 = and i32 %1220, 255
  %1222 = uitofp i32 %1221 to float
  %1223 = fmul fast float %1222, 0x3F80204080000000
  %1224 = fadd fast float %1223, -1.000000e+00
  %1225 = lshr i32 %1199, 16
  %1226 = and i32 %1225, 255
  %1227 = uitofp i32 %1226 to float
  %1228 = fmul fast float %1227, 0x3F80204080000000
  %1229 = fadd fast float %1228, -1.000000e+00
  %1230 = lshr i32 %1199, 24
  %1231 = uitofp i32 %1230 to float
  %1232 = fmul fast float %1231, 0x3F80204080000000
  %1233 = fadd fast float %1232, -1.000000e+00
  %1234 = and i32 %1200, 255
  %1235 = uitofp i32 %1234 to float
  %1236 = fmul fast float %1235, 0x3F80204080000000
  %1237 = fadd fast float %1236, -1.000000e+00
  %1238 = lshr i32 %1200, 8
  %1239 = and i32 %1238, 255
  %1240 = uitofp i32 %1239 to float
  %1241 = fmul fast float %1240, 0x3F80204080000000
  %1242 = fadd fast float %1241, -1.000000e+00
  %1243 = lshr i32 %1200, 16
  %1244 = and i32 %1243, 255
  %1245 = uitofp i32 %1244 to float
  %1246 = fmul fast float %1245, 0x3F80204080000000
  %1247 = fadd fast float %1246, -1.000000e+00
  %1248 = lshr i32 %1200, 24
  %1249 = uitofp i32 %1248 to float
  %1250 = fmul fast float %1249, 0x3F80204080000000
  %1251 = fadd fast float %1250, -1.000000e+00
  %1252 = and i32 %1201, 255
  %1253 = uitofp i32 %1252 to float
  %1254 = fmul fast float %1253, 0x3F80204080000000
  %1255 = fadd fast float %1254, -1.000000e+00
  %1256 = lshr i32 %1201, 8
  %1257 = and i32 %1256, 255
  %1258 = uitofp i32 %1257 to float
  %1259 = fmul fast float %1258, 0x3F80204080000000
  %1260 = fadd fast float %1259, -1.000000e+00
  %1261 = lshr i32 %1201, 16
  %1262 = and i32 %1261, 255
  %1263 = uitofp i32 %1262 to float
  %1264 = fmul fast float %1263, 0x3F80204080000000
  %1265 = fadd fast float %1264, -1.000000e+00
  %1266 = lshr i32 %1201, 24
  %1267 = uitofp i32 %1266 to float
  %1268 = fmul fast float %1267, 0x3F80204080000000
  %1269 = fadd fast float %1268, -1.000000e+00
  %1270 = and i32 %1204, 255
  %1271 = uitofp i32 %1270 to float
  %1272 = fmul fast float %1271, 0x3F80204080000000
  %1273 = fadd fast float %1272, -1.000000e+00
  %1274 = lshr i32 %1204, 8
  %1275 = and i32 %1274, 255
  %1276 = uitofp i32 %1275 to float
  %1277 = fmul fast float %1276, 0x3F80204080000000
  %1278 = fadd fast float %1277, -1.000000e+00
  %1279 = lshr i32 %1204, 16
  %1280 = and i32 %1279, 255
  %1281 = uitofp i32 %1280 to float
  %1282 = fmul fast float %1281, 0x3F80204080000000
  %1283 = fadd fast float %1282, -1.000000e+00
  %1284 = lshr i32 %1204, 24
  %1285 = uitofp i32 %1284 to float
  %1286 = fmul fast float %1285, 0x3F80204080000000
  %1287 = fadd fast float %1286, -1.000000e+00
  %1288 = and i32 %1205, 255
  %1289 = uitofp i32 %1288 to float
  %1290 = fmul fast float %1289, 0x3F80204080000000
  %1291 = fadd fast float %1290, -1.000000e+00
  %1292 = lshr i32 %1205, 8
  %1293 = and i32 %1292, 255
  %1294 = uitofp i32 %1293 to float
  %1295 = fmul fast float %1294, 0x3F80204080000000
  %1296 = fadd fast float %1295, -1.000000e+00
  %1297 = lshr i32 %1205, 16
  %1298 = and i32 %1297, 255
  %1299 = uitofp i32 %1298 to float
  %1300 = fmul fast float %1299, 0x3F80204080000000
  %1301 = fadd fast float %1300, -1.000000e+00
  %1302 = lshr i32 %1205, 24
  %1303 = uitofp i32 %1302 to float
  %1304 = fmul fast float %1303, 0x3F80204080000000
  %1305 = fadd fast float %1304, -1.000000e+00
  %1306 = and i32 %1206, 255
  %1307 = uitofp i32 %1306 to float
  %1308 = fmul fast float %1307, 0x3F80204080000000
  %1309 = fadd fast float %1308, -1.000000e+00
  %1310 = lshr i32 %1206, 8
  %1311 = and i32 %1310, 255
  %1312 = uitofp i32 %1311 to float
  %1313 = fmul fast float %1312, 0x3F80204080000000
  %1314 = fadd fast float %1313, -1.000000e+00
  %1315 = lshr i32 %1206, 16
  %1316 = and i32 %1315, 255
  %1317 = uitofp i32 %1316 to float
  %1318 = fmul fast float %1317, 0x3F80204080000000
  %1319 = fadd fast float %1318, -1.000000e+00
  %1320 = lshr i32 %1206, 24
  %1321 = uitofp i32 %1320 to float
  %1322 = fmul fast float %1321, 0x3F80204080000000
  %1323 = fadd fast float %1322, -1.000000e+00
  %1324 = fmul fast float %1209, %1195
  %1325 = fadd fast float %1324, %1167
  %1326 = fmul fast float %1195, 0x3FFBB67AE0000000
  %1327 = fmul fast float %1326, %1209
  %1328 = fmul fast float %1327, %1219
  %1329 = fadd fast float %1328, %1166
  %1330 = fmul fast float %1327, %1224
  %1331 = fadd fast float %1330, %1165
  %1332 = fmul fast float %1327, %1229
  %1333 = fadd fast float %1332, %1164
  %1334 = fmul fast float %1195, 0x3FFEFBDEC0000000
  %1335 = fmul fast float %1334, %1209
  %1336 = fmul fast float %1335, %1233
  %1337 = fadd fast float %1336, %1163
  %1338 = fmul fast float %1335, %1237
  %1339 = fadd fast float %1338, %1162
  %1340 = fmul fast float %1195, 0x4001E377A0000000
  %1341 = fmul fast float %1340, %1209
  %1342 = fmul fast float %1341, %1242
  %1343 = fadd fast float %1342, %1161
  %1344 = fmul fast float %1335, %1247
  %1345 = fadd fast float %1344, %1160
  %1346 = fmul fast float %1335, %1251
  %1347 = fadd fast float %1346, %1159
  %1348 = fmul fast float %1212, %1195
  %1349 = fadd fast float %1348, %1176
  %1350 = fmul fast float %1326, %1212
  %1351 = fmul fast float %1350, %1255
  %1352 = fadd fast float %1351, %1175
  %1353 = fmul fast float %1350, %1260
  %1354 = fadd fast float %1353, %1174
  %1355 = fmul fast float %1350, %1265
  %1356 = fadd fast float %1355, %1173
  %1357 = fmul fast float %1334, %1212
  %1358 = fmul fast float %1357, %1269
  %1359 = fadd fast float %1358, %1172
  %1360 = fmul fast float %1357, %1273
  %1361 = fadd fast float %1360, %1171
  %1362 = fmul fast float %1340, %1212
  %1363 = fmul fast float %1362, %1278
  %1364 = fadd fast float %1363, %1170
  %1365 = fmul fast float %1357, %1283
  %1366 = fadd fast float %1365, %1169
  %1367 = fmul fast float %1357, %1287
  %1368 = fadd fast float %1367, %1168
  %1369 = fmul fast float %1215, %1195
  %1370 = fadd fast float %1369, %1185
  %1371 = fmul fast float %1326, %1215
  %1372 = fmul fast float %1371, %1291
  %1373 = fadd fast float %1372, %1184
  %1374 = fmul fast float %1371, %1296
  %1375 = fadd fast float %1374, %1183
  %1376 = fmul fast float %1371, %1301
  %1377 = fadd fast float %1376, %1182
  %1378 = fmul fast float %1334, %1215
  %1379 = fmul fast float %1378, %1305
  %1380 = fadd fast float %1379, %1181
  %1381 = fmul fast float %1378, %1309
  %1382 = fadd fast float %1381, %1180
  %1383 = fmul fast float %1340, %1215
  %1384 = fmul fast float %1383, %1314
  %1385 = fadd fast float %1384, %1179
  %1386 = fmul fast float %1378, %1319
  %1387 = fadd fast float %1386, %1178
  %1388 = fmul fast float %1378, %1323
  %1389 = fadd fast float %1388, %1177
  %1390 = fadd fast float %1195, %1186
  %1391 = fadd fast float %1195, %1187
  br label %1392

; <label>:1392                                    ; preds = %1190, %1157
  %1393 = phi float [ %1347, %1190 ], [ %1159, %1157 ]
  %1394 = phi float [ %1345, %1190 ], [ %1160, %1157 ]
  %1395 = phi float [ %1343, %1190 ], [ %1161, %1157 ]
  %1396 = phi float [ %1339, %1190 ], [ %1162, %1157 ]
  %1397 = phi float [ %1337, %1190 ], [ %1163, %1157 ]
  %1398 = phi float [ %1333, %1190 ], [ %1164, %1157 ]
  %1399 = phi float [ %1331, %1190 ], [ %1165, %1157 ]
  %1400 = phi float [ %1329, %1190 ], [ %1166, %1157 ]
  %1401 = phi float [ %1325, %1190 ], [ %1167, %1157 ]
  %1402 = phi float [ %1368, %1190 ], [ %1168, %1157 ]
  %1403 = phi float [ %1366, %1190 ], [ %1169, %1157 ]
  %1404 = phi float [ %1364, %1190 ], [ %1170, %1157 ]
  %1405 = phi float [ %1361, %1190 ], [ %1171, %1157 ]
  %1406 = phi float [ %1359, %1190 ], [ %1172, %1157 ]
  %1407 = phi float [ %1356, %1190 ], [ %1173, %1157 ]
  %1408 = phi float [ %1354, %1190 ], [ %1174, %1157 ]
  %1409 = phi float [ %1352, %1190 ], [ %1175, %1157 ]
  %1410 = phi float [ %1349, %1190 ], [ %1176, %1157 ]
  %1411 = phi float [ %1389, %1190 ], [ %1177, %1157 ]
  %1412 = phi float [ %1387, %1190 ], [ %1178, %1157 ]
  %1413 = phi float [ %1385, %1190 ], [ %1179, %1157 ]
  %1414 = phi float [ %1382, %1190 ], [ %1180, %1157 ]
  %1415 = phi float [ %1380, %1190 ], [ %1181, %1157 ]
  %1416 = phi float [ %1377, %1190 ], [ %1182, %1157 ]
  %1417 = phi float [ %1375, %1190 ], [ %1183, %1157 ]
  %1418 = phi float [ %1373, %1190 ], [ %1184, %1157 ]
  %1419 = phi float [ %1370, %1190 ], [ %1185, %1157 ]
  %1420 = phi float [ %1390, %1190 ], [ %1186, %1157 ]
  %1421 = phi float [ %1391, %1190 ], [ %1187, %1157 ]
  %1422 = add nuw nsw i32 %1188, 1
  %1423 = icmp eq i32 %1422, 4
  br i1 %1423, label %1427, label %1424

; <label>:1424                                    ; preds = %1392
  %1425 = getelementptr [4 x float], [4 x float]* %36, i32 0, i32 %1422
  %1426 = load float, float* %1425, align 4, !tbaa !76, !noalias !68
  br label %1157

; <label>:1427                                    ; preds = %1392
  %1428 = fcmp fast ogt float %1421, 0.000000e+00
  %1429 = fdiv fast float 1.000000e+00, %1421
  %1430 = select i1 %1428, float %1429, float 1.000000e+00
  %1431 = fmul fast float %1430, %1401
  %1432 = fmul fast float %1430, %1400
  %1433 = fmul fast float %1430, %1399
  %1434 = fmul fast float %1430, %1398
  %1435 = fmul fast float %1430, %1397
  %1436 = fmul fast float %1430, %1396
  %1437 = fmul fast float %1430, %1395
  %1438 = fmul fast float %1430, %1394
  %1439 = fmul fast float %1430, %1393
  %1440 = fmul fast float %1430, %1410
  %1441 = fmul fast float %1430, %1409
  %1442 = fmul fast float %1430, %1408
  %1443 = fmul fast float %1430, %1407
  %1444 = fmul fast float %1430, %1406
  %1445 = fmul fast float %1430, %1405
  %1446 = fmul fast float %1430, %1404
  %1447 = fmul fast float %1430, %1403
  %1448 = fmul fast float %1430, %1402
  %1449 = fmul fast float %1430, %1419
  %1450 = fmul fast float %1430, %1418
  %1451 = fmul fast float %1430, %1417
  %1452 = fmul fast float %1430, %1416
  %1453 = fmul fast float %1430, %1415
  %1454 = fmul fast float %1430, %1414
  %1455 = fmul fast float %1430, %1413
  %1456 = fmul fast float %1430, %1412
  %1457 = fmul fast float %1430, %1411
  br label %1458

; <label>:1458                                    ; preds = %1427, %684
  %1459 = phi float [ %720, %684 ], [ %1439, %1427 ]
  %1460 = phi float [ %718, %684 ], [ %1438, %1427 ]
  %1461 = phi float [ %716, %684 ], [ %1437, %1427 ]
  %1462 = phi float [ %714, %684 ], [ %1436, %1427 ]
  %1463 = phi float [ %712, %684 ], [ %1435, %1427 ]
  %1464 = phi float [ %710, %684 ], [ %1434, %1427 ]
  %1465 = phi float [ %708, %684 ], [ %1433, %1427 ]
  %1466 = phi float [ %706, %684 ], [ %1432, %1427 ]
  %1467 = phi float [ %704, %684 ], [ %1431, %1427 ]
  %1468 = phi float [ %738, %684 ], [ %1448, %1427 ]
  %1469 = phi float [ %736, %684 ], [ %1447, %1427 ]
  %1470 = phi float [ %734, %684 ], [ %1446, %1427 ]
  %1471 = phi float [ %732, %684 ], [ %1445, %1427 ]
  %1472 = phi float [ %730, %684 ], [ %1444, %1427 ]
  %1473 = phi float [ %728, %684 ], [ %1443, %1427 ]
  %1474 = phi float [ %726, %684 ], [ %1442, %1427 ]
  %1475 = phi float [ %724, %684 ], [ %1441, %1427 ]
  %1476 = phi float [ %722, %684 ], [ %1440, %1427 ]
  %1477 = phi float [ %756, %684 ], [ %1457, %1427 ]
  %1478 = phi float [ %754, %684 ], [ %1456, %1427 ]
  %1479 = phi float [ %752, %684 ], [ %1455, %1427 ]
  %1480 = phi float [ %750, %684 ], [ %1454, %1427 ]
  %1481 = phi float [ %748, %684 ], [ %1453, %1427 ]
  %1482 = phi float [ %746, %684 ], [ %1452, %1427 ]
  %1483 = phi float [ %744, %684 ], [ %1451, %1427 ]
  %1484 = phi float [ %742, %684 ], [ %1450, %1427 ]
  %1485 = phi float [ %740, %684 ], [ %1449, %1427 ]
  %1486 = phi float [ %758, %684 ], [ %1420, %1427 ]
  %1487 = phi i32 [ 1, %684 ], [ %1156, %1427 ]
  %1488 = phi i32 [ -1, %684 ], [ %682, %1427 ]
  %1489 = icmp eq i32 %1487, 0
  store float %1467, float* %125, align 4
  store float %1466, float* %126, align 4
  store float %1465, float* %127, align 4
  store float %1464, float* %128, align 4
  store float %1463, float* %129, align 4
  store float %1462, float* %130, align 4
  store float %1461, float* %131, align 4
  store float %1460, float* %132, align 4
  store float %1459, float* %133, align 4
  store float %1476, float* %134, align 4
  store float %1475, float* %135, align 4
  store float %1474, float* %136, align 4
  store float %1473, float* %137, align 4
  store float %1472, float* %138, align 4
  store float %1471, float* %139, align 4
  store float %1470, float* %140, align 4
  store float %1469, float* %141, align 4
  store float %1468, float* %142, align 4
  store float %1485, float* %143, align 4
  store float %1484, float* %144, align 4
  store float %1483, float* %145, align 4
  store float %1482, float* %146, align 4
  store float %1481, float* %147, align 4
  store float %1480, float* %148, align 4
  store float %1479, float* %149, align 4
  store float %1478, float* %150, align 4
  store float %1477, float* %151, align 4
  %1490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1491 = extractvalue %dx.types.CBufRet.f32 %1490, 0
  %1492 = extractvalue %dx.types.CBufRet.f32 %1490, 1
  %1493 = extractvalue %dx.types.CBufRet.f32 %1490, 2
  %1494 = fsub fast float %348, %1491
  %1495 = fsub fast float %349, %1492
  %1496 = fsub fast float %350, %1493
  %1497 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1498 = extractvalue %dx.types.CBufRet.i32 %1497, 2
  %1499 = icmp eq i32 %1498, 0
  br i1 %1499, label %1850, label %1500

; <label>:1500                                    ; preds = %1458
  br label %1501

; <label>:1501                                    ; preds = %1816, %1500
  %1502 = phi float [ %1817, %1816 ], [ 0.000000e+00, %1500 ]
  %1503 = phi float [ %1818, %1816 ], [ 0.000000e+00, %1500 ]
  %1504 = phi float [ %1819, %1816 ], [ 0.000000e+00, %1500 ]
  %1505 = phi float [ %1820, %1816 ], [ 0.000000e+00, %1500 ]
  %1506 = phi float [ %1821, %1816 ], [ 0.000000e+00, %1500 ]
  %1507 = phi float [ %1822, %1816 ], [ 0.000000e+00, %1500 ]
  %1508 = phi float [ %1823, %1816 ], [ 0.000000e+00, %1500 ]
  %1509 = phi float [ %1824, %1816 ], [ 0.000000e+00, %1500 ]
  %1510 = phi float [ %1825, %1816 ], [ 0.000000e+00, %1500 ]
  %1511 = phi float [ %1826, %1816 ], [ 0.000000e+00, %1500 ]
  %1512 = phi float [ %1827, %1816 ], [ 0.000000e+00, %1500 ]
  %1513 = phi float [ %1828, %1816 ], [ 0.000000e+00, %1500 ]
  %1514 = phi float [ %1829, %1816 ], [ 0.000000e+00, %1500 ]
  %1515 = phi float [ %1830, %1816 ], [ 0.000000e+00, %1500 ]
  %1516 = phi float [ %1831, %1816 ], [ 0.000000e+00, %1500 ]
  %1517 = phi float [ %1832, %1816 ], [ 0.000000e+00, %1500 ]
  %1518 = phi float [ %1833, %1816 ], [ 0.000000e+00, %1500 ]
  %1519 = phi float [ %1834, %1816 ], [ 0.000000e+00, %1500 ]
  %1520 = phi float [ %1835, %1816 ], [ 0.000000e+00, %1500 ]
  %1521 = phi float [ %1836, %1816 ], [ 0.000000e+00, %1500 ]
  %1522 = phi float [ %1837, %1816 ], [ 0.000000e+00, %1500 ]
  %1523 = phi float [ %1838, %1816 ], [ 0.000000e+00, %1500 ]
  %1524 = phi float [ %1839, %1816 ], [ 0.000000e+00, %1500 ]
  %1525 = phi float [ %1840, %1816 ], [ 0.000000e+00, %1500 ]
  %1526 = phi float [ %1841, %1816 ], [ 0.000000e+00, %1500 ]
  %1527 = phi float [ %1842, %1816 ], [ 0.000000e+00, %1500 ]
  %1528 = phi float [ %1843, %1816 ], [ 0.000000e+00, %1500 ]
  %1529 = phi float [ %1844, %1816 ], [ 1.000000e+00, %1500 ]
  %1530 = phi i32 [ %1845, %1816 ], [ 0, %1500 ]
  %1531 = shl i32 %1530, 2
  %1532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1531, i32 undef)  ; BufferLoad(srv,index,wot)
  %1533 = extractvalue %dx.types.ResRet.i32 %1532, 0
  %1534 = icmp ne i32 %1533, 0
  %1535 = fcmp fast ogt float %1529, 0.000000e+00
  %1536 = and i1 %1535, %1534
  br i1 %1536, label %1537, label %1816

; <label>:1537                                    ; preds = %1501
  br label %1538

; <label>:1538                                    ; preds = %1783, %1537
  %1539 = phi float [ %1784, %1783 ], [ %1502, %1537 ]
  %1540 = phi float [ %1785, %1783 ], [ %1503, %1537 ]
  %1541 = phi float [ %1786, %1783 ], [ %1504, %1537 ]
  %1542 = phi float [ %1787, %1783 ], [ %1505, %1537 ]
  %1543 = phi float [ %1788, %1783 ], [ %1506, %1537 ]
  %1544 = phi float [ %1789, %1783 ], [ %1507, %1537 ]
  %1545 = phi float [ %1790, %1783 ], [ %1508, %1537 ]
  %1546 = phi float [ %1791, %1783 ], [ %1509, %1537 ]
  %1547 = phi float [ %1792, %1783 ], [ %1510, %1537 ]
  %1548 = phi float [ %1793, %1783 ], [ %1511, %1537 ]
  %1549 = phi float [ %1794, %1783 ], [ %1512, %1537 ]
  %1550 = phi float [ %1795, %1783 ], [ %1513, %1537 ]
  %1551 = phi float [ %1796, %1783 ], [ %1514, %1537 ]
  %1552 = phi float [ %1797, %1783 ], [ %1515, %1537 ]
  %1553 = phi float [ %1798, %1783 ], [ %1516, %1537 ]
  %1554 = phi float [ %1799, %1783 ], [ %1517, %1537 ]
  %1555 = phi float [ %1800, %1783 ], [ %1518, %1537 ]
  %1556 = phi float [ %1801, %1783 ], [ %1519, %1537 ]
  %1557 = phi float [ %1802, %1783 ], [ %1520, %1537 ]
  %1558 = phi float [ %1803, %1783 ], [ %1521, %1537 ]
  %1559 = phi float [ %1804, %1783 ], [ %1522, %1537 ]
  %1560 = phi float [ %1805, %1783 ], [ %1523, %1537 ]
  %1561 = phi float [ %1806, %1783 ], [ %1524, %1537 ]
  %1562 = phi float [ %1807, %1783 ], [ %1525, %1537 ]
  %1563 = phi float [ %1808, %1783 ], [ %1526, %1537 ]
  %1564 = phi float [ %1809, %1783 ], [ %1527, %1537 ]
  %1565 = phi float [ %1810, %1783 ], [ %1528, %1537 ]
  %1566 = phi float [ %1811, %1783 ], [ %1529, %1537 ]
  %1567 = phi i32 [ %1571, %1783 ], [ %1533, %1537 ]
  %1568 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1567)  ; FirstbitLo(value)
  %1569 = and i32 %1568, 31
  %1570 = shl i32 1, %1569
  %1571 = xor i32 %1570, %1567
  %1572 = shl i32 %1530, 5
  %1573 = add i32 %1568, %1572
  %1574 = mul i32 %1573, 72
  %1575 = add i32 %1574, 12
  %1576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1575, i32 undef)  ; BufferLoad(srv,index,wot)
  %1577 = extractvalue %dx.types.ResRet.i32 %1576, 0
  %1578 = add i32 %1574, 16
  %1579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1578, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.f32 %1579, 0
  %1581 = extractvalue %dx.types.ResRet.f32 %1579, 1
  %1582 = extractvalue %dx.types.ResRet.f32 %1579, 2
  %1583 = mul i32 %1573, 60
  %1584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1583, i32 undef)  ; BufferLoad(srv,index,wot)
  %1585 = extractvalue %dx.types.ResRet.f32 %1584, 0
  %1586 = extractvalue %dx.types.ResRet.f32 %1584, 1
  %1587 = extractvalue %dx.types.ResRet.f32 %1584, 2
  %1588 = add i32 %1583, 12
  %1589 = add i32 %1583, 48
  %1590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1589, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.f32 %1590, 0
  %1592 = extractvalue %dx.types.ResRet.f32 %1590, 1
  %1593 = extractvalue %dx.types.ResRet.f32 %1590, 2
  %1594 = and i32 %1577, 32767
  %1595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1596 = extractvalue %dx.types.CBufRet.f32 %1595, 0
  %1597 = extractvalue %dx.types.CBufRet.f32 %1595, 1
  %1598 = extractvalue %dx.types.CBufRet.f32 %1595, 2
  %1599 = fsub fast float %1585, %1596
  %1600 = fsub fast float %1586, %1597
  %1601 = fsub fast float %1587, %1598
  %1602 = fsub fast float %1494, %1599
  %1603 = fsub fast float %1495, %1600
  %1604 = fsub fast float %1496, %1601
  %1605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1588, i32 undef)  ; BufferLoad(srv,index,wot)
  %1606 = extractvalue %dx.types.ResRet.f32 %1605, 0
  %1607 = extractvalue %dx.types.ResRet.f32 %1605, 1
  %1608 = extractvalue %dx.types.ResRet.f32 %1605, 2
  %1609 = call float @dx.op.dot3.f32(i32 55, float %1602, float %1603, float %1604, float %1606, float %1607, float %1608)  ; Dot3(ax,ay,az,bx,by,bz)
  %1610 = add i32 %1583, 24
  %1611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1610, i32 undef)  ; BufferLoad(srv,index,wot)
  %1612 = extractvalue %dx.types.ResRet.f32 %1611, 0
  %1613 = extractvalue %dx.types.ResRet.f32 %1611, 1
  %1614 = extractvalue %dx.types.ResRet.f32 %1611, 2
  %1615 = call float @dx.op.dot3.f32(i32 55, float %1602, float %1603, float %1604, float %1612, float %1613, float %1614)  ; Dot3(ax,ay,az,bx,by,bz)
  %1616 = add i32 %1583, 36
  %1617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1616, i32 undef)  ; BufferLoad(srv,index,wot)
  %1618 = extractvalue %dx.types.ResRet.f32 %1617, 0
  %1619 = extractvalue %dx.types.ResRet.f32 %1617, 1
  %1620 = extractvalue %dx.types.ResRet.f32 %1617, 2
  %1621 = call float @dx.op.dot3.f32(i32 55, float %1602, float %1603, float %1604, float %1618, float %1619, float %1620)  ; Dot3(ax,ay,az,bx,by,bz)
  %1622 = call float @dx.op.unary.f32(i32 6, float %1609)  ; FAbs(value)
  %1623 = call float @dx.op.unary.f32(i32 6, float %1615)  ; FAbs(value)
  %1624 = call float @dx.op.unary.f32(i32 6, float %1621)  ; FAbs(value)
  %1625 = fsub fast float %1591, %1622
  %1626 = fsub fast float %1592, %1623
  %1627 = fsub fast float %1593, %1624
  %1628 = fmul fast float %1625, %1580
  %1629 = fmul fast float %1626, %1581
  %1630 = fmul fast float %1627, %1582
  %1631 = call float @dx.op.binary.f32(i32 36, float %1629, float %1630)  ; FMin(a,b)
  %1632 = call float @dx.op.binary.f32(i32 36, float %1628, float %1631)  ; FMin(a,b)
  %1633 = call float @dx.op.unary.f32(i32 7, float %1632)  ; Saturate(value)
  %1634 = call float @dx.op.binary.f32(i32 36, float %1566, float %1633)  ; FMin(a,b)
  %1635 = fcmp fast ogt float %1634, 0.000000e+00
  br i1 %1635, label %1636, label %1783, !dx.controlflow.hints !80

; <label>:1636                                    ; preds = %1538
  %1637 = lshr i32 %1577, 16
  %1638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1637)  ; LegacyF16ToF32(value)
  %1639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 141)  ; CBufferLoadLegacy(handle,regIndex)
  %1640 = extractvalue %dx.types.CBufRet.f32 %1639, 3
  %1641 = bitcast float %1640 to i32
  %1642 = add i32 %1641, %1594
  %1643 = mul i32 %1642, 36
  %1644 = shl i32 %1641, 1
  %1645 = add i32 %1644, %1594
  %1646 = mul i32 %1645, 36
  %1647 = mul i32 %1641, 3
  %1648 = add i32 %1647, %1594
  %1649 = mul i32 %1648, 36
  %1650 = fmul fast float %1638, %1634
  %1651 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1643, i32 undef)  ; BufferLoad(srv,index,wot)
  %1652 = extractvalue %dx.types.ResRet.f32 %1651, 0
  %1653 = fmul fast float %1652, %1650
  %1654 = fadd fast float %1653, %1565
  %1655 = add i32 %1643, 4
  %1656 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1655, i32 undef)  ; BufferLoad(srv,index,wot)
  %1657 = extractvalue %dx.types.ResRet.f32 %1656, 0
  %1658 = fmul fast float %1657, %1650
  %1659 = fadd fast float %1658, %1564
  %1660 = add i32 %1643, 8
  %1661 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1660, i32 undef)  ; BufferLoad(srv,index,wot)
  %1662 = extractvalue %dx.types.ResRet.f32 %1661, 0
  %1663 = fmul fast float %1662, %1650
  %1664 = fadd fast float %1663, %1563
  %1665 = add i32 %1643, 12
  %1666 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1665, i32 undef)  ; BufferLoad(srv,index,wot)
  %1667 = extractvalue %dx.types.ResRet.f32 %1666, 0
  %1668 = fmul fast float %1667, %1650
  %1669 = fadd fast float %1668, %1562
  %1670 = add i32 %1643, 16
  %1671 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1670, i32 undef)  ; BufferLoad(srv,index,wot)
  %1672 = extractvalue %dx.types.ResRet.f32 %1671, 0
  %1673 = fmul fast float %1672, %1650
  %1674 = fadd fast float %1673, %1561
  %1675 = add i32 %1643, 20
  %1676 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1675, i32 undef)  ; BufferLoad(srv,index,wot)
  %1677 = extractvalue %dx.types.ResRet.f32 %1676, 0
  %1678 = fmul fast float %1677, %1650
  %1679 = fadd fast float %1678, %1560
  %1680 = add i32 %1643, 24
  %1681 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1680, i32 undef)  ; BufferLoad(srv,index,wot)
  %1682 = extractvalue %dx.types.ResRet.f32 %1681, 0
  %1683 = fmul fast float %1682, %1650
  %1684 = fadd fast float %1683, %1559
  %1685 = add i32 %1643, 28
  %1686 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1685, i32 undef)  ; BufferLoad(srv,index,wot)
  %1687 = extractvalue %dx.types.ResRet.f32 %1686, 0
  %1688 = fmul fast float %1687, %1650
  %1689 = fadd fast float %1688, %1558
  %1690 = add i32 %1643, 32
  %1691 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1690, i32 undef)  ; BufferLoad(srv,index,wot)
  %1692 = extractvalue %dx.types.ResRet.f32 %1691, 0
  %1693 = fmul fast float %1692, %1650
  %1694 = fadd fast float %1693, %1557
  %1695 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1646, i32 undef)  ; BufferLoad(srv,index,wot)
  %1696 = extractvalue %dx.types.ResRet.f32 %1695, 0
  %1697 = fmul fast float %1696, %1650
  %1698 = fadd fast float %1697, %1547
  %1699 = add i32 %1646, 4
  %1700 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1699, i32 undef)  ; BufferLoad(srv,index,wot)
  %1701 = extractvalue %dx.types.ResRet.f32 %1700, 0
  %1702 = fmul fast float %1701, %1650
  %1703 = fadd fast float %1702, %1546
  %1704 = add i32 %1646, 8
  %1705 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1704, i32 undef)  ; BufferLoad(srv,index,wot)
  %1706 = extractvalue %dx.types.ResRet.f32 %1705, 0
  %1707 = fmul fast float %1706, %1650
  %1708 = fadd fast float %1707, %1545
  %1709 = add i32 %1646, 12
  %1710 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1709, i32 undef)  ; BufferLoad(srv,index,wot)
  %1711 = extractvalue %dx.types.ResRet.f32 %1710, 0
  %1712 = fmul fast float %1711, %1650
  %1713 = fadd fast float %1712, %1544
  %1714 = add i32 %1646, 16
  %1715 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1714, i32 undef)  ; BufferLoad(srv,index,wot)
  %1716 = extractvalue %dx.types.ResRet.f32 %1715, 0
  %1717 = fmul fast float %1716, %1650
  %1718 = fadd fast float %1717, %1543
  %1719 = add i32 %1646, 20
  %1720 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1719, i32 undef)  ; BufferLoad(srv,index,wot)
  %1721 = extractvalue %dx.types.ResRet.f32 %1720, 0
  %1722 = fmul fast float %1721, %1650
  %1723 = fadd fast float %1722, %1542
  %1724 = add i32 %1646, 24
  %1725 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1724, i32 undef)  ; BufferLoad(srv,index,wot)
  %1726 = extractvalue %dx.types.ResRet.f32 %1725, 0
  %1727 = fmul fast float %1726, %1650
  %1728 = fadd fast float %1727, %1541
  %1729 = add i32 %1646, 28
  %1730 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %1731 = extractvalue %dx.types.ResRet.f32 %1730, 0
  %1732 = fmul fast float %1731, %1650
  %1733 = fadd fast float %1732, %1540
  %1734 = add i32 %1646, 32
  %1735 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1734, i32 undef)  ; BufferLoad(srv,index,wot)
  %1736 = extractvalue %dx.types.ResRet.f32 %1735, 0
  %1737 = fmul fast float %1736, %1650
  %1738 = fadd fast float %1737, %1539
  %1739 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1649, i32 undef)  ; BufferLoad(srv,index,wot)
  %1740 = extractvalue %dx.types.ResRet.f32 %1739, 0
  %1741 = fmul fast float %1740, %1650
  %1742 = fadd fast float %1741, %1556
  %1743 = add i32 %1649, 4
  %1744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1743, i32 undef)  ; BufferLoad(srv,index,wot)
  %1745 = extractvalue %dx.types.ResRet.f32 %1744, 0
  %1746 = fmul fast float %1745, %1650
  %1747 = fadd fast float %1746, %1555
  %1748 = add i32 %1649, 8
  %1749 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.f32 %1749, 0
  %1751 = fmul fast float %1750, %1650
  %1752 = fadd fast float %1751, %1554
  %1753 = add i32 %1649, 12
  %1754 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1755 = extractvalue %dx.types.ResRet.f32 %1754, 0
  %1756 = fmul fast float %1755, %1650
  %1757 = fadd fast float %1756, %1553
  %1758 = add i32 %1649, 16
  %1759 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %1760 = extractvalue %dx.types.ResRet.f32 %1759, 0
  %1761 = fmul fast float %1760, %1650
  %1762 = fadd fast float %1761, %1552
  %1763 = add i32 %1649, 20
  %1764 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1763, i32 undef)  ; BufferLoad(srv,index,wot)
  %1765 = extractvalue %dx.types.ResRet.f32 %1764, 0
  %1766 = fmul fast float %1765, %1650
  %1767 = fadd fast float %1766, %1551
  %1768 = add i32 %1649, 24
  %1769 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1768, i32 undef)  ; BufferLoad(srv,index,wot)
  %1770 = extractvalue %dx.types.ResRet.f32 %1769, 0
  %1771 = fmul fast float %1770, %1650
  %1772 = fadd fast float %1771, %1550
  %1773 = add i32 %1649, 28
  %1774 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1775 = extractvalue %dx.types.ResRet.f32 %1774, 0
  %1776 = fmul fast float %1775, %1650
  %1777 = fadd fast float %1776, %1549
  %1778 = add i32 %1649, 32
  %1779 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1778, i32 undef)  ; BufferLoad(srv,index,wot)
  %1780 = extractvalue %dx.types.ResRet.f32 %1779, 0
  %1781 = fmul fast float %1780, %1650
  %1782 = fadd fast float %1781, %1548
  br label %1783

; <label>:1783                                    ; preds = %1636, %1538
  %1784 = phi float [ %1738, %1636 ], [ %1539, %1538 ]
  %1785 = phi float [ %1733, %1636 ], [ %1540, %1538 ]
  %1786 = phi float [ %1728, %1636 ], [ %1541, %1538 ]
  %1787 = phi float [ %1723, %1636 ], [ %1542, %1538 ]
  %1788 = phi float [ %1718, %1636 ], [ %1543, %1538 ]
  %1789 = phi float [ %1713, %1636 ], [ %1544, %1538 ]
  %1790 = phi float [ %1708, %1636 ], [ %1545, %1538 ]
  %1791 = phi float [ %1703, %1636 ], [ %1546, %1538 ]
  %1792 = phi float [ %1698, %1636 ], [ %1547, %1538 ]
  %1793 = phi float [ %1782, %1636 ], [ %1548, %1538 ]
  %1794 = phi float [ %1777, %1636 ], [ %1549, %1538 ]
  %1795 = phi float [ %1772, %1636 ], [ %1550, %1538 ]
  %1796 = phi float [ %1767, %1636 ], [ %1551, %1538 ]
  %1797 = phi float [ %1762, %1636 ], [ %1552, %1538 ]
  %1798 = phi float [ %1757, %1636 ], [ %1553, %1538 ]
  %1799 = phi float [ %1752, %1636 ], [ %1554, %1538 ]
  %1800 = phi float [ %1747, %1636 ], [ %1555, %1538 ]
  %1801 = phi float [ %1742, %1636 ], [ %1556, %1538 ]
  %1802 = phi float [ %1694, %1636 ], [ %1557, %1538 ]
  %1803 = phi float [ %1689, %1636 ], [ %1558, %1538 ]
  %1804 = phi float [ %1684, %1636 ], [ %1559, %1538 ]
  %1805 = phi float [ %1679, %1636 ], [ %1560, %1538 ]
  %1806 = phi float [ %1674, %1636 ], [ %1561, %1538 ]
  %1807 = phi float [ %1669, %1636 ], [ %1562, %1538 ]
  %1808 = phi float [ %1664, %1636 ], [ %1563, %1538 ]
  %1809 = phi float [ %1659, %1636 ], [ %1564, %1538 ]
  %1810 = phi float [ %1654, %1636 ], [ %1565, %1538 ]
  %1811 = fsub fast float %1566, %1634
  %1812 = icmp ne i32 %1567, %1570
  %1813 = fcmp fast ogt float %1811, 0.000000e+00
  %1814 = and i1 %1812, %1813
  br i1 %1814, label %1538, label %1815

; <label>:1815                                    ; preds = %1783
  br label %1816

; <label>:1816                                    ; preds = %1815, %1501
  %1817 = phi float [ %1502, %1501 ], [ %1784, %1815 ]
  %1818 = phi float [ %1503, %1501 ], [ %1785, %1815 ]
  %1819 = phi float [ %1504, %1501 ], [ %1786, %1815 ]
  %1820 = phi float [ %1505, %1501 ], [ %1787, %1815 ]
  %1821 = phi float [ %1506, %1501 ], [ %1788, %1815 ]
  %1822 = phi float [ %1507, %1501 ], [ %1789, %1815 ]
  %1823 = phi float [ %1508, %1501 ], [ %1790, %1815 ]
  %1824 = phi float [ %1509, %1501 ], [ %1791, %1815 ]
  %1825 = phi float [ %1510, %1501 ], [ %1792, %1815 ]
  %1826 = phi float [ %1511, %1501 ], [ %1793, %1815 ]
  %1827 = phi float [ %1512, %1501 ], [ %1794, %1815 ]
  %1828 = phi float [ %1513, %1501 ], [ %1795, %1815 ]
  %1829 = phi float [ %1514, %1501 ], [ %1796, %1815 ]
  %1830 = phi float [ %1515, %1501 ], [ %1797, %1815 ]
  %1831 = phi float [ %1516, %1501 ], [ %1798, %1815 ]
  %1832 = phi float [ %1517, %1501 ], [ %1799, %1815 ]
  %1833 = phi float [ %1518, %1501 ], [ %1800, %1815 ]
  %1834 = phi float [ %1519, %1501 ], [ %1801, %1815 ]
  %1835 = phi float [ %1520, %1501 ], [ %1802, %1815 ]
  %1836 = phi float [ %1521, %1501 ], [ %1803, %1815 ]
  %1837 = phi float [ %1522, %1501 ], [ %1804, %1815 ]
  %1838 = phi float [ %1523, %1501 ], [ %1805, %1815 ]
  %1839 = phi float [ %1524, %1501 ], [ %1806, %1815 ]
  %1840 = phi float [ %1525, %1501 ], [ %1807, %1815 ]
  %1841 = phi float [ %1526, %1501 ], [ %1808, %1815 ]
  %1842 = phi float [ %1527, %1501 ], [ %1809, %1815 ]
  %1843 = phi float [ %1528, %1501 ], [ %1810, %1815 ]
  %1844 = phi float [ %1529, %1501 ], [ %1811, %1815 ]
  %1845 = add i32 %1530, 1
  %1846 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1847 = extractvalue %dx.types.CBufRet.i32 %1846, 2
  %1848 = icmp ult i32 %1845, %1847
  br i1 %1848, label %1501, label %1849

; <label>:1849                                    ; preds = %1816
  br label %1850

; <label>:1850                                    ; preds = %1849, %1458
  %1851 = phi float [ 0.000000e+00, %1458 ], [ %1817, %1849 ]
  %1852 = phi float [ 0.000000e+00, %1458 ], [ %1818, %1849 ]
  %1853 = phi float [ 0.000000e+00, %1458 ], [ %1819, %1849 ]
  %1854 = phi float [ 0.000000e+00, %1458 ], [ %1820, %1849 ]
  %1855 = phi float [ 0.000000e+00, %1458 ], [ %1821, %1849 ]
  %1856 = phi float [ 0.000000e+00, %1458 ], [ %1822, %1849 ]
  %1857 = phi float [ 0.000000e+00, %1458 ], [ %1823, %1849 ]
  %1858 = phi float [ 0.000000e+00, %1458 ], [ %1824, %1849 ]
  %1859 = phi float [ 0.000000e+00, %1458 ], [ %1825, %1849 ]
  %1860 = phi float [ 0.000000e+00, %1458 ], [ %1826, %1849 ]
  %1861 = phi float [ 0.000000e+00, %1458 ], [ %1827, %1849 ]
  %1862 = phi float [ 0.000000e+00, %1458 ], [ %1828, %1849 ]
  %1863 = phi float [ 0.000000e+00, %1458 ], [ %1829, %1849 ]
  %1864 = phi float [ 0.000000e+00, %1458 ], [ %1830, %1849 ]
  %1865 = phi float [ 0.000000e+00, %1458 ], [ %1831, %1849 ]
  %1866 = phi float [ 0.000000e+00, %1458 ], [ %1832, %1849 ]
  %1867 = phi float [ 0.000000e+00, %1458 ], [ %1833, %1849 ]
  %1868 = phi float [ 0.000000e+00, %1458 ], [ %1834, %1849 ]
  %1869 = phi float [ 0.000000e+00, %1458 ], [ %1835, %1849 ]
  %1870 = phi float [ 0.000000e+00, %1458 ], [ %1836, %1849 ]
  %1871 = phi float [ 0.000000e+00, %1458 ], [ %1837, %1849 ]
  %1872 = phi float [ 0.000000e+00, %1458 ], [ %1838, %1849 ]
  %1873 = phi float [ 0.000000e+00, %1458 ], [ %1839, %1849 ]
  %1874 = phi float [ 0.000000e+00, %1458 ], [ %1840, %1849 ]
  %1875 = phi float [ 0.000000e+00, %1458 ], [ %1841, %1849 ]
  %1876 = phi float [ 0.000000e+00, %1458 ], [ %1842, %1849 ]
  %1877 = phi float [ 0.000000e+00, %1458 ], [ %1843, %1849 ]
  %1878 = phi float [ 1.000000e+00, %1458 ], [ %1844, %1849 ]
  %1879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1880 = extractvalue %dx.types.CBufRet.f32 %1879, 3
  %1881 = fdiv fast float 1.000000e+00, %1880
  %1882 = fmul fast float %1881, %1877
  %1883 = fmul fast float %1881, %1876
  %1884 = fmul fast float %1881, %1875
  %1885 = fmul fast float %1881, %1874
  %1886 = fmul fast float %1881, %1873
  %1887 = fmul fast float %1881, %1872
  %1888 = fmul fast float %1881, %1871
  %1889 = fmul fast float %1881, %1870
  %1890 = fmul fast float %1881, %1869
  %1891 = fmul fast float %1881, %1859
  %1892 = fmul fast float %1881, %1858
  %1893 = fmul fast float %1881, %1857
  %1894 = fmul fast float %1881, %1856
  %1895 = fmul fast float %1881, %1855
  %1896 = fmul fast float %1881, %1854
  %1897 = fmul fast float %1881, %1853
  %1898 = fmul fast float %1881, %1852
  %1899 = fmul fast float %1881, %1851
  %1900 = fmul fast float %1881, %1868
  %1901 = fmul fast float %1881, %1867
  %1902 = fmul fast float %1881, %1866
  %1903 = fmul fast float %1881, %1865
  %1904 = fmul fast float %1881, %1864
  %1905 = fmul fast float %1881, %1863
  %1906 = fmul fast float %1881, %1862
  %1907 = fmul fast float %1881, %1861
  %1908 = fmul fast float %1881, %1860
  br i1 %1489, label %1909, label %1941, !dx.controlflow.hints !81

; <label>:1909                                    ; preds = %1850
  %1910 = fcmp fast olt float %1878, 1.000000e+00
  br i1 %1910, label %1911, label %1996, !dx.controlflow.hints !82

; <label>:1911                                    ; preds = %1909
  %1912 = fsub fast float 1.000000e+00, %1878
  %1913 = fdiv fast float 1.000000e+00, %1912
  %1914 = fmul fast float %1913, %1882
  %1915 = fmul fast float %1913, %1883
  %1916 = fmul fast float %1913, %1884
  %1917 = fmul fast float %1913, %1885
  %1918 = fmul fast float %1913, %1886
  %1919 = fmul fast float %1913, %1887
  %1920 = fmul fast float %1913, %1888
  %1921 = fmul fast float %1913, %1889
  %1922 = fmul fast float %1913, %1890
  store float %1914, float* %125, align 4
  store float %1915, float* %126, align 4
  store float %1916, float* %127, align 4
  store float %1917, float* %128, align 4
  store float %1918, float* %129, align 4
  store float %1919, float* %130, align 4
  store float %1920, float* %131, align 4
  store float %1921, float* %132, align 4
  store float %1922, float* %133, align 4
  %1923 = fmul fast float %1913, %1891
  %1924 = fmul fast float %1913, %1892
  %1925 = fmul fast float %1913, %1893
  %1926 = fmul fast float %1913, %1894
  %1927 = fmul fast float %1913, %1895
  %1928 = fmul fast float %1913, %1896
  %1929 = fmul fast float %1913, %1897
  %1930 = fmul fast float %1913, %1898
  %1931 = fmul fast float %1913, %1899
  store float %1923, float* %134, align 4
  store float %1924, float* %135, align 4
  store float %1925, float* %136, align 4
  store float %1926, float* %137, align 4
  store float %1927, float* %138, align 4
  store float %1928, float* %139, align 4
  store float %1929, float* %140, align 4
  store float %1930, float* %141, align 4
  store float %1931, float* %142, align 4
  %1932 = fmul fast float %1913, %1900
  %1933 = fmul fast float %1913, %1901
  %1934 = fmul fast float %1913, %1902
  %1935 = fmul fast float %1913, %1903
  %1936 = fmul fast float %1913, %1904
  %1937 = fmul fast float %1913, %1905
  %1938 = fmul fast float %1913, %1906
  %1939 = fmul fast float %1913, %1907
  %1940 = fmul fast float %1913, %1908
  store float %1932, float* %143, align 4
  store float %1933, float* %144, align 4
  store float %1934, float* %145, align 4
  store float %1935, float* %146, align 4
  store float %1936, float* %147, align 4
  store float %1937, float* %148, align 4
  store float %1938, float* %149, align 4
  store float %1939, float* %150, align 4
  store float %1940, float* %151, align 4
  br label %1996

; <label>:1941                                    ; preds = %1850
  %1942 = fmul fast float %1467, %1878
  %1943 = fadd fast float %1942, %1882
  %1944 = fmul fast float %1466, %1878
  %1945 = fadd fast float %1944, %1883
  %1946 = fmul fast float %1465, %1878
  %1947 = fadd fast float %1946, %1884
  %1948 = fmul fast float %1464, %1878
  %1949 = fadd fast float %1948, %1885
  %1950 = fmul fast float %1463, %1878
  %1951 = fadd fast float %1950, %1886
  %1952 = fmul fast float %1462, %1878
  %1953 = fadd fast float %1952, %1887
  %1954 = fmul fast float %1461, %1878
  %1955 = fadd fast float %1954, %1888
  %1956 = fmul fast float %1460, %1878
  %1957 = fadd fast float %1956, %1889
  %1958 = fmul fast float %1459, %1878
  %1959 = fadd fast float %1958, %1890
  store float %1943, float* %125, align 4
  store float %1945, float* %126, align 4
  store float %1947, float* %127, align 4
  store float %1949, float* %128, align 4
  store float %1951, float* %129, align 4
  store float %1953, float* %130, align 4
  store float %1955, float* %131, align 4
  store float %1957, float* %132, align 4
  store float %1959, float* %133, align 4
  %1960 = fmul fast float %1476, %1878
  %1961 = fadd fast float %1960, %1891
  %1962 = fmul fast float %1475, %1878
  %1963 = fadd fast float %1962, %1892
  %1964 = fmul fast float %1474, %1878
  %1965 = fadd fast float %1964, %1893
  %1966 = fmul fast float %1473, %1878
  %1967 = fadd fast float %1966, %1894
  %1968 = fmul fast float %1472, %1878
  %1969 = fadd fast float %1968, %1895
  %1970 = fmul fast float %1471, %1878
  %1971 = fadd fast float %1970, %1896
  %1972 = fmul fast float %1470, %1878
  %1973 = fadd fast float %1972, %1897
  %1974 = fmul fast float %1469, %1878
  %1975 = fadd fast float %1974, %1898
  %1976 = fmul fast float %1468, %1878
  %1977 = fadd fast float %1976, %1899
  store float %1961, float* %134, align 4
  store float %1963, float* %135, align 4
  store float %1965, float* %136, align 4
  store float %1967, float* %137, align 4
  store float %1969, float* %138, align 4
  store float %1971, float* %139, align 4
  store float %1973, float* %140, align 4
  store float %1975, float* %141, align 4
  store float %1977, float* %142, align 4
  %1978 = fmul fast float %1485, %1878
  %1979 = fadd fast float %1978, %1900
  %1980 = fmul fast float %1484, %1878
  %1981 = fadd fast float %1980, %1901
  %1982 = fmul fast float %1483, %1878
  %1983 = fadd fast float %1982, %1902
  %1984 = fmul fast float %1482, %1878
  %1985 = fadd fast float %1984, %1903
  %1986 = fmul fast float %1481, %1878
  %1987 = fadd fast float %1986, %1904
  %1988 = fmul fast float %1480, %1878
  %1989 = fadd fast float %1988, %1905
  %1990 = fmul fast float %1479, %1878
  %1991 = fadd fast float %1990, %1906
  %1992 = fmul fast float %1478, %1878
  %1993 = fadd fast float %1992, %1907
  %1994 = fmul fast float %1477, %1878
  %1995 = fadd fast float %1994, %1908
  store float %1979, float* %143, align 4
  store float %1981, float* %144, align 4
  store float %1983, float* %145, align 4
  store float %1985, float* %146, align 4
  store float %1987, float* %147, align 4
  store float %1989, float* %148, align 4
  store float %1991, float* %149, align 4
  store float %1993, float* %150, align 4
  store float %1995, float* %151, align 4
  br label %1996

; <label>:1996                                    ; preds = %1941, %1911, %1909
  %1997 = phi float [ %1995, %1941 ], [ %1940, %1911 ], [ %1477, %1909 ]
  %1998 = phi float [ %1993, %1941 ], [ %1939, %1911 ], [ %1478, %1909 ]
  %1999 = phi float [ %1991, %1941 ], [ %1938, %1911 ], [ %1479, %1909 ]
  %2000 = phi float [ %1989, %1941 ], [ %1937, %1911 ], [ %1480, %1909 ]
  %2001 = phi float [ %1987, %1941 ], [ %1936, %1911 ], [ %1481, %1909 ]
  %2002 = phi float [ %1985, %1941 ], [ %1935, %1911 ], [ %1482, %1909 ]
  %2003 = phi float [ %1983, %1941 ], [ %1934, %1911 ], [ %1483, %1909 ]
  %2004 = phi float [ %1981, %1941 ], [ %1933, %1911 ], [ %1484, %1909 ]
  %2005 = phi float [ %1979, %1941 ], [ %1932, %1911 ], [ %1485, %1909 ]
  %2006 = phi float [ %1977, %1941 ], [ %1931, %1911 ], [ %1468, %1909 ]
  %2007 = phi float [ %1975, %1941 ], [ %1930, %1911 ], [ %1469, %1909 ]
  %2008 = phi float [ %1973, %1941 ], [ %1929, %1911 ], [ %1470, %1909 ]
  %2009 = phi float [ %1971, %1941 ], [ %1928, %1911 ], [ %1471, %1909 ]
  %2010 = phi float [ %1969, %1941 ], [ %1927, %1911 ], [ %1472, %1909 ]
  %2011 = phi float [ %1967, %1941 ], [ %1926, %1911 ], [ %1473, %1909 ]
  %2012 = phi float [ %1965, %1941 ], [ %1925, %1911 ], [ %1474, %1909 ]
  %2013 = phi float [ %1963, %1941 ], [ %1924, %1911 ], [ %1475, %1909 ]
  %2014 = phi float [ %1961, %1941 ], [ %1923, %1911 ], [ %1476, %1909 ]
  %2015 = phi float [ %1959, %1941 ], [ %1922, %1911 ], [ %1459, %1909 ]
  %2016 = phi float [ %1957, %1941 ], [ %1921, %1911 ], [ %1460, %1909 ]
  %2017 = phi float [ %1955, %1941 ], [ %1920, %1911 ], [ %1461, %1909 ]
  %2018 = phi float [ %1953, %1941 ], [ %1919, %1911 ], [ %1462, %1909 ]
  %2019 = phi float [ %1951, %1941 ], [ %1918, %1911 ], [ %1463, %1909 ]
  %2020 = phi float [ %1949, %1941 ], [ %1917, %1911 ], [ %1464, %1909 ]
  %2021 = phi float [ %1947, %1941 ], [ %1916, %1911 ], [ %1465, %1909 ]
  %2022 = phi float [ %1945, %1941 ], [ %1915, %1911 ], [ %1466, %1909 ]
  %2023 = phi float [ %1943, %1941 ], [ %1914, %1911 ], [ %1467, %1909 ]
  %2024 = phi i32 [ 1, %1941 ], [ 1, %1911 ], [ 0, %1909 ]
  %2025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %2026 = extractvalue %dx.types.CBufRet.f32 %2025, 3
  %2027 = fcmp fast ogt float %2026, 0.000000e+00
  %2028 = and i1 %164, %2027
  br i1 %2028, label %2029, label %2213, !dx.controlflow.hints !83

; <label>:2029                                    ; preds = %1996
  %2030 = icmp ne i32 %2024, 0
  %2031 = add i32 %152, %78
  %2032 = call i32 @dx.op.binary.i32(i32 40, i32 %2031, i32 49151)  ; UMin(a,b)
  %2033 = mul i32 %2032, 12
  %2034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2033, i32 0)  ; BufferLoad(srv,index,wot)
  %2035 = extractvalue %dx.types.ResRet.i32 %2034, 0
  %2036 = extractvalue %dx.types.ResRet.i32 %2034, 1
  %2037 = and i32 %2035, 65535
  %2038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2037)  ; LegacyF16ToF32(value)
  %2039 = lshr i32 %2035, 16
  %2040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2039)  ; LegacyF16ToF32(value)
  %2041 = and i32 %2036, 65535
  %2042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2041)  ; LegacyF16ToF32(value)
  %2043 = or i32 %2033, 1
  %2044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2043, i32 0)  ; BufferLoad(srv,index,wot)
  %2045 = extractvalue %dx.types.ResRet.i32 %2044, 0
  %2046 = extractvalue %dx.types.ResRet.i32 %2044, 1
  %2047 = and i32 %2045, 65535
  %2048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2047)  ; LegacyF16ToF32(value)
  %2049 = lshr i32 %2045, 16
  %2050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2049)  ; LegacyF16ToF32(value)
  %2051 = and i32 %2046, 65535
  %2052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2051)  ; LegacyF16ToF32(value)
  %2053 = or i32 %2033, 2
  %2054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2053, i32 0)  ; BufferLoad(srv,index,wot)
  %2055 = extractvalue %dx.types.ResRet.i32 %2054, 0
  %2056 = extractvalue %dx.types.ResRet.i32 %2054, 1
  %2057 = and i32 %2055, 65535
  %2058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2057)  ; LegacyF16ToF32(value)
  %2059 = lshr i32 %2055, 16
  %2060 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2059)  ; LegacyF16ToF32(value)
  %2061 = and i32 %2056, 65535
  %2062 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2061)  ; LegacyF16ToF32(value)
  %2063 = or i32 %2033, 3
  %2064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2063, i32 0)  ; BufferLoad(srv,index,wot)
  %2065 = extractvalue %dx.types.ResRet.i32 %2064, 0
  %2066 = extractvalue %dx.types.ResRet.i32 %2064, 1
  %2067 = and i32 %2065, 65535
  %2068 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2067)  ; LegacyF16ToF32(value)
  %2069 = lshr i32 %2065, 16
  %2070 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2069)  ; LegacyF16ToF32(value)
  %2071 = and i32 %2066, 65535
  %2072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2071)  ; LegacyF16ToF32(value)
  %2073 = add nsw i32 %2033, 4
  %2074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2073, i32 0)  ; BufferLoad(srv,index,wot)
  %2075 = extractvalue %dx.types.ResRet.i32 %2074, 0
  %2076 = extractvalue %dx.types.ResRet.i32 %2074, 1
  %2077 = and i32 %2075, 65535
  %2078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2077)  ; LegacyF16ToF32(value)
  %2079 = lshr i32 %2075, 16
  %2080 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2079)  ; LegacyF16ToF32(value)
  %2081 = and i32 %2076, 65535
  %2082 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2081)  ; LegacyF16ToF32(value)
  %2083 = add nsw i32 %2033, 5
  %2084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2083, i32 0)  ; BufferLoad(srv,index,wot)
  %2085 = extractvalue %dx.types.ResRet.i32 %2084, 0
  %2086 = extractvalue %dx.types.ResRet.i32 %2084, 1
  %2087 = and i32 %2085, 65535
  %2088 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2087)  ; LegacyF16ToF32(value)
  %2089 = lshr i32 %2085, 16
  %2090 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2089)  ; LegacyF16ToF32(value)
  %2091 = and i32 %2086, 65535
  %2092 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2091)  ; LegacyF16ToF32(value)
  %2093 = add nsw i32 %2033, 6
  %2094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2093, i32 0)  ; BufferLoad(srv,index,wot)
  %2095 = extractvalue %dx.types.ResRet.i32 %2094, 0
  %2096 = extractvalue %dx.types.ResRet.i32 %2094, 1
  %2097 = and i32 %2095, 65535
  %2098 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2097)  ; LegacyF16ToF32(value)
  %2099 = lshr i32 %2095, 16
  %2100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2099)  ; LegacyF16ToF32(value)
  %2101 = and i32 %2096, 65535
  %2102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2101)  ; LegacyF16ToF32(value)
  %2103 = add nsw i32 %2033, 7
  %2104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2103, i32 0)  ; BufferLoad(srv,index,wot)
  %2105 = extractvalue %dx.types.ResRet.i32 %2104, 0
  %2106 = extractvalue %dx.types.ResRet.i32 %2104, 1
  %2107 = and i32 %2105, 65535
  %2108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2107)  ; LegacyF16ToF32(value)
  %2109 = lshr i32 %2105, 16
  %2110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2109)  ; LegacyF16ToF32(value)
  %2111 = and i32 %2106, 65535
  %2112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2111)  ; LegacyF16ToF32(value)
  %2113 = add nsw i32 %2033, 8
  %2114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2113, i32 0)  ; BufferLoad(srv,index,wot)
  %2115 = extractvalue %dx.types.ResRet.i32 %2114, 0
  %2116 = extractvalue %dx.types.ResRet.i32 %2114, 1
  %2117 = and i32 %2115, 65535
  %2118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2117)  ; LegacyF16ToF32(value)
  %2119 = lshr i32 %2115, 16
  %2120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2119)  ; LegacyF16ToF32(value)
  %2121 = and i32 %2116, 65535
  %2122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2121)  ; LegacyF16ToF32(value)
  %2123 = select i1 %2030, float %2026, float 1.000000e+00
  %2124 = fsub fast float %2038, %2023
  %2125 = fmul fast float %2124, %2123
  %2126 = fadd fast float %2125, %2023
  %2127 = fsub fast float %2048, %2022
  %2128 = fmul fast float %2127, %2123
  %2129 = fadd fast float %2128, %2022
  %2130 = fsub fast float %2058, %2021
  %2131 = fmul fast float %2130, %2123
  %2132 = fadd fast float %2131, %2021
  %2133 = fsub fast float %2068, %2020
  %2134 = fmul fast float %2133, %2123
  %2135 = fadd fast float %2134, %2020
  %2136 = fsub fast float %2078, %2019
  %2137 = fmul fast float %2136, %2123
  %2138 = fadd fast float %2137, %2019
  %2139 = fsub fast float %2088, %2018
  %2140 = fmul fast float %2139, %2123
  %2141 = fadd fast float %2140, %2018
  %2142 = fsub fast float %2098, %2017
  %2143 = fmul fast float %2142, %2123
  %2144 = fadd fast float %2143, %2017
  %2145 = fsub fast float %2108, %2016
  %2146 = fmul fast float %2145, %2123
  %2147 = fadd fast float %2146, %2016
  %2148 = fsub fast float %2118, %2015
  %2149 = fmul fast float %2148, %2123
  %2150 = fadd fast float %2149, %2015
  store float %2126, float* %125, align 4
  store float %2129, float* %126, align 4
  store float %2132, float* %127, align 4
  store float %2135, float* %128, align 4
  store float %2138, float* %129, align 4
  store float %2141, float* %130, align 4
  store float %2144, float* %131, align 4
  store float %2147, float* %132, align 4
  store float %2150, float* %133, align 4
  %2151 = fsub fast float %2040, %2014
  %2152 = fmul fast float %2151, %2123
  %2153 = fadd fast float %2152, %2014
  %2154 = fsub fast float %2050, %2013
  %2155 = fmul fast float %2154, %2123
  %2156 = fadd fast float %2155, %2013
  %2157 = fsub fast float %2060, %2012
  %2158 = fmul fast float %2157, %2123
  %2159 = fadd fast float %2158, %2012
  %2160 = fsub fast float %2070, %2011
  %2161 = fmul fast float %2160, %2123
  %2162 = fadd fast float %2161, %2011
  %2163 = fsub fast float %2080, %2010
  %2164 = fmul fast float %2163, %2123
  %2165 = fadd fast float %2164, %2010
  %2166 = fsub fast float %2090, %2009
  %2167 = fmul fast float %2166, %2123
  %2168 = fadd fast float %2167, %2009
  %2169 = fsub fast float %2100, %2008
  %2170 = fmul fast float %2169, %2123
  %2171 = fadd fast float %2170, %2008
  %2172 = fsub fast float %2110, %2007
  %2173 = fmul fast float %2172, %2123
  %2174 = fadd fast float %2173, %2007
  %2175 = fsub fast float %2120, %2006
  %2176 = fmul fast float %2175, %2123
  %2177 = fadd fast float %2176, %2006
  store float %2153, float* %134, align 4
  store float %2156, float* %135, align 4
  store float %2159, float* %136, align 4
  store float %2162, float* %137, align 4
  store float %2165, float* %138, align 4
  store float %2168, float* %139, align 4
  store float %2171, float* %140, align 4
  store float %2174, float* %141, align 4
  store float %2177, float* %142, align 4
  %2178 = fsub fast float %2042, %2005
  %2179 = fmul fast float %2178, %2123
  %2180 = fadd fast float %2179, %2005
  %2181 = fsub fast float %2052, %2004
  %2182 = fmul fast float %2181, %2123
  %2183 = fadd fast float %2182, %2004
  %2184 = fsub fast float %2062, %2003
  %2185 = fmul fast float %2184, %2123
  %2186 = fadd fast float %2185, %2003
  %2187 = fsub fast float %2072, %2002
  %2188 = fmul fast float %2187, %2123
  %2189 = fadd fast float %2188, %2002
  %2190 = fsub fast float %2082, %2001
  %2191 = fmul fast float %2190, %2123
  %2192 = fadd fast float %2191, %2001
  %2193 = fsub fast float %2092, %2000
  %2194 = fmul fast float %2193, %2123
  %2195 = fadd fast float %2194, %2000
  %2196 = fsub fast float %2102, %1999
  %2197 = fmul fast float %2196, %2123
  %2198 = fadd fast float %2197, %1999
  %2199 = fsub fast float %2112, %1998
  %2200 = fmul fast float %2199, %2123
  %2201 = fadd fast float %2200, %1998
  %2202 = fsub fast float %2122, %1997
  %2203 = fmul fast float %2202, %2123
  %2204 = fadd fast float %2203, %1997
  store float %2180, float* %143, align 4
  store float %2183, float* %144, align 4
  store float %2186, float* %145, align 4
  store float %2189, float* %146, align 4
  store float %2192, float* %147, align 4
  store float %2195, float* %148, align 4
  store float %2198, float* %149, align 4
  store float %2201, float* %150, align 4
  store float %2204, float* %151, align 4
  %2205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2206 = extractvalue %dx.types.ResRet.i32 %2205, 0
  %2207 = lshr i32 %2206, 24
  %2208 = uitofp i32 %2207 to float
  %2209 = fmul fast float %2208, 0x3F70101020000000
  %2210 = fsub fast float %2209, %1486
  %2211 = fmul fast float %2210, %2026
  %2212 = fadd fast float %2211, %1486
  br label %2213

; <label>:2213                                    ; preds = %2029, %1996
  %2214 = phi float [ %2192, %2029 ], [ %2001, %1996 ]
  %2215 = phi float [ %2165, %2029 ], [ %2010, %1996 ]
  %2216 = phi float [ %2138, %2029 ], [ %2019, %1996 ]
  %2217 = phi float [ %2204, %2029 ], [ %1997, %1996 ]
  %2218 = phi float [ %2177, %2029 ], [ %2006, %1996 ]
  %2219 = phi float [ %2150, %2029 ], [ %2015, %1996 ]
  %2220 = phi float [ %2195, %2029 ], [ %2000, %1996 ]
  %2221 = phi float [ %2168, %2029 ], [ %2009, %1996 ]
  %2222 = phi float [ %2141, %2029 ], [ %2018, %1996 ]
  %2223 = phi float [ %2201, %2029 ], [ %1998, %1996 ]
  %2224 = phi float [ %2174, %2029 ], [ %2007, %1996 ]
  %2225 = phi float [ %2147, %2029 ], [ %2016, %1996 ]
  %2226 = phi float [ %2189, %2029 ], [ %2002, %1996 ]
  %2227 = phi float [ %2162, %2029 ], [ %2011, %1996 ]
  %2228 = phi float [ %2135, %2029 ], [ %2020, %1996 ]
  %2229 = phi float [ %2183, %2029 ], [ %2004, %1996 ]
  %2230 = phi float [ %2156, %2029 ], [ %2013, %1996 ]
  %2231 = phi float [ %2129, %2029 ], [ %2022, %1996 ]
  %2232 = phi float [ %2198, %2029 ], [ %1999, %1996 ]
  %2233 = phi float [ %2171, %2029 ], [ %2008, %1996 ]
  %2234 = phi float [ %2144, %2029 ], [ %2017, %1996 ]
  %2235 = phi float [ %2186, %2029 ], [ %2003, %1996 ]
  %2236 = phi float [ %2159, %2029 ], [ %2012, %1996 ]
  %2237 = phi float [ %2132, %2029 ], [ %2021, %1996 ]
  %2238 = phi float [ %2180, %2029 ], [ %2005, %1996 ]
  %2239 = phi float [ %2153, %2029 ], [ %2014, %1996 ]
  %2240 = phi float [ %2126, %2029 ], [ %2023, %1996 ]
  %2241 = phi float [ %2212, %2029 ], [ %1486, %1996 ]
  %2242 = icmp eq i32 %88, 65535
  br i1 %2242, label %2278, label %2243, !dx.controlflow.hints !84

; <label>:2243                                    ; preds = %2213
  %2244 = add i32 %88, %78
  %2245 = call i32 @dx.op.binary.i32(i32 40, i32 %2244, i32 49151)  ; UMin(a,b)
  %2246 = mul i32 %2245, 12
  br label %2247

; <label>:2247                                    ; preds = %2263, %2243
  %2248 = phi float [ %2238, %2243 ], [ %2269, %2263 ]
  %2249 = phi float [ %2239, %2243 ], [ %2267, %2263 ]
  %2250 = phi float [ %2240, %2243 ], [ %2265, %2263 ]
  %2251 = phi i32 [ 0, %2243 ], [ %2261, %2263 ]
  %2252 = call i32 @dx.op.legacyF32ToF16(i32 130, float %2250)  ; LegacyF32ToF16(value)
  %2253 = call i32 @dx.op.legacyF32ToF16(i32 130, float %2249)  ; LegacyF32ToF16(value)
  %2254 = shl i32 %2253, 16
  %2255 = or i32 %2254, %2252
  %2256 = call i32 @dx.op.legacyF32ToF16(i32 130, float %2248)  ; LegacyF32ToF16(value)
  %2257 = call i32 @dx.op.legacyF32ToF16(i32 130, float 1.000000e+00)  ; LegacyF32ToF16(value)
  %2258 = shl i32 %2257, 16
  %2259 = or i32 %2258, %2256
  %2260 = add nsw i32 %2251, %2246
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %2260, i32 0, i32 %2255, i32 %2259, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2261 = add nuw nsw i32 %2251, 1
  %2262 = icmp eq i32 %2261, 9
  br i1 %2262, label %2270, label %2263

; <label>:2263                                    ; preds = %2247
  %2264 = getelementptr inbounds [9 x float], [9 x float]* %32, i32 0, i32 %2261
  %2265 = load float, float* %2264, align 4, !tbaa !76
  %2266 = getelementptr inbounds [9 x float], [9 x float]* %30, i32 0, i32 %2261
  %2267 = load float, float* %2266, align 4, !tbaa !76
  %2268 = getelementptr inbounds [9 x float], [9 x float]* %31, i32 0, i32 %2261
  %2269 = load float, float* %2268, align 4, !tbaa !76
  br label %2247

; <label>:2270                                    ; preds = %2247
  %2271 = call float @dx.op.unary.f32(i32 7, float %2241)  ; Saturate(value)
  %2272 = fmul fast float %2271, 2.550000e+02
  %2273 = fadd fast float %2272, 5.000000e-01
  %2274 = fptosi float %2273 to i32
  %2275 = shl i32 %2274, 24
  %2276 = and i32 %1488, 16777215
  %2277 = or i32 %2275, %2276
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %2245, i32 undef, i32 %2277, i32 %2277, i32 %2277, i32 %2277, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %2278

; <label>:2278                                    ; preds = %2270, %2213
  %2279 = fmul fast float %104, 6.400000e+01
  %2280 = fmul fast float %105, 6.400000e+01
  %2281 = fmul fast float %106, 1.600000e+01
  %2282 = fptosi float %2279 to i32
  %2283 = fptosi float %2280 to i32
  %2284 = fptosi float %2281 to i32
  %2285 = add i32 %119, %2282
  %2286 = add i32 %118, %2283
  %2287 = add i32 %2284, %116
  %2288 = fdiv fast float 1.000000e+00, %2240
  %2289 = fdiv fast float 1.000000e+00, %2239
  %2290 = fdiv fast float 1.000000e+00, %2238
  %2291 = fmul fast float %2288, 0x3FD279A740000000
  %2292 = fmul fast float %2291, %2237
  %2293 = fmul fast float %2289, 0x3FD279A740000000
  %2294 = fmul fast float %2293, %2236
  %2295 = fmul fast float %2290, 0x3FD279A740000000
  %2296 = fmul fast float %2295, %2235
  %2297 = fmul fast float %2288, 0x3FCC9F25C0000000
  %2298 = fmul fast float %2297, %2234
  %2299 = fadd fast float %2292, 5.000000e-01
  %2300 = fadd fast float %2294, 5.000000e-01
  %2301 = fadd fast float %2296, 5.000000e-01
  %2302 = fadd fast float %2298, 5.000000e-01
  %2303 = fmul fast float %2289, 0x3FCC9F25C0000000
  %2304 = fmul fast float %2303, %2233
  %2305 = fmul fast float %2290, 0x3FCC9F25C0000000
  %2306 = fmul fast float %2305, %2232
  %2307 = fmul fast float %2291, %2231
  %2308 = fmul fast float %2293, %2230
  %2309 = fadd fast float %2304, 5.000000e-01
  %2310 = fadd fast float %2306, 5.000000e-01
  %2311 = fadd fast float %2307, 5.000000e-01
  %2312 = fadd fast float %2308, 5.000000e-01
  %2313 = fmul fast float %2295, %2229
  %2314 = fmul fast float %2291, %2228
  %2315 = fmul fast float %2293, %2227
  %2316 = fmul fast float %2295, %2226
  %2317 = fadd fast float %2313, 5.000000e-01
  %2318 = fadd fast float %2314, 5.000000e-01
  %2319 = fadd fast float %2315, 5.000000e-01
  %2320 = fadd fast float %2316, 5.000000e-01
  %2321 = fmul fast float %2288, 0x3FD08654A0000000
  %2322 = fmul fast float %2321, %2225
  %2323 = fmul fast float %2289, 0x3FD08654A0000000
  %2324 = fmul fast float %2323, %2224
  %2325 = fmul fast float %2290, 0x3FD08654A0000000
  %2326 = fmul fast float %2325, %2223
  %2327 = fmul fast float %2321, %2222
  %2328 = fadd fast float %2322, 5.000000e-01
  %2329 = fadd fast float %2324, 5.000000e-01
  %2330 = fadd fast float %2326, 5.000000e-01
  %2331 = fadd fast float %2327, 5.000000e-01
  %2332 = fmul fast float %2323, %2221
  %2333 = fmul fast float %2325, %2220
  %2334 = fmul fast float %2321, %2219
  %2335 = fmul fast float %2323, %2218
  %2336 = fadd fast float %2332, 5.000000e-01
  %2337 = fadd fast float %2333, 5.000000e-01
  %2338 = fadd fast float %2334, 5.000000e-01
  %2339 = fadd fast float %2335, 5.000000e-01
  %2340 = fmul fast float %2325, %2217
  %2341 = fmul fast float %2321, %2216
  %2342 = fmul fast float %2323, %2215
  %2343 = fmul fast float %2325, %2214
  %2344 = fadd fast float %2340, 5.000000e-01
  %2345 = fadd fast float %2341, 5.000000e-01
  %2346 = fadd fast float %2342, 5.000000e-01
  %2347 = fadd fast float %2343, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %2285, i32 %2286, i32 %2287, float %2240, float %2239, float %2238, float %2240, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %2285, i32 %2286, i32 %2287, float %2299, float %2300, float %2301, float %2302, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2348 = add i32 %2285, 64
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %2348, i32 %2286, i32 %2287, float %2309, float %2310, float %2311, float %2312, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2349 = add i32 %2286, 64
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %2285, i32 %2349, i32 %2287, float %2317, float %2318, float %2319, float %2320, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %2348, i32 %2349, i32 %2287, float %2328, float %2329, float %2330, float %2331, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2350 = add i32 %2286, 128
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %2285, i32 %2350, i32 %2287, float %2336, float %2337, float %2338, float %2339, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %2348, i32 %2350, i32 %2287, float %2344, float %2345, float %2346, float %2347, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2351

; <label>:2351                                    ; preds = %2278, %84, %77, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #3

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind readonly }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!39}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !27, !34, null}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !21, !22, !24, !25, !26}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 8, i32 1, i32 11, i32 0, null}
!11 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!12 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!13 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!14 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 7, i32 1, i32 11, i32 0, null}
!15 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!16 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 14, i32 1, i32 11, i32 0, null}
!17 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!18 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!19 = !{i32 13, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 19, i32 1, i32 10, i32 0, !20}
!20 = !{i32 0, i32 5}
!21 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 20, i32 1, i32 11, i32 0, null}
!22 = !{i32 15, %"class.StructuredBuffer<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 18, i32 1, i32 12, i32 0, !23}
!23 = !{i32 1, i32 8}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 43, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 11, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!27 = !{!28, !29, !31, !33}
!28 = !{i32 0, %"class.RWBuffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 10, i1 false, i1 false, i1 false, !20}
!29 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !30}
!30 = !{i32 0, i32 9}
!31 = !{i32 2, %"class.RWTexture3D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !32}
!32 = !{i32 0, i32 14}
!33 = !{i32 3, %"class.RWStructuredBuffer<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 2, i32 1, i32 12, i1 false, i1 false, i1 false, !23}
!34 = !{!35, !36, !37, !38}
!35 = !{i32 0, %GfxLGBoundConsts* undef, !"", i32 0, i32 4, i32 1, i32 16, null}
!36 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!37 = !{i32 2, %GfxSampleLightGridVolumesLightingConsts* undef, !"", i32 0, i32 0, i32 1, i32 48, null}
!38 = !{i32 3, %GfxSampleLightGridVolumesLightingVoxelTreeConsts* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!39 = !{void ()* @cs_sample_lightgrid_reflection_volumes_lighting, !"cs_sample_lightgrid_reflection_volumes_lighting", null, !4, !40}
!40 = !{i32 0, i64 272, i32 4, !41}
!41 = !{i32 64, i32 1, i32 1}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = !{!44, !44, i64 0}
!44 = !{!"int", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !{!48, !50}
!48 = distinct !{!48, !49, !"\01?FindProbeToProcess@@YAXHHIAIAH0@Z: %volumeIndex"}
!49 = distinct !{!49, !"\01?FindProbeToProcess@@YAXHHIAIAH0@Z"}
!50 = distinct !{!50, !49, !"\01?FindProbeToProcess@@YAXHHIAIAH0@Z: %volumeProbeIndex"}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.unroll.disable"}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = !{!69, !71, !72, !73, !74, !75}
!69 = distinct !{!69, !70, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeR"}
!70 = distinct !{!70, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z"}
!71 = distinct !{!71, !70, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeG"}
!72 = distinct !{!72, !70, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeB"}
!73 = distinct !{!73, !70, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeA"}
!74 = distinct !{!74, !70, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %primaryVisibility"}
!75 = distinct !{!75, !70, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %usedTet"}
!76 = !{!77, !77, i64 0}
!77 = !{!"float", !45, i64 0}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}

