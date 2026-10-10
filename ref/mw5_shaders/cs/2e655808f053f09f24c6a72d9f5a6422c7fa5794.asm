;
; Note: shader requires additional functionality:
;       Wave level operations
;
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
; shader hash: c8e18305e8508b8203478fa7df2a9c6d
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
  %32 = alloca [3 x float], align 4
  %33 = alloca [3 x float], align 4
  %34 = alloca [4 x float], align 4
  %35 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.i32 %35, 0
  %37 = extractvalue %dx.types.CBufRet.i32 %35, 1
  %38 = mul i32 %37, %36
  %39 = add i32 %38, %31
  %40 = shl i32 %39, 2
  %41 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %40, i32 undef)  ; BufferLoad(srv,index,wot)
  %42 = extractvalue %dx.types.ResRet.i32 %41, 0
  %43 = lshr i32 %42, 16
  %44 = shl i32 %42, 3
  %45 = and i32 %44, 524280
  %46 = shl nuw nsw i32 %43, 3
  %47 = add i32 %45, %29
  %48 = add i32 %46, %30
  %49 = shl i32 %47, 1
  %50 = shl i32 %48, 1
  %51 = uitofp i32 %49 to float
  %52 = uitofp i32 %50 to float
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 2
  %55 = extractvalue %dx.types.CBufRet.f32 %53, 3
  %56 = fmul fast float %51, %54
  %57 = fmul fast float %52, %55
  %58 = fadd fast float %56, %54
  %59 = fadd fast float %57, %55
  %60 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %25, float %58, float %59, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %61 = extractvalue %dx.types.ResRet.f32 %60, 0
  %62 = extractvalue %dx.types.ResRet.f32 %60, 1
  %63 = extractvalue %dx.types.ResRet.f32 %60, 2
  %64 = extractvalue %dx.types.ResRet.f32 %60, 3
  %65 = fcmp fast ogt float %64, -1.000000e+00
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 1
  %68 = select i1 %65, float %67, float 1.000000e+00
  %69 = fadd fast float %64, 1.000000e+00
  %70 = fmul fast float %68, %69
  %71 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %72 = fcmp fast ogt float %63, -1.000000e+00
  %73 = select i1 %72, float %67, float 1.000000e+00
  %74 = fadd fast float %63, 1.000000e+00
  %75 = fmul fast float %73, %74
  %76 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %77 = fcmp fast ogt float %61, -1.000000e+00
  %78 = select i1 %77, float %67, float 1.000000e+00
  %79 = fadd fast float %61, 1.000000e+00
  %80 = fmul fast float %78, %79
  %81 = call float @dx.op.unary.f32(i32 6, float %80)  ; FAbs(value)
  %82 = fcmp fast ogt float %62, -1.000000e+00
  %83 = select i1 %82, float %67, float 1.000000e+00
  %84 = fadd fast float %62, 1.000000e+00
  %85 = fmul fast float %83, %84
  %86 = call float @dx.op.unary.f32(i32 6, float %85)  ; FAbs(value)
  %87 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 0
  store float %71, float* %87, align 4
  %88 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 1
  store float %76, float* %88, align 4
  %89 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 2
  store float %81, float* %89, align 4
  %90 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 3
  store float %86, float* %90, align 4
  %91 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %92 = extractvalue %dx.types.ResRet.i32 %91, 0
  %93 = and i32 %92, 114688
  %94 = icmp ne i32 %93, 0
  %95 = select i1 %94, i32 %49, i32 0
  %96 = select i1 %94, i32 %50, i32 0
  %97 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %95, i32 %96, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %98 = extractvalue %dx.types.ResRet.f32 %97, 0
  %99 = fmul fast float %98, 2.550000e+02
  %100 = fptoui float %99 to i32
  %101 = icmp eq i32 %100, 3
  %102 = and i1 %94, %101
  %103 = extractvalue %dx.types.CBufRet.f32 %66, 3
  %104 = fcmp fast oge float %71, %103
  %105 = fadd fast float %51, 5.000000e-01
  %106 = fadd fast float %52, 5.000000e-01
  br i1 %102, label %968, label %107, !dx.controlflow.hints !41

; <label>:107                                     ; preds = %0
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 170)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = select i1 %104, float %109, float %71
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 3
  %114 = fmul fast float %105, 2.000000e+00
  %115 = fmul fast float %114, %112
  %116 = fmul fast float %106, 2.000000e+00
  %117 = fmul fast float %116, %113
  %118 = fsub fast float 1.000000e+00, %115
  %119 = fsub fast float 1.000000e+00, %117
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = fmul fast float %118, %121
  %125 = fmul fast float %118, %122
  %126 = fmul fast float %118, %123
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 0
  %129 = extractvalue %dx.types.CBufRet.f32 %127, 1
  %130 = extractvalue %dx.types.CBufRet.f32 %127, 2
  %131 = fmul fast float %119, %128
  %132 = fmul fast float %119, %129
  %133 = fmul fast float %119, %130
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %137 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %138 = fadd fast float %131, %135
  %139 = fadd fast float %138, %124
  %140 = fadd fast float %132, %136
  %141 = fadd fast float %140, %125
  %142 = fadd fast float %133, %137
  %143 = fadd fast float %142, %126
  %144 = fmul fast float %139, %110
  %145 = fmul fast float %141, %110
  %146 = fmul fast float %143, %110
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 163)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 1
  %152 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %153 = extractvalue %dx.types.CBufRet.f32 %149, 3
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 0
  %156 = extractvalue %dx.types.CBufRet.f32 %154, 1
  %157 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %158 = extractvalue %dx.types.CBufRet.f32 %154, 3
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %161 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %162 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %163 = extractvalue %dx.types.CBufRet.f32 %159, 3
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %166 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %167 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %168 = extractvalue %dx.types.CBufRet.f32 %164, 3
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 3
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 3
  %173 = extractvalue %dx.types.CBufRet.f32 %171, 0
  %174 = extractvalue %dx.types.CBufRet.f32 %171, 1
  %175 = extractvalue %dx.types.CBufRet.f32 %171, 2
  %176 = fcmp fast olt float %175, -5.000000e-01
  %177 = extractvalue %dx.types.CBufRet.f32 %147, 3
  %178 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %144, float %145, float %146)  ; Dot3(ax,ay,az,bx,by,bz)
  %179 = call float @dx.op.unary.f32(i32 25, float %178)  ; Rsqrt(value)
  %180 = fmul fast float %179, %178
  %181 = fmul fast float %179, %144
  %182 = fmul fast float %179, %145
  %183 = fmul fast float %179, %146
  %184 = fadd fast float %180, %153
  br i1 %104, label %185, label %197, !dx.controlflow.hints !42

; <label>:185                                     ; preds = %107
  %186 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %187 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 187)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 1
  %190 = extractvalue %dx.types.CBufRet.f32 %188, 0
  %191 = call float @dx.op.binary.f32(i32 35, float %183, float %190)  ; FMax(a,b)
  %192 = call float @dx.op.binary.f32(i32 36, float %191, float %189)  ; FMin(a,b)
  %193 = fmul fast float %192, %187
  %194 = fadd fast float %193, %186
  %195 = call float @dx.op.unary.f32(i32 7, float %194)  ; Saturate(value)
  %196 = fmul fast float %183, %148
  br label %197

; <label>:197                                     ; preds = %185, %107
  %198 = phi float [ %148, %185 ], [ %184, %107 ]
  %199 = phi float [ %195, %185 ], [ 0.000000e+00, %107 ]
  %200 = phi float [ %196, %185 ], [ %146, %107 ]
  %201 = call float @dx.op.dot3.f32(i32 55, float %181, float %182, float %183, float %150, float %151, float %152)  ; Dot3(ax,ay,az,bx,by,bz)
  %202 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = extractvalue %dx.types.CBufRet.i32 %202, 1
  %204 = and i32 %203, 1
  %205 = icmp ne i32 %204, 0
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.f32 %206, 2
  %208 = fcmp fast ogt float %207, 0.000000e+00
  %209 = and i1 %205, %208
  br i1 %209, label %210, label %619, !dx.controlflow.hints !43

; <label>:210                                     ; preds = %197
  %211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.f32 %211, 3
  %213 = select i1 %104, float %212, float %180
  %214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.f32 %214, 3
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 2
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 2
  %220 = fsub fast float %217, %219
  %221 = and i32 %203, 2
  %222 = extractvalue %dx.types.CBufRet.i32 %202, 0
  %223 = call i32 @dx.op.binary.i32(i32 40, i32 %222, i32 3)  ; UMin(a,b)
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 0
  %226 = extractvalue %dx.types.CBufRet.f32 %224, 1
  %227 = extractvalue %dx.types.CBufRet.f32 %218, 0
  %228 = extractvalue %dx.types.CBufRet.f32 %218, 1
  %229 = fsub fast float %225, %227
  %230 = fsub fast float %226, %228
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 0
  %233 = fcmp fast ogt float %232, 0.000000e+00
  %234 = fsub fast float -0.000000e+00, %229
  %235 = fsub fast float -0.000000e+00, %230
  %236 = call float @dx.op.dot2.f32(i32 54, float %181, float %182, float %181, float %182)  ; Dot2(ax,ay,bx,by)
  %237 = call float @dx.op.dot2.f32(i32 54, float %181, float %182, float %234, float %235)  ; Dot2(ax,ay,bx,by)
  %238 = fmul fast float %237, 2.000000e+00
  %239 = call float @dx.op.dot2.f32(i32 54, float %234, float %235, float %234, float %235)  ; Dot2(ax,ay,bx,by)
  %240 = fmul fast float %232, %232
  %241 = fsub fast float %239, %240
  %242 = fmul fast float %238, %238
  %243 = fmul fast float %236, 4.000000e+00
  %244 = fmul fast float %243, %241
  %245 = fsub fast float %242, %244
  %246 = fcmp fast ogt float %245, 0.000000e+00
  br i1 %246, label %247, label %262, !dx.controlflow.hints !44

; <label>:247                                     ; preds = %210
  %248 = fcmp fast ogt float %238, 0.000000e+00
  %249 = call float @dx.op.unary.f32(i32 24, float %245)  ; Sqrt(value)
  %250 = fsub fast float -0.000000e+00, %249
  %251 = select i1 %248, float %249, float %250
  %252 = fadd fast float %251, %238
  %253 = fmul float %252, -5.000000e-01
  %254 = fdiv fast float %253, %236
  %255 = call float @dx.op.binary.f32(i32 35, float %254, float 0.000000e+00)  ; FMax(a,b)
  %256 = call float @dx.op.binary.f32(i32 36, float %213, float %255)  ; FMin(a,b)
  %257 = fdiv fast float %241, %253
  %258 = call float @dx.op.binary.f32(i32 35, float %257, float 0.000000e+00)  ; FMax(a,b)
  %259 = call float @dx.op.binary.f32(i32 36, float %213, float %258)  ; FMin(a,b)
  %260 = call float @dx.op.binary.f32(i32 36, float %256, float %259)  ; FMin(a,b)
  %261 = call float @dx.op.binary.f32(i32 35, float %256, float %259)  ; FMax(a,b)
  br label %262

; <label>:262                                     ; preds = %247, %210
  %263 = phi float [ %261, %247 ], [ -1.000000e+00, %210 ]
  %264 = phi float [ %260, %247 ], [ -1.000000e+00, %210 ]
  %265 = phi i1 [ true, %247 ], [ false, %210 ]
  %266 = and i1 %233, %265
  br i1 %266, label %267, label %269, !dx.controlflow.hints !45

; <label>:267                                     ; preds = %262
  %268 = fcmp fast oeq float %264, %263
  br i1 %268, label %572, label %270, !dx.controlflow.hints !46

; <label>:269                                     ; preds = %262
  br i1 %233, label %572, label %270, !dx.controlflow.hints !47

; <label>:270                                     ; preds = %269, %267
  %271 = phi float [ %213, %269 ], [ %263, %267 ]
  %272 = phi float [ 0.000000e+00, %269 ], [ %264, %267 ]
  %273 = icmp ne i32 %221, 0
  %274 = fmul fast float %271, %183
  %275 = fadd fast float %274, %215
  %276 = fmul fast float %275, %271
  %277 = select i1 %273, float 0.000000e+00, float %276
  %278 = fcmp fast oeq float %183, 0.000000e+00
  %279 = fdiv fast float %220, %183
  %280 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %279)  ; FMax(a,b)
  %281 = select i1 %278, float %271, float %280
  %282 = call float @dx.op.binary.f32(i32 36, float %271, float %281)  ; FMin(a,b)
  %283 = fcmp fast ogt float %183, 0.000000e+00
  %284 = fcmp fast olt float %220, 0.000000e+00
  br i1 %283, label %285, label %342, !dx.controlflow.hints !48

; <label>:285                                     ; preds = %270
  %286 = icmp eq i32 %221, 0
  br i1 %284, label %287, label %331, !dx.controlflow.hints !49

; <label>:287                                     ; preds = %285
  %288 = select i1 %286, float %271, float 0.000000e+00
  %289 = fsub fast float -0.000000e+00, %288
  %290 = call float @dx.op.unary.f32(i32 6, float %289)  ; FAbs(value)
  %291 = fmul fast float %288, %183
  %292 = fadd fast float %291, %215
  %293 = fmul fast float %290, %292
  %294 = fsub fast float %277, %293
  %295 = fsub fast float %271, %290
  %296 = select i1 %286, float %295, float 0.000000e+00
  %297 = extractvalue %dx.types.CBufRet.f32 %211, 0
  %298 = extractvalue %dx.types.CBufRet.f32 %211, 1
  %299 = extractvalue %dx.types.CBufRet.f32 %211, 2
  %300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.f32 %300, 0
  %302 = extractvalue %dx.types.CBufRet.f32 %300, 1
  %303 = extractvalue %dx.types.CBufRet.f32 %300, 2
  %304 = extractvalue %dx.types.CBufRet.f32 %300, 3
  %305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %306 = extractvalue %dx.types.CBufRet.f32 %305, 3
  %307 = call float @dx.op.binary.f32(i32 36, float %294, float %306)  ; FMin(a,b)
  %308 = fmul fast float %304, %296
  %309 = call float @dx.op.unary.f32(i32 7, float %308)  ; Saturate(value)
  %310 = fsub fast float %301, %297
  %311 = fsub fast float %302, %298
  %312 = fsub fast float %303, %299
  %313 = fmul fast float %309, %310
  %314 = fmul fast float %309, %311
  %315 = fmul fast float %309, %312
  %316 = fadd fast float %313, %297
  %317 = fadd fast float %314, %298
  %318 = fadd fast float %315, %299
  br i1 %104, label %572, label %319, !dx.controlflow.hints !50

; <label>:319                                     ; preds = %287
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 0
  %322 = extractvalue %dx.types.CBufRet.f32 %320, 1
  %323 = fadd fast float %322, %321
  %324 = call float @dx.op.unary.f32(i32 7, float %323)  ; Saturate(value)
  %325 = extractvalue %dx.types.CBufRet.f32 %320, 2
  %326 = extractvalue %dx.types.CBufRet.f32 %320, 3
  %327 = fadd fast float %326, %325
  %328 = call float @dx.op.unary.f32(i32 7, float %327)  ; Saturate(value)
  %329 = fmul fast float %324, %307
  %330 = fmul fast float %329, %328
  br label %572

; <label>:331                                     ; preds = %285
  br i1 %286, label %332, label %353, !dx.controlflow.hints !51

; <label>:332                                     ; preds = %331
  %333 = call float @dx.op.binary.f32(i32 36, float %282, float %272)  ; FMin(a,b)
  %334 = fsub fast float %282, %333
  %335 = fsub fast float %334, %271
  %336 = call float @dx.op.unary.f32(i32 6, float %335)  ; FAbs(value)
  %337 = fadd fast float %334, %271
  %338 = fmul fast float %337, %183
  %339 = fadd fast float %338, %215
  %340 = fmul fast float %339, %336
  %341 = fsub fast float %277, %340
  br label %353

; <label>:342                                     ; preds = %270
  br i1 %284, label %343, label %353, !dx.controlflow.hints !52

; <label>:343                                     ; preds = %342
  %344 = call float @dx.op.binary.f32(i32 35, float %272, float %282)  ; FMax(a,b)
  %345 = icmp eq i32 %221, 0
  %346 = select i1 %345, float %282, float 0.000000e+00
  %347 = fsub fast float -0.000000e+00, %346
  %348 = call float @dx.op.unary.f32(i32 6, float %347)  ; FAbs(value)
  %349 = fmul fast float %346, %183
  %350 = fadd fast float %349, %215
  %351 = fmul fast float %348, %350
  %352 = fsub fast float %277, %351
  br label %353

; <label>:353                                     ; preds = %343, %342, %332, %331
  %354 = phi float [ %272, %331 ], [ %272, %332 ], [ %344, %343 ], [ %272, %342 ]
  %355 = phi float [ 0.000000e+00, %331 ], [ %336, %332 ], [ %348, %343 ], [ 0.000000e+00, %342 ]
  %356 = phi float [ %277, %331 ], [ %341, %332 ], [ %352, %343 ], [ %277, %342 ]
  %357 = phi float [ %282, %331 ], [ %282, %332 ], [ %271, %343 ], [ %271, %342 ]
  %358 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 0
  store float -1.000000e+00, float* %358, align 4, !tbaa !53, !noalias !57
  %359 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 1
  store float -1.000000e+00, float* %359, align 4, !tbaa !53, !noalias !57
  %360 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 2
  store float -1.000000e+00, float* %360, align 4, !tbaa !53, !noalias !57
  %361 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 0
  store float -1.000000e+00, float* %361, align 4, !tbaa !53, !noalias !57
  %362 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 1
  store float -1.000000e+00, float* %362, align 4, !tbaa !53, !noalias !57
  %363 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 2
  store float -1.000000e+00, float* %363, align 4, !tbaa !53, !noalias !57
  %364 = icmp sgt i32 %223, 0
  br i1 %364, label %365, label %426

; <label>:365                                     ; preds = %353
  br label %366

; <label>:366                                     ; preds = %415, %365
  %367 = phi i32 [ %416, %415 ], [ 0, %365 ]
  %368 = phi i32 [ %417, %415 ], [ 0, %365 ]
  %369 = add nuw i32 %368, 171
  %370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 %369)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.f32 %370, 0
  %372 = extractvalue %dx.types.CBufRet.f32 %370, 1
  %373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.f32 %373, 0
  %375 = extractvalue %dx.types.CBufRet.f32 %373, 1
  %376 = fsub fast float %371, %374
  %377 = fsub fast float %372, %375
  %378 = extractvalue %dx.types.CBufRet.f32 %370, 2
  %379 = fsub fast float -0.000000e+00, %376
  %380 = fsub fast float -0.000000e+00, %377
  %381 = call float @dx.op.dot2.f32(i32 54, float %181, float %182, float %379, float %380)  ; Dot2(ax,ay,bx,by)
  %382 = fmul fast float %381, 2.000000e+00
  %383 = call float @dx.op.dot2.f32(i32 54, float %379, float %380, float %379, float %380)  ; Dot2(ax,ay,bx,by)
  %384 = fmul fast float %378, %378
  %385 = fsub fast float %383, %384
  %386 = fmul fast float %382, %382
  %387 = fmul fast float %243, %385
  %388 = fsub fast float %386, %387
  %389 = fcmp fast ogt float %388, 0.000000e+00
  br i1 %389, label %390, label %405, !dx.controlflow.hints !44

; <label>:390                                     ; preds = %366
  %391 = fcmp fast ogt float %382, 0.000000e+00
  %392 = call float @dx.op.unary.f32(i32 24, float %388)  ; Sqrt(value)
  %393 = fsub fast float -0.000000e+00, %392
  %394 = select i1 %391, float %392, float %393
  %395 = fadd fast float %394, %382
  %396 = fmul float %395, -5.000000e-01
  %397 = fdiv fast float %396, %236
  %398 = call float @dx.op.binary.f32(i32 35, float %397, float 0.000000e+00)  ; FMax(a,b)
  %399 = call float @dx.op.binary.f32(i32 36, float %271, float %398)  ; FMin(a,b)
  %400 = fdiv fast float %385, %396
  %401 = call float @dx.op.binary.f32(i32 35, float %400, float 0.000000e+00)  ; FMax(a,b)
  %402 = call float @dx.op.binary.f32(i32 36, float %271, float %401)  ; FMin(a,b)
  %403 = call float @dx.op.binary.f32(i32 36, float %399, float %402)  ; FMin(a,b)
  %404 = call float @dx.op.binary.f32(i32 35, float %399, float %402)  ; FMax(a,b)
  br label %405

; <label>:405                                     ; preds = %390, %366
  %406 = phi float [ %404, %390 ], [ -1.000000e+00, %366 ]
  %407 = phi float [ %403, %390 ], [ -1.000000e+00, %366 ]
  %408 = phi i1 [ true, %390 ], [ false, %366 ]
  br i1 %408, label %409, label %415, !dx.controlflow.hints !69

; <label>:409                                     ; preds = %405
  %410 = call float @dx.op.binary.f32(i32 35, float %354, float %407)  ; FMax(a,b)
  %411 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %368
  store float %410, float* %411, align 4, !tbaa !53, !noalias !57
  %412 = call float @dx.op.binary.f32(i32 35, float %354, float %406)  ; FMax(a,b)
  %413 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 %368
  store float %412, float* %413, align 4, !tbaa !53, !noalias !57
  %414 = add nsw i32 %367, 1
  br label %415

; <label>:415                                     ; preds = %409, %405
  %416 = phi i32 [ %414, %409 ], [ %367, %405 ]
  %417 = add nuw nsw i32 %368, 1
  %418 = icmp eq i32 %417, %223
  br i1 %418, label %419, label %366

; <label>:419                                     ; preds = %415
  %420 = load float, float* %360, align 4, !tbaa !53, !alias.scope !70, !noalias !73
  %421 = load float, float* %359, align 4, !tbaa !53, !alias.scope !76, !noalias !77
  %422 = load float, float* %358, align 4, !tbaa !53, !alias.scope !78, !noalias !79
  %423 = load float, float* %363, align 4, !tbaa !53, !alias.scope !80, !noalias !83
  %424 = load float, float* %362, align 4, !tbaa !53, !alias.scope !86, !noalias !87
  %425 = load float, float* %361, align 4, !tbaa !53, !alias.scope !88, !noalias !89
  br label %426

; <label>:426                                     ; preds = %419, %353
  %427 = phi float [ -1.000000e+00, %353 ], [ %425, %419 ]
  %428 = phi float [ -1.000000e+00, %353 ], [ %424, %419 ]
  %429 = phi float [ -1.000000e+00, %353 ], [ %423, %419 ]
  %430 = phi float [ -1.000000e+00, %353 ], [ %422, %419 ]
  %431 = phi float [ -1.000000e+00, %353 ], [ %421, %419 ]
  %432 = phi float [ -1.000000e+00, %353 ], [ %420, %419 ]
  %433 = phi i32 [ 0, %353 ], [ %416, %419 ]
  %434 = call float @dx.op.binary.f32(i32 36, float %431, float %432)  ; FMin(a,b)
  %435 = call float @dx.op.binary.f32(i32 36, float %430, float %434)  ; FMin(a,b)
  %436 = call float @dx.op.binary.f32(i32 35, float %430, float %431)  ; FMax(a,b)
  %437 = call float @dx.op.binary.f32(i32 36, float %436, float %432)  ; FMin(a,b)
  %438 = call float @dx.op.binary.f32(i32 36, float %430, float %431)  ; FMin(a,b)
  %439 = call float @dx.op.binary.f32(i32 35, float %438, float %437)  ; FMax(a,b)
  %440 = call float @dx.op.binary.f32(i32 35, float %431, float %432)  ; FMax(a,b)
  %441 = call float @dx.op.binary.f32(i32 35, float %430, float %440)  ; FMax(a,b)
  store float %435, float* %358, align 4, !tbaa !53, !alias.scope !78, !noalias !79
  store float %439, float* %359, align 4, !tbaa !53, !alias.scope !76, !noalias !77
  store float %441, float* %360, align 4, !tbaa !53, !alias.scope !70, !noalias !73
  %442 = call float @dx.op.binary.f32(i32 36, float %428, float %429)  ; FMin(a,b)
  %443 = call float @dx.op.binary.f32(i32 36, float %427, float %442)  ; FMin(a,b)
  %444 = call float @dx.op.binary.f32(i32 35, float %427, float %428)  ; FMax(a,b)
  %445 = call float @dx.op.binary.f32(i32 36, float %444, float %429)  ; FMin(a,b)
  %446 = call float @dx.op.binary.f32(i32 36, float %427, float %428)  ; FMin(a,b)
  %447 = call float @dx.op.binary.f32(i32 35, float %446, float %445)  ; FMax(a,b)
  %448 = call float @dx.op.binary.f32(i32 35, float %428, float %429)  ; FMax(a,b)
  %449 = call float @dx.op.binary.f32(i32 35, float %427, float %448)  ; FMax(a,b)
  store float %443, float* %361, align 4, !tbaa !53, !alias.scope !88, !noalias !89
  store float %447, float* %362, align 4, !tbaa !53, !alias.scope !86, !noalias !87
  store float %449, float* %363, align 4, !tbaa !53, !alias.scope !80, !noalias !83
  %450 = sub nsw i32 3, %433
  %451 = icmp sgt i32 %450, 2
  br i1 %451, label %452, label %490, !dx.controlflow.hints !90

; <label>:452                                     ; preds = %426
  %453 = icmp eq i32 %221, 0
  %454 = fsub fast float %271, %355
  %455 = select i1 %453, float %454, float %355
  %456 = extractvalue %dx.types.CBufRet.f32 %211, 0
  %457 = extractvalue %dx.types.CBufRet.f32 %211, 1
  %458 = extractvalue %dx.types.CBufRet.f32 %211, 2
  %459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %460 = extractvalue %dx.types.CBufRet.f32 %459, 0
  %461 = extractvalue %dx.types.CBufRet.f32 %459, 1
  %462 = extractvalue %dx.types.CBufRet.f32 %459, 2
  %463 = extractvalue %dx.types.CBufRet.f32 %459, 3
  %464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %465 = extractvalue %dx.types.CBufRet.f32 %464, 3
  %466 = call float @dx.op.binary.f32(i32 36, float %356, float %465)  ; FMin(a,b)
  %467 = fmul fast float %463, %455
  %468 = call float @dx.op.unary.f32(i32 7, float %467)  ; Saturate(value)
  %469 = fsub fast float %460, %456
  %470 = fsub fast float %461, %457
  %471 = fsub fast float %462, %458
  %472 = fmul fast float %468, %469
  %473 = fmul fast float %468, %470
  %474 = fmul fast float %468, %471
  %475 = fadd fast float %472, %456
  %476 = fadd fast float %473, %457
  %477 = fadd fast float %474, %458
  br i1 %104, label %572, label %478, !dx.controlflow.hints !50

; <label>:478                                     ; preds = %452
  %479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %480 = extractvalue %dx.types.CBufRet.f32 %479, 0
  %481 = extractvalue %dx.types.CBufRet.f32 %479, 1
  %482 = fadd fast float %481, %480
  %483 = call float @dx.op.unary.f32(i32 7, float %482)  ; Saturate(value)
  %484 = extractvalue %dx.types.CBufRet.f32 %479, 2
  %485 = extractvalue %dx.types.CBufRet.f32 %479, 3
  %486 = fadd fast float %485, %484
  %487 = call float @dx.op.unary.f32(i32 7, float %486)  ; Saturate(value)
  %488 = fmul fast float %483, %466
  %489 = fmul fast float %488, %487
  br label %572

; <label>:490                                     ; preds = %426
  %491 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %450
  %492 = load float, float* %491, align 4, !tbaa !53, !noalias !57
  %493 = fcmp fast olt float %492, %357
  %494 = icmp sgt i32 %433, 0
  %495 = and i1 %494, %493
  br i1 %495, label %496, label %533

; <label>:496                                     ; preds = %490
  br label %497

; <label>:497                                     ; preds = %526, %496
  %498 = phi float [ %527, %526 ], [ %355, %496 ]
  %499 = phi float [ %528, %526 ], [ %356, %496 ]
  %500 = phi float [ %508, %526 ], [ %492, %496 ]
  %501 = phi i32 [ %505, %526 ], [ %450, %496 ]
  %502 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 %501
  %503 = load float, float* %502, align 4, !tbaa !53, !noalias !57
  %504 = icmp slt i32 %501, 2
  %505 = add nsw i32 %501, 1
  %506 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %505
  %507 = load float, float* %506, align 4, !tbaa !53, !noalias !57
  %508 = select i1 %504, float %507, float %271
  %509 = call float @dx.op.binary.f32(i32 36, float %508, float %503)  ; FMin(a,b)
  %510 = call float @dx.op.binary.f32(i32 36, float %357, float %509)  ; FMin(a,b)
  %511 = icmp eq i32 %221, 0
  %512 = fadd fast float %510, %500
  %513 = fmul fast float %512, %183
  %514 = fadd fast float %513, %215
  br i1 %511, label %520, label %515, !dx.controlflow.hints !91

; <label>:515                                     ; preds = %497
  %516 = fsub fast float %510, %500
  %517 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %516)  ; FMax(a,b)
  %518 = fmul fast float %517, %514
  %519 = fadd fast float %518, %499
  br label %526

; <label>:520                                     ; preds = %497
  %521 = fsub fast float %500, %510
  %522 = call float @dx.op.unary.f32(i32 6, float %521)  ; FAbs(value)
  %523 = fadd fast float %522, %498
  %524 = fmul fast float %522, %514
  %525 = fsub fast float %499, %524
  br label %526

; <label>:526                                     ; preds = %520, %515
  %527 = phi float [ %517, %515 ], [ %523, %520 ]
  %528 = phi float [ %519, %515 ], [ %525, %520 ]
  %529 = fcmp fast olt float %508, %357
  %530 = icmp slt i32 %505, 3
  %531 = and i1 %530, %529
  br i1 %531, label %497, label %532

; <label>:532                                     ; preds = %526
  br label %533

; <label>:533                                     ; preds = %532, %490
  %534 = phi float [ %355, %490 ], [ %527, %532 ]
  %535 = phi float [ %356, %490 ], [ %528, %532 ]
  %536 = fsub fast float %271, %534
  %537 = select i1 %273, float %534, float %536
  %538 = extractvalue %dx.types.CBufRet.f32 %211, 0
  %539 = extractvalue %dx.types.CBufRet.f32 %211, 1
  %540 = extractvalue %dx.types.CBufRet.f32 %211, 2
  %541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %542 = extractvalue %dx.types.CBufRet.f32 %541, 0
  %543 = extractvalue %dx.types.CBufRet.f32 %541, 1
  %544 = extractvalue %dx.types.CBufRet.f32 %541, 2
  %545 = extractvalue %dx.types.CBufRet.f32 %541, 3
  %546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %547 = extractvalue %dx.types.CBufRet.f32 %546, 3
  %548 = call float @dx.op.binary.f32(i32 36, float %535, float %547)  ; FMin(a,b)
  %549 = fmul fast float %545, %537
  %550 = call float @dx.op.unary.f32(i32 7, float %549)  ; Saturate(value)
  %551 = fsub fast float %542, %538
  %552 = fsub fast float %543, %539
  %553 = fsub fast float %544, %540
  %554 = fmul fast float %550, %551
  %555 = fmul fast float %550, %552
  %556 = fmul fast float %550, %553
  %557 = fadd fast float %554, %538
  %558 = fadd fast float %555, %539
  %559 = fadd fast float %556, %540
  br i1 %104, label %572, label %560, !dx.controlflow.hints !50

; <label>:560                                     ; preds = %533
  %561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %562 = extractvalue %dx.types.CBufRet.f32 %561, 0
  %563 = extractvalue %dx.types.CBufRet.f32 %561, 1
  %564 = fadd fast float %563, %562
  %565 = call float @dx.op.unary.f32(i32 7, float %564)  ; Saturate(value)
  %566 = extractvalue %dx.types.CBufRet.f32 %561, 2
  %567 = extractvalue %dx.types.CBufRet.f32 %561, 3
  %568 = fadd fast float %567, %566
  %569 = call float @dx.op.unary.f32(i32 7, float %568)  ; Saturate(value)
  %570 = fmul fast float %565, %548
  %571 = fmul fast float %570, %569
  br label %572

; <label>:572                                     ; preds = %560, %533, %478, %452, %319, %287, %269, %267
  %573 = phi float [ 0.000000e+00, %267 ], [ 0.000000e+00, %269 ], [ %296, %319 ], [ %296, %287 ], [ %455, %478 ], [ %455, %452 ], [ %537, %560 ], [ %537, %533 ]
  %574 = phi float [ 0.000000e+00, %267 ], [ 0.000000e+00, %269 ], [ %330, %319 ], [ %307, %287 ], [ %489, %478 ], [ %466, %452 ], [ %571, %560 ], [ %548, %533 ]
  %575 = phi float [ 0.000000e+00, %267 ], [ 0.000000e+00, %269 ], [ %316, %319 ], [ %316, %287 ], [ %475, %478 ], [ %475, %452 ], [ %557, %560 ], [ %557, %533 ]
  %576 = phi float [ 0.000000e+00, %267 ], [ 0.000000e+00, %269 ], [ %317, %319 ], [ %317, %287 ], [ %476, %478 ], [ %476, %452 ], [ %558, %560 ], [ %558, %533 ]
  %577 = phi float [ 0.000000e+00, %267 ], [ 0.000000e+00, %269 ], [ %318, %319 ], [ %318, %287 ], [ %477, %478 ], [ %477, %452 ], [ %559, %560 ], [ %559, %533 ]
  %578 = fmul fast float %207, %574
  %579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %580 = extractvalue %dx.types.CBufRet.f32 %579, 2
  %581 = fsub fast float %217, %580
  %582 = fcmp fast olt float %578, -2.000000e+01
  %583 = call float @dx.op.unary.f32(i32 21, float %578)  ; Exp(value)
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 2
  %586 = extractvalue %dx.types.CBufRet.f32 %584, 3
  %587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %588 = extractvalue %dx.types.CBufRet.f32 %587, 2
  %589 = fmul fast float %586, %581
  %590 = call float @dx.op.unary.f32(i32 7, float %589)  ; Saturate(value)
  %591 = fsub fast float 1.000000e+00, %590
  %592 = fmul fast float %183, 5.000000e-01
  %593 = fadd fast float %592, 5.000000e-01
  %594 = call float @dx.op.unary.f32(i32 7, float %593)  ; Saturate(value)
  %595 = fsub fast float 1.000000e+00, %594
  %596 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %591)  ; FMax(a,b)
  %597 = fdiv fast float %595, %596
  %598 = fsub fast float %581, %146
  %599 = call float @dx.op.unary.f32(i32 6, float %598)  ; FAbs(value)
  %600 = fmul fast float %599, %585
  %601 = call float @dx.op.unary.f32(i32 7, float %597)  ; Saturate(value)
  %602 = fsub fast float 1.000000e+00, %600
  %603 = fmul fast float %602, %601
  %604 = fadd fast float %603, %600
  %605 = fmul fast float %588, %581
  %606 = call float @dx.op.unary.f32(i32 7, float %605)  ; Saturate(value)
  %607 = fsub fast float 1.000000e+00, %604
  %608 = fmul fast float %607, %606
  %609 = fadd fast float %608, %604
  %610 = call float @dx.op.unary.f32(i32 7, float %609)  ; Saturate(value)
  %611 = fadd fast float %583, -1.000000e+00
  %612 = select i1 %582, float -1.000000e+00, float %611
  %613 = fmul fast float %610, %612
  %614 = fadd fast float %613, 1.000000e+00
  %615 = fsub fast float -0.000000e+00, %613
  %616 = fmul fast float %575, %615
  %617 = fmul fast float %576, %615
  %618 = fmul fast float %577, %615
  br label %619

; <label>:619                                     ; preds = %572, %197
  %620 = phi float [ %573, %572 ], [ 0.000000e+00, %197 ]
  %621 = phi float [ %614, %572 ], [ 1.000000e+00, %197 ]
  %622 = phi float [ %616, %572 ], [ 0.000000e+00, %197 ]
  %623 = phi float [ %617, %572 ], [ 0.000000e+00, %197 ]
  %624 = phi float [ %618, %572 ], [ 0.000000e+00, %197 ]
  %625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %626 = extractvalue %dx.types.CBufRet.f32 %625, 1
  %627 = fsub fast float 1.000000e+00, %621
  %628 = fmul fast float %627, %198
  %629 = fmul fast float %628, %626
  %630 = fsub fast float %198, %629
  br i1 %176, label %631, label %663, !dx.controlflow.hints !92

; <label>:631                                     ; preds = %619
  %632 = fmul fast float %201, %173
  %633 = fadd fast float %632, %174
  %634 = call float @dx.op.unary.f32(i32 7, float %633)  ; Saturate(value)
  %635 = fmul fast float %155, %630
  %636 = fsub fast float -0.000000e+00, %635
  %637 = fmul fast float %156, %630
  %638 = fsub fast float -0.000000e+00, %637
  %639 = call float @dx.op.unary.f32(i32 21, float %636)  ; Exp(value)
  %640 = call float @dx.op.unary.f32(i32 21, float %638)  ; Exp(value)
  %641 = call float @dx.op.binary.f32(i32 35, float %163, float %639)  ; FMax(a,b)
  %642 = call float @dx.op.binary.f32(i32 35, float %163, float %640)  ; FMax(a,b)
  %643 = fsub fast float %642, %641
  %644 = fmul fast float %643, %634
  %645 = fadd fast float %644, %641
  %646 = call float @dx.op.unary.f32(i32 7, float %645)  ; Saturate(value)
  %647 = fmul fast float %199, %177
  %648 = fsub fast float 1.000000e+00, %647
  %649 = select i1 %104, float %648, float %646
  %650 = fsub fast float %160, %165
  %651 = fsub fast float %161, %166
  %652 = fsub fast float %162, %167
  %653 = fmul fast float %634, %650
  %654 = fmul fast float %634, %651
  %655 = fmul fast float %634, %652
  %656 = fadd fast float %653, %165
  %657 = fadd fast float %654, %166
  %658 = fadd fast float %655, %167
  %659 = fsub fast float 1.000000e+00, %649
  %660 = fmul fast float %659, %656
  %661 = fmul fast float %659, %657
  %662 = fmul fast float %659, %658
  br label %734

; <label>:663                                     ; preds = %619
  %664 = fmul fast float %630, %172
  %665 = call float @dx.op.unary.f32(i32 7, float %664)  ; Saturate(value)
  %666 = fsub fast float 2.000000e+00, %665
  %667 = fmul fast float %665, 9.921875e-01
  %668 = fmul fast float %667, %666
  %669 = fadd fast float %668, 3.906250e-03
  %670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %24, float %669, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %671 = extractvalue %dx.types.ResRet.f32 %670, 0
  %672 = fsub fast float %665, %671
  %673 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %672)  ; FMax(a,b)
  %674 = fmul fast float %200, %158
  %675 = call float @dx.op.unary.f32(i32 6, float %674)  ; FAbs(value)
  %676 = fcmp fast ogt float %675, 0x3EB0C6F7A0000000
  br i1 %676, label %677, label %683, !dx.controlflow.hints !93

; <label>:677                                     ; preds = %663
  %678 = fmul fast float %674, 0xBFF7154760000000
  %679 = call float @dx.op.unary.f32(i32 21, float %678)  ; Exp(value)
  %680 = fsub fast float 1.000000e+00, %679
  %681 = fdiv fast float %680, %674
  %682 = fmul fast float %681, %168
  br label %683

; <label>:683                                     ; preds = %677, %663
  %684 = phi float [ %682, %677 ], [ %168, %663 ]
  %685 = fadd fast float %684, %170
  %686 = fmul fast float %685, %673
  %687 = fmul fast float %155, %686
  %688 = fsub fast float -0.000000e+00, %687
  %689 = fmul fast float %156, %686
  %690 = fsub fast float -0.000000e+00, %689
  %691 = fmul fast float %157, %686
  %692 = fsub fast float -0.000000e+00, %691
  %693 = call float @dx.op.unary.f32(i32 21, float %688)  ; Exp(value)
  %694 = call float @dx.op.unary.f32(i32 21, float %690)  ; Exp(value)
  %695 = call float @dx.op.unary.f32(i32 21, float %692)  ; Exp(value)
  br i1 %104, label %696, label %704, !dx.controlflow.hints !94

; <label>:696                                     ; preds = %683
  %697 = fmul fast float %693, %199
  %698 = fmul fast float %694, %199
  %699 = fmul fast float %695, %199
  %700 = fsub fast float 1.000000e+00, %199
  %701 = fadd fast float %697, %700
  %702 = fadd fast float %698, %700
  %703 = fadd fast float %699, %700
  br label %704

; <label>:704                                     ; preds = %696, %683
  %705 = phi float [ %701, %696 ], [ %693, %683 ]
  %706 = phi float [ %702, %696 ], [ %694, %683 ]
  %707 = phi float [ %703, %696 ], [ %695, %683 ]
  %708 = fmul fast float %201, %201
  %709 = fadd fast float %708, 1.000000e+00
  %710 = fmul fast float %709, 0x3FAE8EC8A0000000
  %711 = fmul fast float %710, %165
  %712 = fmul fast float %710, %166
  %713 = fmul fast float %710, %167
  %714 = fmul fast float %201, %163
  %715 = fsub fast float 1.000000e+00, %714
  %716 = fmul fast float %163, %163
  %717 = fsub fast float 1.000000e+00, %716
  %718 = fmul fast float %717, 0x3FB45F3060000000
  %719 = fmul fast float %715, %715
  %720 = fdiv fast float 1.000000e+00, %719
  %721 = fmul fast float %718, %720
  %722 = fmul fast float %721, %160
  %723 = fmul fast float %721, %161
  %724 = fmul fast float %721, %162
  %725 = fadd fast float %722, %711
  %726 = fadd fast float %723, %712
  %727 = fadd fast float %724, %713
  %728 = fsub fast float 1.000000e+00, %705
  %729 = fsub fast float 1.000000e+00, %706
  %730 = fsub fast float 1.000000e+00, %707
  %731 = fmul fast float %725, %728
  %732 = fmul fast float %726, %729
  %733 = fmul fast float %727, %730
  br label %734

; <label>:734                                     ; preds = %704, %631
  %735 = phi float [ %660, %631 ], [ %731, %704 ]
  %736 = phi float [ %661, %631 ], [ %732, %704 ]
  %737 = phi float [ %662, %631 ], [ %733, %704 ]
  %738 = phi float [ %649, %631 ], [ %705, %704 ]
  %739 = phi float [ %649, %631 ], [ %706, %704 ]
  %740 = phi float [ %649, %631 ], [ %707, %704 ]
  br i1 %209, label %741, label %939, !dx.controlflow.hints !95

; <label>:741                                     ; preds = %734
  %742 = extractvalue %dx.types.CBufRet.f32 %625, 0
  %743 = fmul fast float %742, %627
  %744 = fsub fast float %622, %735
  %745 = fsub fast float %623, %736
  %746 = fsub fast float %624, %737
  %747 = fmul fast float %743, %744
  %748 = fmul fast float %743, %745
  %749 = fmul fast float %743, %746
  %750 = fadd fast float %747, %735
  %751 = fadd fast float %748, %736
  %752 = fadd fast float %749, %737
  %753 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %738)  ; FMax(a,b)
  %754 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %739)  ; FMax(a,b)
  %755 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %740)  ; FMax(a,b)
  %756 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %621)  ; FMax(a,b)
  %757 = call float @dx.op.binary.f32(i32 35, float %620, float %630)  ; FMax(a,b)
  %758 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %757)  ; FMax(a,b)
  %759 = fdiv fast float %620, %758
  %760 = call float @dx.op.unary.f32(i32 7, float %759)  ; Saturate(value)
  %761 = fdiv fast float %630, %758
  %762 = call float @dx.op.unary.f32(i32 7, float %761)  ; Saturate(value)
  %763 = fcmp fast une float %756, 1.000000e+00
  br i1 %763, label %764, label %777, !dx.controlflow.hints !96

; <label>:764                                     ; preds = %741
  %765 = call float @dx.op.unary.f32(i32 23, float %756)  ; Log(value)
  %766 = fmul fast float %765, 0x3FE62E4300000000
  %767 = fmul fast float %622, %766
  %768 = fsub fast float -0.000000e+00, %767
  %769 = fmul fast float %623, %766
  %770 = fsub fast float -0.000000e+00, %769
  %771 = fmul fast float %624, %766
  %772 = fsub fast float -0.000000e+00, %771
  %773 = fsub fast float 1.000000e+00, %756
  %774 = fdiv fast float %768, %773
  %775 = fdiv fast float %770, %773
  %776 = fdiv fast float %772, %773
  br label %777

; <label>:777                                     ; preds = %764, %741
  %778 = phi float [ %774, %764 ], [ %622, %741 ]
  %779 = phi float [ %775, %764 ], [ %623, %741 ]
  %780 = phi float [ %776, %764 ], [ %624, %741 ]
  %781 = phi float [ %766, %764 ], [ 0.000000e+00, %741 ]
  %782 = fcmp fast une float %753, 1.000000e+00
  br i1 %782, label %783, label %790, !dx.controlflow.hints !97

; <label>:783                                     ; preds = %777
  %784 = call float @dx.op.unary.f32(i32 23, float %753)  ; Log(value)
  %785 = fmul fast float %784, 0x3FE62E4300000000
  %786 = fmul fast float %750, %785
  %787 = fsub fast float -0.000000e+00, %786
  %788 = fsub fast float 1.000000e+00, %753
  %789 = fdiv fast float %787, %788
  br label %790

; <label>:790                                     ; preds = %783, %777
  %791 = phi float [ %789, %783 ], [ %750, %777 ]
  %792 = phi float [ %785, %783 ], [ 0.000000e+00, %777 ]
  %793 = fcmp fast une float %754, 1.000000e+00
  br i1 %793, label %794, label %801, !dx.controlflow.hints !97

; <label>:794                                     ; preds = %790
  %795 = call float @dx.op.unary.f32(i32 23, float %754)  ; Log(value)
  %796 = fmul fast float %795, 0x3FE62E4300000000
  %797 = fmul fast float %751, %796
  %798 = fsub fast float -0.000000e+00, %797
  %799 = fsub fast float 1.000000e+00, %754
  %800 = fdiv fast float %798, %799
  br label %801

; <label>:801                                     ; preds = %794, %790
  %802 = phi float [ %800, %794 ], [ %751, %790 ]
  %803 = phi float [ %796, %794 ], [ 0.000000e+00, %790 ]
  %804 = fcmp fast une float %755, 1.000000e+00
  br i1 %804, label %805, label %812, !dx.controlflow.hints !97

; <label>:805                                     ; preds = %801
  %806 = call float @dx.op.unary.f32(i32 23, float %755)  ; Log(value)
  %807 = fmul fast float %806, 0x3FE62E4300000000
  %808 = fmul fast float %752, %807
  %809 = fsub fast float -0.000000e+00, %808
  %810 = fsub fast float 1.000000e+00, %755
  %811 = fdiv fast float %809, %810
  br label %812

; <label>:812                                     ; preds = %805, %801
  %813 = phi float [ %811, %805 ], [ %752, %801 ]
  %814 = phi float [ %807, %805 ], [ 0.000000e+00, %801 ]
  %815 = fmul fast float %778, %762
  %816 = fmul fast float %779, %762
  %817 = fmul fast float %780, %762
  %818 = fmul fast float %781, %762
  %819 = fmul fast float %791, %760
  %820 = fmul fast float %802, %760
  %821 = fmul fast float %813, %760
  %822 = fmul fast float %792, %760
  %823 = fmul fast float %803, %760
  %824 = fmul fast float %814, %760
  %825 = fadd fast float %819, %815
  %826 = fadd fast float %820, %816
  %827 = fadd fast float %821, %817
  %828 = fadd fast float %822, %818
  %829 = fadd fast float %823, %818
  %830 = fadd fast float %824, %818
  %831 = fcmp fast une float %828, 0.000000e+00
  br i1 %831, label %832, label %839, !dx.controlflow.hints !98

; <label>:832                                     ; preds = %812
  %833 = fmul fast float %828, 0x3FF7154760000000
  %834 = call float @dx.op.unary.f32(i32 21, float %833)  ; Exp(value)
  %835 = fsub fast float 1.000000e+00, %834
  %836 = fmul fast float %825, %835
  %837 = fsub fast float -0.000000e+00, %836
  %838 = fdiv fast float %837, %828
  br label %839

; <label>:839                                     ; preds = %832, %812
  %840 = phi float [ %834, %832 ], [ 1.000000e+00, %812 ]
  %841 = phi float [ %838, %832 ], [ %825, %812 ]
  %842 = fcmp fast une float %829, 0.000000e+00
  br i1 %842, label %843, label %850, !dx.controlflow.hints !98

; <label>:843                                     ; preds = %839
  %844 = fmul fast float %829, 0x3FF7154760000000
  %845 = call float @dx.op.unary.f32(i32 21, float %844)  ; Exp(value)
  %846 = fsub fast float 1.000000e+00, %845
  %847 = fmul fast float %826, %846
  %848 = fsub fast float -0.000000e+00, %847
  %849 = fdiv fast float %848, %829
  br label %850

; <label>:850                                     ; preds = %843, %839
  %851 = phi float [ %845, %843 ], [ 1.000000e+00, %839 ]
  %852 = phi float [ %849, %843 ], [ %826, %839 ]
  %853 = fcmp fast une float %830, 0.000000e+00
  br i1 %853, label %854, label %861, !dx.controlflow.hints !98

; <label>:854                                     ; preds = %850
  %855 = fmul fast float %830, 0x3FF7154760000000
  %856 = call float @dx.op.unary.f32(i32 21, float %855)  ; Exp(value)
  %857 = fsub fast float 1.000000e+00, %856
  %858 = fmul fast float %827, %857
  %859 = fsub fast float -0.000000e+00, %858
  %860 = fdiv fast float %859, %830
  br label %861

; <label>:861                                     ; preds = %854, %850
  %862 = phi float [ %856, %854 ], [ 1.000000e+00, %850 ]
  %863 = phi float [ %860, %854 ], [ %827, %850 ]
  %864 = fcmp fast ogt float %760, %762
  br i1 %864, label %865, label %885, !dx.controlflow.hints !99

; <label>:865                                     ; preds = %861
  %866 = fsub fast float 1.000000e+00, %762
  %867 = fmul fast float %778, %866
  %868 = fmul fast float %779, %866
  %869 = fmul fast float %780, %866
  %870 = fmul fast float %781, %866
  %871 = fcmp fast une float %870, 0.000000e+00
  br i1 %871, label %872, label %923, !dx.controlflow.hints !100

; <label>:872                                     ; preds = %865
  %873 = fmul fast float %870, 0x3FF7154760000000
  %874 = call float @dx.op.unary.f32(i32 21, float %873)  ; Exp(value)
  %875 = fsub fast float 1.000000e+00, %874
  %876 = fmul fast float %867, %875
  %877 = fsub fast float -0.000000e+00, %876
  %878 = fmul fast float %868, %875
  %879 = fsub fast float -0.000000e+00, %878
  %880 = fmul fast float %869, %875
  %881 = fsub fast float -0.000000e+00, %880
  %882 = fdiv fast float %877, %870
  %883 = fdiv fast float %879, %870
  %884 = fdiv fast float %881, %870
  br label %923

; <label>:885                                     ; preds = %861
  %886 = fsub fast float 1.000000e+00, %760
  %887 = fmul fast float %791, %886
  %888 = fmul fast float %802, %886
  %889 = fmul fast float %813, %886
  %890 = fmul fast float %792, %886
  %891 = fmul fast float %803, %886
  %892 = fmul fast float %814, %886
  %893 = fcmp fast une float %890, 0.000000e+00
  br i1 %893, label %894, label %901, !dx.controlflow.hints !98

; <label>:894                                     ; preds = %885
  %895 = fmul fast float %890, 0x3FF7154760000000
  %896 = call float @dx.op.unary.f32(i32 21, float %895)  ; Exp(value)
  %897 = fsub fast float 1.000000e+00, %896
  %898 = fmul fast float %887, %897
  %899 = fsub fast float -0.000000e+00, %898
  %900 = fdiv fast float %899, %890
  br label %901

; <label>:901                                     ; preds = %894, %885
  %902 = phi float [ %900, %894 ], [ %887, %885 ]
  %903 = phi float [ %896, %894 ], [ 1.000000e+00, %885 ]
  %904 = fcmp fast une float %891, 0.000000e+00
  br i1 %904, label %905, label %912, !dx.controlflow.hints !98

; <label>:905                                     ; preds = %901
  %906 = fmul fast float %891, 0x3FF7154760000000
  %907 = call float @dx.op.unary.f32(i32 21, float %906)  ; Exp(value)
  %908 = fsub fast float 1.000000e+00, %907
  %909 = fmul fast float %888, %908
  %910 = fsub fast float -0.000000e+00, %909
  %911 = fdiv fast float %910, %891
  br label %912

; <label>:912                                     ; preds = %905, %901
  %913 = phi float [ %911, %905 ], [ %888, %901 ]
  %914 = phi float [ %907, %905 ], [ 1.000000e+00, %901 ]
  %915 = fcmp fast une float %892, 0.000000e+00
  br i1 %915, label %916, label %923, !dx.controlflow.hints !98

; <label>:916                                     ; preds = %912
  %917 = fmul fast float %892, 0x3FF7154760000000
  %918 = call float @dx.op.unary.f32(i32 21, float %917)  ; Exp(value)
  %919 = fsub fast float 1.000000e+00, %918
  %920 = fmul fast float %889, %919
  %921 = fsub fast float -0.000000e+00, %920
  %922 = fdiv fast float %921, %892
  br label %923

; <label>:923                                     ; preds = %916, %912, %872, %865
  %924 = phi float [ %922, %916 ], [ %884, %872 ], [ %869, %865 ], [ %889, %912 ]
  %925 = phi float [ %913, %916 ], [ %883, %872 ], [ %868, %865 ], [ %913, %912 ]
  %926 = phi float [ %902, %916 ], [ %882, %872 ], [ %867, %865 ], [ %902, %912 ]
  %927 = phi float [ %918, %916 ], [ %874, %872 ], [ 1.000000e+00, %865 ], [ 1.000000e+00, %912 ]
  %928 = phi float [ %914, %916 ], [ %874, %872 ], [ 1.000000e+00, %865 ], [ %914, %912 ]
  %929 = phi float [ %903, %916 ], [ %874, %872 ], [ 1.000000e+00, %865 ], [ %903, %912 ]
  %930 = fmul fast float %929, %841
  %931 = fmul fast float %928, %852
  %932 = fmul fast float %927, %863
  %933 = fadd fast float %930, %926
  %934 = fadd fast float %931, %925
  %935 = fadd fast float %932, %924
  %936 = fmul fast float %929, %840
  %937 = fmul fast float %928, %851
  %938 = fmul fast float %927, %862
  br label %939

; <label>:939                                     ; preds = %923, %734
  %940 = phi float [ %938, %923 ], [ %740, %734 ]
  %941 = phi float [ %937, %923 ], [ %739, %734 ]
  %942 = phi float [ %936, %923 ], [ %738, %734 ]
  %943 = phi float [ %935, %923 ], [ %737, %734 ]
  %944 = phi float [ %934, %923 ], [ %736, %734 ]
  %945 = phi float [ %933, %923 ], [ %735, %734 ]
  %946 = fmul fast float %54, %105
  %947 = fmul fast float %55, %106
  %948 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %24, float %946, float %947, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %949 = extractvalue %dx.types.ResRet.f32 %948, 0
  %950 = extractvalue %dx.types.ResRet.f32 %948, 1
  %951 = extractvalue %dx.types.ResRet.f32 %948, 2
  %952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %953 = extractvalue %dx.types.CBufRet.f32 %952, 1
  %954 = fmul fast float %953, %949
  %955 = fmul fast float %953, %950
  %956 = fmul fast float %953, %951
  %957 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %24, float %946, float %947, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %958 = extractvalue %dx.types.ResRet.f32 %957, 0
  %959 = fmul fast float %958, %942
  %960 = fmul fast float %958, %941
  %961 = fmul fast float %958, %940
  %962 = fmul fast float %958, %945
  %963 = fmul fast float %958, %944
  %964 = fmul fast float %958, %943
  %965 = fadd fast float %962, %954
  %966 = fadd fast float %963, %955
  %967 = fadd fast float %964, %956
  br label %968

; <label>:968                                     ; preds = %939, %0
  %969 = phi float [ %965, %939 ], [ 0.000000e+00, %0 ]
  %970 = phi float [ %966, %939 ], [ 0.000000e+00, %0 ]
  %971 = phi float [ %967, %939 ], [ 0.000000e+00, %0 ]
  %972 = phi float [ %959, %939 ], [ 1.000000e+00, %0 ]
  %973 = phi float [ %960, %939 ], [ 1.000000e+00, %0 ]
  %974 = phi float [ %961, %939 ], [ 1.000000e+00, %0 ]
  %975 = phi float [ %110, %939 ], [ %71, %0 ]
  %976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %977 = extractvalue %dx.types.CBufRet.f32 %976, 2
  %978 = extractvalue %dx.types.CBufRet.f32 %976, 3
  %979 = fmul fast float %977, %105
  %980 = fmul fast float %978, %106
  %981 = call float @dx.op.unary.f32(i32 7, float %979)  ; Saturate(value)
  %982 = call float @dx.op.unary.f32(i32 7, float %980)  ; Saturate(value)
  %983 = select i1 %102, i32 2, i32 0
  %984 = or i32 %983, 1
  %985 = uitofp i32 %984 to float
  %986 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %24, float %981, float %982, float %985, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %987 = extractvalue %dx.types.ResRet.f32 %986, 0
  %988 = extractvalue %dx.types.ResRet.f32 %986, 1
  %989 = extractvalue %dx.types.ResRet.f32 %986, 2
  %990 = extractvalue %dx.types.ResRet.f32 %986, 3
  %991 = add nuw nsw i32 %983, 2
  %992 = uitofp i32 %991 to float
  %993 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %24, float %981, float %982, float %992, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %994 = extractvalue %dx.types.ResRet.f32 %993, 0
  %995 = extractvalue %dx.types.ResRet.f32 %993, 1
  %996 = extractvalue %dx.types.ResRet.f32 %993, 2
  %997 = extractvalue %dx.types.ResRet.f32 %993, 3
  %998 = call float @dx.op.binary.f32(i32 35, float %988, float %989)  ; FMax(a,b)
  %999 = call float @dx.op.binary.f32(i32 35, float %987, float %998)  ; FMax(a,b)
  %1000 = call float @dx.op.binary.f32(i32 35, float %999, float %990)  ; FMax(a,b)
  %1001 = call float @dx.op.binary.f32(i32 36, float %995, float %996)  ; FMin(a,b)
  %1002 = call float @dx.op.binary.f32(i32 36, float %994, float %1001)  ; FMin(a,b)
  %1003 = call float @dx.op.binary.f32(i32 36, float %1002, float %997)  ; FMin(a,b)
  %1004 = fmul fast float %1000, 2.550000e+02
  %1005 = fadd fast float %1004, 0x3F70101020000000
  %1006 = fptoui float %1005 to i32
  %1007 = fmul fast float %1003, 2.550000e+02
  %1008 = fadd fast float %1007, 0x3F70101020000000
  %1009 = fptoui float %1008 to i32
  %1010 = icmp ult i32 %1006, %1009
  br i1 %1010, label %1011, label %1179, !dx.controlflow.hints !101

; <label>:1011                                    ; preds = %968
  %1012 = fadd fast float %975, -4.000000e+00
  %1013 = call float @dx.op.binary.f32(i32 35, float %1012, float 0.000000e+00)  ; FMax(a,b)
  %1014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1015 = extractvalue %dx.types.CBufRet.f32 %1014, 0
  %1016 = fadd fast float %1015, %1013
  %1017 = extractvalue %dx.types.CBufRet.f32 %1014, 2
  %1018 = fmul fast float %1016, %1017
  %1019 = call float @dx.op.unary.f32(i32 23, float %1018)  ; Log(value)
  %1020 = extractvalue %dx.types.CBufRet.f32 %1014, 3
  %1021 = fmul fast float %1020, %1019
  %1022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.f32 %1022, 2
  %1024 = fmul fast float %1021, %1023
  %1025 = call float @dx.op.unary.f32(i32 7, float %1024)  ; Saturate(value)
  %1026 = select i1 %104, float 1.000000e+00, float %1025
  %1027 = uitofp i32 %1006 to float
  %1028 = uitofp i32 %1009 to float
  %1029 = fadd fast float %1027, 5.000000e-01
  %1030 = fadd fast float %1028, 5.000000e-01
  %1031 = fmul fast float %1023, %1029
  %1032 = fmul fast float %1023, %1030
  %1033 = fadd fast float %1031, 0x3F0FFB4800000000
  %1034 = fadd fast float %1032, 0xBF0FFB4800000000
  %1035 = call float @dx.op.binary.f32(i32 35, float %1026, float %1033)  ; FMax(a,b)
  %1036 = call float @dx.op.binary.f32(i32 36, float %1035, float %1034)  ; FMin(a,b)
  %1037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1038 = extractvalue %dx.types.CBufRet.f32 %1037, 1
  %1039 = extractvalue %dx.types.CBufRet.f32 %1037, 2
  %1040 = extractvalue %dx.types.CBufRet.f32 %1037, 0
  %1041 = select i1 %102, float %1040, float 0.000000e+00
  %1042 = fmul fast float %1038, %1036
  %1043 = fadd fast float %1041, %1042
  %1044 = fadd fast float %1041, %1039
  %1045 = fsub fast float %1038, %1039
  %1046 = fadd fast float %1045, %1041
  %1047 = call float @dx.op.binary.f32(i32 35, float %1043, float %1044)  ; FMax(a,b)
  %1048 = call float @dx.op.binary.f32(i32 36, float %1047, float %1046)  ; FMin(a,b)
  %1049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %23, float %981, float %982, float %1048, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1050 = extractvalue %dx.types.ResRet.f32 %1049, 0
  %1051 = extractvalue %dx.types.ResRet.f32 %1049, 1
  %1052 = extractvalue %dx.types.ResRet.f32 %1049, 2
  %1053 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %1054 = extractvalue %dx.types.CBufRet.i32 %1053, 0
  %1055 = extractvalue %dx.types.CBufRet.i32 %1053, 1
  %1056 = uitofp i32 %1054 to float
  %1057 = uitofp i32 %1055 to float
  %1058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %1059 = extractvalue %dx.types.CBufRet.f32 %1058, 0
  %1060 = extractvalue %dx.types.CBufRet.f32 %1058, 1
  %1061 = fmul fast float %1056, %981
  %1062 = fmul fast float %1057, %982
  %1063 = fadd fast float %1061, -5.000000e-01
  %1064 = fadd fast float %1062, -5.000000e-01
  %1065 = call float @dx.op.unary.f32(i32 22, float %1063)  ; Frc(value)
  %1066 = call float @dx.op.unary.f32(i32 22, float %1064)  ; Frc(value)
  %1067 = fmul fast float %1065, %1065
  %1068 = fmul fast float %1067, %1065
  %1069 = fsub fast float 3.000000e+00, %1065
  %1070 = fmul fast float %1067, %1069
  %1071 = fmul fast float %1065, 3.000000e+00
  %1072 = fmul fast float %1068, 3.000000e+00
  %1073 = fmul fast float %1067, 6.000000e+00
  %1074 = fsub fast float %1072, %1073
  %1075 = fadd fast float %1074, 4.000000e+00
  %1076 = fmul fast float %1075, 0x3FC5555560000000
  %1077 = fmul fast float %1068, -3.000000e+00
  %1078 = fadd fast float %1067, %1065
  %1079 = fmul fast float %1078, 3.000000e+00
  %1080 = fadd fast float %1077, 1.000000e+00
  %1081 = fadd fast float %1080, %1079
  %1082 = fmul fast float %1068, 0x3FC5555560000000
  %1083 = fmul fast float %1066, %1066
  %1084 = fmul fast float %1083, %1066
  %1085 = fsub fast float 3.000000e+00, %1066
  %1086 = fmul fast float %1083, %1085
  %1087 = fmul fast float %1066, 3.000000e+00
  %1088 = fmul fast float %1084, 3.000000e+00
  %1089 = fmul fast float %1083, 6.000000e+00
  %1090 = fsub fast float %1088, %1089
  %1091 = fadd fast float %1090, 4.000000e+00
  %1092 = fmul fast float %1091, 0x3FC5555560000000
  %1093 = fmul fast float %1084, -3.000000e+00
  %1094 = fadd fast float %1083, %1066
  %1095 = fmul fast float %1094, 3.000000e+00
  %1096 = fadd fast float %1093, 1.000000e+00
  %1097 = fadd fast float %1096, %1095
  %1098 = fmul fast float %1084, 0x3FC5555560000000
  %1099 = fadd fast float %1065, 1.000000e+00
  %1100 = fsub fast float 1.000000e+00, %1071
  %1101 = fadd fast float %1100, %1070
  %1102 = fadd fast float %1101, %1075
  %1103 = fmul fast float %1102, 0x3FC5555560000000
  %1104 = fdiv fast float %1076, %1103
  %1105 = fsub fast float %1099, %1104
  %1106 = fsub fast float 1.000000e+00, %1065
  %1107 = fadd fast float %1081, %1068
  %1108 = fmul fast float %1107, 0x3FC5555560000000
  %1109 = fdiv fast float %1082, %1108
  %1110 = fadd fast float %1106, %1109
  %1111 = fadd fast float %1066, 1.000000e+00
  %1112 = fsub fast float 1.000000e+00, %1087
  %1113 = fadd fast float %1112, %1086
  %1114 = fadd fast float %1113, %1091
  %1115 = fmul fast float %1114, 0x3FC5555560000000
  %1116 = fdiv fast float %1092, %1115
  %1117 = fsub fast float %1111, %1116
  %1118 = fsub fast float 1.000000e+00, %1066
  %1119 = fadd fast float %1097, %1084
  %1120 = fmul fast float %1119, 0x3FC5555560000000
  %1121 = fdiv fast float %1098, %1120
  %1122 = fadd fast float %1121, %1118
  %1123 = fmul fast float %1105, %1059
  %1124 = fsub fast float %981, %1123
  %1125 = fmul fast float %1110, %1059
  %1126 = fadd fast float %1125, %981
  %1127 = fmul fast float %1122, %1060
  %1128 = fadd fast float %1127, %982
  %1129 = fmul fast float %1117, %1060
  %1130 = fsub fast float %982, %1129
  %1131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %23, float %1124, float %1130, float %1048, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1132 = extractvalue %dx.types.ResRet.f32 %1131, 0
  %1133 = extractvalue %dx.types.ResRet.f32 %1131, 1
  %1134 = extractvalue %dx.types.ResRet.f32 %1131, 2
  %1135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %23, float %1126, float %1130, float %1048, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1136 = extractvalue %dx.types.ResRet.f32 %1135, 0
  %1137 = extractvalue %dx.types.ResRet.f32 %1135, 1
  %1138 = extractvalue %dx.types.ResRet.f32 %1135, 2
  %1139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %23, float %1124, float %1128, float %1048, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1140 = extractvalue %dx.types.ResRet.f32 %1139, 0
  %1141 = extractvalue %dx.types.ResRet.f32 %1139, 1
  %1142 = extractvalue %dx.types.ResRet.f32 %1139, 2
  %1143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %23, float %1126, float %1128, float %1048, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1144 = extractvalue %dx.types.ResRet.f32 %1143, 0
  %1145 = extractvalue %dx.types.ResRet.f32 %1143, 1
  %1146 = extractvalue %dx.types.ResRet.f32 %1143, 2
  %1147 = fsub fast float %1140, %1132
  %1148 = fsub fast float %1141, %1133
  %1149 = fsub fast float %1142, %1134
  %1150 = fmul fast float %1147, %1120
  %1151 = fmul fast float %1148, %1120
  %1152 = fmul fast float %1149, %1120
  %1153 = fadd fast float %1150, %1132
  %1154 = fadd fast float %1151, %1133
  %1155 = fadd fast float %1152, %1134
  %1156 = fsub fast float %1144, %1136
  %1157 = fsub fast float %1145, %1137
  %1158 = fsub fast float %1146, %1138
  %1159 = fmul fast float %1156, %1120
  %1160 = fmul fast float %1157, %1120
  %1161 = fmul fast float %1158, %1120
  %1162 = fsub fast float %1136, %1153
  %1163 = fadd fast float %1162, %1159
  %1164 = fsub fast float %1137, %1154
  %1165 = fadd fast float %1164, %1160
  %1166 = fsub fast float %1138, %1155
  %1167 = fadd fast float %1166, %1161
  %1168 = fmul fast float %1163, %1108
  %1169 = fmul fast float %1165, %1108
  %1170 = fmul fast float %1167, %1108
  %1171 = fadd fast float %1168, %1153
  %1172 = fadd fast float %1169, %1154
  %1173 = fadd fast float %1170, %1155
  %1174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1175 = extractvalue %dx.types.CBufRet.f32 %1174, 1
  %1176 = fmul fast float %1171, %1175
  %1177 = fmul fast float %1172, %1175
  %1178 = fmul fast float %1173, %1175
  br label %1179

; <label>:1179                                    ; preds = %1011, %968
  %1180 = phi float [ %1050, %1011 ], [ 1.000000e+00, %968 ]
  %1181 = phi float [ %1051, %1011 ], [ 1.000000e+00, %968 ]
  %1182 = phi float [ %1052, %1011 ], [ 1.000000e+00, %968 ]
  %1183 = phi float [ %1176, %1011 ], [ 0.000000e+00, %968 ]
  %1184 = phi float [ %1177, %1011 ], [ 0.000000e+00, %968 ]
  %1185 = phi float [ %1178, %1011 ], [ 0.000000e+00, %968 ]
  %1186 = fmul fast float %1180, %972
  %1187 = fmul fast float %1181, %973
  %1188 = fmul fast float %1182, %974
  %1189 = fmul fast float %1180, %969
  %1190 = fmul fast float %1181, %970
  %1191 = fmul fast float %1182, %971
  %1192 = fadd fast float %1183, %1189
  %1193 = fadd fast float %1184, %1190
  %1194 = fadd fast float %1185, %1191
  %1195 = fmul fast float %54, %105
  %1196 = fmul fast float %55, %106
  %1197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1198 = extractvalue %dx.types.CBufRet.f32 %1197, 2
  %1199 = fmul fast float %1198, 0x3FE3C6EF40000000
  %1200 = frem fast float %51, 2.560000e+02
  %1201 = frem fast float %52, 2.560000e+02
  %1202 = fptoui float %1200 to i32
  %1203 = fptoui float %1201 to i32
  %1204 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1202, i32 %1203, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1205 = extractvalue %dx.types.ResRet.f32 %1204, 0
  %1206 = fadd fast float %1205, %1199
  %1207 = call float @dx.op.unary.f32(i32 22, float %1206)  ; Frc(value)
  %1208 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %49, i32 %50, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1209 = extractvalue %dx.types.ResRet.f32 %1208, 0
  %1210 = extractvalue %dx.types.ResRet.f32 %1208, 1
  %1211 = extractvalue %dx.types.ResRet.f32 %1208, 2
  %1212 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %49, i32 %50, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1213 = extractvalue %dx.types.ResRet.f32 %1212, 0
  %1214 = extractvalue %dx.types.ResRet.f32 %1212, 1
  %1215 = extractvalue %dx.types.ResRet.f32 %1212, 2
  %1216 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %49, i32 %50, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1217 = extractvalue %dx.types.ResRet.f32 %1216, 0
  %1218 = extractvalue %dx.types.ResRet.f32 %1216, 1
  %1219 = extractvalue %dx.types.ResRet.f32 %1216, 2
  %1220 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %49, i32 %50, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1221 = extractvalue %dx.types.ResRet.f32 %1220, 0
  %1222 = extractvalue %dx.types.ResRet.f32 %1220, 1
  %1223 = call float @dx.op.binary.f32(i32 35, float %1221, float %1222)  ; FMax(a,b)
  %1224 = fcmp fast ult float %1223, 0x3F70101020000000
  br i1 %1224, label %1456, label %1225, !dx.controlflow.hints !102

; <label>:1225                                    ; preds = %1179
  %1226 = fmul fast float %1222, 2.000000e+00
  %1227 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1226)  ; FMax(a,b)
  %1228 = fmul fast float %1221, 2.000000e+00
  %1229 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1228)  ; FMax(a,b)
  %1230 = extractvalue %dx.types.ResRet.f32 %1216, 3
  %1231 = fmul fast float %1230, 2.000000e+00
  %1232 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1231)  ; FMax(a,b)
  %1233 = fmul fast float %1219, %1219
  %1234 = fmul fast float %1218, %1218
  %1235 = fmul fast float %1217, %1217
  %1236 = fadd fast float %1235, 0xBFD51EB860000000
  %1237 = fadd fast float %1234, 0xBFD51EB860000000
  %1238 = fadd fast float %1233, 0xBFD51EB860000000
  %1239 = fmul fast float %1236, %1236
  %1240 = fmul fast float %1237, %1237
  %1241 = fmul fast float %1238, %1238
  %1242 = fmul fast float %1239, %1239
  %1243 = fmul fast float %1242, 1.000000e+02
  %1244 = fmul fast float %1240, %1240
  %1245 = fmul fast float %1244, 1.000000e+02
  %1246 = fmul fast float %1241, %1241
  %1247 = fmul fast float %1246, 1.000000e+02
  %1248 = fadd fast float %1243, 3.500000e+00
  %1249 = fadd fast float %1245, 3.500000e+00
  %1250 = fadd fast float %1247, 3.500000e+00
  %1251 = fdiv fast float %1248, %1232
  %1252 = fdiv fast float %1249, %1229
  %1253 = fdiv fast float %1250, %1227
  %1254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1255 = extractvalue %dx.types.CBufRet.f32 %1254, 0
  %1256 = extractvalue %dx.types.CBufRet.f32 %1254, 1
  %1257 = fmul fast float %1255, %71
  %1258 = fmul fast float %1256, %71
  %1259 = fdiv fast float 1.000000e+00, %1257
  %1260 = fdiv fast float 1.000000e+00, %1258
  %1261 = fmul fast float %54, 5.000000e-01
  %1262 = fmul fast float %1261, %1257
  %1263 = fmul fast float %1251, 0xBFF7154760000000
  %1264 = fmul fast float %1263, %1262
  %1265 = call float @dx.op.unary.f32(i32 21, float %1264)  ; Exp(value)
  %1266 = fmul fast float %1265, 2.500000e-01
  %1267 = fsub fast float 1.000000e+00, %1266
  %1268 = fmul fast float %1251, 0xBFDEC709E0000000
  %1269 = fmul fast float %1268, %1262
  %1270 = call float @dx.op.unary.f32(i32 21, float %1269)  ; Exp(value)
  %1271 = fmul fast float %1270, 7.500000e-01
  %1272 = fsub fast float %1267, %1271
  %1273 = fmul fast float %1252, 0xBFF7154760000000
  %1274 = fmul fast float %1273, %1262
  %1275 = call float @dx.op.unary.f32(i32 21, float %1274)  ; Exp(value)
  %1276 = fmul fast float %1275, 2.500000e-01
  %1277 = fsub fast float 1.000000e+00, %1276
  %1278 = fmul fast float %1252, 0xBFDEC709E0000000
  %1279 = fmul fast float %1278, %1262
  %1280 = call float @dx.op.unary.f32(i32 21, float %1279)  ; Exp(value)
  %1281 = fmul fast float %1280, 7.500000e-01
  %1282 = fsub fast float %1277, %1281
  %1283 = fmul fast float %1253, 0xBFF7154760000000
  %1284 = fmul fast float %1283, %1262
  %1285 = call float @dx.op.unary.f32(i32 21, float %1284)  ; Exp(value)
  %1286 = fmul fast float %1285, 2.500000e-01
  %1287 = fsub fast float 1.000000e+00, %1286
  %1288 = fmul fast float %1253, 0xBFDEC709E0000000
  %1289 = fmul fast float %1288, %1262
  %1290 = call float @dx.op.unary.f32(i32 21, float %1289)  ; Exp(value)
  %1291 = fmul fast float %1290, 7.500000e-01
  %1292 = fsub fast float %1287, %1291
  %1293 = fmul fast float %1213, 0x3F1A36E2E0000000
  %1294 = fmul fast float %1214, 0x3F1A36E2E0000000
  %1295 = fmul fast float %1215, 0x3F1A36E2E0000000
  %1296 = call float @dx.op.binary.f32(i32 36, float %1252, float %1253)  ; FMin(a,b)
  %1297 = call float @dx.op.binary.f32(i32 36, float %1251, float %1296)  ; FMin(a,b)
  %1298 = call float @dx.op.binary.f32(i32 36, float %1282, float %1292)  ; FMin(a,b)
  %1299 = call float @dx.op.binary.f32(i32 36, float %1272, float %1298)  ; FMin(a,b)
  %1300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1301 = extractvalue %dx.types.CBufRet.f32 %1300, 2
  %1302 = fmul fast float %1301, %1257
  %1303 = fmul fast float %1297, 0xBFF7154760000000
  %1304 = fmul fast float %1303, %1302
  %1305 = call float @dx.op.unary.f32(i32 21, float %1304)  ; Exp(value)
  %1306 = fmul fast float %1305, 2.500000e-01
  %1307 = fsub fast float 1.000000e+00, %1306
  %1308 = fmul fast float %1297, 0xBFDEC709E0000000
  %1309 = fmul fast float %1308, %1302
  %1310 = call float @dx.op.unary.f32(i32 21, float %1309)  ; Exp(value)
  %1311 = fmul fast float %1310, 7.500000e-01
  %1312 = fsub fast float %1307, %1311
  %1313 = extractvalue %dx.types.CBufRet.f32 %1300, 3
  %1314 = call float @dx.op.binary.f32(i32 36, float %1313, float %1312)  ; FMin(a,b)
  %1315 = fsub fast float %1314, %1299
  %1316 = call float @dx.op.unary.f32(i32 7, float %1315)  ; Saturate(value)
  %1317 = call float @dx.op.unary.f32(i32 7, float %1299)  ; Saturate(value)
  %1318 = extractvalue %dx.types.CBufRet.f32 %1300, 0
  %1319 = fmul fast float %1318, %1316
  %1320 = fptoui float %1319 to i32
  %1321 = uitofp i32 %1320 to float
  %1322 = fdiv fast float 1.000000e+00, %1321
  %1323 = icmp eq i32 %1320, 0
  br i1 %1323, label %1434, label %1324

; <label>:1324                                    ; preds = %1225
  %1325 = fmul fast float %1253, 0x3FA45F3060000000
  %1326 = fmul fast float %1297, 0x3FA45F3060000000
  br label %1327

; <label>:1327                                    ; preds = %1327, %1324
  %1328 = phi float [ %1425, %1327 ], [ %1293, %1324 ]
  %1329 = phi float [ %1426, %1327 ], [ %1294, %1324 ]
  %1330 = phi float [ %1427, %1327 ], [ %1295, %1324 ]
  %1331 = phi float [ %1428, %1327 ], [ 0x3F1A36E2E0000000, %1324 ]
  %1332 = phi float [ %1429, %1327 ], [ 0x3F1A36E2E0000000, %1324 ]
  %1333 = phi float [ %1430, %1327 ], [ 0x3F1A36E2E0000000, %1324 ]
  %1334 = phi i32 [ %1431, %1327 ], [ 0, %1324 ]
  %1335 = sitofp i32 %1334 to float
  %1336 = fadd fast float %1335, %1207
  %1337 = fmul fast float %1322, %1316
  %1338 = fmul fast float %1337, %1336
  %1339 = fsub fast float 1.000000e+00, %1317
  %1340 = fsub fast float %1339, %1338
  %1341 = fmul fast float %1340, 4.000000e+00
  %1342 = fmul fast float %1340, 2.000000e+00
  %1343 = fmul fast float %1340, %1340
  %1344 = fmul fast float %1343, 4.000000e+00
  %1345 = fadd fast float %1344, 1.000000e+00
  %1346 = call float @dx.op.unary.f32(i32 24, float %1345)  ; Sqrt(value)
  %1347 = fadd fast float %1342, %1346
  %1348 = fmul fast float %1341, %1347
  %1349 = fadd fast float %1348, 1.000000e+00
  %1350 = call float @dx.op.unary.f32(i32 23, float %1349)  ; Log(value)
  %1351 = fmul fast float %1350, 0xBFD5555560000000
  %1352 = call float @dx.op.unary.f32(i32 21, float %1351)  ; Exp(value)
  %1353 = fmul fast float %1352, %1352
  %1354 = fmul fast float %1353, %1349
  %1355 = fadd fast float %1352, 1.000000e+00
  %1356 = fadd fast float %1355, %1354
  %1357 = fdiv fast float 2.500000e-01, %1340
  %1358 = fmul fast float %1356, %1357
  %1359 = call float @dx.op.unary.f32(i32 23, float %1358)  ; Log(value)
  %1360 = fmul fast float %1359, 0x4000A2B240000000
  %1361 = fdiv fast float %1360, %1297
  %1362 = fmul fast float %1303, %1361
  %1363 = call float @dx.op.unary.f32(i32 21, float %1362)  ; Exp(value)
  %1364 = fmul fast float %1308, %1361
  %1365 = call float @dx.op.unary.f32(i32 21, float %1364)  ; Exp(value)
  %1366 = fadd fast float %1365, %1363
  %1367 = fmul fast float %1326, %1366
  %1368 = fdiv fast float %1316, %1367
  %1369 = fmul fast float %1335, 0x3FF9E377A0000000
  %1370 = call float @dx.op.unary.f32(i32 22, float %1369)  ; Frc(value)
  %1371 = fadd fast float %1370, %1207
  %1372 = fmul fast float %1371, 0x401921FB60000000
  %1373 = call float @dx.op.unary.f32(i32 13, float %1372)  ; Sin(value)
  %1374 = call float @dx.op.unary.f32(i32 12, float %1372)  ; Cos(value)
  %1375 = fmul fast float %1361, %1259
  %1376 = fmul fast float %1375, %1374
  %1377 = fmul fast float %1361, %1260
  %1378 = fmul fast float %1377, %1373
  %1379 = fadd fast float %1376, %1195
  %1380 = fadd fast float %1378, %1196
  %1381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %24, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1382 = extractvalue %dx.types.ResRet.f32 %1381, 0
  %1383 = extractvalue %dx.types.ResRet.f32 %1381, 1
  %1384 = extractvalue %dx.types.ResRet.f32 %1381, 2
  %1385 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %24, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1386 = extractvalue %dx.types.ResRet.f32 %1385, 0
  %1387 = fcmp fast ogt float %1386, -1.000000e+00
  %1388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1389 = extractvalue %dx.types.CBufRet.f32 %1388, 1
  %1390 = select i1 %1387, float %1389, float 1.000000e+00
  %1391 = fadd fast float %1386, 1.000000e+00
  %1392 = fmul fast float %1390, %1391
  %1393 = call float @dx.op.unary.f32(i32 6, float %1392)  ; FAbs(value)
  %1394 = fsub fast float %71, %1393
  %1395 = fmul fast float %1361, %1361
  %1396 = fmul fast float %1394, %1394
  %1397 = fadd fast float %1396, %1395
  %1398 = call float @dx.op.unary.f32(i32 24, float %1397)  ; Sqrt(value)
  %1399 = fmul fast float %1263, %1398
  %1400 = call float @dx.op.unary.f32(i32 21, float %1399)  ; Exp(value)
  %1401 = fmul fast float %1268, %1398
  %1402 = call float @dx.op.unary.f32(i32 21, float %1401)  ; Exp(value)
  %1403 = fadd fast float %1402, %1400
  %1404 = fmul fast float %1273, %1398
  %1405 = call float @dx.op.unary.f32(i32 21, float %1404)  ; Exp(value)
  %1406 = fmul fast float %1278, %1398
  %1407 = call float @dx.op.unary.f32(i32 21, float %1406)  ; Exp(value)
  %1408 = fadd fast float %1407, %1405
  %1409 = fmul fast float %1283, %1398
  %1410 = call float @dx.op.unary.f32(i32 21, float %1409)  ; Exp(value)
  %1411 = fmul fast float %1288, %1398
  %1412 = call float @dx.op.unary.f32(i32 21, float %1411)  ; Exp(value)
  %1413 = fadd fast float %1412, %1410
  %1414 = fmul fast float %1251, 0x3FA45F3060000000
  %1415 = fmul fast float %1414, %1368
  %1416 = fmul fast float %1415, %1403
  %1417 = fmul fast float %1252, 0x3FA45F3060000000
  %1418 = fmul fast float %1417, %1368
  %1419 = fmul fast float %1418, %1408
  %1420 = fmul fast float %1325, %1368
  %1421 = fmul fast float %1420, %1413
  %1422 = fmul fast float %1416, %1382
  %1423 = fmul fast float %1419, %1383
  %1424 = fmul fast float %1421, %1384
  %1425 = fadd fast float %1422, %1328
  %1426 = fadd fast float %1423, %1329
  %1427 = fadd fast float %1424, %1330
  %1428 = fadd fast float %1416, %1331
  %1429 = fadd fast float %1419, %1332
  %1430 = fadd fast float %1421, %1333
  %1431 = add nuw nsw i32 %1334, 1
  %1432 = icmp eq i32 %1431, %1320
  br i1 %1432, label %1433, label %1327, !llvm.loop !103

; <label>:1433                                    ; preds = %1327
  br label %1434

; <label>:1434                                    ; preds = %1433, %1225
  %1435 = phi float [ %1293, %1225 ], [ %1425, %1433 ]
  %1436 = phi float [ %1294, %1225 ], [ %1426, %1433 ]
  %1437 = phi float [ %1295, %1225 ], [ %1427, %1433 ]
  %1438 = phi float [ 0x3F1A36E2E0000000, %1225 ], [ %1428, %1433 ]
  %1439 = phi float [ 0x3F1A36E2E0000000, %1225 ], [ %1429, %1433 ]
  %1440 = phi float [ 0x3F1A36E2E0000000, %1225 ], [ %1430, %1433 ]
  %1441 = fmul fast float %1272, %1213
  %1442 = fmul fast float %1282, %1214
  %1443 = fmul fast float %1292, %1215
  %1444 = fsub fast float 1.000000e+00, %1272
  %1445 = fsub fast float 1.000000e+00, %1282
  %1446 = fsub fast float 1.000000e+00, %1292
  %1447 = fdiv fast float %1435, %1438
  %1448 = fdiv fast float %1436, %1439
  %1449 = fdiv fast float %1437, %1440
  %1450 = fmul fast float %1447, %1444
  %1451 = fmul fast float %1448, %1445
  %1452 = fmul fast float %1449, %1446
  %1453 = fadd fast float %1450, %1441
  %1454 = fadd fast float %1451, %1442
  %1455 = fadd fast float %1452, %1443
  br label %1456

; <label>:1456                                    ; preds = %1434, %1179
  %1457 = phi float [ %1453, %1434 ], [ 0.000000e+00, %1179 ]
  %1458 = phi float [ %1454, %1434 ], [ 0.000000e+00, %1179 ]
  %1459 = phi float [ %1455, %1434 ], [ 0.000000e+00, %1179 ]
  %1460 = phi float [ %1217, %1434 ], [ 0.000000e+00, %1179 ]
  %1461 = phi float [ %1218, %1434 ], [ 0.000000e+00, %1179 ]
  %1462 = phi float [ %1219, %1434 ], [ 0.000000e+00, %1179 ]
  %1463 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1464 = extractvalue %dx.types.CBufRet.i32 %1463, 3
  %1465 = and i32 %1464, 3
  %1466 = icmp ne i32 %1465, 0
  %1467 = and i32 %1464, 4
  %1468 = icmp ne i32 %1467, 0
  %1469 = and i1 %1466, %1468
  br i1 %1469, label %1470, label %1477, !dx.controlflow.hints !105

; <label>:1470                                    ; preds = %1456
  %1471 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %24, float %1195, float %1196, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1472 = extractvalue %dx.types.ResRet.f32 %1471, 0
  %1473 = fsub fast float 1.000000e+00, %1472
  %1474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1475 = extractvalue %dx.types.CBufRet.f32 %1474, 0
  %1476 = fcmp fast olt float %1473, %1475
  br label %1480

; <label>:1477                                    ; preds = %1456
  %1478 = icmp eq i32 %1467, 0
  %1479 = and i1 %1466, %1478
  br label %1480

; <label>:1480                                    ; preds = %1477, %1470
  %1481 = phi i1 [ %1476, %1470 ], [ %1479, %1477 ]
  %1482 = select i1 %1481, float 0.000000e+00, float %1461
  %1483 = select i1 %1481, float 0.000000e+00, float %1462
  %1484 = fmul fast float %1460, %1457
  %1485 = fmul fast float %1482, %1458
  %1486 = fmul fast float %1483, %1459
  %1487 = fadd fast float %1484, %1209
  %1488 = fadd fast float %1485, %1210
  %1489 = fadd fast float %1486, %1211
  %1490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1491 = extractvalue %dx.types.CBufRet.f32 %1490, 0
  br i1 %1481, label %1492, label %1511, !dx.controlflow.hints !106

; <label>:1492                                    ; preds = %1480
  %1493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1494 = extractvalue %dx.types.CBufRet.f32 %1493, 3
  %1495 = call float @dx.op.dot3.f32(i32 55, float %1186, float %1187, float %1188, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1496 = fmul fast float %1495, %1487
  %1497 = call float @dx.op.dot3.f32(i32 55, float %1192, float %1193, float %1194, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1498 = fmul fast float %1491, %1497
  %1499 = fadd fast float %1498, %1496
  br i1 %1469, label %1500, label %1506, !dx.controlflow.hints !107

; <label>:1500                                    ; preds = %1492
  %1501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1502 = extractvalue %dx.types.CBufRet.f32 %1501, 1
  %1503 = fadd fast float %1186, -1.000000e+00
  %1504 = fmul fast float %1502, %1503
  %1505 = fadd fast float %1504, 1.000000e+00
  br label %1506

; <label>:1506                                    ; preds = %1500, %1492
  %1507 = phi float [ %1505, %1500 ], [ %1186, %1492 ]
  %1508 = fsub fast float %1488, %1494
  %1509 = fmul fast float %1507, %1508
  %1510 = fadd fast float %1509, %1494
  br label %1521

; <label>:1511                                    ; preds = %1480
  %1512 = fmul fast float %1487, %1186
  %1513 = fmul fast float %1488, %1187
  %1514 = fmul fast float %1489, %1188
  %1515 = fmul fast float %1491, %1192
  %1516 = fmul fast float %1491, %1193
  %1517 = fmul fast float %1491, %1194
  %1518 = fadd fast float %1515, %1512
  %1519 = fadd fast float %1516, %1513
  %1520 = fadd fast float %1517, %1514
  br label %1521

; <label>:1521                                    ; preds = %1511, %1506
  %1522 = phi float [ %1499, %1506 ], [ %1518, %1511 ]
  %1523 = phi float [ %1510, %1506 ], [ %1519, %1511 ]
  %1524 = phi float [ %1489, %1506 ], [ %1520, %1511 ]
  %1525 = lshr i32 %47, 2
  %1526 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1527 = extractvalue %dx.types.CBufRet.i32 %1526, 1
  %1528 = shl i32 %1527, 1
  %1529 = lshr i32 %48, 4
  %1530 = and i32 %1529, 134217727
  %1531 = extractvalue %dx.types.CBufRet.i32 %1526, 0
  %1532 = mul i32 %1531, %1530
  %1533 = lshr i32 %47, 5
  %1534 = and i32 %1533, 67108863
  %1535 = add i32 %1528, %1534
  %1536 = add i32 %1535, %1532
  %1537 = shl i32 %1536, 2
  %1538 = and i32 %50, 24
  %1539 = and i32 %1525, 7
  %1540 = or i32 %1538, %1539
  %1541 = shl i32 1, %1540
  %1542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.i32 %1542, 0
  %1544 = and i32 %1543, %1541
  %1545 = icmp eq i32 %1544, 0
  br i1 %1545, label %1561, label %1546, !dx.controlflow.hints !108

; <label>:1546                                    ; preds = %1521
  %1547 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %49, i32 %50, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1548 = extractvalue %dx.types.ResRet.f32 %1547, 0
  %1549 = fcmp fast ogt float %1548, 0.000000e+00
  br i1 %1549, label %1550, label %1561, !dx.controlflow.hints !109

; <label>:1550                                    ; preds = %1546
  %1551 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %49, i32 %50, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1552 = extractvalue %dx.types.ResRet.f32 %1551, 0
  %1553 = extractvalue %dx.types.ResRet.f32 %1551, 1
  %1554 = extractvalue %dx.types.ResRet.f32 %1551, 2
  %1555 = extractvalue %dx.types.ResRet.f32 %1551, 3
  %1556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %1557 = extractvalue %dx.types.CBufRet.f32 %1556, 2
  %1558 = fmul fast float %1557, %1552
  %1559 = fmul fast float %1557, %1553
  %1560 = fmul fast float %1557, %1554
  br label %1561

; <label>:1561                                    ; preds = %1550, %1546, %1521
  %1562 = phi float [ %1558, %1550 ], [ 0.000000e+00, %1546 ], [ 0.000000e+00, %1521 ]
  %1563 = phi float [ %1559, %1550 ], [ 0.000000e+00, %1546 ], [ 0.000000e+00, %1521 ]
  %1564 = phi float [ %1560, %1550 ], [ 0.000000e+00, %1546 ], [ 0.000000e+00, %1521 ]
  %1565 = phi float [ %1555, %1550 ], [ 0.000000e+00, %1546 ], [ 0.000000e+00, %1521 ]
  %1566 = fsub fast float 1.000000e+00, %1565
  %1567 = fmul fast float %1566, %1522
  %1568 = fmul fast float %1566, %1523
  %1569 = fmul fast float %1566, %1524
  %1570 = fadd fast float %1567, %1562
  %1571 = fadd fast float %1568, %1563
  %1572 = fadd fast float %1569, %1564
  %1573 = fadd fast float %1207, 0x3FE3C6EF40000000
  %1574 = call float @dx.op.unary.f32(i32 22, float %1573)  ; Frc(value)
  %1575 = call float @dx.op.unary.f32(i32 23, float %1570)  ; Log(value)
  %1576 = fadd fast float %1575, -7.000000e+00
  %1577 = call float @dx.op.unary.f32(i32 21, float %1576)  ; Exp(value)
  %1578 = fmul fast float %1574, 2.000000e+00
  %1579 = fadd fast float %1578, -1.000000e+00
  %1580 = fmul fast float %1577, %1579
  %1581 = fcmp fast ogt float %1570, 0.000000e+00
  %1582 = select i1 %1581, float %1580, float 0.000000e+00
  %1583 = fadd fast float %1582, %1570
  %1584 = fadd fast float %1207, 0x3FF3C6EF40000000
  %1585 = call float @dx.op.unary.f32(i32 22, float %1584)  ; Frc(value)
  %1586 = call float @dx.op.unary.f32(i32 23, float %1571)  ; Log(value)
  %1587 = fadd fast float %1586, -7.000000e+00
  %1588 = call float @dx.op.unary.f32(i32 21, float %1587)  ; Exp(value)
  %1589 = fmul fast float %1585, 2.000000e+00
  %1590 = fadd fast float %1589, -1.000000e+00
  %1591 = fmul fast float %1588, %1590
  %1592 = fcmp fast ogt float %1571, 0.000000e+00
  %1593 = select i1 %1592, float %1591, float 0.000000e+00
  %1594 = fadd fast float %1593, %1571
  %1595 = fadd fast float %1207, 0x3FFDAA66E0000000
  %1596 = call float @dx.op.unary.f32(i32 22, float %1595)  ; Frc(value)
  %1597 = call float @dx.op.unary.f32(i32 23, float %1572)  ; Log(value)
  %1598 = fadd fast float %1597, -6.000000e+00
  %1599 = call float @dx.op.unary.f32(i32 21, float %1598)  ; Exp(value)
  %1600 = fmul fast float %1596, 2.000000e+00
  %1601 = fadd fast float %1600, -1.000000e+00
  %1602 = fmul fast float %1599, %1601
  %1603 = fcmp fast ogt float %1572, 0.000000e+00
  %1604 = select i1 %1603, float %1602, float 0.000000e+00
  %1605 = fadd fast float %1604, %1572
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %49, i32 %50, i32 undef, float %1583, float %1594, float %1605, float %1583, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1606 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1607 = extractvalue %dx.types.CBufRet.i32 %1606, 0
  %1608 = and i32 %1607, 1
  %1609 = icmp eq i32 %1608, 0
  br i1 %1609, label %1613, label %1610, !dx.controlflow.hints !110

; <label>:1610                                    ; preds = %1561
  %1611 = and i32 %47, 2147483647
  %1612 = and i32 %48, 2147483647
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1611, i32 %1612, i32 undef, float %1487, float %1488, float %1489, float %1487, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1613

; <label>:1613                                    ; preds = %1610, %1561
  br label %1614

; <label>:1614                                    ; preds = %1637, %1613
  %1615 = phi float [ %1638, %1637 ], [ %1570, %1613 ]
  %1616 = phi float [ %1639, %1637 ], [ %1571, %1613 ]
  %1617 = phi float [ %1640, %1637 ], [ %1572, %1613 ]
  %1618 = phi float [ %1641, %1637 ], [ 1.000000e+00, %1613 ]
  %1619 = phi i32 [ %1624, %1637 ], [ 14, %1613 ]
  %1620 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1619)  ; FirstbitLo(value)
  %1621 = and i32 %1620, 31
  %1622 = shl i32 1, %1621
  %1623 = xor i32 %1622, -1
  %1624 = and i32 %1619, %1623
  %1625 = and i32 %1620, 1
  %1626 = lshr i32 %1620, 1
  %1627 = or i32 %1625, %49
  %1628 = add i32 %1626, %50
  %1629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1630 = extractvalue %dx.types.CBufRet.f32 %1629, 0
  %1631 = fptoui float %1630 to i32
  %1632 = icmp uge i32 %1627, %1631
  %1633 = extractvalue %dx.types.CBufRet.f32 %1629, 1
  %1634 = fptoui float %1633 to i32
  %1635 = icmp uge i32 %1628, %1634
  %1636 = or i1 %1632, %1635
  br i1 %1636, label %1637, label %1643, !dx.controlflow.hints !111

; <label>:1637                                    ; preds = %2069, %1614
  %1638 = phi float [ %1615, %1614 ], [ %2070, %2069 ]
  %1639 = phi float [ %1616, %1614 ], [ %2071, %2069 ]
  %1640 = phi float [ %1617, %1614 ], [ %2072, %2069 ]
  %1641 = phi float [ %1618, %1614 ], [ %2073, %2069 ]
  %1642 = icmp eq i32 %1624, 0
  br i1 %1642, label %2074, label %1614

; <label>:1643                                    ; preds = %1614
  %1644 = uitofp i32 %1627 to float
  %1645 = uitofp i32 %1628 to float
  %1646 = fadd fast float %1644, 5.000000e-01
  %1647 = fadd fast float %1645, 5.000000e-01
  %1648 = extractvalue %dx.types.CBufRet.f32 %1629, 2
  %1649 = extractvalue %dx.types.CBufRet.f32 %1629, 3
  %1650 = fmul fast float %1648, %1646
  %1651 = fmul fast float %1649, %1647
  %1652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1653 = extractvalue %dx.types.CBufRet.f32 %1652, 2
  %1654 = fmul fast float %1653, 0x3FE3C6EF40000000
  %1655 = frem fast float %1644, 2.560000e+02
  %1656 = frem fast float %1645, 2.560000e+02
  %1657 = fptoui float %1655 to i32
  %1658 = fptoui float %1656 to i32
  %1659 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1657, i32 %1658, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1660 = extractvalue %dx.types.ResRet.f32 %1659, 0
  %1661 = fadd fast float %1660, %1654
  %1662 = call float @dx.op.unary.f32(i32 22, float %1661)  ; Frc(value)
  %1663 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %1627, i32 %1628, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1664 = extractvalue %dx.types.ResRet.f32 %1663, 0
  %1665 = extractvalue %dx.types.ResRet.f32 %1663, 1
  %1666 = extractvalue %dx.types.ResRet.f32 %1663, 2
  %1667 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %1627, i32 %1628, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1668 = extractvalue %dx.types.ResRet.f32 %1667, 0
  %1669 = extractvalue %dx.types.ResRet.f32 %1667, 1
  %1670 = extractvalue %dx.types.ResRet.f32 %1667, 2
  %1671 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %1627, i32 %1628, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1672 = extractvalue %dx.types.ResRet.f32 %1671, 0
  %1673 = extractvalue %dx.types.ResRet.f32 %1671, 1
  %1674 = extractvalue %dx.types.ResRet.f32 %1671, 2
  %1675 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %1627, i32 %1628, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1676 = extractvalue %dx.types.ResRet.f32 %1675, 0
  %1677 = extractvalue %dx.types.ResRet.f32 %1675, 1
  %1678 = call float @dx.op.binary.f32(i32 35, float %1676, float %1677)  ; FMax(a,b)
  %1679 = fcmp fast ult float %1678, 0x3F70101020000000
  br i1 %1679, label %1913, label %1680, !dx.controlflow.hints !112

; <label>:1680                                    ; preds = %1643
  %1681 = fmul fast float %1677, 2.000000e+00
  %1682 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1681)  ; FMax(a,b)
  %1683 = fmul fast float %1676, 2.000000e+00
  %1684 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1683)  ; FMax(a,b)
  %1685 = extractvalue %dx.types.ResRet.f32 %1671, 3
  %1686 = fmul fast float %1685, 2.000000e+00
  %1687 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1686)  ; FMax(a,b)
  %1688 = fmul fast float %1674, %1674
  %1689 = fmul fast float %1673, %1673
  %1690 = fmul fast float %1672, %1672
  %1691 = getelementptr [4 x float], [4 x float]* %34, i32 0, i32 %1620
  %1692 = load float, float* %1691, align 4, !tbaa !53, !noalias !113
  %1693 = fadd fast float %1690, 0xBFD51EB860000000
  %1694 = fadd fast float %1689, 0xBFD51EB860000000
  %1695 = fadd fast float %1688, 0xBFD51EB860000000
  %1696 = fmul fast float %1693, %1693
  %1697 = fmul fast float %1694, %1694
  %1698 = fmul fast float %1695, %1695
  %1699 = fmul fast float %1696, %1696
  %1700 = fmul fast float %1699, 1.000000e+02
  %1701 = fmul fast float %1697, %1697
  %1702 = fmul fast float %1701, 1.000000e+02
  %1703 = fmul fast float %1698, %1698
  %1704 = fmul fast float %1703, 1.000000e+02
  %1705 = fadd fast float %1700, 3.500000e+00
  %1706 = fadd fast float %1702, 3.500000e+00
  %1707 = fadd fast float %1704, 3.500000e+00
  %1708 = fdiv fast float %1705, %1687
  %1709 = fdiv fast float %1706, %1684
  %1710 = fdiv fast float %1707, %1682
  %1711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1712 = extractvalue %dx.types.CBufRet.f32 %1711, 0
  %1713 = extractvalue %dx.types.CBufRet.f32 %1711, 1
  %1714 = fmul fast float %1712, %1692
  %1715 = fmul fast float %1713, %1692
  %1716 = fdiv fast float 1.000000e+00, %1714
  %1717 = fdiv fast float 1.000000e+00, %1715
  %1718 = fmul fast float %1648, 5.000000e-01
  %1719 = fmul fast float %1718, %1714
  %1720 = fmul fast float %1708, 0xBFF7154760000000
  %1721 = fmul fast float %1720, %1719
  %1722 = call float @dx.op.unary.f32(i32 21, float %1721)  ; Exp(value)
  %1723 = fmul fast float %1722, 2.500000e-01
  %1724 = fsub fast float 1.000000e+00, %1723
  %1725 = fmul fast float %1708, 0xBFDEC709E0000000
  %1726 = fmul fast float %1725, %1719
  %1727 = call float @dx.op.unary.f32(i32 21, float %1726)  ; Exp(value)
  %1728 = fmul fast float %1727, 7.500000e-01
  %1729 = fsub fast float %1724, %1728
  %1730 = fmul fast float %1709, 0xBFF7154760000000
  %1731 = fmul fast float %1730, %1719
  %1732 = call float @dx.op.unary.f32(i32 21, float %1731)  ; Exp(value)
  %1733 = fmul fast float %1732, 2.500000e-01
  %1734 = fsub fast float 1.000000e+00, %1733
  %1735 = fmul fast float %1709, 0xBFDEC709E0000000
  %1736 = fmul fast float %1735, %1719
  %1737 = call float @dx.op.unary.f32(i32 21, float %1736)  ; Exp(value)
  %1738 = fmul fast float %1737, 7.500000e-01
  %1739 = fsub fast float %1734, %1738
  %1740 = fmul fast float %1710, 0xBFF7154760000000
  %1741 = fmul fast float %1740, %1719
  %1742 = call float @dx.op.unary.f32(i32 21, float %1741)  ; Exp(value)
  %1743 = fmul fast float %1742, 2.500000e-01
  %1744 = fsub fast float 1.000000e+00, %1743
  %1745 = fmul fast float %1710, 0xBFDEC709E0000000
  %1746 = fmul fast float %1745, %1719
  %1747 = call float @dx.op.unary.f32(i32 21, float %1746)  ; Exp(value)
  %1748 = fmul fast float %1747, 7.500000e-01
  %1749 = fsub fast float %1744, %1748
  %1750 = fmul fast float %1668, 0x3F1A36E2E0000000
  %1751 = fmul fast float %1669, 0x3F1A36E2E0000000
  %1752 = fmul fast float %1670, 0x3F1A36E2E0000000
  %1753 = call float @dx.op.binary.f32(i32 36, float %1709, float %1710)  ; FMin(a,b)
  %1754 = call float @dx.op.binary.f32(i32 36, float %1708, float %1753)  ; FMin(a,b)
  %1755 = call float @dx.op.binary.f32(i32 36, float %1739, float %1749)  ; FMin(a,b)
  %1756 = call float @dx.op.binary.f32(i32 36, float %1729, float %1755)  ; FMin(a,b)
  %1757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1758 = extractvalue %dx.types.CBufRet.f32 %1757, 2
  %1759 = fmul fast float %1758, %1714
  %1760 = fmul fast float %1754, 0xBFF7154760000000
  %1761 = fmul fast float %1760, %1759
  %1762 = call float @dx.op.unary.f32(i32 21, float %1761)  ; Exp(value)
  %1763 = fmul fast float %1762, 2.500000e-01
  %1764 = fsub fast float 1.000000e+00, %1763
  %1765 = fmul fast float %1754, 0xBFDEC709E0000000
  %1766 = fmul fast float %1765, %1759
  %1767 = call float @dx.op.unary.f32(i32 21, float %1766)  ; Exp(value)
  %1768 = fmul fast float %1767, 7.500000e-01
  %1769 = fsub fast float %1764, %1768
  %1770 = extractvalue %dx.types.CBufRet.f32 %1757, 3
  %1771 = call float @dx.op.binary.f32(i32 36, float %1770, float %1769)  ; FMin(a,b)
  %1772 = fsub fast float %1771, %1756
  %1773 = call float @dx.op.unary.f32(i32 7, float %1772)  ; Saturate(value)
  %1774 = call float @dx.op.unary.f32(i32 7, float %1756)  ; Saturate(value)
  %1775 = extractvalue %dx.types.CBufRet.f32 %1757, 0
  %1776 = fmul fast float %1775, %1773
  %1777 = fptoui float %1776 to i32
  %1778 = uitofp i32 %1777 to float
  %1779 = fdiv fast float 1.000000e+00, %1778
  %1780 = icmp eq i32 %1777, 0
  br i1 %1780, label %1891, label %1781

; <label>:1781                                    ; preds = %1680
  %1782 = fmul fast float %1710, 0x3FA45F3060000000
  %1783 = fmul fast float %1754, 0x3FA45F3060000000
  br label %1784

; <label>:1784                                    ; preds = %1784, %1781
  %1785 = phi float [ %1882, %1784 ], [ %1750, %1781 ]
  %1786 = phi float [ %1883, %1784 ], [ %1751, %1781 ]
  %1787 = phi float [ %1884, %1784 ], [ %1752, %1781 ]
  %1788 = phi float [ %1885, %1784 ], [ 0x3F1A36E2E0000000, %1781 ]
  %1789 = phi float [ %1886, %1784 ], [ 0x3F1A36E2E0000000, %1781 ]
  %1790 = phi float [ %1887, %1784 ], [ 0x3F1A36E2E0000000, %1781 ]
  %1791 = phi i32 [ %1888, %1784 ], [ 0, %1781 ]
  %1792 = sitofp i32 %1791 to float
  %1793 = fadd fast float %1792, %1662
  %1794 = fmul fast float %1779, %1773
  %1795 = fmul fast float %1794, %1793
  %1796 = fsub fast float 1.000000e+00, %1774
  %1797 = fsub fast float %1796, %1795
  %1798 = fmul fast float %1797, 4.000000e+00
  %1799 = fmul fast float %1797, 2.000000e+00
  %1800 = fmul fast float %1797, %1797
  %1801 = fmul fast float %1800, 4.000000e+00
  %1802 = fadd fast float %1801, 1.000000e+00
  %1803 = call float @dx.op.unary.f32(i32 24, float %1802)  ; Sqrt(value)
  %1804 = fadd fast float %1799, %1803
  %1805 = fmul fast float %1798, %1804
  %1806 = fadd fast float %1805, 1.000000e+00
  %1807 = call float @dx.op.unary.f32(i32 23, float %1806)  ; Log(value)
  %1808 = fmul fast float %1807, 0xBFD5555560000000
  %1809 = call float @dx.op.unary.f32(i32 21, float %1808)  ; Exp(value)
  %1810 = fmul fast float %1809, %1809
  %1811 = fmul fast float %1810, %1806
  %1812 = fadd fast float %1809, 1.000000e+00
  %1813 = fadd fast float %1812, %1811
  %1814 = fdiv fast float 2.500000e-01, %1797
  %1815 = fmul fast float %1813, %1814
  %1816 = call float @dx.op.unary.f32(i32 23, float %1815)  ; Log(value)
  %1817 = fmul fast float %1816, 0x4000A2B240000000
  %1818 = fdiv fast float %1817, %1754
  %1819 = fmul fast float %1760, %1818
  %1820 = call float @dx.op.unary.f32(i32 21, float %1819)  ; Exp(value)
  %1821 = fmul fast float %1765, %1818
  %1822 = call float @dx.op.unary.f32(i32 21, float %1821)  ; Exp(value)
  %1823 = fadd fast float %1822, %1820
  %1824 = fmul fast float %1783, %1823
  %1825 = fdiv fast float %1773, %1824
  %1826 = fmul fast float %1792, 0x3FF9E377A0000000
  %1827 = call float @dx.op.unary.f32(i32 22, float %1826)  ; Frc(value)
  %1828 = fadd fast float %1827, %1662
  %1829 = fmul fast float %1828, 0x401921FB60000000
  %1830 = call float @dx.op.unary.f32(i32 13, float %1829)  ; Sin(value)
  %1831 = call float @dx.op.unary.f32(i32 12, float %1829)  ; Cos(value)
  %1832 = fmul fast float %1818, %1716
  %1833 = fmul fast float %1832, %1831
  %1834 = fmul fast float %1818, %1717
  %1835 = fmul fast float %1834, %1830
  %1836 = fadd fast float %1833, %1650
  %1837 = fadd fast float %1835, %1651
  %1838 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %24, float %1836, float %1837, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1839 = extractvalue %dx.types.ResRet.f32 %1838, 0
  %1840 = extractvalue %dx.types.ResRet.f32 %1838, 1
  %1841 = extractvalue %dx.types.ResRet.f32 %1838, 2
  %1842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %24, float %1836, float %1837, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1843 = extractvalue %dx.types.ResRet.f32 %1842, 0
  %1844 = fcmp fast ogt float %1843, -1.000000e+00
  %1845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1846 = extractvalue %dx.types.CBufRet.f32 %1845, 1
  %1847 = select i1 %1844, float %1846, float 1.000000e+00
  %1848 = fadd fast float %1843, 1.000000e+00
  %1849 = fmul fast float %1847, %1848
  %1850 = call float @dx.op.unary.f32(i32 6, float %1849)  ; FAbs(value)
  %1851 = fsub fast float %1692, %1850
  %1852 = fmul fast float %1818, %1818
  %1853 = fmul fast float %1851, %1851
  %1854 = fadd fast float %1853, %1852
  %1855 = call float @dx.op.unary.f32(i32 24, float %1854)  ; Sqrt(value)
  %1856 = fmul fast float %1720, %1855
  %1857 = call float @dx.op.unary.f32(i32 21, float %1856)  ; Exp(value)
  %1858 = fmul fast float %1725, %1855
  %1859 = call float @dx.op.unary.f32(i32 21, float %1858)  ; Exp(value)
  %1860 = fadd fast float %1859, %1857
  %1861 = fmul fast float %1730, %1855
  %1862 = call float @dx.op.unary.f32(i32 21, float %1861)  ; Exp(value)
  %1863 = fmul fast float %1735, %1855
  %1864 = call float @dx.op.unary.f32(i32 21, float %1863)  ; Exp(value)
  %1865 = fadd fast float %1864, %1862
  %1866 = fmul fast float %1740, %1855
  %1867 = call float @dx.op.unary.f32(i32 21, float %1866)  ; Exp(value)
  %1868 = fmul fast float %1745, %1855
  %1869 = call float @dx.op.unary.f32(i32 21, float %1868)  ; Exp(value)
  %1870 = fadd fast float %1869, %1867
  %1871 = fmul fast float %1708, 0x3FA45F3060000000
  %1872 = fmul fast float %1871, %1825
  %1873 = fmul fast float %1872, %1860
  %1874 = fmul fast float %1709, 0x3FA45F3060000000
  %1875 = fmul fast float %1874, %1825
  %1876 = fmul fast float %1875, %1865
  %1877 = fmul fast float %1782, %1825
  %1878 = fmul fast float %1877, %1870
  %1879 = fmul fast float %1873, %1839
  %1880 = fmul fast float %1876, %1840
  %1881 = fmul fast float %1878, %1841
  %1882 = fadd fast float %1879, %1785
  %1883 = fadd fast float %1880, %1786
  %1884 = fadd fast float %1881, %1787
  %1885 = fadd fast float %1873, %1788
  %1886 = fadd fast float %1876, %1789
  %1887 = fadd fast float %1878, %1790
  %1888 = add nuw nsw i32 %1791, 1
  %1889 = icmp eq i32 %1888, %1777
  br i1 %1889, label %1890, label %1784, !llvm.loop !103

; <label>:1890                                    ; preds = %1784
  br label %1891

; <label>:1891                                    ; preds = %1890, %1680
  %1892 = phi float [ %1750, %1680 ], [ %1882, %1890 ]
  %1893 = phi float [ %1751, %1680 ], [ %1883, %1890 ]
  %1894 = phi float [ %1752, %1680 ], [ %1884, %1890 ]
  %1895 = phi float [ 0x3F1A36E2E0000000, %1680 ], [ %1885, %1890 ]
  %1896 = phi float [ 0x3F1A36E2E0000000, %1680 ], [ %1886, %1890 ]
  %1897 = phi float [ 0x3F1A36E2E0000000, %1680 ], [ %1887, %1890 ]
  %1898 = fmul fast float %1729, %1668
  %1899 = fmul fast float %1739, %1669
  %1900 = fmul fast float %1749, %1670
  %1901 = fsub fast float 1.000000e+00, %1729
  %1902 = fsub fast float 1.000000e+00, %1739
  %1903 = fsub fast float 1.000000e+00, %1749
  %1904 = fdiv fast float %1892, %1895
  %1905 = fdiv fast float %1893, %1896
  %1906 = fdiv fast float %1894, %1897
  %1907 = fmul fast float %1904, %1901
  %1908 = fmul fast float %1905, %1902
  %1909 = fmul fast float %1906, %1903
  %1910 = fadd fast float %1907, %1898
  %1911 = fadd fast float %1908, %1899
  %1912 = fadd fast float %1909, %1900
  br label %1913

; <label>:1913                                    ; preds = %1891, %1643
  %1914 = phi float [ %1910, %1891 ], [ 0.000000e+00, %1643 ]
  %1915 = phi float [ %1911, %1891 ], [ 0.000000e+00, %1643 ]
  %1916 = phi float [ %1912, %1891 ], [ 0.000000e+00, %1643 ]
  %1917 = phi float [ %1672, %1891 ], [ 0.000000e+00, %1643 ]
  %1918 = phi float [ %1673, %1891 ], [ 0.000000e+00, %1643 ]
  %1919 = phi float [ %1674, %1891 ], [ 0.000000e+00, %1643 ]
  %1920 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1921 = extractvalue %dx.types.CBufRet.i32 %1920, 3
  %1922 = and i32 %1921, 3
  %1923 = icmp ne i32 %1922, 0
  %1924 = and i32 %1921, 4
  %1925 = icmp ne i32 %1924, 0
  %1926 = and i1 %1923, %1925
  br i1 %1926, label %1927, label %1934, !dx.controlflow.hints !105

; <label>:1927                                    ; preds = %1913
  %1928 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %24, float %1650, float %1651, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1929 = extractvalue %dx.types.ResRet.f32 %1928, 0
  %1930 = fsub fast float 1.000000e+00, %1929
  %1931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1932 = extractvalue %dx.types.CBufRet.f32 %1931, 0
  %1933 = fcmp fast olt float %1930, %1932
  br label %1937

; <label>:1934                                    ; preds = %1913
  %1935 = icmp eq i32 %1924, 0
  %1936 = and i1 %1923, %1935
  br label %1937

; <label>:1937                                    ; preds = %1934, %1927
  %1938 = phi i1 [ %1933, %1927 ], [ %1936, %1934 ]
  %1939 = select i1 %1938, float 0.000000e+00, float %1918
  %1940 = select i1 %1938, float 0.000000e+00, float %1919
  %1941 = fmul fast float %1917, %1914
  %1942 = fmul fast float %1939, %1915
  %1943 = fmul fast float %1940, %1916
  %1944 = fadd fast float %1941, %1664
  %1945 = fadd fast float %1942, %1665
  %1946 = fadd fast float %1943, %1666
  %1947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1948 = extractvalue %dx.types.CBufRet.f32 %1947, 0
  br i1 %1938, label %1949, label %1968, !dx.controlflow.hints !106

; <label>:1949                                    ; preds = %1937
  %1950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1951 = extractvalue %dx.types.CBufRet.f32 %1950, 3
  %1952 = call float @dx.op.dot3.f32(i32 55, float %1186, float %1187, float %1188, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1953 = fmul fast float %1952, %1944
  %1954 = call float @dx.op.dot3.f32(i32 55, float %1192, float %1193, float %1194, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1955 = fmul fast float %1948, %1954
  %1956 = fadd fast float %1955, %1953
  br i1 %1926, label %1957, label %1963, !dx.controlflow.hints !107

; <label>:1957                                    ; preds = %1949
  %1958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1959 = extractvalue %dx.types.CBufRet.f32 %1958, 1
  %1960 = fadd fast float %1186, -1.000000e+00
  %1961 = fmul fast float %1959, %1960
  %1962 = fadd fast float %1961, 1.000000e+00
  br label %1963

; <label>:1963                                    ; preds = %1957, %1949
  %1964 = phi float [ %1962, %1957 ], [ %1186, %1949 ]
  %1965 = fsub fast float %1945, %1951
  %1966 = fmul fast float %1964, %1965
  %1967 = fadd fast float %1966, %1951
  br label %1978

; <label>:1968                                    ; preds = %1937
  %1969 = fmul fast float %1944, %1186
  %1970 = fmul fast float %1945, %1187
  %1971 = fmul fast float %1946, %1188
  %1972 = fmul fast float %1948, %1192
  %1973 = fmul fast float %1948, %1193
  %1974 = fmul fast float %1948, %1194
  %1975 = fadd fast float %1972, %1969
  %1976 = fadd fast float %1973, %1970
  %1977 = fadd fast float %1974, %1971
  br label %1978

; <label>:1978                                    ; preds = %1968, %1963
  %1979 = phi float [ %1956, %1963 ], [ %1975, %1968 ]
  %1980 = phi float [ %1967, %1963 ], [ %1976, %1968 ]
  %1981 = phi float [ %1946, %1963 ], [ %1977, %1968 ]
  %1982 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1983 = extractvalue %dx.types.CBufRet.i32 %1982, 1
  %1984 = shl i32 %1983, 1
  %1985 = lshr i32 %1628, 5
  %1986 = extractvalue %dx.types.CBufRet.i32 %1982, 0
  %1987 = mul i32 %1986, %1985
  %1988 = add i32 %1984, %1534
  %1989 = add i32 %1988, %1987
  %1990 = shl i32 %1989, 2
  %1991 = and i32 %1628, 24
  %1992 = or i32 %1991, %1539
  %1993 = shl i32 1, %1992
  %1994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %1995 = extractvalue %dx.types.ResRet.i32 %1994, 0
  %1996 = and i32 %1995, %1993
  %1997 = icmp eq i32 %1996, 0
  br i1 %1997, label %2013, label %1998, !dx.controlflow.hints !108

; <label>:1998                                    ; preds = %1978
  %1999 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %1627, i32 %1628, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2000 = extractvalue %dx.types.ResRet.f32 %1999, 0
  %2001 = fcmp fast ogt float %2000, 0.000000e+00
  br i1 %2001, label %2002, label %2013, !dx.controlflow.hints !109

; <label>:2002                                    ; preds = %1998
  %2003 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %1627, i32 %1628, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2004 = extractvalue %dx.types.ResRet.f32 %2003, 0
  %2005 = extractvalue %dx.types.ResRet.f32 %2003, 1
  %2006 = extractvalue %dx.types.ResRet.f32 %2003, 2
  %2007 = extractvalue %dx.types.ResRet.f32 %2003, 3
  %2008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %2009 = extractvalue %dx.types.CBufRet.f32 %2008, 2
  %2010 = fmul fast float %2009, %2004
  %2011 = fmul fast float %2009, %2005
  %2012 = fmul fast float %2009, %2006
  br label %2013

; <label>:2013                                    ; preds = %2002, %1998, %1978
  %2014 = phi float [ %2010, %2002 ], [ 0.000000e+00, %1998 ], [ 0.000000e+00, %1978 ]
  %2015 = phi float [ %2011, %2002 ], [ 0.000000e+00, %1998 ], [ 0.000000e+00, %1978 ]
  %2016 = phi float [ %2012, %2002 ], [ 0.000000e+00, %1998 ], [ 0.000000e+00, %1978 ]
  %2017 = phi float [ %2007, %2002 ], [ 0.000000e+00, %1998 ], [ 0.000000e+00, %1978 ]
  %2018 = fsub fast float 1.000000e+00, %2017
  %2019 = fmul fast float %2018, %1979
  %2020 = fmul fast float %2018, %1980
  %2021 = fmul fast float %2018, %1981
  %2022 = fadd fast float %2019, %2014
  %2023 = fadd fast float %2020, %2015
  %2024 = fadd fast float %2021, %2016
  %2025 = fadd fast float %1662, 0x3FE3C6EF40000000
  %2026 = call float @dx.op.unary.f32(i32 22, float %2025)  ; Frc(value)
  %2027 = call float @dx.op.unary.f32(i32 23, float %2022)  ; Log(value)
  %2028 = fadd fast float %2027, -7.000000e+00
  %2029 = call float @dx.op.unary.f32(i32 21, float %2028)  ; Exp(value)
  %2030 = fmul fast float %2026, 2.000000e+00
  %2031 = fadd fast float %2030, -1.000000e+00
  %2032 = fmul fast float %2029, %2031
  %2033 = fcmp fast ogt float %2022, 0.000000e+00
  %2034 = select i1 %2033, float %2032, float 0.000000e+00
  %2035 = fadd fast float %2034, %2022
  %2036 = fadd fast float %1662, 0x3FF3C6EF40000000
  %2037 = call float @dx.op.unary.f32(i32 22, float %2036)  ; Frc(value)
  %2038 = call float @dx.op.unary.f32(i32 23, float %2023)  ; Log(value)
  %2039 = fadd fast float %2038, -7.000000e+00
  %2040 = call float @dx.op.unary.f32(i32 21, float %2039)  ; Exp(value)
  %2041 = fmul fast float %2037, 2.000000e+00
  %2042 = fadd fast float %2041, -1.000000e+00
  %2043 = fmul fast float %2040, %2042
  %2044 = fcmp fast ogt float %2023, 0.000000e+00
  %2045 = select i1 %2044, float %2043, float 0.000000e+00
  %2046 = fadd fast float %2045, %2023
  %2047 = fadd fast float %1662, 0x3FFDAA66E0000000
  %2048 = call float @dx.op.unary.f32(i32 22, float %2047)  ; Frc(value)
  %2049 = call float @dx.op.unary.f32(i32 23, float %2024)  ; Log(value)
  %2050 = fadd fast float %2049, -6.000000e+00
  %2051 = call float @dx.op.unary.f32(i32 21, float %2050)  ; Exp(value)
  %2052 = fmul fast float %2048, 2.000000e+00
  %2053 = fadd fast float %2052, -1.000000e+00
  %2054 = fmul fast float %2051, %2053
  %2055 = fcmp fast ogt float %2024, 0.000000e+00
  %2056 = select i1 %2055, float %2054, float 0.000000e+00
  %2057 = fadd fast float %2056, %2024
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %1627, i32 %1628, i32 undef, float %2035, float %2046, float %2057, float %2035, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2058 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2059 = extractvalue %dx.types.CBufRet.i32 %2058, 0
  %2060 = and i32 %2059, 1
  %2061 = icmp ne i32 %2060, 0
  %2062 = or i32 %1628, %1620
  %2063 = and i32 %2062, 1
  %2064 = icmp eq i32 %2063, 0
  %2065 = and i1 %2064, %2061
  br i1 %2065, label %2066, label %2069, !dx.controlflow.hints !110

; <label>:2066                                    ; preds = %2013
  %2067 = and i32 %47, 2147483647
  %2068 = lshr i32 %1628, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2067, i32 %2068, i32 undef, float %1944, float %1945, float %1946, float %1944, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2069

; <label>:2069                                    ; preds = %2066, %2013
  %2070 = fadd fast float %2022, %1615
  %2071 = fadd fast float %2023, %1616
  %2072 = fadd fast float %2024, %1617
  %2073 = fadd fast float %1618, 1.000000e+00
  br label %1637

; <label>:2074                                    ; preds = %1637
  %2075 = fdiv fast float 1.000000e+00, %1641
  %2076 = fmul fast float %2075, %1638
  %2077 = fmul fast float %2075, %1639
  %2078 = fmul fast float %2075, %1640
  %2079 = call float @dx.op.dot3.f32(i32 55, float %2076, float %2077, float %2078, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2080 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %2081 = add i32 %2080, -1
  %2082 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %2083 = and i32 %2080, 1
  %2084 = xor i32 %2083, 1
  %2085 = and i32 %2081, %2082
  %2086 = xor i32 %2084, %2085
  %2087 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2079, i32 %2086)  ; WaveReadLaneAt(value,lane)
  %2088 = call float @dx.op.binary.f32(i32 36, float %2079, float %2087)  ; FMin(a,b)
  %2089 = add i32 %2080, 15
  %2090 = and i32 %2089, 8
  %2091 = xor i32 %2085, %2090
  %2092 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2088, i32 %2091)  ; WaveReadLaneAt(value,lane)
  %2093 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2079, i32 %2086)  ; WaveReadLaneAt(value,lane)
  %2094 = call float @dx.op.binary.f32(i32 35, float %2079, float %2093)  ; FMax(a,b)
  %2095 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2094, i32 %2091)  ; WaveReadLaneAt(value,lane)
  %2096 = or i32 %47, %48
  %2097 = and i32 %2096, 1
  %2098 = icmp eq i32 %2097, 0
  br i1 %2098, label %2099, label %2141, !dx.controlflow.hints !114

; <label>:2099                                    ; preds = %2074
  %2100 = call float @dx.op.binary.f32(i32 35, float %2094, float %2095)  ; FMax(a,b)
  %2101 = call float @dx.op.binary.f32(i32 36, float %2088, float %2092)  ; FMin(a,b)
  %2102 = lshr i32 %47, 1
  %2103 = lshr i32 %48, 1
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
  %2120 = fmul fast float %2100, 0x3F1A36E2E0000000
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

; <label>:2141                                    ; preds = %2099, %2074
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneIndex(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneCount(i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

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

; Function Attrs: nounwind
declare float @dx.op.waveReadLaneAt.f32(i32, float, i32) #2

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
attributes #2 = { nounwind }

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
!39 = !{i32 0, i64 524560, i32 4, !40}
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

