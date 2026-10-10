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
; shader hash: b6efb7516704284d4f9ffd870db23c0a
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
;                                   texture    byte         r/o      T1             t1     1
;                                   texture    byte         r/o      T2             t2     1
;                                   texture    byte         r/o      T3             t6     1
;                                   texture    byte         r/o      T4             t7     1
;                                   texture  struct         r/o      T5             t3     1
;                                   texture     f32          2d      T6             t4     1
;                                   texture     f32          2d      T7             t5     1
;                                   texture  struct         r/o      T8             t8     1
;                                   texture  struct         r/o      T9             t9     1
;                                   texture  struct         r/o     T10            t11     1
;                                   texture     u32         buf     T11            t12     1
;                                   texture     u32         buf     T12            t13     1
;                                   texture    byte         r/o     T13            t14     1
;                                   texture    byte         r/o     T14            t15     1
;                                       UAV  struct         r/w      U0             u1     1
;                                       UAV     f32          3d      U1             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
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

@"\01?g_skinnedVolumeGridValuesWetness@@3PAY173$$CAHA.1dim" = addrspace(3) global [256 x i32] undef, align 4
@"\01?g_skinnedVolumeGridValuesDust@@3PAY173$$CAHA.1dim" = addrspace(3) global [256 x i32] undef, align 4
@"\01?g_skinnedVolumeGridValuesSnow@@3PAY173$$CAHA.1dim" = addrspace(3) global [256 x i32] undef, align 4

define void @cs_wgv_update_probes_skinned_objects() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %21 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %22 = alloca [2 x i32], align 4
  %23 = alloca [2 x i32], align 4
  %24 = alloca [2 x i32], align 4
  %25 = alloca [2 x i32], align 4
  %26 = alloca [3 x float], align 4
  %27 = mul i32 %20, 540
  %28 = add i32 %27, 512
  %29 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %28, i32 undef)  ; BufferLoad(srv,index,wot)
  %30 = extractvalue %dx.types.ResRet.i32 %29, 0
  %31 = add i32 %27, 516
  %32 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %31, i32 undef)  ; BufferLoad(srv,index,wot)
  %33 = add i32 %27, 528
  %34 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %33, i32 undef)  ; BufferLoad(srv,index,wot)
  %35 = and i32 %30, 65535
  %36 = lshr i32 %30, 16
  %37 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %38 = extractvalue %dx.types.CBufRet.i32 %37, 0
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %1023, !dx.controlflow.hints !38

; <label>:40                                      ; preds = %0
  %41 = extractvalue %dx.types.ResRet.f32 %34, 2
  %42 = extractvalue %dx.types.ResRet.f32 %34, 1
  %43 = extractvalue %dx.types.ResRet.f32 %34, 0
  %44 = extractvalue %dx.types.ResRet.f32 %32, 2
  %45 = extractvalue %dx.types.ResRet.f32 %32, 1
  %46 = extractvalue %dx.types.ResRet.f32 %32, 0
  %47 = mul nuw nsw i32 %35, 108
  %48 = add nuw nsw i32 %47, 96
  %49 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %48, i32 undef)  ; BufferLoad(srv,index,wot)
  %50 = add nuw nsw i32 %47, 100
  %51 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %50, i32 undef)  ; BufferLoad(srv,index,wot)
  %52 = extractvalue %dx.types.ResRet.i32 %51, 0
  %53 = mul nuw nsw i32 %35, 28
  %54 = add nuw nsw i32 %53, 12
  %55 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %54, i32 undef)  ; BufferLoad(srv,index,wot)
  %56 = extractvalue %dx.types.ResRet.i32 %55, 0
  %57 = add nuw nsw i32 %53, 16
  %58 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %57, i32 undef)  ; BufferLoad(srv,index,wot)
  %59 = extractvalue %dx.types.ResRet.f32 %58, 1
  %60 = and i32 %56, 255
  %61 = lshr i32 %56, 8
  %62 = and i32 %61, 255
  %63 = lshr i32 %56, 16
  %64 = and i32 %63, 255
  %65 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.i32 %65, 1
  %67 = and i32 %52, 65535
  %68 = lshr i32 %52, 19
  %69 = and i32 %68, 4095
  %70 = mul nuw nsw i32 %62, %60
  %71 = mul nuw nsw i32 %70, %64
  %72 = icmp eq i32 %69, %71
  %73 = icmp ne i32 %66, 0
  %74 = icmp ne i32 %67, 65535
  %75 = and i1 %74, %73
  %76 = and i1 %75, %72
  %77 = shl i32 %21, 2
  %78 = add i32 %77, %27
  %79 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %78, i32 undef)  ; BufferLoad(srv,index,wot)
  %80 = extractvalue %dx.types.ResRet.i32 %79, 0
  %81 = and i32 %80, 65535
  %82 = lshr i32 %80, 16
  %83 = mul nuw nsw i32 %82, 84
  %84 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %83, i32 undef)  ; BufferLoad(srv,index,wot)
  %85 = extractvalue %dx.types.ResRet.f32 %84, 0
  %86 = extractvalue %dx.types.ResRet.f32 %84, 1
  %87 = extractvalue %dx.types.ResRet.f32 %84, 2
  %88 = extractvalue %dx.types.ResRet.f32 %84, 3
  %89 = add nuw nsw i32 %83, 16
  %90 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %89, i32 undef)  ; BufferLoad(srv,index,wot)
  %91 = extractvalue %dx.types.ResRet.f32 %90, 0
  %92 = extractvalue %dx.types.ResRet.f32 %90, 1
  %93 = extractvalue %dx.types.ResRet.f32 %90, 2
  %94 = extractvalue %dx.types.ResRet.f32 %90, 3
  %95 = add nuw nsw i32 %83, 32
  %96 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %95, i32 undef)  ; BufferLoad(srv,index,wot)
  %97 = extractvalue %dx.types.ResRet.f32 %96, 0
  %98 = extractvalue %dx.types.ResRet.f32 %96, 1
  %99 = extractvalue %dx.types.ResRet.f32 %96, 2
  %100 = add nuw nsw i32 %83, 44
  %101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %100, i32 undef)  ; BufferLoad(srv,index,wot)
  %102 = extractvalue %dx.types.ResRet.f32 %101, 0
  %103 = extractvalue %dx.types.ResRet.f32 %101, 1
  %104 = extractvalue %dx.types.ResRet.f32 %101, 2
  %105 = add nuw nsw i32 %83, 56
  %106 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %105, i32 undef)  ; BufferLoad(srv,index,wot)
  %107 = extractvalue %dx.types.ResRet.f32 %106, 0
  %108 = extractvalue %dx.types.ResRet.f32 %106, 1
  %109 = extractvalue %dx.types.ResRet.f32 %106, 2
  %110 = add nuw nsw i32 %83, 68
  %111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %110, i32 undef)  ; BufferLoad(srv,index,wot)
  %112 = extractvalue %dx.types.ResRet.f32 %111, 0
  %113 = extractvalue %dx.types.ResRet.f32 %111, 1
  %114 = extractvalue %dx.types.ResRet.f32 %111, 2
  %115 = add nuw nsw i32 %83, 80
  %116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %115, i32 undef)  ; BufferLoad(srv,index,wot)
  %117 = extractvalue %dx.types.ResRet.i32 %116, 0
  %118 = and i32 %117, 255
  %119 = lshr i32 %117, 8
  %120 = and i32 %119, 255
  %121 = lshr i32 %117, 16
  %122 = and i32 %121, 255
  %123 = and i32 %117, 16777216
  %124 = icmp ne i32 %123, 0
  %125 = and i32 %117, 33554432
  %126 = icmp ne i32 %125, 0
  %127 = and i32 %117, 67108864
  %128 = icmp ne i32 %127, 0
  %129 = fsub fast float %112, %107
  %130 = fsub fast float %113, %108
  %131 = fsub fast float %114, %109
  %132 = uitofp i32 %118 to float
  %133 = fadd fast float %132, 1.000000e+00
  %134 = fdiv fast float %129, %133
  %135 = uitofp i32 %120 to float
  %136 = select i1 %124, float -1.000000e+00, float 1.000000e+00
  %137 = fadd float %135, %136
  %138 = fdiv fast float %130, %137
  %139 = uitofp i32 %122 to float
  %140 = fadd fast float %139, 1.000000e+00
  %141 = fdiv fast float %131, %140
  %142 = mul nuw nsw i32 %120, %118
  %143 = udiv i32 %81, %142
  %144 = mul nuw i32 %143, %142
  %145 = sub i32 %81, %144
  %146 = udiv i32 %145, %118
  %147 = urem i32 %145, %118
  %148 = add nuw nsw i32 %147, 1
  %149 = uitofp i32 %148 to float
  %150 = fmul fast float %149, %134
  %151 = fadd fast float %150, %107
  %152 = lshr exact i32 %123, 24
  %153 = xor i32 %152, 1
  %154 = add i32 %146, %153
  %155 = uitofp i32 %154 to float
  %156 = fmul fast float %155, %138
  %157 = fadd fast float %156, %108
  %158 = icmp ne i32 %146, 0
  %159 = and i1 %126, %158
  %160 = add nsw i32 %120, -1
  %161 = icmp ult i32 %146, %160
  %162 = and i1 %161, %159
  %163 = mul nuw nsw i32 %143, %120
  %164 = add nuw nsw i32 %143, 1
  %165 = select i1 %162, i32 %163, i32 %164
  %166 = uitofp i32 %165 to float
  %167 = fmul fast float %166, %141
  %168 = fadd fast float %167, %109
  %169 = fmul fast float %168, %86
  %170 = fmul fast float %157, %87
  %171 = fsub fast float %169, %170
  %172 = fmul fast float %151, %87
  %173 = fmul fast float %168, %85
  %174 = fsub fast float %172, %173
  %175 = fmul fast float %157, %85
  %176 = fmul fast float %151, %86
  %177 = fsub fast float %175, %176
  %178 = fmul fast float %171, 2.000000e+00
  %179 = fmul fast float %174, 2.000000e+00
  %180 = fmul fast float %177, 2.000000e+00
  %181 = fmul fast float %178, %88
  %182 = fmul fast float %179, %88
  %183 = fmul fast float %180, %88
  %184 = fmul fast float %180, %86
  %185 = fmul fast float %179, %87
  %186 = fmul fast float %178, %87
  %187 = fmul fast float %180, %85
  %188 = fmul fast float %179, %85
  %189 = fmul fast float %178, %86
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 0
  %192 = extractvalue %dx.types.CBufRet.f32 %190, 1
  %193 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %194 = fadd fast float %191, %97
  %195 = fadd fast float %192, %98
  %196 = fadd fast float %193, %99
  %197 = select i1 %128, float %194, float %97
  %198 = select i1 %128, float %195, float %98
  %199 = select i1 %128, float %196, float %99
  %200 = fadd fast float %197, %151
  %201 = fadd fast float %200, %184
  %202 = fadd fast float %201, %181
  %203 = fsub fast float %202, %185
  %204 = fadd fast float %198, %157
  %205 = fsub fast float %204, %187
  %206 = fadd fast float %205, %182
  %207 = fadd fast float %206, %186
  %208 = fadd fast float %168, %199
  %209 = fadd fast float %208, %183
  %210 = fsub fast float %209, %189
  %211 = fadd fast float %210, %188
  %212 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 0
  store float %203, float* %212, align 4
  %213 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 1
  store float %207, float* %213, align 4
  %214 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 2
  store float %211, float* %214, align 4
  %215 = fmul fast float %168, %92
  %216 = fmul fast float %157, %93
  %217 = fsub fast float %215, %216
  %218 = fmul fast float %151, %93
  %219 = fmul fast float %168, %91
  %220 = fsub fast float %218, %219
  %221 = fmul fast float %157, %91
  %222 = fmul fast float %151, %92
  %223 = fsub fast float %221, %222
  %224 = fmul fast float %217, 2.000000e+00
  %225 = fmul fast float %220, 2.000000e+00
  %226 = fmul fast float %223, 2.000000e+00
  %227 = fmul fast float %224, %94
  %228 = fmul fast float %225, %94
  %229 = fmul fast float %226, %94
  %230 = fmul fast float %226, %92
  %231 = fmul fast float %225, %93
  %232 = fmul fast float %224, %93
  %233 = fmul fast float %226, %91
  %234 = fmul fast float %225, %91
  %235 = fmul fast float %224, %92
  %236 = fadd fast float %102, %46
  %237 = fadd fast float %236, %151
  %238 = fadd fast float %237, %230
  %239 = fadd fast float %238, %227
  %240 = fsub fast float %239, %231
  %241 = fadd fast float %103, %45
  %242 = fadd fast float %241, %157
  %243 = fsub fast float %242, %233
  %244 = fadd fast float %243, %228
  %245 = fadd fast float %244, %232
  %246 = fadd fast float %104, %44
  %247 = fadd fast float %246, %168
  %248 = fadd fast float %247, %229
  %249 = fsub fast float %248, %235
  %250 = fadd fast float %249, %234
  %251 = fdiv fast float %240, %43
  %252 = fdiv fast float %245, %42
  %253 = fdiv fast float %250, %41
  %254 = call float @dx.op.unary.f32(i32 7, float %251)  ; Saturate(value)
  %255 = call float @dx.op.unary.f32(i32 7, float %252)  ; Saturate(value)
  %256 = call float @dx.op.unary.f32(i32 7, float %253)  ; Saturate(value)
  br label %257

; <label>:257                                     ; preds = %40
  %258 = fmul fast float %254, 4.000000e+00
  %259 = fmul fast float %256, 8.000000e+00
  %260 = fmul fast float %255, 8.000000e+00
  %261 = shl i32 %21, 1
  %262 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i32 0, i32 0
  store i32 %261, i32* %262, align 4, !tbaa !39
  %263 = add i32 %261, %67
  %264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %263, i32 0)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.f32 %264, 0
  %266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %263, i32 4)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.f32 %266, 0
  %268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %263, i32 8)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = udiv i32 %261, %70
  %271 = urem i32 %261, %70
  %272 = udiv i32 %271, %60
  %273 = urem i32 %271, %60
  %274 = getelementptr [2 x i32], [2 x i32]* %22, i32 0, i32 0
  %275 = getelementptr [2 x i32], [2 x i32]* %23, i32 0, i32 0
  %276 = getelementptr [2 x i32], [2 x i32]* %24, i32 0, i32 0
  store i32 %273, i32* %274, align 4
  store i32 %272, i32* %275, align 4
  store i32 %270, i32* %276, align 4
  %277 = fmul fast float %265, 6.553500e+04
  %278 = fptosi float %277 to i32
  %279 = select i1 %76, i32 %278, i32 0
  %280 = mul i32 %273, 8
  %281 = add i32 %272, %280
  %282 = mul i32 %281, 4
  %283 = add i32 %270, %282
  %284 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?g_skinnedVolumeGridValuesWetness@@3PAY173$$CAHA.1dim", i32 0, i32 %283
  store i32 %279, i32 addrspace(3)* %284, align 4, !tbaa !39
  %285 = fmul fast float %267, 6.553500e+04
  %286 = fptosi float %285 to i32
  %287 = select i1 %76, i32 %286, i32 0
  %288 = mul i32 %273, 8
  %289 = add i32 %272, %288
  %290 = mul i32 %289, 4
  %291 = add i32 %270, %290
  %292 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?g_skinnedVolumeGridValuesDust@@3PAY173$$CAHA.1dim", i32 0, i32 %291
  store i32 %287, i32 addrspace(3)* %292, align 4, !tbaa !39
  %293 = fmul fast float %269, 6.553500e+04
  %294 = fptosi float %293 to i32
  %295 = select i1 %76, i32 %294, i32 0
  %296 = mul i32 %273, 8
  %297 = add i32 %272, %296
  %298 = mul i32 %297, 4
  %299 = add i32 %270, %298
  %300 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?g_skinnedVolumeGridValuesSnow@@3PAY173$$CAHA.1dim", i32 0, i32 %299
  store i32 %295, i32 addrspace(3)* %300, align 4, !tbaa !39
  %301 = shl i32 %21, 1
  %302 = or i32 %301, 1
  %303 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i32 0, i32 1
  store i32 %302, i32* %303, align 4, !tbaa !39
  %304 = add i32 %302, %67
  %305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %304, i32 0)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.f32 %305, 0
  %307 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %304, i32 4)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.f32 %307, 0
  %309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %304, i32 8)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.f32 %309, 0
  %311 = udiv i32 %302, %70
  %312 = urem i32 %302, %70
  %313 = udiv i32 %312, %60
  %314 = urem i32 %312, %60
  %315 = getelementptr [2 x i32], [2 x i32]* %22, i32 0, i32 1
  %316 = getelementptr [2 x i32], [2 x i32]* %23, i32 0, i32 1
  %317 = getelementptr [2 x i32], [2 x i32]* %24, i32 0, i32 1
  store i32 %314, i32* %315, align 4
  store i32 %313, i32* %316, align 4
  store i32 %311, i32* %317, align 4
  %318 = fmul fast float %306, 6.553500e+04
  %319 = fptosi float %318 to i32
  %320 = select i1 %76, i32 %319, i32 0
  %321 = mul i32 %314, 8
  %322 = add i32 %313, %321
  %323 = mul i32 %322, 4
  %324 = add i32 %311, %323
  %325 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?g_skinnedVolumeGridValuesWetness@@3PAY173$$CAHA.1dim", i32 0, i32 %324
  store i32 %320, i32 addrspace(3)* %325, align 4, !tbaa !39
  %326 = fmul fast float %308, 6.553500e+04
  %327 = fptosi float %326 to i32
  %328 = select i1 %76, i32 %327, i32 0
  %329 = mul i32 %314, 8
  %330 = add i32 %313, %329
  %331 = mul i32 %330, 4
  %332 = add i32 %311, %331
  %333 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?g_skinnedVolumeGridValuesDust@@3PAY173$$CAHA.1dim", i32 0, i32 %332
  store i32 %328, i32 addrspace(3)* %333, align 4, !tbaa !39
  %334 = fmul fast float %310, 6.553500e+04
  %335 = fptosi float %334 to i32
  %336 = select i1 %76, i32 %335, i32 0
  %337 = mul i32 %314, 8
  %338 = add i32 %313, %337
  %339 = mul i32 %338, 4
  %340 = add i32 %311, %339
  %341 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?g_skinnedVolumeGridValuesSnow@@3PAY173$$CAHA.1dim", i32 0, i32 %340
  store i32 %336, i32 addrspace(3)* %341, align 4, !tbaa !39
  %342 = extractvalue %dx.types.ResRet.i32 %49, 0
  %343 = extractvalue %dx.types.ResRet.f32 %58, 0
  %344 = extractvalue %dx.types.ResRet.f32 %58, 2
  %345 = icmp eq i32 %342, 0
  %346 = and i32 %342, 65535
  %347 = fptoui float %260 to i32
  %348 = fptoui float %259 to i32
  %349 = fptoui float %258 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %350 = icmp ult i32 %21, %36
  br i1 %350, label %351, label %966, !dx.controlflow.hints !43

; <label>:351                                     ; preds = %257
  %352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 151)  ; CBufferLoadLegacy(handle,regIndex)
  %353 = extractvalue %dx.types.CBufRet.f32 %352, 0
  %354 = extractvalue %dx.types.CBufRet.f32 %352, 1
  %355 = extractvalue %dx.types.CBufRet.f32 %352, 2
  %356 = extractvalue %dx.types.CBufRet.f32 %352, 3
  %357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 152)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.f32 %357, 0
  %359 = extractvalue %dx.types.CBufRet.f32 %357, 1
  %360 = extractvalue %dx.types.CBufRet.f32 %357, 2
  %361 = extractvalue %dx.types.CBufRet.f32 %357, 3
  %362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 153)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.f32 %362, 0
  %364 = extractvalue %dx.types.CBufRet.f32 %362, 1
  %365 = extractvalue %dx.types.CBufRet.f32 %362, 2
  %366 = extractvalue %dx.types.CBufRet.f32 %362, 3
  %367 = fmul fast float %203, %353
  %368 = call float @dx.op.tertiary.f32(i32 46, float %207, float %354, float %367)  ; FMad(a,b,c)
  %369 = call float @dx.op.tertiary.f32(i32 46, float %211, float %355, float %368)  ; FMad(a,b,c)
  %370 = fadd fast float %369, %356
  %371 = fmul fast float %203, %358
  %372 = call float @dx.op.tertiary.f32(i32 46, float %207, float %359, float %371)  ; FMad(a,b,c)
  %373 = call float @dx.op.tertiary.f32(i32 46, float %211, float %360, float %372)  ; FMad(a,b,c)
  %374 = fadd fast float %373, %361
  %375 = fmul fast float %203, %363
  %376 = call float @dx.op.tertiary.f32(i32 46, float %207, float %364, float %375)  ; FMad(a,b,c)
  %377 = call float @dx.op.tertiary.f32(i32 46, float %211, float %365, float %376)  ; FMad(a,b,c)
  %378 = fadd fast float %377, %366
  %379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %370, float %374, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %380 = extractvalue %dx.types.ResRet.f32 %379, 0
  %381 = fsub fast float %378, %380
  %382 = call float @dx.op.unary.f32(i32 6, float %381)  ; FAbs(value)
  %383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %384 = extractvalue %dx.types.CBufRet.f32 %383, 1
  %385 = fmul fast float %384, %382
  %386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %387 = extractvalue %dx.types.CBufRet.f32 %386, 2
  %388 = call float @dx.op.binary.f32(i32 35, float %385, float 0.000000e+00)  ; FMax(a,b)
  %389 = call float @dx.op.binary.f32(i32 36, float %388, float %387)  ; FMin(a,b)
  %390 = extractvalue %dx.types.CBufRet.f32 %386, 3
  %391 = fmul fast float %390, %389
  %392 = fsub fast float 1.000000e+00, %391
  %393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %394 = extractvalue %dx.types.CBufRet.f32 %393, 0
  %395 = extractvalue %dx.types.CBufRet.f32 %393, 1
  %396 = extractvalue %dx.types.CBufRet.f32 %393, 2
  %397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 371)  ; CBufferLoadLegacy(handle,regIndex)
  %398 = extractvalue %dx.types.CBufRet.f32 %397, 0
  %399 = extractvalue %dx.types.CBufRet.f32 %397, 1
  %400 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.i32 %400, 3
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %518, label %403, !dx.controlflow.hints !44

; <label>:403                                     ; preds = %351
  br label %404

; <label>:404                                     ; preds = %404, %403
  %405 = phi i32 [ %419, %404 ], [ 0, %403 ]
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %405, i32 0)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %405, i32 4)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = lshr i32 %407, 30
  %411 = getelementptr [3 x float], [3 x float]* %26, i32 0, i32 %410
  %412 = load float, float* %411, align 4, !tbaa !45
  %413 = and i32 %407, 1048575
  %414 = uitofp i32 %413 to float
  %415 = fadd fast float %414, -5.242880e+05
  %416 = fcmp fast olt float %412, %415
  %417 = and i32 %409, 65535
  %418 = lshr i32 %409, 16
  %419 = select i1 %416, i32 %417, i32 %418
  %420 = and i32 %419, 32768
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %404, label %422

; <label>:422                                     ; preds = %404
  %423 = and i32 %419, 32767
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = lshr i32 %425, 22
  %427 = and i32 %425, 4194303
  %428 = icmp eq i32 %426, 0
  br i1 %428, label %518, label %429

; <label>:429                                     ; preds = %422
  br label %430

; <label>:430                                     ; preds = %509, %429
  %431 = phi float [ %510, %509 ], [ %394, %429 ]
  %432 = phi float [ %511, %509 ], [ %395, %429 ]
  %433 = phi float [ %512, %509 ], [ %396, %429 ]
  %434 = phi float [ %513, %509 ], [ %398, %429 ]
  %435 = phi float [ %514, %509 ], [ %399, %429 ]
  %436 = phi i32 [ %515, %509 ], [ 0, %429 ]
  %437 = add nuw nsw i32 %436, %427
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = mul i32 %439, 60
  %441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.f32 %441, 0
  %443 = extractvalue %dx.types.ResRet.f32 %441, 1
  %444 = extractvalue %dx.types.ResRet.f32 %441, 2
  %445 = add i32 %440, 12
  %446 = add i32 %440, 48
  %447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.f32 %447, 0
  %449 = extractvalue %dx.types.ResRet.f32 %447, 1
  %450 = extractvalue %dx.types.ResRet.f32 %447, 2
  %451 = fsub fast float %203, %442
  %452 = fsub fast float %207, %443
  %453 = fsub fast float %211, %444
  %454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.f32 %454, 0
  %456 = extractvalue %dx.types.ResRet.f32 %454, 1
  %457 = extractvalue %dx.types.ResRet.f32 %454, 2
  %458 = call float @dx.op.dot3.f32(i32 55, float %451, float %452, float %453, float %455, float %456, float %457)  ; Dot3(ax,ay,az,bx,by,bz)
  %459 = add i32 %440, 24
  %460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.f32 %460, 0
  %462 = extractvalue %dx.types.ResRet.f32 %460, 1
  %463 = extractvalue %dx.types.ResRet.f32 %460, 2
  %464 = call float @dx.op.dot3.f32(i32 55, float %451, float %452, float %453, float %461, float %462, float %463)  ; Dot3(ax,ay,az,bx,by,bz)
  %465 = add i32 %440, 36
  %466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.f32 %466, 0
  %468 = extractvalue %dx.types.ResRet.f32 %466, 1
  %469 = extractvalue %dx.types.ResRet.f32 %466, 2
  %470 = call float @dx.op.dot3.f32(i32 55, float %451, float %452, float %453, float %467, float %468, float %469)  ; Dot3(ax,ay,az,bx,by,bz)
  %471 = call float @dx.op.unary.f32(i32 6, float %458)  ; FAbs(value)
  %472 = call float @dx.op.unary.f32(i32 6, float %464)  ; FAbs(value)
  %473 = call float @dx.op.unary.f32(i32 6, float %470)  ; FAbs(value)
  %474 = fcmp fast ogt float %471, %448
  %475 = fcmp fast ogt float %472, %449
  %476 = fcmp fast ogt float %473, %450
  %477 = or i1 %474, %475
  %478 = or i1 %477, %476
  br i1 %478, label %509, label %479, !dx.controlflow.hints !47

; <label>:479                                     ; preds = %430
  %480 = mul i32 %439, 24
  %481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.f32 %481, 0
  %483 = extractvalue %dx.types.ResRet.f32 %481, 1
  %484 = extractvalue %dx.types.ResRet.f32 %481, 2
  %485 = extractvalue %dx.types.ResRet.f32 %481, 3
  %486 = add i32 %480, 16
  %487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.f32 %487, 0
  %489 = extractvalue %dx.types.ResRet.f32 %487, 1
  %490 = fsub fast float %448, %471
  %491 = fsub fast float %449, %472
  %492 = call float @dx.op.binary.f32(i32 36, float %490, float %491)  ; FMin(a,b)
  %493 = fdiv fast float %492, %485
  %494 = call float @dx.op.unary.f32(i32 7, float %493)  ; Saturate(value)
  %495 = fmul fast float %494, 2.000000e+00
  %496 = fsub fast float 3.000000e+00, %495
  %497 = fmul fast float %494, %494
  %498 = fmul fast float %497, %496
  %499 = fmul fast float %498, %482
  %500 = fadd fast float %499, %431
  %501 = fmul fast float %498, %483
  %502 = fadd fast float %501, %432
  %503 = fmul fast float %498, %484
  %504 = fadd fast float %503, %433
  %505 = fmul fast float %498, %488
  %506 = fadd fast float %505, %434
  %507 = fmul fast float %498, %489
  %508 = fadd fast float %507, %435
  br label %509

; <label>:509                                     ; preds = %479, %430
  %510 = phi float [ %431, %430 ], [ %500, %479 ]
  %511 = phi float [ %432, %430 ], [ %502, %479 ]
  %512 = phi float [ %433, %430 ], [ %504, %479 ]
  %513 = phi float [ %434, %430 ], [ %506, %479 ]
  %514 = phi float [ %435, %430 ], [ %508, %479 ]
  %515 = add nuw nsw i32 %436, 1
  %516 = icmp eq i32 %515, %426
  br i1 %516, label %517, label %430, !llvm.loop !48

; <label>:517                                     ; preds = %509
  br label %518

; <label>:518                                     ; preds = %517, %422, %351
  %519 = phi float [ %394, %351 ], [ %394, %422 ], [ %510, %517 ]
  %520 = phi float [ %395, %351 ], [ %395, %422 ], [ %511, %517 ]
  %521 = phi float [ %396, %351 ], [ %396, %422 ], [ %512, %517 ]
  %522 = phi float [ %398, %351 ], [ %398, %422 ], [ %513, %517 ]
  %523 = phi float [ %399, %351 ], [ %399, %422 ], [ %514, %517 ]
  %524 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %525 = extractvalue %dx.types.CBufRet.i32 %524, 0
  %526 = and i32 %525, 16
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %582, label %528, !dx.controlflow.hints !50

; <label>:528                                     ; preds = %518
  %529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 377)  ; CBufferLoadLegacy(handle,regIndex)
  %530 = extractvalue %dx.types.CBufRet.f32 %529, 0
  %531 = extractvalue %dx.types.CBufRet.f32 %529, 1
  %532 = extractvalue %dx.types.CBufRet.f32 %529, 2
  %533 = fsub fast float %203, %530
  %534 = fsub fast float %207, %531
  %535 = fsub fast float %211, %532
  %536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 378)  ; CBufferLoadLegacy(handle,regIndex)
  %537 = extractvalue %dx.types.CBufRet.f32 %536, 0
  %538 = extractvalue %dx.types.CBufRet.f32 %536, 1
  %539 = extractvalue %dx.types.CBufRet.f32 %536, 2
  %540 = fmul fast float %533, %537
  %541 = fmul fast float %534, %538
  %542 = fmul fast float %535, %539
  %543 = fcmp fast oge float %540, 0.000000e+00
  %544 = fcmp fast oge float %541, 0.000000e+00
  %545 = fcmp fast oge float %542, 0.000000e+00
  %546 = and i1 %543, %544
  %547 = and i1 %545, %546
  %548 = fcmp fast ole float %540, 1.000000e+00
  %549 = fcmp fast ole float %541, 1.000000e+00
  %550 = fcmp fast ole float %542, 1.000000e+00
  %551 = and i1 %548, %549
  %552 = and i1 %550, %551
  %553 = and i1 %547, %552
  br i1 %553, label %554, label %582, !dx.controlflow.hints !51

; <label>:554                                     ; preds = %528
  %555 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %556 = extractvalue %dx.types.CBufRet.i32 %555, 0
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %563, label %558, !dx.controlflow.hints !52

; <label>:558                                     ; preds = %554
  %559 = add i32 %556, 0
  %560 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %559, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %561 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %560, %dx.types.Handle %17, float %540, float %541, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %562 = extractvalue %dx.types.ResRet.f32 %561, 0
  br label %563

; <label>:563                                     ; preds = %558, %554
  %564 = phi float [ %562, %558 ], [ 1.000000e+00, %554 ]
  %565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %566 = extractvalue %dx.types.CBufRet.f32 %565, 1
  %567 = fmul fast float %566, %564
  %568 = fadd fast float %567, %519
  %569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 380)  ; CBufferLoadLegacy(handle,regIndex)
  %570 = extractvalue %dx.types.CBufRet.f32 %569, 0
  %571 = fmul fast float %570, %564
  %572 = fadd fast float %571, %520
  %573 = extractvalue %dx.types.CBufRet.f32 %569, 1
  %574 = fmul fast float %573, %564
  %575 = fadd fast float %574, %521
  %576 = extractvalue %dx.types.CBufRet.f32 %569, 3
  %577 = fmul fast float %576, %564
  %578 = fadd fast float %577, %523
  %579 = extractvalue %dx.types.CBufRet.f32 %569, 2
  %580 = fmul fast float %579, %564
  %581 = fadd fast float %580, %522
  br label %582

; <label>:582                                     ; preds = %563, %528, %518
  %583 = phi float [ %568, %563 ], [ %519, %528 ], [ %519, %518 ]
  %584 = phi float [ %572, %563 ], [ %520, %528 ], [ %520, %518 ]
  %585 = phi float [ %575, %563 ], [ %521, %528 ], [ %521, %518 ]
  %586 = phi float [ %581, %563 ], [ %522, %528 ], [ %522, %518 ]
  %587 = phi float [ %578, %563 ], [ %523, %528 ], [ %523, %518 ]
  %588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %589 = extractvalue %dx.types.CBufRet.f32 %588, 0
  %590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %591 = extractvalue %dx.types.CBufRet.f32 %590, 0
  %592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %593 = extractvalue %dx.types.CBufRet.f32 %592, 0
  %594 = extractvalue %dx.types.CBufRet.f32 %588, 1
  %595 = extractvalue %dx.types.CBufRet.f32 %590, 1
  %596 = extractvalue %dx.types.CBufRet.f32 %592, 1
  %597 = extractvalue %dx.types.CBufRet.f32 %588, 3
  %598 = extractvalue %dx.types.CBufRet.f32 %590, 3
  %599 = extractvalue %dx.types.CBufRet.f32 %592, 3
  %600 = fadd fast float %597, %203
  %601 = fadd fast float %598, %207
  %602 = fadd fast float %599, %211
  %603 = fmul fast float %600, %589
  %604 = call float @dx.op.tertiary.f32(i32 46, float %601, float %591, float %603)  ; FMad(a,b,c)
  %605 = call float @dx.op.tertiary.f32(i32 46, float %602, float %593, float %604)  ; FMad(a,b,c)
  %606 = fmul fast float %600, %594
  %607 = call float @dx.op.tertiary.f32(i32 46, float %601, float %595, float %606)  ; FMad(a,b,c)
  %608 = call float @dx.op.tertiary.f32(i32 46, float %602, float %596, float %607)  ; FMad(a,b,c)
  %609 = fsub fast float %605, %597
  %610 = fsub fast float %608, %598
  %611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %612 = extractvalue %dx.types.CBufRet.f32 %611, 0
  %613 = extractvalue %dx.types.CBufRet.f32 %611, 1
  %614 = extractvalue %dx.types.CBufRet.f32 %611, 2
  %615 = fsub fast float %609, %612
  %616 = fadd fast float %615, %614
  %617 = fsub fast float %610, %613
  %618 = fadd fast float %617, %614
  %619 = extractvalue %dx.types.CBufRet.f32 %611, 3
  %620 = fmul fast float %616, %619
  %621 = fmul fast float %618, %619
  %622 = call float @dx.op.unary.f32(i32 7, float %620)  ; Saturate(value)
  %623 = call float @dx.op.unary.f32(i32 7, float %621)  ; Saturate(value)
  %624 = fsub fast float 1.000000e+00, %622
  %625 = fsub fast float 1.000000e+00, %623
  %626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %17, float %624, float %625, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %627 = extractvalue %dx.types.ResRet.f32 %626, 0
  %628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %629 = extractvalue %dx.types.CBufRet.f32 %628, 2
  %630 = fmul fast float %629, %627
  %631 = extractvalue %dx.types.CBufRet.f32 %628, 3
  %632 = fadd fast float %631, %630
  %633 = extractvalue %dx.types.CBufRet.f32 %592, 2
  %634 = fadd fast float %632, %599
  %635 = fmul fast float %605, %593
  %636 = call float @dx.op.tertiary.f32(i32 46, float %608, float %596, float %635)  ; FMad(a,b,c)
  %637 = call float @dx.op.tertiary.f32(i32 46, float %634, float %633, float %636)  ; FMad(a,b,c)
  %638 = fsub fast float %637, %599
  %639 = fcmp fast ogt float %627, 0.000000e+00
  %640 = fcmp fast ole float %211, %638
  %641 = and i1 %639, %640
  %642 = fcmp fast ogt float %381, 0.000000e+00
  %643 = fcmp fast ogt float %584, 0.000000e+00
  %644 = and i1 %642, %643
  %645 = and i1 %639, %640
  %646 = xor i1 %645, true
  %647 = and i1 %644, %646
  br i1 %345, label %721, label %648, !dx.controlflow.hints !53

; <label>:648                                     ; preds = %582
  br label %649

; <label>:649                                     ; preds = %713, %648
  %650 = phi float [ %714, %713 ], [ 0.000000e+00, %648 ]
  %651 = phi float [ %715, %713 ], [ 0.000000e+00, %648 ]
  %652 = phi i32 [ %717, %713 ], [ 0, %648 ]
  %653 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %654 = extractvalue %dx.types.CBufRet.i32 %653, 3
  %655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 0, i32 0)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.i32 %655, 0
  %657 = call i32 @dx.op.binary.i32(i32 40, i32 %656, i32 %654)  ; UMin(a,b)
  %658 = icmp ult i32 %652, %657
  br i1 %658, label %659, label %718

; <label>:659                                     ; preds = %649
  %660 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %652, i32 48)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.f32 %660, 0
  %662 = extractvalue %dx.types.ResRet.f32 %660, 1
  %663 = extractvalue %dx.types.ResRet.f32 %660, 2
  %664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %652, i32 0)  ; BufferLoad(srv,index,wot)
  %665 = extractvalue %dx.types.ResRet.f32 %664, 0
  %666 = extractvalue %dx.types.ResRet.f32 %664, 1
  %667 = extractvalue %dx.types.ResRet.f32 %664, 2
  %668 = fsub fast float %203, %665
  %669 = fsub fast float %207, %666
  %670 = fsub fast float %211, %667
  %671 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %652, i32 12)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.f32 %671, 0
  %673 = extractvalue %dx.types.ResRet.f32 %671, 1
  %674 = extractvalue %dx.types.ResRet.f32 %671, 2
  %675 = call float @dx.op.dot3.f32(i32 55, float %668, float %669, float %670, float %672, float %673, float %674)  ; Dot3(ax,ay,az,bx,by,bz)
  %676 = call float @dx.op.unary.f32(i32 6, float %675)  ; FAbs(value)
  %677 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %652, i32 24)  ; BufferLoad(srv,index,wot)
  %678 = extractvalue %dx.types.ResRet.f32 %677, 0
  %679 = extractvalue %dx.types.ResRet.f32 %677, 1
  %680 = extractvalue %dx.types.ResRet.f32 %677, 2
  %681 = call float @dx.op.dot3.f32(i32 55, float %668, float %669, float %670, float %678, float %679, float %680)  ; Dot3(ax,ay,az,bx,by,bz)
  %682 = call float @dx.op.unary.f32(i32 6, float %681)  ; FAbs(value)
  %683 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %652, i32 36)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.f32 %683, 0
  %685 = extractvalue %dx.types.ResRet.f32 %683, 1
  %686 = extractvalue %dx.types.ResRet.f32 %683, 2
  %687 = call float @dx.op.dot3.f32(i32 55, float %668, float %669, float %670, float %684, float %685, float %686)  ; Dot3(ax,ay,az,bx,by,bz)
  %688 = call float @dx.op.unary.f32(i32 6, float %687)  ; FAbs(value)
  %689 = fcmp fast ole float %676, %661
  %690 = fcmp fast ole float %682, %662
  %691 = and i1 %689, %690
  %692 = fcmp fast ole float %688, %663
  %693 = and i1 %691, %692
  br i1 %693, label %694, label %701, !dx.controlflow.hints !54

; <label>:694                                     ; preds = %659
  %695 = fdiv fast float %688, %663
  %696 = fdiv fast float %682, %662
  %697 = call float @dx.op.binary.f32(i32 35, float %696, float %695)  ; FMax(a,b)
  %698 = fdiv fast float %676, %661
  %699 = call float @dx.op.binary.f32(i32 35, float %698, float %697)  ; FMax(a,b)
  %700 = fsub fast float 1.000000e+00, %699
  br label %701

; <label>:701                                     ; preds = %694, %659
  %702 = phi float [ %700, %694 ], [ 0.000000e+00, %659 ]
  br i1 %693, label %703, label %713, !dx.controlflow.hints !55

; <label>:703                                     ; preds = %701
  %704 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %652, i32 60)  ; BufferLoad(srv,index,wot)
  %705 = extractvalue %dx.types.ResRet.f32 %704, 0
  %706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %707 = extractvalue %dx.types.CBufRet.f32 %706, 2
  %708 = fmul fast float %702, %392
  %709 = fmul fast float %708, %705
  %710 = fmul fast float %709, %707
  %711 = fadd fast float %710, %650
  %712 = call float @dx.op.binary.f32(i32 35, float %651, float %711)  ; FMax(a,b)
  br label %713

; <label>:713                                     ; preds = %703, %701
  %714 = phi float [ %711, %703 ], [ %650, %701 ]
  %715 = phi float [ %712, %703 ], [ %651, %701 ]
  %716 = fcmp fast ogt float %714, 1.000000e+00
  %717 = add i32 %652, 1
  br i1 %716, label %718, label %649, !dx.controlflow.hints !56

; <label>:718                                     ; preds = %713, %649
  %719 = phi float [ %650, %649 ], [ 1.000000e+00, %713 ]
  %720 = phi float [ %651, %649 ], [ %715, %713 ]
  br label %721

; <label>:721                                     ; preds = %718, %582
  %722 = phi float [ 0.000000e+00, %582 ], [ %719, %718 ]
  %723 = phi float [ 0.000000e+00, %582 ], [ %720, %718 ]
  %724 = fcmp fast ogt float %722, 0.000000e+00
  %725 = fcmp fast ole float %722, %723
  %726 = and i1 %724, %725
  %727 = fcmp fast ogt float %392, 0.000000e+00
  %728 = fcmp fast ogt float %583, 0.000000e+00
  %729 = and i1 %727, %728
  %730 = xor i1 %644, true
  %731 = or i1 %641, %730
  %732 = and i1 %729, %731
  %733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %734 = extractvalue %dx.types.CBufRet.f32 %733, 0
  %735 = select i1 %647, float %583, float %734
  %736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %737 = extractvalue %dx.types.CBufRet.f32 %736, 1
  %738 = fmul fast float %737, %584
  %739 = select i1 %647, float %738, float 0.000000e+00
  %740 = fmul fast float %737, %392
  %741 = select i1 %732, float %740, float 0.000000e+00
  %742 = select i1 %726, float %722, float 0.000000e+00
  %743 = fadd fast float %739, %742
  %744 = fadd fast float %743, %741
  %745 = select i1 %75, float %744, float %735
  %746 = fcmp fast ogt float %585, 0.000000e+00
  %747 = and i1 %642, %746
  %748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %749 = extractvalue %dx.types.CBufRet.f32 %748, 0
  %750 = fmul fast float %749, %585
  %751 = select i1 %747, float %750, float 0.000000e+00
  %752 = select i1 %75, float %751, float %585
  %753 = extractvalue %dx.types.CBufRet.f32 %748, 3
  %754 = select i1 %747, float %753, float 0.000000e+00
  %755 = extractvalue %dx.types.CBufRet.f32 %748, 2
  %756 = fmul fast float %755, %584
  %757 = extractvalue %dx.types.CBufRet.f32 %748, 1
  %758 = select i1 %647, float %756, float %757
  %759 = select i1 %641, float %755, float %758
  %760 = fcmp fast ogt float %587, 0.000000e+00
  %761 = and i1 %642, %760
  %762 = and i1 %761, %646
  %763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %764 = extractvalue %dx.types.CBufRet.f32 %763, 0
  %765 = fmul fast float %764, %587
  %766 = select i1 %762, float %765, float 0.000000e+00
  %767 = select i1 %75, float %766, float %586
  %768 = extractvalue %dx.types.CBufRet.f32 %763, 3
  %769 = select i1 %762, float %768, float 0.000000e+00
  %770 = extractvalue %dx.types.CBufRet.f32 %763, 2
  %771 = fmul fast float %770, %587
  %772 = extractvalue %dx.types.CBufRet.f32 %763, 1
  %773 = select i1 %762, float %771, float %772
  %774 = select i1 %641, float %770, float %773
  %775 = xor i1 %75, %76
  br i1 %775, label %776, label %809, !dx.controlflow.hints !57

; <label>:776                                     ; preds = %721
  %777 = icmp eq i32 %69, 0
  br i1 %777, label %798, label %778

; <label>:778                                     ; preds = %776
  %779 = and i32 %68, 4095
  br label %780

; <label>:780                                     ; preds = %780, %778
  %781 = phi float [ %794, %780 ], [ 0.000000e+00, %778 ]
  %782 = phi float [ %791, %780 ], [ 0.000000e+00, %778 ]
  %783 = phi float [ %788, %780 ], [ 0.000000e+00, %778 ]
  %784 = phi i32 [ %795, %780 ], [ 0, %778 ]
  %785 = add nuw nsw i32 %784, %67
  %786 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %785, i32 0)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.f32 %786, 0
  %788 = fadd fast float %787, %783
  %789 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %785, i32 4)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.f32 %789, 0
  %791 = fadd fast float %790, %782
  %792 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %785, i32 8)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.f32 %792, 0
  %794 = fadd fast float %793, %781
  %795 = add nuw nsw i32 %784, 1
  %796 = icmp eq i32 %795, %779
  br i1 %796, label %797, label %780

; <label>:797                                     ; preds = %780
  br label %798

; <label>:798                                     ; preds = %797, %776
  %799 = phi float [ 0.000000e+00, %776 ], [ %794, %797 ]
  %800 = phi float [ 0.000000e+00, %776 ], [ %791, %797 ]
  %801 = phi float [ 0.000000e+00, %776 ], [ %788, %797 ]
  %802 = uitofp i32 %69 to float
  %803 = fdiv fast float %801, %802
  %804 = call float @dx.op.unary.f32(i32 7, float %803)  ; Saturate(value)
  %805 = fdiv fast float %800, %802
  %806 = call float @dx.op.unary.f32(i32 7, float %805)  ; Saturate(value)
  %807 = fdiv fast float %799, %802
  %808 = call float @dx.op.unary.f32(i32 7, float %807)  ; Saturate(value)
  br label %809

; <label>:809                                     ; preds = %798, %721
  %810 = phi float [ %808, %798 ], [ %586, %721 ]
  %811 = phi float [ %806, %798 ], [ %585, %721 ]
  %812 = phi float [ %804, %798 ], [ %735, %721 ]
  %813 = uitofp i32 %347 to float
  %814 = fmul fast float %813, 1.250000e-01
  %815 = fsub fast float %255, %814
  %816 = fcmp fast ogt float %815, 6.250000e-02
  %817 = select i1 %816, i32 1, i32 -1
  %818 = uitofp i32 %348 to float
  %819 = fmul fast float %818, 1.250000e-01
  %820 = fsub fast float %256, %819
  %821 = fcmp fast ogt float %820, 6.250000e-02
  %822 = select i1 %821, i32 1, i32 -1
  %823 = uitofp i32 %349 to float
  %824 = fmul fast float %823, 2.500000e-01
  %825 = fsub fast float %254, %824
  %826 = fcmp fast ogt float %825, 1.250000e-01
  %827 = select i1 %826, i32 1, i32 -1
  br label %828

; <label>:828                                     ; preds = %962, %809
  %829 = phi i32 [ 0, %809 ], [ %963, %962 ]
  br label %830

; <label>:830                                     ; preds = %959, %828
  %831 = phi i32 [ 0, %828 ], [ %960, %959 ]
  br label %832

; <label>:832                                     ; preds = %956, %830
  %833 = phi i32 [ 0, %830 ], [ %957, %956 ]
  %834 = icmp ne i32 %833, 0
  %835 = select i1 %834, i32 %817, i32 0
  %836 = add nsw i32 %835, %347
  %837 = icmp ne i32 %831, 0
  %838 = select i1 %837, i32 %822, i32 0
  %839 = add nsw i32 %838, %348
  %840 = icmp ne i32 %829, 0
  %841 = select i1 %840, i32 %827, i32 0
  %842 = add nsw i32 %841, %349
  %843 = or i32 %836, %839
  %844 = icmp ult i32 %843, 8
  %845 = icmp ult i32 %842, 4
  %846 = and i1 %845, %844
  %847 = uitofp i32 %836 to float
  %848 = fmul fast float %847, 1.250000e-01
  %849 = uitofp i32 %839 to float
  %850 = fmul fast float %849, 1.250000e-01
  %851 = uitofp i32 %842 to float
  %852 = fmul fast float %851, 2.500000e-01
  %853 = fsub fast float %255, %848
  %854 = fsub fast float %256, %850
  %855 = fsub fast float %254, %852
  %856 = fmul fast float %853, %853
  %857 = fmul fast float %854, %854
  %858 = fmul fast float %855, %855
  %859 = fadd fast float %857, %858
  %860 = fadd fast float %859, %856
  %861 = call float @dx.op.unary.f32(i32 24, float %860)  ; Sqrt(value)
  %862 = fsub fast float 2.500000e-01, %861
  %863 = fmul fast float %862, 4.000000e+00
  %864 = select i1 %846, float %863, float 0.000000e+00
  %865 = call float @dx.op.unary.f32(i32 7, float %864)  ; Saturate(value)
  %866 = fcmp fast une float %865, 0.000000e+00
  br i1 %866, label %867, label %956, !dx.controlflow.hints !58

; <label>:867                                     ; preds = %832
  %868 = mul i32 %836, 8
  %869 = add i32 %839, %868
  %870 = mul i32 %869, 4
  %871 = add i32 %842, %870
  %872 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?g_skinnedVolumeGridValuesWetness@@3PAY173$$CAHA.1dim", i32 0, i32 %871
  %873 = load i32, i32 addrspace(3)* %872, align 4, !tbaa !39
  %874 = sitofp i32 %873 to float
  %875 = fmul fast float %874, 0x3EF0001000000000
  %876 = and i1 %75, %646
  %877 = xor i1 %732, %731
  %878 = and i1 %724, %725
  %879 = xor i1 %878, true
  %880 = fadd fast float %875, %745
  %881 = fcmp fast ogt float %880, %583
  %882 = or i1 %877, %881
  %883 = and i1 %882, %879
  %884 = and i1 %876, %883
  %885 = select i1 %647, float %583, float 0.000000e+00
  %886 = fsub fast float %583, %875
  %887 = call float @dx.op.unary.f32(i32 7, float %886)  ; Saturate(value)
  %888 = select i1 %726, float 1.000000e+00, float %887
  %889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %890 = extractvalue %dx.types.CBufRet.f32 %889, 0
  %891 = fsub fast float %875, %885
  %892 = call float @dx.op.binary.f32(i32 35, float %891, float 0.000000e+00)  ; FMax(a,b)
  %893 = call float @dx.op.binary.f32(i32 36, float %892, float %890)  ; FMin(a,b)
  %894 = call float @dx.op.binary.f32(i32 35, float %745, float 0.000000e+00)  ; FMax(a,b)
  %895 = call float @dx.op.binary.f32(i32 36, float %894, float %888)  ; FMin(a,b)
  %896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %897 = extractvalue %dx.types.CBufRet.f32 %896, 3
  %898 = select i1 %641, float %897, float %895
  %899 = fsub fast float -0.000000e+00, %893
  %900 = select i1 %884, float %899, float %898
  %901 = select i1 %76, float %900, float %812
  %902 = fmul fast float %865, 6.553500e+04
  %903 = fmul fast float %902, %901
  %904 = fptosi float %903 to i32
  %905 = atomicrmw add i32 addrspace(3)* %872, i32 %904 seq_cst
  %906 = mul i32 %836, 8
  %907 = add i32 %839, %906
  %908 = mul i32 %907, 4
  %909 = add i32 %842, %908
  %910 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?g_skinnedVolumeGridValuesDust@@3PAY173$$CAHA.1dim", i32 0, i32 %909
  %911 = load i32, i32 addrspace(3)* %910, align 4, !tbaa !39
  %912 = sitofp i32 %911 to float
  %913 = fmul fast float %912, 0x3EF0001000000000
  %914 = xor i1 %747, true
  %915 = or i1 %641, %914
  %916 = or i1 %915, %647
  %917 = fadd fast float %913, %752
  %918 = fcmp fast ogt float %917, %754
  %919 = or i1 %916, %918
  %920 = and i1 %75, %919
  %921 = fsub fast float %754, %913
  %922 = call float @dx.op.unary.f32(i32 7, float %921)  ; Saturate(value)
  %923 = call float @dx.op.binary.f32(i32 35, float %752, float 0.000000e+00)  ; FMax(a,b)
  %924 = call float @dx.op.binary.f32(i32 36, float %923, float %922)  ; FMin(a,b)
  %925 = fsub fast float -0.000000e+00, %759
  %926 = select i1 %920, float %925, float %924
  %927 = select i1 %76, float %926, float %811
  %928 = fmul fast float %902, %927
  %929 = fptosi float %928 to i32
  %930 = atomicrmw add i32 addrspace(3)* %910, i32 %929 seq_cst
  %931 = mul i32 %836, 8
  %932 = add i32 %839, %931
  %933 = mul i32 %932, 4
  %934 = add i32 %842, %933
  %935 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?g_skinnedVolumeGridValuesSnow@@3PAY173$$CAHA.1dim", i32 0, i32 %934
  %936 = load i32, i32 addrspace(3)* %935, align 4, !tbaa !39
  %937 = sitofp i32 %936 to float
  %938 = fmul fast float %937, 0x3EF0001000000000
  %939 = fcmp ule float %586, 0.000000e+00
  %940 = or i1 %939, %641
  %941 = or i1 %940, %647
  %942 = fadd fast float %938, %767
  %943 = fcmp fast ogt float %942, %769
  %944 = or i1 %941, %943
  %945 = and i1 %75, %944
  %946 = fsub fast float %769, %938
  %947 = call float @dx.op.unary.f32(i32 7, float %946)  ; Saturate(value)
  %948 = call float @dx.op.binary.f32(i32 35, float %767, float 0.000000e+00)  ; FMax(a,b)
  %949 = call float @dx.op.binary.f32(i32 36, float %948, float %947)  ; FMin(a,b)
  %950 = fsub fast float -0.000000e+00, %774
  %951 = select i1 %945, float %950, float %949
  %952 = select i1 %76, float %951, float %810
  %953 = fmul fast float %902, %952
  %954 = fptosi float %953 to i32
  %955 = atomicrmw add i32 addrspace(3)* %935, i32 %954 seq_cst
  br label %956

; <label>:956                                     ; preds = %867, %832
  %957 = add nuw nsw i32 %833, 1
  %958 = icmp eq i32 %957, 2
  br i1 %958, label %959, label %832

; <label>:959                                     ; preds = %956
  %960 = add nuw nsw i32 %831, 1
  %961 = icmp eq i32 %960, 2
  br i1 %961, label %962, label %830

; <label>:962                                     ; preds = %959
  %963 = add nuw nsw i32 %829, 1
  %964 = icmp eq i32 %963, 2
  br i1 %964, label %965, label %828

; <label>:965                                     ; preds = %962
  br label %966

; <label>:966                                     ; preds = %965, %257
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %967 = icmp eq i32 %342, 65535
  br i1 %967, label %1023, label %968, !dx.controlflow.hints !59

; <label>:968                                     ; preds = %966
  br label %969

; <label>:969                                     ; preds = %969, %968
  %970 = phi i32 [ %1020, %969 ], [ 0, %968 ]
  %971 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %972 = extractvalue %dx.types.CBufRet.i32 %971, 1
  %973 = add i32 %972, -1
  %974 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i32 0, i32 %970
  %975 = load i32, i32* %974, align 4, !tbaa !39
  %976 = add i32 %975, %346
  %977 = call i32 @dx.op.binary.i32(i32 40, i32 %976, i32 %973)  ; UMin(a,b)
  %978 = getelementptr [2 x i32], [2 x i32]* %24, i32 0, i32 %970
  %979 = load i32, i32* %978, align 4
  %980 = getelementptr [2 x i32], [2 x i32]* %23, i32 0, i32 %970
  %981 = load i32, i32* %980, align 4
  %982 = getelementptr [2 x i32], [2 x i32]* %22, i32 0, i32 %970
  %983 = load i32, i32* %982, align 4
  %984 = mul i32 %983, 8
  %985 = add i32 %981, %984
  %986 = mul i32 %985, 4
  %987 = add i32 %979, %986
  %988 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?g_skinnedVolumeGridValuesWetness@@3PAY173$$CAHA.1dim", i32 0, i32 %987
  %989 = load i32, i32 addrspace(3)* %988, align 4, !tbaa !39
  %990 = sitofp i32 %989 to float
  %991 = fmul fast float %990, 0x3EF0001000000000
  %992 = call float @dx.op.unary.f32(i32 7, float %991)  ; Saturate(value)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %977, i32 0, float %992, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %993 = mul i32 %983, 8
  %994 = add i32 %981, %993
  %995 = mul i32 %994, 4
  %996 = add i32 %979, %995
  %997 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?g_skinnedVolumeGridValuesDust@@3PAY173$$CAHA.1dim", i32 0, i32 %996
  %998 = load i32, i32 addrspace(3)* %997, align 4, !tbaa !39
  %999 = sitofp i32 %998 to float
  %1000 = fmul fast float %999, 0x3EF0001000000000
  %1001 = call float @dx.op.unary.f32(i32 7, float %1000)  ; Saturate(value)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %977, i32 4, float %1001, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1002 = mul i32 %983, 8
  %1003 = add i32 %981, %1002
  %1004 = mul i32 %1003, 4
  %1005 = add i32 %979, %1004
  %1006 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?g_skinnedVolumeGridValuesSnow@@3PAY173$$CAHA.1dim", i32 0, i32 %1005
  %1007 = load i32, i32 addrspace(3)* %1006, align 4, !tbaa !39
  %1008 = sitofp i32 %1007 to float
  %1009 = fmul fast float %1008, 0x3EF0001000000000
  %1010 = call float @dx.op.unary.f32(i32 7, float %1009)  ; Saturate(value)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %977, i32 8, float %1010, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1011 = fmul fast float %343, 1.280000e+02
  %1012 = fmul fast float %59, 1.280000e+02
  %1013 = fmul fast float %344, 1.600000e+01
  %1014 = fptosi float %1011 to i32
  %1015 = fptosi float %1012 to i32
  %1016 = fptosi float %1013 to i32
  %1017 = add i32 %983, %1014
  %1018 = add i32 %981, %1015
  %1019 = add i32 %979, %1016
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1017, i32 %1018, i32 %1019, float %992, float %1001, float %1010, float %992, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1020 = add nuw nsw i32 %970, 1
  %1021 = icmp eq i32 %1020, 2
  br i1 %1021, label %1022, label %969

; <label>:1022                                    ; preds = %969
  br label %1023

; <label>:1023                                    ; preds = %1022, %966, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #3

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind readonly }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!35}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !27, !30, !33}
!5 = !{!6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !20, !22, !24, !25, !26}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 7, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.StructuredBuffer<WeatherGridVolumeValuesParams>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i32 0, !13}
!13 = !{i32 1, i32 12}
!14 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!15 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!16 = !{i32 8, %"class.StructuredBuffer<DecalVolumeWGV>"* undef, !"", i32 0, i32 8, i32 1, i32 12, i32 0, !17}
!17 = !{i32 1, i32 64}
!18 = !{i32 9, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 9, i32 1, i32 12, i32 0, !19}
!19 = !{i32 1, i32 4}
!20 = !{i32 10, %"class.StructuredBuffer<GfxBSPAABBNodePacked>"* undef, !"", i32 0, i32 11, i32 1, i32 12, i32 0, !21}
!21 = !{i32 1, i32 8}
!22 = !{i32 11, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 12, i32 1, i32 10, i32 0, !23}
!23 = !{i32 0, i32 5}
!24 = !{i32 12, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 13, i32 1, i32 10, i32 0, !23}
!25 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 14, i32 1, i32 11, i32 0, null}
!26 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!27 = !{!28, !29}
!28 = !{i32 0, %"class.RWStructuredBuffer<WeatherGridVolumeValuesParams>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i1 false, i1 false, i1 false, !13}
!29 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!30 = !{!31, !32}
!31 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!32 = !{i32 1, %GfxSampleWeatherGridVolumesConsts* undef, !"", i32 0, i32 0, i32 1, i32 208, null}
!33 = !{!34}
!34 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!35 = !{void ()* @cs_wgv_update_probes_skinned_objects, !"cs_wgv_update_probes_skinned_objects", null, !4, !36}
!36 = !{i32 0, i64 272, i32 4, !37}
!37 = !{i32 128, i32 1, i32 1}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 1}
!45 = !{!46, !46, i64 0}
!46 = !{!"float", !41, i64 0}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.unroll.disable"}
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

