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
; shader hash: ac472ab1f58bfbc004520f39f906bb2b
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

define void @cs_water_tile_process_verts_debug_shader() {
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
  br i1 %26, label %32, label %2135, !dx.controlflow.hints !33

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
  br i1 %368, label %369, label %2131, !dx.controlflow.hints !36

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
  br i1 %508, label %1192, label %509

; <label>:509                                     ; preds = %369
  br label %510

; <label>:510                                     ; preds = %1169, %509
  %511 = phi i32 [ %1170, %1169 ], [ %365, %509 ]
  %512 = phi float [ %1171, %1169 ], [ 0.000000e+00, %509 ]
  %513 = phi float [ %1172, %1169 ], [ 0.000000e+00, %509 ]
  %514 = phi float [ %1173, %1169 ], [ 0.000000e+00, %509 ]
  %515 = phi float [ %1174, %1169 ], [ 0.000000e+00, %509 ]
  %516 = phi float [ %1175, %1169 ], [ 0.000000e+00, %509 ]
  %517 = phi float [ %1176, %1169 ], [ 0.000000e+00, %509 ]
  %518 = phi float [ %1177, %1169 ], [ 0.000000e+00, %509 ]
  %519 = phi float [ %1178, %1169 ], [ 0.000000e+00, %509 ]
  %520 = phi float [ %1179, %1169 ], [ 0.000000e+00, %509 ]
  %521 = phi float [ %1180, %1169 ], [ 0.000000e+00, %509 ]
  %522 = phi float [ %1181, %1169 ], [ 0.000000e+00, %509 ]
  %523 = phi float [ %1182, %1169 ], [ 0.000000e+00, %509 ]
  %524 = phi float [ %1183, %1169 ], [ 0.000000e+00, %509 ]
  %525 = phi float [ %1184, %1169 ], [ 0.000000e+00, %509 ]
  %526 = phi float [ %1185, %1169 ], [ 0.000000e+00, %509 ]
  %527 = phi float [ %1186, %1169 ], [ 0.000000e+00, %509 ]
  %528 = phi float [ %1187, %1169 ], [ 0.000000e+00, %509 ]
  %529 = phi float [ %552, %1169 ], [ 0.000000e+00, %509 ]
  %530 = phi float [ %1188, %1169 ], [ 0.000000e+00, %509 ]
  %531 = phi i32 [ %1189, %1169 ], [ 0, %509 ]
  %532 = shl i32 %531, 2
  %533 = add i32 %532, %67
  %534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.f32 %534, 0
  %536 = add i32 %532, %71
  %537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %536, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.i32 %537, 0
  %539 = add i32 %538, 0
  %540 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %539, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %541 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %540, i32 0)  ; GetDimensions(handle,mipLevel)
  %542 = extractvalue %dx.types.Dimensions %541, 0
  %543 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %542)  ; FirstbitLo(value)
  %544 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %545 = extractvalue %dx.types.CBufRet.i32 %544, 1
  %546 = sub nsw i32 %545, %543
  %547 = sitofp i32 %546 to float
  %548 = fsub fast float %152, %547
  %549 = call float @dx.op.binary.f32(i32 35, float %548, float 0.000000e+00)  ; FMax(a,b)
  %550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %540, %dx.types.Handle %12, float %506, float %507, float %535, float undef, i32 0, i32 0, i32 undef, float %549)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %551 = extractvalue %dx.types.ResRet.f32 %550, 0
  %552 = fadd fast float %551, %529
  %553 = fcmp fast ogt float %551, 0.000000e+00
  br i1 %553, label %554, label %1169, !dx.controlflow.hints !37

; <label>:554                                     ; preds = %510
  %555 = add i32 %532, %493
  %556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %555, i32 undef)  ; BufferLoad(srv,index,wot)
  %557 = extractvalue %dx.types.ResRet.i32 %556, 0
  %558 = and i32 %557, 32767
  %559 = mul nuw nsw i32 %558, 928
  %560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %559, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.i32 %560, 0
  %562 = or i32 %559, 4
  %563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %562, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.i32 %563, 0
  %565 = or i32 %559, 8
  %566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %565, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.f32 %566, 0
  %568 = or i32 %559, 12
  %569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %568, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.f32 %569, 1
  %571 = or i32 %559, 20
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %571, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = add nuw nsw i32 %559, 72
  %575 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %574, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.f32 %575, 0
  %577 = extractvalue %dx.types.ResRet.f32 %575, 1
  %578 = add nuw nsw i32 %559, 80
  %579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.f32 %579, 0
  %581 = add nuw nsw i32 %559, 84
  %582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %581, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.f32 %582, 0
  %584 = add nuw nsw i32 %559, 88
  %585 = add nuw nsw i32 %559, 228
  %586 = add nuw nsw i32 %559, 596
  %587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.f32 %587, 0
  %589 = extractvalue %dx.types.ResRet.f32 %587, 1
  %590 = add nuw nsw i32 %559, 604
  %591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.f32 %591, 0
  %593 = extractvalue %dx.types.ResRet.f32 %591, 1
  %594 = add nuw nsw i32 %559, 612
  %595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %594, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.f32 %595, 0
  %597 = add nuw nsw i32 %559, 616
  %598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %597, i32 undef)  ; BufferLoad(srv,index,wot)
  %599 = extractvalue %dx.types.ResRet.f32 %598, 0
  %600 = add nuw nsw i32 %559, 696
  %601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.f32 %601, 0
  %603 = extractvalue %dx.types.ResRet.f32 %601, 1
  %604 = add nuw nsw i32 %559, 708
  %605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.f32 %605, 0
  %607 = extractvalue %dx.types.ResRet.f32 %605, 1
  %608 = add nuw nsw i32 %559, 780
  %609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %608, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.f32 %609, 0
  %611 = extractvalue %dx.types.ResRet.f32 %609, 1
  %612 = add nuw nsw i32 %559, 792
  %613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %612, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.f32 %613, 0
  %615 = extractvalue %dx.types.ResRet.f32 %613, 1
  %616 = add nuw nsw i32 %559, 828
  %617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %616, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.f32 %617, 0
  %619 = add nuw nsw i32 %559, 840
  %620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %619, i32 undef)  ; BufferLoad(srv,index,wot)
  %621 = extractvalue %dx.types.ResRet.f32 %620, 0
  %622 = extractvalue %dx.types.ResRet.f32 %620, 1
  %623 = and i32 %531, 31
  %624 = shl i32 1, %623
  %625 = or i32 %624, %511
  %626 = shl i32 %561, 1
  %627 = and i32 %626, 256
  %628 = xor i32 %627, 256
  %629 = or i32 %625, %628
  %630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 201)  ; CBufferLoadLegacy(handle,regIndex)
  %631 = extractvalue %dx.types.CBufRet.f32 %630, 0
  %632 = call float @dx.op.binary.f32(i32 35, float %631, float %621)  ; FMax(a,b)
  %633 = call float @dx.op.binary.f32(i32 36, float %632, float %622)  ; FMin(a,b)
  %634 = fmul fast float %633, %551
  %635 = fadd fast float %634, %528
  %636 = and i32 %561, 256
  %637 = icmp ne i32 %636, 0
  %638 = fcmp fast ogt float %583, 0.000000e+00
  %639 = fmul fast float %583, %448
  %640 = call float @dx.op.unary.f32(i32 7, float %639)  ; Saturate(value)
  %641 = select i1 %638, float %640, float 1.000000e+00
  %642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %643 = extractvalue %dx.types.CBufRet.f32 %642, 3
  %644 = fadd fast float %643, %641
  %645 = call float @dx.op.unary.f32(i32 7, float %644)  ; Saturate(value)
  %646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %647 = extractvalue %dx.types.CBufRet.f32 %646, 0
  %648 = fsub fast float 1.000000e+00, %551
  %649 = select i1 %637, float %648, float 1.000000e+00
  %650 = call float @dx.op.unary.f32(i32 7, float %649)  ; Saturate(value)
  %651 = fmul fast float %650, %127
  %652 = fmul fast float %651, %647
  %653 = icmp eq i32 %564, 0
  br i1 %653, label %667, label %654

; <label>:654                                     ; preds = %554
  br label %655

; <label>:655                                     ; preds = %655, %654
  %656 = phi float [ %663, %655 ], [ 0.000000e+00, %654 ]
  %657 = phi i32 [ %664, %655 ], [ 0, %654 ]
  %658 = mul i32 %657, 28
  %659 = add nuw nsw i32 %559, 92
  %660 = add i32 %659, %658
  %661 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %660, i32 undef)  ; BufferLoad(srv,index,wot)
  %662 = extractvalue %dx.types.ResRet.f32 %661, 0
  %663 = fadd fast float %662, %656
  %664 = add nuw i32 %657, 1
  %665 = icmp eq i32 %664, %564
  br i1 %665, label %666, label %655

; <label>:666                                     ; preds = %655
  br label %667

; <label>:667                                     ; preds = %666, %554
  %668 = phi float [ 0.000000e+00, %554 ], [ %663, %666 ]
  %669 = fmul fast float %650, %132
  %670 = fmul fast float %669, %647
  %671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %672 = extractvalue %dx.types.CBufRet.f32 %671, 3
  %673 = fcmp fast ogt float %668, %672
  %674 = select i1 %673, float %670, float %652
  %675 = fcmp fast ogt float %596, 0.000000e+00
  %676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %677 = extractvalue %dx.types.CBufRet.f32 %676, 2
  %678 = fadd fast float %677, 1.000000e+00
  %679 = call float @dx.op.unary.f32(i32 7, float %678)  ; Saturate(value)
  %680 = fmul fast float %679, %596
  %681 = call float @dx.op.binary.f32(i32 35, float %680, float 0x3F50624DE0000000)  ; FMax(a,b)
  %682 = fdiv fast float 1.000000e+00, %681
  %683 = select i1 %675, float %682, float 0.000000e+00
  %684 = fcmp fast ogt float %599, 0.000000e+00
  %685 = extractvalue %dx.types.CBufRet.f32 %676, 3
  %686 = fadd fast float %685, 1.000000e+00
  %687 = call float @dx.op.unary.f32(i32 7, float %686)  ; Saturate(value)
  %688 = fmul fast float %687, %599
  %689 = call float @dx.op.binary.f32(i32 35, float %688, float 0x3F50624DE0000000)  ; FMax(a,b)
  %690 = fdiv fast float 1.000000e+00, %689
  %691 = select i1 %684, float %690, float 0.000000e+00
  %692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %693 = extractvalue %dx.types.CBufRet.f32 %692, 3
  %694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %695 = extractvalue %dx.types.CBufRet.f32 %694, 1
  br i1 %653, label %818, label %696, !dx.controlflow.hints !38

; <label>:696                                     ; preds = %667
  br label %697

; <label>:697                                     ; preds = %697, %696
  %698 = phi float [ %764, %697 ], [ 0.000000e+00, %696 ]
  %699 = phi float [ %765, %697 ], [ 0.000000e+00, %696 ]
  %700 = phi float [ %766, %697 ], [ 0.000000e+00, %696 ]
  %701 = phi float [ %767, %697 ], [ 0.000000e+00, %696 ]
  %702 = phi float [ %768, %697 ], [ 0.000000e+00, %696 ]
  %703 = phi float [ %769, %697 ], [ 0.000000e+00, %696 ]
  %704 = phi float [ %770, %697 ], [ 0.000000e+00, %696 ]
  %705 = phi float [ %772, %697 ], [ 0.000000e+00, %696 ]
  %706 = phi float [ %773, %697 ], [ 0.000000e+00, %696 ]
  %707 = phi float [ %778, %697 ], [ 0.000000e+00, %696 ]
  %708 = phi float [ %800, %697 ], [ 0.000000e+00, %696 ]
  %709 = phi i32 [ %801, %697 ], [ 0, %696 ]
  %710 = mul i32 %709, 28
  %711 = add i32 %710, %584
  %712 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %711, i32 undef)  ; BufferLoad(srv,index,wot)
  %713 = extractvalue %dx.types.ResRet.f32 %712, 0
  %714 = add i32 %711, 4
  %715 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %716 = extractvalue %dx.types.ResRet.f32 %715, 0
  %717 = fmul fast float %716, %674
  %718 = add i32 %711, 8
  %719 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.f32 %719, 0
  %721 = add i32 %711, 12
  %722 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %721, i32 undef)  ; BufferLoad(srv,index,wot)
  %723 = extractvalue %dx.types.ResRet.f32 %722, 0
  %724 = fmul fast float %723, %693
  %725 = add i32 %711, 16
  %726 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.f32 %726, 0
  %728 = extractvalue %dx.types.ResRet.f32 %726, 1
  %729 = add i32 %711, 24
  %730 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %729, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.f32 %730, 0
  %732 = call float @dx.op.dot2.f32(i32 54, float %727, float %728, float %120, float %121)  ; Dot2(ax,ay,bx,by)
  %733 = fmul fast float %732, %713
  %734 = fmul fast float %720, %695
  %735 = fsub fast float %733, %734
  %736 = fsub fast float %735, %731
  %737 = call float @dx.op.unary.f32(i32 13, float %736)  ; Sin(value)
  %738 = call float @dx.op.unary.f32(i32 12, float %736)  ; Cos(value)
  %739 = fmul fast float %724, %717
  %740 = fmul fast float %739, %727
  %741 = fmul fast float %740, %738
  %742 = fmul fast float %739, %728
  %743 = fmul fast float %742, %738
  %744 = fmul fast float %717, %645
  %745 = fmul fast float %744, %737
  %746 = fmul fast float %717, %713
  %747 = fmul fast float %746, %724
  %748 = fmul fast float %727, %727
  %749 = fmul fast float %748, %747
  %750 = fmul fast float %749, %737
  %751 = fmul fast float %727, %728
  %752 = fmul fast float %751, %747
  %753 = fmul fast float %752, %737
  %754 = fsub fast float 1.000000e+00, %750
  %755 = fmul fast float %713, %645
  %756 = fmul fast float %755, %717
  %757 = fmul fast float %756, %727
  %758 = fmul fast float %757, %738
  %759 = fmul fast float %728, %728
  %760 = fmul fast float %759, %747
  %761 = fmul fast float %760, %737
  %762 = fmul fast float %756, %728
  %763 = fmul fast float %762, %738
  %764 = fadd fast float %741, %698
  %765 = fadd fast float %743, %699
  %766 = fadd fast float %745, %700
  %767 = fadd fast float %754, %701
  %768 = fsub fast float %702, %753
  %769 = fadd fast float %758, %703
  %770 = fadd fast float %761, %704
  %771 = fadd fast float %705, 1.000000e+00
  %772 = fadd fast float %771, %753
  %773 = fadd fast float %763, %706
  %774 = fsub fast float 1.000000e+00, %761
  %775 = fmul fast float %754, %774
  %776 = fmul fast float %753, %753
  %777 = fsub fast float %775, %776
  %778 = fadd fast float %777, %707
  %779 = fadd fast float %736, 0xBFF921FB60000000
  %780 = fmul fast float %779, 0x3FC45F3060000000
  %781 = call float @dx.op.unary.f32(i32 27, float %780)  ; Round_ni(value)
  %782 = fsub fast float %780, %781
  %783 = call float @dx.op.unary.f32(i32 7, float %782)  ; Saturate(value)
  %784 = fmul fast float %783, %683
  %785 = call float @dx.op.unary.f32(i32 7, float %784)  ; Saturate(value)
  %786 = fmul fast float %785, %785
  %787 = fmul fast float %785, 2.000000e+00
  %788 = fsub fast float 3.000000e+00, %787
  %789 = fmul fast float %786, %788
  %790 = fsub fast float 1.000000e+00, %783
  %791 = fmul fast float %790, %691
  %792 = call float @dx.op.unary.f32(i32 7, float %791)  ; Saturate(value)
  %793 = fmul fast float %792, %792
  %794 = fmul fast float %792, 2.000000e+00
  %795 = fsub fast float 3.000000e+00, %794
  %796 = fmul fast float %793, %795
  %797 = fsub fast float 2.000000e+00, %789
  %798 = fsub fast float %797, %796
  %799 = call float @dx.op.unary.f32(i32 7, float %798)  ; Saturate(value)
  %800 = fadd fast float %799, %708
  %801 = add nuw i32 %709, 1
  %802 = icmp eq i32 %801, %564
  br i1 %802, label %803, label %697

; <label>:803                                     ; preds = %697
  %804 = call float @dx.op.dot3.f32(i32 55, float %767, float %768, float %769, float %767, float %768, float %769)  ; Dot3(ax,ay,az,bx,by,bz)
  %805 = call float @dx.op.unary.f32(i32 25, float %804)  ; Rsqrt(value)
  %806 = fmul fast float %805, %767
  %807 = fmul fast float %805, %768
  %808 = fmul fast float %805, %769
  %809 = call float @dx.op.dot3.f32(i32 55, float %770, float %772, float %773, float %770, float %772, float %773)  ; Dot3(ax,ay,az,bx,by,bz)
  %810 = call float @dx.op.unary.f32(i32 25, float %809)  ; Rsqrt(value)
  %811 = fmul fast float %810, %770
  %812 = fmul fast float %810, %772
  %813 = fmul fast float %810, %773
  %814 = uitofp i32 %564 to float
  %815 = fdiv fast float 1.000000e+00, %814
  %816 = fmul fast float %815, %778
  %817 = fmul fast float %815, %800
  br label %818

; <label>:818                                     ; preds = %803, %667
  %819 = phi float [ %764, %803 ], [ 0.000000e+00, %667 ]
  %820 = phi float [ %765, %803 ], [ 0.000000e+00, %667 ]
  %821 = phi float [ %766, %803 ], [ 0.000000e+00, %667 ]
  %822 = phi float [ %806, %803 ], [ 0.000000e+00, %667 ]
  %823 = phi float [ %807, %803 ], [ 0.000000e+00, %667 ]
  %824 = phi float [ %808, %803 ], [ 0.000000e+00, %667 ]
  %825 = phi float [ %811, %803 ], [ 0.000000e+00, %667 ]
  %826 = phi float [ %812, %803 ], [ 0.000000e+00, %667 ]
  %827 = phi float [ %813, %803 ], [ 0.000000e+00, %667 ]
  %828 = phi float [ %816, %803 ], [ 1.000000e+00, %667 ]
  %829 = phi float [ %817, %803 ], [ 1.000000e+00, %667 ]
  %830 = fmul fast float %819, %551
  %831 = fmul fast float %820, %551
  %832 = fmul fast float %821, %551
  %833 = fadd fast float %830, %512
  %834 = fadd fast float %831, %513
  %835 = fadd fast float %832, %514
  %836 = fmul fast float %822, %551
  %837 = fmul fast float %823, %551
  %838 = fmul fast float %824, %551
  %839 = fadd fast float %836, %515
  %840 = fadd fast float %837, %516
  %841 = fadd fast float %838, %517
  %842 = fmul fast float %825, %551
  %843 = fmul fast float %826, %551
  %844 = fmul fast float %827, %551
  %845 = fadd fast float %842, %518
  %846 = fadd fast float %843, %519
  %847 = fadd fast float %844, %520
  %848 = fsub fast float 1.000000e+00, %828
  %849 = fmul fast float %848, %592
  %850 = fadd fast float %849, %593
  %851 = fmul fast float %674, %551
  %852 = fmul fast float %851, %829
  %853 = fmul fast float %852, %850
  %854 = fadd fast float %853, %521
  %855 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.i32 %855, 0
  %857 = and i32 %856, 131072
  %858 = icmp eq i32 %857, 0
  %859 = and i32 %856, 524288
  %860 = icmp ne i32 %859, 0
  %861 = and i32 %856, 2097152
  %862 = icmp ne i32 %861, 0
  br i1 %858, label %1126, label %863, !dx.controlflow.hints !39

; <label>:863                                     ; preds = %818
  %864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %865 = extractvalue %dx.types.CBufRet.f32 %864, 0
  %866 = extractvalue %dx.types.CBufRet.f32 %864, 1
  %867 = extractvalue %dx.types.CBufRet.f32 %864, 2
  %868 = fsub fast float %120, %865
  %869 = fsub fast float %121, %866
  %870 = fsub fast float %433, %867
  %871 = fmul fast float %868, %868
  %872 = fmul fast float %869, %869
  %873 = fadd fast float %871, %872
  %874 = fmul fast float %870, %870
  %875 = fadd fast float %873, %874
  %876 = call float @dx.op.unary.f32(i32 24, float %875)  ; Sqrt(value)
  br i1 %862, label %877, label %923, !dx.controlflow.hints !40

; <label>:877                                     ; preds = %863
  %878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %879 = extractvalue %dx.types.CBufRet.f32 %878, 0
  %880 = fcmp fast ogt float %876, %879
  %881 = zext i1 %880 to i32
  %882 = extractvalue %dx.types.CBufRet.f32 %878, 1
  %883 = fcmp fast ogt float %876, %882
  %884 = zext i1 %883 to i32
  %885 = add nuw nsw i32 %884, %881
  %886 = extractvalue %dx.types.CBufRet.f32 %878, 2
  %887 = fcmp fast ogt float %876, %886
  %888 = zext i1 %887 to i32
  %889 = add nuw nsw i32 %885, %888
  %890 = icmp ult i32 %889, 3
  %891 = zext i1 %890 to i32
  %892 = shl nuw nsw i32 %889, 2
  %893 = add nuw nsw i32 %892, 48
  %894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %893)  ; CBufferLoadLegacy(handle,regIndex)
  %895 = extractvalue %dx.types.CBufRet.f32 %894, 1
  %896 = fcmp fast ogt float %876, %895
  %897 = zext i1 %896 to i32
  %898 = or i32 %892, 1
  %899 = add nuw nsw i32 %898, 48
  %900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %899)  ; CBufferLoadLegacy(handle,regIndex)
  %901 = extractvalue %dx.types.CBufRet.f32 %900, 1
  %902 = fcmp fast ogt float %876, %901
  %903 = zext i1 %902 to i32
  %904 = add nuw nsw i32 %903, %897
  %905 = or i32 %892, 2
  %906 = add nuw nsw i32 %905, 48
  %907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %906)  ; CBufferLoadLegacy(handle,regIndex)
  %908 = extractvalue %dx.types.CBufRet.f32 %907, 1
  %909 = fcmp fast ogt float %876, %908
  %910 = zext i1 %909 to i32
  %911 = add nuw nsw i32 %904, %910
  %912 = add i32 %573, -1
  %913 = call i32 @dx.op.binary.i32(i32 40, i32 %911, i32 %912)  ; UMin(a,b)
  %914 = add i32 %892, %913
  %915 = call i32 @dx.op.binary.i32(i32 40, i32 %914, i32 12)  ; UMin(a,b)
  %916 = add i32 %915, 48
  %917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %916)  ; CBufferLoadLegacy(handle,regIndex)
  %918 = extractvalue %dx.types.CBufRet.f32 %917, 0
  %919 = fcmp fast oge float %876, %918
  %920 = zext i1 %919 to i32
  %921 = call i32 @dx.op.binary.i32(i32 40, i32 %573, i32 %891)  ; UMin(a,b)
  %922 = call i32 @dx.op.binary.i32(i32 40, i32 %920, i32 %921)  ; UMin(a,b)
  br label %923

; <label>:923                                     ; preds = %877, %863
  %924 = phi i32 [ %915, %877 ], [ 0, %863 ]
  %925 = phi i32 [ %922, %877 ], [ 0, %863 ]
  %926 = add i32 %925, %573
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %1119, label %928

; <label>:928                                     ; preds = %923
  br label %929

; <label>:929                                     ; preds = %1097, %928
  %930 = phi float [ %1113, %1097 ], [ 0.000000e+00, %928 ]
  %931 = phi float [ %1114, %1097 ], [ 0.000000e+00, %928 ]
  %932 = phi float [ %1115, %1097 ], [ 0.000000e+00, %928 ]
  %933 = phi i32 [ %945, %1097 ], [ %924, %928 ]
  %934 = phi i32 [ %1116, %1097 ], [ 0, %928 ]
  %935 = add i32 %934, %933
  br i1 %862, label %936, label %944, !dx.controlflow.hints !41

; <label>:936                                     ; preds = %929
  %937 = and i32 %935, -4
  %938 = add i32 %937, %573
  %939 = icmp uge i32 %935, %938
  %940 = sub i32 4, %573
  %941 = select i1 %939, i32 %940, i32 0
  %942 = add i32 %941, %933
  %943 = add i32 %941, %935
  br label %944

; <label>:944                                     ; preds = %936, %929
  %945 = phi i32 [ %942, %936 ], [ %933, %929 ]
  %946 = phi i32 [ %943, %936 ], [ %935, %929 ]
  %947 = and i32 %946, 3
  %948 = select i1 %862, i32 %947, i32 %934
  %949 = lshr i32 %946, 2
  %950 = select i1 %862, i32 %949, i32 0
  %951 = add i32 %946, 32
  %952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %951)  ; CBufferLoadLegacy(handle,regIndex)
  %953 = extractvalue %dx.types.CBufRet.f32 %952, 0
  %954 = extractvalue %dx.types.CBufRet.f32 %952, 1
  %955 = extractvalue %dx.types.CBufRet.f32 %952, 2
  %956 = extractvalue %dx.types.CBufRet.f32 %952, 3
  %957 = fmul fast float %953, %876
  %958 = fadd fast float %957, %954
  %959 = call float @dx.op.unary.f32(i32 7, float %958)  ; Saturate(value)
  %960 = fmul fast float %955, %876
  %961 = fadd fast float %960, %956
  %962 = call float @dx.op.unary.f32(i32 7, float %961)  ; Saturate(value)
  %963 = call float @dx.op.binary.f32(i32 36, float %959, float %962)  ; FMin(a,b)
  %964 = select i1 %862, float %963, float 1.000000e+00
  %965 = mul i32 %948, 72
  %966 = add i32 %585, %965
  %967 = add i32 %966, 16
  %968 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.f32 %968, 0
  %970 = extractvalue %dx.types.ResRet.f32 %968, 1
  %971 = extractvalue %dx.types.ResRet.f32 %968, 2
  %972 = extractvalue %dx.types.ResRet.f32 %968, 3
  %973 = add i32 %966, 36
  %974 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %973, i32 undef)  ; BufferLoad(srv,index,wot)
  %975 = extractvalue %dx.types.ResRet.f32 %974, 0
  %976 = add i32 %966, 56
  %977 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %976, i32 undef)  ; BufferLoad(srv,index,wot)
  %978 = extractvalue %dx.types.ResRet.f32 %977, 0
  %979 = fmul fast float %473, 3.906250e-03
  %980 = fmul fast float %979, %580
  %981 = fmul fast float %980, %975
  %982 = fmul fast float %981, %978
  %983 = extractvalue %dx.types.ResRet.f32 %977, 1
  %984 = fadd fast float %982, %983
  %985 = call float @dx.op.binary.f32(i32 35, float %984, float 0.000000e+00)  ; FMax(a,b)
  %986 = add i32 %966, 32
  %987 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %986, i32 undef)  ; BufferLoad(srv,index,wot)
  %988 = extractvalue %dx.types.ResRet.f32 %987, 0
  %989 = fmul fast float %985, %964
  %990 = fmul fast float %989, %988
  br i1 %860, label %991, label %1024, !dx.controlflow.hints !42

; <label>:991                                     ; preds = %944
  %992 = fmul fast float %975, %468
  %993 = fmul fast float %975, %469
  %994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %995 = extractvalue %dx.types.CBufRet.f32 %994, 1
  %996 = add i32 %966, 40
  %997 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %996, i32 undef)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.f32 %997, 0
  %999 = extractvalue %dx.types.ResRet.f32 %997, 1
  %1000 = extractvalue %dx.types.ResRet.f32 %997, 2
  %1001 = extractvalue %dx.types.ResRet.f32 %997, 3
  %1002 = fadd fast float %995, %500
  %1003 = fadd fast float %1002, %1000
  %1004 = fmul fast float %1002, %999
  %1005 = call float @dx.op.unary.f32(i32 29, float %1004)  ; Round_z(value)
  %1006 = fmul fast float %998, %1005
  %1007 = fsub fast float %1002, %1006
  %1008 = fmul fast float %1003, %999
  %1009 = call float @dx.op.unary.f32(i32 29, float %1008)  ; Round_z(value)
  %1010 = fmul fast float %1009, %998
  %1011 = fsub fast float %1003, %1010
  %1012 = fmul fast float %1007, %992
  %1013 = fmul fast float %1007, %993
  %1014 = fmul fast float %1011, %992
  %1015 = fmul fast float %1011, %993
  %1016 = fsub fast float %120, %1012
  %1017 = fsub fast float %121, %1013
  %1018 = fsub fast float %120, %1014
  %1019 = fsub fast float %121, %1015
  %1020 = fsub fast float %1000, %1007
  %1021 = call float @dx.op.unary.f32(i32 6, float %1020)  ; FAbs(value)
  %1022 = fmul fast float %1021, %1001
  %1023 = call float @dx.op.unary.f32(i32 7, float %1022)  ; Saturate(value)
  br label %1024

; <label>:1024                                    ; preds = %991, %944
  %1025 = phi float [ %1016, %991 ], [ %120, %944 ]
  %1026 = phi float [ %1017, %991 ], [ %121, %944 ]
  %1027 = phi float [ %1018, %991 ], [ %120, %944 ]
  %1028 = phi float [ %1019, %991 ], [ %121, %944 ]
  %1029 = phi float [ %1023, %991 ], [ 0.000000e+00, %944 ]
  %1030 = fmul fast float %567, 4.000000e+00
  %1031 = uitofp i32 %950 to float
  %1032 = fadd fast float %1031, %1030
  %1033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %1034 = extractvalue %dx.types.CBufRet.f32 %1033, 0
  %1035 = extractvalue %dx.types.CBufRet.f32 %1033, 1
  %1036 = extractvalue %dx.types.CBufRet.f32 %1033, 2
  %1037 = extractvalue %dx.types.CBufRet.f32 %1033, 3
  %1038 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 0
  store float %1034, float* %1038, align 4
  %1039 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 1
  store float %1035, float* %1039, align 4
  %1040 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 2
  store float %1036, float* %1040, align 4
  %1041 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 3
  store float %1037, float* %1041, align 4
  %1042 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 %950
  %1043 = load float, float* %1042, align 4, !tbaa !43, !noalias !47
  %1044 = fmul fast float %1043, %570
  %1045 = select i1 %862, float %1044, float %570
  %1046 = fmul fast float %1025, %969
  %1047 = call float @dx.op.tertiary.f32(i32 46, float %970, float %1026, float %1046)  ; FMad(a,b,c)
  %1048 = fmul fast float %1025, %971
  %1049 = call float @dx.op.tertiary.f32(i32 46, float %972, float %1026, float %1048)  ; FMad(a,b,c)
  %1050 = add i32 %966, 8
  %1051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1050, i32 undef)  ; BufferLoad(srv,index,wot)
  %1052 = extractvalue %dx.types.ResRet.f32 %1051, 0
  %1053 = extractvalue %dx.types.ResRet.f32 %1051, 1
  %1054 = fadd fast float %1052, %1047
  %1055 = fadd fast float %1053, %1049
  %1056 = fmul fast float %1054, %1045
  %1057 = fmul fast float %1055, %1045
  %1058 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1059 = extractvalue %dx.types.ResRet.f32 %1058, 0
  %1060 = extractvalue %dx.types.ResRet.f32 %1058, 1
  %1061 = fmul fast float %1056, %1059
  %1062 = fmul fast float %1057, %1060
  %1063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1064 = extractvalue %dx.types.CBufRet.f32 %1063, 2
  %1065 = fadd fast float %1061, %1064
  %1066 = fadd fast float %1062, %1064
  %1067 = fmul fast float %1027, %969
  %1068 = call float @dx.op.tertiary.f32(i32 46, float %970, float %1028, float %1067)  ; FMad(a,b,c)
  %1069 = fmul fast float %1027, %971
  %1070 = call float @dx.op.tertiary.f32(i32 46, float %972, float %1028, float %1069)  ; FMad(a,b,c)
  %1071 = fadd fast float %1052, %1068
  %1072 = fadd fast float %1053, %1070
  %1073 = fmul fast float %1071, %1045
  %1074 = fmul fast float %1072, %1045
  %1075 = fmul fast float %1073, %1059
  %1076 = fmul fast float %1074, %1060
  %1077 = fadd fast float %1075, %1064
  %1078 = fadd fast float %1076, %1064
  %1079 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %13, float %1065, float %1066, float %1032, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1080 = extractvalue %dx.types.ResRet.f32 %1079, 0
  %1081 = extractvalue %dx.types.ResRet.f32 %1079, 1
  %1082 = extractvalue %dx.types.ResRet.f32 %1079, 2
  %1083 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %13, float %1077, float %1078, float %1032, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  br i1 %860, label %1084, label %1097, !dx.controlflow.hints !52

; <label>:1084                                    ; preds = %1024
  %1085 = extractvalue %dx.types.ResRet.f32 %1083, 2
  %1086 = extractvalue %dx.types.ResRet.f32 %1083, 1
  %1087 = extractvalue %dx.types.ResRet.f32 %1083, 0
  %1088 = fsub fast float %1087, %1080
  %1089 = fsub fast float %1086, %1081
  %1090 = fsub fast float %1085, %1082
  %1091 = fmul fast float %1088, %1029
  %1092 = fmul fast float %1089, %1029
  %1093 = fmul fast float %1090, %1029
  %1094 = fadd fast float %1091, %1080
  %1095 = fadd fast float %1092, %1081
  %1096 = fadd fast float %1093, %1082
  br label %1097

; <label>:1097                                    ; preds = %1084, %1024
  %1098 = phi float [ %1094, %1084 ], [ %1080, %1024 ]
  %1099 = phi float [ %1095, %1084 ], [ %1081, %1024 ]
  %1100 = phi float [ %1096, %1084 ], [ %1082, %1024 ]
  %1101 = fmul fast float %1098, %969
  %1102 = call float @dx.op.tertiary.f32(i32 46, float %1099, float %971, float %1101)  ; FMad(a,b,c)
  %1103 = fmul fast float %1098, %970
  %1104 = call float @dx.op.tertiary.f32(i32 46, float %1099, float %972, float %1103)  ; FMad(a,b,c)
  %1105 = fdiv fast float 1.000000e+00, %1059
  %1106 = fdiv fast float 1.000000e+00, %1060
  %1107 = call float @dx.op.unary.f32(i32 7, float %990)  ; Saturate(value)
  %1108 = fmul fast float %1105, %1102
  %1109 = fmul fast float %1108, %1107
  %1110 = fmul fast float %1106, %1104
  %1111 = fmul fast float %1110, %1107
  %1112 = fmul fast float %1100, %990
  %1113 = fadd fast float %1109, %930
  %1114 = fadd fast float %1111, %931
  %1115 = fadd fast float %1112, %932
  %1116 = add nuw i32 %934, 1
  %1117 = icmp eq i32 %1116, %926
  br i1 %1117, label %1118, label %929

; <label>:1118                                    ; preds = %1097
  br label %1119

; <label>:1119                                    ; preds = %1118, %923
  %1120 = phi float [ 0.000000e+00, %923 ], [ %1113, %1118 ]
  %1121 = phi float [ 0.000000e+00, %923 ], [ %1114, %1118 ]
  %1122 = phi float [ 0.000000e+00, %923 ], [ %1115, %1118 ]
  %1123 = fmul fast float %1120, %652
  %1124 = fmul fast float %1121, %652
  %1125 = fmul fast float %1122, %652
  br label %1126

; <label>:1126                                    ; preds = %1119, %818
  %1127 = phi float [ %1123, %1119 ], [ 0.000000e+00, %818 ]
  %1128 = phi float [ %1124, %1119 ], [ 0.000000e+00, %818 ]
  %1129 = phi float [ %1125, %1119 ], [ 0.000000e+00, %818 ]
  %1130 = fmul fast float %1127, %551
  %1131 = fmul fast float %1128, %551
  %1132 = fmul fast float %645, %551
  %1133 = fmul fast float %1132, %1129
  %1134 = fadd fast float %1130, %522
  %1135 = fadd fast float %1131, %523
  %1136 = fadd fast float %1133, %524
  %1137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1138 = fmul fast float %588, %486
  %1139 = fadd fast float %1138, %589
  %1140 = call float @dx.op.unary.f32(i32 7, float %1139)  ; Saturate(value)
  %1141 = call float @dx.op.binary.f32(i32 35, float %527, float %1140)  ; FMax(a,b)
  %1142 = fmul fast float %606, %473
  %1143 = fadd fast float %1142, %607
  %1144 = call float @dx.op.binary.f32(i32 35, float %1143, float 0.000000e+00)  ; FMax(a,b)
  %1145 = fmul fast float %1144, %602
  %1146 = fadd fast float %1145, %603
  %1147 = call float @dx.op.unary.f32(i32 7, float %1146)  ; Saturate(value)
  %1148 = and i32 %561, 2
  %1149 = icmp ne i32 %1148, 0
  %1150 = select i1 %1149, float %1147, float 0.000000e+00
  %1151 = call float @dx.op.binary.f32(i32 35, float %1150, float %525)  ; FMax(a,b)
  %1152 = fmul fast float %614, %473
  %1153 = fadd fast float %1152, %615
  %1154 = call float @dx.op.binary.f32(i32 35, float %1153, float 0.000000e+00)  ; FMax(a,b)
  %1155 = fmul fast float %1154, %610
  %1156 = fadd fast float %1155, %611
  %1157 = call float @dx.op.unary.f32(i32 7, float %1156)  ; Saturate(value)
  %1158 = and i32 %561, 4
  %1159 = icmp ne i32 %1158, 0
  %1160 = select i1 %1159, float %1157, float 0.000000e+00
  %1161 = call float @dx.op.binary.f32(i32 35, float %1160, float %526)  ; FMax(a,b)
  %1162 = fadd fast float %576, %577
  %1163 = extractvalue %dx.types.CBufRet.f32 %1137, 2
  %1164 = fcmp fast oge float %1162, %1163
  %1165 = select i1 %1164, i32 4096, i32 0
  %1166 = or i32 %629, %1165
  %1167 = fmul fast float %618, %551
  %1168 = fadd fast float %1167, %530
  br label %1169

; <label>:1169                                    ; preds = %1126, %510
  %1170 = phi i32 [ %1166, %1126 ], [ %511, %510 ]
  %1171 = phi float [ %833, %1126 ], [ %512, %510 ]
  %1172 = phi float [ %834, %1126 ], [ %513, %510 ]
  %1173 = phi float [ %835, %1126 ], [ %514, %510 ]
  %1174 = phi float [ %839, %1126 ], [ %515, %510 ]
  %1175 = phi float [ %840, %1126 ], [ %516, %510 ]
  %1176 = phi float [ %841, %1126 ], [ %517, %510 ]
  %1177 = phi float [ %845, %1126 ], [ %518, %510 ]
  %1178 = phi float [ %846, %1126 ], [ %519, %510 ]
  %1179 = phi float [ %847, %1126 ], [ %520, %510 ]
  %1180 = phi float [ %854, %1126 ], [ %521, %510 ]
  %1181 = phi float [ %1134, %1126 ], [ %522, %510 ]
  %1182 = phi float [ %1135, %1126 ], [ %523, %510 ]
  %1183 = phi float [ %1136, %1126 ], [ %524, %510 ]
  %1184 = phi float [ %1151, %1126 ], [ %525, %510 ]
  %1185 = phi float [ %1161, %1126 ], [ %526, %510 ]
  %1186 = phi float [ %1141, %1126 ], [ %527, %510 ]
  %1187 = phi float [ %635, %1126 ], [ %528, %510 ]
  %1188 = phi float [ %1168, %1126 ], [ %530, %510 ]
  %1189 = add nuw i32 %531, 1
  %1190 = icmp eq i32 %1189, %492
  br i1 %1190, label %1191, label %510

; <label>:1191                                    ; preds = %1169
  br label %1192

; <label>:1192                                    ; preds = %1191, %369
  %1193 = phi i32 [ %365, %369 ], [ %1170, %1191 ]
  %1194 = phi float [ 0.000000e+00, %369 ], [ %1171, %1191 ]
  %1195 = phi float [ 0.000000e+00, %369 ], [ %1172, %1191 ]
  %1196 = phi float [ 0.000000e+00, %369 ], [ %1173, %1191 ]
  %1197 = phi float [ 0.000000e+00, %369 ], [ %1174, %1191 ]
  %1198 = phi float [ 0.000000e+00, %369 ], [ %1175, %1191 ]
  %1199 = phi float [ 0.000000e+00, %369 ], [ %1176, %1191 ]
  %1200 = phi float [ 0.000000e+00, %369 ], [ %1177, %1191 ]
  %1201 = phi float [ 0.000000e+00, %369 ], [ %1178, %1191 ]
  %1202 = phi float [ 0.000000e+00, %369 ], [ %1179, %1191 ]
  %1203 = phi float [ 0.000000e+00, %369 ], [ %1180, %1191 ]
  %1204 = phi float [ 0.000000e+00, %369 ], [ %1181, %1191 ]
  %1205 = phi float [ 0.000000e+00, %369 ], [ %1182, %1191 ]
  %1206 = phi float [ 0.000000e+00, %369 ], [ %1183, %1191 ]
  %1207 = phi float [ 0.000000e+00, %369 ], [ %1184, %1191 ]
  %1208 = phi float [ 0.000000e+00, %369 ], [ %1185, %1191 ]
  %1209 = phi float [ 0.000000e+00, %369 ], [ %1186, %1191 ]
  %1210 = phi float [ 0.000000e+00, %369 ], [ %1187, %1191 ]
  %1211 = phi float [ 0.000000e+00, %369 ], [ %552, %1191 ]
  %1212 = phi float [ 0.000000e+00, %369 ], [ %1188, %1191 ]
  %1213 = fcmp fast ole float %1203, 0x3F69A5C380000000
  %1214 = fmul fast float %1203, 0x4029D70A40000000
  %1215 = call float @dx.op.unary.f32(i32 23, float %1203)  ; Log(value)
  %1216 = fmul fast float %1215, 0x3FDAAAAAA0000000
  %1217 = call float @dx.op.unary.f32(i32 21, float %1216)  ; Exp(value)
  %1218 = fmul fast float %1217, 0x3FF0E147A0000000
  %1219 = fadd fast float %1218, 0xBFAC28F5C0000000
  %1220 = select i1 %1213, float %1214, float %1219
  %1221 = fmul fast float %1220, 2.550000e+02
  %1222 = call float @dx.op.binary.f32(i32 35, float %1221, float 0.000000e+00)  ; FMax(a,b)
  %1223 = call float @dx.op.binary.f32(i32 36, float %1222, float 2.550000e+02)  ; FMin(a,b)
  %1224 = fptoui float %1223 to i32
  %1225 = uitofp i32 %1224 to float
  %1226 = fmul fast float %1225, 0x3F70101020000000
  %1227 = fcmp fast ole float %1226, 0x3FA4B5DCC0000000
  %1228 = fmul fast float %1225, 0x3F33E45680000000
  %1229 = fmul fast float %1225, 0x3F6E736160000000
  %1230 = fadd fast float %1229, 0x3FAAB12340000000
  %1231 = call float @dx.op.unary.f32(i32 23, float %1230)  ; Log(value)
  %1232 = fmul fast float %1231, 0x4003333340000000
  %1233 = call float @dx.op.unary.f32(i32 21, float %1232)  ; Exp(value)
  %1234 = select i1 %1227, float %1228, float %1233
  %1235 = call float @dx.op.unary.f32(i32 7, float %1234)  ; Saturate(value)
  %1236 = call float @dx.op.binary.f32(i32 35, float %1235, float %1209)  ; FMax(a,b)
  %1237 = fadd fast float %1236, 1.000000e+00
  %1238 = fmul fast float %1237, %1207
  %1239 = fmul fast float %1237, %1208
  %1240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1241 = extractvalue %dx.types.CBufRet.f32 %1240, 1
  %1242 = fcmp fast oge float %1238, %1241
  %1243 = select i1 %1242, i32 1024, i32 0
  %1244 = or i32 %1243, %1193
  %1245 = fcmp fast oge float %1239, %1241
  %1246 = select i1 %1245, i32 2048, i32 0
  %1247 = or i32 %1244, %1246
  %1248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1249 = extractvalue %dx.types.CBufRet.f32 %1248, 3
  %1250 = fadd fast float %1249, %135
  %1251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %1252 = extractvalue %dx.types.ResRet.f32 %1251, 0
  %1253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.f32 %1253, 0
  %1255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.f32 %1255, 0
  %1257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %1258 = extractvalue %dx.types.ResRet.i32 %1257, 0
  %1259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1260 = extractvalue %dx.types.CBufRet.f32 %1259, 2
  %1261 = fmul fast float %1260, %1250
  %1262 = fmul fast float %1260, %138
  %1263 = extractvalue %dx.types.CBufRet.f32 %1259, 3
  %1264 = fadd fast float %1261, %1263
  %1265 = fadd fast float %1262, %1263
  %1266 = add i32 %1258, 0
  %1267 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1266, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1268 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1267, i32 0)  ; GetDimensions(handle,mipLevel)
  %1269 = extractvalue %dx.types.Dimensions %1268, 0
  %1270 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1269)  ; FirstbitLo(value)
  %1271 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1272 = extractvalue %dx.types.CBufRet.i32 %1271, 1
  %1273 = sub nsw i32 %1272, %1270
  %1274 = sitofp i32 %1273 to float
  %1275 = fsub fast float %152, %1274
  %1276 = call float @dx.op.binary.f32(i32 35, float %1275, float 0.000000e+00)  ; FMax(a,b)
  %1277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1267, %dx.types.Handle %12, float %1264, float %1265, float %1256, float undef, i32 0, i32 0, i32 undef, float %1276)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1278 = extractvalue %dx.types.ResRet.f32 %1277, 0
  %1279 = fmul fast float %1278, %1252
  %1280 = fsub fast float %138, %1249
  %1281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.f32 %1281, 0
  %1283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.f32 %1283, 0
  %1285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.f32 %1285, 0
  %1287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.i32 %1287, 0
  %1289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1290 = extractvalue %dx.types.CBufRet.f32 %1289, 2
  %1291 = fmul fast float %1290, %135
  %1292 = fmul fast float %1290, %1280
  %1293 = extractvalue %dx.types.CBufRet.f32 %1289, 3
  %1294 = fadd fast float %1291, %1293
  %1295 = fadd fast float %1292, %1293
  %1296 = add i32 %1288, 0
  %1297 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1296, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1298 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1297, i32 0)  ; GetDimensions(handle,mipLevel)
  %1299 = extractvalue %dx.types.Dimensions %1298, 0
  %1300 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1299)  ; FirstbitLo(value)
  %1301 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.i32 %1301, 1
  %1303 = sub nsw i32 %1302, %1300
  %1304 = sitofp i32 %1303 to float
  %1305 = fsub fast float %152, %1304
  %1306 = call float @dx.op.binary.f32(i32 35, float %1305, float 0.000000e+00)  ; FMax(a,b)
  %1307 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1297, %dx.types.Handle %12, float %1294, float %1295, float %1286, float undef, i32 0, i32 0, i32 undef, float %1306)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1308 = extractvalue %dx.types.ResRet.f32 %1307, 0
  %1309 = fmul fast float %1308, %1282
  %1310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1311 = extractvalue %dx.types.CBufRet.f32 %1310, 2
  %1312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1313 = extractvalue %dx.types.CBufRet.f32 %1312, 3
  %1314 = fmul fast float %1313, %1311
  %1315 = fsub fast float %1254, %433
  %1316 = fadd fast float %1315, %1279
  %1317 = fsub fast float %1284, %433
  %1318 = fadd fast float %1317, %1309
  %1319 = fmul fast float %1316, %1314
  %1320 = fsub fast float -0.000000e+00, %1319
  %1321 = fmul fast float %1318, %1314
  %1322 = fsub fast float -0.000000e+00, %1321
  %1323 = fmul fast float %1314, %1314
  %1324 = call float @dx.op.dot3.f32(i32 55, float %1320, float %1322, float %1323, float %1320, float %1322, float %1323)  ; Dot3(ax,ay,az,bx,by,bz)
  %1325 = call float @dx.op.unary.f32(i32 25, float %1324)  ; Rsqrt(value)
  %1326 = fmul fast float %1325, %1320
  %1327 = fmul fast float %1325, %1322
  %1328 = fmul fast float %1323, %1325
  %1329 = fsub fast float -0.000000e+00, %1327
  %1330 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float %1328, float %1329, float 0.000000e+00, float %1328, float %1329)  ; Dot3(ax,ay,az,bx,by,bz)
  %1331 = call float @dx.op.unary.f32(i32 25, float %1330)  ; Rsqrt(value)
  %1332 = fmul fast float %1328, %1331
  %1333 = fmul fast float %1331, %1329
  %1334 = fmul fast float %1332, %1328
  %1335 = fmul fast float %1333, %1327
  %1336 = fsub fast float %1334, %1335
  %1337 = fmul fast float %1333, %1326
  %1338 = fmul fast float %1326, %1332
  %1339 = fsub fast float -0.000000e+00, %1338
  %1340 = call float @dx.op.dot3.f32(i32 55, float %1336, float %1337, float %1339, float %1336, float %1337, float %1339)  ; Dot3(ax,ay,az,bx,by,bz)
  %1341 = call float @dx.op.unary.f32(i32 25, float %1340)  ; Rsqrt(value)
  %1342 = fmul fast float %1336, %1341
  %1343 = fmul fast float %1337, %1341
  %1344 = fmul fast float %1341, %1339
  %1345 = fadd fast float %1332, %1201
  %1346 = fadd fast float %1333, %1202
  %1347 = call float @dx.op.dot3.f32(i32 55, float %1200, float %1345, float %1346, float %1200, float %1345, float %1346)  ; Dot3(ax,ay,az,bx,by,bz)
  %1348 = call float @dx.op.unary.f32(i32 25, float %1347)  ; Rsqrt(value)
  %1349 = fmul fast float %1348, %1200
  %1350 = fmul fast float %1348, %1345
  %1351 = fmul fast float %1348, %1346
  %1352 = fadd fast float %1342, %1197
  %1353 = fadd fast float %1343, %1198
  %1354 = fadd fast float %1344, %1199
  %1355 = call float @dx.op.dot3.f32(i32 55, float %1352, float %1353, float %1354, float %1352, float %1353, float %1354)  ; Dot3(ax,ay,az,bx,by,bz)
  %1356 = call float @dx.op.unary.f32(i32 25, float %1355)  ; Rsqrt(value)
  %1357 = fmul fast float %1356, %1352
  %1358 = fmul fast float %1356, %1353
  %1359 = fmul fast float %1356, %1354
  %1360 = fmul fast float %1358, %1351
  %1361 = fmul fast float %1359, %1350
  %1362 = fsub fast float %1360, %1361
  %1363 = fmul fast float %1359, %1349
  %1364 = fmul fast float %1357, %1351
  %1365 = fsub fast float %1363, %1364
  %1366 = fmul fast float %1357, %1350
  %1367 = fmul fast float %1358, %1349
  %1368 = fsub fast float %1366, %1367
  %1369 = call float @dx.op.dot3.f32(i32 55, float %1362, float %1365, float %1368, float %1362, float %1365, float %1368)  ; Dot3(ax,ay,az,bx,by,bz)
  %1370 = call float @dx.op.unary.f32(i32 25, float %1369)  ; Rsqrt(value)
  %1371 = fmul fast float %1362, %1370
  %1372 = fmul fast float %1365, %1370
  %1373 = fmul fast float %1368, %1370
  %1374 = fadd fast float %1194, %120
  %1375 = fadd fast float %1195, %121
  %1376 = fadd fast float %1196, %433
  %1377 = fmul fast float %1357, %1204
  %1378 = call float @dx.op.tertiary.f32(i32 46, float %1205, float %1349, float %1377)  ; FMad(a,b,c)
  %1379 = call float @dx.op.tertiary.f32(i32 46, float %1206, float %1371, float %1378)  ; FMad(a,b,c)
  %1380 = fmul fast float %1358, %1204
  %1381 = call float @dx.op.tertiary.f32(i32 46, float %1205, float %1350, float %1380)  ; FMad(a,b,c)
  %1382 = call float @dx.op.tertiary.f32(i32 46, float %1206, float %1372, float %1381)  ; FMad(a,b,c)
  %1383 = fmul fast float %1359, %1204
  %1384 = call float @dx.op.tertiary.f32(i32 46, float %1205, float %1351, float %1383)  ; FMad(a,b,c)
  %1385 = call float @dx.op.tertiary.f32(i32 46, float %1206, float %1373, float %1384)  ; FMad(a,b,c)
  %1386 = fadd fast float %1374, %1379
  %1387 = fadd fast float %1375, %1382
  %1388 = fadd fast float %1376, %1210
  %1389 = fadd fast float %1388, %1385
  %1390 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1391 = extractvalue %dx.types.CBufRet.i32 %1390, 0
  %1392 = icmp eq i32 %1391, 0
  br i1 %1392, label %1839, label %1393, !dx.controlflow.hints !53

; <label>:1393                                    ; preds = %1192
  %1394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 433)  ; CBufferLoadLegacy(handle,regIndex)
  %1395 = extractvalue %dx.types.CBufRet.f32 %1394, 3
  %1396 = extractvalue %dx.types.CBufRet.f32 %1394, 1
  %1397 = extractvalue %dx.types.CBufRet.f32 %1394, 2
  %1398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1399 = extractvalue %dx.types.CBufRet.f32 %1398, 1
  %1400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %1401 = extractvalue %dx.types.CBufRet.f32 %1400, 2
  %1402 = extractvalue %dx.types.CBufRet.f32 %1400, 3
  %1403 = fsub fast float %1386, %1401
  %1404 = fsub fast float %1387, %1402
  %1405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %1406 = extractvalue %dx.types.CBufRet.f32 %1405, 2
  %1407 = fmul fast float %1403, %1406
  %1408 = fmul fast float %1404, %1406
  %1409 = fadd fast float %1407, 5.000000e-01
  %1410 = fadd fast float %1408, 5.000000e-01
  %1411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %1412 = extractvalue %dx.types.CBufRet.f32 %1411, 2
  %1413 = fsub fast float %1389, %1412
  %1414 = extractvalue %dx.types.CBufRet.f32 %1411, 1
  %1415 = fmul fast float %1413, %1414
  %1416 = call float @dx.op.unary.f32(i32 7, float %1415)  ; Saturate(value)
  %1417 = fcmp fast olt float %1409, 0.000000e+00
  %1418 = fcmp fast olt float %1410, 0.000000e+00
  %1419 = or i1 %1417, %1418
  %1420 = fcmp fast oge float %1409, 1.000000e+00
  %1421 = fcmp fast oge float %1410, 1.000000e+00
  %1422 = or i1 %1420, %1421
  %1423 = or i1 %1419, %1422
  br i1 %1423, label %1830, label %1424, !dx.controlflow.hints !54

; <label>:1424                                    ; preds = %1393
  %1425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1426 = extractvalue %dx.types.CBufRet.f32 %1425, 0
  %1427 = call float @dx.op.binary.f32(i32 36, float %1410, float %1416)  ; FMin(a,b)
  %1428 = call float @dx.op.binary.f32(i32 36, float %1409, float %1427)  ; FMin(a,b)
  %1429 = call float @dx.op.binary.f32(i32 35, float %1410, float %1416)  ; FMax(a,b)
  %1430 = call float @dx.op.binary.f32(i32 35, float %1409, float %1429)  ; FMax(a,b)
  %1431 = fsub fast float 1.000000e+00, %1430
  %1432 = call float @dx.op.binary.f32(i32 36, float %1428, float %1431)  ; FMin(a,b)
  %1433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 437)  ; CBufferLoadLegacy(handle,regIndex)
  %1434 = extractvalue %dx.types.CBufRet.f32 %1433, 3
  %1435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %1436 = extractvalue %dx.types.CBufRet.f32 %1435, 1
  %1437 = call float @dx.op.binary.f32(i32 35, float %1436, float %1434)  ; FMax(a,b)
  %1438 = fsub fast float %1437, %1436
  %1439 = fsub fast float %1432, %1436
  %1440 = fdiv fast float %1439, %1438
  %1441 = call float @dx.op.unary.f32(i32 7, float %1440)  ; Saturate(value)
  %1442 = fmul fast float %1441, 2.000000e+00
  %1443 = fsub fast float 3.000000e+00, %1442
  %1444 = fmul fast float %1406, %1386
  %1445 = fmul fast float %1406, %1387
  %1446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1447 = extractvalue %dx.types.CBufRet.f32 %1446, 0
  %1448 = extractvalue %dx.types.CBufRet.f32 %1446, 1
  %1449 = extractvalue %dx.types.CBufRet.f32 %1446, 2
  %1450 = fsub fast float %1386, %1447
  %1451 = fsub fast float %1387, %1448
  %1452 = fsub fast float %1389, %1449
  %1453 = call float @dx.op.dot3.f32(i32 55, float %1450, float %1451, float %1452, float %1450, float %1451, float %1452)  ; Dot3(ax,ay,az,bx,by,bz)
  %1454 = fmul fast float %1395, %1395
  %1455 = fmul fast float %1396, %1396
  %1456 = fsub fast float %1454, %1455
  %1457 = fsub fast float %1453, %1455
  %1458 = fdiv fast float %1457, %1456
  %1459 = call float @dx.op.unary.f32(i32 7, float %1458)  ; Saturate(value)
  %1460 = fmul fast float %1459, 2.000000e+00
  %1461 = fsub fast float 3.000000e+00, %1460
  %1462 = fmul fast float %1459, %1459
  %1463 = fmul fast float %1462, %1461
  %1464 = extractvalue %dx.types.CBufRet.f32 %1398, 2
  %1465 = fsub fast float %1464, %1397
  %1466 = fmul fast float %1463, %1465
  %1467 = fadd fast float %1466, %1397
  %1468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1469 = extractvalue %dx.types.CBufRet.f32 %1468, 0
  %1470 = call float @dx.op.unary.f32(i32 6, float %1469)  ; FAbs(value)
  %1471 = fcmp fast oge float %1470, 0x3F50624DE0000000
  %1472 = select i1 %1471, float %1464, float %1467
  %1473 = fmul fast float %1426, %1212
  %1474 = fmul fast float %1441, %1441
  %1475 = fmul fast float %1474, %1473
  %1476 = fmul fast float %1475, %1443
  %1477 = fmul fast float %1476, %1472
  %1478 = fmul fast float %1399, %1399
  %1479 = fcmp fast ogt float %1478, %1453
  %1480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 429)  ; CBufferLoadLegacy(handle,regIndex)
  %1481 = extractvalue %dx.types.CBufRet.f32 %1480, 0
  %1482 = fmul fast float %1481, 0x4043AF5EC0000000
  %1483 = fmul fast float %1482, %1477
  br i1 %1479, label %1484, label %1565, !dx.controlflow.hints !55

; <label>:1484                                    ; preds = %1424
  %1485 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1486 = extractvalue %dx.types.CBufRet.i32 %1485, 0
  %1487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1488 = extractvalue %dx.types.CBufRet.f32 %1487, 2
  %1489 = uitofp i32 %1486 to float
  %1490 = fmul fast float %1489, %1444
  %1491 = fmul fast float %1489, %1445
  %1492 = fadd fast float %1490, -5.000000e-01
  %1493 = fadd fast float %1491, -5.000000e-01
  %1494 = call float @dx.op.unary.f32(i32 27, float %1492)  ; Round_ni(value)
  %1495 = call float @dx.op.unary.f32(i32 27, float %1493)  ; Round_ni(value)
  %1496 = fsub fast float %1492, %1494
  %1497 = fsub fast float %1493, %1495
  %1498 = fsub fast float 1.000000e+00, %1496
  %1499 = fsub fast float 1.000000e+00, %1497
  %1500 = fmul fast float %1498, %1498
  %1501 = fmul fast float %1499, %1499
  %1502 = fmul fast float %1496, %1496
  %1503 = fmul fast float %1497, %1497
  %1504 = fmul fast float %1498, 0x3FC5555560000000
  %1505 = fmul fast float %1504, %1500
  %1506 = fmul fast float %1499, 0x3FC5555560000000
  %1507 = fmul fast float %1506, %1501
  %1508 = fmul fast float %1502, 5.000000e-01
  %1509 = fmul fast float %1503, 5.000000e-01
  %1510 = fsub fast float 2.000000e+00, %1496
  %1511 = fsub fast float 2.000000e+00, %1497
  %1512 = fmul fast float %1508, %1510
  %1513 = fmul fast float %1509, %1511
  %1514 = fsub fast float 0x3FE5555560000000, %1512
  %1515 = fsub fast float 0x3FE5555560000000, %1513
  %1516 = fadd fast float %1496, 1.000000e+00
  %1517 = fadd fast float %1497, 1.000000e+00
  %1518 = fmul fast float %1516, 5.000000e-01
  %1519 = fmul fast float %1518, %1500
  %1520 = fmul fast float %1517, 5.000000e-01
  %1521 = fmul fast float %1520, %1501
  %1522 = fmul fast float %1496, 0x3FC5555560000000
  %1523 = fmul fast float %1522, %1502
  %1524 = fmul fast float %1497, 0x3FC5555560000000
  %1525 = fmul fast float %1524, %1503
  %1526 = fadd fast float %1505, %1514
  %1527 = fadd fast float %1507, %1515
  %1528 = fadd fast float %1523, 0x3FE5555560000000
  %1529 = fsub fast float %1528, %1519
  %1530 = fadd fast float %1525, 0x3FE5555560000000
  %1531 = fsub fast float %1530, %1521
  %1532 = fdiv fast float %1514, %1526
  %1533 = fdiv fast float %1515, %1527
  %1534 = fadd fast float %1494, -5.000000e-01
  %1535 = fadd fast float %1534, %1532
  %1536 = fadd fast float %1495, -5.000000e-01
  %1537 = fadd fast float %1536, %1533
  %1538 = fmul fast float %1535, %1488
  %1539 = fmul fast float %1537, %1488
  %1540 = fdiv fast float %1523, %1529
  %1541 = fdiv fast float %1525, %1531
  %1542 = fadd fast float %1494, 1.500000e+00
  %1543 = fadd fast float %1542, %1540
  %1544 = fadd fast float %1495, 1.500000e+00
  %1545 = fadd fast float %1544, %1541
  %1546 = fmul fast float %1543, %1488
  %1547 = fmul fast float %1545, %1488
  %1548 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1538, float %1539, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1549 = extractvalue %dx.types.ResRet.f32 %1548, 0
  %1550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1546, float %1539, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1551 = extractvalue %dx.types.ResRet.f32 %1550, 0
  %1552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1538, float %1547, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1553 = extractvalue %dx.types.ResRet.f32 %1552, 0
  %1554 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1546, float %1547, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1555 = extractvalue %dx.types.ResRet.f32 %1554, 0
  %1556 = fsub fast float %1549, %1553
  %1557 = fmul fast float %1556, %1527
  %1558 = fadd fast float %1557, %1553
  %1559 = fsub fast float %1551, %1555
  %1560 = fmul fast float %1559, %1527
  %1561 = fadd fast float %1560, %1555
  %1562 = fsub fast float %1558, %1561
  %1563 = fmul fast float %1562, %1526
  %1564 = fadd fast float %1563, %1561
  br label %1595

; <label>:1565                                    ; preds = %1424
  %1566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1444, float %1445, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1567 = extractvalue %dx.types.ResRet.f32 %1566, 0
  %1568 = fsub fast float %1387, %74
  %1569 = fmul fast float %1406, %1568
  %1570 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1444, float %1569, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1571 = extractvalue %dx.types.ResRet.f32 %1570, 0
  %1572 = fadd fast float %74, %1387
  %1573 = fmul fast float %1406, %1572
  %1574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1444, float %1573, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1575 = extractvalue %dx.types.ResRet.f32 %1574, 0
  %1576 = fsub fast float %1386, %74
  %1577 = fmul fast float %1406, %1576
  %1578 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1577, float %1445, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1579 = extractvalue %dx.types.ResRet.f32 %1578, 0
  %1580 = fadd fast float %74, %1386
  %1581 = fmul fast float %1406, %1580
  %1582 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1581, float %1445, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1583 = extractvalue %dx.types.ResRet.f32 %1582, 0
  %1584 = fsub fast float %1583, %1579
  %1585 = fsub fast float %1575, %1571
  %1586 = fmul fast float %1483, %1584
  %1587 = fsub fast float -0.000000e+00, %1586
  %1588 = fmul fast float %1483, %1585
  %1589 = fsub fast float -0.000000e+00, %1588
  %1590 = call float @dx.op.dot3.f32(i32 55, float %1587, float %1589, float %116, float %1587, float %1589, float %116)  ; Dot3(ax,ay,az,bx,by,bz)
  %1591 = call float @dx.op.unary.f32(i32 25, float %1590)  ; Rsqrt(value)
  %1592 = fmul fast float %1591, %1587
  %1593 = fmul fast float %1591, %1589
  %1594 = fmul fast float %1591, %116
  br label %1595

; <label>:1595                                    ; preds = %1565, %1484
  %1596 = phi float [ %1564, %1484 ], [ %1567, %1565 ]
  %1597 = phi i1 [ true, %1484 ], [ false, %1565 ]
  %1598 = phi float [ 0.000000e+00, %1484 ], [ %1592, %1565 ]
  %1599 = phi float [ 0.000000e+00, %1484 ], [ %1593, %1565 ]
  %1600 = phi float [ 0.000000e+00, %1484 ], [ %1594, %1565 ]
  %1601 = fadd fast float %1596, -5.000000e-01
  %1602 = fmul fast float %1601, %1483
  %1603 = fadd fast float %1469, 1.000000e+00
  %1604 = fmul fast float %1603, 5.000000e-01
  %1605 = select i1 %1471, float %1604, float 0.000000e+00
  %1606 = select i1 %1471, float %1604, float %1602
  %1607 = select i1 %1471, float 1.000000e+00, float %1600
  %1608 = xor i1 %1471, true
  %1609 = or i1 %1479, %1597
  %1610 = and i1 %1609, %1608
  br i1 %1610, label %1611, label %1815, !dx.controlflow.hints !56

; <label>:1611                                    ; preds = %1595
  %1612 = fmul fast float %1357, %74
  %1613 = fmul fast float %1358, %74
  %1614 = fmul fast float %1359, %74
  %1615 = fmul fast float %1349, %74
  %1616 = fmul fast float %1350, %74
  %1617 = fmul fast float %1351, %74
  %1618 = fadd fast float %1386, %1612
  %1619 = fadd fast float %1387, %1613
  %1620 = fmul fast float %1406, %1618
  %1621 = fmul fast float %1406, %1619
  %1622 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1623 = extractvalue %dx.types.CBufRet.i32 %1622, 0
  %1624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1625 = extractvalue %dx.types.CBufRet.f32 %1624, 2
  %1626 = uitofp i32 %1623 to float
  %1627 = fmul fast float %1620, %1626
  %1628 = fmul fast float %1621, %1626
  %1629 = fadd fast float %1627, -5.000000e-01
  %1630 = fadd fast float %1628, -5.000000e-01
  %1631 = call float @dx.op.unary.f32(i32 27, float %1629)  ; Round_ni(value)
  %1632 = call float @dx.op.unary.f32(i32 27, float %1630)  ; Round_ni(value)
  %1633 = fsub fast float %1629, %1631
  %1634 = fsub fast float %1630, %1632
  %1635 = fsub fast float 1.000000e+00, %1633
  %1636 = fsub fast float 1.000000e+00, %1634
  %1637 = fmul fast float %1635, %1635
  %1638 = fmul fast float %1636, %1636
  %1639 = fmul fast float %1633, %1633
  %1640 = fmul fast float %1634, %1634
  %1641 = fmul fast float %1635, 0x3FC5555560000000
  %1642 = fmul fast float %1641, %1637
  %1643 = fmul fast float %1636, 0x3FC5555560000000
  %1644 = fmul fast float %1643, %1638
  %1645 = fmul fast float %1639, 5.000000e-01
  %1646 = fmul fast float %1640, 5.000000e-01
  %1647 = fsub fast float 2.000000e+00, %1633
  %1648 = fsub fast float 2.000000e+00, %1634
  %1649 = fmul fast float %1645, %1647
  %1650 = fmul fast float %1646, %1648
  %1651 = fsub fast float 0x3FE5555560000000, %1649
  %1652 = fsub fast float 0x3FE5555560000000, %1650
  %1653 = fadd fast float %1633, 1.000000e+00
  %1654 = fadd fast float %1634, 1.000000e+00
  %1655 = fmul fast float %1653, 5.000000e-01
  %1656 = fmul fast float %1655, %1637
  %1657 = fmul fast float %1654, 5.000000e-01
  %1658 = fmul fast float %1657, %1638
  %1659 = fmul fast float %1633, 0x3FC5555560000000
  %1660 = fmul fast float %1659, %1639
  %1661 = fmul fast float %1634, 0x3FC5555560000000
  %1662 = fmul fast float %1661, %1640
  %1663 = fadd fast float %1642, %1651
  %1664 = fadd fast float %1644, %1652
  %1665 = fadd fast float %1660, 0x3FE5555560000000
  %1666 = fsub fast float %1665, %1656
  %1667 = fadd fast float %1662, 0x3FE5555560000000
  %1668 = fsub fast float %1667, %1658
  %1669 = fdiv fast float %1651, %1663
  %1670 = fdiv fast float %1652, %1664
  %1671 = fadd fast float %1631, -5.000000e-01
  %1672 = fadd fast float %1671, %1669
  %1673 = fadd fast float %1632, -5.000000e-01
  %1674 = fadd fast float %1673, %1670
  %1675 = fmul fast float %1672, %1625
  %1676 = fmul fast float %1674, %1625
  %1677 = fdiv fast float %1660, %1666
  %1678 = fdiv fast float %1662, %1668
  %1679 = fadd fast float %1631, 1.500000e+00
  %1680 = fadd fast float %1679, %1677
  %1681 = fadd fast float %1632, 1.500000e+00
  %1682 = fadd fast float %1681, %1678
  %1683 = fmul fast float %1680, %1625
  %1684 = fmul fast float %1682, %1625
  %1685 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1675, float %1676, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1686 = extractvalue %dx.types.ResRet.f32 %1685, 0
  %1687 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1683, float %1676, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1688 = extractvalue %dx.types.ResRet.f32 %1687, 0
  %1689 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1675, float %1684, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1690 = extractvalue %dx.types.ResRet.f32 %1689, 0
  %1691 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1683, float %1684, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1692 = extractvalue %dx.types.ResRet.f32 %1691, 0
  %1693 = fsub fast float %1686, %1690
  %1694 = fmul fast float %1693, %1664
  %1695 = fadd fast float %1694, %1690
  %1696 = fsub fast float %1688, %1692
  %1697 = fmul fast float %1696, %1664
  %1698 = fadd fast float %1697, %1692
  %1699 = fsub fast float %1695, %1698
  %1700 = fmul fast float %1699, %1663
  %1701 = fadd fast float %1698, -5.000000e-01
  %1702 = fadd fast float %1701, %1700
  %1703 = fmul fast float %1477, 0x4043AF5EC0000000
  %1704 = fmul fast float %1703, %1481
  %1705 = fmul fast float %1704, %1702
  %1706 = fadd fast float %1386, %1615
  %1707 = fadd fast float %1387, %1616
  %1708 = fmul fast float %1406, %1706
  %1709 = fmul fast float %1406, %1707
  %1710 = fmul fast float %1708, %1626
  %1711 = fmul fast float %1709, %1626
  %1712 = fadd fast float %1710, -5.000000e-01
  %1713 = fadd fast float %1711, -5.000000e-01
  %1714 = call float @dx.op.unary.f32(i32 27, float %1712)  ; Round_ni(value)
  %1715 = call float @dx.op.unary.f32(i32 27, float %1713)  ; Round_ni(value)
  %1716 = fsub fast float %1712, %1714
  %1717 = fsub fast float %1713, %1715
  %1718 = fsub fast float 1.000000e+00, %1716
  %1719 = fsub fast float 1.000000e+00, %1717
  %1720 = fmul fast float %1718, %1718
  %1721 = fmul fast float %1719, %1719
  %1722 = fmul fast float %1716, %1716
  %1723 = fmul fast float %1717, %1717
  %1724 = fmul fast float %1718, 0x3FC5555560000000
  %1725 = fmul fast float %1724, %1720
  %1726 = fmul fast float %1719, 0x3FC5555560000000
  %1727 = fmul fast float %1726, %1721
  %1728 = fmul fast float %1722, 5.000000e-01
  %1729 = fmul fast float %1723, 5.000000e-01
  %1730 = fsub fast float 2.000000e+00, %1716
  %1731 = fsub fast float 2.000000e+00, %1717
  %1732 = fmul fast float %1728, %1730
  %1733 = fmul fast float %1729, %1731
  %1734 = fsub fast float 0x3FE5555560000000, %1732
  %1735 = fsub fast float 0x3FE5555560000000, %1733
  %1736 = fadd fast float %1716, 1.000000e+00
  %1737 = fadd fast float %1717, 1.000000e+00
  %1738 = fmul fast float %1736, 5.000000e-01
  %1739 = fmul fast float %1738, %1720
  %1740 = fmul fast float %1737, 5.000000e-01
  %1741 = fmul fast float %1740, %1721
  %1742 = fmul fast float %1716, 0x3FC5555560000000
  %1743 = fmul fast float %1742, %1722
  %1744 = fmul fast float %1717, 0x3FC5555560000000
  %1745 = fmul fast float %1744, %1723
  %1746 = fadd fast float %1725, %1734
  %1747 = fadd fast float %1727, %1735
  %1748 = fadd fast float %1743, 0x3FE5555560000000
  %1749 = fsub fast float %1748, %1739
  %1750 = fadd fast float %1745, 0x3FE5555560000000
  %1751 = fsub fast float %1750, %1741
  %1752 = fdiv fast float %1734, %1746
  %1753 = fdiv fast float %1735, %1747
  %1754 = fadd fast float %1714, -5.000000e-01
  %1755 = fadd fast float %1754, %1752
  %1756 = fadd fast float %1715, -5.000000e-01
  %1757 = fadd fast float %1756, %1753
  %1758 = fmul fast float %1755, %1625
  %1759 = fmul fast float %1757, %1625
  %1760 = fdiv fast float %1743, %1749
  %1761 = fdiv fast float %1745, %1751
  %1762 = fadd fast float %1714, 1.500000e+00
  %1763 = fadd fast float %1762, %1760
  %1764 = fadd fast float %1715, 1.500000e+00
  %1765 = fadd fast float %1764, %1761
  %1766 = fmul fast float %1763, %1625
  %1767 = fmul fast float %1765, %1625
  %1768 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1758, float %1759, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1769 = extractvalue %dx.types.ResRet.f32 %1768, 0
  %1770 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1766, float %1759, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1771 = extractvalue %dx.types.ResRet.f32 %1770, 0
  %1772 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1758, float %1767, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1773 = extractvalue %dx.types.ResRet.f32 %1772, 0
  %1774 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1766, float %1767, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1775 = extractvalue %dx.types.ResRet.f32 %1774, 0
  %1776 = fsub fast float %1769, %1773
  %1777 = fmul fast float %1776, %1747
  %1778 = fadd fast float %1777, %1773
  %1779 = fsub fast float %1771, %1775
  %1780 = fmul fast float %1779, %1747
  %1781 = fadd fast float %1780, %1775
  %1782 = fsub fast float %1778, %1781
  %1783 = fmul fast float %1782, %1746
  %1784 = fadd fast float %1781, -5.000000e-01
  %1785 = fadd fast float %1784, %1783
  %1786 = fmul fast float %1704, %1785
  %1787 = fsub fast float %1705, %1606
  %1788 = fadd fast float %1787, %1614
  %1789 = fsub fast float %1786, %1606
  %1790 = fadd fast float %1789, %1617
  %1791 = call float @dx.op.dot3.f32(i32 55, float %1612, float %1613, float %1788, float %1612, float %1613, float %1788)  ; Dot3(ax,ay,az,bx,by,bz)
  %1792 = call float @dx.op.unary.f32(i32 25, float %1791)  ; Rsqrt(value)
  %1793 = fmul fast float %1792, %1612
  %1794 = fmul fast float %1792, %1613
  %1795 = fmul fast float %1792, %1788
  %1796 = call float @dx.op.dot3.f32(i32 55, float %1615, float %1616, float %1790, float %1615, float %1616, float %1790)  ; Dot3(ax,ay,az,bx,by,bz)
  %1797 = call float @dx.op.unary.f32(i32 25, float %1796)  ; Rsqrt(value)
  %1798 = fmul fast float %1797, %1615
  %1799 = fmul fast float %1797, %1616
  %1800 = fmul fast float %1790, %1797
  %1801 = fmul fast float %1800, %1794
  %1802 = fmul fast float %1799, %1795
  %1803 = fsub fast float %1801, %1802
  %1804 = fmul fast float %1798, %1795
  %1805 = fmul fast float %1800, %1793
  %1806 = fsub fast float %1804, %1805
  %1807 = fmul fast float %1799, %1793
  %1808 = fmul fast float %1798, %1794
  %1809 = fsub fast float %1807, %1808
  %1810 = call float @dx.op.dot3.f32(i32 55, float %1803, float %1806, float %1809, float %1803, float %1806, float %1809)  ; Dot3(ax,ay,az,bx,by,bz)
  %1811 = call float @dx.op.unary.f32(i32 25, float %1810)  ; Rsqrt(value)
  %1812 = fmul fast float %1803, %1811
  %1813 = fmul fast float %1806, %1811
  %1814 = fmul fast float %1809, %1811
  br label %1830

; <label>:1815                                    ; preds = %1595
  %1816 = select i1 %1471, float 0.000000e+00, float %1599
  %1817 = select i1 %1471, float 0.000000e+00, float %1598
  %1818 = fmul fast float %1607, %1371
  %1819 = fmul fast float %1607, %1372
  %1820 = fmul fast float %1817, %1373
  %1821 = fmul fast float %1816, %1373
  %1822 = fadd fast float %1818, %1820
  %1823 = fadd fast float %1819, %1821
  %1824 = fmul fast float %1607, %1373
  %1825 = call float @dx.op.dot3.f32(i32 55, float %1822, float %1823, float %1824, float %1822, float %1823, float %1824)  ; Dot3(ax,ay,az,bx,by,bz)
  %1826 = call float @dx.op.unary.f32(i32 25, float %1825)  ; Rsqrt(value)
  %1827 = fmul fast float %1826, %1822
  %1828 = fmul fast float %1826, %1823
  %1829 = fmul fast float %1826, %1824
  br label %1830

; <label>:1830                                    ; preds = %1815, %1611, %1393
  %1831 = phi float [ %1605, %1611 ], [ %1605, %1815 ], [ 0.000000e+00, %1393 ]
  %1832 = phi float [ %1606, %1611 ], [ %1606, %1815 ], [ 0.000000e+00, %1393 ]
  %1833 = phi float [ %1812, %1611 ], [ %1827, %1815 ], [ %1371, %1393 ]
  %1834 = phi float [ %1813, %1611 ], [ %1828, %1815 ], [ %1372, %1393 ]
  %1835 = phi float [ %1814, %1611 ], [ %1829, %1815 ], [ %1373, %1393 ]
  %1836 = fadd fast float %1831, %1386
  %1837 = fadd fast float %1831, %1387
  %1838 = fadd fast float %1832, %1389
  br label %1839

; <label>:1839                                    ; preds = %1830, %1192
  %1840 = phi float [ %1836, %1830 ], [ %1386, %1192 ]
  %1841 = phi float [ %1837, %1830 ], [ %1387, %1192 ]
  %1842 = phi float [ %1838, %1830 ], [ %1389, %1192 ]
  %1843 = phi float [ %1833, %1830 ], [ %1371, %1192 ]
  %1844 = phi float [ %1834, %1830 ], [ %1372, %1192 ]
  %1845 = phi float [ %1835, %1830 ], [ %1373, %1192 ]
  %1846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1847 = extractvalue %dx.types.CBufRet.f32 %1846, 0
  %1848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1849 = extractvalue %dx.types.CBufRet.f32 %1848, 0
  %1850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1851 = extractvalue %dx.types.CBufRet.f32 %1850, 0
  %1852 = extractvalue %dx.types.CBufRet.f32 %1846, 1
  %1853 = extractvalue %dx.types.CBufRet.f32 %1848, 1
  %1854 = extractvalue %dx.types.CBufRet.f32 %1850, 1
  %1855 = extractvalue %dx.types.CBufRet.f32 %1846, 2
  %1856 = extractvalue %dx.types.CBufRet.f32 %1848, 2
  %1857 = extractvalue %dx.types.CBufRet.f32 %1850, 2
  %1858 = extractvalue %dx.types.CBufRet.f32 %1846, 3
  %1859 = extractvalue %dx.types.CBufRet.f32 %1848, 3
  %1860 = extractvalue %dx.types.CBufRet.f32 %1850, 3
  %1861 = fadd fast float %1858, %1840
  %1862 = fadd fast float %1859, %1841
  %1863 = fadd fast float %1860, %1842
  %1864 = fmul fast float %1861, %1847
  %1865 = call float @dx.op.tertiary.f32(i32 46, float %1862, float %1852, float %1864)  ; FMad(a,b,c)
  %1866 = call float @dx.op.tertiary.f32(i32 46, float %1863, float %1855, float %1865)  ; FMad(a,b,c)
  %1867 = fmul fast float %1861, %1849
  %1868 = call float @dx.op.tertiary.f32(i32 46, float %1862, float %1853, float %1867)  ; FMad(a,b,c)
  %1869 = call float @dx.op.tertiary.f32(i32 46, float %1863, float %1856, float %1868)  ; FMad(a,b,c)
  %1870 = fmul fast float %1861, %1851
  %1871 = call float @dx.op.tertiary.f32(i32 46, float %1862, float %1854, float %1870)  ; FMad(a,b,c)
  %1872 = call float @dx.op.tertiary.f32(i32 46, float %1863, float %1857, float %1871)  ; FMad(a,b,c)
  %1873 = fsub fast float %1866, %1858
  %1874 = fsub fast float %1869, %1859
  %1875 = fsub fast float %1872, %1860
  %1876 = fmul fast float %1847, %1843
  %1877 = call float @dx.op.tertiary.f32(i32 46, float %1844, float %1852, float %1876)  ; FMad(a,b,c)
  %1878 = call float @dx.op.tertiary.f32(i32 46, float %1845, float %1855, float %1877)  ; FMad(a,b,c)
  %1879 = fmul fast float %1849, %1843
  %1880 = call float @dx.op.tertiary.f32(i32 46, float %1844, float %1853, float %1879)  ; FMad(a,b,c)
  %1881 = call float @dx.op.tertiary.f32(i32 46, float %1845, float %1856, float %1880)  ; FMad(a,b,c)
  %1882 = fmul fast float %1851, %1843
  %1883 = call float @dx.op.tertiary.f32(i32 46, float %1844, float %1854, float %1882)  ; FMad(a,b,c)
  %1884 = call float @dx.op.tertiary.f32(i32 46, float %1845, float %1857, float %1883)  ; FMad(a,b,c)
  %1885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 208)  ; CBufferLoadLegacy(handle,regIndex)
  %1886 = extractvalue %dx.types.CBufRet.f32 %1885, 2
  %1887 = fadd fast float %1875, %1886
  %1888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1889 = extractvalue %dx.types.CBufRet.f32 %1888, 0
  %1890 = extractvalue %dx.types.CBufRet.f32 %1888, 1
  %1891 = extractvalue %dx.types.CBufRet.f32 %1888, 2
  %1892 = fsub fast float %1873, %1889
  %1893 = fsub fast float %1874, %1890
  %1894 = fsub fast float %1887, %1891
  %1895 = fmul fast float %135, 6.553500e+04
  %1896 = call float @dx.op.unary.f32(i32 26, float %1895)  ; Round_ne(value)
  %1897 = fptosi float %1896 to i32
  %1898 = call i32 @dx.op.binary.i32(i32 37, i32 %1897, i32 0)  ; IMax(a,b)
  %1899 = call i32 @dx.op.binary.i32(i32 38, i32 %1898, i32 65535)  ; IMin(a,b)
  %1900 = fmul fast float %138, 6.553500e+04
  %1901 = call float @dx.op.unary.f32(i32 26, float %1900)  ; Round_ne(value)
  %1902 = fptosi float %1901 to i32
  %1903 = call i32 @dx.op.binary.i32(i32 37, i32 %1902, i32 0)  ; IMax(a,b)
  %1904 = call i32 @dx.op.binary.i32(i32 38, i32 %1903, i32 65535)  ; IMin(a,b)
  %1905 = shl i32 %1904, 16
  %1906 = or i32 %1905, %1899
  %1907 = call float @dx.op.unary.f32(i32 6, float %1878)  ; FAbs(value)
  %1908 = call float @dx.op.unary.f32(i32 6, float %1881)  ; FAbs(value)
  %1909 = fadd fast float %1908, %1907
  %1910 = call float @dx.op.unary.f32(i32 6, float %1884)  ; FAbs(value)
  %1911 = fadd fast float %1909, %1910
  %1912 = fdiv fast float %1878, %1911
  %1913 = fdiv fast float %1881, %1911
  %1914 = fdiv fast float %1884, %1911
  %1915 = fcmp fast oge float %1914, 0.000000e+00
  %1916 = call float @dx.op.unary.f32(i32 6, float %1913)  ; FAbs(value)
  %1917 = call float @dx.op.unary.f32(i32 6, float %1912)  ; FAbs(value)
  %1918 = fsub fast float 1.000000e+00, %1916
  %1919 = fsub fast float 1.000000e+00, %1917
  %1920 = fcmp fast oge float %1912, 0.000000e+00
  %1921 = select i1 %1920, float 1.000000e+00, float -1.000000e+00
  %1922 = fcmp fast oge float %1913, 0.000000e+00
  %1923 = select i1 %1922, float 1.000000e+00, float -1.000000e+00
  %1924 = fmul fast float %1918, %1921
  %1925 = fmul fast float %1919, %1923
  %1926 = select i1 %1915, float %1912, float %1924
  %1927 = select i1 %1915, float %1913, float %1925
  %1928 = fmul fast float %1926, 1.275000e+02
  %1929 = fmul fast float %1927, 1.275000e+02
  %1930 = fadd fast float %1928, 1.275000e+02
  %1931 = fadd fast float %1929, 1.275000e+02
  %1932 = call float @dx.op.unary.f32(i32 26, float %1930)  ; Round_ne(value)
  %1933 = call float @dx.op.unary.f32(i32 26, float %1931)  ; Round_ne(value)
  %1934 = fptoui float %1932 to i32
  %1935 = fptoui float %1933 to i32
  %1936 = shl i32 %1935, 8
  %1937 = shl i32 %1224, 16
  %1938 = or i32 %1934, %1937
  %1939 = or i32 %1938, %1936
  %1940 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %1941 = extractvalue %dx.types.CBufRet.i32 %1940, 0
  %1942 = icmp eq i32 %1941, 19
  br i1 %1942, label %1943, label %1945, !dx.controlflow.hints !57

; <label>:1943                                    ; preds = %1839
  %1944 = bitcast float %1385 to i32
  br label %2126

; <label>:1945                                    ; preds = %1839
  %1946 = icmp eq i32 %1941, 21
  br i1 %1946, label %1947, label %2011, !dx.controlflow.hints !58

; <label>:1947                                    ; preds = %1945
  br i1 %508, label %1993, label %1948, !dx.controlflow.hints !59

; <label>:1948                                    ; preds = %1947
  %1949 = extractvalue %dx.types.CBufRet.i32 %1940, 2
  %1950 = icmp eq i32 %1949, -1
  br i1 %1950, label %1952, label %1951, !dx.controlflow.hints !60

; <label>:1951                                    ; preds = %1948
  br label %1961

; <label>:1952                                    ; preds = %1948
  %1953 = fcmp fast ogt float %1211, 0x3FF0202020000000
  %1954 = select i1 %1953, float 0.000000e+00, float %1211
  %1955 = select i1 %1953, float 1.000000e+00, float %1211
  %1956 = fcmp fast olt float %1211, 0x3FEFBFBFC0000000
  %1957 = select i1 %1956, float 1.000000e+00, float %1954
  %1958 = select i1 %1956, float 0.000000e+00, float %1955
  %1959 = or i1 %1956, %1953
  %1960 = select i1 %1959, float 0.000000e+00, float %1211
  br label %1993

; <label>:1961                                    ; preds = %1989, %1951
  %1962 = phi i32 [ %1990, %1989 ], [ 0, %1951 ]
  %1963 = shl i32 %1962, 2
  %1964 = add i32 %1963, %493
  %1965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1964, i32 undef)  ; BufferLoad(srv,index,wot)
  %1966 = extractvalue %dx.types.ResRet.i32 %1965, 0
  %1967 = and i32 %1966, 32767
  %1968 = icmp eq i32 %1967, %1949
  br i1 %1968, label %1969, label %1989, !dx.controlflow.hints !61

; <label>:1969                                    ; preds = %1961
  %1970 = add i32 %1963, %67
  %1971 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1970, i32 undef)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.f32 %1971, 0
  %1973 = add i32 %1963, %71
  %1974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1973, i32 undef)  ; BufferLoad(srv,index,wot)
  %1975 = extractvalue %dx.types.ResRet.i32 %1974, 0
  %1976 = add i32 %1975, 0
  %1977 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1976, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1978 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1977, i32 0)  ; GetDimensions(handle,mipLevel)
  %1979 = extractvalue %dx.types.Dimensions %1978, 0
  %1980 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1979)  ; FirstbitLo(value)
  %1981 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1982 = extractvalue %dx.types.CBufRet.i32 %1981, 1
  %1983 = sub nsw i32 %1982, %1980
  %1984 = sitofp i32 %1983 to float
  %1985 = fsub fast float %152, %1984
  %1986 = call float @dx.op.binary.f32(i32 35, float %1985, float 0.000000e+00)  ; FMax(a,b)
  %1987 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1977, %dx.types.Handle %12, float %506, float %507, float %1972, float undef, i32 0, i32 0, i32 undef, float %1986)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1988 = extractvalue %dx.types.ResRet.f32 %1987, 0
  br label %1993

; <label>:1989                                    ; preds = %1961
  %1990 = add nuw i32 %1962, 1
  %1991 = icmp ult i32 %1990, %492
  br i1 %1991, label %1961, label %1992

; <label>:1992                                    ; preds = %1989
  br label %1993

; <label>:1993                                    ; preds = %1992, %1969, %1952, %1947
  %1994 = phi float [ %1957, %1952 ], [ 1.000000e+00, %1947 ], [ %1988, %1969 ], [ 0.000000e+00, %1992 ]
  %1995 = phi float [ %1958, %1952 ], [ 0.000000e+00, %1947 ], [ %1988, %1969 ], [ 0.000000e+00, %1992 ]
  %1996 = phi float [ %1960, %1952 ], [ 0.000000e+00, %1947 ], [ %1988, %1969 ], [ 1.000000e+00, %1992 ]
  %1997 = call float @dx.op.unary.f32(i32 7, float %1994)  ; Saturate(value)
  %1998 = call float @dx.op.unary.f32(i32 7, float %1995)  ; Saturate(value)
  %1999 = call float @dx.op.unary.f32(i32 7, float %1996)  ; Saturate(value)
  %2000 = fmul fast float %1997, 2.550000e+02
  %2001 = fmul fast float %1998, 2.550000e+02
  %2002 = fmul fast float %1999, 2.550000e+02
  %2003 = fptoui float %2000 to i32
  %2004 = fptoui float %2001 to i32
  %2005 = fptoui float %2002 to i32
  %2006 = shl i32 %2004, 8
  %2007 = shl i32 %2005, 16
  %2008 = or i32 %2003, %2006
  %2009 = or i32 %2008, %2007
  %2010 = or i32 %2009, -16777216
  br label %2126

; <label>:2011                                    ; preds = %1945
  %2012 = icmp eq i32 %1941, 26
  %2013 = icmp eq i32 %1941, 32
  %2014 = or i1 %2012, %2013
  br i1 %2014, label %2015, label %2017, !dx.controlflow.hints !62

; <label>:2015                                    ; preds = %2011
  %2016 = bitcast float %152 to i32
  br label %2126

; <label>:2017                                    ; preds = %2011
  %2018 = icmp eq i32 %1941, 29
  br i1 %2018, label %2019, label %2115, !dx.controlflow.hints !63

; <label>:2019                                    ; preds = %2017
  br i1 %508, label %2097, label %2020

; <label>:2020                                    ; preds = %2019
  br label %2021

; <label>:2021                                    ; preds = %2021, %2020
  %2022 = phi float [ %2091, %2021 ], [ 1.000000e+00, %2020 ]
  %2023 = phi float [ %2092, %2021 ], [ 0.000000e+00, %2020 ]
  %2024 = phi float [ %2093, %2021 ], [ 0.000000e+00, %2020 ]
  %2025 = phi i32 [ %2094, %2021 ], [ 0, %2020 ]
  %2026 = shl i32 %2025, 2
  %2027 = add i32 %2026, %493
  %2028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2029 = extractvalue %dx.types.ResRet.i32 %2028, 0
  %2030 = and i32 %2029, 32767
  %2031 = add i32 %2026, %67
  %2032 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2033 = extractvalue %dx.types.ResRet.f32 %2032, 0
  %2034 = add i32 %2026, %71
  %2035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.i32 %2035, 0
  %2037 = add i32 %2036, 0
  %2038 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2037, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2039 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2038, i32 0)  ; GetDimensions(handle,mipLevel)
  %2040 = extractvalue %dx.types.Dimensions %2039, 0
  %2041 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2040)  ; FirstbitLo(value)
  %2042 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2043 = extractvalue %dx.types.CBufRet.i32 %2042, 1
  %2044 = sub nsw i32 %2043, %2041
  %2045 = sitofp i32 %2044 to float
  %2046 = fsub fast float %152, %2045
  %2047 = call float @dx.op.binary.f32(i32 35, float %2046, float 0.000000e+00)  ; FMax(a,b)
  %2048 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2038, %dx.types.Handle %12, float %506, float %507, float %2033, float undef, i32 0, i32 0, i32 undef, float %2047)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2049 = extractvalue %dx.types.ResRet.f32 %2048, 0
  %2050 = uitofp i32 %2030 to float
  %2051 = fmul fast float %2050, 0x3FE3C6EF40000000
  %2052 = call float @dx.op.unary.f32(i32 22, float %2051)  ; Frc(value)
  %2053 = fadd fast float %2052, 0x3FE5555560000000
  %2054 = fadd fast float %2052, 0x3FD5555560000000
  %2055 = fsub fast float -0.000000e+00, %2052
  %2056 = fsub fast float -0.000000e+00, %2053
  %2057 = fsub fast float -0.000000e+00, %2054
  %2058 = fcmp fast oge float %2052, %2055
  %2059 = fcmp fast oge float %2053, %2056
  %2060 = fcmp fast oge float %2054, %2057
  %2061 = call float @dx.op.unary.f32(i32 6, float %2052)  ; FAbs(value)
  %2062 = call float @dx.op.unary.f32(i32 6, float %2053)  ; FAbs(value)
  %2063 = call float @dx.op.unary.f32(i32 6, float %2054)  ; FAbs(value)
  %2064 = call float @dx.op.unary.f32(i32 22, float %2061)  ; Frc(value)
  %2065 = call float @dx.op.unary.f32(i32 22, float %2062)  ; Frc(value)
  %2066 = call float @dx.op.unary.f32(i32 22, float %2063)  ; Frc(value)
  %2067 = fsub fast float -0.000000e+00, %2064
  %2068 = fsub fast float -0.000000e+00, %2065
  %2069 = fsub fast float -0.000000e+00, %2066
  %2070 = select i1 %2058, float %2064, float %2067
  %2071 = select i1 %2059, float %2065, float %2068
  %2072 = select i1 %2060, float %2066, float %2069
  %2073 = fmul fast float %2070, 6.000000e+00
  %2074 = fmul fast float %2071, 6.000000e+00
  %2075 = fmul fast float %2072, 6.000000e+00
  %2076 = fadd fast float %2073, -3.000000e+00
  %2077 = fadd fast float %2074, -3.000000e+00
  %2078 = fadd fast float %2075, -3.000000e+00
  %2079 = call float @dx.op.unary.f32(i32 6, float %2076)  ; FAbs(value)
  %2080 = call float @dx.op.unary.f32(i32 6, float %2077)  ; FAbs(value)
  %2081 = call float @dx.op.unary.f32(i32 6, float %2078)  ; FAbs(value)
  %2082 = fadd fast float %2079, -1.000000e+00
  %2083 = fadd fast float %2080, -1.000000e+00
  %2084 = fadd fast float %2081, -1.000000e+00
  %2085 = call float @dx.op.unary.f32(i32 7, float %2082)  ; Saturate(value)
  %2086 = call float @dx.op.unary.f32(i32 7, float %2083)  ; Saturate(value)
  %2087 = call float @dx.op.unary.f32(i32 7, float %2084)  ; Saturate(value)
  %2088 = fmul fast float %2085, %2049
  %2089 = fmul fast float %2086, %2049
  %2090 = fmul fast float %2087, %2049
  %2091 = fadd fast float %2088, %2022
  %2092 = fadd fast float %2089, %2023
  %2093 = fadd fast float %2090, %2024
  %2094 = add nuw i32 %2025, 1
  %2095 = icmp eq i32 %2094, %492
  br i1 %2095, label %2096, label %2021

; <label>:2096                                    ; preds = %2021
  br label %2097

; <label>:2097                                    ; preds = %2096, %2019
  %2098 = phi float [ 1.000000e+00, %2019 ], [ %2091, %2096 ]
  %2099 = phi float [ 0.000000e+00, %2019 ], [ %2092, %2096 ]
  %2100 = phi float [ 0.000000e+00, %2019 ], [ %2093, %2096 ]
  %2101 = call float @dx.op.unary.f32(i32 7, float %2098)  ; Saturate(value)
  %2102 = call float @dx.op.unary.f32(i32 7, float %2099)  ; Saturate(value)
  %2103 = call float @dx.op.unary.f32(i32 7, float %2100)  ; Saturate(value)
  %2104 = fmul fast float %2101, 2.550000e+02
  %2105 = fmul fast float %2102, 2.550000e+02
  %2106 = fmul fast float %2103, 2.550000e+02
  %2107 = fptoui float %2104 to i32
  %2108 = fptoui float %2105 to i32
  %2109 = fptoui float %2106 to i32
  %2110 = shl i32 %2108, 8
  %2111 = shl i32 %2109, 16
  %2112 = or i32 %2107, %2110
  %2113 = or i32 %2112, %2111
  %2114 = or i32 %2113, -16777216
  br label %2126

; <label>:2115                                    ; preds = %2017
  %2116 = icmp eq i32 %1941, 41
  br i1 %2116, label %2117, label %2126, !dx.controlflow.hints !64

; <label>:2117                                    ; preds = %2115
  %2118 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %2119 = extractvalue %dx.types.CBufRet.i32 %2118, 0
  %2120 = icmp eq i32 %2119, 7
  br i1 %2120, label %2121, label %2126, !dx.controlflow.hints !65

; <label>:2121                                    ; preds = %2117
  %2122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %2123 = extractvalue %dx.types.CBufRet.f32 %2122, 1
  %2124 = fcmp fast oge float %1238, %2123
  %2125 = select i1 %2124, i32 1065353216, i32 0
  br label %2126

; <label>:2126                                    ; preds = %2121, %2117, %2115, %2097, %2015, %1993, %1943
  %2127 = phi i32 [ %1944, %1943 ], [ %2010, %1993 ], [ %2016, %2015 ], [ %2114, %2097 ], [ %2125, %2121 ], [ %1939, %2117 ], [ %1939, %2115 ]
  %2128 = mul i32 %31, 20
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %2128, i32 undef, float %1892, float %1893, float %1894, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2129 = add i32 %2128, 12
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %2129, i32 undef, i32 %1906, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2130 = add i32 %2128, 16
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %2130, i32 undef, i32 %2127, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %2135

; <label>:2131                                    ; preds = %361
  %2132 = mul i32 %31, 20
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %2132, i32 undef, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2133 = add i32 %2132, 12
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %2133, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2134 = add i32 %2132, 16
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %2134, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %2135

; <label>:2135                                    ; preds = %2131, %2126, %0
  %2136 = phi float [ %1892, %2126 ], [ 0.000000e+00, %2131 ], [ 0.000000e+00, %0 ]
  %2137 = phi float [ %1893, %2126 ], [ 0.000000e+00, %2131 ], [ 0.000000e+00, %0 ]
  %2138 = phi float [ %1894, %2126 ], [ 0.000000e+00, %2131 ], [ 0.000000e+00, %0 ]
  %2139 = phi i1 [ true, %2126 ], [ false, %2131 ], [ false, %0 ]
  %2140 = phi i32 [ %1247, %2126 ], [ %365, %2131 ], [ 0, %0 ]
  %2141 = fadd fast float %2136, 1.310720e+05
  %2142 = fadd fast float %2137, 1.310720e+05
  %2143 = fadd fast float %2138, 1.310720e+05
  %2144 = call float @dx.op.binary.f32(i32 35, float %2141, float 0.000000e+00)  ; FMax(a,b)
  %2145 = call float @dx.op.binary.f32(i32 35, float %2142, float 0.000000e+00)  ; FMax(a,b)
  %2146 = call float @dx.op.binary.f32(i32 35, float %2143, float 0.000000e+00)  ; FMax(a,b)
  %2147 = bitcast float %2144 to i32
  %2148 = bitcast float %2145 to i32
  %2149 = bitcast float %2146 to i32
  %2150 = select i1 %2139, i32 %2147, i32 -1
  %2151 = select i1 %2139, i32 %2148, i32 -1
  %2152 = select i1 %2139, i32 %2149, i32 -1
  %2153 = select i1 %2139, i32 %2147, i32 0
  %2154 = select i1 %2139, i32 %2148, i32 0
  %2155 = select i1 %2139, i32 %2149, i32 0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2156 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %21
  store i32 %2150, i32 addrspace(3)* %2156, align 4, !tbaa !66
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2157 = and i32 %21, 63
  %2158 = icmp ult i32 %2157, 32
  br i1 %2158, label %2159, label %2165, !dx.controlflow.hints !68

; <label>:2159                                    ; preds = %2135
  %2160 = add i32 %21, 32
  %2161 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2160
  %2162 = load i32, i32 addrspace(3)* %2161, align 4, !tbaa !66
  %2163 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2164 = call i32 @dx.op.binary.i32(i32 40, i32 %2163, i32 %2162)  ; UMin(a,b)
  store i32 %2164, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2165

; <label>:2165                                    ; preds = %2159, %2135
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2166 = icmp ult i32 %2157, 16
  br i1 %2166, label %2167, label %2173, !dx.controlflow.hints !69

; <label>:2167                                    ; preds = %2165
  %2168 = add i32 %21, 16
  %2169 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2168
  %2170 = load i32, i32 addrspace(3)* %2169, align 4, !tbaa !66
  %2171 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2172 = call i32 @dx.op.binary.i32(i32 40, i32 %2171, i32 %2170)  ; UMin(a,b)
  store i32 %2172, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2173

; <label>:2173                                    ; preds = %2167, %2165
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2174 = icmp ult i32 %2157, 8
  br i1 %2174, label %2175, label %2181, !dx.controlflow.hints !70

; <label>:2175                                    ; preds = %2173
  %2176 = add i32 %21, 8
  %2177 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2176
  %2178 = load i32, i32 addrspace(3)* %2177, align 4, !tbaa !66
  %2179 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2180 = call i32 @dx.op.binary.i32(i32 40, i32 %2179, i32 %2178)  ; UMin(a,b)
  store i32 %2180, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2181

; <label>:2181                                    ; preds = %2175, %2173
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2182 = icmp ult i32 %2157, 4
  br i1 %2182, label %2183, label %2189, !dx.controlflow.hints !71

; <label>:2183                                    ; preds = %2181
  %2184 = add i32 %21, 4
  %2185 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2184
  %2186 = load i32, i32 addrspace(3)* %2185, align 4, !tbaa !66
  %2187 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2188 = call i32 @dx.op.binary.i32(i32 40, i32 %2187, i32 %2186)  ; UMin(a,b)
  store i32 %2188, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2189

; <label>:2189                                    ; preds = %2183, %2181
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2190 = icmp ult i32 %2157, 2
  br i1 %2190, label %2191, label %2197, !dx.controlflow.hints !72

; <label>:2191                                    ; preds = %2189
  %2192 = add i32 %21, 2
  %2193 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2192
  %2194 = load i32, i32 addrspace(3)* %2193, align 4, !tbaa !66
  %2195 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2196 = call i32 @dx.op.binary.i32(i32 40, i32 %2195, i32 %2194)  ; UMin(a,b)
  store i32 %2196, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2197

; <label>:2197                                    ; preds = %2191, %2189
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2198 = icmp eq i32 %2157, 0
  br i1 %2198, label %2199, label %2205, !dx.controlflow.hints !73

; <label>:2199                                    ; preds = %2197
  %2200 = add i32 %21, 1
  %2201 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2200
  %2202 = load i32, i32 addrspace(3)* %2201, align 4, !tbaa !66
  %2203 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2204 = call i32 @dx.op.binary.i32(i32 40, i32 %2203, i32 %2202)  ; UMin(a,b)
  store i32 %2204, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2205

; <label>:2205                                    ; preds = %2199, %2197
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2206 = and i32 %21, -64
  %2207 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2206
  %2208 = load i32, i32 addrspace(3)* %2207, align 4, !tbaa !66
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %2151, i32 addrspace(3)* %2156, align 4, !tbaa !66
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %2158, label %2209, label %2215, !dx.controlflow.hints !68

; <label>:2209                                    ; preds = %2205
  %2210 = add i32 %21, 32
  %2211 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2210
  %2212 = load i32, i32 addrspace(3)* %2211, align 4, !tbaa !66
  %2213 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2214 = call i32 @dx.op.binary.i32(i32 40, i32 %2213, i32 %2212)  ; UMin(a,b)
  store i32 %2214, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2215

; <label>:2215                                    ; preds = %2209, %2205
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2166, label %2216, label %2222, !dx.controlflow.hints !69

; <label>:2216                                    ; preds = %2215
  %2217 = add i32 %21, 16
  %2218 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2217
  %2219 = load i32, i32 addrspace(3)* %2218, align 4, !tbaa !66
  %2220 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2221 = call i32 @dx.op.binary.i32(i32 40, i32 %2220, i32 %2219)  ; UMin(a,b)
  store i32 %2221, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2222

; <label>:2222                                    ; preds = %2216, %2215
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2174, label %2223, label %2229, !dx.controlflow.hints !70

; <label>:2223                                    ; preds = %2222
  %2224 = add i32 %21, 8
  %2225 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2224
  %2226 = load i32, i32 addrspace(3)* %2225, align 4, !tbaa !66
  %2227 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2228 = call i32 @dx.op.binary.i32(i32 40, i32 %2227, i32 %2226)  ; UMin(a,b)
  store i32 %2228, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2229

; <label>:2229                                    ; preds = %2223, %2222
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2182, label %2230, label %2236, !dx.controlflow.hints !71

; <label>:2230                                    ; preds = %2229
  %2231 = add i32 %21, 4
  %2232 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2231
  %2233 = load i32, i32 addrspace(3)* %2232, align 4, !tbaa !66
  %2234 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2235 = call i32 @dx.op.binary.i32(i32 40, i32 %2234, i32 %2233)  ; UMin(a,b)
  store i32 %2235, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2236

; <label>:2236                                    ; preds = %2230, %2229
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2190, label %2237, label %2243, !dx.controlflow.hints !72

; <label>:2237                                    ; preds = %2236
  %2238 = add i32 %21, 2
  %2239 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2238
  %2240 = load i32, i32 addrspace(3)* %2239, align 4, !tbaa !66
  %2241 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2242 = call i32 @dx.op.binary.i32(i32 40, i32 %2241, i32 %2240)  ; UMin(a,b)
  store i32 %2242, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2243

; <label>:2243                                    ; preds = %2237, %2236
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2198, label %2244, label %2250, !dx.controlflow.hints !73

; <label>:2244                                    ; preds = %2243
  %2245 = add i32 %21, 1
  %2246 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2245
  %2247 = load i32, i32 addrspace(3)* %2246, align 4, !tbaa !66
  %2248 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2249 = call i32 @dx.op.binary.i32(i32 40, i32 %2248, i32 %2247)  ; UMin(a,b)
  store i32 %2249, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2250

; <label>:2250                                    ; preds = %2244, %2243
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2251 = load i32, i32 addrspace(3)* %2207, align 4, !tbaa !66
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %2152, i32 addrspace(3)* %2156, align 4, !tbaa !66
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %2158, label %2252, label %2258, !dx.controlflow.hints !68

; <label>:2252                                    ; preds = %2250
  %2253 = add i32 %21, 32
  %2254 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2253
  %2255 = load i32, i32 addrspace(3)* %2254, align 4, !tbaa !66
  %2256 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2257 = call i32 @dx.op.binary.i32(i32 40, i32 %2256, i32 %2255)  ; UMin(a,b)
  store i32 %2257, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2258

; <label>:2258                                    ; preds = %2252, %2250
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2166, label %2259, label %2265, !dx.controlflow.hints !69

; <label>:2259                                    ; preds = %2258
  %2260 = add i32 %21, 16
  %2261 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2260
  %2262 = load i32, i32 addrspace(3)* %2261, align 4, !tbaa !66
  %2263 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2264 = call i32 @dx.op.binary.i32(i32 40, i32 %2263, i32 %2262)  ; UMin(a,b)
  store i32 %2264, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2265

; <label>:2265                                    ; preds = %2259, %2258
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2174, label %2266, label %2272, !dx.controlflow.hints !70

; <label>:2266                                    ; preds = %2265
  %2267 = add i32 %21, 8
  %2268 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2267
  %2269 = load i32, i32 addrspace(3)* %2268, align 4, !tbaa !66
  %2270 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2271 = call i32 @dx.op.binary.i32(i32 40, i32 %2270, i32 %2269)  ; UMin(a,b)
  store i32 %2271, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2272

; <label>:2272                                    ; preds = %2266, %2265
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2182, label %2273, label %2279, !dx.controlflow.hints !71

; <label>:2273                                    ; preds = %2272
  %2274 = add i32 %21, 4
  %2275 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2274
  %2276 = load i32, i32 addrspace(3)* %2275, align 4, !tbaa !66
  %2277 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2278 = call i32 @dx.op.binary.i32(i32 40, i32 %2277, i32 %2276)  ; UMin(a,b)
  store i32 %2278, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2279

; <label>:2279                                    ; preds = %2273, %2272
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2190, label %2280, label %2286, !dx.controlflow.hints !72

; <label>:2280                                    ; preds = %2279
  %2281 = add i32 %21, 2
  %2282 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2281
  %2283 = load i32, i32 addrspace(3)* %2282, align 4, !tbaa !66
  %2284 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2285 = call i32 @dx.op.binary.i32(i32 40, i32 %2284, i32 %2283)  ; UMin(a,b)
  store i32 %2285, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2286

; <label>:2286                                    ; preds = %2280, %2279
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2198, label %2287, label %2293, !dx.controlflow.hints !73

; <label>:2287                                    ; preds = %2286
  %2288 = add i32 %21, 1
  %2289 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2288
  %2290 = load i32, i32 addrspace(3)* %2289, align 4, !tbaa !66
  %2291 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2292 = call i32 @dx.op.binary.i32(i32 40, i32 %2291, i32 %2290)  ; UMin(a,b)
  store i32 %2292, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2293

; <label>:2293                                    ; preds = %2287, %2286
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2294 = load i32, i32 addrspace(3)* %2207, align 4, !tbaa !66
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %2153, i32 addrspace(3)* %2156, align 4, !tbaa !66
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %2158, label %2295, label %2301, !dx.controlflow.hints !74

; <label>:2295                                    ; preds = %2293
  %2296 = add i32 %21, 32
  %2297 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2296
  %2298 = load i32, i32 addrspace(3)* %2297, align 4, !tbaa !66
  %2299 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2300 = call i32 @dx.op.binary.i32(i32 39, i32 %2299, i32 %2298)  ; UMax(a,b)
  store i32 %2300, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2301

; <label>:2301                                    ; preds = %2295, %2293
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2166, label %2302, label %2308, !dx.controlflow.hints !75

; <label>:2302                                    ; preds = %2301
  %2303 = add i32 %21, 16
  %2304 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2303
  %2305 = load i32, i32 addrspace(3)* %2304, align 4, !tbaa !66
  %2306 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2307 = call i32 @dx.op.binary.i32(i32 39, i32 %2306, i32 %2305)  ; UMax(a,b)
  store i32 %2307, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2308

; <label>:2308                                    ; preds = %2302, %2301
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2174, label %2309, label %2315, !dx.controlflow.hints !76

; <label>:2309                                    ; preds = %2308
  %2310 = add i32 %21, 8
  %2311 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2310
  %2312 = load i32, i32 addrspace(3)* %2311, align 4, !tbaa !66
  %2313 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2314 = call i32 @dx.op.binary.i32(i32 39, i32 %2313, i32 %2312)  ; UMax(a,b)
  store i32 %2314, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2315

; <label>:2315                                    ; preds = %2309, %2308
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2182, label %2316, label %2322, !dx.controlflow.hints !77

; <label>:2316                                    ; preds = %2315
  %2317 = add i32 %21, 4
  %2318 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2317
  %2319 = load i32, i32 addrspace(3)* %2318, align 4, !tbaa !66
  %2320 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2321 = call i32 @dx.op.binary.i32(i32 39, i32 %2320, i32 %2319)  ; UMax(a,b)
  store i32 %2321, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2322

; <label>:2322                                    ; preds = %2316, %2315
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2190, label %2323, label %2329, !dx.controlflow.hints !78

; <label>:2323                                    ; preds = %2322
  %2324 = add i32 %21, 2
  %2325 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2324
  %2326 = load i32, i32 addrspace(3)* %2325, align 4, !tbaa !66
  %2327 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2328 = call i32 @dx.op.binary.i32(i32 39, i32 %2327, i32 %2326)  ; UMax(a,b)
  store i32 %2328, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2329

; <label>:2329                                    ; preds = %2323, %2322
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2198, label %2330, label %2336, !dx.controlflow.hints !79

; <label>:2330                                    ; preds = %2329
  %2331 = add i32 %21, 1
  %2332 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2331
  %2333 = load i32, i32 addrspace(3)* %2332, align 4, !tbaa !66
  %2334 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2335 = call i32 @dx.op.binary.i32(i32 39, i32 %2334, i32 %2333)  ; UMax(a,b)
  store i32 %2335, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2336

; <label>:2336                                    ; preds = %2330, %2329
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2337 = load i32, i32 addrspace(3)* %2207, align 4, !tbaa !66
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %2154, i32 addrspace(3)* %2156, align 4, !tbaa !66
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %2158, label %2338, label %2344, !dx.controlflow.hints !74

; <label>:2338                                    ; preds = %2336
  %2339 = add i32 %21, 32
  %2340 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2339
  %2341 = load i32, i32 addrspace(3)* %2340, align 4, !tbaa !66
  %2342 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2343 = call i32 @dx.op.binary.i32(i32 39, i32 %2342, i32 %2341)  ; UMax(a,b)
  store i32 %2343, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2344

; <label>:2344                                    ; preds = %2338, %2336
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2166, label %2345, label %2351, !dx.controlflow.hints !75

; <label>:2345                                    ; preds = %2344
  %2346 = add i32 %21, 16
  %2347 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2346
  %2348 = load i32, i32 addrspace(3)* %2347, align 4, !tbaa !66
  %2349 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2350 = call i32 @dx.op.binary.i32(i32 39, i32 %2349, i32 %2348)  ; UMax(a,b)
  store i32 %2350, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2351

; <label>:2351                                    ; preds = %2345, %2344
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2174, label %2352, label %2358, !dx.controlflow.hints !76

; <label>:2352                                    ; preds = %2351
  %2353 = add i32 %21, 8
  %2354 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2353
  %2355 = load i32, i32 addrspace(3)* %2354, align 4, !tbaa !66
  %2356 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2357 = call i32 @dx.op.binary.i32(i32 39, i32 %2356, i32 %2355)  ; UMax(a,b)
  store i32 %2357, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2358

; <label>:2358                                    ; preds = %2352, %2351
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2182, label %2359, label %2365, !dx.controlflow.hints !77

; <label>:2359                                    ; preds = %2358
  %2360 = add i32 %21, 4
  %2361 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2360
  %2362 = load i32, i32 addrspace(3)* %2361, align 4, !tbaa !66
  %2363 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2364 = call i32 @dx.op.binary.i32(i32 39, i32 %2363, i32 %2362)  ; UMax(a,b)
  store i32 %2364, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2365

; <label>:2365                                    ; preds = %2359, %2358
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2190, label %2366, label %2372, !dx.controlflow.hints !78

; <label>:2366                                    ; preds = %2365
  %2367 = add i32 %21, 2
  %2368 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2367
  %2369 = load i32, i32 addrspace(3)* %2368, align 4, !tbaa !66
  %2370 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2371 = call i32 @dx.op.binary.i32(i32 39, i32 %2370, i32 %2369)  ; UMax(a,b)
  store i32 %2371, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2372

; <label>:2372                                    ; preds = %2366, %2365
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2198, label %2373, label %2379, !dx.controlflow.hints !79

; <label>:2373                                    ; preds = %2372
  %2374 = add i32 %21, 1
  %2375 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2374
  %2376 = load i32, i32 addrspace(3)* %2375, align 4, !tbaa !66
  %2377 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2378 = call i32 @dx.op.binary.i32(i32 39, i32 %2377, i32 %2376)  ; UMax(a,b)
  store i32 %2378, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2379

; <label>:2379                                    ; preds = %2373, %2372
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2380 = load i32, i32 addrspace(3)* %2207, align 4, !tbaa !66
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %2155, i32 addrspace(3)* %2156, align 4, !tbaa !66
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %2158, label %2381, label %2387, !dx.controlflow.hints !74

; <label>:2381                                    ; preds = %2379
  %2382 = add i32 %21, 32
  %2383 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2382
  %2384 = load i32, i32 addrspace(3)* %2383, align 4, !tbaa !66
  %2385 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2386 = call i32 @dx.op.binary.i32(i32 39, i32 %2385, i32 %2384)  ; UMax(a,b)
  store i32 %2386, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2387

; <label>:2387                                    ; preds = %2381, %2379
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2166, label %2388, label %2394, !dx.controlflow.hints !75

; <label>:2388                                    ; preds = %2387
  %2389 = add i32 %21, 16
  %2390 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2389
  %2391 = load i32, i32 addrspace(3)* %2390, align 4, !tbaa !66
  %2392 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2393 = call i32 @dx.op.binary.i32(i32 39, i32 %2392, i32 %2391)  ; UMax(a,b)
  store i32 %2393, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2394

; <label>:2394                                    ; preds = %2388, %2387
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2174, label %2395, label %2401, !dx.controlflow.hints !76

; <label>:2395                                    ; preds = %2394
  %2396 = add i32 %21, 8
  %2397 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2396
  %2398 = load i32, i32 addrspace(3)* %2397, align 4, !tbaa !66
  %2399 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2400 = call i32 @dx.op.binary.i32(i32 39, i32 %2399, i32 %2398)  ; UMax(a,b)
  store i32 %2400, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2401

; <label>:2401                                    ; preds = %2395, %2394
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2182, label %2402, label %2408, !dx.controlflow.hints !77

; <label>:2402                                    ; preds = %2401
  %2403 = add i32 %21, 4
  %2404 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2403
  %2405 = load i32, i32 addrspace(3)* %2404, align 4, !tbaa !66
  %2406 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2407 = call i32 @dx.op.binary.i32(i32 39, i32 %2406, i32 %2405)  ; UMax(a,b)
  store i32 %2407, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2408

; <label>:2408                                    ; preds = %2402, %2401
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2190, label %2409, label %2415, !dx.controlflow.hints !78

; <label>:2409                                    ; preds = %2408
  %2410 = add i32 %21, 2
  %2411 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2410
  %2412 = load i32, i32 addrspace(3)* %2411, align 4, !tbaa !66
  %2413 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2414 = call i32 @dx.op.binary.i32(i32 39, i32 %2413, i32 %2412)  ; UMax(a,b)
  store i32 %2414, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2415

; <label>:2415                                    ; preds = %2409, %2408
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2198, label %2416, label %2422, !dx.controlflow.hints !79

; <label>:2416                                    ; preds = %2415
  %2417 = add i32 %21, 1
  %2418 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2417
  %2419 = load i32, i32 addrspace(3)* %2418, align 4, !tbaa !66
  %2420 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2421 = call i32 @dx.op.binary.i32(i32 39, i32 %2420, i32 %2419)  ; UMax(a,b)
  store i32 %2421, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2422

; <label>:2422                                    ; preds = %2416, %2415
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2423 = load i32, i32 addrspace(3)* %2207, align 4, !tbaa !66
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %2140, i32 addrspace(3)* %2156, align 4, !tbaa !66
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %2158, label %2424, label %2430, !dx.controlflow.hints !80

; <label>:2424                                    ; preds = %2422
  %2425 = add i32 %21, 32
  %2426 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2425
  %2427 = load i32, i32 addrspace(3)* %2426, align 4, !tbaa !66
  %2428 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2429 = or i32 %2428, %2427
  store i32 %2429, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2430

; <label>:2430                                    ; preds = %2424, %2422
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2166, label %2431, label %2437, !dx.controlflow.hints !81

; <label>:2431                                    ; preds = %2430
  %2432 = add i32 %21, 16
  %2433 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2432
  %2434 = load i32, i32 addrspace(3)* %2433, align 4, !tbaa !66
  %2435 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2436 = or i32 %2435, %2434
  store i32 %2436, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2437

; <label>:2437                                    ; preds = %2431, %2430
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2174, label %2438, label %2444, !dx.controlflow.hints !82

; <label>:2438                                    ; preds = %2437
  %2439 = add i32 %21, 8
  %2440 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2439
  %2441 = load i32, i32 addrspace(3)* %2440, align 4, !tbaa !66
  %2442 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2443 = or i32 %2442, %2441
  store i32 %2443, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2444

; <label>:2444                                    ; preds = %2438, %2437
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2182, label %2445, label %2451, !dx.controlflow.hints !83

; <label>:2445                                    ; preds = %2444
  %2446 = add i32 %21, 4
  %2447 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2446
  %2448 = load i32, i32 addrspace(3)* %2447, align 4, !tbaa !66
  %2449 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2450 = or i32 %2449, %2448
  store i32 %2450, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2451

; <label>:2451                                    ; preds = %2445, %2444
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2190, label %2452, label %2458, !dx.controlflow.hints !84

; <label>:2452                                    ; preds = %2451
  %2453 = add i32 %21, 2
  %2454 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2453
  %2455 = load i32, i32 addrspace(3)* %2454, align 4, !tbaa !66
  %2456 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2457 = or i32 %2456, %2455
  store i32 %2457, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2458

; <label>:2458                                    ; preds = %2452, %2451
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2198, label %2459, label %2465, !dx.controlflow.hints !85

; <label>:2459                                    ; preds = %2458
  %2460 = add i32 %21, 1
  %2461 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2460
  %2462 = load i32, i32 addrspace(3)* %2461, align 4, !tbaa !66
  %2463 = load i32, i32 addrspace(3)* %2156, align 4, !tbaa !66
  %2464 = or i32 %2463, %2462
  store i32 %2464, i32 addrspace(3)* %2156, align 4, !tbaa !66
  br label %2465

; <label>:2465                                    ; preds = %2459, %2458
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2466 = icmp eq i32 %21, 0
  br i1 %2466, label %2467, label %2489, !dx.controlflow.hints !86

; <label>:2467                                    ; preds = %2465
  %2468 = load i32, i32 addrspace(3)* getelementptr inbounds ([64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 0), align 4, !tbaa !66
  %2469 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %2470 = extractvalue %dx.types.CBufRet.i32 %2469, 2
  %2471 = add i32 %2470, %22
  %2472 = shl i32 %2471, 2
  %2473 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %2472, i32 undef, i32 undef, i32 %2468)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %2474 = xor i32 %2208, -1
  %2475 = mul i32 %2471, 24
  %2476 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %2475, i32 undef, i32 undef, i32 %2474)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %2477 = xor i32 %2251, -1
  %2478 = or i32 %2475, 4
  %2479 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %2478, i32 undef, i32 undef, i32 %2477)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %2480 = xor i32 %2294, -1
  %2481 = add i32 %2475, 8
  %2482 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %2481, i32 undef, i32 undef, i32 %2480)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %2483 = add i32 %2475, 12
  %2484 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %2483, i32 undef, i32 undef, i32 %2337)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %2485 = add i32 %2475, 16
  %2486 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %2485, i32 undef, i32 undef, i32 %2380)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %2487 = add i32 %2475, 20
  %2488 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %2487, i32 undef, i32 undef, i32 %2423)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %2489

; <label>:2489                                    ; preds = %2467, %2465
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
!30 = !{void ()* @cs_water_tile_process_verts_debug_shader, !"cs_water_tile_process_verts_debug_shader", null, !4, !31}
!31 = !{i32 0, i64 272, i32 4, !32}
!32 = !{i32 64, i32 1, i32 1}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = !{!44, !44, i64 0}
!44 = !{!"float", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !{!48, !50, !51}
!48 = distinct !{!48, !49, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outDisplacement"}
!49 = distinct !{!49, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z"}
!50 = distinct !{!50, !49, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outNormal"}
!51 = distinct !{!51, !49, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outWaveParticleFoamMask"}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
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
!66 = !{!67, !67, i64 0}
!67 = !{!"int", !45, i64 0}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}

