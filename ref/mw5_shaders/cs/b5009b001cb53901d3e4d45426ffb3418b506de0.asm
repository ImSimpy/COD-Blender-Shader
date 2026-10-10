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
; shader hash: d1a0f7a07179e6bcbc5dfe88eb890772
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
;   [80 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [32 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb0     1
;                                   cbuffer      NA          NA     CB2            cb1     1
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   sampler      NA          NA      S2             s4     1
;                                   texture     f32          1d      T0             t6     1
;                                   texture     f32          3d      T1             t4     1
;                                   texture     f32          3d      T2             t5     1
;                                   texture     f32     2darray      T3            t20     1
;                                   texture     f32          2d      T4            t14     1
;                                   texture     f32          2d      T5            t15     1
;                                   texture     f32          2d      T6             t8     1
;                                   texture    byte         r/o      T7            t11     1
;                                   texture    byte         r/o      T8            t19     1
;                                   texture    byte         r/o      T9            t17     1
;                                   texture     f32          2d     T10             t3     1
;                                   texture     f32          2d     T11             t9     1
;                                   texture     f32          2d     T12             t0     1
;                                   texture     f32          2d     T13             t1     1
;                                   texture     f32          2d     T14             t2     1
;                                   texture     f32          2d     T15            t18     1
;                                   texture     f32          2d     T16            t21     1
;                                   texture     f32          2d     T17            t22     1
;                                   texture     f32          2d     T18            t12     1
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u1     1
;                                       UAV     f32          2d      U2             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 3> >" = type { <3 x float> }
%"class.RWTexture2D<vector<float, 2> >" = type { <2 x float> }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%PostOpaqueConstants = type { <4 x float>, <2 x float>, float, float, <4 x i32>, float, i32, i32, i32, i32, i32, i32, i32 }
%SSSBlurConstBuffer = type { <2 x float>, <2 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

@"\01?sharedLuma@@3PAMA" = external addrspace(3) global [64 x float], align 4

define void @cs_post_opaque_processes_luma_dmfpscale() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %30 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %31 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %32 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %33 = alloca [3 x float], align 4
  %34 = alloca [3 x float], align 4
  %35 = alloca [4 x float], align 4
  %36 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.i32 %36, 0
  %38 = extractvalue %dx.types.CBufRet.i32 %36, 1
  %39 = mul i32 %38, %37
  %40 = add i32 %39, %31
  %41 = shl i32 %40, 2
  %42 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %41, i32 undef)  ; BufferLoad(srv,index,wot)
  %43 = extractvalue %dx.types.ResRet.i32 %42, 0
  %44 = lshr i32 %43, 16
  %45 = shl i32 %43, 3
  %46 = and i32 %45, 524280
  %47 = shl nuw nsw i32 %44, 3
  %48 = add i32 %46, %29
  %49 = add i32 %47, %30
  %50 = shl i32 %48, 1
  %51 = shl i32 %49, 1
  %52 = uitofp i32 %50 to float
  %53 = uitofp i32 %51 to float
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 2
  %56 = extractvalue %dx.types.CBufRet.f32 %54, 3
  %57 = fmul fast float %52, %55
  %58 = fmul fast float %53, %56
  %59 = fadd fast float %57, %55
  %60 = fadd fast float %58, %56
  %61 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %25, float %59, float %60, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %62 = extractvalue %dx.types.ResRet.f32 %61, 0
  %63 = extractvalue %dx.types.ResRet.f32 %61, 1
  %64 = extractvalue %dx.types.ResRet.f32 %61, 2
  %65 = extractvalue %dx.types.ResRet.f32 %61, 3
  %66 = fcmp fast ogt float %65, -1.000000e+00
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 1
  %69 = select i1 %66, float %68, float 1.000000e+00
  %70 = fadd fast float %65, 1.000000e+00
  %71 = fmul fast float %69, %70
  %72 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %73 = fcmp fast ogt float %64, -1.000000e+00
  %74 = select i1 %73, float %68, float 1.000000e+00
  %75 = fadd fast float %64, 1.000000e+00
  %76 = fmul fast float %74, %75
  %77 = call float @dx.op.unary.f32(i32 6, float %76)  ; FAbs(value)
  %78 = fcmp fast ogt float %62, -1.000000e+00
  %79 = select i1 %78, float %68, float 1.000000e+00
  %80 = fadd fast float %62, 1.000000e+00
  %81 = fmul fast float %79, %80
  %82 = call float @dx.op.unary.f32(i32 6, float %81)  ; FAbs(value)
  %83 = fcmp fast ogt float %63, -1.000000e+00
  %84 = select i1 %83, float %68, float 1.000000e+00
  %85 = fadd fast float %63, 1.000000e+00
  %86 = fmul fast float %84, %85
  %87 = call float @dx.op.unary.f32(i32 6, float %86)  ; FAbs(value)
  %88 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 0
  store float %72, float* %88, align 4
  %89 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 1
  store float %77, float* %89, align 4
  %90 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 2
  store float %82, float* %90, align 4
  %91 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 3
  store float %87, float* %91, align 4
  %92 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %93 = extractvalue %dx.types.ResRet.i32 %92, 0
  %94 = and i32 %93, 114688
  %95 = icmp ne i32 %94, 0
  %96 = select i1 %95, i32 %50, i32 0
  %97 = select i1 %95, i32 %51, i32 0
  %98 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %96, i32 %97, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %99 = extractvalue %dx.types.ResRet.f32 %98, 0
  %100 = fmul fast float %99, 2.550000e+02
  %101 = fptoui float %100 to i32
  %102 = icmp eq i32 %101, 3
  %103 = and i1 %95, %102
  %104 = extractvalue %dx.types.CBufRet.f32 %67, 3
  %105 = fcmp fast oge float %72, %104
  %106 = fadd fast float %52, 5.000000e-01
  %107 = fadd fast float %53, 5.000000e-01
  br i1 %103, label %969, label %108, !dx.controlflow.hints !41

; <label>:108                                     ; preds = %0
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 170)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %111 = select i1 %105, float %110, float %72
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %114 = extractvalue %dx.types.CBufRet.f32 %112, 3
  %115 = fmul fast float %106, 2.000000e+00
  %116 = fmul fast float %115, %113
  %117 = fmul fast float %107, 2.000000e+00
  %118 = fmul fast float %117, %114
  %119 = fsub fast float 1.000000e+00, %116
  %120 = fsub fast float 1.000000e+00, %118
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %124 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %125 = fmul fast float %119, %122
  %126 = fmul fast float %119, %123
  %127 = fmul fast float %119, %124
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 0
  %130 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %131 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %132 = fmul fast float %120, %129
  %133 = fmul fast float %120, %130
  %134 = fmul fast float %120, %131
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %138 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %139 = fadd fast float %132, %136
  %140 = fadd fast float %139, %125
  %141 = fadd fast float %133, %137
  %142 = fadd fast float %141, %126
  %143 = fadd fast float %134, %138
  %144 = fadd fast float %143, %127
  %145 = fmul fast float %140, %111
  %146 = fmul fast float %142, %111
  %147 = fmul fast float %144, %111
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 163)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %153 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %154 = extractvalue %dx.types.CBufRet.f32 %150, 3
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 0
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 1
  %158 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %159 = extractvalue %dx.types.CBufRet.f32 %155, 3
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %163 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %164 = extractvalue %dx.types.CBufRet.f32 %160, 3
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 0
  %167 = extractvalue %dx.types.CBufRet.f32 %165, 1
  %168 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %169 = extractvalue %dx.types.CBufRet.f32 %165, 3
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.f32 %170, 3
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 3
  %174 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %175 = extractvalue %dx.types.CBufRet.f32 %172, 1
  %176 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %177 = fcmp fast olt float %176, -5.000000e-01
  %178 = extractvalue %dx.types.CBufRet.f32 %148, 3
  %179 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %145, float %146, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %180 = call float @dx.op.unary.f32(i32 25, float %179)  ; Rsqrt(value)
  %181 = fmul fast float %180, %179
  %182 = fmul fast float %180, %145
  %183 = fmul fast float %180, %146
  %184 = fmul fast float %180, %147
  %185 = fadd fast float %181, %154
  br i1 %105, label %186, label %198, !dx.controlflow.hints !42

; <label>:186                                     ; preds = %108
  %187 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %188 = extractvalue %dx.types.CBufRet.f32 %148, 1
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 187)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 1
  %191 = extractvalue %dx.types.CBufRet.f32 %189, 0
  %192 = call float @dx.op.binary.f32(i32 35, float %184, float %191)  ; FMax(a,b)
  %193 = call float @dx.op.binary.f32(i32 36, float %192, float %190)  ; FMin(a,b)
  %194 = fmul fast float %193, %188
  %195 = fadd fast float %194, %187
  %196 = call float @dx.op.unary.f32(i32 7, float %195)  ; Saturate(value)
  %197 = fmul fast float %184, %149
  br label %198

; <label>:198                                     ; preds = %186, %108
  %199 = phi float [ %149, %186 ], [ %185, %108 ]
  %200 = phi float [ %196, %186 ], [ 0.000000e+00, %108 ]
  %201 = phi float [ %197, %186 ], [ %147, %108 ]
  %202 = call float @dx.op.dot3.f32(i32 55, float %182, float %183, float %184, float %151, float %152, float %153)  ; Dot3(ax,ay,az,bx,by,bz)
  %203 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.i32 %203, 1
  %205 = and i32 %204, 1
  %206 = icmp ne i32 %205, 0
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 2
  %209 = fcmp fast ogt float %208, 0.000000e+00
  %210 = and i1 %206, %209
  br i1 %210, label %211, label %620, !dx.controlflow.hints !43

; <label>:211                                     ; preds = %198
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 3
  %214 = select i1 %105, float %213, float %181
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.f32 %215, 3
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 2
  %219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.f32 %219, 2
  %221 = fsub fast float %218, %220
  %222 = and i32 %204, 2
  %223 = extractvalue %dx.types.CBufRet.i32 %203, 0
  %224 = call i32 @dx.op.binary.i32(i32 40, i32 %223, i32 3)  ; UMin(a,b)
  %225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.f32 %225, 0
  %227 = extractvalue %dx.types.CBufRet.f32 %225, 1
  %228 = extractvalue %dx.types.CBufRet.f32 %219, 0
  %229 = extractvalue %dx.types.CBufRet.f32 %219, 1
  %230 = fsub fast float %226, %228
  %231 = fsub fast float %227, %229
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 0
  %234 = fcmp fast ogt float %233, 0.000000e+00
  %235 = fsub fast float -0.000000e+00, %230
  %236 = fsub fast float -0.000000e+00, %231
  %237 = call float @dx.op.dot2.f32(i32 54, float %182, float %183, float %182, float %183)  ; Dot2(ax,ay,bx,by)
  %238 = call float @dx.op.dot2.f32(i32 54, float %182, float %183, float %235, float %236)  ; Dot2(ax,ay,bx,by)
  %239 = fmul fast float %238, 2.000000e+00
  %240 = call float @dx.op.dot2.f32(i32 54, float %235, float %236, float %235, float %236)  ; Dot2(ax,ay,bx,by)
  %241 = fmul fast float %233, %233
  %242 = fsub fast float %240, %241
  %243 = fmul fast float %239, %239
  %244 = fmul fast float %237, 4.000000e+00
  %245 = fmul fast float %244, %242
  %246 = fsub fast float %243, %245
  %247 = fcmp fast ogt float %246, 0.000000e+00
  br i1 %247, label %248, label %263, !dx.controlflow.hints !44

; <label>:248                                     ; preds = %211
  %249 = fcmp fast ogt float %239, 0.000000e+00
  %250 = call float @dx.op.unary.f32(i32 24, float %246)  ; Sqrt(value)
  %251 = fsub fast float -0.000000e+00, %250
  %252 = select i1 %249, float %250, float %251
  %253 = fadd fast float %252, %239
  %254 = fmul float %253, -5.000000e-01
  %255 = fdiv fast float %254, %237
  %256 = call float @dx.op.binary.f32(i32 35, float %255, float 0.000000e+00)  ; FMax(a,b)
  %257 = call float @dx.op.binary.f32(i32 36, float %214, float %256)  ; FMin(a,b)
  %258 = fdiv fast float %242, %254
  %259 = call float @dx.op.binary.f32(i32 35, float %258, float 0.000000e+00)  ; FMax(a,b)
  %260 = call float @dx.op.binary.f32(i32 36, float %214, float %259)  ; FMin(a,b)
  %261 = call float @dx.op.binary.f32(i32 36, float %257, float %260)  ; FMin(a,b)
  %262 = call float @dx.op.binary.f32(i32 35, float %257, float %260)  ; FMax(a,b)
  br label %263

; <label>:263                                     ; preds = %248, %211
  %264 = phi float [ %262, %248 ], [ -1.000000e+00, %211 ]
  %265 = phi float [ %261, %248 ], [ -1.000000e+00, %211 ]
  %266 = phi i1 [ true, %248 ], [ false, %211 ]
  %267 = and i1 %234, %266
  br i1 %267, label %268, label %270, !dx.controlflow.hints !45

; <label>:268                                     ; preds = %263
  %269 = fcmp fast oeq float %265, %264
  br i1 %269, label %573, label %271, !dx.controlflow.hints !46

; <label>:270                                     ; preds = %263
  br i1 %234, label %573, label %271, !dx.controlflow.hints !47

; <label>:271                                     ; preds = %270, %268
  %272 = phi float [ %214, %270 ], [ %264, %268 ]
  %273 = phi float [ 0.000000e+00, %270 ], [ %265, %268 ]
  %274 = icmp ne i32 %222, 0
  %275 = fmul fast float %272, %184
  %276 = fadd fast float %275, %216
  %277 = fmul fast float %276, %272
  %278 = select i1 %274, float 0.000000e+00, float %277
  %279 = fcmp fast oeq float %184, 0.000000e+00
  %280 = fdiv fast float %221, %184
  %281 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %280)  ; FMax(a,b)
  %282 = select i1 %279, float %272, float %281
  %283 = call float @dx.op.binary.f32(i32 36, float %272, float %282)  ; FMin(a,b)
  %284 = fcmp fast ogt float %184, 0.000000e+00
  %285 = fcmp fast olt float %221, 0.000000e+00
  br i1 %284, label %286, label %343, !dx.controlflow.hints !48

; <label>:286                                     ; preds = %271
  %287 = icmp eq i32 %222, 0
  br i1 %285, label %288, label %332, !dx.controlflow.hints !49

; <label>:288                                     ; preds = %286
  %289 = select i1 %287, float %272, float 0.000000e+00
  %290 = fsub fast float -0.000000e+00, %289
  %291 = call float @dx.op.unary.f32(i32 6, float %290)  ; FAbs(value)
  %292 = fmul fast float %289, %184
  %293 = fadd fast float %292, %216
  %294 = fmul fast float %291, %293
  %295 = fsub fast float %278, %294
  %296 = fsub fast float %272, %291
  %297 = select i1 %287, float %296, float 0.000000e+00
  %298 = extractvalue %dx.types.CBufRet.f32 %212, 0
  %299 = extractvalue %dx.types.CBufRet.f32 %212, 1
  %300 = extractvalue %dx.types.CBufRet.f32 %212, 2
  %301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.f32 %301, 0
  %303 = extractvalue %dx.types.CBufRet.f32 %301, 1
  %304 = extractvalue %dx.types.CBufRet.f32 %301, 2
  %305 = extractvalue %dx.types.CBufRet.f32 %301, 3
  %306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.f32 %306, 3
  %308 = call float @dx.op.binary.f32(i32 36, float %295, float %307)  ; FMin(a,b)
  %309 = fmul fast float %305, %297
  %310 = call float @dx.op.unary.f32(i32 7, float %309)  ; Saturate(value)
  %311 = fsub fast float %302, %298
  %312 = fsub fast float %303, %299
  %313 = fsub fast float %304, %300
  %314 = fmul fast float %310, %311
  %315 = fmul fast float %310, %312
  %316 = fmul fast float %310, %313
  %317 = fadd fast float %314, %298
  %318 = fadd fast float %315, %299
  %319 = fadd fast float %316, %300
  br i1 %105, label %573, label %320, !dx.controlflow.hints !50

; <label>:320                                     ; preds = %288
  %321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %322 = extractvalue %dx.types.CBufRet.f32 %321, 0
  %323 = extractvalue %dx.types.CBufRet.f32 %321, 1
  %324 = fadd fast float %323, %322
  %325 = call float @dx.op.unary.f32(i32 7, float %324)  ; Saturate(value)
  %326 = extractvalue %dx.types.CBufRet.f32 %321, 2
  %327 = extractvalue %dx.types.CBufRet.f32 %321, 3
  %328 = fadd fast float %327, %326
  %329 = call float @dx.op.unary.f32(i32 7, float %328)  ; Saturate(value)
  %330 = fmul fast float %325, %308
  %331 = fmul fast float %330, %329
  br label %573

; <label>:332                                     ; preds = %286
  br i1 %287, label %333, label %354, !dx.controlflow.hints !51

; <label>:333                                     ; preds = %332
  %334 = call float @dx.op.binary.f32(i32 36, float %283, float %273)  ; FMin(a,b)
  %335 = fsub fast float %283, %334
  %336 = fsub fast float %335, %272
  %337 = call float @dx.op.unary.f32(i32 6, float %336)  ; FAbs(value)
  %338 = fadd fast float %335, %272
  %339 = fmul fast float %338, %184
  %340 = fadd fast float %339, %216
  %341 = fmul fast float %340, %337
  %342 = fsub fast float %278, %341
  br label %354

; <label>:343                                     ; preds = %271
  br i1 %285, label %344, label %354, !dx.controlflow.hints !52

; <label>:344                                     ; preds = %343
  %345 = call float @dx.op.binary.f32(i32 35, float %273, float %283)  ; FMax(a,b)
  %346 = icmp eq i32 %222, 0
  %347 = select i1 %346, float %283, float 0.000000e+00
  %348 = fsub fast float -0.000000e+00, %347
  %349 = call float @dx.op.unary.f32(i32 6, float %348)  ; FAbs(value)
  %350 = fmul fast float %347, %184
  %351 = fadd fast float %350, %216
  %352 = fmul fast float %349, %351
  %353 = fsub fast float %278, %352
  br label %354

; <label>:354                                     ; preds = %344, %343, %333, %332
  %355 = phi float [ %273, %332 ], [ %273, %333 ], [ %345, %344 ], [ %273, %343 ]
  %356 = phi float [ 0.000000e+00, %332 ], [ %337, %333 ], [ %349, %344 ], [ 0.000000e+00, %343 ]
  %357 = phi float [ %278, %332 ], [ %342, %333 ], [ %353, %344 ], [ %278, %343 ]
  %358 = phi float [ %283, %332 ], [ %283, %333 ], [ %272, %344 ], [ %272, %343 ]
  %359 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 0
  store float -1.000000e+00, float* %359, align 4, !tbaa !53, !noalias !57
  %360 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 1
  store float -1.000000e+00, float* %360, align 4, !tbaa !53, !noalias !57
  %361 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 2
  store float -1.000000e+00, float* %361, align 4, !tbaa !53, !noalias !57
  %362 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 0
  store float -1.000000e+00, float* %362, align 4, !tbaa !53, !noalias !57
  %363 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 1
  store float -1.000000e+00, float* %363, align 4, !tbaa !53, !noalias !57
  %364 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 2
  store float -1.000000e+00, float* %364, align 4, !tbaa !53, !noalias !57
  %365 = icmp sgt i32 %224, 0
  br i1 %365, label %366, label %427

; <label>:366                                     ; preds = %354
  br label %367

; <label>:367                                     ; preds = %416, %366
  %368 = phi i32 [ %417, %416 ], [ 0, %366 ]
  %369 = phi i32 [ %418, %416 ], [ 0, %366 ]
  %370 = add nuw i32 %369, 171
  %371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 %370)  ; CBufferLoadLegacy(handle,regIndex)
  %372 = extractvalue %dx.types.CBufRet.f32 %371, 0
  %373 = extractvalue %dx.types.CBufRet.f32 %371, 1
  %374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %375 = extractvalue %dx.types.CBufRet.f32 %374, 0
  %376 = extractvalue %dx.types.CBufRet.f32 %374, 1
  %377 = fsub fast float %372, %375
  %378 = fsub fast float %373, %376
  %379 = extractvalue %dx.types.CBufRet.f32 %371, 2
  %380 = fsub fast float -0.000000e+00, %377
  %381 = fsub fast float -0.000000e+00, %378
  %382 = call float @dx.op.dot2.f32(i32 54, float %182, float %183, float %380, float %381)  ; Dot2(ax,ay,bx,by)
  %383 = fmul fast float %382, 2.000000e+00
  %384 = call float @dx.op.dot2.f32(i32 54, float %380, float %381, float %380, float %381)  ; Dot2(ax,ay,bx,by)
  %385 = fmul fast float %379, %379
  %386 = fsub fast float %384, %385
  %387 = fmul fast float %383, %383
  %388 = fmul fast float %244, %386
  %389 = fsub fast float %387, %388
  %390 = fcmp fast ogt float %389, 0.000000e+00
  br i1 %390, label %391, label %406, !dx.controlflow.hints !44

; <label>:391                                     ; preds = %367
  %392 = fcmp fast ogt float %383, 0.000000e+00
  %393 = call float @dx.op.unary.f32(i32 24, float %389)  ; Sqrt(value)
  %394 = fsub fast float -0.000000e+00, %393
  %395 = select i1 %392, float %393, float %394
  %396 = fadd fast float %395, %383
  %397 = fmul float %396, -5.000000e-01
  %398 = fdiv fast float %397, %237
  %399 = call float @dx.op.binary.f32(i32 35, float %398, float 0.000000e+00)  ; FMax(a,b)
  %400 = call float @dx.op.binary.f32(i32 36, float %272, float %399)  ; FMin(a,b)
  %401 = fdiv fast float %386, %397
  %402 = call float @dx.op.binary.f32(i32 35, float %401, float 0.000000e+00)  ; FMax(a,b)
  %403 = call float @dx.op.binary.f32(i32 36, float %272, float %402)  ; FMin(a,b)
  %404 = call float @dx.op.binary.f32(i32 36, float %400, float %403)  ; FMin(a,b)
  %405 = call float @dx.op.binary.f32(i32 35, float %400, float %403)  ; FMax(a,b)
  br label %406

; <label>:406                                     ; preds = %391, %367
  %407 = phi float [ %405, %391 ], [ -1.000000e+00, %367 ]
  %408 = phi float [ %404, %391 ], [ -1.000000e+00, %367 ]
  %409 = phi i1 [ true, %391 ], [ false, %367 ]
  br i1 %409, label %410, label %416, !dx.controlflow.hints !69

; <label>:410                                     ; preds = %406
  %411 = call float @dx.op.binary.f32(i32 35, float %355, float %408)  ; FMax(a,b)
  %412 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 %369
  store float %411, float* %412, align 4, !tbaa !53, !noalias !57
  %413 = call float @dx.op.binary.f32(i32 35, float %355, float %407)  ; FMax(a,b)
  %414 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 %369
  store float %413, float* %414, align 4, !tbaa !53, !noalias !57
  %415 = add nsw i32 %368, 1
  br label %416

; <label>:416                                     ; preds = %410, %406
  %417 = phi i32 [ %415, %410 ], [ %368, %406 ]
  %418 = add nuw nsw i32 %369, 1
  %419 = icmp eq i32 %418, %224
  br i1 %419, label %420, label %367

; <label>:420                                     ; preds = %416
  %421 = load float, float* %361, align 4, !tbaa !53, !alias.scope !70, !noalias !73
  %422 = load float, float* %360, align 4, !tbaa !53, !alias.scope !76, !noalias !77
  %423 = load float, float* %359, align 4, !tbaa !53, !alias.scope !78, !noalias !79
  %424 = load float, float* %364, align 4, !tbaa !53, !alias.scope !80, !noalias !83
  %425 = load float, float* %363, align 4, !tbaa !53, !alias.scope !86, !noalias !87
  %426 = load float, float* %362, align 4, !tbaa !53, !alias.scope !88, !noalias !89
  br label %427

; <label>:427                                     ; preds = %420, %354
  %428 = phi float [ -1.000000e+00, %354 ], [ %426, %420 ]
  %429 = phi float [ -1.000000e+00, %354 ], [ %425, %420 ]
  %430 = phi float [ -1.000000e+00, %354 ], [ %424, %420 ]
  %431 = phi float [ -1.000000e+00, %354 ], [ %423, %420 ]
  %432 = phi float [ -1.000000e+00, %354 ], [ %422, %420 ]
  %433 = phi float [ -1.000000e+00, %354 ], [ %421, %420 ]
  %434 = phi i32 [ 0, %354 ], [ %417, %420 ]
  %435 = call float @dx.op.binary.f32(i32 36, float %432, float %433)  ; FMin(a,b)
  %436 = call float @dx.op.binary.f32(i32 36, float %431, float %435)  ; FMin(a,b)
  %437 = call float @dx.op.binary.f32(i32 35, float %431, float %432)  ; FMax(a,b)
  %438 = call float @dx.op.binary.f32(i32 36, float %437, float %433)  ; FMin(a,b)
  %439 = call float @dx.op.binary.f32(i32 36, float %431, float %432)  ; FMin(a,b)
  %440 = call float @dx.op.binary.f32(i32 35, float %439, float %438)  ; FMax(a,b)
  %441 = call float @dx.op.binary.f32(i32 35, float %432, float %433)  ; FMax(a,b)
  %442 = call float @dx.op.binary.f32(i32 35, float %431, float %441)  ; FMax(a,b)
  store float %436, float* %359, align 4, !tbaa !53, !alias.scope !78, !noalias !79
  store float %440, float* %360, align 4, !tbaa !53, !alias.scope !76, !noalias !77
  store float %442, float* %361, align 4, !tbaa !53, !alias.scope !70, !noalias !73
  %443 = call float @dx.op.binary.f32(i32 36, float %429, float %430)  ; FMin(a,b)
  %444 = call float @dx.op.binary.f32(i32 36, float %428, float %443)  ; FMin(a,b)
  %445 = call float @dx.op.binary.f32(i32 35, float %428, float %429)  ; FMax(a,b)
  %446 = call float @dx.op.binary.f32(i32 36, float %445, float %430)  ; FMin(a,b)
  %447 = call float @dx.op.binary.f32(i32 36, float %428, float %429)  ; FMin(a,b)
  %448 = call float @dx.op.binary.f32(i32 35, float %447, float %446)  ; FMax(a,b)
  %449 = call float @dx.op.binary.f32(i32 35, float %429, float %430)  ; FMax(a,b)
  %450 = call float @dx.op.binary.f32(i32 35, float %428, float %449)  ; FMax(a,b)
  store float %444, float* %362, align 4, !tbaa !53, !alias.scope !88, !noalias !89
  store float %448, float* %363, align 4, !tbaa !53, !alias.scope !86, !noalias !87
  store float %450, float* %364, align 4, !tbaa !53, !alias.scope !80, !noalias !83
  %451 = sub nsw i32 3, %434
  %452 = icmp sgt i32 %451, 2
  br i1 %452, label %453, label %491, !dx.controlflow.hints !90

; <label>:453                                     ; preds = %427
  %454 = icmp eq i32 %222, 0
  %455 = fsub fast float %272, %356
  %456 = select i1 %454, float %455, float %356
  %457 = extractvalue %dx.types.CBufRet.f32 %212, 0
  %458 = extractvalue %dx.types.CBufRet.f32 %212, 1
  %459 = extractvalue %dx.types.CBufRet.f32 %212, 2
  %460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %461 = extractvalue %dx.types.CBufRet.f32 %460, 0
  %462 = extractvalue %dx.types.CBufRet.f32 %460, 1
  %463 = extractvalue %dx.types.CBufRet.f32 %460, 2
  %464 = extractvalue %dx.types.CBufRet.f32 %460, 3
  %465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %466 = extractvalue %dx.types.CBufRet.f32 %465, 3
  %467 = call float @dx.op.binary.f32(i32 36, float %357, float %466)  ; FMin(a,b)
  %468 = fmul fast float %464, %456
  %469 = call float @dx.op.unary.f32(i32 7, float %468)  ; Saturate(value)
  %470 = fsub fast float %461, %457
  %471 = fsub fast float %462, %458
  %472 = fsub fast float %463, %459
  %473 = fmul fast float %469, %470
  %474 = fmul fast float %469, %471
  %475 = fmul fast float %469, %472
  %476 = fadd fast float %473, %457
  %477 = fadd fast float %474, %458
  %478 = fadd fast float %475, %459
  br i1 %105, label %573, label %479, !dx.controlflow.hints !50

; <label>:479                                     ; preds = %453
  %480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %481 = extractvalue %dx.types.CBufRet.f32 %480, 0
  %482 = extractvalue %dx.types.CBufRet.f32 %480, 1
  %483 = fadd fast float %482, %481
  %484 = call float @dx.op.unary.f32(i32 7, float %483)  ; Saturate(value)
  %485 = extractvalue %dx.types.CBufRet.f32 %480, 2
  %486 = extractvalue %dx.types.CBufRet.f32 %480, 3
  %487 = fadd fast float %486, %485
  %488 = call float @dx.op.unary.f32(i32 7, float %487)  ; Saturate(value)
  %489 = fmul fast float %484, %467
  %490 = fmul fast float %489, %488
  br label %573

; <label>:491                                     ; preds = %427
  %492 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 %451
  %493 = load float, float* %492, align 4, !tbaa !53, !noalias !57
  %494 = fcmp fast olt float %493, %358
  %495 = icmp sgt i32 %434, 0
  %496 = and i1 %495, %494
  br i1 %496, label %497, label %534

; <label>:497                                     ; preds = %491
  br label %498

; <label>:498                                     ; preds = %527, %497
  %499 = phi float [ %528, %527 ], [ %356, %497 ]
  %500 = phi float [ %529, %527 ], [ %357, %497 ]
  %501 = phi float [ %509, %527 ], [ %493, %497 ]
  %502 = phi i32 [ %506, %527 ], [ %451, %497 ]
  %503 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 %502
  %504 = load float, float* %503, align 4, !tbaa !53, !noalias !57
  %505 = icmp slt i32 %502, 2
  %506 = add nsw i32 %502, 1
  %507 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 %506
  %508 = load float, float* %507, align 4, !tbaa !53, !noalias !57
  %509 = select i1 %505, float %508, float %272
  %510 = call float @dx.op.binary.f32(i32 36, float %509, float %504)  ; FMin(a,b)
  %511 = call float @dx.op.binary.f32(i32 36, float %358, float %510)  ; FMin(a,b)
  %512 = icmp eq i32 %222, 0
  %513 = fadd fast float %511, %501
  %514 = fmul fast float %513, %184
  %515 = fadd fast float %514, %216
  br i1 %512, label %521, label %516, !dx.controlflow.hints !91

; <label>:516                                     ; preds = %498
  %517 = fsub fast float %511, %501
  %518 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %517)  ; FMax(a,b)
  %519 = fmul fast float %518, %515
  %520 = fadd fast float %519, %500
  br label %527

; <label>:521                                     ; preds = %498
  %522 = fsub fast float %501, %511
  %523 = call float @dx.op.unary.f32(i32 6, float %522)  ; FAbs(value)
  %524 = fadd fast float %523, %499
  %525 = fmul fast float %523, %515
  %526 = fsub fast float %500, %525
  br label %527

; <label>:527                                     ; preds = %521, %516
  %528 = phi float [ %518, %516 ], [ %524, %521 ]
  %529 = phi float [ %520, %516 ], [ %526, %521 ]
  %530 = fcmp fast olt float %509, %358
  %531 = icmp slt i32 %506, 3
  %532 = and i1 %531, %530
  br i1 %532, label %498, label %533

; <label>:533                                     ; preds = %527
  br label %534

; <label>:534                                     ; preds = %533, %491
  %535 = phi float [ %356, %491 ], [ %528, %533 ]
  %536 = phi float [ %357, %491 ], [ %529, %533 ]
  %537 = fsub fast float %272, %535
  %538 = select i1 %274, float %535, float %537
  %539 = extractvalue %dx.types.CBufRet.f32 %212, 0
  %540 = extractvalue %dx.types.CBufRet.f32 %212, 1
  %541 = extractvalue %dx.types.CBufRet.f32 %212, 2
  %542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %543 = extractvalue %dx.types.CBufRet.f32 %542, 0
  %544 = extractvalue %dx.types.CBufRet.f32 %542, 1
  %545 = extractvalue %dx.types.CBufRet.f32 %542, 2
  %546 = extractvalue %dx.types.CBufRet.f32 %542, 3
  %547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %548 = extractvalue %dx.types.CBufRet.f32 %547, 3
  %549 = call float @dx.op.binary.f32(i32 36, float %536, float %548)  ; FMin(a,b)
  %550 = fmul fast float %546, %538
  %551 = call float @dx.op.unary.f32(i32 7, float %550)  ; Saturate(value)
  %552 = fsub fast float %543, %539
  %553 = fsub fast float %544, %540
  %554 = fsub fast float %545, %541
  %555 = fmul fast float %551, %552
  %556 = fmul fast float %551, %553
  %557 = fmul fast float %551, %554
  %558 = fadd fast float %555, %539
  %559 = fadd fast float %556, %540
  %560 = fadd fast float %557, %541
  br i1 %105, label %573, label %561, !dx.controlflow.hints !50

; <label>:561                                     ; preds = %534
  %562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %563 = extractvalue %dx.types.CBufRet.f32 %562, 0
  %564 = extractvalue %dx.types.CBufRet.f32 %562, 1
  %565 = fadd fast float %564, %563
  %566 = call float @dx.op.unary.f32(i32 7, float %565)  ; Saturate(value)
  %567 = extractvalue %dx.types.CBufRet.f32 %562, 2
  %568 = extractvalue %dx.types.CBufRet.f32 %562, 3
  %569 = fadd fast float %568, %567
  %570 = call float @dx.op.unary.f32(i32 7, float %569)  ; Saturate(value)
  %571 = fmul fast float %566, %549
  %572 = fmul fast float %571, %570
  br label %573

; <label>:573                                     ; preds = %561, %534, %479, %453, %320, %288, %270, %268
  %574 = phi float [ 0.000000e+00, %268 ], [ 0.000000e+00, %270 ], [ %297, %320 ], [ %297, %288 ], [ %456, %479 ], [ %456, %453 ], [ %538, %561 ], [ %538, %534 ]
  %575 = phi float [ 0.000000e+00, %268 ], [ 0.000000e+00, %270 ], [ %331, %320 ], [ %308, %288 ], [ %490, %479 ], [ %467, %453 ], [ %572, %561 ], [ %549, %534 ]
  %576 = phi float [ 0.000000e+00, %268 ], [ 0.000000e+00, %270 ], [ %317, %320 ], [ %317, %288 ], [ %476, %479 ], [ %476, %453 ], [ %558, %561 ], [ %558, %534 ]
  %577 = phi float [ 0.000000e+00, %268 ], [ 0.000000e+00, %270 ], [ %318, %320 ], [ %318, %288 ], [ %477, %479 ], [ %477, %453 ], [ %559, %561 ], [ %559, %534 ]
  %578 = phi float [ 0.000000e+00, %268 ], [ 0.000000e+00, %270 ], [ %319, %320 ], [ %319, %288 ], [ %478, %479 ], [ %478, %453 ], [ %560, %561 ], [ %560, %534 ]
  %579 = fmul fast float %208, %575
  %580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %581 = extractvalue %dx.types.CBufRet.f32 %580, 2
  %582 = fsub fast float %218, %581
  %583 = fcmp fast olt float %579, -2.000000e+01
  %584 = call float @dx.op.unary.f32(i32 21, float %579)  ; Exp(value)
  %585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %586 = extractvalue %dx.types.CBufRet.f32 %585, 2
  %587 = extractvalue %dx.types.CBufRet.f32 %585, 3
  %588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %589 = extractvalue %dx.types.CBufRet.f32 %588, 2
  %590 = fmul fast float %587, %582
  %591 = call float @dx.op.unary.f32(i32 7, float %590)  ; Saturate(value)
  %592 = fsub fast float 1.000000e+00, %591
  %593 = fmul fast float %184, 5.000000e-01
  %594 = fadd fast float %593, 5.000000e-01
  %595 = call float @dx.op.unary.f32(i32 7, float %594)  ; Saturate(value)
  %596 = fsub fast float 1.000000e+00, %595
  %597 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %592)  ; FMax(a,b)
  %598 = fdiv fast float %596, %597
  %599 = fsub fast float %582, %147
  %600 = call float @dx.op.unary.f32(i32 6, float %599)  ; FAbs(value)
  %601 = fmul fast float %600, %586
  %602 = call float @dx.op.unary.f32(i32 7, float %598)  ; Saturate(value)
  %603 = fsub fast float 1.000000e+00, %601
  %604 = fmul fast float %603, %602
  %605 = fadd fast float %604, %601
  %606 = fmul fast float %589, %582
  %607 = call float @dx.op.unary.f32(i32 7, float %606)  ; Saturate(value)
  %608 = fsub fast float 1.000000e+00, %605
  %609 = fmul fast float %608, %607
  %610 = fadd fast float %609, %605
  %611 = call float @dx.op.unary.f32(i32 7, float %610)  ; Saturate(value)
  %612 = fadd fast float %584, -1.000000e+00
  %613 = select i1 %583, float -1.000000e+00, float %612
  %614 = fmul fast float %611, %613
  %615 = fadd fast float %614, 1.000000e+00
  %616 = fsub fast float -0.000000e+00, %614
  %617 = fmul fast float %576, %616
  %618 = fmul fast float %577, %616
  %619 = fmul fast float %578, %616
  br label %620

; <label>:620                                     ; preds = %573, %198
  %621 = phi float [ %574, %573 ], [ 0.000000e+00, %198 ]
  %622 = phi float [ %615, %573 ], [ 1.000000e+00, %198 ]
  %623 = phi float [ %617, %573 ], [ 0.000000e+00, %198 ]
  %624 = phi float [ %618, %573 ], [ 0.000000e+00, %198 ]
  %625 = phi float [ %619, %573 ], [ 0.000000e+00, %198 ]
  %626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %627 = extractvalue %dx.types.CBufRet.f32 %626, 1
  %628 = fsub fast float 1.000000e+00, %622
  %629 = fmul fast float %628, %199
  %630 = fmul fast float %629, %627
  %631 = fsub fast float %199, %630
  br i1 %177, label %632, label %664, !dx.controlflow.hints !92

; <label>:632                                     ; preds = %620
  %633 = fmul fast float %202, %174
  %634 = fadd fast float %633, %175
  %635 = call float @dx.op.unary.f32(i32 7, float %634)  ; Saturate(value)
  %636 = fmul fast float %156, %631
  %637 = fsub fast float -0.000000e+00, %636
  %638 = fmul fast float %157, %631
  %639 = fsub fast float -0.000000e+00, %638
  %640 = call float @dx.op.unary.f32(i32 21, float %637)  ; Exp(value)
  %641 = call float @dx.op.unary.f32(i32 21, float %639)  ; Exp(value)
  %642 = call float @dx.op.binary.f32(i32 35, float %164, float %640)  ; FMax(a,b)
  %643 = call float @dx.op.binary.f32(i32 35, float %164, float %641)  ; FMax(a,b)
  %644 = fsub fast float %643, %642
  %645 = fmul fast float %644, %635
  %646 = fadd fast float %645, %642
  %647 = call float @dx.op.unary.f32(i32 7, float %646)  ; Saturate(value)
  %648 = fmul fast float %200, %178
  %649 = fsub fast float 1.000000e+00, %648
  %650 = select i1 %105, float %649, float %647
  %651 = fsub fast float %161, %166
  %652 = fsub fast float %162, %167
  %653 = fsub fast float %163, %168
  %654 = fmul fast float %635, %651
  %655 = fmul fast float %635, %652
  %656 = fmul fast float %635, %653
  %657 = fadd fast float %654, %166
  %658 = fadd fast float %655, %167
  %659 = fadd fast float %656, %168
  %660 = fsub fast float 1.000000e+00, %650
  %661 = fmul fast float %660, %657
  %662 = fmul fast float %660, %658
  %663 = fmul fast float %660, %659
  br label %735

; <label>:664                                     ; preds = %620
  %665 = fmul fast float %631, %173
  %666 = call float @dx.op.unary.f32(i32 7, float %665)  ; Saturate(value)
  %667 = fsub fast float 2.000000e+00, %666
  %668 = fmul fast float %666, 9.921875e-01
  %669 = fmul fast float %668, %667
  %670 = fadd fast float %669, 3.906250e-03
  %671 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %24, float %670, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %672 = extractvalue %dx.types.ResRet.f32 %671, 0
  %673 = fsub fast float %666, %672
  %674 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %673)  ; FMax(a,b)
  %675 = fmul fast float %201, %159
  %676 = call float @dx.op.unary.f32(i32 6, float %675)  ; FAbs(value)
  %677 = fcmp fast ogt float %676, 0x3EB0C6F7A0000000
  br i1 %677, label %678, label %684, !dx.controlflow.hints !93

; <label>:678                                     ; preds = %664
  %679 = fmul fast float %675, 0xBFF7154760000000
  %680 = call float @dx.op.unary.f32(i32 21, float %679)  ; Exp(value)
  %681 = fsub fast float 1.000000e+00, %680
  %682 = fdiv fast float %681, %675
  %683 = fmul fast float %682, %169
  br label %684

; <label>:684                                     ; preds = %678, %664
  %685 = phi float [ %683, %678 ], [ %169, %664 ]
  %686 = fadd fast float %685, %171
  %687 = fmul fast float %686, %674
  %688 = fmul fast float %156, %687
  %689 = fsub fast float -0.000000e+00, %688
  %690 = fmul fast float %157, %687
  %691 = fsub fast float -0.000000e+00, %690
  %692 = fmul fast float %158, %687
  %693 = fsub fast float -0.000000e+00, %692
  %694 = call float @dx.op.unary.f32(i32 21, float %689)  ; Exp(value)
  %695 = call float @dx.op.unary.f32(i32 21, float %691)  ; Exp(value)
  %696 = call float @dx.op.unary.f32(i32 21, float %693)  ; Exp(value)
  br i1 %105, label %697, label %705, !dx.controlflow.hints !94

; <label>:697                                     ; preds = %684
  %698 = fmul fast float %694, %200
  %699 = fmul fast float %695, %200
  %700 = fmul fast float %696, %200
  %701 = fsub fast float 1.000000e+00, %200
  %702 = fadd fast float %698, %701
  %703 = fadd fast float %699, %701
  %704 = fadd fast float %700, %701
  br label %705

; <label>:705                                     ; preds = %697, %684
  %706 = phi float [ %702, %697 ], [ %694, %684 ]
  %707 = phi float [ %703, %697 ], [ %695, %684 ]
  %708 = phi float [ %704, %697 ], [ %696, %684 ]
  %709 = fmul fast float %202, %202
  %710 = fadd fast float %709, 1.000000e+00
  %711 = fmul fast float %710, 0x3FAE8EC8A0000000
  %712 = fmul fast float %711, %166
  %713 = fmul fast float %711, %167
  %714 = fmul fast float %711, %168
  %715 = fmul fast float %202, %164
  %716 = fsub fast float 1.000000e+00, %715
  %717 = fmul fast float %164, %164
  %718 = fsub fast float 1.000000e+00, %717
  %719 = fmul fast float %718, 0x3FB45F3060000000
  %720 = fmul fast float %716, %716
  %721 = fdiv fast float 1.000000e+00, %720
  %722 = fmul fast float %719, %721
  %723 = fmul fast float %722, %161
  %724 = fmul fast float %722, %162
  %725 = fmul fast float %722, %163
  %726 = fadd fast float %723, %712
  %727 = fadd fast float %724, %713
  %728 = fadd fast float %725, %714
  %729 = fsub fast float 1.000000e+00, %706
  %730 = fsub fast float 1.000000e+00, %707
  %731 = fsub fast float 1.000000e+00, %708
  %732 = fmul fast float %726, %729
  %733 = fmul fast float %727, %730
  %734 = fmul fast float %728, %731
  br label %735

; <label>:735                                     ; preds = %705, %632
  %736 = phi float [ %661, %632 ], [ %732, %705 ]
  %737 = phi float [ %662, %632 ], [ %733, %705 ]
  %738 = phi float [ %663, %632 ], [ %734, %705 ]
  %739 = phi float [ %650, %632 ], [ %706, %705 ]
  %740 = phi float [ %650, %632 ], [ %707, %705 ]
  %741 = phi float [ %650, %632 ], [ %708, %705 ]
  br i1 %210, label %742, label %940, !dx.controlflow.hints !95

; <label>:742                                     ; preds = %735
  %743 = extractvalue %dx.types.CBufRet.f32 %626, 0
  %744 = fmul fast float %743, %628
  %745 = fsub fast float %623, %736
  %746 = fsub fast float %624, %737
  %747 = fsub fast float %625, %738
  %748 = fmul fast float %744, %745
  %749 = fmul fast float %744, %746
  %750 = fmul fast float %744, %747
  %751 = fadd fast float %748, %736
  %752 = fadd fast float %749, %737
  %753 = fadd fast float %750, %738
  %754 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %739)  ; FMax(a,b)
  %755 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %740)  ; FMax(a,b)
  %756 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %741)  ; FMax(a,b)
  %757 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %622)  ; FMax(a,b)
  %758 = call float @dx.op.binary.f32(i32 35, float %621, float %631)  ; FMax(a,b)
  %759 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %758)  ; FMax(a,b)
  %760 = fdiv fast float %621, %759
  %761 = call float @dx.op.unary.f32(i32 7, float %760)  ; Saturate(value)
  %762 = fdiv fast float %631, %759
  %763 = call float @dx.op.unary.f32(i32 7, float %762)  ; Saturate(value)
  %764 = fcmp fast une float %757, 1.000000e+00
  br i1 %764, label %765, label %778, !dx.controlflow.hints !96

; <label>:765                                     ; preds = %742
  %766 = call float @dx.op.unary.f32(i32 23, float %757)  ; Log(value)
  %767 = fmul fast float %766, 0x3FE62E4300000000
  %768 = fmul fast float %623, %767
  %769 = fsub fast float -0.000000e+00, %768
  %770 = fmul fast float %624, %767
  %771 = fsub fast float -0.000000e+00, %770
  %772 = fmul fast float %625, %767
  %773 = fsub fast float -0.000000e+00, %772
  %774 = fsub fast float 1.000000e+00, %757
  %775 = fdiv fast float %769, %774
  %776 = fdiv fast float %771, %774
  %777 = fdiv fast float %773, %774
  br label %778

; <label>:778                                     ; preds = %765, %742
  %779 = phi float [ %775, %765 ], [ %623, %742 ]
  %780 = phi float [ %776, %765 ], [ %624, %742 ]
  %781 = phi float [ %777, %765 ], [ %625, %742 ]
  %782 = phi float [ %767, %765 ], [ 0.000000e+00, %742 ]
  %783 = fcmp fast une float %754, 1.000000e+00
  br i1 %783, label %784, label %791, !dx.controlflow.hints !97

; <label>:784                                     ; preds = %778
  %785 = call float @dx.op.unary.f32(i32 23, float %754)  ; Log(value)
  %786 = fmul fast float %785, 0x3FE62E4300000000
  %787 = fmul fast float %751, %786
  %788 = fsub fast float -0.000000e+00, %787
  %789 = fsub fast float 1.000000e+00, %754
  %790 = fdiv fast float %788, %789
  br label %791

; <label>:791                                     ; preds = %784, %778
  %792 = phi float [ %790, %784 ], [ %751, %778 ]
  %793 = phi float [ %786, %784 ], [ 0.000000e+00, %778 ]
  %794 = fcmp fast une float %755, 1.000000e+00
  br i1 %794, label %795, label %802, !dx.controlflow.hints !97

; <label>:795                                     ; preds = %791
  %796 = call float @dx.op.unary.f32(i32 23, float %755)  ; Log(value)
  %797 = fmul fast float %796, 0x3FE62E4300000000
  %798 = fmul fast float %752, %797
  %799 = fsub fast float -0.000000e+00, %798
  %800 = fsub fast float 1.000000e+00, %755
  %801 = fdiv fast float %799, %800
  br label %802

; <label>:802                                     ; preds = %795, %791
  %803 = phi float [ %801, %795 ], [ %752, %791 ]
  %804 = phi float [ %797, %795 ], [ 0.000000e+00, %791 ]
  %805 = fcmp fast une float %756, 1.000000e+00
  br i1 %805, label %806, label %813, !dx.controlflow.hints !97

; <label>:806                                     ; preds = %802
  %807 = call float @dx.op.unary.f32(i32 23, float %756)  ; Log(value)
  %808 = fmul fast float %807, 0x3FE62E4300000000
  %809 = fmul fast float %753, %808
  %810 = fsub fast float -0.000000e+00, %809
  %811 = fsub fast float 1.000000e+00, %756
  %812 = fdiv fast float %810, %811
  br label %813

; <label>:813                                     ; preds = %806, %802
  %814 = phi float [ %812, %806 ], [ %753, %802 ]
  %815 = phi float [ %808, %806 ], [ 0.000000e+00, %802 ]
  %816 = fmul fast float %779, %763
  %817 = fmul fast float %780, %763
  %818 = fmul fast float %781, %763
  %819 = fmul fast float %782, %763
  %820 = fmul fast float %792, %761
  %821 = fmul fast float %803, %761
  %822 = fmul fast float %814, %761
  %823 = fmul fast float %793, %761
  %824 = fmul fast float %804, %761
  %825 = fmul fast float %815, %761
  %826 = fadd fast float %820, %816
  %827 = fadd fast float %821, %817
  %828 = fadd fast float %822, %818
  %829 = fadd fast float %823, %819
  %830 = fadd fast float %824, %819
  %831 = fadd fast float %825, %819
  %832 = fcmp fast une float %829, 0.000000e+00
  br i1 %832, label %833, label %840, !dx.controlflow.hints !98

; <label>:833                                     ; preds = %813
  %834 = fmul fast float %829, 0x3FF7154760000000
  %835 = call float @dx.op.unary.f32(i32 21, float %834)  ; Exp(value)
  %836 = fsub fast float 1.000000e+00, %835
  %837 = fmul fast float %826, %836
  %838 = fsub fast float -0.000000e+00, %837
  %839 = fdiv fast float %838, %829
  br label %840

; <label>:840                                     ; preds = %833, %813
  %841 = phi float [ %835, %833 ], [ 1.000000e+00, %813 ]
  %842 = phi float [ %839, %833 ], [ %826, %813 ]
  %843 = fcmp fast une float %830, 0.000000e+00
  br i1 %843, label %844, label %851, !dx.controlflow.hints !98

; <label>:844                                     ; preds = %840
  %845 = fmul fast float %830, 0x3FF7154760000000
  %846 = call float @dx.op.unary.f32(i32 21, float %845)  ; Exp(value)
  %847 = fsub fast float 1.000000e+00, %846
  %848 = fmul fast float %827, %847
  %849 = fsub fast float -0.000000e+00, %848
  %850 = fdiv fast float %849, %830
  br label %851

; <label>:851                                     ; preds = %844, %840
  %852 = phi float [ %846, %844 ], [ 1.000000e+00, %840 ]
  %853 = phi float [ %850, %844 ], [ %827, %840 ]
  %854 = fcmp fast une float %831, 0.000000e+00
  br i1 %854, label %855, label %862, !dx.controlflow.hints !98

; <label>:855                                     ; preds = %851
  %856 = fmul fast float %831, 0x3FF7154760000000
  %857 = call float @dx.op.unary.f32(i32 21, float %856)  ; Exp(value)
  %858 = fsub fast float 1.000000e+00, %857
  %859 = fmul fast float %828, %858
  %860 = fsub fast float -0.000000e+00, %859
  %861 = fdiv fast float %860, %831
  br label %862

; <label>:862                                     ; preds = %855, %851
  %863 = phi float [ %857, %855 ], [ 1.000000e+00, %851 ]
  %864 = phi float [ %861, %855 ], [ %828, %851 ]
  %865 = fcmp fast ogt float %761, %763
  br i1 %865, label %866, label %886, !dx.controlflow.hints !99

; <label>:866                                     ; preds = %862
  %867 = fsub fast float 1.000000e+00, %763
  %868 = fmul fast float %779, %867
  %869 = fmul fast float %780, %867
  %870 = fmul fast float %781, %867
  %871 = fmul fast float %782, %867
  %872 = fcmp fast une float %871, 0.000000e+00
  br i1 %872, label %873, label %924, !dx.controlflow.hints !100

; <label>:873                                     ; preds = %866
  %874 = fmul fast float %871, 0x3FF7154760000000
  %875 = call float @dx.op.unary.f32(i32 21, float %874)  ; Exp(value)
  %876 = fsub fast float 1.000000e+00, %875
  %877 = fmul fast float %868, %876
  %878 = fsub fast float -0.000000e+00, %877
  %879 = fmul fast float %869, %876
  %880 = fsub fast float -0.000000e+00, %879
  %881 = fmul fast float %870, %876
  %882 = fsub fast float -0.000000e+00, %881
  %883 = fdiv fast float %878, %871
  %884 = fdiv fast float %880, %871
  %885 = fdiv fast float %882, %871
  br label %924

; <label>:886                                     ; preds = %862
  %887 = fsub fast float 1.000000e+00, %761
  %888 = fmul fast float %792, %887
  %889 = fmul fast float %803, %887
  %890 = fmul fast float %814, %887
  %891 = fmul fast float %793, %887
  %892 = fmul fast float %804, %887
  %893 = fmul fast float %815, %887
  %894 = fcmp fast une float %891, 0.000000e+00
  br i1 %894, label %895, label %902, !dx.controlflow.hints !98

; <label>:895                                     ; preds = %886
  %896 = fmul fast float %891, 0x3FF7154760000000
  %897 = call float @dx.op.unary.f32(i32 21, float %896)  ; Exp(value)
  %898 = fsub fast float 1.000000e+00, %897
  %899 = fmul fast float %888, %898
  %900 = fsub fast float -0.000000e+00, %899
  %901 = fdiv fast float %900, %891
  br label %902

; <label>:902                                     ; preds = %895, %886
  %903 = phi float [ %901, %895 ], [ %888, %886 ]
  %904 = phi float [ %897, %895 ], [ 1.000000e+00, %886 ]
  %905 = fcmp fast une float %892, 0.000000e+00
  br i1 %905, label %906, label %913, !dx.controlflow.hints !98

; <label>:906                                     ; preds = %902
  %907 = fmul fast float %892, 0x3FF7154760000000
  %908 = call float @dx.op.unary.f32(i32 21, float %907)  ; Exp(value)
  %909 = fsub fast float 1.000000e+00, %908
  %910 = fmul fast float %889, %909
  %911 = fsub fast float -0.000000e+00, %910
  %912 = fdiv fast float %911, %892
  br label %913

; <label>:913                                     ; preds = %906, %902
  %914 = phi float [ %912, %906 ], [ %889, %902 ]
  %915 = phi float [ %908, %906 ], [ 1.000000e+00, %902 ]
  %916 = fcmp fast une float %893, 0.000000e+00
  br i1 %916, label %917, label %924, !dx.controlflow.hints !98

; <label>:917                                     ; preds = %913
  %918 = fmul fast float %893, 0x3FF7154760000000
  %919 = call float @dx.op.unary.f32(i32 21, float %918)  ; Exp(value)
  %920 = fsub fast float 1.000000e+00, %919
  %921 = fmul fast float %890, %920
  %922 = fsub fast float -0.000000e+00, %921
  %923 = fdiv fast float %922, %893
  br label %924

; <label>:924                                     ; preds = %917, %913, %873, %866
  %925 = phi float [ %923, %917 ], [ %885, %873 ], [ %870, %866 ], [ %890, %913 ]
  %926 = phi float [ %914, %917 ], [ %884, %873 ], [ %869, %866 ], [ %914, %913 ]
  %927 = phi float [ %903, %917 ], [ %883, %873 ], [ %868, %866 ], [ %903, %913 ]
  %928 = phi float [ %919, %917 ], [ %875, %873 ], [ 1.000000e+00, %866 ], [ 1.000000e+00, %913 ]
  %929 = phi float [ %915, %917 ], [ %875, %873 ], [ 1.000000e+00, %866 ], [ %915, %913 ]
  %930 = phi float [ %904, %917 ], [ %875, %873 ], [ 1.000000e+00, %866 ], [ %904, %913 ]
  %931 = fmul fast float %930, %842
  %932 = fmul fast float %929, %853
  %933 = fmul fast float %928, %864
  %934 = fadd fast float %931, %927
  %935 = fadd fast float %932, %926
  %936 = fadd fast float %933, %925
  %937 = fmul fast float %930, %841
  %938 = fmul fast float %929, %852
  %939 = fmul fast float %928, %863
  br label %940

; <label>:940                                     ; preds = %924, %735
  %941 = phi float [ %939, %924 ], [ %741, %735 ]
  %942 = phi float [ %938, %924 ], [ %740, %735 ]
  %943 = phi float [ %937, %924 ], [ %739, %735 ]
  %944 = phi float [ %936, %924 ], [ %738, %735 ]
  %945 = phi float [ %935, %924 ], [ %737, %735 ]
  %946 = phi float [ %934, %924 ], [ %736, %735 ]
  %947 = fmul fast float %55, %106
  %948 = fmul fast float %56, %107
  %949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %24, float %947, float %948, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %950 = extractvalue %dx.types.ResRet.f32 %949, 0
  %951 = extractvalue %dx.types.ResRet.f32 %949, 1
  %952 = extractvalue %dx.types.ResRet.f32 %949, 2
  %953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %954 = extractvalue %dx.types.CBufRet.f32 %953, 1
  %955 = fmul fast float %954, %950
  %956 = fmul fast float %954, %951
  %957 = fmul fast float %954, %952
  %958 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %24, float %947, float %948, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %959 = extractvalue %dx.types.ResRet.f32 %958, 0
  %960 = fmul fast float %959, %943
  %961 = fmul fast float %959, %942
  %962 = fmul fast float %959, %941
  %963 = fmul fast float %959, %946
  %964 = fmul fast float %959, %945
  %965 = fmul fast float %959, %944
  %966 = fadd fast float %963, %955
  %967 = fadd fast float %964, %956
  %968 = fadd fast float %965, %957
  br label %969

; <label>:969                                     ; preds = %940, %0
  %970 = phi float [ %966, %940 ], [ 0.000000e+00, %0 ]
  %971 = phi float [ %967, %940 ], [ 0.000000e+00, %0 ]
  %972 = phi float [ %968, %940 ], [ 0.000000e+00, %0 ]
  %973 = phi float [ %960, %940 ], [ 1.000000e+00, %0 ]
  %974 = phi float [ %961, %940 ], [ 1.000000e+00, %0 ]
  %975 = phi float [ %962, %940 ], [ 1.000000e+00, %0 ]
  %976 = phi float [ %111, %940 ], [ %72, %0 ]
  %977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %978 = extractvalue %dx.types.CBufRet.f32 %977, 2
  %979 = extractvalue %dx.types.CBufRet.f32 %977, 3
  %980 = fmul fast float %978, %106
  %981 = fmul fast float %979, %107
  %982 = call float @dx.op.unary.f32(i32 7, float %980)  ; Saturate(value)
  %983 = call float @dx.op.unary.f32(i32 7, float %981)  ; Saturate(value)
  %984 = select i1 %103, i32 2, i32 0
  %985 = or i32 %984, 1
  %986 = uitofp i32 %985 to float
  %987 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %24, float %982, float %983, float %986, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %988 = extractvalue %dx.types.ResRet.f32 %987, 0
  %989 = extractvalue %dx.types.ResRet.f32 %987, 1
  %990 = extractvalue %dx.types.ResRet.f32 %987, 2
  %991 = extractvalue %dx.types.ResRet.f32 %987, 3
  %992 = add nuw nsw i32 %984, 2
  %993 = uitofp i32 %992 to float
  %994 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %24, float %982, float %983, float %993, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %995 = extractvalue %dx.types.ResRet.f32 %994, 0
  %996 = extractvalue %dx.types.ResRet.f32 %994, 1
  %997 = extractvalue %dx.types.ResRet.f32 %994, 2
  %998 = extractvalue %dx.types.ResRet.f32 %994, 3
  %999 = call float @dx.op.binary.f32(i32 35, float %989, float %990)  ; FMax(a,b)
  %1000 = call float @dx.op.binary.f32(i32 35, float %988, float %999)  ; FMax(a,b)
  %1001 = call float @dx.op.binary.f32(i32 35, float %1000, float %991)  ; FMax(a,b)
  %1002 = call float @dx.op.binary.f32(i32 36, float %996, float %997)  ; FMin(a,b)
  %1003 = call float @dx.op.binary.f32(i32 36, float %995, float %1002)  ; FMin(a,b)
  %1004 = call float @dx.op.binary.f32(i32 36, float %1003, float %998)  ; FMin(a,b)
  %1005 = fmul fast float %1001, 2.550000e+02
  %1006 = fadd fast float %1005, 0x3F70101020000000
  %1007 = fptoui float %1006 to i32
  %1008 = fmul fast float %1004, 2.550000e+02
  %1009 = fadd fast float %1008, 0x3F70101020000000
  %1010 = fptoui float %1009 to i32
  %1011 = icmp ult i32 %1007, %1010
  br i1 %1011, label %1012, label %1180, !dx.controlflow.hints !101

; <label>:1012                                    ; preds = %969
  %1013 = fadd fast float %976, -4.000000e+00
  %1014 = call float @dx.op.binary.f32(i32 35, float %1013, float 0.000000e+00)  ; FMax(a,b)
  %1015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1016 = extractvalue %dx.types.CBufRet.f32 %1015, 0
  %1017 = fadd fast float %1016, %1014
  %1018 = extractvalue %dx.types.CBufRet.f32 %1015, 2
  %1019 = fmul fast float %1017, %1018
  %1020 = call float @dx.op.unary.f32(i32 23, float %1019)  ; Log(value)
  %1021 = extractvalue %dx.types.CBufRet.f32 %1015, 3
  %1022 = fmul fast float %1021, %1020
  %1023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1024 = extractvalue %dx.types.CBufRet.f32 %1023, 2
  %1025 = fmul fast float %1022, %1024
  %1026 = call float @dx.op.unary.f32(i32 7, float %1025)  ; Saturate(value)
  %1027 = select i1 %105, float 1.000000e+00, float %1026
  %1028 = uitofp i32 %1007 to float
  %1029 = uitofp i32 %1010 to float
  %1030 = fadd fast float %1028, 5.000000e-01
  %1031 = fadd fast float %1029, 5.000000e-01
  %1032 = fmul fast float %1024, %1030
  %1033 = fmul fast float %1024, %1031
  %1034 = fadd fast float %1032, 0x3F0FFB4800000000
  %1035 = fadd fast float %1033, 0xBF0FFB4800000000
  %1036 = call float @dx.op.binary.f32(i32 35, float %1027, float %1034)  ; FMax(a,b)
  %1037 = call float @dx.op.binary.f32(i32 36, float %1036, float %1035)  ; FMin(a,b)
  %1038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1039 = extractvalue %dx.types.CBufRet.f32 %1038, 1
  %1040 = extractvalue %dx.types.CBufRet.f32 %1038, 2
  %1041 = extractvalue %dx.types.CBufRet.f32 %1038, 0
  %1042 = select i1 %103, float %1041, float 0.000000e+00
  %1043 = fmul fast float %1039, %1037
  %1044 = fadd fast float %1042, %1043
  %1045 = fadd fast float %1042, %1040
  %1046 = fsub fast float %1039, %1040
  %1047 = fadd fast float %1046, %1042
  %1048 = call float @dx.op.binary.f32(i32 35, float %1044, float %1045)  ; FMax(a,b)
  %1049 = call float @dx.op.binary.f32(i32 36, float %1048, float %1047)  ; FMin(a,b)
  %1050 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %23, float %982, float %983, float %1049, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1051 = extractvalue %dx.types.ResRet.f32 %1050, 0
  %1052 = extractvalue %dx.types.ResRet.f32 %1050, 1
  %1053 = extractvalue %dx.types.ResRet.f32 %1050, 2
  %1054 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %1055 = extractvalue %dx.types.CBufRet.i32 %1054, 0
  %1056 = extractvalue %dx.types.CBufRet.i32 %1054, 1
  %1057 = uitofp i32 %1055 to float
  %1058 = uitofp i32 %1056 to float
  %1059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %1060 = extractvalue %dx.types.CBufRet.f32 %1059, 0
  %1061 = extractvalue %dx.types.CBufRet.f32 %1059, 1
  %1062 = fmul fast float %1057, %982
  %1063 = fmul fast float %1058, %983
  %1064 = fadd fast float %1062, -5.000000e-01
  %1065 = fadd fast float %1063, -5.000000e-01
  %1066 = call float @dx.op.unary.f32(i32 22, float %1064)  ; Frc(value)
  %1067 = call float @dx.op.unary.f32(i32 22, float %1065)  ; Frc(value)
  %1068 = fmul fast float %1066, %1066
  %1069 = fmul fast float %1068, %1066
  %1070 = fsub fast float 3.000000e+00, %1066
  %1071 = fmul fast float %1068, %1070
  %1072 = fmul fast float %1066, 3.000000e+00
  %1073 = fmul fast float %1069, 3.000000e+00
  %1074 = fmul fast float %1068, 6.000000e+00
  %1075 = fsub fast float %1073, %1074
  %1076 = fadd fast float %1075, 4.000000e+00
  %1077 = fmul fast float %1076, 0x3FC5555560000000
  %1078 = fmul fast float %1069, -3.000000e+00
  %1079 = fadd fast float %1068, %1066
  %1080 = fmul fast float %1079, 3.000000e+00
  %1081 = fadd fast float %1078, 1.000000e+00
  %1082 = fadd fast float %1081, %1080
  %1083 = fmul fast float %1069, 0x3FC5555560000000
  %1084 = fmul fast float %1067, %1067
  %1085 = fmul fast float %1084, %1067
  %1086 = fsub fast float 3.000000e+00, %1067
  %1087 = fmul fast float %1084, %1086
  %1088 = fmul fast float %1067, 3.000000e+00
  %1089 = fmul fast float %1085, 3.000000e+00
  %1090 = fmul fast float %1084, 6.000000e+00
  %1091 = fsub fast float %1089, %1090
  %1092 = fadd fast float %1091, 4.000000e+00
  %1093 = fmul fast float %1092, 0x3FC5555560000000
  %1094 = fmul fast float %1085, -3.000000e+00
  %1095 = fadd fast float %1084, %1067
  %1096 = fmul fast float %1095, 3.000000e+00
  %1097 = fadd fast float %1094, 1.000000e+00
  %1098 = fadd fast float %1097, %1096
  %1099 = fmul fast float %1085, 0x3FC5555560000000
  %1100 = fadd fast float %1066, 1.000000e+00
  %1101 = fsub fast float 1.000000e+00, %1072
  %1102 = fadd fast float %1101, %1071
  %1103 = fadd fast float %1102, %1076
  %1104 = fmul fast float %1103, 0x3FC5555560000000
  %1105 = fdiv fast float %1077, %1104
  %1106 = fsub fast float %1100, %1105
  %1107 = fsub fast float 1.000000e+00, %1066
  %1108 = fadd fast float %1082, %1069
  %1109 = fmul fast float %1108, 0x3FC5555560000000
  %1110 = fdiv fast float %1083, %1109
  %1111 = fadd fast float %1107, %1110
  %1112 = fadd fast float %1067, 1.000000e+00
  %1113 = fsub fast float 1.000000e+00, %1088
  %1114 = fadd fast float %1113, %1087
  %1115 = fadd fast float %1114, %1092
  %1116 = fmul fast float %1115, 0x3FC5555560000000
  %1117 = fdiv fast float %1093, %1116
  %1118 = fsub fast float %1112, %1117
  %1119 = fsub fast float 1.000000e+00, %1067
  %1120 = fadd fast float %1098, %1085
  %1121 = fmul fast float %1120, 0x3FC5555560000000
  %1122 = fdiv fast float %1099, %1121
  %1123 = fadd fast float %1122, %1119
  %1124 = fmul fast float %1106, %1060
  %1125 = fsub fast float %982, %1124
  %1126 = fmul fast float %1111, %1060
  %1127 = fadd fast float %1126, %982
  %1128 = fmul fast float %1123, %1061
  %1129 = fadd fast float %1128, %983
  %1130 = fmul fast float %1118, %1061
  %1131 = fsub fast float %983, %1130
  %1132 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %23, float %1125, float %1131, float %1049, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1133 = extractvalue %dx.types.ResRet.f32 %1132, 0
  %1134 = extractvalue %dx.types.ResRet.f32 %1132, 1
  %1135 = extractvalue %dx.types.ResRet.f32 %1132, 2
  %1136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %23, float %1127, float %1131, float %1049, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1137 = extractvalue %dx.types.ResRet.f32 %1136, 0
  %1138 = extractvalue %dx.types.ResRet.f32 %1136, 1
  %1139 = extractvalue %dx.types.ResRet.f32 %1136, 2
  %1140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %23, float %1125, float %1129, float %1049, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1141 = extractvalue %dx.types.ResRet.f32 %1140, 0
  %1142 = extractvalue %dx.types.ResRet.f32 %1140, 1
  %1143 = extractvalue %dx.types.ResRet.f32 %1140, 2
  %1144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %23, float %1127, float %1129, float %1049, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1145 = extractvalue %dx.types.ResRet.f32 %1144, 0
  %1146 = extractvalue %dx.types.ResRet.f32 %1144, 1
  %1147 = extractvalue %dx.types.ResRet.f32 %1144, 2
  %1148 = fsub fast float %1141, %1133
  %1149 = fsub fast float %1142, %1134
  %1150 = fsub fast float %1143, %1135
  %1151 = fmul fast float %1148, %1121
  %1152 = fmul fast float %1149, %1121
  %1153 = fmul fast float %1150, %1121
  %1154 = fadd fast float %1151, %1133
  %1155 = fadd fast float %1152, %1134
  %1156 = fadd fast float %1153, %1135
  %1157 = fsub fast float %1145, %1137
  %1158 = fsub fast float %1146, %1138
  %1159 = fsub fast float %1147, %1139
  %1160 = fmul fast float %1157, %1121
  %1161 = fmul fast float %1158, %1121
  %1162 = fmul fast float %1159, %1121
  %1163 = fsub fast float %1137, %1154
  %1164 = fadd fast float %1163, %1160
  %1165 = fsub fast float %1138, %1155
  %1166 = fadd fast float %1165, %1161
  %1167 = fsub fast float %1139, %1156
  %1168 = fadd fast float %1167, %1162
  %1169 = fmul fast float %1164, %1109
  %1170 = fmul fast float %1166, %1109
  %1171 = fmul fast float %1168, %1109
  %1172 = fadd fast float %1169, %1154
  %1173 = fadd fast float %1170, %1155
  %1174 = fadd fast float %1171, %1156
  %1175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1176 = extractvalue %dx.types.CBufRet.f32 %1175, 1
  %1177 = fmul fast float %1172, %1176
  %1178 = fmul fast float %1173, %1176
  %1179 = fmul fast float %1174, %1176
  br label %1180

; <label>:1180                                    ; preds = %1012, %969
  %1181 = phi float [ %1051, %1012 ], [ 1.000000e+00, %969 ]
  %1182 = phi float [ %1052, %1012 ], [ 1.000000e+00, %969 ]
  %1183 = phi float [ %1053, %1012 ], [ 1.000000e+00, %969 ]
  %1184 = phi float [ %1177, %1012 ], [ 0.000000e+00, %969 ]
  %1185 = phi float [ %1178, %1012 ], [ 0.000000e+00, %969 ]
  %1186 = phi float [ %1179, %1012 ], [ 0.000000e+00, %969 ]
  %1187 = fmul fast float %1181, %973
  %1188 = fmul fast float %1182, %974
  %1189 = fmul fast float %1183, %975
  %1190 = fmul fast float %1181, %970
  %1191 = fmul fast float %1182, %971
  %1192 = fmul fast float %1183, %972
  %1193 = fadd fast float %1184, %1190
  %1194 = fadd fast float %1185, %1191
  %1195 = fadd fast float %1186, %1192
  %1196 = fmul fast float %55, %106
  %1197 = fmul fast float %56, %107
  %1198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1199 = extractvalue %dx.types.CBufRet.f32 %1198, 2
  %1200 = fmul fast float %1199, 0x3FE3C6EF40000000
  %1201 = frem fast float %52, 2.560000e+02
  %1202 = frem fast float %53, 2.560000e+02
  %1203 = fptoui float %1201 to i32
  %1204 = fptoui float %1202 to i32
  %1205 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1203, i32 %1204, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1206 = extractvalue %dx.types.ResRet.f32 %1205, 0
  %1207 = fadd fast float %1206, %1200
  %1208 = call float @dx.op.unary.f32(i32 22, float %1207)  ; Frc(value)
  %1209 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %50, i32 %51, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1210 = extractvalue %dx.types.ResRet.f32 %1209, 0
  %1211 = extractvalue %dx.types.ResRet.f32 %1209, 1
  %1212 = extractvalue %dx.types.ResRet.f32 %1209, 2
  %1213 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %50, i32 %51, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1214 = extractvalue %dx.types.ResRet.f32 %1213, 0
  %1215 = extractvalue %dx.types.ResRet.f32 %1213, 1
  %1216 = extractvalue %dx.types.ResRet.f32 %1213, 2
  %1217 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %50, i32 %51, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1218 = extractvalue %dx.types.ResRet.f32 %1217, 0
  %1219 = extractvalue %dx.types.ResRet.f32 %1217, 1
  %1220 = extractvalue %dx.types.ResRet.f32 %1217, 2
  %1221 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %50, i32 %51, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1222 = extractvalue %dx.types.ResRet.f32 %1221, 0
  %1223 = extractvalue %dx.types.ResRet.f32 %1221, 1
  %1224 = call float @dx.op.binary.f32(i32 35, float %1222, float %1223)  ; FMax(a,b)
  %1225 = fcmp fast ult float %1224, 0x3F70101020000000
  br i1 %1225, label %1457, label %1226, !dx.controlflow.hints !102

; <label>:1226                                    ; preds = %1180
  %1227 = fmul fast float %1223, 2.000000e+00
  %1228 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1227)  ; FMax(a,b)
  %1229 = fmul fast float %1222, 2.000000e+00
  %1230 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1229)  ; FMax(a,b)
  %1231 = extractvalue %dx.types.ResRet.f32 %1217, 3
  %1232 = fmul fast float %1231, 2.000000e+00
  %1233 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1232)  ; FMax(a,b)
  %1234 = fmul fast float %1220, %1220
  %1235 = fmul fast float %1219, %1219
  %1236 = fmul fast float %1218, %1218
  %1237 = fadd fast float %1236, 0xBFD51EB860000000
  %1238 = fadd fast float %1235, 0xBFD51EB860000000
  %1239 = fadd fast float %1234, 0xBFD51EB860000000
  %1240 = fmul fast float %1237, %1237
  %1241 = fmul fast float %1238, %1238
  %1242 = fmul fast float %1239, %1239
  %1243 = fmul fast float %1240, %1240
  %1244 = fmul fast float %1243, 1.000000e+02
  %1245 = fmul fast float %1241, %1241
  %1246 = fmul fast float %1245, 1.000000e+02
  %1247 = fmul fast float %1242, %1242
  %1248 = fmul fast float %1247, 1.000000e+02
  %1249 = fadd fast float %1244, 3.500000e+00
  %1250 = fadd fast float %1246, 3.500000e+00
  %1251 = fadd fast float %1248, 3.500000e+00
  %1252 = fdiv fast float %1249, %1233
  %1253 = fdiv fast float %1250, %1230
  %1254 = fdiv fast float %1251, %1228
  %1255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1256 = extractvalue %dx.types.CBufRet.f32 %1255, 0
  %1257 = extractvalue %dx.types.CBufRet.f32 %1255, 1
  %1258 = fmul fast float %1256, %72
  %1259 = fmul fast float %1257, %72
  %1260 = fdiv fast float 1.000000e+00, %1258
  %1261 = fdiv fast float 1.000000e+00, %1259
  %1262 = fmul fast float %55, 5.000000e-01
  %1263 = fmul fast float %1262, %1258
  %1264 = fmul fast float %1252, 0xBFF7154760000000
  %1265 = fmul fast float %1264, %1263
  %1266 = call float @dx.op.unary.f32(i32 21, float %1265)  ; Exp(value)
  %1267 = fmul fast float %1266, 2.500000e-01
  %1268 = fsub fast float 1.000000e+00, %1267
  %1269 = fmul fast float %1252, 0xBFDEC709E0000000
  %1270 = fmul fast float %1269, %1263
  %1271 = call float @dx.op.unary.f32(i32 21, float %1270)  ; Exp(value)
  %1272 = fmul fast float %1271, 7.500000e-01
  %1273 = fsub fast float %1268, %1272
  %1274 = fmul fast float %1253, 0xBFF7154760000000
  %1275 = fmul fast float %1274, %1263
  %1276 = call float @dx.op.unary.f32(i32 21, float %1275)  ; Exp(value)
  %1277 = fmul fast float %1276, 2.500000e-01
  %1278 = fsub fast float 1.000000e+00, %1277
  %1279 = fmul fast float %1253, 0xBFDEC709E0000000
  %1280 = fmul fast float %1279, %1263
  %1281 = call float @dx.op.unary.f32(i32 21, float %1280)  ; Exp(value)
  %1282 = fmul fast float %1281, 7.500000e-01
  %1283 = fsub fast float %1278, %1282
  %1284 = fmul fast float %1254, 0xBFF7154760000000
  %1285 = fmul fast float %1284, %1263
  %1286 = call float @dx.op.unary.f32(i32 21, float %1285)  ; Exp(value)
  %1287 = fmul fast float %1286, 2.500000e-01
  %1288 = fsub fast float 1.000000e+00, %1287
  %1289 = fmul fast float %1254, 0xBFDEC709E0000000
  %1290 = fmul fast float %1289, %1263
  %1291 = call float @dx.op.unary.f32(i32 21, float %1290)  ; Exp(value)
  %1292 = fmul fast float %1291, 7.500000e-01
  %1293 = fsub fast float %1288, %1292
  %1294 = fmul fast float %1214, 0x3F1A36E2E0000000
  %1295 = fmul fast float %1215, 0x3F1A36E2E0000000
  %1296 = fmul fast float %1216, 0x3F1A36E2E0000000
  %1297 = call float @dx.op.binary.f32(i32 36, float %1253, float %1254)  ; FMin(a,b)
  %1298 = call float @dx.op.binary.f32(i32 36, float %1252, float %1297)  ; FMin(a,b)
  %1299 = call float @dx.op.binary.f32(i32 36, float %1283, float %1293)  ; FMin(a,b)
  %1300 = call float @dx.op.binary.f32(i32 36, float %1273, float %1299)  ; FMin(a,b)
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.f32 %1301, 2
  %1303 = fmul fast float %1302, %1258
  %1304 = fmul fast float %1298, 0xBFF7154760000000
  %1305 = fmul fast float %1304, %1303
  %1306 = call float @dx.op.unary.f32(i32 21, float %1305)  ; Exp(value)
  %1307 = fmul fast float %1306, 2.500000e-01
  %1308 = fsub fast float 1.000000e+00, %1307
  %1309 = fmul fast float %1298, 0xBFDEC709E0000000
  %1310 = fmul fast float %1309, %1303
  %1311 = call float @dx.op.unary.f32(i32 21, float %1310)  ; Exp(value)
  %1312 = fmul fast float %1311, 7.500000e-01
  %1313 = fsub fast float %1308, %1312
  %1314 = extractvalue %dx.types.CBufRet.f32 %1301, 3
  %1315 = call float @dx.op.binary.f32(i32 36, float %1314, float %1313)  ; FMin(a,b)
  %1316 = fsub fast float %1315, %1300
  %1317 = call float @dx.op.unary.f32(i32 7, float %1316)  ; Saturate(value)
  %1318 = call float @dx.op.unary.f32(i32 7, float %1300)  ; Saturate(value)
  %1319 = extractvalue %dx.types.CBufRet.f32 %1301, 0
  %1320 = fmul fast float %1319, %1317
  %1321 = fptoui float %1320 to i32
  %1322 = uitofp i32 %1321 to float
  %1323 = fdiv fast float 1.000000e+00, %1322
  %1324 = icmp eq i32 %1321, 0
  br i1 %1324, label %1435, label %1325

; <label>:1325                                    ; preds = %1226
  %1326 = fmul fast float %1254, 0x3FA45F3060000000
  %1327 = fmul fast float %1298, 0x3FA45F3060000000
  br label %1328

; <label>:1328                                    ; preds = %1328, %1325
  %1329 = phi float [ %1426, %1328 ], [ %1294, %1325 ]
  %1330 = phi float [ %1427, %1328 ], [ %1295, %1325 ]
  %1331 = phi float [ %1428, %1328 ], [ %1296, %1325 ]
  %1332 = phi float [ %1429, %1328 ], [ 0x3F1A36E2E0000000, %1325 ]
  %1333 = phi float [ %1430, %1328 ], [ 0x3F1A36E2E0000000, %1325 ]
  %1334 = phi float [ %1431, %1328 ], [ 0x3F1A36E2E0000000, %1325 ]
  %1335 = phi i32 [ %1432, %1328 ], [ 0, %1325 ]
  %1336 = sitofp i32 %1335 to float
  %1337 = fadd fast float %1336, %1208
  %1338 = fmul fast float %1323, %1317
  %1339 = fmul fast float %1338, %1337
  %1340 = fsub fast float 1.000000e+00, %1318
  %1341 = fsub fast float %1340, %1339
  %1342 = fmul fast float %1341, 4.000000e+00
  %1343 = fmul fast float %1341, 2.000000e+00
  %1344 = fmul fast float %1341, %1341
  %1345 = fmul fast float %1344, 4.000000e+00
  %1346 = fadd fast float %1345, 1.000000e+00
  %1347 = call float @dx.op.unary.f32(i32 24, float %1346)  ; Sqrt(value)
  %1348 = fadd fast float %1343, %1347
  %1349 = fmul fast float %1342, %1348
  %1350 = fadd fast float %1349, 1.000000e+00
  %1351 = call float @dx.op.unary.f32(i32 23, float %1350)  ; Log(value)
  %1352 = fmul fast float %1351, 0xBFD5555560000000
  %1353 = call float @dx.op.unary.f32(i32 21, float %1352)  ; Exp(value)
  %1354 = fmul fast float %1353, %1353
  %1355 = fmul fast float %1354, %1350
  %1356 = fadd fast float %1353, 1.000000e+00
  %1357 = fadd fast float %1356, %1355
  %1358 = fdiv fast float 2.500000e-01, %1341
  %1359 = fmul fast float %1357, %1358
  %1360 = call float @dx.op.unary.f32(i32 23, float %1359)  ; Log(value)
  %1361 = fmul fast float %1360, 0x4000A2B240000000
  %1362 = fdiv fast float %1361, %1298
  %1363 = fmul fast float %1304, %1362
  %1364 = call float @dx.op.unary.f32(i32 21, float %1363)  ; Exp(value)
  %1365 = fmul fast float %1309, %1362
  %1366 = call float @dx.op.unary.f32(i32 21, float %1365)  ; Exp(value)
  %1367 = fadd fast float %1366, %1364
  %1368 = fmul fast float %1327, %1367
  %1369 = fdiv fast float %1317, %1368
  %1370 = fmul fast float %1336, 0x3FF9E377A0000000
  %1371 = call float @dx.op.unary.f32(i32 22, float %1370)  ; Frc(value)
  %1372 = fadd fast float %1371, %1208
  %1373 = fmul fast float %1372, 0x401921FB60000000
  %1374 = call float @dx.op.unary.f32(i32 13, float %1373)  ; Sin(value)
  %1375 = call float @dx.op.unary.f32(i32 12, float %1373)  ; Cos(value)
  %1376 = fmul fast float %1362, %1260
  %1377 = fmul fast float %1376, %1375
  %1378 = fmul fast float %1362, %1261
  %1379 = fmul fast float %1378, %1374
  %1380 = fadd fast float %1377, %1196
  %1381 = fadd fast float %1379, %1197
  %1382 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %24, float %1380, float %1381, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1383 = extractvalue %dx.types.ResRet.f32 %1382, 0
  %1384 = extractvalue %dx.types.ResRet.f32 %1382, 1
  %1385 = extractvalue %dx.types.ResRet.f32 %1382, 2
  %1386 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %24, float %1380, float %1381, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1387 = extractvalue %dx.types.ResRet.f32 %1386, 0
  %1388 = fcmp fast ogt float %1387, -1.000000e+00
  %1389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1390 = extractvalue %dx.types.CBufRet.f32 %1389, 1
  %1391 = select i1 %1388, float %1390, float 1.000000e+00
  %1392 = fadd fast float %1387, 1.000000e+00
  %1393 = fmul fast float %1391, %1392
  %1394 = call float @dx.op.unary.f32(i32 6, float %1393)  ; FAbs(value)
  %1395 = fsub fast float %72, %1394
  %1396 = fmul fast float %1362, %1362
  %1397 = fmul fast float %1395, %1395
  %1398 = fadd fast float %1397, %1396
  %1399 = call float @dx.op.unary.f32(i32 24, float %1398)  ; Sqrt(value)
  %1400 = fmul fast float %1264, %1399
  %1401 = call float @dx.op.unary.f32(i32 21, float %1400)  ; Exp(value)
  %1402 = fmul fast float %1269, %1399
  %1403 = call float @dx.op.unary.f32(i32 21, float %1402)  ; Exp(value)
  %1404 = fadd fast float %1403, %1401
  %1405 = fmul fast float %1274, %1399
  %1406 = call float @dx.op.unary.f32(i32 21, float %1405)  ; Exp(value)
  %1407 = fmul fast float %1279, %1399
  %1408 = call float @dx.op.unary.f32(i32 21, float %1407)  ; Exp(value)
  %1409 = fadd fast float %1408, %1406
  %1410 = fmul fast float %1284, %1399
  %1411 = call float @dx.op.unary.f32(i32 21, float %1410)  ; Exp(value)
  %1412 = fmul fast float %1289, %1399
  %1413 = call float @dx.op.unary.f32(i32 21, float %1412)  ; Exp(value)
  %1414 = fadd fast float %1413, %1411
  %1415 = fmul fast float %1252, 0x3FA45F3060000000
  %1416 = fmul fast float %1415, %1369
  %1417 = fmul fast float %1416, %1404
  %1418 = fmul fast float %1253, 0x3FA45F3060000000
  %1419 = fmul fast float %1418, %1369
  %1420 = fmul fast float %1419, %1409
  %1421 = fmul fast float %1326, %1369
  %1422 = fmul fast float %1421, %1414
  %1423 = fmul fast float %1417, %1383
  %1424 = fmul fast float %1420, %1384
  %1425 = fmul fast float %1422, %1385
  %1426 = fadd fast float %1423, %1329
  %1427 = fadd fast float %1424, %1330
  %1428 = fadd fast float %1425, %1331
  %1429 = fadd fast float %1417, %1332
  %1430 = fadd fast float %1420, %1333
  %1431 = fadd fast float %1422, %1334
  %1432 = add nuw nsw i32 %1335, 1
  %1433 = icmp eq i32 %1432, %1321
  br i1 %1433, label %1434, label %1328, !llvm.loop !103

; <label>:1434                                    ; preds = %1328
  br label %1435

; <label>:1435                                    ; preds = %1434, %1226
  %1436 = phi float [ %1294, %1226 ], [ %1426, %1434 ]
  %1437 = phi float [ %1295, %1226 ], [ %1427, %1434 ]
  %1438 = phi float [ %1296, %1226 ], [ %1428, %1434 ]
  %1439 = phi float [ 0x3F1A36E2E0000000, %1226 ], [ %1429, %1434 ]
  %1440 = phi float [ 0x3F1A36E2E0000000, %1226 ], [ %1430, %1434 ]
  %1441 = phi float [ 0x3F1A36E2E0000000, %1226 ], [ %1431, %1434 ]
  %1442 = fmul fast float %1273, %1214
  %1443 = fmul fast float %1283, %1215
  %1444 = fmul fast float %1293, %1216
  %1445 = fsub fast float 1.000000e+00, %1273
  %1446 = fsub fast float 1.000000e+00, %1283
  %1447 = fsub fast float 1.000000e+00, %1293
  %1448 = fdiv fast float %1436, %1439
  %1449 = fdiv fast float %1437, %1440
  %1450 = fdiv fast float %1438, %1441
  %1451 = fmul fast float %1448, %1445
  %1452 = fmul fast float %1449, %1446
  %1453 = fmul fast float %1450, %1447
  %1454 = fadd fast float %1451, %1442
  %1455 = fadd fast float %1452, %1443
  %1456 = fadd fast float %1453, %1444
  br label %1457

; <label>:1457                                    ; preds = %1435, %1180
  %1458 = phi float [ %1454, %1435 ], [ 0.000000e+00, %1180 ]
  %1459 = phi float [ %1455, %1435 ], [ 0.000000e+00, %1180 ]
  %1460 = phi float [ %1456, %1435 ], [ 0.000000e+00, %1180 ]
  %1461 = phi float [ %1218, %1435 ], [ 0.000000e+00, %1180 ]
  %1462 = phi float [ %1219, %1435 ], [ 0.000000e+00, %1180 ]
  %1463 = phi float [ %1220, %1435 ], [ 0.000000e+00, %1180 ]
  %1464 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1465 = extractvalue %dx.types.CBufRet.i32 %1464, 3
  %1466 = and i32 %1465, 3
  %1467 = icmp ne i32 %1466, 0
  %1468 = and i32 %1465, 4
  %1469 = icmp ne i32 %1468, 0
  %1470 = and i1 %1467, %1469
  br i1 %1470, label %1471, label %1478, !dx.controlflow.hints !105

; <label>:1471                                    ; preds = %1457
  %1472 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %24, float %1196, float %1197, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1473 = extractvalue %dx.types.ResRet.f32 %1472, 0
  %1474 = fsub fast float 1.000000e+00, %1473
  %1475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1476 = extractvalue %dx.types.CBufRet.f32 %1475, 0
  %1477 = fcmp fast olt float %1474, %1476
  br label %1481

; <label>:1478                                    ; preds = %1457
  %1479 = icmp eq i32 %1468, 0
  %1480 = and i1 %1467, %1479
  br label %1481

; <label>:1481                                    ; preds = %1478, %1471
  %1482 = phi i1 [ %1477, %1471 ], [ %1480, %1478 ]
  %1483 = select i1 %1482, float 0.000000e+00, float %1462
  %1484 = select i1 %1482, float 0.000000e+00, float %1463
  %1485 = fmul fast float %1461, %1458
  %1486 = fmul fast float %1483, %1459
  %1487 = fmul fast float %1484, %1460
  %1488 = fadd fast float %1485, %1210
  %1489 = fadd fast float %1486, %1211
  %1490 = fadd fast float %1487, %1212
  %1491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1492 = extractvalue %dx.types.CBufRet.f32 %1491, 0
  br i1 %1482, label %1493, label %1512, !dx.controlflow.hints !106

; <label>:1493                                    ; preds = %1481
  %1494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1495 = extractvalue %dx.types.CBufRet.f32 %1494, 3
  %1496 = call float @dx.op.dot3.f32(i32 55, float %1187, float %1188, float %1189, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1497 = fmul fast float %1496, %1488
  %1498 = call float @dx.op.dot3.f32(i32 55, float %1193, float %1194, float %1195, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1499 = fmul fast float %1492, %1498
  %1500 = fadd fast float %1499, %1497
  br i1 %1470, label %1501, label %1507, !dx.controlflow.hints !107

; <label>:1501                                    ; preds = %1493
  %1502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1503 = extractvalue %dx.types.CBufRet.f32 %1502, 1
  %1504 = fadd fast float %1187, -1.000000e+00
  %1505 = fmul fast float %1503, %1504
  %1506 = fadd fast float %1505, 1.000000e+00
  br label %1507

; <label>:1507                                    ; preds = %1501, %1493
  %1508 = phi float [ %1506, %1501 ], [ %1187, %1493 ]
  %1509 = fsub fast float %1489, %1495
  %1510 = fmul fast float %1508, %1509
  %1511 = fadd fast float %1510, %1495
  br label %1522

; <label>:1512                                    ; preds = %1481
  %1513 = fmul fast float %1488, %1187
  %1514 = fmul fast float %1489, %1188
  %1515 = fmul fast float %1490, %1189
  %1516 = fmul fast float %1492, %1193
  %1517 = fmul fast float %1492, %1194
  %1518 = fmul fast float %1492, %1195
  %1519 = fadd fast float %1516, %1513
  %1520 = fadd fast float %1517, %1514
  %1521 = fadd fast float %1518, %1515
  br label %1522

; <label>:1522                                    ; preds = %1512, %1507
  %1523 = phi float [ %1500, %1507 ], [ %1519, %1512 ]
  %1524 = phi float [ %1511, %1507 ], [ %1520, %1512 ]
  %1525 = phi float [ %1490, %1507 ], [ %1521, %1512 ]
  %1526 = lshr i32 %48, 2
  %1527 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1528 = extractvalue %dx.types.CBufRet.i32 %1527, 1
  %1529 = shl i32 %1528, 1
  %1530 = lshr i32 %49, 4
  %1531 = and i32 %1530, 134217727
  %1532 = extractvalue %dx.types.CBufRet.i32 %1527, 0
  %1533 = mul i32 %1532, %1531
  %1534 = lshr i32 %48, 5
  %1535 = and i32 %1534, 67108863
  %1536 = add i32 %1529, %1535
  %1537 = add i32 %1536, %1533
  %1538 = shl i32 %1537, 2
  %1539 = and i32 %51, 24
  %1540 = and i32 %1526, 7
  %1541 = or i32 %1539, %1540
  %1542 = shl i32 1, %1541
  %1543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1538, i32 undef)  ; BufferLoad(srv,index,wot)
  %1544 = extractvalue %dx.types.ResRet.i32 %1543, 0
  %1545 = and i32 %1544, %1542
  %1546 = icmp eq i32 %1545, 0
  br i1 %1546, label %1562, label %1547, !dx.controlflow.hints !108

; <label>:1547                                    ; preds = %1522
  %1548 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %50, i32 %51, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1549 = extractvalue %dx.types.ResRet.f32 %1548, 0
  %1550 = fcmp fast ogt float %1549, 0.000000e+00
  br i1 %1550, label %1551, label %1562, !dx.controlflow.hints !109

; <label>:1551                                    ; preds = %1547
  %1552 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %50, i32 %51, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1553 = extractvalue %dx.types.ResRet.f32 %1552, 0
  %1554 = extractvalue %dx.types.ResRet.f32 %1552, 1
  %1555 = extractvalue %dx.types.ResRet.f32 %1552, 2
  %1556 = extractvalue %dx.types.ResRet.f32 %1552, 3
  %1557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %1558 = extractvalue %dx.types.CBufRet.f32 %1557, 2
  %1559 = fmul fast float %1558, %1553
  %1560 = fmul fast float %1558, %1554
  %1561 = fmul fast float %1558, %1555
  br label %1562

; <label>:1562                                    ; preds = %1551, %1547, %1522
  %1563 = phi float [ %1559, %1551 ], [ 0.000000e+00, %1547 ], [ 0.000000e+00, %1522 ]
  %1564 = phi float [ %1560, %1551 ], [ 0.000000e+00, %1547 ], [ 0.000000e+00, %1522 ]
  %1565 = phi float [ %1561, %1551 ], [ 0.000000e+00, %1547 ], [ 0.000000e+00, %1522 ]
  %1566 = phi float [ %1556, %1551 ], [ 0.000000e+00, %1547 ], [ 0.000000e+00, %1522 ]
  %1567 = fsub fast float 1.000000e+00, %1566
  %1568 = fmul fast float %1567, %1523
  %1569 = fmul fast float %1567, %1524
  %1570 = fmul fast float %1567, %1525
  %1571 = fadd fast float %1568, %1563
  %1572 = fadd fast float %1569, %1564
  %1573 = fadd fast float %1570, %1565
  %1574 = fadd fast float %1208, 0x3FE3C6EF40000000
  %1575 = call float @dx.op.unary.f32(i32 22, float %1574)  ; Frc(value)
  %1576 = call float @dx.op.unary.f32(i32 23, float %1571)  ; Log(value)
  %1577 = fadd fast float %1576, -7.000000e+00
  %1578 = call float @dx.op.unary.f32(i32 21, float %1577)  ; Exp(value)
  %1579 = fmul fast float %1575, 2.000000e+00
  %1580 = fadd fast float %1579, -1.000000e+00
  %1581 = fmul fast float %1578, %1580
  %1582 = fcmp fast ogt float %1571, 0.000000e+00
  %1583 = select i1 %1582, float %1581, float 0.000000e+00
  %1584 = fadd fast float %1583, %1571
  %1585 = fadd fast float %1208, 0x3FF3C6EF40000000
  %1586 = call float @dx.op.unary.f32(i32 22, float %1585)  ; Frc(value)
  %1587 = call float @dx.op.unary.f32(i32 23, float %1572)  ; Log(value)
  %1588 = fadd fast float %1587, -7.000000e+00
  %1589 = call float @dx.op.unary.f32(i32 21, float %1588)  ; Exp(value)
  %1590 = fmul fast float %1586, 2.000000e+00
  %1591 = fadd fast float %1590, -1.000000e+00
  %1592 = fmul fast float %1589, %1591
  %1593 = fcmp fast ogt float %1572, 0.000000e+00
  %1594 = select i1 %1593, float %1592, float 0.000000e+00
  %1595 = fadd fast float %1594, %1572
  %1596 = fadd fast float %1208, 0x3FFDAA66E0000000
  %1597 = call float @dx.op.unary.f32(i32 22, float %1596)  ; Frc(value)
  %1598 = call float @dx.op.unary.f32(i32 23, float %1573)  ; Log(value)
  %1599 = fadd fast float %1598, -6.000000e+00
  %1600 = call float @dx.op.unary.f32(i32 21, float %1599)  ; Exp(value)
  %1601 = fmul fast float %1597, 2.000000e+00
  %1602 = fadd fast float %1601, -1.000000e+00
  %1603 = fmul fast float %1600, %1602
  %1604 = fcmp fast ogt float %1573, 0.000000e+00
  %1605 = select i1 %1604, float %1603, float 0.000000e+00
  %1606 = fadd fast float %1605, %1573
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %50, i32 %51, i32 undef, float %1584, float %1595, float %1606, float %1584, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1607 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1608 = extractvalue %dx.types.CBufRet.i32 %1607, 0
  %1609 = and i32 %1608, 1
  %1610 = icmp eq i32 %1609, 0
  br i1 %1610, label %1614, label %1611, !dx.controlflow.hints !110

; <label>:1611                                    ; preds = %1562
  %1612 = and i32 %48, 2147483647
  %1613 = and i32 %49, 2147483647
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1612, i32 %1613, i32 undef, float %1488, float %1489, float %1490, float %1488, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1614

; <label>:1614                                    ; preds = %1611, %1562
  br label %1615

; <label>:1615                                    ; preds = %1638, %1614
  %1616 = phi float [ %1639, %1638 ], [ %1571, %1614 ]
  %1617 = phi float [ %1640, %1638 ], [ %1572, %1614 ]
  %1618 = phi float [ %1641, %1638 ], [ %1573, %1614 ]
  %1619 = phi float [ %1642, %1638 ], [ 1.000000e+00, %1614 ]
  %1620 = phi i32 [ %1625, %1638 ], [ 14, %1614 ]
  %1621 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1620)  ; FirstbitLo(value)
  %1622 = and i32 %1621, 31
  %1623 = shl i32 1, %1622
  %1624 = xor i32 %1623, -1
  %1625 = and i32 %1620, %1624
  %1626 = and i32 %1621, 1
  %1627 = lshr i32 %1621, 1
  %1628 = or i32 %1626, %50
  %1629 = add i32 %1627, %51
  %1630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1631 = extractvalue %dx.types.CBufRet.f32 %1630, 0
  %1632 = fptoui float %1631 to i32
  %1633 = icmp uge i32 %1628, %1632
  %1634 = extractvalue %dx.types.CBufRet.f32 %1630, 1
  %1635 = fptoui float %1634 to i32
  %1636 = icmp uge i32 %1629, %1635
  %1637 = or i1 %1633, %1636
  br i1 %1637, label %1638, label %1644, !dx.controlflow.hints !111

; <label>:1638                                    ; preds = %2070, %1615
  %1639 = phi float [ %1616, %1615 ], [ %2071, %2070 ]
  %1640 = phi float [ %1617, %1615 ], [ %2072, %2070 ]
  %1641 = phi float [ %1618, %1615 ], [ %2073, %2070 ]
  %1642 = phi float [ %1619, %1615 ], [ %2074, %2070 ]
  %1643 = icmp eq i32 %1625, 0
  br i1 %1643, label %2075, label %1615

; <label>:1644                                    ; preds = %1615
  %1645 = uitofp i32 %1628 to float
  %1646 = uitofp i32 %1629 to float
  %1647 = fadd fast float %1645, 5.000000e-01
  %1648 = fadd fast float %1646, 5.000000e-01
  %1649 = extractvalue %dx.types.CBufRet.f32 %1630, 2
  %1650 = extractvalue %dx.types.CBufRet.f32 %1630, 3
  %1651 = fmul fast float %1649, %1647
  %1652 = fmul fast float %1650, %1648
  %1653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1654 = extractvalue %dx.types.CBufRet.f32 %1653, 2
  %1655 = fmul fast float %1654, 0x3FE3C6EF40000000
  %1656 = frem fast float %1645, 2.560000e+02
  %1657 = frem fast float %1646, 2.560000e+02
  %1658 = fptoui float %1656 to i32
  %1659 = fptoui float %1657 to i32
  %1660 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1658, i32 %1659, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1661 = extractvalue %dx.types.ResRet.f32 %1660, 0
  %1662 = fadd fast float %1661, %1655
  %1663 = call float @dx.op.unary.f32(i32 22, float %1662)  ; Frc(value)
  %1664 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %1628, i32 %1629, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1665 = extractvalue %dx.types.ResRet.f32 %1664, 0
  %1666 = extractvalue %dx.types.ResRet.f32 %1664, 1
  %1667 = extractvalue %dx.types.ResRet.f32 %1664, 2
  %1668 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %1628, i32 %1629, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1669 = extractvalue %dx.types.ResRet.f32 %1668, 0
  %1670 = extractvalue %dx.types.ResRet.f32 %1668, 1
  %1671 = extractvalue %dx.types.ResRet.f32 %1668, 2
  %1672 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %1628, i32 %1629, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1673 = extractvalue %dx.types.ResRet.f32 %1672, 0
  %1674 = extractvalue %dx.types.ResRet.f32 %1672, 1
  %1675 = extractvalue %dx.types.ResRet.f32 %1672, 2
  %1676 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %1628, i32 %1629, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1677 = extractvalue %dx.types.ResRet.f32 %1676, 0
  %1678 = extractvalue %dx.types.ResRet.f32 %1676, 1
  %1679 = call float @dx.op.binary.f32(i32 35, float %1677, float %1678)  ; FMax(a,b)
  %1680 = fcmp fast ult float %1679, 0x3F70101020000000
  br i1 %1680, label %1914, label %1681, !dx.controlflow.hints !112

; <label>:1681                                    ; preds = %1644
  %1682 = fmul fast float %1678, 2.000000e+00
  %1683 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1682)  ; FMax(a,b)
  %1684 = fmul fast float %1677, 2.000000e+00
  %1685 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1684)  ; FMax(a,b)
  %1686 = extractvalue %dx.types.ResRet.f32 %1672, 3
  %1687 = fmul fast float %1686, 2.000000e+00
  %1688 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1687)  ; FMax(a,b)
  %1689 = fmul fast float %1675, %1675
  %1690 = fmul fast float %1674, %1674
  %1691 = fmul fast float %1673, %1673
  %1692 = getelementptr [4 x float], [4 x float]* %35, i32 0, i32 %1621
  %1693 = load float, float* %1692, align 4, !tbaa !53, !noalias !113
  %1694 = fadd fast float %1691, 0xBFD51EB860000000
  %1695 = fadd fast float %1690, 0xBFD51EB860000000
  %1696 = fadd fast float %1689, 0xBFD51EB860000000
  %1697 = fmul fast float %1694, %1694
  %1698 = fmul fast float %1695, %1695
  %1699 = fmul fast float %1696, %1696
  %1700 = fmul fast float %1697, %1697
  %1701 = fmul fast float %1700, 1.000000e+02
  %1702 = fmul fast float %1698, %1698
  %1703 = fmul fast float %1702, 1.000000e+02
  %1704 = fmul fast float %1699, %1699
  %1705 = fmul fast float %1704, 1.000000e+02
  %1706 = fadd fast float %1701, 3.500000e+00
  %1707 = fadd fast float %1703, 3.500000e+00
  %1708 = fadd fast float %1705, 3.500000e+00
  %1709 = fdiv fast float %1706, %1688
  %1710 = fdiv fast float %1707, %1685
  %1711 = fdiv fast float %1708, %1683
  %1712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1713 = extractvalue %dx.types.CBufRet.f32 %1712, 0
  %1714 = extractvalue %dx.types.CBufRet.f32 %1712, 1
  %1715 = fmul fast float %1713, %1693
  %1716 = fmul fast float %1714, %1693
  %1717 = fdiv fast float 1.000000e+00, %1715
  %1718 = fdiv fast float 1.000000e+00, %1716
  %1719 = fmul fast float %1649, 5.000000e-01
  %1720 = fmul fast float %1719, %1715
  %1721 = fmul fast float %1709, 0xBFF7154760000000
  %1722 = fmul fast float %1721, %1720
  %1723 = call float @dx.op.unary.f32(i32 21, float %1722)  ; Exp(value)
  %1724 = fmul fast float %1723, 2.500000e-01
  %1725 = fsub fast float 1.000000e+00, %1724
  %1726 = fmul fast float %1709, 0xBFDEC709E0000000
  %1727 = fmul fast float %1726, %1720
  %1728 = call float @dx.op.unary.f32(i32 21, float %1727)  ; Exp(value)
  %1729 = fmul fast float %1728, 7.500000e-01
  %1730 = fsub fast float %1725, %1729
  %1731 = fmul fast float %1710, 0xBFF7154760000000
  %1732 = fmul fast float %1731, %1720
  %1733 = call float @dx.op.unary.f32(i32 21, float %1732)  ; Exp(value)
  %1734 = fmul fast float %1733, 2.500000e-01
  %1735 = fsub fast float 1.000000e+00, %1734
  %1736 = fmul fast float %1710, 0xBFDEC709E0000000
  %1737 = fmul fast float %1736, %1720
  %1738 = call float @dx.op.unary.f32(i32 21, float %1737)  ; Exp(value)
  %1739 = fmul fast float %1738, 7.500000e-01
  %1740 = fsub fast float %1735, %1739
  %1741 = fmul fast float %1711, 0xBFF7154760000000
  %1742 = fmul fast float %1741, %1720
  %1743 = call float @dx.op.unary.f32(i32 21, float %1742)  ; Exp(value)
  %1744 = fmul fast float %1743, 2.500000e-01
  %1745 = fsub fast float 1.000000e+00, %1744
  %1746 = fmul fast float %1711, 0xBFDEC709E0000000
  %1747 = fmul fast float %1746, %1720
  %1748 = call float @dx.op.unary.f32(i32 21, float %1747)  ; Exp(value)
  %1749 = fmul fast float %1748, 7.500000e-01
  %1750 = fsub fast float %1745, %1749
  %1751 = fmul fast float %1669, 0x3F1A36E2E0000000
  %1752 = fmul fast float %1670, 0x3F1A36E2E0000000
  %1753 = fmul fast float %1671, 0x3F1A36E2E0000000
  %1754 = call float @dx.op.binary.f32(i32 36, float %1710, float %1711)  ; FMin(a,b)
  %1755 = call float @dx.op.binary.f32(i32 36, float %1709, float %1754)  ; FMin(a,b)
  %1756 = call float @dx.op.binary.f32(i32 36, float %1740, float %1750)  ; FMin(a,b)
  %1757 = call float @dx.op.binary.f32(i32 36, float %1730, float %1756)  ; FMin(a,b)
  %1758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1759 = extractvalue %dx.types.CBufRet.f32 %1758, 2
  %1760 = fmul fast float %1759, %1715
  %1761 = fmul fast float %1755, 0xBFF7154760000000
  %1762 = fmul fast float %1761, %1760
  %1763 = call float @dx.op.unary.f32(i32 21, float %1762)  ; Exp(value)
  %1764 = fmul fast float %1763, 2.500000e-01
  %1765 = fsub fast float 1.000000e+00, %1764
  %1766 = fmul fast float %1755, 0xBFDEC709E0000000
  %1767 = fmul fast float %1766, %1760
  %1768 = call float @dx.op.unary.f32(i32 21, float %1767)  ; Exp(value)
  %1769 = fmul fast float %1768, 7.500000e-01
  %1770 = fsub fast float %1765, %1769
  %1771 = extractvalue %dx.types.CBufRet.f32 %1758, 3
  %1772 = call float @dx.op.binary.f32(i32 36, float %1771, float %1770)  ; FMin(a,b)
  %1773 = fsub fast float %1772, %1757
  %1774 = call float @dx.op.unary.f32(i32 7, float %1773)  ; Saturate(value)
  %1775 = call float @dx.op.unary.f32(i32 7, float %1757)  ; Saturate(value)
  %1776 = extractvalue %dx.types.CBufRet.f32 %1758, 0
  %1777 = fmul fast float %1776, %1774
  %1778 = fptoui float %1777 to i32
  %1779 = uitofp i32 %1778 to float
  %1780 = fdiv fast float 1.000000e+00, %1779
  %1781 = icmp eq i32 %1778, 0
  br i1 %1781, label %1892, label %1782

; <label>:1782                                    ; preds = %1681
  %1783 = fmul fast float %1711, 0x3FA45F3060000000
  %1784 = fmul fast float %1755, 0x3FA45F3060000000
  br label %1785

; <label>:1785                                    ; preds = %1785, %1782
  %1786 = phi float [ %1883, %1785 ], [ %1751, %1782 ]
  %1787 = phi float [ %1884, %1785 ], [ %1752, %1782 ]
  %1788 = phi float [ %1885, %1785 ], [ %1753, %1782 ]
  %1789 = phi float [ %1886, %1785 ], [ 0x3F1A36E2E0000000, %1782 ]
  %1790 = phi float [ %1887, %1785 ], [ 0x3F1A36E2E0000000, %1782 ]
  %1791 = phi float [ %1888, %1785 ], [ 0x3F1A36E2E0000000, %1782 ]
  %1792 = phi i32 [ %1889, %1785 ], [ 0, %1782 ]
  %1793 = sitofp i32 %1792 to float
  %1794 = fadd fast float %1793, %1663
  %1795 = fmul fast float %1780, %1774
  %1796 = fmul fast float %1795, %1794
  %1797 = fsub fast float 1.000000e+00, %1775
  %1798 = fsub fast float %1797, %1796
  %1799 = fmul fast float %1798, 4.000000e+00
  %1800 = fmul fast float %1798, 2.000000e+00
  %1801 = fmul fast float %1798, %1798
  %1802 = fmul fast float %1801, 4.000000e+00
  %1803 = fadd fast float %1802, 1.000000e+00
  %1804 = call float @dx.op.unary.f32(i32 24, float %1803)  ; Sqrt(value)
  %1805 = fadd fast float %1800, %1804
  %1806 = fmul fast float %1799, %1805
  %1807 = fadd fast float %1806, 1.000000e+00
  %1808 = call float @dx.op.unary.f32(i32 23, float %1807)  ; Log(value)
  %1809 = fmul fast float %1808, 0xBFD5555560000000
  %1810 = call float @dx.op.unary.f32(i32 21, float %1809)  ; Exp(value)
  %1811 = fmul fast float %1810, %1810
  %1812 = fmul fast float %1811, %1807
  %1813 = fadd fast float %1810, 1.000000e+00
  %1814 = fadd fast float %1813, %1812
  %1815 = fdiv fast float 2.500000e-01, %1798
  %1816 = fmul fast float %1814, %1815
  %1817 = call float @dx.op.unary.f32(i32 23, float %1816)  ; Log(value)
  %1818 = fmul fast float %1817, 0x4000A2B240000000
  %1819 = fdiv fast float %1818, %1755
  %1820 = fmul fast float %1761, %1819
  %1821 = call float @dx.op.unary.f32(i32 21, float %1820)  ; Exp(value)
  %1822 = fmul fast float %1766, %1819
  %1823 = call float @dx.op.unary.f32(i32 21, float %1822)  ; Exp(value)
  %1824 = fadd fast float %1823, %1821
  %1825 = fmul fast float %1784, %1824
  %1826 = fdiv fast float %1774, %1825
  %1827 = fmul fast float %1793, 0x3FF9E377A0000000
  %1828 = call float @dx.op.unary.f32(i32 22, float %1827)  ; Frc(value)
  %1829 = fadd fast float %1828, %1663
  %1830 = fmul fast float %1829, 0x401921FB60000000
  %1831 = call float @dx.op.unary.f32(i32 13, float %1830)  ; Sin(value)
  %1832 = call float @dx.op.unary.f32(i32 12, float %1830)  ; Cos(value)
  %1833 = fmul fast float %1819, %1717
  %1834 = fmul fast float %1833, %1832
  %1835 = fmul fast float %1819, %1718
  %1836 = fmul fast float %1835, %1831
  %1837 = fadd fast float %1834, %1651
  %1838 = fadd fast float %1836, %1652
  %1839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %24, float %1837, float %1838, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1840 = extractvalue %dx.types.ResRet.f32 %1839, 0
  %1841 = extractvalue %dx.types.ResRet.f32 %1839, 1
  %1842 = extractvalue %dx.types.ResRet.f32 %1839, 2
  %1843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %24, float %1837, float %1838, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1844 = extractvalue %dx.types.ResRet.f32 %1843, 0
  %1845 = fcmp fast ogt float %1844, -1.000000e+00
  %1846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1847 = extractvalue %dx.types.CBufRet.f32 %1846, 1
  %1848 = select i1 %1845, float %1847, float 1.000000e+00
  %1849 = fadd fast float %1844, 1.000000e+00
  %1850 = fmul fast float %1848, %1849
  %1851 = call float @dx.op.unary.f32(i32 6, float %1850)  ; FAbs(value)
  %1852 = fsub fast float %1693, %1851
  %1853 = fmul fast float %1819, %1819
  %1854 = fmul fast float %1852, %1852
  %1855 = fadd fast float %1854, %1853
  %1856 = call float @dx.op.unary.f32(i32 24, float %1855)  ; Sqrt(value)
  %1857 = fmul fast float %1721, %1856
  %1858 = call float @dx.op.unary.f32(i32 21, float %1857)  ; Exp(value)
  %1859 = fmul fast float %1726, %1856
  %1860 = call float @dx.op.unary.f32(i32 21, float %1859)  ; Exp(value)
  %1861 = fadd fast float %1860, %1858
  %1862 = fmul fast float %1731, %1856
  %1863 = call float @dx.op.unary.f32(i32 21, float %1862)  ; Exp(value)
  %1864 = fmul fast float %1736, %1856
  %1865 = call float @dx.op.unary.f32(i32 21, float %1864)  ; Exp(value)
  %1866 = fadd fast float %1865, %1863
  %1867 = fmul fast float %1741, %1856
  %1868 = call float @dx.op.unary.f32(i32 21, float %1867)  ; Exp(value)
  %1869 = fmul fast float %1746, %1856
  %1870 = call float @dx.op.unary.f32(i32 21, float %1869)  ; Exp(value)
  %1871 = fadd fast float %1870, %1868
  %1872 = fmul fast float %1709, 0x3FA45F3060000000
  %1873 = fmul fast float %1872, %1826
  %1874 = fmul fast float %1873, %1861
  %1875 = fmul fast float %1710, 0x3FA45F3060000000
  %1876 = fmul fast float %1875, %1826
  %1877 = fmul fast float %1876, %1866
  %1878 = fmul fast float %1783, %1826
  %1879 = fmul fast float %1878, %1871
  %1880 = fmul fast float %1874, %1840
  %1881 = fmul fast float %1877, %1841
  %1882 = fmul fast float %1879, %1842
  %1883 = fadd fast float %1880, %1786
  %1884 = fadd fast float %1881, %1787
  %1885 = fadd fast float %1882, %1788
  %1886 = fadd fast float %1874, %1789
  %1887 = fadd fast float %1877, %1790
  %1888 = fadd fast float %1879, %1791
  %1889 = add nuw nsw i32 %1792, 1
  %1890 = icmp eq i32 %1889, %1778
  br i1 %1890, label %1891, label %1785, !llvm.loop !103

; <label>:1891                                    ; preds = %1785
  br label %1892

; <label>:1892                                    ; preds = %1891, %1681
  %1893 = phi float [ %1751, %1681 ], [ %1883, %1891 ]
  %1894 = phi float [ %1752, %1681 ], [ %1884, %1891 ]
  %1895 = phi float [ %1753, %1681 ], [ %1885, %1891 ]
  %1896 = phi float [ 0x3F1A36E2E0000000, %1681 ], [ %1886, %1891 ]
  %1897 = phi float [ 0x3F1A36E2E0000000, %1681 ], [ %1887, %1891 ]
  %1898 = phi float [ 0x3F1A36E2E0000000, %1681 ], [ %1888, %1891 ]
  %1899 = fmul fast float %1730, %1669
  %1900 = fmul fast float %1740, %1670
  %1901 = fmul fast float %1750, %1671
  %1902 = fsub fast float 1.000000e+00, %1730
  %1903 = fsub fast float 1.000000e+00, %1740
  %1904 = fsub fast float 1.000000e+00, %1750
  %1905 = fdiv fast float %1893, %1896
  %1906 = fdiv fast float %1894, %1897
  %1907 = fdiv fast float %1895, %1898
  %1908 = fmul fast float %1905, %1902
  %1909 = fmul fast float %1906, %1903
  %1910 = fmul fast float %1907, %1904
  %1911 = fadd fast float %1908, %1899
  %1912 = fadd fast float %1909, %1900
  %1913 = fadd fast float %1910, %1901
  br label %1914

; <label>:1914                                    ; preds = %1892, %1644
  %1915 = phi float [ %1911, %1892 ], [ 0.000000e+00, %1644 ]
  %1916 = phi float [ %1912, %1892 ], [ 0.000000e+00, %1644 ]
  %1917 = phi float [ %1913, %1892 ], [ 0.000000e+00, %1644 ]
  %1918 = phi float [ %1673, %1892 ], [ 0.000000e+00, %1644 ]
  %1919 = phi float [ %1674, %1892 ], [ 0.000000e+00, %1644 ]
  %1920 = phi float [ %1675, %1892 ], [ 0.000000e+00, %1644 ]
  %1921 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1922 = extractvalue %dx.types.CBufRet.i32 %1921, 3
  %1923 = and i32 %1922, 3
  %1924 = icmp ne i32 %1923, 0
  %1925 = and i32 %1922, 4
  %1926 = icmp ne i32 %1925, 0
  %1927 = and i1 %1924, %1926
  br i1 %1927, label %1928, label %1935, !dx.controlflow.hints !105

; <label>:1928                                    ; preds = %1914
  %1929 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %24, float %1651, float %1652, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1930 = extractvalue %dx.types.ResRet.f32 %1929, 0
  %1931 = fsub fast float 1.000000e+00, %1930
  %1932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1933 = extractvalue %dx.types.CBufRet.f32 %1932, 0
  %1934 = fcmp fast olt float %1931, %1933
  br label %1938

; <label>:1935                                    ; preds = %1914
  %1936 = icmp eq i32 %1925, 0
  %1937 = and i1 %1924, %1936
  br label %1938

; <label>:1938                                    ; preds = %1935, %1928
  %1939 = phi i1 [ %1934, %1928 ], [ %1937, %1935 ]
  %1940 = select i1 %1939, float 0.000000e+00, float %1919
  %1941 = select i1 %1939, float 0.000000e+00, float %1920
  %1942 = fmul fast float %1918, %1915
  %1943 = fmul fast float %1940, %1916
  %1944 = fmul fast float %1941, %1917
  %1945 = fadd fast float %1942, %1665
  %1946 = fadd fast float %1943, %1666
  %1947 = fadd fast float %1944, %1667
  %1948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1949 = extractvalue %dx.types.CBufRet.f32 %1948, 0
  br i1 %1939, label %1950, label %1969, !dx.controlflow.hints !106

; <label>:1950                                    ; preds = %1938
  %1951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1952 = extractvalue %dx.types.CBufRet.f32 %1951, 3
  %1953 = call float @dx.op.dot3.f32(i32 55, float %1187, float %1188, float %1189, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1954 = fmul fast float %1953, %1945
  %1955 = call float @dx.op.dot3.f32(i32 55, float %1193, float %1194, float %1195, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1956 = fmul fast float %1949, %1955
  %1957 = fadd fast float %1956, %1954
  br i1 %1927, label %1958, label %1964, !dx.controlflow.hints !107

; <label>:1958                                    ; preds = %1950
  %1959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1960 = extractvalue %dx.types.CBufRet.f32 %1959, 1
  %1961 = fadd fast float %1187, -1.000000e+00
  %1962 = fmul fast float %1960, %1961
  %1963 = fadd fast float %1962, 1.000000e+00
  br label %1964

; <label>:1964                                    ; preds = %1958, %1950
  %1965 = phi float [ %1963, %1958 ], [ %1187, %1950 ]
  %1966 = fsub fast float %1946, %1952
  %1967 = fmul fast float %1965, %1966
  %1968 = fadd fast float %1967, %1952
  br label %1979

; <label>:1969                                    ; preds = %1938
  %1970 = fmul fast float %1945, %1187
  %1971 = fmul fast float %1946, %1188
  %1972 = fmul fast float %1947, %1189
  %1973 = fmul fast float %1949, %1193
  %1974 = fmul fast float %1949, %1194
  %1975 = fmul fast float %1949, %1195
  %1976 = fadd fast float %1973, %1970
  %1977 = fadd fast float %1974, %1971
  %1978 = fadd fast float %1975, %1972
  br label %1979

; <label>:1979                                    ; preds = %1969, %1964
  %1980 = phi float [ %1957, %1964 ], [ %1976, %1969 ]
  %1981 = phi float [ %1968, %1964 ], [ %1977, %1969 ]
  %1982 = phi float [ %1947, %1964 ], [ %1978, %1969 ]
  %1983 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1984 = extractvalue %dx.types.CBufRet.i32 %1983, 1
  %1985 = shl i32 %1984, 1
  %1986 = lshr i32 %1629, 5
  %1987 = extractvalue %dx.types.CBufRet.i32 %1983, 0
  %1988 = mul i32 %1987, %1986
  %1989 = add i32 %1985, %1535
  %1990 = add i32 %1989, %1988
  %1991 = shl i32 %1990, 2
  %1992 = and i32 %1629, 24
  %1993 = or i32 %1992, %1540
  %1994 = shl i32 1, %1993
  %1995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1991, i32 undef)  ; BufferLoad(srv,index,wot)
  %1996 = extractvalue %dx.types.ResRet.i32 %1995, 0
  %1997 = and i32 %1996, %1994
  %1998 = icmp eq i32 %1997, 0
  br i1 %1998, label %2014, label %1999, !dx.controlflow.hints !108

; <label>:1999                                    ; preds = %1979
  %2000 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %1628, i32 %1629, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2001 = extractvalue %dx.types.ResRet.f32 %2000, 0
  %2002 = fcmp fast ogt float %2001, 0.000000e+00
  br i1 %2002, label %2003, label %2014, !dx.controlflow.hints !109

; <label>:2003                                    ; preds = %1999
  %2004 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %1628, i32 %1629, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2005 = extractvalue %dx.types.ResRet.f32 %2004, 0
  %2006 = extractvalue %dx.types.ResRet.f32 %2004, 1
  %2007 = extractvalue %dx.types.ResRet.f32 %2004, 2
  %2008 = extractvalue %dx.types.ResRet.f32 %2004, 3
  %2009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %2010 = extractvalue %dx.types.CBufRet.f32 %2009, 2
  %2011 = fmul fast float %2010, %2005
  %2012 = fmul fast float %2010, %2006
  %2013 = fmul fast float %2010, %2007
  br label %2014

; <label>:2014                                    ; preds = %2003, %1999, %1979
  %2015 = phi float [ %2011, %2003 ], [ 0.000000e+00, %1999 ], [ 0.000000e+00, %1979 ]
  %2016 = phi float [ %2012, %2003 ], [ 0.000000e+00, %1999 ], [ 0.000000e+00, %1979 ]
  %2017 = phi float [ %2013, %2003 ], [ 0.000000e+00, %1999 ], [ 0.000000e+00, %1979 ]
  %2018 = phi float [ %2008, %2003 ], [ 0.000000e+00, %1999 ], [ 0.000000e+00, %1979 ]
  %2019 = fsub fast float 1.000000e+00, %2018
  %2020 = fmul fast float %2019, %1980
  %2021 = fmul fast float %2019, %1981
  %2022 = fmul fast float %2019, %1982
  %2023 = fadd fast float %2020, %2015
  %2024 = fadd fast float %2021, %2016
  %2025 = fadd fast float %2022, %2017
  %2026 = fadd fast float %1663, 0x3FE3C6EF40000000
  %2027 = call float @dx.op.unary.f32(i32 22, float %2026)  ; Frc(value)
  %2028 = call float @dx.op.unary.f32(i32 23, float %2023)  ; Log(value)
  %2029 = fadd fast float %2028, -7.000000e+00
  %2030 = call float @dx.op.unary.f32(i32 21, float %2029)  ; Exp(value)
  %2031 = fmul fast float %2027, 2.000000e+00
  %2032 = fadd fast float %2031, -1.000000e+00
  %2033 = fmul fast float %2030, %2032
  %2034 = fcmp fast ogt float %2023, 0.000000e+00
  %2035 = select i1 %2034, float %2033, float 0.000000e+00
  %2036 = fadd fast float %2035, %2023
  %2037 = fadd fast float %1663, 0x3FF3C6EF40000000
  %2038 = call float @dx.op.unary.f32(i32 22, float %2037)  ; Frc(value)
  %2039 = call float @dx.op.unary.f32(i32 23, float %2024)  ; Log(value)
  %2040 = fadd fast float %2039, -7.000000e+00
  %2041 = call float @dx.op.unary.f32(i32 21, float %2040)  ; Exp(value)
  %2042 = fmul fast float %2038, 2.000000e+00
  %2043 = fadd fast float %2042, -1.000000e+00
  %2044 = fmul fast float %2041, %2043
  %2045 = fcmp fast ogt float %2024, 0.000000e+00
  %2046 = select i1 %2045, float %2044, float 0.000000e+00
  %2047 = fadd fast float %2046, %2024
  %2048 = fadd fast float %1663, 0x3FFDAA66E0000000
  %2049 = call float @dx.op.unary.f32(i32 22, float %2048)  ; Frc(value)
  %2050 = call float @dx.op.unary.f32(i32 23, float %2025)  ; Log(value)
  %2051 = fadd fast float %2050, -6.000000e+00
  %2052 = call float @dx.op.unary.f32(i32 21, float %2051)  ; Exp(value)
  %2053 = fmul fast float %2049, 2.000000e+00
  %2054 = fadd fast float %2053, -1.000000e+00
  %2055 = fmul fast float %2052, %2054
  %2056 = fcmp fast ogt float %2025, 0.000000e+00
  %2057 = select i1 %2056, float %2055, float 0.000000e+00
  %2058 = fadd fast float %2057, %2025
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %1628, i32 %1629, i32 undef, float %2036, float %2047, float %2058, float %2036, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2059 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2060 = extractvalue %dx.types.CBufRet.i32 %2059, 0
  %2061 = and i32 %2060, 1
  %2062 = icmp ne i32 %2061, 0
  %2063 = or i32 %1629, %1621
  %2064 = and i32 %2063, 1
  %2065 = icmp eq i32 %2064, 0
  %2066 = and i1 %2065, %2062
  br i1 %2066, label %2067, label %2070, !dx.controlflow.hints !110

; <label>:2067                                    ; preds = %2014
  %2068 = and i32 %48, 2147483647
  %2069 = lshr i32 %1629, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2068, i32 %2069, i32 undef, float %1945, float %1946, float %1947, float %1945, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2070

; <label>:2070                                    ; preds = %2067, %2014
  %2071 = fadd fast float %2023, %1616
  %2072 = fadd fast float %2024, %1617
  %2073 = fadd fast float %2025, %1618
  %2074 = fadd fast float %1619, 1.000000e+00
  br label %1638

; <label>:2075                                    ; preds = %1638
  %2076 = fdiv fast float 1.000000e+00, %1642
  %2077 = fmul fast float %2076, %1639
  %2078 = fmul fast float %2076, %1640
  %2079 = fmul fast float %2076, %1641
  %2080 = call float @dx.op.dot3.f32(i32 55, float %2077, float %2078, float %2079, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2081 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedLuma@@3PAMA", i32 0, i32 %32
  store float %2080, float addrspace(3)* %2081, align 4, !tbaa !53
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2082 = or i32 %48, %49
  %2083 = and i32 %2082, 1
  %2084 = icmp eq i32 %2083, 0
  br i1 %2084, label %2085, label %2141, !dx.controlflow.hints !114

; <label>:2085                                    ; preds = %2075
  %2086 = and i32 %32, 63
  %2087 = xor i32 %2086, 1
  %2088 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedLuma@@3PAMA", i32 0, i32 %2087
  %2089 = load float, float addrspace(3)* %2088, align 4, !tbaa !53
  %2090 = call float @dx.op.binary.f32(i32 35, float %2080, float %2089)  ; FMax(a,b)
  %2091 = xor i32 %2086, 8
  %2092 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedLuma@@3PAMA", i32 0, i32 %2091
  %2093 = load float, float addrspace(3)* %2092, align 4, !tbaa !53
  %2094 = call float @dx.op.binary.f32(i32 35, float %2090, float %2093)  ; FMax(a,b)
  %2095 = xor i32 %2086, 9
  %2096 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedLuma@@3PAMA", i32 0, i32 %2095
  %2097 = load float, float addrspace(3)* %2096, align 4, !tbaa !53
  %2098 = call float @dx.op.binary.f32(i32 35, float %2094, float %2097)  ; FMax(a,b)
  %2099 = call float @dx.op.binary.f32(i32 36, float %2080, float %2089)  ; FMin(a,b)
  %2100 = call float @dx.op.binary.f32(i32 36, float %2099, float %2093)  ; FMin(a,b)
  %2101 = call float @dx.op.binary.f32(i32 36, float %2100, float %2097)  ; FMin(a,b)
  %2102 = lshr i32 %48, 1
  %2103 = lshr i32 %49, 1
  %2104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2105 = extractvalue %dx.types.CBufRet.f32 %2104, 3
  %2106 = fmul fast float %2105, 3.200000e+01
  %2107 = fmul fast float %2101, 0x3F1A36E2E0000000
  %2108 = fmul fast float %2107, %2106
  %2109 = call float @dx.op.unary.f32(i32 23, float %2108)  ; Log(value)
  %2110 = fmul fast float %2109, 0x3FC4640000000000
  %2111 = call float @dx.op.unary.f32(i32 21, float %2110)  ; Exp(value)
  %2112 = fmul fast float %2111, 0x4032DA0000000000
  %2113 = fadd fast float %2112, 8.359375e-01
  %2114 = fmul fast float %2111, 1.868750e+01
  %2115 = fadd fast float %2114, 1.000000e+00
  %2116 = fdiv fast float %2113, %2115
  %2117 = call float @dx.op.unary.f32(i32 23, float %2116)  ; Log(value)
  %2118 = fmul fast float %2117, 7.884375e+01
  %2119 = call float @dx.op.unary.f32(i32 21, float %2118)  ; Exp(value)
  %2120 = fmul fast float %2098, 0x3F1A36E2E0000000
  %2121 = fmul fast float %2120, %2106
  %2122 = call float @dx.op.unary.f32(i32 23, float %2121)  ; Log(value)
  %2123 = fmul fast float %2122, 0x3FC4640000000000
  %2124 = call float @dx.op.unary.f32(i32 21, float %2123)  ; Exp(value)
  %2125 = fmul fast float %2124, 0x4032DA0000000000
  %2126 = fadd fast float %2125, 8.359375e-01
  %2127 = fmul fast float %2124, 1.868750e+01
  %2128 = fadd fast float %2127, 1.000000e+00
  %2129 = fdiv fast float %2126, %2128
  %2130 = call float @dx.op.unary.f32(i32 23, float %2129)  ; Log(value)
  %2131 = fmul fast float %2130, 7.884375e+01
  %2132 = call float @dx.op.unary.f32(i32 21, float %2131)  ; Exp(value)
  %2133 = fmul fast float %2119, 0x40778E40E0000000
  %2134 = fmul fast float %2132, 0x40778E40E0000000
  %2135 = call float @dx.op.unary.f32(i32 26, float %2133)  ; Round_ne(value)
  %2136 = call float @dx.op.unary.f32(i32 26, float %2134)  ; Round_ne(value)
  %2137 = fmul fast float %2135, 0x3F70101020000000
  %2138 = fmul fast float %2136, 0x3F70101020000000
  %2139 = call float @dx.op.unary.f32(i32 7, float %2137)  ; Saturate(value)
  %2140 = call float @dx.op.unary.f32(i32 7, float %2138)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %2102, i32 %2103, i32 undef, float %2139, float %2140, float %2139, float %2139, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2141

; <label>:2141                                    ; preds = %2085, %2075
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #3

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { noduplicate nounwind }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!38}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !26, !30, !34}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!6 = !{i32 0, %"class.Texture1D<float>"* undef, !"", i32 0, i32 6, i32 1, i32 1, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 4, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture2DArray<float>"* undef, !"", i32 0, i32 20, i32 1, i32 7, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 14, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 15, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 11, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %"class.Texture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 21, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 22, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 12, i32 1, i32 2, i32 0, !7}
!26 = !{!27, !28, !29}
!27 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!28 = !{i32 1, %"class.RWTexture2D<vector<float, 2> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!29 = !{i32 2, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!30 = !{!31, !32, !33}
!31 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!32 = !{i32 1, %PostOpaqueConstants* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!33 = !{i32 2, %SSSBlurConstBuffer* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!34 = !{!35, !36, !37}
!35 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!36 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!37 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!38 = !{void ()* @cs_post_opaque_processes_luma_dmfpscale, !"cs_post_opaque_processes_luma_dmfpscale", null, !4, !39}
!39 = !{i32 0, i64 272, i32 4, !40}
!40 = !{i32 8, i32 8, i32 1}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 1}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = !{!54, !54, i64 0}
!54 = !{!"float", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !{!58, !60, !62, !63, !65, !66, !67}
!58 = distinct !{!58, !59, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!59 = distinct !{!59, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!60 = distinct !{!60, !61, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!61 = distinct !{!61, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!62 = distinct !{!62, !61, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!63 = distinct !{!63, !64, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %extinction"}
!64 = distinct !{!64, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z"}
!65 = distinct !{!65, !64, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %scattering"}
!66 = distinct !{!66, !64, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %thermalFogExtinction"}
!67 = distinct !{!67, !68, !"\01?PostOpaqueProcessesQuadLoop@@YAXV?$vector@I$01@@00V?$vector@M$03@@AIAV?$vector@M$02@@_N33V?$vector@_N$03@@@Z: %colorQuadAvg"}
!68 = distinct !{!68, !"\01?PostOpaqueProcessesQuadLoop@@YAXV?$vector@I$01@@00V?$vector@M$03@@AIAV?$vector@M$02@@_N33V?$vector@_N$03@@@Z"}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = !{!71}
!71 = distinct !{!71, !72, !"\01?sort@@YAXAIAM00@Z: %c"}
!72 = distinct !{!72, !"\01?sort@@YAXAIAM00@Z"}
!73 = !{!74, !75, !58, !60, !62, !63, !65, !66, !67}
!74 = distinct !{!74, !72, !"\01?sort@@YAXAIAM00@Z: %a"}
!75 = distinct !{!75, !72, !"\01?sort@@YAXAIAM00@Z: %b"}
!76 = !{!75}
!77 = !{!74, !71, !58, !60, !62, !63, !65, !66, !67}
!78 = !{!74}
!79 = !{!75, !71, !58, !60, !62, !63, !65, !66, !67}
!80 = !{!81}
!81 = distinct !{!81, !82, !"\01?sort@@YAXAIAM00@Z: %c"}
!82 = distinct !{!82, !"\01?sort@@YAXAIAM00@Z"}
!83 = !{!84, !85, !58, !60, !62, !63, !65, !66, !67}
!84 = distinct !{!84, !82, !"\01?sort@@YAXAIAM00@Z: %a"}
!85 = distinct !{!85, !82, !"\01?sort@@YAXAIAM00@Z: %b"}
!86 = !{!85}
!87 = !{!84, !81, !58, !60, !62, !63, !65, !66, !67}
!88 = !{!84}
!89 = !{!85, !81, !58, !60, !62, !63, !65, !66, !67}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !104}
!104 = !{!"llvm.loop.unroll.disable"}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 2}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 2}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 2}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 2}
!113 = !{!67}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 2}

