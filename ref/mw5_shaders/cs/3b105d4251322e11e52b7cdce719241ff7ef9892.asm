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
; shader hash: 3404fab2143c77665d4e8c30e1cb0276
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
; cbuffer 
; {
;
;   [80 x i8] (type annotation not present)
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
;   [4 x i8] (type annotation not present)
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
;   [64 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB3            cb5     1
;                                   cbuffer      NA          NA     CB4            cb6     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture    byte         r/o      T0            t14     1
;                                   texture    byte         r/o      T1            t15     1
;                                   texture     f32          2d      T2             t0     1
;                                   texture     f32          2d      T3            t13     1
;                                   texture  struct         r/o      T4             t2     1
;                                   texture    byte         r/o      T5             t3     1
;                                   texture    byte         r/o      T6             t4     1
;                                   texture  struct         r/o      T7             t9     1
;                                   texture    byte         r/o      T8             t1     1
;                                       UAV  struct         r/w      U0             u4     1
;                                       UAV  struct         r/w      U1             u3     1
;                                       UAV  struct         r/w      U2             u5     1
;                                       UAV    byte         r/w      U3             u0     1
;                                       UAV  struct         r/w      U4             u1     1
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
%"class.StructuredBuffer<StTerrainClutterLayer>" = type { %struct.StTerrainClutterLayer }
%struct.StTerrainClutterLayer = type { <4 x float>, <3 x float>, i32, <3 x float>, i32, <3 x float>, i32, <2 x i32>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%"class.RWStructuredBuffer<ReactiveMotionModelInfoGpu>" = type { %struct.ReactiveMotionModelInfoGpu }
%struct.ReactiveMotionModelInfoGpu = type { <3 x float>, float, <3 x float>, i32, <3 x float>, i32, i32, i32, i32, i32 }
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
%GPClutterReactiveMotionModelInfoGpu = type { <3 x float>, float, <3 x float>, i32, <3 x float>, i32, i32, i32, i32, i32, <3 x float>, float }
%GPReactiveMotionConsts = type { i32, i32, i32, i32 }
%struct.SamplerState = type { i32 }

@"\01?groupInstanceIndex@@3IA" = external addrspace(3) global i32, align 4

define void @reactivemotion_clutter_gen_pass() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 4, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %22 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %23 = call i32 @dx.op.groupId.i32(i32 94, i32 2)  ; GroupId(component)
  %24 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %25 = alloca [4 x i32], align 4
  %26 = alloca [4 x i32], align 4
  %27 = alloca [4 x i32], align 4
  %28 = alloca [4 x i32], align 4
  %29 = alloca [4 x i32], align 4
  %30 = alloca [4 x i32], align 4
  %31 = alloca [4 x i32], align 4
  %32 = alloca [4 x i32], align 4
  %33 = alloca [4 x i32], align 4
  %34 = alloca [4 x i32], align 4
  %35 = alloca [4 x float], align 4
  %36 = alloca [4 x float], align 4
  %37 = alloca [4 x float], align 4
  %38 = alloca [4 x float], align 4
  %39 = alloca [4 x float], align 4
  %40 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.i32 %40, 0
  %42 = lshr i32 %41, 2
  %43 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.i32 %43, 3
  %45 = lshr i32 %44, 4
  %46 = mul i32 %42, 12
  %47 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %46, i32 undef)  ; BufferLoad(srv,index,wot)
  %48 = extractvalue %dx.types.ResRet.i32 %47, 2
  %49 = and i32 %48, 65535
  %50 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %49, i32 0)  ; BufferLoad(srv,index,wot)
  %51 = extractvalue %dx.types.ResRet.f32 %50, 0
  %52 = extractvalue %dx.types.ResRet.f32 %50, 1
  %53 = extractvalue %dx.types.ResRet.f32 %50, 2
  %54 = extractvalue %dx.types.ResRet.f32 %50, 3
  %55 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %49, i32 16)  ; BufferLoad(srv,index,wot)
  %56 = extractvalue %dx.types.ResRet.f32 %55, 0
  %57 = extractvalue %dx.types.ResRet.f32 %55, 1
  %58 = extractvalue %dx.types.ResRet.f32 %55, 2
  %59 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %49, i32 32)  ; BufferLoad(srv,index,wot)
  %60 = extractvalue %dx.types.ResRet.f32 %59, 0
  %61 = extractvalue %dx.types.ResRet.f32 %59, 1
  %62 = extractvalue %dx.types.ResRet.f32 %59, 2
  %63 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %49, i32 44)  ; BufferLoad(srv,index,wot)
  %64 = extractvalue %dx.types.ResRet.i32 %63, 0
  %65 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %49, i32 48)  ; BufferLoad(srv,index,wot)
  %66 = extractvalue %dx.types.ResRet.f32 %65, 0
  %67 = extractvalue %dx.types.ResRet.f32 %65, 1
  %68 = extractvalue %dx.types.ResRet.f32 %65, 2
  %69 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %49, i32 60)  ; BufferLoad(srv,index,wot)
  %70 = extractvalue %dx.types.ResRet.i32 %69, 0
  %71 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %49, i32 64)  ; BufferLoad(srv,index,wot)
  %72 = extractvalue %dx.types.ResRet.i32 %71, 0
  %73 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %49, i32 72)  ; BufferLoad(srv,index,wot)
  %74 = extractvalue %dx.types.ResRet.f32 %73, 0
  %75 = extractvalue %dx.types.ResRet.f32 %73, 1
  %76 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %49, i32 80)  ; BufferLoad(srv,index,wot)
  %77 = extractvalue %dx.types.ResRet.f32 %76, 0
  %78 = extractvalue %dx.types.ResRet.f32 %76, 1
  %79 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %49, i32 88)  ; BufferLoad(srv,index,wot)
  %80 = extractvalue %dx.types.ResRet.f32 %79, 0
  %81 = extractvalue %dx.types.ResRet.f32 %79, 1
  %82 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %49, i32 96)  ; BufferLoad(srv,index,wot)
  %83 = extractvalue %dx.types.ResRet.f32 %82, 0
  %84 = extractvalue %dx.types.ResRet.f32 %82, 1
  %85 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %49, i32 108)  ; BufferLoad(srv,index,wot)
  %86 = extractvalue %dx.types.ResRet.i32 %85, 0
  %87 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %49, i32 112)  ; BufferLoad(srv,index,wot)
  %88 = extractvalue %dx.types.ResRet.f32 %87, 0
  %89 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %49, i32 116)  ; BufferLoad(srv,index,wot)
  %90 = extractvalue %dx.types.ResRet.f32 %89, 0
  %91 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.i32 %91, 0
  %93 = or i32 %22, %21
  %94 = or i32 %93, %23
  %95 = or i32 %94, %24
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98, !dx.controlflow.hints !37

; <label>:97                                      ; preds = %0
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %92, i32 0, i32 %42, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %98

; <label>:98                                      ; preds = %97, %0
  %99 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.i32 %99, 2
  %101 = extractvalue %dx.types.CBufRet.i32 %99, 3
  %102 = add i32 %100, %21
  %103 = add i32 %101, %22
  %104 = mul i32 %103, %72
  %105 = add i32 %102, %64
  %106 = add i32 %105, %104
  %107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %106, i32 0)  ; BufferLoad(srv,index,wot)
  %108 = extractvalue %dx.types.ResRet.i32 %107, 0
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %1268, label %110, !dx.controlflow.hints !38

; <label>:110                                     ; preds = %98
  %111 = shl i32 %23, 3
  %112 = add i32 %108, %111
  %113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %112, i32 undef)  ; BufferLoad(srv,index,wot)
  %114 = extractvalue %dx.types.ResRet.i32 %113, 0
  %115 = extractvalue %dx.types.ResRet.i32 %113, 1
  %116 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %114)  ; Countbits(value)
  %117 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %115)  ; Countbits(value)
  %118 = add i32 %117, %116
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %1268, label %120, !dx.controlflow.hints !39

; <label>:120                                     ; preds = %110
  %121 = icmp eq i32 %24, 0
  br i1 %121, label %122, label %142, !dx.controlflow.hints !40

; <label>:122                                     ; preds = %120
  %123 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.i32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.i32 %123, 1
  %126 = sub i32 %102, %124
  %127 = sub i32 %103, %125
  %128 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.i32 %128, 1
  %130 = add i32 %129, %23
  %131 = extractvalue %dx.types.CBufRet.i32 %128, 2
  %132 = mul i32 %131, %127
  %133 = shl i32 %126, 5
  %134 = add i32 %130, %133
  %135 = add i32 %134, %132
  %136 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 %92, i32 4, i32 undef, i32 %118)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.i32 %137, 1
  %139 = add i32 %136, %45
  %140 = add i32 %139, %138
  store i32 %140, i32 addrspace(3)* @"\01?groupInstanceIndex@@3IA", align 4, !tbaa !41
  %141 = add i32 %140, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %5, i32 %135, i32 0, i32 %141, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %142

; <label>:142                                     ; preds = %122, %120
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %143 = shl i32 %23, 6
  %144 = add i32 %143, %24
  %145 = and i32 %144, 32
  %146 = icmp ugt i32 %145, 31
  %147 = and i32 %144, 31
  %148 = shl i32 1, %147
  %149 = select i1 %146, i32 %115, i32 %114
  %150 = and i32 %149, %148
  %151 = load i32, i32 addrspace(3)* @"\01?groupInstanceIndex@@3IA", align 4, !tbaa !41
  %152 = icmp ne i32 %151, -1
  %153 = icmp ne i32 %150, 0
  %154 = and i1 %153, %152
  br i1 %154, label %155, label %1268, !dx.controlflow.hints !45

; <label>:155                                     ; preds = %142
  %156 = uitofp i32 %102 to float
  %157 = uitofp i32 %103 to float
  %158 = add i32 %70, %144
  %159 = shl i32 %158, 3
  %160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %159, i32 undef)  ; BufferLoad(srv,index,wot)
  %161 = extractvalue %dx.types.ResRet.i32 %160, 0
  %162 = extractvalue %dx.types.ResRet.i32 %160, 1
  %163 = bitcast i32 %161 to float
  %164 = bitcast i32 %162 to float
  %165 = fadd fast float %163, %156
  %166 = fadd fast float %164, %157
  %167 = and i32 %24, 32
  %168 = and i32 %24, 31
  %169 = shl i32 1, %168
  %170 = add i32 %169, -1
  %171 = icmp eq i32 %167, 0
  %172 = and i32 %114, %170
  %173 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %172)  ; Countbits(value)
  %174 = and i32 %115, %170
  %175 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %174)  ; Countbits(value)
  %176 = add i32 %175, %116
  %177 = select i1 %171, i32 %173, i32 %176
  %178 = add i32 %177, %151
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 0
  %181 = extractvalue %dx.types.CBufRet.f32 %179, 1
  %182 = fsub fast float %165, %180
  %183 = fsub fast float %166, %181
  %184 = call float @dx.op.dot2.f32(i32 54, float %182, float %183, float %182, float %183)  ; Dot2(ax,ay,bx,by)
  %185 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %186 = fcmp ult float %184, %185
  %187 = zext i1 %186 to i32
  br i1 %186, label %188, label %253, !dx.controlflow.hints !46

; <label>:188                                     ; preds = %155
  %189 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %190 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.i32 %190, 0
  %192 = add i32 %191, %189
  %193 = extractvalue %dx.types.CBufRet.i32 %190, 2
  %194 = icmp ult i32 %192, %193
  br i1 %194, label %195, label %220, !dx.controlflow.hints !47

; <label>:195                                     ; preds = %188
  %196 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = extractvalue %dx.types.CBufRet.i32 %196, 3
  %198 = lshr i32 %197, 24
  %199 = and i32 %198, 15
  %200 = add nuw nsw i32 %199, 1
  %201 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 0, i32 1, i32 0, i32 undef, i32 %200)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %202 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = extractvalue %dx.types.CBufRet.i32 %202, 1
  %204 = add i32 %203, %201
  %205 = add i32 %204, %199
  %206 = extractvalue %dx.types.CBufRet.i32 %202, 3
  %207 = icmp ult i32 %205, %206
  br i1 %207, label %208, label %220, !dx.controlflow.hints !48

; <label>:208                                     ; preds = %195
  %209 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.i32 %209, 2
  br label %211

; <label>:211                                     ; preds = %211, %208
  %212 = phi i32 [ 0, %208 ], [ %217, %211 ]
  %213 = add i32 %212, 16
  %214 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 6, i32 %213, i32 0, i32 undef, i32 %204)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %215 = add i32 %212, 5
  %216 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 7, i32 %215, i32 0, i32 undef, i32 %205)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %217 = add i32 %212, 1
  %218 = icmp ugt i32 %217, %210
  br i1 %218, label %219, label %211

; <label>:219                                     ; preds = %211
  br label %220

; <label>:220                                     ; preds = %219, %195, %188
  %221 = phi i32 [ %204, %195 ], [ 0, %188 ], [ %204, %219 ]
  %222 = phi i1 [ false, %195 ], [ false, %188 ], [ true, %219 ]
  %223 = zext i1 %222 to i32
  br i1 %222, label %224, label %253, !dx.controlflow.hints !49

; <label>:224                                     ; preds = %220
  %225 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.i32 %225, 0
  %227 = sub i32 %192, %226
  %228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %229 = extractvalue %dx.types.CBufRet.f32 %228, 0
  %230 = extractvalue %dx.types.CBufRet.f32 %228, 1
  %231 = extractvalue %dx.types.CBufRet.f32 %228, 2
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 0
  %234 = extractvalue %dx.types.CBufRet.f32 %232, 1
  %235 = extractvalue %dx.types.CBufRet.f32 %232, 2
  %236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.f32 %236, 0
  %238 = extractvalue %dx.types.CBufRet.f32 %236, 1
  %239 = extractvalue %dx.types.CBufRet.f32 %236, 2
  %240 = extractvalue %dx.types.CBufRet.f32 %228, 3
  %241 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.i32 %241, 3
  %243 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %244 = extractvalue %dx.types.CBufRet.i32 %243, 3
  %245 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.i32 %245, 2
  %247 = extractvalue %dx.types.CBufRet.i32 %245, 0
  %248 = and i32 %242, -65536
  %249 = or i32 %248, %221
  %250 = and i32 %244, -16777216
  %251 = and i32 %178, 16777215
  %252 = or i32 %250, %251
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %192, i32 0, float %229, float %230, float %231, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %192, i32 12, float %240, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %192, i32 16, float %233, float %234, float %235, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %192, i32 28, i32 %249, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %192, i32 32, float %237, float %238, float %239, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %192, i32 44, i32 %252, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %192, i32 48, i32 %246, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %192, i32 52, i32 %247, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %192, i32 56, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %192, i32 60, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %253

; <label>:253                                     ; preds = %224, %220, %155
  %254 = phi i32 [ %227, %224 ], [ %178, %220 ], [ %178, %155 ]
  %255 = phi i32 [ %223, %224 ], [ %223, %220 ], [ %187, %155 ]
  %256 = fmul fast float %165, %74
  %257 = fmul fast float %166, %75
  %258 = fadd fast float %256, -5.000000e-01
  %259 = fsub fast float 5.000000e-01, %257
  %260 = fmul fast float %258, %77
  %261 = fmul fast float %259, %78
  %262 = and i32 %86, 8
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %353, label %264, !dx.controlflow.hints !50

; <label>:264                                     ; preds = %253
  %265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %266 = extractvalue %dx.types.CBufRet.f32 %265, 0
  %267 = extractvalue %dx.types.CBufRet.f32 %265, 1
  %268 = fadd fast float %266, %260
  %269 = fadd fast float %267, %261
  %270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %271 = extractvalue %dx.types.CBufRet.f32 %270, 0
  %272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %273 = extractvalue %dx.types.CBufRet.f32 %272, 0
  %274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %275 = extractvalue %dx.types.CBufRet.f32 %274, 0
  %276 = extractvalue %dx.types.CBufRet.f32 %270, 1
  %277 = extractvalue %dx.types.CBufRet.f32 %272, 1
  %278 = extractvalue %dx.types.CBufRet.f32 %274, 1
  %279 = extractvalue %dx.types.CBufRet.f32 %270, 3
  %280 = extractvalue %dx.types.CBufRet.f32 %272, 3
  %281 = extractvalue %dx.types.CBufRet.f32 %274, 3
  %282 = fadd fast float %268, %279
  %283 = fadd fast float %269, %280
  %284 = fmul fast float %282, %271
  %285 = call float @dx.op.tertiary.f32(i32 46, float %283, float %273, float %284)  ; FMad(a,b,c)
  %286 = call float @dx.op.tertiary.f32(i32 46, float %281, float %275, float %285)  ; FMad(a,b,c)
  %287 = fmul fast float %282, %276
  %288 = call float @dx.op.tertiary.f32(i32 46, float %283, float %277, float %287)  ; FMad(a,b,c)
  %289 = call float @dx.op.tertiary.f32(i32 46, float %281, float %278, float %288)  ; FMad(a,b,c)
  %290 = fsub fast float %286, %279
  %291 = fsub fast float %289, %280
  %292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 344)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.f32 %292, 0
  %294 = extractvalue %dx.types.CBufRet.f32 %292, 1
  %295 = extractvalue %dx.types.CBufRet.f32 %292, 2
  %296 = fsub fast float %290, %293
  %297 = fadd fast float %296, %295
  %298 = fsub fast float %291, %294
  %299 = fadd fast float %298, %295
  %300 = extractvalue %dx.types.CBufRet.f32 %292, 3
  %301 = fmul fast float %297, %300
  %302 = fmul fast float %299, %300
  %303 = call float @dx.op.unary.f32(i32 7, float %301)  ; Saturate(value)
  %304 = call float @dx.op.unary.f32(i32 7, float %302)  ; Saturate(value)
  %305 = fsub fast float 1.000000e+00, %303
  %306 = fsub fast float 1.000000e+00, %304
  %307 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %305, float %306, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %308 = extractvalue %dx.types.ResRet.f32 %307, 0
  %309 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %305, float %306, float undef, float undef, i32 0, i32 -1, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %310 = extractvalue %dx.types.ResRet.f32 %309, 0
  %311 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %305, float %306, float undef, float undef, i32 0, i32 1, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %312 = extractvalue %dx.types.ResRet.f32 %311, 0
  %313 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %305, float %306, float undef, float undef, i32 1, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %314 = extractvalue %dx.types.ResRet.f32 %313, 0
  %315 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %305, float %306, float undef, float undef, i32 -1, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %316 = extractvalue %dx.types.ResRet.f32 %315, 0
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 333)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 0
  %319 = extractvalue %dx.types.CBufRet.f32 %317, 1
  %320 = fmul fast float %318, 2.000000e+00
  %321 = fsub fast float %316, %314
  %322 = fmul fast float %319, %321
  %323 = fdiv fast float %322, %320
  %324 = fsub fast float %310, %312
  %325 = fmul fast float %319, %324
  %326 = fdiv fast float %325, %320
  %327 = call float @dx.op.dot3.f32(i32 55, float %323, float %326, float 1.000000e+00, float %323, float %326, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %328 = call float @dx.op.unary.f32(i32 25, float %327)  ; Rsqrt(value)
  %329 = fmul fast float %328, %323
  %330 = fmul fast float %328, %326
  %331 = extractvalue %dx.types.CBufRet.f32 %270, 2
  %332 = extractvalue %dx.types.CBufRet.f32 %272, 2
  %333 = extractvalue %dx.types.CBufRet.f32 %274, 2
  %334 = fmul fast float %271, %329
  %335 = call float @dx.op.tertiary.f32(i32 46, float %330, float %276, float %334)  ; FMad(a,b,c)
  %336 = call float @dx.op.tertiary.f32(i32 46, float %328, float %331, float %335)  ; FMad(a,b,c)
  %337 = fmul fast float %273, %329
  %338 = call float @dx.op.tertiary.f32(i32 46, float %330, float %277, float %337)  ; FMad(a,b,c)
  %339 = call float @dx.op.tertiary.f32(i32 46, float %328, float %332, float %338)  ; FMad(a,b,c)
  %340 = fmul fast float %275, %329
  %341 = call float @dx.op.tertiary.f32(i32 46, float %330, float %278, float %340)  ; FMad(a,b,c)
  %342 = call float @dx.op.tertiary.f32(i32 46, float %328, float %333, float %341)  ; FMad(a,b,c)
  %343 = fmul fast float %319, %308
  %344 = extractvalue %dx.types.CBufRet.f32 %317, 2
  %345 = fadd fast float %344, %343
  %346 = fadd fast float %345, %281
  %347 = fmul fast float %286, %275
  %348 = call float @dx.op.tertiary.f32(i32 46, float %289, float %278, float %347)  ; FMad(a,b,c)
  %349 = call float @dx.op.tertiary.f32(i32 46, float %346, float %333, float %348)  ; FMad(a,b,c)
  %350 = fsub fast float %349, %281
  %351 = extractvalue %dx.types.CBufRet.f32 %265, 2
  %352 = fsub fast float %350, %351
  br label %786

; <label>:353                                     ; preds = %253
  %354 = fsub fast float 1.000000e+00, %257
  %355 = fmul fast float %354, %54
  %356 = fadd fast float %355, %52
  %357 = fmul fast float %256, %53
  %358 = fadd fast float %357, %51
  %359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %360 = extractvalue %dx.types.CBufRet.f32 %359, 2
  %361 = fmul fast float %360, %358
  %362 = fmul fast float %360, %356
  %363 = extractvalue %dx.types.CBufRet.f32 %359, 3
  %364 = fadd fast float %361, %363
  %365 = fadd fast float %362, %363
  %366 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %367 = extractvalue %dx.types.CBufRet.i32 %366, 3
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %744, label %369, !dx.controlflow.hints !51

; <label>:369                                     ; preds = %353
  %370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.f32 %370, 2
  %372 = extractvalue %dx.types.CBufRet.f32 %370, 3
  %373 = fmul fast float %371, %364
  %374 = fmul fast float %372, %365
  %375 = extractvalue %dx.types.CBufRet.f32 %370, 0
  %376 = extractvalue %dx.types.CBufRet.f32 %370, 1
  %377 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.i32 %377, 0
  %379 = extractvalue %dx.types.CBufRet.i32 %377, 1
  %380 = extractvalue %dx.types.CBufRet.i32 %377, 2
  %381 = extractvalue %dx.types.CBufRet.i32 %377, 3
  %382 = mul i32 %380, %380
  %383 = fadd fast float %371, 0xBF847AE140000000
  %384 = fadd fast float %372, 0xBF847AE140000000
  %385 = call float @dx.op.binary.f32(i32 35, float %373, float 0.000000e+00)  ; FMax(a,b)
  %386 = call float @dx.op.binary.f32(i32 35, float %374, float 0.000000e+00)  ; FMax(a,b)
  %387 = call float @dx.op.binary.f32(i32 36, float %385, float %383)  ; FMin(a,b)
  %388 = call float @dx.op.binary.f32(i32 36, float %386, float %384)  ; FMin(a,b)
  %389 = fdiv fast float %387, %375
  %390 = fdiv fast float %388, %376
  %391 = fptoui float %389 to i32
  %392 = fptoui float %390 to i32
  %393 = mul i32 %392, %378
  %394 = add i32 %393, %391
  %395 = lshr i32 %394, 1
  %396 = shl i32 %395, 2
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = shl i32 %394, 4
  %400 = and i32 %399, 16
  %401 = lshr i32 %398, %400
  %402 = and i32 %401, 255
  %403 = lshr i32 %401, 8
  %404 = and i32 %403, 31
  %405 = shl i32 1, %404
  %406 = uitofp i32 %405 to float
  %407 = fmul fast float %406, %387
  %408 = fdiv fast float %407, %371
  %409 = fmul fast float %406, %388
  %410 = fdiv fast float %409, %372
  %411 = call float @dx.op.unary.f32(i32 22, float %408)  ; Frc(value)
  %412 = call float @dx.op.unary.f32(i32 22, float %410)  ; Frc(value)
  %413 = uitofp i32 %379 to float
  %414 = fmul fast float %411, %413
  %415 = fmul fast float %412, %413
  %416 = uitofp i32 %381 to float
  %417 = fadd fast float %414, %416
  %418 = fadd fast float %415, %416
  %419 = mul i32 %382, %402
  %420 = fadd fast float %417, -1.000000e+00
  %421 = fadd fast float %418, -1.000000e+00
  %422 = call float @dx.op.unary.f32(i32 22, float %420)  ; Frc(value)
  %423 = fptoui float %420 to i32
  %424 = fptoui float %418 to i32
  %425 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 0
  %426 = getelementptr [4 x i32], [4 x i32]* %34, i32 0, i32 0
  store i32 %423, i32* %425, align 4
  store i32 %424, i32* %426, align 4
  %427 = add i32 %423, 1
  %428 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 1
  %429 = getelementptr [4 x i32], [4 x i32]* %34, i32 0, i32 1
  store i32 %427, i32* %428, align 4
  store i32 %424, i32* %429, align 4
  %430 = add i32 %424, 1
  %431 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 2
  %432 = getelementptr [4 x i32], [4 x i32]* %34, i32 0, i32 2
  store i32 %423, i32* %431, align 4
  store i32 %430, i32* %432, align 4
  %433 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 3
  %434 = getelementptr [4 x i32], [4 x i32]* %34, i32 0, i32 3
  store i32 %427, i32* %433, align 4
  store i32 %430, i32* %434, align 4
  %435 = add i32 %380, -1
  br label %436

; <label>:436                                     ; preds = %459, %369
  %437 = phi i32 [ %424, %369 ], [ %463, %459 ]
  %438 = phi i32 [ %423, %369 ], [ %461, %459 ]
  %439 = phi i32 [ 0, %369 ], [ %457, %459 ]
  %440 = call i32 @dx.op.binary.i32(i32 40, i32 %438, i32 %435)  ; UMin(a,b)
  %441 = call i32 @dx.op.binary.i32(i32 40, i32 %437, i32 %435)  ; UMin(a,b)
  %442 = mul i32 %441, %380
  %443 = add i32 %440, %419
  %444 = add i32 %443, %442
  %445 = lshr i32 %444, 1
  %446 = shl i32 %445, 2
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = shl i32 %444, 4
  %450 = and i32 %449, 16
  %451 = lshr i32 %448, %450
  %452 = and i32 %451, 65535
  %453 = uitofp i32 %452 to float
  %454 = fmul fast float %453, 0x3EF0002000000000
  %455 = call float @dx.op.unary.f32(i32 7, float %454)  ; Saturate(value)
  %456 = getelementptr inbounds [4 x float], [4 x float]* %39, i32 0, i32 %439
  store float %455, float* %456, align 4, !tbaa !52, !noalias !54
  %457 = add nuw nsw i32 %439, 1
  %458 = icmp eq i32 %457, 4
  br i1 %458, label %464, label %459

; <label>:459                                     ; preds = %436
  %460 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 %457
  %461 = load i32, i32* %460, align 4
  %462 = getelementptr [4 x i32], [4 x i32]* %34, i32 0, i32 %457
  %463 = load i32, i32* %462, align 4
  br label %436

; <label>:464                                     ; preds = %436
  %465 = extractvalue %dx.types.CBufRet.f32 %359, 1
  %466 = extractvalue %dx.types.CBufRet.f32 %359, 0
  %467 = fadd fast float %417, 1.000000e+00
  %468 = fadd fast float %418, 1.000000e+00
  %469 = call float @dx.op.unary.f32(i32 22, float %418)  ; Frc(value)
  %470 = fsub fast float 1.000000e+00, %422
  %471 = getelementptr inbounds [4 x float], [4 x float]* %39, i32 0, i32 0
  %472 = load float, float* %471, align 4, !tbaa !52, !noalias !54
  %473 = fmul fast float %472, %470
  %474 = getelementptr inbounds [4 x float], [4 x float]* %39, i32 0, i32 1
  %475 = load float, float* %474, align 4, !tbaa !52, !noalias !54
  %476 = fmul fast float %475, %422
  %477 = fadd fast float %476, %473
  %478 = getelementptr inbounds [4 x float], [4 x float]* %39, i32 0, i32 2
  %479 = load float, float* %478, align 4, !tbaa !52, !noalias !54
  %480 = getelementptr inbounds [4 x float], [4 x float]* %39, i32 0, i32 3
  %481 = load float, float* %480, align 4, !tbaa !52, !noalias !54
  %482 = fmul fast float %481, %422
  %483 = fsub fast float 1.000000e+00, %469
  %484 = fmul fast float %477, %483
  %485 = call float @dx.op.unary.f32(i32 22, float %467)  ; Frc(value)
  %486 = fptoui float %467 to i32
  %487 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 0
  %488 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %486, i32* %487, align 4
  store i32 %424, i32* %488, align 4
  %489 = add i32 %486, 1
  %490 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 1
  %491 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %489, i32* %490, align 4
  store i32 %424, i32* %491, align 4
  %492 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 2
  %493 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %486, i32* %492, align 4
  store i32 %430, i32* %493, align 4
  %494 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 3
  %495 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %489, i32* %494, align 4
  store i32 %430, i32* %495, align 4
  br label %496

; <label>:496                                     ; preds = %519, %464
  %497 = phi i32 [ %424, %464 ], [ %523, %519 ]
  %498 = phi i32 [ %486, %464 ], [ %521, %519 ]
  %499 = phi i32 [ 0, %464 ], [ %517, %519 ]
  %500 = call i32 @dx.op.binary.i32(i32 40, i32 %498, i32 %435)  ; UMin(a,b)
  %501 = call i32 @dx.op.binary.i32(i32 40, i32 %497, i32 %435)  ; UMin(a,b)
  %502 = mul i32 %501, %380
  %503 = add i32 %500, %419
  %504 = add i32 %503, %502
  %505 = lshr i32 %504, 1
  %506 = shl i32 %505, 2
  %507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.i32 %507, 0
  %509 = shl i32 %504, 4
  %510 = and i32 %509, 16
  %511 = lshr i32 %508, %510
  %512 = and i32 %511, 65535
  %513 = uitofp i32 %512 to float
  %514 = fmul fast float %513, 0x3EF0002000000000
  %515 = call float @dx.op.unary.f32(i32 7, float %514)  ; Saturate(value)
  %516 = getelementptr inbounds [4 x float], [4 x float]* %38, i32 0, i32 %499
  store float %515, float* %516, align 4, !tbaa !52, !noalias !54
  %517 = add nuw nsw i32 %499, 1
  %518 = icmp eq i32 %517, 4
  br i1 %518, label %524, label %519

; <label>:519                                     ; preds = %496
  %520 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 %517
  %521 = load i32, i32* %520, align 4
  %522 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %517
  %523 = load i32, i32* %522, align 4
  br label %496

; <label>:524                                     ; preds = %496
  %525 = fmul fast float %479, %470
  %526 = fadd fast float %482, %525
  %527 = fmul fast float %526, %469
  %528 = fsub fast float 1.000000e+00, %485
  %529 = getelementptr inbounds [4 x float], [4 x float]* %38, i32 0, i32 0
  %530 = load float, float* %529, align 4, !tbaa !52, !noalias !54
  %531 = fmul fast float %530, %528
  %532 = getelementptr inbounds [4 x float], [4 x float]* %38, i32 0, i32 1
  %533 = load float, float* %532, align 4, !tbaa !52, !noalias !54
  %534 = fmul fast float %533, %485
  %535 = fadd fast float %534, %531
  %536 = getelementptr inbounds [4 x float], [4 x float]* %38, i32 0, i32 2
  %537 = load float, float* %536, align 4, !tbaa !52, !noalias !54
  %538 = getelementptr inbounds [4 x float], [4 x float]* %38, i32 0, i32 3
  %539 = load float, float* %538, align 4, !tbaa !52, !noalias !54
  %540 = fmul fast float %539, %485
  %541 = fmul fast float %535, %483
  %542 = call float @dx.op.unary.f32(i32 22, float %417)  ; Frc(value)
  %543 = fptoui float %417 to i32
  %544 = fptoui float %421 to i32
  %545 = getelementptr [4 x i32], [4 x i32]* %29, i32 0, i32 0
  %546 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 0
  store i32 %543, i32* %545, align 4
  store i32 %544, i32* %546, align 4
  %547 = add i32 %543, 1
  %548 = getelementptr [4 x i32], [4 x i32]* %29, i32 0, i32 1
  %549 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 1
  store i32 %547, i32* %548, align 4
  store i32 %544, i32* %549, align 4
  %550 = add i32 %544, 1
  %551 = getelementptr [4 x i32], [4 x i32]* %29, i32 0, i32 2
  %552 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 2
  store i32 %543, i32* %551, align 4
  store i32 %550, i32* %552, align 4
  %553 = getelementptr [4 x i32], [4 x i32]* %29, i32 0, i32 3
  %554 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 3
  store i32 %547, i32* %553, align 4
  store i32 %550, i32* %554, align 4
  br label %555

; <label>:555                                     ; preds = %578, %524
  %556 = phi i32 [ %544, %524 ], [ %582, %578 ]
  %557 = phi i32 [ %543, %524 ], [ %580, %578 ]
  %558 = phi i32 [ 0, %524 ], [ %576, %578 ]
  %559 = call i32 @dx.op.binary.i32(i32 40, i32 %557, i32 %435)  ; UMin(a,b)
  %560 = call i32 @dx.op.binary.i32(i32 40, i32 %556, i32 %435)  ; UMin(a,b)
  %561 = mul i32 %560, %380
  %562 = add i32 %559, %419
  %563 = add i32 %562, %561
  %564 = lshr i32 %563, 1
  %565 = shl i32 %564, 2
  %566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %565, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.i32 %566, 0
  %568 = shl i32 %563, 4
  %569 = and i32 %568, 16
  %570 = lshr i32 %567, %569
  %571 = and i32 %570, 65535
  %572 = uitofp i32 %571 to float
  %573 = fmul fast float %572, 0x3EF0002000000000
  %574 = call float @dx.op.unary.f32(i32 7, float %573)  ; Saturate(value)
  %575 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 %558
  store float %574, float* %575, align 4, !tbaa !52, !noalias !54
  %576 = add nuw nsw i32 %558, 1
  %577 = icmp eq i32 %576, 4
  br i1 %577, label %583, label %578

; <label>:578                                     ; preds = %555
  %579 = getelementptr [4 x i32], [4 x i32]* %29, i32 0, i32 %576
  %580 = load i32, i32* %579, align 4
  %581 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %576
  %582 = load i32, i32* %581, align 4
  br label %555

; <label>:583                                     ; preds = %555
  %584 = fmul fast float %537, %528
  %585 = fadd fast float %540, %584
  %586 = fmul fast float %585, %469
  %587 = call float @dx.op.unary.f32(i32 22, float %421)  ; Frc(value)
  %588 = fsub fast float 1.000000e+00, %542
  %589 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 0
  %590 = load float, float* %589, align 4, !tbaa !52, !noalias !54
  %591 = fmul fast float %590, %588
  %592 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 1
  %593 = load float, float* %592, align 4, !tbaa !52, !noalias !54
  %594 = fmul fast float %593, %542
  %595 = fadd fast float %594, %591
  %596 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 2
  %597 = load float, float* %596, align 4, !tbaa !52, !noalias !54
  %598 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 3
  %599 = load float, float* %598, align 4, !tbaa !52, !noalias !54
  %600 = fmul fast float %599, %542
  %601 = fsub fast float 1.000000e+00, %587
  %602 = fmul fast float %595, %601
  %603 = fptoui float %468 to i32
  %604 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 0
  %605 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 0
  store i32 %543, i32* %604, align 4
  store i32 %603, i32* %605, align 4
  %606 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 1
  %607 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 1
  store i32 %547, i32* %606, align 4
  store i32 %603, i32* %607, align 4
  %608 = add i32 %603, 1
  %609 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 2
  %610 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 2
  store i32 %543, i32* %609, align 4
  store i32 %608, i32* %610, align 4
  %611 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 3
  %612 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 3
  store i32 %547, i32* %611, align 4
  store i32 %608, i32* %612, align 4
  br label %613

; <label>:613                                     ; preds = %636, %583
  %614 = phi i32 [ %603, %583 ], [ %640, %636 ]
  %615 = phi i32 [ %543, %583 ], [ %638, %636 ]
  %616 = phi i32 [ 0, %583 ], [ %634, %636 ]
  %617 = call i32 @dx.op.binary.i32(i32 40, i32 %615, i32 %435)  ; UMin(a,b)
  %618 = call i32 @dx.op.binary.i32(i32 40, i32 %614, i32 %435)  ; UMin(a,b)
  %619 = mul i32 %618, %380
  %620 = add i32 %617, %419
  %621 = add i32 %620, %619
  %622 = lshr i32 %621, 1
  %623 = shl i32 %622, 2
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %623, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.i32 %624, 0
  %626 = shl i32 %621, 4
  %627 = and i32 %626, 16
  %628 = lshr i32 %625, %627
  %629 = and i32 %628, 65535
  %630 = uitofp i32 %629 to float
  %631 = fmul fast float %630, 0x3EF0002000000000
  %632 = call float @dx.op.unary.f32(i32 7, float %631)  ; Saturate(value)
  %633 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 %616
  store float %632, float* %633, align 4, !tbaa !52, !noalias !54
  %634 = add nuw nsw i32 %616, 1
  %635 = icmp eq i32 %634, 4
  br i1 %635, label %641, label %636

; <label>:636                                     ; preds = %613
  %637 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %634
  %638 = load i32, i32* %637, align 4
  %639 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %634
  %640 = load i32, i32* %639, align 4
  br label %613

; <label>:641                                     ; preds = %613
  %642 = fmul fast float %597, %588
  %643 = fadd fast float %600, %642
  %644 = fmul fast float %643, %587
  %645 = call float @dx.op.unary.f32(i32 22, float %468)  ; Frc(value)
  %646 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 0
  %647 = load float, float* %646, align 4, !tbaa !52, !noalias !54
  %648 = fmul fast float %647, %588
  %649 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 1
  %650 = load float, float* %649, align 4, !tbaa !52, !noalias !54
  %651 = fmul fast float %650, %542
  %652 = fadd fast float %651, %648
  %653 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 2
  %654 = load float, float* %653, align 4, !tbaa !52, !noalias !54
  %655 = fmul fast float %654, %588
  %656 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 3
  %657 = load float, float* %656, align 4, !tbaa !52, !noalias !54
  %658 = fmul fast float %657, %542
  %659 = fadd fast float %658, %655
  %660 = fsub fast float 1.000000e+00, %645
  %661 = fmul fast float %652, %660
  %662 = fmul fast float %659, %645
  %663 = fmul fast float %371, 2.000000e+00
  %664 = fmul fast float %406, %413
  %665 = fdiv fast float %663, %664
  %666 = fsub fast float -0.000000e+00, %484
  %667 = fsub fast float %666, %527
  %668 = fadd fast float %667, %541
  %669 = fadd fast float %668, %586
  %670 = fmul fast float %372, 2.000000e+00
  %671 = fdiv fast float %670, %664
  %672 = fsub fast float -0.000000e+00, %602
  %673 = fsub fast float %672, %644
  %674 = fadd fast float %673, %661
  %675 = fadd fast float %674, %662
  %676 = fmul fast float %465, %669
  %677 = fmul fast float %676, %671
  %678 = fsub fast float -0.000000e+00, %677
  %679 = fmul fast float %465, %665
  %680 = fmul fast float %679, %675
  %681 = fsub fast float -0.000000e+00, %680
  %682 = fmul fast float %671, %665
  %683 = call float @dx.op.dot3.f32(i32 55, float %678, float %681, float %682, float %678, float %681, float %682)  ; Dot3(ax,ay,az,bx,by,bz)
  %684 = call float @dx.op.unary.f32(i32 25, float %683)  ; Rsqrt(value)
  %685 = fmul fast float %684, %681
  %686 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 0
  %687 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 0
  store i32 %543, i32* %686, align 4
  store i32 %424, i32* %687, align 4
  %688 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 1
  %689 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 1
  store i32 %547, i32* %688, align 4
  store i32 %424, i32* %689, align 4
  %690 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 2
  %691 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 2
  store i32 %543, i32* %690, align 4
  store i32 %430, i32* %691, align 4
  %692 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 3
  %693 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 3
  store i32 %547, i32* %692, align 4
  store i32 %430, i32* %693, align 4
  br label %694

; <label>:694                                     ; preds = %717, %641
  %695 = phi i32 [ %424, %641 ], [ %721, %717 ]
  %696 = phi i32 [ %543, %641 ], [ %719, %717 ]
  %697 = phi i32 [ 0, %641 ], [ %715, %717 ]
  %698 = call i32 @dx.op.binary.i32(i32 40, i32 %696, i32 %435)  ; UMin(a,b)
  %699 = call i32 @dx.op.binary.i32(i32 40, i32 %695, i32 %435)  ; UMin(a,b)
  %700 = mul i32 %699, %380
  %701 = add i32 %698, %419
  %702 = add i32 %701, %700
  %703 = lshr i32 %702, 1
  %704 = shl i32 %703, 2
  %705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %704, i32 undef)  ; BufferLoad(srv,index,wot)
  %706 = extractvalue %dx.types.ResRet.i32 %705, 0
  %707 = shl i32 %702, 4
  %708 = and i32 %707, 16
  %709 = lshr i32 %706, %708
  %710 = and i32 %709, 65535
  %711 = uitofp i32 %710 to float
  %712 = fmul fast float %711, 0x3EF0002000000000
  %713 = call float @dx.op.unary.f32(i32 7, float %712)  ; Saturate(value)
  %714 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 %697
  store float %713, float* %714, align 4, !tbaa !52, !noalias !63
  %715 = add nuw nsw i32 %697, 1
  %716 = icmp eq i32 %715, 4
  br i1 %716, label %722, label %717

; <label>:717                                     ; preds = %694
  %718 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %715
  %719 = load i32, i32* %718, align 4
  %720 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %715
  %721 = load i32, i32* %720, align 4
  br label %694

; <label>:722                                     ; preds = %694
  %723 = fmul fast float %684, %678
  %724 = fmul fast float %684, %682
  %725 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 0
  %726 = load float, float* %725, align 4, !tbaa !52, !noalias !63
  %727 = fmul fast float %726, %588
  %728 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 1
  %729 = load float, float* %728, align 4, !tbaa !52, !noalias !63
  %730 = fmul fast float %729, %542
  %731 = fadd fast float %730, %727
  %732 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 2
  %733 = load float, float* %732, align 4, !tbaa !52, !noalias !63
  %734 = fmul fast float %733, %588
  %735 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 3
  %736 = load float, float* %735, align 4, !tbaa !52, !noalias !63
  %737 = fmul fast float %736, %542
  %738 = fadd fast float %737, %734
  %739 = fmul fast float %731, %483
  %740 = fmul fast float %738, %469
  %741 = fadd fast float %740, %739
  %742 = fmul fast float %741, %465
  %743 = fadd fast float %742, %466
  br label %776

; <label>:744                                     ; preds = %353
  %745 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %364, float %365, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %746 = extractvalue %dx.types.ResRet.f32 %745, 0
  %747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %748 = extractvalue %dx.types.CBufRet.f32 %747, 3
  %749 = fsub fast float %365, %748
  %750 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %364, float %749, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %751 = extractvalue %dx.types.ResRet.f32 %750, 0
  %752 = fadd fast float %748, %365
  %753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %364, float %752, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %754 = extractvalue %dx.types.ResRet.f32 %753, 0
  %755 = extractvalue %dx.types.CBufRet.f32 %747, 2
  %756 = fadd fast float %755, %364
  %757 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %756, float %365, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %758 = extractvalue %dx.types.ResRet.f32 %757, 0
  %759 = fsub fast float %364, %755
  %760 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %759, float %365, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %761 = extractvalue %dx.types.ResRet.f32 %760, 0
  %762 = extractvalue %dx.types.CBufRet.f32 %747, 0
  %763 = extractvalue %dx.types.CBufRet.f32 %747, 1
  %764 = fmul fast float %762, 2.000000e+00
  %765 = fmul fast float %763, 2.000000e+00
  %766 = fsub fast float %761, %758
  %767 = extractvalue %dx.types.CBufRet.f32 %359, 1
  %768 = fmul fast float %767, %766
  %769 = fdiv fast float %768, %764
  %770 = fsub fast float %751, %754
  %771 = fmul fast float %767, %770
  %772 = fdiv fast float %771, %765
  %773 = fmul fast float %767, %746
  %774 = extractvalue %dx.types.CBufRet.f32 %359, 0
  %775 = fadd fast float %773, %774
  br label %776

; <label>:776                                     ; preds = %744, %722
  %777 = phi float [ %723, %722 ], [ %769, %744 ]
  %778 = phi float [ %685, %722 ], [ %772, %744 ]
  %779 = phi float [ %724, %722 ], [ 1.000000e+00, %744 ]
  %780 = phi float [ %743, %722 ], [ %775, %744 ]
  %781 = call float @dx.op.dot3.f32(i32 55, float %777, float %778, float %779, float %777, float %778, float %779)  ; Dot3(ax,ay,az,bx,by,bz)
  %782 = call float @dx.op.unary.f32(i32 25, float %781)  ; Rsqrt(value)
  %783 = fmul fast float %782, %777
  %784 = fmul fast float %782, %778
  %785 = fmul fast float %782, %779
  br label %786

; <label>:786                                     ; preds = %776, %264
  %787 = phi float [ %352, %264 ], [ %780, %776 ]
  %788 = phi float [ %336, %264 ], [ %783, %776 ]
  %789 = phi float [ %339, %264 ], [ %784, %776 ]
  %790 = phi float [ %342, %264 ], [ %785, %776 ]
  %791 = xor i32 %102, -2128831035
  %792 = mul i32 %791, 16777619
  %793 = xor i32 %792, %103
  %794 = mul i32 %793, 16777619
  %795 = xor i32 %794, %144
  %796 = mul i32 %795, 16777619
  %797 = bitcast float %74 to i32
  %798 = xor i32 %796, %797
  %799 = shl i32 %798, 13
  %800 = xor i32 %799, %798
  %801 = lshr i32 %800, 17
  %802 = xor i32 %801, %800
  %803 = shl i32 %802, 5
  %804 = xor i32 %803, %802
  %805 = uitofp i32 %804 to float
  %806 = fmul fast float %805, 0x3DF0000000000000
  %807 = shl i32 %804, 13
  %808 = xor i32 %807, %804
  %809 = lshr i32 %808, 17
  %810 = xor i32 %809, %808
  %811 = shl i32 %810, 5
  %812 = xor i32 %811, %810
  %813 = uitofp i32 %812 to float
  %814 = shl i32 %812, 13
  %815 = xor i32 %814, %812
  %816 = lshr i32 %815, 17
  %817 = xor i32 %816, %815
  %818 = shl i32 %817, 5
  %819 = xor i32 %818, %817
  %820 = uitofp i32 %819 to float
  %821 = shl i32 %819, 13
  %822 = xor i32 %821, %819
  %823 = lshr i32 %822, 17
  %824 = xor i32 %823, %822
  %825 = shl i32 %824, 5
  %826 = xor i32 %825, %824
  %827 = uitofp i32 %826 to float
  %828 = shl i32 %826, 13
  %829 = xor i32 %828, %826
  %830 = lshr i32 %829, 17
  %831 = xor i32 %830, %829
  %832 = shl i32 %831, 5
  %833 = xor i32 %832, %831
  %834 = uitofp i32 %833 to float
  %835 = fsub fast float %81, %80
  %836 = fmul fast float %835, 0x3DF0000000000000
  %837 = fmul fast float %836, %834
  %838 = fadd fast float %837, %80
  %839 = fsub fast float %84, %83
  %840 = fmul fast float %806, %839
  %841 = fadd fast float %840, %83
  %842 = fadd fast float %838, %787
  %843 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %844 = extractvalue %dx.types.CBufRet.i32 %843, 0
  %845 = and i32 %844, 2
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %886, label %847, !dx.controlflow.hints !64

; <label>:847                                     ; preds = %786
  %848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %849 = extractvalue %dx.types.CBufRet.f32 %848, 0
  %850 = extractvalue %dx.types.CBufRet.f32 %848, 1
  %851 = fsub fast float %165, %849
  %852 = fmul fast float %74, %851
  %853 = fmul fast float %852, %77
  %854 = fsub fast float %850, %166
  %855 = fmul fast float %75, %854
  %856 = fmul fast float %855, %78
  %857 = fmul fast float %853, %853
  %858 = fmul fast float %856, %856
  %859 = fadd fast float %857, %858
  %860 = call float @dx.op.unary.f32(i32 24, float %859)  ; Sqrt(value)
  %861 = fcmp fast olt float %90, 0.000000e+00
  %862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %863 = extractvalue %dx.types.CBufRet.f32 %862, 3
  %864 = select i1 %861, float %863, float %90
  %865 = fadd fast float %806, -5.000000e-01
  %866 = fmul fast float %864, %865
  %867 = fcmp fast olt float %88, 0.000000e+00
  %868 = extractvalue %dx.types.CBufRet.f32 %862, 2
  %869 = select i1 %867, float %868, float %88
  %870 = fadd fast float %869, %866
  %871 = call float @dx.op.unary.f32(i32 7, float %870)  ; Saturate(value)
  %872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %873 = extractvalue %dx.types.CBufRet.f32 %872, 3
  %874 = fmul fast float %873, %871
  %875 = fsub fast float %873, %874
  %876 = fsub fast float %860, %874
  %877 = fdiv fast float %876, %875
  %878 = call float @dx.op.unary.f32(i32 7, float %877)  ; Saturate(value)
  %879 = fmul fast float %878, 2.000000e+00
  %880 = fsub fast float 3.000000e+00, %879
  %881 = fmul fast float %878, %878
  %882 = fmul fast float %881, %880
  %883 = extractvalue %dx.types.CBufRet.f32 %848, 3
  %884 = fmul fast float %882, %883
  %885 = fsub fast float %842, %884
  br label %886

; <label>:886                                     ; preds = %847, %786
  %887 = phi float [ %885, %847 ], [ %842, %786 ]
  %888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %889 = extractvalue %dx.types.CBufRet.f32 %888, 0
  %890 = extractvalue %dx.types.CBufRet.f32 %888, 1
  %891 = extractvalue %dx.types.CBufRet.f32 %888, 2
  %892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %893 = extractvalue %dx.types.CBufRet.f32 %892, 0
  %894 = extractvalue %dx.types.CBufRet.f32 %892, 1
  %895 = extractvalue %dx.types.CBufRet.f32 %892, 2
  %896 = extractvalue %dx.types.CBufRet.f32 %892, 3
  %897 = fmul fast float %894, %887
  %898 = fmul fast float %895, %261
  %899 = fsub fast float %897, %898
  %900 = fmul fast float %895, %260
  %901 = fmul fast float %893, %887
  %902 = fsub fast float %900, %901
  %903 = fmul fast float %893, %261
  %904 = fmul fast float %894, %260
  %905 = fsub fast float %903, %904
  %906 = fmul fast float %899, 2.000000e+00
  %907 = fmul fast float %902, 2.000000e+00
  %908 = fmul fast float %905, 2.000000e+00
  %909 = fmul fast float %906, %896
  %910 = fmul fast float %907, %896
  %911 = fmul fast float %908, %896
  %912 = fmul fast float %908, %894
  %913 = fmul fast float %907, %895
  %914 = fmul fast float %906, %895
  %915 = fmul fast float %908, %893
  %916 = fmul fast float %907, %893
  %917 = fmul fast float %906, %894
  %918 = fadd fast float %889, %260
  %919 = fadd fast float %918, %909
  %920 = fsub fast float %919, %913
  %921 = fadd fast float %920, %912
  %922 = fadd fast float %890, %261
  %923 = fadd fast float %922, %910
  %924 = fsub fast float %923, %915
  %925 = fadd fast float %924, %914
  %926 = fadd fast float %891, %887
  %927 = fadd fast float %926, %911
  %928 = fsub fast float %927, %917
  %929 = fadd fast float %928, %916
  %930 = and i32 %86, 2
  %931 = icmp ne i32 %930, 0
  %932 = and i32 %86, 4
  %933 = icmp ne i32 %932, 0
  %934 = and i32 %86, 1
  %935 = icmp eq i32 %934, 0
  %936 = select i1 %931, float %788, float 0.000000e+00
  %937 = select i1 %931, float %789, float 0.000000e+00
  %938 = select i1 %931, float %790, float 1.000000e+00
  %939 = and i32 %86, 6
  %940 = icmp eq i32 %939, 0
  br i1 %940, label %1034, label %941, !dx.controlflow.hints !65

; <label>:941                                     ; preds = %886
  br i1 %933, label %942, label %956, !dx.controlflow.hints !66

; <label>:942                                     ; preds = %941
  %943 = fmul fast float %936, %938
  %944 = fmul fast float %938, %937
  %945 = fmul fast float %936, %936
  %946 = fsub fast float -0.000000e+00, %945
  %947 = fmul fast float %937, %937
  %948 = fsub fast float %946, %947
  %949 = call float @dx.op.dot3.f32(i32 55, float %943, float %944, float %948, float %943, float %944, float %948)  ; Dot3(ax,ay,az,bx,by,bz)
  %950 = fcmp fast olt float %949, 0x3F50624DE0000000
  br i1 %950, label %956, label %951, !dx.controlflow.hints !67

; <label>:951                                     ; preds = %942
  %952 = call float @dx.op.unary.f32(i32 25, float %949)  ; Rsqrt(value)
  %953 = fmul fast float %952, %943
  %954 = fmul fast float %952, %944
  %955 = fmul fast float %952, %948
  br label %956

; <label>:956                                     ; preds = %951, %942, %941
  %957 = phi float [ 1.000000e+00, %941 ], [ %953, %951 ], [ 1.000000e+00, %942 ]
  %958 = phi float [ 0.000000e+00, %941 ], [ %954, %951 ], [ 0.000000e+00, %942 ]
  %959 = phi float [ 0.000000e+00, %941 ], [ %955, %951 ], [ 0.000000e+00, %942 ]
  %960 = icmp eq i32 %939, 6
  br i1 %960, label %961, label %1034, !dx.controlflow.hints !68

; <label>:961                                     ; preds = %956
  %962 = fmul fast float %959, %937
  %963 = fmul fast float %958, %938
  %964 = fsub fast float %962, %963
  %965 = fmul fast float %957, %938
  %966 = fmul fast float %959, %936
  %967 = fsub fast float %965, %966
  %968 = fmul fast float %958, %936
  %969 = fmul fast float %957, %937
  %970 = fsub fast float %968, %969
  %971 = call float @dx.op.dot3.f32(i32 55, float %964, float %967, float %970, float %964, float %967, float %970)  ; Dot3(ax,ay,az,bx,by,bz)
  %972 = call float @dx.op.unary.f32(i32 25, float %971)  ; Rsqrt(value)
  %973 = fmul fast float %972, %964
  %974 = fmul fast float %972, %967
  %975 = fmul fast float %972, %970
  %976 = fadd fast float %957, %938
  %977 = fadd fast float %976, %974
  %978 = fcmp fast ogt float %977, 0.000000e+00
  br i1 %978, label %979, label %990, !dx.controlflow.hints !69

; <label>:979                                     ; preds = %961
  %980 = fadd fast float %977, 1.000000e+00
  %981 = fsub fast float %975, %937
  %982 = fsub fast float %936, %959
  %983 = fsub fast float %958, %973
  %984 = call float @dx.op.unary.f32(i32 25, float %980)  ; Rsqrt(value)
  %985 = fmul fast float %984, 5.000000e-01
  %986 = fmul fast float %985, %981
  %987 = fmul fast float %985, %982
  %988 = fmul fast float %985, %983
  %989 = fmul fast float %985, %980
  br label %1034

; <label>:990                                     ; preds = %961
  %991 = fcmp fast ogt float %957, %974
  %992 = fcmp fast ogt float %957, %938
  %993 = and i1 %992, %991
  br i1 %993, label %994, label %1007, !dx.controlflow.hints !70

; <label>:994                                     ; preds = %990
  %995 = fsub fast float 1.000000e+00, %938
  %996 = fadd fast float %995, %957
  %997 = fsub fast float %996, %974
  %998 = fsub fast float %975, %937
  %999 = fadd fast float %973, %958
  %1000 = fadd fast float %959, %936
  %1001 = call float @dx.op.unary.f32(i32 25, float %997)  ; Rsqrt(value)
  %1002 = fmul fast float %1001, 5.000000e-01
  %1003 = fmul fast float %1002, %997
  %1004 = fmul fast float %1002, %999
  %1005 = fmul fast float %1002, %1000
  %1006 = fmul fast float %1002, %998
  br label %1034

; <label>:1007                                    ; preds = %990
  %1008 = fcmp fast ogt float %974, %938
  %1009 = fadd fast float %975, %937
  br i1 %1008, label %1010, label %1022, !dx.controlflow.hints !71

; <label>:1010                                    ; preds = %1007
  %1011 = fsub fast float 1.000000e+00, %938
  %1012 = fsub fast float %1011, %957
  %1013 = fadd fast float %1012, %974
  %1014 = fsub fast float %936, %959
  %1015 = fadd fast float %973, %958
  %1016 = call float @dx.op.unary.f32(i32 25, float %1013)  ; Rsqrt(value)
  %1017 = fmul fast float %1016, 5.000000e-01
  %1018 = fmul fast float %1017, %1015
  %1019 = fmul fast float %1017, %1013
  %1020 = fmul fast float %1017, %1009
  %1021 = fmul fast float %1017, %1014
  br label %1034

; <label>:1022                                    ; preds = %1007
  %1023 = fadd fast float %938, 1.000000e+00
  %1024 = fsub fast float %1023, %957
  %1025 = fsub fast float %1024, %974
  %1026 = fsub fast float %958, %973
  %1027 = fadd fast float %959, %936
  %1028 = call float @dx.op.unary.f32(i32 25, float %1025)  ; Rsqrt(value)
  %1029 = fmul fast float %1028, 5.000000e-01
  %1030 = fmul fast float %1029, %1027
  %1031 = fmul fast float %1029, %1009
  %1032 = fmul fast float %1029, %1025
  %1033 = fmul fast float %1029, %1026
  br label %1034

; <label>:1034                                    ; preds = %1022, %1010, %994, %979, %956, %886
  %1035 = phi float [ %957, %956 ], [ 1.000000e+00, %886 ], [ %957, %1022 ], [ %957, %1010 ], [ %957, %994 ], [ %957, %979 ]
  %1036 = phi float [ %958, %956 ], [ 0.000000e+00, %886 ], [ %958, %1022 ], [ %958, %1010 ], [ %958, %994 ], [ %958, %979 ]
  %1037 = phi float [ %959, %956 ], [ 0.000000e+00, %886 ], [ %959, %1022 ], [ %959, %1010 ], [ %959, %994 ], [ %959, %979 ]
  %1038 = phi float [ 0.000000e+00, %956 ], [ 0.000000e+00, %886 ], [ %1030, %1022 ], [ %1018, %1010 ], [ %1003, %994 ], [ %986, %979 ]
  %1039 = phi float [ 0.000000e+00, %956 ], [ 0.000000e+00, %886 ], [ %1031, %1022 ], [ %1019, %1010 ], [ %1004, %994 ], [ %987, %979 ]
  %1040 = phi float [ 0.000000e+00, %956 ], [ 0.000000e+00, %886 ], [ %1032, %1022 ], [ %1020, %1010 ], [ %1005, %994 ], [ %988, %979 ]
  %1041 = phi float [ 1.000000e+00, %956 ], [ 1.000000e+00, %886 ], [ %1033, %1022 ], [ %1021, %1010 ], [ %1006, %994 ], [ %989, %979 ]
  br i1 %935, label %1143, label %1042, !dx.controlflow.hints !72

; <label>:1042                                    ; preds = %1034
  %1043 = fsub fast float %60, %56
  %1044 = fsub fast float %61, %57
  %1045 = fsub fast float %62, %58
  %1046 = fmul fast float %1043, 0x3DF0000000000000
  %1047 = fmul fast float %1046, %813
  %1048 = fmul fast float %1044, 0x3DF0000000000000
  %1049 = fmul fast float %1048, %820
  %1050 = fmul fast float %1045, 0x3DF0000000000000
  %1051 = fmul fast float %1050, %827
  %1052 = fadd fast float %1047, %56
  %1053 = fadd fast float %1049, %57
  %1054 = fadd fast float %1051, %58
  %1055 = fcmp fast une float %66, 0.000000e+00
  br i1 %1055, label %1056, label %1072, !dx.controlflow.hints !73

; <label>:1056                                    ; preds = %1042
  %1057 = fdiv fast float %1052, %66
  %1058 = fsub fast float -0.000000e+00, %1057
  %1059 = fcmp fast oge float %1057, %1058
  %1060 = call float @dx.op.unary.f32(i32 6, float %1057)  ; FAbs(value)
  %1061 = call float @dx.op.unary.f32(i32 22, float %1060)  ; Frc(value)
  %1062 = fsub fast float -0.000000e+00, %1061
  %1063 = select i1 %1059, float %1061, float %1062
  %1064 = fmul fast float %1063, %66
  %1065 = fmul fast float %66, 5.000000e-01
  %1066 = fcmp fast ogt float %1064, %1065
  br i1 %1066, label %1067, label %1070, !dx.controlflow.hints !74

; <label>:1067                                    ; preds = %1056
  %1068 = fadd fast float %1052, %66
  %1069 = fsub fast float %1068, %1064
  br label %1072

; <label>:1070                                    ; preds = %1056
  %1071 = fsub fast float %1052, %1064
  br label %1072

; <label>:1072                                    ; preds = %1070, %1067, %1042
  %1073 = phi float [ %1069, %1067 ], [ %1071, %1070 ], [ %1052, %1042 ]
  %1074 = fcmp fast une float %67, 0.000000e+00
  br i1 %1074, label %1075, label %1091, !dx.controlflow.hints !73

; <label>:1075                                    ; preds = %1072
  %1076 = fdiv fast float %1053, %67
  %1077 = fsub fast float -0.000000e+00, %1076
  %1078 = fcmp fast oge float %1076, %1077
  %1079 = call float @dx.op.unary.f32(i32 6, float %1076)  ; FAbs(value)
  %1080 = call float @dx.op.unary.f32(i32 22, float %1079)  ; Frc(value)
  %1081 = fsub fast float -0.000000e+00, %1080
  %1082 = select i1 %1078, float %1080, float %1081
  %1083 = fmul fast float %1082, %67
  %1084 = fmul fast float %67, 5.000000e-01
  %1085 = fcmp fast ogt float %1083, %1084
  br i1 %1085, label %1086, label %1089, !dx.controlflow.hints !74

; <label>:1086                                    ; preds = %1075
  %1087 = fadd fast float %1053, %67
  %1088 = fsub fast float %1087, %1083
  br label %1091

; <label>:1089                                    ; preds = %1075
  %1090 = fsub fast float %1053, %1083
  br label %1091

; <label>:1091                                    ; preds = %1089, %1086, %1072
  %1092 = phi float [ %1088, %1086 ], [ %1090, %1089 ], [ %1053, %1072 ]
  %1093 = fcmp fast une float %68, 0.000000e+00
  br i1 %1093, label %1094, label %1110, !dx.controlflow.hints !73

; <label>:1094                                    ; preds = %1091
  %1095 = fdiv fast float %1054, %68
  %1096 = fsub fast float -0.000000e+00, %1095
  %1097 = fcmp fast oge float %1095, %1096
  %1098 = call float @dx.op.unary.f32(i32 6, float %1095)  ; FAbs(value)
  %1099 = call float @dx.op.unary.f32(i32 22, float %1098)  ; Frc(value)
  %1100 = fsub fast float -0.000000e+00, %1099
  %1101 = select i1 %1097, float %1099, float %1100
  %1102 = fmul fast float %1101, %68
  %1103 = fmul fast float %68, 5.000000e-01
  %1104 = fcmp fast ogt float %1102, %1103
  br i1 %1104, label %1105, label %1108, !dx.controlflow.hints !74

; <label>:1105                                    ; preds = %1094
  %1106 = fadd fast float %1054, %68
  %1107 = fsub fast float %1106, %1102
  br label %1110

; <label>:1108                                    ; preds = %1094
  %1109 = fsub fast float %1054, %1102
  br label %1110

; <label>:1110                                    ; preds = %1108, %1105, %1091
  %1111 = phi float [ %1107, %1105 ], [ %1109, %1108 ], [ %1054, %1091 ]
  %1112 = fmul fast float %1073, 5.000000e-01
  %1113 = fmul fast float %1092, 5.000000e-01
  %1114 = fmul fast float %1111, 5.000000e-01
  %1115 = call float @dx.op.unary.f32(i32 13, float %1112)  ; Sin(value)
  %1116 = call float @dx.op.unary.f32(i32 12, float %1112)  ; Cos(value)
  %1117 = call float @dx.op.unary.f32(i32 13, float %1113)  ; Sin(value)
  %1118 = call float @dx.op.unary.f32(i32 12, float %1113)  ; Cos(value)
  %1119 = call float @dx.op.unary.f32(i32 13, float %1114)  ; Sin(value)
  %1120 = call float @dx.op.unary.f32(i32 12, float %1114)  ; Cos(value)
  %1121 = fmul fast float %1118, %1116
  %1122 = fmul fast float %1121, %1119
  %1123 = fmul fast float %1117, %1115
  %1124 = fmul fast float %1123, %1120
  %1125 = fsub fast float %1122, %1124
  %1126 = fmul fast float %1118, %1115
  %1127 = fmul fast float %1126, %1120
  %1128 = fmul fast float %1117, %1116
  %1129 = fmul fast float %1128, %1119
  %1130 = fadd fast float %1127, %1129
  %1131 = fmul fast float %1128, %1120
  %1132 = fmul fast float %1126, %1119
  %1133 = fsub fast float %1131, %1132
  %1134 = fmul fast float %1121, %1120
  %1135 = fmul fast float %1123, %1119
  %1136 = fadd fast float %1134, %1135
  %1137 = call float @dx.op.dot4.f32(i32 56, float %1125, float %1130, float %1133, float %1136, float %1125, float %1130, float %1133, float %1136)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1138 = call float @dx.op.unary.f32(i32 25, float %1137)  ; Rsqrt(value)
  %1139 = fmul fast float %1125, %1138
  %1140 = fmul fast float %1130, %1138
  %1141 = fmul fast float %1133, %1138
  %1142 = fmul fast float %1136, %1138
  br label %1143

; <label>:1143                                    ; preds = %1110, %1034
  %1144 = phi float [ %1139, %1110 ], [ 0.000000e+00, %1034 ]
  %1145 = phi float [ %1140, %1110 ], [ 0.000000e+00, %1034 ]
  %1146 = phi float [ %1141, %1110 ], [ 0.000000e+00, %1034 ]
  %1147 = phi float [ %1142, %1110 ], [ 1.000000e+00, %1034 ]
  %1148 = icmp eq i32 %939, 6
  br i1 %1148, label %1177, label %1149, !dx.controlflow.hints !75

; <label>:1149                                    ; preds = %1143
  br i1 %931, label %1150, label %1163, !dx.controlflow.hints !76

; <label>:1150                                    ; preds = %1149
  %1151 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %936, float %937, float %938)  ; Dot3(ax,ay,az,bx,by,bz)
  %1152 = fcmp fast ogt float %1151, 0x3FEFF7CEE0000000
  br i1 %1152, label %1177, label %1153, !dx.controlflow.hints !77

; <label>:1153                                    ; preds = %1150
  %1154 = fcmp fast olt float %1151, 0xBFEFF7CEE0000000
  br i1 %1154, label %1177, label %1155, !dx.controlflow.hints !78

; <label>:1155                                    ; preds = %1153
  %1156 = fsub fast float -0.000000e+00, %937
  %1157 = fadd fast float %1151, 1.000000e+00
  %1158 = call float @dx.op.dot4.f32(i32 56, float %1156, float %936, float 0.000000e+00, float %1157, float %1156, float %936, float 0.000000e+00, float %1157)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1159 = call float @dx.op.unary.f32(i32 25, float %1158)  ; Rsqrt(value)
  %1160 = fmul fast float %1159, %1156
  %1161 = fmul fast float %1159, %936
  %1162 = fmul fast float %1159, %1157
  br label %1177

; <label>:1163                                    ; preds = %1149
  br i1 %933, label %1164, label %1177, !dx.controlflow.hints !79

; <label>:1164                                    ; preds = %1163
  %1165 = call float @dx.op.dot3.f32(i32 55, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1035, float %1036, float %1037)  ; Dot3(ax,ay,az,bx,by,bz)
  %1166 = fcmp fast ogt float %1165, 0x3FEFF7CEE0000000
  br i1 %1166, label %1177, label %1167, !dx.controlflow.hints !77

; <label>:1167                                    ; preds = %1164
  %1168 = fcmp fast olt float %1165, 0xBFEFF7CEE0000000
  br i1 %1168, label %1177, label %1169, !dx.controlflow.hints !78

; <label>:1169                                    ; preds = %1167
  %1170 = fsub fast float -0.000000e+00, %1037
  %1171 = fadd fast float %1165, 1.000000e+00
  %1172 = call float @dx.op.dot4.f32(i32 56, float 0.000000e+00, float %1170, float %1036, float %1171, float 0.000000e+00, float %1170, float %1036, float %1171)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1173 = call float @dx.op.unary.f32(i32 25, float %1172)  ; Rsqrt(value)
  %1174 = fmul fast float %1173, %1170
  %1175 = fmul fast float %1173, %1036
  %1176 = fmul fast float %1173, %1171
  br label %1177

; <label>:1177                                    ; preds = %1169, %1167, %1164, %1163, %1155, %1153, %1150, %1143
  %1178 = phi float [ 0.000000e+00, %1163 ], [ %1038, %1143 ], [ %1160, %1155 ], [ 0.000000e+00, %1150 ], [ 0.000000e+00, %1169 ], [ 0.000000e+00, %1164 ], [ 0.000000e+00, %1153 ], [ 0.000000e+00, %1167 ]
  %1179 = phi float [ 0.000000e+00, %1163 ], [ %1039, %1143 ], [ %1161, %1155 ], [ 0.000000e+00, %1150 ], [ %1174, %1169 ], [ 0.000000e+00, %1164 ], [ -1.000000e+00, %1153 ], [ 0.000000e+00, %1167 ]
  %1180 = phi float [ 0.000000e+00, %1163 ], [ %1040, %1143 ], [ 0.000000e+00, %1155 ], [ 0.000000e+00, %1150 ], [ %1175, %1169 ], [ 0.000000e+00, %1164 ], [ 0.000000e+00, %1153 ], [ -1.000000e+00, %1167 ]
  %1181 = phi float [ 1.000000e+00, %1163 ], [ %1041, %1143 ], [ %1162, %1155 ], [ 1.000000e+00, %1150 ], [ %1176, %1169 ], [ 1.000000e+00, %1164 ], [ 0.000000e+00, %1153 ], [ 0.000000e+00, %1167 ]
  %1182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 333)  ; CBufferLoadLegacy(handle,regIndex)
  %1183 = extractvalue %dx.types.CBufRet.f32 %1182, 0
  %1184 = icmp ne i32 %255, 0
  %1185 = icmp ne i32 %262, 0
  %1186 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1187 = extractvalue %dx.types.CBufRet.i32 %1186, 0
  %1188 = and i32 %1187, 1
  %1189 = icmp eq i32 %1188, 0
  %1190 = fcmp ule float %1183, 0.000000e+00
  %1191 = or i1 %1190, %1189
  %1192 = and i1 %1185, %1191
  %1193 = xor i1 %1192, true
  %1194 = and i1 %1184, %1193
  br i1 %1194, label %1195, label %1268, !dx.controlflow.hints !80

; <label>:1195                                    ; preds = %1177
  %1196 = fmul fast float %1181, %1147
  %1197 = call float @dx.op.dot3.f32(i32 55, float %1178, float %1179, float %1180, float %1144, float %1145, float %1146)  ; Dot3(ax,ay,az,bx,by,bz)
  %1198 = fsub fast float %1196, %1197
  %1199 = fmul fast float %1181, %1146
  %1200 = fmul fast float %1180, %1147
  %1201 = fmul fast float %1178, %1145
  %1202 = fmul fast float %1179, %1144
  %1203 = fsub fast float %1201, %1202
  %1204 = fadd fast float %1203, %1200
  %1205 = fadd fast float %1204, %1199
  %1206 = fmul fast float %1181, %1145
  %1207 = fmul fast float %1179, %1147
  %1208 = fmul fast float %1180, %1144
  %1209 = fmul fast float %1178, %1146
  %1210 = fsub fast float %1207, %1209
  %1211 = fadd fast float %1210, %1208
  %1212 = fadd fast float %1211, %1206
  %1213 = fmul fast float %1181, %1144
  %1214 = fmul fast float %1178, %1147
  %1215 = fmul fast float %1179, %1146
  %1216 = fmul fast float %1180, %1145
  %1217 = fadd fast float %1215, %1214
  %1218 = fsub fast float %1217, %1216
  %1219 = fadd fast float %1218, %1213
  %1220 = fmul fast float %921, 4.096000e+03
  %1221 = fmul fast float %925, 4.096000e+03
  %1222 = fmul fast float %929, 4.096000e+03
  %1223 = fptosi float %1220 to i32
  %1224 = fptosi float %1221 to i32
  %1225 = fptosi float %1222 to i32
  %1226 = bitcast i32 %1223 to float
  %1227 = bitcast i32 %1224 to float
  %1228 = bitcast i32 %1225 to float
  %1229 = call float @dx.op.binary.f32(i32 35, float %1219, float -1.000000e+00)  ; FMax(a,b)
  %1230 = call float @dx.op.binary.f32(i32 36, float %1229, float 1.000000e+00)  ; FMin(a,b)
  %1231 = fadd fast float %1230, 1.000000e+00
  %1232 = fmul fast float %1231, 3.276750e+04
  %1233 = fadd fast float %1232, 5.000000e-01
  %1234 = call float @dx.op.unary.f32(i32 27, float %1233)  ; Round_ni(value)
  %1235 = fptoui float %1234 to i32
  %1236 = call float @dx.op.binary.f32(i32 35, float %1212, float -1.000000e+00)  ; FMax(a,b)
  %1237 = call float @dx.op.binary.f32(i32 36, float %1236, float 1.000000e+00)  ; FMin(a,b)
  %1238 = fadd fast float %1237, 1.000000e+00
  %1239 = fmul fast float %1238, 3.276750e+04
  %1240 = fadd fast float %1239, 5.000000e-01
  %1241 = call float @dx.op.unary.f32(i32 27, float %1240)  ; Round_ni(value)
  %1242 = fptoui float %1241 to i32
  %1243 = call float @dx.op.binary.f32(i32 35, float %1205, float -1.000000e+00)  ; FMax(a,b)
  %1244 = call float @dx.op.binary.f32(i32 36, float %1243, float 1.000000e+00)  ; FMin(a,b)
  %1245 = fadd fast float %1244, 1.000000e+00
  %1246 = fmul fast float %1245, 3.276750e+04
  %1247 = fadd fast float %1246, 5.000000e-01
  %1248 = call float @dx.op.unary.f32(i32 27, float %1247)  ; Round_ni(value)
  %1249 = fptoui float %1248 to i32
  %1250 = call float @dx.op.binary.f32(i32 35, float %1198, float -1.000000e+00)  ; FMax(a,b)
  %1251 = call float @dx.op.binary.f32(i32 36, float %1250, float 1.000000e+00)  ; FMin(a,b)
  %1252 = fadd fast float %1251, 1.000000e+00
  %1253 = fmul fast float %1252, 3.276750e+04
  %1254 = fadd fast float %1253, 5.000000e-01
  %1255 = call float @dx.op.unary.f32(i32 27, float %1254)  ; Round_ni(value)
  %1256 = fptoui float %1255 to i32
  %1257 = and i32 %1235, 65535
  %1258 = shl i32 %1242, 16
  %1259 = or i32 %1258, %1257
  %1260 = and i32 %1249, 65535
  %1261 = shl i32 %1256, 16
  %1262 = or i32 %1261, %1260
  %1263 = call i32 @dx.op.legacyF32ToF16(i32 130, float %841)  ; LegacyF32ToF16(value)
  %1264 = and i32 %1263, 65535
  %1265 = mul i32 %254, 24
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %1265, i32 undef, float %1226, float %1227, float %1228, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1266 = add i32 %1265, 12
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1266, i32 undef, i32 %1259, i32 %1262, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1267 = add i32 %1265, 20
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1267, i32 undef, i32 %1264, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1268

; <label>:1268                                    ; preds = %1195, %1177, %142, %110, %98
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
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

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
!dx.entryPoints = !{!34}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !18, !26, !32}
!5 = !{!6, !7, !8, !10, !11, !13, !14, !15, !17}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 14, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !9}
!9 = !{i32 0, i32 9}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !9}
!11 = !{i32 4, %"class.StructuredBuffer<StTerrainClutterLayer>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !12}
!12 = !{i32 1, i32 120}
!13 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!14 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!15 = !{i32 7, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 9, i32 1, i32 12, i32 0, !16}
!16 = !{i32 1, i32 4}
!17 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!18 = !{!19, !20, !21, !23, !24}
!19 = !{i32 0, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 12, i1 false, i1 false, i1 false, !16}
!20 = !{i32 1, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i1 false, i1 false, i1 false, !16}
!21 = !{i32 2, %"class.RWStructuredBuffer<ReactiveMotionModelInfoGpu>"* undef, !"", i32 0, i32 5, i32 1, i32 12, i1 false, i1 false, i1 false, !22}
!22 = !{i32 1, i32 64}
!23 = !{i32 3, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!24 = !{i32 4, %"class.RWStructuredBuffer<GfxClutterCollectionGPUData>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i1 false, i1 false, i1 false, !25}
!25 = !{i32 1, i32 8}
!26 = !{!27, !28, !29, !30, !31}
!27 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!28 = !{i32 1, %GPClutterCollectionGenSurfaceConsts* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!29 = !{i32 2, %GPClutterCollectionGenClutterConsts* undef, !"", i32 0, i32 1, i32 1, i32 64, null}
!30 = !{i32 3, %GPClutterReactiveMotionModelInfoGpu* undef, !"", i32 0, i32 5, i32 1, i32 80, null}
!31 = !{i32 4, %GPReactiveMotionConsts* undef, !"", i32 0, i32 6, i32 1, i32 16, null}
!32 = !{!33}
!33 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!34 = !{void ()* @reactivemotion_clutter_gen_pass, !"reactivemotion_clutter_gen_pass", null, !4, !35}
!35 = !{i32 0, i64 272, i32 4, !36}
!36 = !{i32 64, i32 1, i32 1}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = !{!53, !53, i64 0}
!53 = !{!"float", !43, i64 0}
!54 = !{!55, !57, !58, !60, !62}
!55 = distinct !{!55, !56, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z: %tangentX"}
!56 = distinct !{!56, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z"}
!57 = distinct !{!57, !56, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z: %tangentY"}
!58 = distinct !{!58, !59, !"\01?VHM_SampleNormalAndHeightAtWorldPos@@YA?AV?$vector@M$02@@V?$vector@M$01@@MMAIAM@Z: %height"}
!59 = distinct !{!59, !"\01?VHM_SampleNormalAndHeightAtWorldPos@@YA?AV?$vector@M$02@@V?$vector@M$01@@MMAIAM@Z"}
!60 = distinct !{!60, !61, !"\01?SampleTerrainNormalHeight@@YAXIV?$vector@M$01@@AIAMAIAV?$vector@M$02@@@Z: %terrainHeight"}
!61 = distinct !{!61, !"\01?SampleTerrainNormalHeight@@YAXIV?$vector@M$01@@AIAMAIAV?$vector@M$02@@@Z"}
!62 = distinct !{!62, !61, !"\01?SampleTerrainNormalHeight@@YAXIV?$vector@M$01@@AIAMAIAV?$vector@M$02@@@Z: %terrainNormal"}
!63 = !{!58, !60, !62}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}

