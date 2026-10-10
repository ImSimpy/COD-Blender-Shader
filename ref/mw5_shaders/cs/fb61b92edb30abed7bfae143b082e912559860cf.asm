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
; shader hash: 439fd907d7c45e7bf531a4829d2fc316
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
;   [4 x i8] (type annotation not present)
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
;                                   texture  struct         r/o      T2             t8     1
;                                   texture     f32          2d      T3             t0     1
;                                   texture     f32          2d      T4             t5     1
;                                   texture     u32          2d      T5             t6     1
;                                   texture     f32          2d      T6            t13     1
;                                   texture  struct         r/o      T7             t2     1
;                                   texture    byte         r/o      T8             t3     1
;                                   texture    byte         r/o      T9             t4     1
;                                   texture  struct         r/o     T10             t9     1
;                                   texture    byte         r/o     T11             t1     1
;                                   texture    byte         r/o     T12            t11     1
;                                   texture    byte         r/o     T13            t10     1
;                                   texture    byte         r/o     T14            t12     1
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
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.StructuredBuffer<StTerrainClutterLayer>" = type { %struct.StTerrainClutterLayer }
%struct.StTerrainClutterLayer = type { <4 x float>, <3 x float>, i32, <3 x float>, i32, <3 x float>, i32, <2 x i32>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float }
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

define void @clutter_gen_pass_for_reactivemotion_models() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %24 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %25 = call i32 @dx.op.groupId.i32(i32 94, i32 2)  ; GroupId(component)
  %26 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %27 = alloca [4 x i32], align 4
  %28 = alloca [4 x i32], align 4
  %29 = alloca [4 x i32], align 4
  %30 = alloca [4 x i32], align 4
  %31 = alloca [4 x i32], align 4
  %32 = alloca [4 x i32], align 4
  %33 = alloca [4 x i32], align 4
  %34 = alloca [4 x i32], align 4
  %35 = alloca [4 x i32], align 4
  %36 = alloca [4 x i32], align 4
  %37 = alloca [4 x float], align 4
  %38 = alloca [4 x float], align 4
  %39 = alloca [4 x float], align 4
  %40 = alloca [4 x float], align 4
  %41 = alloca [4 x float], align 4
  %42 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.i32 %42, 0
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  %46 = lshr i32 %43, 2
  %47 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.i32 %47, 3
  %49 = lshr i32 %48, 4
  %50 = mul i32 %46, 12
  %51 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %50, i32 undef)  ; BufferLoad(srv,index,wot)
  %52 = extractvalue %dx.types.ResRet.i32 %51, 2
  %53 = and i32 %52, 65535
  %54 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %53, i32 0)  ; BufferLoad(srv,index,wot)
  %55 = extractvalue %dx.types.ResRet.f32 %54, 0
  %56 = extractvalue %dx.types.ResRet.f32 %54, 1
  %57 = extractvalue %dx.types.ResRet.f32 %54, 2
  %58 = extractvalue %dx.types.ResRet.f32 %54, 3
  %59 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %53, i32 16)  ; BufferLoad(srv,index,wot)
  %60 = extractvalue %dx.types.ResRet.f32 %59, 0
  %61 = extractvalue %dx.types.ResRet.f32 %59, 1
  %62 = extractvalue %dx.types.ResRet.f32 %59, 2
  %63 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %53, i32 32)  ; BufferLoad(srv,index,wot)
  %64 = extractvalue %dx.types.ResRet.f32 %63, 0
  %65 = extractvalue %dx.types.ResRet.f32 %63, 1
  %66 = extractvalue %dx.types.ResRet.f32 %63, 2
  %67 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %53, i32 44)  ; BufferLoad(srv,index,wot)
  %68 = extractvalue %dx.types.ResRet.i32 %67, 0
  %69 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %53, i32 48)  ; BufferLoad(srv,index,wot)
  %70 = extractvalue %dx.types.ResRet.f32 %69, 0
  %71 = extractvalue %dx.types.ResRet.f32 %69, 1
  %72 = extractvalue %dx.types.ResRet.f32 %69, 2
  %73 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %53, i32 60)  ; BufferLoad(srv,index,wot)
  %74 = extractvalue %dx.types.ResRet.i32 %73, 0
  %75 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %53, i32 64)  ; BufferLoad(srv,index,wot)
  %76 = extractvalue %dx.types.ResRet.i32 %75, 0
  %77 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %53, i32 72)  ; BufferLoad(srv,index,wot)
  %78 = extractvalue %dx.types.ResRet.f32 %77, 0
  %79 = extractvalue %dx.types.ResRet.f32 %77, 1
  %80 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %53, i32 80)  ; BufferLoad(srv,index,wot)
  %81 = extractvalue %dx.types.ResRet.f32 %80, 0
  %82 = extractvalue %dx.types.ResRet.f32 %80, 1
  %83 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %53, i32 88)  ; BufferLoad(srv,index,wot)
  %84 = extractvalue %dx.types.ResRet.f32 %83, 0
  %85 = extractvalue %dx.types.ResRet.f32 %83, 1
  %86 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %53, i32 96)  ; BufferLoad(srv,index,wot)
  %87 = extractvalue %dx.types.ResRet.f32 %86, 0
  %88 = extractvalue %dx.types.ResRet.f32 %86, 1
  %89 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %53, i32 108)  ; BufferLoad(srv,index,wot)
  %90 = extractvalue %dx.types.ResRet.i32 %89, 0
  %91 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %53, i32 112)  ; BufferLoad(srv,index,wot)
  %92 = extractvalue %dx.types.ResRet.f32 %91, 0
  %93 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %53, i32 116)  ; BufferLoad(srv,index,wot)
  %94 = extractvalue %dx.types.ResRet.f32 %93, 0
  %95 = or i32 %24, %23
  %96 = or i32 %95, %25
  %97 = or i32 %96, %26
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %102, !dx.controlflow.hints !39

; <label>:99                                      ; preds = %0
  %100 = extractvalue %dx.types.CBufRet.i32 %42, 1
  %101 = add i32 %100, %49
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %46, i32 0, i32 %101, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %102

; <label>:102                                     ; preds = %99, %0
  %103 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.i32 %103, 2
  %105 = extractvalue %dx.types.CBufRet.i32 %103, 3
  %106 = add i32 %104, %23
  %107 = add i32 %105, %24
  %108 = mul i32 %107, %76
  %109 = add i32 %106, %68
  %110 = add i32 %109, %108
  %111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %110, i32 0)  ; BufferLoad(srv,index,wot)
  %112 = extractvalue %dx.types.ResRet.i32 %111, 0
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %1368, label %114, !dx.controlflow.hints !40

; <label>:114                                     ; preds = %102
  %115 = shl i32 %25, 3
  %116 = add i32 %112, %115
  %117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %116, i32 undef)  ; BufferLoad(srv,index,wot)
  %118 = extractvalue %dx.types.ResRet.i32 %117, 0
  %119 = extractvalue %dx.types.ResRet.i32 %117, 1
  %120 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %118)  ; Countbits(value)
  %121 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %119)  ; Countbits(value)
  %122 = add i32 %121, %120
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %1368, label %124, !dx.controlflow.hints !41

; <label>:124                                     ; preds = %114
  %125 = icmp eq i32 %26, 0
  br i1 %125, label %126, label %159, !dx.controlflow.hints !42

; <label>:126                                     ; preds = %124
  %127 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.i32 %127, 0
  %129 = extractvalue %dx.types.CBufRet.i32 %127, 1
  %130 = icmp uge i32 %106, %128
  %131 = icmp uge i32 %107, %129
  %132 = extractvalue %dx.types.CBufRet.i32 %127, 2
  %133 = extractvalue %dx.types.CBufRet.i32 %127, 3
  %134 = icmp ult i32 %106, %132
  %135 = icmp ult i32 %107, %133
  %136 = and i1 %130, %134
  %137 = and i1 %131, %135
  %138 = and i1 %136, %137
  br i1 %138, label %139, label %153, !dx.controlflow.hints !43

; <label>:139                                     ; preds = %126
  %140 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.i32 %140, 1
  %142 = sub i32 %107, %129
  %143 = extractvalue %dx.types.CBufRet.i32 %140, 2
  %144 = mul i32 %143, %142
  %145 = sub i32 %106, %128
  %146 = shl i32 %145, 5
  %147 = add i32 %146, %25
  %148 = add i32 %147, %141
  %149 = add i32 %148, %144
  %150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %149, i32 0)  ; BufferLoad(srv,index,wot)
  %151 = extractvalue %dx.types.ResRet.i32 %150, 0
  %152 = add i32 %151, -1
  store i32 %152, i32 addrspace(3)* @"\01?groupInstanceIndex@@3IA", align 4, !tbaa !44
  br label %159

; <label>:153                                     ; preds = %126
  %154 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %46, i32 4, i32 undef, i32 %122)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %155 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.i32 %155, 1
  %157 = add i32 %154, %49
  %158 = add i32 %157, %156
  store i32 %158, i32 addrspace(3)* @"\01?groupInstanceIndex@@3IA", align 4, !tbaa !44
  br label %159

; <label>:159                                     ; preds = %153, %139, %124
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %160 = shl i32 %25, 6
  %161 = add i32 %160, %26
  %162 = and i32 %161, 32
  %163 = icmp ugt i32 %162, 31
  %164 = and i32 %161, 31
  %165 = shl i32 1, %164
  %166 = select i1 %163, i32 %119, i32 %118
  %167 = and i32 %166, %165
  %168 = load i32, i32 addrspace(3)* @"\01?groupInstanceIndex@@3IA", align 4, !tbaa !44
  %169 = icmp ne i32 %168, -1
  %170 = icmp ne i32 %167, 0
  %171 = and i1 %170, %169
  br i1 %171, label %172, label %1368, !dx.controlflow.hints !48

; <label>:172                                     ; preds = %159
  %173 = uitofp i32 %106 to float
  %174 = uitofp i32 %107 to float
  %175 = add i32 %74, %161
  %176 = shl i32 %175, 3
  %177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %176, i32 undef)  ; BufferLoad(srv,index,wot)
  %178 = extractvalue %dx.types.ResRet.i32 %177, 0
  %179 = extractvalue %dx.types.ResRet.i32 %177, 1
  %180 = bitcast i32 %178 to float
  %181 = bitcast i32 %179 to float
  %182 = fadd fast float %180, %173
  %183 = fadd fast float %181, %174
  %184 = and i32 %26, 32
  %185 = and i32 %26, 31
  %186 = shl i32 1, %185
  %187 = add i32 %186, -1
  %188 = icmp eq i32 %184, 0
  %189 = and i32 %118, %187
  %190 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %189)  ; Countbits(value)
  %191 = and i32 %119, %187
  %192 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %191)  ; Countbits(value)
  %193 = add i32 %192, %120
  %194 = select i1 %188, i32 %190, i32 %193
  %195 = add i32 %194, %168
  %196 = fmul fast float %182, %78
  %197 = fmul fast float %183, %79
  %198 = fadd fast float %196, -5.000000e-01
  %199 = fsub fast float 5.000000e-01, %197
  %200 = fmul fast float %198, %81
  %201 = fmul fast float %199, %82
  %202 = and i32 %90, 8
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %293, label %204, !dx.controlflow.hints !49

; <label>:204                                     ; preds = %172
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.f32 %205, 0
  %207 = extractvalue %dx.types.CBufRet.f32 %205, 1
  %208 = fadd fast float %206, %200
  %209 = fadd fast float %207, %201
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 0
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 0
  %214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.f32 %214, 0
  %216 = extractvalue %dx.types.CBufRet.f32 %210, 1
  %217 = extractvalue %dx.types.CBufRet.f32 %212, 1
  %218 = extractvalue %dx.types.CBufRet.f32 %214, 1
  %219 = extractvalue %dx.types.CBufRet.f32 %210, 3
  %220 = extractvalue %dx.types.CBufRet.f32 %212, 3
  %221 = extractvalue %dx.types.CBufRet.f32 %214, 3
  %222 = fadd fast float %208, %219
  %223 = fadd fast float %209, %220
  %224 = fmul fast float %222, %211
  %225 = call float @dx.op.tertiary.f32(i32 46, float %223, float %213, float %224)  ; FMad(a,b,c)
  %226 = call float @dx.op.tertiary.f32(i32 46, float %221, float %215, float %225)  ; FMad(a,b,c)
  %227 = fmul fast float %222, %216
  %228 = call float @dx.op.tertiary.f32(i32 46, float %223, float %217, float %227)  ; FMad(a,b,c)
  %229 = call float @dx.op.tertiary.f32(i32 46, float %221, float %218, float %228)  ; FMad(a,b,c)
  %230 = fsub fast float %226, %219
  %231 = fsub fast float %229, %220
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 344)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 0
  %234 = extractvalue %dx.types.CBufRet.f32 %232, 1
  %235 = extractvalue %dx.types.CBufRet.f32 %232, 2
  %236 = fsub fast float %230, %233
  %237 = fadd fast float %236, %235
  %238 = fsub fast float %231, %234
  %239 = fadd fast float %238, %235
  %240 = extractvalue %dx.types.CBufRet.f32 %232, 3
  %241 = fmul fast float %237, %240
  %242 = fmul fast float %239, %240
  %243 = call float @dx.op.unary.f32(i32 7, float %241)  ; Saturate(value)
  %244 = call float @dx.op.unary.f32(i32 7, float %242)  ; Saturate(value)
  %245 = fsub fast float 1.000000e+00, %243
  %246 = fsub fast float 1.000000e+00, %244
  %247 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %245, float %246, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %248 = extractvalue %dx.types.ResRet.f32 %247, 0
  %249 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %245, float %246, float undef, float undef, i32 0, i32 -1, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %250 = extractvalue %dx.types.ResRet.f32 %249, 0
  %251 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %245, float %246, float undef, float undef, i32 0, i32 1, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 0
  %253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %245, float %246, float undef, float undef, i32 1, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %245, float %246, float undef, float undef, i32 -1, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 0
  %257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 333)  ; CBufferLoadLegacy(handle,regIndex)
  %258 = extractvalue %dx.types.CBufRet.f32 %257, 0
  %259 = extractvalue %dx.types.CBufRet.f32 %257, 1
  %260 = fmul fast float %258, 2.000000e+00
  %261 = fsub fast float %256, %254
  %262 = fmul fast float %259, %261
  %263 = fdiv fast float %262, %260
  %264 = fsub fast float %250, %252
  %265 = fmul fast float %259, %264
  %266 = fdiv fast float %265, %260
  %267 = call float @dx.op.dot3.f32(i32 55, float %263, float %266, float 1.000000e+00, float %263, float %266, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %268 = call float @dx.op.unary.f32(i32 25, float %267)  ; Rsqrt(value)
  %269 = fmul fast float %268, %263
  %270 = fmul fast float %268, %266
  %271 = extractvalue %dx.types.CBufRet.f32 %210, 2
  %272 = extractvalue %dx.types.CBufRet.f32 %212, 2
  %273 = extractvalue %dx.types.CBufRet.f32 %214, 2
  %274 = fmul fast float %211, %269
  %275 = call float @dx.op.tertiary.f32(i32 46, float %270, float %216, float %274)  ; FMad(a,b,c)
  %276 = call float @dx.op.tertiary.f32(i32 46, float %268, float %271, float %275)  ; FMad(a,b,c)
  %277 = fmul fast float %213, %269
  %278 = call float @dx.op.tertiary.f32(i32 46, float %270, float %217, float %277)  ; FMad(a,b,c)
  %279 = call float @dx.op.tertiary.f32(i32 46, float %268, float %272, float %278)  ; FMad(a,b,c)
  %280 = fmul fast float %215, %269
  %281 = call float @dx.op.tertiary.f32(i32 46, float %270, float %218, float %280)  ; FMad(a,b,c)
  %282 = call float @dx.op.tertiary.f32(i32 46, float %268, float %273, float %281)  ; FMad(a,b,c)
  %283 = fmul fast float %259, %248
  %284 = extractvalue %dx.types.CBufRet.f32 %257, 2
  %285 = fadd fast float %284, %283
  %286 = fadd fast float %285, %221
  %287 = fmul fast float %226, %215
  %288 = call float @dx.op.tertiary.f32(i32 46, float %229, float %218, float %287)  ; FMad(a,b,c)
  %289 = call float @dx.op.tertiary.f32(i32 46, float %286, float %273, float %288)  ; FMad(a,b,c)
  %290 = fsub fast float %289, %221
  %291 = extractvalue %dx.types.CBufRet.f32 %205, 2
  %292 = fsub fast float %290, %291
  br label %726

; <label>:293                                     ; preds = %172
  %294 = fsub fast float 1.000000e+00, %197
  %295 = fmul fast float %294, %58
  %296 = fadd fast float %295, %56
  %297 = fmul fast float %196, %57
  %298 = fadd fast float %297, %55
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 2
  %301 = fmul fast float %300, %298
  %302 = fmul fast float %300, %296
  %303 = extractvalue %dx.types.CBufRet.f32 %299, 3
  %304 = fadd fast float %301, %303
  %305 = fadd fast float %302, %303
  %306 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.i32 %306, 3
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %684, label %309, !dx.controlflow.hints !50

; <label>:309                                     ; preds = %293
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 2
  %312 = extractvalue %dx.types.CBufRet.f32 %310, 3
  %313 = fmul fast float %311, %304
  %314 = fmul fast float %312, %305
  %315 = extractvalue %dx.types.CBufRet.f32 %310, 0
  %316 = extractvalue %dx.types.CBufRet.f32 %310, 1
  %317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.i32 %317, 0
  %319 = extractvalue %dx.types.CBufRet.i32 %317, 1
  %320 = extractvalue %dx.types.CBufRet.i32 %317, 2
  %321 = extractvalue %dx.types.CBufRet.i32 %317, 3
  %322 = mul i32 %320, %320
  %323 = fadd fast float %311, 0xBF847AE140000000
  %324 = fadd fast float %312, 0xBF847AE140000000
  %325 = call float @dx.op.binary.f32(i32 35, float %313, float 0.000000e+00)  ; FMax(a,b)
  %326 = call float @dx.op.binary.f32(i32 35, float %314, float 0.000000e+00)  ; FMax(a,b)
  %327 = call float @dx.op.binary.f32(i32 36, float %325, float %323)  ; FMin(a,b)
  %328 = call float @dx.op.binary.f32(i32 36, float %326, float %324)  ; FMin(a,b)
  %329 = fdiv fast float %327, %315
  %330 = fdiv fast float %328, %316
  %331 = fptoui float %329 to i32
  %332 = fptoui float %330 to i32
  %333 = mul i32 %332, %318
  %334 = add i32 %333, %331
  %335 = lshr i32 %334, 1
  %336 = shl i32 %335, 2
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = shl i32 %334, 4
  %340 = and i32 %339, 16
  %341 = lshr i32 %338, %340
  %342 = and i32 %341, 255
  %343 = lshr i32 %341, 8
  %344 = and i32 %343, 31
  %345 = shl i32 1, %344
  %346 = uitofp i32 %345 to float
  %347 = fmul fast float %346, %327
  %348 = fdiv fast float %347, %311
  %349 = fmul fast float %346, %328
  %350 = fdiv fast float %349, %312
  %351 = call float @dx.op.unary.f32(i32 22, float %348)  ; Frc(value)
  %352 = call float @dx.op.unary.f32(i32 22, float %350)  ; Frc(value)
  %353 = uitofp i32 %319 to float
  %354 = fmul fast float %351, %353
  %355 = fmul fast float %352, %353
  %356 = uitofp i32 %321 to float
  %357 = fadd fast float %354, %356
  %358 = fadd fast float %355, %356
  %359 = mul i32 %322, %342
  %360 = fadd fast float %357, -1.000000e+00
  %361 = fadd fast float %358, -1.000000e+00
  %362 = call float @dx.op.unary.f32(i32 22, float %360)  ; Frc(value)
  %363 = fptoui float %360 to i32
  %364 = fptoui float %358 to i32
  %365 = getelementptr [4 x i32], [4 x i32]* %35, i32 0, i32 0
  %366 = getelementptr [4 x i32], [4 x i32]* %36, i32 0, i32 0
  store i32 %363, i32* %365, align 4
  store i32 %364, i32* %366, align 4
  %367 = add i32 %363, 1
  %368 = getelementptr [4 x i32], [4 x i32]* %35, i32 0, i32 1
  %369 = getelementptr [4 x i32], [4 x i32]* %36, i32 0, i32 1
  store i32 %367, i32* %368, align 4
  store i32 %364, i32* %369, align 4
  %370 = add i32 %364, 1
  %371 = getelementptr [4 x i32], [4 x i32]* %35, i32 0, i32 2
  %372 = getelementptr [4 x i32], [4 x i32]* %36, i32 0, i32 2
  store i32 %363, i32* %371, align 4
  store i32 %370, i32* %372, align 4
  %373 = getelementptr [4 x i32], [4 x i32]* %35, i32 0, i32 3
  %374 = getelementptr [4 x i32], [4 x i32]* %36, i32 0, i32 3
  store i32 %367, i32* %373, align 4
  store i32 %370, i32* %374, align 4
  %375 = add i32 %320, -1
  br label %376

; <label>:376                                     ; preds = %399, %309
  %377 = phi i32 [ %364, %309 ], [ %403, %399 ]
  %378 = phi i32 [ %363, %309 ], [ %401, %399 ]
  %379 = phi i32 [ 0, %309 ], [ %397, %399 ]
  %380 = call i32 @dx.op.binary.i32(i32 40, i32 %378, i32 %375)  ; UMin(a,b)
  %381 = call i32 @dx.op.binary.i32(i32 40, i32 %377, i32 %375)  ; UMin(a,b)
  %382 = mul i32 %381, %320
  %383 = add i32 %380, %359
  %384 = add i32 %383, %382
  %385 = lshr i32 %384, 1
  %386 = shl i32 %385, 2
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = shl i32 %384, 4
  %390 = and i32 %389, 16
  %391 = lshr i32 %388, %390
  %392 = and i32 %391, 65535
  %393 = uitofp i32 %392 to float
  %394 = fmul fast float %393, 0x3EF0002000000000
  %395 = call float @dx.op.unary.f32(i32 7, float %394)  ; Saturate(value)
  %396 = getelementptr inbounds [4 x float], [4 x float]* %41, i32 0, i32 %379
  store float %395, float* %396, align 4, !tbaa !51, !noalias !53
  %397 = add nuw nsw i32 %379, 1
  %398 = icmp eq i32 %397, 4
  br i1 %398, label %404, label %399

; <label>:399                                     ; preds = %376
  %400 = getelementptr [4 x i32], [4 x i32]* %35, i32 0, i32 %397
  %401 = load i32, i32* %400, align 4
  %402 = getelementptr [4 x i32], [4 x i32]* %36, i32 0, i32 %397
  %403 = load i32, i32* %402, align 4
  br label %376

; <label>:404                                     ; preds = %376
  %405 = extractvalue %dx.types.CBufRet.f32 %299, 1
  %406 = extractvalue %dx.types.CBufRet.f32 %299, 0
  %407 = fadd fast float %357, 1.000000e+00
  %408 = fadd fast float %358, 1.000000e+00
  %409 = call float @dx.op.unary.f32(i32 22, float %358)  ; Frc(value)
  %410 = fsub fast float 1.000000e+00, %362
  %411 = getelementptr inbounds [4 x float], [4 x float]* %41, i32 0, i32 0
  %412 = load float, float* %411, align 4, !tbaa !51, !noalias !53
  %413 = fmul fast float %412, %410
  %414 = getelementptr inbounds [4 x float], [4 x float]* %41, i32 0, i32 1
  %415 = load float, float* %414, align 4, !tbaa !51, !noalias !53
  %416 = fmul fast float %415, %362
  %417 = fadd fast float %416, %413
  %418 = getelementptr inbounds [4 x float], [4 x float]* %41, i32 0, i32 2
  %419 = load float, float* %418, align 4, !tbaa !51, !noalias !53
  %420 = getelementptr inbounds [4 x float], [4 x float]* %41, i32 0, i32 3
  %421 = load float, float* %420, align 4, !tbaa !51, !noalias !53
  %422 = fmul fast float %421, %362
  %423 = fsub fast float 1.000000e+00, %409
  %424 = fmul fast float %417, %423
  %425 = call float @dx.op.unary.f32(i32 22, float %407)  ; Frc(value)
  %426 = fptoui float %407 to i32
  %427 = getelementptr [4 x i32], [4 x i32]* %29, i32 0, i32 0
  %428 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 0
  store i32 %426, i32* %427, align 4
  store i32 %364, i32* %428, align 4
  %429 = add i32 %426, 1
  %430 = getelementptr [4 x i32], [4 x i32]* %29, i32 0, i32 1
  %431 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 1
  store i32 %429, i32* %430, align 4
  store i32 %364, i32* %431, align 4
  %432 = getelementptr [4 x i32], [4 x i32]* %29, i32 0, i32 2
  %433 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 2
  store i32 %426, i32* %432, align 4
  store i32 %370, i32* %433, align 4
  %434 = getelementptr [4 x i32], [4 x i32]* %29, i32 0, i32 3
  %435 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 3
  store i32 %429, i32* %434, align 4
  store i32 %370, i32* %435, align 4
  br label %436

; <label>:436                                     ; preds = %459, %404
  %437 = phi i32 [ %364, %404 ], [ %463, %459 ]
  %438 = phi i32 [ %426, %404 ], [ %461, %459 ]
  %439 = phi i32 [ 0, %404 ], [ %457, %459 ]
  %440 = call i32 @dx.op.binary.i32(i32 40, i32 %438, i32 %375)  ; UMin(a,b)
  %441 = call i32 @dx.op.binary.i32(i32 40, i32 %437, i32 %375)  ; UMin(a,b)
  %442 = mul i32 %441, %320
  %443 = add i32 %440, %359
  %444 = add i32 %443, %442
  %445 = lshr i32 %444, 1
  %446 = shl i32 %445, 2
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = shl i32 %444, 4
  %450 = and i32 %449, 16
  %451 = lshr i32 %448, %450
  %452 = and i32 %451, 65535
  %453 = uitofp i32 %452 to float
  %454 = fmul fast float %453, 0x3EF0002000000000
  %455 = call float @dx.op.unary.f32(i32 7, float %454)  ; Saturate(value)
  %456 = getelementptr inbounds [4 x float], [4 x float]* %40, i32 0, i32 %439
  store float %455, float* %456, align 4, !tbaa !51, !noalias !53
  %457 = add nuw nsw i32 %439, 1
  %458 = icmp eq i32 %457, 4
  br i1 %458, label %464, label %459

; <label>:459                                     ; preds = %436
  %460 = getelementptr [4 x i32], [4 x i32]* %29, i32 0, i32 %457
  %461 = load i32, i32* %460, align 4
  %462 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %457
  %463 = load i32, i32* %462, align 4
  br label %436

; <label>:464                                     ; preds = %436
  %465 = fmul fast float %419, %410
  %466 = fadd fast float %422, %465
  %467 = fmul fast float %466, %409
  %468 = fsub fast float 1.000000e+00, %425
  %469 = getelementptr inbounds [4 x float], [4 x float]* %40, i32 0, i32 0
  %470 = load float, float* %469, align 4, !tbaa !51, !noalias !53
  %471 = fmul fast float %470, %468
  %472 = getelementptr inbounds [4 x float], [4 x float]* %40, i32 0, i32 1
  %473 = load float, float* %472, align 4, !tbaa !51, !noalias !53
  %474 = fmul fast float %473, %425
  %475 = fadd fast float %474, %471
  %476 = getelementptr inbounds [4 x float], [4 x float]* %40, i32 0, i32 2
  %477 = load float, float* %476, align 4, !tbaa !51, !noalias !53
  %478 = getelementptr inbounds [4 x float], [4 x float]* %40, i32 0, i32 3
  %479 = load float, float* %478, align 4, !tbaa !51, !noalias !53
  %480 = fmul fast float %479, %425
  %481 = fmul fast float %475, %423
  %482 = call float @dx.op.unary.f32(i32 22, float %357)  ; Frc(value)
  %483 = fptoui float %357 to i32
  %484 = fptoui float %361 to i32
  %485 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 0
  %486 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 0
  store i32 %483, i32* %485, align 4
  store i32 %484, i32* %486, align 4
  %487 = add i32 %483, 1
  %488 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 1
  %489 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 1
  store i32 %487, i32* %488, align 4
  store i32 %484, i32* %489, align 4
  %490 = add i32 %484, 1
  %491 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 2
  %492 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 2
  store i32 %483, i32* %491, align 4
  store i32 %490, i32* %492, align 4
  %493 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 3
  %494 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 3
  store i32 %487, i32* %493, align 4
  store i32 %490, i32* %494, align 4
  br label %495

; <label>:495                                     ; preds = %518, %464
  %496 = phi i32 [ %484, %464 ], [ %522, %518 ]
  %497 = phi i32 [ %483, %464 ], [ %520, %518 ]
  %498 = phi i32 [ 0, %464 ], [ %516, %518 ]
  %499 = call i32 @dx.op.binary.i32(i32 40, i32 %497, i32 %375)  ; UMin(a,b)
  %500 = call i32 @dx.op.binary.i32(i32 40, i32 %496, i32 %375)  ; UMin(a,b)
  %501 = mul i32 %500, %320
  %502 = add i32 %499, %359
  %503 = add i32 %502, %501
  %504 = lshr i32 %503, 1
  %505 = shl i32 %504, 2
  %506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.i32 %506, 0
  %508 = shl i32 %503, 4
  %509 = and i32 %508, 16
  %510 = lshr i32 %507, %509
  %511 = and i32 %510, 65535
  %512 = uitofp i32 %511 to float
  %513 = fmul fast float %512, 0x3EF0002000000000
  %514 = call float @dx.op.unary.f32(i32 7, float %513)  ; Saturate(value)
  %515 = getelementptr inbounds [4 x float], [4 x float]* %39, i32 0, i32 %498
  store float %514, float* %515, align 4, !tbaa !51, !noalias !53
  %516 = add nuw nsw i32 %498, 1
  %517 = icmp eq i32 %516, 4
  br i1 %517, label %523, label %518

; <label>:518                                     ; preds = %495
  %519 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %516
  %520 = load i32, i32* %519, align 4
  %521 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %516
  %522 = load i32, i32* %521, align 4
  br label %495

; <label>:523                                     ; preds = %495
  %524 = fmul fast float %477, %468
  %525 = fadd fast float %480, %524
  %526 = fmul fast float %525, %409
  %527 = call float @dx.op.unary.f32(i32 22, float %361)  ; Frc(value)
  %528 = fsub fast float 1.000000e+00, %482
  %529 = getelementptr inbounds [4 x float], [4 x float]* %39, i32 0, i32 0
  %530 = load float, float* %529, align 4, !tbaa !51, !noalias !53
  %531 = fmul fast float %530, %528
  %532 = getelementptr inbounds [4 x float], [4 x float]* %39, i32 0, i32 1
  %533 = load float, float* %532, align 4, !tbaa !51, !noalias !53
  %534 = fmul fast float %533, %482
  %535 = fadd fast float %534, %531
  %536 = getelementptr inbounds [4 x float], [4 x float]* %39, i32 0, i32 2
  %537 = load float, float* %536, align 4, !tbaa !51, !noalias !53
  %538 = getelementptr inbounds [4 x float], [4 x float]* %39, i32 0, i32 3
  %539 = load float, float* %538, align 4, !tbaa !51, !noalias !53
  %540 = fmul fast float %539, %482
  %541 = fsub fast float 1.000000e+00, %527
  %542 = fmul fast float %535, %541
  %543 = fptoui float %408 to i32
  %544 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 0
  %545 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %483, i32* %544, align 4
  store i32 %543, i32* %545, align 4
  %546 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 1
  %547 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %487, i32* %546, align 4
  store i32 %543, i32* %547, align 4
  %548 = add i32 %543, 1
  %549 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 2
  %550 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %483, i32* %549, align 4
  store i32 %548, i32* %550, align 4
  %551 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 3
  %552 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %487, i32* %551, align 4
  store i32 %548, i32* %552, align 4
  br label %553

; <label>:553                                     ; preds = %576, %523
  %554 = phi i32 [ %543, %523 ], [ %580, %576 ]
  %555 = phi i32 [ %483, %523 ], [ %578, %576 ]
  %556 = phi i32 [ 0, %523 ], [ %574, %576 ]
  %557 = call i32 @dx.op.binary.i32(i32 40, i32 %555, i32 %375)  ; UMin(a,b)
  %558 = call i32 @dx.op.binary.i32(i32 40, i32 %554, i32 %375)  ; UMin(a,b)
  %559 = mul i32 %558, %320
  %560 = add i32 %557, %359
  %561 = add i32 %560, %559
  %562 = lshr i32 %561, 1
  %563 = shl i32 %562, 2
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = shl i32 %561, 4
  %567 = and i32 %566, 16
  %568 = lshr i32 %565, %567
  %569 = and i32 %568, 65535
  %570 = uitofp i32 %569 to float
  %571 = fmul fast float %570, 0x3EF0002000000000
  %572 = call float @dx.op.unary.f32(i32 7, float %571)  ; Saturate(value)
  %573 = getelementptr inbounds [4 x float], [4 x float]* %38, i32 0, i32 %556
  store float %572, float* %573, align 4, !tbaa !51, !noalias !53
  %574 = add nuw nsw i32 %556, 1
  %575 = icmp eq i32 %574, 4
  br i1 %575, label %581, label %576

; <label>:576                                     ; preds = %553
  %577 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 %574
  %578 = load i32, i32* %577, align 4
  %579 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %574
  %580 = load i32, i32* %579, align 4
  br label %553

; <label>:581                                     ; preds = %553
  %582 = fmul fast float %537, %528
  %583 = fadd fast float %540, %582
  %584 = fmul fast float %583, %527
  %585 = call float @dx.op.unary.f32(i32 22, float %408)  ; Frc(value)
  %586 = getelementptr inbounds [4 x float], [4 x float]* %38, i32 0, i32 0
  %587 = load float, float* %586, align 4, !tbaa !51, !noalias !53
  %588 = fmul fast float %587, %528
  %589 = getelementptr inbounds [4 x float], [4 x float]* %38, i32 0, i32 1
  %590 = load float, float* %589, align 4, !tbaa !51, !noalias !53
  %591 = fmul fast float %590, %482
  %592 = fadd fast float %591, %588
  %593 = getelementptr inbounds [4 x float], [4 x float]* %38, i32 0, i32 2
  %594 = load float, float* %593, align 4, !tbaa !51, !noalias !53
  %595 = fmul fast float %594, %528
  %596 = getelementptr inbounds [4 x float], [4 x float]* %38, i32 0, i32 3
  %597 = load float, float* %596, align 4, !tbaa !51, !noalias !53
  %598 = fmul fast float %597, %482
  %599 = fadd fast float %598, %595
  %600 = fsub fast float 1.000000e+00, %585
  %601 = fmul fast float %592, %600
  %602 = fmul fast float %599, %585
  %603 = fmul fast float %311, 2.000000e+00
  %604 = fmul fast float %346, %353
  %605 = fdiv fast float %603, %604
  %606 = fsub fast float -0.000000e+00, %424
  %607 = fsub fast float %606, %467
  %608 = fadd fast float %607, %481
  %609 = fadd fast float %608, %526
  %610 = fmul fast float %312, 2.000000e+00
  %611 = fdiv fast float %610, %604
  %612 = fsub fast float -0.000000e+00, %542
  %613 = fsub fast float %612, %584
  %614 = fadd fast float %613, %601
  %615 = fadd fast float %614, %602
  %616 = fmul fast float %405, %609
  %617 = fmul fast float %616, %611
  %618 = fsub fast float -0.000000e+00, %617
  %619 = fmul fast float %405, %605
  %620 = fmul fast float %619, %615
  %621 = fsub fast float -0.000000e+00, %620
  %622 = fmul fast float %611, %605
  %623 = call float @dx.op.dot3.f32(i32 55, float %618, float %621, float %622, float %618, float %621, float %622)  ; Dot3(ax,ay,az,bx,by,bz)
  %624 = call float @dx.op.unary.f32(i32 25, float %623)  ; Rsqrt(value)
  %625 = fmul fast float %624, %621
  %626 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 0
  %627 = getelementptr [4 x i32], [4 x i32]* %34, i32 0, i32 0
  store i32 %483, i32* %626, align 4
  store i32 %364, i32* %627, align 4
  %628 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 1
  %629 = getelementptr [4 x i32], [4 x i32]* %34, i32 0, i32 1
  store i32 %487, i32* %628, align 4
  store i32 %364, i32* %629, align 4
  %630 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 2
  %631 = getelementptr [4 x i32], [4 x i32]* %34, i32 0, i32 2
  store i32 %483, i32* %630, align 4
  store i32 %370, i32* %631, align 4
  %632 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 3
  %633 = getelementptr [4 x i32], [4 x i32]* %34, i32 0, i32 3
  store i32 %487, i32* %632, align 4
  store i32 %370, i32* %633, align 4
  br label %634

; <label>:634                                     ; preds = %657, %581
  %635 = phi i32 [ %364, %581 ], [ %661, %657 ]
  %636 = phi i32 [ %483, %581 ], [ %659, %657 ]
  %637 = phi i32 [ 0, %581 ], [ %655, %657 ]
  %638 = call i32 @dx.op.binary.i32(i32 40, i32 %636, i32 %375)  ; UMin(a,b)
  %639 = call i32 @dx.op.binary.i32(i32 40, i32 %635, i32 %375)  ; UMin(a,b)
  %640 = mul i32 %639, %320
  %641 = add i32 %638, %359
  %642 = add i32 %641, %640
  %643 = lshr i32 %642, 1
  %644 = shl i32 %643, 2
  %645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %644, i32 undef)  ; BufferLoad(srv,index,wot)
  %646 = extractvalue %dx.types.ResRet.i32 %645, 0
  %647 = shl i32 %642, 4
  %648 = and i32 %647, 16
  %649 = lshr i32 %646, %648
  %650 = and i32 %649, 65535
  %651 = uitofp i32 %650 to float
  %652 = fmul fast float %651, 0x3EF0002000000000
  %653 = call float @dx.op.unary.f32(i32 7, float %652)  ; Saturate(value)
  %654 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 %637
  store float %653, float* %654, align 4, !tbaa !51, !noalias !62
  %655 = add nuw nsw i32 %637, 1
  %656 = icmp eq i32 %655, 4
  br i1 %656, label %662, label %657

; <label>:657                                     ; preds = %634
  %658 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 %655
  %659 = load i32, i32* %658, align 4
  %660 = getelementptr [4 x i32], [4 x i32]* %34, i32 0, i32 %655
  %661 = load i32, i32* %660, align 4
  br label %634

; <label>:662                                     ; preds = %634
  %663 = fmul fast float %624, %618
  %664 = fmul fast float %624, %622
  %665 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 0
  %666 = load float, float* %665, align 4, !tbaa !51, !noalias !62
  %667 = fmul fast float %666, %528
  %668 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 1
  %669 = load float, float* %668, align 4, !tbaa !51, !noalias !62
  %670 = fmul fast float %669, %482
  %671 = fadd fast float %670, %667
  %672 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 2
  %673 = load float, float* %672, align 4, !tbaa !51, !noalias !62
  %674 = fmul fast float %673, %528
  %675 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 3
  %676 = load float, float* %675, align 4, !tbaa !51, !noalias !62
  %677 = fmul fast float %676, %482
  %678 = fadd fast float %677, %674
  %679 = fmul fast float %671, %423
  %680 = fmul fast float %678, %409
  %681 = fadd fast float %680, %679
  %682 = fmul fast float %681, %405
  %683 = fadd fast float %682, %406
  br label %716

; <label>:684                                     ; preds = %293
  %685 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %304, float %305, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %686 = extractvalue %dx.types.ResRet.f32 %685, 0
  %687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %688 = extractvalue %dx.types.CBufRet.f32 %687, 3
  %689 = fsub fast float %305, %688
  %690 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %304, float %689, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %691 = extractvalue %dx.types.ResRet.f32 %690, 0
  %692 = fadd fast float %688, %305
  %693 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %304, float %692, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %694 = extractvalue %dx.types.ResRet.f32 %693, 0
  %695 = extractvalue %dx.types.CBufRet.f32 %687, 2
  %696 = fadd fast float %695, %304
  %697 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %696, float %305, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %698 = extractvalue %dx.types.ResRet.f32 %697, 0
  %699 = fsub fast float %304, %695
  %700 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %699, float %305, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %701 = extractvalue %dx.types.ResRet.f32 %700, 0
  %702 = extractvalue %dx.types.CBufRet.f32 %687, 0
  %703 = extractvalue %dx.types.CBufRet.f32 %687, 1
  %704 = fmul fast float %702, 2.000000e+00
  %705 = fmul fast float %703, 2.000000e+00
  %706 = fsub fast float %701, %698
  %707 = extractvalue %dx.types.CBufRet.f32 %299, 1
  %708 = fmul fast float %707, %706
  %709 = fdiv fast float %708, %704
  %710 = fsub fast float %691, %694
  %711 = fmul fast float %707, %710
  %712 = fdiv fast float %711, %705
  %713 = fmul fast float %707, %686
  %714 = extractvalue %dx.types.CBufRet.f32 %299, 0
  %715 = fadd fast float %713, %714
  br label %716

; <label>:716                                     ; preds = %684, %662
  %717 = phi float [ %663, %662 ], [ %709, %684 ]
  %718 = phi float [ %625, %662 ], [ %712, %684 ]
  %719 = phi float [ %664, %662 ], [ 1.000000e+00, %684 ]
  %720 = phi float [ %683, %662 ], [ %715, %684 ]
  %721 = call float @dx.op.dot3.f32(i32 55, float %717, float %718, float %719, float %717, float %718, float %719)  ; Dot3(ax,ay,az,bx,by,bz)
  %722 = call float @dx.op.unary.f32(i32 25, float %721)  ; Rsqrt(value)
  %723 = fmul fast float %722, %717
  %724 = fmul fast float %722, %718
  %725 = fmul fast float %722, %719
  br label %726

; <label>:726                                     ; preds = %716, %204
  %727 = phi float [ %292, %204 ], [ %720, %716 ]
  %728 = phi float [ %276, %204 ], [ %723, %716 ]
  %729 = phi float [ %279, %204 ], [ %724, %716 ]
  %730 = phi float [ %282, %204 ], [ %725, %716 ]
  %731 = xor i32 %106, -2128831035
  %732 = mul i32 %731, 16777619
  %733 = xor i32 %732, %107
  %734 = mul i32 %733, 16777619
  %735 = xor i32 %734, %161
  %736 = mul i32 %735, 16777619
  %737 = bitcast float %78 to i32
  %738 = xor i32 %736, %737
  %739 = shl i32 %738, 13
  %740 = xor i32 %739, %738
  %741 = lshr i32 %740, 17
  %742 = xor i32 %741, %740
  %743 = shl i32 %742, 5
  %744 = xor i32 %743, %742
  %745 = uitofp i32 %744 to float
  %746 = fmul fast float %745, 0x3DF0000000000000
  %747 = shl i32 %744, 13
  %748 = xor i32 %747, %744
  %749 = lshr i32 %748, 17
  %750 = xor i32 %749, %748
  %751 = shl i32 %750, 5
  %752 = xor i32 %751, %750
  %753 = uitofp i32 %752 to float
  %754 = shl i32 %752, 13
  %755 = xor i32 %754, %752
  %756 = lshr i32 %755, 17
  %757 = xor i32 %756, %755
  %758 = shl i32 %757, 5
  %759 = xor i32 %758, %757
  %760 = uitofp i32 %759 to float
  %761 = shl i32 %759, 13
  %762 = xor i32 %761, %759
  %763 = lshr i32 %762, 17
  %764 = xor i32 %763, %762
  %765 = shl i32 %764, 5
  %766 = xor i32 %765, %764
  %767 = uitofp i32 %766 to float
  %768 = shl i32 %766, 13
  %769 = xor i32 %768, %766
  %770 = lshr i32 %769, 17
  %771 = xor i32 %770, %769
  %772 = shl i32 %771, 5
  %773 = xor i32 %772, %771
  %774 = uitofp i32 %773 to float
  %775 = fsub fast float %85, %84
  %776 = fmul fast float %775, 0x3DF0000000000000
  %777 = fmul fast float %776, %774
  %778 = fadd fast float %777, %84
  %779 = fsub fast float %88, %87
  %780 = fmul fast float %746, %779
  %781 = fadd fast float %780, %87
  %782 = fadd fast float %778, %727
  %783 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %784 = extractvalue %dx.types.CBufRet.i32 %783, 0
  %785 = and i32 %784, 2
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %826, label %787, !dx.controlflow.hints !63

; <label>:787                                     ; preds = %726
  %788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %789 = extractvalue %dx.types.CBufRet.f32 %788, 0
  %790 = extractvalue %dx.types.CBufRet.f32 %788, 1
  %791 = fsub fast float %182, %789
  %792 = fmul fast float %78, %791
  %793 = fmul fast float %792, %81
  %794 = fsub fast float %790, %183
  %795 = fmul fast float %79, %794
  %796 = fmul fast float %795, %82
  %797 = fmul fast float %793, %793
  %798 = fmul fast float %796, %796
  %799 = fadd fast float %797, %798
  %800 = call float @dx.op.unary.f32(i32 24, float %799)  ; Sqrt(value)
  %801 = fcmp fast olt float %94, 0.000000e+00
  %802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %803 = extractvalue %dx.types.CBufRet.f32 %802, 3
  %804 = select i1 %801, float %803, float %94
  %805 = fadd fast float %746, -5.000000e-01
  %806 = fmul fast float %804, %805
  %807 = fcmp fast olt float %92, 0.000000e+00
  %808 = extractvalue %dx.types.CBufRet.f32 %802, 2
  %809 = select i1 %807, float %808, float %92
  %810 = fadd fast float %809, %806
  %811 = call float @dx.op.unary.f32(i32 7, float %810)  ; Saturate(value)
  %812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %813 = extractvalue %dx.types.CBufRet.f32 %812, 3
  %814 = fmul fast float %813, %811
  %815 = fsub fast float %813, %814
  %816 = fsub fast float %800, %814
  %817 = fdiv fast float %816, %815
  %818 = call float @dx.op.unary.f32(i32 7, float %817)  ; Saturate(value)
  %819 = fmul fast float %818, 2.000000e+00
  %820 = fsub fast float 3.000000e+00, %819
  %821 = fmul fast float %818, %818
  %822 = fmul fast float %821, %820
  %823 = extractvalue %dx.types.CBufRet.f32 %788, 3
  %824 = fmul fast float %822, %823
  %825 = fsub fast float %782, %824
  br label %826

; <label>:826                                     ; preds = %787, %726
  %827 = phi float [ %825, %787 ], [ %782, %726 ]
  %828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %829 = extractvalue %dx.types.CBufRet.f32 %828, 0
  %830 = extractvalue %dx.types.CBufRet.f32 %828, 1
  %831 = extractvalue %dx.types.CBufRet.f32 %828, 2
  %832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %833 = extractvalue %dx.types.CBufRet.f32 %832, 0
  %834 = extractvalue %dx.types.CBufRet.f32 %832, 1
  %835 = extractvalue %dx.types.CBufRet.f32 %832, 2
  %836 = extractvalue %dx.types.CBufRet.f32 %832, 3
  %837 = fmul fast float %834, %827
  %838 = fmul fast float %835, %201
  %839 = fsub fast float %837, %838
  %840 = fmul fast float %835, %200
  %841 = fmul fast float %833, %827
  %842 = fsub fast float %840, %841
  %843 = fmul fast float %833, %201
  %844 = fmul fast float %834, %200
  %845 = fsub fast float %843, %844
  %846 = fmul fast float %839, 2.000000e+00
  %847 = fmul fast float %842, 2.000000e+00
  %848 = fmul fast float %845, 2.000000e+00
  %849 = fmul fast float %846, %836
  %850 = fmul fast float %847, %836
  %851 = fmul fast float %848, %836
  %852 = fmul fast float %848, %834
  %853 = fmul fast float %847, %835
  %854 = fmul fast float %846, %835
  %855 = fmul fast float %848, %833
  %856 = fmul fast float %847, %833
  %857 = fmul fast float %846, %834
  %858 = fadd fast float %829, %200
  %859 = fadd fast float %858, %849
  %860 = fsub fast float %859, %853
  %861 = fadd fast float %860, %852
  %862 = fadd fast float %830, %201
  %863 = fadd fast float %862, %850
  %864 = fsub fast float %863, %855
  %865 = fadd fast float %864, %854
  %866 = fadd fast float %831, %827
  %867 = fadd fast float %866, %851
  %868 = fsub fast float %867, %857
  %869 = fadd fast float %868, %856
  %870 = and i32 %90, 2
  %871 = icmp ne i32 %870, 0
  %872 = and i32 %90, 4
  %873 = icmp ne i32 %872, 0
  %874 = and i32 %90, 1
  %875 = icmp eq i32 %874, 0
  %876 = select i1 %871, float %728, float 0.000000e+00
  %877 = select i1 %871, float %729, float 0.000000e+00
  %878 = select i1 %871, float %730, float 1.000000e+00
  %879 = and i32 %90, 6
  %880 = icmp eq i32 %879, 0
  br i1 %880, label %974, label %881, !dx.controlflow.hints !64

; <label>:881                                     ; preds = %826
  br i1 %873, label %882, label %896, !dx.controlflow.hints !65

; <label>:882                                     ; preds = %881
  %883 = fmul fast float %876, %878
  %884 = fmul fast float %878, %877
  %885 = fmul fast float %876, %876
  %886 = fsub fast float -0.000000e+00, %885
  %887 = fmul fast float %877, %877
  %888 = fsub fast float %886, %887
  %889 = call float @dx.op.dot3.f32(i32 55, float %883, float %884, float %888, float %883, float %884, float %888)  ; Dot3(ax,ay,az,bx,by,bz)
  %890 = fcmp fast olt float %889, 0x3F50624DE0000000
  br i1 %890, label %896, label %891, !dx.controlflow.hints !66

; <label>:891                                     ; preds = %882
  %892 = call float @dx.op.unary.f32(i32 25, float %889)  ; Rsqrt(value)
  %893 = fmul fast float %892, %883
  %894 = fmul fast float %892, %884
  %895 = fmul fast float %892, %888
  br label %896

; <label>:896                                     ; preds = %891, %882, %881
  %897 = phi float [ 1.000000e+00, %881 ], [ %893, %891 ], [ 1.000000e+00, %882 ]
  %898 = phi float [ 0.000000e+00, %881 ], [ %894, %891 ], [ 0.000000e+00, %882 ]
  %899 = phi float [ 0.000000e+00, %881 ], [ %895, %891 ], [ 0.000000e+00, %882 ]
  %900 = icmp eq i32 %879, 6
  br i1 %900, label %901, label %974, !dx.controlflow.hints !67

; <label>:901                                     ; preds = %896
  %902 = fmul fast float %899, %877
  %903 = fmul fast float %898, %878
  %904 = fsub fast float %902, %903
  %905 = fmul fast float %897, %878
  %906 = fmul fast float %899, %876
  %907 = fsub fast float %905, %906
  %908 = fmul fast float %898, %876
  %909 = fmul fast float %897, %877
  %910 = fsub fast float %908, %909
  %911 = call float @dx.op.dot3.f32(i32 55, float %904, float %907, float %910, float %904, float %907, float %910)  ; Dot3(ax,ay,az,bx,by,bz)
  %912 = call float @dx.op.unary.f32(i32 25, float %911)  ; Rsqrt(value)
  %913 = fmul fast float %912, %904
  %914 = fmul fast float %912, %907
  %915 = fmul fast float %912, %910
  %916 = fadd fast float %897, %878
  %917 = fadd fast float %916, %914
  %918 = fcmp fast ogt float %917, 0.000000e+00
  br i1 %918, label %919, label %930, !dx.controlflow.hints !68

; <label>:919                                     ; preds = %901
  %920 = fadd fast float %917, 1.000000e+00
  %921 = fsub fast float %915, %877
  %922 = fsub fast float %876, %899
  %923 = fsub fast float %898, %913
  %924 = call float @dx.op.unary.f32(i32 25, float %920)  ; Rsqrt(value)
  %925 = fmul fast float %924, 5.000000e-01
  %926 = fmul fast float %925, %921
  %927 = fmul fast float %925, %922
  %928 = fmul fast float %925, %923
  %929 = fmul fast float %925, %920
  br label %974

; <label>:930                                     ; preds = %901
  %931 = fcmp fast ogt float %897, %914
  %932 = fcmp fast ogt float %897, %878
  %933 = and i1 %932, %931
  br i1 %933, label %934, label %947, !dx.controlflow.hints !69

; <label>:934                                     ; preds = %930
  %935 = fsub fast float 1.000000e+00, %878
  %936 = fadd fast float %935, %897
  %937 = fsub fast float %936, %914
  %938 = fsub fast float %915, %877
  %939 = fadd fast float %913, %898
  %940 = fadd fast float %899, %876
  %941 = call float @dx.op.unary.f32(i32 25, float %937)  ; Rsqrt(value)
  %942 = fmul fast float %941, 5.000000e-01
  %943 = fmul fast float %942, %937
  %944 = fmul fast float %942, %939
  %945 = fmul fast float %942, %940
  %946 = fmul fast float %942, %938
  br label %974

; <label>:947                                     ; preds = %930
  %948 = fcmp fast ogt float %914, %878
  %949 = fadd fast float %915, %877
  br i1 %948, label %950, label %962, !dx.controlflow.hints !70

; <label>:950                                     ; preds = %947
  %951 = fsub fast float 1.000000e+00, %878
  %952 = fsub fast float %951, %897
  %953 = fadd fast float %952, %914
  %954 = fsub fast float %876, %899
  %955 = fadd fast float %913, %898
  %956 = call float @dx.op.unary.f32(i32 25, float %953)  ; Rsqrt(value)
  %957 = fmul fast float %956, 5.000000e-01
  %958 = fmul fast float %957, %955
  %959 = fmul fast float %957, %953
  %960 = fmul fast float %957, %949
  %961 = fmul fast float %957, %954
  br label %974

; <label>:962                                     ; preds = %947
  %963 = fadd fast float %878, 1.000000e+00
  %964 = fsub fast float %963, %897
  %965 = fsub fast float %964, %914
  %966 = fsub fast float %898, %913
  %967 = fadd fast float %899, %876
  %968 = call float @dx.op.unary.f32(i32 25, float %965)  ; Rsqrt(value)
  %969 = fmul fast float %968, 5.000000e-01
  %970 = fmul fast float %969, %967
  %971 = fmul fast float %969, %949
  %972 = fmul fast float %969, %965
  %973 = fmul fast float %969, %966
  br label %974

; <label>:974                                     ; preds = %962, %950, %934, %919, %896, %826
  %975 = phi float [ %897, %896 ], [ 1.000000e+00, %826 ], [ %897, %962 ], [ %897, %950 ], [ %897, %934 ], [ %897, %919 ]
  %976 = phi float [ %898, %896 ], [ 0.000000e+00, %826 ], [ %898, %962 ], [ %898, %950 ], [ %898, %934 ], [ %898, %919 ]
  %977 = phi float [ %899, %896 ], [ 0.000000e+00, %826 ], [ %899, %962 ], [ %899, %950 ], [ %899, %934 ], [ %899, %919 ]
  %978 = phi float [ 0.000000e+00, %896 ], [ 0.000000e+00, %826 ], [ %970, %962 ], [ %958, %950 ], [ %943, %934 ], [ %926, %919 ]
  %979 = phi float [ 0.000000e+00, %896 ], [ 0.000000e+00, %826 ], [ %971, %962 ], [ %959, %950 ], [ %944, %934 ], [ %927, %919 ]
  %980 = phi float [ 0.000000e+00, %896 ], [ 0.000000e+00, %826 ], [ %972, %962 ], [ %960, %950 ], [ %945, %934 ], [ %928, %919 ]
  %981 = phi float [ 1.000000e+00, %896 ], [ 1.000000e+00, %826 ], [ %973, %962 ], [ %961, %950 ], [ %946, %934 ], [ %929, %919 ]
  br i1 %875, label %1083, label %982, !dx.controlflow.hints !71

; <label>:982                                     ; preds = %974
  %983 = fsub fast float %64, %60
  %984 = fsub fast float %65, %61
  %985 = fsub fast float %66, %62
  %986 = fmul fast float %983, 0x3DF0000000000000
  %987 = fmul fast float %986, %753
  %988 = fmul fast float %984, 0x3DF0000000000000
  %989 = fmul fast float %988, %760
  %990 = fmul fast float %985, 0x3DF0000000000000
  %991 = fmul fast float %990, %767
  %992 = fadd fast float %987, %60
  %993 = fadd fast float %989, %61
  %994 = fadd fast float %991, %62
  %995 = fcmp fast une float %70, 0.000000e+00
  br i1 %995, label %996, label %1012, !dx.controlflow.hints !72

; <label>:996                                     ; preds = %982
  %997 = fdiv fast float %992, %70
  %998 = fsub fast float -0.000000e+00, %997
  %999 = fcmp fast oge float %997, %998
  %1000 = call float @dx.op.unary.f32(i32 6, float %997)  ; FAbs(value)
  %1001 = call float @dx.op.unary.f32(i32 22, float %1000)  ; Frc(value)
  %1002 = fsub fast float -0.000000e+00, %1001
  %1003 = select i1 %999, float %1001, float %1002
  %1004 = fmul fast float %1003, %70
  %1005 = fmul fast float %70, 5.000000e-01
  %1006 = fcmp fast ogt float %1004, %1005
  br i1 %1006, label %1007, label %1010, !dx.controlflow.hints !73

; <label>:1007                                    ; preds = %996
  %1008 = fadd fast float %992, %70
  %1009 = fsub fast float %1008, %1004
  br label %1012

; <label>:1010                                    ; preds = %996
  %1011 = fsub fast float %992, %1004
  br label %1012

; <label>:1012                                    ; preds = %1010, %1007, %982
  %1013 = phi float [ %1009, %1007 ], [ %1011, %1010 ], [ %992, %982 ]
  %1014 = fcmp fast une float %71, 0.000000e+00
  br i1 %1014, label %1015, label %1031, !dx.controlflow.hints !72

; <label>:1015                                    ; preds = %1012
  %1016 = fdiv fast float %993, %71
  %1017 = fsub fast float -0.000000e+00, %1016
  %1018 = fcmp fast oge float %1016, %1017
  %1019 = call float @dx.op.unary.f32(i32 6, float %1016)  ; FAbs(value)
  %1020 = call float @dx.op.unary.f32(i32 22, float %1019)  ; Frc(value)
  %1021 = fsub fast float -0.000000e+00, %1020
  %1022 = select i1 %1018, float %1020, float %1021
  %1023 = fmul fast float %1022, %71
  %1024 = fmul fast float %71, 5.000000e-01
  %1025 = fcmp fast ogt float %1023, %1024
  br i1 %1025, label %1026, label %1029, !dx.controlflow.hints !73

; <label>:1026                                    ; preds = %1015
  %1027 = fadd fast float %993, %71
  %1028 = fsub fast float %1027, %1023
  br label %1031

; <label>:1029                                    ; preds = %1015
  %1030 = fsub fast float %993, %1023
  br label %1031

; <label>:1031                                    ; preds = %1029, %1026, %1012
  %1032 = phi float [ %1028, %1026 ], [ %1030, %1029 ], [ %993, %1012 ]
  %1033 = fcmp fast une float %72, 0.000000e+00
  br i1 %1033, label %1034, label %1050, !dx.controlflow.hints !72

; <label>:1034                                    ; preds = %1031
  %1035 = fdiv fast float %994, %72
  %1036 = fsub fast float -0.000000e+00, %1035
  %1037 = fcmp fast oge float %1035, %1036
  %1038 = call float @dx.op.unary.f32(i32 6, float %1035)  ; FAbs(value)
  %1039 = call float @dx.op.unary.f32(i32 22, float %1038)  ; Frc(value)
  %1040 = fsub fast float -0.000000e+00, %1039
  %1041 = select i1 %1037, float %1039, float %1040
  %1042 = fmul fast float %1041, %72
  %1043 = fmul fast float %72, 5.000000e-01
  %1044 = fcmp fast ogt float %1042, %1043
  br i1 %1044, label %1045, label %1048, !dx.controlflow.hints !73

; <label>:1045                                    ; preds = %1034
  %1046 = fadd fast float %994, %72
  %1047 = fsub fast float %1046, %1042
  br label %1050

; <label>:1048                                    ; preds = %1034
  %1049 = fsub fast float %994, %1042
  br label %1050

; <label>:1050                                    ; preds = %1048, %1045, %1031
  %1051 = phi float [ %1047, %1045 ], [ %1049, %1048 ], [ %994, %1031 ]
  %1052 = fmul fast float %1013, 5.000000e-01
  %1053 = fmul fast float %1032, 5.000000e-01
  %1054 = fmul fast float %1051, 5.000000e-01
  %1055 = call float @dx.op.unary.f32(i32 13, float %1052)  ; Sin(value)
  %1056 = call float @dx.op.unary.f32(i32 12, float %1052)  ; Cos(value)
  %1057 = call float @dx.op.unary.f32(i32 13, float %1053)  ; Sin(value)
  %1058 = call float @dx.op.unary.f32(i32 12, float %1053)  ; Cos(value)
  %1059 = call float @dx.op.unary.f32(i32 13, float %1054)  ; Sin(value)
  %1060 = call float @dx.op.unary.f32(i32 12, float %1054)  ; Cos(value)
  %1061 = fmul fast float %1058, %1056
  %1062 = fmul fast float %1061, %1059
  %1063 = fmul fast float %1057, %1055
  %1064 = fmul fast float %1063, %1060
  %1065 = fsub fast float %1062, %1064
  %1066 = fmul fast float %1058, %1055
  %1067 = fmul fast float %1066, %1060
  %1068 = fmul fast float %1057, %1056
  %1069 = fmul fast float %1068, %1059
  %1070 = fadd fast float %1067, %1069
  %1071 = fmul fast float %1068, %1060
  %1072 = fmul fast float %1066, %1059
  %1073 = fsub fast float %1071, %1072
  %1074 = fmul fast float %1061, %1060
  %1075 = fmul fast float %1063, %1059
  %1076 = fadd fast float %1074, %1075
  %1077 = call float @dx.op.dot4.f32(i32 56, float %1065, float %1070, float %1073, float %1076, float %1065, float %1070, float %1073, float %1076)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1078 = call float @dx.op.unary.f32(i32 25, float %1077)  ; Rsqrt(value)
  %1079 = fmul fast float %1065, %1078
  %1080 = fmul fast float %1070, %1078
  %1081 = fmul fast float %1073, %1078
  %1082 = fmul fast float %1076, %1078
  br label %1083

; <label>:1083                                    ; preds = %1050, %974
  %1084 = phi float [ %1079, %1050 ], [ 0.000000e+00, %974 ]
  %1085 = phi float [ %1080, %1050 ], [ 0.000000e+00, %974 ]
  %1086 = phi float [ %1081, %1050 ], [ 0.000000e+00, %974 ]
  %1087 = phi float [ %1082, %1050 ], [ 1.000000e+00, %974 ]
  %1088 = icmp eq i32 %879, 6
  br i1 %1088, label %1117, label %1089, !dx.controlflow.hints !74

; <label>:1089                                    ; preds = %1083
  br i1 %871, label %1090, label %1103, !dx.controlflow.hints !75

; <label>:1090                                    ; preds = %1089
  %1091 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %876, float %877, float %878)  ; Dot3(ax,ay,az,bx,by,bz)
  %1092 = fcmp fast ogt float %1091, 0x3FEFF7CEE0000000
  br i1 %1092, label %1117, label %1093, !dx.controlflow.hints !76

; <label>:1093                                    ; preds = %1090
  %1094 = fcmp fast olt float %1091, 0xBFEFF7CEE0000000
  br i1 %1094, label %1117, label %1095, !dx.controlflow.hints !77

; <label>:1095                                    ; preds = %1093
  %1096 = fsub fast float -0.000000e+00, %877
  %1097 = fadd fast float %1091, 1.000000e+00
  %1098 = call float @dx.op.dot4.f32(i32 56, float %1096, float %876, float 0.000000e+00, float %1097, float %1096, float %876, float 0.000000e+00, float %1097)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1099 = call float @dx.op.unary.f32(i32 25, float %1098)  ; Rsqrt(value)
  %1100 = fmul fast float %1099, %1096
  %1101 = fmul fast float %1099, %876
  %1102 = fmul fast float %1099, %1097
  br label %1117

; <label>:1103                                    ; preds = %1089
  br i1 %873, label %1104, label %1117, !dx.controlflow.hints !78

; <label>:1104                                    ; preds = %1103
  %1105 = call float @dx.op.dot3.f32(i32 55, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %975, float %976, float %977)  ; Dot3(ax,ay,az,bx,by,bz)
  %1106 = fcmp fast ogt float %1105, 0x3FEFF7CEE0000000
  br i1 %1106, label %1117, label %1107, !dx.controlflow.hints !76

; <label>:1107                                    ; preds = %1104
  %1108 = fcmp fast olt float %1105, 0xBFEFF7CEE0000000
  br i1 %1108, label %1117, label %1109, !dx.controlflow.hints !77

; <label>:1109                                    ; preds = %1107
  %1110 = fsub fast float -0.000000e+00, %977
  %1111 = fadd fast float %1105, 1.000000e+00
  %1112 = call float @dx.op.dot4.f32(i32 56, float 0.000000e+00, float %1110, float %976, float %1111, float 0.000000e+00, float %1110, float %976, float %1111)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1113 = call float @dx.op.unary.f32(i32 25, float %1112)  ; Rsqrt(value)
  %1114 = fmul fast float %1113, %1110
  %1115 = fmul fast float %1113, %976
  %1116 = fmul fast float %1113, %1111
  br label %1117

; <label>:1117                                    ; preds = %1109, %1107, %1104, %1103, %1095, %1093, %1090, %1083
  %1118 = phi float [ 0.000000e+00, %1103 ], [ %978, %1083 ], [ %1100, %1095 ], [ 0.000000e+00, %1090 ], [ 0.000000e+00, %1109 ], [ 0.000000e+00, %1104 ], [ 0.000000e+00, %1093 ], [ 0.000000e+00, %1107 ]
  %1119 = phi float [ 0.000000e+00, %1103 ], [ %979, %1083 ], [ %1101, %1095 ], [ 0.000000e+00, %1090 ], [ %1114, %1109 ], [ 0.000000e+00, %1104 ], [ -1.000000e+00, %1093 ], [ 0.000000e+00, %1107 ]
  %1120 = phi float [ 0.000000e+00, %1103 ], [ %980, %1083 ], [ 0.000000e+00, %1095 ], [ 0.000000e+00, %1090 ], [ %1115, %1109 ], [ 0.000000e+00, %1104 ], [ 0.000000e+00, %1093 ], [ -1.000000e+00, %1107 ]
  %1121 = phi float [ 1.000000e+00, %1103 ], [ %981, %1083 ], [ %1102, %1095 ], [ 1.000000e+00, %1090 ], [ %1116, %1109 ], [ 1.000000e+00, %1104 ], [ 0.000000e+00, %1093 ], [ 0.000000e+00, %1107 ]
  %1122 = fmul fast float %1121, %1084
  %1123 = fmul fast float %1121, %1085
  %1124 = fmul fast float %1121, %1086
  %1125 = fmul fast float %1118, %1087
  %1126 = fmul fast float %1119, %1087
  %1127 = fmul fast float %1120, %1087
  %1128 = fmul fast float %1119, %1086
  %1129 = fmul fast float %1120, %1085
  %1130 = fmul fast float %1120, %1084
  %1131 = fmul fast float %1118, %1086
  %1132 = fmul fast float %1118, %1085
  %1133 = fmul fast float %1119, %1084
  %1134 = fadd fast float %1128, %1125
  %1135 = fsub fast float %1134, %1129
  %1136 = fadd fast float %1135, %1122
  %1137 = fsub fast float %1126, %1131
  %1138 = fadd fast float %1137, %1130
  %1139 = fadd fast float %1138, %1123
  %1140 = fsub fast float %1132, %1133
  %1141 = fadd fast float %1140, %1127
  %1142 = fadd fast float %1141, %1124
  %1143 = fmul fast float %1121, %1087
  %1144 = call float @dx.op.dot3.f32(i32 55, float %1118, float %1119, float %1120, float %1084, float %1085, float %1086)  ; Dot3(ax,ay,az,bx,by,bz)
  %1145 = fsub fast float %1143, %1144
  %1146 = fmul fast float %861, 4.096000e+03
  %1147 = fmul fast float %865, 4.096000e+03
  %1148 = fmul fast float %869, 4.096000e+03
  %1149 = fptosi float %1146 to i32
  %1150 = fptosi float %1147 to i32
  %1151 = fptosi float %1148 to i32
  %1152 = bitcast i32 %1149 to float
  %1153 = bitcast i32 %1150 to float
  %1154 = bitcast i32 %1151 to float
  %1155 = call float @dx.op.binary.f32(i32 35, float %1136, float -1.000000e+00)  ; FMax(a,b)
  %1156 = call float @dx.op.binary.f32(i32 36, float %1155, float 1.000000e+00)  ; FMin(a,b)
  %1157 = fadd fast float %1156, 1.000000e+00
  %1158 = fmul fast float %1157, 3.276750e+04
  %1159 = fadd fast float %1158, 5.000000e-01
  %1160 = call float @dx.op.unary.f32(i32 27, float %1159)  ; Round_ni(value)
  %1161 = fptoui float %1160 to i32
  %1162 = call float @dx.op.binary.f32(i32 35, float %1139, float -1.000000e+00)  ; FMax(a,b)
  %1163 = call float @dx.op.binary.f32(i32 36, float %1162, float 1.000000e+00)  ; FMin(a,b)
  %1164 = fadd fast float %1163, 1.000000e+00
  %1165 = fmul fast float %1164, 3.276750e+04
  %1166 = fadd fast float %1165, 5.000000e-01
  %1167 = call float @dx.op.unary.f32(i32 27, float %1166)  ; Round_ni(value)
  %1168 = fptoui float %1167 to i32
  %1169 = call float @dx.op.binary.f32(i32 35, float %1142, float -1.000000e+00)  ; FMax(a,b)
  %1170 = call float @dx.op.binary.f32(i32 36, float %1169, float 1.000000e+00)  ; FMin(a,b)
  %1171 = fadd fast float %1170, 1.000000e+00
  %1172 = fmul fast float %1171, 3.276750e+04
  %1173 = fadd fast float %1172, 5.000000e-01
  %1174 = call float @dx.op.unary.f32(i32 27, float %1173)  ; Round_ni(value)
  %1175 = fptoui float %1174 to i32
  %1176 = call float @dx.op.binary.f32(i32 35, float %1145, float -1.000000e+00)  ; FMax(a,b)
  %1177 = call float @dx.op.binary.f32(i32 36, float %1176, float 1.000000e+00)  ; FMin(a,b)
  %1178 = fadd fast float %1177, 1.000000e+00
  %1179 = fmul fast float %1178, 3.276750e+04
  %1180 = fadd fast float %1179, 5.000000e-01
  %1181 = call float @dx.op.unary.f32(i32 27, float %1180)  ; Round_ni(value)
  %1182 = fptoui float %1181 to i32
  %1183 = and i32 %1161, 65535
  %1184 = shl i32 %1168, 16
  %1185 = or i32 %1184, %1183
  %1186 = and i32 %1175, 65535
  %1187 = shl i32 %1182, 16
  %1188 = or i32 %1187, %1186
  %1189 = call i32 @dx.op.legacyF32ToF16(i32 130, float %781)  ; LegacyF32ToF16(value)
  %1190 = and i32 %1189, 65535
  %1191 = mul i32 %195, 24
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %1191, i32 undef, float %1152, float %1153, float %1154, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1192 = add i32 %1191, 12
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1192, i32 undef, i32 %1185, i32 %1188, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1193 = add i32 %1191, 20
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1193, i32 undef, i32 %1190, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br i1 %45, label %1368, label %1194, !dx.controlflow.hints !79

; <label>:1194                                    ; preds = %1117
  %1195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 128)  ; CBufferLoadLegacy(handle,regIndex)
  %1196 = extractvalue %dx.types.CBufRet.i32 %1195, 3
  %1197 = and i32 %1196, 1
  %1198 = icmp eq i32 %1197, 0
  br i1 %1198, label %1365, label %1199, !dx.controlflow.hints !80

; <label>:1199                                    ; preds = %1194
  %1200 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1201 = extractvalue %dx.types.CBufRet.i32 %1200, 0
  %1202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1203 = extractvalue %dx.types.CBufRet.f32 %1202, 3
  %1204 = extractvalue %dx.types.CBufRet.f32 %1202, 0
  %1205 = extractvalue %dx.types.CBufRet.f32 %1202, 1
  %1206 = fsub fast float %861, %1204
  %1207 = fsub fast float %865, %1205
  %1208 = uitofp i32 %1201 to float
  %1209 = fptosi float %1208 to i32
  %1210 = fmul fast float %1206, 0x3F3A027520000000
  %1211 = fmul fast float %1207, 0x3F3A027520000000
  %1212 = add nsw i32 %1209, -1
  %1213 = fptosi float %1211 to i32
  %1214 = call i32 @dx.op.binary.i32(i32 37, i32 %1213, i32 0)  ; IMax(a,b)
  %1215 = call i32 @dx.op.binary.i32(i32 38, i32 %1214, i32 %1212)  ; IMin(a,b)
  %1216 = fptosi float %1210 to i32
  %1217 = call i32 @dx.op.binary.i32(i32 37, i32 %1216, i32 0)  ; IMax(a,b)
  %1218 = call i32 @dx.op.binary.i32(i32 38, i32 %1217, i32 %1212)  ; IMin(a,b)
  %1219 = mul nsw i32 %1215, %1209
  %1220 = add nsw i32 %1218, %1219
  %1221 = sdiv i32 %1220, 4
  %1222 = shl nsw i32 %1221, 2
  %1223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.i32 %1223, 0
  %1225 = srem i32 %1220, 4
  %1226 = shl nsw i32 %1225, 3
  %1227 = and i32 %1226, 24
  %1228 = lshr i32 %1224, %1227
  %1229 = and i32 %1228, 255
  %1230 = mul nuw nsw i32 %1229, 12
  %1231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1230, i32 undef)  ; BufferLoad(srv,index,wot)
  %1232 = extractvalue %dx.types.ResRet.f32 %1231, 0
  %1233 = extractvalue %dx.types.ResRet.f32 %1231, 1
  %1234 = extractvalue %dx.types.ResRet.f32 %1231, 2
  %1235 = fsub fast float %1206, %1232
  %1236 = fsub fast float %1207, %1233
  %1237 = fdiv fast float %1235, %1234
  %1238 = fdiv fast float %1236, %1234
  %1239 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1240 = extractvalue %dx.types.CBufRet.i32 %1239, 2
  %1241 = uitofp i32 %1240 to float
  %1242 = extractvalue %dx.types.CBufRet.i32 %1200, 1
  %1243 = extractvalue %dx.types.CBufRet.i32 %1239, 1
  %1244 = mul i32 %1243, %1242
  %1245 = uitofp i32 %1244 to float
  %1246 = shl nuw nsw i32 %1229, 3
  %1247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1246, i32 undef)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.i32 %1247, 0
  %1249 = extractvalue %dx.types.ResRet.i32 %1247, 1
  %1250 = lshr i32 %1249, 16
  %1251 = and i32 %1250, 1
  %1252 = icmp eq i32 %1251, 0
  br i1 %1252, label %1253, label %1258, !dx.controlflow.hints !81

; <label>:1253                                    ; preds = %1199
  %1254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.i32 %1254, 0
  %1256 = extractvalue %dx.types.ResRet.i32 %1254, 1
  %1257 = lshr i32 %1256, 16
  br label %1258

; <label>:1258                                    ; preds = %1253, %1199
  %1259 = phi i32 [ 0, %1253 ], [ %1229, %1199 ]
  %1260 = phi i32 [ %1255, %1253 ], [ %1248, %1199 ]
  %1261 = phi i32 [ %1256, %1253 ], [ %1249, %1199 ]
  %1262 = phi i32 [ %1257, %1253 ], [ %1250, %1199 ]
  %1263 = and i32 %1261, 65535
  %1264 = lshr i32 %1260, 16
  %1265 = and i32 %1260, 65535
  %1266 = lshr i32 %1262, 1
  %1267 = uitofp i32 %1266 to float
  %1268 = icmp eq i32 %1259, 0
  %1269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 127)  ; CBufferLoadLegacy(handle,regIndex)
  %1270 = extractvalue %dx.types.CBufRet.f32 %1269, 2
  %1271 = bitcast float %1270 to i32
  %1272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1273 = extractvalue %dx.types.CBufRet.f32 %1272, 0
  %1274 = fdiv fast float %1206, %1203
  %1275 = fdiv fast float %1207, %1203
  %1276 = select i1 %1268, float %1274, float %1237
  %1277 = select i1 %1268, float %1275, float %1238
  %1278 = call float @dx.op.unary.f32(i32 27, float %1273)  ; Round_ni(value)
  %1279 = fptosi float %1278 to i32
  %1280 = sub nsw i32 8, %1263
  %1281 = select i1 %1268, i32 %1271, i32 %1280
  %1282 = sub nsw i32 %1279, %1281
  %1283 = call i32 @dx.op.binary.i32(i32 37, i32 %1282, i32 0)  ; IMax(a,b)
  %1284 = call i32 @dx.op.binary.i32(i32 38, i32 %1283, i32 %1263)  ; IMin(a,b)
  %1285 = fptoui float %1267 to i32
  %1286 = and i32 %1284, 31
  %1287 = lshr i32 %1285, %1286
  %1288 = add i32 %1287, -1
  %1289 = uitofp i32 %1288 to float
  %1290 = uitofp i32 %1287 to float
  %1291 = fmul fast float %1290, %1276
  %1292 = fmul fast float %1290, %1277
  %1293 = call float @dx.op.unary.f32(i32 27, float %1291)  ; Round_ni(value)
  %1294 = call float @dx.op.unary.f32(i32 27, float %1292)  ; Round_ni(value)
  %1295 = call float @dx.op.binary.f32(i32 35, float %1293, float 0.000000e+00)  ; FMax(a,b)
  %1296 = call float @dx.op.binary.f32(i32 35, float %1294, float 0.000000e+00)  ; FMax(a,b)
  %1297 = call float @dx.op.binary.f32(i32 36, float %1295, float %1289)  ; FMin(a,b)
  %1298 = call float @dx.op.binary.f32(i32 36, float %1296, float %1289)  ; FMin(a,b)
  %1299 = fptoui float %1297 to i32
  %1300 = fptoui float %1298 to i32
  %1301 = lshr i32 %1265, %1286
  %1302 = lshr i32 %1264, %1286
  %1303 = add i32 %1299, %1301
  %1304 = add i32 %1300, %1302
  %1305 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %13, i32 %1284, i32 %1303, i32 %1304, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1306 = extractvalue %dx.types.ResRet.i32 %1305, 0
  %1307 = and i32 %1306, 255
  %1308 = uitofp i32 %1307 to float
  %1309 = lshr i32 %1306, 8
  %1310 = and i32 %1309, 255
  %1311 = uitofp i32 %1310 to float
  %1312 = lshr i32 %1306, 16
  %1313 = and i32 %1312, 255
  %1314 = uitofp i32 %1313 to float
  %1315 = fptoui float %1314 to i32
  %1316 = lshr i32 %1306, 24
  %1317 = uitofp i32 %1316 to float
  %1318 = fadd fast float %1317, 1.000000e+00
  %1319 = fptoui float %1318 to i32
  %1320 = uitofp i32 %1319 to float
  %1321 = fmul fast float %1320, %1276
  %1322 = fmul fast float %1320, %1277
  %1323 = add i32 %1319, -1
  %1324 = uitofp i32 %1323 to float
  %1325 = call float @dx.op.unary.f32(i32 27, float %1321)  ; Round_ni(value)
  %1326 = call float @dx.op.unary.f32(i32 27, float %1322)  ; Round_ni(value)
  %1327 = call float @dx.op.binary.f32(i32 35, float %1325, float 0.000000e+00)  ; FMax(a,b)
  %1328 = call float @dx.op.binary.f32(i32 35, float %1326, float 0.000000e+00)  ; FMax(a,b)
  %1329 = call float @dx.op.binary.f32(i32 36, float %1327, float %1324)  ; FMin(a,b)
  %1330 = call float @dx.op.binary.f32(i32 36, float %1328, float %1324)  ; FMin(a,b)
  %1331 = fsub fast float %1321, %1329
  %1332 = fsub fast float %1322, %1330
  %1333 = fadd fast float %1241, 8.000000e+00
  %1334 = fmul fast float %1308, %1333
  %1335 = fmul fast float %1311, %1333
  %1336 = fmul fast float %1331, %1241
  %1337 = fmul fast float %1332, %1241
  %1338 = fadd fast float %1334, 4.500000e+00
  %1339 = fadd fast float %1338, %1336
  %1340 = fadd fast float %1335, 4.500000e+00
  %1341 = fadd fast float %1340, %1337
  %1342 = fdiv fast float %1339, %1245
  %1343 = fdiv fast float %1341, %1245
  %1344 = uitofp i32 %1315 to float
  %1345 = fsub fast float %1273, %1344
  %1346 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %1342, float %1343, float undef, float undef, i32 0, i32 0, i32 undef, float %1345)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1347 = extractvalue %dx.types.ResRet.f32 %1346, 0
  %1348 = extractvalue %dx.types.ResRet.f32 %1346, 1
  %1349 = extractvalue %dx.types.ResRet.f32 %1346, 2
  %1350 = sub i32 %195, %49
  %1351 = fmul fast float %1349, 2.550000e+02
  %1352 = fptoui float %1351 to i32
  %1353 = shl i32 %1352, 16
  %1354 = and i32 %1353, 16711680
  %1355 = fmul fast float %1348, 2.550000e+02
  %1356 = fptoui float %1355 to i32
  %1357 = shl i32 %1356, 8
  %1358 = and i32 %1357, 65280
  %1359 = fmul fast float %1347, 2.550000e+02
  %1360 = fptoui float %1359 to i32
  %1361 = and i32 %1360, 255
  %1362 = or i32 %1358, %1361
  %1363 = or i32 %1362, %1354
  %1364 = shl i32 %1350, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1364, i32 undef, i32 %1363, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1368

; <label>:1365                                    ; preds = %1194
  %1366 = sub i32 %195, %49
  %1367 = shl i32 %1366, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1367, i32 undef, i32 16777215, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1368

; <label>:1368                                    ; preds = %1365, %1258, %1117, %159, %114, %102
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
!dx.entryPoints = !{!36}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !25, !30, !34}
!5 = !{!6, !7, !8, !10, !12, !13, !15, !16, !18, !19, !20, !21, !22, !23, !24}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 14, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 8, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 4}
!10 = !{i32 3, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !11}
!11 = !{i32 0, i32 9}
!12 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !11}
!13 = !{i32 5, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !14}
!14 = !{i32 0, i32 5}
!15 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !11}
!16 = !{i32 7, %"class.StructuredBuffer<StTerrainClutterLayer>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !17}
!17 = !{i32 1, i32 120}
!18 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!19 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!20 = !{i32 10, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 9, i32 1, i32 12, i32 0, !9}
!21 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!22 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 11, i32 1, i32 11, i32 0, null}
!23 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 10, i32 1, i32 11, i32 0, null}
!24 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!25 = !{!26, !27, !29}
!26 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!27 = !{i32 1, %"class.RWStructuredBuffer<GfxClutterCollectionGPUData>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i1 false, i1 false, i1 false, !28}
!28 = !{i32 1, i32 8}
!29 = !{i32 2, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!30 = !{!31, !32, !33}
!31 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!32 = !{i32 1, %GPClutterCollectionGenSurfaceConsts* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!33 = !{i32 2, %GPClutterCollectionGenClutterConsts* undef, !"", i32 0, i32 1, i32 1, i32 64, null}
!34 = !{!35}
!35 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!36 = !{void ()* @clutter_gen_pass_for_reactivemotion_models, !"clutter_gen_pass_for_reactivemotion_models", null, !4, !37}
!37 = !{i32 0, i64 272, i32 4, !38}
!38 = !{i32 64, i32 1, i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = !{!45, !45, i64 0}
!45 = !{!"int", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C/C++ TBAA"}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = !{!52, !52, i64 0}
!52 = !{!"float", !46, i64 0}
!53 = !{!54, !56, !57, !59, !61}
!54 = distinct !{!54, !55, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z: %tangentX"}
!55 = distinct !{!55, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z"}
!56 = distinct !{!56, !55, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z: %tangentY"}
!57 = distinct !{!57, !58, !"\01?VHM_SampleNormalAndHeightAtWorldPos@@YA?AV?$vector@M$02@@V?$vector@M$01@@MMAIAM@Z: %height"}
!58 = distinct !{!58, !"\01?VHM_SampleNormalAndHeightAtWorldPos@@YA?AV?$vector@M$02@@V?$vector@M$01@@MMAIAM@Z"}
!59 = distinct !{!59, !60, !"\01?SampleTerrainNormalHeight@@YAXIV?$vector@M$01@@AIAMAIAV?$vector@M$02@@@Z: %terrainHeight"}
!60 = distinct !{!60, !"\01?SampleTerrainNormalHeight@@YAXIV?$vector@M$01@@AIAMAIAV?$vector@M$02@@@Z"}
!61 = distinct !{!61, !60, !"\01?SampleTerrainNormalHeight@@YAXIV?$vector@M$01@@AIAMAIAV?$vector@M$02@@@Z: %terrainNormal"}
!62 = !{!57, !59, !61}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}

