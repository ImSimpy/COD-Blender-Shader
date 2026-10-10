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
; shader hash: 3efdfbf4258a179be268df456ea50e5d
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

define void @cs_water_tile_process_verts_5x5() {
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
  br i1 %25, label %30, label %1223, !dx.controlflow.hints !30

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
  br i1 %290, label %927, label %291

; <label>:291                                     ; preds = %30
  br label %292

; <label>:292                                     ; preds = %905, %291
  %293 = phi i32 [ %906, %905 ], [ %151, %291 ]
  %294 = phi float [ %907, %905 ], [ 0.000000e+00, %291 ]
  %295 = phi float [ %908, %905 ], [ 0.000000e+00, %291 ]
  %296 = phi float [ %909, %905 ], [ 0.000000e+00, %291 ]
  %297 = phi float [ %910, %905 ], [ 0.000000e+00, %291 ]
  %298 = phi float [ %911, %905 ], [ 0.000000e+00, %291 ]
  %299 = phi float [ %912, %905 ], [ 0.000000e+00, %291 ]
  %300 = phi float [ %913, %905 ], [ 0.000000e+00, %291 ]
  %301 = phi float [ %914, %905 ], [ 0.000000e+00, %291 ]
  %302 = phi float [ %915, %905 ], [ 0.000000e+00, %291 ]
  %303 = phi float [ %916, %905 ], [ 0.000000e+00, %291 ]
  %304 = phi float [ %917, %905 ], [ 0.000000e+00, %291 ]
  %305 = phi float [ %918, %905 ], [ 0.000000e+00, %291 ]
  %306 = phi float [ %919, %905 ], [ 0.000000e+00, %291 ]
  %307 = phi float [ %920, %905 ], [ 0.000000e+00, %291 ]
  %308 = phi float [ %921, %905 ], [ 0.000000e+00, %291 ]
  %309 = phi float [ %922, %905 ], [ 0.000000e+00, %291 ]
  %310 = phi float [ %923, %905 ], [ 0.000000e+00, %291 ]
  %311 = phi i32 [ %924, %905 ], [ 0, %291 ]
  %312 = shl i32 %311, 2
  %313 = add i32 %62, %312
  %314 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.f32 %314, 0
  %316 = add i32 %66, %312
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = add i32 %318, 0
  %320 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %319, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %321 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %320, i32 0)  ; GetDimensions(handle,mipLevel)
  %322 = extractvalue %dx.types.Dimensions %321, 0
  %323 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %322)  ; FirstbitLo(value)
  %324 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %325 = extractvalue %dx.types.CBufRet.i32 %324, 1
  %326 = sub nsw i32 %325, %323
  %327 = sitofp i32 %326 to float
  %328 = fsub fast float %147, %327
  %329 = call float @dx.op.binary.f32(i32 35, float %328, float 0.000000e+00)  ; FMax(a,b)
  %330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %320, %dx.types.Handle %11, float %288, float %289, float %315, float undef, i32 0, i32 0, i32 undef, float %329)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %331 = extractvalue %dx.types.ResRet.f32 %330, 0
  %332 = fcmp fast ogt float %331, 0.000000e+00
  br i1 %332, label %333, label %905, !dx.controlflow.hints !31

; <label>:333                                     ; preds = %292
  %334 = add i32 %275, %312
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = and i32 %336, 32767
  %338 = mul nuw nsw i32 %337, 928
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = or i32 %338, 4
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = or i32 %338, 8
  %345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.f32 %345, 0
  %347 = or i32 %338, 12
  %348 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.f32 %348, 1
  %350 = or i32 %338, 20
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = add nuw nsw i32 %338, 72
  %354 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.f32 %354, 0
  %356 = extractvalue %dx.types.ResRet.f32 %354, 1
  %357 = add nuw nsw i32 %338, 80
  %358 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.f32 %358, 0
  %360 = add nuw nsw i32 %338, 84
  %361 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.f32 %361, 0
  %363 = add nuw nsw i32 %338, 88
  %364 = add nuw nsw i32 %338, 228
  %365 = add nuw nsw i32 %338, 596
  %366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.f32 %366, 0
  %368 = extractvalue %dx.types.ResRet.f32 %366, 1
  %369 = add nuw nsw i32 %338, 604
  %370 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.f32 %370, 0
  %372 = extractvalue %dx.types.ResRet.f32 %370, 1
  %373 = add nuw nsw i32 %338, 612
  %374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.f32 %374, 0
  %376 = add nuw nsw i32 %338, 616
  %377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.f32 %377, 0
  %379 = add nuw nsw i32 %338, 696
  %380 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.f32 %380, 0
  %382 = extractvalue %dx.types.ResRet.f32 %380, 1
  %383 = add nuw nsw i32 %338, 708
  %384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.f32 %384, 0
  %386 = extractvalue %dx.types.ResRet.f32 %384, 1
  %387 = add nuw nsw i32 %338, 780
  %388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.f32 %388, 0
  %390 = extractvalue %dx.types.ResRet.f32 %388, 1
  %391 = add nuw nsw i32 %338, 792
  %392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.f32 %392, 0
  %394 = extractvalue %dx.types.ResRet.f32 %392, 1
  %395 = add nuw nsw i32 %338, 840
  %396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.f32 %396, 0
  %398 = extractvalue %dx.types.ResRet.f32 %396, 1
  %399 = and i32 %311, 31
  %400 = shl i32 1, %399
  %401 = or i32 %400, %293
  %402 = shl i32 %340, 1
  %403 = and i32 %402, 256
  %404 = xor i32 %403, 256
  %405 = or i32 %401, %404
  %406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 201)  ; CBufferLoadLegacy(handle,regIndex)
  %407 = extractvalue %dx.types.CBufRet.f32 %406, 0
  %408 = call float @dx.op.binary.f32(i32 35, float %407, float %397)  ; FMax(a,b)
  %409 = call float @dx.op.binary.f32(i32 36, float %408, float %398)  ; FMin(a,b)
  %410 = fmul fast float %409, %331
  %411 = fadd fast float %410, %310
  %412 = and i32 %340, 256
  %413 = icmp ne i32 %412, 0
  %414 = fcmp fast ogt float %362, 0.000000e+00
  %415 = fmul fast float %362, %230
  %416 = call float @dx.op.unary.f32(i32 7, float %415)  ; Saturate(value)
  %417 = select i1 %414, float %416, float 1.000000e+00
  %418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %419 = extractvalue %dx.types.CBufRet.f32 %418, 3
  %420 = fadd fast float %419, %417
  %421 = call float @dx.op.unary.f32(i32 7, float %420)  ; Saturate(value)
  %422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %423 = extractvalue %dx.types.CBufRet.f32 %422, 0
  %424 = fsub fast float 1.000000e+00, %331
  %425 = select i1 %413, float %424, float 1.000000e+00
  %426 = call float @dx.op.unary.f32(i32 7, float %425)  ; Saturate(value)
  %427 = fmul fast float %426, %122
  %428 = fmul fast float %427, %423
  %429 = icmp eq i32 %343, 0
  br i1 %429, label %443, label %430

; <label>:430                                     ; preds = %333
  br label %431

; <label>:431                                     ; preds = %431, %430
  %432 = phi float [ %439, %431 ], [ 0.000000e+00, %430 ]
  %433 = phi i32 [ %440, %431 ], [ 0, %430 ]
  %434 = mul i32 %433, 28
  %435 = add nuw nsw i32 %338, 92
  %436 = add i32 %435, %434
  %437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.f32 %437, 0
  %439 = fadd fast float %438, %432
  %440 = add nuw i32 %433, 1
  %441 = icmp eq i32 %440, %343
  br i1 %441, label %442, label %431

; <label>:442                                     ; preds = %431
  br label %443

; <label>:443                                     ; preds = %442, %333
  %444 = phi float [ 0.000000e+00, %333 ], [ %439, %442 ]
  %445 = fmul fast float %426, %127
  %446 = fmul fast float %445, %423
  %447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %448 = extractvalue %dx.types.CBufRet.f32 %447, 3
  %449 = fcmp fast ogt float %444, %448
  %450 = select i1 %449, float %446, float %428
  %451 = fcmp fast ogt float %375, 0.000000e+00
  %452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.f32 %452, 2
  %454 = fadd fast float %453, 1.000000e+00
  %455 = call float @dx.op.unary.f32(i32 7, float %454)  ; Saturate(value)
  %456 = fmul fast float %455, %375
  %457 = call float @dx.op.binary.f32(i32 35, float %456, float 0x3F50624DE0000000)  ; FMax(a,b)
  %458 = fdiv fast float 1.000000e+00, %457
  %459 = select i1 %451, float %458, float 0.000000e+00
  %460 = fcmp fast ogt float %378, 0.000000e+00
  %461 = extractvalue %dx.types.CBufRet.f32 %452, 3
  %462 = fadd fast float %461, 1.000000e+00
  %463 = call float @dx.op.unary.f32(i32 7, float %462)  ; Saturate(value)
  %464 = fmul fast float %463, %378
  %465 = call float @dx.op.binary.f32(i32 35, float %464, float 0x3F50624DE0000000)  ; FMax(a,b)
  %466 = fdiv fast float 1.000000e+00, %465
  %467 = select i1 %460, float %466, float 0.000000e+00
  %468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %469 = extractvalue %dx.types.CBufRet.f32 %468, 3
  %470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %471 = extractvalue %dx.types.CBufRet.f32 %470, 1
  br i1 %429, label %594, label %472, !dx.controlflow.hints !32

; <label>:472                                     ; preds = %443
  br label %473

; <label>:473                                     ; preds = %473, %472
  %474 = phi float [ %540, %473 ], [ 0.000000e+00, %472 ]
  %475 = phi float [ %541, %473 ], [ 0.000000e+00, %472 ]
  %476 = phi float [ %542, %473 ], [ 0.000000e+00, %472 ]
  %477 = phi float [ %543, %473 ], [ 0.000000e+00, %472 ]
  %478 = phi float [ %544, %473 ], [ 0.000000e+00, %472 ]
  %479 = phi float [ %545, %473 ], [ 0.000000e+00, %472 ]
  %480 = phi float [ %546, %473 ], [ 0.000000e+00, %472 ]
  %481 = phi float [ %548, %473 ], [ 0.000000e+00, %472 ]
  %482 = phi float [ %549, %473 ], [ 0.000000e+00, %472 ]
  %483 = phi float [ %554, %473 ], [ 0.000000e+00, %472 ]
  %484 = phi float [ %576, %473 ], [ 0.000000e+00, %472 ]
  %485 = phi i32 [ %577, %473 ], [ 0, %472 ]
  %486 = mul i32 %485, 28
  %487 = add i32 %486, %363
  %488 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %487, i32 undef)  ; BufferLoad(srv,index,wot)
  %489 = extractvalue %dx.types.ResRet.f32 %488, 0
  %490 = add i32 %487, 4
  %491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.f32 %491, 0
  %493 = fmul fast float %492, %450
  %494 = add i32 %487, 8
  %495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %494, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.f32 %495, 0
  %497 = add i32 %487, 12
  %498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.f32 %498, 0
  %500 = fmul fast float %499, %469
  %501 = add i32 %487, 16
  %502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 0
  %504 = extractvalue %dx.types.ResRet.f32 %502, 1
  %505 = add i32 %487, 24
  %506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.f32 %506, 0
  %508 = call float @dx.op.dot2.f32(i32 54, float %503, float %504, float %115, float %116)  ; Dot2(ax,ay,bx,by)
  %509 = fmul fast float %508, %489
  %510 = fmul fast float %496, %471
  %511 = fsub fast float %509, %510
  %512 = fsub fast float %511, %507
  %513 = call float @dx.op.unary.f32(i32 13, float %512)  ; Sin(value)
  %514 = call float @dx.op.unary.f32(i32 12, float %512)  ; Cos(value)
  %515 = fmul fast float %500, %493
  %516 = fmul fast float %515, %503
  %517 = fmul fast float %516, %514
  %518 = fmul fast float %515, %504
  %519 = fmul fast float %518, %514
  %520 = fmul fast float %493, %421
  %521 = fmul fast float %520, %513
  %522 = fmul fast float %493, %489
  %523 = fmul fast float %522, %500
  %524 = fmul fast float %503, %503
  %525 = fmul fast float %524, %523
  %526 = fmul fast float %525, %513
  %527 = fmul fast float %503, %504
  %528 = fmul fast float %527, %523
  %529 = fmul fast float %528, %513
  %530 = fsub fast float 1.000000e+00, %526
  %531 = fmul fast float %489, %421
  %532 = fmul fast float %531, %493
  %533 = fmul fast float %532, %503
  %534 = fmul fast float %533, %514
  %535 = fmul fast float %504, %504
  %536 = fmul fast float %535, %523
  %537 = fmul fast float %536, %513
  %538 = fmul fast float %532, %504
  %539 = fmul fast float %538, %514
  %540 = fadd fast float %517, %474
  %541 = fadd fast float %519, %475
  %542 = fadd fast float %521, %476
  %543 = fadd fast float %530, %477
  %544 = fsub fast float %478, %529
  %545 = fadd fast float %534, %479
  %546 = fadd fast float %537, %480
  %547 = fadd fast float %481, 1.000000e+00
  %548 = fadd fast float %547, %529
  %549 = fadd fast float %539, %482
  %550 = fsub fast float 1.000000e+00, %537
  %551 = fmul fast float %530, %550
  %552 = fmul fast float %529, %529
  %553 = fsub fast float %551, %552
  %554 = fadd fast float %553, %483
  %555 = fadd fast float %512, 0xBFF921FB60000000
  %556 = fmul fast float %555, 0x3FC45F3060000000
  %557 = call float @dx.op.unary.f32(i32 27, float %556)  ; Round_ni(value)
  %558 = fsub fast float %556, %557
  %559 = call float @dx.op.unary.f32(i32 7, float %558)  ; Saturate(value)
  %560 = fmul fast float %559, %459
  %561 = call float @dx.op.unary.f32(i32 7, float %560)  ; Saturate(value)
  %562 = fmul fast float %561, %561
  %563 = fmul fast float %561, 2.000000e+00
  %564 = fsub fast float 3.000000e+00, %563
  %565 = fmul fast float %562, %564
  %566 = fsub fast float 1.000000e+00, %559
  %567 = fmul fast float %566, %467
  %568 = call float @dx.op.unary.f32(i32 7, float %567)  ; Saturate(value)
  %569 = fmul fast float %568, %568
  %570 = fmul fast float %568, 2.000000e+00
  %571 = fsub fast float 3.000000e+00, %570
  %572 = fmul fast float %569, %571
  %573 = fsub fast float 2.000000e+00, %565
  %574 = fsub fast float %573, %572
  %575 = call float @dx.op.unary.f32(i32 7, float %574)  ; Saturate(value)
  %576 = fadd fast float %575, %484
  %577 = add nuw i32 %485, 1
  %578 = icmp eq i32 %577, %343
  br i1 %578, label %579, label %473

; <label>:579                                     ; preds = %473
  %580 = call float @dx.op.dot3.f32(i32 55, float %543, float %544, float %545, float %543, float %544, float %545)  ; Dot3(ax,ay,az,bx,by,bz)
  %581 = call float @dx.op.unary.f32(i32 25, float %580)  ; Rsqrt(value)
  %582 = fmul fast float %581, %543
  %583 = fmul fast float %581, %544
  %584 = fmul fast float %581, %545
  %585 = call float @dx.op.dot3.f32(i32 55, float %546, float %548, float %549, float %546, float %548, float %549)  ; Dot3(ax,ay,az,bx,by,bz)
  %586 = call float @dx.op.unary.f32(i32 25, float %585)  ; Rsqrt(value)
  %587 = fmul fast float %586, %546
  %588 = fmul fast float %586, %548
  %589 = fmul fast float %586, %549
  %590 = uitofp i32 %343 to float
  %591 = fdiv fast float 1.000000e+00, %590
  %592 = fmul fast float %591, %554
  %593 = fmul fast float %591, %576
  br label %594

; <label>:594                                     ; preds = %579, %443
  %595 = phi float [ %540, %579 ], [ 0.000000e+00, %443 ]
  %596 = phi float [ %541, %579 ], [ 0.000000e+00, %443 ]
  %597 = phi float [ %542, %579 ], [ 0.000000e+00, %443 ]
  %598 = phi float [ %582, %579 ], [ 0.000000e+00, %443 ]
  %599 = phi float [ %583, %579 ], [ 0.000000e+00, %443 ]
  %600 = phi float [ %584, %579 ], [ 0.000000e+00, %443 ]
  %601 = phi float [ %587, %579 ], [ 0.000000e+00, %443 ]
  %602 = phi float [ %588, %579 ], [ 0.000000e+00, %443 ]
  %603 = phi float [ %589, %579 ], [ 0.000000e+00, %443 ]
  %604 = phi float [ %592, %579 ], [ 1.000000e+00, %443 ]
  %605 = phi float [ %593, %579 ], [ 1.000000e+00, %443 ]
  %606 = fmul fast float %595, %331
  %607 = fmul fast float %596, %331
  %608 = fmul fast float %597, %331
  %609 = fadd fast float %606, %294
  %610 = fadd fast float %607, %295
  %611 = fadd fast float %608, %296
  %612 = fmul fast float %598, %331
  %613 = fmul fast float %599, %331
  %614 = fmul fast float %600, %331
  %615 = fadd fast float %612, %297
  %616 = fadd fast float %613, %298
  %617 = fadd fast float %614, %299
  %618 = fmul fast float %601, %331
  %619 = fmul fast float %602, %331
  %620 = fmul fast float %603, %331
  %621 = fadd fast float %618, %300
  %622 = fadd fast float %619, %301
  %623 = fadd fast float %620, %302
  %624 = fsub fast float 1.000000e+00, %604
  %625 = fmul fast float %624, %371
  %626 = fadd fast float %625, %372
  %627 = fmul fast float %450, %331
  %628 = fmul fast float %627, %605
  %629 = fmul fast float %628, %626
  %630 = fadd fast float %629, %303
  %631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %632 = extractvalue %dx.types.CBufRet.f32 %631, 0
  %633 = extractvalue %dx.types.CBufRet.f32 %631, 1
  %634 = extractvalue %dx.types.CBufRet.f32 %631, 2
  %635 = fsub fast float %115, %632
  %636 = fsub fast float %116, %633
  %637 = fsub fast float %215, %634
  %638 = fmul fast float %635, %635
  %639 = fmul fast float %636, %636
  %640 = fadd fast float %638, %639
  %641 = fmul fast float %637, %637
  %642 = fadd fast float %640, %641
  %643 = call float @dx.op.unary.f32(i32 24, float %642)  ; Sqrt(value)
  %644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %645 = extractvalue %dx.types.CBufRet.f32 %644, 0
  %646 = fcmp fast ogt float %643, %645
  %647 = zext i1 %646 to i32
  %648 = extractvalue %dx.types.CBufRet.f32 %644, 1
  %649 = fcmp fast ogt float %643, %648
  %650 = zext i1 %649 to i32
  %651 = add nuw nsw i32 %650, %647
  %652 = extractvalue %dx.types.CBufRet.f32 %644, 2
  %653 = fcmp fast ogt float %643, %652
  %654 = zext i1 %653 to i32
  %655 = add nuw nsw i32 %651, %654
  %656 = icmp ult i32 %655, 3
  %657 = zext i1 %656 to i32
  %658 = shl nuw nsw i32 %655, 2
  %659 = add nuw nsw i32 %658, 48
  %660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %659)  ; CBufferLoadLegacy(handle,regIndex)
  %661 = extractvalue %dx.types.CBufRet.f32 %660, 1
  %662 = fcmp fast ogt float %643, %661
  %663 = zext i1 %662 to i32
  %664 = or i32 %658, 1
  %665 = add nuw nsw i32 %664, 48
  %666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %665)  ; CBufferLoadLegacy(handle,regIndex)
  %667 = extractvalue %dx.types.CBufRet.f32 %666, 1
  %668 = fcmp fast ogt float %643, %667
  %669 = zext i1 %668 to i32
  %670 = add nuw nsw i32 %669, %663
  %671 = or i32 %658, 2
  %672 = add nuw nsw i32 %671, 48
  %673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %672)  ; CBufferLoadLegacy(handle,regIndex)
  %674 = extractvalue %dx.types.CBufRet.f32 %673, 1
  %675 = fcmp fast ogt float %643, %674
  %676 = zext i1 %675 to i32
  %677 = add nuw nsw i32 %670, %676
  %678 = add i32 %352, -1
  %679 = call i32 @dx.op.binary.i32(i32 40, i32 %677, i32 %678)  ; UMin(a,b)
  %680 = add i32 %658, %679
  %681 = call i32 @dx.op.binary.i32(i32 40, i32 %680, i32 12)  ; UMin(a,b)
  %682 = add i32 %681, 48
  %683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %682)  ; CBufferLoadLegacy(handle,regIndex)
  %684 = extractvalue %dx.types.CBufRet.f32 %683, 0
  %685 = fcmp fast oge float %643, %684
  %686 = zext i1 %685 to i32
  %687 = call i32 @dx.op.binary.i32(i32 40, i32 %352, i32 %657)  ; UMin(a,b)
  %688 = call i32 @dx.op.binary.i32(i32 40, i32 %686, i32 %687)  ; UMin(a,b)
  %689 = add i32 %688, %352
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %862, label %691

; <label>:691                                     ; preds = %594
  br label %692

; <label>:692                                     ; preds = %692, %691
  %693 = phi float [ %856, %692 ], [ 0.000000e+00, %691 ]
  %694 = phi float [ %857, %692 ], [ 0.000000e+00, %691 ]
  %695 = phi float [ %858, %692 ], [ 0.000000e+00, %691 ]
  %696 = phi i32 [ %704, %692 ], [ %681, %691 ]
  %697 = phi i32 [ %859, %692 ], [ 0, %691 ]
  %698 = add i32 %697, %696
  %699 = and i32 %698, -4
  %700 = add i32 %699, %352
  %701 = icmp uge i32 %698, %700
  %702 = sub i32 4, %352
  %703 = select i1 %701, i32 %702, i32 0
  %704 = add i32 %703, %696
  %705 = add i32 %703, %698
  %706 = and i32 %705, 3
  %707 = lshr i32 %705, 2
  %708 = add i32 %705, 32
  %709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %708)  ; CBufferLoadLegacy(handle,regIndex)
  %710 = extractvalue %dx.types.CBufRet.f32 %709, 0
  %711 = extractvalue %dx.types.CBufRet.f32 %709, 1
  %712 = extractvalue %dx.types.CBufRet.f32 %709, 2
  %713 = extractvalue %dx.types.CBufRet.f32 %709, 3
  %714 = fmul fast float %710, %643
  %715 = fadd fast float %714, %711
  %716 = call float @dx.op.unary.f32(i32 7, float %715)  ; Saturate(value)
  %717 = fmul fast float %712, %643
  %718 = fadd fast float %717, %713
  %719 = call float @dx.op.unary.f32(i32 7, float %718)  ; Saturate(value)
  %720 = call float @dx.op.binary.f32(i32 36, float %716, float %719)  ; FMin(a,b)
  %721 = mul nuw nsw i32 %706, 72
  %722 = add nuw nsw i32 %364, %721
  %723 = add nuw nsw i32 %722, 16
  %724 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %723, i32 undef)  ; BufferLoad(srv,index,wot)
  %725 = extractvalue %dx.types.ResRet.f32 %724, 0
  %726 = extractvalue %dx.types.ResRet.f32 %724, 1
  %727 = extractvalue %dx.types.ResRet.f32 %724, 2
  %728 = extractvalue %dx.types.ResRet.f32 %724, 3
  %729 = add nuw nsw i32 %722, 36
  %730 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %729, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.f32 %730, 0
  %732 = add nuw nsw i32 %722, 56
  %733 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %732, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.f32 %733, 0
  %735 = fmul fast float %255, 3.906250e-03
  %736 = fmul fast float %735, %359
  %737 = fmul fast float %736, %731
  %738 = fmul fast float %737, %734
  %739 = extractvalue %dx.types.ResRet.f32 %733, 1
  %740 = fadd fast float %738, %739
  %741 = call float @dx.op.binary.f32(i32 35, float %740, float 0.000000e+00)  ; FMax(a,b)
  %742 = add nuw nsw i32 %722, 32
  %743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.f32 %743, 0
  %745 = fmul fast float %741, %720
  %746 = fmul fast float %745, %744
  %747 = fmul fast float %731, %250
  %748 = fmul fast float %731, %251
  %749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %750 = extractvalue %dx.types.CBufRet.f32 %749, 1
  %751 = add nuw nsw i32 %722, 40
  %752 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %751, i32 undef)  ; BufferLoad(srv,index,wot)
  %753 = extractvalue %dx.types.ResRet.f32 %752, 0
  %754 = extractvalue %dx.types.ResRet.f32 %752, 1
  %755 = extractvalue %dx.types.ResRet.f32 %752, 2
  %756 = extractvalue %dx.types.ResRet.f32 %752, 3
  %757 = fadd fast float %750, %282
  %758 = fadd fast float %757, %755
  %759 = fmul fast float %757, %754
  %760 = call float @dx.op.unary.f32(i32 29, float %759)  ; Round_z(value)
  %761 = fmul fast float %753, %760
  %762 = fsub fast float %757, %761
  %763 = fmul fast float %758, %754
  %764 = call float @dx.op.unary.f32(i32 29, float %763)  ; Round_z(value)
  %765 = fmul fast float %764, %753
  %766 = fsub fast float %758, %765
  %767 = fmul fast float %762, %747
  %768 = fmul fast float %762, %748
  %769 = fmul fast float %766, %747
  %770 = fmul fast float %766, %748
  %771 = fsub fast float %115, %767
  %772 = fsub fast float %116, %768
  %773 = fsub fast float %115, %769
  %774 = fsub fast float %116, %770
  %775 = fsub fast float %755, %762
  %776 = call float @dx.op.unary.f32(i32 6, float %775)  ; FAbs(value)
  %777 = fmul fast float %776, %756
  %778 = call float @dx.op.unary.f32(i32 7, float %777)  ; Saturate(value)
  %779 = fmul fast float %346, 4.000000e+00
  %780 = uitofp i32 %707 to float
  %781 = fadd fast float %780, %779
  %782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %783 = extractvalue %dx.types.CBufRet.f32 %782, 0
  %784 = extractvalue %dx.types.CBufRet.f32 %782, 1
  %785 = extractvalue %dx.types.CBufRet.f32 %782, 2
  %786 = extractvalue %dx.types.CBufRet.f32 %782, 3
  %787 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 0
  store float %783, float* %787, align 4
  %788 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 1
  store float %784, float* %788, align 4
  %789 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 2
  store float %785, float* %789, align 4
  %790 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 3
  store float %786, float* %790, align 4
  %791 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 %707
  %792 = load float, float* %791, align 4, !tbaa !33, !noalias !37
  %793 = fmul fast float %792, %349
  %794 = fmul fast float %771, %725
  %795 = call float @dx.op.tertiary.f32(i32 46, float %726, float %772, float %794)  ; FMad(a,b,c)
  %796 = fmul fast float %771, %727
  %797 = call float @dx.op.tertiary.f32(i32 46, float %728, float %772, float %796)  ; FMad(a,b,c)
  %798 = add nuw nsw i32 %722, 8
  %799 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %798, i32 undef)  ; BufferLoad(srv,index,wot)
  %800 = extractvalue %dx.types.ResRet.f32 %799, 0
  %801 = extractvalue %dx.types.ResRet.f32 %799, 1
  %802 = fadd fast float %800, %795
  %803 = fadd fast float %801, %797
  %804 = fmul fast float %802, %793
  %805 = fmul fast float %803, %793
  %806 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %722, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.f32 %806, 0
  %808 = extractvalue %dx.types.ResRet.f32 %806, 1
  %809 = fmul fast float %804, %807
  %810 = fmul fast float %805, %808
  %811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %812 = extractvalue %dx.types.CBufRet.f32 %811, 2
  %813 = fadd fast float %809, %812
  %814 = fadd fast float %810, %812
  %815 = fmul fast float %773, %725
  %816 = call float @dx.op.tertiary.f32(i32 46, float %726, float %774, float %815)  ; FMad(a,b,c)
  %817 = fmul fast float %773, %727
  %818 = call float @dx.op.tertiary.f32(i32 46, float %728, float %774, float %817)  ; FMad(a,b,c)
  %819 = fadd fast float %800, %816
  %820 = fadd fast float %801, %818
  %821 = fmul fast float %819, %793
  %822 = fmul fast float %820, %793
  %823 = fmul fast float %821, %807
  %824 = fmul fast float %822, %808
  %825 = fadd fast float %823, %812
  %826 = fadd fast float %824, %812
  %827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %12, float %813, float %814, float %781, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %828 = extractvalue %dx.types.ResRet.f32 %827, 0
  %829 = extractvalue %dx.types.ResRet.f32 %827, 1
  %830 = extractvalue %dx.types.ResRet.f32 %827, 2
  %831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %12, float %825, float %826, float %781, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %832 = extractvalue %dx.types.ResRet.f32 %831, 0
  %833 = extractvalue %dx.types.ResRet.f32 %831, 1
  %834 = extractvalue %dx.types.ResRet.f32 %831, 2
  %835 = fsub fast float %832, %828
  %836 = fsub fast float %833, %829
  %837 = fsub fast float %834, %830
  %838 = fmul fast float %835, %778
  %839 = fmul fast float %836, %778
  %840 = fmul fast float %837, %778
  %841 = fadd fast float %838, %828
  %842 = fadd fast float %839, %829
  %843 = fadd fast float %840, %830
  %844 = fmul fast float %841, %725
  %845 = call float @dx.op.tertiary.f32(i32 46, float %842, float %727, float %844)  ; FMad(a,b,c)
  %846 = fmul fast float %841, %726
  %847 = call float @dx.op.tertiary.f32(i32 46, float %842, float %728, float %846)  ; FMad(a,b,c)
  %848 = fdiv fast float 1.000000e+00, %807
  %849 = fdiv fast float 1.000000e+00, %808
  %850 = call float @dx.op.unary.f32(i32 7, float %746)  ; Saturate(value)
  %851 = fmul fast float %848, %845
  %852 = fmul fast float %851, %850
  %853 = fmul fast float %849, %847
  %854 = fmul fast float %853, %850
  %855 = fmul fast float %843, %746
  %856 = fadd fast float %852, %693
  %857 = fadd fast float %854, %694
  %858 = fadd fast float %855, %695
  %859 = add nuw i32 %697, 1
  %860 = icmp eq i32 %859, %689
  br i1 %860, label %861, label %692

; <label>:861                                     ; preds = %692
  br label %862

; <label>:862                                     ; preds = %861, %594
  %863 = phi float [ 0.000000e+00, %594 ], [ %856, %861 ]
  %864 = phi float [ 0.000000e+00, %594 ], [ %857, %861 ]
  %865 = phi float [ 0.000000e+00, %594 ], [ %858, %861 ]
  %866 = fmul fast float %428, %331
  %867 = fmul fast float %866, %863
  %868 = fmul fast float %866, %864
  %869 = fmul fast float %421, %331
  %870 = fmul fast float %869, %428
  %871 = fmul fast float %870, %865
  %872 = fadd fast float %867, %304
  %873 = fadd fast float %868, %305
  %874 = fadd fast float %871, %306
  %875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %876 = fmul fast float %367, %268
  %877 = fadd fast float %876, %368
  %878 = call float @dx.op.unary.f32(i32 7, float %877)  ; Saturate(value)
  %879 = call float @dx.op.binary.f32(i32 35, float %309, float %878)  ; FMax(a,b)
  %880 = fmul fast float %385, %255
  %881 = fadd fast float %880, %386
  %882 = call float @dx.op.binary.f32(i32 35, float %881, float 0.000000e+00)  ; FMax(a,b)
  %883 = fmul fast float %882, %381
  %884 = fadd fast float %883, %382
  %885 = call float @dx.op.unary.f32(i32 7, float %884)  ; Saturate(value)
  %886 = and i32 %340, 2
  %887 = icmp ne i32 %886, 0
  %888 = select i1 %887, float %885, float 0.000000e+00
  %889 = call float @dx.op.binary.f32(i32 35, float %888, float %307)  ; FMax(a,b)
  %890 = fmul fast float %393, %255
  %891 = fadd fast float %890, %394
  %892 = call float @dx.op.binary.f32(i32 35, float %891, float 0.000000e+00)  ; FMax(a,b)
  %893 = fmul fast float %892, %389
  %894 = fadd fast float %893, %390
  %895 = call float @dx.op.unary.f32(i32 7, float %894)  ; Saturate(value)
  %896 = and i32 %340, 4
  %897 = icmp ne i32 %896, 0
  %898 = select i1 %897, float %895, float 0.000000e+00
  %899 = call float @dx.op.binary.f32(i32 35, float %898, float %308)  ; FMax(a,b)
  %900 = fadd fast float %355, %356
  %901 = extractvalue %dx.types.CBufRet.f32 %875, 2
  %902 = fcmp fast oge float %900, %901
  %903 = select i1 %902, i32 4096, i32 0
  %904 = or i32 %405, %903
  br label %905

; <label>:905                                     ; preds = %862, %292
  %906 = phi i32 [ %904, %862 ], [ %293, %292 ]
  %907 = phi float [ %609, %862 ], [ %294, %292 ]
  %908 = phi float [ %610, %862 ], [ %295, %292 ]
  %909 = phi float [ %611, %862 ], [ %296, %292 ]
  %910 = phi float [ %615, %862 ], [ %297, %292 ]
  %911 = phi float [ %616, %862 ], [ %298, %292 ]
  %912 = phi float [ %617, %862 ], [ %299, %292 ]
  %913 = phi float [ %621, %862 ], [ %300, %292 ]
  %914 = phi float [ %622, %862 ], [ %301, %292 ]
  %915 = phi float [ %623, %862 ], [ %302, %292 ]
  %916 = phi float [ %630, %862 ], [ %303, %292 ]
  %917 = phi float [ %872, %862 ], [ %304, %292 ]
  %918 = phi float [ %873, %862 ], [ %305, %292 ]
  %919 = phi float [ %874, %862 ], [ %306, %292 ]
  %920 = phi float [ %889, %862 ], [ %307, %292 ]
  %921 = phi float [ %899, %862 ], [ %308, %292 ]
  %922 = phi float [ %879, %862 ], [ %309, %292 ]
  %923 = phi float [ %411, %862 ], [ %310, %292 ]
  %924 = add nuw i32 %311, 1
  %925 = icmp eq i32 %924, %274
  br i1 %925, label %926, label %292

; <label>:926                                     ; preds = %905
  br label %927

; <label>:927                                     ; preds = %926, %30
  %928 = phi i32 [ %151, %30 ], [ %906, %926 ]
  %929 = phi float [ 0.000000e+00, %30 ], [ %907, %926 ]
  %930 = phi float [ 0.000000e+00, %30 ], [ %908, %926 ]
  %931 = phi float [ 0.000000e+00, %30 ], [ %909, %926 ]
  %932 = phi float [ 0.000000e+00, %30 ], [ %910, %926 ]
  %933 = phi float [ 0.000000e+00, %30 ], [ %911, %926 ]
  %934 = phi float [ 0.000000e+00, %30 ], [ %912, %926 ]
  %935 = phi float [ 0.000000e+00, %30 ], [ %913, %926 ]
  %936 = phi float [ 0.000000e+00, %30 ], [ %914, %926 ]
  %937 = phi float [ 0.000000e+00, %30 ], [ %915, %926 ]
  %938 = phi float [ 0.000000e+00, %30 ], [ %916, %926 ]
  %939 = phi float [ 0.000000e+00, %30 ], [ %917, %926 ]
  %940 = phi float [ 0.000000e+00, %30 ], [ %918, %926 ]
  %941 = phi float [ 0.000000e+00, %30 ], [ %919, %926 ]
  %942 = phi float [ 0.000000e+00, %30 ], [ %920, %926 ]
  %943 = phi float [ 0.000000e+00, %30 ], [ %921, %926 ]
  %944 = phi float [ 0.000000e+00, %30 ], [ %922, %926 ]
  %945 = phi float [ 0.000000e+00, %30 ], [ %923, %926 ]
  %946 = fcmp fast ole float %938, 0x3F69A5C380000000
  %947 = fmul fast float %938, 0x4029D70A40000000
  %948 = call float @dx.op.unary.f32(i32 23, float %938)  ; Log(value)
  %949 = fmul fast float %948, 0x3FDAAAAAA0000000
  %950 = call float @dx.op.unary.f32(i32 21, float %949)  ; Exp(value)
  %951 = fmul fast float %950, 0x3FF0E147A0000000
  %952 = fadd fast float %951, 0xBFAC28F5C0000000
  %953 = select i1 %946, float %947, float %952
  %954 = fmul fast float %953, 2.550000e+02
  %955 = call float @dx.op.binary.f32(i32 35, float %954, float 0.000000e+00)  ; FMax(a,b)
  %956 = call float @dx.op.binary.f32(i32 36, float %955, float 2.550000e+02)  ; FMin(a,b)
  %957 = fptoui float %956 to i32
  %958 = uitofp i32 %957 to float
  %959 = fmul fast float %958, 0x3F70101020000000
  %960 = fcmp fast ole float %959, 0x3FA4B5DCC0000000
  %961 = fmul fast float %958, 0x3F33E45680000000
  %962 = fmul fast float %958, 0x3F6E736160000000
  %963 = fadd fast float %962, 0x3FAAB12340000000
  %964 = call float @dx.op.unary.f32(i32 23, float %963)  ; Log(value)
  %965 = fmul fast float %964, 0x4003333340000000
  %966 = call float @dx.op.unary.f32(i32 21, float %965)  ; Exp(value)
  %967 = select i1 %960, float %961, float %966
  %968 = call float @dx.op.unary.f32(i32 7, float %967)  ; Saturate(value)
  %969 = call float @dx.op.binary.f32(i32 35, float %968, float %944)  ; FMax(a,b)
  %970 = fadd fast float %969, 1.000000e+00
  %971 = fmul fast float %970, %942
  %972 = fmul fast float %970, %943
  %973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %974 = extractvalue %dx.types.CBufRet.f32 %973, 1
  %975 = fcmp fast oge float %971, %974
  %976 = select i1 %975, i32 1024, i32 0
  %977 = or i32 %976, %928
  %978 = fcmp fast oge float %972, %974
  %979 = select i1 %978, i32 2048, i32 0
  %980 = or i32 %977, %979
  %981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %982 = extractvalue %dx.types.CBufRet.f32 %981, 3
  %983 = fadd fast float %982, %130
  %984 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %152, i32 undef)  ; BufferLoad(srv,index,wot)
  %985 = extractvalue %dx.types.ResRet.f32 %984, 0
  %986 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %155, i32 undef)  ; BufferLoad(srv,index,wot)
  %987 = extractvalue %dx.types.ResRet.f32 %986, 0
  %988 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %164, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.f32 %988, 0
  %990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %176, i32 undef)  ; BufferLoad(srv,index,wot)
  %991 = extractvalue %dx.types.ResRet.i32 %990, 0
  %992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %993 = extractvalue %dx.types.CBufRet.f32 %992, 2
  %994 = fmul fast float %993, %983
  %995 = fmul fast float %993, %133
  %996 = extractvalue %dx.types.CBufRet.f32 %992, 3
  %997 = fadd fast float %994, %996
  %998 = fadd fast float %995, %996
  %999 = add i32 %991, 0
  %1000 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %999, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1001 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1000, i32 0)  ; GetDimensions(handle,mipLevel)
  %1002 = extractvalue %dx.types.Dimensions %1001, 0
  %1003 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1002)  ; FirstbitLo(value)
  %1004 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1005 = extractvalue %dx.types.CBufRet.i32 %1004, 1
  %1006 = sub nsw i32 %1005, %1003
  %1007 = sitofp i32 %1006 to float
  %1008 = fsub fast float %147, %1007
  %1009 = call float @dx.op.binary.f32(i32 35, float %1008, float 0.000000e+00)  ; FMax(a,b)
  %1010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1000, %dx.types.Handle %11, float %997, float %998, float %989, float undef, i32 0, i32 0, i32 undef, float %1009)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1011 = extractvalue %dx.types.ResRet.f32 %1010, 0
  %1012 = fmul fast float %1011, %985
  %1013 = fsub fast float %133, %982
  %1014 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1015 = extractvalue %dx.types.ResRet.f32 %1014, 0
  %1016 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %155, i32 undef)  ; BufferLoad(srv,index,wot)
  %1017 = extractvalue %dx.types.ResRet.f32 %1016, 0
  %1018 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1019 = extractvalue %dx.types.ResRet.f32 %1018, 0
  %1020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.i32 %1020, 0
  %1022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.f32 %1022, 2
  %1024 = fmul fast float %1023, %130
  %1025 = fmul fast float %1023, %1013
  %1026 = extractvalue %dx.types.CBufRet.f32 %1022, 3
  %1027 = fadd fast float %1024, %1026
  %1028 = fadd fast float %1025, %1026
  %1029 = add i32 %1021, 0
  %1030 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1029, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1031 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1030, i32 0)  ; GetDimensions(handle,mipLevel)
  %1032 = extractvalue %dx.types.Dimensions %1031, 0
  %1033 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1032)  ; FirstbitLo(value)
  %1034 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1035 = extractvalue %dx.types.CBufRet.i32 %1034, 1
  %1036 = sub nsw i32 %1035, %1033
  %1037 = sitofp i32 %1036 to float
  %1038 = fsub fast float %147, %1037
  %1039 = call float @dx.op.binary.f32(i32 35, float %1038, float 0.000000e+00)  ; FMax(a,b)
  %1040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1030, %dx.types.Handle %11, float %1027, float %1028, float %1019, float undef, i32 0, i32 0, i32 undef, float %1039)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1041 = extractvalue %dx.types.ResRet.f32 %1040, 0
  %1042 = fmul fast float %1041, %1015
  %1043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1044 = extractvalue %dx.types.CBufRet.f32 %1043, 2
  %1045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1046 = extractvalue %dx.types.CBufRet.f32 %1045, 3
  %1047 = fmul fast float %1046, %1044
  %1048 = fsub fast float %987, %215
  %1049 = fadd fast float %1048, %1012
  %1050 = fsub fast float %1017, %215
  %1051 = fadd fast float %1050, %1042
  %1052 = fmul fast float %1049, %1047
  %1053 = fsub fast float -0.000000e+00, %1052
  %1054 = fmul fast float %1051, %1047
  %1055 = fsub fast float -0.000000e+00, %1054
  %1056 = fmul fast float %1047, %1047
  %1057 = call float @dx.op.dot3.f32(i32 55, float %1053, float %1055, float %1056, float %1053, float %1055, float %1056)  ; Dot3(ax,ay,az,bx,by,bz)
  %1058 = call float @dx.op.unary.f32(i32 25, float %1057)  ; Rsqrt(value)
  %1059 = fmul fast float %1058, %1053
  %1060 = fmul fast float %1058, %1055
  %1061 = fmul fast float %1056, %1058
  %1062 = fsub fast float -0.000000e+00, %1060
  %1063 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float %1061, float %1062, float 0.000000e+00, float %1061, float %1062)  ; Dot3(ax,ay,az,bx,by,bz)
  %1064 = call float @dx.op.unary.f32(i32 25, float %1063)  ; Rsqrt(value)
  %1065 = fmul fast float %1061, %1064
  %1066 = fmul fast float %1064, %1062
  %1067 = fmul fast float %1065, %1061
  %1068 = fmul fast float %1066, %1060
  %1069 = fsub fast float %1067, %1068
  %1070 = fmul fast float %1066, %1059
  %1071 = fmul fast float %1059, %1065
  %1072 = fsub fast float -0.000000e+00, %1071
  %1073 = call float @dx.op.dot3.f32(i32 55, float %1069, float %1070, float %1072, float %1069, float %1070, float %1072)  ; Dot3(ax,ay,az,bx,by,bz)
  %1074 = call float @dx.op.unary.f32(i32 25, float %1073)  ; Rsqrt(value)
  %1075 = fmul fast float %1069, %1074
  %1076 = fmul fast float %1070, %1074
  %1077 = fmul fast float %1074, %1072
  %1078 = fadd fast float %1065, %936
  %1079 = fadd fast float %1066, %937
  %1080 = call float @dx.op.dot3.f32(i32 55, float %935, float %1078, float %1079, float %935, float %1078, float %1079)  ; Dot3(ax,ay,az,bx,by,bz)
  %1081 = call float @dx.op.unary.f32(i32 25, float %1080)  ; Rsqrt(value)
  %1082 = fmul fast float %1081, %935
  %1083 = fmul fast float %1081, %1078
  %1084 = fmul fast float %1081, %1079
  %1085 = fadd fast float %1075, %932
  %1086 = fadd fast float %1076, %933
  %1087 = fadd fast float %1077, %934
  %1088 = call float @dx.op.dot3.f32(i32 55, float %1085, float %1086, float %1087, float %1085, float %1086, float %1087)  ; Dot3(ax,ay,az,bx,by,bz)
  %1089 = call float @dx.op.unary.f32(i32 25, float %1088)  ; Rsqrt(value)
  %1090 = fmul fast float %1089, %1085
  %1091 = fmul fast float %1089, %1086
  %1092 = fmul fast float %1089, %1087
  %1093 = fmul fast float %1091, %1084
  %1094 = fmul fast float %1092, %1083
  %1095 = fsub fast float %1093, %1094
  %1096 = fmul fast float %1092, %1082
  %1097 = fmul fast float %1090, %1084
  %1098 = fsub fast float %1096, %1097
  %1099 = fmul fast float %1090, %1083
  %1100 = fmul fast float %1091, %1082
  %1101 = fsub fast float %1099, %1100
  %1102 = call float @dx.op.dot3.f32(i32 55, float %1095, float %1098, float %1101, float %1095, float %1098, float %1101)  ; Dot3(ax,ay,az,bx,by,bz)
  %1103 = call float @dx.op.unary.f32(i32 25, float %1102)  ; Rsqrt(value)
  %1104 = fmul fast float %1095, %1103
  %1105 = fmul fast float %1098, %1103
  %1106 = fmul fast float %1101, %1103
  %1107 = fadd fast float %929, %115
  %1108 = fadd fast float %930, %116
  %1109 = fadd fast float %931, %215
  %1110 = fmul fast float %1090, %939
  %1111 = call float @dx.op.tertiary.f32(i32 46, float %940, float %1082, float %1110)  ; FMad(a,b,c)
  %1112 = call float @dx.op.tertiary.f32(i32 46, float %941, float %1104, float %1111)  ; FMad(a,b,c)
  %1113 = fmul fast float %1091, %939
  %1114 = call float @dx.op.tertiary.f32(i32 46, float %940, float %1083, float %1113)  ; FMad(a,b,c)
  %1115 = call float @dx.op.tertiary.f32(i32 46, float %941, float %1105, float %1114)  ; FMad(a,b,c)
  %1116 = fmul fast float %1092, %939
  %1117 = call float @dx.op.tertiary.f32(i32 46, float %940, float %1084, float %1116)  ; FMad(a,b,c)
  %1118 = call float @dx.op.tertiary.f32(i32 46, float %941, float %1106, float %1117)  ; FMad(a,b,c)
  %1119 = fadd fast float %1107, %1112
  %1120 = fadd fast float %1108, %1115
  %1121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1122 = extractvalue %dx.types.CBufRet.f32 %1121, 0
  %1123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1124 = extractvalue %dx.types.CBufRet.f32 %1123, 0
  %1125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1126 = extractvalue %dx.types.CBufRet.f32 %1125, 0
  %1127 = extractvalue %dx.types.CBufRet.f32 %1121, 1
  %1128 = extractvalue %dx.types.CBufRet.f32 %1123, 1
  %1129 = extractvalue %dx.types.CBufRet.f32 %1125, 1
  %1130 = extractvalue %dx.types.CBufRet.f32 %1121, 2
  %1131 = extractvalue %dx.types.CBufRet.f32 %1123, 2
  %1132 = extractvalue %dx.types.CBufRet.f32 %1125, 2
  %1133 = extractvalue %dx.types.CBufRet.f32 %1121, 3
  %1134 = extractvalue %dx.types.CBufRet.f32 %1123, 3
  %1135 = extractvalue %dx.types.CBufRet.f32 %1125, 3
  %1136 = fadd fast float %1119, %1133
  %1137 = fadd fast float %1120, %1134
  %1138 = fadd fast float %1109, %945
  %1139 = fadd fast float %1138, %1118
  %1140 = fadd fast float %1139, %1135
  %1141 = fmul fast float %1136, %1122
  %1142 = call float @dx.op.tertiary.f32(i32 46, float %1137, float %1127, float %1141)  ; FMad(a,b,c)
  %1143 = call float @dx.op.tertiary.f32(i32 46, float %1140, float %1130, float %1142)  ; FMad(a,b,c)
  %1144 = fmul fast float %1136, %1124
  %1145 = call float @dx.op.tertiary.f32(i32 46, float %1137, float %1128, float %1144)  ; FMad(a,b,c)
  %1146 = call float @dx.op.tertiary.f32(i32 46, float %1140, float %1131, float %1145)  ; FMad(a,b,c)
  %1147 = fmul fast float %1136, %1126
  %1148 = call float @dx.op.tertiary.f32(i32 46, float %1137, float %1129, float %1147)  ; FMad(a,b,c)
  %1149 = call float @dx.op.tertiary.f32(i32 46, float %1140, float %1132, float %1148)  ; FMad(a,b,c)
  %1150 = fsub fast float %1143, %1133
  %1151 = fsub fast float %1146, %1134
  %1152 = fsub fast float %1149, %1135
  %1153 = fmul fast float %1122, %1104
  %1154 = call float @dx.op.tertiary.f32(i32 46, float %1105, float %1127, float %1153)  ; FMad(a,b,c)
  %1155 = call float @dx.op.tertiary.f32(i32 46, float %1106, float %1130, float %1154)  ; FMad(a,b,c)
  %1156 = fmul fast float %1124, %1104
  %1157 = call float @dx.op.tertiary.f32(i32 46, float %1105, float %1128, float %1156)  ; FMad(a,b,c)
  %1158 = call float @dx.op.tertiary.f32(i32 46, float %1106, float %1131, float %1157)  ; FMad(a,b,c)
  %1159 = fmul fast float %1126, %1104
  %1160 = call float @dx.op.tertiary.f32(i32 46, float %1105, float %1129, float %1159)  ; FMad(a,b,c)
  %1161 = call float @dx.op.tertiary.f32(i32 46, float %1106, float %1132, float %1160)  ; FMad(a,b,c)
  %1162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 208)  ; CBufferLoadLegacy(handle,regIndex)
  %1163 = extractvalue %dx.types.CBufRet.f32 %1162, 2
  %1164 = fadd fast float %1152, %1163
  %1165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1166 = extractvalue %dx.types.CBufRet.f32 %1165, 0
  %1167 = extractvalue %dx.types.CBufRet.f32 %1165, 1
  %1168 = extractvalue %dx.types.CBufRet.f32 %1165, 2
  %1169 = fsub fast float %1150, %1166
  %1170 = fsub fast float %1151, %1167
  %1171 = fsub fast float %1164, %1168
  %1172 = fmul fast float %130, 6.553500e+04
  %1173 = call float @dx.op.unary.f32(i32 26, float %1172)  ; Round_ne(value)
  %1174 = fptosi float %1173 to i32
  %1175 = call i32 @dx.op.binary.i32(i32 37, i32 %1174, i32 0)  ; IMax(a,b)
  %1176 = call i32 @dx.op.binary.i32(i32 38, i32 %1175, i32 65535)  ; IMin(a,b)
  %1177 = fmul fast float %133, 6.553500e+04
  %1178 = call float @dx.op.unary.f32(i32 26, float %1177)  ; Round_ne(value)
  %1179 = fptosi float %1178 to i32
  %1180 = call i32 @dx.op.binary.i32(i32 37, i32 %1179, i32 0)  ; IMax(a,b)
  %1181 = call i32 @dx.op.binary.i32(i32 38, i32 %1180, i32 65535)  ; IMin(a,b)
  %1182 = shl i32 %1181, 16
  %1183 = or i32 %1182, %1176
  %1184 = call float @dx.op.unary.f32(i32 6, float %1155)  ; FAbs(value)
  %1185 = call float @dx.op.unary.f32(i32 6, float %1158)  ; FAbs(value)
  %1186 = fadd fast float %1185, %1184
  %1187 = call float @dx.op.unary.f32(i32 6, float %1161)  ; FAbs(value)
  %1188 = fadd fast float %1186, %1187
  %1189 = fdiv fast float %1155, %1188
  %1190 = fdiv fast float %1158, %1188
  %1191 = fdiv fast float %1161, %1188
  %1192 = fcmp fast oge float %1191, 0.000000e+00
  %1193 = call float @dx.op.unary.f32(i32 6, float %1190)  ; FAbs(value)
  %1194 = call float @dx.op.unary.f32(i32 6, float %1189)  ; FAbs(value)
  %1195 = fsub fast float 1.000000e+00, %1193
  %1196 = fsub fast float 1.000000e+00, %1194
  %1197 = fcmp fast oge float %1189, 0.000000e+00
  %1198 = select i1 %1197, float 1.000000e+00, float -1.000000e+00
  %1199 = fcmp fast oge float %1190, 0.000000e+00
  %1200 = select i1 %1199, float 1.000000e+00, float -1.000000e+00
  %1201 = fmul fast float %1195, %1198
  %1202 = fmul fast float %1196, %1200
  %1203 = select i1 %1192, float %1189, float %1201
  %1204 = select i1 %1192, float %1190, float %1202
  %1205 = fmul fast float %1203, 1.275000e+02
  %1206 = fmul fast float %1204, 1.275000e+02
  %1207 = fadd fast float %1205, 1.275000e+02
  %1208 = fadd fast float %1206, 1.275000e+02
  %1209 = call float @dx.op.unary.f32(i32 26, float %1207)  ; Round_ne(value)
  %1210 = call float @dx.op.unary.f32(i32 26, float %1208)  ; Round_ne(value)
  %1211 = fptoui float %1209 to i32
  %1212 = fptoui float %1210 to i32
  %1213 = shl i32 %1212, 8
  %1214 = shl i32 %957, 16
  %1215 = or i32 %1211, %1214
  %1216 = or i32 %1215, %1213
  %1217 = mul i32 %29, 20
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %1217, i32 undef, float %1169, float %1170, float %1171, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1218 = add i32 %1217, 12
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1218, i32 undef, i32 %1183, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1219 = add i32 %1217, 16
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1219, i32 undef, i32 %1216, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1220 = fadd float %1169, 1.310720e+05
  %1221 = fadd float %1170, 1.310720e+05
  %1222 = fadd float %1171, 1.310720e+05
  br label %1223

; <label>:1223                                    ; preds = %927, %0
  %1224 = phi float [ %1220, %927 ], [ 1.310720e+05, %0 ]
  %1225 = phi float [ %1221, %927 ], [ 1.310720e+05, %0 ]
  %1226 = phi float [ %1222, %927 ], [ 1.310720e+05, %0 ]
  %1227 = phi i1 [ true, %927 ], [ false, %0 ]
  %1228 = phi i32 [ %980, %927 ], [ 0, %0 ]
  %1229 = call float @dx.op.binary.f32(i32 35, float %1224, float 0.000000e+00)  ; FMax(a,b)
  %1230 = call float @dx.op.binary.f32(i32 35, float %1225, float 0.000000e+00)  ; FMax(a,b)
  %1231 = call float @dx.op.binary.f32(i32 35, float %1226, float 0.000000e+00)  ; FMax(a,b)
  %1232 = bitcast float %1229 to i32
  %1233 = bitcast float %1230 to i32
  %1234 = bitcast float %1231 to i32
  %1235 = select i1 %1227, i32 %1232, i32 -1
  %1236 = select i1 %1227, i32 %1233, i32 -1
  %1237 = select i1 %1227, i32 %1234, i32 -1
  %1238 = select i1 %1227, i32 %1232, i32 0
  %1239 = select i1 %1227, i32 %1233, i32 0
  %1240 = select i1 %1227, i32 %1234, i32 0
  %1241 = shl i32 %19, 6
  %1242 = udiv i32 %1241, 25
  %1243 = sub nsw i32 %21, %1242
  %1244 = icmp ult i32 %20, 8
  br i1 %1244, label %1245, label %1253, !dx.controlflow.hints !42

; <label>:1245                                    ; preds = %1223
  %1246 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileFeaturesShared@@3PAIA", i32 0, i32 %20
  store i32 0, i32 addrspace(3)* %1246, align 4, !tbaa !43
  %1247 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinXShared@@3PAIA", i32 0, i32 %20
  store i32 -1, i32 addrspace(3)* %1247, align 4, !tbaa !43
  %1248 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinYShared@@3PAIA", i32 0, i32 %20
  store i32 -1, i32 addrspace(3)* %1248, align 4, !tbaa !43
  %1249 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinZShared@@3PAIA", i32 0, i32 %20
  store i32 -1, i32 addrspace(3)* %1249, align 4, !tbaa !43
  %1250 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxXShared@@3PAIA", i32 0, i32 %20
  store i32 0, i32 addrspace(3)* %1250, align 4, !tbaa !43
  %1251 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxYShared@@3PAIA", i32 0, i32 %20
  store i32 0, i32 addrspace(3)* %1251, align 4, !tbaa !43
  %1252 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxZShared@@3PAIA", i32 0, i32 %20
  store i32 0, i32 addrspace(3)* %1252, align 4, !tbaa !43
  br label %1253

; <label>:1253                                    ; preds = %1245, %1223
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %25, label %1254, label %1269, !dx.controlflow.hints !45

; <label>:1254                                    ; preds = %1253
  %1255 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileFeaturesShared@@3PAIA", i32 0, i32 %1243
  %1256 = atomicrmw or i32 addrspace(3)* %1255, i32 %1228 seq_cst
  %1257 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinXShared@@3PAIA", i32 0, i32 %1243
  %1258 = atomicrmw umin i32 addrspace(3)* %1257, i32 %1235 seq_cst
  %1259 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinYShared@@3PAIA", i32 0, i32 %1243
  %1260 = atomicrmw umin i32 addrspace(3)* %1259, i32 %1236 seq_cst
  %1261 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinZShared@@3PAIA", i32 0, i32 %1243
  %1262 = atomicrmw umin i32 addrspace(3)* %1261, i32 %1237 seq_cst
  %1263 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxXShared@@3PAIA", i32 0, i32 %1243
  %1264 = atomicrmw umax i32 addrspace(3)* %1263, i32 %1238 seq_cst
  %1265 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxYShared@@3PAIA", i32 0, i32 %1243
  %1266 = atomicrmw umax i32 addrspace(3)* %1265, i32 %1239 seq_cst
  %1267 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxZShared@@3PAIA", i32 0, i32 %1243
  %1268 = atomicrmw umax i32 addrspace(3)* %1267, i32 %1240 seq_cst
  br label %1269

; <label>:1269                                    ; preds = %1254, %1253
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1270 = and i1 %1244, %25
  br i1 %1270, label %1271, label %1307, !dx.controlflow.hints !46

; <label>:1271                                    ; preds = %1269
  %1272 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileFeaturesShared@@3PAIA", i32 0, i32 %20
  %1273 = load i32, i32 addrspace(3)* %1272, align 4, !tbaa !43
  %1274 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1275 = extractvalue %dx.types.CBufRet.i32 %1274, 2
  %1276 = add i32 %1242, %20
  %1277 = add i32 %1276, %1275
  %1278 = shl i32 %1277, 2
  %1279 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %1278, i32 undef, i32 undef, i32 %1273)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1280 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinXShared@@3PAIA", i32 0, i32 %20
  %1281 = load i32, i32 addrspace(3)* %1280, align 4, !tbaa !43
  %1282 = xor i32 %1281, -1
  %1283 = mul i32 %1277, 24
  %1284 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %1283, i32 undef, i32 undef, i32 %1282)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1285 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinYShared@@3PAIA", i32 0, i32 %20
  %1286 = load i32, i32 addrspace(3)* %1285, align 4, !tbaa !43
  %1287 = xor i32 %1286, -1
  %1288 = or i32 %1283, 4
  %1289 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %1288, i32 undef, i32 undef, i32 %1287)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1290 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinZShared@@3PAIA", i32 0, i32 %20
  %1291 = load i32, i32 addrspace(3)* %1290, align 4, !tbaa !43
  %1292 = xor i32 %1291, -1
  %1293 = add i32 %1283, 8
  %1294 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %1293, i32 undef, i32 undef, i32 %1292)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1295 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxXShared@@3PAIA", i32 0, i32 %20
  %1296 = load i32, i32 addrspace(3)* %1295, align 4, !tbaa !43
  %1297 = add i32 %1283, 12
  %1298 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %1297, i32 undef, i32 undef, i32 %1296)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1299 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxYShared@@3PAIA", i32 0, i32 %20
  %1300 = load i32, i32 addrspace(3)* %1299, align 4, !tbaa !43
  %1301 = add i32 %1283, 16
  %1302 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %1301, i32 undef, i32 undef, i32 %1300)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1303 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxZShared@@3PAIA", i32 0, i32 %20
  %1304 = load i32, i32 addrspace(3)* %1303, align 4, !tbaa !43
  %1305 = add i32 %1283, 20
  %1306 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %1305, i32 undef, i32 undef, i32 %1304)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1307

; <label>:1307                                    ; preds = %1271, %1269
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
!27 = !{void ()* @cs_water_tile_process_verts_5x5, !"cs_water_tile_process_verts_5x5", null, !4, !28}
!28 = !{i32 0, i64 272, i32 4, !29}
!29 = !{i32 64, i32 1, i32 1}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = !{!34, !34, i64 0}
!34 = !{!"float", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !{!38, !40, !41}
!38 = distinct !{!38, !39, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outDisplacement"}
!39 = distinct !{!39, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z"}
!40 = distinct !{!40, !39, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outNormal"}
!41 = distinct !{!41, !39, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outWaveParticleFoamMask"}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = !{!44, !44, i64 0}
!44 = !{!"int", !35, i64 0}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}

