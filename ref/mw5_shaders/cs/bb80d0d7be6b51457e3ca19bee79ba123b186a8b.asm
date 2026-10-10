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
; shader hash: eb4f777e527318c9743d715f328ff296
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
;   [16 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [272 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [3376 x i8] (type annotation not present)
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb1     1
;                                   cbuffer      NA          NA     CB2            cb2     1
;                                   cbuffer      NA          NA     CB3            cb5     1
;                                   cbuffer      NA          NA     CB4            cb4     1
;                                   sampler      NA          NA      S0             s3     1
;                                   sampler      NA          NA      S1             s4     1
;                                   sampler      NA          NA      S2             s5     1
;                                   texture     f32     2darray      T0      t0,space6unbounded
;                                   textureunorm_f32          2d      T1             t8     1
;                                   texture    byte         r/o      T2             t0     1
;                                   texture    byte         r/o      T3             t3     1
;                                   texture    byte         r/o      T4             t4     1
;                                   texture    byte         r/o      T5             t5     1
;                                   texture     f32          2d      T6             t7     1
;                                   texture     f32     2darray      T7             t6     1
;                                       UAV    byte         r/w      U0             u0     1
;                                       UAV    byte         r/w      U1             u1     1
;                                       UAV    byte         r/w      U2             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 3> >" = type { <3 x float>, %"class.Texture2DArray<vector<float, 3> >::mips_type" }
%"class.Texture2DArray<vector<float, 3> >::mips_type" = type { i32 }
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
%waterTile = type { %struct.WaterTileCsConstants }
%struct.WaterTileCsConstants = type { i32, i32, i32, float }
%waterTileLod = type { %struct.WaterTileLodCsConstants }
%struct.WaterTileLodCsConstants = type { [16 x <4 x float>], float, i32, i32, i32 }
%hostlayout.waterConstants = type { %hostlayout.struct.GfxWaterConstants }
%hostlayout.struct.GfxWaterConstants = type { i32, float, float, float, float, float, float, i32, <3 x float>, float, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, float, float, float, float, i32, float, float, float, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, float, float, float, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [16 x <4 x float>], [16 x <4 x float>], <4 x float>, <4 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, [2 x <4 x i32>], [2 x <4 x i32>], [2 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], <4 x i32>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, float, float, float, float, <3 x float>, i32, <3 x float>, i32, float, i32, i32, i32, float, float, float, float, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, i32, i32, i32, float, i32, i32, float, i32, i32, float, float, i32, float, i32, i32, i32 }
%ConstantBufferShallowWater = type { %struct.ShallowWaterConstants }
%struct.ShallowWaterConstants = type { i32, float, float, float, <2 x float>, float, float, i32, i32, i32, i32, float, i32, i32, i32 }
%struct.SamplerState = type { i32 }

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4

define void @cs_water_tile_process_verts_topdown() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = alloca [4 x float], align 4
  %20 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %21 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %22 = udiv i32 %20, 5
  %23 = urem i32 %20, 5
  %24 = shl nuw nsw i32 %23, 6
  %25 = add i32 %24, %21
  %26 = icmp ult i32 %25, 289
  %27 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.i32 %27, 0
  %29 = mul i32 %22, 289
  %30 = add i32 %28, %29
  %31 = add i32 %30, %25
  br i1 %26, label %32, label %1738, !dx.controlflow.hints !33

; <label>:32                                      ; preds = %0
  %33 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.i32 %33, 2
  %35 = add i32 %34, %22
  %36 = shl i32 %35, 3
  %37 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %36, i32 undef)  ; BufferLoad(srv,index,wot)
  %38 = extractvalue %dx.types.ResRet.i32 %37, 0
  %39 = or i32 %36, 4
  %40 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %39, i32 undef)  ; BufferLoad(srv,index,wot)
  %41 = extractvalue %dx.types.ResRet.i32 %40, 0
  %42 = and i32 %38, 16383
  %43 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.f32 %43, 0
  %45 = and i32 %41, 65535
  %46 = uitofp i32 %45 to float
  %47 = fmul fast float %46, 0x3EF0000000000000
  %48 = lshr i32 %41, 16
  %49 = uitofp i32 %48 to float
  %50 = fmul fast float %49, 0x3EF0000000000000
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 2
  %53 = fmul fast float %47, %52
  %54 = fmul fast float %50, %52
  %55 = mul nuw nsw i32 %42, 148
  %56 = add nuw nsw i32 %55, 4
  %57 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %56, i32 undef)  ; BufferLoad(srv,index,wot)
  %58 = extractvalue %dx.types.ResRet.f32 %57, 0
  %59 = add nuw nsw i32 %55, 8
  %60 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %59, i32 undef)  ; BufferLoad(srv,index,wot)
  %61 = extractvalue %dx.types.ResRet.f32 %60, 0
  %62 = add nuw nsw i32 %55, 36
  %63 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %62, i32 undef)  ; BufferLoad(srv,index,wot)
  %64 = extractvalue %dx.types.ResRet.f32 %63, 0
  %65 = add nuw nsw i32 %55, 60
  %66 = add nuw nsw i32 %55, 92
  %67 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %66, i32 undef)  ; BufferLoad(srv,index,wot)
  %68 = extractvalue %dx.types.ResRet.i32 %67, 0
  %69 = add nuw nsw i32 %55, 116
  %70 = urem i32 %25, 17
  %71 = udiv i32 %25, 17
  %72 = fmul fast float %44, 6.250000e-02
  %73 = fadd fast float %58, %53
  %74 = uitofp i32 %70 to float
  %75 = fmul fast float %74, %72
  %76 = fadd fast float %73, %75
  %77 = fadd fast float %61, %54
  %78 = uitofp i32 %71 to float
  %79 = fmul fast float %78, %72
  %80 = fadd fast float %77, %79
  %81 = fsub fast float %76, %58
  %82 = extractvalue %dx.types.CBufRet.f32 %51, 3
  %83 = fmul fast float %81, %82
  %84 = fsub fast float %80, %61
  %85 = fmul fast float %84, %82
  %86 = fsub fast float 1.000000e+00, %85
  %87 = fmul fast float %72, %82
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 2
  %90 = fmul fast float %87, %89
  %91 = call float @dx.op.unary.f32(i32 23, float %90)  ; Log(value)
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 3
  %94 = fadd fast float %93, %91
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.f32 %95, 3
  %97 = extractvalue %dx.types.CBufRet.f32 %95, 2
  %98 = call float @dx.op.binary.f32(i32 35, float %94, float %97)  ; FMax(a,b)
  %99 = call float @dx.op.binary.f32(i32 36, float %98, float %96)  ; FMin(a,b)
  %100 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %101 = fadd fast float %100, %99
  %102 = add i32 %68, 0
  %103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %102, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %104 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %103, i32 0)  ; GetDimensions(handle,mipLevel)
  %105 = extractvalue %dx.types.Dimensions %104, 0
  %106 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %105)  ; FirstbitLo(value)
  %107 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.i32 %107, 1
  %109 = sub nsw i32 %108, %106
  %110 = sitofp i32 %109 to float
  %111 = fsub fast float %101, %110
  %112 = call float @dx.op.binary.f32(i32 35, float %111, float 0.000000e+00)  ; FMax(a,b)
  %113 = extractvalue %dx.types.CBufRet.i32 %107, 0
  %114 = and i32 %113, 128
  %115 = icmp ne i32 %114, 0
  %116 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 201)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.i32 %116, 2
  %118 = icmp ne i32 %117, %68
  %119 = and i1 %118, %115
  br i1 %119, label %120, label %215, !dx.controlflow.hints !34

; <label>:120                                     ; preds = %32
  %121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %103, %dx.types.Handle %12, float %83, float %86, float %64, float undef, i32 0, i32 0, i32 undef, float %112)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %122 = extractvalue %dx.types.ResRet.f32 %121, 0
  %123 = fcmp fast ogt float %122, 0x3FE0101020000000
  %124 = zext i1 %123 to i32
  br label %125

; <label>:125                                     ; preds = %125, %120
  %126 = phi i32 [ %124, %120 ], [ %150, %125 ]
  %127 = phi i32 [ -1, %120 ], [ %151, %125 ]
  %128 = add nsw i32 %127, %70
  %129 = call i32 @dx.op.binary.i32(i32 37, i32 %128, i32 0)  ; IMax(a,b)
  %130 = call i32 @dx.op.binary.i32(i32 38, i32 %129, i32 16)  ; IMin(a,b)
  %131 = sitofp i32 %130 to float
  %132 = add nsw i32 %71, -1
  %133 = call i32 @dx.op.binary.i32(i32 37, i32 %132, i32 0)  ; IMax(a,b)
  %134 = call i32 @dx.op.binary.i32(i32 38, i32 %133, i32 16)  ; IMin(a,b)
  %135 = sitofp i32 %134 to float
  %136 = fmul fast float %131, %72
  %137 = fmul fast float %135, %72
  %138 = fadd fast float %136, %53
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 3
  %141 = fmul fast float %140, %138
  %142 = fadd fast float %137, %54
  %143 = fmul fast float %142, %140
  %144 = fsub fast float 1.000000e+00, %143
  %145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %103, %dx.types.Handle %12, float %141, float %144, float %64, float undef, i32 0, i32 0, i32 undef, float %112)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %146 = extractvalue %dx.types.ResRet.f32 %145, 0
  %147 = fcmp fast ogt float %146, 0x3FE0101020000000
  %148 = icmp ne i32 %126, 0
  %149 = or i1 %148, %147
  %150 = zext i1 %149 to i32
  %151 = add nsw i32 %127, 1
  %152 = icmp eq i32 %151, 2
  br i1 %152, label %153, label %125

; <label>:153                                     ; preds = %125
  br label %154

; <label>:154                                     ; preds = %181, %153
  %155 = phi i32 [ %182, %181 ], [ %150, %153 ]
  %156 = phi i32 [ %183, %181 ], [ -1, %153 ]
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %181, label %158, !dx.controlflow.hints !35

; <label>:158                                     ; preds = %154
  %159 = add nsw i32 %156, %70
  %160 = call i32 @dx.op.binary.i32(i32 37, i32 %159, i32 0)  ; IMax(a,b)
  %161 = call i32 @dx.op.binary.i32(i32 38, i32 %160, i32 16)  ; IMin(a,b)
  %162 = sitofp i32 %161 to float
  %163 = call i32 @dx.op.binary.i32(i32 37, i32 %71, i32 0)  ; IMax(a,b)
  %164 = call i32 @dx.op.binary.i32(i32 38, i32 %163, i32 16)  ; IMin(a,b)
  %165 = sitofp i32 %164 to float
  %166 = fmul fast float %162, %72
  %167 = fmul fast float %165, %72
  %168 = fadd fast float %166, %53
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 3
  %171 = fmul fast float %170, %168
  %172 = fadd fast float %167, %54
  %173 = fmul fast float %172, %170
  %174 = fsub fast float 1.000000e+00, %173
  %175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %103, %dx.types.Handle %12, float %171, float %174, float %64, float undef, i32 0, i32 0, i32 undef, float %112)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %176 = extractvalue %dx.types.ResRet.f32 %175, 0
  %177 = fcmp fast ogt float %176, 0x3FE0101020000000
  %178 = icmp ne i32 %155, 0
  %179 = or i1 %178, %177
  %180 = zext i1 %179 to i32
  br label %181

; <label>:181                                     ; preds = %158, %154
  %182 = phi i32 [ %155, %154 ], [ %180, %158 ]
  %183 = add nsw i32 %156, 1
  %184 = icmp eq i32 %183, 2
  br i1 %184, label %185, label %154

; <label>:185                                     ; preds = %181
  br label %186

; <label>:186                                     ; preds = %186, %185
  %187 = phi i32 [ %211, %186 ], [ %182, %185 ]
  %188 = phi i32 [ %212, %186 ], [ -1, %185 ]
  %189 = add nsw i32 %188, %70
  %190 = call i32 @dx.op.binary.i32(i32 37, i32 %189, i32 0)  ; IMax(a,b)
  %191 = call i32 @dx.op.binary.i32(i32 38, i32 %190, i32 16)  ; IMin(a,b)
  %192 = sitofp i32 %191 to float
  %193 = add nuw nsw i32 %71, 1
  %194 = call i32 @dx.op.binary.i32(i32 37, i32 %193, i32 0)  ; IMax(a,b)
  %195 = call i32 @dx.op.binary.i32(i32 38, i32 %194, i32 16)  ; IMin(a,b)
  %196 = sitofp i32 %195 to float
  %197 = fmul fast float %192, %72
  %198 = fmul fast float %196, %72
  %199 = fadd fast float %197, %53
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.f32 %200, 3
  %202 = fmul fast float %201, %199
  %203 = fadd fast float %198, %54
  %204 = fmul fast float %203, %201
  %205 = fsub fast float 1.000000e+00, %204
  %206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %103, %dx.types.Handle %12, float %202, float %205, float %64, float undef, i32 0, i32 0, i32 undef, float %112)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %207 = extractvalue %dx.types.ResRet.f32 %206, 0
  %208 = fcmp fast ogt float %207, 0x3FE0101020000000
  %209 = icmp ne i32 %187, 0
  %210 = or i1 %209, %208
  %211 = zext i1 %210 to i32
  %212 = add nsw i32 %188, 1
  %213 = icmp eq i32 %212, 2
  br i1 %213, label %214, label %186

; <label>:214                                     ; preds = %186
  br label %215

; <label>:215                                     ; preds = %214, %32
  %216 = phi i32 [ 1, %32 ], [ %124, %214 ]
  %217 = phi i32 [ 1, %32 ], [ %211, %214 ]
  %218 = icmp ne i32 %216, 0
  %219 = select i1 %218, i32 0, i32 512
  %220 = icmp ne i32 %217, 0
  %221 = xor i1 %115, true
  %222 = or i1 %220, %221
  br i1 %222, label %223, label %1734, !dx.controlflow.hints !36

; <label>:223                                     ; preds = %215
  %224 = add nuw nsw i32 %55, 20
  %225 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %224, i32 undef)  ; BufferLoad(srv,index,wot)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = add nuw nsw i32 %55, 24
  %228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.f32 %228, 0
  %230 = add nuw nsw i32 %55, 28
  %231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.f32 %231, 0
  %233 = add nuw nsw i32 %55, 32
  %234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.f32 %234, 0
  %236 = add nuw nsw i32 %55, 40
  %237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %236, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 0
  %239 = add nuw nsw i32 %55, 44
  %240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.f32 %240, 0
  %242 = add nuw nsw i32 %55, 48
  %243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.f32 %243, 0
  %245 = add nuw nsw i32 %55, 52
  %246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %245, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = add nuw nsw i32 %55, 96
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = add nuw nsw i32 %55, 100
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = add nuw nsw i32 %55, 104
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = add nuw nsw i32 %55, 108
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %261 = extractvalue %dx.types.CBufRet.f32 %260, 2
  %262 = fmul fast float %261, %83
  %263 = fmul fast float %261, %86
  %264 = extractvalue %dx.types.CBufRet.f32 %260, 3
  %265 = fadd fast float %262, %264
  %266 = fadd fast float %263, %264
  %267 = extractvalue %dx.types.CBufRet.f32 %260, 0
  %268 = fmul fast float %267, %83
  %269 = fmul fast float %267, %86
  %270 = extractvalue %dx.types.CBufRet.f32 %260, 1
  %271 = fadd fast float %268, %270
  %272 = fadd fast float %269, %270
  %273 = add i32 %250, 0
  %274 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %273, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %275 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %274, i32 0)  ; GetDimensions(handle,mipLevel)
  %276 = extractvalue %dx.types.Dimensions %275, 0
  %277 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %276)  ; FirstbitLo(value)
  %278 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %279 = extractvalue %dx.types.CBufRet.i32 %278, 1
  %280 = sub nsw i32 %279, %277
  %281 = sitofp i32 %280 to float
  %282 = fsub fast float %99, %281
  %283 = call float @dx.op.binary.f32(i32 35, float %282, float 0.000000e+00)  ; FMax(a,b)
  %284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %274, %dx.types.Handle %12, float %265, float %266, float %238, float undef, i32 0, i32 0, i32 undef, float %283)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %285 = extractvalue %dx.types.ResRet.f32 %284, 0
  %286 = fmul fast float %285, %226
  %287 = fadd fast float %286, %229
  %288 = add i32 %253, 0
  %289 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %288, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %290 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %289, i32 0)  ; GetDimensions(handle,mipLevel)
  %291 = extractvalue %dx.types.Dimensions %290, 0
  %292 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %291)  ; FirstbitLo(value)
  %293 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.i32 %293, 1
  %295 = sub nsw i32 %294, %292
  %296 = sitofp i32 %295 to float
  %297 = fsub fast float %99, %296
  %298 = call float @dx.op.binary.f32(i32 35, float %297, float 0.000000e+00)  ; FMax(a,b)
  %299 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %289, %dx.types.Handle %12, float %271, float %272, float %241, float undef, i32 0, i32 0, i32 undef, float %298)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %300 = extractvalue %dx.types.ResRet.f32 %299, 0
  %301 = fmul fast float %300, %232
  %302 = fadd fast float %301, %235
  %303 = add i32 %256, 0
  %304 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %303, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %305 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %304, i32 0)  ; GetDimensions(handle,mipLevel)
  %306 = extractvalue %dx.types.Dimensions %305, 0
  %307 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %306)  ; FirstbitLo(value)
  %308 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.i32 %308, 1
  %310 = sub nsw i32 %309, %307
  %311 = sitofp i32 %310 to float
  %312 = fsub fast float %99, %311
  %313 = call float @dx.op.binary.f32(i32 35, float %312, float 0.000000e+00)  ; FMax(a,b)
  %314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %304, %dx.types.Handle %12, float %271, float %272, float %244, float undef, i32 0, i32 0, i32 undef, float %313)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %315 = extractvalue %dx.types.ResRet.f32 %314, 0
  %316 = extractvalue %dx.types.ResRet.f32 %314, 1
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 3
  %319 = fmul fast float %318, 2.000000e+00
  %320 = fmul fast float %319, %315
  %321 = fmul fast float %319, %316
  %322 = fsub fast float %320, %318
  %323 = fsub fast float %321, %318
  %324 = fmul fast float %322, %322
  %325 = fmul fast float %323, %323
  %326 = fadd fast float %324, %325
  %327 = call float @dx.op.unary.f32(i32 24, float %326)  ; Sqrt(value)
  %328 = add i32 %259, 0
  %329 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %328, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %330 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %329, i32 0)  ; GetDimensions(handle,mipLevel)
  %331 = extractvalue %dx.types.Dimensions %330, 0
  %332 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %331)  ; FirstbitLo(value)
  %333 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %334 = extractvalue %dx.types.CBufRet.i32 %333, 1
  %335 = sub nsw i32 %334, %332
  %336 = sitofp i32 %335 to float
  %337 = fsub fast float %99, %336
  %338 = call float @dx.op.binary.f32(i32 35, float %337, float 0.000000e+00)  ; FMax(a,b)
  %339 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %329, %dx.types.Handle %12, float %271, float %272, float %247, float undef, i32 0, i32 0, i32 undef, float %338)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %340 = extractvalue %dx.types.ResRet.f32 %339, 0
  %341 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %342 = extractvalue %dx.types.CBufRet.i32 %341, 0
  %343 = call i32 @dx.op.binary.i32(i32 40, i32 %42, i32 %342)  ; UMin(a,b)
  %344 = mul i32 %343, 36
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = add i32 %344, 4
  %348 = fmul fast float %76, 0x3F53C37960000000
  %349 = fmul fast float %80, 0x3F53C37960000000
  %350 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %11, float %348, float %349, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %351 = extractvalue %dx.types.ResRet.f32 %350, 0
  %352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %353 = extractvalue %dx.types.CBufRet.f32 %352, 2
  %354 = fmul fast float %353, %351
  %355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %356 = extractvalue %dx.types.CBufRet.f32 %355, 0
  %357 = fmul fast float %356, %83
  %358 = fmul fast float %356, %86
  %359 = extractvalue %dx.types.CBufRet.f32 %355, 1
  %360 = fadd fast float %357, %359
  %361 = fadd fast float %358, %359
  %362 = icmp eq i32 %346, 0
  br i1 %362, label %983, label %363

; <label>:363                                     ; preds = %223
  br label %364

; <label>:364                                     ; preds = %960, %363
  %365 = phi i32 [ %961, %960 ], [ %219, %363 ]
  %366 = phi float [ %962, %960 ], [ 0.000000e+00, %363 ]
  %367 = phi float [ %963, %960 ], [ 0.000000e+00, %363 ]
  %368 = phi float [ %964, %960 ], [ 0.000000e+00, %363 ]
  %369 = phi float [ %965, %960 ], [ 0.000000e+00, %363 ]
  %370 = phi float [ %966, %960 ], [ 0.000000e+00, %363 ]
  %371 = phi float [ %967, %960 ], [ 0.000000e+00, %363 ]
  %372 = phi float [ %968, %960 ], [ 0.000000e+00, %363 ]
  %373 = phi float [ %969, %960 ], [ 0.000000e+00, %363 ]
  %374 = phi float [ %970, %960 ], [ 0.000000e+00, %363 ]
  %375 = phi float [ %971, %960 ], [ 0.000000e+00, %363 ]
  %376 = phi float [ %972, %960 ], [ 0.000000e+00, %363 ]
  %377 = phi float [ %973, %960 ], [ 0.000000e+00, %363 ]
  %378 = phi float [ %974, %960 ], [ 0.000000e+00, %363 ]
  %379 = phi float [ %975, %960 ], [ 0.000000e+00, %363 ]
  %380 = phi float [ %976, %960 ], [ 0.000000e+00, %363 ]
  %381 = phi float [ %977, %960 ], [ 0.000000e+00, %363 ]
  %382 = phi float [ %978, %960 ], [ 0.000000e+00, %363 ]
  %383 = phi float [ %979, %960 ], [ 0.000000e+00, %363 ]
  %384 = phi i32 [ %980, %960 ], [ 0, %363 ]
  %385 = shl i32 %384, 2
  %386 = add i32 %65, %385
  %387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.f32 %387, 0
  %389 = add i32 %69, %385
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  %392 = add i32 %391, 0
  %393 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %392, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %394 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %393, i32 0)  ; GetDimensions(handle,mipLevel)
  %395 = extractvalue %dx.types.Dimensions %394, 0
  %396 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %395)  ; FirstbitLo(value)
  %397 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %398 = extractvalue %dx.types.CBufRet.i32 %397, 1
  %399 = sub nsw i32 %398, %396
  %400 = sitofp i32 %399 to float
  %401 = fsub fast float %99, %400
  %402 = call float @dx.op.binary.f32(i32 35, float %401, float 0.000000e+00)  ; FMax(a,b)
  %403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %393, %dx.types.Handle %12, float %360, float %361, float %388, float undef, i32 0, i32 0, i32 undef, float %402)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %404 = extractvalue %dx.types.ResRet.f32 %403, 0
  %405 = fcmp fast ogt float %404, 0.000000e+00
  br i1 %405, label %406, label %960, !dx.controlflow.hints !37

; <label>:406                                     ; preds = %364
  %407 = add i32 %347, %385
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = and i32 %409, 32767
  %411 = mul nuw nsw i32 %410, 928
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = or i32 %411, 4
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = or i32 %411, 8
  %418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.f32 %418, 0
  %420 = or i32 %411, 12
  %421 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.f32 %421, 1
  %423 = or i32 %411, 20
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = add nuw nsw i32 %411, 72
  %427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.f32 %427, 0
  %429 = extractvalue %dx.types.ResRet.f32 %427, 1
  %430 = add nuw nsw i32 %411, 80
  %431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.f32 %431, 0
  %433 = add nuw nsw i32 %411, 84
  %434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.f32 %434, 0
  %436 = add nuw nsw i32 %411, 88
  %437 = add nuw nsw i32 %411, 228
  %438 = add nuw nsw i32 %411, 596
  %439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.f32 %439, 0
  %441 = extractvalue %dx.types.ResRet.f32 %439, 1
  %442 = add nuw nsw i32 %411, 604
  %443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.f32 %443, 0
  %445 = extractvalue %dx.types.ResRet.f32 %443, 1
  %446 = add nuw nsw i32 %411, 612
  %447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.f32 %447, 0
  %449 = add nuw nsw i32 %411, 616
  %450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.f32 %450, 0
  %452 = add nuw nsw i32 %411, 696
  %453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.f32 %453, 0
  %455 = extractvalue %dx.types.ResRet.f32 %453, 1
  %456 = add nuw nsw i32 %411, 708
  %457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.f32 %457, 0
  %459 = extractvalue %dx.types.ResRet.f32 %457, 1
  %460 = add nuw nsw i32 %411, 780
  %461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.f32 %461, 0
  %463 = extractvalue %dx.types.ResRet.f32 %461, 1
  %464 = add nuw nsw i32 %411, 792
  %465 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.f32 %465, 0
  %467 = extractvalue %dx.types.ResRet.f32 %465, 1
  %468 = add nuw nsw i32 %411, 828
  %469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.f32 %469, 0
  %471 = add nuw nsw i32 %411, 840
  %472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.f32 %472, 0
  %474 = extractvalue %dx.types.ResRet.f32 %472, 1
  %475 = and i32 %384, 31
  %476 = shl i32 1, %475
  %477 = or i32 %476, %365
  %478 = shl i32 %413, 1
  %479 = and i32 %478, 256
  %480 = xor i32 %479, 256
  %481 = or i32 %477, %480
  %482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 201)  ; CBufferLoadLegacy(handle,regIndex)
  %483 = extractvalue %dx.types.CBufRet.f32 %482, 0
  %484 = call float @dx.op.binary.f32(i32 35, float %483, float %473)  ; FMax(a,b)
  %485 = call float @dx.op.binary.f32(i32 36, float %484, float %474)  ; FMin(a,b)
  %486 = fmul fast float %485, %404
  %487 = fadd fast float %486, %382
  %488 = and i32 %413, 256
  %489 = icmp ne i32 %488, 0
  %490 = fcmp fast ogt float %435, 0.000000e+00
  %491 = fmul fast float %435, %302
  %492 = call float @dx.op.unary.f32(i32 7, float %491)  ; Saturate(value)
  %493 = select i1 %490, float %492, float 1.000000e+00
  %494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %495 = extractvalue %dx.types.CBufRet.f32 %494, 3
  %496 = fadd fast float %495, %493
  %497 = call float @dx.op.unary.f32(i32 7, float %496)  ; Saturate(value)
  %498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %499 = extractvalue %dx.types.CBufRet.f32 %498, 0
  %500 = fsub fast float 1.000000e+00, %404
  %501 = select i1 %489, float %500, float 1.000000e+00
  %502 = call float @dx.op.unary.f32(i32 7, float %501)  ; Saturate(value)
  %503 = fmul fast float %499, %502
  %504 = icmp eq i32 %416, 0
  %505 = fcmp fast ogt float %448, 0.000000e+00
  %506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %507 = extractvalue %dx.types.CBufRet.f32 %506, 2
  %508 = fadd fast float %507, 1.000000e+00
  %509 = call float @dx.op.unary.f32(i32 7, float %508)  ; Saturate(value)
  %510 = fmul fast float %509, %448
  %511 = call float @dx.op.binary.f32(i32 35, float %510, float 0x3F50624DE0000000)  ; FMax(a,b)
  %512 = fdiv fast float 1.000000e+00, %511
  %513 = select i1 %505, float %512, float 0.000000e+00
  %514 = fcmp fast ogt float %451, 0.000000e+00
  %515 = extractvalue %dx.types.CBufRet.f32 %506, 3
  %516 = fadd fast float %515, 1.000000e+00
  %517 = call float @dx.op.unary.f32(i32 7, float %516)  ; Saturate(value)
  %518 = fmul fast float %517, %451
  %519 = call float @dx.op.binary.f32(i32 35, float %518, float 0x3F50624DE0000000)  ; FMax(a,b)
  %520 = fdiv fast float 1.000000e+00, %519
  %521 = select i1 %514, float %520, float 0.000000e+00
  %522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %523 = extractvalue %dx.types.CBufRet.f32 %522, 3
  %524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %525 = extractvalue %dx.types.CBufRet.f32 %524, 1
  br i1 %504, label %648, label %526, !dx.controlflow.hints !38

; <label>:526                                     ; preds = %406
  br label %527

; <label>:527                                     ; preds = %527, %526
  %528 = phi float [ %594, %527 ], [ 0.000000e+00, %526 ]
  %529 = phi float [ %595, %527 ], [ 0.000000e+00, %526 ]
  %530 = phi float [ %596, %527 ], [ 0.000000e+00, %526 ]
  %531 = phi float [ %597, %527 ], [ 0.000000e+00, %526 ]
  %532 = phi float [ %598, %527 ], [ 0.000000e+00, %526 ]
  %533 = phi float [ %599, %527 ], [ 0.000000e+00, %526 ]
  %534 = phi float [ %600, %527 ], [ 0.000000e+00, %526 ]
  %535 = phi float [ %602, %527 ], [ 0.000000e+00, %526 ]
  %536 = phi float [ %603, %527 ], [ 0.000000e+00, %526 ]
  %537 = phi float [ %608, %527 ], [ 0.000000e+00, %526 ]
  %538 = phi float [ %630, %527 ], [ 0.000000e+00, %526 ]
  %539 = phi i32 [ %631, %527 ], [ 0, %526 ]
  %540 = mul i32 %539, 28
  %541 = add i32 %540, %436
  %542 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.f32 %542, 0
  %544 = add i32 %541, 4
  %545 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.f32 %545, 0
  %547 = fmul fast float %546, %503
  %548 = add i32 %541, 8
  %549 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.f32 %549, 0
  %551 = add i32 %541, 12
  %552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.f32 %552, 0
  %554 = fmul fast float %553, %523
  %555 = add i32 %541, 16
  %556 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %555, i32 undef)  ; BufferLoad(srv,index,wot)
  %557 = extractvalue %dx.types.ResRet.f32 %556, 0
  %558 = extractvalue %dx.types.ResRet.f32 %556, 1
  %559 = add i32 %541, 24
  %560 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %559, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.f32 %560, 0
  %562 = call float @dx.op.dot2.f32(i32 54, float %557, float %558, float %76, float %80)  ; Dot2(ax,ay,bx,by)
  %563 = fmul fast float %562, %543
  %564 = fmul fast float %550, %525
  %565 = fsub fast float %563, %564
  %566 = fsub fast float %565, %561
  %567 = call float @dx.op.unary.f32(i32 13, float %566)  ; Sin(value)
  %568 = call float @dx.op.unary.f32(i32 12, float %566)  ; Cos(value)
  %569 = fmul fast float %554, %547
  %570 = fmul fast float %569, %557
  %571 = fmul fast float %570, %568
  %572 = fmul fast float %569, %558
  %573 = fmul fast float %572, %568
  %574 = fmul fast float %547, %497
  %575 = fmul fast float %574, %567
  %576 = fmul fast float %547, %543
  %577 = fmul fast float %576, %554
  %578 = fmul fast float %557, %557
  %579 = fmul fast float %578, %577
  %580 = fmul fast float %579, %567
  %581 = fmul fast float %557, %558
  %582 = fmul fast float %581, %577
  %583 = fmul fast float %582, %567
  %584 = fsub fast float 1.000000e+00, %580
  %585 = fmul fast float %543, %497
  %586 = fmul fast float %585, %547
  %587 = fmul fast float %586, %557
  %588 = fmul fast float %587, %568
  %589 = fmul fast float %558, %558
  %590 = fmul fast float %589, %577
  %591 = fmul fast float %590, %567
  %592 = fmul fast float %586, %558
  %593 = fmul fast float %592, %568
  %594 = fadd fast float %571, %528
  %595 = fadd fast float %573, %529
  %596 = fadd fast float %575, %530
  %597 = fadd fast float %584, %531
  %598 = fsub fast float %532, %583
  %599 = fadd fast float %588, %533
  %600 = fadd fast float %591, %534
  %601 = fadd fast float %535, 1.000000e+00
  %602 = fadd fast float %601, %583
  %603 = fadd fast float %593, %536
  %604 = fsub fast float 1.000000e+00, %591
  %605 = fmul fast float %584, %604
  %606 = fmul fast float %583, %583
  %607 = fsub fast float %605, %606
  %608 = fadd fast float %607, %537
  %609 = fadd fast float %566, 0xBFF921FB60000000
  %610 = fmul fast float %609, 0x3FC45F3060000000
  %611 = call float @dx.op.unary.f32(i32 27, float %610)  ; Round_ni(value)
  %612 = fsub fast float %610, %611
  %613 = call float @dx.op.unary.f32(i32 7, float %612)  ; Saturate(value)
  %614 = fmul fast float %613, %513
  %615 = call float @dx.op.unary.f32(i32 7, float %614)  ; Saturate(value)
  %616 = fmul fast float %615, %615
  %617 = fmul fast float %615, 2.000000e+00
  %618 = fsub fast float 3.000000e+00, %617
  %619 = fmul fast float %616, %618
  %620 = fsub fast float 1.000000e+00, %613
  %621 = fmul fast float %620, %521
  %622 = call float @dx.op.unary.f32(i32 7, float %621)  ; Saturate(value)
  %623 = fmul fast float %622, %622
  %624 = fmul fast float %622, 2.000000e+00
  %625 = fsub fast float 3.000000e+00, %624
  %626 = fmul fast float %623, %625
  %627 = fsub fast float 2.000000e+00, %619
  %628 = fsub fast float %627, %626
  %629 = call float @dx.op.unary.f32(i32 7, float %628)  ; Saturate(value)
  %630 = fadd fast float %629, %538
  %631 = add nuw i32 %539, 1
  %632 = icmp eq i32 %631, %416
  br i1 %632, label %633, label %527

; <label>:633                                     ; preds = %527
  %634 = call float @dx.op.dot3.f32(i32 55, float %597, float %598, float %599, float %597, float %598, float %599)  ; Dot3(ax,ay,az,bx,by,bz)
  %635 = call float @dx.op.unary.f32(i32 25, float %634)  ; Rsqrt(value)
  %636 = fmul fast float %635, %597
  %637 = fmul fast float %635, %598
  %638 = fmul fast float %635, %599
  %639 = call float @dx.op.dot3.f32(i32 55, float %600, float %602, float %603, float %600, float %602, float %603)  ; Dot3(ax,ay,az,bx,by,bz)
  %640 = call float @dx.op.unary.f32(i32 25, float %639)  ; Rsqrt(value)
  %641 = fmul fast float %640, %600
  %642 = fmul fast float %640, %602
  %643 = fmul fast float %640, %603
  %644 = uitofp i32 %416 to float
  %645 = fdiv fast float 1.000000e+00, %644
  %646 = fmul fast float %645, %608
  %647 = fmul fast float %645, %630
  br label %648

; <label>:648                                     ; preds = %633, %406
  %649 = phi float [ %594, %633 ], [ 0.000000e+00, %406 ]
  %650 = phi float [ %595, %633 ], [ 0.000000e+00, %406 ]
  %651 = phi float [ %596, %633 ], [ 0.000000e+00, %406 ]
  %652 = phi float [ %636, %633 ], [ 0.000000e+00, %406 ]
  %653 = phi float [ %637, %633 ], [ 0.000000e+00, %406 ]
  %654 = phi float [ %638, %633 ], [ 0.000000e+00, %406 ]
  %655 = phi float [ %641, %633 ], [ 0.000000e+00, %406 ]
  %656 = phi float [ %642, %633 ], [ 0.000000e+00, %406 ]
  %657 = phi float [ %643, %633 ], [ 0.000000e+00, %406 ]
  %658 = phi float [ %646, %633 ], [ 1.000000e+00, %406 ]
  %659 = phi float [ %647, %633 ], [ 1.000000e+00, %406 ]
  %660 = fmul fast float %649, %404
  %661 = fmul fast float %650, %404
  %662 = fmul fast float %651, %404
  %663 = fadd fast float %660, %366
  %664 = fadd fast float %661, %367
  %665 = fadd fast float %662, %368
  %666 = fmul fast float %652, %404
  %667 = fmul fast float %653, %404
  %668 = fmul fast float %654, %404
  %669 = fadd fast float %666, %369
  %670 = fadd fast float %667, %370
  %671 = fadd fast float %668, %371
  %672 = fmul fast float %655, %404
  %673 = fmul fast float %656, %404
  %674 = fmul fast float %657, %404
  %675 = fadd fast float %672, %372
  %676 = fadd fast float %673, %373
  %677 = fadd fast float %674, %374
  %678 = fsub fast float 1.000000e+00, %658
  %679 = fmul fast float %678, %444
  %680 = fadd fast float %679, %445
  %681 = fmul fast float %503, %404
  %682 = fmul fast float %681, %659
  %683 = fmul fast float %682, %680
  %684 = fadd fast float %683, %375
  %685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %686 = extractvalue %dx.types.CBufRet.f32 %685, 0
  %687 = extractvalue %dx.types.CBufRet.f32 %685, 1
  %688 = extractvalue %dx.types.CBufRet.f32 %685, 2
  %689 = fsub fast float %76, %686
  %690 = fsub fast float %80, %687
  %691 = fsub fast float %287, %688
  %692 = fmul fast float %689, %689
  %693 = fmul fast float %690, %690
  %694 = fadd fast float %692, %693
  %695 = fmul fast float %691, %691
  %696 = fadd fast float %694, %695
  %697 = call float @dx.op.unary.f32(i32 24, float %696)  ; Sqrt(value)
  %698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %699 = extractvalue %dx.types.CBufRet.f32 %698, 0
  %700 = fcmp fast ogt float %697, %699
  %701 = zext i1 %700 to i32
  %702 = extractvalue %dx.types.CBufRet.f32 %698, 1
  %703 = fcmp fast ogt float %697, %702
  %704 = zext i1 %703 to i32
  %705 = add nuw nsw i32 %704, %701
  %706 = extractvalue %dx.types.CBufRet.f32 %698, 2
  %707 = fcmp fast ogt float %697, %706
  %708 = zext i1 %707 to i32
  %709 = add nuw nsw i32 %705, %708
  %710 = icmp ult i32 %709, 3
  %711 = zext i1 %710 to i32
  %712 = shl nuw nsw i32 %709, 2
  %713 = add nuw nsw i32 %712, 48
  %714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %713)  ; CBufferLoadLegacy(handle,regIndex)
  %715 = extractvalue %dx.types.CBufRet.f32 %714, 1
  %716 = fcmp fast ogt float %697, %715
  %717 = zext i1 %716 to i32
  %718 = or i32 %712, 1
  %719 = add nuw nsw i32 %718, 48
  %720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %719)  ; CBufferLoadLegacy(handle,regIndex)
  %721 = extractvalue %dx.types.CBufRet.f32 %720, 1
  %722 = fcmp fast ogt float %697, %721
  %723 = zext i1 %722 to i32
  %724 = add nuw nsw i32 %723, %717
  %725 = or i32 %712, 2
  %726 = add nuw nsw i32 %725, 48
  %727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %726)  ; CBufferLoadLegacy(handle,regIndex)
  %728 = extractvalue %dx.types.CBufRet.f32 %727, 1
  %729 = fcmp fast ogt float %697, %728
  %730 = zext i1 %729 to i32
  %731 = add nuw nsw i32 %724, %730
  %732 = add i32 %425, -1
  %733 = call i32 @dx.op.binary.i32(i32 40, i32 %731, i32 %732)  ; UMin(a,b)
  %734 = add i32 %712, %733
  %735 = call i32 @dx.op.binary.i32(i32 40, i32 %734, i32 12)  ; UMin(a,b)
  %736 = add i32 %735, 48
  %737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %736)  ; CBufferLoadLegacy(handle,regIndex)
  %738 = extractvalue %dx.types.CBufRet.f32 %737, 0
  %739 = fcmp fast oge float %697, %738
  %740 = zext i1 %739 to i32
  %741 = call i32 @dx.op.binary.i32(i32 40, i32 %425, i32 %711)  ; UMin(a,b)
  %742 = call i32 @dx.op.binary.i32(i32 40, i32 %740, i32 %741)  ; UMin(a,b)
  %743 = add i32 %742, %425
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %916, label %745

; <label>:745                                     ; preds = %648
  br label %746

; <label>:746                                     ; preds = %746, %745
  %747 = phi float [ %910, %746 ], [ 0.000000e+00, %745 ]
  %748 = phi float [ %911, %746 ], [ 0.000000e+00, %745 ]
  %749 = phi float [ %912, %746 ], [ 0.000000e+00, %745 ]
  %750 = phi i32 [ %758, %746 ], [ %735, %745 ]
  %751 = phi i32 [ %913, %746 ], [ 0, %745 ]
  %752 = add i32 %751, %750
  %753 = and i32 %752, -4
  %754 = add i32 %753, %425
  %755 = icmp uge i32 %752, %754
  %756 = sub i32 4, %425
  %757 = select i1 %755, i32 %756, i32 0
  %758 = add i32 %757, %750
  %759 = add i32 %757, %752
  %760 = and i32 %759, 3
  %761 = lshr i32 %759, 2
  %762 = add i32 %759, 32
  %763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %762)  ; CBufferLoadLegacy(handle,regIndex)
  %764 = extractvalue %dx.types.CBufRet.f32 %763, 0
  %765 = extractvalue %dx.types.CBufRet.f32 %763, 1
  %766 = extractvalue %dx.types.CBufRet.f32 %763, 2
  %767 = extractvalue %dx.types.CBufRet.f32 %763, 3
  %768 = fmul fast float %764, %697
  %769 = fadd fast float %768, %765
  %770 = call float @dx.op.unary.f32(i32 7, float %769)  ; Saturate(value)
  %771 = fmul fast float %766, %697
  %772 = fadd fast float %771, %767
  %773 = call float @dx.op.unary.f32(i32 7, float %772)  ; Saturate(value)
  %774 = call float @dx.op.binary.f32(i32 36, float %770, float %773)  ; FMin(a,b)
  %775 = mul nuw nsw i32 %760, 72
  %776 = add nuw nsw i32 %437, %775
  %777 = add nuw nsw i32 %776, 16
  %778 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %777, i32 undef)  ; BufferLoad(srv,index,wot)
  %779 = extractvalue %dx.types.ResRet.f32 %778, 0
  %780 = extractvalue %dx.types.ResRet.f32 %778, 1
  %781 = extractvalue %dx.types.ResRet.f32 %778, 2
  %782 = extractvalue %dx.types.ResRet.f32 %778, 3
  %783 = add nuw nsw i32 %776, 36
  %784 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %783, i32 undef)  ; BufferLoad(srv,index,wot)
  %785 = extractvalue %dx.types.ResRet.f32 %784, 0
  %786 = add nuw nsw i32 %776, 56
  %787 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %786, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.f32 %787, 0
  %789 = fmul fast float %327, 3.906250e-03
  %790 = fmul fast float %789, %432
  %791 = fmul fast float %790, %785
  %792 = fmul fast float %791, %788
  %793 = extractvalue %dx.types.ResRet.f32 %787, 1
  %794 = fadd fast float %792, %793
  %795 = call float @dx.op.binary.f32(i32 35, float %794, float 0.000000e+00)  ; FMax(a,b)
  %796 = add nuw nsw i32 %776, 32
  %797 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %796, i32 undef)  ; BufferLoad(srv,index,wot)
  %798 = extractvalue %dx.types.ResRet.f32 %797, 0
  %799 = fmul fast float %795, %774
  %800 = fmul fast float %799, %798
  %801 = fmul fast float %785, %322
  %802 = fmul fast float %785, %323
  %803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %804 = extractvalue %dx.types.CBufRet.f32 %803, 1
  %805 = add nuw nsw i32 %776, 40
  %806 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %805, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.f32 %806, 0
  %808 = extractvalue %dx.types.ResRet.f32 %806, 1
  %809 = extractvalue %dx.types.ResRet.f32 %806, 2
  %810 = extractvalue %dx.types.ResRet.f32 %806, 3
  %811 = fadd fast float %804, %354
  %812 = fadd fast float %811, %809
  %813 = fmul fast float %811, %808
  %814 = call float @dx.op.unary.f32(i32 29, float %813)  ; Round_z(value)
  %815 = fmul fast float %807, %814
  %816 = fsub fast float %811, %815
  %817 = fmul fast float %812, %808
  %818 = call float @dx.op.unary.f32(i32 29, float %817)  ; Round_z(value)
  %819 = fmul fast float %818, %807
  %820 = fsub fast float %812, %819
  %821 = fmul fast float %816, %801
  %822 = fmul fast float %816, %802
  %823 = fmul fast float %820, %801
  %824 = fmul fast float %820, %802
  %825 = fsub fast float %76, %821
  %826 = fsub fast float %80, %822
  %827 = fsub fast float %76, %823
  %828 = fsub fast float %80, %824
  %829 = fsub fast float %809, %816
  %830 = call float @dx.op.unary.f32(i32 6, float %829)  ; FAbs(value)
  %831 = fmul fast float %830, %810
  %832 = call float @dx.op.unary.f32(i32 7, float %831)  ; Saturate(value)
  %833 = fmul fast float %419, 4.000000e+00
  %834 = uitofp i32 %761 to float
  %835 = fadd fast float %834, %833
  %836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %837 = extractvalue %dx.types.CBufRet.f32 %836, 0
  %838 = extractvalue %dx.types.CBufRet.f32 %836, 1
  %839 = extractvalue %dx.types.CBufRet.f32 %836, 2
  %840 = extractvalue %dx.types.CBufRet.f32 %836, 3
  %841 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 0
  store float %837, float* %841, align 4
  %842 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 1
  store float %838, float* %842, align 4
  %843 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 2
  store float %839, float* %843, align 4
  %844 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 3
  store float %840, float* %844, align 4
  %845 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 %761
  %846 = load float, float* %845, align 4, !tbaa !39, !noalias !43
  %847 = fmul fast float %846, %422
  %848 = fmul fast float %825, %779
  %849 = call float @dx.op.tertiary.f32(i32 46, float %780, float %826, float %848)  ; FMad(a,b,c)
  %850 = fmul fast float %825, %781
  %851 = call float @dx.op.tertiary.f32(i32 46, float %782, float %826, float %850)  ; FMad(a,b,c)
  %852 = add nuw nsw i32 %776, 8
  %853 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %852, i32 undef)  ; BufferLoad(srv,index,wot)
  %854 = extractvalue %dx.types.ResRet.f32 %853, 0
  %855 = extractvalue %dx.types.ResRet.f32 %853, 1
  %856 = fadd fast float %854, %849
  %857 = fadd fast float %855, %851
  %858 = fmul fast float %856, %847
  %859 = fmul fast float %857, %847
  %860 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %776, i32 undef)  ; BufferLoad(srv,index,wot)
  %861 = extractvalue %dx.types.ResRet.f32 %860, 0
  %862 = extractvalue %dx.types.ResRet.f32 %860, 1
  %863 = fmul fast float %858, %861
  %864 = fmul fast float %859, %862
  %865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %866 = extractvalue %dx.types.CBufRet.f32 %865, 2
  %867 = fadd fast float %863, %866
  %868 = fadd fast float %864, %866
  %869 = fmul fast float %827, %779
  %870 = call float @dx.op.tertiary.f32(i32 46, float %780, float %828, float %869)  ; FMad(a,b,c)
  %871 = fmul fast float %827, %781
  %872 = call float @dx.op.tertiary.f32(i32 46, float %782, float %828, float %871)  ; FMad(a,b,c)
  %873 = fadd fast float %854, %870
  %874 = fadd fast float %855, %872
  %875 = fmul fast float %873, %847
  %876 = fmul fast float %874, %847
  %877 = fmul fast float %875, %861
  %878 = fmul fast float %876, %862
  %879 = fadd fast float %877, %866
  %880 = fadd fast float %878, %866
  %881 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %13, float %867, float %868, float %835, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %882 = extractvalue %dx.types.ResRet.f32 %881, 0
  %883 = extractvalue %dx.types.ResRet.f32 %881, 1
  %884 = extractvalue %dx.types.ResRet.f32 %881, 2
  %885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %13, float %879, float %880, float %835, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %886 = extractvalue %dx.types.ResRet.f32 %885, 0
  %887 = extractvalue %dx.types.ResRet.f32 %885, 1
  %888 = extractvalue %dx.types.ResRet.f32 %885, 2
  %889 = fsub fast float %886, %882
  %890 = fsub fast float %887, %883
  %891 = fsub fast float %888, %884
  %892 = fmul fast float %889, %832
  %893 = fmul fast float %890, %832
  %894 = fmul fast float %891, %832
  %895 = fadd fast float %892, %882
  %896 = fadd fast float %893, %883
  %897 = fadd fast float %894, %884
  %898 = fmul fast float %895, %779
  %899 = call float @dx.op.tertiary.f32(i32 46, float %896, float %781, float %898)  ; FMad(a,b,c)
  %900 = fmul fast float %895, %780
  %901 = call float @dx.op.tertiary.f32(i32 46, float %896, float %782, float %900)  ; FMad(a,b,c)
  %902 = fdiv fast float 1.000000e+00, %861
  %903 = fdiv fast float 1.000000e+00, %862
  %904 = call float @dx.op.unary.f32(i32 7, float %800)  ; Saturate(value)
  %905 = fmul fast float %902, %899
  %906 = fmul fast float %905, %904
  %907 = fmul fast float %903, %901
  %908 = fmul fast float %907, %904
  %909 = fmul fast float %897, %800
  %910 = fadd fast float %906, %747
  %911 = fadd fast float %908, %748
  %912 = fadd fast float %909, %749
  %913 = add nuw i32 %751, 1
  %914 = icmp eq i32 %913, %743
  br i1 %914, label %915, label %746

; <label>:915                                     ; preds = %746
  br label %916

; <label>:916                                     ; preds = %915, %648
  %917 = phi float [ 0.000000e+00, %648 ], [ %910, %915 ]
  %918 = phi float [ 0.000000e+00, %648 ], [ %911, %915 ]
  %919 = phi float [ 0.000000e+00, %648 ], [ %912, %915 ]
  %920 = fmul fast float %681, %917
  %921 = fmul fast float %681, %918
  %922 = fmul fast float %497, %404
  %923 = fmul fast float %922, %503
  %924 = fmul fast float %923, %919
  %925 = fadd fast float %920, %376
  %926 = fadd fast float %921, %377
  %927 = fadd fast float %924, %378
  %928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %929 = fmul fast float %440, %340
  %930 = fadd fast float %929, %441
  %931 = call float @dx.op.unary.f32(i32 7, float %930)  ; Saturate(value)
  %932 = call float @dx.op.binary.f32(i32 35, float %381, float %931)  ; FMax(a,b)
  %933 = fmul fast float %458, %327
  %934 = fadd fast float %933, %459
  %935 = call float @dx.op.binary.f32(i32 35, float %934, float 0.000000e+00)  ; FMax(a,b)
  %936 = fmul fast float %935, %454
  %937 = fadd fast float %936, %455
  %938 = call float @dx.op.unary.f32(i32 7, float %937)  ; Saturate(value)
  %939 = and i32 %413, 2
  %940 = icmp ne i32 %939, 0
  %941 = select i1 %940, float %938, float 0.000000e+00
  %942 = call float @dx.op.binary.f32(i32 35, float %941, float %379)  ; FMax(a,b)
  %943 = fmul fast float %466, %327
  %944 = fadd fast float %943, %467
  %945 = call float @dx.op.binary.f32(i32 35, float %944, float 0.000000e+00)  ; FMax(a,b)
  %946 = fmul fast float %945, %462
  %947 = fadd fast float %946, %463
  %948 = call float @dx.op.unary.f32(i32 7, float %947)  ; Saturate(value)
  %949 = and i32 %413, 4
  %950 = icmp ne i32 %949, 0
  %951 = select i1 %950, float %948, float 0.000000e+00
  %952 = call float @dx.op.binary.f32(i32 35, float %951, float %380)  ; FMax(a,b)
  %953 = fadd fast float %428, %429
  %954 = extractvalue %dx.types.CBufRet.f32 %928, 2
  %955 = fcmp fast oge float %953, %954
  %956 = select i1 %955, i32 4096, i32 0
  %957 = or i32 %481, %956
  %958 = fmul fast float %470, %404
  %959 = fadd fast float %958, %383
  br label %960

; <label>:960                                     ; preds = %916, %364
  %961 = phi i32 [ %957, %916 ], [ %365, %364 ]
  %962 = phi float [ %663, %916 ], [ %366, %364 ]
  %963 = phi float [ %664, %916 ], [ %367, %364 ]
  %964 = phi float [ %665, %916 ], [ %368, %364 ]
  %965 = phi float [ %669, %916 ], [ %369, %364 ]
  %966 = phi float [ %670, %916 ], [ %370, %364 ]
  %967 = phi float [ %671, %916 ], [ %371, %364 ]
  %968 = phi float [ %675, %916 ], [ %372, %364 ]
  %969 = phi float [ %676, %916 ], [ %373, %364 ]
  %970 = phi float [ %677, %916 ], [ %374, %364 ]
  %971 = phi float [ %684, %916 ], [ %375, %364 ]
  %972 = phi float [ %925, %916 ], [ %376, %364 ]
  %973 = phi float [ %926, %916 ], [ %377, %364 ]
  %974 = phi float [ %927, %916 ], [ %378, %364 ]
  %975 = phi float [ %942, %916 ], [ %379, %364 ]
  %976 = phi float [ %952, %916 ], [ %380, %364 ]
  %977 = phi float [ %932, %916 ], [ %381, %364 ]
  %978 = phi float [ %487, %916 ], [ %382, %364 ]
  %979 = phi float [ %959, %916 ], [ %383, %364 ]
  %980 = add nuw i32 %384, 1
  %981 = icmp eq i32 %980, %346
  br i1 %981, label %982, label %364

; <label>:982                                     ; preds = %960
  br label %983

; <label>:983                                     ; preds = %982, %223
  %984 = phi i32 [ %219, %223 ], [ %961, %982 ]
  %985 = phi float [ 0.000000e+00, %223 ], [ %962, %982 ]
  %986 = phi float [ 0.000000e+00, %223 ], [ %963, %982 ]
  %987 = phi float [ 0.000000e+00, %223 ], [ %964, %982 ]
  %988 = phi float [ 0.000000e+00, %223 ], [ %965, %982 ]
  %989 = phi float [ 0.000000e+00, %223 ], [ %966, %982 ]
  %990 = phi float [ 0.000000e+00, %223 ], [ %967, %982 ]
  %991 = phi float [ 0.000000e+00, %223 ], [ %968, %982 ]
  %992 = phi float [ 0.000000e+00, %223 ], [ %969, %982 ]
  %993 = phi float [ 0.000000e+00, %223 ], [ %970, %982 ]
  %994 = phi float [ 0.000000e+00, %223 ], [ %971, %982 ]
  %995 = phi float [ 0.000000e+00, %223 ], [ %972, %982 ]
  %996 = phi float [ 0.000000e+00, %223 ], [ %973, %982 ]
  %997 = phi float [ 0.000000e+00, %223 ], [ %974, %982 ]
  %998 = phi float [ 0.000000e+00, %223 ], [ %975, %982 ]
  %999 = phi float [ 0.000000e+00, %223 ], [ %976, %982 ]
  %1000 = phi float [ 0.000000e+00, %223 ], [ %977, %982 ]
  %1001 = phi float [ 0.000000e+00, %223 ], [ %978, %982 ]
  %1002 = phi float [ 0.000000e+00, %223 ], [ %979, %982 ]
  %1003 = fcmp fast ole float %994, 0x3F69A5C380000000
  %1004 = fmul fast float %994, 0x4029D70A40000000
  %1005 = call float @dx.op.unary.f32(i32 23, float %994)  ; Log(value)
  %1006 = fmul fast float %1005, 0x3FDAAAAAA0000000
  %1007 = call float @dx.op.unary.f32(i32 21, float %1006)  ; Exp(value)
  %1008 = fmul fast float %1007, 0x3FF0E147A0000000
  %1009 = fadd fast float %1008, 0xBFAC28F5C0000000
  %1010 = select i1 %1003, float %1004, float %1009
  %1011 = fmul fast float %1010, 2.550000e+02
  %1012 = call float @dx.op.binary.f32(i32 35, float %1011, float 0.000000e+00)  ; FMax(a,b)
  %1013 = call float @dx.op.binary.f32(i32 36, float %1012, float 2.550000e+02)  ; FMin(a,b)
  %1014 = fptoui float %1013 to i32
  %1015 = uitofp i32 %1014 to float
  %1016 = fmul fast float %1015, 0x3F70101020000000
  %1017 = fcmp fast ole float %1016, 0x3FA4B5DCC0000000
  %1018 = fmul fast float %1015, 0x3F33E45680000000
  %1019 = fmul fast float %1015, 0x3F6E736160000000
  %1020 = fadd fast float %1019, 0x3FAAB12340000000
  %1021 = call float @dx.op.unary.f32(i32 23, float %1020)  ; Log(value)
  %1022 = fmul fast float %1021, 0x4003333340000000
  %1023 = call float @dx.op.unary.f32(i32 21, float %1022)  ; Exp(value)
  %1024 = select i1 %1017, float %1018, float %1023
  %1025 = call float @dx.op.unary.f32(i32 7, float %1024)  ; Saturate(value)
  %1026 = call float @dx.op.binary.f32(i32 35, float %1025, float %1000)  ; FMax(a,b)
  %1027 = fadd fast float %1026, 1.000000e+00
  %1028 = fmul fast float %1027, %998
  %1029 = fmul fast float %1027, %999
  %1030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1031 = extractvalue %dx.types.CBufRet.f32 %1030, 1
  %1032 = fcmp fast oge float %1028, %1031
  %1033 = select i1 %1032, i32 1024, i32 0
  %1034 = or i32 %1033, %984
  %1035 = fcmp fast oge float %1029, %1031
  %1036 = select i1 %1035, i32 2048, i32 0
  %1037 = or i32 %1034, %1036
  %1038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1039 = extractvalue %dx.types.CBufRet.f32 %1038, 3
  %1040 = fadd fast float %1039, %83
  %1041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.f32 %1041, 0
  %1043 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.f32 %1043, 0
  %1045 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1046 = extractvalue %dx.types.ResRet.f32 %1045, 0
  %1047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.i32 %1047, 0
  %1049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1050 = extractvalue %dx.types.CBufRet.f32 %1049, 2
  %1051 = fmul fast float %1050, %1040
  %1052 = fmul fast float %1050, %86
  %1053 = extractvalue %dx.types.CBufRet.f32 %1049, 3
  %1054 = fadd fast float %1051, %1053
  %1055 = fadd fast float %1052, %1053
  %1056 = add i32 %1048, 0
  %1057 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1056, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1058 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1057, i32 0)  ; GetDimensions(handle,mipLevel)
  %1059 = extractvalue %dx.types.Dimensions %1058, 0
  %1060 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1059)  ; FirstbitLo(value)
  %1061 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1062 = extractvalue %dx.types.CBufRet.i32 %1061, 1
  %1063 = sub nsw i32 %1062, %1060
  %1064 = sitofp i32 %1063 to float
  %1065 = fsub fast float %99, %1064
  %1066 = call float @dx.op.binary.f32(i32 35, float %1065, float 0.000000e+00)  ; FMax(a,b)
  %1067 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1057, %dx.types.Handle %12, float %1054, float %1055, float %1046, float undef, i32 0, i32 0, i32 undef, float %1066)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1068 = extractvalue %dx.types.ResRet.f32 %1067, 0
  %1069 = fmul fast float %1068, %1042
  %1070 = fsub fast float %86, %1039
  %1071 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1072 = extractvalue %dx.types.ResRet.f32 %1071, 0
  %1073 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.f32 %1073, 0
  %1075 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.f32 %1075, 0
  %1077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.i32 %1077, 0
  %1079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1080 = extractvalue %dx.types.CBufRet.f32 %1079, 2
  %1081 = fmul fast float %1080, %83
  %1082 = fmul fast float %1080, %1070
  %1083 = extractvalue %dx.types.CBufRet.f32 %1079, 3
  %1084 = fadd fast float %1081, %1083
  %1085 = fadd fast float %1082, %1083
  %1086 = add i32 %1078, 0
  %1087 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1086, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1088 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1087, i32 0)  ; GetDimensions(handle,mipLevel)
  %1089 = extractvalue %dx.types.Dimensions %1088, 0
  %1090 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1089)  ; FirstbitLo(value)
  %1091 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1092 = extractvalue %dx.types.CBufRet.i32 %1091, 1
  %1093 = sub nsw i32 %1092, %1090
  %1094 = sitofp i32 %1093 to float
  %1095 = fsub fast float %99, %1094
  %1096 = call float @dx.op.binary.f32(i32 35, float %1095, float 0.000000e+00)  ; FMax(a,b)
  %1097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1087, %dx.types.Handle %12, float %1084, float %1085, float %1076, float undef, i32 0, i32 0, i32 undef, float %1096)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1098 = extractvalue %dx.types.ResRet.f32 %1097, 0
  %1099 = fmul fast float %1098, %1072
  %1100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1101 = extractvalue %dx.types.CBufRet.f32 %1100, 2
  %1102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1103 = extractvalue %dx.types.CBufRet.f32 %1102, 3
  %1104 = fmul fast float %1103, %1101
  %1105 = fsub fast float %1044, %287
  %1106 = fadd fast float %1105, %1069
  %1107 = fsub fast float %1074, %287
  %1108 = fadd fast float %1107, %1099
  %1109 = fmul fast float %1106, %1104
  %1110 = fsub fast float -0.000000e+00, %1109
  %1111 = fmul fast float %1108, %1104
  %1112 = fsub fast float -0.000000e+00, %1111
  %1113 = fmul fast float %1104, %1104
  %1114 = call float @dx.op.dot3.f32(i32 55, float %1110, float %1112, float %1113, float %1110, float %1112, float %1113)  ; Dot3(ax,ay,az,bx,by,bz)
  %1115 = call float @dx.op.unary.f32(i32 25, float %1114)  ; Rsqrt(value)
  %1116 = fmul fast float %1115, %1110
  %1117 = fmul fast float %1115, %1112
  %1118 = fmul fast float %1113, %1115
  %1119 = fsub fast float -0.000000e+00, %1117
  %1120 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float %1118, float %1119, float 0.000000e+00, float %1118, float %1119)  ; Dot3(ax,ay,az,bx,by,bz)
  %1121 = call float @dx.op.unary.f32(i32 25, float %1120)  ; Rsqrt(value)
  %1122 = fmul fast float %1118, %1121
  %1123 = fmul fast float %1121, %1119
  %1124 = fmul fast float %1122, %1118
  %1125 = fmul fast float %1123, %1117
  %1126 = fsub fast float %1124, %1125
  %1127 = fmul fast float %1123, %1116
  %1128 = fmul fast float %1116, %1122
  %1129 = fsub fast float -0.000000e+00, %1128
  %1130 = call float @dx.op.dot3.f32(i32 55, float %1126, float %1127, float %1129, float %1126, float %1127, float %1129)  ; Dot3(ax,ay,az,bx,by,bz)
  %1131 = call float @dx.op.unary.f32(i32 25, float %1130)  ; Rsqrt(value)
  %1132 = fmul fast float %1126, %1131
  %1133 = fmul fast float %1127, %1131
  %1134 = fmul fast float %1131, %1129
  %1135 = fadd fast float %1122, %992
  %1136 = fadd fast float %1123, %993
  %1137 = call float @dx.op.dot3.f32(i32 55, float %991, float %1135, float %1136, float %991, float %1135, float %1136)  ; Dot3(ax,ay,az,bx,by,bz)
  %1138 = call float @dx.op.unary.f32(i32 25, float %1137)  ; Rsqrt(value)
  %1139 = fmul fast float %1138, %991
  %1140 = fmul fast float %1138, %1135
  %1141 = fmul fast float %1138, %1136
  %1142 = fadd fast float %1132, %988
  %1143 = fadd fast float %1133, %989
  %1144 = fadd fast float %1134, %990
  %1145 = call float @dx.op.dot3.f32(i32 55, float %1142, float %1143, float %1144, float %1142, float %1143, float %1144)  ; Dot3(ax,ay,az,bx,by,bz)
  %1146 = call float @dx.op.unary.f32(i32 25, float %1145)  ; Rsqrt(value)
  %1147 = fmul fast float %1146, %1142
  %1148 = fmul fast float %1146, %1143
  %1149 = fmul fast float %1146, %1144
  %1150 = fmul fast float %1148, %1141
  %1151 = fmul fast float %1149, %1140
  %1152 = fsub fast float %1150, %1151
  %1153 = fmul fast float %1149, %1139
  %1154 = fmul fast float %1147, %1141
  %1155 = fsub fast float %1153, %1154
  %1156 = fmul fast float %1147, %1140
  %1157 = fmul fast float %1148, %1139
  %1158 = fsub fast float %1156, %1157
  %1159 = call float @dx.op.dot3.f32(i32 55, float %1152, float %1155, float %1158, float %1152, float %1155, float %1158)  ; Dot3(ax,ay,az,bx,by,bz)
  %1160 = call float @dx.op.unary.f32(i32 25, float %1159)  ; Rsqrt(value)
  %1161 = fmul fast float %1152, %1160
  %1162 = fmul fast float %1155, %1160
  %1163 = fmul fast float %1158, %1160
  %1164 = fadd fast float %985, %76
  %1165 = fadd fast float %986, %80
  %1166 = fadd fast float %987, %287
  %1167 = fmul fast float %1147, %995
  %1168 = call float @dx.op.tertiary.f32(i32 46, float %996, float %1139, float %1167)  ; FMad(a,b,c)
  %1169 = call float @dx.op.tertiary.f32(i32 46, float %997, float %1161, float %1168)  ; FMad(a,b,c)
  %1170 = fmul fast float %1148, %995
  %1171 = call float @dx.op.tertiary.f32(i32 46, float %996, float %1140, float %1170)  ; FMad(a,b,c)
  %1172 = call float @dx.op.tertiary.f32(i32 46, float %997, float %1162, float %1171)  ; FMad(a,b,c)
  %1173 = fmul fast float %1149, %995
  %1174 = call float @dx.op.tertiary.f32(i32 46, float %996, float %1141, float %1173)  ; FMad(a,b,c)
  %1175 = call float @dx.op.tertiary.f32(i32 46, float %997, float %1163, float %1174)  ; FMad(a,b,c)
  %1176 = fadd fast float %1164, %1169
  %1177 = fadd fast float %1165, %1172
  %1178 = fadd fast float %1166, %1001
  %1179 = fadd fast float %1178, %1175
  %1180 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1181 = extractvalue %dx.types.CBufRet.i32 %1180, 0
  %1182 = icmp eq i32 %1181, 0
  br i1 %1182, label %1630, label %1183, !dx.controlflow.hints !48

; <label>:1183                                    ; preds = %983
  %1184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 433)  ; CBufferLoadLegacy(handle,regIndex)
  %1185 = extractvalue %dx.types.CBufRet.f32 %1184, 3
  %1186 = extractvalue %dx.types.CBufRet.f32 %1184, 1
  %1187 = extractvalue %dx.types.CBufRet.f32 %1184, 2
  %1188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1189 = extractvalue %dx.types.CBufRet.f32 %1188, 1
  %1190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %1191 = extractvalue %dx.types.CBufRet.f32 %1190, 2
  %1192 = extractvalue %dx.types.CBufRet.f32 %1190, 3
  %1193 = fsub fast float %1176, %1191
  %1194 = fsub fast float %1177, %1192
  %1195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %1196 = extractvalue %dx.types.CBufRet.f32 %1195, 2
  %1197 = fmul fast float %1193, %1196
  %1198 = fmul fast float %1194, %1196
  %1199 = fadd fast float %1197, 5.000000e-01
  %1200 = fadd fast float %1198, 5.000000e-01
  %1201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %1202 = extractvalue %dx.types.CBufRet.f32 %1201, 2
  %1203 = fsub fast float %1179, %1202
  %1204 = extractvalue %dx.types.CBufRet.f32 %1201, 1
  %1205 = fmul fast float %1203, %1204
  %1206 = call float @dx.op.unary.f32(i32 7, float %1205)  ; Saturate(value)
  %1207 = fcmp fast olt float %1199, 0.000000e+00
  %1208 = fcmp fast olt float %1200, 0.000000e+00
  %1209 = or i1 %1207, %1208
  %1210 = fcmp fast oge float %1199, 1.000000e+00
  %1211 = fcmp fast oge float %1200, 1.000000e+00
  %1212 = or i1 %1210, %1211
  %1213 = or i1 %1209, %1212
  br i1 %1213, label %1621, label %1214, !dx.controlflow.hints !49

; <label>:1214                                    ; preds = %1183
  %1215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1216 = extractvalue %dx.types.CBufRet.f32 %1215, 0
  %1217 = call float @dx.op.binary.f32(i32 36, float %1200, float %1206)  ; FMin(a,b)
  %1218 = call float @dx.op.binary.f32(i32 36, float %1199, float %1217)  ; FMin(a,b)
  %1219 = call float @dx.op.binary.f32(i32 35, float %1200, float %1206)  ; FMax(a,b)
  %1220 = call float @dx.op.binary.f32(i32 35, float %1199, float %1219)  ; FMax(a,b)
  %1221 = fsub fast float 1.000000e+00, %1220
  %1222 = call float @dx.op.binary.f32(i32 36, float %1218, float %1221)  ; FMin(a,b)
  %1223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 437)  ; CBufferLoadLegacy(handle,regIndex)
  %1224 = extractvalue %dx.types.CBufRet.f32 %1223, 3
  %1225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %1226 = extractvalue %dx.types.CBufRet.f32 %1225, 1
  %1227 = call float @dx.op.binary.f32(i32 35, float %1226, float %1224)  ; FMax(a,b)
  %1228 = fsub fast float %1227, %1226
  %1229 = fsub fast float %1222, %1226
  %1230 = fdiv fast float %1229, %1228
  %1231 = call float @dx.op.unary.f32(i32 7, float %1230)  ; Saturate(value)
  %1232 = fmul fast float %1231, 2.000000e+00
  %1233 = fsub fast float 3.000000e+00, %1232
  %1234 = fmul fast float %1196, %1176
  %1235 = fmul fast float %1196, %1177
  %1236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1237 = extractvalue %dx.types.CBufRet.f32 %1236, 0
  %1238 = extractvalue %dx.types.CBufRet.f32 %1236, 1
  %1239 = extractvalue %dx.types.CBufRet.f32 %1236, 2
  %1240 = fsub fast float %1176, %1237
  %1241 = fsub fast float %1177, %1238
  %1242 = fsub fast float %1179, %1239
  %1243 = call float @dx.op.dot3.f32(i32 55, float %1240, float %1241, float %1242, float %1240, float %1241, float %1242)  ; Dot3(ax,ay,az,bx,by,bz)
  %1244 = fmul fast float %1185, %1185
  %1245 = fmul fast float %1186, %1186
  %1246 = fsub fast float %1244, %1245
  %1247 = fsub fast float %1243, %1245
  %1248 = fdiv fast float %1247, %1246
  %1249 = call float @dx.op.unary.f32(i32 7, float %1248)  ; Saturate(value)
  %1250 = fmul fast float %1249, 2.000000e+00
  %1251 = fsub fast float 3.000000e+00, %1250
  %1252 = fmul fast float %1249, %1249
  %1253 = fmul fast float %1252, %1251
  %1254 = extractvalue %dx.types.CBufRet.f32 %1188, 2
  %1255 = fsub fast float %1254, %1187
  %1256 = fmul fast float %1253, %1255
  %1257 = fadd fast float %1256, %1187
  %1258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1259 = extractvalue %dx.types.CBufRet.f32 %1258, 0
  %1260 = call float @dx.op.unary.f32(i32 6, float %1259)  ; FAbs(value)
  %1261 = fcmp fast oge float %1260, 0x3F50624DE0000000
  %1262 = select i1 %1261, float %1254, float %1257
  %1263 = fmul fast float %1216, %1002
  %1264 = fmul fast float %1231, %1231
  %1265 = fmul fast float %1264, %1263
  %1266 = fmul fast float %1265, %1233
  %1267 = fmul fast float %1266, %1262
  %1268 = fmul fast float %1189, %1189
  %1269 = fcmp fast ogt float %1268, %1243
  %1270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 429)  ; CBufferLoadLegacy(handle,regIndex)
  %1271 = extractvalue %dx.types.CBufRet.f32 %1270, 0
  %1272 = fmul fast float %1271, 0x4043AF5EC0000000
  %1273 = fmul fast float %1272, %1267
  br i1 %1269, label %1274, label %1355, !dx.controlflow.hints !50

; <label>:1274                                    ; preds = %1214
  %1275 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1276 = extractvalue %dx.types.CBufRet.i32 %1275, 0
  %1277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1278 = extractvalue %dx.types.CBufRet.f32 %1277, 2
  %1279 = uitofp i32 %1276 to float
  %1280 = fmul fast float %1279, %1234
  %1281 = fmul fast float %1279, %1235
  %1282 = fadd fast float %1280, -5.000000e-01
  %1283 = fadd fast float %1281, -5.000000e-01
  %1284 = call float @dx.op.unary.f32(i32 27, float %1282)  ; Round_ni(value)
  %1285 = call float @dx.op.unary.f32(i32 27, float %1283)  ; Round_ni(value)
  %1286 = fsub fast float %1282, %1284
  %1287 = fsub fast float %1283, %1285
  %1288 = fsub fast float 1.000000e+00, %1286
  %1289 = fsub fast float 1.000000e+00, %1287
  %1290 = fmul fast float %1288, %1288
  %1291 = fmul fast float %1289, %1289
  %1292 = fmul fast float %1286, %1286
  %1293 = fmul fast float %1287, %1287
  %1294 = fmul fast float %1288, 0x3FC5555560000000
  %1295 = fmul fast float %1294, %1290
  %1296 = fmul fast float %1289, 0x3FC5555560000000
  %1297 = fmul fast float %1296, %1291
  %1298 = fmul fast float %1292, 5.000000e-01
  %1299 = fmul fast float %1293, 5.000000e-01
  %1300 = fsub fast float 2.000000e+00, %1286
  %1301 = fsub fast float 2.000000e+00, %1287
  %1302 = fmul fast float %1298, %1300
  %1303 = fmul fast float %1299, %1301
  %1304 = fsub fast float 0x3FE5555560000000, %1302
  %1305 = fsub fast float 0x3FE5555560000000, %1303
  %1306 = fadd fast float %1286, 1.000000e+00
  %1307 = fadd fast float %1287, 1.000000e+00
  %1308 = fmul fast float %1306, 5.000000e-01
  %1309 = fmul fast float %1308, %1290
  %1310 = fmul fast float %1307, 5.000000e-01
  %1311 = fmul fast float %1310, %1291
  %1312 = fmul fast float %1286, 0x3FC5555560000000
  %1313 = fmul fast float %1312, %1292
  %1314 = fmul fast float %1287, 0x3FC5555560000000
  %1315 = fmul fast float %1314, %1293
  %1316 = fadd fast float %1295, %1304
  %1317 = fadd fast float %1297, %1305
  %1318 = fadd fast float %1313, 0x3FE5555560000000
  %1319 = fsub fast float %1318, %1309
  %1320 = fadd fast float %1315, 0x3FE5555560000000
  %1321 = fsub fast float %1320, %1311
  %1322 = fdiv fast float %1304, %1316
  %1323 = fdiv fast float %1305, %1317
  %1324 = fadd fast float %1284, -5.000000e-01
  %1325 = fadd fast float %1324, %1322
  %1326 = fadd fast float %1285, -5.000000e-01
  %1327 = fadd fast float %1326, %1323
  %1328 = fmul fast float %1325, %1278
  %1329 = fmul fast float %1327, %1278
  %1330 = fdiv fast float %1313, %1319
  %1331 = fdiv fast float %1315, %1321
  %1332 = fadd fast float %1284, 1.500000e+00
  %1333 = fadd fast float %1332, %1330
  %1334 = fadd fast float %1285, 1.500000e+00
  %1335 = fadd fast float %1334, %1331
  %1336 = fmul fast float %1333, %1278
  %1337 = fmul fast float %1335, %1278
  %1338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1328, float %1329, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1339 = extractvalue %dx.types.ResRet.f32 %1338, 0
  %1340 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1336, float %1329, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1341 = extractvalue %dx.types.ResRet.f32 %1340, 0
  %1342 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1328, float %1337, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1343 = extractvalue %dx.types.ResRet.f32 %1342, 0
  %1344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1336, float %1337, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1345 = extractvalue %dx.types.ResRet.f32 %1344, 0
  %1346 = fsub fast float %1339, %1343
  %1347 = fmul fast float %1346, %1317
  %1348 = fadd fast float %1347, %1343
  %1349 = fsub fast float %1341, %1345
  %1350 = fmul fast float %1349, %1317
  %1351 = fadd fast float %1350, %1345
  %1352 = fsub fast float %1348, %1351
  %1353 = fmul fast float %1352, %1316
  %1354 = fadd fast float %1353, %1351
  br label %1386

; <label>:1355                                    ; preds = %1214
  %1356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1234, float %1235, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1357 = extractvalue %dx.types.ResRet.f32 %1356, 0
  %1358 = fsub fast float %1177, %72
  %1359 = fmul fast float %1196, %1358
  %1360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1234, float %1359, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1361 = extractvalue %dx.types.ResRet.f32 %1360, 0
  %1362 = fadd fast float %72, %1177
  %1363 = fmul fast float %1196, %1362
  %1364 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1234, float %1363, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1365 = extractvalue %dx.types.ResRet.f32 %1364, 0
  %1366 = fsub fast float %1176, %72
  %1367 = fmul fast float %1196, %1366
  %1368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1367, float %1235, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1369 = extractvalue %dx.types.ResRet.f32 %1368, 0
  %1370 = fadd fast float %72, %1176
  %1371 = fmul fast float %1196, %1370
  %1372 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1371, float %1235, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1373 = extractvalue %dx.types.ResRet.f32 %1372, 0
  %1374 = fsub fast float %1373, %1369
  %1375 = fsub fast float %1365, %1361
  %1376 = fmul fast float %1273, %1374
  %1377 = fsub fast float -0.000000e+00, %1376
  %1378 = fmul fast float %1273, %1375
  %1379 = fsub fast float -0.000000e+00, %1378
  %1380 = fmul fast float %44, 1.250000e-01
  %1381 = call float @dx.op.dot3.f32(i32 55, float %1377, float %1379, float %1380, float %1377, float %1379, float %1380)  ; Dot3(ax,ay,az,bx,by,bz)
  %1382 = call float @dx.op.unary.f32(i32 25, float %1381)  ; Rsqrt(value)
  %1383 = fmul fast float %1382, %1377
  %1384 = fmul fast float %1382, %1379
  %1385 = fmul fast float %1382, %1380
  br label %1386

; <label>:1386                                    ; preds = %1355, %1274
  %1387 = phi float [ %1354, %1274 ], [ %1357, %1355 ]
  %1388 = phi i1 [ true, %1274 ], [ false, %1355 ]
  %1389 = phi float [ 0.000000e+00, %1274 ], [ %1383, %1355 ]
  %1390 = phi float [ 0.000000e+00, %1274 ], [ %1384, %1355 ]
  %1391 = phi float [ 0.000000e+00, %1274 ], [ %1385, %1355 ]
  %1392 = fadd fast float %1387, -5.000000e-01
  %1393 = fmul fast float %1392, %1273
  %1394 = fadd fast float %1259, 1.000000e+00
  %1395 = fmul fast float %1394, 5.000000e-01
  %1396 = select i1 %1261, float %1395, float 0.000000e+00
  %1397 = select i1 %1261, float %1395, float %1393
  %1398 = select i1 %1261, float 1.000000e+00, float %1391
  %1399 = xor i1 %1261, true
  %1400 = or i1 %1269, %1388
  %1401 = and i1 %1400, %1399
  br i1 %1401, label %1402, label %1606, !dx.controlflow.hints !51

; <label>:1402                                    ; preds = %1386
  %1403 = fmul fast float %1147, %72
  %1404 = fmul fast float %1148, %72
  %1405 = fmul fast float %1149, %72
  %1406 = fmul fast float %1139, %72
  %1407 = fmul fast float %1140, %72
  %1408 = fmul fast float %1141, %72
  %1409 = fadd fast float %1176, %1403
  %1410 = fadd fast float %1177, %1404
  %1411 = fmul fast float %1196, %1409
  %1412 = fmul fast float %1196, %1410
  %1413 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1414 = extractvalue %dx.types.CBufRet.i32 %1413, 0
  %1415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1416 = extractvalue %dx.types.CBufRet.f32 %1415, 2
  %1417 = uitofp i32 %1414 to float
  %1418 = fmul fast float %1411, %1417
  %1419 = fmul fast float %1412, %1417
  %1420 = fadd fast float %1418, -5.000000e-01
  %1421 = fadd fast float %1419, -5.000000e-01
  %1422 = call float @dx.op.unary.f32(i32 27, float %1420)  ; Round_ni(value)
  %1423 = call float @dx.op.unary.f32(i32 27, float %1421)  ; Round_ni(value)
  %1424 = fsub fast float %1420, %1422
  %1425 = fsub fast float %1421, %1423
  %1426 = fsub fast float 1.000000e+00, %1424
  %1427 = fsub fast float 1.000000e+00, %1425
  %1428 = fmul fast float %1426, %1426
  %1429 = fmul fast float %1427, %1427
  %1430 = fmul fast float %1424, %1424
  %1431 = fmul fast float %1425, %1425
  %1432 = fmul fast float %1426, 0x3FC5555560000000
  %1433 = fmul fast float %1432, %1428
  %1434 = fmul fast float %1427, 0x3FC5555560000000
  %1435 = fmul fast float %1434, %1429
  %1436 = fmul fast float %1430, 5.000000e-01
  %1437 = fmul fast float %1431, 5.000000e-01
  %1438 = fsub fast float 2.000000e+00, %1424
  %1439 = fsub fast float 2.000000e+00, %1425
  %1440 = fmul fast float %1436, %1438
  %1441 = fmul fast float %1437, %1439
  %1442 = fsub fast float 0x3FE5555560000000, %1440
  %1443 = fsub fast float 0x3FE5555560000000, %1441
  %1444 = fadd fast float %1424, 1.000000e+00
  %1445 = fadd fast float %1425, 1.000000e+00
  %1446 = fmul fast float %1444, 5.000000e-01
  %1447 = fmul fast float %1446, %1428
  %1448 = fmul fast float %1445, 5.000000e-01
  %1449 = fmul fast float %1448, %1429
  %1450 = fmul fast float %1424, 0x3FC5555560000000
  %1451 = fmul fast float %1450, %1430
  %1452 = fmul fast float %1425, 0x3FC5555560000000
  %1453 = fmul fast float %1452, %1431
  %1454 = fadd fast float %1433, %1442
  %1455 = fadd fast float %1435, %1443
  %1456 = fadd fast float %1451, 0x3FE5555560000000
  %1457 = fsub fast float %1456, %1447
  %1458 = fadd fast float %1453, 0x3FE5555560000000
  %1459 = fsub fast float %1458, %1449
  %1460 = fdiv fast float %1442, %1454
  %1461 = fdiv fast float %1443, %1455
  %1462 = fadd fast float %1422, -5.000000e-01
  %1463 = fadd fast float %1462, %1460
  %1464 = fadd fast float %1423, -5.000000e-01
  %1465 = fadd fast float %1464, %1461
  %1466 = fmul fast float %1463, %1416
  %1467 = fmul fast float %1465, %1416
  %1468 = fdiv fast float %1451, %1457
  %1469 = fdiv fast float %1453, %1459
  %1470 = fadd fast float %1422, 1.500000e+00
  %1471 = fadd fast float %1470, %1468
  %1472 = fadd fast float %1423, 1.500000e+00
  %1473 = fadd fast float %1472, %1469
  %1474 = fmul fast float %1471, %1416
  %1475 = fmul fast float %1473, %1416
  %1476 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1466, float %1467, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1477 = extractvalue %dx.types.ResRet.f32 %1476, 0
  %1478 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1474, float %1467, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1479 = extractvalue %dx.types.ResRet.f32 %1478, 0
  %1480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1466, float %1475, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1481 = extractvalue %dx.types.ResRet.f32 %1480, 0
  %1482 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1474, float %1475, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1483 = extractvalue %dx.types.ResRet.f32 %1482, 0
  %1484 = fsub fast float %1477, %1481
  %1485 = fmul fast float %1484, %1455
  %1486 = fadd fast float %1485, %1481
  %1487 = fsub fast float %1479, %1483
  %1488 = fmul fast float %1487, %1455
  %1489 = fadd fast float %1488, %1483
  %1490 = fsub fast float %1486, %1489
  %1491 = fmul fast float %1490, %1454
  %1492 = fadd fast float %1489, -5.000000e-01
  %1493 = fadd fast float %1492, %1491
  %1494 = fmul fast float %1267, 0x4043AF5EC0000000
  %1495 = fmul fast float %1494, %1271
  %1496 = fmul fast float %1495, %1493
  %1497 = fadd fast float %1176, %1406
  %1498 = fadd fast float %1177, %1407
  %1499 = fmul fast float %1196, %1497
  %1500 = fmul fast float %1196, %1498
  %1501 = fmul fast float %1499, %1417
  %1502 = fmul fast float %1500, %1417
  %1503 = fadd fast float %1501, -5.000000e-01
  %1504 = fadd fast float %1502, -5.000000e-01
  %1505 = call float @dx.op.unary.f32(i32 27, float %1503)  ; Round_ni(value)
  %1506 = call float @dx.op.unary.f32(i32 27, float %1504)  ; Round_ni(value)
  %1507 = fsub fast float %1503, %1505
  %1508 = fsub fast float %1504, %1506
  %1509 = fsub fast float 1.000000e+00, %1507
  %1510 = fsub fast float 1.000000e+00, %1508
  %1511 = fmul fast float %1509, %1509
  %1512 = fmul fast float %1510, %1510
  %1513 = fmul fast float %1507, %1507
  %1514 = fmul fast float %1508, %1508
  %1515 = fmul fast float %1509, 0x3FC5555560000000
  %1516 = fmul fast float %1515, %1511
  %1517 = fmul fast float %1510, 0x3FC5555560000000
  %1518 = fmul fast float %1517, %1512
  %1519 = fmul fast float %1513, 5.000000e-01
  %1520 = fmul fast float %1514, 5.000000e-01
  %1521 = fsub fast float 2.000000e+00, %1507
  %1522 = fsub fast float 2.000000e+00, %1508
  %1523 = fmul fast float %1519, %1521
  %1524 = fmul fast float %1520, %1522
  %1525 = fsub fast float 0x3FE5555560000000, %1523
  %1526 = fsub fast float 0x3FE5555560000000, %1524
  %1527 = fadd fast float %1507, 1.000000e+00
  %1528 = fadd fast float %1508, 1.000000e+00
  %1529 = fmul fast float %1527, 5.000000e-01
  %1530 = fmul fast float %1529, %1511
  %1531 = fmul fast float %1528, 5.000000e-01
  %1532 = fmul fast float %1531, %1512
  %1533 = fmul fast float %1507, 0x3FC5555560000000
  %1534 = fmul fast float %1533, %1513
  %1535 = fmul fast float %1508, 0x3FC5555560000000
  %1536 = fmul fast float %1535, %1514
  %1537 = fadd fast float %1516, %1525
  %1538 = fadd fast float %1518, %1526
  %1539 = fadd fast float %1534, 0x3FE5555560000000
  %1540 = fsub fast float %1539, %1530
  %1541 = fadd fast float %1536, 0x3FE5555560000000
  %1542 = fsub fast float %1541, %1532
  %1543 = fdiv fast float %1525, %1537
  %1544 = fdiv fast float %1526, %1538
  %1545 = fadd fast float %1505, -5.000000e-01
  %1546 = fadd fast float %1545, %1543
  %1547 = fadd fast float %1506, -5.000000e-01
  %1548 = fadd fast float %1547, %1544
  %1549 = fmul fast float %1546, %1416
  %1550 = fmul fast float %1548, %1416
  %1551 = fdiv fast float %1534, %1540
  %1552 = fdiv fast float %1536, %1542
  %1553 = fadd fast float %1505, 1.500000e+00
  %1554 = fadd fast float %1553, %1551
  %1555 = fadd fast float %1506, 1.500000e+00
  %1556 = fadd fast float %1555, %1552
  %1557 = fmul fast float %1554, %1416
  %1558 = fmul fast float %1556, %1416
  %1559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1549, float %1550, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1560 = extractvalue %dx.types.ResRet.f32 %1559, 0
  %1561 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1557, float %1550, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1562 = extractvalue %dx.types.ResRet.f32 %1561, 0
  %1563 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1549, float %1558, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1564 = extractvalue %dx.types.ResRet.f32 %1563, 0
  %1565 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1557, float %1558, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1566 = extractvalue %dx.types.ResRet.f32 %1565, 0
  %1567 = fsub fast float %1560, %1564
  %1568 = fmul fast float %1567, %1538
  %1569 = fadd fast float %1568, %1564
  %1570 = fsub fast float %1562, %1566
  %1571 = fmul fast float %1570, %1538
  %1572 = fadd fast float %1571, %1566
  %1573 = fsub fast float %1569, %1572
  %1574 = fmul fast float %1573, %1537
  %1575 = fadd fast float %1572, -5.000000e-01
  %1576 = fadd fast float %1575, %1574
  %1577 = fmul fast float %1495, %1576
  %1578 = fsub fast float %1496, %1397
  %1579 = fadd fast float %1578, %1405
  %1580 = fsub fast float %1577, %1397
  %1581 = fadd fast float %1580, %1408
  %1582 = call float @dx.op.dot3.f32(i32 55, float %1403, float %1404, float %1579, float %1403, float %1404, float %1579)  ; Dot3(ax,ay,az,bx,by,bz)
  %1583 = call float @dx.op.unary.f32(i32 25, float %1582)  ; Rsqrt(value)
  %1584 = fmul fast float %1583, %1403
  %1585 = fmul fast float %1583, %1404
  %1586 = fmul fast float %1583, %1579
  %1587 = call float @dx.op.dot3.f32(i32 55, float %1406, float %1407, float %1581, float %1406, float %1407, float %1581)  ; Dot3(ax,ay,az,bx,by,bz)
  %1588 = call float @dx.op.unary.f32(i32 25, float %1587)  ; Rsqrt(value)
  %1589 = fmul fast float %1588, %1406
  %1590 = fmul fast float %1588, %1407
  %1591 = fmul fast float %1581, %1588
  %1592 = fmul fast float %1591, %1585
  %1593 = fmul fast float %1590, %1586
  %1594 = fsub fast float %1592, %1593
  %1595 = fmul fast float %1589, %1586
  %1596 = fmul fast float %1591, %1584
  %1597 = fsub fast float %1595, %1596
  %1598 = fmul fast float %1590, %1584
  %1599 = fmul fast float %1589, %1585
  %1600 = fsub fast float %1598, %1599
  %1601 = call float @dx.op.dot3.f32(i32 55, float %1594, float %1597, float %1600, float %1594, float %1597, float %1600)  ; Dot3(ax,ay,az,bx,by,bz)
  %1602 = call float @dx.op.unary.f32(i32 25, float %1601)  ; Rsqrt(value)
  %1603 = fmul fast float %1594, %1602
  %1604 = fmul fast float %1597, %1602
  %1605 = fmul fast float %1600, %1602
  br label %1621

; <label>:1606                                    ; preds = %1386
  %1607 = select i1 %1261, float 0.000000e+00, float %1390
  %1608 = select i1 %1261, float 0.000000e+00, float %1389
  %1609 = fmul fast float %1398, %1161
  %1610 = fmul fast float %1398, %1162
  %1611 = fmul fast float %1608, %1163
  %1612 = fmul fast float %1607, %1163
  %1613 = fadd fast float %1609, %1611
  %1614 = fadd fast float %1610, %1612
  %1615 = fmul fast float %1398, %1163
  %1616 = call float @dx.op.dot3.f32(i32 55, float %1613, float %1614, float %1615, float %1613, float %1614, float %1615)  ; Dot3(ax,ay,az,bx,by,bz)
  %1617 = call float @dx.op.unary.f32(i32 25, float %1616)  ; Rsqrt(value)
  %1618 = fmul fast float %1617, %1613
  %1619 = fmul fast float %1617, %1614
  %1620 = fmul fast float %1617, %1615
  br label %1621

; <label>:1621                                    ; preds = %1606, %1402, %1183
  %1622 = phi float [ %1396, %1402 ], [ %1396, %1606 ], [ 0.000000e+00, %1183 ]
  %1623 = phi float [ %1397, %1402 ], [ %1397, %1606 ], [ 0.000000e+00, %1183 ]
  %1624 = phi float [ %1603, %1402 ], [ %1618, %1606 ], [ %1161, %1183 ]
  %1625 = phi float [ %1604, %1402 ], [ %1619, %1606 ], [ %1162, %1183 ]
  %1626 = phi float [ %1605, %1402 ], [ %1620, %1606 ], [ %1163, %1183 ]
  %1627 = fadd fast float %1622, %1176
  %1628 = fadd fast float %1622, %1177
  %1629 = fadd fast float %1623, %1179
  br label %1630

; <label>:1630                                    ; preds = %1621, %983
  %1631 = phi float [ %1627, %1621 ], [ %1176, %983 ]
  %1632 = phi float [ %1628, %1621 ], [ %1177, %983 ]
  %1633 = phi float [ %1629, %1621 ], [ %1179, %983 ]
  %1634 = phi float [ %1624, %1621 ], [ %1161, %983 ]
  %1635 = phi float [ %1625, %1621 ], [ %1162, %983 ]
  %1636 = phi float [ %1626, %1621 ], [ %1163, %983 ]
  %1637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1638 = extractvalue %dx.types.CBufRet.f32 %1637, 0
  %1639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1640 = extractvalue %dx.types.CBufRet.f32 %1639, 0
  %1641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1642 = extractvalue %dx.types.CBufRet.f32 %1641, 0
  %1643 = extractvalue %dx.types.CBufRet.f32 %1637, 1
  %1644 = extractvalue %dx.types.CBufRet.f32 %1639, 1
  %1645 = extractvalue %dx.types.CBufRet.f32 %1641, 1
  %1646 = extractvalue %dx.types.CBufRet.f32 %1637, 2
  %1647 = extractvalue %dx.types.CBufRet.f32 %1639, 2
  %1648 = extractvalue %dx.types.CBufRet.f32 %1641, 2
  %1649 = extractvalue %dx.types.CBufRet.f32 %1637, 3
  %1650 = extractvalue %dx.types.CBufRet.f32 %1639, 3
  %1651 = extractvalue %dx.types.CBufRet.f32 %1641, 3
  %1652 = fadd fast float %1649, %1631
  %1653 = fadd fast float %1650, %1632
  %1654 = fadd fast float %1651, %1633
  %1655 = fmul fast float %1652, %1638
  %1656 = call float @dx.op.tertiary.f32(i32 46, float %1653, float %1643, float %1655)  ; FMad(a,b,c)
  %1657 = call float @dx.op.tertiary.f32(i32 46, float %1654, float %1646, float %1656)  ; FMad(a,b,c)
  %1658 = fmul fast float %1652, %1640
  %1659 = call float @dx.op.tertiary.f32(i32 46, float %1653, float %1644, float %1658)  ; FMad(a,b,c)
  %1660 = call float @dx.op.tertiary.f32(i32 46, float %1654, float %1647, float %1659)  ; FMad(a,b,c)
  %1661 = fmul fast float %1652, %1642
  %1662 = call float @dx.op.tertiary.f32(i32 46, float %1653, float %1645, float %1661)  ; FMad(a,b,c)
  %1663 = call float @dx.op.tertiary.f32(i32 46, float %1654, float %1648, float %1662)  ; FMad(a,b,c)
  %1664 = fsub fast float %1657, %1649
  %1665 = fsub fast float %1660, %1650
  %1666 = fsub fast float %1663, %1651
  %1667 = fmul fast float %1638, %1634
  %1668 = call float @dx.op.tertiary.f32(i32 46, float %1635, float %1643, float %1667)  ; FMad(a,b,c)
  %1669 = call float @dx.op.tertiary.f32(i32 46, float %1636, float %1646, float %1668)  ; FMad(a,b,c)
  %1670 = fmul fast float %1640, %1634
  %1671 = call float @dx.op.tertiary.f32(i32 46, float %1635, float %1644, float %1670)  ; FMad(a,b,c)
  %1672 = call float @dx.op.tertiary.f32(i32 46, float %1636, float %1647, float %1671)  ; FMad(a,b,c)
  %1673 = fmul fast float %1642, %1634
  %1674 = call float @dx.op.tertiary.f32(i32 46, float %1635, float %1645, float %1673)  ; FMad(a,b,c)
  %1675 = call float @dx.op.tertiary.f32(i32 46, float %1636, float %1648, float %1674)  ; FMad(a,b,c)
  %1676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 208)  ; CBufferLoadLegacy(handle,regIndex)
  %1677 = extractvalue %dx.types.CBufRet.f32 %1676, 2
  %1678 = fadd fast float %1666, %1677
  %1679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1680 = extractvalue %dx.types.CBufRet.f32 %1679, 0
  %1681 = extractvalue %dx.types.CBufRet.f32 %1679, 1
  %1682 = extractvalue %dx.types.CBufRet.f32 %1679, 2
  %1683 = fsub fast float %1664, %1680
  %1684 = fsub fast float %1665, %1681
  %1685 = fsub fast float %1678, %1682
  %1686 = fmul fast float %83, 6.553500e+04
  %1687 = call float @dx.op.unary.f32(i32 26, float %1686)  ; Round_ne(value)
  %1688 = fptosi float %1687 to i32
  %1689 = call i32 @dx.op.binary.i32(i32 37, i32 %1688, i32 0)  ; IMax(a,b)
  %1690 = call i32 @dx.op.binary.i32(i32 38, i32 %1689, i32 65535)  ; IMin(a,b)
  %1691 = fmul fast float %86, 6.553500e+04
  %1692 = call float @dx.op.unary.f32(i32 26, float %1691)  ; Round_ne(value)
  %1693 = fptosi float %1692 to i32
  %1694 = call i32 @dx.op.binary.i32(i32 37, i32 %1693, i32 0)  ; IMax(a,b)
  %1695 = call i32 @dx.op.binary.i32(i32 38, i32 %1694, i32 65535)  ; IMin(a,b)
  %1696 = shl i32 %1695, 16
  %1697 = or i32 %1696, %1690
  %1698 = call float @dx.op.unary.f32(i32 6, float %1669)  ; FAbs(value)
  %1699 = call float @dx.op.unary.f32(i32 6, float %1672)  ; FAbs(value)
  %1700 = fadd fast float %1699, %1698
  %1701 = call float @dx.op.unary.f32(i32 6, float %1675)  ; FAbs(value)
  %1702 = fadd fast float %1700, %1701
  %1703 = fdiv fast float %1669, %1702
  %1704 = fdiv fast float %1672, %1702
  %1705 = fdiv fast float %1675, %1702
  %1706 = fcmp fast oge float %1705, 0.000000e+00
  %1707 = call float @dx.op.unary.f32(i32 6, float %1704)  ; FAbs(value)
  %1708 = call float @dx.op.unary.f32(i32 6, float %1703)  ; FAbs(value)
  %1709 = fsub fast float 1.000000e+00, %1707
  %1710 = fsub fast float 1.000000e+00, %1708
  %1711 = fcmp fast oge float %1703, 0.000000e+00
  %1712 = select i1 %1711, float 1.000000e+00, float -1.000000e+00
  %1713 = fcmp fast oge float %1704, 0.000000e+00
  %1714 = select i1 %1713, float 1.000000e+00, float -1.000000e+00
  %1715 = fmul fast float %1709, %1712
  %1716 = fmul fast float %1710, %1714
  %1717 = select i1 %1706, float %1703, float %1715
  %1718 = select i1 %1706, float %1704, float %1716
  %1719 = fmul fast float %1717, 1.275000e+02
  %1720 = fmul fast float %1718, 1.275000e+02
  %1721 = fadd fast float %1719, 1.275000e+02
  %1722 = fadd fast float %1720, 1.275000e+02
  %1723 = call float @dx.op.unary.f32(i32 26, float %1721)  ; Round_ne(value)
  %1724 = call float @dx.op.unary.f32(i32 26, float %1722)  ; Round_ne(value)
  %1725 = fptoui float %1723 to i32
  %1726 = fptoui float %1724 to i32
  %1727 = shl i32 %1726, 8
  %1728 = shl i32 %1014, 16
  %1729 = or i32 %1725, %1728
  %1730 = or i32 %1729, %1727
  %1731 = mul i32 %31, 20
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %1731, i32 undef, float %1683, float %1684, float %1685, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1732 = add i32 %1731, 12
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1732, i32 undef, i32 %1697, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1733 = add i32 %1731, 16
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1733, i32 undef, i32 %1730, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1738

; <label>:1734                                    ; preds = %215
  %1735 = mul i32 %31, 20
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %1735, i32 undef, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1736 = add i32 %1735, 12
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1736, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1737 = add i32 %1735, 16
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1737, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1738

; <label>:1738                                    ; preds = %1734, %1630, %0
  %1739 = phi float [ %1683, %1630 ], [ 0.000000e+00, %1734 ], [ 0.000000e+00, %0 ]
  %1740 = phi float [ %1684, %1630 ], [ 0.000000e+00, %1734 ], [ 0.000000e+00, %0 ]
  %1741 = phi float [ %1685, %1630 ], [ 0.000000e+00, %1734 ], [ 0.000000e+00, %0 ]
  %1742 = phi i1 [ true, %1630 ], [ false, %1734 ], [ false, %0 ]
  %1743 = phi i32 [ %1037, %1630 ], [ %219, %1734 ], [ 0, %0 ]
  %1744 = fadd fast float %1739, 1.310720e+05
  %1745 = fadd fast float %1740, 1.310720e+05
  %1746 = fadd fast float %1741, 1.310720e+05
  %1747 = call float @dx.op.binary.f32(i32 35, float %1744, float 0.000000e+00)  ; FMax(a,b)
  %1748 = call float @dx.op.binary.f32(i32 35, float %1745, float 0.000000e+00)  ; FMax(a,b)
  %1749 = call float @dx.op.binary.f32(i32 35, float %1746, float 0.000000e+00)  ; FMax(a,b)
  %1750 = bitcast float %1747 to i32
  %1751 = bitcast float %1748 to i32
  %1752 = bitcast float %1749 to i32
  %1753 = select i1 %1742, i32 %1750, i32 -1
  %1754 = select i1 %1742, i32 %1751, i32 -1
  %1755 = select i1 %1742, i32 %1752, i32 -1
  %1756 = select i1 %1742, i32 %1750, i32 0
  %1757 = select i1 %1742, i32 %1751, i32 0
  %1758 = select i1 %1742, i32 %1752, i32 0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1759 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %21
  store i32 %1753, i32 addrspace(3)* %1759, align 4, !tbaa !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1760 = and i32 %21, 63
  %1761 = icmp ult i32 %1760, 32
  br i1 %1761, label %1762, label %1768, !dx.controlflow.hints !54

; <label>:1762                                    ; preds = %1738
  %1763 = add i32 %21, 32
  %1764 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1763
  %1765 = load i32, i32 addrspace(3)* %1764, align 4, !tbaa !52
  %1766 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1767 = call i32 @dx.op.binary.i32(i32 40, i32 %1766, i32 %1765)  ; UMin(a,b)
  store i32 %1767, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1768

; <label>:1768                                    ; preds = %1762, %1738
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1769 = icmp ult i32 %1760, 16
  br i1 %1769, label %1770, label %1776, !dx.controlflow.hints !55

; <label>:1770                                    ; preds = %1768
  %1771 = add i32 %21, 16
  %1772 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1771
  %1773 = load i32, i32 addrspace(3)* %1772, align 4, !tbaa !52
  %1774 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1775 = call i32 @dx.op.binary.i32(i32 40, i32 %1774, i32 %1773)  ; UMin(a,b)
  store i32 %1775, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1776

; <label>:1776                                    ; preds = %1770, %1768
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1777 = icmp ult i32 %1760, 8
  br i1 %1777, label %1778, label %1784, !dx.controlflow.hints !56

; <label>:1778                                    ; preds = %1776
  %1779 = add i32 %21, 8
  %1780 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1779
  %1781 = load i32, i32 addrspace(3)* %1780, align 4, !tbaa !52
  %1782 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1783 = call i32 @dx.op.binary.i32(i32 40, i32 %1782, i32 %1781)  ; UMin(a,b)
  store i32 %1783, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1784

; <label>:1784                                    ; preds = %1778, %1776
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1785 = icmp ult i32 %1760, 4
  br i1 %1785, label %1786, label %1792, !dx.controlflow.hints !57

; <label>:1786                                    ; preds = %1784
  %1787 = add i32 %21, 4
  %1788 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1787
  %1789 = load i32, i32 addrspace(3)* %1788, align 4, !tbaa !52
  %1790 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1791 = call i32 @dx.op.binary.i32(i32 40, i32 %1790, i32 %1789)  ; UMin(a,b)
  store i32 %1791, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1792

; <label>:1792                                    ; preds = %1786, %1784
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1793 = icmp ult i32 %1760, 2
  br i1 %1793, label %1794, label %1800, !dx.controlflow.hints !58

; <label>:1794                                    ; preds = %1792
  %1795 = add i32 %21, 2
  %1796 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1795
  %1797 = load i32, i32 addrspace(3)* %1796, align 4, !tbaa !52
  %1798 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1799 = call i32 @dx.op.binary.i32(i32 40, i32 %1798, i32 %1797)  ; UMin(a,b)
  store i32 %1799, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1800

; <label>:1800                                    ; preds = %1794, %1792
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1801 = icmp eq i32 %1760, 0
  br i1 %1801, label %1802, label %1808, !dx.controlflow.hints !59

; <label>:1802                                    ; preds = %1800
  %1803 = add i32 %21, 1
  %1804 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1803
  %1805 = load i32, i32 addrspace(3)* %1804, align 4, !tbaa !52
  %1806 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1807 = call i32 @dx.op.binary.i32(i32 40, i32 %1806, i32 %1805)  ; UMin(a,b)
  store i32 %1807, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1808

; <label>:1808                                    ; preds = %1802, %1800
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1809 = and i32 %21, -64
  %1810 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1809
  %1811 = load i32, i32 addrspace(3)* %1810, align 4, !tbaa !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1754, i32 addrspace(3)* %1759, align 4, !tbaa !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1761, label %1812, label %1818, !dx.controlflow.hints !54

; <label>:1812                                    ; preds = %1808
  %1813 = add i32 %21, 32
  %1814 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1813
  %1815 = load i32, i32 addrspace(3)* %1814, align 4, !tbaa !52
  %1816 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1817 = call i32 @dx.op.binary.i32(i32 40, i32 %1816, i32 %1815)  ; UMin(a,b)
  store i32 %1817, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1818

; <label>:1818                                    ; preds = %1812, %1808
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1769, label %1819, label %1825, !dx.controlflow.hints !55

; <label>:1819                                    ; preds = %1818
  %1820 = add i32 %21, 16
  %1821 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1820
  %1822 = load i32, i32 addrspace(3)* %1821, align 4, !tbaa !52
  %1823 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1824 = call i32 @dx.op.binary.i32(i32 40, i32 %1823, i32 %1822)  ; UMin(a,b)
  store i32 %1824, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1825

; <label>:1825                                    ; preds = %1819, %1818
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1777, label %1826, label %1832, !dx.controlflow.hints !56

; <label>:1826                                    ; preds = %1825
  %1827 = add i32 %21, 8
  %1828 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1827
  %1829 = load i32, i32 addrspace(3)* %1828, align 4, !tbaa !52
  %1830 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1831 = call i32 @dx.op.binary.i32(i32 40, i32 %1830, i32 %1829)  ; UMin(a,b)
  store i32 %1831, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1832

; <label>:1832                                    ; preds = %1826, %1825
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1785, label %1833, label %1839, !dx.controlflow.hints !57

; <label>:1833                                    ; preds = %1832
  %1834 = add i32 %21, 4
  %1835 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1834
  %1836 = load i32, i32 addrspace(3)* %1835, align 4, !tbaa !52
  %1837 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1838 = call i32 @dx.op.binary.i32(i32 40, i32 %1837, i32 %1836)  ; UMin(a,b)
  store i32 %1838, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1839

; <label>:1839                                    ; preds = %1833, %1832
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1793, label %1840, label %1846, !dx.controlflow.hints !58

; <label>:1840                                    ; preds = %1839
  %1841 = add i32 %21, 2
  %1842 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1841
  %1843 = load i32, i32 addrspace(3)* %1842, align 4, !tbaa !52
  %1844 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1845 = call i32 @dx.op.binary.i32(i32 40, i32 %1844, i32 %1843)  ; UMin(a,b)
  store i32 %1845, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1846

; <label>:1846                                    ; preds = %1840, %1839
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1801, label %1847, label %1853, !dx.controlflow.hints !59

; <label>:1847                                    ; preds = %1846
  %1848 = add i32 %21, 1
  %1849 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1848
  %1850 = load i32, i32 addrspace(3)* %1849, align 4, !tbaa !52
  %1851 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1852 = call i32 @dx.op.binary.i32(i32 40, i32 %1851, i32 %1850)  ; UMin(a,b)
  store i32 %1852, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1853

; <label>:1853                                    ; preds = %1847, %1846
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1854 = load i32, i32 addrspace(3)* %1810, align 4, !tbaa !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1755, i32 addrspace(3)* %1759, align 4, !tbaa !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1761, label %1855, label %1861, !dx.controlflow.hints !54

; <label>:1855                                    ; preds = %1853
  %1856 = add i32 %21, 32
  %1857 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1856
  %1858 = load i32, i32 addrspace(3)* %1857, align 4, !tbaa !52
  %1859 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1860 = call i32 @dx.op.binary.i32(i32 40, i32 %1859, i32 %1858)  ; UMin(a,b)
  store i32 %1860, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1861

; <label>:1861                                    ; preds = %1855, %1853
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1769, label %1862, label %1868, !dx.controlflow.hints !55

; <label>:1862                                    ; preds = %1861
  %1863 = add i32 %21, 16
  %1864 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1863
  %1865 = load i32, i32 addrspace(3)* %1864, align 4, !tbaa !52
  %1866 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1867 = call i32 @dx.op.binary.i32(i32 40, i32 %1866, i32 %1865)  ; UMin(a,b)
  store i32 %1867, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1868

; <label>:1868                                    ; preds = %1862, %1861
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1777, label %1869, label %1875, !dx.controlflow.hints !56

; <label>:1869                                    ; preds = %1868
  %1870 = add i32 %21, 8
  %1871 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1870
  %1872 = load i32, i32 addrspace(3)* %1871, align 4, !tbaa !52
  %1873 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1874 = call i32 @dx.op.binary.i32(i32 40, i32 %1873, i32 %1872)  ; UMin(a,b)
  store i32 %1874, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1875

; <label>:1875                                    ; preds = %1869, %1868
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1785, label %1876, label %1882, !dx.controlflow.hints !57

; <label>:1876                                    ; preds = %1875
  %1877 = add i32 %21, 4
  %1878 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1877
  %1879 = load i32, i32 addrspace(3)* %1878, align 4, !tbaa !52
  %1880 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1881 = call i32 @dx.op.binary.i32(i32 40, i32 %1880, i32 %1879)  ; UMin(a,b)
  store i32 %1881, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1882

; <label>:1882                                    ; preds = %1876, %1875
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1793, label %1883, label %1889, !dx.controlflow.hints !58

; <label>:1883                                    ; preds = %1882
  %1884 = add i32 %21, 2
  %1885 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1884
  %1886 = load i32, i32 addrspace(3)* %1885, align 4, !tbaa !52
  %1887 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1888 = call i32 @dx.op.binary.i32(i32 40, i32 %1887, i32 %1886)  ; UMin(a,b)
  store i32 %1888, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1889

; <label>:1889                                    ; preds = %1883, %1882
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1801, label %1890, label %1896, !dx.controlflow.hints !59

; <label>:1890                                    ; preds = %1889
  %1891 = add i32 %21, 1
  %1892 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1891
  %1893 = load i32, i32 addrspace(3)* %1892, align 4, !tbaa !52
  %1894 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1895 = call i32 @dx.op.binary.i32(i32 40, i32 %1894, i32 %1893)  ; UMin(a,b)
  store i32 %1895, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1896

; <label>:1896                                    ; preds = %1890, %1889
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1897 = load i32, i32 addrspace(3)* %1810, align 4, !tbaa !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1756, i32 addrspace(3)* %1759, align 4, !tbaa !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1761, label %1898, label %1904, !dx.controlflow.hints !60

; <label>:1898                                    ; preds = %1896
  %1899 = add i32 %21, 32
  %1900 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1899
  %1901 = load i32, i32 addrspace(3)* %1900, align 4, !tbaa !52
  %1902 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1903 = call i32 @dx.op.binary.i32(i32 39, i32 %1902, i32 %1901)  ; UMax(a,b)
  store i32 %1903, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1904

; <label>:1904                                    ; preds = %1898, %1896
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1769, label %1905, label %1911, !dx.controlflow.hints !61

; <label>:1905                                    ; preds = %1904
  %1906 = add i32 %21, 16
  %1907 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1906
  %1908 = load i32, i32 addrspace(3)* %1907, align 4, !tbaa !52
  %1909 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1910 = call i32 @dx.op.binary.i32(i32 39, i32 %1909, i32 %1908)  ; UMax(a,b)
  store i32 %1910, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1911

; <label>:1911                                    ; preds = %1905, %1904
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1777, label %1912, label %1918, !dx.controlflow.hints !62

; <label>:1912                                    ; preds = %1911
  %1913 = add i32 %21, 8
  %1914 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1913
  %1915 = load i32, i32 addrspace(3)* %1914, align 4, !tbaa !52
  %1916 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1917 = call i32 @dx.op.binary.i32(i32 39, i32 %1916, i32 %1915)  ; UMax(a,b)
  store i32 %1917, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1918

; <label>:1918                                    ; preds = %1912, %1911
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1785, label %1919, label %1925, !dx.controlflow.hints !63

; <label>:1919                                    ; preds = %1918
  %1920 = add i32 %21, 4
  %1921 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1920
  %1922 = load i32, i32 addrspace(3)* %1921, align 4, !tbaa !52
  %1923 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1924 = call i32 @dx.op.binary.i32(i32 39, i32 %1923, i32 %1922)  ; UMax(a,b)
  store i32 %1924, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1925

; <label>:1925                                    ; preds = %1919, %1918
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1793, label %1926, label %1932, !dx.controlflow.hints !64

; <label>:1926                                    ; preds = %1925
  %1927 = add i32 %21, 2
  %1928 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1927
  %1929 = load i32, i32 addrspace(3)* %1928, align 4, !tbaa !52
  %1930 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1931 = call i32 @dx.op.binary.i32(i32 39, i32 %1930, i32 %1929)  ; UMax(a,b)
  store i32 %1931, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1932

; <label>:1932                                    ; preds = %1926, %1925
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1801, label %1933, label %1939, !dx.controlflow.hints !65

; <label>:1933                                    ; preds = %1932
  %1934 = add i32 %21, 1
  %1935 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1934
  %1936 = load i32, i32 addrspace(3)* %1935, align 4, !tbaa !52
  %1937 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1938 = call i32 @dx.op.binary.i32(i32 39, i32 %1937, i32 %1936)  ; UMax(a,b)
  store i32 %1938, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1939

; <label>:1939                                    ; preds = %1933, %1932
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1940 = load i32, i32 addrspace(3)* %1810, align 4, !tbaa !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1757, i32 addrspace(3)* %1759, align 4, !tbaa !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1761, label %1941, label %1947, !dx.controlflow.hints !60

; <label>:1941                                    ; preds = %1939
  %1942 = add i32 %21, 32
  %1943 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1942
  %1944 = load i32, i32 addrspace(3)* %1943, align 4, !tbaa !52
  %1945 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1946 = call i32 @dx.op.binary.i32(i32 39, i32 %1945, i32 %1944)  ; UMax(a,b)
  store i32 %1946, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1947

; <label>:1947                                    ; preds = %1941, %1939
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1769, label %1948, label %1954, !dx.controlflow.hints !61

; <label>:1948                                    ; preds = %1947
  %1949 = add i32 %21, 16
  %1950 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1949
  %1951 = load i32, i32 addrspace(3)* %1950, align 4, !tbaa !52
  %1952 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1953 = call i32 @dx.op.binary.i32(i32 39, i32 %1952, i32 %1951)  ; UMax(a,b)
  store i32 %1953, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1954

; <label>:1954                                    ; preds = %1948, %1947
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1777, label %1955, label %1961, !dx.controlflow.hints !62

; <label>:1955                                    ; preds = %1954
  %1956 = add i32 %21, 8
  %1957 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1956
  %1958 = load i32, i32 addrspace(3)* %1957, align 4, !tbaa !52
  %1959 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1960 = call i32 @dx.op.binary.i32(i32 39, i32 %1959, i32 %1958)  ; UMax(a,b)
  store i32 %1960, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1961

; <label>:1961                                    ; preds = %1955, %1954
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1785, label %1962, label %1968, !dx.controlflow.hints !63

; <label>:1962                                    ; preds = %1961
  %1963 = add i32 %21, 4
  %1964 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1963
  %1965 = load i32, i32 addrspace(3)* %1964, align 4, !tbaa !52
  %1966 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1967 = call i32 @dx.op.binary.i32(i32 39, i32 %1966, i32 %1965)  ; UMax(a,b)
  store i32 %1967, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1968

; <label>:1968                                    ; preds = %1962, %1961
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1793, label %1969, label %1975, !dx.controlflow.hints !64

; <label>:1969                                    ; preds = %1968
  %1970 = add i32 %21, 2
  %1971 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1970
  %1972 = load i32, i32 addrspace(3)* %1971, align 4, !tbaa !52
  %1973 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1974 = call i32 @dx.op.binary.i32(i32 39, i32 %1973, i32 %1972)  ; UMax(a,b)
  store i32 %1974, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1975

; <label>:1975                                    ; preds = %1969, %1968
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1801, label %1976, label %1982, !dx.controlflow.hints !65

; <label>:1976                                    ; preds = %1975
  %1977 = add i32 %21, 1
  %1978 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1977
  %1979 = load i32, i32 addrspace(3)* %1978, align 4, !tbaa !52
  %1980 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1981 = call i32 @dx.op.binary.i32(i32 39, i32 %1980, i32 %1979)  ; UMax(a,b)
  store i32 %1981, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1982

; <label>:1982                                    ; preds = %1976, %1975
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1983 = load i32, i32 addrspace(3)* %1810, align 4, !tbaa !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1758, i32 addrspace(3)* %1759, align 4, !tbaa !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1761, label %1984, label %1990, !dx.controlflow.hints !60

; <label>:1984                                    ; preds = %1982
  %1985 = add i32 %21, 32
  %1986 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1985
  %1987 = load i32, i32 addrspace(3)* %1986, align 4, !tbaa !52
  %1988 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1989 = call i32 @dx.op.binary.i32(i32 39, i32 %1988, i32 %1987)  ; UMax(a,b)
  store i32 %1989, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1990

; <label>:1990                                    ; preds = %1984, %1982
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1769, label %1991, label %1997, !dx.controlflow.hints !61

; <label>:1991                                    ; preds = %1990
  %1992 = add i32 %21, 16
  %1993 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1992
  %1994 = load i32, i32 addrspace(3)* %1993, align 4, !tbaa !52
  %1995 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %1996 = call i32 @dx.op.binary.i32(i32 39, i32 %1995, i32 %1994)  ; UMax(a,b)
  store i32 %1996, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %1997

; <label>:1997                                    ; preds = %1991, %1990
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1777, label %1998, label %2004, !dx.controlflow.hints !62

; <label>:1998                                    ; preds = %1997
  %1999 = add i32 %21, 8
  %2000 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1999
  %2001 = load i32, i32 addrspace(3)* %2000, align 4, !tbaa !52
  %2002 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %2003 = call i32 @dx.op.binary.i32(i32 39, i32 %2002, i32 %2001)  ; UMax(a,b)
  store i32 %2003, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %2004

; <label>:2004                                    ; preds = %1998, %1997
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1785, label %2005, label %2011, !dx.controlflow.hints !63

; <label>:2005                                    ; preds = %2004
  %2006 = add i32 %21, 4
  %2007 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2006
  %2008 = load i32, i32 addrspace(3)* %2007, align 4, !tbaa !52
  %2009 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %2010 = call i32 @dx.op.binary.i32(i32 39, i32 %2009, i32 %2008)  ; UMax(a,b)
  store i32 %2010, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %2011

; <label>:2011                                    ; preds = %2005, %2004
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1793, label %2012, label %2018, !dx.controlflow.hints !64

; <label>:2012                                    ; preds = %2011
  %2013 = add i32 %21, 2
  %2014 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2013
  %2015 = load i32, i32 addrspace(3)* %2014, align 4, !tbaa !52
  %2016 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %2017 = call i32 @dx.op.binary.i32(i32 39, i32 %2016, i32 %2015)  ; UMax(a,b)
  store i32 %2017, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %2018

; <label>:2018                                    ; preds = %2012, %2011
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1801, label %2019, label %2025, !dx.controlflow.hints !65

; <label>:2019                                    ; preds = %2018
  %2020 = add i32 %21, 1
  %2021 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2020
  %2022 = load i32, i32 addrspace(3)* %2021, align 4, !tbaa !52
  %2023 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %2024 = call i32 @dx.op.binary.i32(i32 39, i32 %2023, i32 %2022)  ; UMax(a,b)
  store i32 %2024, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %2025

; <label>:2025                                    ; preds = %2019, %2018
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2026 = load i32, i32 addrspace(3)* %1810, align 4, !tbaa !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1743, i32 addrspace(3)* %1759, align 4, !tbaa !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1761, label %2027, label %2033, !dx.controlflow.hints !66

; <label>:2027                                    ; preds = %2025
  %2028 = add i32 %21, 32
  %2029 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2028
  %2030 = load i32, i32 addrspace(3)* %2029, align 4, !tbaa !52
  %2031 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %2032 = or i32 %2031, %2030
  store i32 %2032, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %2033

; <label>:2033                                    ; preds = %2027, %2025
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1769, label %2034, label %2040, !dx.controlflow.hints !67

; <label>:2034                                    ; preds = %2033
  %2035 = add i32 %21, 16
  %2036 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2035
  %2037 = load i32, i32 addrspace(3)* %2036, align 4, !tbaa !52
  %2038 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %2039 = or i32 %2038, %2037
  store i32 %2039, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %2040

; <label>:2040                                    ; preds = %2034, %2033
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1777, label %2041, label %2047, !dx.controlflow.hints !68

; <label>:2041                                    ; preds = %2040
  %2042 = add i32 %21, 8
  %2043 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2042
  %2044 = load i32, i32 addrspace(3)* %2043, align 4, !tbaa !52
  %2045 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %2046 = or i32 %2045, %2044
  store i32 %2046, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %2047

; <label>:2047                                    ; preds = %2041, %2040
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1785, label %2048, label %2054, !dx.controlflow.hints !69

; <label>:2048                                    ; preds = %2047
  %2049 = add i32 %21, 4
  %2050 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2049
  %2051 = load i32, i32 addrspace(3)* %2050, align 4, !tbaa !52
  %2052 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %2053 = or i32 %2052, %2051
  store i32 %2053, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %2054

; <label>:2054                                    ; preds = %2048, %2047
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1793, label %2055, label %2061, !dx.controlflow.hints !70

; <label>:2055                                    ; preds = %2054
  %2056 = add i32 %21, 2
  %2057 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2056
  %2058 = load i32, i32 addrspace(3)* %2057, align 4, !tbaa !52
  %2059 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %2060 = or i32 %2059, %2058
  store i32 %2060, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %2061

; <label>:2061                                    ; preds = %2055, %2054
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1801, label %2062, label %2068, !dx.controlflow.hints !71

; <label>:2062                                    ; preds = %2061
  %2063 = add i32 %21, 1
  %2064 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2063
  %2065 = load i32, i32 addrspace(3)* %2064, align 4, !tbaa !52
  %2066 = load i32, i32 addrspace(3)* %1759, align 4, !tbaa !52
  %2067 = or i32 %2066, %2065
  store i32 %2067, i32 addrspace(3)* %1759, align 4, !tbaa !52
  br label %2068

; <label>:2068                                    ; preds = %2062, %2061
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2069 = icmp eq i32 %21, 0
  br i1 %2069, label %2070, label %2092, !dx.controlflow.hints !72

; <label>:2070                                    ; preds = %2068
  %2071 = load i32, i32 addrspace(3)* getelementptr inbounds ([64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 0), align 4, !tbaa !52
  %2072 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %2073 = extractvalue %dx.types.CBufRet.i32 %2072, 2
  %2074 = add i32 %2073, %22
  %2075 = shl i32 %2074, 2
  %2076 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %2075, i32 undef, i32 undef, i32 %2071)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %2077 = xor i32 %1811, -1
  %2078 = mul i32 %2074, 24
  %2079 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %2078, i32 undef, i32 undef, i32 %2077)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %2080 = xor i32 %1854, -1
  %2081 = or i32 %2078, 4
  %2082 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %2081, i32 undef, i32 undef, i32 %2080)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %2083 = xor i32 %1897, -1
  %2084 = add i32 %2078, 8
  %2085 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %2084, i32 undef, i32 undef, i32 %2083)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %2086 = add i32 %2078, 12
  %2087 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %2086, i32 undef, i32 undef, i32 %1940)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %2088 = add i32 %2078, 16
  %2089 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %2088, i32 undef, i32 undef, i32 %1983)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %2090 = add i32 %2078, 20
  %2091 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %2090, i32 undef, i32 undef, i32 %2026)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %2092

; <label>:2092                                    ; preds = %2070, %2068
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #3

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #3

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #2

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!30}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !16, !20, !26}
!5 = !{!6, !8, !10, !11, !12, !13, !14, !15}
!6 = !{i32 0, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<float>"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !9}
!9 = !{i32 0, i32 14}
!10 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!11 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!12 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!13 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!14 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i32 0, !7}
!15 = !{i32 7, %"class.Texture2DArray<vector<float, 3> >"* undef, !"", i32 0, i32 6, i32 1, i32 7, i32 0, !7}
!16 = !{!17, !18, !19}
!17 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!18 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!19 = !{i32 2, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!20 = !{!21, !22, !23, !24, !25}
!21 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!22 = !{i32 1, %waterTile* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!23 = !{i32 2, %waterTileLod* undef, !"", i32 0, i32 2, i32 1, i32 272, null}
!24 = !{i32 3, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!25 = !{i32 4, %ConstantBufferShallowWater* undef, !"", i32 0, i32 4, i32 1, i32 64, null}
!26 = !{!27, !28, !29}
!27 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!28 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!29 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!30 = !{void ()* @cs_water_tile_process_verts_topdown, !"cs_water_tile_process_verts_topdown", null, !4, !31}
!31 = !{i32 0, i64 272, i32 4, !32}
!32 = !{i32 64, i32 1, i32 1}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = !{!40, !40, i64 0}
!40 = !{!"float", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!44, !46, !47}
!44 = distinct !{!44, !45, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outDisplacement"}
!45 = distinct !{!45, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z"}
!46 = distinct !{!46, !45, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outNormal"}
!47 = distinct !{!47, !45, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outWaveParticleFoamMask"}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = !{!53, !53, i64 0}
!53 = !{!"int", !41, i64 0}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}

