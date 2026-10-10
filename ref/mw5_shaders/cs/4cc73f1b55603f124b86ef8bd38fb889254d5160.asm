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
; shader hash: 6e74ee53ad2d7a7f0c4f3d4930d8f786
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

define void @cs_water_tile_process_verts_3x3() {
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
  %21 = udiv i32 %18, 9
  %22 = urem i32 %18, 9
  %23 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = extractvalue %dx.types.CBufRet.i32 %23, 1
  %25 = icmp ult i32 %18, %24
  %26 = extractvalue %dx.types.CBufRet.i32 %23, 0
  %27 = mul i32 %21, 9
  %28 = add i32 %22, %27
  %29 = add i32 %28, %26
  br i1 %25, label %30, label %1215, !dx.controlflow.hints !30

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
  %63 = add nuw nsw i32 %55, 116
  %64 = urem i32 %22, 3
  %65 = udiv i32 %22, 3
  %66 = fmul fast float %44, 5.000000e-01
  %67 = fadd fast float %58, %53
  %68 = uitofp i32 %64 to float
  %69 = fmul fast float %68, %66
  %70 = fadd fast float %67, %69
  %71 = fadd fast float %61, %54
  %72 = uitofp i32 %65 to float
  %73 = fmul fast float %72, %66
  %74 = fadd fast float %71, %73
  %75 = lshr i32 %36, 19
  %76 = and i32 %75, 1
  %77 = and i32 %36, 262144
  %78 = icmp ne i32 %77, 0
  %79 = add nuw nsw i32 %42, %76
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 %79)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = extractvalue %dx.types.CBufRet.f32 %80, 1
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = extractvalue %dx.types.CBufRet.f32 %83, 1
  %86 = extractvalue %dx.types.CBufRet.f32 %83, 2
  %87 = fsub fast float %70, %84
  %88 = fsub fast float %74, %85
  %89 = fmul fast float %87, %87
  %90 = fmul fast float %88, %88
  %91 = fmul fast float %86, %86
  %92 = fadd fast float %90, %91
  %93 = fadd fast float %92, %89
  %94 = call float @dx.op.unary.f32(i32 24, float %93)  ; Sqrt(value)
  %95 = fsub fast float %94, %81
  %96 = fmul fast float %95, %82
  %97 = call float @dx.op.unary.f32(i32 7, float %96)  ; Saturate(value)
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 2
  %100 = select i1 %78, float -1.000000e+00, float -0.000000e+00
  %101 = fadd fast float %97, %100
  %102 = fsub fast float %101, %99
  %103 = call float @dx.op.unary.f32(i32 7, float %102)  ; Saturate(value)
  %104 = fmul fast float %68, 5.000000e-01
  %105 = fmul fast float %72, 5.000000e-01
  %106 = call float @dx.op.unary.f32(i32 22, float %104)  ; Frc(value)
  %107 = call float @dx.op.unary.f32(i32 22, float %105)  ; Frc(value)
  %108 = fmul fast float %103, %44
  %109 = fmul fast float %108, %106
  %110 = fmul fast float %108, %107
  %111 = fsub fast float %70, %109
  %112 = fsub fast float %74, %110
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = fmul fast float %114, %94
  %116 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %117 = fadd fast float %115, %116
  %118 = call float @dx.op.unary.f32(i32 7, float %117)  ; Saturate(value)
  %119 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %120 = fmul fast float %119, %94
  %121 = extractvalue %dx.types.CBufRet.f32 %113, 3
  %122 = fadd fast float %120, %121
  %123 = call float @dx.op.unary.f32(i32 7, float %122)  ; Saturate(value)
  %124 = fsub fast float %111, %58
  %125 = extractvalue %dx.types.CBufRet.f32 %51, 3
  %126 = fmul fast float %125, %124
  %127 = fsub fast float %112, %61
  %128 = fmul fast float %125, %127
  %129 = fsub fast float 1.000000e+00, %128
  %130 = fmul fast float %66, %125
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 2
  %133 = fmul fast float %130, %132
  %134 = call float @dx.op.unary.f32(i32 23, float %133)  ; Log(value)
  %135 = fadd fast float %134, %103
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 3
  %138 = fadd fast float %135, %137
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 3
  %141 = extractvalue %dx.types.CBufRet.f32 %139, 2
  %142 = call float @dx.op.binary.f32(i32 35, float %138, float %141)  ; FMax(a,b)
  %143 = call float @dx.op.binary.f32(i32 36, float %142, float %140)  ; FMin(a,b)
  %144 = add nuw nsw i32 %55, 20
  %145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %144, i32 undef)  ; BufferLoad(srv,index,wot)
  %146 = extractvalue %dx.types.ResRet.f32 %145, 0
  %147 = add nuw nsw i32 %55, 24
  %148 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %147, i32 undef)  ; BufferLoad(srv,index,wot)
  %149 = extractvalue %dx.types.ResRet.f32 %148, 0
  %150 = add nuw nsw i32 %55, 28
  %151 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %150, i32 undef)  ; BufferLoad(srv,index,wot)
  %152 = extractvalue %dx.types.ResRet.f32 %151, 0
  %153 = add nuw nsw i32 %55, 32
  %154 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %153, i32 undef)  ; BufferLoad(srv,index,wot)
  %155 = extractvalue %dx.types.ResRet.f32 %154, 0
  %156 = add nuw nsw i32 %55, 40
  %157 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %156, i32 undef)  ; BufferLoad(srv,index,wot)
  %158 = extractvalue %dx.types.ResRet.f32 %157, 0
  %159 = add nuw nsw i32 %55, 44
  %160 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %159, i32 undef)  ; BufferLoad(srv,index,wot)
  %161 = extractvalue %dx.types.ResRet.f32 %160, 0
  %162 = add nuw nsw i32 %55, 48
  %163 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %162, i32 undef)  ; BufferLoad(srv,index,wot)
  %164 = extractvalue %dx.types.ResRet.f32 %163, 0
  %165 = add nuw nsw i32 %55, 52
  %166 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %165, i32 undef)  ; BufferLoad(srv,index,wot)
  %167 = extractvalue %dx.types.ResRet.f32 %166, 0
  %168 = add nuw nsw i32 %55, 96
  %169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %168, i32 undef)  ; BufferLoad(srv,index,wot)
  %170 = extractvalue %dx.types.ResRet.i32 %169, 0
  %171 = add nuw nsw i32 %55, 100
  %172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %171, i32 undef)  ; BufferLoad(srv,index,wot)
  %173 = extractvalue %dx.types.ResRet.i32 %172, 0
  %174 = add nuw nsw i32 %55, 104
  %175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %174, i32 undef)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.i32 %175, 0
  %177 = add nuw nsw i32 %55, 108
  %178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %177, i32 undef)  ; BufferLoad(srv,index,wot)
  %179 = extractvalue %dx.types.ResRet.i32 %178, 0
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 2
  %182 = fmul fast float %181, %126
  %183 = fmul fast float %181, %129
  %184 = extractvalue %dx.types.CBufRet.f32 %180, 3
  %185 = fadd fast float %182, %184
  %186 = fadd fast float %183, %184
  %187 = extractvalue %dx.types.CBufRet.f32 %180, 0
  %188 = fmul fast float %187, %126
  %189 = fmul fast float %187, %129
  %190 = extractvalue %dx.types.CBufRet.f32 %180, 1
  %191 = fadd fast float %188, %190
  %192 = fadd fast float %189, %190
  %193 = add i32 %170, 0
  %194 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %193, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %195 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %194, i32 0)  ; GetDimensions(handle,mipLevel)
  %196 = extractvalue %dx.types.Dimensions %195, 0
  %197 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %196)  ; FirstbitLo(value)
  %198 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.i32 %198, 1
  %200 = sub nsw i32 %199, %197
  %201 = sitofp i32 %200 to float
  %202 = fsub fast float %143, %201
  %203 = call float @dx.op.binary.f32(i32 35, float %202, float 0.000000e+00)  ; FMax(a,b)
  %204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %194, %dx.types.Handle %11, float %185, float %186, float %158, float undef, i32 0, i32 0, i32 undef, float %203)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %205 = extractvalue %dx.types.ResRet.f32 %204, 0
  %206 = fmul fast float %205, %146
  %207 = fadd fast float %206, %149
  %208 = add i32 %173, 0
  %209 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %208, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %210 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %209, i32 0)  ; GetDimensions(handle,mipLevel)
  %211 = extractvalue %dx.types.Dimensions %210, 0
  %212 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %211)  ; FirstbitLo(value)
  %213 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.i32 %213, 1
  %215 = sub nsw i32 %214, %212
  %216 = sitofp i32 %215 to float
  %217 = fsub fast float %143, %216
  %218 = call float @dx.op.binary.f32(i32 35, float %217, float 0.000000e+00)  ; FMax(a,b)
  %219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %209, %dx.types.Handle %11, float %191, float %192, float %161, float undef, i32 0, i32 0, i32 undef, float %218)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %220 = extractvalue %dx.types.ResRet.f32 %219, 0
  %221 = fmul fast float %220, %152
  %222 = fadd fast float %221, %155
  %223 = add i32 %176, 0
  %224 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %223, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %225 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %224, i32 0)  ; GetDimensions(handle,mipLevel)
  %226 = extractvalue %dx.types.Dimensions %225, 0
  %227 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %226)  ; FirstbitLo(value)
  %228 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %229 = extractvalue %dx.types.CBufRet.i32 %228, 1
  %230 = sub nsw i32 %229, %227
  %231 = sitofp i32 %230 to float
  %232 = fsub fast float %143, %231
  %233 = call float @dx.op.binary.f32(i32 35, float %232, float 0.000000e+00)  ; FMax(a,b)
  %234 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %224, %dx.types.Handle %11, float %191, float %192, float %164, float undef, i32 0, i32 0, i32 undef, float %233)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %235 = extractvalue %dx.types.ResRet.f32 %234, 0
  %236 = extractvalue %dx.types.ResRet.f32 %234, 1
  %237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.f32 %237, 3
  %239 = fmul fast float %238, 2.000000e+00
  %240 = fmul fast float %239, %235
  %241 = fmul fast float %239, %236
  %242 = fsub fast float %240, %238
  %243 = fsub fast float %241, %238
  %244 = fmul fast float %242, %242
  %245 = fmul fast float %243, %243
  %246 = fadd fast float %244, %245
  %247 = call float @dx.op.unary.f32(i32 24, float %246)  ; Sqrt(value)
  %248 = add i32 %179, 0
  %249 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %248, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %250 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %249, i32 0)  ; GetDimensions(handle,mipLevel)
  %251 = extractvalue %dx.types.Dimensions %250, 0
  %252 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %251)  ; FirstbitLo(value)
  %253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.i32 %253, 1
  %255 = sub nsw i32 %254, %252
  %256 = sitofp i32 %255 to float
  %257 = fsub fast float %143, %256
  %258 = call float @dx.op.binary.f32(i32 35, float %257, float 0.000000e+00)  ; FMax(a,b)
  %259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %249, %dx.types.Handle %11, float %191, float %192, float %167, float undef, i32 0, i32 0, i32 undef, float %258)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %260 = extractvalue %dx.types.ResRet.f32 %259, 0
  %261 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.i32 %261, 0
  %263 = call i32 @dx.op.binary.i32(i32 40, i32 %40, i32 %262)  ; UMin(a,b)
  %264 = mul i32 %263, 36
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = add i32 %264, 4
  %268 = fmul fast float %111, 0x3F53C37960000000
  %269 = fmul fast float %112, 0x3F53C37960000000
  %270 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %10, float %268, float %269, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %271 = extractvalue %dx.types.ResRet.f32 %270, 0
  %272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %273 = extractvalue %dx.types.CBufRet.f32 %272, 2
  %274 = fmul fast float %273, %271
  %275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %276 = extractvalue %dx.types.CBufRet.f32 %275, 0
  %277 = fmul fast float %276, %126
  %278 = fmul fast float %276, %129
  %279 = extractvalue %dx.types.CBufRet.f32 %275, 1
  %280 = fadd fast float %277, %279
  %281 = fadd fast float %278, %279
  %282 = icmp eq i32 %266, 0
  br i1 %282, label %919, label %283

; <label>:283                                     ; preds = %30
  br label %284

; <label>:284                                     ; preds = %897, %283
  %285 = phi i32 [ %898, %897 ], [ 0, %283 ]
  %286 = phi float [ %899, %897 ], [ 0.000000e+00, %283 ]
  %287 = phi float [ %900, %897 ], [ 0.000000e+00, %283 ]
  %288 = phi float [ %901, %897 ], [ 0.000000e+00, %283 ]
  %289 = phi float [ %902, %897 ], [ 0.000000e+00, %283 ]
  %290 = phi float [ %903, %897 ], [ 0.000000e+00, %283 ]
  %291 = phi float [ %904, %897 ], [ 0.000000e+00, %283 ]
  %292 = phi float [ %905, %897 ], [ 0.000000e+00, %283 ]
  %293 = phi float [ %906, %897 ], [ 0.000000e+00, %283 ]
  %294 = phi float [ %907, %897 ], [ 0.000000e+00, %283 ]
  %295 = phi float [ %908, %897 ], [ 0.000000e+00, %283 ]
  %296 = phi float [ %909, %897 ], [ 0.000000e+00, %283 ]
  %297 = phi float [ %910, %897 ], [ 0.000000e+00, %283 ]
  %298 = phi float [ %911, %897 ], [ 0.000000e+00, %283 ]
  %299 = phi float [ %912, %897 ], [ 0.000000e+00, %283 ]
  %300 = phi float [ %913, %897 ], [ 0.000000e+00, %283 ]
  %301 = phi float [ %914, %897 ], [ 0.000000e+00, %283 ]
  %302 = phi float [ %915, %897 ], [ 0.000000e+00, %283 ]
  %303 = phi i32 [ %916, %897 ], [ 0, %283 ]
  %304 = shl i32 %303, 2
  %305 = add i32 %62, %304
  %306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.f32 %306, 0
  %308 = add i32 %63, %304
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = add i32 %310, 0
  %312 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %311, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %313 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %312, i32 0)  ; GetDimensions(handle,mipLevel)
  %314 = extractvalue %dx.types.Dimensions %313, 0
  %315 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %314)  ; FirstbitLo(value)
  %316 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %317 = extractvalue %dx.types.CBufRet.i32 %316, 1
  %318 = sub nsw i32 %317, %315
  %319 = sitofp i32 %318 to float
  %320 = fsub fast float %143, %319
  %321 = call float @dx.op.binary.f32(i32 35, float %320, float 0.000000e+00)  ; FMax(a,b)
  %322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %312, %dx.types.Handle %11, float %280, float %281, float %307, float undef, i32 0, i32 0, i32 undef, float %321)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %323 = extractvalue %dx.types.ResRet.f32 %322, 0
  %324 = fcmp fast ogt float %323, 0.000000e+00
  br i1 %324, label %325, label %897, !dx.controlflow.hints !31

; <label>:325                                     ; preds = %284
  %326 = add i32 %267, %304
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = and i32 %328, 32767
  %330 = mul nuw nsw i32 %329, 928
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = or i32 %330, 4
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = or i32 %330, 8
  %337 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.f32 %337, 0
  %339 = or i32 %330, 12
  %340 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.f32 %340, 1
  %342 = or i32 %330, 20
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = add nuw nsw i32 %330, 72
  %346 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.f32 %346, 0
  %348 = extractvalue %dx.types.ResRet.f32 %346, 1
  %349 = add nuw nsw i32 %330, 80
  %350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.f32 %350, 0
  %352 = add nuw nsw i32 %330, 84
  %353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.f32 %353, 0
  %355 = add nuw nsw i32 %330, 88
  %356 = add nuw nsw i32 %330, 228
  %357 = add nuw nsw i32 %330, 596
  %358 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.f32 %358, 0
  %360 = extractvalue %dx.types.ResRet.f32 %358, 1
  %361 = add nuw nsw i32 %330, 604
  %362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.f32 %362, 0
  %364 = extractvalue %dx.types.ResRet.f32 %362, 1
  %365 = add nuw nsw i32 %330, 612
  %366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.f32 %366, 0
  %368 = add nuw nsw i32 %330, 616
  %369 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.f32 %369, 0
  %371 = add nuw nsw i32 %330, 696
  %372 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.f32 %372, 0
  %374 = extractvalue %dx.types.ResRet.f32 %372, 1
  %375 = add nuw nsw i32 %330, 708
  %376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.f32 %376, 0
  %378 = extractvalue %dx.types.ResRet.f32 %376, 1
  %379 = add nuw nsw i32 %330, 780
  %380 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.f32 %380, 0
  %382 = extractvalue %dx.types.ResRet.f32 %380, 1
  %383 = add nuw nsw i32 %330, 792
  %384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.f32 %384, 0
  %386 = extractvalue %dx.types.ResRet.f32 %384, 1
  %387 = add nuw nsw i32 %330, 840
  %388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.f32 %388, 0
  %390 = extractvalue %dx.types.ResRet.f32 %388, 1
  %391 = and i32 %303, 31
  %392 = shl i32 1, %391
  %393 = or i32 %392, %285
  %394 = shl i32 %332, 1
  %395 = and i32 %394, 256
  %396 = xor i32 %395, 256
  %397 = or i32 %393, %396
  %398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 201)  ; CBufferLoadLegacy(handle,regIndex)
  %399 = extractvalue %dx.types.CBufRet.f32 %398, 0
  %400 = call float @dx.op.binary.f32(i32 35, float %399, float %389)  ; FMax(a,b)
  %401 = call float @dx.op.binary.f32(i32 36, float %400, float %390)  ; FMin(a,b)
  %402 = fmul fast float %401, %323
  %403 = fadd fast float %402, %302
  %404 = and i32 %332, 256
  %405 = icmp ne i32 %404, 0
  %406 = fcmp fast ogt float %354, 0.000000e+00
  %407 = fmul fast float %354, %222
  %408 = call float @dx.op.unary.f32(i32 7, float %407)  ; Saturate(value)
  %409 = select i1 %406, float %408, float 1.000000e+00
  %410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %411 = extractvalue %dx.types.CBufRet.f32 %410, 3
  %412 = fadd fast float %411, %409
  %413 = call float @dx.op.unary.f32(i32 7, float %412)  ; Saturate(value)
  %414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %415 = extractvalue %dx.types.CBufRet.f32 %414, 0
  %416 = fsub fast float 1.000000e+00, %323
  %417 = select i1 %405, float %416, float 1.000000e+00
  %418 = call float @dx.op.unary.f32(i32 7, float %417)  ; Saturate(value)
  %419 = fmul fast float %418, %118
  %420 = fmul fast float %419, %415
  %421 = icmp eq i32 %335, 0
  br i1 %421, label %435, label %422

; <label>:422                                     ; preds = %325
  br label %423

; <label>:423                                     ; preds = %423, %422
  %424 = phi float [ %431, %423 ], [ 0.000000e+00, %422 ]
  %425 = phi i32 [ %432, %423 ], [ 0, %422 ]
  %426 = mul i32 %425, 28
  %427 = add nuw nsw i32 %330, 92
  %428 = add i32 %427, %426
  %429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.f32 %429, 0
  %431 = fadd fast float %430, %424
  %432 = add nuw i32 %425, 1
  %433 = icmp eq i32 %432, %335
  br i1 %433, label %434, label %423

; <label>:434                                     ; preds = %423
  br label %435

; <label>:435                                     ; preds = %434, %325
  %436 = phi float [ 0.000000e+00, %325 ], [ %431, %434 ]
  %437 = fmul fast float %418, %123
  %438 = fmul fast float %437, %415
  %439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %440 = extractvalue %dx.types.CBufRet.f32 %439, 3
  %441 = fcmp fast ogt float %436, %440
  %442 = select i1 %441, float %438, float %420
  %443 = fcmp fast ogt float %367, 0.000000e+00
  %444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %445 = extractvalue %dx.types.CBufRet.f32 %444, 2
  %446 = fadd fast float %445, 1.000000e+00
  %447 = call float @dx.op.unary.f32(i32 7, float %446)  ; Saturate(value)
  %448 = fmul fast float %447, %367
  %449 = call float @dx.op.binary.f32(i32 35, float %448, float 0x3F50624DE0000000)  ; FMax(a,b)
  %450 = fdiv fast float 1.000000e+00, %449
  %451 = select i1 %443, float %450, float 0.000000e+00
  %452 = fcmp fast ogt float %370, 0.000000e+00
  %453 = extractvalue %dx.types.CBufRet.f32 %444, 3
  %454 = fadd fast float %453, 1.000000e+00
  %455 = call float @dx.op.unary.f32(i32 7, float %454)  ; Saturate(value)
  %456 = fmul fast float %455, %370
  %457 = call float @dx.op.binary.f32(i32 35, float %456, float 0x3F50624DE0000000)  ; FMax(a,b)
  %458 = fdiv fast float 1.000000e+00, %457
  %459 = select i1 %452, float %458, float 0.000000e+00
  %460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %461 = extractvalue %dx.types.CBufRet.f32 %460, 3
  %462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %463 = extractvalue %dx.types.CBufRet.f32 %462, 1
  br i1 %421, label %586, label %464, !dx.controlflow.hints !32

; <label>:464                                     ; preds = %435
  br label %465

; <label>:465                                     ; preds = %465, %464
  %466 = phi float [ %532, %465 ], [ 0.000000e+00, %464 ]
  %467 = phi float [ %533, %465 ], [ 0.000000e+00, %464 ]
  %468 = phi float [ %534, %465 ], [ 0.000000e+00, %464 ]
  %469 = phi float [ %535, %465 ], [ 0.000000e+00, %464 ]
  %470 = phi float [ %536, %465 ], [ 0.000000e+00, %464 ]
  %471 = phi float [ %537, %465 ], [ 0.000000e+00, %464 ]
  %472 = phi float [ %538, %465 ], [ 0.000000e+00, %464 ]
  %473 = phi float [ %540, %465 ], [ 0.000000e+00, %464 ]
  %474 = phi float [ %541, %465 ], [ 0.000000e+00, %464 ]
  %475 = phi float [ %546, %465 ], [ 0.000000e+00, %464 ]
  %476 = phi float [ %568, %465 ], [ 0.000000e+00, %464 ]
  %477 = phi i32 [ %569, %465 ], [ 0, %464 ]
  %478 = mul i32 %477, 28
  %479 = add i32 %478, %355
  %480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.f32 %480, 0
  %482 = add i32 %479, 4
  %483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.f32 %483, 0
  %485 = fmul fast float %484, %442
  %486 = add i32 %479, 8
  %487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.f32 %487, 0
  %489 = add i32 %479, 12
  %490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.f32 %490, 0
  %492 = fmul fast float %491, %461
  %493 = add i32 %479, 16
  %494 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.f32 %494, 0
  %496 = extractvalue %dx.types.ResRet.f32 %494, 1
  %497 = add i32 %479, 24
  %498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.f32 %498, 0
  %500 = call float @dx.op.dot2.f32(i32 54, float %495, float %496, float %111, float %112)  ; Dot2(ax,ay,bx,by)
  %501 = fmul fast float %500, %481
  %502 = fmul fast float %488, %463
  %503 = fsub fast float %501, %502
  %504 = fsub fast float %503, %499
  %505 = call float @dx.op.unary.f32(i32 13, float %504)  ; Sin(value)
  %506 = call float @dx.op.unary.f32(i32 12, float %504)  ; Cos(value)
  %507 = fmul fast float %492, %485
  %508 = fmul fast float %507, %495
  %509 = fmul fast float %508, %506
  %510 = fmul fast float %507, %496
  %511 = fmul fast float %510, %506
  %512 = fmul fast float %485, %413
  %513 = fmul fast float %512, %505
  %514 = fmul fast float %485, %481
  %515 = fmul fast float %514, %492
  %516 = fmul fast float %495, %495
  %517 = fmul fast float %516, %515
  %518 = fmul fast float %517, %505
  %519 = fmul fast float %495, %496
  %520 = fmul fast float %519, %515
  %521 = fmul fast float %520, %505
  %522 = fsub fast float 1.000000e+00, %518
  %523 = fmul fast float %481, %413
  %524 = fmul fast float %523, %485
  %525 = fmul fast float %524, %495
  %526 = fmul fast float %525, %506
  %527 = fmul fast float %496, %496
  %528 = fmul fast float %527, %515
  %529 = fmul fast float %528, %505
  %530 = fmul fast float %524, %496
  %531 = fmul fast float %530, %506
  %532 = fadd fast float %509, %466
  %533 = fadd fast float %511, %467
  %534 = fadd fast float %513, %468
  %535 = fadd fast float %522, %469
  %536 = fsub fast float %470, %521
  %537 = fadd fast float %526, %471
  %538 = fadd fast float %529, %472
  %539 = fadd fast float %473, 1.000000e+00
  %540 = fadd fast float %539, %521
  %541 = fadd fast float %531, %474
  %542 = fsub fast float 1.000000e+00, %529
  %543 = fmul fast float %522, %542
  %544 = fmul fast float %521, %521
  %545 = fsub fast float %543, %544
  %546 = fadd fast float %545, %475
  %547 = fadd fast float %504, 0xBFF921FB60000000
  %548 = fmul fast float %547, 0x3FC45F3060000000
  %549 = call float @dx.op.unary.f32(i32 27, float %548)  ; Round_ni(value)
  %550 = fsub fast float %548, %549
  %551 = call float @dx.op.unary.f32(i32 7, float %550)  ; Saturate(value)
  %552 = fmul fast float %551, %451
  %553 = call float @dx.op.unary.f32(i32 7, float %552)  ; Saturate(value)
  %554 = fmul fast float %553, %553
  %555 = fmul fast float %553, 2.000000e+00
  %556 = fsub fast float 3.000000e+00, %555
  %557 = fmul fast float %554, %556
  %558 = fsub fast float 1.000000e+00, %551
  %559 = fmul fast float %558, %459
  %560 = call float @dx.op.unary.f32(i32 7, float %559)  ; Saturate(value)
  %561 = fmul fast float %560, %560
  %562 = fmul fast float %560, 2.000000e+00
  %563 = fsub fast float 3.000000e+00, %562
  %564 = fmul fast float %561, %563
  %565 = fsub fast float 2.000000e+00, %557
  %566 = fsub fast float %565, %564
  %567 = call float @dx.op.unary.f32(i32 7, float %566)  ; Saturate(value)
  %568 = fadd fast float %567, %476
  %569 = add nuw i32 %477, 1
  %570 = icmp eq i32 %569, %335
  br i1 %570, label %571, label %465

; <label>:571                                     ; preds = %465
  %572 = call float @dx.op.dot3.f32(i32 55, float %535, float %536, float %537, float %535, float %536, float %537)  ; Dot3(ax,ay,az,bx,by,bz)
  %573 = call float @dx.op.unary.f32(i32 25, float %572)  ; Rsqrt(value)
  %574 = fmul fast float %573, %535
  %575 = fmul fast float %573, %536
  %576 = fmul fast float %573, %537
  %577 = call float @dx.op.dot3.f32(i32 55, float %538, float %540, float %541, float %538, float %540, float %541)  ; Dot3(ax,ay,az,bx,by,bz)
  %578 = call float @dx.op.unary.f32(i32 25, float %577)  ; Rsqrt(value)
  %579 = fmul fast float %578, %538
  %580 = fmul fast float %578, %540
  %581 = fmul fast float %578, %541
  %582 = uitofp i32 %335 to float
  %583 = fdiv fast float 1.000000e+00, %582
  %584 = fmul fast float %583, %546
  %585 = fmul fast float %583, %568
  br label %586

; <label>:586                                     ; preds = %571, %435
  %587 = phi float [ %532, %571 ], [ 0.000000e+00, %435 ]
  %588 = phi float [ %533, %571 ], [ 0.000000e+00, %435 ]
  %589 = phi float [ %534, %571 ], [ 0.000000e+00, %435 ]
  %590 = phi float [ %574, %571 ], [ 0.000000e+00, %435 ]
  %591 = phi float [ %575, %571 ], [ 0.000000e+00, %435 ]
  %592 = phi float [ %576, %571 ], [ 0.000000e+00, %435 ]
  %593 = phi float [ %579, %571 ], [ 0.000000e+00, %435 ]
  %594 = phi float [ %580, %571 ], [ 0.000000e+00, %435 ]
  %595 = phi float [ %581, %571 ], [ 0.000000e+00, %435 ]
  %596 = phi float [ %584, %571 ], [ 1.000000e+00, %435 ]
  %597 = phi float [ %585, %571 ], [ 1.000000e+00, %435 ]
  %598 = fmul fast float %587, %323
  %599 = fmul fast float %588, %323
  %600 = fmul fast float %589, %323
  %601 = fadd fast float %598, %286
  %602 = fadd fast float %599, %287
  %603 = fadd fast float %600, %288
  %604 = fmul fast float %590, %323
  %605 = fmul fast float %591, %323
  %606 = fmul fast float %592, %323
  %607 = fadd fast float %604, %289
  %608 = fadd fast float %605, %290
  %609 = fadd fast float %606, %291
  %610 = fmul fast float %593, %323
  %611 = fmul fast float %594, %323
  %612 = fmul fast float %595, %323
  %613 = fadd fast float %610, %292
  %614 = fadd fast float %611, %293
  %615 = fadd fast float %612, %294
  %616 = fsub fast float 1.000000e+00, %596
  %617 = fmul fast float %616, %363
  %618 = fadd fast float %617, %364
  %619 = fmul fast float %442, %323
  %620 = fmul fast float %619, %597
  %621 = fmul fast float %620, %618
  %622 = fadd fast float %621, %295
  %623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %624 = extractvalue %dx.types.CBufRet.f32 %623, 0
  %625 = extractvalue %dx.types.CBufRet.f32 %623, 1
  %626 = extractvalue %dx.types.CBufRet.f32 %623, 2
  %627 = fsub fast float %111, %624
  %628 = fsub fast float %112, %625
  %629 = fsub fast float %207, %626
  %630 = fmul fast float %627, %627
  %631 = fmul fast float %628, %628
  %632 = fadd fast float %630, %631
  %633 = fmul fast float %629, %629
  %634 = fadd fast float %632, %633
  %635 = call float @dx.op.unary.f32(i32 24, float %634)  ; Sqrt(value)
  %636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %637 = extractvalue %dx.types.CBufRet.f32 %636, 0
  %638 = fcmp fast ogt float %635, %637
  %639 = zext i1 %638 to i32
  %640 = extractvalue %dx.types.CBufRet.f32 %636, 1
  %641 = fcmp fast ogt float %635, %640
  %642 = zext i1 %641 to i32
  %643 = add nuw nsw i32 %642, %639
  %644 = extractvalue %dx.types.CBufRet.f32 %636, 2
  %645 = fcmp fast ogt float %635, %644
  %646 = zext i1 %645 to i32
  %647 = add nuw nsw i32 %643, %646
  %648 = icmp ult i32 %647, 3
  %649 = zext i1 %648 to i32
  %650 = shl nuw nsw i32 %647, 2
  %651 = add nuw nsw i32 %650, 48
  %652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %651)  ; CBufferLoadLegacy(handle,regIndex)
  %653 = extractvalue %dx.types.CBufRet.f32 %652, 1
  %654 = fcmp fast ogt float %635, %653
  %655 = zext i1 %654 to i32
  %656 = or i32 %650, 1
  %657 = add nuw nsw i32 %656, 48
  %658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %657)  ; CBufferLoadLegacy(handle,regIndex)
  %659 = extractvalue %dx.types.CBufRet.f32 %658, 1
  %660 = fcmp fast ogt float %635, %659
  %661 = zext i1 %660 to i32
  %662 = add nuw nsw i32 %661, %655
  %663 = or i32 %650, 2
  %664 = add nuw nsw i32 %663, 48
  %665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %664)  ; CBufferLoadLegacy(handle,regIndex)
  %666 = extractvalue %dx.types.CBufRet.f32 %665, 1
  %667 = fcmp fast ogt float %635, %666
  %668 = zext i1 %667 to i32
  %669 = add nuw nsw i32 %662, %668
  %670 = add i32 %344, -1
  %671 = call i32 @dx.op.binary.i32(i32 40, i32 %669, i32 %670)  ; UMin(a,b)
  %672 = add i32 %650, %671
  %673 = call i32 @dx.op.binary.i32(i32 40, i32 %672, i32 12)  ; UMin(a,b)
  %674 = add i32 %673, 48
  %675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %674)  ; CBufferLoadLegacy(handle,regIndex)
  %676 = extractvalue %dx.types.CBufRet.f32 %675, 0
  %677 = fcmp fast oge float %635, %676
  %678 = zext i1 %677 to i32
  %679 = call i32 @dx.op.binary.i32(i32 40, i32 %344, i32 %649)  ; UMin(a,b)
  %680 = call i32 @dx.op.binary.i32(i32 40, i32 %678, i32 %679)  ; UMin(a,b)
  %681 = add i32 %680, %344
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %854, label %683

; <label>:683                                     ; preds = %586
  br label %684

; <label>:684                                     ; preds = %684, %683
  %685 = phi float [ %848, %684 ], [ 0.000000e+00, %683 ]
  %686 = phi float [ %849, %684 ], [ 0.000000e+00, %683 ]
  %687 = phi float [ %850, %684 ], [ 0.000000e+00, %683 ]
  %688 = phi i32 [ %696, %684 ], [ %673, %683 ]
  %689 = phi i32 [ %851, %684 ], [ 0, %683 ]
  %690 = add i32 %689, %688
  %691 = and i32 %690, -4
  %692 = add i32 %691, %344
  %693 = icmp uge i32 %690, %692
  %694 = sub i32 4, %344
  %695 = select i1 %693, i32 %694, i32 0
  %696 = add i32 %695, %688
  %697 = add i32 %695, %690
  %698 = and i32 %697, 3
  %699 = lshr i32 %697, 2
  %700 = add i32 %697, 32
  %701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %700)  ; CBufferLoadLegacy(handle,regIndex)
  %702 = extractvalue %dx.types.CBufRet.f32 %701, 0
  %703 = extractvalue %dx.types.CBufRet.f32 %701, 1
  %704 = extractvalue %dx.types.CBufRet.f32 %701, 2
  %705 = extractvalue %dx.types.CBufRet.f32 %701, 3
  %706 = fmul fast float %702, %635
  %707 = fadd fast float %706, %703
  %708 = call float @dx.op.unary.f32(i32 7, float %707)  ; Saturate(value)
  %709 = fmul fast float %704, %635
  %710 = fadd fast float %709, %705
  %711 = call float @dx.op.unary.f32(i32 7, float %710)  ; Saturate(value)
  %712 = call float @dx.op.binary.f32(i32 36, float %708, float %711)  ; FMin(a,b)
  %713 = mul nuw nsw i32 %698, 72
  %714 = add nuw nsw i32 %356, %713
  %715 = add nuw nsw i32 %714, 16
  %716 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %715, i32 undef)  ; BufferLoad(srv,index,wot)
  %717 = extractvalue %dx.types.ResRet.f32 %716, 0
  %718 = extractvalue %dx.types.ResRet.f32 %716, 1
  %719 = extractvalue %dx.types.ResRet.f32 %716, 2
  %720 = extractvalue %dx.types.ResRet.f32 %716, 3
  %721 = add nuw nsw i32 %714, 36
  %722 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %721, i32 undef)  ; BufferLoad(srv,index,wot)
  %723 = extractvalue %dx.types.ResRet.f32 %722, 0
  %724 = add nuw nsw i32 %714, 56
  %725 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %724, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.f32 %725, 0
  %727 = fmul fast float %247, 3.906250e-03
  %728 = fmul fast float %727, %351
  %729 = fmul fast float %728, %723
  %730 = fmul fast float %729, %726
  %731 = extractvalue %dx.types.ResRet.f32 %725, 1
  %732 = fadd fast float %730, %731
  %733 = call float @dx.op.binary.f32(i32 35, float %732, float 0.000000e+00)  ; FMax(a,b)
  %734 = add nuw nsw i32 %714, 32
  %735 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %734, i32 undef)  ; BufferLoad(srv,index,wot)
  %736 = extractvalue %dx.types.ResRet.f32 %735, 0
  %737 = fmul fast float %733, %712
  %738 = fmul fast float %737, %736
  %739 = fmul fast float %723, %242
  %740 = fmul fast float %723, %243
  %741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %742 = extractvalue %dx.types.CBufRet.f32 %741, 1
  %743 = add nuw nsw i32 %714, 40
  %744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %743, i32 undef)  ; BufferLoad(srv,index,wot)
  %745 = extractvalue %dx.types.ResRet.f32 %744, 0
  %746 = extractvalue %dx.types.ResRet.f32 %744, 1
  %747 = extractvalue %dx.types.ResRet.f32 %744, 2
  %748 = extractvalue %dx.types.ResRet.f32 %744, 3
  %749 = fadd fast float %742, %274
  %750 = fadd fast float %749, %747
  %751 = fmul fast float %749, %746
  %752 = call float @dx.op.unary.f32(i32 29, float %751)  ; Round_z(value)
  %753 = fmul fast float %745, %752
  %754 = fsub fast float %749, %753
  %755 = fmul fast float %750, %746
  %756 = call float @dx.op.unary.f32(i32 29, float %755)  ; Round_z(value)
  %757 = fmul fast float %756, %745
  %758 = fsub fast float %750, %757
  %759 = fmul fast float %754, %739
  %760 = fmul fast float %754, %740
  %761 = fmul fast float %758, %739
  %762 = fmul fast float %758, %740
  %763 = fsub fast float %111, %759
  %764 = fsub fast float %112, %760
  %765 = fsub fast float %111, %761
  %766 = fsub fast float %112, %762
  %767 = fsub fast float %747, %754
  %768 = call float @dx.op.unary.f32(i32 6, float %767)  ; FAbs(value)
  %769 = fmul fast float %768, %748
  %770 = call float @dx.op.unary.f32(i32 7, float %769)  ; Saturate(value)
  %771 = fmul fast float %338, 4.000000e+00
  %772 = uitofp i32 %699 to float
  %773 = fadd fast float %772, %771
  %774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %775 = extractvalue %dx.types.CBufRet.f32 %774, 0
  %776 = extractvalue %dx.types.CBufRet.f32 %774, 1
  %777 = extractvalue %dx.types.CBufRet.f32 %774, 2
  %778 = extractvalue %dx.types.CBufRet.f32 %774, 3
  %779 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 0
  store float %775, float* %779, align 4
  %780 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 1
  store float %776, float* %780, align 4
  %781 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 2
  store float %777, float* %781, align 4
  %782 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 3
  store float %778, float* %782, align 4
  %783 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 %699
  %784 = load float, float* %783, align 4, !tbaa !33, !noalias !37
  %785 = fmul fast float %784, %341
  %786 = fmul fast float %763, %717
  %787 = call float @dx.op.tertiary.f32(i32 46, float %718, float %764, float %786)  ; FMad(a,b,c)
  %788 = fmul fast float %763, %719
  %789 = call float @dx.op.tertiary.f32(i32 46, float %720, float %764, float %788)  ; FMad(a,b,c)
  %790 = add nuw nsw i32 %714, 8
  %791 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %790, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.f32 %791, 0
  %793 = extractvalue %dx.types.ResRet.f32 %791, 1
  %794 = fadd fast float %792, %787
  %795 = fadd fast float %793, %789
  %796 = fmul fast float %794, %785
  %797 = fmul fast float %795, %785
  %798 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %799 = extractvalue %dx.types.ResRet.f32 %798, 0
  %800 = extractvalue %dx.types.ResRet.f32 %798, 1
  %801 = fmul fast float %796, %799
  %802 = fmul fast float %797, %800
  %803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %804 = extractvalue %dx.types.CBufRet.f32 %803, 2
  %805 = fadd fast float %801, %804
  %806 = fadd fast float %802, %804
  %807 = fmul fast float %765, %717
  %808 = call float @dx.op.tertiary.f32(i32 46, float %718, float %766, float %807)  ; FMad(a,b,c)
  %809 = fmul fast float %765, %719
  %810 = call float @dx.op.tertiary.f32(i32 46, float %720, float %766, float %809)  ; FMad(a,b,c)
  %811 = fadd fast float %792, %808
  %812 = fadd fast float %793, %810
  %813 = fmul fast float %811, %785
  %814 = fmul fast float %812, %785
  %815 = fmul fast float %813, %799
  %816 = fmul fast float %814, %800
  %817 = fadd fast float %815, %804
  %818 = fadd fast float %816, %804
  %819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %12, float %805, float %806, float %773, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %820 = extractvalue %dx.types.ResRet.f32 %819, 0
  %821 = extractvalue %dx.types.ResRet.f32 %819, 1
  %822 = extractvalue %dx.types.ResRet.f32 %819, 2
  %823 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %12, float %817, float %818, float %773, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %824 = extractvalue %dx.types.ResRet.f32 %823, 0
  %825 = extractvalue %dx.types.ResRet.f32 %823, 1
  %826 = extractvalue %dx.types.ResRet.f32 %823, 2
  %827 = fsub fast float %824, %820
  %828 = fsub fast float %825, %821
  %829 = fsub fast float %826, %822
  %830 = fmul fast float %827, %770
  %831 = fmul fast float %828, %770
  %832 = fmul fast float %829, %770
  %833 = fadd fast float %830, %820
  %834 = fadd fast float %831, %821
  %835 = fadd fast float %832, %822
  %836 = fmul fast float %833, %717
  %837 = call float @dx.op.tertiary.f32(i32 46, float %834, float %719, float %836)  ; FMad(a,b,c)
  %838 = fmul fast float %833, %718
  %839 = call float @dx.op.tertiary.f32(i32 46, float %834, float %720, float %838)  ; FMad(a,b,c)
  %840 = fdiv fast float 1.000000e+00, %799
  %841 = fdiv fast float 1.000000e+00, %800
  %842 = call float @dx.op.unary.f32(i32 7, float %738)  ; Saturate(value)
  %843 = fmul fast float %840, %837
  %844 = fmul fast float %843, %842
  %845 = fmul fast float %841, %839
  %846 = fmul fast float %845, %842
  %847 = fmul fast float %835, %738
  %848 = fadd fast float %844, %685
  %849 = fadd fast float %846, %686
  %850 = fadd fast float %847, %687
  %851 = add nuw i32 %689, 1
  %852 = icmp eq i32 %851, %681
  br i1 %852, label %853, label %684

; <label>:853                                     ; preds = %684
  br label %854

; <label>:854                                     ; preds = %853, %586
  %855 = phi float [ 0.000000e+00, %586 ], [ %848, %853 ]
  %856 = phi float [ 0.000000e+00, %586 ], [ %849, %853 ]
  %857 = phi float [ 0.000000e+00, %586 ], [ %850, %853 ]
  %858 = fmul fast float %420, %323
  %859 = fmul fast float %858, %855
  %860 = fmul fast float %858, %856
  %861 = fmul fast float %413, %323
  %862 = fmul fast float %861, %420
  %863 = fmul fast float %862, %857
  %864 = fadd fast float %859, %296
  %865 = fadd fast float %860, %297
  %866 = fadd fast float %863, %298
  %867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %868 = fmul fast float %359, %260
  %869 = fadd fast float %868, %360
  %870 = call float @dx.op.unary.f32(i32 7, float %869)  ; Saturate(value)
  %871 = call float @dx.op.binary.f32(i32 35, float %301, float %870)  ; FMax(a,b)
  %872 = fmul fast float %377, %247
  %873 = fadd fast float %872, %378
  %874 = call float @dx.op.binary.f32(i32 35, float %873, float 0.000000e+00)  ; FMax(a,b)
  %875 = fmul fast float %874, %373
  %876 = fadd fast float %875, %374
  %877 = call float @dx.op.unary.f32(i32 7, float %876)  ; Saturate(value)
  %878 = and i32 %332, 2
  %879 = icmp ne i32 %878, 0
  %880 = select i1 %879, float %877, float 0.000000e+00
  %881 = call float @dx.op.binary.f32(i32 35, float %880, float %299)  ; FMax(a,b)
  %882 = fmul fast float %385, %247
  %883 = fadd fast float %882, %386
  %884 = call float @dx.op.binary.f32(i32 35, float %883, float 0.000000e+00)  ; FMax(a,b)
  %885 = fmul fast float %884, %381
  %886 = fadd fast float %885, %382
  %887 = call float @dx.op.unary.f32(i32 7, float %886)  ; Saturate(value)
  %888 = and i32 %332, 4
  %889 = icmp ne i32 %888, 0
  %890 = select i1 %889, float %887, float 0.000000e+00
  %891 = call float @dx.op.binary.f32(i32 35, float %890, float %300)  ; FMax(a,b)
  %892 = fadd fast float %347, %348
  %893 = extractvalue %dx.types.CBufRet.f32 %867, 2
  %894 = fcmp fast oge float %892, %893
  %895 = select i1 %894, i32 4096, i32 0
  %896 = or i32 %397, %895
  br label %897

; <label>:897                                     ; preds = %854, %284
  %898 = phi i32 [ %896, %854 ], [ %285, %284 ]
  %899 = phi float [ %601, %854 ], [ %286, %284 ]
  %900 = phi float [ %602, %854 ], [ %287, %284 ]
  %901 = phi float [ %603, %854 ], [ %288, %284 ]
  %902 = phi float [ %607, %854 ], [ %289, %284 ]
  %903 = phi float [ %608, %854 ], [ %290, %284 ]
  %904 = phi float [ %609, %854 ], [ %291, %284 ]
  %905 = phi float [ %613, %854 ], [ %292, %284 ]
  %906 = phi float [ %614, %854 ], [ %293, %284 ]
  %907 = phi float [ %615, %854 ], [ %294, %284 ]
  %908 = phi float [ %622, %854 ], [ %295, %284 ]
  %909 = phi float [ %864, %854 ], [ %296, %284 ]
  %910 = phi float [ %865, %854 ], [ %297, %284 ]
  %911 = phi float [ %866, %854 ], [ %298, %284 ]
  %912 = phi float [ %881, %854 ], [ %299, %284 ]
  %913 = phi float [ %891, %854 ], [ %300, %284 ]
  %914 = phi float [ %871, %854 ], [ %301, %284 ]
  %915 = phi float [ %403, %854 ], [ %302, %284 ]
  %916 = add nuw i32 %303, 1
  %917 = icmp eq i32 %916, %266
  br i1 %917, label %918, label %284

; <label>:918                                     ; preds = %897
  br label %919

; <label>:919                                     ; preds = %918, %30
  %920 = phi i32 [ 0, %30 ], [ %898, %918 ]
  %921 = phi float [ 0.000000e+00, %30 ], [ %899, %918 ]
  %922 = phi float [ 0.000000e+00, %30 ], [ %900, %918 ]
  %923 = phi float [ 0.000000e+00, %30 ], [ %901, %918 ]
  %924 = phi float [ 0.000000e+00, %30 ], [ %902, %918 ]
  %925 = phi float [ 0.000000e+00, %30 ], [ %903, %918 ]
  %926 = phi float [ 0.000000e+00, %30 ], [ %904, %918 ]
  %927 = phi float [ 0.000000e+00, %30 ], [ %905, %918 ]
  %928 = phi float [ 0.000000e+00, %30 ], [ %906, %918 ]
  %929 = phi float [ 0.000000e+00, %30 ], [ %907, %918 ]
  %930 = phi float [ 0.000000e+00, %30 ], [ %908, %918 ]
  %931 = phi float [ 0.000000e+00, %30 ], [ %909, %918 ]
  %932 = phi float [ 0.000000e+00, %30 ], [ %910, %918 ]
  %933 = phi float [ 0.000000e+00, %30 ], [ %911, %918 ]
  %934 = phi float [ 0.000000e+00, %30 ], [ %912, %918 ]
  %935 = phi float [ 0.000000e+00, %30 ], [ %913, %918 ]
  %936 = phi float [ 0.000000e+00, %30 ], [ %914, %918 ]
  %937 = phi float [ 0.000000e+00, %30 ], [ %915, %918 ]
  %938 = fcmp fast ole float %930, 0x3F69A5C380000000
  %939 = fmul fast float %930, 0x4029D70A40000000
  %940 = call float @dx.op.unary.f32(i32 23, float %930)  ; Log(value)
  %941 = fmul fast float %940, 0x3FDAAAAAA0000000
  %942 = call float @dx.op.unary.f32(i32 21, float %941)  ; Exp(value)
  %943 = fmul fast float %942, 0x3FF0E147A0000000
  %944 = fadd fast float %943, 0xBFAC28F5C0000000
  %945 = select i1 %938, float %939, float %944
  %946 = fmul fast float %945, 2.550000e+02
  %947 = call float @dx.op.binary.f32(i32 35, float %946, float 0.000000e+00)  ; FMax(a,b)
  %948 = call float @dx.op.binary.f32(i32 36, float %947, float 2.550000e+02)  ; FMin(a,b)
  %949 = fptoui float %948 to i32
  %950 = uitofp i32 %949 to float
  %951 = fmul fast float %950, 0x3F70101020000000
  %952 = fcmp fast ole float %951, 0x3FA4B5DCC0000000
  %953 = fmul fast float %950, 0x3F33E45680000000
  %954 = fmul fast float %950, 0x3F6E736160000000
  %955 = fadd fast float %954, 0x3FAAB12340000000
  %956 = call float @dx.op.unary.f32(i32 23, float %955)  ; Log(value)
  %957 = fmul fast float %956, 0x4003333340000000
  %958 = call float @dx.op.unary.f32(i32 21, float %957)  ; Exp(value)
  %959 = select i1 %952, float %953, float %958
  %960 = call float @dx.op.unary.f32(i32 7, float %959)  ; Saturate(value)
  %961 = call float @dx.op.binary.f32(i32 35, float %960, float %936)  ; FMax(a,b)
  %962 = fadd fast float %961, 1.000000e+00
  %963 = fmul fast float %962, %934
  %964 = fmul fast float %962, %935
  %965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %966 = extractvalue %dx.types.CBufRet.f32 %965, 1
  %967 = fcmp fast oge float %963, %966
  %968 = select i1 %967, i32 1024, i32 0
  %969 = or i32 %968, %920
  %970 = fcmp fast oge float %964, %966
  %971 = select i1 %970, i32 2048, i32 0
  %972 = or i32 %969, %971
  %973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %974 = extractvalue %dx.types.CBufRet.f32 %973, 3
  %975 = fadd fast float %974, %126
  %976 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %144, i32 undef)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.f32 %976, 0
  %978 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %147, i32 undef)  ; BufferLoad(srv,index,wot)
  %979 = extractvalue %dx.types.ResRet.f32 %978, 0
  %980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %156, i32 undef)  ; BufferLoad(srv,index,wot)
  %981 = extractvalue %dx.types.ResRet.f32 %980, 0
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %168, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 0
  %984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %985 = extractvalue %dx.types.CBufRet.f32 %984, 2
  %986 = fmul fast float %985, %975
  %987 = fmul fast float %985, %129
  %988 = extractvalue %dx.types.CBufRet.f32 %984, 3
  %989 = fadd fast float %986, %988
  %990 = fadd fast float %987, %988
  %991 = add i32 %983, 0
  %992 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %991, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %993 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %992, i32 0)  ; GetDimensions(handle,mipLevel)
  %994 = extractvalue %dx.types.Dimensions %993, 0
  %995 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %994)  ; FirstbitLo(value)
  %996 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %997 = extractvalue %dx.types.CBufRet.i32 %996, 1
  %998 = sub nsw i32 %997, %995
  %999 = sitofp i32 %998 to float
  %1000 = fsub fast float %143, %999
  %1001 = call float @dx.op.binary.f32(i32 35, float %1000, float 0.000000e+00)  ; FMax(a,b)
  %1002 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %992, %dx.types.Handle %11, float %989, float %990, float %981, float undef, i32 0, i32 0, i32 undef, float %1001)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1003 = extractvalue %dx.types.ResRet.f32 %1002, 0
  %1004 = fmul fast float %1003, %977
  %1005 = fsub fast float %129, %974
  %1006 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1007 = extractvalue %dx.types.ResRet.f32 %1006, 0
  %1008 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1009 = extractvalue %dx.types.ResRet.f32 %1008, 0
  %1010 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %156, i32 undef)  ; BufferLoad(srv,index,wot)
  %1011 = extractvalue %dx.types.ResRet.f32 %1010, 0
  %1012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1013 = extractvalue %dx.types.ResRet.i32 %1012, 0
  %1014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1015 = extractvalue %dx.types.CBufRet.f32 %1014, 2
  %1016 = fmul fast float %1015, %126
  %1017 = fmul fast float %1015, %1005
  %1018 = extractvalue %dx.types.CBufRet.f32 %1014, 3
  %1019 = fadd fast float %1016, %1018
  %1020 = fadd fast float %1017, %1018
  %1021 = add i32 %1013, 0
  %1022 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1021, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1023 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1022, i32 0)  ; GetDimensions(handle,mipLevel)
  %1024 = extractvalue %dx.types.Dimensions %1023, 0
  %1025 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1024)  ; FirstbitLo(value)
  %1026 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1027 = extractvalue %dx.types.CBufRet.i32 %1026, 1
  %1028 = sub nsw i32 %1027, %1025
  %1029 = sitofp i32 %1028 to float
  %1030 = fsub fast float %143, %1029
  %1031 = call float @dx.op.binary.f32(i32 35, float %1030, float 0.000000e+00)  ; FMax(a,b)
  %1032 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1022, %dx.types.Handle %11, float %1019, float %1020, float %1011, float undef, i32 0, i32 0, i32 undef, float %1031)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1033 = extractvalue %dx.types.ResRet.f32 %1032, 0
  %1034 = fmul fast float %1033, %1007
  %1035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1036 = extractvalue %dx.types.CBufRet.f32 %1035, 2
  %1037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1038 = extractvalue %dx.types.CBufRet.f32 %1037, 3
  %1039 = fmul fast float %1038, %1036
  %1040 = fsub fast float %979, %207
  %1041 = fadd fast float %1040, %1004
  %1042 = fsub fast float %1009, %207
  %1043 = fadd fast float %1042, %1034
  %1044 = fmul fast float %1041, %1039
  %1045 = fsub fast float -0.000000e+00, %1044
  %1046 = fmul fast float %1043, %1039
  %1047 = fsub fast float -0.000000e+00, %1046
  %1048 = fmul fast float %1039, %1039
  %1049 = call float @dx.op.dot3.f32(i32 55, float %1045, float %1047, float %1048, float %1045, float %1047, float %1048)  ; Dot3(ax,ay,az,bx,by,bz)
  %1050 = call float @dx.op.unary.f32(i32 25, float %1049)  ; Rsqrt(value)
  %1051 = fmul fast float %1050, %1045
  %1052 = fmul fast float %1050, %1047
  %1053 = fmul fast float %1048, %1050
  %1054 = fsub fast float -0.000000e+00, %1052
  %1055 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float %1053, float %1054, float 0.000000e+00, float %1053, float %1054)  ; Dot3(ax,ay,az,bx,by,bz)
  %1056 = call float @dx.op.unary.f32(i32 25, float %1055)  ; Rsqrt(value)
  %1057 = fmul fast float %1053, %1056
  %1058 = fmul fast float %1056, %1054
  %1059 = fmul fast float %1057, %1053
  %1060 = fmul fast float %1058, %1052
  %1061 = fsub fast float %1059, %1060
  %1062 = fmul fast float %1058, %1051
  %1063 = fmul fast float %1051, %1057
  %1064 = fsub fast float -0.000000e+00, %1063
  %1065 = call float @dx.op.dot3.f32(i32 55, float %1061, float %1062, float %1064, float %1061, float %1062, float %1064)  ; Dot3(ax,ay,az,bx,by,bz)
  %1066 = call float @dx.op.unary.f32(i32 25, float %1065)  ; Rsqrt(value)
  %1067 = fmul fast float %1061, %1066
  %1068 = fmul fast float %1062, %1066
  %1069 = fmul fast float %1066, %1064
  %1070 = fadd fast float %1057, %928
  %1071 = fadd fast float %1058, %929
  %1072 = call float @dx.op.dot3.f32(i32 55, float %927, float %1070, float %1071, float %927, float %1070, float %1071)  ; Dot3(ax,ay,az,bx,by,bz)
  %1073 = call float @dx.op.unary.f32(i32 25, float %1072)  ; Rsqrt(value)
  %1074 = fmul fast float %1073, %927
  %1075 = fmul fast float %1073, %1070
  %1076 = fmul fast float %1073, %1071
  %1077 = fadd fast float %1067, %924
  %1078 = fadd fast float %1068, %925
  %1079 = fadd fast float %1069, %926
  %1080 = call float @dx.op.dot3.f32(i32 55, float %1077, float %1078, float %1079, float %1077, float %1078, float %1079)  ; Dot3(ax,ay,az,bx,by,bz)
  %1081 = call float @dx.op.unary.f32(i32 25, float %1080)  ; Rsqrt(value)
  %1082 = fmul fast float %1081, %1077
  %1083 = fmul fast float %1081, %1078
  %1084 = fmul fast float %1081, %1079
  %1085 = fmul fast float %1083, %1076
  %1086 = fmul fast float %1084, %1075
  %1087 = fsub fast float %1085, %1086
  %1088 = fmul fast float %1084, %1074
  %1089 = fmul fast float %1082, %1076
  %1090 = fsub fast float %1088, %1089
  %1091 = fmul fast float %1082, %1075
  %1092 = fmul fast float %1083, %1074
  %1093 = fsub fast float %1091, %1092
  %1094 = call float @dx.op.dot3.f32(i32 55, float %1087, float %1090, float %1093, float %1087, float %1090, float %1093)  ; Dot3(ax,ay,az,bx,by,bz)
  %1095 = call float @dx.op.unary.f32(i32 25, float %1094)  ; Rsqrt(value)
  %1096 = fmul fast float %1087, %1095
  %1097 = fmul fast float %1090, %1095
  %1098 = fmul fast float %1093, %1095
  %1099 = fadd fast float %921, %111
  %1100 = fadd fast float %922, %112
  %1101 = fadd fast float %923, %207
  %1102 = fmul fast float %1082, %931
  %1103 = call float @dx.op.tertiary.f32(i32 46, float %932, float %1074, float %1102)  ; FMad(a,b,c)
  %1104 = call float @dx.op.tertiary.f32(i32 46, float %933, float %1096, float %1103)  ; FMad(a,b,c)
  %1105 = fmul fast float %1083, %931
  %1106 = call float @dx.op.tertiary.f32(i32 46, float %932, float %1075, float %1105)  ; FMad(a,b,c)
  %1107 = call float @dx.op.tertiary.f32(i32 46, float %933, float %1097, float %1106)  ; FMad(a,b,c)
  %1108 = fmul fast float %1084, %931
  %1109 = call float @dx.op.tertiary.f32(i32 46, float %932, float %1076, float %1108)  ; FMad(a,b,c)
  %1110 = call float @dx.op.tertiary.f32(i32 46, float %933, float %1098, float %1109)  ; FMad(a,b,c)
  %1111 = fadd fast float %1099, %1104
  %1112 = fadd fast float %1100, %1107
  %1113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1114 = extractvalue %dx.types.CBufRet.f32 %1113, 0
  %1115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1116 = extractvalue %dx.types.CBufRet.f32 %1115, 0
  %1117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1118 = extractvalue %dx.types.CBufRet.f32 %1117, 0
  %1119 = extractvalue %dx.types.CBufRet.f32 %1113, 1
  %1120 = extractvalue %dx.types.CBufRet.f32 %1115, 1
  %1121 = extractvalue %dx.types.CBufRet.f32 %1117, 1
  %1122 = extractvalue %dx.types.CBufRet.f32 %1113, 2
  %1123 = extractvalue %dx.types.CBufRet.f32 %1115, 2
  %1124 = extractvalue %dx.types.CBufRet.f32 %1117, 2
  %1125 = extractvalue %dx.types.CBufRet.f32 %1113, 3
  %1126 = extractvalue %dx.types.CBufRet.f32 %1115, 3
  %1127 = extractvalue %dx.types.CBufRet.f32 %1117, 3
  %1128 = fadd fast float %1111, %1125
  %1129 = fadd fast float %1112, %1126
  %1130 = fadd fast float %1101, %937
  %1131 = fadd fast float %1130, %1110
  %1132 = fadd fast float %1131, %1127
  %1133 = fmul fast float %1128, %1114
  %1134 = call float @dx.op.tertiary.f32(i32 46, float %1129, float %1119, float %1133)  ; FMad(a,b,c)
  %1135 = call float @dx.op.tertiary.f32(i32 46, float %1132, float %1122, float %1134)  ; FMad(a,b,c)
  %1136 = fmul fast float %1128, %1116
  %1137 = call float @dx.op.tertiary.f32(i32 46, float %1129, float %1120, float %1136)  ; FMad(a,b,c)
  %1138 = call float @dx.op.tertiary.f32(i32 46, float %1132, float %1123, float %1137)  ; FMad(a,b,c)
  %1139 = fmul fast float %1128, %1118
  %1140 = call float @dx.op.tertiary.f32(i32 46, float %1129, float %1121, float %1139)  ; FMad(a,b,c)
  %1141 = call float @dx.op.tertiary.f32(i32 46, float %1132, float %1124, float %1140)  ; FMad(a,b,c)
  %1142 = fsub fast float %1135, %1125
  %1143 = fsub fast float %1138, %1126
  %1144 = fsub fast float %1141, %1127
  %1145 = fmul fast float %1114, %1096
  %1146 = call float @dx.op.tertiary.f32(i32 46, float %1097, float %1119, float %1145)  ; FMad(a,b,c)
  %1147 = call float @dx.op.tertiary.f32(i32 46, float %1098, float %1122, float %1146)  ; FMad(a,b,c)
  %1148 = fmul fast float %1116, %1096
  %1149 = call float @dx.op.tertiary.f32(i32 46, float %1097, float %1120, float %1148)  ; FMad(a,b,c)
  %1150 = call float @dx.op.tertiary.f32(i32 46, float %1098, float %1123, float %1149)  ; FMad(a,b,c)
  %1151 = fmul fast float %1118, %1096
  %1152 = call float @dx.op.tertiary.f32(i32 46, float %1097, float %1121, float %1151)  ; FMad(a,b,c)
  %1153 = call float @dx.op.tertiary.f32(i32 46, float %1098, float %1124, float %1152)  ; FMad(a,b,c)
  %1154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 208)  ; CBufferLoadLegacy(handle,regIndex)
  %1155 = extractvalue %dx.types.CBufRet.f32 %1154, 2
  %1156 = fadd fast float %1144, %1155
  %1157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1158 = extractvalue %dx.types.CBufRet.f32 %1157, 0
  %1159 = extractvalue %dx.types.CBufRet.f32 %1157, 1
  %1160 = extractvalue %dx.types.CBufRet.f32 %1157, 2
  %1161 = fsub fast float %1142, %1158
  %1162 = fsub fast float %1143, %1159
  %1163 = fsub fast float %1156, %1160
  %1164 = fmul fast float %126, 6.553500e+04
  %1165 = call float @dx.op.unary.f32(i32 26, float %1164)  ; Round_ne(value)
  %1166 = fptosi float %1165 to i32
  %1167 = call i32 @dx.op.binary.i32(i32 37, i32 %1166, i32 0)  ; IMax(a,b)
  %1168 = call i32 @dx.op.binary.i32(i32 38, i32 %1167, i32 65535)  ; IMin(a,b)
  %1169 = fmul fast float %129, 6.553500e+04
  %1170 = call float @dx.op.unary.f32(i32 26, float %1169)  ; Round_ne(value)
  %1171 = fptosi float %1170 to i32
  %1172 = call i32 @dx.op.binary.i32(i32 37, i32 %1171, i32 0)  ; IMax(a,b)
  %1173 = call i32 @dx.op.binary.i32(i32 38, i32 %1172, i32 65535)  ; IMin(a,b)
  %1174 = shl i32 %1173, 16
  %1175 = or i32 %1174, %1168
  %1176 = call float @dx.op.unary.f32(i32 6, float %1147)  ; FAbs(value)
  %1177 = call float @dx.op.unary.f32(i32 6, float %1150)  ; FAbs(value)
  %1178 = fadd fast float %1177, %1176
  %1179 = call float @dx.op.unary.f32(i32 6, float %1153)  ; FAbs(value)
  %1180 = fadd fast float %1178, %1179
  %1181 = fdiv fast float %1147, %1180
  %1182 = fdiv fast float %1150, %1180
  %1183 = fdiv fast float %1153, %1180
  %1184 = fcmp fast oge float %1183, 0.000000e+00
  %1185 = call float @dx.op.unary.f32(i32 6, float %1182)  ; FAbs(value)
  %1186 = call float @dx.op.unary.f32(i32 6, float %1181)  ; FAbs(value)
  %1187 = fsub fast float 1.000000e+00, %1185
  %1188 = fsub fast float 1.000000e+00, %1186
  %1189 = fcmp fast oge float %1181, 0.000000e+00
  %1190 = select i1 %1189, float 1.000000e+00, float -1.000000e+00
  %1191 = fcmp fast oge float %1182, 0.000000e+00
  %1192 = select i1 %1191, float 1.000000e+00, float -1.000000e+00
  %1193 = fmul fast float %1187, %1190
  %1194 = fmul fast float %1188, %1192
  %1195 = select i1 %1184, float %1181, float %1193
  %1196 = select i1 %1184, float %1182, float %1194
  %1197 = fmul fast float %1195, 1.275000e+02
  %1198 = fmul fast float %1196, 1.275000e+02
  %1199 = fadd fast float %1197, 1.275000e+02
  %1200 = fadd fast float %1198, 1.275000e+02
  %1201 = call float @dx.op.unary.f32(i32 26, float %1199)  ; Round_ne(value)
  %1202 = call float @dx.op.unary.f32(i32 26, float %1200)  ; Round_ne(value)
  %1203 = fptoui float %1201 to i32
  %1204 = fptoui float %1202 to i32
  %1205 = shl i32 %1204, 8
  %1206 = shl i32 %949, 16
  %1207 = or i32 %1203, %1206
  %1208 = or i32 %1207, %1205
  %1209 = mul i32 %29, 20
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %1209, i32 undef, float %1161, float %1162, float %1163, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1210 = add i32 %1209, 12
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1210, i32 undef, i32 %1175, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1211 = add i32 %1209, 16
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1211, i32 undef, i32 %1208, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1212 = fadd float %1161, 1.310720e+05
  %1213 = fadd float %1162, 1.310720e+05
  %1214 = fadd float %1163, 1.310720e+05
  br label %1215

; <label>:1215                                    ; preds = %919, %0
  %1216 = phi float [ %1212, %919 ], [ 1.310720e+05, %0 ]
  %1217 = phi float [ %1213, %919 ], [ 1.310720e+05, %0 ]
  %1218 = phi float [ %1214, %919 ], [ 1.310720e+05, %0 ]
  %1219 = phi i1 [ true, %919 ], [ false, %0 ]
  %1220 = phi i32 [ %972, %919 ], [ 0, %0 ]
  %1221 = call float @dx.op.binary.f32(i32 35, float %1216, float 0.000000e+00)  ; FMax(a,b)
  %1222 = call float @dx.op.binary.f32(i32 35, float %1217, float 0.000000e+00)  ; FMax(a,b)
  %1223 = call float @dx.op.binary.f32(i32 35, float %1218, float 0.000000e+00)  ; FMax(a,b)
  %1224 = bitcast float %1221 to i32
  %1225 = bitcast float %1222 to i32
  %1226 = bitcast float %1223 to i32
  %1227 = select i1 %1219, i32 %1224, i32 -1
  %1228 = select i1 %1219, i32 %1225, i32 -1
  %1229 = select i1 %1219, i32 %1226, i32 -1
  %1230 = select i1 %1219, i32 %1224, i32 0
  %1231 = select i1 %1219, i32 %1225, i32 0
  %1232 = select i1 %1219, i32 %1226, i32 0
  %1233 = shl i32 %19, 6
  %1234 = udiv i32 %1233, 9
  %1235 = sub nsw i32 %21, %1234
  %1236 = icmp ult i32 %20, 8
  br i1 %1236, label %1237, label %1245, !dx.controlflow.hints !42

; <label>:1237                                    ; preds = %1215
  %1238 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileFeaturesShared@@3PAIA", i32 0, i32 %20
  store i32 0, i32 addrspace(3)* %1238, align 4, !tbaa !43
  %1239 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinXShared@@3PAIA", i32 0, i32 %20
  store i32 -1, i32 addrspace(3)* %1239, align 4, !tbaa !43
  %1240 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinYShared@@3PAIA", i32 0, i32 %20
  store i32 -1, i32 addrspace(3)* %1240, align 4, !tbaa !43
  %1241 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinZShared@@3PAIA", i32 0, i32 %20
  store i32 -1, i32 addrspace(3)* %1241, align 4, !tbaa !43
  %1242 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxXShared@@3PAIA", i32 0, i32 %20
  store i32 0, i32 addrspace(3)* %1242, align 4, !tbaa !43
  %1243 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxYShared@@3PAIA", i32 0, i32 %20
  store i32 0, i32 addrspace(3)* %1243, align 4, !tbaa !43
  %1244 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxZShared@@3PAIA", i32 0, i32 %20
  store i32 0, i32 addrspace(3)* %1244, align 4, !tbaa !43
  br label %1245

; <label>:1245                                    ; preds = %1237, %1215
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %25, label %1246, label %1261, !dx.controlflow.hints !45

; <label>:1246                                    ; preds = %1245
  %1247 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileFeaturesShared@@3PAIA", i32 0, i32 %1235
  %1248 = atomicrmw or i32 addrspace(3)* %1247, i32 %1220 seq_cst
  %1249 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinXShared@@3PAIA", i32 0, i32 %1235
  %1250 = atomicrmw umin i32 addrspace(3)* %1249, i32 %1227 seq_cst
  %1251 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinYShared@@3PAIA", i32 0, i32 %1235
  %1252 = atomicrmw umin i32 addrspace(3)* %1251, i32 %1228 seq_cst
  %1253 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinZShared@@3PAIA", i32 0, i32 %1235
  %1254 = atomicrmw umin i32 addrspace(3)* %1253, i32 %1229 seq_cst
  %1255 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxXShared@@3PAIA", i32 0, i32 %1235
  %1256 = atomicrmw umax i32 addrspace(3)* %1255, i32 %1230 seq_cst
  %1257 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxYShared@@3PAIA", i32 0, i32 %1235
  %1258 = atomicrmw umax i32 addrspace(3)* %1257, i32 %1231 seq_cst
  %1259 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxZShared@@3PAIA", i32 0, i32 %1235
  %1260 = atomicrmw umax i32 addrspace(3)* %1259, i32 %1232 seq_cst
  br label %1261

; <label>:1261                                    ; preds = %1246, %1245
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1262 = and i1 %1236, %25
  br i1 %1262, label %1263, label %1299, !dx.controlflow.hints !46

; <label>:1263                                    ; preds = %1261
  %1264 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileFeaturesShared@@3PAIA", i32 0, i32 %20
  %1265 = load i32, i32 addrspace(3)* %1264, align 4, !tbaa !43
  %1266 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1267 = extractvalue %dx.types.CBufRet.i32 %1266, 2
  %1268 = add i32 %1234, %20
  %1269 = add i32 %1268, %1267
  %1270 = shl i32 %1269, 2
  %1271 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %1270, i32 undef, i32 undef, i32 %1265)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1272 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinXShared@@3PAIA", i32 0, i32 %20
  %1273 = load i32, i32 addrspace(3)* %1272, align 4, !tbaa !43
  %1274 = xor i32 %1273, -1
  %1275 = mul i32 %1269, 24
  %1276 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %1275, i32 undef, i32 undef, i32 %1274)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1277 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinYShared@@3PAIA", i32 0, i32 %20
  %1278 = load i32, i32 addrspace(3)* %1277, align 4, !tbaa !43
  %1279 = xor i32 %1278, -1
  %1280 = or i32 %1275, 4
  %1281 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %1280, i32 undef, i32 undef, i32 %1279)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1282 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinZShared@@3PAIA", i32 0, i32 %20
  %1283 = load i32, i32 addrspace(3)* %1282, align 4, !tbaa !43
  %1284 = xor i32 %1283, -1
  %1285 = add i32 %1275, 8
  %1286 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %1285, i32 undef, i32 undef, i32 %1284)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1287 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxXShared@@3PAIA", i32 0, i32 %20
  %1288 = load i32, i32 addrspace(3)* %1287, align 4, !tbaa !43
  %1289 = add i32 %1275, 12
  %1290 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %1289, i32 undef, i32 undef, i32 %1288)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1291 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxYShared@@3PAIA", i32 0, i32 %20
  %1292 = load i32, i32 addrspace(3)* %1291, align 4, !tbaa !43
  %1293 = add i32 %1275, 16
  %1294 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %1293, i32 undef, i32 undef, i32 %1292)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1295 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxZShared@@3PAIA", i32 0, i32 %20
  %1296 = load i32, i32 addrspace(3)* %1295, align 4, !tbaa !43
  %1297 = add i32 %1275, 20
  %1298 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %1297, i32 undef, i32 undef, i32 %1296)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1299

; <label>:1299                                    ; preds = %1263, %1261
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
!27 = !{void ()* @cs_water_tile_process_verts_3x3, !"cs_water_tile_process_verts_3x3", null, !4, !28}
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

