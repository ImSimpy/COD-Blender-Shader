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
; shader hash: 8c35c23be5268d30685b08df1332f651
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

define void @cs_water_tile_process_verts_3x3_debug_shader() {
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
  br i1 %25, label %30, label %1444, !dx.controlflow.hints !30

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
  br i1 %282, label %959, label %283

; <label>:283                                     ; preds = %30
  br label %284

; <label>:284                                     ; preds = %937, %283
  %285 = phi i32 [ %938, %937 ], [ 0, %283 ]
  %286 = phi float [ %939, %937 ], [ 0.000000e+00, %283 ]
  %287 = phi float [ %940, %937 ], [ 0.000000e+00, %283 ]
  %288 = phi float [ %941, %937 ], [ 0.000000e+00, %283 ]
  %289 = phi float [ %942, %937 ], [ 0.000000e+00, %283 ]
  %290 = phi float [ %943, %937 ], [ 0.000000e+00, %283 ]
  %291 = phi float [ %944, %937 ], [ 0.000000e+00, %283 ]
  %292 = phi float [ %945, %937 ], [ 0.000000e+00, %283 ]
  %293 = phi float [ %946, %937 ], [ 0.000000e+00, %283 ]
  %294 = phi float [ %947, %937 ], [ 0.000000e+00, %283 ]
  %295 = phi float [ %948, %937 ], [ 0.000000e+00, %283 ]
  %296 = phi float [ %949, %937 ], [ 0.000000e+00, %283 ]
  %297 = phi float [ %950, %937 ], [ 0.000000e+00, %283 ]
  %298 = phi float [ %951, %937 ], [ 0.000000e+00, %283 ]
  %299 = phi float [ %952, %937 ], [ 0.000000e+00, %283 ]
  %300 = phi float [ %953, %937 ], [ 0.000000e+00, %283 ]
  %301 = phi float [ %954, %937 ], [ 0.000000e+00, %283 ]
  %302 = phi float [ %955, %937 ], [ 0.000000e+00, %283 ]
  %303 = phi float [ %325, %937 ], [ 0.000000e+00, %283 ]
  %304 = phi i32 [ %956, %937 ], [ 0, %283 ]
  %305 = shl i32 %304, 2
  %306 = add i32 %305, %62
  %307 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.f32 %307, 0
  %309 = add i32 %305, %63
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = add i32 %311, 0
  %313 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %312, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %314 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %313, i32 0)  ; GetDimensions(handle,mipLevel)
  %315 = extractvalue %dx.types.Dimensions %314, 0
  %316 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %315)  ; FirstbitLo(value)
  %317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.i32 %317, 1
  %319 = sub nsw i32 %318, %316
  %320 = sitofp i32 %319 to float
  %321 = fsub fast float %143, %320
  %322 = call float @dx.op.binary.f32(i32 35, float %321, float 0.000000e+00)  ; FMax(a,b)
  %323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %313, %dx.types.Handle %11, float %280, float %281, float %308, float undef, i32 0, i32 0, i32 undef, float %322)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %324 = extractvalue %dx.types.ResRet.f32 %323, 0
  %325 = fadd fast float %324, %303
  %326 = fcmp fast ogt float %324, 0.000000e+00
  br i1 %326, label %327, label %937, !dx.controlflow.hints !31

; <label>:327                                     ; preds = %284
  %328 = add i32 %305, %267
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = and i32 %330, 32767
  %332 = mul nuw nsw i32 %331, 928
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = or i32 %332, 4
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = or i32 %332, 8
  %339 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.f32 %339, 0
  %341 = or i32 %332, 12
  %342 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.f32 %342, 1
  %344 = or i32 %332, 20
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = add nuw nsw i32 %332, 72
  %348 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.f32 %348, 0
  %350 = extractvalue %dx.types.ResRet.f32 %348, 1
  %351 = add nuw nsw i32 %332, 80
  %352 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.f32 %352, 0
  %354 = add nuw nsw i32 %332, 84
  %355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.f32 %355, 0
  %357 = add nuw nsw i32 %332, 88
  %358 = add nuw nsw i32 %332, 228
  %359 = add nuw nsw i32 %332, 596
  %360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.f32 %360, 0
  %362 = extractvalue %dx.types.ResRet.f32 %360, 1
  %363 = add nuw nsw i32 %332, 604
  %364 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.f32 %364, 0
  %366 = extractvalue %dx.types.ResRet.f32 %364, 1
  %367 = add nuw nsw i32 %332, 612
  %368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.f32 %368, 0
  %370 = add nuw nsw i32 %332, 616
  %371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.f32 %371, 0
  %373 = add nuw nsw i32 %332, 696
  %374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.f32 %374, 0
  %376 = extractvalue %dx.types.ResRet.f32 %374, 1
  %377 = add nuw nsw i32 %332, 708
  %378 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.f32 %378, 0
  %380 = extractvalue %dx.types.ResRet.f32 %378, 1
  %381 = add nuw nsw i32 %332, 780
  %382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.f32 %382, 0
  %384 = extractvalue %dx.types.ResRet.f32 %382, 1
  %385 = add nuw nsw i32 %332, 792
  %386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.f32 %386, 0
  %388 = extractvalue %dx.types.ResRet.f32 %386, 1
  %389 = add nuw nsw i32 %332, 840
  %390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.f32 %390, 0
  %392 = extractvalue %dx.types.ResRet.f32 %390, 1
  %393 = and i32 %304, 31
  %394 = shl i32 1, %393
  %395 = or i32 %394, %285
  %396 = shl i32 %334, 1
  %397 = and i32 %396, 256
  %398 = xor i32 %397, 256
  %399 = or i32 %395, %398
  %400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 201)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.f32 %400, 0
  %402 = call float @dx.op.binary.f32(i32 35, float %401, float %391)  ; FMax(a,b)
  %403 = call float @dx.op.binary.f32(i32 36, float %402, float %392)  ; FMin(a,b)
  %404 = fmul fast float %403, %324
  %405 = fadd fast float %404, %302
  %406 = and i32 %334, 256
  %407 = icmp ne i32 %406, 0
  %408 = fcmp fast ogt float %356, 0.000000e+00
  %409 = fmul fast float %356, %222
  %410 = call float @dx.op.unary.f32(i32 7, float %409)  ; Saturate(value)
  %411 = select i1 %408, float %410, float 1.000000e+00
  %412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %413 = extractvalue %dx.types.CBufRet.f32 %412, 3
  %414 = fadd fast float %413, %411
  %415 = call float @dx.op.unary.f32(i32 7, float %414)  ; Saturate(value)
  %416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %417 = extractvalue %dx.types.CBufRet.f32 %416, 0
  %418 = fsub fast float 1.000000e+00, %324
  %419 = select i1 %407, float %418, float 1.000000e+00
  %420 = call float @dx.op.unary.f32(i32 7, float %419)  ; Saturate(value)
  %421 = fmul fast float %420, %118
  %422 = fmul fast float %421, %417
  %423 = icmp eq i32 %337, 0
  br i1 %423, label %437, label %424

; <label>:424                                     ; preds = %327
  br label %425

; <label>:425                                     ; preds = %425, %424
  %426 = phi float [ %433, %425 ], [ 0.000000e+00, %424 ]
  %427 = phi i32 [ %434, %425 ], [ 0, %424 ]
  %428 = mul i32 %427, 28
  %429 = add nuw nsw i32 %332, 92
  %430 = add i32 %429, %428
  %431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.f32 %431, 0
  %433 = fadd fast float %432, %426
  %434 = add nuw i32 %427, 1
  %435 = icmp eq i32 %434, %337
  br i1 %435, label %436, label %425

; <label>:436                                     ; preds = %425
  br label %437

; <label>:437                                     ; preds = %436, %327
  %438 = phi float [ 0.000000e+00, %327 ], [ %433, %436 ]
  %439 = fmul fast float %420, %123
  %440 = fmul fast float %439, %417
  %441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %442 = extractvalue %dx.types.CBufRet.f32 %441, 3
  %443 = fcmp fast ogt float %438, %442
  %444 = select i1 %443, float %440, float %422
  %445 = fcmp fast ogt float %369, 0.000000e+00
  %446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %447 = extractvalue %dx.types.CBufRet.f32 %446, 2
  %448 = fadd fast float %447, 1.000000e+00
  %449 = call float @dx.op.unary.f32(i32 7, float %448)  ; Saturate(value)
  %450 = fmul fast float %449, %369
  %451 = call float @dx.op.binary.f32(i32 35, float %450, float 0x3F50624DE0000000)  ; FMax(a,b)
  %452 = fdiv fast float 1.000000e+00, %451
  %453 = select i1 %445, float %452, float 0.000000e+00
  %454 = fcmp fast ogt float %372, 0.000000e+00
  %455 = extractvalue %dx.types.CBufRet.f32 %446, 3
  %456 = fadd fast float %455, 1.000000e+00
  %457 = call float @dx.op.unary.f32(i32 7, float %456)  ; Saturate(value)
  %458 = fmul fast float %457, %372
  %459 = call float @dx.op.binary.f32(i32 35, float %458, float 0x3F50624DE0000000)  ; FMax(a,b)
  %460 = fdiv fast float 1.000000e+00, %459
  %461 = select i1 %454, float %460, float 0.000000e+00
  %462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %463 = extractvalue %dx.types.CBufRet.f32 %462, 3
  %464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %465 = extractvalue %dx.types.CBufRet.f32 %464, 1
  br i1 %423, label %588, label %466, !dx.controlflow.hints !32

; <label>:466                                     ; preds = %437
  br label %467

; <label>:467                                     ; preds = %467, %466
  %468 = phi float [ %534, %467 ], [ 0.000000e+00, %466 ]
  %469 = phi float [ %535, %467 ], [ 0.000000e+00, %466 ]
  %470 = phi float [ %536, %467 ], [ 0.000000e+00, %466 ]
  %471 = phi float [ %537, %467 ], [ 0.000000e+00, %466 ]
  %472 = phi float [ %538, %467 ], [ 0.000000e+00, %466 ]
  %473 = phi float [ %539, %467 ], [ 0.000000e+00, %466 ]
  %474 = phi float [ %540, %467 ], [ 0.000000e+00, %466 ]
  %475 = phi float [ %542, %467 ], [ 0.000000e+00, %466 ]
  %476 = phi float [ %543, %467 ], [ 0.000000e+00, %466 ]
  %477 = phi float [ %548, %467 ], [ 0.000000e+00, %466 ]
  %478 = phi float [ %570, %467 ], [ 0.000000e+00, %466 ]
  %479 = phi i32 [ %571, %467 ], [ 0, %466 ]
  %480 = mul i32 %479, 28
  %481 = add i32 %480, %357
  %482 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %481, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.f32 %482, 0
  %484 = add i32 %481, 4
  %485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.f32 %485, 0
  %487 = fmul fast float %486, %444
  %488 = add i32 %481, 8
  %489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.f32 %489, 0
  %491 = add i32 %481, 12
  %492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.f32 %492, 0
  %494 = fmul fast float %493, %463
  %495 = add i32 %481, 16
  %496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.f32 %496, 0
  %498 = extractvalue %dx.types.ResRet.f32 %496, 1
  %499 = add i32 %481, 24
  %500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.f32 %500, 0
  %502 = call float @dx.op.dot2.f32(i32 54, float %497, float %498, float %111, float %112)  ; Dot2(ax,ay,bx,by)
  %503 = fmul fast float %502, %483
  %504 = fmul fast float %490, %465
  %505 = fsub fast float %503, %504
  %506 = fsub fast float %505, %501
  %507 = call float @dx.op.unary.f32(i32 13, float %506)  ; Sin(value)
  %508 = call float @dx.op.unary.f32(i32 12, float %506)  ; Cos(value)
  %509 = fmul fast float %494, %487
  %510 = fmul fast float %509, %497
  %511 = fmul fast float %510, %508
  %512 = fmul fast float %509, %498
  %513 = fmul fast float %512, %508
  %514 = fmul fast float %487, %415
  %515 = fmul fast float %514, %507
  %516 = fmul fast float %487, %483
  %517 = fmul fast float %516, %494
  %518 = fmul fast float %497, %497
  %519 = fmul fast float %518, %517
  %520 = fmul fast float %519, %507
  %521 = fmul fast float %497, %498
  %522 = fmul fast float %521, %517
  %523 = fmul fast float %522, %507
  %524 = fsub fast float 1.000000e+00, %520
  %525 = fmul fast float %483, %415
  %526 = fmul fast float %525, %487
  %527 = fmul fast float %526, %497
  %528 = fmul fast float %527, %508
  %529 = fmul fast float %498, %498
  %530 = fmul fast float %529, %517
  %531 = fmul fast float %530, %507
  %532 = fmul fast float %526, %498
  %533 = fmul fast float %532, %508
  %534 = fadd fast float %511, %468
  %535 = fadd fast float %513, %469
  %536 = fadd fast float %515, %470
  %537 = fadd fast float %524, %471
  %538 = fsub fast float %472, %523
  %539 = fadd fast float %528, %473
  %540 = fadd fast float %531, %474
  %541 = fadd fast float %475, 1.000000e+00
  %542 = fadd fast float %541, %523
  %543 = fadd fast float %533, %476
  %544 = fsub fast float 1.000000e+00, %531
  %545 = fmul fast float %524, %544
  %546 = fmul fast float %523, %523
  %547 = fsub fast float %545, %546
  %548 = fadd fast float %547, %477
  %549 = fadd fast float %506, 0xBFF921FB60000000
  %550 = fmul fast float %549, 0x3FC45F3060000000
  %551 = call float @dx.op.unary.f32(i32 27, float %550)  ; Round_ni(value)
  %552 = fsub fast float %550, %551
  %553 = call float @dx.op.unary.f32(i32 7, float %552)  ; Saturate(value)
  %554 = fmul fast float %553, %453
  %555 = call float @dx.op.unary.f32(i32 7, float %554)  ; Saturate(value)
  %556 = fmul fast float %555, %555
  %557 = fmul fast float %555, 2.000000e+00
  %558 = fsub fast float 3.000000e+00, %557
  %559 = fmul fast float %556, %558
  %560 = fsub fast float 1.000000e+00, %553
  %561 = fmul fast float %560, %461
  %562 = call float @dx.op.unary.f32(i32 7, float %561)  ; Saturate(value)
  %563 = fmul fast float %562, %562
  %564 = fmul fast float %562, 2.000000e+00
  %565 = fsub fast float 3.000000e+00, %564
  %566 = fmul fast float %563, %565
  %567 = fsub fast float 2.000000e+00, %559
  %568 = fsub fast float %567, %566
  %569 = call float @dx.op.unary.f32(i32 7, float %568)  ; Saturate(value)
  %570 = fadd fast float %569, %478
  %571 = add nuw i32 %479, 1
  %572 = icmp eq i32 %571, %337
  br i1 %572, label %573, label %467

; <label>:573                                     ; preds = %467
  %574 = call float @dx.op.dot3.f32(i32 55, float %537, float %538, float %539, float %537, float %538, float %539)  ; Dot3(ax,ay,az,bx,by,bz)
  %575 = call float @dx.op.unary.f32(i32 25, float %574)  ; Rsqrt(value)
  %576 = fmul fast float %575, %537
  %577 = fmul fast float %575, %538
  %578 = fmul fast float %575, %539
  %579 = call float @dx.op.dot3.f32(i32 55, float %540, float %542, float %543, float %540, float %542, float %543)  ; Dot3(ax,ay,az,bx,by,bz)
  %580 = call float @dx.op.unary.f32(i32 25, float %579)  ; Rsqrt(value)
  %581 = fmul fast float %580, %540
  %582 = fmul fast float %580, %542
  %583 = fmul fast float %580, %543
  %584 = uitofp i32 %337 to float
  %585 = fdiv fast float 1.000000e+00, %584
  %586 = fmul fast float %585, %548
  %587 = fmul fast float %585, %570
  br label %588

; <label>:588                                     ; preds = %573, %437
  %589 = phi float [ %534, %573 ], [ 0.000000e+00, %437 ]
  %590 = phi float [ %535, %573 ], [ 0.000000e+00, %437 ]
  %591 = phi float [ %536, %573 ], [ 0.000000e+00, %437 ]
  %592 = phi float [ %576, %573 ], [ 0.000000e+00, %437 ]
  %593 = phi float [ %577, %573 ], [ 0.000000e+00, %437 ]
  %594 = phi float [ %578, %573 ], [ 0.000000e+00, %437 ]
  %595 = phi float [ %581, %573 ], [ 0.000000e+00, %437 ]
  %596 = phi float [ %582, %573 ], [ 0.000000e+00, %437 ]
  %597 = phi float [ %583, %573 ], [ 0.000000e+00, %437 ]
  %598 = phi float [ %586, %573 ], [ 1.000000e+00, %437 ]
  %599 = phi float [ %587, %573 ], [ 1.000000e+00, %437 ]
  %600 = fmul fast float %589, %324
  %601 = fmul fast float %590, %324
  %602 = fmul fast float %591, %324
  %603 = fadd fast float %600, %286
  %604 = fadd fast float %601, %287
  %605 = fadd fast float %602, %288
  %606 = fmul fast float %592, %324
  %607 = fmul fast float %593, %324
  %608 = fmul fast float %594, %324
  %609 = fadd fast float %606, %289
  %610 = fadd fast float %607, %290
  %611 = fadd fast float %608, %291
  %612 = fmul fast float %595, %324
  %613 = fmul fast float %596, %324
  %614 = fmul fast float %597, %324
  %615 = fadd fast float %612, %292
  %616 = fadd fast float %613, %293
  %617 = fadd fast float %614, %294
  %618 = fsub fast float 1.000000e+00, %598
  %619 = fmul fast float %618, %365
  %620 = fadd fast float %619, %366
  %621 = fmul fast float %444, %324
  %622 = fmul fast float %621, %599
  %623 = fmul fast float %622, %620
  %624 = fadd fast float %623, %295
  %625 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %626 = extractvalue %dx.types.CBufRet.i32 %625, 0
  %627 = and i32 %626, 131072
  %628 = icmp eq i32 %627, 0
  %629 = and i32 %626, 524288
  %630 = icmp ne i32 %629, 0
  %631 = and i32 %626, 2097152
  %632 = icmp ne i32 %631, 0
  br i1 %628, label %896, label %633, !dx.controlflow.hints !33

; <label>:633                                     ; preds = %588
  %634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %635 = extractvalue %dx.types.CBufRet.f32 %634, 0
  %636 = extractvalue %dx.types.CBufRet.f32 %634, 1
  %637 = extractvalue %dx.types.CBufRet.f32 %634, 2
  %638 = fsub fast float %111, %635
  %639 = fsub fast float %112, %636
  %640 = fsub fast float %207, %637
  %641 = fmul fast float %638, %638
  %642 = fmul fast float %639, %639
  %643 = fadd fast float %641, %642
  %644 = fmul fast float %640, %640
  %645 = fadd fast float %643, %644
  %646 = call float @dx.op.unary.f32(i32 24, float %645)  ; Sqrt(value)
  br i1 %632, label %647, label %693, !dx.controlflow.hints !34

; <label>:647                                     ; preds = %633
  %648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %649 = extractvalue %dx.types.CBufRet.f32 %648, 0
  %650 = fcmp fast ogt float %646, %649
  %651 = zext i1 %650 to i32
  %652 = extractvalue %dx.types.CBufRet.f32 %648, 1
  %653 = fcmp fast ogt float %646, %652
  %654 = zext i1 %653 to i32
  %655 = add nuw nsw i32 %654, %651
  %656 = extractvalue %dx.types.CBufRet.f32 %648, 2
  %657 = fcmp fast ogt float %646, %656
  %658 = zext i1 %657 to i32
  %659 = add nuw nsw i32 %655, %658
  %660 = icmp ult i32 %659, 3
  %661 = zext i1 %660 to i32
  %662 = shl nuw nsw i32 %659, 2
  %663 = add nuw nsw i32 %662, 48
  %664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %663)  ; CBufferLoadLegacy(handle,regIndex)
  %665 = extractvalue %dx.types.CBufRet.f32 %664, 1
  %666 = fcmp fast ogt float %646, %665
  %667 = zext i1 %666 to i32
  %668 = or i32 %662, 1
  %669 = add nuw nsw i32 %668, 48
  %670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %669)  ; CBufferLoadLegacy(handle,regIndex)
  %671 = extractvalue %dx.types.CBufRet.f32 %670, 1
  %672 = fcmp fast ogt float %646, %671
  %673 = zext i1 %672 to i32
  %674 = add nuw nsw i32 %673, %667
  %675 = or i32 %662, 2
  %676 = add nuw nsw i32 %675, 48
  %677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %676)  ; CBufferLoadLegacy(handle,regIndex)
  %678 = extractvalue %dx.types.CBufRet.f32 %677, 1
  %679 = fcmp fast ogt float %646, %678
  %680 = zext i1 %679 to i32
  %681 = add nuw nsw i32 %674, %680
  %682 = add i32 %346, -1
  %683 = call i32 @dx.op.binary.i32(i32 40, i32 %681, i32 %682)  ; UMin(a,b)
  %684 = add i32 %662, %683
  %685 = call i32 @dx.op.binary.i32(i32 40, i32 %684, i32 12)  ; UMin(a,b)
  %686 = add i32 %685, 48
  %687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %686)  ; CBufferLoadLegacy(handle,regIndex)
  %688 = extractvalue %dx.types.CBufRet.f32 %687, 0
  %689 = fcmp fast oge float %646, %688
  %690 = zext i1 %689 to i32
  %691 = call i32 @dx.op.binary.i32(i32 40, i32 %346, i32 %661)  ; UMin(a,b)
  %692 = call i32 @dx.op.binary.i32(i32 40, i32 %690, i32 %691)  ; UMin(a,b)
  br label %693

; <label>:693                                     ; preds = %647, %633
  %694 = phi i32 [ %685, %647 ], [ 0, %633 ]
  %695 = phi i32 [ %692, %647 ], [ 0, %633 ]
  %696 = add i32 %695, %346
  %697 = icmp eq i32 %696, 0
  br i1 %697, label %889, label %698

; <label>:698                                     ; preds = %693
  br label %699

; <label>:699                                     ; preds = %867, %698
  %700 = phi float [ %883, %867 ], [ 0.000000e+00, %698 ]
  %701 = phi float [ %884, %867 ], [ 0.000000e+00, %698 ]
  %702 = phi float [ %885, %867 ], [ 0.000000e+00, %698 ]
  %703 = phi i32 [ %715, %867 ], [ %694, %698 ]
  %704 = phi i32 [ %886, %867 ], [ 0, %698 ]
  %705 = add i32 %704, %703
  br i1 %632, label %706, label %714, !dx.controlflow.hints !35

; <label>:706                                     ; preds = %699
  %707 = and i32 %705, -4
  %708 = add i32 %707, %346
  %709 = icmp uge i32 %705, %708
  %710 = sub i32 4, %346
  %711 = select i1 %709, i32 %710, i32 0
  %712 = add i32 %711, %703
  %713 = add i32 %711, %705
  br label %714

; <label>:714                                     ; preds = %706, %699
  %715 = phi i32 [ %712, %706 ], [ %703, %699 ]
  %716 = phi i32 [ %713, %706 ], [ %705, %699 ]
  %717 = and i32 %716, 3
  %718 = select i1 %632, i32 %717, i32 %704
  %719 = lshr i32 %716, 2
  %720 = select i1 %632, i32 %719, i32 0
  %721 = add i32 %716, 32
  %722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %721)  ; CBufferLoadLegacy(handle,regIndex)
  %723 = extractvalue %dx.types.CBufRet.f32 %722, 0
  %724 = extractvalue %dx.types.CBufRet.f32 %722, 1
  %725 = extractvalue %dx.types.CBufRet.f32 %722, 2
  %726 = extractvalue %dx.types.CBufRet.f32 %722, 3
  %727 = fmul fast float %723, %646
  %728 = fadd fast float %727, %724
  %729 = call float @dx.op.unary.f32(i32 7, float %728)  ; Saturate(value)
  %730 = fmul fast float %725, %646
  %731 = fadd fast float %730, %726
  %732 = call float @dx.op.unary.f32(i32 7, float %731)  ; Saturate(value)
  %733 = call float @dx.op.binary.f32(i32 36, float %729, float %732)  ; FMin(a,b)
  %734 = select i1 %632, float %733, float 1.000000e+00
  %735 = mul i32 %718, 72
  %736 = add i32 %358, %735
  %737 = add i32 %736, 16
  %738 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.f32 %738, 0
  %740 = extractvalue %dx.types.ResRet.f32 %738, 1
  %741 = extractvalue %dx.types.ResRet.f32 %738, 2
  %742 = extractvalue %dx.types.ResRet.f32 %738, 3
  %743 = add i32 %736, 36
  %744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %743, i32 undef)  ; BufferLoad(srv,index,wot)
  %745 = extractvalue %dx.types.ResRet.f32 %744, 0
  %746 = add i32 %736, 56
  %747 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %746, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.f32 %747, 0
  %749 = fmul fast float %247, 3.906250e-03
  %750 = fmul fast float %749, %353
  %751 = fmul fast float %750, %745
  %752 = fmul fast float %751, %748
  %753 = extractvalue %dx.types.ResRet.f32 %747, 1
  %754 = fadd fast float %752, %753
  %755 = call float @dx.op.binary.f32(i32 35, float %754, float 0.000000e+00)  ; FMax(a,b)
  %756 = add i32 %736, 32
  %757 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %756, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.f32 %757, 0
  %759 = fmul fast float %755, %734
  %760 = fmul fast float %759, %758
  br i1 %630, label %761, label %794, !dx.controlflow.hints !36

; <label>:761                                     ; preds = %714
  %762 = fmul fast float %745, %242
  %763 = fmul fast float %745, %243
  %764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %765 = extractvalue %dx.types.CBufRet.f32 %764, 1
  %766 = add i32 %736, 40
  %767 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %766, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.f32 %767, 0
  %769 = extractvalue %dx.types.ResRet.f32 %767, 1
  %770 = extractvalue %dx.types.ResRet.f32 %767, 2
  %771 = extractvalue %dx.types.ResRet.f32 %767, 3
  %772 = fadd fast float %765, %274
  %773 = fadd fast float %772, %770
  %774 = fmul fast float %772, %769
  %775 = call float @dx.op.unary.f32(i32 29, float %774)  ; Round_z(value)
  %776 = fmul fast float %768, %775
  %777 = fsub fast float %772, %776
  %778 = fmul fast float %773, %769
  %779 = call float @dx.op.unary.f32(i32 29, float %778)  ; Round_z(value)
  %780 = fmul fast float %779, %768
  %781 = fsub fast float %773, %780
  %782 = fmul fast float %777, %762
  %783 = fmul fast float %777, %763
  %784 = fmul fast float %781, %762
  %785 = fmul fast float %781, %763
  %786 = fsub fast float %111, %782
  %787 = fsub fast float %112, %783
  %788 = fsub fast float %111, %784
  %789 = fsub fast float %112, %785
  %790 = fsub fast float %770, %777
  %791 = call float @dx.op.unary.f32(i32 6, float %790)  ; FAbs(value)
  %792 = fmul fast float %791, %771
  %793 = call float @dx.op.unary.f32(i32 7, float %792)  ; Saturate(value)
  br label %794

; <label>:794                                     ; preds = %761, %714
  %795 = phi float [ %786, %761 ], [ %111, %714 ]
  %796 = phi float [ %787, %761 ], [ %112, %714 ]
  %797 = phi float [ %788, %761 ], [ %111, %714 ]
  %798 = phi float [ %789, %761 ], [ %112, %714 ]
  %799 = phi float [ %793, %761 ], [ 0.000000e+00, %714 ]
  %800 = fmul fast float %340, 4.000000e+00
  %801 = uitofp i32 %720 to float
  %802 = fadd fast float %801, %800
  %803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %804 = extractvalue %dx.types.CBufRet.f32 %803, 0
  %805 = extractvalue %dx.types.CBufRet.f32 %803, 1
  %806 = extractvalue %dx.types.CBufRet.f32 %803, 2
  %807 = extractvalue %dx.types.CBufRet.f32 %803, 3
  %808 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 0
  store float %804, float* %808, align 4
  %809 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 1
  store float %805, float* %809, align 4
  %810 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 2
  store float %806, float* %810, align 4
  %811 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 3
  store float %807, float* %811, align 4
  %812 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 %720
  %813 = load float, float* %812, align 4, !tbaa !37, !noalias !41
  %814 = fmul fast float %813, %343
  %815 = select i1 %632, float %814, float %343
  %816 = fmul fast float %795, %739
  %817 = call float @dx.op.tertiary.f32(i32 46, float %740, float %796, float %816)  ; FMad(a,b,c)
  %818 = fmul fast float %795, %741
  %819 = call float @dx.op.tertiary.f32(i32 46, float %742, float %796, float %818)  ; FMad(a,b,c)
  %820 = add i32 %736, 8
  %821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %820, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.f32 %821, 0
  %823 = extractvalue %dx.types.ResRet.f32 %821, 1
  %824 = fadd fast float %822, %817
  %825 = fadd fast float %823, %819
  %826 = fmul fast float %824, %815
  %827 = fmul fast float %825, %815
  %828 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %736, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.f32 %828, 0
  %830 = extractvalue %dx.types.ResRet.f32 %828, 1
  %831 = fmul fast float %826, %829
  %832 = fmul fast float %827, %830
  %833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %834 = extractvalue %dx.types.CBufRet.f32 %833, 2
  %835 = fadd fast float %831, %834
  %836 = fadd fast float %832, %834
  %837 = fmul fast float %797, %739
  %838 = call float @dx.op.tertiary.f32(i32 46, float %740, float %798, float %837)  ; FMad(a,b,c)
  %839 = fmul fast float %797, %741
  %840 = call float @dx.op.tertiary.f32(i32 46, float %742, float %798, float %839)  ; FMad(a,b,c)
  %841 = fadd fast float %822, %838
  %842 = fadd fast float %823, %840
  %843 = fmul fast float %841, %815
  %844 = fmul fast float %842, %815
  %845 = fmul fast float %843, %829
  %846 = fmul fast float %844, %830
  %847 = fadd fast float %845, %834
  %848 = fadd fast float %846, %834
  %849 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %12, float %835, float %836, float %802, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %850 = extractvalue %dx.types.ResRet.f32 %849, 0
  %851 = extractvalue %dx.types.ResRet.f32 %849, 1
  %852 = extractvalue %dx.types.ResRet.f32 %849, 2
  %853 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %12, float %847, float %848, float %802, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  br i1 %630, label %854, label %867, !dx.controlflow.hints !46

; <label>:854                                     ; preds = %794
  %855 = extractvalue %dx.types.ResRet.f32 %853, 2
  %856 = extractvalue %dx.types.ResRet.f32 %853, 1
  %857 = extractvalue %dx.types.ResRet.f32 %853, 0
  %858 = fsub fast float %857, %850
  %859 = fsub fast float %856, %851
  %860 = fsub fast float %855, %852
  %861 = fmul fast float %858, %799
  %862 = fmul fast float %859, %799
  %863 = fmul fast float %860, %799
  %864 = fadd fast float %861, %850
  %865 = fadd fast float %862, %851
  %866 = fadd fast float %863, %852
  br label %867

; <label>:867                                     ; preds = %854, %794
  %868 = phi float [ %864, %854 ], [ %850, %794 ]
  %869 = phi float [ %865, %854 ], [ %851, %794 ]
  %870 = phi float [ %866, %854 ], [ %852, %794 ]
  %871 = fmul fast float %868, %739
  %872 = call float @dx.op.tertiary.f32(i32 46, float %869, float %741, float %871)  ; FMad(a,b,c)
  %873 = fmul fast float %868, %740
  %874 = call float @dx.op.tertiary.f32(i32 46, float %869, float %742, float %873)  ; FMad(a,b,c)
  %875 = fdiv fast float 1.000000e+00, %829
  %876 = fdiv fast float 1.000000e+00, %830
  %877 = call float @dx.op.unary.f32(i32 7, float %760)  ; Saturate(value)
  %878 = fmul fast float %875, %872
  %879 = fmul fast float %878, %877
  %880 = fmul fast float %876, %874
  %881 = fmul fast float %880, %877
  %882 = fmul fast float %870, %760
  %883 = fadd fast float %879, %700
  %884 = fadd fast float %881, %701
  %885 = fadd fast float %882, %702
  %886 = add nuw i32 %704, 1
  %887 = icmp eq i32 %886, %696
  br i1 %887, label %888, label %699

; <label>:888                                     ; preds = %867
  br label %889

; <label>:889                                     ; preds = %888, %693
  %890 = phi float [ 0.000000e+00, %693 ], [ %883, %888 ]
  %891 = phi float [ 0.000000e+00, %693 ], [ %884, %888 ]
  %892 = phi float [ 0.000000e+00, %693 ], [ %885, %888 ]
  %893 = fmul fast float %890, %422
  %894 = fmul fast float %891, %422
  %895 = fmul fast float %892, %422
  br label %896

; <label>:896                                     ; preds = %889, %588
  %897 = phi float [ %893, %889 ], [ 0.000000e+00, %588 ]
  %898 = phi float [ %894, %889 ], [ 0.000000e+00, %588 ]
  %899 = phi float [ %895, %889 ], [ 0.000000e+00, %588 ]
  %900 = fmul fast float %897, %324
  %901 = fmul fast float %898, %324
  %902 = fmul fast float %415, %324
  %903 = fmul fast float %902, %899
  %904 = fadd fast float %900, %296
  %905 = fadd fast float %901, %297
  %906 = fadd fast float %903, %298
  %907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %908 = fmul fast float %361, %260
  %909 = fadd fast float %908, %362
  %910 = call float @dx.op.unary.f32(i32 7, float %909)  ; Saturate(value)
  %911 = call float @dx.op.binary.f32(i32 35, float %301, float %910)  ; FMax(a,b)
  %912 = fmul fast float %379, %247
  %913 = fadd fast float %912, %380
  %914 = call float @dx.op.binary.f32(i32 35, float %913, float 0.000000e+00)  ; FMax(a,b)
  %915 = fmul fast float %914, %375
  %916 = fadd fast float %915, %376
  %917 = call float @dx.op.unary.f32(i32 7, float %916)  ; Saturate(value)
  %918 = and i32 %334, 2
  %919 = icmp ne i32 %918, 0
  %920 = select i1 %919, float %917, float 0.000000e+00
  %921 = call float @dx.op.binary.f32(i32 35, float %920, float %299)  ; FMax(a,b)
  %922 = fmul fast float %387, %247
  %923 = fadd fast float %922, %388
  %924 = call float @dx.op.binary.f32(i32 35, float %923, float 0.000000e+00)  ; FMax(a,b)
  %925 = fmul fast float %924, %383
  %926 = fadd fast float %925, %384
  %927 = call float @dx.op.unary.f32(i32 7, float %926)  ; Saturate(value)
  %928 = and i32 %334, 4
  %929 = icmp ne i32 %928, 0
  %930 = select i1 %929, float %927, float 0.000000e+00
  %931 = call float @dx.op.binary.f32(i32 35, float %930, float %300)  ; FMax(a,b)
  %932 = fadd fast float %349, %350
  %933 = extractvalue %dx.types.CBufRet.f32 %907, 2
  %934 = fcmp fast oge float %932, %933
  %935 = select i1 %934, i32 4096, i32 0
  %936 = or i32 %399, %935
  br label %937

; <label>:937                                     ; preds = %896, %284
  %938 = phi i32 [ %936, %896 ], [ %285, %284 ]
  %939 = phi float [ %603, %896 ], [ %286, %284 ]
  %940 = phi float [ %604, %896 ], [ %287, %284 ]
  %941 = phi float [ %605, %896 ], [ %288, %284 ]
  %942 = phi float [ %609, %896 ], [ %289, %284 ]
  %943 = phi float [ %610, %896 ], [ %290, %284 ]
  %944 = phi float [ %611, %896 ], [ %291, %284 ]
  %945 = phi float [ %615, %896 ], [ %292, %284 ]
  %946 = phi float [ %616, %896 ], [ %293, %284 ]
  %947 = phi float [ %617, %896 ], [ %294, %284 ]
  %948 = phi float [ %624, %896 ], [ %295, %284 ]
  %949 = phi float [ %904, %896 ], [ %296, %284 ]
  %950 = phi float [ %905, %896 ], [ %297, %284 ]
  %951 = phi float [ %906, %896 ], [ %298, %284 ]
  %952 = phi float [ %921, %896 ], [ %299, %284 ]
  %953 = phi float [ %931, %896 ], [ %300, %284 ]
  %954 = phi float [ %911, %896 ], [ %301, %284 ]
  %955 = phi float [ %405, %896 ], [ %302, %284 ]
  %956 = add nuw i32 %304, 1
  %957 = icmp eq i32 %956, %266
  br i1 %957, label %958, label %284

; <label>:958                                     ; preds = %937
  br label %959

; <label>:959                                     ; preds = %958, %30
  %960 = phi i32 [ 0, %30 ], [ %938, %958 ]
  %961 = phi float [ 0.000000e+00, %30 ], [ %939, %958 ]
  %962 = phi float [ 0.000000e+00, %30 ], [ %940, %958 ]
  %963 = phi float [ 0.000000e+00, %30 ], [ %941, %958 ]
  %964 = phi float [ 0.000000e+00, %30 ], [ %942, %958 ]
  %965 = phi float [ 0.000000e+00, %30 ], [ %943, %958 ]
  %966 = phi float [ 0.000000e+00, %30 ], [ %944, %958 ]
  %967 = phi float [ 0.000000e+00, %30 ], [ %945, %958 ]
  %968 = phi float [ 0.000000e+00, %30 ], [ %946, %958 ]
  %969 = phi float [ 0.000000e+00, %30 ], [ %947, %958 ]
  %970 = phi float [ 0.000000e+00, %30 ], [ %948, %958 ]
  %971 = phi float [ 0.000000e+00, %30 ], [ %949, %958 ]
  %972 = phi float [ 0.000000e+00, %30 ], [ %950, %958 ]
  %973 = phi float [ 0.000000e+00, %30 ], [ %951, %958 ]
  %974 = phi float [ 0.000000e+00, %30 ], [ %952, %958 ]
  %975 = phi float [ 0.000000e+00, %30 ], [ %953, %958 ]
  %976 = phi float [ 0.000000e+00, %30 ], [ %954, %958 ]
  %977 = phi float [ 0.000000e+00, %30 ], [ %955, %958 ]
  %978 = phi float [ 0.000000e+00, %30 ], [ %325, %958 ]
  %979 = fcmp fast ole float %970, 0x3F69A5C380000000
  %980 = fmul fast float %970, 0x4029D70A40000000
  %981 = call float @dx.op.unary.f32(i32 23, float %970)  ; Log(value)
  %982 = fmul fast float %981, 0x3FDAAAAAA0000000
  %983 = call float @dx.op.unary.f32(i32 21, float %982)  ; Exp(value)
  %984 = fmul fast float %983, 0x3FF0E147A0000000
  %985 = fadd fast float %984, 0xBFAC28F5C0000000
  %986 = select i1 %979, float %980, float %985
  %987 = fmul fast float %986, 2.550000e+02
  %988 = call float @dx.op.binary.f32(i32 35, float %987, float 0.000000e+00)  ; FMax(a,b)
  %989 = call float @dx.op.binary.f32(i32 36, float %988, float 2.550000e+02)  ; FMin(a,b)
  %990 = fptoui float %989 to i32
  %991 = uitofp i32 %990 to float
  %992 = fmul fast float %991, 0x3F70101020000000
  %993 = fcmp fast ole float %992, 0x3FA4B5DCC0000000
  %994 = fmul fast float %991, 0x3F33E45680000000
  %995 = fmul fast float %991, 0x3F6E736160000000
  %996 = fadd fast float %995, 0x3FAAB12340000000
  %997 = call float @dx.op.unary.f32(i32 23, float %996)  ; Log(value)
  %998 = fmul fast float %997, 0x4003333340000000
  %999 = call float @dx.op.unary.f32(i32 21, float %998)  ; Exp(value)
  %1000 = select i1 %993, float %994, float %999
  %1001 = call float @dx.op.unary.f32(i32 7, float %1000)  ; Saturate(value)
  %1002 = call float @dx.op.binary.f32(i32 35, float %1001, float %976)  ; FMax(a,b)
  %1003 = fadd fast float %1002, 1.000000e+00
  %1004 = fmul fast float %1003, %974
  %1005 = fmul fast float %1003, %975
  %1006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1007 = extractvalue %dx.types.CBufRet.f32 %1006, 1
  %1008 = fcmp fast oge float %1004, %1007
  %1009 = select i1 %1008, i32 1024, i32 0
  %1010 = or i32 %1009, %960
  %1011 = fcmp fast oge float %1005, %1007
  %1012 = select i1 %1011, i32 2048, i32 0
  %1013 = or i32 %1010, %1012
  %1014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1015 = extractvalue %dx.types.CBufRet.f32 %1014, 3
  %1016 = fadd fast float %1015, %126
  %1017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1018 = extractvalue %dx.types.ResRet.f32 %1017, 0
  %1019 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.f32 %1019, 0
  %1021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %156, i32 undef)  ; BufferLoad(srv,index,wot)
  %1022 = extractvalue %dx.types.ResRet.f32 %1021, 0
  %1023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.i32 %1023, 0
  %1025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1026 = extractvalue %dx.types.CBufRet.f32 %1025, 2
  %1027 = fmul fast float %1026, %1016
  %1028 = fmul fast float %1026, %129
  %1029 = extractvalue %dx.types.CBufRet.f32 %1025, 3
  %1030 = fadd fast float %1027, %1029
  %1031 = fadd fast float %1028, %1029
  %1032 = add i32 %1024, 0
  %1033 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1032, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1034 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1033, i32 0)  ; GetDimensions(handle,mipLevel)
  %1035 = extractvalue %dx.types.Dimensions %1034, 0
  %1036 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1035)  ; FirstbitLo(value)
  %1037 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1038 = extractvalue %dx.types.CBufRet.i32 %1037, 1
  %1039 = sub nsw i32 %1038, %1036
  %1040 = sitofp i32 %1039 to float
  %1041 = fsub fast float %143, %1040
  %1042 = call float @dx.op.binary.f32(i32 35, float %1041, float 0.000000e+00)  ; FMax(a,b)
  %1043 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1033, %dx.types.Handle %11, float %1030, float %1031, float %1022, float undef, i32 0, i32 0, i32 undef, float %1042)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1044 = extractvalue %dx.types.ResRet.f32 %1043, 0
  %1045 = fmul fast float %1044, %1018
  %1046 = fsub fast float %129, %1015
  %1047 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.f32 %1047, 0
  %1049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1050 = extractvalue %dx.types.ResRet.f32 %1049, 0
  %1051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %156, i32 undef)  ; BufferLoad(srv,index,wot)
  %1052 = extractvalue %dx.types.ResRet.f32 %1051, 0
  %1053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1054 = extractvalue %dx.types.ResRet.i32 %1053, 0
  %1055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1056 = extractvalue %dx.types.CBufRet.f32 %1055, 2
  %1057 = fmul fast float %1056, %126
  %1058 = fmul fast float %1056, %1046
  %1059 = extractvalue %dx.types.CBufRet.f32 %1055, 3
  %1060 = fadd fast float %1057, %1059
  %1061 = fadd fast float %1058, %1059
  %1062 = add i32 %1054, 0
  %1063 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1062, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1064 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1063, i32 0)  ; GetDimensions(handle,mipLevel)
  %1065 = extractvalue %dx.types.Dimensions %1064, 0
  %1066 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1065)  ; FirstbitLo(value)
  %1067 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1068 = extractvalue %dx.types.CBufRet.i32 %1067, 1
  %1069 = sub nsw i32 %1068, %1066
  %1070 = sitofp i32 %1069 to float
  %1071 = fsub fast float %143, %1070
  %1072 = call float @dx.op.binary.f32(i32 35, float %1071, float 0.000000e+00)  ; FMax(a,b)
  %1073 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1063, %dx.types.Handle %11, float %1060, float %1061, float %1052, float undef, i32 0, i32 0, i32 undef, float %1072)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1074 = extractvalue %dx.types.ResRet.f32 %1073, 0
  %1075 = fmul fast float %1074, %1048
  %1076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1077 = extractvalue %dx.types.CBufRet.f32 %1076, 2
  %1078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1079 = extractvalue %dx.types.CBufRet.f32 %1078, 3
  %1080 = fmul fast float %1079, %1077
  %1081 = fsub fast float %1020, %207
  %1082 = fadd fast float %1081, %1045
  %1083 = fsub fast float %1050, %207
  %1084 = fadd fast float %1083, %1075
  %1085 = fmul fast float %1082, %1080
  %1086 = fsub fast float -0.000000e+00, %1085
  %1087 = fmul fast float %1084, %1080
  %1088 = fsub fast float -0.000000e+00, %1087
  %1089 = fmul fast float %1080, %1080
  %1090 = call float @dx.op.dot3.f32(i32 55, float %1086, float %1088, float %1089, float %1086, float %1088, float %1089)  ; Dot3(ax,ay,az,bx,by,bz)
  %1091 = call float @dx.op.unary.f32(i32 25, float %1090)  ; Rsqrt(value)
  %1092 = fmul fast float %1091, %1086
  %1093 = fmul fast float %1091, %1088
  %1094 = fmul fast float %1089, %1091
  %1095 = fsub fast float -0.000000e+00, %1093
  %1096 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float %1094, float %1095, float 0.000000e+00, float %1094, float %1095)  ; Dot3(ax,ay,az,bx,by,bz)
  %1097 = call float @dx.op.unary.f32(i32 25, float %1096)  ; Rsqrt(value)
  %1098 = fmul fast float %1094, %1097
  %1099 = fmul fast float %1097, %1095
  %1100 = fmul fast float %1098, %1094
  %1101 = fmul fast float %1099, %1093
  %1102 = fsub fast float %1100, %1101
  %1103 = fmul fast float %1099, %1092
  %1104 = fmul fast float %1092, %1098
  %1105 = fsub fast float -0.000000e+00, %1104
  %1106 = call float @dx.op.dot3.f32(i32 55, float %1102, float %1103, float %1105, float %1102, float %1103, float %1105)  ; Dot3(ax,ay,az,bx,by,bz)
  %1107 = call float @dx.op.unary.f32(i32 25, float %1106)  ; Rsqrt(value)
  %1108 = fmul fast float %1102, %1107
  %1109 = fmul fast float %1103, %1107
  %1110 = fmul fast float %1107, %1105
  %1111 = fadd fast float %1098, %968
  %1112 = fadd fast float %1099, %969
  %1113 = call float @dx.op.dot3.f32(i32 55, float %967, float %1111, float %1112, float %967, float %1111, float %1112)  ; Dot3(ax,ay,az,bx,by,bz)
  %1114 = call float @dx.op.unary.f32(i32 25, float %1113)  ; Rsqrt(value)
  %1115 = fmul fast float %1114, %967
  %1116 = fmul fast float %1114, %1111
  %1117 = fmul fast float %1114, %1112
  %1118 = fadd fast float %1108, %964
  %1119 = fadd fast float %1109, %965
  %1120 = fadd fast float %1110, %966
  %1121 = call float @dx.op.dot3.f32(i32 55, float %1118, float %1119, float %1120, float %1118, float %1119, float %1120)  ; Dot3(ax,ay,az,bx,by,bz)
  %1122 = call float @dx.op.unary.f32(i32 25, float %1121)  ; Rsqrt(value)
  %1123 = fmul fast float %1122, %1118
  %1124 = fmul fast float %1122, %1119
  %1125 = fmul fast float %1122, %1120
  %1126 = fmul fast float %1124, %1117
  %1127 = fmul fast float %1125, %1116
  %1128 = fsub fast float %1126, %1127
  %1129 = fmul fast float %1125, %1115
  %1130 = fmul fast float %1123, %1117
  %1131 = fsub fast float %1129, %1130
  %1132 = fmul fast float %1123, %1116
  %1133 = fmul fast float %1124, %1115
  %1134 = fsub fast float %1132, %1133
  %1135 = call float @dx.op.dot3.f32(i32 55, float %1128, float %1131, float %1134, float %1128, float %1131, float %1134)  ; Dot3(ax,ay,az,bx,by,bz)
  %1136 = call float @dx.op.unary.f32(i32 25, float %1135)  ; Rsqrt(value)
  %1137 = fmul fast float %1128, %1136
  %1138 = fmul fast float %1131, %1136
  %1139 = fmul fast float %1134, %1136
  %1140 = fadd fast float %961, %111
  %1141 = fadd fast float %962, %112
  %1142 = fadd fast float %963, %207
  %1143 = fmul fast float %1123, %971
  %1144 = call float @dx.op.tertiary.f32(i32 46, float %972, float %1115, float %1143)  ; FMad(a,b,c)
  %1145 = call float @dx.op.tertiary.f32(i32 46, float %973, float %1137, float %1144)  ; FMad(a,b,c)
  %1146 = fmul fast float %1124, %971
  %1147 = call float @dx.op.tertiary.f32(i32 46, float %972, float %1116, float %1146)  ; FMad(a,b,c)
  %1148 = call float @dx.op.tertiary.f32(i32 46, float %973, float %1138, float %1147)  ; FMad(a,b,c)
  %1149 = fmul fast float %1125, %971
  %1150 = call float @dx.op.tertiary.f32(i32 46, float %972, float %1117, float %1149)  ; FMad(a,b,c)
  %1151 = call float @dx.op.tertiary.f32(i32 46, float %973, float %1139, float %1150)  ; FMad(a,b,c)
  %1152 = fadd fast float %1140, %1145
  %1153 = fadd fast float %1141, %1148
  %1154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1155 = extractvalue %dx.types.CBufRet.f32 %1154, 0
  %1156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1157 = extractvalue %dx.types.CBufRet.f32 %1156, 0
  %1158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1159 = extractvalue %dx.types.CBufRet.f32 %1158, 0
  %1160 = extractvalue %dx.types.CBufRet.f32 %1154, 1
  %1161 = extractvalue %dx.types.CBufRet.f32 %1156, 1
  %1162 = extractvalue %dx.types.CBufRet.f32 %1158, 1
  %1163 = extractvalue %dx.types.CBufRet.f32 %1154, 2
  %1164 = extractvalue %dx.types.CBufRet.f32 %1156, 2
  %1165 = extractvalue %dx.types.CBufRet.f32 %1158, 2
  %1166 = extractvalue %dx.types.CBufRet.f32 %1154, 3
  %1167 = extractvalue %dx.types.CBufRet.f32 %1156, 3
  %1168 = extractvalue %dx.types.CBufRet.f32 %1158, 3
  %1169 = fadd fast float %1152, %1166
  %1170 = fadd fast float %1153, %1167
  %1171 = fadd fast float %1142, %977
  %1172 = fadd fast float %1171, %1151
  %1173 = fadd fast float %1172, %1168
  %1174 = fmul fast float %1169, %1155
  %1175 = call float @dx.op.tertiary.f32(i32 46, float %1170, float %1160, float %1174)  ; FMad(a,b,c)
  %1176 = call float @dx.op.tertiary.f32(i32 46, float %1173, float %1163, float %1175)  ; FMad(a,b,c)
  %1177 = fmul fast float %1169, %1157
  %1178 = call float @dx.op.tertiary.f32(i32 46, float %1170, float %1161, float %1177)  ; FMad(a,b,c)
  %1179 = call float @dx.op.tertiary.f32(i32 46, float %1173, float %1164, float %1178)  ; FMad(a,b,c)
  %1180 = fmul fast float %1169, %1159
  %1181 = call float @dx.op.tertiary.f32(i32 46, float %1170, float %1162, float %1180)  ; FMad(a,b,c)
  %1182 = call float @dx.op.tertiary.f32(i32 46, float %1173, float %1165, float %1181)  ; FMad(a,b,c)
  %1183 = fsub fast float %1176, %1166
  %1184 = fsub fast float %1179, %1167
  %1185 = fsub fast float %1182, %1168
  %1186 = fmul fast float %1155, %1137
  %1187 = call float @dx.op.tertiary.f32(i32 46, float %1138, float %1160, float %1186)  ; FMad(a,b,c)
  %1188 = call float @dx.op.tertiary.f32(i32 46, float %1139, float %1163, float %1187)  ; FMad(a,b,c)
  %1189 = fmul fast float %1157, %1137
  %1190 = call float @dx.op.tertiary.f32(i32 46, float %1138, float %1161, float %1189)  ; FMad(a,b,c)
  %1191 = call float @dx.op.tertiary.f32(i32 46, float %1139, float %1164, float %1190)  ; FMad(a,b,c)
  %1192 = fmul fast float %1159, %1137
  %1193 = call float @dx.op.tertiary.f32(i32 46, float %1138, float %1162, float %1192)  ; FMad(a,b,c)
  %1194 = call float @dx.op.tertiary.f32(i32 46, float %1139, float %1165, float %1193)  ; FMad(a,b,c)
  %1195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 208)  ; CBufferLoadLegacy(handle,regIndex)
  %1196 = extractvalue %dx.types.CBufRet.f32 %1195, 2
  %1197 = fadd fast float %1185, %1196
  %1198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1199 = extractvalue %dx.types.CBufRet.f32 %1198, 0
  %1200 = extractvalue %dx.types.CBufRet.f32 %1198, 1
  %1201 = extractvalue %dx.types.CBufRet.f32 %1198, 2
  %1202 = fsub fast float %1183, %1199
  %1203 = fsub fast float %1184, %1200
  %1204 = fsub fast float %1197, %1201
  %1205 = fmul fast float %126, 6.553500e+04
  %1206 = call float @dx.op.unary.f32(i32 26, float %1205)  ; Round_ne(value)
  %1207 = fptosi float %1206 to i32
  %1208 = call i32 @dx.op.binary.i32(i32 37, i32 %1207, i32 0)  ; IMax(a,b)
  %1209 = call i32 @dx.op.binary.i32(i32 38, i32 %1208, i32 65535)  ; IMin(a,b)
  %1210 = fmul fast float %129, 6.553500e+04
  %1211 = call float @dx.op.unary.f32(i32 26, float %1210)  ; Round_ne(value)
  %1212 = fptosi float %1211 to i32
  %1213 = call i32 @dx.op.binary.i32(i32 37, i32 %1212, i32 0)  ; IMax(a,b)
  %1214 = call i32 @dx.op.binary.i32(i32 38, i32 %1213, i32 65535)  ; IMin(a,b)
  %1215 = shl i32 %1214, 16
  %1216 = or i32 %1215, %1209
  %1217 = call float @dx.op.unary.f32(i32 6, float %1188)  ; FAbs(value)
  %1218 = call float @dx.op.unary.f32(i32 6, float %1191)  ; FAbs(value)
  %1219 = fadd fast float %1218, %1217
  %1220 = call float @dx.op.unary.f32(i32 6, float %1194)  ; FAbs(value)
  %1221 = fadd fast float %1219, %1220
  %1222 = fdiv fast float %1188, %1221
  %1223 = fdiv fast float %1191, %1221
  %1224 = fdiv fast float %1194, %1221
  %1225 = fcmp fast oge float %1224, 0.000000e+00
  %1226 = call float @dx.op.unary.f32(i32 6, float %1223)  ; FAbs(value)
  %1227 = call float @dx.op.unary.f32(i32 6, float %1222)  ; FAbs(value)
  %1228 = fsub fast float 1.000000e+00, %1226
  %1229 = fsub fast float 1.000000e+00, %1227
  %1230 = fcmp fast oge float %1222, 0.000000e+00
  %1231 = select i1 %1230, float 1.000000e+00, float -1.000000e+00
  %1232 = fcmp fast oge float %1223, 0.000000e+00
  %1233 = select i1 %1232, float 1.000000e+00, float -1.000000e+00
  %1234 = fmul fast float %1228, %1231
  %1235 = fmul fast float %1229, %1233
  %1236 = select i1 %1225, float %1222, float %1234
  %1237 = select i1 %1225, float %1223, float %1235
  %1238 = fmul fast float %1236, 1.275000e+02
  %1239 = fmul fast float %1237, 1.275000e+02
  %1240 = fadd fast float %1238, 1.275000e+02
  %1241 = fadd fast float %1239, 1.275000e+02
  %1242 = call float @dx.op.unary.f32(i32 26, float %1240)  ; Round_ne(value)
  %1243 = call float @dx.op.unary.f32(i32 26, float %1241)  ; Round_ne(value)
  %1244 = fptoui float %1242 to i32
  %1245 = fptoui float %1243 to i32
  %1246 = shl i32 %1245, 8
  %1247 = shl i32 %990, 16
  %1248 = or i32 %1244, %1247
  %1249 = or i32 %1248, %1246
  %1250 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %1251 = extractvalue %dx.types.CBufRet.i32 %1250, 0
  %1252 = icmp eq i32 %1251, 19
  br i1 %1252, label %1253, label %1255, !dx.controlflow.hints !47

; <label>:1253                                    ; preds = %959
  %1254 = bitcast float %1151 to i32
  br label %1436

; <label>:1255                                    ; preds = %959
  %1256 = icmp eq i32 %1251, 21
  br i1 %1256, label %1257, label %1321, !dx.controlflow.hints !48

; <label>:1257                                    ; preds = %1255
  br i1 %282, label %1303, label %1258, !dx.controlflow.hints !49

; <label>:1258                                    ; preds = %1257
  %1259 = extractvalue %dx.types.CBufRet.i32 %1250, 2
  %1260 = icmp eq i32 %1259, -1
  br i1 %1260, label %1262, label %1261, !dx.controlflow.hints !50

; <label>:1261                                    ; preds = %1258
  br label %1271

; <label>:1262                                    ; preds = %1258
  %1263 = fcmp fast ogt float %978, 0x3FF0202020000000
  %1264 = select i1 %1263, float 0.000000e+00, float %978
  %1265 = select i1 %1263, float 1.000000e+00, float %978
  %1266 = fcmp fast olt float %978, 0x3FEFBFBFC0000000
  %1267 = select i1 %1266, float 1.000000e+00, float %1264
  %1268 = select i1 %1266, float 0.000000e+00, float %1265
  %1269 = or i1 %1266, %1263
  %1270 = select i1 %1269, float 0.000000e+00, float %978
  br label %1303

; <label>:1271                                    ; preds = %1299, %1261
  %1272 = phi i32 [ %1300, %1299 ], [ 0, %1261 ]
  %1273 = shl i32 %1272, 2
  %1274 = add i32 %1273, %267
  %1275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1276 = extractvalue %dx.types.ResRet.i32 %1275, 0
  %1277 = and i32 %1276, 32767
  %1278 = icmp eq i32 %1277, %1259
  br i1 %1278, label %1279, label %1299, !dx.controlflow.hints !51

; <label>:1279                                    ; preds = %1271
  %1280 = add i32 %1273, %62
  %1281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.f32 %1281, 0
  %1283 = add i32 %1273, %63
  %1284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1285 = extractvalue %dx.types.ResRet.i32 %1284, 0
  %1286 = add i32 %1285, 0
  %1287 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1286, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1288 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1287, i32 0)  ; GetDimensions(handle,mipLevel)
  %1289 = extractvalue %dx.types.Dimensions %1288, 0
  %1290 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1289)  ; FirstbitLo(value)
  %1291 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1292 = extractvalue %dx.types.CBufRet.i32 %1291, 1
  %1293 = sub nsw i32 %1292, %1290
  %1294 = sitofp i32 %1293 to float
  %1295 = fsub fast float %143, %1294
  %1296 = call float @dx.op.binary.f32(i32 35, float %1295, float 0.000000e+00)  ; FMax(a,b)
  %1297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1287, %dx.types.Handle %11, float %280, float %281, float %1282, float undef, i32 0, i32 0, i32 undef, float %1296)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1298 = extractvalue %dx.types.ResRet.f32 %1297, 0
  br label %1303

; <label>:1299                                    ; preds = %1271
  %1300 = add nuw i32 %1272, 1
  %1301 = icmp ult i32 %1300, %266
  br i1 %1301, label %1271, label %1302

; <label>:1302                                    ; preds = %1299
  br label %1303

; <label>:1303                                    ; preds = %1302, %1279, %1262, %1257
  %1304 = phi float [ %1267, %1262 ], [ 1.000000e+00, %1257 ], [ %1298, %1279 ], [ 0.000000e+00, %1302 ]
  %1305 = phi float [ %1268, %1262 ], [ 0.000000e+00, %1257 ], [ %1298, %1279 ], [ 0.000000e+00, %1302 ]
  %1306 = phi float [ %1270, %1262 ], [ 0.000000e+00, %1257 ], [ %1298, %1279 ], [ 1.000000e+00, %1302 ]
  %1307 = call float @dx.op.unary.f32(i32 7, float %1304)  ; Saturate(value)
  %1308 = call float @dx.op.unary.f32(i32 7, float %1305)  ; Saturate(value)
  %1309 = call float @dx.op.unary.f32(i32 7, float %1306)  ; Saturate(value)
  %1310 = fmul fast float %1307, 2.550000e+02
  %1311 = fmul fast float %1308, 2.550000e+02
  %1312 = fmul fast float %1309, 2.550000e+02
  %1313 = fptoui float %1310 to i32
  %1314 = fptoui float %1311 to i32
  %1315 = fptoui float %1312 to i32
  %1316 = shl i32 %1314, 8
  %1317 = shl i32 %1315, 16
  %1318 = or i32 %1313, %1316
  %1319 = or i32 %1318, %1317
  %1320 = or i32 %1319, -16777216
  br label %1436

; <label>:1321                                    ; preds = %1255
  %1322 = icmp eq i32 %1251, 26
  %1323 = icmp eq i32 %1251, 32
  %1324 = or i1 %1322, %1323
  br i1 %1324, label %1325, label %1327, !dx.controlflow.hints !52

; <label>:1325                                    ; preds = %1321
  %1326 = bitcast float %143 to i32
  br label %1436

; <label>:1327                                    ; preds = %1321
  %1328 = icmp eq i32 %1251, 29
  br i1 %1328, label %1329, label %1425, !dx.controlflow.hints !53

; <label>:1329                                    ; preds = %1327
  br i1 %282, label %1407, label %1330

; <label>:1330                                    ; preds = %1329
  br label %1331

; <label>:1331                                    ; preds = %1331, %1330
  %1332 = phi float [ %1401, %1331 ], [ 1.000000e+00, %1330 ]
  %1333 = phi float [ %1402, %1331 ], [ 0.000000e+00, %1330 ]
  %1334 = phi float [ %1403, %1331 ], [ 0.000000e+00, %1330 ]
  %1335 = phi i32 [ %1404, %1331 ], [ 0, %1330 ]
  %1336 = shl i32 %1335, 2
  %1337 = add i32 %1336, %267
  %1338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1337, i32 undef)  ; BufferLoad(srv,index,wot)
  %1339 = extractvalue %dx.types.ResRet.i32 %1338, 0
  %1340 = and i32 %1339, 32767
  %1341 = add i32 %1336, %62
  %1342 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1341, i32 undef)  ; BufferLoad(srv,index,wot)
  %1343 = extractvalue %dx.types.ResRet.f32 %1342, 0
  %1344 = add i32 %1336, %63
  %1345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1344, i32 undef)  ; BufferLoad(srv,index,wot)
  %1346 = extractvalue %dx.types.ResRet.i32 %1345, 0
  %1347 = add i32 %1346, 0
  %1348 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1347, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1349 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1348, i32 0)  ; GetDimensions(handle,mipLevel)
  %1350 = extractvalue %dx.types.Dimensions %1349, 0
  %1351 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1350)  ; FirstbitLo(value)
  %1352 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1353 = extractvalue %dx.types.CBufRet.i32 %1352, 1
  %1354 = sub nsw i32 %1353, %1351
  %1355 = sitofp i32 %1354 to float
  %1356 = fsub fast float %143, %1355
  %1357 = call float @dx.op.binary.f32(i32 35, float %1356, float 0.000000e+00)  ; FMax(a,b)
  %1358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1348, %dx.types.Handle %11, float %280, float %281, float %1343, float undef, i32 0, i32 0, i32 undef, float %1357)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1359 = extractvalue %dx.types.ResRet.f32 %1358, 0
  %1360 = uitofp i32 %1340 to float
  %1361 = fmul fast float %1360, 0x3FE3C6EF40000000
  %1362 = call float @dx.op.unary.f32(i32 22, float %1361)  ; Frc(value)
  %1363 = fadd fast float %1362, 0x3FE5555560000000
  %1364 = fadd fast float %1362, 0x3FD5555560000000
  %1365 = fsub fast float -0.000000e+00, %1362
  %1366 = fsub fast float -0.000000e+00, %1363
  %1367 = fsub fast float -0.000000e+00, %1364
  %1368 = fcmp fast oge float %1362, %1365
  %1369 = fcmp fast oge float %1363, %1366
  %1370 = fcmp fast oge float %1364, %1367
  %1371 = call float @dx.op.unary.f32(i32 6, float %1362)  ; FAbs(value)
  %1372 = call float @dx.op.unary.f32(i32 6, float %1363)  ; FAbs(value)
  %1373 = call float @dx.op.unary.f32(i32 6, float %1364)  ; FAbs(value)
  %1374 = call float @dx.op.unary.f32(i32 22, float %1371)  ; Frc(value)
  %1375 = call float @dx.op.unary.f32(i32 22, float %1372)  ; Frc(value)
  %1376 = call float @dx.op.unary.f32(i32 22, float %1373)  ; Frc(value)
  %1377 = fsub fast float -0.000000e+00, %1374
  %1378 = fsub fast float -0.000000e+00, %1375
  %1379 = fsub fast float -0.000000e+00, %1376
  %1380 = select i1 %1368, float %1374, float %1377
  %1381 = select i1 %1369, float %1375, float %1378
  %1382 = select i1 %1370, float %1376, float %1379
  %1383 = fmul fast float %1380, 6.000000e+00
  %1384 = fmul fast float %1381, 6.000000e+00
  %1385 = fmul fast float %1382, 6.000000e+00
  %1386 = fadd fast float %1383, -3.000000e+00
  %1387 = fadd fast float %1384, -3.000000e+00
  %1388 = fadd fast float %1385, -3.000000e+00
  %1389 = call float @dx.op.unary.f32(i32 6, float %1386)  ; FAbs(value)
  %1390 = call float @dx.op.unary.f32(i32 6, float %1387)  ; FAbs(value)
  %1391 = call float @dx.op.unary.f32(i32 6, float %1388)  ; FAbs(value)
  %1392 = fadd fast float %1389, -1.000000e+00
  %1393 = fadd fast float %1390, -1.000000e+00
  %1394 = fadd fast float %1391, -1.000000e+00
  %1395 = call float @dx.op.unary.f32(i32 7, float %1392)  ; Saturate(value)
  %1396 = call float @dx.op.unary.f32(i32 7, float %1393)  ; Saturate(value)
  %1397 = call float @dx.op.unary.f32(i32 7, float %1394)  ; Saturate(value)
  %1398 = fmul fast float %1395, %1359
  %1399 = fmul fast float %1396, %1359
  %1400 = fmul fast float %1397, %1359
  %1401 = fadd fast float %1398, %1332
  %1402 = fadd fast float %1399, %1333
  %1403 = fadd fast float %1400, %1334
  %1404 = add nuw i32 %1335, 1
  %1405 = icmp eq i32 %1404, %266
  br i1 %1405, label %1406, label %1331

; <label>:1406                                    ; preds = %1331
  br label %1407

; <label>:1407                                    ; preds = %1406, %1329
  %1408 = phi float [ 1.000000e+00, %1329 ], [ %1401, %1406 ]
  %1409 = phi float [ 0.000000e+00, %1329 ], [ %1402, %1406 ]
  %1410 = phi float [ 0.000000e+00, %1329 ], [ %1403, %1406 ]
  %1411 = call float @dx.op.unary.f32(i32 7, float %1408)  ; Saturate(value)
  %1412 = call float @dx.op.unary.f32(i32 7, float %1409)  ; Saturate(value)
  %1413 = call float @dx.op.unary.f32(i32 7, float %1410)  ; Saturate(value)
  %1414 = fmul fast float %1411, 2.550000e+02
  %1415 = fmul fast float %1412, 2.550000e+02
  %1416 = fmul fast float %1413, 2.550000e+02
  %1417 = fptoui float %1414 to i32
  %1418 = fptoui float %1415 to i32
  %1419 = fptoui float %1416 to i32
  %1420 = shl i32 %1418, 8
  %1421 = shl i32 %1419, 16
  %1422 = or i32 %1417, %1420
  %1423 = or i32 %1422, %1421
  %1424 = or i32 %1423, -16777216
  br label %1436

; <label>:1425                                    ; preds = %1327
  %1426 = icmp eq i32 %1251, 41
  br i1 %1426, label %1427, label %1436, !dx.controlflow.hints !54

; <label>:1427                                    ; preds = %1425
  %1428 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %1429 = extractvalue %dx.types.CBufRet.i32 %1428, 0
  %1430 = icmp eq i32 %1429, 7
  br i1 %1430, label %1431, label %1436, !dx.controlflow.hints !55

; <label>:1431                                    ; preds = %1427
  %1432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1433 = extractvalue %dx.types.CBufRet.f32 %1432, 1
  %1434 = fcmp fast oge float %1004, %1433
  %1435 = select i1 %1434, i32 1065353216, i32 0
  br label %1436

; <label>:1436                                    ; preds = %1431, %1427, %1425, %1407, %1325, %1303, %1253
  %1437 = phi i32 [ %1254, %1253 ], [ %1320, %1303 ], [ %1326, %1325 ], [ %1424, %1407 ], [ %1435, %1431 ], [ %1249, %1427 ], [ %1249, %1425 ]
  %1438 = mul i32 %29, 20
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %1438, i32 undef, float %1202, float %1203, float %1204, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1439 = add i32 %1438, 12
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1439, i32 undef, i32 %1216, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1440 = add i32 %1438, 16
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1440, i32 undef, i32 %1437, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1441 = fadd float %1202, 1.310720e+05
  %1442 = fadd float %1203, 1.310720e+05
  %1443 = fadd float %1204, 1.310720e+05
  br label %1444

; <label>:1444                                    ; preds = %1436, %0
  %1445 = phi float [ %1441, %1436 ], [ 1.310720e+05, %0 ]
  %1446 = phi float [ %1442, %1436 ], [ 1.310720e+05, %0 ]
  %1447 = phi float [ %1443, %1436 ], [ 1.310720e+05, %0 ]
  %1448 = phi i1 [ true, %1436 ], [ false, %0 ]
  %1449 = phi i32 [ %1013, %1436 ], [ 0, %0 ]
  %1450 = call float @dx.op.binary.f32(i32 35, float %1445, float 0.000000e+00)  ; FMax(a,b)
  %1451 = call float @dx.op.binary.f32(i32 35, float %1446, float 0.000000e+00)  ; FMax(a,b)
  %1452 = call float @dx.op.binary.f32(i32 35, float %1447, float 0.000000e+00)  ; FMax(a,b)
  %1453 = bitcast float %1450 to i32
  %1454 = bitcast float %1451 to i32
  %1455 = bitcast float %1452 to i32
  %1456 = select i1 %1448, i32 %1453, i32 -1
  %1457 = select i1 %1448, i32 %1454, i32 -1
  %1458 = select i1 %1448, i32 %1455, i32 -1
  %1459 = select i1 %1448, i32 %1453, i32 0
  %1460 = select i1 %1448, i32 %1454, i32 0
  %1461 = select i1 %1448, i32 %1455, i32 0
  %1462 = shl i32 %19, 6
  %1463 = udiv i32 %1462, 9
  %1464 = sub nsw i32 %21, %1463
  %1465 = icmp ult i32 %20, 8
  br i1 %1465, label %1466, label %1474, !dx.controlflow.hints !56

; <label>:1466                                    ; preds = %1444
  %1467 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileFeaturesShared@@3PAIA", i32 0, i32 %20
  store i32 0, i32 addrspace(3)* %1467, align 4, !tbaa !57
  %1468 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinXShared@@3PAIA", i32 0, i32 %20
  store i32 -1, i32 addrspace(3)* %1468, align 4, !tbaa !57
  %1469 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinYShared@@3PAIA", i32 0, i32 %20
  store i32 -1, i32 addrspace(3)* %1469, align 4, !tbaa !57
  %1470 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinZShared@@3PAIA", i32 0, i32 %20
  store i32 -1, i32 addrspace(3)* %1470, align 4, !tbaa !57
  %1471 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxXShared@@3PAIA", i32 0, i32 %20
  store i32 0, i32 addrspace(3)* %1471, align 4, !tbaa !57
  %1472 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxYShared@@3PAIA", i32 0, i32 %20
  store i32 0, i32 addrspace(3)* %1472, align 4, !tbaa !57
  %1473 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxZShared@@3PAIA", i32 0, i32 %20
  store i32 0, i32 addrspace(3)* %1473, align 4, !tbaa !57
  br label %1474

; <label>:1474                                    ; preds = %1466, %1444
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %25, label %1475, label %1490, !dx.controlflow.hints !59

; <label>:1475                                    ; preds = %1474
  %1476 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileFeaturesShared@@3PAIA", i32 0, i32 %1464
  %1477 = atomicrmw or i32 addrspace(3)* %1476, i32 %1449 seq_cst
  %1478 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinXShared@@3PAIA", i32 0, i32 %1464
  %1479 = atomicrmw umin i32 addrspace(3)* %1478, i32 %1456 seq_cst
  %1480 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinYShared@@3PAIA", i32 0, i32 %1464
  %1481 = atomicrmw umin i32 addrspace(3)* %1480, i32 %1457 seq_cst
  %1482 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinZShared@@3PAIA", i32 0, i32 %1464
  %1483 = atomicrmw umin i32 addrspace(3)* %1482, i32 %1458 seq_cst
  %1484 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxXShared@@3PAIA", i32 0, i32 %1464
  %1485 = atomicrmw umax i32 addrspace(3)* %1484, i32 %1459 seq_cst
  %1486 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxYShared@@3PAIA", i32 0, i32 %1464
  %1487 = atomicrmw umax i32 addrspace(3)* %1486, i32 %1460 seq_cst
  %1488 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxZShared@@3PAIA", i32 0, i32 %1464
  %1489 = atomicrmw umax i32 addrspace(3)* %1488, i32 %1461 seq_cst
  br label %1490

; <label>:1490                                    ; preds = %1475, %1474
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1491 = and i1 %1465, %25
  br i1 %1491, label %1492, label %1528, !dx.controlflow.hints !60

; <label>:1492                                    ; preds = %1490
  %1493 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileFeaturesShared@@3PAIA", i32 0, i32 %20
  %1494 = load i32, i32 addrspace(3)* %1493, align 4, !tbaa !57
  %1495 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1496 = extractvalue %dx.types.CBufRet.i32 %1495, 2
  %1497 = add i32 %1463, %20
  %1498 = add i32 %1497, %1496
  %1499 = shl i32 %1498, 2
  %1500 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %1499, i32 undef, i32 undef, i32 %1494)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1501 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinXShared@@3PAIA", i32 0, i32 %20
  %1502 = load i32, i32 addrspace(3)* %1501, align 4, !tbaa !57
  %1503 = xor i32 %1502, -1
  %1504 = mul i32 %1498, 24
  %1505 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %1504, i32 undef, i32 undef, i32 %1503)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1506 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinYShared@@3PAIA", i32 0, i32 %20
  %1507 = load i32, i32 addrspace(3)* %1506, align 4, !tbaa !57
  %1508 = xor i32 %1507, -1
  %1509 = or i32 %1504, 4
  %1510 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %1509, i32 undef, i32 undef, i32 %1508)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1511 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMinZShared@@3PAIA", i32 0, i32 %20
  %1512 = load i32, i32 addrspace(3)* %1511, align 4, !tbaa !57
  %1513 = xor i32 %1512, -1
  %1514 = add i32 %1504, 8
  %1515 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %1514, i32 undef, i32 undef, i32 %1513)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1516 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxXShared@@3PAIA", i32 0, i32 %20
  %1517 = load i32, i32 addrspace(3)* %1516, align 4, !tbaa !57
  %1518 = add i32 %1504, 12
  %1519 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %1518, i32 undef, i32 undef, i32 %1517)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1520 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxYShared@@3PAIA", i32 0, i32 %20
  %1521 = load i32, i32 addrspace(3)* %1520, align 4, !tbaa !57
  %1522 = add i32 %1504, 16
  %1523 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %1522, i32 undef, i32 undef, i32 %1521)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1524 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?waterSubTileBBoxMaxZShared@@3PAIA", i32 0, i32 %20
  %1525 = load i32, i32 addrspace(3)* %1524, align 4, !tbaa !57
  %1526 = add i32 %1504, 20
  %1527 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %1526, i32 undef, i32 undef, i32 %1525)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1528

; <label>:1528                                    ; preds = %1492, %1490
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
!27 = !{void ()* @cs_water_tile_process_verts_3x3_debug_shader, !"cs_water_tile_process_verts_3x3_debug_shader", null, !4, !28}
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

