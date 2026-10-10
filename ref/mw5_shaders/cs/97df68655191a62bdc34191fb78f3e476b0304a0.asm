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
; shader hash: e62790cb62e99548fdd2b2e4020ac8a3
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
;   [208 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [12 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [64 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
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
;   [12 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb0     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0      t0,space4unbounded
;                                   texture    byte         r/o      T1             t0     1
;                                   texture    byte         r/o      T2             t1     1
;                                   texture    byte         r/o      T3             t2     1
;                                   texture  struct         r/o      T4             t3     1
;                                   texture     f32          2d      T5             t4     1
;                                   texture     f32          2d      T6             t5     1
;                                   texture  struct         r/o      T7             t8     1
;                                   texture  struct         r/o      T8             t9     1
;                                   texture  struct         r/o      T9            t11     1
;                                   texture     u32         buf     T10            t12     1
;                                   texture     u32         buf     T11            t13     1
;                                   texture    byte         r/o     T12            t14     1
;                                   texture    byte         r/o     T13            t15     1
;                                       UAV  struct         r/w      U0             u1     1
;                                       UAV     f32          3d      U1             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<WeatherGridVolumeValuesParams>" = type { %struct.WeatherGridVolumeValuesParams }
%struct.WeatherGridVolumeValuesParams = type { float, float, float }
%"class.StructuredBuffer<DecalVolumeWGV>" = type { %struct.DecalVolumeWGV }
%struct.DecalVolumeWGV = type { %struct.DecalVolume, float }
%struct.DecalVolume = type { <3 x float>, [3 x <3 x float>], <3 x float> }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<GfxBSPAABBNodePacked>" = type { %struct.GfxBSPAABBNodePacked }
%struct.GfxBSPAABBNodePacked = type { i32, i32 }
%"class.Buffer<unsigned int>" = type { i32 }
%"class.RWStructuredBuffer<WeatherGridVolumeValuesParams>" = type { %struct.WeatherGridVolumeValuesParams }
%"class.RWTexture3D<vector<float, 3> >" = type { <3 x float> }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%GfxSampleWeatherGridVolumesConsts = type { i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%struct.SamplerState = type { i32 }

@"\01?g_batchVolumesProbeCounts@@3PAHA" = external addrspace(3) global [64 x i32], align 4

define void @cs_wgv_update_probes() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %20 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %21 = alloca [3 x float], align 4
  %22 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.i32 %22, 0
  %24 = icmp ult i32 %19, %23
  br i1 %24, label %25, label %780, !dx.controlflow.hints !37

; <label>:25                                      ; preds = %0
  %26 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.i32 %26, 0
  %28 = shl i32 %19, 2
  %29 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %28, i32 undef)  ; BufferLoad(srv,index,wot)
  %30 = extractvalue %dx.types.ResRet.i32 %29, 0
  %31 = lshr i32 %30, 12
  %32 = and i32 %30, 4095
  %33 = add i32 %27, -1
  %34 = add i32 %31, %20
  %35 = call i32 @dx.op.binary.i32(i32 40, i32 %34, i32 %33)  ; UMin(a,b)
  %36 = mul i32 %35, 28
  %37 = add i32 %36, 12
  %38 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %37, i32 undef)  ; BufferLoad(srv,index,wot)
  %39 = extractvalue %dx.types.ResRet.i32 %38, 0
  %40 = and i32 %39, 255
  %41 = lshr i32 %39, 8
  %42 = and i32 %41, 255
  %43 = lshr i32 %39, 16
  %44 = and i32 %43, 255
  %45 = mul nuw nsw i32 %42, %40
  %46 = mul nuw nsw i32 %45, %44
  %47 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?g_batchVolumesProbeCounts@@3PAHA", i32 0, i32 %20
  store i32 %46, i32 addrspace(3)* %47, align 4, !tbaa !38, !noalias !42
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %48 = add i32 %32, %20
  %49 = load i32, i32 addrspace(3)* getelementptr inbounds ([64 x i32], [64 x i32] addrspace(3)* @"\01?g_batchVolumesProbeCounts@@3PAHA", i32 0, i32 0), align 4, !tbaa !38, !noalias !42
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %64, label %51

; <label>:51                                      ; preds = %25
  br label %52

; <label>:52                                      ; preds = %52, %51
  %53 = phi i32 [ %60, %52 ], [ %49, %51 ]
  %54 = phi i32 [ %56, %52 ], [ %48, %51 ]
  %55 = phi i32 [ %57, %52 ], [ 0, %51 ]
  %56 = sub nsw i32 %54, %53
  %57 = add nuw nsw i32 %55, 1
  %58 = icmp slt i32 %57, 64
  %59 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?g_batchVolumesProbeCounts@@3PAHA", i32 0, i32 %57
  %60 = load i32, i32 addrspace(3)* %59, align 4, !tbaa !38, !noalias !42
  %61 = icmp sge i32 %56, %60
  %62 = and i1 %58, %61
  br i1 %62, label %52, label %63

; <label>:63                                      ; preds = %52
  br label %64

; <label>:64                                      ; preds = %63, %25
  %65 = phi i32 [ %48, %25 ], [ %56, %63 ]
  %66 = phi i32 [ 0, %25 ], [ %57, %63 ]
  %67 = add nsw i32 %66, %31
  %68 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.i32 %68, 0
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %780, !dx.controlflow.hints !46

; <label>:71                                      ; preds = %64
  %72 = mul i32 %67, 108
  %73 = add i32 %72, 96
  %74 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %73, i32 undef)  ; BufferLoad(srv,index,wot)
  %75 = extractvalue %dx.types.ResRet.i32 %74, 0
  %76 = add i32 %72, 100
  %77 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %76, i32 undef)  ; BufferLoad(srv,index,wot)
  %78 = extractvalue %dx.types.ResRet.i32 %77, 0
  %79 = mul i32 %67, 28
  %80 = add i32 %79, 12
  %81 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %80, i32 undef)  ; BufferLoad(srv,index,wot)
  %82 = extractvalue %dx.types.ResRet.i32 %81, 0
  %83 = add i32 %79, 16
  %84 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %83, i32 undef)  ; BufferLoad(srv,index,wot)
  %85 = extractvalue %dx.types.ResRet.f32 %84, 0
  %86 = extractvalue %dx.types.ResRet.f32 %84, 1
  %87 = extractvalue %dx.types.ResRet.f32 %84, 2
  %88 = and i32 %75, 65536
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %780, !dx.controlflow.hints !47

; <label>:90                                      ; preds = %71
  %91 = and i32 %82, 255
  %92 = lshr i32 %82, 8
  %93 = and i32 %92, 255
  %94 = lshr i32 %82, 16
  %95 = and i32 %94, 255
  %96 = mul nuw nsw i32 %93, %91
  %97 = udiv i32 %65, %96
  %98 = urem i32 %65, %96
  %99 = udiv i32 %98, %91
  %100 = urem i32 %98, %91
  %101 = and i32 %75, 65535
  %102 = and i32 %75, 131072
  %103 = icmp ne i32 %102, 0
  %104 = icmp eq i32 %101, 0
  %105 = icmp ugt i32 %91, 1
  %106 = select i1 %105, float 0.000000e+00, float 5.000000e-01
  %107 = icmp ugt i32 %93, 1
  %108 = select i1 %107, float 0.000000e+00, float 5.000000e-01
  %109 = icmp ugt i32 %95, 1
  %110 = select i1 %109, float 0.000000e+00, float 5.000000e-01
  %111 = uitofp i32 %91 to float
  %112 = uitofp i32 %93 to float
  %113 = uitofp i32 %95 to float
  %114 = fadd fast float %111, -1.000000e+00
  %115 = fadd fast float %112, -1.000000e+00
  %116 = fadd fast float %113, -1.000000e+00
  %117 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %114)  ; FMax(a,b)
  %118 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %115)  ; FMax(a,b)
  %119 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %116)  ; FMax(a,b)
  %120 = fdiv fast float 1.000000e+00, %117
  %121 = fdiv fast float 1.000000e+00, %118
  %122 = fdiv fast float 1.000000e+00, %119
  %123 = uitofp i32 %100 to float
  %124 = uitofp i32 %99 to float
  %125 = uitofp i32 %97 to float
  %126 = fadd fast float %123, %106
  %127 = fadd fast float %124, %108
  %128 = fadd fast float %125, %110
  %129 = fmul fast float %120, %126
  %130 = fmul fast float %121, %127
  %131 = fmul fast float %122, %128
  %132 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %72, i32 undef)  ; BufferLoad(srv,index,wot)
  %133 = extractvalue %dx.types.ResRet.f32 %132, 0
  %134 = add i32 %72, 16
  %135 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %134, i32 undef)  ; BufferLoad(srv,index,wot)
  %136 = extractvalue %dx.types.ResRet.f32 %135, 1
  %137 = add i32 %72, 32
  %138 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %137, i32 undef)  ; BufferLoad(srv,index,wot)
  %139 = extractvalue %dx.types.ResRet.f32 %138, 2
  %140 = fmul fast float %139, %136
  %141 = extractvalue %dx.types.ResRet.f32 %135, 2
  %142 = extractvalue %dx.types.ResRet.f32 %138, 1
  %143 = fmul fast float %142, %141
  %144 = fsub fast float %140, %143
  %145 = fmul fast float %144, %133
  %146 = extractvalue %dx.types.ResRet.f32 %132, 1
  %147 = extractvalue %dx.types.ResRet.f32 %135, 0
  %148 = fmul fast float %139, %147
  %149 = extractvalue %dx.types.ResRet.f32 %138, 0
  %150 = fmul fast float %149, %141
  %151 = fsub fast float %148, %150
  %152 = fmul fast float %151, %146
  %153 = fsub fast float %145, %152
  %154 = extractvalue %dx.types.ResRet.f32 %132, 2
  %155 = fmul fast float %142, %147
  %156 = fmul fast float %149, %136
  %157 = fsub fast float %155, %156
  %158 = fmul fast float %157, %154
  %159 = fadd fast float %153, %158
  %160 = extractvalue %dx.types.ResRet.f32 %132, 3
  %161 = fmul fast float %144, %160
  %162 = extractvalue %dx.types.ResRet.f32 %135, 3
  %163 = fmul fast float %139, %146
  %164 = fmul fast float %142, %154
  %165 = fsub fast float %163, %164
  %166 = fmul fast float %165, %162
  %167 = fsub fast float %166, %161
  %168 = extractvalue %dx.types.ResRet.f32 %138, 3
  %169 = fmul fast float %141, %146
  %170 = fmul fast float %136, %154
  %171 = fsub fast float %169, %170
  %172 = fmul fast float %171, %168
  %173 = fsub fast float %167, %172
  %174 = fmul fast float %151, %160
  %175 = fmul fast float %139, %133
  %176 = fmul fast float %149, %154
  %177 = fsub fast float %175, %176
  %178 = fmul fast float %177, %162
  %179 = fsub fast float %174, %178
  %180 = fmul fast float %141, %133
  %181 = fmul fast float %147, %154
  %182 = fsub fast float %180, %181
  %183 = fmul fast float %182, %168
  %184 = fadd fast float %179, %183
  %185 = fmul fast float %157, %160
  %186 = fmul fast float %142, %133
  %187 = fmul fast float %149, %146
  %188 = fsub fast float %186, %187
  %189 = fmul fast float %188, %162
  %190 = fsub fast float %189, %185
  %191 = fmul fast float %136, %133
  %192 = fmul fast float %147, %146
  %193 = fsub fast float %191, %192
  %194 = fmul fast float %193, %168
  %195 = fsub fast float %190, %194
  %196 = fsub fast float %164, %163
  %197 = fsub fast float %150, %148
  %198 = fsub fast float %181, %180
  %199 = fsub fast float %187, %186
  %200 = fdiv fast float 1.000000e+00, %159
  %201 = fmul fast float %200, %144
  %202 = fmul fast float %200, %196
  %203 = fmul fast float %200, %171
  %204 = fmul fast float %200, %173
  %205 = fmul fast float %200, %197
  %206 = fmul fast float %200, %177
  %207 = fmul fast float %200, %198
  %208 = fmul fast float %200, %184
  %209 = fmul fast float %200, %157
  %210 = fmul fast float %200, %199
  %211 = fmul fast float %193, %200
  %212 = fmul fast float %200, %195
  %213 = call float @dx.op.dot4.f32(i32 56, float %201, float %202, float %203, float %204, float %129, float %130, float %131, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %214 = call float @dx.op.dot4.f32(i32 56, float %205, float %206, float %207, float %208, float %129, float %130, float %131, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %215 = call float @dx.op.dot4.f32(i32 56, float %209, float %210, float %211, float %212, float %129, float %130, float %131, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %216 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 0
  store float %213, float* %216, align 4
  %217 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 1
  store float %214, float* %217, align 4
  %218 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 2
  store float %215, float* %218, align 4
  %219 = extractvalue %dx.types.CBufRet.i32 %68, 1
  %220 = and i32 %78, 65535
  %221 = lshr i32 %78, 19
  %222 = and i32 %221, 4095
  %223 = mul nuw nsw i32 %96, %95
  %224 = icmp eq i32 %222, %223
  %225 = icmp ne i32 %219, 0
  %226 = icmp ne i32 %220, 65535
  %227 = and i1 %226, %225
  %228 = and i1 %224, %227
  %229 = and i32 %78, 65536
  %230 = icmp ne i32 %229, 0
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 0
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 0
  %235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %236 = extractvalue %dx.types.CBufRet.f32 %235, 0
  %237 = extractvalue %dx.types.CBufRet.f32 %231, 1
  %238 = extractvalue %dx.types.CBufRet.f32 %233, 1
  %239 = extractvalue %dx.types.CBufRet.f32 %235, 1
  %240 = extractvalue %dx.types.CBufRet.f32 %231, 3
  %241 = extractvalue %dx.types.CBufRet.f32 %233, 3
  %242 = extractvalue %dx.types.CBufRet.f32 %235, 3
  %243 = fadd fast float %240, %213
  %244 = fadd fast float %241, %214
  %245 = fadd fast float %242, %215
  %246 = fmul fast float %243, %232
  %247 = call float @dx.op.tertiary.f32(i32 46, float %244, float %234, float %246)  ; FMad(a,b,c)
  %248 = call float @dx.op.tertiary.f32(i32 46, float %245, float %236, float %247)  ; FMad(a,b,c)
  %249 = fmul fast float %243, %237
  %250 = call float @dx.op.tertiary.f32(i32 46, float %244, float %238, float %249)  ; FMad(a,b,c)
  %251 = call float @dx.op.tertiary.f32(i32 46, float %245, float %239, float %250)  ; FMad(a,b,c)
  %252 = fsub fast float %248, %240
  %253 = fsub fast float %251, %241
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 0
  %256 = extractvalue %dx.types.CBufRet.f32 %254, 1
  %257 = extractvalue %dx.types.CBufRet.f32 %254, 2
  %258 = fsub fast float %252, %255
  %259 = fadd fast float %258, %257
  %260 = fsub fast float %253, %256
  %261 = fadd fast float %260, %257
  %262 = extractvalue %dx.types.CBufRet.f32 %254, 3
  %263 = fmul fast float %259, %262
  %264 = fmul fast float %261, %262
  %265 = call float @dx.op.unary.f32(i32 7, float %263)  ; Saturate(value)
  %266 = call float @dx.op.unary.f32(i32 7, float %264)  ; Saturate(value)
  %267 = fsub fast float 1.000000e+00, %265
  %268 = fsub fast float 1.000000e+00, %266
  %269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %267, float %268, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 0
  %271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %272 = extractvalue %dx.types.CBufRet.f32 %271, 2
  %273 = fmul fast float %272, %270
  %274 = extractvalue %dx.types.CBufRet.f32 %271, 3
  %275 = fadd fast float %274, %273
  %276 = extractvalue %dx.types.CBufRet.f32 %235, 2
  %277 = fadd fast float %275, %242
  %278 = fmul fast float %248, %236
  %279 = call float @dx.op.tertiary.f32(i32 46, float %251, float %239, float %278)  ; FMad(a,b,c)
  %280 = call float @dx.op.tertiary.f32(i32 46, float %277, float %276, float %279)  ; FMad(a,b,c)
  %281 = fsub fast float %280, %242
  %282 = fcmp fast ogt float %270, 0.000000e+00
  %283 = fcmp fast ole float %215, %281
  %284 = and i1 %282, %283
  br i1 %227, label %285, label %328, !dx.controlflow.hints !48

; <label>:285                                     ; preds = %90
  br i1 %228, label %286, label %294, !dx.controlflow.hints !49

; <label>:286                                     ; preds = %285
  %287 = add i32 %220, %65
  %288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %287, i32 0)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.f32 %288, 0
  %290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %287, i32 4)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.f32 %290, 0
  %292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %287, i32 8)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.f32 %292, 0
  br label %328

; <label>:294                                     ; preds = %285
  %295 = icmp eq i32 %222, 0
  br i1 %295, label %316, label %296

; <label>:296                                     ; preds = %294
  %297 = and i32 %221, 4095
  br label %298

; <label>:298                                     ; preds = %298, %296
  %299 = phi i32 [ %313, %298 ], [ 0, %296 ]
  %300 = phi float [ %306, %298 ], [ 0.000000e+00, %296 ]
  %301 = phi float [ %309, %298 ], [ 0.000000e+00, %296 ]
  %302 = phi float [ %312, %298 ], [ 0.000000e+00, %296 ]
  %303 = add nuw nsw i32 %299, %220
  %304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %303, i32 0)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.f32 %304, 0
  %306 = fadd fast float %305, %300
  %307 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %303, i32 4)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.f32 %307, 0
  %309 = fadd fast float %308, %301
  %310 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %303, i32 8)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.f32 %310, 0
  %312 = fadd fast float %311, %302
  %313 = add nuw nsw i32 %299, 1
  %314 = icmp eq i32 %313, %297
  br i1 %314, label %315, label %298

; <label>:315                                     ; preds = %298
  br label %316

; <label>:316                                     ; preds = %315, %294
  %317 = phi float [ 0.000000e+00, %294 ], [ %306, %315 ]
  %318 = phi float [ 0.000000e+00, %294 ], [ %309, %315 ]
  %319 = phi float [ 0.000000e+00, %294 ], [ %312, %315 ]
  %320 = uitofp i32 %222 to float
  %321 = select i1 %230, float 1.000000e+02, float %320
  %322 = fdiv fast float %317, %321
  %323 = fdiv fast float %318, %321
  %324 = fdiv fast float %319, %321
  %325 = call float @dx.op.unary.f32(i32 7, float %322)  ; Saturate(value)
  %326 = call float @dx.op.unary.f32(i32 7, float %323)  ; Saturate(value)
  %327 = call float @dx.op.unary.f32(i32 7, float %324)  ; Saturate(value)
  br label %328

; <label>:328                                     ; preds = %316, %286, %90
  %329 = phi float [ %289, %286 ], [ %325, %316 ], [ 0.000000e+00, %90 ]
  %330 = phi float [ %291, %286 ], [ %326, %316 ], [ 0.000000e+00, %90 ]
  %331 = phi float [ %293, %286 ], [ %327, %316 ], [ 0.000000e+00, %90 ]
  %332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  br i1 %284, label %333, label %345, !dx.controlflow.hints !50

; <label>:333                                     ; preds = %328
  %334 = extractvalue %dx.types.CBufRet.f32 %332, 3
  %335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %336 = extractvalue %dx.types.CBufRet.f32 %335, 2
  %337 = fsub fast float -0.000000e+00, %336
  %338 = select i1 %228, float %337, float %330
  %339 = fadd fast float %338, %330
  %340 = call float @dx.op.unary.f32(i32 7, float %339)  ; Saturate(value)
  %341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %342 = extractvalue %dx.types.CBufRet.f32 %341, 2
  %343 = fsub fast float -0.000000e+00, %342
  %344 = select i1 %228, float %343, float %331
  br label %758

; <label>:345                                     ; preds = %328
  %346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 151)  ; CBufferLoadLegacy(handle,regIndex)
  %347 = extractvalue %dx.types.CBufRet.f32 %346, 0
  %348 = extractvalue %dx.types.CBufRet.f32 %346, 1
  %349 = extractvalue %dx.types.CBufRet.f32 %346, 2
  %350 = extractvalue %dx.types.CBufRet.f32 %346, 3
  %351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 152)  ; CBufferLoadLegacy(handle,regIndex)
  %352 = extractvalue %dx.types.CBufRet.f32 %351, 0
  %353 = extractvalue %dx.types.CBufRet.f32 %351, 1
  %354 = extractvalue %dx.types.CBufRet.f32 %351, 2
  %355 = extractvalue %dx.types.CBufRet.f32 %351, 3
  %356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 153)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.f32 %356, 0
  %358 = extractvalue %dx.types.CBufRet.f32 %356, 1
  %359 = extractvalue %dx.types.CBufRet.f32 %356, 2
  %360 = extractvalue %dx.types.CBufRet.f32 %356, 3
  %361 = fmul fast float %213, %347
  %362 = call float @dx.op.tertiary.f32(i32 46, float %214, float %348, float %361)  ; FMad(a,b,c)
  %363 = call float @dx.op.tertiary.f32(i32 46, float %215, float %349, float %362)  ; FMad(a,b,c)
  %364 = fadd fast float %363, %350
  %365 = fmul fast float %213, %352
  %366 = call float @dx.op.tertiary.f32(i32 46, float %214, float %353, float %365)  ; FMad(a,b,c)
  %367 = call float @dx.op.tertiary.f32(i32 46, float %215, float %354, float %366)  ; FMad(a,b,c)
  %368 = fadd fast float %367, %355
  %369 = fmul fast float %213, %357
  %370 = call float @dx.op.tertiary.f32(i32 46, float %214, float %358, float %369)  ; FMad(a,b,c)
  %371 = call float @dx.op.tertiary.f32(i32 46, float %215, float %359, float %370)  ; FMad(a,b,c)
  %372 = fadd fast float %371, %360
  %373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %16, float %364, float %368, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %374 = extractvalue %dx.types.ResRet.f32 %373, 0
  %375 = fsub fast float %372, %374
  %376 = call float @dx.op.unary.f32(i32 6, float %375)  ; FAbs(value)
  %377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.f32 %377, 1
  %379 = fmul fast float %378, %376
  %380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %381 = extractvalue %dx.types.CBufRet.f32 %380, 2
  %382 = call float @dx.op.binary.f32(i32 35, float %379, float 0.000000e+00)  ; FMax(a,b)
  %383 = call float @dx.op.binary.f32(i32 36, float %382, float %381)  ; FMin(a,b)
  %384 = extractvalue %dx.types.CBufRet.f32 %380, 3
  %385 = fmul fast float %384, %383
  %386 = fsub fast float 1.000000e+00, %385
  %387 = extractvalue %dx.types.CBufRet.f32 %332, 0
  %388 = extractvalue %dx.types.CBufRet.f32 %332, 1
  %389 = extractvalue %dx.types.CBufRet.f32 %332, 2
  %390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 371)  ; CBufferLoadLegacy(handle,regIndex)
  %391 = extractvalue %dx.types.CBufRet.f32 %390, 0
  %392 = extractvalue %dx.types.CBufRet.f32 %390, 1
  %393 = extractvalue %dx.types.CBufRet.i32 %68, 3
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %510, label %395, !dx.controlflow.hints !51

; <label>:395                                     ; preds = %345
  br label %396

; <label>:396                                     ; preds = %396, %395
  %397 = phi i32 [ %411, %396 ], [ 0, %395 ]
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %397, i32 0)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %397, i32 4)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = lshr i32 %399, 30
  %403 = getelementptr [3 x float], [3 x float]* %21, i32 0, i32 %402
  %404 = load float, float* %403, align 4, !tbaa !52
  %405 = and i32 %399, 1048575
  %406 = uitofp i32 %405 to float
  %407 = fadd fast float %406, -5.242880e+05
  %408 = fcmp fast olt float %404, %407
  %409 = and i32 %401, 65535
  %410 = lshr i32 %401, 16
  %411 = select i1 %408, i32 %409, i32 %410
  %412 = and i32 %411, 32768
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %396, label %414

; <label>:414                                     ; preds = %396
  %415 = and i32 %411, 32767
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = lshr i32 %417, 22
  %419 = and i32 %417, 4194303
  %420 = icmp eq i32 %418, 0
  br i1 %420, label %510, label %421

; <label>:421                                     ; preds = %414
  br label %422

; <label>:422                                     ; preds = %501, %421
  %423 = phi float [ %502, %501 ], [ %387, %421 ]
  %424 = phi float [ %503, %501 ], [ %388, %421 ]
  %425 = phi float [ %504, %501 ], [ %389, %421 ]
  %426 = phi float [ %505, %501 ], [ %391, %421 ]
  %427 = phi float [ %506, %501 ], [ %392, %421 ]
  %428 = phi i32 [ %507, %501 ], [ 0, %421 ]
  %429 = add nuw nsw i32 %428, %419
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = mul i32 %431, 60
  %433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.f32 %433, 0
  %435 = extractvalue %dx.types.ResRet.f32 %433, 1
  %436 = extractvalue %dx.types.ResRet.f32 %433, 2
  %437 = add i32 %432, 12
  %438 = add i32 %432, 48
  %439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.f32 %439, 0
  %441 = extractvalue %dx.types.ResRet.f32 %439, 1
  %442 = extractvalue %dx.types.ResRet.f32 %439, 2
  %443 = fsub fast float %213, %434
  %444 = fsub fast float %214, %435
  %445 = fsub fast float %215, %436
  %446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.f32 %446, 0
  %448 = extractvalue %dx.types.ResRet.f32 %446, 1
  %449 = extractvalue %dx.types.ResRet.f32 %446, 2
  %450 = call float @dx.op.dot3.f32(i32 55, float %443, float %444, float %445, float %447, float %448, float %449)  ; Dot3(ax,ay,az,bx,by,bz)
  %451 = add i32 %432, 24
  %452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.f32 %452, 0
  %454 = extractvalue %dx.types.ResRet.f32 %452, 1
  %455 = extractvalue %dx.types.ResRet.f32 %452, 2
  %456 = call float @dx.op.dot3.f32(i32 55, float %443, float %444, float %445, float %453, float %454, float %455)  ; Dot3(ax,ay,az,bx,by,bz)
  %457 = add i32 %432, 36
  %458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.f32 %458, 0
  %460 = extractvalue %dx.types.ResRet.f32 %458, 1
  %461 = extractvalue %dx.types.ResRet.f32 %458, 2
  %462 = call float @dx.op.dot3.f32(i32 55, float %443, float %444, float %445, float %459, float %460, float %461)  ; Dot3(ax,ay,az,bx,by,bz)
  %463 = call float @dx.op.unary.f32(i32 6, float %450)  ; FAbs(value)
  %464 = call float @dx.op.unary.f32(i32 6, float %456)  ; FAbs(value)
  %465 = call float @dx.op.unary.f32(i32 6, float %462)  ; FAbs(value)
  %466 = fcmp fast ogt float %463, %440
  %467 = fcmp fast ogt float %464, %441
  %468 = fcmp fast ogt float %465, %442
  %469 = or i1 %466, %467
  %470 = or i1 %469, %468
  br i1 %470, label %501, label %471, !dx.controlflow.hints !54

; <label>:471                                     ; preds = %422
  %472 = mul i32 %431, 24
  %473 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.f32 %473, 0
  %475 = extractvalue %dx.types.ResRet.f32 %473, 1
  %476 = extractvalue %dx.types.ResRet.f32 %473, 2
  %477 = extractvalue %dx.types.ResRet.f32 %473, 3
  %478 = add i32 %472, 16
  %479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.f32 %479, 0
  %481 = extractvalue %dx.types.ResRet.f32 %479, 1
  %482 = fsub fast float %440, %463
  %483 = fsub fast float %441, %464
  %484 = call float @dx.op.binary.f32(i32 36, float %482, float %483)  ; FMin(a,b)
  %485 = fdiv fast float %484, %477
  %486 = call float @dx.op.unary.f32(i32 7, float %485)  ; Saturate(value)
  %487 = fmul fast float %486, 2.000000e+00
  %488 = fsub fast float 3.000000e+00, %487
  %489 = fmul fast float %486, %486
  %490 = fmul fast float %489, %488
  %491 = fmul fast float %490, %474
  %492 = fadd fast float %491, %423
  %493 = fmul fast float %490, %475
  %494 = fadd fast float %493, %424
  %495 = fmul fast float %490, %476
  %496 = fadd fast float %495, %425
  %497 = fmul fast float %490, %480
  %498 = fadd fast float %497, %426
  %499 = fmul fast float %490, %481
  %500 = fadd fast float %499, %427
  br label %501

; <label>:501                                     ; preds = %471, %422
  %502 = phi float [ %423, %422 ], [ %492, %471 ]
  %503 = phi float [ %424, %422 ], [ %494, %471 ]
  %504 = phi float [ %425, %422 ], [ %496, %471 ]
  %505 = phi float [ %426, %422 ], [ %498, %471 ]
  %506 = phi float [ %427, %422 ], [ %500, %471 ]
  %507 = add nuw nsw i32 %428, 1
  %508 = icmp eq i32 %507, %418
  br i1 %508, label %509, label %422, !llvm.loop !55

; <label>:509                                     ; preds = %501
  br label %510

; <label>:510                                     ; preds = %509, %414, %345
  %511 = phi float [ %387, %345 ], [ %387, %414 ], [ %502, %509 ]
  %512 = phi float [ %388, %345 ], [ %388, %414 ], [ %503, %509 ]
  %513 = phi float [ %389, %345 ], [ %389, %414 ], [ %504, %509 ]
  %514 = phi float [ %391, %345 ], [ %391, %414 ], [ %505, %509 ]
  %515 = phi float [ %392, %345 ], [ %392, %414 ], [ %506, %509 ]
  %516 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %517 = extractvalue %dx.types.CBufRet.i32 %516, 0
  %518 = and i32 %517, 16
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %574, label %520, !dx.controlflow.hints !57

; <label>:520                                     ; preds = %510
  %521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 377)  ; CBufferLoadLegacy(handle,regIndex)
  %522 = extractvalue %dx.types.CBufRet.f32 %521, 0
  %523 = extractvalue %dx.types.CBufRet.f32 %521, 1
  %524 = extractvalue %dx.types.CBufRet.f32 %521, 2
  %525 = fsub fast float %213, %522
  %526 = fsub fast float %214, %523
  %527 = fsub fast float %215, %524
  %528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 378)  ; CBufferLoadLegacy(handle,regIndex)
  %529 = extractvalue %dx.types.CBufRet.f32 %528, 0
  %530 = extractvalue %dx.types.CBufRet.f32 %528, 1
  %531 = extractvalue %dx.types.CBufRet.f32 %528, 2
  %532 = fmul fast float %525, %529
  %533 = fmul fast float %526, %530
  %534 = fmul fast float %527, %531
  %535 = fcmp fast oge float %532, 0.000000e+00
  %536 = fcmp fast oge float %533, 0.000000e+00
  %537 = fcmp fast oge float %534, 0.000000e+00
  %538 = and i1 %535, %536
  %539 = and i1 %537, %538
  %540 = fcmp fast ole float %532, 1.000000e+00
  %541 = fcmp fast ole float %533, 1.000000e+00
  %542 = fcmp fast ole float %534, 1.000000e+00
  %543 = and i1 %540, %541
  %544 = and i1 %542, %543
  %545 = and i1 %539, %544
  br i1 %545, label %546, label %574, !dx.controlflow.hints !58

; <label>:546                                     ; preds = %520
  %547 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %548 = extractvalue %dx.types.CBufRet.i32 %547, 0
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %555, label %550, !dx.controlflow.hints !59

; <label>:550                                     ; preds = %546
  %551 = add i32 %548, 0
  %552 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %551, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %553 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %552, %dx.types.Handle %16, float %532, float %533, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %554 = extractvalue %dx.types.ResRet.f32 %553, 0
  br label %555

; <label>:555                                     ; preds = %550, %546
  %556 = phi float [ %554, %550 ], [ 1.000000e+00, %546 ]
  %557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %558 = extractvalue %dx.types.CBufRet.f32 %557, 1
  %559 = fmul fast float %558, %556
  %560 = fadd fast float %559, %511
  %561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 380)  ; CBufferLoadLegacy(handle,regIndex)
  %562 = extractvalue %dx.types.CBufRet.f32 %561, 0
  %563 = fmul fast float %562, %556
  %564 = fadd fast float %563, %512
  %565 = extractvalue %dx.types.CBufRet.f32 %561, 1
  %566 = fmul fast float %565, %556
  %567 = fadd fast float %566, %513
  %568 = extractvalue %dx.types.CBufRet.f32 %561, 2
  %569 = fmul fast float %568, %556
  %570 = fadd fast float %569, %514
  %571 = extractvalue %dx.types.CBufRet.f32 %561, 3
  %572 = fmul fast float %571, %556
  %573 = fadd fast float %572, %515
  br label %574

; <label>:574                                     ; preds = %555, %520, %510
  %575 = phi float [ %560, %555 ], [ %511, %520 ], [ %511, %510 ]
  %576 = phi float [ %564, %555 ], [ %512, %520 ], [ %512, %510 ]
  %577 = phi float [ %567, %555 ], [ %513, %520 ], [ %513, %510 ]
  %578 = phi float [ %570, %555 ], [ %514, %520 ], [ %514, %510 ]
  %579 = phi float [ %573, %555 ], [ %515, %520 ], [ %515, %510 ]
  %580 = fcmp fast ogt float %375, 0.000000e+00
  %581 = fcmp fast ogt float %576, 0.000000e+00
  %582 = and i1 %580, %581
  br i1 %104, label %656, label %583, !dx.controlflow.hints !60

; <label>:583                                     ; preds = %574
  br label %584

; <label>:584                                     ; preds = %648, %583
  %585 = phi float [ %649, %648 ], [ 0.000000e+00, %583 ]
  %586 = phi float [ %650, %648 ], [ 0.000000e+00, %583 ]
  %587 = phi i32 [ %652, %648 ], [ 0, %583 ]
  %588 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %589 = extractvalue %dx.types.CBufRet.i32 %588, 3
  %590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 0, i32 0)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = call i32 @dx.op.binary.i32(i32 40, i32 %591, i32 %589)  ; UMin(a,b)
  %593 = icmp ult i32 %587, %592
  br i1 %593, label %594, label %653

; <label>:594                                     ; preds = %584
  %595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %587, i32 48)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.f32 %595, 0
  %597 = extractvalue %dx.types.ResRet.f32 %595, 1
  %598 = extractvalue %dx.types.ResRet.f32 %595, 2
  %599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %587, i32 0)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.f32 %599, 0
  %601 = extractvalue %dx.types.ResRet.f32 %599, 1
  %602 = extractvalue %dx.types.ResRet.f32 %599, 2
  %603 = fsub fast float %213, %600
  %604 = fsub fast float %214, %601
  %605 = fsub fast float %215, %602
  %606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %587, i32 12)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.f32 %606, 0
  %608 = extractvalue %dx.types.ResRet.f32 %606, 1
  %609 = extractvalue %dx.types.ResRet.f32 %606, 2
  %610 = call float @dx.op.dot3.f32(i32 55, float %603, float %604, float %605, float %607, float %608, float %609)  ; Dot3(ax,ay,az,bx,by,bz)
  %611 = call float @dx.op.unary.f32(i32 6, float %610)  ; FAbs(value)
  %612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %587, i32 24)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.f32 %612, 0
  %614 = extractvalue %dx.types.ResRet.f32 %612, 1
  %615 = extractvalue %dx.types.ResRet.f32 %612, 2
  %616 = call float @dx.op.dot3.f32(i32 55, float %603, float %604, float %605, float %613, float %614, float %615)  ; Dot3(ax,ay,az,bx,by,bz)
  %617 = call float @dx.op.unary.f32(i32 6, float %616)  ; FAbs(value)
  %618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %587, i32 36)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.f32 %618, 0
  %620 = extractvalue %dx.types.ResRet.f32 %618, 1
  %621 = extractvalue %dx.types.ResRet.f32 %618, 2
  %622 = call float @dx.op.dot3.f32(i32 55, float %603, float %604, float %605, float %619, float %620, float %621)  ; Dot3(ax,ay,az,bx,by,bz)
  %623 = call float @dx.op.unary.f32(i32 6, float %622)  ; FAbs(value)
  %624 = fcmp fast ole float %611, %596
  %625 = fcmp fast ole float %617, %597
  %626 = and i1 %624, %625
  %627 = fcmp fast ole float %623, %598
  %628 = and i1 %626, %627
  br i1 %628, label %629, label %636, !dx.controlflow.hints !61

; <label>:629                                     ; preds = %594
  %630 = fdiv fast float %623, %598
  %631 = fdiv fast float %617, %597
  %632 = call float @dx.op.binary.f32(i32 35, float %631, float %630)  ; FMax(a,b)
  %633 = fdiv fast float %611, %596
  %634 = call float @dx.op.binary.f32(i32 35, float %633, float %632)  ; FMax(a,b)
  %635 = fsub fast float 1.000000e+00, %634
  br label %636

; <label>:636                                     ; preds = %629, %594
  %637 = phi float [ %635, %629 ], [ 0.000000e+00, %594 ]
  br i1 %628, label %638, label %648, !dx.controlflow.hints !62

; <label>:638                                     ; preds = %636
  %639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %587, i32 60)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.f32 %639, 0
  %641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %642 = extractvalue %dx.types.CBufRet.f32 %641, 2
  %643 = fmul fast float %637, %386
  %644 = fmul fast float %643, %640
  %645 = fmul fast float %644, %642
  %646 = fadd fast float %645, %585
  %647 = call float @dx.op.binary.f32(i32 35, float %586, float %646)  ; FMax(a,b)
  br label %648

; <label>:648                                     ; preds = %638, %636
  %649 = phi float [ %646, %638 ], [ %585, %636 ]
  %650 = phi float [ %647, %638 ], [ %586, %636 ]
  %651 = fcmp fast ogt float %649, 1.000000e+00
  %652 = add i32 %587, 1
  br i1 %651, label %653, label %584, !dx.controlflow.hints !63

; <label>:653                                     ; preds = %648, %584
  %654 = phi float [ %585, %584 ], [ 1.000000e+00, %648 ]
  %655 = phi float [ %586, %584 ], [ %650, %648 ]
  br label %656

; <label>:656                                     ; preds = %653, %574
  %657 = phi float [ 0.000000e+00, %574 ], [ %654, %653 ]
  %658 = phi float [ 0.000000e+00, %574 ], [ %655, %653 ]
  %659 = fcmp fast ogt float %657, 0.000000e+00
  %660 = fcmp fast ole float %657, %658
  %661 = and i1 %659, %660
  %662 = fcmp fast ogt float %386, 0.000000e+00
  %663 = fcmp fast ogt float %575, 0.000000e+00
  %664 = and i1 %662, %663
  %665 = xor i1 %582, true
  %666 = and i1 %664, %665
  %667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %668 = extractvalue %dx.types.CBufRet.f32 %667, 0
  %669 = select i1 %582, float %575, float %668
  %670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %671 = extractvalue %dx.types.CBufRet.f32 %670, 1
  %672 = fmul fast float %671, %576
  %673 = select i1 %582, float %672, float 0.000000e+00
  %674 = fmul fast float %671, %386
  %675 = select i1 %666, float %674, float 0.000000e+00
  %676 = select i1 %661, float %657, float 0.000000e+00
  %677 = fadd fast float %673, %676
  %678 = fadd fast float %677, %675
  %679 = select i1 %227, float %678, float %669
  %680 = and i1 %662, %663
  %681 = or i1 %680, %582
  %682 = xor i1 %681, true
  %683 = and i1 %659, %660
  %684 = xor i1 %683, true
  %685 = fadd fast float %679, %329
  %686 = fcmp fast ogt float %685, %575
  %687 = or i1 %686, %682
  %688 = and i1 %687, %684
  %689 = and i1 %227, %688
  %690 = select i1 %582, float %575, float 0.000000e+00
  %691 = fsub fast float %575, %329
  %692 = call float @dx.op.unary.f32(i32 7, float %691)  ; Saturate(value)
  %693 = select i1 %661, float 1.000000e+00, float %692
  %694 = extractvalue %dx.types.CBufRet.f32 %670, 0
  %695 = fsub fast float %329, %690
  %696 = call float @dx.op.binary.f32(i32 35, float %695, float 0.000000e+00)  ; FMax(a,b)
  %697 = call float @dx.op.binary.f32(i32 36, float %696, float %694)  ; FMin(a,b)
  %698 = call float @dx.op.binary.f32(i32 35, float %679, float 0.000000e+00)  ; FMax(a,b)
  %699 = call float @dx.op.binary.f32(i32 36, float %698, float %693)  ; FMin(a,b)
  %700 = fsub fast float -0.000000e+00, %697
  %701 = select i1 %689, float %700, float %699
  %702 = fadd fast float %701, %329
  %703 = call float @dx.op.unary.f32(i32 7, float %702)  ; Saturate(value)
  %704 = fcmp fast ogt float %577, 0.000000e+00
  %705 = and i1 %580, %704
  %706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %707 = extractvalue %dx.types.CBufRet.f32 %706, 0
  %708 = fmul fast float %707, %577
  %709 = select i1 %705, float %708, float 0.000000e+00
  %710 = select i1 %227, float %709, float %577
  %711 = extractvalue %dx.types.CBufRet.f32 %706, 3
  %712 = extractvalue %dx.types.CBufRet.f32 %667, 3
  %713 = select i1 %103, float %711, float %712
  %714 = xor i1 %705, true
  %715 = or i1 %582, %714
  %716 = fadd fast float %710, %330
  %717 = fcmp fast ogt float %716, %713
  %718 = or i1 %715, %717
  %719 = and i1 %227, %718
  %720 = fsub fast float %713, %330
  %721 = call float @dx.op.unary.f32(i32 7, float %720)  ; Saturate(value)
  %722 = extractvalue %dx.types.CBufRet.f32 %706, 2
  %723 = fmul fast float %722, %576
  %724 = call float @dx.op.unary.f32(i32 7, float %723)  ; Saturate(value)
  %725 = extractvalue %dx.types.CBufRet.f32 %706, 1
  %726 = select i1 %582, float %724, float %725
  %727 = call float @dx.op.binary.f32(i32 35, float %710, float 0.000000e+00)  ; FMax(a,b)
  %728 = call float @dx.op.binary.f32(i32 36, float %727, float %721)  ; FMin(a,b)
  %729 = fsub fast float -0.000000e+00, %726
  %730 = select i1 %719, float %729, float %728
  %731 = fadd fast float %730, %330
  %732 = call float @dx.op.unary.f32(i32 7, float %731)  ; Saturate(value)
  %733 = fcmp fast ogt float %579, 0.000000e+00
  %734 = and i1 %580, %733
  %735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %736 = extractvalue %dx.types.CBufRet.f32 %735, 0
  %737 = fmul fast float %736, %579
  %738 = select i1 %734, float %737, float 0.000000e+00
  %739 = select i1 %227, float %738, float %578
  %740 = extractvalue %dx.types.CBufRet.f32 %735, 3
  %741 = select i1 %734, float %740, float 0.000000e+00
  %742 = fcmp oeq float %738, 0.000000e+00
  %743 = or i1 %582, %742
  %744 = fadd fast float %739, %331
  %745 = fcmp fast ogt float %744, %741
  %746 = or i1 %743, %745
  %747 = and i1 %227, %746
  %748 = fsub fast float %741, %331
  %749 = call float @dx.op.unary.f32(i32 7, float %748)  ; Saturate(value)
  %750 = extractvalue %dx.types.CBufRet.f32 %735, 2
  %751 = fmul fast float %750, %579
  %752 = extractvalue %dx.types.CBufRet.f32 %735, 1
  %753 = select i1 %582, float %751, float %752
  %754 = call float @dx.op.binary.f32(i32 35, float %739, float 0.000000e+00)  ; FMax(a,b)
  %755 = call float @dx.op.binary.f32(i32 36, float %754, float %749)  ; FMin(a,b)
  %756 = fsub fast float -0.000000e+00, %753
  %757 = select i1 %747, float %756, float %755
  br label %758

; <label>:758                                     ; preds = %656, %333
  %759 = phi float [ %344, %333 ], [ %757, %656 ]
  %760 = phi float [ %334, %333 ], [ %703, %656 ]
  %761 = phi float [ %340, %333 ], [ %732, %656 ]
  %762 = fadd fast float %759, %331
  %763 = call float @dx.op.unary.f32(i32 7, float %762)  ; Saturate(value)
  %764 = icmp eq i32 %101, 65535
  br i1 %764, label %780, label %765, !dx.controlflow.hints !64

; <label>:765                                     ; preds = %758
  %766 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %767 = extractvalue %dx.types.CBufRet.i32 %766, 1
  %768 = add i32 %767, -1
  %769 = add i32 %101, %65
  %770 = call i32 @dx.op.binary.i32(i32 40, i32 %769, i32 %768)  ; UMin(a,b)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %770, i32 0, float %760, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %770, i32 4, float %761, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %770, i32 8, float %763, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %771 = fmul fast float %85, 1.280000e+02
  %772 = fmul fast float %86, 1.280000e+02
  %773 = fmul fast float %87, 1.600000e+01
  %774 = fptosi float %771 to i32
  %775 = fptosi float %772 to i32
  %776 = fptosi float %773 to i32
  %777 = add i32 %100, %774
  %778 = add i32 %99, %775
  %779 = add i32 %97, %776
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %777, i32 %778, i32 %779, float %760, float %761, float %763, float %760, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %780

; <label>:780                                     ; preds = %765, %758, %71, %64, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #3

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
!4 = !{!5, !26, !29, !32}
!5 = !{!6, !8, !9, !10, !11, !13, !14, !15, !17, !19, !21, !23, !24, !25}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.StructuredBuffer<WeatherGridVolumeValuesParams>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i32 0, !12}
!12 = !{i32 1, i32 12}
!13 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!14 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!15 = !{i32 7, %"class.StructuredBuffer<DecalVolumeWGV>"* undef, !"", i32 0, i32 8, i32 1, i32 12, i32 0, !16}
!16 = !{i32 1, i32 64}
!17 = !{i32 8, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 9, i32 1, i32 12, i32 0, !18}
!18 = !{i32 1, i32 4}
!19 = !{i32 9, %"class.StructuredBuffer<GfxBSPAABBNodePacked>"* undef, !"", i32 0, i32 11, i32 1, i32 12, i32 0, !20}
!20 = !{i32 1, i32 8}
!21 = !{i32 10, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 12, i32 1, i32 10, i32 0, !22}
!22 = !{i32 0, i32 5}
!23 = !{i32 11, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 13, i32 1, i32 10, i32 0, !22}
!24 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 14, i32 1, i32 11, i32 0, null}
!25 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!26 = !{!27, !28}
!27 = !{i32 0, %"class.RWStructuredBuffer<WeatherGridVolumeValuesParams>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i1 false, i1 false, i1 false, !12}
!28 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!29 = !{!30, !31}
!30 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!31 = !{i32 1, %GfxSampleWeatherGridVolumesConsts* undef, !"", i32 0, i32 0, i32 1, i32 208, null}
!32 = !{!33}
!33 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!34 = !{void ()* @cs_wgv_update_probes, !"cs_wgv_update_probes", null, !4, !35}
!35 = !{i32 0, i64 272, i32 4, !36}
!36 = !{i32 64, i32 1, i32 1}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!43, !45}
!43 = distinct !{!43, !44, !"\01?FindProbeToProcess@@YAXHHIAIAH0@Z: %volumeIndex"}
!44 = distinct !{!44, !"\01?FindProbeToProcess@@YAXHHIAIAH0@Z"}
!45 = distinct !{!45, !44, !"\01?FindProbeToProcess@@YAXHHIAIAH0@Z: %volumeProbeIndex"}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = !{!53, !53, i64 0}
!53 = !{!"float", !40, i64 0}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}

