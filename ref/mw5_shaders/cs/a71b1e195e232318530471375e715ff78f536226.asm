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
; shader hash: 745be9cad227ca8242e6a1af5d2dc8c0
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb1     1
;                                   cbuffer      NA          NA     CB2            cb2     1
;                                   cbuffer      NA          NA     CB3            cb5     1
;                                   sampler      NA          NA      S0             s3     1
;                                   sampler      NA          NA      S1             s4     1
;                                   sampler      NA          NA      S2             s5     1
;                                   texture     f32     2darray      T0      t0,space6unbounded
;                                   texture    byte         r/o      T1             t0     1
;                                   texture    byte         r/o      T2             t3     1
;                                   texture    byte         r/o      T3             t4     1
;                                   texture    byte         r/o      T4             t5     1
;                                   texture     f32          2d      T5             t7     1
;                                   texture     f32     2darray      T6             t6     1
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
%struct.SamplerState = type { i32 }

@"\01?waterSubTileFeaturesShared@@3PAIA" = external addrspace(3) global [8 x i32], align 4
@"\01?waterSubTileBBoxMinXShared@@3PAIA" = external addrspace(3) global [8 x i32], align 4
@"\01?waterSubTileBBoxMinYShared@@3PAIA" = external addrspace(3) global [8 x i32], align 4
@"\01?waterSubTileBBoxMinZShared@@3PAIA" = external addrspace(3) global [8 x i32], align 4
@"\01?waterSubTileBBoxMaxXShared@@3PAIA" = external addrspace(3) global [8 x i32], align 4
@"\01?waterSubTileBBoxMaxYShared@@3PAIA" = external addrspace(3) global [8 x i32], align 4
@"\01?waterSubTileBBoxMaxZShared@@3PAIA" = external addrspace(3) global [8 x i32], align 4

define void @cs_water_tile_process_verts_5x5_debug_shader() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = alloca [4 x float], align 4
  %18 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %19 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %20 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %21 = udiv i32 %18, 25
  %22 = urem i32 %18, 25
  %23 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = extractvalue %dx.types.CBufRet.i32 %23, 1
  %25 = icmp ult i32 %18, %24
  %26 = extractvalue %dx.types.CBufRet.i32 %23, 0
  %27 = mul i32 %21, 25
  %28 = add i32 %22, %27
  %29 = add i32 %28, %26
  br i1 %25, label %30, label %1452, !dx.controlflow.hints !30

; <label>:30                                      ; preds = %0
  %31 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.i32 %31, 2
  %33 = add i32 %32, %21
  %34 = shl i32 %33, 3
  %35 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %34, i32 undef)  ; BufferLoad(srv,index,wot)
  %36 = extractvalue %dx.types.ResRet.i32 %35, 0
  %37 = or i32 %34, 4
  %38 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %37, i32 undef)  ; BufferLoad(srv,index,wot)
  %39 = extractvalue %dx.types.ResRet.i32 %38, 0
  %40 = and i32 %36, 16383
  %41 = lshr i32 %36, 14
  %42 = and i32 %41, 15
  %43 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 %42)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.f32 %43, 2
  %45 = and i32 %39, 65535
  %46 = uitofp i32 %45 to float
  %47 = fmul fast float %46, 0x3EF0000000000000
  %48 = lshr i32 %39, 16
  %49 = uitofp i32 %48 to float
  %50 = fmul fast float %49, 0x3EF0000000000000
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 2
  %53 = fmul fast float %47, %52
  %54 = fmul fast float %50, %52
  %55 = mul nuw nsw i32 %40, 148
  %56 = add nuw nsw i32 %55, 4
  %57 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %56, i32 undef)  ; BufferLoad(srv,index,wot)
  %58 = extractvalue %dx.types.ResRet.f32 %57, 0
  %59 = add nuw nsw i32 %55, 8
  %60 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %59, i32 undef)  ; BufferLoad(srv,index,wot)
  %61 = extractvalue %dx.types.ResRet.f32 %60, 0
  %62 = add nuw nsw i32 %55, 60
  %63 = add nuw nsw i32 %55, 92
  %64 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %63, i32 undef)  ; BufferLoad(srv,index,wot)
  %65 = extractvalue %dx.types.ResRet.i32 %64, 0
  %66 = add nuw nsw i32 %55, 116
  %67 = urem i32 %22, 5
  %68 = udiv i32 %22, 5
  %69 = fmul fast float %44, 2.500000e-01
  %70 = fadd fast float %58, %53
  %71 = uitofp i32 %67 to float
  %72 = fmul fast float %71, %69
  %73 = fadd fast float %70, %72
  %74 = fadd fast float %61, %54
  %75 = uitofp i32 %68 to float
  %76 = fmul fast float %75, %69
  %77 = fadd fast float %74, %76
  %78 = lshr i32 %36, 19
  %79 = and i32 %78, 1
  %80 = and i32 %36, 262144
  %81 = icmp ne i32 %80, 0
  %82 = add nuw nsw i32 %42, %79
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 %82)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = extractvalue %dx.types.CBufRet.f32 %83, 1
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 0
  %88 = extractvalue %dx.types.CBufRet.f32 %86, 1
  %89 = extractvalue %dx.types.CBufRet.f32 %86, 2
  %90 = fsub fast float %73, %87
  %91 = fsub fast float %77, %88
  %92 = fmul fast float %90, %90
  %93 = fmul fast float %91, %91
  %94 = fmul fast float %89, %89
  %95 = fadd fast float %93, %94
  %96 = fadd fast float %95, %92
  %97 = call float @dx.op.unary.f32(i32 24, float %96)  ; Sqrt(value)
  %98 = fsub fast float %97, %84
  %99 = fmul fast float %98, %85
  %100 = call float @dx.op.unary.f32(i32 7, float %99)  ; Saturate(value)
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %103 = select i1 %81, float -1.000000e+00, float -0.000000e+00
  %104 = fadd fast float %100, %103
  %105 = fsub fast float %104, %102
  %106 = call float @dx.op.unary.f32(i32 7, float %105)  ; Saturate(value)
  %107 = fmul fast float %71, 5.000000e-01
  %108 = fmul fast float %75, 5.000000e-01
  %109 = call float @dx.op.unary.f32(i32 22, float %107)  ; Frc(value)
  %110 = call float @dx.op.unary.f32(i32 22, float %108)  ; Frc(value)
  %111 = fmul fast float %44, 5.000000e-01
  %112 = fmul fast float %106, %111
  %113 = fmul fast float %112, %109
  %114 = fmul fast float %112, %110
  %115 = fsub fast float %73, %113
  %116 = fsub fast float %77, %114
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %119 = fmul fast float %118, %97
  %120 = extractvalue %dx.types.CBufRet.f32 %117, 1
  %121 = fadd fast float %119, %120
  %122 = call float @dx.op.unary.f32(i32 7, float %121)  ; Saturate(value)
  %123 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %124 = fmul fast float %123, %97
  %125 = extractvalue %dx.types.CBufRet.f32 %117, 3
  %126 = fadd fast float %124, %125
  %127 = call float @dx.op.unary.f32(i32 7, float %126)  ; Saturate(value)
  %128 = fsub fast float %115, %58
  %129 = extractvalue %dx.types.CBufRet.f32 %51, 3
  %130 = fmul fast float %129, %128
  %131 = fsub fast float %116, %61
  %132 = fmul fast float %129, %131
  %133 = fsub fast float 1.000000e+00, %132
  %134 = fmul fast float %69, %129
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %137 = fmul fast float %134, %136
  %138 = call float @dx.op.unary.f32(i32 23, float %137)  ; Log(value)
  %139 = fadd fast float %138, %106
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 3
  %142 = fadd fast float %139, %141
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 3
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %146 = call float @dx.op.binary.f32(i32 35, float %142, float %145)  ; FMax(a,b)
  %147 = call float @dx.op.binary.f32(i32 36, float %146, float %144)  ; FMin(a,b)
  %148 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 201)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.i32 %148, 2
  %150 = icmp eq i32 %149, %65
  %151 = select i1 %150, i32 0, i32 512
  %152 = add nuw nsw i32 %55, 20
  %153 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %152, i32 undef)  ; BufferLoad(srv,index,wot)
  %154 = extractvalue %dx.types.ResRet.f32 %153, 0
  %155 = add nuw nsw i32 %55, 24
  %156 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %155, i32 undef)  ; BufferLoad(srv,index,wot)
  %157 = extractvalue %dx.types.ResRet.f32 %156, 0
  %158 = add nuw nsw i32 %55, 28
  %159 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %158, i32 undef)  ; BufferLoad(srv,index,wot)
  %160 = extractvalue %dx.types.ResRet.f32 %159, 0
  %161 = add nuw nsw i32 %55, 32
  %162 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %161, i32 undef)  ; BufferLoad(srv,index,wot)
  %163 = extractvalue %dx.types.ResRet.f32 %162, 0
  %164 = add nuw nsw i32 %55, 40
  %165 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %164, i32 undef)  ; BufferLoad(srv,index,wot)
  %166 = extractvalue %dx.types.ResRet.f32 %165, 0
  %167 = add nuw nsw i32 %55, 44
  %168 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %167, i32 undef)  ; BufferLoad(srv,index,wot)
  %169 = extractvalue %dx.types.ResRet.f32 %168, 0
  %170 = add nuw nsw i32 %55, 48
  %171 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %170, i32 undef)  ; BufferLoad(srv,index,wot)
  %172 = extractvalue %dx.types.ResRet.f32 %171, 0
  %173 = add nuw nsw i32 %55, 52
  %174 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %173, i32 undef)  ; BufferLoad(srv,index,wot)
  %175 = extractvalue %dx.types.ResRet.f32 %174, 0
  %176 = add nuw nsw i32 %55, 96
  %177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %176, i32 undef)  ; BufferLoad(srv,index,wot)
  %178 = extractvalue %dx.types.ResRet.i32 %177, 0
  %179 = add nuw nsw i32 %55, 100
  %180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %179, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 0
  %182 = add nuw nsw i32 %55, 104
  %183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %182, i32 undef)  ; BufferLoad(srv,index,wot)
  %184 = extractvalue %dx.types.ResRet.i32 %183, 0
  %185 = add nuw nsw i32 %55, 108
  %186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.i32 %186, 0
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 2
  %190 = fmul fast float %189, %130
  %191 = fmul fast float %189, %133
  %192 = extractvalue %dx.types.CBufRet.f32 %188, 3
  %193 = fadd fast float %190, %192
  %194 = fadd fast float %191, %192
  %195 = extractvalue %dx.types.CBufRet.f32 %188, 0
  %196 = fmul fast float %195, %130
  %197 = fmul fast float %195, %133
  %198 = extractvalue %dx.types.CBufRet.f32 %188, 1
  %199 = fadd fast float %196, %198
  %200 = fadd fast float %197, %198
  %201 = add i32 %178, 0
  %202 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %201, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %203 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %202, i32 0)  ; GetDimensions(handle,mipLevel)
  %204 = extractvalue %dx.types.Dimensions %203, 0
  %205 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %204)  ; FirstbitLo(value)
  %206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.i32 %206, 1
  %208 = sub nsw i32 %207, %205
  %209 = sitofp i32 %208 to float
  %210 = fsub fast float %147, %209
  %211 = call float @dx.op.binary.f32(i32 35, float %210, float 0.000000e+00)  ; FMax(a,b)
  %212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %202, %dx.types.Handle %11, float %193, float %194, float %166, float undef, i32 0, i32 0, i32 undef, float %211)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = fmul fast float %213, %154
  %215 = fadd fast float %214, %157
  %216 = add i32 %181, 0
  %217 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %216, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %218 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %217, i32 0)  ; GetDimensions(handle,mipLevel)
  %219 = extractvalue %dx.types.Dimensions %218, 0
  %220 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %219)  ; FirstbitLo(value)
  %221 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.i32 %221, 1
  %223 = sub nsw i32 %222, %220
  %224 = sitofp i32 %223 to float
  %225 = fsub fast float %147, %224
  %226 = call float @dx.op.binary.f32(i32 35, float %225, float 0.000000e+00)  ; FMax(a,b)
  %227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %217, %dx.types.Handle %11, float %199, float %200, float %169, float undef, i32 0, i32 0, i32 undef, float %226)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %228 = extractvalue %dx.types.ResRet.f32 %227, 0
  %229 = fmul fast float %228, %160
  %230 = fadd fast float %229, %163
  %231 = add i32 %184, 0
  %232 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %231, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %233 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %232, i32 0)  ; GetDimensions(handle,mipLevel)
  %234 = extractvalue %dx.types.Dimensions %233, 0
  %235 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %234)  ; FirstbitLo(value)
  %236 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.i32 %236, 1
  %238 = sub nsw i32 %237, %235
  %239 = sitofp i32 %238 to float
  %240 = fsub fast float %147, %239
  %241 = call float @dx.op.binary.f32(i32 35, float %240, float 0.000000e+00)  ; FMax(a,b)
  %242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %232, %dx.types.Handle %11, float %199, float %200, float %172, float undef, i32 0, i32 0, i32 undef, float %241)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = extractvalue %dx.types.ResRet.f32 %242, 1
  %245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.f32 %245, 3
  %247 = fmul fast float %246, 2.000000e+00
  %248 = fmul fast float %247, %243
  %249 = fmul fast float %247, %244
  %250 = fsub fast float %248, %246
  %251 = fsub fast float %249, %246
  %252 = fmul fast float %250, %250
  %253 = fmul fast float %251, %251
  %254 = fadd fast float %252, %253
  %255 = call float @dx.op.unary.f32(i32 24, float %254)  ; Sqrt(value)
  %256 = add i32 %187, 0
  %257 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %256, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %258 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %257, i32 0)  ; GetDimensions(handle,mipLevel)
  %259 = extractvalue %dx.types.Dimensions %258, 0
  %260 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %259)  ; FirstbitLo(value)
  %261 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.i32 %261, 1
  %263 = sub nsw i32 %262, %260
  %264 = sitofp i32 %263 to float
  %265 = fsub fast float %147, %264
  %266 = call float @dx.op.binary.f32(i32 35, float %265, float 0.000000e+00)  ; FMax(a,b)
  %267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %257, %dx.types.Handle %11, float %199, float %200, float %175, float undef, i32 0, i32 0, i32 undef, float %266)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %268 = extractvalue %dx.types.ResRet.f32 %267, 0
  %269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.i32 %269, 0
  %271 = call i32 @dx.op.binary.i32(i32 40, i32 %40, i32 %270)  ; UMin(a,b)
  %272 = mul i32 %271, 36
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = add i32 %272, 4
  %276 = fmul fast float %115, 0x3F53C37960000000
  %277 = fmul fast float %116, 0x3F53C37960000000
  %278 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %10, float %276, float %277, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %279 = extractvalue %dx.types.ResRet.f32 %278, 0
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 2
  %282 = fmul fast float %281, %279
  %283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.f32 %283, 0
  %285 = fmul fast float %284, %130
  %286 = fmul fast float %284, %133
  %287 = extractvalue %dx.types.CBufRet.f32 %283, 1
  %288 = fadd fast float %285, %287
  %289 = fadd fast float %286, %287
  %290 = icmp eq i32 %274, 0
  br i1 %290, label %967, label %291

; <label>:291                                     ; preds = %30
  br label %292

; <label>:292                                     ; preds = %945, %291
  %293 = phi i32 [ %946, %945 ], [ %151, %291 ]
  %294 = phi float [ %947, %945 ], [ 0.000000e+00, %291 ]
  %295 = phi float [ %948, %945 ], [ 0.000000e+00, %291 ]
  %296 = phi float [ %949, %945 ], [ 0.000000e+00, %291 ]
  %297 = phi float [ %950, %945 ], [ 0.000000e+00, %291 ]
  %298 = phi float [ %951, %945 ], [ 0.000000e+00, %291 ]
  %299 = phi float [ %952, %945 ], [ 0.000000e+00, %291 ]
  %300 = phi float [ %953, %945 ], [ 0.000000e+00, %291 ]
  %301 = phi float [ %954, %945 ], [ 0.000000e+00, %291 ]
  %302 = phi float [ %955, %945 ], [ 0.000000e+00, %291 ]
  %303 = phi float [ %956, %945 ], [ 0.000000e+00, %291 ]
  %304 = phi float [ %957, %945 ], [ 0.000000e+00, %291 ]
  %305 = phi float [ %958, %945 ], [ 0.000000e+00, %291 ]
  %306 = phi float [ %959, %945 ], [ 0.000000e+00, %291 ]
  %307 = phi float [ %960, %945 ], [ 0.000000e+00, %291 ]
  %308 = phi float [ %961, %945 ], [ 0.000000e+00, %291 ]
  %309 = phi float [ %962, %945 ], [ 0.000000e+00, %291 ]
  %310 = phi float [ %963, %945 ], [ 0.000000e+00, %291 ]
  %311 = phi float [ %333, %945 ], [ 0.000000e+00, %291 ]
  %312 = phi i32 [ %964, %945 ], [ 0, %291 ]
  %313 = shl i32 %312, 2
  %314 = add i32 %313, %62
  %315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.f32 %315, 0
  %317 = add i32 %313, %66
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = add i32 %319, 0
  %321 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %320, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %322 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %321, i32 0)  ; GetDimensions(handle,mipLevel)
  %323 = extractvalue %dx.types.Dimensions %322, 0
  %324 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %323)  ; FirstbitLo(value)
  %325 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %326 = extractvalue %dx.types.CBufRet.i32 %325, 1
  %327 = sub nsw i32 %326, %324
  %328 = sitofp i32 %327 to float
  %329 = fsub fast float %147, %328
  %330 = call float @dx.op.binary.f32(i32 35, float %329, float 0.000000e+00)  ; FMax(a,b)
  %331 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %321, %dx.types.Handle %11, float %288, float %289, float %316, float undef, i32 0, i32 0, i32 undef, float %330)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %332 = extractvalue %dx.types.ResRet.f32 %331, 0
  %333 = fadd fast float %332, %311
  %334 = fcmp fast ogt float %332, 0.000000e+00
  br i1 %334, label %335, label %945, !dx.controlflow.hints !31

; <label>:335                                     ; preds = %292
  %336 = add i32 %313, %275
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = and i32 %338, 32767
  %340 = mul nuw nsw i32 %339, 928
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = or i32 %340, 4
  %344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.i32 %344, 0
  %346 = or i32 %340, 8
  %347 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.f32 %347, 0
  %349 = or i32 %340, 12
  %350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.f32 %350, 1
  %352 = or i32 %340, 20
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = add nuw nsw i32 %340, 72
  %356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.f32 %356, 0
  %358 = extractvalue %dx.types.ResRet.f32 %356, 1
  %359 = add nuw nsw i32 %340, 80
  %360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.f32 %360, 0
  %362 = add nuw nsw i32 %340, 84
  %363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.f32 %363, 0
  %365 = add nuw nsw i32 %340, 88
  %366 = add nuw nsw i32 %340, 228
  %367 = add nuw nsw i32 %340, 596
  %368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.f32 %368, 0
  %370 = extractvalue %dx.types.ResRet.f32 %368, 1
  %371 = add nuw nsw i32 %340, 604
  %372 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.f32 %372, 0
  %374 = extractvalue %dx.types.ResRet.f32 %372, 1
  %375 = add nuw nsw i32 %340, 612
  %376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.f32 %376, 0
  %378 = add nuw nsw i32 %340, 616
  %379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.f32 %379, 0
  %381 = add nuw nsw i32 %340, 696
  %382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.f32 %382, 0
  %384 = extractvalue %dx.types.ResRet.f32 %382, 1
  %385 = add nuw nsw i32 %340, 708
  %386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.f32 %386, 0
  %388 = extractvalue %dx.types.ResRet.f32 %386, 1
  %389 = add nuw nsw i32 %340, 780
  %390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.f32 %390, 0
  %392 = extractvalue %dx.types.ResRet.f32 %390, 1
  %393 = add nuw nsw i32 %340, 792
  %394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.f32 %394, 0
  %396 = extractvalue %dx.types.ResRet.f32 %394, 1
  %397 = add nuw nsw i32 %340, 840
  %398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.f32 %398, 0
  %400 = extractvalue %dx.types.ResRet.f32 %398, 1
  %401 = and i32 %312, 31
  %402 = shl i32 1, %401
  %403 = or i32 %402, %293
  %404 = shl i32 %342, 1
  %405 = and i32 %404, 256
  %406 = xor i32 %405, 256
  %407 = or i32 %403, %406
  %408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 201)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.f32 %408, 0
  %410 = call float @dx.op.binary.f32(i32 35, float %409, float %399)  ; FMax(a,b)
  %411 = call float @dx.op.binary.f32(i32 36, float %410, float %400)  ; FMin(a,b)
  %412 = fmul fast float %411, %332
  %413 = fadd fast float %412, %310
  %414 = and i32 %342, 256
  %415 = icmp ne i32 %414, 0
  %416 = fcmp fast ogt float %364, 0.000000e+00
  %417 = fmul fast float %364, %230
  %418 = call float @dx.op.unary.f32(i32 7, float %417)  ; Saturate(value)
  %419 = select i1 %416, float %418, float 1.000000e+00
  %420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %421 = extractvalue %dx.types.CBufRet.f32 %420, 3
  %422 = fadd fast float %421, %419
  %423 = call float @dx.op.unary.f32(i32 7, float %422)  ; Saturate(value)
  %424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %425 = extractvalue %dx.types.CBufRet.f32 %424, 0
  %426 = fsub fast float 1.000000e+00, %332
  %427 = select i1 %415, float %426, float 1.000000e+00
  %428 = call float @dx.op.unary.f32(i32 7, float %427)  ; Saturate(value)
  %429 = fmul fast float %428, %122
  %430 = fmul fast float %429, %425
  %431 = icmp eq i32 %345, 0
  br i1 %431, label %445, label %432

; <label>:432                                     ; preds = %335
  br label %433

; <label>:433                                     ; preds = %433, %432
  %434 = phi float [ %441, %433 ], [ 0.000000e+00, %432 ]
  %435 = phi i32 [ %442, %433 ], [ 0, %432 ]
  %436 = mul i32 %435, 28
  %437 = add nuw nsw i32 %340, 92
  %438 = add i32 %437, %436
  %439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.f32 %439, 0
  %441 = fadd fast float %440, %434
  %442 = add nuw i32 %435, 1
  %443 = icmp eq i32 %442, %345
  br i1 %443, label %444, label %433

; <label>:444                                     ; preds = %433
  br label %445

; <label>:445                                     ; preds = %444, %335
  %446 = phi float [ 0.000000e+00, %335 ], [ %441, %444 ]
  %447 = fmul fast float %428, %127
  %448 = fmul fast float %447, %425
  %449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %450 = extractvalue %dx.types.CBufRet.f32 %449, 3
  %451 = fcmp fast ogt float %446, %450
  %452 = select i1 %451, float %448, float %430
  %453 = fcmp fast ogt float %377, 0.000000e+00
  %454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %455 = extractvalue %dx.types.CBufRet.f32 %454, 2
  %456 = fadd fast float %455, 1.000000e+00
  %457 = call float @dx.op.unary.f32(i32 7, float %456)  ; Saturate(value)
  %458 = fmul fast float %457, %377
  %459 = call float @dx.op.binary.f32(i32 35, float %458, float 0x3F50624DE0000000)  ; FMax(a,b)
  %460 = fdiv fast float 1.000000e+00, %459
  %461 = select i1 %453, float %460, float 0.000000e+00
  %462 = fcmp fast ogt float %380, 0.000000e+00
  %463 = extractvalue %dx.types.CBufRet.f32 %454, 3
  %464 = fadd fast float %463, 1.000000e+00
  %465 = call float @dx.op.unary.f32(i32 7, float %464)  ; Saturate(value)
  %466 = fmul fast float %465, %380
  %467 = call float @dx.op.binary.f32(i32 35, float %466, float 0x3F50624DE0000000)  ; FMax(a,b)
  %468 = fdiv fast float 1.000000e+00, %467
  %469 = select i1 %462, float %468, float 0.000000e+00
  %470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %471 = extractvalue %dx.types.CBufRet.f32 %470, 3
  %472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %473 = extractvalue %dx.types.CBufRet.f32 %472, 1
  br i1 %431, label %596, label %474, !dx.controlflow.hints !32

; <label>:474                                     ; preds = %445
  br label %475

; <label>:475                                     ; preds = %475, %474
  %476 = phi float [ %542, %475 ], [ 0.000000e+00, %474 ]
  %477 = phi float [ %543, %475 ], [ 0.000000e+00, %474 ]
  %478 = phi float [ %544, %475 ], [ 0.000000e+00, %474 ]
  %479 = phi float [ %545, %475 ], [ 0.000000e+00, %474 ]
  %480 = phi float [ %546, %475 ], [ 0.000000e+00, %474 ]
  %481 = phi float [ %547, %475 ], [ 0.000000e+00, %474 ]
  %482 = phi float [ %548, %475 ], [ 0.000000e+00, %474 ]
  %483 = phi float [ %550, %475 ], [ 0.000000e+00, %474 ]
  %484 = phi float [ %551, %475 ], [ 0.000000e+00, %474 ]
  %485 = phi float [ %556, %475 ], [ 0.000000e+00, %474 ]
  %486 = phi float [ %578, %475 ], [ 0.000000e+00, %474 ]
  %487 = phi i32 [ %579, %475 ], [ 0, %474 ]
  %488 = mul i32 %487, 28
  %489 = add i32 %488, %365
  %490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.f32 %490, 0
  %492 = add i32 %489, 4
  %493 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.f32 %493, 0
  %495 = fmul fast float %494, %452
  %496 = add i32 %489, 8
  %497 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.f32 %497, 0
  %499 = add i32 %489, 12
  %500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.f32 %500, 0
  %502 = fmul fast float %501, %471
  %503 = add i32 %489, 16
  %504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.f32 %504, 0
  %506 = extractvalue %dx.types.ResRet.f32 %504, 1
  %507 = add i32 %489, 24
  %508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.f32 %508, 0
  %510 = call float @dx.op.dot2.f32(i32 54, float %505, float %506, float %115, float %116)  ; Dot2(ax,ay,bx,by)
  %511 = fmul fast float %510, %491
  %512 = fmul fast float %498, %473
  %513 = fsub fast float %511, %512
  %514 = fsub fast float %513, %509
  %515 = call float @dx.op.unary.f32(i32 13, float %514)  ; Sin(value)
  %516 = call float @dx.op.unary.f32(i32 12, float %514)  ; Cos(value)
  %517 = fmul fast float %502, %495
  %518 = fmul fast float %517, %505
  %519 = fmul fast float %518, %516
  %520 = fmul fast float %517, %506
  %521 = fmul fast float %520, %516
  %522 = fmul fast float %495, %423
  %523 = fmul fast float %522, %515
  %524 = fmul fast float %495, %491
  %525 = fmul fast float %524, %502
  %526 = fmul fast float %505, %505
  %527 = fmul fast float %526, %525
  %528 = fmul fast float %527, %515
  %529 = fmul fast float %505, %506
  %530 = fmul fast float %529, %525
  %531 = fmul fast float %530, %515
  %532 = fsub fast float 1.000000e+00, %528
  %533 = fmul fast float %491, %423
  %534 = fmul fast float %533, %495
  %535 = fmul fast float %534, %505
  %536 = fmul fast float %535, %516
  %537 = fmul fast float %506, %506
  %538 = fmul fast float %537, %525
  %539 = fmul fast float %538, %515
  %540 = fmul fast float %534, %506
  %541 = fmul fast float %540, %516
  %542 = fadd fast float %519, %476
  %543 = fadd fast float %521, %477
  %544 = fadd fast float %523, %478
  %545 = fadd fast float %532, %479
  %546 = fsub fast float %480, %531
  %547 = fadd fast float %536, %481
  %548 = fadd fast float %539, %482
  %549 = fadd fast float %483, 1.000000e+00
  %550 = fadd fast float %549, %531
  %551 = fadd fast float %541, %484
  %552 = fsub fast float 1.000000e+00, %539
  %553 = fmul fast float %532, %552
  %554 = fmul fast float %531, %531
  %555 = fsub fast float %553, %554
  %556 = fadd fast float %555, %485
  %557 = fadd fast float %514, 0xBFF921FB60000000
  %558 = fmul fast float %557, 0x3FC45F3060000000
  %559 = call float @dx.op.unary.f32(i32 27, float %558)  ; Round_ni(value)
  %560 = fsub fast float %558, %559
  %561 = call float @dx.op.unary.f32(i32 7, float %560)  ; Saturate(value)
  %562 = fmul fast float %561, %461
  %563 = call float @dx.op.unary.f32(i32 7, float %562)  ; Saturate(value)
  %564 = fmul fast float %563, %563
  %565 = fmul fast float %563, 2.000000e+00
  %566 = fsub fast float 3.000000e+00, %565
  %567 = fmul fast float %564, %566
  %568 = fsub fast float 1.000000e+00, %561
  %569 = fmul fast float %568, %469
  %570 = call float @dx.op.unary.f32(i32 7, float %569)  ; Saturate(value)
  %571 = fmul fast float %570, %570
  %572 = fmul fast float %570, 2.000000e+00
  %573 = fsub fast float 3.000000e+00, %572
  %574 = fmul fast float %571, %573
  %575 = fsub fast float 2.000000e+00, %567
  %576 = fsub fast float %575, %574
  %577 = call float @dx.op.unary.f32(i32 7, float %576)  ; Saturate(value)
  %578 = fadd fast float %577, %486
  %579 = add nuw i32 %487, 1
  %580 = icmp eq i32 %579, %345
  br i1 %580, label %581, label %475

; <label>:581                                     ; preds = %475
  %582 = call float @dx.op.dot3.f32(i32 55, float %545, float %546, float %547, float %545, float %546, float %547)  ; Dot3(ax,ay,az,bx,by,bz)
  %583 = call float @dx.op.unary.f32(i32 25, float %582)  ; Rsqrt(value)
  %584 = fmul fast float %583, %545
  %585 = fmul fast float %583, %546
  %586 = fmul fast float %583, %547
  %587 = call float @dx.op.dot3.f32(i32 55, float %548, float %550, float %551, float %548, float %550, float %551)  ; Dot3(ax,ay,az,bx,by,bz)
  %588 = call float @dx.op.unary.f32(i32 25, float %587)  ; Rsqrt(value)
  %589 = fmul fast float %588, %548
  %590 = fmul fast float %588, %550
  %591 = fmul fast float %588, %551
  %592 = uitofp i32 %345 to float
  %593 = fdiv fast float 1.000000e+00, %592
  %594 = fmul fast float %593, %556
  %595 = fmul fast float %593, %578
  br label %596

; <label>:596                                     ; preds = %581, %445
  %597 = phi float [ %542, %581 ], [ 0.000000e+00, %445 ]
  %598 = phi float [ %543, %581 ], [ 0.000000e+00, %445 ]
  %599 = phi float [ %544, %581 ], [ 0.000000e+00, %445 ]
  %600 = phi float [ %584, %581 ], [ 0.000000e+00, %445 ]
  %601 = phi float [ %585, %581 ], [ 0.000000e+00, %445 ]
  %602 = phi float [ %586, %581 ], [ 0.000000e+00, %445 ]
  %603 = phi float [ %589, %581 ], [ 0.000000e+00, %445 ]
  %604 = phi float [ %590, %581 ], [ 0.000000e+00, %445 ]
  %605 = phi float [ %591, %581 ], [ 0.000000e+00, %445 ]
  %606 = phi float [ %594, %581 ], [ 1.000000e+00, %445 ]
  %607 = phi float [ %595, %581 ], [ 1.000000e+00, %445 ]
  %608 = fmul fast float %597, %332
  %609 = fmul fast float %598, %332
  %610 = fmul fast float %599, %332
  %611 = fadd fast float %608, %294
  %612 = fadd fast float %609, %295
  %613 = fadd fast float %610, %296
  %614 = fmul fast float %600, %332
  %615 = fmul fast float %601, %332
  %616 = fmul fast float %602, %332
  %617 = fadd fast float %614, %297
  %618 = fadd fast float %615, %298
  %619 = fadd fast float %616, %299
  %620 = fmul fast float %603, %332
  %621 = fmul fast float %604, %332
  %622 = fmul fast float %605, %332
  %623 = fadd fast float %620, %300
  %624 = fadd fast float %621, %301
  %625 = fadd fast float %622, %302
  %626 = fsub fast float 1.000000e+00, %606
  %627 = fmul fast float %626, %373
  %628 = fadd fast float %627, %374
  %629 = fmul fast float %452, %332
  %630 = fmul fast float %629, %607
  %631 = fmul fast float %630, %628
  %632 = fadd fast float %631, %303
  %633 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %634 = extractvalue %dx.types.CBufRet.i32 %633, 0
  %635 = and i32 %634, 131072
  %636 = icmp eq i32 %635, 0
  %637 = and i32 %634, 524288
  %638 = icmp ne i32 %637, 0
  %639 = and i32 %634, 2097152
  %640 = icmp ne i32 %639, 0
  br i1 %636, label %904, label %641, !dx.controlflow.hints !33

; <label>:641                                     ; preds = %596
  %642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %643 = extractvalue %dx.types.CBufRet.f32 %642, 0
  %644 = extractvalue %dx.types.CBufRet.f32 %642, 1
  %645 = extractvalue %dx.types.CBufRet.f32 %642, 2
  %646 = fsub fast float %115, %643
  %647 = fsub fast float %116, %644
  %648 = fsub fast float %215, %645
  %649 = fmul fast float %646, %646
  %650 = fmul fast float %647, %647
  %651 = fadd fast float %649, %650
  %652 = fmul fast float %648, %648
  %653 = fadd fast float %651, %652
  %654 = call float @dx.op.unary.f32(i32 24, float %653)  ; Sqrt(value)
  br i1 %640, label %655, label %701, !dx.controlflow.hints !34

; <label>:655                                     ; preds = %641
  %656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %657 = extractvalue %dx.types.CBufRet.f32 %656, 0
  %658 = fcmp fast ogt float %654, %657
  %659 = zext i1 %658 to i32
  %660 = extractvalue %dx.types.CBufRet.f32 %656, 1
  %661 = fcmp fast ogt float %654, %660
  %662 = zext i1 %661 to i32
  %663 = add nuw nsw i32 %662, %659
  %664 = extractvalue %dx.types.CBufRet.f32 %656, 2
  %665 = fcmp fast ogt float %654, %664
  %666 = zext i1 %665 to i32
  %667 = add nuw nsw i32 %663, %666
  %668 = icmp ult i32 %667, 3
  %669 = zext i1 %668 to i32
  %670 = shl nuw nsw i32 %667, 2
  %671 = add nuw nsw i32 %670, 48
  %672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %671)  ; CBufferLoadLegacy(handle,regIndex)
  %673 = extractvalue %dx.types.CBufRet.f32 %672, 1
  %674 = fcmp fast ogt float %654, %673
  %675 = zext i1 %674 to i32
  %676 = or i32 %670, 1
  %677 = add nuw nsw i32 %676, 48
  %678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %677)  ; CBufferLoadLegacy(handle,regIndex)
  %679 = extractvalue %dx.types.CBufRet.f32 %678, 1
  %680 = fcmp fast ogt float %654, %679
  %681 = zext i1 %680 to i32
  %682 = add nuw nsw i32 %681, %675
  %683 = or i32 %670, 2
  %684 = add nuw nsw i32 %683, 48
  %685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %684)  ; CBufferLoadLegacy(handle,regIndex)
  %686 = extractvalue %dx.types.CBufRet.f32 %685, 1
  %687 = fcmp fast ogt float %654, %686
  %688 = zext i1 %687 to i32
  %689 = add nuw nsw i32 %682, %688
  %690 = add i32 %354, -1
  %691 = call i32 @dx.op.binary.i32(i32 40, i32 %689, i32 %690)  ; UMin(a,b)
  %692 = add i32 %670, %691
  %693 = call i32 @dx.op.binary.i32(i32 40, i32 %692, i32 12)  ; UMin(a,b)
  %694 = add i32 %693, 48
  %695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %694)  ; CBufferLoadLegacy(handle,regIndex)
  %696 = extractvalue %dx.types.CBufRet.f32 %695, 0
  %697 = fcmp fast oge float %654, %696
  %698 = zext i1 %697 to i32
  %699 = call i32 @dx.op.binary.i32(i32 40, i32 %354, i32 %669)  ; UMin(a,b)
  %700 = call i32 @dx.op.binary.i32(i32 40, i32 %698, i32 %699)  ; UMin(a,b)
  br label %701

; <label>:701                                     ; preds = %655, %641
  %702 = phi i32 [ %693, %655 ], [ 0, %641 ]
  %703 = phi i32 [ %700, %655 ], [ 0, %641 ]
  %704 = add i32 %703, %354
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %897, label %706

; <label>:706                                     ; preds = %701
  br label %707

; <label>:707                                     ; preds = %875, %706
  %708 = phi float [ %891, %875 ], [ 0.000000e+00, %706 ]
  %709 = phi float [ %892, %875 ], [ 0.000000e+00, %706 ]
  %710 = phi float [ %893, %875 ], [ 0.000000e+00, %706 ]
  %711 = phi i32 [ %723, %875 ], [ %702, %706 ]
  %712 = phi i32 [ %894, %875 ], [ 0, %706 ]
  %713 = add i32 %712, %711
  br i1 %640, label %714, label %722, !dx.controlflow.hints !35

; <label>:714                                     ; preds = %707
  %715 = and i32 %713, -4
  %716 = add i32 %715, %354
  %717 = icmp uge i32 %713, %716
  %718 = sub i32 4, %354
  %719 = select i1 %717, i32 %718, i32 0
  %720 = add i32 %719, %711
  %721 = add i32 %719, %713
  br label %722

; <label>:722                                     ; preds = %714, %707
  %723 = phi i32 [ %720, %714 ], [ %711, %707 ]
  %724 = phi i32 [ %721, %714 ], [ %713, %707 ]
  %725 = and i32 %724, 3
  %726 = select i1 %640, i32 %725, i32 %712
  %727 = lshr i32 %724, 2
  %728 = select i1 %640, i32 %727, i32 0
  %729 = add i32 %724, 32
  %730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %729)  ; CBufferLoadLegacy(handle,regIndex)
  %731 = extractvalue %dx.types.CBufRet.f32 %730, 0
  %732 = extractvalue %dx.types.CBufRet.f32 %730, 1
  %733 = extractvalue %dx.types.CBufRet.f32 %730, 2
  %734 = extractvalue %dx.types.CBufRet.f32 %730, 3
  %735 = fmul fast float %731, %654
  %736 = fadd fast float %735, %732
  %737 = call float @dx.op.unary.f32(i32 7, float %736)  ; Saturate(value)
  %738 = fmul fast float %733, %654
  %739 = fadd fast float %738, %734
  %740 = call float @dx.op.unary.f32(i32 7, float %739)  ; Saturate(value)
  %741 = call float @dx.op.binary.f32(i32 36, float %737, float %740)  ; FMin(a,b)
  %742 = select i1 %640, float %741, float 1.000000e+00
  %743 = mul i32 %726, 72
  %744 = add i32 %366, %743
  %745 = add i32 %744, 16
  %746 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %745, i32 undef)  ; BufferLoad(srv,index,wot)
  %747 = extractvalue %dx.types.ResRet.f32 %746, 0
  %748 = extractvalue %dx.types.ResRet.f32 %746, 1
  %749 = extractvalue %dx.types.ResRet.f32 %746, 2
  %750 = extractvalue %dx.types.ResRet.f32 %746, 3
  %751 = add i32 %744, 36
  %752 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %751, i32 undef)  ; BufferLoad(srv,index,wot)
  %753 = extractvalue %dx.types.ResRet.f32 %752, 0
  %754 = add i32 %744, 56
  %755 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %754, i32 undef)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.f32 %755, 0
  %757 = fmul fast float %255, 3.906250e-03
  %758 = fmul fast float %757, %361
  %759 = fmul fast float %758, %753
  %760 = fmul fast float %759, %756
  %761 = extractvalue %dx.types.ResRet.f32 %755, 1
  %762 = fadd fast float %760, %761
  %763 = call float @dx.op.binary.f32(i32 35, float %762, float 0.000000e+00)  ; FMax(a,b)
  %764 = add i32 %744, 32
  %765 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %766 = extractvalue %dx.types.ResRet.f32 %765, 0
  %767 = fmul fast float %763, %742
  %768 = fmul fast float %767, %766
  br i1 %638, label %769, label %802, !dx.controlflow.hints !36

; <label>:769                                     ; preds = %722
  %770 = fmul fast float %753, %250
  %771 = fmul fast float %753, %251
  %772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %773 = extractvalue %dx.types.CBufRet.f32 %772, 1
  %774 = add i32 %744, 40
  %775 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %774, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.f32 %775, 0
  %777 = extractvalue %dx.types.ResRet.f32 %775, 1
  %778 = extractvalue %dx.types.ResRet.f32 %775, 2
  %779 = extractvalue %dx.types.ResRet.f32 %775, 3
  %780 = fadd fast float %773, %282
  %781 = fadd fast float %780, %778
  %782 = fmul fast float %780, %777
  %783 = call float @dx.op.unary.f32(i32 29, float %782)  ; Round_z(value)
  %784 = fmul fast float %776, %783
  %785 = fsub fast float %780, %784
  %786 = fmul fast float %781, %777
  %787 = call float @dx.op.unary.f32(i32 29, float %786)  ; Round_z(value)
  %788 = fmul fast float %787, %776
  %789 = fsub fast float %781, %788
  %790 = fmul fast float %785, %770
  %791 = fmul fast float %785, %771
  %792 = fmul fast float %789, %770
  %793 = fmul fast float %789, %771
  %794 = fsub fast float %115, %790
  %795 = fsub fast float %116, %791
  %796 = fsub fast float %115, %792
  %797 = fsub fast float %116, %793
  %798 = fsub fast float %778, %785
  %799 = call float @dx.op.unary.f32(i32 6, float %798)  ; FAbs(value)
  %800 = fmul fast float %799, %779
  %801 = call float @dx.op.unary.f32(i32 7, float %800)  ; Saturate(value)
  br label %802

; <label>:802                                     ; preds = %769, %722
  %803 = phi float [ %794, %769 ], [ %115, %722 ]
  %804 = phi float [ %795, %769 ], [ %116, %722 ]
  %805 = phi float [ %796, %769 ], [ %115, %722 ]
  %806 = phi float [ %797, %769 ], [ %116, %722 ]
  %807 = phi float [ %801, %769 ], [ 0.000000e+00, %722 ]
  %808 = fmul fast float %348, 4.000000e+00
  %809 = uitofp i32 %728 to float
  %810 = fadd fast float %809, %808
  %811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %812 = extractvalue %dx.types.CBufRet.f32 %811, 0
  %813 = extractvalue %dx.types.CBufRet.f32 %811, 1
  %814 = extractvalue %dx.types.CBufRet.f32 %811, 2
  %815 = extractvalue %dx.types.CBufRet.f32 %811, 3
  %816 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 0
  store float %812, float* %816, align 4
  %817 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 1
  store float %813, float* %817, align 4
  %818 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 2
  store float %814, float* %818, align 4
  %819 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 3
  store float %815, float* %819, align 4
  %820 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 %728
  %821 = load float, float* %820, align 4, !tbaa !37, !noalias !41
  %822 = fmul fast float %821, %351
  %823 = select i1 %640, float %822, float %351
  %824 = fmul fast float %803, %747
  %825 = call float @dx.op.tertiary.f32(i32 46, float %748, float %804, float %824)  ; FMad(a,b,c)
  %826 = fmul fast float %803, %749
  %827 = call float @dx.op.tertiary.f32(i32 46, float %750, float %804, float %826)  ; FMad(a,b,c)
  %828 = add i32 %744, 8
  %829 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %828, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.f32 %829, 0
  %831 = extractvalue %dx.types.ResRet.f32 %829, 1
  %832 = fadd fast float %830, %825
  %833 = fadd fast float %831, %827
  %834 = fmul fast float %832, %823
  %835 = fmul fast float %833, %823
  %836 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.f32 %836, 0
  %838 = extractvalue %dx.types.ResRet.f32 %836, 1
  %839 = fmul fast float %834, %837
  %840 = fmul fast float %835, %838
  %841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %842 = extractvalue %dx.types.CBufRet.f32 %841, 2
  %843 = fadd fast float %839, %842
  %844 = fadd fast float %840, %842
  %845 = fmul fast float %805, %747
  %846 = call float @dx.op.tertiary.f32(i32 46, float %748, float %806, float %845)  ; FMad(a,b,c)
  %847 = fmul fast float %805, %749
  %848 = call float @dx.op.tertiary.f32(i32 46, float %750, float %806, float %847)  ; FMad(a,b,c)
  %849 = fadd fast float %830, %846
  %850 = fadd fast float %831, %848
  %851 = fmul fast float %849, %823
  %852 = fmul fast float %850, %823
  %853 = fmul fast float %851, %837
  %854 = fmul fast float %852, %838
  %855 = fadd fast float %853, %842
  %856 = fadd fast float %854, %842
  %857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %12, float %843, float %844, float %810, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %858 = extractvalue %dx.types.ResRet.f32 %857, 0
  %859 = extractvalue %dx.types.ResRet.f32 %857, 1
  %860 = extractvalue %dx.types.ResRet.f32 %857, 2
  %861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %12, float %855, float %856, float %810, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  br i1 %638, label %862, label %875, !dx.controlflow.hints !46

; <label>:862                                     ; preds = %802
  %863 = extractvalue %dx.types.ResRet.f32 %861, 2
  %864 = extractvalue %dx.types.ResRet.f32 %861, 1
  %865 = extractvalue %dx.types.ResRet.f32 %861, 0
  %866 = fsub fast float %865, %858
  %867 = fsub fast float %864, %859
  %868 = fsub fast float %863, %860
  %869 = fmul fast float %866, %807
  %870 = fmul fast float %867, %807
  %871 = fmul fast float %868, %807
  %872 = fadd fast float %869, %858
  %873 = fadd fast float %870, %859
  %874 = fadd fast float %871, %860
  br label %875

; <label>:875                                     ; preds = %862, %802
  %876 = phi float [ %872, %862 ], [ %858, %802 ]
  %877 = phi float [ %873, %862 ], [ %859, %802 ]
  %878 = phi float [ %874, %862 ], [ %860, %802 ]
  %879 = fmul fast float %876, %747
  %880 = call float @dx.op.tertiary.f32(i32 46, float %877, float %749, float %879)  ; FMad(a,b,c)
  %881 = fmul fast float %876, %748
  %882 = call float @dx.op.tertiary.f32(i32 46, float %877, float %750, float %881)  ; FMad(a,b,c)
  %883 = fdiv fast float 1.000000e+00, %837
  %884 = fdiv fast float 1.000000e+00, %838
  %885 = call float @dx.op.unary.f32(i32 7, float %768)  ; Saturate(value)
  %886 = fmul fast float %883, %880
  %887 = fmul fast float %886, %885
  %888 = fmul fast float %884, %882
  %889 = fmul fast float %888, %885
  %890 = fmul fast float %878, %768
  %891 = fadd fast float %887, %708
  %892 = fadd fast float %889, %709
  %893 = fadd fast float %890, %710
  %894 = add nuw i32 %712, 1
  %895 = icmp eq i32 %894, %704
  br i1 %895, label %896, label %707

; <label>:896                                     ; preds = %875
  br label %897

; <label>:897                                     ; preds = %896, %701
  %898 = phi float [ 0.000000e+00, %701 ], [ %891, %896 ]
  %899 = phi float [ 0.000000e+00, %701 ], [ %892, %896 ]
  %900 = phi float [ 0.000000e+00, %701 ], [ %893, %896 ]
  %901 = fmul fast float %898, %430
  %902 = fmul fast float %899, %430
  %903 = fmul fast float %900, %430
  br label %904

; <label>:904                                     ; preds = %897, %596
  %905 = phi float [ %901, %897 ], [ 0.000000e+00, %596 ]
  %906 = phi float [ %902, %897 ], [ 0.000000e+00, %596 ]
  %907 = phi float [ %903, %897 ], [ 0.000000e+00, %596 ]
  %908 = fmul fast float %905, %332
  %909 = fmul fast float %906, %332
  %910 = fmul fast float %423, %332
  %911 = fmul fast float %910, %907
  %912 = fadd fast float %908, %304
  %913 = fadd fast float %909, %305
  %914 = fadd fast float %911, %306
  %915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %916 = fmul fast float %369, %268
  %917 = fadd fast float %916, %370
  %918 = call float @dx.op.unary.f32(i32 7, float %917)  ; Saturate(value)
  %919 = call float @dx.op.binary.f32(i32 35, float %309, float %918)  ; FMax(a,b)
  %920 = fmul fast float %387, %255
  %921 = fadd fast float %920, %388
  %922 = call float @dx.op.binary.f32(i32 35, float %921, float 0.000000e+00)  ; FMax(a,b)
  %923 = fmul fast float %922, %383
  %924 = fadd fast float %923, %384
  %925 = call float @dx.op.unary.f32(i32 7, float %924)  ; Saturate(value)
  %926 = and i32 %342, 2
  %927 = icmp ne i32 %926, 0
  %928 = select i1 %927, float %925, float 0.000000e+00
  %929 = call float @dx.op.binary.f32(i32 35, float %928, float %307)  ; FMax(a,b)
  %930 = fmul fast float %395, %255
  %931 = fadd fast float %930, %396
  %932 = call float @dx.op.binary.f32(i32 35, float %931, float 0.000000e+00)  ; FMax(a,b)
  %933 = fmul fast float %932, %391
  %934 = fadd fast float %933, %392
  %935 = call float @dx.op.unary.f32(i32 7, float %934)  ; Saturate(value)
  %936 = and i32 %342, 4
  %937 = icmp ne i32 %936, 0
  %938 = select i1 %937, float %935, float 0.000000e+00
  %939 = call float @dx.op.binary.f32(i32 35, float %938, float %308)  ; FMax(a,b)
  %940 = fadd fast float %357, %358
  %941 = extractvalue %dx.types.CBufRet.f32 %915, 2
  %942 = fcmp fast oge float %940, %941
  %943 = select i1 %942, i32 4096, i32 0
  %944 = or i32 %407, %943
  br label %945

; <label>:945                                     ; preds = %904, %292
  %946 = phi i32 [ %944, %904 ], [ %293, %292 ]
  %947 = phi float [ %611, %904 ], [ %294, %292 ]
  %948 = phi float [ %612, %904 ], [ %295, %292 ]
  %949 = phi float [ %613, %904 ], [ %296, %292 ]
  %950 = phi float [ %617, %904 ], [ %297, %292 ]
  %951 = phi float [ %618, %904 ], [ %298, %292 ]
  %952 = phi float [ %619, %904 ], [ %299, %292 ]
  %953 = phi float [ %623, %904 ], [ %300, %292 ]
  %954 = phi float [ %624, %904 ], [ %301, %292 ]
  %955 = phi float [ %625, %904 ], [ %302, %292 ]
  %956 = phi float [ %632, %904 ], [ %303, %292 ]
  %957 = phi float [ %912, %904 ], [ %304, %292 ]
  %958 = phi float [ %913, %904 ], [ %305, %292 ]
  %959 = phi float [ %914, %904 ], [ %306, %292 ]
  %960 = phi float [ %929, %904 ], [ %307, %292 ]
  %961 = phi float [ %939, %904 ], [ %308, %292 ]
  %962 = phi float [ %919, %904 ], [ %309, %292 ]
  %963 = phi float [ %413, %904 ], [ %310, %292 ]
  %964 = add nuw i32 %312, 1
  %965 = icmp eq i32 %964, %274
  br i1 %965, label %966, label %292

; <label>:966                                     ; preds = %945
  br label %967

; <label>:967                                     ; preds = %966, %30
  %968 = phi i32 [ %151, %30 ], [ %946, %966 ]
  %969 = phi float [ 0.000000e+00, %30 ], [ %947, %966 ]
  %970 = phi float [ 0.000000e+00, %30 ], [ %948, %966 ]
  %971 = phi float [ 0.000000e+00, %30 ], [ %949, %966 ]
  %972 = phi float [ 0.000000e+00, %30 ], [ %950, %966 ]
  %973 = phi float [ 0.000000e+00, %30 ], [ %951, %966 ]
  %974 = phi float [ 0.000000e+00, %30 ], [ %952, %966 ]
  %975 = phi float [ 0.000000e+00, %30 ], [ %953, %966 ]
  %976 = phi float [ 0.000000e+00, %30 ], [ %954, %966 ]
  %977 = phi float [ 0.000000e+00, %30 ], [ %955, %966 ]
  %978 = phi float [ 0.000000e+00, %30 ], [ %956, %966 ]
  %979 = phi float [ 0.000000e+00, %30 ], [ %957, %966 ]
  %980 = phi float [ 0.000000e+00, %30 ], [ %958, %966 ]
  %981 = phi float [ 0.000000e+00, %30 ], [ %959, %966 ]
  %982 = phi float [ 0.000000e+00, %30 ], [ %960, %966 ]
  %983 = phi float [ 0.000000e+00, %30 ], [ %961, %966 ]
  %984 = phi float [ 0.000000e+00, %30 ], [ %962, %966 ]
  %985 = phi float [ 0.000000e+00, %30 ], [ %963, %966 ]
  %986 = phi float [ 0.000000e+00, %30 ], [ %333, %966 ]
  %987 = fcmp fast ole float %978, 0x3F69A5C380000000
  %988 = fmul fast float %978, 0x4029D70A40000000
  %989 = call float @dx.op.unary.f32(i32 23, float %978)  ; Log(value)
  %990 = fmul fast float %989, 0x3FDAAAAAA0000000
  %991 = call float @dx.op.unary.f32(i32 21, float %990)  ; Exp(value)
  %992 = fmul fast float %991, 0x3FF0E147A0000000
  %993 = fadd fast float %992, 0xBFAC28F5C0000000
  %994 = select i1 %987, float %988, float %993
  %995 = fmul fast float %994, 2.550000e+02
  %996 = call float @dx.op.binary.f32(i32 35, float %995, float 0.000000e+00)  ; FMax(a,b)
  %997 = call float @dx.op.binary.f32(i32 36, float %996, float 2.550000e+02)  ; FMin(a,b)
  %998 = fptoui float %997 to i32
  %999 = uitofp i32 %998 to float
  %1000 = fmul fast float %999, 0x3F70101020000000
  %1001 = fcmp fast ole float %1000, 0x3FA4B5DCC0000000
  %1002 = fmul fast float %999, 0x3F33E45680000000
  %1003 = fmul fast float %999, 0x3F6E736160000000
  %1004 = fadd fast float %1003, 0x3FAAB12340000000
  %1005 = call float @dx.op.unary.f32(i32 23, float %1004)  ; Log(value)
  %1006 = fmul fast float %1005, 0x4003333340000000
  %1007 = call float @dx.op.unary.f32(i32 21, float %1006)  ; Exp(value)
  %1008 = select i1 %1001, float %1002, float %1007
  %1009 = call float @dx.op.unary.f32(i32 7, float %1008)  ; Saturate(value)
  %1010 = call float @dx.op.binary.f32(i32 35, float %1009, float %984)  ; FMax(a,b)
  %1011 = fadd fast float %1010, 1.000000e+00
  %1012 = fmul fast float %1011, %982
  %1013 = fmul fast float %1011, %983
  %1014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1015 = extractvalue %dx.types.CBufRet.f32 %1014, 1
  %1016 = fcmp fast oge float %1012, %1015
  %1017 = select i1 %1016, i32 1024, i32 0
  %1018 = or i32 %1017, %968
  %1019 = fcmp fast oge float %1013, %1015
  %1020 = select i1 %1019, i32 2048, i32 0
  %1021 = or i32 %1018, %1020
  %1022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.f32 %1022, 3
  %1024 = fadd fast float %1023, %130
  %1025 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.f32 %1025, 0
  %1027 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %155, i32 undef)  ; BufferLoad(srv,index,wot)
  %1028 = extractvalue %dx.types.ResRet.f32 %1027, 0
  %1029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.f32 %1029, 0
  %1031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1032 = extractvalue %dx.types.ResRet.i32 %1031, 0
  %1033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1034 = extractvalue %dx.types.CBufRet.f32 %1033, 2
  %1035 = fmul fast float %1034, %1024
  %1036 = fmul fast float %1034, %133
  %1037 = extractvalue %dx.types.CBufRet.f32 %1033, 3
  %1038 = fadd fast float %1035, %1037
  %1039 = fadd fast float %1036, %1037
  %1040 = add i32 %1032, 0
  %1041 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1040, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1042 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1041, i32 0)  ; GetDimensions(handle,mipLevel)
  %1043 = extractvalue %dx.types.Dimensions %1042, 0
  %1044 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1043)  ; FirstbitLo(value)
  %1045 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1046 = extractvalue %dx.types.CBufRet.i32 %1045, 1
  %1047 = sub nsw i32 %1046, %1044
  %1048 = sitofp i32 %1047 to float
  %1049 = fsub fast float %147, %1048
  %1050 = call float @dx.op.binary.f32(i32 35, float %1049, float 0.000000e+00)  ; FMax(a,b)
  %1051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1041, %dx.types.Handle %11, float %1038, float %1039, float %1030, float undef, i32 0, i32 0, i32 undef, float %1050)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1052 = extractvalue %dx.types.ResRet.f32 %1051, 0
  %1053 = fmul fast float %1052, %1026
  %1054 = fsub fast float %133, %1023
  %1055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.f32 %1055, 0
  %1057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %155, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.f32 %1057, 0
  %1059 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.f32 %1059, 0
  %1061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.i32 %1061, 0
  %1063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1064 = extractvalue %dx.types.CBufRet.f32 %1063, 2
  %1065 = fmul fast float %1064, %130
  %1066 = fmul fast float %1064, %1054
  %1067 = extractvalue %dx.types.CBufRet.f32 %1063, 3
  %1068 = fadd fast float %1065, %1067
  %1069 = fadd fast float %1066, %1067
  %1070 = add i32 %1062, 0
  %1071 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1070, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1072 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1071, i32 0)  ; GetDimensions(handle,mipLevel)
  %1073 = extractvalue %dx.types.Dimensions %1072, 0
  %1074 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1073)  ; FirstbitLo(value)
  %1075 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1076 = extractvalue %dx.types.CBufRet.i32 %1075, 1
  %1077 = sub nsw i32 %1076, %1074
  %1078 = sitofp i32 %1077 to float
  %1079 = fsub fast float %147, %1078
  %1080 = call float @dx.op.binary.f32(i32 35, float %1079, float 0.000000e+00)  ; FMax(a,b)
  %1081 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1071, %dx.types.Handle %11, float %1068, float %1069, float %1060, float undef, i32 0, i32 0, i32 undef, float %1080)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1082 = extractvalue %dx.types.ResRet.f32 %1081, 0
  %1083 = fmul fast float %1082, %1056
  %1084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1085 = extractvalue %dx.types.CBufRet.f32 %1084, 2
  %1086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1087 = extractvalue %dx.types.CBufRet.f32 %1086, 3
  %1088 = fmul fast float %1087, %1085
  %1089 = fsub fast float %1028, %215
  %1090 = fadd fast float %1089, %1053
  %1091 = fsub fast float %1058, %215
  %1092 = fadd fast float %1091, %1083
  %1093 = fmul fast float %1090, %1088
  %1094 = fsub fast float -0.000000e+00, %1093
  %1095 = fmul fast float %1092, %1088
  %1096 = fsub fast float -0.000000e+00, %1095
  %1097 = fmul fast float %1088, %1088
  %1098 = call float @dx.op.dot3.f32(i32 55, float %1094, float %1096, float %1097, float %1094, float %1096, float %1097)  ; Dot3(ax,ay,az,bx,by,bz)
  %1099 = call float @dx.op.unary.f32(i32 25, float %1098)  ; Rsqrt(value)
  %1100 = fmul fast float %1099, %1094
  %1101 = fmul fast float %1099, %1096
  %1102 = fmul fast float %1097, %1099
  %1103 = fsub fast float -0.000000e+00, %1101
  %1104 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float %1102, float %1103, float 0.000000e+00, float %1102, float %1103)  ; Dot3(ax,ay,az,bx,by,bz)
  %1105 = call float @dx.op.unary.f32(i32 25, float %1104)  ; Rsqrt(value)
  %1106 = fmul fast float %1102, %1105
  %1107 = fmul fast float %1105, %1103
  %1108 = fmul fast float %1106, %1102
  %1109 = fmul fast float %1107, %1101
  %1110 = fsub fast float %1108, %1109
  %1111 = fmul fast float %1107, %1100
  %1112 = fmul fast float %1100, %1106
  %1113 = fsub fast float -0.000000e+00, %1112
  %1114 = call float @dx.op.dot3.f32(i32 55, float %1110, float %1111, float %1113, float %1110, float %1111, float %1113)  ; Dot3(ax,ay,az,bx,by,bz)
  %1115 = call float @dx.op.unary.f32(i32 25, float %1114)  ; Rsqrt(value)
  %1116 = fmul fast float %1110, %1115
  %1117 = fmul fast float %1111, %1115
  %1118 = fmul fast float %1115, %1113
  %1119 = fadd fast float %1106, %976
  %1120 = fadd fast float %1107, %977
  %1121 = call float @dx.op.dot3.f32(i32 55, float %975, float %1119, float %1120, float %975, float %1119, float %1120)  ; Dot3(ax,ay,az,bx,by,bz)
  %1122 = call float @dx.op.unary.f32(i32 25, float %1121)  ; Rsqrt(value)
  %1123 = fmul fast float %1122, %975
  %1124 = fmul fast float %1122, %1119
  %1125 = fmul fast float %1122, %1120
  %1126 = fadd fast float %1116, %972
  %1127 = fadd fast float %1117, %973
  %1128 = fadd fast float %1118, %974
  %1129 = call float @dx.op.dot3.f32(i32 55, float %1126, float %1127, float %1128, float %1126, float %1127, float %1128)  ; Dot3(ax,ay,az,bx,by,bz)
  %1130 = call float @dx.op.unary.f32(i32 25, float %1129)  ; Rsqrt(value)
  %1131 = fmul fast float %1130, %1126
  %1132 = fmul fast float %1130, %1127
  %1133 = fmul fast float %1130, %1128
  %1134 = fmul fast float %1132, %1125
  %1135 = fmul fast float %1133, %1124
  %1136 = fsub fast float %1134, %1135
  %1137 = fmul fast float %1133, %1123
  %1138 = fmul fast float %1131, %1125
  %1139 = fsub fast float %1137, %1138
  %1140 = fmul fast float %1131, %1124
  %1141 = fmul fast float %1132, %1123
  %1142 = fsub fast float %1140, %1141
  %1143 = call float @dx.op.dot3.f32(i32 55, float %1136, float %1139, float %1142, float %1136, float %1139, float %1142)  ; Dot3(ax,ay,az,bx,by,bz)
  %1144 = call float @dx.op.unary.f32(i32 25, float %1143)  ; Rsqrt(value)
  %1145 = fmul fast float %1136, %1144
  %1146 = fmul fast float %1139, %1144
  %1147 = fmul fast float %1142, %1144
  %1148 = fadd fast float %969, %115
  %1149 = fadd fast float %970, %116
  %1150 = fadd fast float %971, %215
  %1151 = fmul fast float %1131, %979
  %1152 = call float @dx.op.tertiary.f32(i32 46, float %980, float %1123, float %1151)  ; FMad(a,b,c)
  %1153 = call float @dx.op.tertiary.f32(i32 46, float %981, float %1145, float %1152)  ; FMad(a,b,c)
  %1154 = fmul fast float %1132, %979
  %1155 = call float @dx.op.tertiary.f32(i32 46, float %980, float %1124, float %1154)  ; FMad(a,b,c)
  %1156 = call float @dx.op.tertiary.f32(i32 46, float %981, float %1146, float %1155)  ; FMad(a,b,c)
  %1157 = fmul fast float %1133, %979
  %1158 = call float @dx.op.tertiary.f32(i32 46, float %980, float %1125, float %1157)  ; FMad(a,b,c)
  %1159 = call float @dx.op.tertiary.f32(i32 46, float %981, float %1147, float %1158)  ; FMad(a,b,c)
  %1160 = fadd fast float %1148, %1153
  %1161 = fadd fast float %1149, %1156
  %1162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1163 = extractvalue %dx.types.CBufRet.f32 %1162, 0
  %1164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1165 = extractvalue %dx.types.CBufRet.f32 %1164, 0
  %1166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1167 = extractvalue %dx.types.CBufRet.f32 %1166, 0
  %1168 = extractvalue %dx.types.CBufRet.f32 %1162, 1
  %1169 = extractvalue %dx.types.CBufRet.f32 %1164, 1
  %1170 = extractvalue %dx.types.CBufRet.f32 %1166, 1
  %1171 = extractvalue %dx.types.CBufRet.f32 %1162, 2
  %1172 = extractvalue %dx.types.CBufRet.f32 %1164, 2
  %1173 = extractvalue %dx.types.CBufRet.f32 %1166, 2
  %1174 = extractvalue %dx.types.CBufRet.f32 %1162, 3
  %1175 = extractvalue %dx.types.CBufRet.f32 %1164, 3
  %1176 = extractvalue %dx.types.CBufRet.f32 %1166, 3
  %1177 = fadd fast float %1160, %1174
  %1178 = fadd fast float %1161, %1175
  %1179 = fadd fast float %1150, %985
  %1180 = fadd fast float %1179, %1159
  %1181 = fadd fast float %1180, %1176
  %1182 = fmul fast float %1177, %1163
  %1183 = call float @dx.op.tertiary.f32(i32 46, float %1178, float %1168, float %1182)  ; FMad(a,b,c)
  %1184 = call float @dx.op.tertiary.f32(i32 46, float %1181, float %1171, float %1183)  ; FMad(a,b,c)
  %1185 = fmul fast float %1177, %1165
  %1186 = call float @dx.op.tertiary.f32(i32 46, float %1178, float %1169, float %1185)  ; FMad(a,b,c)
  %1187 = call float @dx.op.tertiary.f32(i32 46, float %1181, float %1172, float %1186)  ; FMad(a,b,c)
  %1188 = fmul fast float %1177, %1167
  %1189 = call float @dx.op.tertiary.f32(i32 46, float %1178, float %1170, float %1188)  ; FMad(a,b,c)
  %1190 = call float @dx.op.tertiary.f32(i32 46, float %1181, float %1173, float %1189)  ; FMad(a,b,c)
  %1191 = fsub fast float %1184, %1174
  %1192 = fsub fast float %1187, %1175
  %1193 = fsub fast float %1190, %1176
  %1194 = fmul fast float %1163, %1145
  %1195 = call float @dx.op.tertiary.f32(i32 46, float %1146, float %1168, float %1194)  ; FMad(a,b,c)
  %1196 = call float @dx.op.tertiary.f32(i32 46, float %1147, float %1171, float %1195)  ; FMad(a,b,c)
  %1197 = fmul fast float %1165, %1145
  %1198 = call float @dx.op.tertiary.f32(i32 46, float %1146, float %1169, float %1197)  ; FMad(a,b,c)
  %1199 = call float @dx.op.tertiary.f32(i32 46, float %1147, float %1172, float %1198)  ; FMad(a,b,c)
  %1200 = fmul fast float %1167, %1145
  %1201 = call float @dx.op.tertiary.f32(i32 46, float %1146, float %1170, float %1200)  ; FMad(a,b,c)
  %1202 = call float @dx.op.tertiary.f32(i32 46, float %1147, float %1173, float %1201)  ; FMad(a,b,c)
  %1203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 208)  ; CBufferLoadLegacy(handle,regIndex)
  %1204 = extractvalue %dx.types.CBufRet.f32 %1203, 2
  %1205 = fadd fast float %1193, %1204
  %1206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1207 = extractvalue %dx.types.CBufRet.f32 %1206, 0
  %1208 = extractvalue %dx.types.CBufRet.f32 %1206, 1
  %1209 = extractvalue %dx.types.CBufRet.f32 %1206, 2
  %1210 = fsub fast float %1191, %1207
  %1211 = fsub fast float %1192, %1208
  %1212 = fsub fast float %1205, %1209
  %1213 = fmul fast float %130, 6.553500e+04
  %1214 = call float @dx.op.unary.f32(i32 26, float %1213)  ; Round_ne(value)
  %1215 = fptosi float %1214 to i32
  %1216 = call i32 @dx.op.binary.i32(i32 37, i32 %1215, i32 0)  ; IMax(a,b)
  %1217 = call i32 @dx.op.binary.i32(i32 38, i32 %1216, i32 65535)  ; IMin(a,b)
  %1218 = fmul fast float %133, 6.553500e+04
  %1219 = call float @dx.op.unary.f32(i32 26, float %1218)  ; Round_ne(value)
  %1220 = fptosi float %1219 to i32
  %1221 = call i32 @dx.op.binary.i32(i32 37, i32 %1220, i32 0)  ; IMax(a,b)
  %1222 = call i32 @dx.op.binary.i32(i32 38, i32 %1221, i32 65535)  ; IMin(a,b)
  %1223 = shl i32 %1222, 16
  %1224 = or i32 %1223, %1217
  %1225 = call float @dx.op.unary.f32(i32 6, float %1196)  ; FAbs(value)
  %1226 = call float @dx.op.unary.f32(i32 6, float %1199)  ; FAbs(value)
  %1227 = fadd fast float %1226, %1225
  %1228 = call float @dx.op.unary.f32(i32 6, float %1202)  ; FAbs(value)
  %1229 = fadd fast float %1227, %1228
  %1230 = fdiv fast float %1196, %1229
  %1231 = fdiv fast float %1199, %1229
  %1232 = fdiv fast float %1202, %1229
  %1233 = fcmp fast oge float %1232, 0.000000e+00
  %1234 = call float @dx.op.unary.f32(i32 6, float %1231)  ; FAbs(value)
  %1235 = call float @dx.op.unary.f32(i32 6, float %1230)  ; FAbs(value)
  %1236 = fsub fast float 1.000000e+00, %1234
  %1237 = fsub fast float 1.000000e+00, %1235
  %1238 = fcmp fast oge float %1230, 0.000000e+00
  %1239 = select i1 %1238, float 1.000000e+00, float -1.000000e+00
  %1240 = fcmp fast oge float %1231, 0.000000e+00
  %1241 = select i1 %1240, float 1.000000e+00, float -1.000000e+00
  %1242 = fmul fast float %1236, %1239
  %1243 = fmul fast float %1237, %1241
  %1244 = select i1 %1233, float %1230, float %1242
  %1245 = select i1 %1233, float %1231, float %1243
  %1246 = fmul fast float %1244, 1.275000e+02
  %1247 = fmul fast float %1245, 1.275000e+02
  %1248 = fadd fast float %1246, 1.275000e+02
  %1249 = fadd fast float %1247, 1.275000e+02
  %1250 = call float @dx.op.unary.f32(i32 26, float %1248)  ; Round_ne(value)
  %1251 = call float @dx.op.unary.f32(i32 26, float %1249)  ; Round_ne(value)
  %1252 = fptoui float %1250 to i32
  %1253 = fptoui float %1251 to i32
  %1254 = shl i32 %1253, 8
  %1255 = shl i32 %998, 16
  %1256 = or i32 %1252, %1255
  %1257 = or i32 %1256, %1254
  %1258 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %1259 = extractvalue %dx.types.CBufRet.i32 %1258, 0
  %1260 = icmp eq i32 %1259, 19
  br i1 %1260, label %1261, label %1263, !dx.controlflow.hints !47

; <label>:1261                                    ; preds = %967
  %1262 = bitcast float %1159 to i32
  br label %1444

; <label>:1263                                    ; preds = %967
  %1264 = icmp eq i32 %1259, 21
  br i1 %1264, label %1265, label %1329, !dx.controlflow.hints !48

; <label>:1265                                    ; preds = %1263
  br i1 %290, label %1311, label %1266, !dx.controlflow.hints !49

; <label>:1266                                    ; preds = %1265
  %1267 = extractvalue %dx.types.CBufRet.i32 %1258, 2
  %1268 = icmp eq i32 %1267, -1
  br i1 %1268, label %1270, label %1269, !dx.controlflow.hints !50

; <label>:1269                                    ; preds = %1266
  br label %1279

; <label>:1270                                    ; preds = %1266
  %1271 = fcmp fast ogt float %986, 0x3FF0202020000000
  %1272 = select i1 %1271, float 0.000000e+00, float %986
  %1273 = select i1 %1271, float 1.000000e+00, float %986
  %1274 = fcmp fast olt float %986, 0x3FEFBFBFC0000000
  %1275 = select i1 %1274, float 1.000000e+00, float %1272
  %1276 = select i1 %1274, float 0.000000e+00, float %1273
  %1277 = or i1 %1274, %1271
  %1278 = select i1 %1277, float 0.000000e+00, float %986
  br label %1311

; <label>:1279                                    ; preds = %1307, %1269
  %1280 = phi i32 [ %1308, %1307 ], [ 0, %1269 ]
  %1281 = shl i32 %1280, 2
  %1282 = add i32 %1281, %275
  %1283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.i32 %1283, 0
  %1285 = and i32 %1284, 32767
  %1286 = icmp eq i32 %1285, %1267
  br i1 %1286, label %1287, label %1307, !dx.controlflow.hints !51

; <label>:1287                                    ; preds = %1279
  %1288 = add i32 %1281, %62
  %1289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.f32 %1289, 0
  %1291 = add i32 %1281, %66
  %1292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1291, i32 undef)  ; BufferLoad(srv,index,wot)
  %1293 = extractvalue %dx.types.ResRet.i32 %1292, 0
  %1294 = add i32 %1293, 0
  %1295 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1294, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1296 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1295, i32 0)  ; GetDimensions(handle,mipLevel)
  %1297 = extractvalue %dx.types.Dimensions %1296, 0
  %1298 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1297)  ; FirstbitLo(value)
  %1299 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1300 = extractvalue %dx.types.CBufRet.i32 %1299, 1
  %1301 = sub nsw i32 %1300, %1298
  %1302 = sitofp i32 %1301 to float
  %1303 = fsub fast float %147, %1302
  %1304 = call float @dx.op.binary.f32(i32 35, float %1303, float 0.000000e+00)  ; FMax(a,b)
  %1305 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1295, %dx.types.Handle %11, float %288, float %289, float %1290, float undef, i32 0, i32 0, i32 undef, float %1304)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1306 = extractvalue %dx.types.ResRet.f32 %1305, 0
  br label %1311

; <label>:1307                                    ; preds = %1279
  %1308 = add nuw i32 %1280, 1
  %1309 = icmp ult i32 %1308, %274
  br i1 %1309, label %1279, label %1310

; <label>:1310                                    ; preds = %1307
  br label %1311

; <label>:1311                                    ; preds = %1310, %1287, %1270, %1265
  %1312 = phi float [ %1275, %1270 ], [ 1.000000e+00, %1265 ], [ %1306, %1287 ], [ 0.000000e+00, %1310 ]
  %1313 = phi float [ %1276, %1270 ], [ 0.000000e+00, %1265 ], [ %1306, %1287 ], [ 0.000000e+00, %1310 ]
  %1314 = phi float [ %1278, %1270 ], [ 0.000000e+00, %1265 ], [ %1306, %1287 ], [ 1.000000e+00, %1310 ]
  %1315 = call float @dx.op.unary.f32(i32 7, float %1312)  ; Saturate(value)
  %1316 = call float @dx.op.unary.f32(i32 7, float %1313)  ; Saturate(value)
  %1317 = call float @dx.op.unary.f32(i32 7, float %1314)  ; Saturate(value)
  %1318 = fmul fast float %1315, 2.550000e+02
  %1319 = fmul fast float %1316, 2.550000e+02
  %1320 = fmul fast float %1317, 2.550000e+02
  %1321 = fptoui float %1318 to i32
  %1322 = fptoui float %1319 to i32
  %1323 = fptoui float %1320 to i32
  %1324 = shl i32 %1322, 8
  %1325 = shl i32 %1323, 16
  %1326 = or i32 %1321, %1324
  %1327 = or i32 %1326, %1325
  %1328 = or i32 %1327, -16777216
  br label %1444

; <label>:1329                                    ; preds = %1263
  %1330 = icmp eq i32 %1259, 26
  %1331 = icmp eq i32 %1259, 32
  %1332 = or i1 %1330, %1331
  br i1 %1332, label %1333, label %1335, !dx.controlflow.hints !52

; <label>:1333                                    ; preds = %1329
  %1334 = bitcast float %147 to i32
  br label %1444

; <label>:1335                                    ; preds = %1329
  %1336 = icmp eq i32 %1259, 29
  br i1 %1336, label %1337, label %1433, !dx.controlflow.hints !53

; <label>:1337                                    ; preds = %1335
  br i1 %290, label %1415, label %1338

; <label>:1338                                    ; preds = %1337
  br label %1339

; <label>:1339                                    ; preds = %1339, %1338
  %1340 = phi float [ %1409, %1339 ], [ 1.000000e+00, %1338 ]
  %1341 = phi float [ %1410, %1339 ], [ 0.000000e+00, %1338 ]
  %1342 = phi float [ %1411, %1339 ], [ 0.000000e+00, %1338 ]
  %1343 = phi i32 [ %1412, %1339 ], [ 0, %1338 ]
  %1344 = shl i32 %1343, 2
  %1345 = add i32 %1344, %275
  %1346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1345, i32 undef)  ; BufferLoad(srv,index,wot)
  %1347 = extractvalue %dx.types.ResRet.i32 %1346, 0
  %1348 = and i32 %1347, 32767
  %1349 = add i32 %1344, %62
  %1350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1349, i32 undef)  ; BufferLoad(srv,index,wot)
  %1351 = extractvalue %dx.types.ResRet.f32 %1350, 0
  %1352 = add i32 %1344, %66
  %1353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1354 = extractvalue %dx.types.ResRet.i32 %1353, 0
  %1355 = add i32 %1354, 0
  %1356 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1355, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1357 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1356, i32 0)  ; GetDimensions(handle,mipLevel)
  %1358 = extractvalue %dx.types.Dimensions %1357, 0
  %1359 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1358)  ; FirstbitLo(value)
  %1360 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1361 = extractvalue %dx.types.CBufRet.i32 %1360, 1
  %1362 = sub nsw i32 %1361, %1359
  %1363 = sitofp i32 %1362 to float
  %1364 = fsub fast float %147, %1363
  %1365 = call float @dx.op.binary.f32(i32 35, float %1364, float 0.000000e+00)  ; FMax(a,b)
  %1366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1356, %dx.types.Handle %11, float %288, float %289, float %1351, float undef, i32 0, i32 0, i32 undef, float %1365)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1367 = extractvalue %dx.types.ResRet.f32 %1366, 0
  %1368 = uitofp i32 %1348 to float
  %1369 = fmul fast float %1368, 0x3FE3C6EF40000000
  %1370 = call float @dx.op.unary.f32(i32 22, float %1369)  ; Frc(value)
  %1371 = fadd fast float %1370, 0x3FE5555560000000
  %1372 = fadd fast float %1370, 0x3FD5555560000000
  %1373 = fsub fast float -0.000000e+00, %1370
  %1374 = fsub fast float -0.000000e+00, %1371
  %1375 = fsub fast float -0.000000e+00, %1372
  %1376 = fcmp fast oge float %1370, %1373
  %1377 = fcmp fast oge float %1371, %1374
  %1378 = fcmp fast oge float %1372, %1375
  %1379 = call float @dx.op.unary.f32(i32 6, float %1370)  ; FAbs(value)
  %1380 = call float @dx.op.unary.f32(i32 6, float %1371)  ; FAbs(value)
  %1381 = call float @dx.op.unary.f32(i32 6, float %1372)  ; FAbs(value)
  %1382 = call float @dx.op.unary.f32(i32 22, float %1379)  ; Frc(value)
  %1383 = call float @dx.op.unary.f32(i32 22, float %1380)  ; Frc(value)
  %1384 = call float @dx.op.unary.f32(i32 22, float %1381)  ; Frc(value)
  %1385 = fsub fast float -0.000000e+00, %1382
  %1386 = fsub fast float -0.000000e+00, %1383
  %1387 = fsub fast float -0.000000e+00, %1384
  %1388 = select i1 %1376, float %1382, float %1385
  %1389 = select i1 %1377, float %1383, float %1386
  %1390 = select i1 %1378, float %1384, float %1387
  %1391 = fmul fast float %1388, 6.000000e+00
  %1392 = fmul fast float %1389, 6.000000e+00
  %1393 = fmul fast float %1390, 6.000000e+00
  %1394 = fadd fast float %1391, -3.000000e+00
  %1395 = fadd fast float %1392, -3.000000e+00
  %1396 = fadd fast float %1393, -3.000000e+00
  %1397 = call float @dx.op.unary.f32(i32 6, float %1394)  ; FAbs(value)
  %1398 = call float @dx.op.unary.f32(i32 6, float %1395)  ; FAbs(value)
  %1399 = call float @dx.op.unary.f32(i32 6, float %1396)  ; FAbs(value)
  %1400 = fadd fast float %1397, -1.000000e+00
  %1401 = fadd fast float %1398, -1.000000e+00
  %1402 = fadd fast float %1399, -1.000000e+00
  %1403 = call float @dx.op.unary.f32(i32 7, float %1400)  ; Saturate(value)
  %1404 = call float @dx.op.unary.f32(i32 7, float %1401)  ; Saturate(value)
  %1405 = call float @dx.op.unary.f32(i32 7, float %1402)  ; Saturate(value)
  %1406 = fmul fast float %1403, %1367
  %1407 = fmul fast float %1404, %1367
  %1408 = fmul fast float %1405, %1367
  %1409 = fadd fast float %1406, %1340
  %1410 = fadd fast float %1407, %1341
  %1411 = fadd fast float %1408, %1342
  %1412 = add nuw i32 %1343, 1
  %1413 = icmp eq i32 %1412, %274
  br i1 %1413, label %1414, label %1339

; <label>:1414                                    ; preds = %1339
  br label %1415

; <label>:1415                                    ; preds = %1414, %1337
  %1416 = phi float [ 1.000000e+00, %1337 ], [ %1409, %1414 ]
  %1417 = phi float [ 0.000000e+00, %1337 ], [ %1410, %1414 ]
  %1418 = phi float [ 0.000000e+00, %1337 ], [ %1411, %1414 ]
  %1419 = call float @dx.op.unary.f32(i32 7, float %1416)  ; Saturate(value)
  %1420 = call float @dx.op.unary.f32(i32 7, float %1417)  ; Saturate(value)
  %1421 = call float @dx.op.unary.f32(i32 7, float %1418)  ; Saturate(value)
  %1422 = fmul fast float %1419, 2.550000e+02
  %1423 = fmul fast float %1420, 2.550000e+02
  %1424 = fmul fast float %1421, 2.550000e+02
  %1425 = fptoui float %1422 to i32
  %1426 = fptoui float %1423 to i32
  %1427 = fptoui float %1424 to i32
  %1428 = shl i32 %1426, 8
  %1429 = shl i32 %1427, 16
  %1430 = or i32 %1425, %1428
  %1431 = or i32 %1430, %1429
  %1432 = or i32 %1431, -16777216
  br label %1444

; <label>:1433                                    ; preds = %1335
  %1434 = icmp eq i32 %1259, 41
  br i1 %1434, label %1435, label %1444, !dx.controlflow.hints !54

; <label>:1435                                    ; preds = %1433
  %1436 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %1437 = extractvalue %dx.types.CBufRet.i32 %1436, 0
  %1438 = icmp eq i32 %1437, 7
  br i1 %1438, label %1439, label %1444, !dx.controlflow.hints !55

; <label>:1439                                    ; preds = %1435
  %1440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1441 = extractvalue %dx.types.CBufRet.f32 %1440, 1
  %1442 = fcmp fast oge float %1012, %1441
  %1443 = select i1 %1442, i32 1065353216, i32 0
  br label %1444

; <label>:1444                                    ; preds = %1439, %1435, %1433, %1415, %1333, %1311, %1261
  %1445 = phi i32 [ %1262, %1261 ], [ %1328, %1311 ], [ %1334, %1333 ], [ %1432, %1415 ], [ %1443, %1439 ], [ %1257, %1435 ], [ %1257, %1433 ]
  %1446 = mul i32 %29, 20
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %1446, i32 undef, float %1210, float %1211, float %1212, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1447 = add i32 %1446, 12
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1447, i32 undef, i32 %1224, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1448 = add i32 %1446, 16
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1448, i32 undef, i32 %1445, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1449 = fadd float %1210, 1.310720e+05
  %1450 = fadd float %1211, 1.310720e+05
  %1451 = fadd float %1212, 1.310720e+05
  br label %1452

; <label>:1452                                    ; preds = %1444, %0
  %1453 = phi float [ %1449, %1444 ], [ 1.310720e+05, %0 ]
  %1454 = phi float [ %1450, %1444 ], [ 1.310720e+05, %0 ]
  %1455 = phi float [ %1451, %1444 ], [ 1.310720e+05, %0 ]
  %1456 = phi i1 [ true, %1444 ], [ false, %0 ]
  %1457 = phi i32 [ %1021, %1444 ], [ 0, %0 ]
  %1458 = call float @dx.op.binary.f32(i32 35, float %1453, float 0.000000e+00)  ; FMax(a,b)
  %1459 = call float @dx.op.binary.f32(i32 35, float %1454, float 0.000000e+00)  ; FMax(a,b)
  %1460 = call float @dx.op.binary.f32(i32 35, float %1455, float 0.000000e+00)  ; FMax(a,b)
  %1461 = bitcast float %1458 to i32
  %1462 = bitcast float %1459 to i32
  %1463 = bitcast float %1460 to i32
  %1464 = select i1 %1456, i32 %1461, i32 -1
  %1465 = select i1 %1456, i32 %1462, i32 -1
  %1466 = select i1 %1456, i32 %1463, i32 -1
  %1467 = select i1 %1456, i32 %1461, i32 0
  %1468 = select i1 %1456, i32 %1462, i32 0
  %1469 = select i1 %1456, i32 %1463, i32 0
  %1470 = shl i32 %19, 6
  %1471 = udiv i32 %1470, 25
  %1472 = sub nsw i32 %21, %1471
  %1473 = icmp ult i32 %20, 8
  br i1 %1473, label %1474, label %1482, !dx.controlflow.hints !56

; <label>:1474                                    ; preds = %1452
  %1475 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileFeaturesShared@@3PAIA", i32 0, i32 %20
  store i32 0, i32 addrspace(3)* %1475, align 4, !tbaa !57
  %1476 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinXShared@@3PAIA", i32 0, i32 %20
  store i32 -1, i32 addrspace(3)* %1476, align 4, !tbaa !57
  %1477 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinYShared@@3PAIA", i32 0, i32 %20
  store i32 -1, i32 addrspace(3)* %1477, align 4, !tbaa !57
  %1478 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinZShared@@3PAIA", i32 0, i32 %20
  store i32 -1, i32 addrspace(3)* %1478, align 4, !tbaa !57
  %1479 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxXShared@@3PAIA", i32 0, i32 %20
  store i32 0, i32 addrspace(3)* %1479, align 4, !tbaa !57
  %1480 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxYShared@@3PAIA", i32 0, i32 %20
  store i32 0, i32 addrspace(3)* %1480, align 4, !tbaa !57
  %1481 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxZShared@@3PAIA", i32 0, i32 %20
  store i32 0, i32 addrspace(3)* %1481, align 4, !tbaa !57
  br label %1482

; <label>:1482                                    ; preds = %1474, %1452
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %25, label %1483, label %1498, !dx.controlflow.hints !59

; <label>:1483                                    ; preds = %1482
  %1484 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileFeaturesShared@@3PAIA", i32 0, i32 %1472
  %1485 = atomicrmw or i32 addrspace(3)* %1484, i32 %1457 seq_cst
  %1486 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinXShared@@3PAIA", i32 0, i32 %1472
  %1487 = atomicrmw umin i32 addrspace(3)* %1486, i32 %1464 seq_cst
  %1488 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinYShared@@3PAIA", i32 0, i32 %1472
  %1489 = atomicrmw umin i32 addrspace(3)* %1488, i32 %1465 seq_cst
  %1490 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinZShared@@3PAIA", i32 0, i32 %1472
  %1491 = atomicrmw umin i32 addrspace(3)* %1490, i32 %1466 seq_cst
  %1492 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxXShared@@3PAIA", i32 0, i32 %1472
  %1493 = atomicrmw umax i32 addrspace(3)* %1492, i32 %1467 seq_cst
  %1494 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxYShared@@3PAIA", i32 0, i32 %1472
  %1495 = atomicrmw umax i32 addrspace(3)* %1494, i32 %1468 seq_cst
  %1496 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxZShared@@3PAIA", i32 0, i32 %1472
  %1497 = atomicrmw umax i32 addrspace(3)* %1496, i32 %1469 seq_cst
  br label %1498

; <label>:1498                                    ; preds = %1483, %1482
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1499 = and i1 %1473, %25
  br i1 %1499, label %1500, label %1536, !dx.controlflow.hints !60

; <label>:1500                                    ; preds = %1498
  %1501 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileFeaturesShared@@3PAIA", i32 0, i32 %20
  %1502 = load i32, i32 addrspace(3)* %1501, align 4, !tbaa !57
  %1503 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1504 = extractvalue %dx.types.CBufRet.i32 %1503, 2
  %1505 = add i32 %1471, %20
  %1506 = add i32 %1505, %1504
  %1507 = shl i32 %1506, 2
  %1508 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %1507, i32 undef, i32 undef, i32 %1502)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1509 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinXShared@@3PAIA", i32 0, i32 %20
  %1510 = load i32, i32 addrspace(3)* %1509, align 4, !tbaa !57
  %1511 = xor i32 %1510, -1
  %1512 = mul i32 %1506, 24
  %1513 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %1512, i32 undef, i32 undef, i32 %1511)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1514 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinYShared@@3PAIA", i32 0, i32 %20
  %1515 = load i32, i32 addrspace(3)* %1514, align 4, !tbaa !57
  %1516 = xor i32 %1515, -1
  %1517 = or i32 %1512, 4
  %1518 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %1517, i32 undef, i32 undef, i32 %1516)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1519 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinZShared@@3PAIA", i32 0, i32 %20
  %1520 = load i32, i32 addrspace(3)* %1519, align 4, !tbaa !57
  %1521 = xor i32 %1520, -1
  %1522 = add i32 %1512, 8
  %1523 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %1522, i32 undef, i32 undef, i32 %1521)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1524 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxXShared@@3PAIA", i32 0, i32 %20
  %1525 = load i32, i32 addrspace(3)* %1524, align 4, !tbaa !57
  %1526 = add i32 %1512, 12
  %1527 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %1526, i32 undef, i32 undef, i32 %1525)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1528 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxYShared@@3PAIA", i32 0, i32 %20
  %1529 = load i32, i32 addrspace(3)* %1528, align 4, !tbaa !57
  %1530 = add i32 %1512, 16
  %1531 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %1530, i32 undef, i32 undef, i32 %1529)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1532 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxZShared@@3PAIA", i32 0, i32 %20
  %1533 = load i32, i32 addrspace(3)* %1532, align 4, !tbaa !57
  %1534 = add i32 %1512, 20
  %1535 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %1534, i32 undef, i32 undef, i32 %1533)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1536

; <label>:1536                                    ; preds = %1500, %1498
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

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

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

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
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #3

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
!dx.entryPoints = !{!27}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !14, !18, !23}
!5 = !{!6, !8, !9, !10, !11, !12, !13}
!6 = !{i32 0, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2DArray<vector<float, 3> >"* undef, !"", i32 0, i32 6, i32 1, i32 7, i32 0, !7}
!14 = !{!15, !16, !17}
!15 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!16 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!17 = !{i32 2, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!18 = !{!19, !20, !21, !22}
!19 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!20 = !{i32 1, %waterTile* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!21 = !{i32 2, %waterTileLod* undef, !"", i32 0, i32 2, i32 1, i32 272, null}
!22 = !{i32 3, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!23 = !{!24, !25, !26}
!24 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!25 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!26 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!27 = !{void ()* @cs_water_tile_process_verts_5x5_debug_shader, !"cs_water_tile_process_verts_5x5_debug_shader", null, !4, !28}
!28 = !{i32 0, i64 272, i32 4, !29}
!29 = !{i32 64, i32 1, i32 1}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = !{!38, !38, i64 0}
!38 = !{!"float", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!42, !44, !45}
!42 = distinct !{!42, !43, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outDisplacement"}
!43 = distinct !{!43, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z"}
!44 = distinct !{!44, !43, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outNormal"}
!45 = distinct !{!45, !43, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outWaveParticleFoamMask"}
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
!57 = !{!58, !58, i64 0}
!58 = !{!"int", !39, i64 0}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}

