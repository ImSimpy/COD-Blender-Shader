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
; shader hash: 3417cbd702f5d0d96f6ef6e0bedeccaa
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

define void @cs_water_tile_process_verts() {
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
  br i1 %26, label %32, label %1906, !dx.controlflow.hints !33

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
  %43 = lshr i32 %38, 14
  %44 = and i32 %43, 15
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 %44)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 2
  %47 = and i32 %41, 65535
  %48 = uitofp i32 %47 to float
  %49 = fmul fast float %48, 0x3EF0000000000000
  %50 = lshr i32 %41, 16
  %51 = uitofp i32 %50 to float
  %52 = fmul fast float %51, 0x3EF0000000000000
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 2
  %55 = fmul fast float %49, %54
  %56 = fmul fast float %52, %54
  %57 = mul nuw nsw i32 %42, 148
  %58 = add nuw nsw i32 %57, 4
  %59 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %58, i32 undef)  ; BufferLoad(srv,index,wot)
  %60 = extractvalue %dx.types.ResRet.f32 %59, 0
  %61 = add nuw nsw i32 %57, 8
  %62 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %61, i32 undef)  ; BufferLoad(srv,index,wot)
  %63 = extractvalue %dx.types.ResRet.f32 %62, 0
  %64 = add nuw nsw i32 %57, 36
  %65 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %64, i32 undef)  ; BufferLoad(srv,index,wot)
  %66 = extractvalue %dx.types.ResRet.f32 %65, 0
  %67 = add nuw nsw i32 %57, 60
  %68 = add nuw nsw i32 %57, 92
  %69 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %68, i32 undef)  ; BufferLoad(srv,index,wot)
  %70 = extractvalue %dx.types.ResRet.i32 %69, 0
  %71 = add nuw nsw i32 %57, 116
  %72 = urem i32 %25, 17
  %73 = udiv i32 %25, 17
  %74 = fmul fast float %46, 6.250000e-02
  %75 = fadd fast float %60, %55
  %76 = uitofp i32 %72 to float
  %77 = fmul fast float %76, %74
  %78 = fadd fast float %75, %77
  %79 = fadd fast float %63, %56
  %80 = uitofp i32 %73 to float
  %81 = fmul fast float %80, %74
  %82 = fadd fast float %79, %81
  %83 = lshr i32 %38, 19
  %84 = and i32 %83, 1
  %85 = and i32 %38, 262144
  %86 = icmp ne i32 %85, 0
  %87 = select i1 %86, float -1.000000e+00, float -0.000000e+00
  %88 = add nuw nsw i32 %44, %84
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 %88)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 0
  %91 = extractvalue %dx.types.CBufRet.f32 %89, 1
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %94 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %95 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %96 = fsub fast float %78, %93
  %97 = fsub fast float %82, %94
  %98 = fmul fast float %96, %96
  %99 = fmul fast float %97, %97
  %100 = fmul fast float %95, %95
  %101 = fadd fast float %99, %100
  %102 = fadd fast float %101, %98
  %103 = call float @dx.op.unary.f32(i32 24, float %102)  ; Sqrt(value)
  %104 = fsub fast float %103, %90
  %105 = fmul fast float %104, %91
  %106 = call float @dx.op.unary.f32(i32 7, float %105)  ; Saturate(value)
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %109 = fadd fast float %106, %87
  %110 = fsub fast float %109, %108
  %111 = call float @dx.op.unary.f32(i32 7, float %110)  ; Saturate(value)
  %112 = fmul fast float %76, 5.000000e-01
  %113 = fmul fast float %80, 5.000000e-01
  %114 = call float @dx.op.unary.f32(i32 22, float %112)  ; Frc(value)
  %115 = call float @dx.op.unary.f32(i32 22, float %113)  ; Frc(value)
  %116 = fmul fast float %46, 1.250000e-01
  %117 = fmul fast float %111, %116
  %118 = fmul fast float %117, %114
  %119 = fmul fast float %117, %115
  %120 = fsub fast float %78, %118
  %121 = fsub fast float %82, %119
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 0
  %124 = fmul fast float %123, %103
  %125 = extractvalue %dx.types.CBufRet.f32 %122, 1
  %126 = fadd fast float %124, %125
  %127 = call float @dx.op.unary.f32(i32 7, float %126)  ; Saturate(value)
  %128 = extractvalue %dx.types.CBufRet.f32 %122, 2
  %129 = fmul fast float %128, %103
  %130 = extractvalue %dx.types.CBufRet.f32 %122, 3
  %131 = fadd fast float %129, %130
  %132 = call float @dx.op.unary.f32(i32 7, float %131)  ; Saturate(value)
  %133 = fsub fast float %120, %60
  %134 = extractvalue %dx.types.CBufRet.f32 %53, 3
  %135 = fmul fast float %134, %133
  %136 = fsub fast float %121, %63
  %137 = fmul fast float %134, %136
  %138 = fsub fast float 1.000000e+00, %137
  %139 = fmul fast float %74, %134
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %142 = fmul fast float %139, %141
  %143 = call float @dx.op.unary.f32(i32 23, float %142)  ; Log(value)
  %144 = fadd fast float %143, %111
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 3
  %147 = fadd fast float %144, %146
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 3
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %151 = call float @dx.op.binary.f32(i32 35, float %147, float %150)  ; FMax(a,b)
  %152 = call float @dx.op.binary.f32(i32 36, float %151, float %149)  ; FMin(a,b)
  %153 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %154 = fadd fast float %153, %152
  %155 = add i32 %70, 0
  %156 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %155, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %157 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %156, i32 0)  ; GetDimensions(handle,mipLevel)
  %158 = extractvalue %dx.types.Dimensions %157, 0
  %159 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %158)  ; FirstbitLo(value)
  %160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.i32 %160, 1
  %162 = sub nsw i32 %161, %159
  %163 = sitofp i32 %162 to float
  %164 = fsub fast float %154, %163
  %165 = call float @dx.op.binary.f32(i32 35, float %164, float 0.000000e+00)  ; FMax(a,b)
  %166 = extractvalue %dx.types.CBufRet.i32 %160, 0
  %167 = and i32 %166, 128
  %168 = icmp ne i32 %167, 0
  %169 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 201)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.i32 %169, 2
  %171 = icmp ne i32 %170, %70
  %172 = and i1 %171, %168
  br i1 %172, label %173, label %361, !dx.controlflow.hints !34

; <label>:173                                     ; preds = %32
  %174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %156, %dx.types.Handle %12, float %135, float %138, float %66, float undef, i32 0, i32 0, i32 undef, float %165)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %175 = extractvalue %dx.types.ResRet.f32 %174, 0
  %176 = fcmp fast ogt float %175, 0x3FE0101020000000
  %177 = zext i1 %176 to i32
  br label %178

; <label>:178                                     ; preds = %178, %173
  %179 = phi i32 [ %177, %173 ], [ %234, %178 ]
  %180 = phi i32 [ -1, %173 ], [ %235, %178 ]
  %181 = add nsw i32 %180, %72
  %182 = call i32 @dx.op.binary.i32(i32 37, i32 %181, i32 0)  ; IMax(a,b)
  %183 = call i32 @dx.op.binary.i32(i32 38, i32 %182, i32 16)  ; IMin(a,b)
  %184 = sitofp i32 %183 to float
  %185 = add nsw i32 %73, -1
  %186 = call i32 @dx.op.binary.i32(i32 37, i32 %185, i32 0)  ; IMax(a,b)
  %187 = call i32 @dx.op.binary.i32(i32 38, i32 %186, i32 16)  ; IMin(a,b)
  %188 = sitofp i32 %187 to float
  %189 = fmul fast float %184, %74
  %190 = fadd fast float %75, %189
  %191 = fmul fast float %188, %74
  %192 = fadd fast float %79, %191
  %193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.f32 %193, 0
  %195 = extractvalue %dx.types.CBufRet.f32 %193, 1
  %196 = extractvalue %dx.types.CBufRet.f32 %193, 2
  %197 = fsub fast float %190, %194
  %198 = fsub fast float %192, %195
  %199 = fmul fast float %197, %197
  %200 = fmul fast float %198, %198
  %201 = fmul fast float %196, %196
  %202 = fadd fast float %199, %201
  %203 = fadd fast float %202, %200
  %204 = call float @dx.op.unary.f32(i32 24, float %203)  ; Sqrt(value)
  %205 = fsub fast float %204, %90
  %206 = fmul fast float %205, %91
  %207 = call float @dx.op.unary.f32(i32 7, float %206)  ; Saturate(value)
  %208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.f32 %208, 2
  %210 = fadd fast float %207, %87
  %211 = fsub fast float %210, %209
  %212 = call float @dx.op.unary.f32(i32 7, float %211)  ; Saturate(value)
  %213 = fmul fast float %184, 5.000000e-01
  %214 = fmul fast float %188, 5.000000e-01
  %215 = call float @dx.op.unary.f32(i32 22, float %213)  ; Frc(value)
  %216 = call float @dx.op.unary.f32(i32 22, float %214)  ; Frc(value)
  %217 = fmul fast float %212, %116
  %218 = fmul fast float %217, %215
  %219 = fmul fast float %217, %216
  %220 = fsub fast float %190, %60
  %221 = fsub fast float %220, %218
  %222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.f32 %222, 3
  %224 = fmul fast float %221, %223
  %225 = fsub fast float %192, %63
  %226 = fsub fast float %225, %219
  %227 = fmul fast float %226, %223
  %228 = fsub fast float 1.000000e+00, %227
  %229 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %156, %dx.types.Handle %12, float %224, float %228, float %66, float undef, i32 0, i32 0, i32 undef, float %165)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %230 = extractvalue %dx.types.ResRet.f32 %229, 0
  %231 = fcmp fast ogt float %230, 0x3FE0101020000000
  %232 = icmp ne i32 %179, 0
  %233 = or i1 %232, %231
  %234 = zext i1 %233 to i32
  %235 = add nsw i32 %180, 1
  %236 = icmp eq i32 %235, 2
  br i1 %236, label %237, label %178

; <label>:237                                     ; preds = %178
  br label %238

; <label>:238                                     ; preds = %296, %237
  %239 = phi i32 [ %297, %296 ], [ %234, %237 ]
  %240 = phi i32 [ %298, %296 ], [ -1, %237 ]
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %296, label %242, !dx.controlflow.hints !35

; <label>:242                                     ; preds = %238
  %243 = add nsw i32 %240, %72
  %244 = call i32 @dx.op.binary.i32(i32 37, i32 %243, i32 0)  ; IMax(a,b)
  %245 = call i32 @dx.op.binary.i32(i32 38, i32 %244, i32 16)  ; IMin(a,b)
  %246 = sitofp i32 %245 to float
  %247 = call i32 @dx.op.binary.i32(i32 37, i32 %73, i32 0)  ; IMax(a,b)
  %248 = call i32 @dx.op.binary.i32(i32 38, i32 %247, i32 16)  ; IMin(a,b)
  %249 = sitofp i32 %248 to float
  %250 = fmul fast float %246, %74
  %251 = fadd fast float %75, %250
  %252 = fmul fast float %249, %74
  %253 = fadd fast float %79, %252
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 0
  %256 = extractvalue %dx.types.CBufRet.f32 %254, 1
  %257 = extractvalue %dx.types.CBufRet.f32 %254, 2
  %258 = fsub fast float %251, %255
  %259 = fsub fast float %253, %256
  %260 = fmul fast float %258, %258
  %261 = fmul fast float %259, %259
  %262 = fmul fast float %257, %257
  %263 = fadd fast float %260, %262
  %264 = fadd fast float %263, %261
  %265 = call float @dx.op.unary.f32(i32 24, float %264)  ; Sqrt(value)
  %266 = fsub fast float %265, %90
  %267 = fmul fast float %266, %91
  %268 = call float @dx.op.unary.f32(i32 7, float %267)  ; Saturate(value)
  %269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.f32 %269, 2
  %271 = fadd fast float %268, %87
  %272 = fsub fast float %271, %270
  %273 = call float @dx.op.unary.f32(i32 7, float %272)  ; Saturate(value)
  %274 = fmul fast float %246, 5.000000e-01
  %275 = fmul fast float %249, 5.000000e-01
  %276 = call float @dx.op.unary.f32(i32 22, float %274)  ; Frc(value)
  %277 = call float @dx.op.unary.f32(i32 22, float %275)  ; Frc(value)
  %278 = fmul fast float %273, %116
  %279 = fmul fast float %278, %276
  %280 = fmul fast float %278, %277
  %281 = fsub fast float %251, %60
  %282 = fsub fast float %281, %279
  %283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.f32 %283, 3
  %285 = fmul fast float %282, %284
  %286 = fsub fast float %253, %63
  %287 = fsub fast float %286, %280
  %288 = fmul fast float %287, %284
  %289 = fsub fast float 1.000000e+00, %288
  %290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %156, %dx.types.Handle %12, float %285, float %289, float %66, float undef, i32 0, i32 0, i32 undef, float %165)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %291 = extractvalue %dx.types.ResRet.f32 %290, 0
  %292 = fcmp fast ogt float %291, 0x3FE0101020000000
  %293 = icmp ne i32 %239, 0
  %294 = or i1 %293, %292
  %295 = zext i1 %294 to i32
  br label %296

; <label>:296                                     ; preds = %242, %238
  %297 = phi i32 [ %239, %238 ], [ %295, %242 ]
  %298 = add nsw i32 %240, 1
  %299 = icmp eq i32 %298, 2
  br i1 %299, label %300, label %238

; <label>:300                                     ; preds = %296
  br label %301

; <label>:301                                     ; preds = %301, %300
  %302 = phi i32 [ %357, %301 ], [ %297, %300 ]
  %303 = phi i32 [ %358, %301 ], [ -1, %300 ]
  %304 = add nsw i32 %303, %72
  %305 = call i32 @dx.op.binary.i32(i32 37, i32 %304, i32 0)  ; IMax(a,b)
  %306 = call i32 @dx.op.binary.i32(i32 38, i32 %305, i32 16)  ; IMin(a,b)
  %307 = sitofp i32 %306 to float
  %308 = add nuw nsw i32 %73, 1
  %309 = call i32 @dx.op.binary.i32(i32 37, i32 %308, i32 0)  ; IMax(a,b)
  %310 = call i32 @dx.op.binary.i32(i32 38, i32 %309, i32 16)  ; IMin(a,b)
  %311 = sitofp i32 %310 to float
  %312 = fmul fast float %307, %74
  %313 = fadd fast float %75, %312
  %314 = fmul fast float %311, %74
  %315 = fadd fast float %79, %314
  %316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %317 = extractvalue %dx.types.CBufRet.f32 %316, 0
  %318 = extractvalue %dx.types.CBufRet.f32 %316, 1
  %319 = extractvalue %dx.types.CBufRet.f32 %316, 2
  %320 = fsub fast float %313, %317
  %321 = fsub fast float %315, %318
  %322 = fmul fast float %320, %320
  %323 = fmul fast float %321, %321
  %324 = fmul fast float %319, %319
  %325 = fadd fast float %322, %324
  %326 = fadd fast float %325, %323
  %327 = call float @dx.op.unary.f32(i32 24, float %326)  ; Sqrt(value)
  %328 = fsub fast float %327, %90
  %329 = fmul fast float %328, %91
  %330 = call float @dx.op.unary.f32(i32 7, float %329)  ; Saturate(value)
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.f32 %331, 2
  %333 = fadd fast float %330, %87
  %334 = fsub fast float %333, %332
  %335 = call float @dx.op.unary.f32(i32 7, float %334)  ; Saturate(value)
  %336 = fmul fast float %307, 5.000000e-01
  %337 = fmul fast float %311, 5.000000e-01
  %338 = call float @dx.op.unary.f32(i32 22, float %336)  ; Frc(value)
  %339 = call float @dx.op.unary.f32(i32 22, float %337)  ; Frc(value)
  %340 = fmul fast float %335, %116
  %341 = fmul fast float %340, %338
  %342 = fmul fast float %340, %339
  %343 = fsub fast float %313, %60
  %344 = fsub fast float %343, %341
  %345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %346 = extractvalue %dx.types.CBufRet.f32 %345, 3
  %347 = fmul fast float %344, %346
  %348 = fsub fast float %315, %63
  %349 = fsub fast float %348, %342
  %350 = fmul fast float %349, %346
  %351 = fsub fast float 1.000000e+00, %350
  %352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %156, %dx.types.Handle %12, float %347, float %351, float %66, float undef, i32 0, i32 0, i32 undef, float %165)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %353 = extractvalue %dx.types.ResRet.f32 %352, 0
  %354 = fcmp fast ogt float %353, 0x3FE0101020000000
  %355 = icmp ne i32 %302, 0
  %356 = or i1 %355, %354
  %357 = zext i1 %356 to i32
  %358 = add nsw i32 %303, 1
  %359 = icmp eq i32 %358, 2
  br i1 %359, label %360, label %301

; <label>:360                                     ; preds = %301
  br label %361

; <label>:361                                     ; preds = %360, %32
  %362 = phi i32 [ 1, %32 ], [ %177, %360 ]
  %363 = phi i32 [ 1, %32 ], [ %357, %360 ]
  %364 = icmp ne i32 %362, 0
  %365 = select i1 %364, i32 0, i32 512
  %366 = icmp ne i32 %363, 0
  %367 = xor i1 %168, true
  %368 = or i1 %366, %367
  br i1 %368, label %369, label %1902, !dx.controlflow.hints !36

; <label>:369                                     ; preds = %361
  %370 = add nuw nsw i32 %57, 20
  %371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.f32 %371, 0
  %373 = add nuw nsw i32 %57, 24
  %374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.f32 %374, 0
  %376 = add nuw nsw i32 %57, 28
  %377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.f32 %377, 0
  %379 = add nuw nsw i32 %57, 32
  %380 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.f32 %380, 0
  %382 = add nuw nsw i32 %57, 40
  %383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.f32 %383, 0
  %385 = add nuw nsw i32 %57, 44
  %386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.f32 %386, 0
  %388 = add nuw nsw i32 %57, 48
  %389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.f32 %389, 0
  %391 = add nuw nsw i32 %57, 52
  %392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.f32 %392, 0
  %394 = add nuw nsw i32 %57, 96
  %395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.i32 %395, 0
  %397 = add nuw nsw i32 %57, 100
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = add nuw nsw i32 %57, 104
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = add nuw nsw i32 %57, 108
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %407 = extractvalue %dx.types.CBufRet.f32 %406, 2
  %408 = fmul fast float %407, %135
  %409 = fmul fast float %407, %138
  %410 = extractvalue %dx.types.CBufRet.f32 %406, 3
  %411 = fadd fast float %408, %410
  %412 = fadd fast float %409, %410
  %413 = extractvalue %dx.types.CBufRet.f32 %406, 0
  %414 = fmul fast float %413, %135
  %415 = fmul fast float %413, %138
  %416 = extractvalue %dx.types.CBufRet.f32 %406, 1
  %417 = fadd fast float %414, %416
  %418 = fadd fast float %415, %416
  %419 = add i32 %396, 0
  %420 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %419, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %421 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %420, i32 0)  ; GetDimensions(handle,mipLevel)
  %422 = extractvalue %dx.types.Dimensions %421, 0
  %423 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %422)  ; FirstbitLo(value)
  %424 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %425 = extractvalue %dx.types.CBufRet.i32 %424, 1
  %426 = sub nsw i32 %425, %423
  %427 = sitofp i32 %426 to float
  %428 = fsub fast float %152, %427
  %429 = call float @dx.op.binary.f32(i32 35, float %428, float 0.000000e+00)  ; FMax(a,b)
  %430 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %420, %dx.types.Handle %12, float %411, float %412, float %384, float undef, i32 0, i32 0, i32 undef, float %429)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %431 = extractvalue %dx.types.ResRet.f32 %430, 0
  %432 = fmul fast float %431, %372
  %433 = fadd fast float %432, %375
  %434 = add i32 %399, 0
  %435 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %434, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %436 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %435, i32 0)  ; GetDimensions(handle,mipLevel)
  %437 = extractvalue %dx.types.Dimensions %436, 0
  %438 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %437)  ; FirstbitLo(value)
  %439 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %440 = extractvalue %dx.types.CBufRet.i32 %439, 1
  %441 = sub nsw i32 %440, %438
  %442 = sitofp i32 %441 to float
  %443 = fsub fast float %152, %442
  %444 = call float @dx.op.binary.f32(i32 35, float %443, float 0.000000e+00)  ; FMax(a,b)
  %445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %435, %dx.types.Handle %12, float %417, float %418, float %387, float undef, i32 0, i32 0, i32 undef, float %444)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %446 = extractvalue %dx.types.ResRet.f32 %445, 0
  %447 = fmul fast float %446, %378
  %448 = fadd fast float %447, %381
  %449 = add i32 %402, 0
  %450 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %449, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %451 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %450, i32 0)  ; GetDimensions(handle,mipLevel)
  %452 = extractvalue %dx.types.Dimensions %451, 0
  %453 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %452)  ; FirstbitLo(value)
  %454 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %455 = extractvalue %dx.types.CBufRet.i32 %454, 1
  %456 = sub nsw i32 %455, %453
  %457 = sitofp i32 %456 to float
  %458 = fsub fast float %152, %457
  %459 = call float @dx.op.binary.f32(i32 35, float %458, float 0.000000e+00)  ; FMax(a,b)
  %460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %450, %dx.types.Handle %12, float %417, float %418, float %390, float undef, i32 0, i32 0, i32 undef, float %459)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %461 = extractvalue %dx.types.ResRet.f32 %460, 0
  %462 = extractvalue %dx.types.ResRet.f32 %460, 1
  %463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %464 = extractvalue %dx.types.CBufRet.f32 %463, 3
  %465 = fmul fast float %464, 2.000000e+00
  %466 = fmul fast float %465, %461
  %467 = fmul fast float %465, %462
  %468 = fsub fast float %466, %464
  %469 = fsub fast float %467, %464
  %470 = fmul fast float %468, %468
  %471 = fmul fast float %469, %469
  %472 = fadd fast float %470, %471
  %473 = call float @dx.op.unary.f32(i32 24, float %472)  ; Sqrt(value)
  %474 = add i32 %405, 0
  %475 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %474, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %476 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %475, i32 0)  ; GetDimensions(handle,mipLevel)
  %477 = extractvalue %dx.types.Dimensions %476, 0
  %478 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %477)  ; FirstbitLo(value)
  %479 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %480 = extractvalue %dx.types.CBufRet.i32 %479, 1
  %481 = sub nsw i32 %480, %478
  %482 = sitofp i32 %481 to float
  %483 = fsub fast float %152, %482
  %484 = call float @dx.op.binary.f32(i32 35, float %483, float 0.000000e+00)  ; FMax(a,b)
  %485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %475, %dx.types.Handle %12, float %417, float %418, float %393, float undef, i32 0, i32 0, i32 undef, float %484)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %486 = extractvalue %dx.types.ResRet.f32 %485, 0
  %487 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %488 = extractvalue %dx.types.CBufRet.i32 %487, 0
  %489 = call i32 @dx.op.binary.i32(i32 40, i32 %42, i32 %488)  ; UMin(a,b)
  %490 = mul i32 %489, 36
  %491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.i32 %491, 0
  %493 = add i32 %490, 4
  %494 = fmul fast float %120, 0x3F53C37960000000
  %495 = fmul fast float %121, 0x3F53C37960000000
  %496 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %11, float %494, float %495, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %497 = extractvalue %dx.types.ResRet.f32 %496, 0
  %498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %499 = extractvalue %dx.types.CBufRet.f32 %498, 2
  %500 = fmul fast float %499, %497
  %501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %502 = extractvalue %dx.types.CBufRet.f32 %501, 0
  %503 = fmul fast float %502, %135
  %504 = fmul fast float %502, %138
  %505 = extractvalue %dx.types.CBufRet.f32 %501, 1
  %506 = fadd fast float %503, %505
  %507 = fadd fast float %504, %505
  %508 = icmp eq i32 %492, 0
  br i1 %508, label %1152, label %509

; <label>:509                                     ; preds = %369
  br label %510

; <label>:510                                     ; preds = %1129, %509
  %511 = phi i32 [ %1130, %1129 ], [ %365, %509 ]
  %512 = phi float [ %1131, %1129 ], [ 0.000000e+00, %509 ]
  %513 = phi float [ %1132, %1129 ], [ 0.000000e+00, %509 ]
  %514 = phi float [ %1133, %1129 ], [ 0.000000e+00, %509 ]
  %515 = phi float [ %1134, %1129 ], [ 0.000000e+00, %509 ]
  %516 = phi float [ %1135, %1129 ], [ 0.000000e+00, %509 ]
  %517 = phi float [ %1136, %1129 ], [ 0.000000e+00, %509 ]
  %518 = phi float [ %1137, %1129 ], [ 0.000000e+00, %509 ]
  %519 = phi float [ %1138, %1129 ], [ 0.000000e+00, %509 ]
  %520 = phi float [ %1139, %1129 ], [ 0.000000e+00, %509 ]
  %521 = phi float [ %1140, %1129 ], [ 0.000000e+00, %509 ]
  %522 = phi float [ %1141, %1129 ], [ 0.000000e+00, %509 ]
  %523 = phi float [ %1142, %1129 ], [ 0.000000e+00, %509 ]
  %524 = phi float [ %1143, %1129 ], [ 0.000000e+00, %509 ]
  %525 = phi float [ %1144, %1129 ], [ 0.000000e+00, %509 ]
  %526 = phi float [ %1145, %1129 ], [ 0.000000e+00, %509 ]
  %527 = phi float [ %1146, %1129 ], [ 0.000000e+00, %509 ]
  %528 = phi float [ %1147, %1129 ], [ 0.000000e+00, %509 ]
  %529 = phi float [ %1148, %1129 ], [ 0.000000e+00, %509 ]
  %530 = phi i32 [ %1149, %1129 ], [ 0, %509 ]
  %531 = shl i32 %530, 2
  %532 = add i32 %67, %531
  %533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %534 = extractvalue %dx.types.ResRet.f32 %533, 0
  %535 = add i32 %71, %531
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = add i32 %537, 0
  %539 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %538, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %540 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %539, i32 0)  ; GetDimensions(handle,mipLevel)
  %541 = extractvalue %dx.types.Dimensions %540, 0
  %542 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %541)  ; FirstbitLo(value)
  %543 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %544 = extractvalue %dx.types.CBufRet.i32 %543, 1
  %545 = sub nsw i32 %544, %542
  %546 = sitofp i32 %545 to float
  %547 = fsub fast float %152, %546
  %548 = call float @dx.op.binary.f32(i32 35, float %547, float 0.000000e+00)  ; FMax(a,b)
  %549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %539, %dx.types.Handle %12, float %506, float %507, float %534, float undef, i32 0, i32 0, i32 undef, float %548)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %550 = extractvalue %dx.types.ResRet.f32 %549, 0
  %551 = fcmp fast ogt float %550, 0.000000e+00
  br i1 %551, label %552, label %1129, !dx.controlflow.hints !37

; <label>:552                                     ; preds = %510
  %553 = add i32 %493, %531
  %554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %553, i32 undef)  ; BufferLoad(srv,index,wot)
  %555 = extractvalue %dx.types.ResRet.i32 %554, 0
  %556 = and i32 %555, 32767
  %557 = mul nuw nsw i32 %556, 928
  %558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %557, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.i32 %558, 0
  %560 = or i32 %557, 4
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = or i32 %557, 8
  %564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.f32 %564, 0
  %566 = or i32 %557, 12
  %567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %566, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.f32 %567, 1
  %569 = or i32 %557, 20
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = add nuw nsw i32 %557, 72
  %573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %572, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.f32 %573, 0
  %575 = extractvalue %dx.types.ResRet.f32 %573, 1
  %576 = add nuw nsw i32 %557, 80
  %577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %576, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.f32 %577, 0
  %579 = add nuw nsw i32 %557, 84
  %580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %579, i32 undef)  ; BufferLoad(srv,index,wot)
  %581 = extractvalue %dx.types.ResRet.f32 %580, 0
  %582 = add nuw nsw i32 %557, 88
  %583 = add nuw nsw i32 %557, 228
  %584 = add nuw nsw i32 %557, 596
  %585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %584, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.f32 %585, 0
  %587 = extractvalue %dx.types.ResRet.f32 %585, 1
  %588 = add nuw nsw i32 %557, 604
  %589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %588, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.f32 %589, 0
  %591 = extractvalue %dx.types.ResRet.f32 %589, 1
  %592 = add nuw nsw i32 %557, 612
  %593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.f32 %593, 0
  %595 = add nuw nsw i32 %557, 616
  %596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %595, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.f32 %596, 0
  %598 = add nuw nsw i32 %557, 696
  %599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %598, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.f32 %599, 0
  %601 = extractvalue %dx.types.ResRet.f32 %599, 1
  %602 = add nuw nsw i32 %557, 708
  %603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.f32 %603, 0
  %605 = extractvalue %dx.types.ResRet.f32 %603, 1
  %606 = add nuw nsw i32 %557, 780
  %607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.f32 %607, 0
  %609 = extractvalue %dx.types.ResRet.f32 %607, 1
  %610 = add nuw nsw i32 %557, 792
  %611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = extractvalue %dx.types.ResRet.f32 %611, 1
  %614 = add nuw nsw i32 %557, 828
  %615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.f32 %615, 0
  %617 = add nuw nsw i32 %557, 840
  %618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.f32 %618, 0
  %620 = extractvalue %dx.types.ResRet.f32 %618, 1
  %621 = and i32 %530, 31
  %622 = shl i32 1, %621
  %623 = or i32 %622, %511
  %624 = shl i32 %559, 1
  %625 = and i32 %624, 256
  %626 = xor i32 %625, 256
  %627 = or i32 %623, %626
  %628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 201)  ; CBufferLoadLegacy(handle,regIndex)
  %629 = extractvalue %dx.types.CBufRet.f32 %628, 0
  %630 = call float @dx.op.binary.f32(i32 35, float %629, float %619)  ; FMax(a,b)
  %631 = call float @dx.op.binary.f32(i32 36, float %630, float %620)  ; FMin(a,b)
  %632 = fmul fast float %631, %550
  %633 = fadd fast float %632, %528
  %634 = and i32 %559, 256
  %635 = icmp ne i32 %634, 0
  %636 = fcmp fast ogt float %581, 0.000000e+00
  %637 = fmul fast float %581, %448
  %638 = call float @dx.op.unary.f32(i32 7, float %637)  ; Saturate(value)
  %639 = select i1 %636, float %638, float 1.000000e+00
  %640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %641 = extractvalue %dx.types.CBufRet.f32 %640, 3
  %642 = fadd fast float %641, %639
  %643 = call float @dx.op.unary.f32(i32 7, float %642)  ; Saturate(value)
  %644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %645 = extractvalue %dx.types.CBufRet.f32 %644, 0
  %646 = fsub fast float 1.000000e+00, %550
  %647 = select i1 %635, float %646, float 1.000000e+00
  %648 = call float @dx.op.unary.f32(i32 7, float %647)  ; Saturate(value)
  %649 = fmul fast float %648, %127
  %650 = fmul fast float %649, %645
  %651 = icmp eq i32 %562, 0
  br i1 %651, label %665, label %652

; <label>:652                                     ; preds = %552
  br label %653

; <label>:653                                     ; preds = %653, %652
  %654 = phi float [ %661, %653 ], [ 0.000000e+00, %652 ]
  %655 = phi i32 [ %662, %653 ], [ 0, %652 ]
  %656 = mul i32 %655, 28
  %657 = add nuw nsw i32 %557, 92
  %658 = add i32 %657, %656
  %659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %658, i32 undef)  ; BufferLoad(srv,index,wot)
  %660 = extractvalue %dx.types.ResRet.f32 %659, 0
  %661 = fadd fast float %660, %654
  %662 = add nuw i32 %655, 1
  %663 = icmp eq i32 %662, %562
  br i1 %663, label %664, label %653

; <label>:664                                     ; preds = %653
  br label %665

; <label>:665                                     ; preds = %664, %552
  %666 = phi float [ 0.000000e+00, %552 ], [ %661, %664 ]
  %667 = fmul fast float %648, %132
  %668 = fmul fast float %667, %645
  %669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %670 = extractvalue %dx.types.CBufRet.f32 %669, 3
  %671 = fcmp fast ogt float %666, %670
  %672 = select i1 %671, float %668, float %650
  %673 = fcmp fast ogt float %594, 0.000000e+00
  %674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %675 = extractvalue %dx.types.CBufRet.f32 %674, 2
  %676 = fadd fast float %675, 1.000000e+00
  %677 = call float @dx.op.unary.f32(i32 7, float %676)  ; Saturate(value)
  %678 = fmul fast float %677, %594
  %679 = call float @dx.op.binary.f32(i32 35, float %678, float 0x3F50624DE0000000)  ; FMax(a,b)
  %680 = fdiv fast float 1.000000e+00, %679
  %681 = select i1 %673, float %680, float 0.000000e+00
  %682 = fcmp fast ogt float %597, 0.000000e+00
  %683 = extractvalue %dx.types.CBufRet.f32 %674, 3
  %684 = fadd fast float %683, 1.000000e+00
  %685 = call float @dx.op.unary.f32(i32 7, float %684)  ; Saturate(value)
  %686 = fmul fast float %685, %597
  %687 = call float @dx.op.binary.f32(i32 35, float %686, float 0x3F50624DE0000000)  ; FMax(a,b)
  %688 = fdiv fast float 1.000000e+00, %687
  %689 = select i1 %682, float %688, float 0.000000e+00
  %690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %691 = extractvalue %dx.types.CBufRet.f32 %690, 3
  %692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %693 = extractvalue %dx.types.CBufRet.f32 %692, 1
  br i1 %651, label %816, label %694, !dx.controlflow.hints !38

; <label>:694                                     ; preds = %665
  br label %695

; <label>:695                                     ; preds = %695, %694
  %696 = phi float [ %762, %695 ], [ 0.000000e+00, %694 ]
  %697 = phi float [ %763, %695 ], [ 0.000000e+00, %694 ]
  %698 = phi float [ %764, %695 ], [ 0.000000e+00, %694 ]
  %699 = phi float [ %765, %695 ], [ 0.000000e+00, %694 ]
  %700 = phi float [ %766, %695 ], [ 0.000000e+00, %694 ]
  %701 = phi float [ %767, %695 ], [ 0.000000e+00, %694 ]
  %702 = phi float [ %768, %695 ], [ 0.000000e+00, %694 ]
  %703 = phi float [ %770, %695 ], [ 0.000000e+00, %694 ]
  %704 = phi float [ %771, %695 ], [ 0.000000e+00, %694 ]
  %705 = phi float [ %776, %695 ], [ 0.000000e+00, %694 ]
  %706 = phi float [ %798, %695 ], [ 0.000000e+00, %694 ]
  %707 = phi i32 [ %799, %695 ], [ 0, %694 ]
  %708 = mul i32 %707, 28
  %709 = add i32 %708, %582
  %710 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %711 = extractvalue %dx.types.ResRet.f32 %710, 0
  %712 = add i32 %709, 4
  %713 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %714 = extractvalue %dx.types.ResRet.f32 %713, 0
  %715 = fmul fast float %714, %672
  %716 = add i32 %709, 8
  %717 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %718 = extractvalue %dx.types.ResRet.f32 %717, 0
  %719 = add i32 %709, 12
  %720 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %721 = extractvalue %dx.types.ResRet.f32 %720, 0
  %722 = fmul fast float %721, %691
  %723 = add i32 %709, 16
  %724 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %723, i32 undef)  ; BufferLoad(srv,index,wot)
  %725 = extractvalue %dx.types.ResRet.f32 %724, 0
  %726 = extractvalue %dx.types.ResRet.f32 %724, 1
  %727 = add i32 %709, 24
  %728 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.f32 %728, 0
  %730 = call float @dx.op.dot2.f32(i32 54, float %725, float %726, float %120, float %121)  ; Dot2(ax,ay,bx,by)
  %731 = fmul fast float %730, %711
  %732 = fmul fast float %718, %693
  %733 = fsub fast float %731, %732
  %734 = fsub fast float %733, %729
  %735 = call float @dx.op.unary.f32(i32 13, float %734)  ; Sin(value)
  %736 = call float @dx.op.unary.f32(i32 12, float %734)  ; Cos(value)
  %737 = fmul fast float %722, %715
  %738 = fmul fast float %737, %725
  %739 = fmul fast float %738, %736
  %740 = fmul fast float %737, %726
  %741 = fmul fast float %740, %736
  %742 = fmul fast float %715, %643
  %743 = fmul fast float %742, %735
  %744 = fmul fast float %715, %711
  %745 = fmul fast float %744, %722
  %746 = fmul fast float %725, %725
  %747 = fmul fast float %746, %745
  %748 = fmul fast float %747, %735
  %749 = fmul fast float %725, %726
  %750 = fmul fast float %749, %745
  %751 = fmul fast float %750, %735
  %752 = fsub fast float 1.000000e+00, %748
  %753 = fmul fast float %711, %643
  %754 = fmul fast float %753, %715
  %755 = fmul fast float %754, %725
  %756 = fmul fast float %755, %736
  %757 = fmul fast float %726, %726
  %758 = fmul fast float %757, %745
  %759 = fmul fast float %758, %735
  %760 = fmul fast float %754, %726
  %761 = fmul fast float %760, %736
  %762 = fadd fast float %739, %696
  %763 = fadd fast float %741, %697
  %764 = fadd fast float %743, %698
  %765 = fadd fast float %752, %699
  %766 = fsub fast float %700, %751
  %767 = fadd fast float %756, %701
  %768 = fadd fast float %759, %702
  %769 = fadd fast float %703, 1.000000e+00
  %770 = fadd fast float %769, %751
  %771 = fadd fast float %761, %704
  %772 = fsub fast float 1.000000e+00, %759
  %773 = fmul fast float %752, %772
  %774 = fmul fast float %751, %751
  %775 = fsub fast float %773, %774
  %776 = fadd fast float %775, %705
  %777 = fadd fast float %734, 0xBFF921FB60000000
  %778 = fmul fast float %777, 0x3FC45F3060000000
  %779 = call float @dx.op.unary.f32(i32 27, float %778)  ; Round_ni(value)
  %780 = fsub fast float %778, %779
  %781 = call float @dx.op.unary.f32(i32 7, float %780)  ; Saturate(value)
  %782 = fmul fast float %781, %681
  %783 = call float @dx.op.unary.f32(i32 7, float %782)  ; Saturate(value)
  %784 = fmul fast float %783, %783
  %785 = fmul fast float %783, 2.000000e+00
  %786 = fsub fast float 3.000000e+00, %785
  %787 = fmul fast float %784, %786
  %788 = fsub fast float 1.000000e+00, %781
  %789 = fmul fast float %788, %689
  %790 = call float @dx.op.unary.f32(i32 7, float %789)  ; Saturate(value)
  %791 = fmul fast float %790, %790
  %792 = fmul fast float %790, 2.000000e+00
  %793 = fsub fast float 3.000000e+00, %792
  %794 = fmul fast float %791, %793
  %795 = fsub fast float 2.000000e+00, %787
  %796 = fsub fast float %795, %794
  %797 = call float @dx.op.unary.f32(i32 7, float %796)  ; Saturate(value)
  %798 = fadd fast float %797, %706
  %799 = add nuw i32 %707, 1
  %800 = icmp eq i32 %799, %562
  br i1 %800, label %801, label %695

; <label>:801                                     ; preds = %695
  %802 = call float @dx.op.dot3.f32(i32 55, float %765, float %766, float %767, float %765, float %766, float %767)  ; Dot3(ax,ay,az,bx,by,bz)
  %803 = call float @dx.op.unary.f32(i32 25, float %802)  ; Rsqrt(value)
  %804 = fmul fast float %803, %765
  %805 = fmul fast float %803, %766
  %806 = fmul fast float %803, %767
  %807 = call float @dx.op.dot3.f32(i32 55, float %768, float %770, float %771, float %768, float %770, float %771)  ; Dot3(ax,ay,az,bx,by,bz)
  %808 = call float @dx.op.unary.f32(i32 25, float %807)  ; Rsqrt(value)
  %809 = fmul fast float %808, %768
  %810 = fmul fast float %808, %770
  %811 = fmul fast float %808, %771
  %812 = uitofp i32 %562 to float
  %813 = fdiv fast float 1.000000e+00, %812
  %814 = fmul fast float %813, %776
  %815 = fmul fast float %813, %798
  br label %816

; <label>:816                                     ; preds = %801, %665
  %817 = phi float [ %762, %801 ], [ 0.000000e+00, %665 ]
  %818 = phi float [ %763, %801 ], [ 0.000000e+00, %665 ]
  %819 = phi float [ %764, %801 ], [ 0.000000e+00, %665 ]
  %820 = phi float [ %804, %801 ], [ 0.000000e+00, %665 ]
  %821 = phi float [ %805, %801 ], [ 0.000000e+00, %665 ]
  %822 = phi float [ %806, %801 ], [ 0.000000e+00, %665 ]
  %823 = phi float [ %809, %801 ], [ 0.000000e+00, %665 ]
  %824 = phi float [ %810, %801 ], [ 0.000000e+00, %665 ]
  %825 = phi float [ %811, %801 ], [ 0.000000e+00, %665 ]
  %826 = phi float [ %814, %801 ], [ 1.000000e+00, %665 ]
  %827 = phi float [ %815, %801 ], [ 1.000000e+00, %665 ]
  %828 = fmul fast float %817, %550
  %829 = fmul fast float %818, %550
  %830 = fmul fast float %819, %550
  %831 = fadd fast float %828, %512
  %832 = fadd fast float %829, %513
  %833 = fadd fast float %830, %514
  %834 = fmul fast float %820, %550
  %835 = fmul fast float %821, %550
  %836 = fmul fast float %822, %550
  %837 = fadd fast float %834, %515
  %838 = fadd fast float %835, %516
  %839 = fadd fast float %836, %517
  %840 = fmul fast float %823, %550
  %841 = fmul fast float %824, %550
  %842 = fmul fast float %825, %550
  %843 = fadd fast float %840, %518
  %844 = fadd fast float %841, %519
  %845 = fadd fast float %842, %520
  %846 = fsub fast float 1.000000e+00, %826
  %847 = fmul fast float %846, %590
  %848 = fadd fast float %847, %591
  %849 = fmul fast float %672, %550
  %850 = fmul fast float %849, %827
  %851 = fmul fast float %850, %848
  %852 = fadd fast float %851, %521
  %853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %854 = extractvalue %dx.types.CBufRet.f32 %853, 0
  %855 = extractvalue %dx.types.CBufRet.f32 %853, 1
  %856 = extractvalue %dx.types.CBufRet.f32 %853, 2
  %857 = fsub fast float %120, %854
  %858 = fsub fast float %121, %855
  %859 = fsub fast float %433, %856
  %860 = fmul fast float %857, %857
  %861 = fmul fast float %858, %858
  %862 = fadd fast float %860, %861
  %863 = fmul fast float %859, %859
  %864 = fadd fast float %862, %863
  %865 = call float @dx.op.unary.f32(i32 24, float %864)  ; Sqrt(value)
  %866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %867 = extractvalue %dx.types.CBufRet.f32 %866, 0
  %868 = fcmp fast ogt float %865, %867
  %869 = zext i1 %868 to i32
  %870 = extractvalue %dx.types.CBufRet.f32 %866, 1
  %871 = fcmp fast ogt float %865, %870
  %872 = zext i1 %871 to i32
  %873 = add nuw nsw i32 %872, %869
  %874 = extractvalue %dx.types.CBufRet.f32 %866, 2
  %875 = fcmp fast ogt float %865, %874
  %876 = zext i1 %875 to i32
  %877 = add nuw nsw i32 %873, %876
  %878 = icmp ult i32 %877, 3
  %879 = zext i1 %878 to i32
  %880 = shl nuw nsw i32 %877, 2
  %881 = add nuw nsw i32 %880, 48
  %882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %881)  ; CBufferLoadLegacy(handle,regIndex)
  %883 = extractvalue %dx.types.CBufRet.f32 %882, 1
  %884 = fcmp fast ogt float %865, %883
  %885 = zext i1 %884 to i32
  %886 = or i32 %880, 1
  %887 = add nuw nsw i32 %886, 48
  %888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %887)  ; CBufferLoadLegacy(handle,regIndex)
  %889 = extractvalue %dx.types.CBufRet.f32 %888, 1
  %890 = fcmp fast ogt float %865, %889
  %891 = zext i1 %890 to i32
  %892 = add nuw nsw i32 %891, %885
  %893 = or i32 %880, 2
  %894 = add nuw nsw i32 %893, 48
  %895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %894)  ; CBufferLoadLegacy(handle,regIndex)
  %896 = extractvalue %dx.types.CBufRet.f32 %895, 1
  %897 = fcmp fast ogt float %865, %896
  %898 = zext i1 %897 to i32
  %899 = add nuw nsw i32 %892, %898
  %900 = add i32 %571, -1
  %901 = call i32 @dx.op.binary.i32(i32 40, i32 %899, i32 %900)  ; UMin(a,b)
  %902 = add i32 %880, %901
  %903 = call i32 @dx.op.binary.i32(i32 40, i32 %902, i32 12)  ; UMin(a,b)
  %904 = add i32 %903, 48
  %905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %904)  ; CBufferLoadLegacy(handle,regIndex)
  %906 = extractvalue %dx.types.CBufRet.f32 %905, 0
  %907 = fcmp fast oge float %865, %906
  %908 = zext i1 %907 to i32
  %909 = call i32 @dx.op.binary.i32(i32 40, i32 %571, i32 %879)  ; UMin(a,b)
  %910 = call i32 @dx.op.binary.i32(i32 40, i32 %908, i32 %909)  ; UMin(a,b)
  %911 = add i32 %910, %571
  %912 = icmp eq i32 %911, 0
  br i1 %912, label %1084, label %913

; <label>:913                                     ; preds = %816
  br label %914

; <label>:914                                     ; preds = %914, %913
  %915 = phi float [ %1078, %914 ], [ 0.000000e+00, %913 ]
  %916 = phi float [ %1079, %914 ], [ 0.000000e+00, %913 ]
  %917 = phi float [ %1080, %914 ], [ 0.000000e+00, %913 ]
  %918 = phi i32 [ %926, %914 ], [ %903, %913 ]
  %919 = phi i32 [ %1081, %914 ], [ 0, %913 ]
  %920 = add i32 %919, %918
  %921 = and i32 %920, -4
  %922 = add i32 %921, %571
  %923 = icmp uge i32 %920, %922
  %924 = sub i32 4, %571
  %925 = select i1 %923, i32 %924, i32 0
  %926 = add i32 %925, %918
  %927 = add i32 %925, %920
  %928 = and i32 %927, 3
  %929 = lshr i32 %927, 2
  %930 = add i32 %927, 32
  %931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %930)  ; CBufferLoadLegacy(handle,regIndex)
  %932 = extractvalue %dx.types.CBufRet.f32 %931, 0
  %933 = extractvalue %dx.types.CBufRet.f32 %931, 1
  %934 = extractvalue %dx.types.CBufRet.f32 %931, 2
  %935 = extractvalue %dx.types.CBufRet.f32 %931, 3
  %936 = fmul fast float %932, %865
  %937 = fadd fast float %936, %933
  %938 = call float @dx.op.unary.f32(i32 7, float %937)  ; Saturate(value)
  %939 = fmul fast float %934, %865
  %940 = fadd fast float %939, %935
  %941 = call float @dx.op.unary.f32(i32 7, float %940)  ; Saturate(value)
  %942 = call float @dx.op.binary.f32(i32 36, float %938, float %941)  ; FMin(a,b)
  %943 = mul nuw nsw i32 %928, 72
  %944 = add nuw nsw i32 %583, %943
  %945 = add nuw nsw i32 %944, 16
  %946 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %945, i32 undef)  ; BufferLoad(srv,index,wot)
  %947 = extractvalue %dx.types.ResRet.f32 %946, 0
  %948 = extractvalue %dx.types.ResRet.f32 %946, 1
  %949 = extractvalue %dx.types.ResRet.f32 %946, 2
  %950 = extractvalue %dx.types.ResRet.f32 %946, 3
  %951 = add nuw nsw i32 %944, 36
  %952 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %951, i32 undef)  ; BufferLoad(srv,index,wot)
  %953 = extractvalue %dx.types.ResRet.f32 %952, 0
  %954 = add nuw nsw i32 %944, 56
  %955 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %956 = extractvalue %dx.types.ResRet.f32 %955, 0
  %957 = fmul fast float %473, 3.906250e-03
  %958 = fmul fast float %957, %578
  %959 = fmul fast float %958, %953
  %960 = fmul fast float %959, %956
  %961 = extractvalue %dx.types.ResRet.f32 %955, 1
  %962 = fadd fast float %960, %961
  %963 = call float @dx.op.binary.f32(i32 35, float %962, float 0.000000e+00)  ; FMax(a,b)
  %964 = add nuw nsw i32 %944, 32
  %965 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %964, i32 undef)  ; BufferLoad(srv,index,wot)
  %966 = extractvalue %dx.types.ResRet.f32 %965, 0
  %967 = fmul fast float %963, %942
  %968 = fmul fast float %967, %966
  %969 = fmul fast float %953, %468
  %970 = fmul fast float %953, %469
  %971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %972 = extractvalue %dx.types.CBufRet.f32 %971, 1
  %973 = add nuw nsw i32 %944, 40
  %974 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %973, i32 undef)  ; BufferLoad(srv,index,wot)
  %975 = extractvalue %dx.types.ResRet.f32 %974, 0
  %976 = extractvalue %dx.types.ResRet.f32 %974, 1
  %977 = extractvalue %dx.types.ResRet.f32 %974, 2
  %978 = extractvalue %dx.types.ResRet.f32 %974, 3
  %979 = fadd fast float %972, %500
  %980 = fadd fast float %979, %977
  %981 = fmul fast float %979, %976
  %982 = call float @dx.op.unary.f32(i32 29, float %981)  ; Round_z(value)
  %983 = fmul fast float %975, %982
  %984 = fsub fast float %979, %983
  %985 = fmul fast float %980, %976
  %986 = call float @dx.op.unary.f32(i32 29, float %985)  ; Round_z(value)
  %987 = fmul fast float %986, %975
  %988 = fsub fast float %980, %987
  %989 = fmul fast float %984, %969
  %990 = fmul fast float %984, %970
  %991 = fmul fast float %988, %969
  %992 = fmul fast float %988, %970
  %993 = fsub fast float %120, %989
  %994 = fsub fast float %121, %990
  %995 = fsub fast float %120, %991
  %996 = fsub fast float %121, %992
  %997 = fsub fast float %977, %984
  %998 = call float @dx.op.unary.f32(i32 6, float %997)  ; FAbs(value)
  %999 = fmul fast float %998, %978
  %1000 = call float @dx.op.unary.f32(i32 7, float %999)  ; Saturate(value)
  %1001 = fmul fast float %565, 4.000000e+00
  %1002 = uitofp i32 %929 to float
  %1003 = fadd fast float %1002, %1001
  %1004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %1005 = extractvalue %dx.types.CBufRet.f32 %1004, 0
  %1006 = extractvalue %dx.types.CBufRet.f32 %1004, 1
  %1007 = extractvalue %dx.types.CBufRet.f32 %1004, 2
  %1008 = extractvalue %dx.types.CBufRet.f32 %1004, 3
  %1009 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 0
  store float %1005, float* %1009, align 4
  %1010 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 1
  store float %1006, float* %1010, align 4
  %1011 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 2
  store float %1007, float* %1011, align 4
  %1012 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 3
  store float %1008, float* %1012, align 4
  %1013 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 %929
  %1014 = load float, float* %1013, align 4, !tbaa !39, !noalias !43
  %1015 = fmul fast float %1014, %568
  %1016 = fmul fast float %993, %947
  %1017 = call float @dx.op.tertiary.f32(i32 46, float %948, float %994, float %1016)  ; FMad(a,b,c)
  %1018 = fmul fast float %993, %949
  %1019 = call float @dx.op.tertiary.f32(i32 46, float %950, float %994, float %1018)  ; FMad(a,b,c)
  %1020 = add nuw nsw i32 %944, 8
  %1021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1022 = extractvalue %dx.types.ResRet.f32 %1021, 0
  %1023 = extractvalue %dx.types.ResRet.f32 %1021, 1
  %1024 = fadd fast float %1022, %1017
  %1025 = fadd fast float %1023, %1019
  %1026 = fmul fast float %1024, %1015
  %1027 = fmul fast float %1025, %1015
  %1028 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %1029 = extractvalue %dx.types.ResRet.f32 %1028, 0
  %1030 = extractvalue %dx.types.ResRet.f32 %1028, 1
  %1031 = fmul fast float %1026, %1029
  %1032 = fmul fast float %1027, %1030
  %1033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1034 = extractvalue %dx.types.CBufRet.f32 %1033, 2
  %1035 = fadd fast float %1031, %1034
  %1036 = fadd fast float %1032, %1034
  %1037 = fmul fast float %995, %947
  %1038 = call float @dx.op.tertiary.f32(i32 46, float %948, float %996, float %1037)  ; FMad(a,b,c)
  %1039 = fmul fast float %995, %949
  %1040 = call float @dx.op.tertiary.f32(i32 46, float %950, float %996, float %1039)  ; FMad(a,b,c)
  %1041 = fadd fast float %1022, %1038
  %1042 = fadd fast float %1023, %1040
  %1043 = fmul fast float %1041, %1015
  %1044 = fmul fast float %1042, %1015
  %1045 = fmul fast float %1043, %1029
  %1046 = fmul fast float %1044, %1030
  %1047 = fadd fast float %1045, %1034
  %1048 = fadd fast float %1046, %1034
  %1049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %13, float %1035, float %1036, float %1003, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1050 = extractvalue %dx.types.ResRet.f32 %1049, 0
  %1051 = extractvalue %dx.types.ResRet.f32 %1049, 1
  %1052 = extractvalue %dx.types.ResRet.f32 %1049, 2
  %1053 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %13, float %1047, float %1048, float %1003, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1054 = extractvalue %dx.types.ResRet.f32 %1053, 0
  %1055 = extractvalue %dx.types.ResRet.f32 %1053, 1
  %1056 = extractvalue %dx.types.ResRet.f32 %1053, 2
  %1057 = fsub fast float %1054, %1050
  %1058 = fsub fast float %1055, %1051
  %1059 = fsub fast float %1056, %1052
  %1060 = fmul fast float %1057, %1000
  %1061 = fmul fast float %1058, %1000
  %1062 = fmul fast float %1059, %1000
  %1063 = fadd fast float %1060, %1050
  %1064 = fadd fast float %1061, %1051
  %1065 = fadd fast float %1062, %1052
  %1066 = fmul fast float %1063, %947
  %1067 = call float @dx.op.tertiary.f32(i32 46, float %1064, float %949, float %1066)  ; FMad(a,b,c)
  %1068 = fmul fast float %1063, %948
  %1069 = call float @dx.op.tertiary.f32(i32 46, float %1064, float %950, float %1068)  ; FMad(a,b,c)
  %1070 = fdiv fast float 1.000000e+00, %1029
  %1071 = fdiv fast float 1.000000e+00, %1030
  %1072 = call float @dx.op.unary.f32(i32 7, float %968)  ; Saturate(value)
  %1073 = fmul fast float %1070, %1067
  %1074 = fmul fast float %1073, %1072
  %1075 = fmul fast float %1071, %1069
  %1076 = fmul fast float %1075, %1072
  %1077 = fmul fast float %1065, %968
  %1078 = fadd fast float %1074, %915
  %1079 = fadd fast float %1076, %916
  %1080 = fadd fast float %1077, %917
  %1081 = add nuw i32 %919, 1
  %1082 = icmp eq i32 %1081, %911
  br i1 %1082, label %1083, label %914

; <label>:1083                                    ; preds = %914
  br label %1084

; <label>:1084                                    ; preds = %1083, %816
  %1085 = phi float [ 0.000000e+00, %816 ], [ %1078, %1083 ]
  %1086 = phi float [ 0.000000e+00, %816 ], [ %1079, %1083 ]
  %1087 = phi float [ 0.000000e+00, %816 ], [ %1080, %1083 ]
  %1088 = fmul fast float %650, %550
  %1089 = fmul fast float %1088, %1085
  %1090 = fmul fast float %1088, %1086
  %1091 = fmul fast float %643, %550
  %1092 = fmul fast float %1091, %650
  %1093 = fmul fast float %1092, %1087
  %1094 = fadd fast float %1089, %522
  %1095 = fadd fast float %1090, %523
  %1096 = fadd fast float %1093, %524
  %1097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1098 = fmul fast float %586, %486
  %1099 = fadd fast float %1098, %587
  %1100 = call float @dx.op.unary.f32(i32 7, float %1099)  ; Saturate(value)
  %1101 = call float @dx.op.binary.f32(i32 35, float %527, float %1100)  ; FMax(a,b)
  %1102 = fmul fast float %604, %473
  %1103 = fadd fast float %1102, %605
  %1104 = call float @dx.op.binary.f32(i32 35, float %1103, float 0.000000e+00)  ; FMax(a,b)
  %1105 = fmul fast float %1104, %600
  %1106 = fadd fast float %1105, %601
  %1107 = call float @dx.op.unary.f32(i32 7, float %1106)  ; Saturate(value)
  %1108 = and i32 %559, 2
  %1109 = icmp ne i32 %1108, 0
  %1110 = select i1 %1109, float %1107, float 0.000000e+00
  %1111 = call float @dx.op.binary.f32(i32 35, float %1110, float %525)  ; FMax(a,b)
  %1112 = fmul fast float %612, %473
  %1113 = fadd fast float %1112, %613
  %1114 = call float @dx.op.binary.f32(i32 35, float %1113, float 0.000000e+00)  ; FMax(a,b)
  %1115 = fmul fast float %1114, %608
  %1116 = fadd fast float %1115, %609
  %1117 = call float @dx.op.unary.f32(i32 7, float %1116)  ; Saturate(value)
  %1118 = and i32 %559, 4
  %1119 = icmp ne i32 %1118, 0
  %1120 = select i1 %1119, float %1117, float 0.000000e+00
  %1121 = call float @dx.op.binary.f32(i32 35, float %1120, float %526)  ; FMax(a,b)
  %1122 = fadd fast float %574, %575
  %1123 = extractvalue %dx.types.CBufRet.f32 %1097, 2
  %1124 = fcmp fast oge float %1122, %1123
  %1125 = select i1 %1124, i32 4096, i32 0
  %1126 = or i32 %627, %1125
  %1127 = fmul fast float %616, %550
  %1128 = fadd fast float %1127, %529
  br label %1129

; <label>:1129                                    ; preds = %1084, %510
  %1130 = phi i32 [ %1126, %1084 ], [ %511, %510 ]
  %1131 = phi float [ %831, %1084 ], [ %512, %510 ]
  %1132 = phi float [ %832, %1084 ], [ %513, %510 ]
  %1133 = phi float [ %833, %1084 ], [ %514, %510 ]
  %1134 = phi float [ %837, %1084 ], [ %515, %510 ]
  %1135 = phi float [ %838, %1084 ], [ %516, %510 ]
  %1136 = phi float [ %839, %1084 ], [ %517, %510 ]
  %1137 = phi float [ %843, %1084 ], [ %518, %510 ]
  %1138 = phi float [ %844, %1084 ], [ %519, %510 ]
  %1139 = phi float [ %845, %1084 ], [ %520, %510 ]
  %1140 = phi float [ %852, %1084 ], [ %521, %510 ]
  %1141 = phi float [ %1094, %1084 ], [ %522, %510 ]
  %1142 = phi float [ %1095, %1084 ], [ %523, %510 ]
  %1143 = phi float [ %1096, %1084 ], [ %524, %510 ]
  %1144 = phi float [ %1111, %1084 ], [ %525, %510 ]
  %1145 = phi float [ %1121, %1084 ], [ %526, %510 ]
  %1146 = phi float [ %1101, %1084 ], [ %527, %510 ]
  %1147 = phi float [ %633, %1084 ], [ %528, %510 ]
  %1148 = phi float [ %1128, %1084 ], [ %529, %510 ]
  %1149 = add nuw i32 %530, 1
  %1150 = icmp eq i32 %1149, %492
  br i1 %1150, label %1151, label %510

; <label>:1151                                    ; preds = %1129
  br label %1152

; <label>:1152                                    ; preds = %1151, %369
  %1153 = phi i32 [ %365, %369 ], [ %1130, %1151 ]
  %1154 = phi float [ 0.000000e+00, %369 ], [ %1131, %1151 ]
  %1155 = phi float [ 0.000000e+00, %369 ], [ %1132, %1151 ]
  %1156 = phi float [ 0.000000e+00, %369 ], [ %1133, %1151 ]
  %1157 = phi float [ 0.000000e+00, %369 ], [ %1134, %1151 ]
  %1158 = phi float [ 0.000000e+00, %369 ], [ %1135, %1151 ]
  %1159 = phi float [ 0.000000e+00, %369 ], [ %1136, %1151 ]
  %1160 = phi float [ 0.000000e+00, %369 ], [ %1137, %1151 ]
  %1161 = phi float [ 0.000000e+00, %369 ], [ %1138, %1151 ]
  %1162 = phi float [ 0.000000e+00, %369 ], [ %1139, %1151 ]
  %1163 = phi float [ 0.000000e+00, %369 ], [ %1140, %1151 ]
  %1164 = phi float [ 0.000000e+00, %369 ], [ %1141, %1151 ]
  %1165 = phi float [ 0.000000e+00, %369 ], [ %1142, %1151 ]
  %1166 = phi float [ 0.000000e+00, %369 ], [ %1143, %1151 ]
  %1167 = phi float [ 0.000000e+00, %369 ], [ %1144, %1151 ]
  %1168 = phi float [ 0.000000e+00, %369 ], [ %1145, %1151 ]
  %1169 = phi float [ 0.000000e+00, %369 ], [ %1146, %1151 ]
  %1170 = phi float [ 0.000000e+00, %369 ], [ %1147, %1151 ]
  %1171 = phi float [ 0.000000e+00, %369 ], [ %1148, %1151 ]
  %1172 = fcmp fast ole float %1163, 0x3F69A5C380000000
  %1173 = fmul fast float %1163, 0x4029D70A40000000
  %1174 = call float @dx.op.unary.f32(i32 23, float %1163)  ; Log(value)
  %1175 = fmul fast float %1174, 0x3FDAAAAAA0000000
  %1176 = call float @dx.op.unary.f32(i32 21, float %1175)  ; Exp(value)
  %1177 = fmul fast float %1176, 0x3FF0E147A0000000
  %1178 = fadd fast float %1177, 0xBFAC28F5C0000000
  %1179 = select i1 %1172, float %1173, float %1178
  %1180 = fmul fast float %1179, 2.550000e+02
  %1181 = call float @dx.op.binary.f32(i32 35, float %1180, float 0.000000e+00)  ; FMax(a,b)
  %1182 = call float @dx.op.binary.f32(i32 36, float %1181, float 2.550000e+02)  ; FMin(a,b)
  %1183 = fptoui float %1182 to i32
  %1184 = uitofp i32 %1183 to float
  %1185 = fmul fast float %1184, 0x3F70101020000000
  %1186 = fcmp fast ole float %1185, 0x3FA4B5DCC0000000
  %1187 = fmul fast float %1184, 0x3F33E45680000000
  %1188 = fmul fast float %1184, 0x3F6E736160000000
  %1189 = fadd fast float %1188, 0x3FAAB12340000000
  %1190 = call float @dx.op.unary.f32(i32 23, float %1189)  ; Log(value)
  %1191 = fmul fast float %1190, 0x4003333340000000
  %1192 = call float @dx.op.unary.f32(i32 21, float %1191)  ; Exp(value)
  %1193 = select i1 %1186, float %1187, float %1192
  %1194 = call float @dx.op.unary.f32(i32 7, float %1193)  ; Saturate(value)
  %1195 = call float @dx.op.binary.f32(i32 35, float %1194, float %1169)  ; FMax(a,b)
  %1196 = fadd fast float %1195, 1.000000e+00
  %1197 = fmul fast float %1196, %1167
  %1198 = fmul fast float %1196, %1168
  %1199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1200 = extractvalue %dx.types.CBufRet.f32 %1199, 1
  %1201 = fcmp fast oge float %1197, %1200
  %1202 = select i1 %1201, i32 1024, i32 0
  %1203 = or i32 %1202, %1153
  %1204 = fcmp fast oge float %1198, %1200
  %1205 = select i1 %1204, i32 2048, i32 0
  %1206 = or i32 %1203, %1205
  %1207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1208 = extractvalue %dx.types.CBufRet.f32 %1207, 3
  %1209 = fadd fast float %1208, %135
  %1210 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.f32 %1210, 0
  %1212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.f32 %1212, 0
  %1214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.f32 %1214, 0
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1219 = extractvalue %dx.types.CBufRet.f32 %1218, 2
  %1220 = fmul fast float %1219, %1209
  %1221 = fmul fast float %1219, %138
  %1222 = extractvalue %dx.types.CBufRet.f32 %1218, 3
  %1223 = fadd fast float %1220, %1222
  %1224 = fadd fast float %1221, %1222
  %1225 = add i32 %1217, 0
  %1226 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1225, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1227 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1226, i32 0)  ; GetDimensions(handle,mipLevel)
  %1228 = extractvalue %dx.types.Dimensions %1227, 0
  %1229 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1228)  ; FirstbitLo(value)
  %1230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1231 = extractvalue %dx.types.CBufRet.i32 %1230, 1
  %1232 = sub nsw i32 %1231, %1229
  %1233 = sitofp i32 %1232 to float
  %1234 = fsub fast float %152, %1233
  %1235 = call float @dx.op.binary.f32(i32 35, float %1234, float 0.000000e+00)  ; FMax(a,b)
  %1236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1226, %dx.types.Handle %12, float %1223, float %1224, float %1215, float undef, i32 0, i32 0, i32 undef, float %1235)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1237 = extractvalue %dx.types.ResRet.f32 %1236, 0
  %1238 = fmul fast float %1237, %1211
  %1239 = fsub fast float %138, %1208
  %1240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.f32 %1240, 0
  %1242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.f32 %1242, 0
  %1244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.f32 %1244, 0
  %1246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %1247 = extractvalue %dx.types.ResRet.i32 %1246, 0
  %1248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1249 = extractvalue %dx.types.CBufRet.f32 %1248, 2
  %1250 = fmul fast float %1249, %135
  %1251 = fmul fast float %1249, %1239
  %1252 = extractvalue %dx.types.CBufRet.f32 %1248, 3
  %1253 = fadd fast float %1250, %1252
  %1254 = fadd fast float %1251, %1252
  %1255 = add i32 %1247, 0
  %1256 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1255, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1257 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1256, i32 0)  ; GetDimensions(handle,mipLevel)
  %1258 = extractvalue %dx.types.Dimensions %1257, 0
  %1259 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1258)  ; FirstbitLo(value)
  %1260 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1261 = extractvalue %dx.types.CBufRet.i32 %1260, 1
  %1262 = sub nsw i32 %1261, %1259
  %1263 = sitofp i32 %1262 to float
  %1264 = fsub fast float %152, %1263
  %1265 = call float @dx.op.binary.f32(i32 35, float %1264, float 0.000000e+00)  ; FMax(a,b)
  %1266 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1256, %dx.types.Handle %12, float %1253, float %1254, float %1245, float undef, i32 0, i32 0, i32 undef, float %1265)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1267 = extractvalue %dx.types.ResRet.f32 %1266, 0
  %1268 = fmul fast float %1267, %1241
  %1269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1270 = extractvalue %dx.types.CBufRet.f32 %1269, 2
  %1271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1272 = extractvalue %dx.types.CBufRet.f32 %1271, 3
  %1273 = fmul fast float %1272, %1270
  %1274 = fsub fast float %1213, %433
  %1275 = fadd fast float %1274, %1238
  %1276 = fsub fast float %1243, %433
  %1277 = fadd fast float %1276, %1268
  %1278 = fmul fast float %1275, %1273
  %1279 = fsub fast float -0.000000e+00, %1278
  %1280 = fmul fast float %1277, %1273
  %1281 = fsub fast float -0.000000e+00, %1280
  %1282 = fmul fast float %1273, %1273
  %1283 = call float @dx.op.dot3.f32(i32 55, float %1279, float %1281, float %1282, float %1279, float %1281, float %1282)  ; Dot3(ax,ay,az,bx,by,bz)
  %1284 = call float @dx.op.unary.f32(i32 25, float %1283)  ; Rsqrt(value)
  %1285 = fmul fast float %1284, %1279
  %1286 = fmul fast float %1284, %1281
  %1287 = fmul fast float %1282, %1284
  %1288 = fsub fast float -0.000000e+00, %1286
  %1289 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float %1287, float %1288, float 0.000000e+00, float %1287, float %1288)  ; Dot3(ax,ay,az,bx,by,bz)
  %1290 = call float @dx.op.unary.f32(i32 25, float %1289)  ; Rsqrt(value)
  %1291 = fmul fast float %1287, %1290
  %1292 = fmul fast float %1290, %1288
  %1293 = fmul fast float %1291, %1287
  %1294 = fmul fast float %1292, %1286
  %1295 = fsub fast float %1293, %1294
  %1296 = fmul fast float %1292, %1285
  %1297 = fmul fast float %1285, %1291
  %1298 = fsub fast float -0.000000e+00, %1297
  %1299 = call float @dx.op.dot3.f32(i32 55, float %1295, float %1296, float %1298, float %1295, float %1296, float %1298)  ; Dot3(ax,ay,az,bx,by,bz)
  %1300 = call float @dx.op.unary.f32(i32 25, float %1299)  ; Rsqrt(value)
  %1301 = fmul fast float %1295, %1300
  %1302 = fmul fast float %1296, %1300
  %1303 = fmul fast float %1300, %1298
  %1304 = fadd fast float %1291, %1161
  %1305 = fadd fast float %1292, %1162
  %1306 = call float @dx.op.dot3.f32(i32 55, float %1160, float %1304, float %1305, float %1160, float %1304, float %1305)  ; Dot3(ax,ay,az,bx,by,bz)
  %1307 = call float @dx.op.unary.f32(i32 25, float %1306)  ; Rsqrt(value)
  %1308 = fmul fast float %1307, %1160
  %1309 = fmul fast float %1307, %1304
  %1310 = fmul fast float %1307, %1305
  %1311 = fadd fast float %1301, %1157
  %1312 = fadd fast float %1302, %1158
  %1313 = fadd fast float %1303, %1159
  %1314 = call float @dx.op.dot3.f32(i32 55, float %1311, float %1312, float %1313, float %1311, float %1312, float %1313)  ; Dot3(ax,ay,az,bx,by,bz)
  %1315 = call float @dx.op.unary.f32(i32 25, float %1314)  ; Rsqrt(value)
  %1316 = fmul fast float %1315, %1311
  %1317 = fmul fast float %1315, %1312
  %1318 = fmul fast float %1315, %1313
  %1319 = fmul fast float %1317, %1310
  %1320 = fmul fast float %1318, %1309
  %1321 = fsub fast float %1319, %1320
  %1322 = fmul fast float %1318, %1308
  %1323 = fmul fast float %1316, %1310
  %1324 = fsub fast float %1322, %1323
  %1325 = fmul fast float %1316, %1309
  %1326 = fmul fast float %1317, %1308
  %1327 = fsub fast float %1325, %1326
  %1328 = call float @dx.op.dot3.f32(i32 55, float %1321, float %1324, float %1327, float %1321, float %1324, float %1327)  ; Dot3(ax,ay,az,bx,by,bz)
  %1329 = call float @dx.op.unary.f32(i32 25, float %1328)  ; Rsqrt(value)
  %1330 = fmul fast float %1321, %1329
  %1331 = fmul fast float %1324, %1329
  %1332 = fmul fast float %1327, %1329
  %1333 = fadd fast float %1154, %120
  %1334 = fadd fast float %1155, %121
  %1335 = fadd fast float %1156, %433
  %1336 = fmul fast float %1316, %1164
  %1337 = call float @dx.op.tertiary.f32(i32 46, float %1165, float %1308, float %1336)  ; FMad(a,b,c)
  %1338 = call float @dx.op.tertiary.f32(i32 46, float %1166, float %1330, float %1337)  ; FMad(a,b,c)
  %1339 = fmul fast float %1317, %1164
  %1340 = call float @dx.op.tertiary.f32(i32 46, float %1165, float %1309, float %1339)  ; FMad(a,b,c)
  %1341 = call float @dx.op.tertiary.f32(i32 46, float %1166, float %1331, float %1340)  ; FMad(a,b,c)
  %1342 = fmul fast float %1318, %1164
  %1343 = call float @dx.op.tertiary.f32(i32 46, float %1165, float %1310, float %1342)  ; FMad(a,b,c)
  %1344 = call float @dx.op.tertiary.f32(i32 46, float %1166, float %1332, float %1343)  ; FMad(a,b,c)
  %1345 = fadd fast float %1333, %1338
  %1346 = fadd fast float %1334, %1341
  %1347 = fadd fast float %1335, %1170
  %1348 = fadd fast float %1347, %1344
  %1349 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1350 = extractvalue %dx.types.CBufRet.i32 %1349, 0
  %1351 = icmp eq i32 %1350, 0
  br i1 %1351, label %1798, label %1352, !dx.controlflow.hints !48

; <label>:1352                                    ; preds = %1152
  %1353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 433)  ; CBufferLoadLegacy(handle,regIndex)
  %1354 = extractvalue %dx.types.CBufRet.f32 %1353, 3
  %1355 = extractvalue %dx.types.CBufRet.f32 %1353, 1
  %1356 = extractvalue %dx.types.CBufRet.f32 %1353, 2
  %1357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1358 = extractvalue %dx.types.CBufRet.f32 %1357, 1
  %1359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %1360 = extractvalue %dx.types.CBufRet.f32 %1359, 2
  %1361 = extractvalue %dx.types.CBufRet.f32 %1359, 3
  %1362 = fsub fast float %1345, %1360
  %1363 = fsub fast float %1346, %1361
  %1364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %1365 = extractvalue %dx.types.CBufRet.f32 %1364, 2
  %1366 = fmul fast float %1362, %1365
  %1367 = fmul fast float %1363, %1365
  %1368 = fadd fast float %1366, 5.000000e-01
  %1369 = fadd fast float %1367, 5.000000e-01
  %1370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %1371 = extractvalue %dx.types.CBufRet.f32 %1370, 2
  %1372 = fsub fast float %1348, %1371
  %1373 = extractvalue %dx.types.CBufRet.f32 %1370, 1
  %1374 = fmul fast float %1372, %1373
  %1375 = call float @dx.op.unary.f32(i32 7, float %1374)  ; Saturate(value)
  %1376 = fcmp fast olt float %1368, 0.000000e+00
  %1377 = fcmp fast olt float %1369, 0.000000e+00
  %1378 = or i1 %1376, %1377
  %1379 = fcmp fast oge float %1368, 1.000000e+00
  %1380 = fcmp fast oge float %1369, 1.000000e+00
  %1381 = or i1 %1379, %1380
  %1382 = or i1 %1378, %1381
  br i1 %1382, label %1789, label %1383, !dx.controlflow.hints !49

; <label>:1383                                    ; preds = %1352
  %1384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1385 = extractvalue %dx.types.CBufRet.f32 %1384, 0
  %1386 = call float @dx.op.binary.f32(i32 36, float %1369, float %1375)  ; FMin(a,b)
  %1387 = call float @dx.op.binary.f32(i32 36, float %1368, float %1386)  ; FMin(a,b)
  %1388 = call float @dx.op.binary.f32(i32 35, float %1369, float %1375)  ; FMax(a,b)
  %1389 = call float @dx.op.binary.f32(i32 35, float %1368, float %1388)  ; FMax(a,b)
  %1390 = fsub fast float 1.000000e+00, %1389
  %1391 = call float @dx.op.binary.f32(i32 36, float %1387, float %1390)  ; FMin(a,b)
  %1392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 437)  ; CBufferLoadLegacy(handle,regIndex)
  %1393 = extractvalue %dx.types.CBufRet.f32 %1392, 3
  %1394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %1395 = extractvalue %dx.types.CBufRet.f32 %1394, 1
  %1396 = call float @dx.op.binary.f32(i32 35, float %1395, float %1393)  ; FMax(a,b)
  %1397 = fsub fast float %1396, %1395
  %1398 = fsub fast float %1391, %1395
  %1399 = fdiv fast float %1398, %1397
  %1400 = call float @dx.op.unary.f32(i32 7, float %1399)  ; Saturate(value)
  %1401 = fmul fast float %1400, 2.000000e+00
  %1402 = fsub fast float 3.000000e+00, %1401
  %1403 = fmul fast float %1365, %1345
  %1404 = fmul fast float %1365, %1346
  %1405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1406 = extractvalue %dx.types.CBufRet.f32 %1405, 0
  %1407 = extractvalue %dx.types.CBufRet.f32 %1405, 1
  %1408 = extractvalue %dx.types.CBufRet.f32 %1405, 2
  %1409 = fsub fast float %1345, %1406
  %1410 = fsub fast float %1346, %1407
  %1411 = fsub fast float %1348, %1408
  %1412 = call float @dx.op.dot3.f32(i32 55, float %1409, float %1410, float %1411, float %1409, float %1410, float %1411)  ; Dot3(ax,ay,az,bx,by,bz)
  %1413 = fmul fast float %1354, %1354
  %1414 = fmul fast float %1355, %1355
  %1415 = fsub fast float %1413, %1414
  %1416 = fsub fast float %1412, %1414
  %1417 = fdiv fast float %1416, %1415
  %1418 = call float @dx.op.unary.f32(i32 7, float %1417)  ; Saturate(value)
  %1419 = fmul fast float %1418, 2.000000e+00
  %1420 = fsub fast float 3.000000e+00, %1419
  %1421 = fmul fast float %1418, %1418
  %1422 = fmul fast float %1421, %1420
  %1423 = extractvalue %dx.types.CBufRet.f32 %1357, 2
  %1424 = fsub fast float %1423, %1356
  %1425 = fmul fast float %1422, %1424
  %1426 = fadd fast float %1425, %1356
  %1427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1428 = extractvalue %dx.types.CBufRet.f32 %1427, 0
  %1429 = call float @dx.op.unary.f32(i32 6, float %1428)  ; FAbs(value)
  %1430 = fcmp fast oge float %1429, 0x3F50624DE0000000
  %1431 = select i1 %1430, float %1423, float %1426
  %1432 = fmul fast float %1385, %1171
  %1433 = fmul fast float %1400, %1400
  %1434 = fmul fast float %1433, %1432
  %1435 = fmul fast float %1434, %1402
  %1436 = fmul fast float %1435, %1431
  %1437 = fmul fast float %1358, %1358
  %1438 = fcmp fast ogt float %1437, %1412
  %1439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 429)  ; CBufferLoadLegacy(handle,regIndex)
  %1440 = extractvalue %dx.types.CBufRet.f32 %1439, 0
  %1441 = fmul fast float %1440, 0x4043AF5EC0000000
  %1442 = fmul fast float %1441, %1436
  br i1 %1438, label %1443, label %1524, !dx.controlflow.hints !50

; <label>:1443                                    ; preds = %1383
  %1444 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1445 = extractvalue %dx.types.CBufRet.i32 %1444, 0
  %1446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1447 = extractvalue %dx.types.CBufRet.f32 %1446, 2
  %1448 = uitofp i32 %1445 to float
  %1449 = fmul fast float %1448, %1403
  %1450 = fmul fast float %1448, %1404
  %1451 = fadd fast float %1449, -5.000000e-01
  %1452 = fadd fast float %1450, -5.000000e-01
  %1453 = call float @dx.op.unary.f32(i32 27, float %1451)  ; Round_ni(value)
  %1454 = call float @dx.op.unary.f32(i32 27, float %1452)  ; Round_ni(value)
  %1455 = fsub fast float %1451, %1453
  %1456 = fsub fast float %1452, %1454
  %1457 = fsub fast float 1.000000e+00, %1455
  %1458 = fsub fast float 1.000000e+00, %1456
  %1459 = fmul fast float %1457, %1457
  %1460 = fmul fast float %1458, %1458
  %1461 = fmul fast float %1455, %1455
  %1462 = fmul fast float %1456, %1456
  %1463 = fmul fast float %1457, 0x3FC5555560000000
  %1464 = fmul fast float %1463, %1459
  %1465 = fmul fast float %1458, 0x3FC5555560000000
  %1466 = fmul fast float %1465, %1460
  %1467 = fmul fast float %1461, 5.000000e-01
  %1468 = fmul fast float %1462, 5.000000e-01
  %1469 = fsub fast float 2.000000e+00, %1455
  %1470 = fsub fast float 2.000000e+00, %1456
  %1471 = fmul fast float %1467, %1469
  %1472 = fmul fast float %1468, %1470
  %1473 = fsub fast float 0x3FE5555560000000, %1471
  %1474 = fsub fast float 0x3FE5555560000000, %1472
  %1475 = fadd fast float %1455, 1.000000e+00
  %1476 = fadd fast float %1456, 1.000000e+00
  %1477 = fmul fast float %1475, 5.000000e-01
  %1478 = fmul fast float %1477, %1459
  %1479 = fmul fast float %1476, 5.000000e-01
  %1480 = fmul fast float %1479, %1460
  %1481 = fmul fast float %1455, 0x3FC5555560000000
  %1482 = fmul fast float %1481, %1461
  %1483 = fmul fast float %1456, 0x3FC5555560000000
  %1484 = fmul fast float %1483, %1462
  %1485 = fadd fast float %1464, %1473
  %1486 = fadd fast float %1466, %1474
  %1487 = fadd fast float %1482, 0x3FE5555560000000
  %1488 = fsub fast float %1487, %1478
  %1489 = fadd fast float %1484, 0x3FE5555560000000
  %1490 = fsub fast float %1489, %1480
  %1491 = fdiv fast float %1473, %1485
  %1492 = fdiv fast float %1474, %1486
  %1493 = fadd fast float %1453, -5.000000e-01
  %1494 = fadd fast float %1493, %1491
  %1495 = fadd fast float %1454, -5.000000e-01
  %1496 = fadd fast float %1495, %1492
  %1497 = fmul fast float %1494, %1447
  %1498 = fmul fast float %1496, %1447
  %1499 = fdiv fast float %1482, %1488
  %1500 = fdiv fast float %1484, %1490
  %1501 = fadd fast float %1453, 1.500000e+00
  %1502 = fadd fast float %1501, %1499
  %1503 = fadd fast float %1454, 1.500000e+00
  %1504 = fadd fast float %1503, %1500
  %1505 = fmul fast float %1502, %1447
  %1506 = fmul fast float %1504, %1447
  %1507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1497, float %1498, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1508 = extractvalue %dx.types.ResRet.f32 %1507, 0
  %1509 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1505, float %1498, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1510 = extractvalue %dx.types.ResRet.f32 %1509, 0
  %1511 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1497, float %1506, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1512 = extractvalue %dx.types.ResRet.f32 %1511, 0
  %1513 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1505, float %1506, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1514 = extractvalue %dx.types.ResRet.f32 %1513, 0
  %1515 = fsub fast float %1508, %1512
  %1516 = fmul fast float %1515, %1486
  %1517 = fadd fast float %1516, %1512
  %1518 = fsub fast float %1510, %1514
  %1519 = fmul fast float %1518, %1486
  %1520 = fadd fast float %1519, %1514
  %1521 = fsub fast float %1517, %1520
  %1522 = fmul fast float %1521, %1485
  %1523 = fadd fast float %1522, %1520
  br label %1554

; <label>:1524                                    ; preds = %1383
  %1525 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1403, float %1404, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1526 = extractvalue %dx.types.ResRet.f32 %1525, 0
  %1527 = fsub fast float %1346, %74
  %1528 = fmul fast float %1365, %1527
  %1529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1403, float %1528, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1530 = extractvalue %dx.types.ResRet.f32 %1529, 0
  %1531 = fadd fast float %74, %1346
  %1532 = fmul fast float %1365, %1531
  %1533 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1403, float %1532, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1534 = extractvalue %dx.types.ResRet.f32 %1533, 0
  %1535 = fsub fast float %1345, %74
  %1536 = fmul fast float %1365, %1535
  %1537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1536, float %1404, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1538 = extractvalue %dx.types.ResRet.f32 %1537, 0
  %1539 = fadd fast float %74, %1345
  %1540 = fmul fast float %1365, %1539
  %1541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1540, float %1404, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1542 = extractvalue %dx.types.ResRet.f32 %1541, 0
  %1543 = fsub fast float %1542, %1538
  %1544 = fsub fast float %1534, %1530
  %1545 = fmul fast float %1442, %1543
  %1546 = fsub fast float -0.000000e+00, %1545
  %1547 = fmul fast float %1442, %1544
  %1548 = fsub fast float -0.000000e+00, %1547
  %1549 = call float @dx.op.dot3.f32(i32 55, float %1546, float %1548, float %116, float %1546, float %1548, float %116)  ; Dot3(ax,ay,az,bx,by,bz)
  %1550 = call float @dx.op.unary.f32(i32 25, float %1549)  ; Rsqrt(value)
  %1551 = fmul fast float %1550, %1546
  %1552 = fmul fast float %1550, %1548
  %1553 = fmul fast float %1550, %116
  br label %1554

; <label>:1554                                    ; preds = %1524, %1443
  %1555 = phi float [ %1523, %1443 ], [ %1526, %1524 ]
  %1556 = phi i1 [ true, %1443 ], [ false, %1524 ]
  %1557 = phi float [ 0.000000e+00, %1443 ], [ %1551, %1524 ]
  %1558 = phi float [ 0.000000e+00, %1443 ], [ %1552, %1524 ]
  %1559 = phi float [ 0.000000e+00, %1443 ], [ %1553, %1524 ]
  %1560 = fadd fast float %1555, -5.000000e-01
  %1561 = fmul fast float %1560, %1442
  %1562 = fadd fast float %1428, 1.000000e+00
  %1563 = fmul fast float %1562, 5.000000e-01
  %1564 = select i1 %1430, float %1563, float 0.000000e+00
  %1565 = select i1 %1430, float %1563, float %1561
  %1566 = select i1 %1430, float 1.000000e+00, float %1559
  %1567 = xor i1 %1430, true
  %1568 = or i1 %1438, %1556
  %1569 = and i1 %1568, %1567
  br i1 %1569, label %1570, label %1774, !dx.controlflow.hints !51

; <label>:1570                                    ; preds = %1554
  %1571 = fmul fast float %1316, %74
  %1572 = fmul fast float %1317, %74
  %1573 = fmul fast float %1318, %74
  %1574 = fmul fast float %1308, %74
  %1575 = fmul fast float %1309, %74
  %1576 = fmul fast float %1310, %74
  %1577 = fadd fast float %1345, %1571
  %1578 = fadd fast float %1346, %1572
  %1579 = fmul fast float %1365, %1577
  %1580 = fmul fast float %1365, %1578
  %1581 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1582 = extractvalue %dx.types.CBufRet.i32 %1581, 0
  %1583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1584 = extractvalue %dx.types.CBufRet.f32 %1583, 2
  %1585 = uitofp i32 %1582 to float
  %1586 = fmul fast float %1579, %1585
  %1587 = fmul fast float %1580, %1585
  %1588 = fadd fast float %1586, -5.000000e-01
  %1589 = fadd fast float %1587, -5.000000e-01
  %1590 = call float @dx.op.unary.f32(i32 27, float %1588)  ; Round_ni(value)
  %1591 = call float @dx.op.unary.f32(i32 27, float %1589)  ; Round_ni(value)
  %1592 = fsub fast float %1588, %1590
  %1593 = fsub fast float %1589, %1591
  %1594 = fsub fast float 1.000000e+00, %1592
  %1595 = fsub fast float 1.000000e+00, %1593
  %1596 = fmul fast float %1594, %1594
  %1597 = fmul fast float %1595, %1595
  %1598 = fmul fast float %1592, %1592
  %1599 = fmul fast float %1593, %1593
  %1600 = fmul fast float %1594, 0x3FC5555560000000
  %1601 = fmul fast float %1600, %1596
  %1602 = fmul fast float %1595, 0x3FC5555560000000
  %1603 = fmul fast float %1602, %1597
  %1604 = fmul fast float %1598, 5.000000e-01
  %1605 = fmul fast float %1599, 5.000000e-01
  %1606 = fsub fast float 2.000000e+00, %1592
  %1607 = fsub fast float 2.000000e+00, %1593
  %1608 = fmul fast float %1604, %1606
  %1609 = fmul fast float %1605, %1607
  %1610 = fsub fast float 0x3FE5555560000000, %1608
  %1611 = fsub fast float 0x3FE5555560000000, %1609
  %1612 = fadd fast float %1592, 1.000000e+00
  %1613 = fadd fast float %1593, 1.000000e+00
  %1614 = fmul fast float %1612, 5.000000e-01
  %1615 = fmul fast float %1614, %1596
  %1616 = fmul fast float %1613, 5.000000e-01
  %1617 = fmul fast float %1616, %1597
  %1618 = fmul fast float %1592, 0x3FC5555560000000
  %1619 = fmul fast float %1618, %1598
  %1620 = fmul fast float %1593, 0x3FC5555560000000
  %1621 = fmul fast float %1620, %1599
  %1622 = fadd fast float %1601, %1610
  %1623 = fadd fast float %1603, %1611
  %1624 = fadd fast float %1619, 0x3FE5555560000000
  %1625 = fsub fast float %1624, %1615
  %1626 = fadd fast float %1621, 0x3FE5555560000000
  %1627 = fsub fast float %1626, %1617
  %1628 = fdiv fast float %1610, %1622
  %1629 = fdiv fast float %1611, %1623
  %1630 = fadd fast float %1590, -5.000000e-01
  %1631 = fadd fast float %1630, %1628
  %1632 = fadd fast float %1591, -5.000000e-01
  %1633 = fadd fast float %1632, %1629
  %1634 = fmul fast float %1631, %1584
  %1635 = fmul fast float %1633, %1584
  %1636 = fdiv fast float %1619, %1625
  %1637 = fdiv fast float %1621, %1627
  %1638 = fadd fast float %1590, 1.500000e+00
  %1639 = fadd fast float %1638, %1636
  %1640 = fadd fast float %1591, 1.500000e+00
  %1641 = fadd fast float %1640, %1637
  %1642 = fmul fast float %1639, %1584
  %1643 = fmul fast float %1641, %1584
  %1644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1634, float %1635, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1645 = extractvalue %dx.types.ResRet.f32 %1644, 0
  %1646 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1642, float %1635, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1647 = extractvalue %dx.types.ResRet.f32 %1646, 0
  %1648 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1634, float %1643, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1649 = extractvalue %dx.types.ResRet.f32 %1648, 0
  %1650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1642, float %1643, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1651 = extractvalue %dx.types.ResRet.f32 %1650, 0
  %1652 = fsub fast float %1645, %1649
  %1653 = fmul fast float %1652, %1623
  %1654 = fadd fast float %1653, %1649
  %1655 = fsub fast float %1647, %1651
  %1656 = fmul fast float %1655, %1623
  %1657 = fadd fast float %1656, %1651
  %1658 = fsub fast float %1654, %1657
  %1659 = fmul fast float %1658, %1622
  %1660 = fadd fast float %1657, -5.000000e-01
  %1661 = fadd fast float %1660, %1659
  %1662 = fmul fast float %1436, 0x4043AF5EC0000000
  %1663 = fmul fast float %1662, %1440
  %1664 = fmul fast float %1663, %1661
  %1665 = fadd fast float %1345, %1574
  %1666 = fadd fast float %1346, %1575
  %1667 = fmul fast float %1365, %1665
  %1668 = fmul fast float %1365, %1666
  %1669 = fmul fast float %1667, %1585
  %1670 = fmul fast float %1668, %1585
  %1671 = fadd fast float %1669, -5.000000e-01
  %1672 = fadd fast float %1670, -5.000000e-01
  %1673 = call float @dx.op.unary.f32(i32 27, float %1671)  ; Round_ni(value)
  %1674 = call float @dx.op.unary.f32(i32 27, float %1672)  ; Round_ni(value)
  %1675 = fsub fast float %1671, %1673
  %1676 = fsub fast float %1672, %1674
  %1677 = fsub fast float 1.000000e+00, %1675
  %1678 = fsub fast float 1.000000e+00, %1676
  %1679 = fmul fast float %1677, %1677
  %1680 = fmul fast float %1678, %1678
  %1681 = fmul fast float %1675, %1675
  %1682 = fmul fast float %1676, %1676
  %1683 = fmul fast float %1677, 0x3FC5555560000000
  %1684 = fmul fast float %1683, %1679
  %1685 = fmul fast float %1678, 0x3FC5555560000000
  %1686 = fmul fast float %1685, %1680
  %1687 = fmul fast float %1681, 5.000000e-01
  %1688 = fmul fast float %1682, 5.000000e-01
  %1689 = fsub fast float 2.000000e+00, %1675
  %1690 = fsub fast float 2.000000e+00, %1676
  %1691 = fmul fast float %1687, %1689
  %1692 = fmul fast float %1688, %1690
  %1693 = fsub fast float 0x3FE5555560000000, %1691
  %1694 = fsub fast float 0x3FE5555560000000, %1692
  %1695 = fadd fast float %1675, 1.000000e+00
  %1696 = fadd fast float %1676, 1.000000e+00
  %1697 = fmul fast float %1695, 5.000000e-01
  %1698 = fmul fast float %1697, %1679
  %1699 = fmul fast float %1696, 5.000000e-01
  %1700 = fmul fast float %1699, %1680
  %1701 = fmul fast float %1675, 0x3FC5555560000000
  %1702 = fmul fast float %1701, %1681
  %1703 = fmul fast float %1676, 0x3FC5555560000000
  %1704 = fmul fast float %1703, %1682
  %1705 = fadd fast float %1684, %1693
  %1706 = fadd fast float %1686, %1694
  %1707 = fadd fast float %1702, 0x3FE5555560000000
  %1708 = fsub fast float %1707, %1698
  %1709 = fadd fast float %1704, 0x3FE5555560000000
  %1710 = fsub fast float %1709, %1700
  %1711 = fdiv fast float %1693, %1705
  %1712 = fdiv fast float %1694, %1706
  %1713 = fadd fast float %1673, -5.000000e-01
  %1714 = fadd fast float %1713, %1711
  %1715 = fadd fast float %1674, -5.000000e-01
  %1716 = fadd fast float %1715, %1712
  %1717 = fmul fast float %1714, %1584
  %1718 = fmul fast float %1716, %1584
  %1719 = fdiv fast float %1702, %1708
  %1720 = fdiv fast float %1704, %1710
  %1721 = fadd fast float %1673, 1.500000e+00
  %1722 = fadd fast float %1721, %1719
  %1723 = fadd fast float %1674, 1.500000e+00
  %1724 = fadd fast float %1723, %1720
  %1725 = fmul fast float %1722, %1584
  %1726 = fmul fast float %1724, %1584
  %1727 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1717, float %1718, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1728 = extractvalue %dx.types.ResRet.f32 %1727, 0
  %1729 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1725, float %1718, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1730 = extractvalue %dx.types.ResRet.f32 %1729, 0
  %1731 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1717, float %1726, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1732 = extractvalue %dx.types.ResRet.f32 %1731, 0
  %1733 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1725, float %1726, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1734 = extractvalue %dx.types.ResRet.f32 %1733, 0
  %1735 = fsub fast float %1728, %1732
  %1736 = fmul fast float %1735, %1706
  %1737 = fadd fast float %1736, %1732
  %1738 = fsub fast float %1730, %1734
  %1739 = fmul fast float %1738, %1706
  %1740 = fadd fast float %1739, %1734
  %1741 = fsub fast float %1737, %1740
  %1742 = fmul fast float %1741, %1705
  %1743 = fadd fast float %1740, -5.000000e-01
  %1744 = fadd fast float %1743, %1742
  %1745 = fmul fast float %1663, %1744
  %1746 = fsub fast float %1664, %1565
  %1747 = fadd fast float %1746, %1573
  %1748 = fsub fast float %1745, %1565
  %1749 = fadd fast float %1748, %1576
  %1750 = call float @dx.op.dot3.f32(i32 55, float %1571, float %1572, float %1747, float %1571, float %1572, float %1747)  ; Dot3(ax,ay,az,bx,by,bz)
  %1751 = call float @dx.op.unary.f32(i32 25, float %1750)  ; Rsqrt(value)
  %1752 = fmul fast float %1751, %1571
  %1753 = fmul fast float %1751, %1572
  %1754 = fmul fast float %1751, %1747
  %1755 = call float @dx.op.dot3.f32(i32 55, float %1574, float %1575, float %1749, float %1574, float %1575, float %1749)  ; Dot3(ax,ay,az,bx,by,bz)
  %1756 = call float @dx.op.unary.f32(i32 25, float %1755)  ; Rsqrt(value)
  %1757 = fmul fast float %1756, %1574
  %1758 = fmul fast float %1756, %1575
  %1759 = fmul fast float %1749, %1756
  %1760 = fmul fast float %1759, %1753
  %1761 = fmul fast float %1758, %1754
  %1762 = fsub fast float %1760, %1761
  %1763 = fmul fast float %1757, %1754
  %1764 = fmul fast float %1759, %1752
  %1765 = fsub fast float %1763, %1764
  %1766 = fmul fast float %1758, %1752
  %1767 = fmul fast float %1757, %1753
  %1768 = fsub fast float %1766, %1767
  %1769 = call float @dx.op.dot3.f32(i32 55, float %1762, float %1765, float %1768, float %1762, float %1765, float %1768)  ; Dot3(ax,ay,az,bx,by,bz)
  %1770 = call float @dx.op.unary.f32(i32 25, float %1769)  ; Rsqrt(value)
  %1771 = fmul fast float %1762, %1770
  %1772 = fmul fast float %1765, %1770
  %1773 = fmul fast float %1768, %1770
  br label %1789

; <label>:1774                                    ; preds = %1554
  %1775 = select i1 %1430, float 0.000000e+00, float %1558
  %1776 = select i1 %1430, float 0.000000e+00, float %1557
  %1777 = fmul fast float %1566, %1330
  %1778 = fmul fast float %1566, %1331
  %1779 = fmul fast float %1776, %1332
  %1780 = fmul fast float %1775, %1332
  %1781 = fadd fast float %1777, %1779
  %1782 = fadd fast float %1778, %1780
  %1783 = fmul fast float %1566, %1332
  %1784 = call float @dx.op.dot3.f32(i32 55, float %1781, float %1782, float %1783, float %1781, float %1782, float %1783)  ; Dot3(ax,ay,az,bx,by,bz)
  %1785 = call float @dx.op.unary.f32(i32 25, float %1784)  ; Rsqrt(value)
  %1786 = fmul fast float %1785, %1781
  %1787 = fmul fast float %1785, %1782
  %1788 = fmul fast float %1785, %1783
  br label %1789

; <label>:1789                                    ; preds = %1774, %1570, %1352
  %1790 = phi float [ %1564, %1570 ], [ %1564, %1774 ], [ 0.000000e+00, %1352 ]
  %1791 = phi float [ %1565, %1570 ], [ %1565, %1774 ], [ 0.000000e+00, %1352 ]
  %1792 = phi float [ %1771, %1570 ], [ %1786, %1774 ], [ %1330, %1352 ]
  %1793 = phi float [ %1772, %1570 ], [ %1787, %1774 ], [ %1331, %1352 ]
  %1794 = phi float [ %1773, %1570 ], [ %1788, %1774 ], [ %1332, %1352 ]
  %1795 = fadd fast float %1790, %1345
  %1796 = fadd fast float %1790, %1346
  %1797 = fadd fast float %1791, %1348
  br label %1798

; <label>:1798                                    ; preds = %1789, %1152
  %1799 = phi float [ %1795, %1789 ], [ %1345, %1152 ]
  %1800 = phi float [ %1796, %1789 ], [ %1346, %1152 ]
  %1801 = phi float [ %1797, %1789 ], [ %1348, %1152 ]
  %1802 = phi float [ %1792, %1789 ], [ %1330, %1152 ]
  %1803 = phi float [ %1793, %1789 ], [ %1331, %1152 ]
  %1804 = phi float [ %1794, %1789 ], [ %1332, %1152 ]
  %1805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1806 = extractvalue %dx.types.CBufRet.f32 %1805, 0
  %1807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1808 = extractvalue %dx.types.CBufRet.f32 %1807, 0
  %1809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1810 = extractvalue %dx.types.CBufRet.f32 %1809, 0
  %1811 = extractvalue %dx.types.CBufRet.f32 %1805, 1
  %1812 = extractvalue %dx.types.CBufRet.f32 %1807, 1
  %1813 = extractvalue %dx.types.CBufRet.f32 %1809, 1
  %1814 = extractvalue %dx.types.CBufRet.f32 %1805, 2
  %1815 = extractvalue %dx.types.CBufRet.f32 %1807, 2
  %1816 = extractvalue %dx.types.CBufRet.f32 %1809, 2
  %1817 = extractvalue %dx.types.CBufRet.f32 %1805, 3
  %1818 = extractvalue %dx.types.CBufRet.f32 %1807, 3
  %1819 = extractvalue %dx.types.CBufRet.f32 %1809, 3
  %1820 = fadd fast float %1817, %1799
  %1821 = fadd fast float %1818, %1800
  %1822 = fadd fast float %1819, %1801
  %1823 = fmul fast float %1820, %1806
  %1824 = call float @dx.op.tertiary.f32(i32 46, float %1821, float %1811, float %1823)  ; FMad(a,b,c)
  %1825 = call float @dx.op.tertiary.f32(i32 46, float %1822, float %1814, float %1824)  ; FMad(a,b,c)
  %1826 = fmul fast float %1820, %1808
  %1827 = call float @dx.op.tertiary.f32(i32 46, float %1821, float %1812, float %1826)  ; FMad(a,b,c)
  %1828 = call float @dx.op.tertiary.f32(i32 46, float %1822, float %1815, float %1827)  ; FMad(a,b,c)
  %1829 = fmul fast float %1820, %1810
  %1830 = call float @dx.op.tertiary.f32(i32 46, float %1821, float %1813, float %1829)  ; FMad(a,b,c)
  %1831 = call float @dx.op.tertiary.f32(i32 46, float %1822, float %1816, float %1830)  ; FMad(a,b,c)
  %1832 = fsub fast float %1825, %1817
  %1833 = fsub fast float %1828, %1818
  %1834 = fsub fast float %1831, %1819
  %1835 = fmul fast float %1806, %1802
  %1836 = call float @dx.op.tertiary.f32(i32 46, float %1803, float %1811, float %1835)  ; FMad(a,b,c)
  %1837 = call float @dx.op.tertiary.f32(i32 46, float %1804, float %1814, float %1836)  ; FMad(a,b,c)
  %1838 = fmul fast float %1808, %1802
  %1839 = call float @dx.op.tertiary.f32(i32 46, float %1803, float %1812, float %1838)  ; FMad(a,b,c)
  %1840 = call float @dx.op.tertiary.f32(i32 46, float %1804, float %1815, float %1839)  ; FMad(a,b,c)
  %1841 = fmul fast float %1810, %1802
  %1842 = call float @dx.op.tertiary.f32(i32 46, float %1803, float %1813, float %1841)  ; FMad(a,b,c)
  %1843 = call float @dx.op.tertiary.f32(i32 46, float %1804, float %1816, float %1842)  ; FMad(a,b,c)
  %1844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 208)  ; CBufferLoadLegacy(handle,regIndex)
  %1845 = extractvalue %dx.types.CBufRet.f32 %1844, 2
  %1846 = fadd fast float %1834, %1845
  %1847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1848 = extractvalue %dx.types.CBufRet.f32 %1847, 0
  %1849 = extractvalue %dx.types.CBufRet.f32 %1847, 1
  %1850 = extractvalue %dx.types.CBufRet.f32 %1847, 2
  %1851 = fsub fast float %1832, %1848
  %1852 = fsub fast float %1833, %1849
  %1853 = fsub fast float %1846, %1850
  %1854 = fmul fast float %135, 6.553500e+04
  %1855 = call float @dx.op.unary.f32(i32 26, float %1854)  ; Round_ne(value)
  %1856 = fptosi float %1855 to i32
  %1857 = call i32 @dx.op.binary.i32(i32 37, i32 %1856, i32 0)  ; IMax(a,b)
  %1858 = call i32 @dx.op.binary.i32(i32 38, i32 %1857, i32 65535)  ; IMin(a,b)
  %1859 = fmul fast float %138, 6.553500e+04
  %1860 = call float @dx.op.unary.f32(i32 26, float %1859)  ; Round_ne(value)
  %1861 = fptosi float %1860 to i32
  %1862 = call i32 @dx.op.binary.i32(i32 37, i32 %1861, i32 0)  ; IMax(a,b)
  %1863 = call i32 @dx.op.binary.i32(i32 38, i32 %1862, i32 65535)  ; IMin(a,b)
  %1864 = shl i32 %1863, 16
  %1865 = or i32 %1864, %1858
  %1866 = call float @dx.op.unary.f32(i32 6, float %1837)  ; FAbs(value)
  %1867 = call float @dx.op.unary.f32(i32 6, float %1840)  ; FAbs(value)
  %1868 = fadd fast float %1867, %1866
  %1869 = call float @dx.op.unary.f32(i32 6, float %1843)  ; FAbs(value)
  %1870 = fadd fast float %1868, %1869
  %1871 = fdiv fast float %1837, %1870
  %1872 = fdiv fast float %1840, %1870
  %1873 = fdiv fast float %1843, %1870
  %1874 = fcmp fast oge float %1873, 0.000000e+00
  %1875 = call float @dx.op.unary.f32(i32 6, float %1872)  ; FAbs(value)
  %1876 = call float @dx.op.unary.f32(i32 6, float %1871)  ; FAbs(value)
  %1877 = fsub fast float 1.000000e+00, %1875
  %1878 = fsub fast float 1.000000e+00, %1876
  %1879 = fcmp fast oge float %1871, 0.000000e+00
  %1880 = select i1 %1879, float 1.000000e+00, float -1.000000e+00
  %1881 = fcmp fast oge float %1872, 0.000000e+00
  %1882 = select i1 %1881, float 1.000000e+00, float -1.000000e+00
  %1883 = fmul fast float %1877, %1880
  %1884 = fmul fast float %1878, %1882
  %1885 = select i1 %1874, float %1871, float %1883
  %1886 = select i1 %1874, float %1872, float %1884
  %1887 = fmul fast float %1885, 1.275000e+02
  %1888 = fmul fast float %1886, 1.275000e+02
  %1889 = fadd fast float %1887, 1.275000e+02
  %1890 = fadd fast float %1888, 1.275000e+02
  %1891 = call float @dx.op.unary.f32(i32 26, float %1889)  ; Round_ne(value)
  %1892 = call float @dx.op.unary.f32(i32 26, float %1890)  ; Round_ne(value)
  %1893 = fptoui float %1891 to i32
  %1894 = fptoui float %1892 to i32
  %1895 = shl i32 %1894, 8
  %1896 = shl i32 %1183, 16
  %1897 = or i32 %1893, %1896
  %1898 = or i32 %1897, %1895
  %1899 = mul i32 %31, 20
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %1899, i32 undef, float %1851, float %1852, float %1853, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1900 = add i32 %1899, 12
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1900, i32 undef, i32 %1865, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1901 = add i32 %1899, 16
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1901, i32 undef, i32 %1898, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1906

; <label>:1902                                    ; preds = %361
  %1903 = mul i32 %31, 20
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %1903, i32 undef, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1904 = add i32 %1903, 12
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1904, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1905 = add i32 %1903, 16
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1905, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1906

; <label>:1906                                    ; preds = %1902, %1798, %0
  %1907 = phi float [ %1851, %1798 ], [ 0.000000e+00, %1902 ], [ 0.000000e+00, %0 ]
  %1908 = phi float [ %1852, %1798 ], [ 0.000000e+00, %1902 ], [ 0.000000e+00, %0 ]
  %1909 = phi float [ %1853, %1798 ], [ 0.000000e+00, %1902 ], [ 0.000000e+00, %0 ]
  %1910 = phi i1 [ true, %1798 ], [ false, %1902 ], [ false, %0 ]
  %1911 = phi i32 [ %1206, %1798 ], [ %365, %1902 ], [ 0, %0 ]
  %1912 = fadd fast float %1907, 1.310720e+05
  %1913 = fadd fast float %1908, 1.310720e+05
  %1914 = fadd fast float %1909, 1.310720e+05
  %1915 = call float @dx.op.binary.f32(i32 35, float %1912, float 0.000000e+00)  ; FMax(a,b)
  %1916 = call float @dx.op.binary.f32(i32 35, float %1913, float 0.000000e+00)  ; FMax(a,b)
  %1917 = call float @dx.op.binary.f32(i32 35, float %1914, float 0.000000e+00)  ; FMax(a,b)
  %1918 = bitcast float %1915 to i32
  %1919 = bitcast float %1916 to i32
  %1920 = bitcast float %1917 to i32
  %1921 = select i1 %1910, i32 %1918, i32 -1
  %1922 = select i1 %1910, i32 %1919, i32 -1
  %1923 = select i1 %1910, i32 %1920, i32 -1
  %1924 = select i1 %1910, i32 %1918, i32 0
  %1925 = select i1 %1910, i32 %1919, i32 0
  %1926 = select i1 %1910, i32 %1920, i32 0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1927 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %21
  store i32 %1921, i32 addrspace(3)* %1927, align 4, !tbaa !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1928 = and i32 %21, 63
  %1929 = icmp ult i32 %1928, 32
  br i1 %1929, label %1930, label %1936, !dx.controlflow.hints !54

; <label>:1930                                    ; preds = %1906
  %1931 = add i32 %21, 32
  %1932 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1931
  %1933 = load i32, i32 addrspace(3)* %1932, align 4, !tbaa !52
  %1934 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %1935 = call i32 @dx.op.binary.i32(i32 40, i32 %1934, i32 %1933)  ; UMin(a,b)
  store i32 %1935, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %1936

; <label>:1936                                    ; preds = %1930, %1906
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1937 = icmp ult i32 %1928, 16
  br i1 %1937, label %1938, label %1944, !dx.controlflow.hints !55

; <label>:1938                                    ; preds = %1936
  %1939 = add i32 %21, 16
  %1940 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1939
  %1941 = load i32, i32 addrspace(3)* %1940, align 4, !tbaa !52
  %1942 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %1943 = call i32 @dx.op.binary.i32(i32 40, i32 %1942, i32 %1941)  ; UMin(a,b)
  store i32 %1943, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %1944

; <label>:1944                                    ; preds = %1938, %1936
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1945 = icmp ult i32 %1928, 8
  br i1 %1945, label %1946, label %1952, !dx.controlflow.hints !56

; <label>:1946                                    ; preds = %1944
  %1947 = add i32 %21, 8
  %1948 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1947
  %1949 = load i32, i32 addrspace(3)* %1948, align 4, !tbaa !52
  %1950 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %1951 = call i32 @dx.op.binary.i32(i32 40, i32 %1950, i32 %1949)  ; UMin(a,b)
  store i32 %1951, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %1952

; <label>:1952                                    ; preds = %1946, %1944
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1953 = icmp ult i32 %1928, 4
  br i1 %1953, label %1954, label %1960, !dx.controlflow.hints !57

; <label>:1954                                    ; preds = %1952
  %1955 = add i32 %21, 4
  %1956 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1955
  %1957 = load i32, i32 addrspace(3)* %1956, align 4, !tbaa !52
  %1958 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %1959 = call i32 @dx.op.binary.i32(i32 40, i32 %1958, i32 %1957)  ; UMin(a,b)
  store i32 %1959, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %1960

; <label>:1960                                    ; preds = %1954, %1952
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1961 = icmp ult i32 %1928, 2
  br i1 %1961, label %1962, label %1968, !dx.controlflow.hints !58

; <label>:1962                                    ; preds = %1960
  %1963 = add i32 %21, 2
  %1964 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1963
  %1965 = load i32, i32 addrspace(3)* %1964, align 4, !tbaa !52
  %1966 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %1967 = call i32 @dx.op.binary.i32(i32 40, i32 %1966, i32 %1965)  ; UMin(a,b)
  store i32 %1967, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %1968

; <label>:1968                                    ; preds = %1962, %1960
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1969 = icmp eq i32 %1928, 0
  br i1 %1969, label %1970, label %1976, !dx.controlflow.hints !59

; <label>:1970                                    ; preds = %1968
  %1971 = add i32 %21, 1
  %1972 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1971
  %1973 = load i32, i32 addrspace(3)* %1972, align 4, !tbaa !52
  %1974 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %1975 = call i32 @dx.op.binary.i32(i32 40, i32 %1974, i32 %1973)  ; UMin(a,b)
  store i32 %1975, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %1976

; <label>:1976                                    ; preds = %1970, %1968
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1977 = and i32 %21, -64
  %1978 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1977
  %1979 = load i32, i32 addrspace(3)* %1978, align 4, !tbaa !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1922, i32 addrspace(3)* %1927, align 4, !tbaa !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1929, label %1980, label %1986, !dx.controlflow.hints !54

; <label>:1980                                    ; preds = %1976
  %1981 = add i32 %21, 32
  %1982 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1981
  %1983 = load i32, i32 addrspace(3)* %1982, align 4, !tbaa !52
  %1984 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %1985 = call i32 @dx.op.binary.i32(i32 40, i32 %1984, i32 %1983)  ; UMin(a,b)
  store i32 %1985, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %1986

; <label>:1986                                    ; preds = %1980, %1976
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1937, label %1987, label %1993, !dx.controlflow.hints !55

; <label>:1987                                    ; preds = %1986
  %1988 = add i32 %21, 16
  %1989 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1988
  %1990 = load i32, i32 addrspace(3)* %1989, align 4, !tbaa !52
  %1991 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %1992 = call i32 @dx.op.binary.i32(i32 40, i32 %1991, i32 %1990)  ; UMin(a,b)
  store i32 %1992, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %1993

; <label>:1993                                    ; preds = %1987, %1986
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1945, label %1994, label %2000, !dx.controlflow.hints !56

; <label>:1994                                    ; preds = %1993
  %1995 = add i32 %21, 8
  %1996 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1995
  %1997 = load i32, i32 addrspace(3)* %1996, align 4, !tbaa !52
  %1998 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %1999 = call i32 @dx.op.binary.i32(i32 40, i32 %1998, i32 %1997)  ; UMin(a,b)
  store i32 %1999, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2000

; <label>:2000                                    ; preds = %1994, %1993
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1953, label %2001, label %2007, !dx.controlflow.hints !57

; <label>:2001                                    ; preds = %2000
  %2002 = add i32 %21, 4
  %2003 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2002
  %2004 = load i32, i32 addrspace(3)* %2003, align 4, !tbaa !52
  %2005 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2006 = call i32 @dx.op.binary.i32(i32 40, i32 %2005, i32 %2004)  ; UMin(a,b)
  store i32 %2006, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2007

; <label>:2007                                    ; preds = %2001, %2000
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1961, label %2008, label %2014, !dx.controlflow.hints !58

; <label>:2008                                    ; preds = %2007
  %2009 = add i32 %21, 2
  %2010 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2009
  %2011 = load i32, i32 addrspace(3)* %2010, align 4, !tbaa !52
  %2012 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2013 = call i32 @dx.op.binary.i32(i32 40, i32 %2012, i32 %2011)  ; UMin(a,b)
  store i32 %2013, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2014

; <label>:2014                                    ; preds = %2008, %2007
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1969, label %2015, label %2021, !dx.controlflow.hints !59

; <label>:2015                                    ; preds = %2014
  %2016 = add i32 %21, 1
  %2017 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2016
  %2018 = load i32, i32 addrspace(3)* %2017, align 4, !tbaa !52
  %2019 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2020 = call i32 @dx.op.binary.i32(i32 40, i32 %2019, i32 %2018)  ; UMin(a,b)
  store i32 %2020, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2021

; <label>:2021                                    ; preds = %2015, %2014
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2022 = load i32, i32 addrspace(3)* %1978, align 4, !tbaa !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1923, i32 addrspace(3)* %1927, align 4, !tbaa !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1929, label %2023, label %2029, !dx.controlflow.hints !54

; <label>:2023                                    ; preds = %2021
  %2024 = add i32 %21, 32
  %2025 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2024
  %2026 = load i32, i32 addrspace(3)* %2025, align 4, !tbaa !52
  %2027 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2028 = call i32 @dx.op.binary.i32(i32 40, i32 %2027, i32 %2026)  ; UMin(a,b)
  store i32 %2028, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2029

; <label>:2029                                    ; preds = %2023, %2021
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1937, label %2030, label %2036, !dx.controlflow.hints !55

; <label>:2030                                    ; preds = %2029
  %2031 = add i32 %21, 16
  %2032 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2031
  %2033 = load i32, i32 addrspace(3)* %2032, align 4, !tbaa !52
  %2034 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2035 = call i32 @dx.op.binary.i32(i32 40, i32 %2034, i32 %2033)  ; UMin(a,b)
  store i32 %2035, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2036

; <label>:2036                                    ; preds = %2030, %2029
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1945, label %2037, label %2043, !dx.controlflow.hints !56

; <label>:2037                                    ; preds = %2036
  %2038 = add i32 %21, 8
  %2039 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2038
  %2040 = load i32, i32 addrspace(3)* %2039, align 4, !tbaa !52
  %2041 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2042 = call i32 @dx.op.binary.i32(i32 40, i32 %2041, i32 %2040)  ; UMin(a,b)
  store i32 %2042, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2043

; <label>:2043                                    ; preds = %2037, %2036
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1953, label %2044, label %2050, !dx.controlflow.hints !57

; <label>:2044                                    ; preds = %2043
  %2045 = add i32 %21, 4
  %2046 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2045
  %2047 = load i32, i32 addrspace(3)* %2046, align 4, !tbaa !52
  %2048 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2049 = call i32 @dx.op.binary.i32(i32 40, i32 %2048, i32 %2047)  ; UMin(a,b)
  store i32 %2049, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2050

; <label>:2050                                    ; preds = %2044, %2043
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1961, label %2051, label %2057, !dx.controlflow.hints !58

; <label>:2051                                    ; preds = %2050
  %2052 = add i32 %21, 2
  %2053 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2052
  %2054 = load i32, i32 addrspace(3)* %2053, align 4, !tbaa !52
  %2055 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2056 = call i32 @dx.op.binary.i32(i32 40, i32 %2055, i32 %2054)  ; UMin(a,b)
  store i32 %2056, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2057

; <label>:2057                                    ; preds = %2051, %2050
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1969, label %2058, label %2064, !dx.controlflow.hints !59

; <label>:2058                                    ; preds = %2057
  %2059 = add i32 %21, 1
  %2060 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2059
  %2061 = load i32, i32 addrspace(3)* %2060, align 4, !tbaa !52
  %2062 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2063 = call i32 @dx.op.binary.i32(i32 40, i32 %2062, i32 %2061)  ; UMin(a,b)
  store i32 %2063, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2064

; <label>:2064                                    ; preds = %2058, %2057
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2065 = load i32, i32 addrspace(3)* %1978, align 4, !tbaa !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1924, i32 addrspace(3)* %1927, align 4, !tbaa !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1929, label %2066, label %2072, !dx.controlflow.hints !60

; <label>:2066                                    ; preds = %2064
  %2067 = add i32 %21, 32
  %2068 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2067
  %2069 = load i32, i32 addrspace(3)* %2068, align 4, !tbaa !52
  %2070 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2071 = call i32 @dx.op.binary.i32(i32 39, i32 %2070, i32 %2069)  ; UMax(a,b)
  store i32 %2071, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2072

; <label>:2072                                    ; preds = %2066, %2064
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1937, label %2073, label %2079, !dx.controlflow.hints !61

; <label>:2073                                    ; preds = %2072
  %2074 = add i32 %21, 16
  %2075 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2074
  %2076 = load i32, i32 addrspace(3)* %2075, align 4, !tbaa !52
  %2077 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2078 = call i32 @dx.op.binary.i32(i32 39, i32 %2077, i32 %2076)  ; UMax(a,b)
  store i32 %2078, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2079

; <label>:2079                                    ; preds = %2073, %2072
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1945, label %2080, label %2086, !dx.controlflow.hints !62

; <label>:2080                                    ; preds = %2079
  %2081 = add i32 %21, 8
  %2082 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2081
  %2083 = load i32, i32 addrspace(3)* %2082, align 4, !tbaa !52
  %2084 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2085 = call i32 @dx.op.binary.i32(i32 39, i32 %2084, i32 %2083)  ; UMax(a,b)
  store i32 %2085, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2086

; <label>:2086                                    ; preds = %2080, %2079
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1953, label %2087, label %2093, !dx.controlflow.hints !63

; <label>:2087                                    ; preds = %2086
  %2088 = add i32 %21, 4
  %2089 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2088
  %2090 = load i32, i32 addrspace(3)* %2089, align 4, !tbaa !52
  %2091 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2092 = call i32 @dx.op.binary.i32(i32 39, i32 %2091, i32 %2090)  ; UMax(a,b)
  store i32 %2092, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2093

; <label>:2093                                    ; preds = %2087, %2086
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1961, label %2094, label %2100, !dx.controlflow.hints !64

; <label>:2094                                    ; preds = %2093
  %2095 = add i32 %21, 2
  %2096 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2095
  %2097 = load i32, i32 addrspace(3)* %2096, align 4, !tbaa !52
  %2098 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2099 = call i32 @dx.op.binary.i32(i32 39, i32 %2098, i32 %2097)  ; UMax(a,b)
  store i32 %2099, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2100

; <label>:2100                                    ; preds = %2094, %2093
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1969, label %2101, label %2107, !dx.controlflow.hints !65

; <label>:2101                                    ; preds = %2100
  %2102 = add i32 %21, 1
  %2103 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2102
  %2104 = load i32, i32 addrspace(3)* %2103, align 4, !tbaa !52
  %2105 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2106 = call i32 @dx.op.binary.i32(i32 39, i32 %2105, i32 %2104)  ; UMax(a,b)
  store i32 %2106, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2107

; <label>:2107                                    ; preds = %2101, %2100
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2108 = load i32, i32 addrspace(3)* %1978, align 4, !tbaa !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1925, i32 addrspace(3)* %1927, align 4, !tbaa !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1929, label %2109, label %2115, !dx.controlflow.hints !60

; <label>:2109                                    ; preds = %2107
  %2110 = add i32 %21, 32
  %2111 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2110
  %2112 = load i32, i32 addrspace(3)* %2111, align 4, !tbaa !52
  %2113 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2114 = call i32 @dx.op.binary.i32(i32 39, i32 %2113, i32 %2112)  ; UMax(a,b)
  store i32 %2114, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2115

; <label>:2115                                    ; preds = %2109, %2107
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1937, label %2116, label %2122, !dx.controlflow.hints !61

; <label>:2116                                    ; preds = %2115
  %2117 = add i32 %21, 16
  %2118 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2117
  %2119 = load i32, i32 addrspace(3)* %2118, align 4, !tbaa !52
  %2120 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2121 = call i32 @dx.op.binary.i32(i32 39, i32 %2120, i32 %2119)  ; UMax(a,b)
  store i32 %2121, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2122

; <label>:2122                                    ; preds = %2116, %2115
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1945, label %2123, label %2129, !dx.controlflow.hints !62

; <label>:2123                                    ; preds = %2122
  %2124 = add i32 %21, 8
  %2125 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2124
  %2126 = load i32, i32 addrspace(3)* %2125, align 4, !tbaa !52
  %2127 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2128 = call i32 @dx.op.binary.i32(i32 39, i32 %2127, i32 %2126)  ; UMax(a,b)
  store i32 %2128, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2129

; <label>:2129                                    ; preds = %2123, %2122
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1953, label %2130, label %2136, !dx.controlflow.hints !63

; <label>:2130                                    ; preds = %2129
  %2131 = add i32 %21, 4
  %2132 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2131
  %2133 = load i32, i32 addrspace(3)* %2132, align 4, !tbaa !52
  %2134 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2135 = call i32 @dx.op.binary.i32(i32 39, i32 %2134, i32 %2133)  ; UMax(a,b)
  store i32 %2135, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2136

; <label>:2136                                    ; preds = %2130, %2129
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1961, label %2137, label %2143, !dx.controlflow.hints !64

; <label>:2137                                    ; preds = %2136
  %2138 = add i32 %21, 2
  %2139 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2138
  %2140 = load i32, i32 addrspace(3)* %2139, align 4, !tbaa !52
  %2141 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2142 = call i32 @dx.op.binary.i32(i32 39, i32 %2141, i32 %2140)  ; UMax(a,b)
  store i32 %2142, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2143

; <label>:2143                                    ; preds = %2137, %2136
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1969, label %2144, label %2150, !dx.controlflow.hints !65

; <label>:2144                                    ; preds = %2143
  %2145 = add i32 %21, 1
  %2146 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2145
  %2147 = load i32, i32 addrspace(3)* %2146, align 4, !tbaa !52
  %2148 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2149 = call i32 @dx.op.binary.i32(i32 39, i32 %2148, i32 %2147)  ; UMax(a,b)
  store i32 %2149, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2150

; <label>:2150                                    ; preds = %2144, %2143
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2151 = load i32, i32 addrspace(3)* %1978, align 4, !tbaa !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1926, i32 addrspace(3)* %1927, align 4, !tbaa !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1929, label %2152, label %2158, !dx.controlflow.hints !60

; <label>:2152                                    ; preds = %2150
  %2153 = add i32 %21, 32
  %2154 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2153
  %2155 = load i32, i32 addrspace(3)* %2154, align 4, !tbaa !52
  %2156 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2157 = call i32 @dx.op.binary.i32(i32 39, i32 %2156, i32 %2155)  ; UMax(a,b)
  store i32 %2157, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2158

; <label>:2158                                    ; preds = %2152, %2150
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1937, label %2159, label %2165, !dx.controlflow.hints !61

; <label>:2159                                    ; preds = %2158
  %2160 = add i32 %21, 16
  %2161 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2160
  %2162 = load i32, i32 addrspace(3)* %2161, align 4, !tbaa !52
  %2163 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2164 = call i32 @dx.op.binary.i32(i32 39, i32 %2163, i32 %2162)  ; UMax(a,b)
  store i32 %2164, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2165

; <label>:2165                                    ; preds = %2159, %2158
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1945, label %2166, label %2172, !dx.controlflow.hints !62

; <label>:2166                                    ; preds = %2165
  %2167 = add i32 %21, 8
  %2168 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2167
  %2169 = load i32, i32 addrspace(3)* %2168, align 4, !tbaa !52
  %2170 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2171 = call i32 @dx.op.binary.i32(i32 39, i32 %2170, i32 %2169)  ; UMax(a,b)
  store i32 %2171, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2172

; <label>:2172                                    ; preds = %2166, %2165
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1953, label %2173, label %2179, !dx.controlflow.hints !63

; <label>:2173                                    ; preds = %2172
  %2174 = add i32 %21, 4
  %2175 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2174
  %2176 = load i32, i32 addrspace(3)* %2175, align 4, !tbaa !52
  %2177 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2178 = call i32 @dx.op.binary.i32(i32 39, i32 %2177, i32 %2176)  ; UMax(a,b)
  store i32 %2178, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2179

; <label>:2179                                    ; preds = %2173, %2172
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1961, label %2180, label %2186, !dx.controlflow.hints !64

; <label>:2180                                    ; preds = %2179
  %2181 = add i32 %21, 2
  %2182 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2181
  %2183 = load i32, i32 addrspace(3)* %2182, align 4, !tbaa !52
  %2184 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2185 = call i32 @dx.op.binary.i32(i32 39, i32 %2184, i32 %2183)  ; UMax(a,b)
  store i32 %2185, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2186

; <label>:2186                                    ; preds = %2180, %2179
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1969, label %2187, label %2193, !dx.controlflow.hints !65

; <label>:2187                                    ; preds = %2186
  %2188 = add i32 %21, 1
  %2189 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2188
  %2190 = load i32, i32 addrspace(3)* %2189, align 4, !tbaa !52
  %2191 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2192 = call i32 @dx.op.binary.i32(i32 39, i32 %2191, i32 %2190)  ; UMax(a,b)
  store i32 %2192, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2193

; <label>:2193                                    ; preds = %2187, %2186
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2194 = load i32, i32 addrspace(3)* %1978, align 4, !tbaa !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1911, i32 addrspace(3)* %1927, align 4, !tbaa !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1929, label %2195, label %2201, !dx.controlflow.hints !66

; <label>:2195                                    ; preds = %2193
  %2196 = add i32 %21, 32
  %2197 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2196
  %2198 = load i32, i32 addrspace(3)* %2197, align 4, !tbaa !52
  %2199 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2200 = or i32 %2199, %2198
  store i32 %2200, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2201

; <label>:2201                                    ; preds = %2195, %2193
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1937, label %2202, label %2208, !dx.controlflow.hints !67

; <label>:2202                                    ; preds = %2201
  %2203 = add i32 %21, 16
  %2204 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2203
  %2205 = load i32, i32 addrspace(3)* %2204, align 4, !tbaa !52
  %2206 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2207 = or i32 %2206, %2205
  store i32 %2207, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2208

; <label>:2208                                    ; preds = %2202, %2201
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1945, label %2209, label %2215, !dx.controlflow.hints !68

; <label>:2209                                    ; preds = %2208
  %2210 = add i32 %21, 8
  %2211 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2210
  %2212 = load i32, i32 addrspace(3)* %2211, align 4, !tbaa !52
  %2213 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2214 = or i32 %2213, %2212
  store i32 %2214, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2215

; <label>:2215                                    ; preds = %2209, %2208
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1953, label %2216, label %2222, !dx.controlflow.hints !69

; <label>:2216                                    ; preds = %2215
  %2217 = add i32 %21, 4
  %2218 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2217
  %2219 = load i32, i32 addrspace(3)* %2218, align 4, !tbaa !52
  %2220 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2221 = or i32 %2220, %2219
  store i32 %2221, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2222

; <label>:2222                                    ; preds = %2216, %2215
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1961, label %2223, label %2229, !dx.controlflow.hints !70

; <label>:2223                                    ; preds = %2222
  %2224 = add i32 %21, 2
  %2225 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2224
  %2226 = load i32, i32 addrspace(3)* %2225, align 4, !tbaa !52
  %2227 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2228 = or i32 %2227, %2226
  store i32 %2228, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2229

; <label>:2229                                    ; preds = %2223, %2222
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1969, label %2230, label %2236, !dx.controlflow.hints !71

; <label>:2230                                    ; preds = %2229
  %2231 = add i32 %21, 1
  %2232 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2231
  %2233 = load i32, i32 addrspace(3)* %2232, align 4, !tbaa !52
  %2234 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !52
  %2235 = or i32 %2234, %2233
  store i32 %2235, i32 addrspace(3)* %1927, align 4, !tbaa !52
  br label %2236

; <label>:2236                                    ; preds = %2230, %2229
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2237 = icmp eq i32 %21, 0
  br i1 %2237, label %2238, label %2260, !dx.controlflow.hints !72

; <label>:2238                                    ; preds = %2236
  %2239 = load i32, i32 addrspace(3)* getelementptr inbounds ([64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 0), align 4, !tbaa !52
  %2240 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %2241 = extractvalue %dx.types.CBufRet.i32 %2240, 2
  %2242 = add i32 %2241, %22
  %2243 = shl i32 %2242, 2
  %2244 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %2243, i32 undef, i32 undef, i32 %2239)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %2245 = xor i32 %1979, -1
  %2246 = mul i32 %2242, 24
  %2247 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %2246, i32 undef, i32 undef, i32 %2245)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %2248 = xor i32 %2022, -1
  %2249 = or i32 %2246, 4
  %2250 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %2249, i32 undef, i32 undef, i32 %2248)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %2251 = xor i32 %2065, -1
  %2252 = add i32 %2246, 8
  %2253 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %2252, i32 undef, i32 undef, i32 %2251)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %2254 = add i32 %2246, 12
  %2255 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %2254, i32 undef, i32 undef, i32 %2108)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %2256 = add i32 %2246, 16
  %2257 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %2256, i32 undef, i32 undef, i32 %2151)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %2258 = add i32 %2246, 20
  %2259 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %2258, i32 undef, i32 undef, i32 %2194)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %2260

; <label>:2260                                    ; preds = %2238, %2236
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
!30 = !{void ()* @cs_water_tile_process_verts, !"cs_water_tile_process_verts", null, !4, !31}
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

