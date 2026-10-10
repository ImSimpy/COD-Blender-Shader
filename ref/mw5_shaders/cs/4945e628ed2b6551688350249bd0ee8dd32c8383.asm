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
; shader hash: 01db06a1174efc7cc1c2d6e2aab87fee
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
;   [160 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [64 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [120 x i8] (type annotation not present)
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb2     1
;                                   cbuffer      NA          NA     CB2            cb1     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture    byte         r/o      T0            t14     1
;                                   texture    byte         r/o      T1            t15     1
;                                   texture     f32          2d      T2             t0     1
;                                   texture     f32          2d      T3             t5     1
;                                   texture     u32          2d      T4             t6     1
;                                   texture     f32          2d      T5            t13     1
;                                   texture  struct         r/o      T6             t2     1
;                                   texture    byte         r/o      T7             t3     1
;                                   texture    byte         r/o      T8             t4     1
;                                   texture  struct         r/o      T9             t9     1
;                                   texture    byte         r/o     T10             t1     1
;                                   texture    byte         r/o     T11            t11     1
;                                   texture    byte         r/o     T12            t10     1
;                                   texture    byte         r/o     T13            t12     1
;                                       UAV    byte         r/w      U0             u0     1
;                                       UAV  struct         r/w      U1             u1     1
;                                       UAV    byte         r/w      U2             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.StructuredBuffer<StTerrainClutterLayer>" = type { %struct.StTerrainClutterLayer }
%struct.StTerrainClutterLayer = type { <4 x float>, <3 x float>, i32, <3 x float>, i32, <3 x float>, i32, <2 x i32>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%"class.RWStructuredBuffer<GfxClutterCollectionGPUData>" = type { %struct.GfxClutterCollectionGPUData }
%struct.GfxClutterCollectionGPUData = type { i32, i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%GPClutterCollectionGenSurfaceConsts = type { <4 x float>, <3 x float>, i32, float, float, float, float, <2 x float>, <2 x float>, <4 x i32>, <4 x float>, float, i32, i32, i32, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32 }
%GPClutterCollectionGenClutterConsts = type { i32, i32, <2 x i32>, <2 x i32>, <2 x i32>, <2 x float>, float, float, i32, i32, i32, float }
%struct.SamplerState = type { i32 }

@"\01?groupInstanceIndex@@3IA" = external addrspace(3) global i32, align 4

define void @clutter_gen_pass() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %23 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %24 = call i32 @dx.op.groupId.i32(i32 94, i32 2)  ; GroupId(component)
  %25 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %26 = alloca [4 x i32], align 4
  %27 = alloca [4 x i32], align 4
  %28 = alloca [4 x i32], align 4
  %29 = alloca [4 x i32], align 4
  %30 = alloca [4 x i32], align 4
  %31 = alloca [4 x i32], align 4
  %32 = alloca [4 x i32], align 4
  %33 = alloca [4 x i32], align 4
  %34 = alloca [4 x i32], align 4
  %35 = alloca [4 x i32], align 4
  %36 = alloca [4 x float], align 4
  %37 = alloca [4 x float], align 4
  %38 = alloca [4 x float], align 4
  %39 = alloca [4 x float], align 4
  %40 = alloca [4 x float], align 4
  %41 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.i32 %41, 0
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  %45 = lshr i32 %42, 2
  %46 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.i32 %46, 3
  %48 = lshr i32 %47, 4
  %49 = mul i32 %45, 12
  %50 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %49, i32 undef)  ; BufferLoad(srv,index,wot)
  %51 = extractvalue %dx.types.ResRet.i32 %50, 2
  %52 = and i32 %51, 65535
  %53 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %52, i32 0)  ; BufferLoad(srv,index,wot)
  %54 = extractvalue %dx.types.ResRet.f32 %53, 0
  %55 = extractvalue %dx.types.ResRet.f32 %53, 1
  %56 = extractvalue %dx.types.ResRet.f32 %53, 2
  %57 = extractvalue %dx.types.ResRet.f32 %53, 3
  %58 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %52, i32 16)  ; BufferLoad(srv,index,wot)
  %59 = extractvalue %dx.types.ResRet.f32 %58, 0
  %60 = extractvalue %dx.types.ResRet.f32 %58, 1
  %61 = extractvalue %dx.types.ResRet.f32 %58, 2
  %62 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %52, i32 32)  ; BufferLoad(srv,index,wot)
  %63 = extractvalue %dx.types.ResRet.f32 %62, 0
  %64 = extractvalue %dx.types.ResRet.f32 %62, 1
  %65 = extractvalue %dx.types.ResRet.f32 %62, 2
  %66 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %52, i32 44)  ; BufferLoad(srv,index,wot)
  %67 = extractvalue %dx.types.ResRet.i32 %66, 0
  %68 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %52, i32 48)  ; BufferLoad(srv,index,wot)
  %69 = extractvalue %dx.types.ResRet.f32 %68, 0
  %70 = extractvalue %dx.types.ResRet.f32 %68, 1
  %71 = extractvalue %dx.types.ResRet.f32 %68, 2
  %72 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %52, i32 60)  ; BufferLoad(srv,index,wot)
  %73 = extractvalue %dx.types.ResRet.i32 %72, 0
  %74 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %52, i32 64)  ; BufferLoad(srv,index,wot)
  %75 = extractvalue %dx.types.ResRet.i32 %74, 0
  %76 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %52, i32 72)  ; BufferLoad(srv,index,wot)
  %77 = extractvalue %dx.types.ResRet.f32 %76, 0
  %78 = extractvalue %dx.types.ResRet.f32 %76, 1
  %79 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %52, i32 80)  ; BufferLoad(srv,index,wot)
  %80 = extractvalue %dx.types.ResRet.f32 %79, 0
  %81 = extractvalue %dx.types.ResRet.f32 %79, 1
  %82 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %52, i32 88)  ; BufferLoad(srv,index,wot)
  %83 = extractvalue %dx.types.ResRet.f32 %82, 0
  %84 = extractvalue %dx.types.ResRet.f32 %82, 1
  %85 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %52, i32 96)  ; BufferLoad(srv,index,wot)
  %86 = extractvalue %dx.types.ResRet.f32 %85, 0
  %87 = extractvalue %dx.types.ResRet.f32 %85, 1
  %88 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %52, i32 108)  ; BufferLoad(srv,index,wot)
  %89 = extractvalue %dx.types.ResRet.i32 %88, 0
  %90 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %52, i32 112)  ; BufferLoad(srv,index,wot)
  %91 = extractvalue %dx.types.ResRet.f32 %90, 0
  %92 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %52, i32 116)  ; BufferLoad(srv,index,wot)
  %93 = extractvalue %dx.types.ResRet.f32 %92, 0
  %94 = or i32 %23, %22
  %95 = or i32 %94, %24
  %96 = or i32 %95, %25
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101, !dx.controlflow.hints !38

; <label>:98                                      ; preds = %0
  %99 = extractvalue %dx.types.CBufRet.i32 %41, 1
  %100 = add i32 %99, %48
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %45, i32 0, i32 %100, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %101

; <label>:101                                     ; preds = %98, %0
  %102 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.i32 %102, 2
  %104 = extractvalue %dx.types.CBufRet.i32 %102, 3
  %105 = add i32 %103, %22
  %106 = add i32 %104, %23
  %107 = mul i32 %106, %75
  %108 = add i32 %105, %67
  %109 = add i32 %108, %107
  %110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %109, i32 0)  ; BufferLoad(srv,index,wot)
  %111 = extractvalue %dx.types.ResRet.i32 %110, 0
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %1340, label %113, !dx.controlflow.hints !39

; <label>:113                                     ; preds = %101
  %114 = shl i32 %24, 3
  %115 = add i32 %111, %114
  %116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %115, i32 undef)  ; BufferLoad(srv,index,wot)
  %117 = extractvalue %dx.types.ResRet.i32 %116, 0
  %118 = extractvalue %dx.types.ResRet.i32 %116, 1
  %119 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %117)  ; Countbits(value)
  %120 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %118)  ; Countbits(value)
  %121 = add i32 %120, %119
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %1340, label %123, !dx.controlflow.hints !40

; <label>:123                                     ; preds = %113
  %124 = icmp eq i32 %25, 0
  br i1 %124, label %125, label %131, !dx.controlflow.hints !41

; <label>:125                                     ; preds = %123
  %126 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %45, i32 4, i32 undef, i32 %121)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %127 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.i32 %127, 1
  %129 = add i32 %126, %48
  %130 = add i32 %129, %128
  store i32 %130, i32 addrspace(3)* @"\01?groupInstanceIndex@@3IA", align 4, !tbaa !42
  br label %131

; <label>:131                                     ; preds = %125, %123
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %132 = shl i32 %24, 6
  %133 = add i32 %132, %25
  %134 = and i32 %133, 32
  %135 = icmp ugt i32 %134, 31
  %136 = and i32 %133, 31
  %137 = shl i32 1, %136
  %138 = select i1 %135, i32 %118, i32 %117
  %139 = and i32 %138, %137
  %140 = load i32, i32 addrspace(3)* @"\01?groupInstanceIndex@@3IA", align 4, !tbaa !42
  %141 = icmp ne i32 %140, -1
  %142 = icmp ne i32 %139, 0
  %143 = and i1 %142, %141
  br i1 %143, label %144, label %1340, !dx.controlflow.hints !46

; <label>:144                                     ; preds = %131
  %145 = uitofp i32 %105 to float
  %146 = uitofp i32 %106 to float
  %147 = add i32 %73, %133
  %148 = shl i32 %147, 3
  %149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %148, i32 undef)  ; BufferLoad(srv,index,wot)
  %150 = extractvalue %dx.types.ResRet.i32 %149, 0
  %151 = extractvalue %dx.types.ResRet.i32 %149, 1
  %152 = bitcast i32 %150 to float
  %153 = bitcast i32 %151 to float
  %154 = fadd fast float %152, %145
  %155 = fadd fast float %153, %146
  %156 = and i32 %25, 32
  %157 = and i32 %25, 31
  %158 = shl i32 1, %157
  %159 = add i32 %158, -1
  %160 = icmp eq i32 %156, 0
  %161 = and i32 %117, %159
  %162 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %161)  ; Countbits(value)
  %163 = and i32 %118, %159
  %164 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %163)  ; Countbits(value)
  %165 = add i32 %164, %119
  %166 = select i1 %160, i32 %162, i32 %165
  %167 = add i32 %166, %140
  %168 = fmul fast float %154, %77
  %169 = fmul fast float %155, %78
  %170 = fadd fast float %168, -5.000000e-01
  %171 = fsub fast float 5.000000e-01, %169
  %172 = fmul fast float %170, %80
  %173 = fmul fast float %171, %81
  %174 = and i32 %89, 8
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %265, label %176, !dx.controlflow.hints !47

; <label>:176                                     ; preds = %144
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 0
  %179 = extractvalue %dx.types.CBufRet.f32 %177, 1
  %180 = fadd fast float %178, %172
  %181 = fadd fast float %179, %173
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 0
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 0
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 0
  %188 = extractvalue %dx.types.CBufRet.f32 %182, 1
  %189 = extractvalue %dx.types.CBufRet.f32 %184, 1
  %190 = extractvalue %dx.types.CBufRet.f32 %186, 1
  %191 = extractvalue %dx.types.CBufRet.f32 %182, 3
  %192 = extractvalue %dx.types.CBufRet.f32 %184, 3
  %193 = extractvalue %dx.types.CBufRet.f32 %186, 3
  %194 = fadd fast float %180, %191
  %195 = fadd fast float %181, %192
  %196 = fmul fast float %194, %183
  %197 = call float @dx.op.tertiary.f32(i32 46, float %195, float %185, float %196)  ; FMad(a,b,c)
  %198 = call float @dx.op.tertiary.f32(i32 46, float %193, float %187, float %197)  ; FMad(a,b,c)
  %199 = fmul fast float %194, %188
  %200 = call float @dx.op.tertiary.f32(i32 46, float %195, float %189, float %199)  ; FMad(a,b,c)
  %201 = call float @dx.op.tertiary.f32(i32 46, float %193, float %190, float %200)  ; FMad(a,b,c)
  %202 = fsub fast float %198, %191
  %203 = fsub fast float %201, %192
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 344)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 0
  %206 = extractvalue %dx.types.CBufRet.f32 %204, 1
  %207 = extractvalue %dx.types.CBufRet.f32 %204, 2
  %208 = fsub fast float %202, %205
  %209 = fadd fast float %208, %207
  %210 = fsub fast float %203, %206
  %211 = fadd fast float %210, %207
  %212 = extractvalue %dx.types.CBufRet.f32 %204, 3
  %213 = fmul fast float %209, %212
  %214 = fmul fast float %211, %212
  %215 = call float @dx.op.unary.f32(i32 7, float %213)  ; Saturate(value)
  %216 = call float @dx.op.unary.f32(i32 7, float %214)  ; Saturate(value)
  %217 = fsub fast float 1.000000e+00, %215
  %218 = fsub fast float 1.000000e+00, %216
  %219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %18, float %217, float %218, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %220 = extractvalue %dx.types.ResRet.f32 %219, 0
  %221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %18, float %217, float %218, float undef, float undef, i32 0, i32 -1, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %222 = extractvalue %dx.types.ResRet.f32 %221, 0
  %223 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %18, float %217, float %218, float undef, float undef, i32 0, i32 1, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %224 = extractvalue %dx.types.ResRet.f32 %223, 0
  %225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %18, float %217, float %218, float undef, float undef, i32 1, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %18, float %217, float %218, float undef, float undef, i32 -1, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %228 = extractvalue %dx.types.ResRet.f32 %227, 0
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 333)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 0
  %231 = extractvalue %dx.types.CBufRet.f32 %229, 1
  %232 = fmul fast float %230, 2.000000e+00
  %233 = fsub fast float %228, %226
  %234 = fmul fast float %231, %233
  %235 = fdiv fast float %234, %232
  %236 = fsub fast float %222, %224
  %237 = fmul fast float %231, %236
  %238 = fdiv fast float %237, %232
  %239 = call float @dx.op.dot3.f32(i32 55, float %235, float %238, float 1.000000e+00, float %235, float %238, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %240 = call float @dx.op.unary.f32(i32 25, float %239)  ; Rsqrt(value)
  %241 = fmul fast float %240, %235
  %242 = fmul fast float %240, %238
  %243 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %244 = extractvalue %dx.types.CBufRet.f32 %184, 2
  %245 = extractvalue %dx.types.CBufRet.f32 %186, 2
  %246 = fmul fast float %183, %241
  %247 = call float @dx.op.tertiary.f32(i32 46, float %242, float %188, float %246)  ; FMad(a,b,c)
  %248 = call float @dx.op.tertiary.f32(i32 46, float %240, float %243, float %247)  ; FMad(a,b,c)
  %249 = fmul fast float %185, %241
  %250 = call float @dx.op.tertiary.f32(i32 46, float %242, float %189, float %249)  ; FMad(a,b,c)
  %251 = call float @dx.op.tertiary.f32(i32 46, float %240, float %244, float %250)  ; FMad(a,b,c)
  %252 = fmul fast float %187, %241
  %253 = call float @dx.op.tertiary.f32(i32 46, float %242, float %190, float %252)  ; FMad(a,b,c)
  %254 = call float @dx.op.tertiary.f32(i32 46, float %240, float %245, float %253)  ; FMad(a,b,c)
  %255 = fmul fast float %231, %220
  %256 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %257 = fadd fast float %256, %255
  %258 = fadd fast float %257, %193
  %259 = fmul fast float %198, %187
  %260 = call float @dx.op.tertiary.f32(i32 46, float %201, float %190, float %259)  ; FMad(a,b,c)
  %261 = call float @dx.op.tertiary.f32(i32 46, float %258, float %245, float %260)  ; FMad(a,b,c)
  %262 = fsub fast float %261, %193
  %263 = extractvalue %dx.types.CBufRet.f32 %177, 2
  %264 = fsub fast float %262, %263
  br label %698

; <label>:265                                     ; preds = %144
  %266 = fsub fast float 1.000000e+00, %169
  %267 = fmul fast float %266, %57
  %268 = fadd fast float %267, %55
  %269 = fmul fast float %168, %56
  %270 = fadd fast float %269, %54
  %271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %272 = extractvalue %dx.types.CBufRet.f32 %271, 2
  %273 = fmul fast float %272, %270
  %274 = fmul fast float %272, %268
  %275 = extractvalue %dx.types.CBufRet.f32 %271, 3
  %276 = fadd fast float %273, %275
  %277 = fadd fast float %274, %275
  %278 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %279 = extractvalue %dx.types.CBufRet.i32 %278, 3
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %656, label %281, !dx.controlflow.hints !48

; <label>:281                                     ; preds = %265
  %282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %283 = extractvalue %dx.types.CBufRet.f32 %282, 2
  %284 = extractvalue %dx.types.CBufRet.f32 %282, 3
  %285 = fmul fast float %283, %276
  %286 = fmul fast float %284, %277
  %287 = extractvalue %dx.types.CBufRet.f32 %282, 0
  %288 = extractvalue %dx.types.CBufRet.f32 %282, 1
  %289 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.i32 %289, 0
  %291 = extractvalue %dx.types.CBufRet.i32 %289, 1
  %292 = extractvalue %dx.types.CBufRet.i32 %289, 2
  %293 = extractvalue %dx.types.CBufRet.i32 %289, 3
  %294 = mul i32 %292, %292
  %295 = fadd fast float %283, 0xBF847AE140000000
  %296 = fadd fast float %284, 0xBF847AE140000000
  %297 = call float @dx.op.binary.f32(i32 35, float %285, float 0.000000e+00)  ; FMax(a,b)
  %298 = call float @dx.op.binary.f32(i32 35, float %286, float 0.000000e+00)  ; FMax(a,b)
  %299 = call float @dx.op.binary.f32(i32 36, float %297, float %295)  ; FMin(a,b)
  %300 = call float @dx.op.binary.f32(i32 36, float %298, float %296)  ; FMin(a,b)
  %301 = fdiv fast float %299, %287
  %302 = fdiv fast float %300, %288
  %303 = fptoui float %301 to i32
  %304 = fptoui float %302 to i32
  %305 = mul i32 %304, %290
  %306 = add i32 %305, %303
  %307 = lshr i32 %306, 1
  %308 = shl i32 %307, 2
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = shl i32 %306, 4
  %312 = and i32 %311, 16
  %313 = lshr i32 %310, %312
  %314 = and i32 %313, 255
  %315 = lshr i32 %313, 8
  %316 = and i32 %315, 31
  %317 = shl i32 1, %316
  %318 = uitofp i32 %317 to float
  %319 = fmul fast float %318, %299
  %320 = fdiv fast float %319, %283
  %321 = fmul fast float %318, %300
  %322 = fdiv fast float %321, %284
  %323 = call float @dx.op.unary.f32(i32 22, float %320)  ; Frc(value)
  %324 = call float @dx.op.unary.f32(i32 22, float %322)  ; Frc(value)
  %325 = uitofp i32 %291 to float
  %326 = fmul fast float %323, %325
  %327 = fmul fast float %324, %325
  %328 = uitofp i32 %293 to float
  %329 = fadd fast float %326, %328
  %330 = fadd fast float %327, %328
  %331 = mul i32 %294, %314
  %332 = fadd fast float %329, -1.000000e+00
  %333 = fadd fast float %330, -1.000000e+00
  %334 = call float @dx.op.unary.f32(i32 22, float %332)  ; Frc(value)
  %335 = fptoui float %332 to i32
  %336 = fptoui float %330 to i32
  %337 = getelementptr [4 x i32], [4 x i32]* %34, i32 0, i32 0
  %338 = getelementptr [4 x i32], [4 x i32]* %35, i32 0, i32 0
  store i32 %335, i32* %337, align 4
  store i32 %336, i32* %338, align 4
  %339 = add i32 %335, 1
  %340 = getelementptr [4 x i32], [4 x i32]* %34, i32 0, i32 1
  %341 = getelementptr [4 x i32], [4 x i32]* %35, i32 0, i32 1
  store i32 %339, i32* %340, align 4
  store i32 %336, i32* %341, align 4
  %342 = add i32 %336, 1
  %343 = getelementptr [4 x i32], [4 x i32]* %34, i32 0, i32 2
  %344 = getelementptr [4 x i32], [4 x i32]* %35, i32 0, i32 2
  store i32 %335, i32* %343, align 4
  store i32 %342, i32* %344, align 4
  %345 = getelementptr [4 x i32], [4 x i32]* %34, i32 0, i32 3
  %346 = getelementptr [4 x i32], [4 x i32]* %35, i32 0, i32 3
  store i32 %339, i32* %345, align 4
  store i32 %342, i32* %346, align 4
  %347 = add i32 %292, -1
  br label %348

; <label>:348                                     ; preds = %371, %281
  %349 = phi i32 [ %336, %281 ], [ %375, %371 ]
  %350 = phi i32 [ %335, %281 ], [ %373, %371 ]
  %351 = phi i32 [ 0, %281 ], [ %369, %371 ]
  %352 = call i32 @dx.op.binary.i32(i32 40, i32 %350, i32 %347)  ; UMin(a,b)
  %353 = call i32 @dx.op.binary.i32(i32 40, i32 %349, i32 %347)  ; UMin(a,b)
  %354 = mul i32 %353, %292
  %355 = add i32 %352, %331
  %356 = add i32 %355, %354
  %357 = lshr i32 %356, 1
  %358 = shl i32 %357, 2
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = shl i32 %356, 4
  %362 = and i32 %361, 16
  %363 = lshr i32 %360, %362
  %364 = and i32 %363, 65535
  %365 = uitofp i32 %364 to float
  %366 = fmul fast float %365, 0x3EF0002000000000
  %367 = call float @dx.op.unary.f32(i32 7, float %366)  ; Saturate(value)
  %368 = getelementptr inbounds [4 x float], [4 x float]* %40, i32 0, i32 %351
  store float %367, float* %368, align 4, !tbaa !49, !noalias !51
  %369 = add nuw nsw i32 %351, 1
  %370 = icmp eq i32 %369, 4
  br i1 %370, label %376, label %371

; <label>:371                                     ; preds = %348
  %372 = getelementptr [4 x i32], [4 x i32]* %34, i32 0, i32 %369
  %373 = load i32, i32* %372, align 4
  %374 = getelementptr [4 x i32], [4 x i32]* %35, i32 0, i32 %369
  %375 = load i32, i32* %374, align 4
  br label %348

; <label>:376                                     ; preds = %348
  %377 = extractvalue %dx.types.CBufRet.f32 %271, 1
  %378 = extractvalue %dx.types.CBufRet.f32 %271, 0
  %379 = fadd fast float %329, 1.000000e+00
  %380 = fadd fast float %330, 1.000000e+00
  %381 = call float @dx.op.unary.f32(i32 22, float %330)  ; Frc(value)
  %382 = fsub fast float 1.000000e+00, %334
  %383 = getelementptr inbounds [4 x float], [4 x float]* %40, i32 0, i32 0
  %384 = load float, float* %383, align 4, !tbaa !49, !noalias !51
  %385 = fmul fast float %384, %382
  %386 = getelementptr inbounds [4 x float], [4 x float]* %40, i32 0, i32 1
  %387 = load float, float* %386, align 4, !tbaa !49, !noalias !51
  %388 = fmul fast float %387, %334
  %389 = fadd fast float %388, %385
  %390 = getelementptr inbounds [4 x float], [4 x float]* %40, i32 0, i32 2
  %391 = load float, float* %390, align 4, !tbaa !49, !noalias !51
  %392 = getelementptr inbounds [4 x float], [4 x float]* %40, i32 0, i32 3
  %393 = load float, float* %392, align 4, !tbaa !49, !noalias !51
  %394 = fmul fast float %393, %334
  %395 = fsub fast float 1.000000e+00, %381
  %396 = fmul fast float %389, %395
  %397 = call float @dx.op.unary.f32(i32 22, float %379)  ; Frc(value)
  %398 = fptoui float %379 to i32
  %399 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 0
  %400 = getelementptr [4 x i32], [4 x i32]* %29, i32 0, i32 0
  store i32 %398, i32* %399, align 4
  store i32 %336, i32* %400, align 4
  %401 = add i32 %398, 1
  %402 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 1
  %403 = getelementptr [4 x i32], [4 x i32]* %29, i32 0, i32 1
  store i32 %401, i32* %402, align 4
  store i32 %336, i32* %403, align 4
  %404 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 2
  %405 = getelementptr [4 x i32], [4 x i32]* %29, i32 0, i32 2
  store i32 %398, i32* %404, align 4
  store i32 %342, i32* %405, align 4
  %406 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 3
  %407 = getelementptr [4 x i32], [4 x i32]* %29, i32 0, i32 3
  store i32 %401, i32* %406, align 4
  store i32 %342, i32* %407, align 4
  br label %408

; <label>:408                                     ; preds = %431, %376
  %409 = phi i32 [ %336, %376 ], [ %435, %431 ]
  %410 = phi i32 [ %398, %376 ], [ %433, %431 ]
  %411 = phi i32 [ 0, %376 ], [ %429, %431 ]
  %412 = call i32 @dx.op.binary.i32(i32 40, i32 %410, i32 %347)  ; UMin(a,b)
  %413 = call i32 @dx.op.binary.i32(i32 40, i32 %409, i32 %347)  ; UMin(a,b)
  %414 = mul i32 %413, %292
  %415 = add i32 %412, %331
  %416 = add i32 %415, %414
  %417 = lshr i32 %416, 1
  %418 = shl i32 %417, 2
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = shl i32 %416, 4
  %422 = and i32 %421, 16
  %423 = lshr i32 %420, %422
  %424 = and i32 %423, 65535
  %425 = uitofp i32 %424 to float
  %426 = fmul fast float %425, 0x3EF0002000000000
  %427 = call float @dx.op.unary.f32(i32 7, float %426)  ; Saturate(value)
  %428 = getelementptr inbounds [4 x float], [4 x float]* %39, i32 0, i32 %411
  store float %427, float* %428, align 4, !tbaa !49, !noalias !51
  %429 = add nuw nsw i32 %411, 1
  %430 = icmp eq i32 %429, 4
  br i1 %430, label %436, label %431

; <label>:431                                     ; preds = %408
  %432 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %429
  %433 = load i32, i32* %432, align 4
  %434 = getelementptr [4 x i32], [4 x i32]* %29, i32 0, i32 %429
  %435 = load i32, i32* %434, align 4
  br label %408

; <label>:436                                     ; preds = %408
  %437 = fmul fast float %391, %382
  %438 = fadd fast float %394, %437
  %439 = fmul fast float %438, %381
  %440 = fsub fast float 1.000000e+00, %397
  %441 = getelementptr inbounds [4 x float], [4 x float]* %39, i32 0, i32 0
  %442 = load float, float* %441, align 4, !tbaa !49, !noalias !51
  %443 = fmul fast float %442, %440
  %444 = getelementptr inbounds [4 x float], [4 x float]* %39, i32 0, i32 1
  %445 = load float, float* %444, align 4, !tbaa !49, !noalias !51
  %446 = fmul fast float %445, %397
  %447 = fadd fast float %446, %443
  %448 = getelementptr inbounds [4 x float], [4 x float]* %39, i32 0, i32 2
  %449 = load float, float* %448, align 4, !tbaa !49, !noalias !51
  %450 = getelementptr inbounds [4 x float], [4 x float]* %39, i32 0, i32 3
  %451 = load float, float* %450, align 4, !tbaa !49, !noalias !51
  %452 = fmul fast float %451, %397
  %453 = fmul fast float %447, %395
  %454 = call float @dx.op.unary.f32(i32 22, float %329)  ; Frc(value)
  %455 = fptoui float %329 to i32
  %456 = fptoui float %333 to i32
  %457 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 0
  %458 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 0
  store i32 %455, i32* %457, align 4
  store i32 %456, i32* %458, align 4
  %459 = add i32 %455, 1
  %460 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 1
  %461 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 1
  store i32 %459, i32* %460, align 4
  store i32 %456, i32* %461, align 4
  %462 = add i32 %456, 1
  %463 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 2
  %464 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 2
  store i32 %455, i32* %463, align 4
  store i32 %462, i32* %464, align 4
  %465 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 3
  %466 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 3
  store i32 %459, i32* %465, align 4
  store i32 %462, i32* %466, align 4
  br label %467

; <label>:467                                     ; preds = %490, %436
  %468 = phi i32 [ %456, %436 ], [ %494, %490 ]
  %469 = phi i32 [ %455, %436 ], [ %492, %490 ]
  %470 = phi i32 [ 0, %436 ], [ %488, %490 ]
  %471 = call i32 @dx.op.binary.i32(i32 40, i32 %469, i32 %347)  ; UMin(a,b)
  %472 = call i32 @dx.op.binary.i32(i32 40, i32 %468, i32 %347)  ; UMin(a,b)
  %473 = mul i32 %472, %292
  %474 = add i32 %471, %331
  %475 = add i32 %474, %473
  %476 = lshr i32 %475, 1
  %477 = shl i32 %476, 2
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = shl i32 %475, 4
  %481 = and i32 %480, 16
  %482 = lshr i32 %479, %481
  %483 = and i32 %482, 65535
  %484 = uitofp i32 %483 to float
  %485 = fmul fast float %484, 0x3EF0002000000000
  %486 = call float @dx.op.unary.f32(i32 7, float %485)  ; Saturate(value)
  %487 = getelementptr inbounds [4 x float], [4 x float]* %38, i32 0, i32 %470
  store float %486, float* %487, align 4, !tbaa !49, !noalias !51
  %488 = add nuw nsw i32 %470, 1
  %489 = icmp eq i32 %488, 4
  br i1 %489, label %495, label %490

; <label>:490                                     ; preds = %467
  %491 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %488
  %492 = load i32, i32* %491, align 4
  %493 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %488
  %494 = load i32, i32* %493, align 4
  br label %467

; <label>:495                                     ; preds = %467
  %496 = fmul fast float %449, %440
  %497 = fadd fast float %452, %496
  %498 = fmul fast float %497, %381
  %499 = call float @dx.op.unary.f32(i32 22, float %333)  ; Frc(value)
  %500 = fsub fast float 1.000000e+00, %454
  %501 = getelementptr inbounds [4 x float], [4 x float]* %38, i32 0, i32 0
  %502 = load float, float* %501, align 4, !tbaa !49, !noalias !51
  %503 = fmul fast float %502, %500
  %504 = getelementptr inbounds [4 x float], [4 x float]* %38, i32 0, i32 1
  %505 = load float, float* %504, align 4, !tbaa !49, !noalias !51
  %506 = fmul fast float %505, %454
  %507 = fadd fast float %506, %503
  %508 = getelementptr inbounds [4 x float], [4 x float]* %38, i32 0, i32 2
  %509 = load float, float* %508, align 4, !tbaa !49, !noalias !51
  %510 = getelementptr inbounds [4 x float], [4 x float]* %38, i32 0, i32 3
  %511 = load float, float* %510, align 4, !tbaa !49, !noalias !51
  %512 = fmul fast float %511, %454
  %513 = fsub fast float 1.000000e+00, %499
  %514 = fmul fast float %507, %513
  %515 = fptoui float %380 to i32
  %516 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 0
  %517 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 0
  store i32 %455, i32* %516, align 4
  store i32 %515, i32* %517, align 4
  %518 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 1
  %519 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 1
  store i32 %459, i32* %518, align 4
  store i32 %515, i32* %519, align 4
  %520 = add i32 %515, 1
  %521 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 2
  %522 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 2
  store i32 %455, i32* %521, align 4
  store i32 %520, i32* %522, align 4
  %523 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 3
  %524 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 3
  store i32 %459, i32* %523, align 4
  store i32 %520, i32* %524, align 4
  br label %525

; <label>:525                                     ; preds = %548, %495
  %526 = phi i32 [ %515, %495 ], [ %552, %548 ]
  %527 = phi i32 [ %455, %495 ], [ %550, %548 ]
  %528 = phi i32 [ 0, %495 ], [ %546, %548 ]
  %529 = call i32 @dx.op.binary.i32(i32 40, i32 %527, i32 %347)  ; UMin(a,b)
  %530 = call i32 @dx.op.binary.i32(i32 40, i32 %526, i32 %347)  ; UMin(a,b)
  %531 = mul i32 %530, %292
  %532 = add i32 %529, %331
  %533 = add i32 %532, %531
  %534 = lshr i32 %533, 1
  %535 = shl i32 %534, 2
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = shl i32 %533, 4
  %539 = and i32 %538, 16
  %540 = lshr i32 %537, %539
  %541 = and i32 %540, 65535
  %542 = uitofp i32 %541 to float
  %543 = fmul fast float %542, 0x3EF0002000000000
  %544 = call float @dx.op.unary.f32(i32 7, float %543)  ; Saturate(value)
  %545 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 %528
  store float %544, float* %545, align 4, !tbaa !49, !noalias !51
  %546 = add nuw nsw i32 %528, 1
  %547 = icmp eq i32 %546, 4
  br i1 %547, label %553, label %548

; <label>:548                                     ; preds = %525
  %549 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %546
  %550 = load i32, i32* %549, align 4
  %551 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 %546
  %552 = load i32, i32* %551, align 4
  br label %525

; <label>:553                                     ; preds = %525
  %554 = fmul fast float %509, %500
  %555 = fadd fast float %512, %554
  %556 = fmul fast float %555, %499
  %557 = call float @dx.op.unary.f32(i32 22, float %380)  ; Frc(value)
  %558 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 0
  %559 = load float, float* %558, align 4, !tbaa !49, !noalias !51
  %560 = fmul fast float %559, %500
  %561 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 1
  %562 = load float, float* %561, align 4, !tbaa !49, !noalias !51
  %563 = fmul fast float %562, %454
  %564 = fadd fast float %563, %560
  %565 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 2
  %566 = load float, float* %565, align 4, !tbaa !49, !noalias !51
  %567 = fmul fast float %566, %500
  %568 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 3
  %569 = load float, float* %568, align 4, !tbaa !49, !noalias !51
  %570 = fmul fast float %569, %454
  %571 = fadd fast float %570, %567
  %572 = fsub fast float 1.000000e+00, %557
  %573 = fmul fast float %564, %572
  %574 = fmul fast float %571, %557
  %575 = fmul fast float %283, 2.000000e+00
  %576 = fmul fast float %318, %325
  %577 = fdiv fast float %575, %576
  %578 = fsub fast float -0.000000e+00, %396
  %579 = fsub fast float %578, %439
  %580 = fadd fast float %579, %453
  %581 = fadd fast float %580, %498
  %582 = fmul fast float %284, 2.000000e+00
  %583 = fdiv fast float %582, %576
  %584 = fsub fast float -0.000000e+00, %514
  %585 = fsub fast float %584, %556
  %586 = fadd fast float %585, %573
  %587 = fadd fast float %586, %574
  %588 = fmul fast float %377, %581
  %589 = fmul fast float %588, %583
  %590 = fsub fast float -0.000000e+00, %589
  %591 = fmul fast float %377, %577
  %592 = fmul fast float %591, %587
  %593 = fsub fast float -0.000000e+00, %592
  %594 = fmul fast float %583, %577
  %595 = call float @dx.op.dot3.f32(i32 55, float %590, float %593, float %594, float %590, float %593, float %594)  ; Dot3(ax,ay,az,bx,by,bz)
  %596 = call float @dx.op.unary.f32(i32 25, float %595)  ; Rsqrt(value)
  %597 = fmul fast float %596, %593
  %598 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 0
  %599 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 0
  store i32 %455, i32* %598, align 4
  store i32 %336, i32* %599, align 4
  %600 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 1
  %601 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 1
  store i32 %459, i32* %600, align 4
  store i32 %336, i32* %601, align 4
  %602 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 2
  %603 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 2
  store i32 %455, i32* %602, align 4
  store i32 %342, i32* %603, align 4
  %604 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 3
  %605 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 3
  store i32 %459, i32* %604, align 4
  store i32 %342, i32* %605, align 4
  br label %606

; <label>:606                                     ; preds = %629, %553
  %607 = phi i32 [ %336, %553 ], [ %633, %629 ]
  %608 = phi i32 [ %455, %553 ], [ %631, %629 ]
  %609 = phi i32 [ 0, %553 ], [ %627, %629 ]
  %610 = call i32 @dx.op.binary.i32(i32 40, i32 %608, i32 %347)  ; UMin(a,b)
  %611 = call i32 @dx.op.binary.i32(i32 40, i32 %607, i32 %347)  ; UMin(a,b)
  %612 = mul i32 %611, %292
  %613 = add i32 %610, %331
  %614 = add i32 %613, %612
  %615 = lshr i32 %614, 1
  %616 = shl i32 %615, 2
  %617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %616, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.i32 %617, 0
  %619 = shl i32 %614, 4
  %620 = and i32 %619, 16
  %621 = lshr i32 %618, %620
  %622 = and i32 %621, 65535
  %623 = uitofp i32 %622 to float
  %624 = fmul fast float %623, 0x3EF0002000000000
  %625 = call float @dx.op.unary.f32(i32 7, float %624)  ; Saturate(value)
  %626 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 %609
  store float %625, float* %626, align 4, !tbaa !49, !noalias !60
  %627 = add nuw nsw i32 %609, 1
  %628 = icmp eq i32 %627, 4
  br i1 %628, label %634, label %629

; <label>:629                                     ; preds = %606
  %630 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %627
  %631 = load i32, i32* %630, align 4
  %632 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 %627
  %633 = load i32, i32* %632, align 4
  br label %606

; <label>:634                                     ; preds = %606
  %635 = fmul fast float %596, %590
  %636 = fmul fast float %596, %594
  %637 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 0
  %638 = load float, float* %637, align 4, !tbaa !49, !noalias !60
  %639 = fmul fast float %638, %500
  %640 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 1
  %641 = load float, float* %640, align 4, !tbaa !49, !noalias !60
  %642 = fmul fast float %641, %454
  %643 = fadd fast float %642, %639
  %644 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 2
  %645 = load float, float* %644, align 4, !tbaa !49, !noalias !60
  %646 = fmul fast float %645, %500
  %647 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 3
  %648 = load float, float* %647, align 4, !tbaa !49, !noalias !60
  %649 = fmul fast float %648, %454
  %650 = fadd fast float %649, %646
  %651 = fmul fast float %643, %395
  %652 = fmul fast float %650, %381
  %653 = fadd fast float %652, %651
  %654 = fmul fast float %653, %377
  %655 = fadd fast float %654, %378
  br label %688

; <label>:656                                     ; preds = %265
  %657 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %18, float %276, float %277, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %658 = extractvalue %dx.types.ResRet.f32 %657, 0
  %659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %660 = extractvalue %dx.types.CBufRet.f32 %659, 3
  %661 = fsub fast float %277, %660
  %662 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %18, float %276, float %661, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %663 = extractvalue %dx.types.ResRet.f32 %662, 0
  %664 = fadd fast float %660, %277
  %665 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %18, float %276, float %664, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %666 = extractvalue %dx.types.ResRet.f32 %665, 0
  %667 = extractvalue %dx.types.CBufRet.f32 %659, 2
  %668 = fadd fast float %667, %276
  %669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %18, float %668, float %277, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %670 = extractvalue %dx.types.ResRet.f32 %669, 0
  %671 = fsub fast float %276, %667
  %672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %18, float %671, float %277, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %673 = extractvalue %dx.types.ResRet.f32 %672, 0
  %674 = extractvalue %dx.types.CBufRet.f32 %659, 0
  %675 = extractvalue %dx.types.CBufRet.f32 %659, 1
  %676 = fmul fast float %674, 2.000000e+00
  %677 = fmul fast float %675, 2.000000e+00
  %678 = fsub fast float %673, %670
  %679 = extractvalue %dx.types.CBufRet.f32 %271, 1
  %680 = fmul fast float %679, %678
  %681 = fdiv fast float %680, %676
  %682 = fsub fast float %663, %666
  %683 = fmul fast float %679, %682
  %684 = fdiv fast float %683, %677
  %685 = fmul fast float %679, %658
  %686 = extractvalue %dx.types.CBufRet.f32 %271, 0
  %687 = fadd fast float %685, %686
  br label %688

; <label>:688                                     ; preds = %656, %634
  %689 = phi float [ %635, %634 ], [ %681, %656 ]
  %690 = phi float [ %597, %634 ], [ %684, %656 ]
  %691 = phi float [ %636, %634 ], [ 1.000000e+00, %656 ]
  %692 = phi float [ %655, %634 ], [ %687, %656 ]
  %693 = call float @dx.op.dot3.f32(i32 55, float %689, float %690, float %691, float %689, float %690, float %691)  ; Dot3(ax,ay,az,bx,by,bz)
  %694 = call float @dx.op.unary.f32(i32 25, float %693)  ; Rsqrt(value)
  %695 = fmul fast float %694, %689
  %696 = fmul fast float %694, %690
  %697 = fmul fast float %694, %691
  br label %698

; <label>:698                                     ; preds = %688, %176
  %699 = phi float [ %264, %176 ], [ %692, %688 ]
  %700 = phi float [ %248, %176 ], [ %695, %688 ]
  %701 = phi float [ %251, %176 ], [ %696, %688 ]
  %702 = phi float [ %254, %176 ], [ %697, %688 ]
  %703 = xor i32 %105, -2128831035
  %704 = mul i32 %703, 16777619
  %705 = xor i32 %704, %106
  %706 = mul i32 %705, 16777619
  %707 = xor i32 %706, %133
  %708 = mul i32 %707, 16777619
  %709 = bitcast float %77 to i32
  %710 = xor i32 %708, %709
  %711 = shl i32 %710, 13
  %712 = xor i32 %711, %710
  %713 = lshr i32 %712, 17
  %714 = xor i32 %713, %712
  %715 = shl i32 %714, 5
  %716 = xor i32 %715, %714
  %717 = uitofp i32 %716 to float
  %718 = fmul fast float %717, 0x3DF0000000000000
  %719 = shl i32 %716, 13
  %720 = xor i32 %719, %716
  %721 = lshr i32 %720, 17
  %722 = xor i32 %721, %720
  %723 = shl i32 %722, 5
  %724 = xor i32 %723, %722
  %725 = uitofp i32 %724 to float
  %726 = shl i32 %724, 13
  %727 = xor i32 %726, %724
  %728 = lshr i32 %727, 17
  %729 = xor i32 %728, %727
  %730 = shl i32 %729, 5
  %731 = xor i32 %730, %729
  %732 = uitofp i32 %731 to float
  %733 = shl i32 %731, 13
  %734 = xor i32 %733, %731
  %735 = lshr i32 %734, 17
  %736 = xor i32 %735, %734
  %737 = shl i32 %736, 5
  %738 = xor i32 %737, %736
  %739 = uitofp i32 %738 to float
  %740 = shl i32 %738, 13
  %741 = xor i32 %740, %738
  %742 = lshr i32 %741, 17
  %743 = xor i32 %742, %741
  %744 = shl i32 %743, 5
  %745 = xor i32 %744, %743
  %746 = uitofp i32 %745 to float
  %747 = fsub fast float %84, %83
  %748 = fmul fast float %747, 0x3DF0000000000000
  %749 = fmul fast float %748, %746
  %750 = fadd fast float %749, %83
  %751 = fsub fast float %87, %86
  %752 = fmul fast float %718, %751
  %753 = fadd fast float %752, %86
  %754 = fadd fast float %750, %699
  %755 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %756 = extractvalue %dx.types.CBufRet.i32 %755, 0
  %757 = and i32 %756, 2
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %798, label %759, !dx.controlflow.hints !61

; <label>:759                                     ; preds = %698
  %760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %761 = extractvalue %dx.types.CBufRet.f32 %760, 0
  %762 = extractvalue %dx.types.CBufRet.f32 %760, 1
  %763 = fsub fast float %154, %761
  %764 = fmul fast float %77, %763
  %765 = fmul fast float %764, %80
  %766 = fsub fast float %762, %155
  %767 = fmul fast float %78, %766
  %768 = fmul fast float %767, %81
  %769 = fmul fast float %765, %765
  %770 = fmul fast float %768, %768
  %771 = fadd fast float %769, %770
  %772 = call float @dx.op.unary.f32(i32 24, float %771)  ; Sqrt(value)
  %773 = fcmp fast olt float %93, 0.000000e+00
  %774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %775 = extractvalue %dx.types.CBufRet.f32 %774, 3
  %776 = select i1 %773, float %775, float %93
  %777 = fadd fast float %718, -5.000000e-01
  %778 = fmul fast float %776, %777
  %779 = fcmp fast olt float %91, 0.000000e+00
  %780 = extractvalue %dx.types.CBufRet.f32 %774, 2
  %781 = select i1 %779, float %780, float %91
  %782 = fadd fast float %781, %778
  %783 = call float @dx.op.unary.f32(i32 7, float %782)  ; Saturate(value)
  %784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %785 = extractvalue %dx.types.CBufRet.f32 %784, 3
  %786 = fmul fast float %785, %783
  %787 = fsub fast float %785, %786
  %788 = fsub fast float %772, %786
  %789 = fdiv fast float %788, %787
  %790 = call float @dx.op.unary.f32(i32 7, float %789)  ; Saturate(value)
  %791 = fmul fast float %790, 2.000000e+00
  %792 = fsub fast float 3.000000e+00, %791
  %793 = fmul fast float %790, %790
  %794 = fmul fast float %793, %792
  %795 = extractvalue %dx.types.CBufRet.f32 %760, 3
  %796 = fmul fast float %794, %795
  %797 = fsub fast float %754, %796
  br label %798

; <label>:798                                     ; preds = %759, %698
  %799 = phi float [ %797, %759 ], [ %754, %698 ]
  %800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %801 = extractvalue %dx.types.CBufRet.f32 %800, 0
  %802 = extractvalue %dx.types.CBufRet.f32 %800, 1
  %803 = extractvalue %dx.types.CBufRet.f32 %800, 2
  %804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %805 = extractvalue %dx.types.CBufRet.f32 %804, 0
  %806 = extractvalue %dx.types.CBufRet.f32 %804, 1
  %807 = extractvalue %dx.types.CBufRet.f32 %804, 2
  %808 = extractvalue %dx.types.CBufRet.f32 %804, 3
  %809 = fmul fast float %806, %799
  %810 = fmul fast float %807, %173
  %811 = fsub fast float %809, %810
  %812 = fmul fast float %807, %172
  %813 = fmul fast float %805, %799
  %814 = fsub fast float %812, %813
  %815 = fmul fast float %805, %173
  %816 = fmul fast float %806, %172
  %817 = fsub fast float %815, %816
  %818 = fmul fast float %811, 2.000000e+00
  %819 = fmul fast float %814, 2.000000e+00
  %820 = fmul fast float %817, 2.000000e+00
  %821 = fmul fast float %818, %808
  %822 = fmul fast float %819, %808
  %823 = fmul fast float %820, %808
  %824 = fmul fast float %820, %806
  %825 = fmul fast float %819, %807
  %826 = fmul fast float %818, %807
  %827 = fmul fast float %820, %805
  %828 = fmul fast float %819, %805
  %829 = fmul fast float %818, %806
  %830 = fadd fast float %801, %172
  %831 = fadd fast float %830, %821
  %832 = fsub fast float %831, %825
  %833 = fadd fast float %832, %824
  %834 = fadd fast float %802, %173
  %835 = fadd fast float %834, %822
  %836 = fsub fast float %835, %827
  %837 = fadd fast float %836, %826
  %838 = fadd fast float %803, %799
  %839 = fadd fast float %838, %823
  %840 = fsub fast float %839, %829
  %841 = fadd fast float %840, %828
  %842 = and i32 %89, 2
  %843 = icmp ne i32 %842, 0
  %844 = and i32 %89, 4
  %845 = icmp ne i32 %844, 0
  %846 = and i32 %89, 1
  %847 = icmp eq i32 %846, 0
  %848 = select i1 %843, float %700, float 0.000000e+00
  %849 = select i1 %843, float %701, float 0.000000e+00
  %850 = select i1 %843, float %702, float 1.000000e+00
  %851 = and i32 %89, 6
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %946, label %853, !dx.controlflow.hints !62

; <label>:853                                     ; preds = %798
  br i1 %845, label %854, label %868, !dx.controlflow.hints !63

; <label>:854                                     ; preds = %853
  %855 = fmul fast float %848, %850
  %856 = fmul fast float %850, %849
  %857 = fmul fast float %848, %848
  %858 = fsub fast float -0.000000e+00, %857
  %859 = fmul fast float %849, %849
  %860 = fsub fast float %858, %859
  %861 = call float @dx.op.dot3.f32(i32 55, float %855, float %856, float %860, float %855, float %856, float %860)  ; Dot3(ax,ay,az,bx,by,bz)
  %862 = fcmp fast olt float %861, 0x3F50624DE0000000
  br i1 %862, label %868, label %863, !dx.controlflow.hints !64

; <label>:863                                     ; preds = %854
  %864 = call float @dx.op.unary.f32(i32 25, float %861)  ; Rsqrt(value)
  %865 = fmul fast float %864, %855
  %866 = fmul fast float %864, %856
  %867 = fmul fast float %864, %860
  br label %868

; <label>:868                                     ; preds = %863, %854, %853
  %869 = phi float [ 1.000000e+00, %853 ], [ %865, %863 ], [ 1.000000e+00, %854 ]
  %870 = phi float [ 0.000000e+00, %853 ], [ %866, %863 ], [ 0.000000e+00, %854 ]
  %871 = phi float [ 0.000000e+00, %853 ], [ %867, %863 ], [ 0.000000e+00, %854 ]
  %872 = icmp eq i32 %851, 6
  br i1 %872, label %873, label %946, !dx.controlflow.hints !65

; <label>:873                                     ; preds = %868
  %874 = fmul fast float %871, %849
  %875 = fmul fast float %870, %850
  %876 = fsub fast float %874, %875
  %877 = fmul fast float %869, %850
  %878 = fmul fast float %871, %848
  %879 = fsub fast float %877, %878
  %880 = fmul fast float %870, %848
  %881 = fmul fast float %869, %849
  %882 = fsub fast float %880, %881
  %883 = call float @dx.op.dot3.f32(i32 55, float %876, float %879, float %882, float %876, float %879, float %882)  ; Dot3(ax,ay,az,bx,by,bz)
  %884 = call float @dx.op.unary.f32(i32 25, float %883)  ; Rsqrt(value)
  %885 = fmul fast float %884, %876
  %886 = fmul fast float %884, %879
  %887 = fmul fast float %884, %882
  %888 = fadd fast float %869, %850
  %889 = fadd fast float %888, %886
  %890 = fcmp fast ogt float %889, 0.000000e+00
  br i1 %890, label %891, label %902, !dx.controlflow.hints !66

; <label>:891                                     ; preds = %873
  %892 = fadd fast float %889, 1.000000e+00
  %893 = fsub fast float %887, %849
  %894 = fsub fast float %848, %871
  %895 = fsub fast float %870, %885
  %896 = call float @dx.op.unary.f32(i32 25, float %892)  ; Rsqrt(value)
  %897 = fmul fast float %896, 5.000000e-01
  %898 = fmul fast float %897, %893
  %899 = fmul fast float %897, %894
  %900 = fmul fast float %897, %895
  %901 = fmul fast float %897, %892
  br label %946

; <label>:902                                     ; preds = %873
  %903 = fcmp fast ogt float %869, %886
  %904 = fcmp fast ogt float %869, %850
  %905 = and i1 %904, %903
  br i1 %905, label %906, label %919, !dx.controlflow.hints !67

; <label>:906                                     ; preds = %902
  %907 = fsub fast float 1.000000e+00, %850
  %908 = fadd fast float %907, %869
  %909 = fsub fast float %908, %886
  %910 = fsub fast float %887, %849
  %911 = fadd fast float %885, %870
  %912 = fadd fast float %871, %848
  %913 = call float @dx.op.unary.f32(i32 25, float %909)  ; Rsqrt(value)
  %914 = fmul fast float %913, 5.000000e-01
  %915 = fmul fast float %914, %909
  %916 = fmul fast float %914, %911
  %917 = fmul fast float %914, %912
  %918 = fmul fast float %914, %910
  br label %946

; <label>:919                                     ; preds = %902
  %920 = fcmp fast ogt float %886, %850
  %921 = fadd fast float %887, %849
  br i1 %920, label %922, label %934, !dx.controlflow.hints !68

; <label>:922                                     ; preds = %919
  %923 = fsub fast float 1.000000e+00, %850
  %924 = fsub fast float %923, %869
  %925 = fadd fast float %924, %886
  %926 = fsub fast float %848, %871
  %927 = fadd fast float %885, %870
  %928 = call float @dx.op.unary.f32(i32 25, float %925)  ; Rsqrt(value)
  %929 = fmul fast float %928, 5.000000e-01
  %930 = fmul fast float %929, %927
  %931 = fmul fast float %929, %925
  %932 = fmul fast float %929, %921
  %933 = fmul fast float %929, %926
  br label %946

; <label>:934                                     ; preds = %919
  %935 = fadd fast float %850, 1.000000e+00
  %936 = fsub fast float %935, %869
  %937 = fsub fast float %936, %886
  %938 = fsub fast float %870, %885
  %939 = fadd fast float %871, %848
  %940 = call float @dx.op.unary.f32(i32 25, float %937)  ; Rsqrt(value)
  %941 = fmul fast float %940, 5.000000e-01
  %942 = fmul fast float %941, %939
  %943 = fmul fast float %941, %921
  %944 = fmul fast float %941, %937
  %945 = fmul fast float %941, %938
  br label %946

; <label>:946                                     ; preds = %934, %922, %906, %891, %868, %798
  %947 = phi float [ %869, %868 ], [ 1.000000e+00, %798 ], [ %869, %934 ], [ %869, %922 ], [ %869, %906 ], [ %869, %891 ]
  %948 = phi float [ %870, %868 ], [ 0.000000e+00, %798 ], [ %870, %934 ], [ %870, %922 ], [ %870, %906 ], [ %870, %891 ]
  %949 = phi float [ %871, %868 ], [ 0.000000e+00, %798 ], [ %871, %934 ], [ %871, %922 ], [ %871, %906 ], [ %871, %891 ]
  %950 = phi float [ 0.000000e+00, %868 ], [ 0.000000e+00, %798 ], [ %942, %934 ], [ %930, %922 ], [ %915, %906 ], [ %898, %891 ]
  %951 = phi float [ 0.000000e+00, %868 ], [ 0.000000e+00, %798 ], [ %943, %934 ], [ %931, %922 ], [ %916, %906 ], [ %899, %891 ]
  %952 = phi float [ 0.000000e+00, %868 ], [ 0.000000e+00, %798 ], [ %944, %934 ], [ %932, %922 ], [ %917, %906 ], [ %900, %891 ]
  %953 = phi float [ 1.000000e+00, %868 ], [ 1.000000e+00, %798 ], [ %945, %934 ], [ %933, %922 ], [ %918, %906 ], [ %901, %891 ]
  br i1 %847, label %1055, label %954, !dx.controlflow.hints !69

; <label>:954                                     ; preds = %946
  %955 = fsub fast float %63, %59
  %956 = fsub fast float %64, %60
  %957 = fsub fast float %65, %61
  %958 = fmul fast float %955, 0x3DF0000000000000
  %959 = fmul fast float %958, %725
  %960 = fmul fast float %956, 0x3DF0000000000000
  %961 = fmul fast float %960, %732
  %962 = fmul fast float %957, 0x3DF0000000000000
  %963 = fmul fast float %962, %739
  %964 = fadd fast float %959, %59
  %965 = fadd fast float %961, %60
  %966 = fadd fast float %963, %61
  %967 = fcmp fast une float %69, 0.000000e+00
  br i1 %967, label %968, label %984, !dx.controlflow.hints !70

; <label>:968                                     ; preds = %954
  %969 = fdiv fast float %964, %69
  %970 = fsub fast float -0.000000e+00, %969
  %971 = fcmp fast oge float %969, %970
  %972 = call float @dx.op.unary.f32(i32 6, float %969)  ; FAbs(value)
  %973 = call float @dx.op.unary.f32(i32 22, float %972)  ; Frc(value)
  %974 = fsub fast float -0.000000e+00, %973
  %975 = select i1 %971, float %973, float %974
  %976 = fmul fast float %975, %69
  %977 = fmul fast float %69, 5.000000e-01
  %978 = fcmp fast ogt float %976, %977
  br i1 %978, label %979, label %982, !dx.controlflow.hints !71

; <label>:979                                     ; preds = %968
  %980 = fadd fast float %964, %69
  %981 = fsub fast float %980, %976
  br label %984

; <label>:982                                     ; preds = %968
  %983 = fsub fast float %964, %976
  br label %984

; <label>:984                                     ; preds = %982, %979, %954
  %985 = phi float [ %981, %979 ], [ %983, %982 ], [ %964, %954 ]
  %986 = fcmp fast une float %70, 0.000000e+00
  br i1 %986, label %987, label %1003, !dx.controlflow.hints !70

; <label>:987                                     ; preds = %984
  %988 = fdiv fast float %965, %70
  %989 = fsub fast float -0.000000e+00, %988
  %990 = fcmp fast oge float %988, %989
  %991 = call float @dx.op.unary.f32(i32 6, float %988)  ; FAbs(value)
  %992 = call float @dx.op.unary.f32(i32 22, float %991)  ; Frc(value)
  %993 = fsub fast float -0.000000e+00, %992
  %994 = select i1 %990, float %992, float %993
  %995 = fmul fast float %994, %70
  %996 = fmul fast float %70, 5.000000e-01
  %997 = fcmp fast ogt float %995, %996
  br i1 %997, label %998, label %1001, !dx.controlflow.hints !71

; <label>:998                                     ; preds = %987
  %999 = fadd fast float %965, %70
  %1000 = fsub fast float %999, %995
  br label %1003

; <label>:1001                                    ; preds = %987
  %1002 = fsub fast float %965, %995
  br label %1003

; <label>:1003                                    ; preds = %1001, %998, %984
  %1004 = phi float [ %1000, %998 ], [ %1002, %1001 ], [ %965, %984 ]
  %1005 = fcmp fast une float %71, 0.000000e+00
  br i1 %1005, label %1006, label %1022, !dx.controlflow.hints !70

; <label>:1006                                    ; preds = %1003
  %1007 = fdiv fast float %966, %71
  %1008 = fsub fast float -0.000000e+00, %1007
  %1009 = fcmp fast oge float %1007, %1008
  %1010 = call float @dx.op.unary.f32(i32 6, float %1007)  ; FAbs(value)
  %1011 = call float @dx.op.unary.f32(i32 22, float %1010)  ; Frc(value)
  %1012 = fsub fast float -0.000000e+00, %1011
  %1013 = select i1 %1009, float %1011, float %1012
  %1014 = fmul fast float %1013, %71
  %1015 = fmul fast float %71, 5.000000e-01
  %1016 = fcmp fast ogt float %1014, %1015
  br i1 %1016, label %1017, label %1020, !dx.controlflow.hints !71

; <label>:1017                                    ; preds = %1006
  %1018 = fadd fast float %966, %71
  %1019 = fsub fast float %1018, %1014
  br label %1022

; <label>:1020                                    ; preds = %1006
  %1021 = fsub fast float %966, %1014
  br label %1022

; <label>:1022                                    ; preds = %1020, %1017, %1003
  %1023 = phi float [ %1019, %1017 ], [ %1021, %1020 ], [ %966, %1003 ]
  %1024 = fmul fast float %985, 5.000000e-01
  %1025 = fmul fast float %1004, 5.000000e-01
  %1026 = fmul fast float %1023, 5.000000e-01
  %1027 = call float @dx.op.unary.f32(i32 13, float %1024)  ; Sin(value)
  %1028 = call float @dx.op.unary.f32(i32 12, float %1024)  ; Cos(value)
  %1029 = call float @dx.op.unary.f32(i32 13, float %1025)  ; Sin(value)
  %1030 = call float @dx.op.unary.f32(i32 12, float %1025)  ; Cos(value)
  %1031 = call float @dx.op.unary.f32(i32 13, float %1026)  ; Sin(value)
  %1032 = call float @dx.op.unary.f32(i32 12, float %1026)  ; Cos(value)
  %1033 = fmul fast float %1030, %1028
  %1034 = fmul fast float %1033, %1031
  %1035 = fmul fast float %1029, %1027
  %1036 = fmul fast float %1035, %1032
  %1037 = fsub fast float %1034, %1036
  %1038 = fmul fast float %1030, %1027
  %1039 = fmul fast float %1038, %1032
  %1040 = fmul fast float %1029, %1028
  %1041 = fmul fast float %1040, %1031
  %1042 = fadd fast float %1039, %1041
  %1043 = fmul fast float %1040, %1032
  %1044 = fmul fast float %1038, %1031
  %1045 = fsub fast float %1043, %1044
  %1046 = fmul fast float %1033, %1032
  %1047 = fmul fast float %1035, %1031
  %1048 = fadd fast float %1046, %1047
  %1049 = call float @dx.op.dot4.f32(i32 56, float %1037, float %1042, float %1045, float %1048, float %1037, float %1042, float %1045, float %1048)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1050 = call float @dx.op.unary.f32(i32 25, float %1049)  ; Rsqrt(value)
  %1051 = fmul fast float %1037, %1050
  %1052 = fmul fast float %1042, %1050
  %1053 = fmul fast float %1045, %1050
  %1054 = fmul fast float %1048, %1050
  br label %1055

; <label>:1055                                    ; preds = %1022, %946
  %1056 = phi float [ %1051, %1022 ], [ 0.000000e+00, %946 ]
  %1057 = phi float [ %1052, %1022 ], [ 0.000000e+00, %946 ]
  %1058 = phi float [ %1053, %1022 ], [ 0.000000e+00, %946 ]
  %1059 = phi float [ %1054, %1022 ], [ 1.000000e+00, %946 ]
  %1060 = icmp eq i32 %851, 6
  br i1 %1060, label %1089, label %1061, !dx.controlflow.hints !72

; <label>:1061                                    ; preds = %1055
  br i1 %843, label %1062, label %1075, !dx.controlflow.hints !73

; <label>:1062                                    ; preds = %1061
  %1063 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %848, float %849, float %850)  ; Dot3(ax,ay,az,bx,by,bz)
  %1064 = fcmp fast ogt float %1063, 0x3FEFF7CEE0000000
  br i1 %1064, label %1089, label %1065, !dx.controlflow.hints !74

; <label>:1065                                    ; preds = %1062
  %1066 = fcmp fast olt float %1063, 0xBFEFF7CEE0000000
  br i1 %1066, label %1089, label %1067, !dx.controlflow.hints !75

; <label>:1067                                    ; preds = %1065
  %1068 = fsub fast float -0.000000e+00, %849
  %1069 = fadd fast float %1063, 1.000000e+00
  %1070 = call float @dx.op.dot4.f32(i32 56, float %1068, float %848, float 0.000000e+00, float %1069, float %1068, float %848, float 0.000000e+00, float %1069)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1071 = call float @dx.op.unary.f32(i32 25, float %1070)  ; Rsqrt(value)
  %1072 = fmul fast float %1071, %1068
  %1073 = fmul fast float %1071, %848
  %1074 = fmul fast float %1071, %1069
  br label %1089

; <label>:1075                                    ; preds = %1061
  br i1 %845, label %1076, label %1089, !dx.controlflow.hints !76

; <label>:1076                                    ; preds = %1075
  %1077 = call float @dx.op.dot3.f32(i32 55, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %947, float %948, float %949)  ; Dot3(ax,ay,az,bx,by,bz)
  %1078 = fcmp fast ogt float %1077, 0x3FEFF7CEE0000000
  br i1 %1078, label %1089, label %1079, !dx.controlflow.hints !74

; <label>:1079                                    ; preds = %1076
  %1080 = fcmp fast olt float %1077, 0xBFEFF7CEE0000000
  br i1 %1080, label %1089, label %1081, !dx.controlflow.hints !75

; <label>:1081                                    ; preds = %1079
  %1082 = fsub fast float -0.000000e+00, %949
  %1083 = fadd fast float %1077, 1.000000e+00
  %1084 = call float @dx.op.dot4.f32(i32 56, float 0.000000e+00, float %1082, float %948, float %1083, float 0.000000e+00, float %1082, float %948, float %1083)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1085 = call float @dx.op.unary.f32(i32 25, float %1084)  ; Rsqrt(value)
  %1086 = fmul fast float %1085, %1082
  %1087 = fmul fast float %1085, %948
  %1088 = fmul fast float %1085, %1083
  br label %1089

; <label>:1089                                    ; preds = %1081, %1079, %1076, %1075, %1067, %1065, %1062, %1055
  %1090 = phi float [ 0.000000e+00, %1075 ], [ %950, %1055 ], [ %1072, %1067 ], [ 0.000000e+00, %1062 ], [ 0.000000e+00, %1081 ], [ 0.000000e+00, %1076 ], [ 0.000000e+00, %1065 ], [ 0.000000e+00, %1079 ]
  %1091 = phi float [ 0.000000e+00, %1075 ], [ %951, %1055 ], [ %1073, %1067 ], [ 0.000000e+00, %1062 ], [ %1086, %1081 ], [ 0.000000e+00, %1076 ], [ -1.000000e+00, %1065 ], [ 0.000000e+00, %1079 ]
  %1092 = phi float [ 0.000000e+00, %1075 ], [ %952, %1055 ], [ 0.000000e+00, %1067 ], [ 0.000000e+00, %1062 ], [ %1087, %1081 ], [ 0.000000e+00, %1076 ], [ 0.000000e+00, %1065 ], [ -1.000000e+00, %1079 ]
  %1093 = phi float [ 1.000000e+00, %1075 ], [ %953, %1055 ], [ %1074, %1067 ], [ 1.000000e+00, %1062 ], [ %1088, %1081 ], [ 1.000000e+00, %1076 ], [ 0.000000e+00, %1065 ], [ 0.000000e+00, %1079 ]
  %1094 = fmul fast float %1093, %1056
  %1095 = fmul fast float %1093, %1057
  %1096 = fmul fast float %1093, %1058
  %1097 = fmul fast float %1090, %1059
  %1098 = fmul fast float %1091, %1059
  %1099 = fmul fast float %1092, %1059
  %1100 = fmul fast float %1091, %1058
  %1101 = fmul fast float %1092, %1057
  %1102 = fmul fast float %1092, %1056
  %1103 = fmul fast float %1090, %1058
  %1104 = fmul fast float %1090, %1057
  %1105 = fmul fast float %1091, %1056
  %1106 = fadd fast float %1100, %1097
  %1107 = fsub fast float %1106, %1101
  %1108 = fadd fast float %1107, %1094
  %1109 = fsub fast float %1098, %1103
  %1110 = fadd fast float %1109, %1102
  %1111 = fadd fast float %1110, %1095
  %1112 = fsub fast float %1104, %1105
  %1113 = fadd fast float %1112, %1099
  %1114 = fadd fast float %1113, %1096
  %1115 = fmul fast float %1093, %1059
  %1116 = call float @dx.op.dot3.f32(i32 55, float %1090, float %1091, float %1092, float %1056, float %1057, float %1058)  ; Dot3(ax,ay,az,bx,by,bz)
  %1117 = fsub fast float %1115, %1116
  %1118 = fmul fast float %833, 4.096000e+03
  %1119 = fmul fast float %837, 4.096000e+03
  %1120 = fmul fast float %841, 4.096000e+03
  %1121 = fptosi float %1118 to i32
  %1122 = fptosi float %1119 to i32
  %1123 = fptosi float %1120 to i32
  %1124 = bitcast i32 %1121 to float
  %1125 = bitcast i32 %1122 to float
  %1126 = bitcast i32 %1123 to float
  %1127 = call float @dx.op.binary.f32(i32 35, float %1108, float -1.000000e+00)  ; FMax(a,b)
  %1128 = call float @dx.op.binary.f32(i32 36, float %1127, float 1.000000e+00)  ; FMin(a,b)
  %1129 = fadd fast float %1128, 1.000000e+00
  %1130 = fmul fast float %1129, 3.276750e+04
  %1131 = fadd fast float %1130, 5.000000e-01
  %1132 = call float @dx.op.unary.f32(i32 27, float %1131)  ; Round_ni(value)
  %1133 = fptoui float %1132 to i32
  %1134 = call float @dx.op.binary.f32(i32 35, float %1111, float -1.000000e+00)  ; FMax(a,b)
  %1135 = call float @dx.op.binary.f32(i32 36, float %1134, float 1.000000e+00)  ; FMin(a,b)
  %1136 = fadd fast float %1135, 1.000000e+00
  %1137 = fmul fast float %1136, 3.276750e+04
  %1138 = fadd fast float %1137, 5.000000e-01
  %1139 = call float @dx.op.unary.f32(i32 27, float %1138)  ; Round_ni(value)
  %1140 = fptoui float %1139 to i32
  %1141 = call float @dx.op.binary.f32(i32 35, float %1114, float -1.000000e+00)  ; FMax(a,b)
  %1142 = call float @dx.op.binary.f32(i32 36, float %1141, float 1.000000e+00)  ; FMin(a,b)
  %1143 = fadd fast float %1142, 1.000000e+00
  %1144 = fmul fast float %1143, 3.276750e+04
  %1145 = fadd fast float %1144, 5.000000e-01
  %1146 = call float @dx.op.unary.f32(i32 27, float %1145)  ; Round_ni(value)
  %1147 = fptoui float %1146 to i32
  %1148 = call float @dx.op.binary.f32(i32 35, float %1117, float -1.000000e+00)  ; FMax(a,b)
  %1149 = call float @dx.op.binary.f32(i32 36, float %1148, float 1.000000e+00)  ; FMin(a,b)
  %1150 = fadd fast float %1149, 1.000000e+00
  %1151 = fmul fast float %1150, 3.276750e+04
  %1152 = fadd fast float %1151, 5.000000e-01
  %1153 = call float @dx.op.unary.f32(i32 27, float %1152)  ; Round_ni(value)
  %1154 = fptoui float %1153 to i32
  %1155 = and i32 %1133, 65535
  %1156 = shl i32 %1140, 16
  %1157 = or i32 %1156, %1155
  %1158 = and i32 %1147, 65535
  %1159 = shl i32 %1154, 16
  %1160 = or i32 %1159, %1158
  %1161 = call i32 @dx.op.legacyF32ToF16(i32 130, float %753)  ; LegacyF32ToF16(value)
  %1162 = and i32 %1161, 65535
  %1163 = mul i32 %167, 24
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %1163, i32 undef, float %1124, float %1125, float %1126, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1164 = add i32 %1163, 12
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1164, i32 undef, i32 %1157, i32 %1160, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1165 = add i32 %1163, 20
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1165, i32 undef, i32 %1162, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br i1 %44, label %1340, label %1166, !dx.controlflow.hints !77

; <label>:1166                                    ; preds = %1089
  %1167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 128)  ; CBufferLoadLegacy(handle,regIndex)
  %1168 = extractvalue %dx.types.CBufRet.i32 %1167, 3
  %1169 = and i32 %1168, 1
  %1170 = icmp eq i32 %1169, 0
  br i1 %1170, label %1337, label %1171, !dx.controlflow.hints !78

; <label>:1171                                    ; preds = %1166
  %1172 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1173 = extractvalue %dx.types.CBufRet.i32 %1172, 0
  %1174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1175 = extractvalue %dx.types.CBufRet.f32 %1174, 3
  %1176 = extractvalue %dx.types.CBufRet.f32 %1174, 0
  %1177 = extractvalue %dx.types.CBufRet.f32 %1174, 1
  %1178 = fsub fast float %833, %1176
  %1179 = fsub fast float %837, %1177
  %1180 = uitofp i32 %1173 to float
  %1181 = fptosi float %1180 to i32
  %1182 = fmul fast float %1178, 0x3F3A027520000000
  %1183 = fmul fast float %1179, 0x3F3A027520000000
  %1184 = add nsw i32 %1181, -1
  %1185 = fptosi float %1183 to i32
  %1186 = call i32 @dx.op.binary.i32(i32 37, i32 %1185, i32 0)  ; IMax(a,b)
  %1187 = call i32 @dx.op.binary.i32(i32 38, i32 %1186, i32 %1184)  ; IMin(a,b)
  %1188 = fptosi float %1182 to i32
  %1189 = call i32 @dx.op.binary.i32(i32 37, i32 %1188, i32 0)  ; IMax(a,b)
  %1190 = call i32 @dx.op.binary.i32(i32 38, i32 %1189, i32 %1184)  ; IMin(a,b)
  %1191 = mul nsw i32 %1187, %1181
  %1192 = add nsw i32 %1190, %1191
  %1193 = sdiv i32 %1192, 4
  %1194 = shl nsw i32 %1193, 2
  %1195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1194, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.i32 %1195, 0
  %1197 = srem i32 %1192, 4
  %1198 = shl nsw i32 %1197, 3
  %1199 = and i32 %1198, 24
  %1200 = lshr i32 %1196, %1199
  %1201 = and i32 %1200, 255
  %1202 = mul nuw nsw i32 %1201, 12
  %1203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1202, i32 undef)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.f32 %1203, 0
  %1205 = extractvalue %dx.types.ResRet.f32 %1203, 1
  %1206 = extractvalue %dx.types.ResRet.f32 %1203, 2
  %1207 = fsub fast float %1178, %1204
  %1208 = fsub fast float %1179, %1205
  %1209 = fdiv fast float %1207, %1206
  %1210 = fdiv fast float %1208, %1206
  %1211 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1212 = extractvalue %dx.types.CBufRet.i32 %1211, 2
  %1213 = uitofp i32 %1212 to float
  %1214 = extractvalue %dx.types.CBufRet.i32 %1172, 1
  %1215 = extractvalue %dx.types.CBufRet.i32 %1211, 1
  %1216 = mul i32 %1215, %1214
  %1217 = uitofp i32 %1216 to float
  %1218 = shl nuw nsw i32 %1201, 3
  %1219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.i32 %1219, 0
  %1221 = extractvalue %dx.types.ResRet.i32 %1219, 1
  %1222 = lshr i32 %1221, 16
  %1223 = and i32 %1222, 1
  %1224 = icmp eq i32 %1223, 0
  br i1 %1224, label %1225, label %1230, !dx.controlflow.hints !79

; <label>:1225                                    ; preds = %1171
  %1226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1227 = extractvalue %dx.types.ResRet.i32 %1226, 0
  %1228 = extractvalue %dx.types.ResRet.i32 %1226, 1
  %1229 = lshr i32 %1228, 16
  br label %1230

; <label>:1230                                    ; preds = %1225, %1171
  %1231 = phi i32 [ 0, %1225 ], [ %1201, %1171 ]
  %1232 = phi i32 [ %1227, %1225 ], [ %1220, %1171 ]
  %1233 = phi i32 [ %1228, %1225 ], [ %1221, %1171 ]
  %1234 = phi i32 [ %1229, %1225 ], [ %1222, %1171 ]
  %1235 = and i32 %1233, 65535
  %1236 = lshr i32 %1232, 16
  %1237 = and i32 %1232, 65535
  %1238 = lshr i32 %1234, 1
  %1239 = uitofp i32 %1238 to float
  %1240 = icmp eq i32 %1231, 0
  %1241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 127)  ; CBufferLoadLegacy(handle,regIndex)
  %1242 = extractvalue %dx.types.CBufRet.f32 %1241, 2
  %1243 = bitcast float %1242 to i32
  %1244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1245 = extractvalue %dx.types.CBufRet.f32 %1244, 0
  %1246 = fdiv fast float %1178, %1175
  %1247 = fdiv fast float %1179, %1175
  %1248 = select i1 %1240, float %1246, float %1209
  %1249 = select i1 %1240, float %1247, float %1210
  %1250 = call float @dx.op.unary.f32(i32 27, float %1245)  ; Round_ni(value)
  %1251 = fptosi float %1250 to i32
  %1252 = sub nsw i32 8, %1235
  %1253 = select i1 %1240, i32 %1243, i32 %1252
  %1254 = sub nsw i32 %1251, %1253
  %1255 = call i32 @dx.op.binary.i32(i32 37, i32 %1254, i32 0)  ; IMax(a,b)
  %1256 = call i32 @dx.op.binary.i32(i32 38, i32 %1255, i32 %1235)  ; IMin(a,b)
  %1257 = fptoui float %1239 to i32
  %1258 = and i32 %1256, 31
  %1259 = lshr i32 %1257, %1258
  %1260 = add i32 %1259, -1
  %1261 = uitofp i32 %1260 to float
  %1262 = uitofp i32 %1259 to float
  %1263 = fmul fast float %1262, %1248
  %1264 = fmul fast float %1262, %1249
  %1265 = call float @dx.op.unary.f32(i32 27, float %1263)  ; Round_ni(value)
  %1266 = call float @dx.op.unary.f32(i32 27, float %1264)  ; Round_ni(value)
  %1267 = call float @dx.op.binary.f32(i32 35, float %1265, float 0.000000e+00)  ; FMax(a,b)
  %1268 = call float @dx.op.binary.f32(i32 35, float %1266, float 0.000000e+00)  ; FMax(a,b)
  %1269 = call float @dx.op.binary.f32(i32 36, float %1267, float %1261)  ; FMin(a,b)
  %1270 = call float @dx.op.binary.f32(i32 36, float %1268, float %1261)  ; FMin(a,b)
  %1271 = fptoui float %1269 to i32
  %1272 = fptoui float %1270 to i32
  %1273 = lshr i32 %1237, %1258
  %1274 = lshr i32 %1236, %1258
  %1275 = add i32 %1271, %1273
  %1276 = add i32 %1272, %1274
  %1277 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %13, i32 %1256, i32 %1275, i32 %1276, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1278 = extractvalue %dx.types.ResRet.i32 %1277, 0
  %1279 = and i32 %1278, 255
  %1280 = uitofp i32 %1279 to float
  %1281 = lshr i32 %1278, 8
  %1282 = and i32 %1281, 255
  %1283 = uitofp i32 %1282 to float
  %1284 = lshr i32 %1278, 16
  %1285 = and i32 %1284, 255
  %1286 = uitofp i32 %1285 to float
  %1287 = fptoui float %1286 to i32
  %1288 = lshr i32 %1278, 24
  %1289 = uitofp i32 %1288 to float
  %1290 = fadd fast float %1289, 1.000000e+00
  %1291 = fptoui float %1290 to i32
  %1292 = uitofp i32 %1291 to float
  %1293 = fmul fast float %1292, %1248
  %1294 = fmul fast float %1292, %1249
  %1295 = add i32 %1291, -1
  %1296 = uitofp i32 %1295 to float
  %1297 = call float @dx.op.unary.f32(i32 27, float %1293)  ; Round_ni(value)
  %1298 = call float @dx.op.unary.f32(i32 27, float %1294)  ; Round_ni(value)
  %1299 = call float @dx.op.binary.f32(i32 35, float %1297, float 0.000000e+00)  ; FMax(a,b)
  %1300 = call float @dx.op.binary.f32(i32 35, float %1298, float 0.000000e+00)  ; FMax(a,b)
  %1301 = call float @dx.op.binary.f32(i32 36, float %1299, float %1296)  ; FMin(a,b)
  %1302 = call float @dx.op.binary.f32(i32 36, float %1300, float %1296)  ; FMin(a,b)
  %1303 = fsub fast float %1293, %1301
  %1304 = fsub fast float %1294, %1302
  %1305 = fadd fast float %1213, 8.000000e+00
  %1306 = fmul fast float %1280, %1305
  %1307 = fmul fast float %1283, %1305
  %1308 = fmul fast float %1303, %1213
  %1309 = fmul fast float %1304, %1213
  %1310 = fadd fast float %1306, 4.500000e+00
  %1311 = fadd fast float %1310, %1308
  %1312 = fadd fast float %1307, 4.500000e+00
  %1313 = fadd fast float %1312, %1309
  %1314 = fdiv fast float %1311, %1217
  %1315 = fdiv fast float %1313, %1217
  %1316 = uitofp i32 %1287 to float
  %1317 = fsub fast float %1245, %1316
  %1318 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %1314, float %1315, float undef, float undef, i32 0, i32 0, i32 undef, float %1317)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1319 = extractvalue %dx.types.ResRet.f32 %1318, 0
  %1320 = extractvalue %dx.types.ResRet.f32 %1318, 1
  %1321 = extractvalue %dx.types.ResRet.f32 %1318, 2
  %1322 = sub i32 %167, %48
  %1323 = fmul fast float %1321, 2.550000e+02
  %1324 = fptoui float %1323 to i32
  %1325 = shl i32 %1324, 16
  %1326 = and i32 %1325, 16711680
  %1327 = fmul fast float %1320, 2.550000e+02
  %1328 = fptoui float %1327 to i32
  %1329 = shl i32 %1328, 8
  %1330 = and i32 %1329, 65280
  %1331 = fmul fast float %1319, 2.550000e+02
  %1332 = fptoui float %1331 to i32
  %1333 = and i32 %1332, 255
  %1334 = or i32 %1330, %1333
  %1335 = or i32 %1334, %1326
  %1336 = shl i32 %1322, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1336, i32 undef, i32 %1335, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1340

; <label>:1337                                    ; preds = %1166
  %1338 = sub i32 %167, %48
  %1339 = shl i32 %1338, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1339, i32 undef, i32 16777215, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1340

; <label>:1340                                    ; preds = %1337, %1230, %1089, %131, %113, %101
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #3

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #3

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { noduplicate nounwind }
attributes #3 = { nounwind readonly }

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
!4 = !{!5, !24, !29, !33}
!5 = !{!6, !7, !8, !10, !11, !13, !14, !16, !17, !18, !20, !21, !22, !23}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 14, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !9}
!9 = !{i32 0, i32 9}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !9}
!11 = !{i32 4, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !12}
!12 = !{i32 0, i32 5}
!13 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !9}
!14 = !{i32 6, %"class.StructuredBuffer<StTerrainClutterLayer>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !15}
!15 = !{i32 1, i32 120}
!16 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!17 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!18 = !{i32 9, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 9, i32 1, i32 12, i32 0, !19}
!19 = !{i32 1, i32 4}
!20 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!21 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 11, i32 1, i32 11, i32 0, null}
!22 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 10, i32 1, i32 11, i32 0, null}
!23 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!24 = !{!25, !26, !28}
!25 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!26 = !{i32 1, %"class.RWStructuredBuffer<GfxClutterCollectionGPUData>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i1 false, i1 false, i1 false, !27}
!27 = !{i32 1, i32 8}
!28 = !{i32 2, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!29 = !{!30, !31, !32}
!30 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!31 = !{i32 1, %GPClutterCollectionGenSurfaceConsts* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!32 = !{i32 2, %GPClutterCollectionGenClutterConsts* undef, !"", i32 0, i32 1, i32 1, i32 64, null}
!33 = !{!34}
!34 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!35 = !{void ()* @clutter_gen_pass, !"clutter_gen_pass", null, !4, !36}
!36 = !{i32 0, i64 272, i32 4, !37}
!37 = !{i32 64, i32 1, i32 1}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = !{!43, !43, i64 0}
!43 = !{!"int", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = !{!50, !50, i64 0}
!50 = !{!"float", !44, i64 0}
!51 = !{!52, !54, !55, !57, !59}
!52 = distinct !{!52, !53, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z: %tangentX"}
!53 = distinct !{!53, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z"}
!54 = distinct !{!54, !53, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z: %tangentY"}
!55 = distinct !{!55, !56, !"\01?VHM_SampleNormalAndHeightAtWorldPos@@YA?AV?$vector@M$02@@V?$vector@M$01@@MMAIAM@Z: %height"}
!56 = distinct !{!56, !"\01?VHM_SampleNormalAndHeightAtWorldPos@@YA?AV?$vector@M$02@@V?$vector@M$01@@MMAIAM@Z"}
!57 = distinct !{!57, !58, !"\01?SampleTerrainNormalHeight@@YAXIV?$vector@M$01@@AIAMAIAV?$vector@M$02@@@Z: %terrainHeight"}
!58 = distinct !{!58, !"\01?SampleTerrainNormalHeight@@YAXIV?$vector@M$01@@AIAMAIAV?$vector@M$02@@@Z"}
!59 = distinct !{!59, !58, !"\01?SampleTerrainNormalHeight@@YAXIV?$vector@M$01@@AIAMAIAV?$vector@M$02@@@Z: %terrainNormal"}
!60 = !{!55, !57, !59}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}

