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
; shader hash: 491e1b4b4d1502f50e11bee303a2b99b
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

define void @cs_post_opaque_processes_luma_subsampletile_dmfpscale() {
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
  %34 = alloca [3 x float], align 4
  %35 = alloca [3 x float], align 4
  %36 = alloca [4 x float], align 4
  %37 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %38 = extractvalue %dx.types.CBufRet.i32 %37, 0
  %39 = extractvalue %dx.types.CBufRet.i32 %37, 1
  %40 = mul i32 %39, %38
  %41 = add i32 %40, %31
  %42 = shl i32 %41, 2
  %43 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %42, i32 undef)  ; BufferLoad(srv,index,wot)
  %44 = extractvalue %dx.types.ResRet.i32 %43, 0
  %45 = lshr i32 %44, 16
  %46 = shl i32 %44, 3
  %47 = and i32 %46, 524280
  %48 = shl nuw nsw i32 %45, 3
  %49 = add i32 %47, %29
  %50 = add i32 %48, %30
  %51 = shl i32 %49, 1
  %52 = shl i32 %50, 1
  %53 = uitofp i32 %51 to float
  %54 = uitofp i32 %52 to float
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 2
  %57 = extractvalue %dx.types.CBufRet.f32 %55, 3
  %58 = fmul fast float %53, %56
  %59 = fmul fast float %54, %57
  %60 = fadd fast float %58, %56
  %61 = fadd fast float %59, %57
  %62 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %25, float %60, float %61, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %63 = extractvalue %dx.types.ResRet.f32 %62, 0
  %64 = extractvalue %dx.types.ResRet.f32 %62, 1
  %65 = extractvalue %dx.types.ResRet.f32 %62, 2
  %66 = extractvalue %dx.types.ResRet.f32 %62, 3
  %67 = fcmp fast ogt float %66, -1.000000e+00
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 1
  %70 = select i1 %67, float %69, float 1.000000e+00
  %71 = fadd fast float %66, 1.000000e+00
  %72 = fmul fast float %70, %71
  %73 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %74 = fcmp fast ogt float %65, -1.000000e+00
  %75 = select i1 %74, float %69, float 1.000000e+00
  %76 = fadd fast float %65, 1.000000e+00
  %77 = fmul fast float %75, %76
  %78 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %79 = fcmp fast ogt float %63, -1.000000e+00
  %80 = select i1 %79, float %69, float 1.000000e+00
  %81 = fadd fast float %63, 1.000000e+00
  %82 = fmul fast float %80, %81
  %83 = call float @dx.op.unary.f32(i32 6, float %82)  ; FAbs(value)
  %84 = fcmp fast ogt float %64, -1.000000e+00
  %85 = select i1 %84, float %69, float 1.000000e+00
  %86 = fadd fast float %64, 1.000000e+00
  %87 = fmul fast float %85, %86
  %88 = call float @dx.op.unary.f32(i32 6, float %87)  ; FAbs(value)
  %89 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 0
  store float %73, float* %89, align 4
  %90 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 1
  store float %78, float* %90, align 4
  %91 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 2
  store float %83, float* %91, align 4
  %92 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 3
  store float %88, float* %92, align 4
  %93 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %94 = extractvalue %dx.types.ResRet.i32 %93, 0
  %95 = and i32 %94, 114688
  %96 = icmp ne i32 %95, 0
  %97 = select i1 %96, i32 %51, i32 0
  %98 = select i1 %96, i32 %52, i32 0
  %99 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %97, i32 %98, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %100 = extractvalue %dx.types.ResRet.f32 %99, 0
  %101 = fmul fast float %100, 2.550000e+02
  %102 = fptoui float %101 to i32
  %103 = icmp eq i32 %102, 3
  %104 = and i1 %96, %103
  %105 = extractvalue %dx.types.CBufRet.f32 %68, 3
  %106 = fcmp fast oge float %73, %105
  %107 = fadd fast float %53, 5.000000e-01
  %108 = fadd fast float %54, 5.000000e-01
  br i1 %104, label %970, label %109, !dx.controlflow.hints !41

; <label>:109                                     ; preds = %0
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 170)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 0
  %112 = select i1 %106, float %111, float %73
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %115 = extractvalue %dx.types.CBufRet.f32 %113, 3
  %116 = fmul fast float %107, 2.000000e+00
  %117 = fmul fast float %116, %114
  %118 = fmul fast float %108, 2.000000e+00
  %119 = fmul fast float %118, %115
  %120 = fsub fast float 1.000000e+00, %117
  %121 = fsub fast float 1.000000e+00, %119
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 0
  %124 = extractvalue %dx.types.CBufRet.f32 %122, 1
  %125 = extractvalue %dx.types.CBufRet.f32 %122, 2
  %126 = fmul fast float %120, %123
  %127 = fmul fast float %120, %124
  %128 = fmul fast float %120, %125
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 0
  %131 = extractvalue %dx.types.CBufRet.f32 %129, 1
  %132 = extractvalue %dx.types.CBufRet.f32 %129, 2
  %133 = fmul fast float %121, %130
  %134 = fmul fast float %121, %131
  %135 = fmul fast float %121, %132
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %139 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %140 = fadd fast float %133, %137
  %141 = fadd fast float %140, %126
  %142 = fadd fast float %134, %138
  %143 = fadd fast float %142, %127
  %144 = fadd fast float %135, %139
  %145 = fadd fast float %144, %128
  %146 = fmul fast float %141, %112
  %147 = fmul fast float %143, %112
  %148 = fmul fast float %145, %112
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 163)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 1
  %154 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %155 = extractvalue %dx.types.CBufRet.f32 %151, 3
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %158 = extractvalue %dx.types.CBufRet.f32 %156, 1
  %159 = extractvalue %dx.types.CBufRet.f32 %156, 2
  %160 = extractvalue %dx.types.CBufRet.f32 %156, 3
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %163 = extractvalue %dx.types.CBufRet.f32 %161, 1
  %164 = extractvalue %dx.types.CBufRet.f32 %161, 2
  %165 = extractvalue %dx.types.CBufRet.f32 %161, 3
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 0
  %168 = extractvalue %dx.types.CBufRet.f32 %166, 1
  %169 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %170 = extractvalue %dx.types.CBufRet.f32 %166, 3
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 3
  %173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = extractvalue %dx.types.CBufRet.f32 %173, 3
  %175 = extractvalue %dx.types.CBufRet.f32 %173, 0
  %176 = extractvalue %dx.types.CBufRet.f32 %173, 1
  %177 = extractvalue %dx.types.CBufRet.f32 %173, 2
  %178 = fcmp fast olt float %177, -5.000000e-01
  %179 = extractvalue %dx.types.CBufRet.f32 %149, 3
  %180 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %146, float %147, float %148)  ; Dot3(ax,ay,az,bx,by,bz)
  %181 = call float @dx.op.unary.f32(i32 25, float %180)  ; Rsqrt(value)
  %182 = fmul fast float %181, %180
  %183 = fmul fast float %181, %146
  %184 = fmul fast float %181, %147
  %185 = fmul fast float %181, %148
  %186 = fadd fast float %182, %155
  br i1 %106, label %187, label %199, !dx.controlflow.hints !42

; <label>:187                                     ; preds = %109
  %188 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %189 = extractvalue %dx.types.CBufRet.f32 %149, 1
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 187)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 1
  %192 = extractvalue %dx.types.CBufRet.f32 %190, 0
  %193 = call float @dx.op.binary.f32(i32 35, float %185, float %192)  ; FMax(a,b)
  %194 = call float @dx.op.binary.f32(i32 36, float %193, float %191)  ; FMin(a,b)
  %195 = fmul fast float %194, %189
  %196 = fadd fast float %195, %188
  %197 = call float @dx.op.unary.f32(i32 7, float %196)  ; Saturate(value)
  %198 = fmul fast float %185, %150
  br label %199

; <label>:199                                     ; preds = %187, %109
  %200 = phi float [ %150, %187 ], [ %186, %109 ]
  %201 = phi float [ %197, %187 ], [ 0.000000e+00, %109 ]
  %202 = phi float [ %198, %187 ], [ %148, %109 ]
  %203 = call float @dx.op.dot3.f32(i32 55, float %183, float %184, float %185, float %152, float %153, float %154)  ; Dot3(ax,ay,az,bx,by,bz)
  %204 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.i32 %204, 1
  %206 = and i32 %205, 1
  %207 = icmp ne i32 %206, 0
  %208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.f32 %208, 2
  %210 = fcmp fast ogt float %209, 0.000000e+00
  %211 = and i1 %207, %210
  br i1 %211, label %212, label %621, !dx.controlflow.hints !43

; <label>:212                                     ; preds = %199
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 3
  %215 = select i1 %106, float %214, float %182
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 3
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 2
  %220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = extractvalue %dx.types.CBufRet.f32 %220, 2
  %222 = fsub fast float %219, %221
  %223 = and i32 %205, 2
  %224 = extractvalue %dx.types.CBufRet.i32 %204, 0
  %225 = call i32 @dx.op.binary.i32(i32 40, i32 %224, i32 3)  ; UMin(a,b)
  %226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.f32 %226, 0
  %228 = extractvalue %dx.types.CBufRet.f32 %226, 1
  %229 = extractvalue %dx.types.CBufRet.f32 %220, 0
  %230 = extractvalue %dx.types.CBufRet.f32 %220, 1
  %231 = fsub fast float %227, %229
  %232 = fsub fast float %228, %230
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 0
  %235 = fcmp fast ogt float %234, 0.000000e+00
  %236 = fsub fast float -0.000000e+00, %231
  %237 = fsub fast float -0.000000e+00, %232
  %238 = call float @dx.op.dot2.f32(i32 54, float %183, float %184, float %183, float %184)  ; Dot2(ax,ay,bx,by)
  %239 = call float @dx.op.dot2.f32(i32 54, float %183, float %184, float %236, float %237)  ; Dot2(ax,ay,bx,by)
  %240 = fmul fast float %239, 2.000000e+00
  %241 = call float @dx.op.dot2.f32(i32 54, float %236, float %237, float %236, float %237)  ; Dot2(ax,ay,bx,by)
  %242 = fmul fast float %234, %234
  %243 = fsub fast float %241, %242
  %244 = fmul fast float %240, %240
  %245 = fmul fast float %238, 4.000000e+00
  %246 = fmul fast float %245, %243
  %247 = fsub fast float %244, %246
  %248 = fcmp fast ogt float %247, 0.000000e+00
  br i1 %248, label %249, label %264, !dx.controlflow.hints !44

; <label>:249                                     ; preds = %212
  %250 = fcmp fast ogt float %240, 0.000000e+00
  %251 = call float @dx.op.unary.f32(i32 24, float %247)  ; Sqrt(value)
  %252 = fsub fast float -0.000000e+00, %251
  %253 = select i1 %250, float %251, float %252
  %254 = fadd fast float %253, %240
  %255 = fmul float %254, -5.000000e-01
  %256 = fdiv fast float %255, %238
  %257 = call float @dx.op.binary.f32(i32 35, float %256, float 0.000000e+00)  ; FMax(a,b)
  %258 = call float @dx.op.binary.f32(i32 36, float %215, float %257)  ; FMin(a,b)
  %259 = fdiv fast float %243, %255
  %260 = call float @dx.op.binary.f32(i32 35, float %259, float 0.000000e+00)  ; FMax(a,b)
  %261 = call float @dx.op.binary.f32(i32 36, float %215, float %260)  ; FMin(a,b)
  %262 = call float @dx.op.binary.f32(i32 36, float %258, float %261)  ; FMin(a,b)
  %263 = call float @dx.op.binary.f32(i32 35, float %258, float %261)  ; FMax(a,b)
  br label %264

; <label>:264                                     ; preds = %249, %212
  %265 = phi float [ %263, %249 ], [ -1.000000e+00, %212 ]
  %266 = phi float [ %262, %249 ], [ -1.000000e+00, %212 ]
  %267 = phi i1 [ true, %249 ], [ false, %212 ]
  %268 = and i1 %235, %267
  br i1 %268, label %269, label %271, !dx.controlflow.hints !45

; <label>:269                                     ; preds = %264
  %270 = fcmp fast oeq float %266, %265
  br i1 %270, label %574, label %272, !dx.controlflow.hints !46

; <label>:271                                     ; preds = %264
  br i1 %235, label %574, label %272, !dx.controlflow.hints !47

; <label>:272                                     ; preds = %271, %269
  %273 = phi float [ %215, %271 ], [ %265, %269 ]
  %274 = phi float [ 0.000000e+00, %271 ], [ %266, %269 ]
  %275 = icmp ne i32 %223, 0
  %276 = fmul fast float %273, %185
  %277 = fadd fast float %276, %217
  %278 = fmul fast float %277, %273
  %279 = select i1 %275, float 0.000000e+00, float %278
  %280 = fcmp fast oeq float %185, 0.000000e+00
  %281 = fdiv fast float %222, %185
  %282 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %281)  ; FMax(a,b)
  %283 = select i1 %280, float %273, float %282
  %284 = call float @dx.op.binary.f32(i32 36, float %273, float %283)  ; FMin(a,b)
  %285 = fcmp fast ogt float %185, 0.000000e+00
  %286 = fcmp fast olt float %222, 0.000000e+00
  br i1 %285, label %287, label %344, !dx.controlflow.hints !48

; <label>:287                                     ; preds = %272
  %288 = icmp eq i32 %223, 0
  br i1 %286, label %289, label %333, !dx.controlflow.hints !49

; <label>:289                                     ; preds = %287
  %290 = select i1 %288, float %273, float 0.000000e+00
  %291 = fsub fast float -0.000000e+00, %290
  %292 = call float @dx.op.unary.f32(i32 6, float %291)  ; FAbs(value)
  %293 = fmul fast float %290, %185
  %294 = fadd fast float %293, %217
  %295 = fmul fast float %292, %294
  %296 = fsub fast float %279, %295
  %297 = fsub fast float %273, %292
  %298 = select i1 %288, float %297, float 0.000000e+00
  %299 = extractvalue %dx.types.CBufRet.f32 %213, 0
  %300 = extractvalue %dx.types.CBufRet.f32 %213, 1
  %301 = extractvalue %dx.types.CBufRet.f32 %213, 2
  %302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.f32 %302, 0
  %304 = extractvalue %dx.types.CBufRet.f32 %302, 1
  %305 = extractvalue %dx.types.CBufRet.f32 %302, 2
  %306 = extractvalue %dx.types.CBufRet.f32 %302, 3
  %307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.f32 %307, 3
  %309 = call float @dx.op.binary.f32(i32 36, float %296, float %308)  ; FMin(a,b)
  %310 = fmul fast float %306, %298
  %311 = call float @dx.op.unary.f32(i32 7, float %310)  ; Saturate(value)
  %312 = fsub fast float %303, %299
  %313 = fsub fast float %304, %300
  %314 = fsub fast float %305, %301
  %315 = fmul fast float %311, %312
  %316 = fmul fast float %311, %313
  %317 = fmul fast float %311, %314
  %318 = fadd fast float %315, %299
  %319 = fadd fast float %316, %300
  %320 = fadd fast float %317, %301
  br i1 %106, label %574, label %321, !dx.controlflow.hints !50

; <label>:321                                     ; preds = %289
  %322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.f32 %322, 0
  %324 = extractvalue %dx.types.CBufRet.f32 %322, 1
  %325 = fadd fast float %324, %323
  %326 = call float @dx.op.unary.f32(i32 7, float %325)  ; Saturate(value)
  %327 = extractvalue %dx.types.CBufRet.f32 %322, 2
  %328 = extractvalue %dx.types.CBufRet.f32 %322, 3
  %329 = fadd fast float %328, %327
  %330 = call float @dx.op.unary.f32(i32 7, float %329)  ; Saturate(value)
  %331 = fmul fast float %326, %309
  %332 = fmul fast float %331, %330
  br label %574

; <label>:333                                     ; preds = %287
  br i1 %288, label %334, label %355, !dx.controlflow.hints !51

; <label>:334                                     ; preds = %333
  %335 = call float @dx.op.binary.f32(i32 36, float %284, float %274)  ; FMin(a,b)
  %336 = fsub fast float %284, %335
  %337 = fsub fast float %336, %273
  %338 = call float @dx.op.unary.f32(i32 6, float %337)  ; FAbs(value)
  %339 = fadd fast float %336, %273
  %340 = fmul fast float %339, %185
  %341 = fadd fast float %340, %217
  %342 = fmul fast float %341, %338
  %343 = fsub fast float %279, %342
  br label %355

; <label>:344                                     ; preds = %272
  br i1 %286, label %345, label %355, !dx.controlflow.hints !52

; <label>:345                                     ; preds = %344
  %346 = call float @dx.op.binary.f32(i32 35, float %274, float %284)  ; FMax(a,b)
  %347 = icmp eq i32 %223, 0
  %348 = select i1 %347, float %284, float 0.000000e+00
  %349 = fsub fast float -0.000000e+00, %348
  %350 = call float @dx.op.unary.f32(i32 6, float %349)  ; FAbs(value)
  %351 = fmul fast float %348, %185
  %352 = fadd fast float %351, %217
  %353 = fmul fast float %350, %352
  %354 = fsub fast float %279, %353
  br label %355

; <label>:355                                     ; preds = %345, %344, %334, %333
  %356 = phi float [ %274, %333 ], [ %274, %334 ], [ %346, %345 ], [ %274, %344 ]
  %357 = phi float [ 0.000000e+00, %333 ], [ %338, %334 ], [ %350, %345 ], [ 0.000000e+00, %344 ]
  %358 = phi float [ %279, %333 ], [ %343, %334 ], [ %354, %345 ], [ %279, %344 ]
  %359 = phi float [ %284, %333 ], [ %284, %334 ], [ %273, %345 ], [ %273, %344 ]
  %360 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 0
  store float -1.000000e+00, float* %360, align 4, !tbaa !53, !noalias !57
  %361 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 1
  store float -1.000000e+00, float* %361, align 4, !tbaa !53, !noalias !57
  %362 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 2
  store float -1.000000e+00, float* %362, align 4, !tbaa !53, !noalias !57
  %363 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 0
  store float -1.000000e+00, float* %363, align 4, !tbaa !53, !noalias !57
  %364 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 1
  store float -1.000000e+00, float* %364, align 4, !tbaa !53, !noalias !57
  %365 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 2
  store float -1.000000e+00, float* %365, align 4, !tbaa !53, !noalias !57
  %366 = icmp sgt i32 %225, 0
  br i1 %366, label %367, label %428

; <label>:367                                     ; preds = %355
  br label %368

; <label>:368                                     ; preds = %417, %367
  %369 = phi i32 [ %418, %417 ], [ 0, %367 ]
  %370 = phi i32 [ %419, %417 ], [ 0, %367 ]
  %371 = add nuw i32 %370, 171
  %372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 %371)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.f32 %372, 0
  %374 = extractvalue %dx.types.CBufRet.f32 %372, 1
  %375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.f32 %375, 0
  %377 = extractvalue %dx.types.CBufRet.f32 %375, 1
  %378 = fsub fast float %373, %376
  %379 = fsub fast float %374, %377
  %380 = extractvalue %dx.types.CBufRet.f32 %372, 2
  %381 = fsub fast float -0.000000e+00, %378
  %382 = fsub fast float -0.000000e+00, %379
  %383 = call float @dx.op.dot2.f32(i32 54, float %183, float %184, float %381, float %382)  ; Dot2(ax,ay,bx,by)
  %384 = fmul fast float %383, 2.000000e+00
  %385 = call float @dx.op.dot2.f32(i32 54, float %381, float %382, float %381, float %382)  ; Dot2(ax,ay,bx,by)
  %386 = fmul fast float %380, %380
  %387 = fsub fast float %385, %386
  %388 = fmul fast float %384, %384
  %389 = fmul fast float %245, %387
  %390 = fsub fast float %388, %389
  %391 = fcmp fast ogt float %390, 0.000000e+00
  br i1 %391, label %392, label %407, !dx.controlflow.hints !44

; <label>:392                                     ; preds = %368
  %393 = fcmp fast ogt float %384, 0.000000e+00
  %394 = call float @dx.op.unary.f32(i32 24, float %390)  ; Sqrt(value)
  %395 = fsub fast float -0.000000e+00, %394
  %396 = select i1 %393, float %394, float %395
  %397 = fadd fast float %396, %384
  %398 = fmul float %397, -5.000000e-01
  %399 = fdiv fast float %398, %238
  %400 = call float @dx.op.binary.f32(i32 35, float %399, float 0.000000e+00)  ; FMax(a,b)
  %401 = call float @dx.op.binary.f32(i32 36, float %273, float %400)  ; FMin(a,b)
  %402 = fdiv fast float %387, %398
  %403 = call float @dx.op.binary.f32(i32 35, float %402, float 0.000000e+00)  ; FMax(a,b)
  %404 = call float @dx.op.binary.f32(i32 36, float %273, float %403)  ; FMin(a,b)
  %405 = call float @dx.op.binary.f32(i32 36, float %401, float %404)  ; FMin(a,b)
  %406 = call float @dx.op.binary.f32(i32 35, float %401, float %404)  ; FMax(a,b)
  br label %407

; <label>:407                                     ; preds = %392, %368
  %408 = phi float [ %406, %392 ], [ -1.000000e+00, %368 ]
  %409 = phi float [ %405, %392 ], [ -1.000000e+00, %368 ]
  %410 = phi i1 [ true, %392 ], [ false, %368 ]
  br i1 %410, label %411, label %417, !dx.controlflow.hints !69

; <label>:411                                     ; preds = %407
  %412 = call float @dx.op.binary.f32(i32 35, float %356, float %409)  ; FMax(a,b)
  %413 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 %370
  store float %412, float* %413, align 4, !tbaa !53, !noalias !57
  %414 = call float @dx.op.binary.f32(i32 35, float %356, float %408)  ; FMax(a,b)
  %415 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 %370
  store float %414, float* %415, align 4, !tbaa !53, !noalias !57
  %416 = add nsw i32 %369, 1
  br label %417

; <label>:417                                     ; preds = %411, %407
  %418 = phi i32 [ %416, %411 ], [ %369, %407 ]
  %419 = add nuw nsw i32 %370, 1
  %420 = icmp eq i32 %419, %225
  br i1 %420, label %421, label %368

; <label>:421                                     ; preds = %417
  %422 = load float, float* %362, align 4, !tbaa !53, !alias.scope !70, !noalias !73
  %423 = load float, float* %361, align 4, !tbaa !53, !alias.scope !76, !noalias !77
  %424 = load float, float* %360, align 4, !tbaa !53, !alias.scope !78, !noalias !79
  %425 = load float, float* %365, align 4, !tbaa !53, !alias.scope !80, !noalias !83
  %426 = load float, float* %364, align 4, !tbaa !53, !alias.scope !86, !noalias !87
  %427 = load float, float* %363, align 4, !tbaa !53, !alias.scope !88, !noalias !89
  br label %428

; <label>:428                                     ; preds = %421, %355
  %429 = phi float [ -1.000000e+00, %355 ], [ %427, %421 ]
  %430 = phi float [ -1.000000e+00, %355 ], [ %426, %421 ]
  %431 = phi float [ -1.000000e+00, %355 ], [ %425, %421 ]
  %432 = phi float [ -1.000000e+00, %355 ], [ %424, %421 ]
  %433 = phi float [ -1.000000e+00, %355 ], [ %423, %421 ]
  %434 = phi float [ -1.000000e+00, %355 ], [ %422, %421 ]
  %435 = phi i32 [ 0, %355 ], [ %418, %421 ]
  %436 = call float @dx.op.binary.f32(i32 36, float %433, float %434)  ; FMin(a,b)
  %437 = call float @dx.op.binary.f32(i32 36, float %432, float %436)  ; FMin(a,b)
  %438 = call float @dx.op.binary.f32(i32 35, float %432, float %433)  ; FMax(a,b)
  %439 = call float @dx.op.binary.f32(i32 36, float %438, float %434)  ; FMin(a,b)
  %440 = call float @dx.op.binary.f32(i32 36, float %432, float %433)  ; FMin(a,b)
  %441 = call float @dx.op.binary.f32(i32 35, float %440, float %439)  ; FMax(a,b)
  %442 = call float @dx.op.binary.f32(i32 35, float %433, float %434)  ; FMax(a,b)
  %443 = call float @dx.op.binary.f32(i32 35, float %432, float %442)  ; FMax(a,b)
  store float %437, float* %360, align 4, !tbaa !53, !alias.scope !78, !noalias !79
  store float %441, float* %361, align 4, !tbaa !53, !alias.scope !76, !noalias !77
  store float %443, float* %362, align 4, !tbaa !53, !alias.scope !70, !noalias !73
  %444 = call float @dx.op.binary.f32(i32 36, float %430, float %431)  ; FMin(a,b)
  %445 = call float @dx.op.binary.f32(i32 36, float %429, float %444)  ; FMin(a,b)
  %446 = call float @dx.op.binary.f32(i32 35, float %429, float %430)  ; FMax(a,b)
  %447 = call float @dx.op.binary.f32(i32 36, float %446, float %431)  ; FMin(a,b)
  %448 = call float @dx.op.binary.f32(i32 36, float %429, float %430)  ; FMin(a,b)
  %449 = call float @dx.op.binary.f32(i32 35, float %448, float %447)  ; FMax(a,b)
  %450 = call float @dx.op.binary.f32(i32 35, float %430, float %431)  ; FMax(a,b)
  %451 = call float @dx.op.binary.f32(i32 35, float %429, float %450)  ; FMax(a,b)
  store float %445, float* %363, align 4, !tbaa !53, !alias.scope !88, !noalias !89
  store float %449, float* %364, align 4, !tbaa !53, !alias.scope !86, !noalias !87
  store float %451, float* %365, align 4, !tbaa !53, !alias.scope !80, !noalias !83
  %452 = sub nsw i32 3, %435
  %453 = icmp sgt i32 %452, 2
  br i1 %453, label %454, label %492, !dx.controlflow.hints !90

; <label>:454                                     ; preds = %428
  %455 = icmp eq i32 %223, 0
  %456 = fsub fast float %273, %357
  %457 = select i1 %455, float %456, float %357
  %458 = extractvalue %dx.types.CBufRet.f32 %213, 0
  %459 = extractvalue %dx.types.CBufRet.f32 %213, 1
  %460 = extractvalue %dx.types.CBufRet.f32 %213, 2
  %461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %462 = extractvalue %dx.types.CBufRet.f32 %461, 0
  %463 = extractvalue %dx.types.CBufRet.f32 %461, 1
  %464 = extractvalue %dx.types.CBufRet.f32 %461, 2
  %465 = extractvalue %dx.types.CBufRet.f32 %461, 3
  %466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %467 = extractvalue %dx.types.CBufRet.f32 %466, 3
  %468 = call float @dx.op.binary.f32(i32 36, float %358, float %467)  ; FMin(a,b)
  %469 = fmul fast float %465, %457
  %470 = call float @dx.op.unary.f32(i32 7, float %469)  ; Saturate(value)
  %471 = fsub fast float %462, %458
  %472 = fsub fast float %463, %459
  %473 = fsub fast float %464, %460
  %474 = fmul fast float %470, %471
  %475 = fmul fast float %470, %472
  %476 = fmul fast float %470, %473
  %477 = fadd fast float %474, %458
  %478 = fadd fast float %475, %459
  %479 = fadd fast float %476, %460
  br i1 %106, label %574, label %480, !dx.controlflow.hints !50

; <label>:480                                     ; preds = %454
  %481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %482 = extractvalue %dx.types.CBufRet.f32 %481, 0
  %483 = extractvalue %dx.types.CBufRet.f32 %481, 1
  %484 = fadd fast float %483, %482
  %485 = call float @dx.op.unary.f32(i32 7, float %484)  ; Saturate(value)
  %486 = extractvalue %dx.types.CBufRet.f32 %481, 2
  %487 = extractvalue %dx.types.CBufRet.f32 %481, 3
  %488 = fadd fast float %487, %486
  %489 = call float @dx.op.unary.f32(i32 7, float %488)  ; Saturate(value)
  %490 = fmul fast float %485, %468
  %491 = fmul fast float %490, %489
  br label %574

; <label>:492                                     ; preds = %428
  %493 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 %452
  %494 = load float, float* %493, align 4, !tbaa !53, !noalias !57
  %495 = fcmp fast olt float %494, %359
  %496 = icmp sgt i32 %435, 0
  %497 = and i1 %496, %495
  br i1 %497, label %498, label %535

; <label>:498                                     ; preds = %492
  br label %499

; <label>:499                                     ; preds = %528, %498
  %500 = phi float [ %529, %528 ], [ %357, %498 ]
  %501 = phi float [ %530, %528 ], [ %358, %498 ]
  %502 = phi float [ %510, %528 ], [ %494, %498 ]
  %503 = phi i32 [ %507, %528 ], [ %452, %498 ]
  %504 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 %503
  %505 = load float, float* %504, align 4, !tbaa !53, !noalias !57
  %506 = icmp slt i32 %503, 2
  %507 = add nsw i32 %503, 1
  %508 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 %507
  %509 = load float, float* %508, align 4, !tbaa !53, !noalias !57
  %510 = select i1 %506, float %509, float %273
  %511 = call float @dx.op.binary.f32(i32 36, float %510, float %505)  ; FMin(a,b)
  %512 = call float @dx.op.binary.f32(i32 36, float %359, float %511)  ; FMin(a,b)
  %513 = icmp eq i32 %223, 0
  %514 = fadd fast float %512, %502
  %515 = fmul fast float %514, %185
  %516 = fadd fast float %515, %217
  br i1 %513, label %522, label %517, !dx.controlflow.hints !91

; <label>:517                                     ; preds = %499
  %518 = fsub fast float %512, %502
  %519 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %518)  ; FMax(a,b)
  %520 = fmul fast float %519, %516
  %521 = fadd fast float %520, %501
  br label %528

; <label>:522                                     ; preds = %499
  %523 = fsub fast float %502, %512
  %524 = call float @dx.op.unary.f32(i32 6, float %523)  ; FAbs(value)
  %525 = fadd fast float %524, %500
  %526 = fmul fast float %524, %516
  %527 = fsub fast float %501, %526
  br label %528

; <label>:528                                     ; preds = %522, %517
  %529 = phi float [ %519, %517 ], [ %525, %522 ]
  %530 = phi float [ %521, %517 ], [ %527, %522 ]
  %531 = fcmp fast olt float %510, %359
  %532 = icmp slt i32 %507, 3
  %533 = and i1 %532, %531
  br i1 %533, label %499, label %534

; <label>:534                                     ; preds = %528
  br label %535

; <label>:535                                     ; preds = %534, %492
  %536 = phi float [ %357, %492 ], [ %529, %534 ]
  %537 = phi float [ %358, %492 ], [ %530, %534 ]
  %538 = fsub fast float %273, %536
  %539 = select i1 %275, float %536, float %538
  %540 = extractvalue %dx.types.CBufRet.f32 %213, 0
  %541 = extractvalue %dx.types.CBufRet.f32 %213, 1
  %542 = extractvalue %dx.types.CBufRet.f32 %213, 2
  %543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %544 = extractvalue %dx.types.CBufRet.f32 %543, 0
  %545 = extractvalue %dx.types.CBufRet.f32 %543, 1
  %546 = extractvalue %dx.types.CBufRet.f32 %543, 2
  %547 = extractvalue %dx.types.CBufRet.f32 %543, 3
  %548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %549 = extractvalue %dx.types.CBufRet.f32 %548, 3
  %550 = call float @dx.op.binary.f32(i32 36, float %537, float %549)  ; FMin(a,b)
  %551 = fmul fast float %547, %539
  %552 = call float @dx.op.unary.f32(i32 7, float %551)  ; Saturate(value)
  %553 = fsub fast float %544, %540
  %554 = fsub fast float %545, %541
  %555 = fsub fast float %546, %542
  %556 = fmul fast float %552, %553
  %557 = fmul fast float %552, %554
  %558 = fmul fast float %552, %555
  %559 = fadd fast float %556, %540
  %560 = fadd fast float %557, %541
  %561 = fadd fast float %558, %542
  br i1 %106, label %574, label %562, !dx.controlflow.hints !50

; <label>:562                                     ; preds = %535
  %563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %564 = extractvalue %dx.types.CBufRet.f32 %563, 0
  %565 = extractvalue %dx.types.CBufRet.f32 %563, 1
  %566 = fadd fast float %565, %564
  %567 = call float @dx.op.unary.f32(i32 7, float %566)  ; Saturate(value)
  %568 = extractvalue %dx.types.CBufRet.f32 %563, 2
  %569 = extractvalue %dx.types.CBufRet.f32 %563, 3
  %570 = fadd fast float %569, %568
  %571 = call float @dx.op.unary.f32(i32 7, float %570)  ; Saturate(value)
  %572 = fmul fast float %567, %550
  %573 = fmul fast float %572, %571
  br label %574

; <label>:574                                     ; preds = %562, %535, %480, %454, %321, %289, %271, %269
  %575 = phi float [ 0.000000e+00, %269 ], [ 0.000000e+00, %271 ], [ %298, %321 ], [ %298, %289 ], [ %457, %480 ], [ %457, %454 ], [ %539, %562 ], [ %539, %535 ]
  %576 = phi float [ 0.000000e+00, %269 ], [ 0.000000e+00, %271 ], [ %332, %321 ], [ %309, %289 ], [ %491, %480 ], [ %468, %454 ], [ %573, %562 ], [ %550, %535 ]
  %577 = phi float [ 0.000000e+00, %269 ], [ 0.000000e+00, %271 ], [ %318, %321 ], [ %318, %289 ], [ %477, %480 ], [ %477, %454 ], [ %559, %562 ], [ %559, %535 ]
  %578 = phi float [ 0.000000e+00, %269 ], [ 0.000000e+00, %271 ], [ %319, %321 ], [ %319, %289 ], [ %478, %480 ], [ %478, %454 ], [ %560, %562 ], [ %560, %535 ]
  %579 = phi float [ 0.000000e+00, %269 ], [ 0.000000e+00, %271 ], [ %320, %321 ], [ %320, %289 ], [ %479, %480 ], [ %479, %454 ], [ %561, %562 ], [ %561, %535 ]
  %580 = fmul fast float %209, %576
  %581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %582 = extractvalue %dx.types.CBufRet.f32 %581, 2
  %583 = fsub fast float %219, %582
  %584 = fcmp fast olt float %580, -2.000000e+01
  %585 = call float @dx.op.unary.f32(i32 21, float %580)  ; Exp(value)
  %586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %587 = extractvalue %dx.types.CBufRet.f32 %586, 2
  %588 = extractvalue %dx.types.CBufRet.f32 %586, 3
  %589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %590 = extractvalue %dx.types.CBufRet.f32 %589, 2
  %591 = fmul fast float %588, %583
  %592 = call float @dx.op.unary.f32(i32 7, float %591)  ; Saturate(value)
  %593 = fsub fast float 1.000000e+00, %592
  %594 = fmul fast float %185, 5.000000e-01
  %595 = fadd fast float %594, 5.000000e-01
  %596 = call float @dx.op.unary.f32(i32 7, float %595)  ; Saturate(value)
  %597 = fsub fast float 1.000000e+00, %596
  %598 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %593)  ; FMax(a,b)
  %599 = fdiv fast float %597, %598
  %600 = fsub fast float %583, %148
  %601 = call float @dx.op.unary.f32(i32 6, float %600)  ; FAbs(value)
  %602 = fmul fast float %601, %587
  %603 = call float @dx.op.unary.f32(i32 7, float %599)  ; Saturate(value)
  %604 = fsub fast float 1.000000e+00, %602
  %605 = fmul fast float %604, %603
  %606 = fadd fast float %605, %602
  %607 = fmul fast float %590, %583
  %608 = call float @dx.op.unary.f32(i32 7, float %607)  ; Saturate(value)
  %609 = fsub fast float 1.000000e+00, %606
  %610 = fmul fast float %609, %608
  %611 = fadd fast float %610, %606
  %612 = call float @dx.op.unary.f32(i32 7, float %611)  ; Saturate(value)
  %613 = fadd fast float %585, -1.000000e+00
  %614 = select i1 %584, float -1.000000e+00, float %613
  %615 = fmul fast float %612, %614
  %616 = fadd fast float %615, 1.000000e+00
  %617 = fsub fast float -0.000000e+00, %615
  %618 = fmul fast float %577, %617
  %619 = fmul fast float %578, %617
  %620 = fmul fast float %579, %617
  br label %621

; <label>:621                                     ; preds = %574, %199
  %622 = phi float [ %575, %574 ], [ 0.000000e+00, %199 ]
  %623 = phi float [ %616, %574 ], [ 1.000000e+00, %199 ]
  %624 = phi float [ %618, %574 ], [ 0.000000e+00, %199 ]
  %625 = phi float [ %619, %574 ], [ 0.000000e+00, %199 ]
  %626 = phi float [ %620, %574 ], [ 0.000000e+00, %199 ]
  %627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %628 = extractvalue %dx.types.CBufRet.f32 %627, 1
  %629 = fsub fast float 1.000000e+00, %623
  %630 = fmul fast float %629, %200
  %631 = fmul fast float %630, %628
  %632 = fsub fast float %200, %631
  br i1 %178, label %633, label %665, !dx.controlflow.hints !92

; <label>:633                                     ; preds = %621
  %634 = fmul fast float %203, %175
  %635 = fadd fast float %634, %176
  %636 = call float @dx.op.unary.f32(i32 7, float %635)  ; Saturate(value)
  %637 = fmul fast float %157, %632
  %638 = fsub fast float -0.000000e+00, %637
  %639 = fmul fast float %158, %632
  %640 = fsub fast float -0.000000e+00, %639
  %641 = call float @dx.op.unary.f32(i32 21, float %638)  ; Exp(value)
  %642 = call float @dx.op.unary.f32(i32 21, float %640)  ; Exp(value)
  %643 = call float @dx.op.binary.f32(i32 35, float %165, float %641)  ; FMax(a,b)
  %644 = call float @dx.op.binary.f32(i32 35, float %165, float %642)  ; FMax(a,b)
  %645 = fsub fast float %644, %643
  %646 = fmul fast float %645, %636
  %647 = fadd fast float %646, %643
  %648 = call float @dx.op.unary.f32(i32 7, float %647)  ; Saturate(value)
  %649 = fmul fast float %201, %179
  %650 = fsub fast float 1.000000e+00, %649
  %651 = select i1 %106, float %650, float %648
  %652 = fsub fast float %162, %167
  %653 = fsub fast float %163, %168
  %654 = fsub fast float %164, %169
  %655 = fmul fast float %636, %652
  %656 = fmul fast float %636, %653
  %657 = fmul fast float %636, %654
  %658 = fadd fast float %655, %167
  %659 = fadd fast float %656, %168
  %660 = fadd fast float %657, %169
  %661 = fsub fast float 1.000000e+00, %651
  %662 = fmul fast float %661, %658
  %663 = fmul fast float %661, %659
  %664 = fmul fast float %661, %660
  br label %736

; <label>:665                                     ; preds = %621
  %666 = fmul fast float %632, %174
  %667 = call float @dx.op.unary.f32(i32 7, float %666)  ; Saturate(value)
  %668 = fsub fast float 2.000000e+00, %667
  %669 = fmul fast float %667, 9.921875e-01
  %670 = fmul fast float %669, %668
  %671 = fadd fast float %670, 3.906250e-03
  %672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %24, float %671, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %673 = extractvalue %dx.types.ResRet.f32 %672, 0
  %674 = fsub fast float %667, %673
  %675 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %674)  ; FMax(a,b)
  %676 = fmul fast float %202, %160
  %677 = call float @dx.op.unary.f32(i32 6, float %676)  ; FAbs(value)
  %678 = fcmp fast ogt float %677, 0x3EB0C6F7A0000000
  br i1 %678, label %679, label %685, !dx.controlflow.hints !93

; <label>:679                                     ; preds = %665
  %680 = fmul fast float %676, 0xBFF7154760000000
  %681 = call float @dx.op.unary.f32(i32 21, float %680)  ; Exp(value)
  %682 = fsub fast float 1.000000e+00, %681
  %683 = fdiv fast float %682, %676
  %684 = fmul fast float %683, %170
  br label %685

; <label>:685                                     ; preds = %679, %665
  %686 = phi float [ %684, %679 ], [ %170, %665 ]
  %687 = fadd fast float %686, %172
  %688 = fmul fast float %687, %675
  %689 = fmul fast float %157, %688
  %690 = fsub fast float -0.000000e+00, %689
  %691 = fmul fast float %158, %688
  %692 = fsub fast float -0.000000e+00, %691
  %693 = fmul fast float %159, %688
  %694 = fsub fast float -0.000000e+00, %693
  %695 = call float @dx.op.unary.f32(i32 21, float %690)  ; Exp(value)
  %696 = call float @dx.op.unary.f32(i32 21, float %692)  ; Exp(value)
  %697 = call float @dx.op.unary.f32(i32 21, float %694)  ; Exp(value)
  br i1 %106, label %698, label %706, !dx.controlflow.hints !94

; <label>:698                                     ; preds = %685
  %699 = fmul fast float %695, %201
  %700 = fmul fast float %696, %201
  %701 = fmul fast float %697, %201
  %702 = fsub fast float 1.000000e+00, %201
  %703 = fadd fast float %699, %702
  %704 = fadd fast float %700, %702
  %705 = fadd fast float %701, %702
  br label %706

; <label>:706                                     ; preds = %698, %685
  %707 = phi float [ %703, %698 ], [ %695, %685 ]
  %708 = phi float [ %704, %698 ], [ %696, %685 ]
  %709 = phi float [ %705, %698 ], [ %697, %685 ]
  %710 = fmul fast float %203, %203
  %711 = fadd fast float %710, 1.000000e+00
  %712 = fmul fast float %711, 0x3FAE8EC8A0000000
  %713 = fmul fast float %712, %167
  %714 = fmul fast float %712, %168
  %715 = fmul fast float %712, %169
  %716 = fmul fast float %203, %165
  %717 = fsub fast float 1.000000e+00, %716
  %718 = fmul fast float %165, %165
  %719 = fsub fast float 1.000000e+00, %718
  %720 = fmul fast float %719, 0x3FB45F3060000000
  %721 = fmul fast float %717, %717
  %722 = fdiv fast float 1.000000e+00, %721
  %723 = fmul fast float %720, %722
  %724 = fmul fast float %723, %162
  %725 = fmul fast float %723, %163
  %726 = fmul fast float %723, %164
  %727 = fadd fast float %724, %713
  %728 = fadd fast float %725, %714
  %729 = fadd fast float %726, %715
  %730 = fsub fast float 1.000000e+00, %707
  %731 = fsub fast float 1.000000e+00, %708
  %732 = fsub fast float 1.000000e+00, %709
  %733 = fmul fast float %727, %730
  %734 = fmul fast float %728, %731
  %735 = fmul fast float %729, %732
  br label %736

; <label>:736                                     ; preds = %706, %633
  %737 = phi float [ %662, %633 ], [ %733, %706 ]
  %738 = phi float [ %663, %633 ], [ %734, %706 ]
  %739 = phi float [ %664, %633 ], [ %735, %706 ]
  %740 = phi float [ %651, %633 ], [ %707, %706 ]
  %741 = phi float [ %651, %633 ], [ %708, %706 ]
  %742 = phi float [ %651, %633 ], [ %709, %706 ]
  br i1 %211, label %743, label %941, !dx.controlflow.hints !95

; <label>:743                                     ; preds = %736
  %744 = extractvalue %dx.types.CBufRet.f32 %627, 0
  %745 = fmul fast float %744, %629
  %746 = fsub fast float %624, %737
  %747 = fsub fast float %625, %738
  %748 = fsub fast float %626, %739
  %749 = fmul fast float %745, %746
  %750 = fmul fast float %745, %747
  %751 = fmul fast float %745, %748
  %752 = fadd fast float %749, %737
  %753 = fadd fast float %750, %738
  %754 = fadd fast float %751, %739
  %755 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %740)  ; FMax(a,b)
  %756 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %741)  ; FMax(a,b)
  %757 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %742)  ; FMax(a,b)
  %758 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %623)  ; FMax(a,b)
  %759 = call float @dx.op.binary.f32(i32 35, float %622, float %632)  ; FMax(a,b)
  %760 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %759)  ; FMax(a,b)
  %761 = fdiv fast float %622, %760
  %762 = call float @dx.op.unary.f32(i32 7, float %761)  ; Saturate(value)
  %763 = fdiv fast float %632, %760
  %764 = call float @dx.op.unary.f32(i32 7, float %763)  ; Saturate(value)
  %765 = fcmp fast une float %758, 1.000000e+00
  br i1 %765, label %766, label %779, !dx.controlflow.hints !96

; <label>:766                                     ; preds = %743
  %767 = call float @dx.op.unary.f32(i32 23, float %758)  ; Log(value)
  %768 = fmul fast float %767, 0x3FE62E4300000000
  %769 = fmul fast float %624, %768
  %770 = fsub fast float -0.000000e+00, %769
  %771 = fmul fast float %625, %768
  %772 = fsub fast float -0.000000e+00, %771
  %773 = fmul fast float %626, %768
  %774 = fsub fast float -0.000000e+00, %773
  %775 = fsub fast float 1.000000e+00, %758
  %776 = fdiv fast float %770, %775
  %777 = fdiv fast float %772, %775
  %778 = fdiv fast float %774, %775
  br label %779

; <label>:779                                     ; preds = %766, %743
  %780 = phi float [ %776, %766 ], [ %624, %743 ]
  %781 = phi float [ %777, %766 ], [ %625, %743 ]
  %782 = phi float [ %778, %766 ], [ %626, %743 ]
  %783 = phi float [ %768, %766 ], [ 0.000000e+00, %743 ]
  %784 = fcmp fast une float %755, 1.000000e+00
  br i1 %784, label %785, label %792, !dx.controlflow.hints !97

; <label>:785                                     ; preds = %779
  %786 = call float @dx.op.unary.f32(i32 23, float %755)  ; Log(value)
  %787 = fmul fast float %786, 0x3FE62E4300000000
  %788 = fmul fast float %752, %787
  %789 = fsub fast float -0.000000e+00, %788
  %790 = fsub fast float 1.000000e+00, %755
  %791 = fdiv fast float %789, %790
  br label %792

; <label>:792                                     ; preds = %785, %779
  %793 = phi float [ %791, %785 ], [ %752, %779 ]
  %794 = phi float [ %787, %785 ], [ 0.000000e+00, %779 ]
  %795 = fcmp fast une float %756, 1.000000e+00
  br i1 %795, label %796, label %803, !dx.controlflow.hints !97

; <label>:796                                     ; preds = %792
  %797 = call float @dx.op.unary.f32(i32 23, float %756)  ; Log(value)
  %798 = fmul fast float %797, 0x3FE62E4300000000
  %799 = fmul fast float %753, %798
  %800 = fsub fast float -0.000000e+00, %799
  %801 = fsub fast float 1.000000e+00, %756
  %802 = fdiv fast float %800, %801
  br label %803

; <label>:803                                     ; preds = %796, %792
  %804 = phi float [ %802, %796 ], [ %753, %792 ]
  %805 = phi float [ %798, %796 ], [ 0.000000e+00, %792 ]
  %806 = fcmp fast une float %757, 1.000000e+00
  br i1 %806, label %807, label %814, !dx.controlflow.hints !97

; <label>:807                                     ; preds = %803
  %808 = call float @dx.op.unary.f32(i32 23, float %757)  ; Log(value)
  %809 = fmul fast float %808, 0x3FE62E4300000000
  %810 = fmul fast float %754, %809
  %811 = fsub fast float -0.000000e+00, %810
  %812 = fsub fast float 1.000000e+00, %757
  %813 = fdiv fast float %811, %812
  br label %814

; <label>:814                                     ; preds = %807, %803
  %815 = phi float [ %813, %807 ], [ %754, %803 ]
  %816 = phi float [ %809, %807 ], [ 0.000000e+00, %803 ]
  %817 = fmul fast float %780, %764
  %818 = fmul fast float %781, %764
  %819 = fmul fast float %782, %764
  %820 = fmul fast float %783, %764
  %821 = fmul fast float %793, %762
  %822 = fmul fast float %804, %762
  %823 = fmul fast float %815, %762
  %824 = fmul fast float %794, %762
  %825 = fmul fast float %805, %762
  %826 = fmul fast float %816, %762
  %827 = fadd fast float %821, %817
  %828 = fadd fast float %822, %818
  %829 = fadd fast float %823, %819
  %830 = fadd fast float %824, %820
  %831 = fadd fast float %825, %820
  %832 = fadd fast float %826, %820
  %833 = fcmp fast une float %830, 0.000000e+00
  br i1 %833, label %834, label %841, !dx.controlflow.hints !98

; <label>:834                                     ; preds = %814
  %835 = fmul fast float %830, 0x3FF7154760000000
  %836 = call float @dx.op.unary.f32(i32 21, float %835)  ; Exp(value)
  %837 = fsub fast float 1.000000e+00, %836
  %838 = fmul fast float %827, %837
  %839 = fsub fast float -0.000000e+00, %838
  %840 = fdiv fast float %839, %830
  br label %841

; <label>:841                                     ; preds = %834, %814
  %842 = phi float [ %836, %834 ], [ 1.000000e+00, %814 ]
  %843 = phi float [ %840, %834 ], [ %827, %814 ]
  %844 = fcmp fast une float %831, 0.000000e+00
  br i1 %844, label %845, label %852, !dx.controlflow.hints !98

; <label>:845                                     ; preds = %841
  %846 = fmul fast float %831, 0x3FF7154760000000
  %847 = call float @dx.op.unary.f32(i32 21, float %846)  ; Exp(value)
  %848 = fsub fast float 1.000000e+00, %847
  %849 = fmul fast float %828, %848
  %850 = fsub fast float -0.000000e+00, %849
  %851 = fdiv fast float %850, %831
  br label %852

; <label>:852                                     ; preds = %845, %841
  %853 = phi float [ %847, %845 ], [ 1.000000e+00, %841 ]
  %854 = phi float [ %851, %845 ], [ %828, %841 ]
  %855 = fcmp fast une float %832, 0.000000e+00
  br i1 %855, label %856, label %863, !dx.controlflow.hints !98

; <label>:856                                     ; preds = %852
  %857 = fmul fast float %832, 0x3FF7154760000000
  %858 = call float @dx.op.unary.f32(i32 21, float %857)  ; Exp(value)
  %859 = fsub fast float 1.000000e+00, %858
  %860 = fmul fast float %829, %859
  %861 = fsub fast float -0.000000e+00, %860
  %862 = fdiv fast float %861, %832
  br label %863

; <label>:863                                     ; preds = %856, %852
  %864 = phi float [ %858, %856 ], [ 1.000000e+00, %852 ]
  %865 = phi float [ %862, %856 ], [ %829, %852 ]
  %866 = fcmp fast ogt float %762, %764
  br i1 %866, label %867, label %887, !dx.controlflow.hints !99

; <label>:867                                     ; preds = %863
  %868 = fsub fast float 1.000000e+00, %764
  %869 = fmul fast float %780, %868
  %870 = fmul fast float %781, %868
  %871 = fmul fast float %782, %868
  %872 = fmul fast float %783, %868
  %873 = fcmp fast une float %872, 0.000000e+00
  br i1 %873, label %874, label %925, !dx.controlflow.hints !100

; <label>:874                                     ; preds = %867
  %875 = fmul fast float %872, 0x3FF7154760000000
  %876 = call float @dx.op.unary.f32(i32 21, float %875)  ; Exp(value)
  %877 = fsub fast float 1.000000e+00, %876
  %878 = fmul fast float %869, %877
  %879 = fsub fast float -0.000000e+00, %878
  %880 = fmul fast float %870, %877
  %881 = fsub fast float -0.000000e+00, %880
  %882 = fmul fast float %871, %877
  %883 = fsub fast float -0.000000e+00, %882
  %884 = fdiv fast float %879, %872
  %885 = fdiv fast float %881, %872
  %886 = fdiv fast float %883, %872
  br label %925

; <label>:887                                     ; preds = %863
  %888 = fsub fast float 1.000000e+00, %762
  %889 = fmul fast float %793, %888
  %890 = fmul fast float %804, %888
  %891 = fmul fast float %815, %888
  %892 = fmul fast float %794, %888
  %893 = fmul fast float %805, %888
  %894 = fmul fast float %816, %888
  %895 = fcmp fast une float %892, 0.000000e+00
  br i1 %895, label %896, label %903, !dx.controlflow.hints !98

; <label>:896                                     ; preds = %887
  %897 = fmul fast float %892, 0x3FF7154760000000
  %898 = call float @dx.op.unary.f32(i32 21, float %897)  ; Exp(value)
  %899 = fsub fast float 1.000000e+00, %898
  %900 = fmul fast float %889, %899
  %901 = fsub fast float -0.000000e+00, %900
  %902 = fdiv fast float %901, %892
  br label %903

; <label>:903                                     ; preds = %896, %887
  %904 = phi float [ %902, %896 ], [ %889, %887 ]
  %905 = phi float [ %898, %896 ], [ 1.000000e+00, %887 ]
  %906 = fcmp fast une float %893, 0.000000e+00
  br i1 %906, label %907, label %914, !dx.controlflow.hints !98

; <label>:907                                     ; preds = %903
  %908 = fmul fast float %893, 0x3FF7154760000000
  %909 = call float @dx.op.unary.f32(i32 21, float %908)  ; Exp(value)
  %910 = fsub fast float 1.000000e+00, %909
  %911 = fmul fast float %890, %910
  %912 = fsub fast float -0.000000e+00, %911
  %913 = fdiv fast float %912, %893
  br label %914

; <label>:914                                     ; preds = %907, %903
  %915 = phi float [ %913, %907 ], [ %890, %903 ]
  %916 = phi float [ %909, %907 ], [ 1.000000e+00, %903 ]
  %917 = fcmp fast une float %894, 0.000000e+00
  br i1 %917, label %918, label %925, !dx.controlflow.hints !98

; <label>:918                                     ; preds = %914
  %919 = fmul fast float %894, 0x3FF7154760000000
  %920 = call float @dx.op.unary.f32(i32 21, float %919)  ; Exp(value)
  %921 = fsub fast float 1.000000e+00, %920
  %922 = fmul fast float %891, %921
  %923 = fsub fast float -0.000000e+00, %922
  %924 = fdiv fast float %923, %894
  br label %925

; <label>:925                                     ; preds = %918, %914, %874, %867
  %926 = phi float [ %924, %918 ], [ %886, %874 ], [ %871, %867 ], [ %891, %914 ]
  %927 = phi float [ %915, %918 ], [ %885, %874 ], [ %870, %867 ], [ %915, %914 ]
  %928 = phi float [ %904, %918 ], [ %884, %874 ], [ %869, %867 ], [ %904, %914 ]
  %929 = phi float [ %920, %918 ], [ %876, %874 ], [ 1.000000e+00, %867 ], [ 1.000000e+00, %914 ]
  %930 = phi float [ %916, %918 ], [ %876, %874 ], [ 1.000000e+00, %867 ], [ %916, %914 ]
  %931 = phi float [ %905, %918 ], [ %876, %874 ], [ 1.000000e+00, %867 ], [ %905, %914 ]
  %932 = fmul fast float %931, %843
  %933 = fmul fast float %930, %854
  %934 = fmul fast float %929, %865
  %935 = fadd fast float %932, %928
  %936 = fadd fast float %933, %927
  %937 = fadd fast float %934, %926
  %938 = fmul fast float %931, %842
  %939 = fmul fast float %930, %853
  %940 = fmul fast float %929, %864
  br label %941

; <label>:941                                     ; preds = %925, %736
  %942 = phi float [ %940, %925 ], [ %742, %736 ]
  %943 = phi float [ %939, %925 ], [ %741, %736 ]
  %944 = phi float [ %938, %925 ], [ %740, %736 ]
  %945 = phi float [ %937, %925 ], [ %739, %736 ]
  %946 = phi float [ %936, %925 ], [ %738, %736 ]
  %947 = phi float [ %935, %925 ], [ %737, %736 ]
  %948 = fmul fast float %56, %107
  %949 = fmul fast float %57, %108
  %950 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %24, float %948, float %949, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %951 = extractvalue %dx.types.ResRet.f32 %950, 0
  %952 = extractvalue %dx.types.ResRet.f32 %950, 1
  %953 = extractvalue %dx.types.ResRet.f32 %950, 2
  %954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %955 = extractvalue %dx.types.CBufRet.f32 %954, 1
  %956 = fmul fast float %955, %951
  %957 = fmul fast float %955, %952
  %958 = fmul fast float %955, %953
  %959 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %24, float %948, float %949, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %960 = extractvalue %dx.types.ResRet.f32 %959, 0
  %961 = fmul fast float %960, %944
  %962 = fmul fast float %960, %943
  %963 = fmul fast float %960, %942
  %964 = fmul fast float %960, %947
  %965 = fmul fast float %960, %946
  %966 = fmul fast float %960, %945
  %967 = fadd fast float %964, %956
  %968 = fadd fast float %965, %957
  %969 = fadd fast float %966, %958
  br label %970

; <label>:970                                     ; preds = %941, %0
  %971 = phi float [ %967, %941 ], [ 0.000000e+00, %0 ]
  %972 = phi float [ %968, %941 ], [ 0.000000e+00, %0 ]
  %973 = phi float [ %969, %941 ], [ 0.000000e+00, %0 ]
  %974 = phi float [ %961, %941 ], [ 1.000000e+00, %0 ]
  %975 = phi float [ %962, %941 ], [ 1.000000e+00, %0 ]
  %976 = phi float [ %963, %941 ], [ 1.000000e+00, %0 ]
  %977 = phi float [ %112, %941 ], [ %73, %0 ]
  %978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %979 = extractvalue %dx.types.CBufRet.f32 %978, 2
  %980 = extractvalue %dx.types.CBufRet.f32 %978, 3
  %981 = fmul fast float %979, %107
  %982 = fmul fast float %980, %108
  %983 = call float @dx.op.unary.f32(i32 7, float %981)  ; Saturate(value)
  %984 = call float @dx.op.unary.f32(i32 7, float %982)  ; Saturate(value)
  %985 = select i1 %104, i32 2, i32 0
  %986 = or i32 %985, 1
  %987 = uitofp i32 %986 to float
  %988 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %24, float %983, float %984, float %987, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %989 = extractvalue %dx.types.ResRet.f32 %988, 0
  %990 = extractvalue %dx.types.ResRet.f32 %988, 1
  %991 = extractvalue %dx.types.ResRet.f32 %988, 2
  %992 = extractvalue %dx.types.ResRet.f32 %988, 3
  %993 = add nuw nsw i32 %985, 2
  %994 = uitofp i32 %993 to float
  %995 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %24, float %983, float %984, float %994, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %996 = extractvalue %dx.types.ResRet.f32 %995, 0
  %997 = extractvalue %dx.types.ResRet.f32 %995, 1
  %998 = extractvalue %dx.types.ResRet.f32 %995, 2
  %999 = extractvalue %dx.types.ResRet.f32 %995, 3
  %1000 = call float @dx.op.binary.f32(i32 35, float %990, float %991)  ; FMax(a,b)
  %1001 = call float @dx.op.binary.f32(i32 35, float %989, float %1000)  ; FMax(a,b)
  %1002 = call float @dx.op.binary.f32(i32 35, float %1001, float %992)  ; FMax(a,b)
  %1003 = call float @dx.op.binary.f32(i32 36, float %997, float %998)  ; FMin(a,b)
  %1004 = call float @dx.op.binary.f32(i32 36, float %996, float %1003)  ; FMin(a,b)
  %1005 = call float @dx.op.binary.f32(i32 36, float %1004, float %999)  ; FMin(a,b)
  %1006 = fmul fast float %1002, 2.550000e+02
  %1007 = fadd fast float %1006, 0x3F70101020000000
  %1008 = fptoui float %1007 to i32
  %1009 = fmul fast float %1005, 2.550000e+02
  %1010 = fadd fast float %1009, 0x3F70101020000000
  %1011 = fptoui float %1010 to i32
  %1012 = icmp ult i32 %1008, %1011
  br i1 %1012, label %1013, label %1181, !dx.controlflow.hints !101

; <label>:1013                                    ; preds = %970
  %1014 = fadd fast float %977, -4.000000e+00
  %1015 = call float @dx.op.binary.f32(i32 35, float %1014, float 0.000000e+00)  ; FMax(a,b)
  %1016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1017 = extractvalue %dx.types.CBufRet.f32 %1016, 0
  %1018 = fadd fast float %1017, %1015
  %1019 = extractvalue %dx.types.CBufRet.f32 %1016, 2
  %1020 = fmul fast float %1018, %1019
  %1021 = call float @dx.op.unary.f32(i32 23, float %1020)  ; Log(value)
  %1022 = extractvalue %dx.types.CBufRet.f32 %1016, 3
  %1023 = fmul fast float %1022, %1021
  %1024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1025 = extractvalue %dx.types.CBufRet.f32 %1024, 2
  %1026 = fmul fast float %1023, %1025
  %1027 = call float @dx.op.unary.f32(i32 7, float %1026)  ; Saturate(value)
  %1028 = select i1 %106, float 1.000000e+00, float %1027
  %1029 = uitofp i32 %1008 to float
  %1030 = uitofp i32 %1011 to float
  %1031 = fadd fast float %1029, 5.000000e-01
  %1032 = fadd fast float %1030, 5.000000e-01
  %1033 = fmul fast float %1025, %1031
  %1034 = fmul fast float %1025, %1032
  %1035 = fadd fast float %1033, 0x3F0FFB4800000000
  %1036 = fadd fast float %1034, 0xBF0FFB4800000000
  %1037 = call float @dx.op.binary.f32(i32 35, float %1028, float %1035)  ; FMax(a,b)
  %1038 = call float @dx.op.binary.f32(i32 36, float %1037, float %1036)  ; FMin(a,b)
  %1039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1040 = extractvalue %dx.types.CBufRet.f32 %1039, 1
  %1041 = extractvalue %dx.types.CBufRet.f32 %1039, 2
  %1042 = extractvalue %dx.types.CBufRet.f32 %1039, 0
  %1043 = select i1 %104, float %1042, float 0.000000e+00
  %1044 = fmul fast float %1040, %1038
  %1045 = fadd fast float %1043, %1044
  %1046 = fadd fast float %1043, %1041
  %1047 = fsub fast float %1040, %1041
  %1048 = fadd fast float %1047, %1043
  %1049 = call float @dx.op.binary.f32(i32 35, float %1045, float %1046)  ; FMax(a,b)
  %1050 = call float @dx.op.binary.f32(i32 36, float %1049, float %1048)  ; FMin(a,b)
  %1051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %23, float %983, float %984, float %1050, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1052 = extractvalue %dx.types.ResRet.f32 %1051, 0
  %1053 = extractvalue %dx.types.ResRet.f32 %1051, 1
  %1054 = extractvalue %dx.types.ResRet.f32 %1051, 2
  %1055 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %1056 = extractvalue %dx.types.CBufRet.i32 %1055, 0
  %1057 = extractvalue %dx.types.CBufRet.i32 %1055, 1
  %1058 = uitofp i32 %1056 to float
  %1059 = uitofp i32 %1057 to float
  %1060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %1061 = extractvalue %dx.types.CBufRet.f32 %1060, 0
  %1062 = extractvalue %dx.types.CBufRet.f32 %1060, 1
  %1063 = fmul fast float %1058, %983
  %1064 = fmul fast float %1059, %984
  %1065 = fadd fast float %1063, -5.000000e-01
  %1066 = fadd fast float %1064, -5.000000e-01
  %1067 = call float @dx.op.unary.f32(i32 22, float %1065)  ; Frc(value)
  %1068 = call float @dx.op.unary.f32(i32 22, float %1066)  ; Frc(value)
  %1069 = fmul fast float %1067, %1067
  %1070 = fmul fast float %1069, %1067
  %1071 = fsub fast float 3.000000e+00, %1067
  %1072 = fmul fast float %1069, %1071
  %1073 = fmul fast float %1067, 3.000000e+00
  %1074 = fmul fast float %1070, 3.000000e+00
  %1075 = fmul fast float %1069, 6.000000e+00
  %1076 = fsub fast float %1074, %1075
  %1077 = fadd fast float %1076, 4.000000e+00
  %1078 = fmul fast float %1077, 0x3FC5555560000000
  %1079 = fmul fast float %1070, -3.000000e+00
  %1080 = fadd fast float %1069, %1067
  %1081 = fmul fast float %1080, 3.000000e+00
  %1082 = fadd fast float %1079, 1.000000e+00
  %1083 = fadd fast float %1082, %1081
  %1084 = fmul fast float %1070, 0x3FC5555560000000
  %1085 = fmul fast float %1068, %1068
  %1086 = fmul fast float %1085, %1068
  %1087 = fsub fast float 3.000000e+00, %1068
  %1088 = fmul fast float %1085, %1087
  %1089 = fmul fast float %1068, 3.000000e+00
  %1090 = fmul fast float %1086, 3.000000e+00
  %1091 = fmul fast float %1085, 6.000000e+00
  %1092 = fsub fast float %1090, %1091
  %1093 = fadd fast float %1092, 4.000000e+00
  %1094 = fmul fast float %1093, 0x3FC5555560000000
  %1095 = fmul fast float %1086, -3.000000e+00
  %1096 = fadd fast float %1085, %1068
  %1097 = fmul fast float %1096, 3.000000e+00
  %1098 = fadd fast float %1095, 1.000000e+00
  %1099 = fadd fast float %1098, %1097
  %1100 = fmul fast float %1086, 0x3FC5555560000000
  %1101 = fadd fast float %1067, 1.000000e+00
  %1102 = fsub fast float 1.000000e+00, %1073
  %1103 = fadd fast float %1102, %1072
  %1104 = fadd fast float %1103, %1077
  %1105 = fmul fast float %1104, 0x3FC5555560000000
  %1106 = fdiv fast float %1078, %1105
  %1107 = fsub fast float %1101, %1106
  %1108 = fsub fast float 1.000000e+00, %1067
  %1109 = fadd fast float %1083, %1070
  %1110 = fmul fast float %1109, 0x3FC5555560000000
  %1111 = fdiv fast float %1084, %1110
  %1112 = fadd fast float %1108, %1111
  %1113 = fadd fast float %1068, 1.000000e+00
  %1114 = fsub fast float 1.000000e+00, %1089
  %1115 = fadd fast float %1114, %1088
  %1116 = fadd fast float %1115, %1093
  %1117 = fmul fast float %1116, 0x3FC5555560000000
  %1118 = fdiv fast float %1094, %1117
  %1119 = fsub fast float %1113, %1118
  %1120 = fsub fast float 1.000000e+00, %1068
  %1121 = fadd fast float %1099, %1086
  %1122 = fmul fast float %1121, 0x3FC5555560000000
  %1123 = fdiv fast float %1100, %1122
  %1124 = fadd fast float %1123, %1120
  %1125 = fmul fast float %1107, %1061
  %1126 = fsub fast float %983, %1125
  %1127 = fmul fast float %1112, %1061
  %1128 = fadd fast float %1127, %983
  %1129 = fmul fast float %1124, %1062
  %1130 = fadd fast float %1129, %984
  %1131 = fmul fast float %1119, %1062
  %1132 = fsub fast float %984, %1131
  %1133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %23, float %1126, float %1132, float %1050, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1134 = extractvalue %dx.types.ResRet.f32 %1133, 0
  %1135 = extractvalue %dx.types.ResRet.f32 %1133, 1
  %1136 = extractvalue %dx.types.ResRet.f32 %1133, 2
  %1137 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %23, float %1128, float %1132, float %1050, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1138 = extractvalue %dx.types.ResRet.f32 %1137, 0
  %1139 = extractvalue %dx.types.ResRet.f32 %1137, 1
  %1140 = extractvalue %dx.types.ResRet.f32 %1137, 2
  %1141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %23, float %1126, float %1130, float %1050, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1142 = extractvalue %dx.types.ResRet.f32 %1141, 0
  %1143 = extractvalue %dx.types.ResRet.f32 %1141, 1
  %1144 = extractvalue %dx.types.ResRet.f32 %1141, 2
  %1145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %23, float %1128, float %1130, float %1050, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1146 = extractvalue %dx.types.ResRet.f32 %1145, 0
  %1147 = extractvalue %dx.types.ResRet.f32 %1145, 1
  %1148 = extractvalue %dx.types.ResRet.f32 %1145, 2
  %1149 = fsub fast float %1142, %1134
  %1150 = fsub fast float %1143, %1135
  %1151 = fsub fast float %1144, %1136
  %1152 = fmul fast float %1149, %1122
  %1153 = fmul fast float %1150, %1122
  %1154 = fmul fast float %1151, %1122
  %1155 = fadd fast float %1152, %1134
  %1156 = fadd fast float %1153, %1135
  %1157 = fadd fast float %1154, %1136
  %1158 = fsub fast float %1146, %1138
  %1159 = fsub fast float %1147, %1139
  %1160 = fsub fast float %1148, %1140
  %1161 = fmul fast float %1158, %1122
  %1162 = fmul fast float %1159, %1122
  %1163 = fmul fast float %1160, %1122
  %1164 = fsub fast float %1138, %1155
  %1165 = fadd fast float %1164, %1161
  %1166 = fsub fast float %1139, %1156
  %1167 = fadd fast float %1166, %1162
  %1168 = fsub fast float %1140, %1157
  %1169 = fadd fast float %1168, %1163
  %1170 = fmul fast float %1165, %1110
  %1171 = fmul fast float %1167, %1110
  %1172 = fmul fast float %1169, %1110
  %1173 = fadd fast float %1170, %1155
  %1174 = fadd fast float %1171, %1156
  %1175 = fadd fast float %1172, %1157
  %1176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1177 = extractvalue %dx.types.CBufRet.f32 %1176, 1
  %1178 = fmul fast float %1173, %1177
  %1179 = fmul fast float %1174, %1177
  %1180 = fmul fast float %1175, %1177
  br label %1181

; <label>:1181                                    ; preds = %1013, %970
  %1182 = phi float [ %1052, %1013 ], [ 1.000000e+00, %970 ]
  %1183 = phi float [ %1053, %1013 ], [ 1.000000e+00, %970 ]
  %1184 = phi float [ %1054, %1013 ], [ 1.000000e+00, %970 ]
  %1185 = phi float [ %1178, %1013 ], [ 0.000000e+00, %970 ]
  %1186 = phi float [ %1179, %1013 ], [ 0.000000e+00, %970 ]
  %1187 = phi float [ %1180, %1013 ], [ 0.000000e+00, %970 ]
  %1188 = fmul fast float %1182, %974
  %1189 = fmul fast float %1183, %975
  %1190 = fmul fast float %1184, %976
  %1191 = fmul fast float %1182, %971
  %1192 = fmul fast float %1183, %972
  %1193 = fmul fast float %1184, %973
  %1194 = fadd fast float %1185, %1191
  %1195 = fadd fast float %1186, %1192
  %1196 = fadd fast float %1187, %1193
  %1197 = fmul fast float %56, %107
  %1198 = fmul fast float %57, %108
  %1199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1200 = extractvalue %dx.types.CBufRet.f32 %1199, 2
  %1201 = fmul fast float %1200, 0x3FE3C6EF40000000
  %1202 = frem fast float %53, 2.560000e+02
  %1203 = frem fast float %54, 2.560000e+02
  %1204 = fptoui float %1202 to i32
  %1205 = fptoui float %1203 to i32
  %1206 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1204, i32 %1205, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1207 = extractvalue %dx.types.ResRet.f32 %1206, 0
  %1208 = fadd fast float %1207, %1201
  %1209 = call float @dx.op.unary.f32(i32 22, float %1208)  ; Frc(value)
  %1210 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %51, i32 %52, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1211 = extractvalue %dx.types.ResRet.f32 %1210, 0
  %1212 = extractvalue %dx.types.ResRet.f32 %1210, 1
  %1213 = extractvalue %dx.types.ResRet.f32 %1210, 2
  %1214 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %51, i32 %52, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1215 = extractvalue %dx.types.ResRet.f32 %1214, 0
  %1216 = extractvalue %dx.types.ResRet.f32 %1214, 1
  %1217 = extractvalue %dx.types.ResRet.f32 %1214, 2
  %1218 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %51, i32 %52, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1219 = extractvalue %dx.types.ResRet.f32 %1218, 0
  %1220 = extractvalue %dx.types.ResRet.f32 %1218, 1
  %1221 = extractvalue %dx.types.ResRet.f32 %1218, 2
  %1222 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %51, i32 %52, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1223 = extractvalue %dx.types.ResRet.f32 %1222, 0
  %1224 = extractvalue %dx.types.ResRet.f32 %1222, 1
  %1225 = call float @dx.op.binary.f32(i32 35, float %1223, float %1224)  ; FMax(a,b)
  %1226 = fcmp fast ult float %1225, 0x3F70101020000000
  br i1 %1226, label %1458, label %1227, !dx.controlflow.hints !102

; <label>:1227                                    ; preds = %1181
  %1228 = fmul fast float %1224, 2.000000e+00
  %1229 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1228)  ; FMax(a,b)
  %1230 = fmul fast float %1223, 2.000000e+00
  %1231 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1230)  ; FMax(a,b)
  %1232 = extractvalue %dx.types.ResRet.f32 %1218, 3
  %1233 = fmul fast float %1232, 2.000000e+00
  %1234 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1233)  ; FMax(a,b)
  %1235 = fmul fast float %1221, %1221
  %1236 = fmul fast float %1220, %1220
  %1237 = fmul fast float %1219, %1219
  %1238 = fadd fast float %1237, 0xBFD51EB860000000
  %1239 = fadd fast float %1236, 0xBFD51EB860000000
  %1240 = fadd fast float %1235, 0xBFD51EB860000000
  %1241 = fmul fast float %1238, %1238
  %1242 = fmul fast float %1239, %1239
  %1243 = fmul fast float %1240, %1240
  %1244 = fmul fast float %1241, %1241
  %1245 = fmul fast float %1244, 1.000000e+02
  %1246 = fmul fast float %1242, %1242
  %1247 = fmul fast float %1246, 1.000000e+02
  %1248 = fmul fast float %1243, %1243
  %1249 = fmul fast float %1248, 1.000000e+02
  %1250 = fadd fast float %1245, 3.500000e+00
  %1251 = fadd fast float %1247, 3.500000e+00
  %1252 = fadd fast float %1249, 3.500000e+00
  %1253 = fdiv fast float %1250, %1234
  %1254 = fdiv fast float %1251, %1231
  %1255 = fdiv fast float %1252, %1229
  %1256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1257 = extractvalue %dx.types.CBufRet.f32 %1256, 0
  %1258 = extractvalue %dx.types.CBufRet.f32 %1256, 1
  %1259 = fmul fast float %1257, %73
  %1260 = fmul fast float %1258, %73
  %1261 = fdiv fast float 1.000000e+00, %1259
  %1262 = fdiv fast float 1.000000e+00, %1260
  %1263 = fmul fast float %56, 5.000000e-01
  %1264 = fmul fast float %1263, %1259
  %1265 = fmul fast float %1253, 0xBFF7154760000000
  %1266 = fmul fast float %1265, %1264
  %1267 = call float @dx.op.unary.f32(i32 21, float %1266)  ; Exp(value)
  %1268 = fmul fast float %1267, 2.500000e-01
  %1269 = fsub fast float 1.000000e+00, %1268
  %1270 = fmul fast float %1253, 0xBFDEC709E0000000
  %1271 = fmul fast float %1270, %1264
  %1272 = call float @dx.op.unary.f32(i32 21, float %1271)  ; Exp(value)
  %1273 = fmul fast float %1272, 7.500000e-01
  %1274 = fsub fast float %1269, %1273
  %1275 = fmul fast float %1254, 0xBFF7154760000000
  %1276 = fmul fast float %1275, %1264
  %1277 = call float @dx.op.unary.f32(i32 21, float %1276)  ; Exp(value)
  %1278 = fmul fast float %1277, 2.500000e-01
  %1279 = fsub fast float 1.000000e+00, %1278
  %1280 = fmul fast float %1254, 0xBFDEC709E0000000
  %1281 = fmul fast float %1280, %1264
  %1282 = call float @dx.op.unary.f32(i32 21, float %1281)  ; Exp(value)
  %1283 = fmul fast float %1282, 7.500000e-01
  %1284 = fsub fast float %1279, %1283
  %1285 = fmul fast float %1255, 0xBFF7154760000000
  %1286 = fmul fast float %1285, %1264
  %1287 = call float @dx.op.unary.f32(i32 21, float %1286)  ; Exp(value)
  %1288 = fmul fast float %1287, 2.500000e-01
  %1289 = fsub fast float 1.000000e+00, %1288
  %1290 = fmul fast float %1255, 0xBFDEC709E0000000
  %1291 = fmul fast float %1290, %1264
  %1292 = call float @dx.op.unary.f32(i32 21, float %1291)  ; Exp(value)
  %1293 = fmul fast float %1292, 7.500000e-01
  %1294 = fsub fast float %1289, %1293
  %1295 = fmul fast float %1215, 0x3F1A36E2E0000000
  %1296 = fmul fast float %1216, 0x3F1A36E2E0000000
  %1297 = fmul fast float %1217, 0x3F1A36E2E0000000
  %1298 = call float @dx.op.binary.f32(i32 36, float %1254, float %1255)  ; FMin(a,b)
  %1299 = call float @dx.op.binary.f32(i32 36, float %1253, float %1298)  ; FMin(a,b)
  %1300 = call float @dx.op.binary.f32(i32 36, float %1284, float %1294)  ; FMin(a,b)
  %1301 = call float @dx.op.binary.f32(i32 36, float %1274, float %1300)  ; FMin(a,b)
  %1302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1303 = extractvalue %dx.types.CBufRet.f32 %1302, 2
  %1304 = fmul fast float %1303, %1259
  %1305 = fmul fast float %1299, 0xBFF7154760000000
  %1306 = fmul fast float %1305, %1304
  %1307 = call float @dx.op.unary.f32(i32 21, float %1306)  ; Exp(value)
  %1308 = fmul fast float %1307, 2.500000e-01
  %1309 = fsub fast float 1.000000e+00, %1308
  %1310 = fmul fast float %1299, 0xBFDEC709E0000000
  %1311 = fmul fast float %1310, %1304
  %1312 = call float @dx.op.unary.f32(i32 21, float %1311)  ; Exp(value)
  %1313 = fmul fast float %1312, 7.500000e-01
  %1314 = fsub fast float %1309, %1313
  %1315 = extractvalue %dx.types.CBufRet.f32 %1302, 3
  %1316 = call float @dx.op.binary.f32(i32 36, float %1315, float %1314)  ; FMin(a,b)
  %1317 = fsub fast float %1316, %1301
  %1318 = call float @dx.op.unary.f32(i32 7, float %1317)  ; Saturate(value)
  %1319 = call float @dx.op.unary.f32(i32 7, float %1301)  ; Saturate(value)
  %1320 = extractvalue %dx.types.CBufRet.f32 %1302, 0
  %1321 = fmul fast float %1320, %1318
  %1322 = fptoui float %1321 to i32
  %1323 = uitofp i32 %1322 to float
  %1324 = fdiv fast float 1.000000e+00, %1323
  %1325 = icmp eq i32 %1322, 0
  br i1 %1325, label %1436, label %1326

; <label>:1326                                    ; preds = %1227
  %1327 = fmul fast float %1255, 0x3FA45F3060000000
  %1328 = fmul fast float %1299, 0x3FA45F3060000000
  br label %1329

; <label>:1329                                    ; preds = %1329, %1326
  %1330 = phi float [ %1427, %1329 ], [ %1295, %1326 ]
  %1331 = phi float [ %1428, %1329 ], [ %1296, %1326 ]
  %1332 = phi float [ %1429, %1329 ], [ %1297, %1326 ]
  %1333 = phi float [ %1430, %1329 ], [ 0x3F1A36E2E0000000, %1326 ]
  %1334 = phi float [ %1431, %1329 ], [ 0x3F1A36E2E0000000, %1326 ]
  %1335 = phi float [ %1432, %1329 ], [ 0x3F1A36E2E0000000, %1326 ]
  %1336 = phi i32 [ %1433, %1329 ], [ 0, %1326 ]
  %1337 = sitofp i32 %1336 to float
  %1338 = fadd fast float %1337, %1209
  %1339 = fmul fast float %1324, %1318
  %1340 = fmul fast float %1339, %1338
  %1341 = fsub fast float 1.000000e+00, %1319
  %1342 = fsub fast float %1341, %1340
  %1343 = fmul fast float %1342, 4.000000e+00
  %1344 = fmul fast float %1342, 2.000000e+00
  %1345 = fmul fast float %1342, %1342
  %1346 = fmul fast float %1345, 4.000000e+00
  %1347 = fadd fast float %1346, 1.000000e+00
  %1348 = call float @dx.op.unary.f32(i32 24, float %1347)  ; Sqrt(value)
  %1349 = fadd fast float %1344, %1348
  %1350 = fmul fast float %1343, %1349
  %1351 = fadd fast float %1350, 1.000000e+00
  %1352 = call float @dx.op.unary.f32(i32 23, float %1351)  ; Log(value)
  %1353 = fmul fast float %1352, 0xBFD5555560000000
  %1354 = call float @dx.op.unary.f32(i32 21, float %1353)  ; Exp(value)
  %1355 = fmul fast float %1354, %1354
  %1356 = fmul fast float %1355, %1351
  %1357 = fadd fast float %1354, 1.000000e+00
  %1358 = fadd fast float %1357, %1356
  %1359 = fdiv fast float 2.500000e-01, %1342
  %1360 = fmul fast float %1358, %1359
  %1361 = call float @dx.op.unary.f32(i32 23, float %1360)  ; Log(value)
  %1362 = fmul fast float %1361, 0x4000A2B240000000
  %1363 = fdiv fast float %1362, %1299
  %1364 = fmul fast float %1305, %1363
  %1365 = call float @dx.op.unary.f32(i32 21, float %1364)  ; Exp(value)
  %1366 = fmul fast float %1310, %1363
  %1367 = call float @dx.op.unary.f32(i32 21, float %1366)  ; Exp(value)
  %1368 = fadd fast float %1367, %1365
  %1369 = fmul fast float %1328, %1368
  %1370 = fdiv fast float %1318, %1369
  %1371 = fmul fast float %1337, 0x3FF9E377A0000000
  %1372 = call float @dx.op.unary.f32(i32 22, float %1371)  ; Frc(value)
  %1373 = fadd fast float %1372, %1209
  %1374 = fmul fast float %1373, 0x401921FB60000000
  %1375 = call float @dx.op.unary.f32(i32 13, float %1374)  ; Sin(value)
  %1376 = call float @dx.op.unary.f32(i32 12, float %1374)  ; Cos(value)
  %1377 = fmul fast float %1363, %1261
  %1378 = fmul fast float %1377, %1376
  %1379 = fmul fast float %1363, %1262
  %1380 = fmul fast float %1379, %1375
  %1381 = fadd fast float %1378, %1197
  %1382 = fadd fast float %1380, %1198
  %1383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %24, float %1381, float %1382, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1384 = extractvalue %dx.types.ResRet.f32 %1383, 0
  %1385 = extractvalue %dx.types.ResRet.f32 %1383, 1
  %1386 = extractvalue %dx.types.ResRet.f32 %1383, 2
  %1387 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %24, float %1381, float %1382, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1388 = extractvalue %dx.types.ResRet.f32 %1387, 0
  %1389 = fcmp fast ogt float %1388, -1.000000e+00
  %1390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1391 = extractvalue %dx.types.CBufRet.f32 %1390, 1
  %1392 = select i1 %1389, float %1391, float 1.000000e+00
  %1393 = fadd fast float %1388, 1.000000e+00
  %1394 = fmul fast float %1392, %1393
  %1395 = call float @dx.op.unary.f32(i32 6, float %1394)  ; FAbs(value)
  %1396 = fsub fast float %73, %1395
  %1397 = fmul fast float %1363, %1363
  %1398 = fmul fast float %1396, %1396
  %1399 = fadd fast float %1398, %1397
  %1400 = call float @dx.op.unary.f32(i32 24, float %1399)  ; Sqrt(value)
  %1401 = fmul fast float %1265, %1400
  %1402 = call float @dx.op.unary.f32(i32 21, float %1401)  ; Exp(value)
  %1403 = fmul fast float %1270, %1400
  %1404 = call float @dx.op.unary.f32(i32 21, float %1403)  ; Exp(value)
  %1405 = fadd fast float %1404, %1402
  %1406 = fmul fast float %1275, %1400
  %1407 = call float @dx.op.unary.f32(i32 21, float %1406)  ; Exp(value)
  %1408 = fmul fast float %1280, %1400
  %1409 = call float @dx.op.unary.f32(i32 21, float %1408)  ; Exp(value)
  %1410 = fadd fast float %1409, %1407
  %1411 = fmul fast float %1285, %1400
  %1412 = call float @dx.op.unary.f32(i32 21, float %1411)  ; Exp(value)
  %1413 = fmul fast float %1290, %1400
  %1414 = call float @dx.op.unary.f32(i32 21, float %1413)  ; Exp(value)
  %1415 = fadd fast float %1414, %1412
  %1416 = fmul fast float %1253, 0x3FA45F3060000000
  %1417 = fmul fast float %1416, %1370
  %1418 = fmul fast float %1417, %1405
  %1419 = fmul fast float %1254, 0x3FA45F3060000000
  %1420 = fmul fast float %1419, %1370
  %1421 = fmul fast float %1420, %1410
  %1422 = fmul fast float %1327, %1370
  %1423 = fmul fast float %1422, %1415
  %1424 = fmul fast float %1418, %1384
  %1425 = fmul fast float %1421, %1385
  %1426 = fmul fast float %1423, %1386
  %1427 = fadd fast float %1424, %1330
  %1428 = fadd fast float %1425, %1331
  %1429 = fadd fast float %1426, %1332
  %1430 = fadd fast float %1418, %1333
  %1431 = fadd fast float %1421, %1334
  %1432 = fadd fast float %1423, %1335
  %1433 = add nuw nsw i32 %1336, 1
  %1434 = icmp eq i32 %1433, %1322
  br i1 %1434, label %1435, label %1329, !llvm.loop !103

; <label>:1435                                    ; preds = %1329
  br label %1436

; <label>:1436                                    ; preds = %1435, %1227
  %1437 = phi float [ %1295, %1227 ], [ %1427, %1435 ]
  %1438 = phi float [ %1296, %1227 ], [ %1428, %1435 ]
  %1439 = phi float [ %1297, %1227 ], [ %1429, %1435 ]
  %1440 = phi float [ 0x3F1A36E2E0000000, %1227 ], [ %1430, %1435 ]
  %1441 = phi float [ 0x3F1A36E2E0000000, %1227 ], [ %1431, %1435 ]
  %1442 = phi float [ 0x3F1A36E2E0000000, %1227 ], [ %1432, %1435 ]
  %1443 = fmul fast float %1274, %1215
  %1444 = fmul fast float %1284, %1216
  %1445 = fmul fast float %1294, %1217
  %1446 = fsub fast float 1.000000e+00, %1274
  %1447 = fsub fast float 1.000000e+00, %1284
  %1448 = fsub fast float 1.000000e+00, %1294
  %1449 = fdiv fast float %1437, %1440
  %1450 = fdiv fast float %1438, %1441
  %1451 = fdiv fast float %1439, %1442
  %1452 = fmul fast float %1449, %1446
  %1453 = fmul fast float %1450, %1447
  %1454 = fmul fast float %1451, %1448
  %1455 = fadd fast float %1452, %1443
  %1456 = fadd fast float %1453, %1444
  %1457 = fadd fast float %1454, %1445
  br label %1458

; <label>:1458                                    ; preds = %1436, %1181
  %1459 = phi float [ %1455, %1436 ], [ 0.000000e+00, %1181 ]
  %1460 = phi float [ %1456, %1436 ], [ 0.000000e+00, %1181 ]
  %1461 = phi float [ %1457, %1436 ], [ 0.000000e+00, %1181 ]
  %1462 = phi float [ %1219, %1436 ], [ 0.000000e+00, %1181 ]
  %1463 = phi float [ %1220, %1436 ], [ 0.000000e+00, %1181 ]
  %1464 = phi float [ %1221, %1436 ], [ 0.000000e+00, %1181 ]
  %1465 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1466 = extractvalue %dx.types.CBufRet.i32 %1465, 3
  %1467 = and i32 %1466, 3
  %1468 = icmp ne i32 %1467, 0
  %1469 = and i32 %1466, 4
  %1470 = icmp ne i32 %1469, 0
  %1471 = and i1 %1468, %1470
  br i1 %1471, label %1472, label %1479, !dx.controlflow.hints !105

; <label>:1472                                    ; preds = %1458
  %1473 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %24, float %1197, float %1198, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1474 = extractvalue %dx.types.ResRet.f32 %1473, 0
  %1475 = fsub fast float 1.000000e+00, %1474
  %1476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1477 = extractvalue %dx.types.CBufRet.f32 %1476, 0
  %1478 = fcmp fast olt float %1475, %1477
  br label %1482

; <label>:1479                                    ; preds = %1458
  %1480 = icmp eq i32 %1469, 0
  %1481 = and i1 %1468, %1480
  br label %1482

; <label>:1482                                    ; preds = %1479, %1472
  %1483 = phi i1 [ %1478, %1472 ], [ %1481, %1479 ]
  %1484 = select i1 %1483, float 0.000000e+00, float %1463
  %1485 = select i1 %1483, float 0.000000e+00, float %1464
  %1486 = fmul fast float %1462, %1459
  %1487 = fmul fast float %1484, %1460
  %1488 = fmul fast float %1485, %1461
  %1489 = fadd fast float %1486, %1211
  %1490 = fadd fast float %1487, %1212
  %1491 = fadd fast float %1488, %1213
  %1492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1493 = extractvalue %dx.types.CBufRet.f32 %1492, 0
  br i1 %1483, label %1494, label %1513, !dx.controlflow.hints !106

; <label>:1494                                    ; preds = %1482
  %1495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1496 = extractvalue %dx.types.CBufRet.f32 %1495, 3
  %1497 = call float @dx.op.dot3.f32(i32 55, float %1188, float %1189, float %1190, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1498 = fmul fast float %1497, %1489
  %1499 = call float @dx.op.dot3.f32(i32 55, float %1194, float %1195, float %1196, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1500 = fmul fast float %1493, %1499
  %1501 = fadd fast float %1500, %1498
  br i1 %1471, label %1502, label %1508, !dx.controlflow.hints !107

; <label>:1502                                    ; preds = %1494
  %1503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1504 = extractvalue %dx.types.CBufRet.f32 %1503, 1
  %1505 = fadd fast float %1188, -1.000000e+00
  %1506 = fmul fast float %1504, %1505
  %1507 = fadd fast float %1506, 1.000000e+00
  br label %1508

; <label>:1508                                    ; preds = %1502, %1494
  %1509 = phi float [ %1507, %1502 ], [ %1188, %1494 ]
  %1510 = fsub fast float %1490, %1496
  %1511 = fmul fast float %1509, %1510
  %1512 = fadd fast float %1511, %1496
  br label %1523

; <label>:1513                                    ; preds = %1482
  %1514 = fmul fast float %1489, %1188
  %1515 = fmul fast float %1490, %1189
  %1516 = fmul fast float %1491, %1190
  %1517 = fmul fast float %1493, %1194
  %1518 = fmul fast float %1493, %1195
  %1519 = fmul fast float %1493, %1196
  %1520 = fadd fast float %1517, %1514
  %1521 = fadd fast float %1518, %1515
  %1522 = fadd fast float %1519, %1516
  br label %1523

; <label>:1523                                    ; preds = %1513, %1508
  %1524 = phi float [ %1501, %1508 ], [ %1520, %1513 ]
  %1525 = phi float [ %1512, %1508 ], [ %1521, %1513 ]
  %1526 = phi float [ %1491, %1508 ], [ %1522, %1513 ]
  %1527 = lshr i32 %49, 2
  %1528 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1529 = extractvalue %dx.types.CBufRet.i32 %1528, 1
  %1530 = shl i32 %1529, 1
  %1531 = lshr i32 %50, 4
  %1532 = and i32 %1531, 134217727
  %1533 = extractvalue %dx.types.CBufRet.i32 %1528, 0
  %1534 = mul i32 %1533, %1532
  %1535 = lshr i32 %49, 5
  %1536 = and i32 %1535, 67108863
  %1537 = add i32 %1530, %1536
  %1538 = add i32 %1537, %1534
  %1539 = shl i32 %1538, 2
  %1540 = and i32 %52, 24
  %1541 = and i32 %1527, 7
  %1542 = or i32 %1540, %1541
  %1543 = shl i32 1, %1542
  %1544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1539, i32 undef)  ; BufferLoad(srv,index,wot)
  %1545 = extractvalue %dx.types.ResRet.i32 %1544, 0
  %1546 = and i32 %1545, %1543
  %1547 = icmp eq i32 %1546, 0
  br i1 %1547, label %1563, label %1548, !dx.controlflow.hints !108

; <label>:1548                                    ; preds = %1523
  %1549 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %51, i32 %52, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1550 = extractvalue %dx.types.ResRet.f32 %1549, 0
  %1551 = fcmp fast ogt float %1550, 0.000000e+00
  br i1 %1551, label %1552, label %1563, !dx.controlflow.hints !109

; <label>:1552                                    ; preds = %1548
  %1553 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %51, i32 %52, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1554 = extractvalue %dx.types.ResRet.f32 %1553, 0
  %1555 = extractvalue %dx.types.ResRet.f32 %1553, 1
  %1556 = extractvalue %dx.types.ResRet.f32 %1553, 2
  %1557 = extractvalue %dx.types.ResRet.f32 %1553, 3
  %1558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %1559 = extractvalue %dx.types.CBufRet.f32 %1558, 2
  %1560 = fmul fast float %1559, %1554
  %1561 = fmul fast float %1559, %1555
  %1562 = fmul fast float %1559, %1556
  br label %1563

; <label>:1563                                    ; preds = %1552, %1548, %1523
  %1564 = phi float [ %1560, %1552 ], [ 0.000000e+00, %1548 ], [ 0.000000e+00, %1523 ]
  %1565 = phi float [ %1561, %1552 ], [ 0.000000e+00, %1548 ], [ 0.000000e+00, %1523 ]
  %1566 = phi float [ %1562, %1552 ], [ 0.000000e+00, %1548 ], [ 0.000000e+00, %1523 ]
  %1567 = phi float [ %1557, %1552 ], [ 0.000000e+00, %1548 ], [ 0.000000e+00, %1523 ]
  %1568 = fsub fast float 1.000000e+00, %1567
  %1569 = fmul fast float %1568, %1524
  %1570 = fmul fast float %1568, %1525
  %1571 = fmul fast float %1568, %1526
  %1572 = fadd fast float %1569, %1564
  %1573 = fadd fast float %1570, %1565
  %1574 = fadd fast float %1571, %1566
  %1575 = fadd fast float %1209, 0x3FE3C6EF40000000
  %1576 = call float @dx.op.unary.f32(i32 22, float %1575)  ; Frc(value)
  %1577 = call float @dx.op.unary.f32(i32 23, float %1572)  ; Log(value)
  %1578 = fadd fast float %1577, -7.000000e+00
  %1579 = call float @dx.op.unary.f32(i32 21, float %1578)  ; Exp(value)
  %1580 = fmul fast float %1576, 2.000000e+00
  %1581 = fadd fast float %1580, -1.000000e+00
  %1582 = fmul fast float %1579, %1581
  %1583 = fcmp fast ogt float %1572, 0.000000e+00
  %1584 = select i1 %1583, float %1582, float 0.000000e+00
  %1585 = fadd fast float %1584, %1572
  %1586 = fadd fast float %1209, 0x3FF3C6EF40000000
  %1587 = call float @dx.op.unary.f32(i32 22, float %1586)  ; Frc(value)
  %1588 = call float @dx.op.unary.f32(i32 23, float %1573)  ; Log(value)
  %1589 = fadd fast float %1588, -7.000000e+00
  %1590 = call float @dx.op.unary.f32(i32 21, float %1589)  ; Exp(value)
  %1591 = fmul fast float %1587, 2.000000e+00
  %1592 = fadd fast float %1591, -1.000000e+00
  %1593 = fmul fast float %1590, %1592
  %1594 = fcmp fast ogt float %1573, 0.000000e+00
  %1595 = select i1 %1594, float %1593, float 0.000000e+00
  %1596 = fadd fast float %1595, %1573
  %1597 = fadd fast float %1209, 0x3FFDAA66E0000000
  %1598 = call float @dx.op.unary.f32(i32 22, float %1597)  ; Frc(value)
  %1599 = call float @dx.op.unary.f32(i32 23, float %1574)  ; Log(value)
  %1600 = fadd fast float %1599, -6.000000e+00
  %1601 = call float @dx.op.unary.f32(i32 21, float %1600)  ; Exp(value)
  %1602 = fmul fast float %1598, 2.000000e+00
  %1603 = fadd fast float %1602, -1.000000e+00
  %1604 = fmul fast float %1601, %1603
  %1605 = fcmp fast ogt float %1574, 0.000000e+00
  %1606 = select i1 %1605, float %1604, float 0.000000e+00
  %1607 = fadd fast float %1606, %1574
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %51, i32 %52, i32 undef, float %1585, float %1596, float %1607, float %1585, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1608 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1609 = extractvalue %dx.types.CBufRet.i32 %1608, 0
  %1610 = and i32 %1609, 1
  %1611 = icmp eq i32 %1610, 0
  br i1 %1611, label %1615, label %1612, !dx.controlflow.hints !110

; <label>:1612                                    ; preds = %1563
  %1613 = and i32 %49, 2147483647
  %1614 = and i32 %50, 2147483647
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1613, i32 %1614, i32 undef, float %1489, float %1490, float %1491, float %1489, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1615

; <label>:1615                                    ; preds = %1612, %1563
  br label %1616

; <label>:1616                                    ; preds = %1639, %1615
  %1617 = phi float [ %1640, %1639 ], [ %1572, %1615 ]
  %1618 = phi float [ %1641, %1639 ], [ %1573, %1615 ]
  %1619 = phi float [ %1642, %1639 ], [ %1574, %1615 ]
  %1620 = phi float [ %1643, %1639 ], [ 1.000000e+00, %1615 ]
  %1621 = phi i32 [ %1626, %1639 ], [ 14, %1615 ]
  %1622 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1621)  ; FirstbitLo(value)
  %1623 = and i32 %1622, 31
  %1624 = shl i32 1, %1623
  %1625 = xor i32 %1624, -1
  %1626 = and i32 %1621, %1625
  %1627 = and i32 %1622, 1
  %1628 = lshr i32 %1622, 1
  %1629 = or i32 %1627, %51
  %1630 = add i32 %1628, %52
  %1631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1632 = extractvalue %dx.types.CBufRet.f32 %1631, 0
  %1633 = fptoui float %1632 to i32
  %1634 = icmp uge i32 %1629, %1633
  %1635 = extractvalue %dx.types.CBufRet.f32 %1631, 1
  %1636 = fptoui float %1635 to i32
  %1637 = icmp uge i32 %1630, %1636
  %1638 = or i1 %1634, %1637
  br i1 %1638, label %1639, label %1645, !dx.controlflow.hints !111

; <label>:1639                                    ; preds = %3172, %1616
  %1640 = phi float [ %1617, %1616 ], [ %3173, %3172 ]
  %1641 = phi float [ %1618, %1616 ], [ %3174, %3172 ]
  %1642 = phi float [ %1619, %1616 ], [ %3175, %3172 ]
  %1643 = phi float [ %1620, %1616 ], [ %3176, %3172 ]
  %1644 = icmp eq i32 %1626, 0
  br i1 %1644, label %3177, label %1616

; <label>:1645                                    ; preds = %1616
  %1646 = uitofp i32 %1629 to float
  %1647 = uitofp i32 %1630 to float
  %1648 = fadd fast float %1646, 5.000000e-01
  %1649 = fadd fast float %1647, 5.000000e-01
  %1650 = extractvalue %dx.types.CBufRet.f32 %1631, 2
  %1651 = extractvalue %dx.types.CBufRet.f32 %1631, 3
  %1652 = fmul fast float %1650, %1648
  %1653 = fmul fast float %1651, %1649
  %1654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1655 = extractvalue %dx.types.CBufRet.f32 %1654, 2
  %1656 = fmul fast float %1655, 0x3FE3C6EF40000000
  %1657 = frem fast float %1646, 2.560000e+02
  %1658 = frem fast float %1647, 2.560000e+02
  %1659 = fptoui float %1657 to i32
  %1660 = fptoui float %1658 to i32
  %1661 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1659, i32 %1660, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1662 = extractvalue %dx.types.ResRet.f32 %1661, 0
  %1663 = fadd fast float %1662, %1656
  %1664 = call float @dx.op.unary.f32(i32 22, float %1663)  ; Frc(value)
  %1665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1666 = extractvalue %dx.types.ResRet.i32 %1665, 0
  %1667 = and i32 %1666, 114688
  %1668 = icmp ne i32 %1667, 0
  %1669 = select i1 %1668, i32 %1629, i32 0
  %1670 = select i1 %1668, i32 %1630, i32 0
  %1671 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %1669, i32 %1670, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1672 = extractvalue %dx.types.ResRet.f32 %1671, 0
  %1673 = fmul fast float %1672, 2.550000e+02
  %1674 = fptoui float %1673 to i32
  %1675 = icmp eq i32 %1674, 3
  %1676 = and i1 %1668, %1675
  %1677 = getelementptr [4 x float], [4 x float]* %36, i32 0, i32 %1622
  %1678 = load float, float* %1677, align 4, !tbaa !53, !noalias !112
  %1679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1680 = extractvalue %dx.types.CBufRet.f32 %1679, 3
  %1681 = fcmp fast oge float %1678, %1680
  br i1 %1676, label %2541, label %1682, !dx.controlflow.hints !41

; <label>:1682                                    ; preds = %1645
  %1683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 170)  ; CBufferLoadLegacy(handle,regIndex)
  %1684 = extractvalue %dx.types.CBufRet.f32 %1683, 0
  %1685 = select i1 %1681, float %1684, float %1678
  %1686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1687 = extractvalue %dx.types.CBufRet.f32 %1686, 2
  %1688 = extractvalue %dx.types.CBufRet.f32 %1686, 3
  %1689 = fmul fast float %1648, 2.000000e+00
  %1690 = fmul fast float %1689, %1687
  %1691 = fmul fast float %1649, 2.000000e+00
  %1692 = fmul fast float %1691, %1688
  %1693 = fsub fast float 1.000000e+00, %1690
  %1694 = fsub fast float 1.000000e+00, %1692
  %1695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1696 = extractvalue %dx.types.CBufRet.f32 %1695, 0
  %1697 = extractvalue %dx.types.CBufRet.f32 %1695, 1
  %1698 = extractvalue %dx.types.CBufRet.f32 %1695, 2
  %1699 = fmul fast float %1693, %1696
  %1700 = fmul fast float %1693, %1697
  %1701 = fmul fast float %1693, %1698
  %1702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1703 = extractvalue %dx.types.CBufRet.f32 %1702, 0
  %1704 = extractvalue %dx.types.CBufRet.f32 %1702, 1
  %1705 = extractvalue %dx.types.CBufRet.f32 %1702, 2
  %1706 = fmul fast float %1694, %1703
  %1707 = fmul fast float %1694, %1704
  %1708 = fmul fast float %1694, %1705
  %1709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1710 = extractvalue %dx.types.CBufRet.f32 %1709, 0
  %1711 = extractvalue %dx.types.CBufRet.f32 %1709, 1
  %1712 = extractvalue %dx.types.CBufRet.f32 %1709, 2
  %1713 = fadd fast float %1706, %1710
  %1714 = fadd fast float %1713, %1699
  %1715 = fadd fast float %1707, %1711
  %1716 = fadd fast float %1715, %1700
  %1717 = fadd fast float %1708, %1712
  %1718 = fadd fast float %1717, %1701
  %1719 = fmul fast float %1714, %1685
  %1720 = fmul fast float %1716, %1685
  %1721 = fmul fast float %1718, %1685
  %1722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 163)  ; CBufferLoadLegacy(handle,regIndex)
  %1723 = extractvalue %dx.types.CBufRet.f32 %1722, 0
  %1724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1725 = extractvalue %dx.types.CBufRet.f32 %1724, 0
  %1726 = extractvalue %dx.types.CBufRet.f32 %1724, 1
  %1727 = extractvalue %dx.types.CBufRet.f32 %1724, 2
  %1728 = extractvalue %dx.types.CBufRet.f32 %1724, 3
  %1729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1730 = extractvalue %dx.types.CBufRet.f32 %1729, 0
  %1731 = extractvalue %dx.types.CBufRet.f32 %1729, 1
  %1732 = extractvalue %dx.types.CBufRet.f32 %1729, 2
  %1733 = extractvalue %dx.types.CBufRet.f32 %1729, 3
  %1734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1735 = extractvalue %dx.types.CBufRet.f32 %1734, 0
  %1736 = extractvalue %dx.types.CBufRet.f32 %1734, 1
  %1737 = extractvalue %dx.types.CBufRet.f32 %1734, 2
  %1738 = extractvalue %dx.types.CBufRet.f32 %1734, 3
  %1739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1740 = extractvalue %dx.types.CBufRet.f32 %1739, 0
  %1741 = extractvalue %dx.types.CBufRet.f32 %1739, 1
  %1742 = extractvalue %dx.types.CBufRet.f32 %1739, 2
  %1743 = extractvalue %dx.types.CBufRet.f32 %1739, 3
  %1744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1745 = extractvalue %dx.types.CBufRet.f32 %1744, 3
  %1746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1747 = extractvalue %dx.types.CBufRet.f32 %1746, 3
  %1748 = extractvalue %dx.types.CBufRet.f32 %1746, 0
  %1749 = extractvalue %dx.types.CBufRet.f32 %1746, 1
  %1750 = extractvalue %dx.types.CBufRet.f32 %1746, 2
  %1751 = fcmp fast olt float %1750, -5.000000e-01
  %1752 = extractvalue %dx.types.CBufRet.f32 %1722, 3
  %1753 = call float @dx.op.dot3.f32(i32 55, float %1719, float %1720, float %1721, float %1719, float %1720, float %1721)  ; Dot3(ax,ay,az,bx,by,bz)
  %1754 = call float @dx.op.unary.f32(i32 25, float %1753)  ; Rsqrt(value)
  %1755 = fmul fast float %1754, %1753
  %1756 = fmul fast float %1754, %1719
  %1757 = fmul fast float %1754, %1720
  %1758 = fmul fast float %1754, %1721
  %1759 = fadd fast float %1755, %1728
  br i1 %1681, label %1760, label %1772, !dx.controlflow.hints !42

; <label>:1760                                    ; preds = %1682
  %1761 = extractvalue %dx.types.CBufRet.f32 %1722, 2
  %1762 = extractvalue %dx.types.CBufRet.f32 %1722, 1
  %1763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 187)  ; CBufferLoadLegacy(handle,regIndex)
  %1764 = extractvalue %dx.types.CBufRet.f32 %1763, 1
  %1765 = extractvalue %dx.types.CBufRet.f32 %1763, 0
  %1766 = call float @dx.op.binary.f32(i32 35, float %1758, float %1765)  ; FMax(a,b)
  %1767 = call float @dx.op.binary.f32(i32 36, float %1766, float %1764)  ; FMin(a,b)
  %1768 = fmul fast float %1767, %1762
  %1769 = fadd fast float %1768, %1761
  %1770 = call float @dx.op.unary.f32(i32 7, float %1769)  ; Saturate(value)
  %1771 = fmul fast float %1758, %1723
  br label %1772

; <label>:1772                                    ; preds = %1760, %1682
  %1773 = phi float [ %1723, %1760 ], [ %1759, %1682 ]
  %1774 = phi float [ %1770, %1760 ], [ 0.000000e+00, %1682 ]
  %1775 = phi float [ %1771, %1760 ], [ %1721, %1682 ]
  %1776 = call float @dx.op.dot3.f32(i32 55, float %1756, float %1757, float %1758, float %1725, float %1726, float %1727)  ; Dot3(ax,ay,az,bx,by,bz)
  %1777 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1778 = extractvalue %dx.types.CBufRet.i32 %1777, 1
  %1779 = and i32 %1778, 1
  %1780 = icmp ne i32 %1779, 0
  %1781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1782 = extractvalue %dx.types.CBufRet.f32 %1781, 2
  %1783 = fcmp fast ogt float %1782, 0.000000e+00
  %1784 = and i1 %1780, %1783
  br i1 %1784, label %1785, label %2194, !dx.controlflow.hints !43

; <label>:1785                                    ; preds = %1772
  %1786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1787 = extractvalue %dx.types.CBufRet.f32 %1786, 3
  %1788 = select i1 %1681, float %1787, float %1755
  %1789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1790 = extractvalue %dx.types.CBufRet.f32 %1789, 3
  %1791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1792 = extractvalue %dx.types.CBufRet.f32 %1791, 2
  %1793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1794 = extractvalue %dx.types.CBufRet.f32 %1793, 2
  %1795 = fsub fast float %1792, %1794
  %1796 = and i32 %1778, 2
  %1797 = extractvalue %dx.types.CBufRet.i32 %1777, 0
  %1798 = call i32 @dx.op.binary.i32(i32 40, i32 %1797, i32 3)  ; UMin(a,b)
  %1799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1800 = extractvalue %dx.types.CBufRet.f32 %1799, 0
  %1801 = extractvalue %dx.types.CBufRet.f32 %1799, 1
  %1802 = extractvalue %dx.types.CBufRet.f32 %1793, 0
  %1803 = extractvalue %dx.types.CBufRet.f32 %1793, 1
  %1804 = fsub fast float %1800, %1802
  %1805 = fsub fast float %1801, %1803
  %1806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1807 = extractvalue %dx.types.CBufRet.f32 %1806, 0
  %1808 = fcmp fast ogt float %1807, 0.000000e+00
  %1809 = fsub fast float -0.000000e+00, %1804
  %1810 = fsub fast float -0.000000e+00, %1805
  %1811 = call float @dx.op.dot2.f32(i32 54, float %1756, float %1757, float %1756, float %1757)  ; Dot2(ax,ay,bx,by)
  %1812 = call float @dx.op.dot2.f32(i32 54, float %1756, float %1757, float %1809, float %1810)  ; Dot2(ax,ay,bx,by)
  %1813 = fmul fast float %1812, 2.000000e+00
  %1814 = call float @dx.op.dot2.f32(i32 54, float %1809, float %1810, float %1809, float %1810)  ; Dot2(ax,ay,bx,by)
  %1815 = fmul fast float %1807, %1807
  %1816 = fsub fast float %1814, %1815
  %1817 = fmul fast float %1813, %1813
  %1818 = fmul fast float %1811, 4.000000e+00
  %1819 = fmul fast float %1818, %1816
  %1820 = fsub fast float %1817, %1819
  %1821 = fcmp fast ogt float %1820, 0.000000e+00
  br i1 %1821, label %1822, label %1837, !dx.controlflow.hints !44

; <label>:1822                                    ; preds = %1785
  %1823 = fcmp fast ogt float %1813, 0.000000e+00
  %1824 = call float @dx.op.unary.f32(i32 24, float %1820)  ; Sqrt(value)
  %1825 = fsub fast float -0.000000e+00, %1824
  %1826 = select i1 %1823, float %1824, float %1825
  %1827 = fadd fast float %1826, %1813
  %1828 = fmul float %1827, -5.000000e-01
  %1829 = fdiv fast float %1828, %1811
  %1830 = call float @dx.op.binary.f32(i32 35, float %1829, float 0.000000e+00)  ; FMax(a,b)
  %1831 = call float @dx.op.binary.f32(i32 36, float %1788, float %1830)  ; FMin(a,b)
  %1832 = fdiv fast float %1816, %1828
  %1833 = call float @dx.op.binary.f32(i32 35, float %1832, float 0.000000e+00)  ; FMax(a,b)
  %1834 = call float @dx.op.binary.f32(i32 36, float %1788, float %1833)  ; FMin(a,b)
  %1835 = call float @dx.op.binary.f32(i32 36, float %1831, float %1834)  ; FMin(a,b)
  %1836 = call float @dx.op.binary.f32(i32 35, float %1831, float %1834)  ; FMax(a,b)
  br label %1837

; <label>:1837                                    ; preds = %1822, %1785
  %1838 = phi float [ %1836, %1822 ], [ -1.000000e+00, %1785 ]
  %1839 = phi float [ %1835, %1822 ], [ -1.000000e+00, %1785 ]
  %1840 = phi i1 [ true, %1822 ], [ false, %1785 ]
  %1841 = and i1 %1808, %1840
  br i1 %1841, label %1842, label %1844, !dx.controlflow.hints !45

; <label>:1842                                    ; preds = %1837
  %1843 = fcmp fast oeq float %1839, %1838
  br i1 %1843, label %2147, label %1845, !dx.controlflow.hints !46

; <label>:1844                                    ; preds = %1837
  br i1 %1808, label %2147, label %1845, !dx.controlflow.hints !47

; <label>:1845                                    ; preds = %1844, %1842
  %1846 = phi float [ %1788, %1844 ], [ %1838, %1842 ]
  %1847 = phi float [ 0.000000e+00, %1844 ], [ %1839, %1842 ]
  %1848 = icmp ne i32 %1796, 0
  %1849 = fmul fast float %1846, %1758
  %1850 = fadd fast float %1849, %1790
  %1851 = fmul fast float %1850, %1846
  %1852 = select i1 %1848, float 0.000000e+00, float %1851
  %1853 = fcmp fast oeq float %1758, 0.000000e+00
  %1854 = fdiv fast float %1795, %1758
  %1855 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1854)  ; FMax(a,b)
  %1856 = select i1 %1853, float %1846, float %1855
  %1857 = call float @dx.op.binary.f32(i32 36, float %1846, float %1856)  ; FMin(a,b)
  %1858 = fcmp fast ogt float %1758, 0.000000e+00
  %1859 = fcmp fast olt float %1795, 0.000000e+00
  br i1 %1858, label %1860, label %1917, !dx.controlflow.hints !48

; <label>:1860                                    ; preds = %1845
  %1861 = icmp eq i32 %1796, 0
  br i1 %1859, label %1862, label %1906, !dx.controlflow.hints !49

; <label>:1862                                    ; preds = %1860
  %1863 = select i1 %1861, float %1846, float 0.000000e+00
  %1864 = fsub fast float -0.000000e+00, %1863
  %1865 = call float @dx.op.unary.f32(i32 6, float %1864)  ; FAbs(value)
  %1866 = fmul fast float %1863, %1758
  %1867 = fadd fast float %1866, %1790
  %1868 = fmul fast float %1865, %1867
  %1869 = fsub fast float %1852, %1868
  %1870 = fsub fast float %1846, %1865
  %1871 = select i1 %1861, float %1870, float 0.000000e+00
  %1872 = extractvalue %dx.types.CBufRet.f32 %1786, 0
  %1873 = extractvalue %dx.types.CBufRet.f32 %1786, 1
  %1874 = extractvalue %dx.types.CBufRet.f32 %1786, 2
  %1875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1876 = extractvalue %dx.types.CBufRet.f32 %1875, 0
  %1877 = extractvalue %dx.types.CBufRet.f32 %1875, 1
  %1878 = extractvalue %dx.types.CBufRet.f32 %1875, 2
  %1879 = extractvalue %dx.types.CBufRet.f32 %1875, 3
  %1880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1881 = extractvalue %dx.types.CBufRet.f32 %1880, 3
  %1882 = call float @dx.op.binary.f32(i32 36, float %1869, float %1881)  ; FMin(a,b)
  %1883 = fmul fast float %1879, %1871
  %1884 = call float @dx.op.unary.f32(i32 7, float %1883)  ; Saturate(value)
  %1885 = fsub fast float %1876, %1872
  %1886 = fsub fast float %1877, %1873
  %1887 = fsub fast float %1878, %1874
  %1888 = fmul fast float %1884, %1885
  %1889 = fmul fast float %1884, %1886
  %1890 = fmul fast float %1884, %1887
  %1891 = fadd fast float %1888, %1872
  %1892 = fadd fast float %1889, %1873
  %1893 = fadd fast float %1890, %1874
  br i1 %1681, label %2147, label %1894, !dx.controlflow.hints !50

; <label>:1894                                    ; preds = %1862
  %1895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1896 = extractvalue %dx.types.CBufRet.f32 %1895, 0
  %1897 = extractvalue %dx.types.CBufRet.f32 %1895, 1
  %1898 = fadd fast float %1897, %1896
  %1899 = call float @dx.op.unary.f32(i32 7, float %1898)  ; Saturate(value)
  %1900 = extractvalue %dx.types.CBufRet.f32 %1895, 2
  %1901 = extractvalue %dx.types.CBufRet.f32 %1895, 3
  %1902 = fadd fast float %1901, %1900
  %1903 = call float @dx.op.unary.f32(i32 7, float %1902)  ; Saturate(value)
  %1904 = fmul fast float %1899, %1882
  %1905 = fmul fast float %1904, %1903
  br label %2147

; <label>:1906                                    ; preds = %1860
  br i1 %1861, label %1907, label %1928, !dx.controlflow.hints !51

; <label>:1907                                    ; preds = %1906
  %1908 = call float @dx.op.binary.f32(i32 36, float %1857, float %1847)  ; FMin(a,b)
  %1909 = fsub fast float %1857, %1908
  %1910 = fsub fast float %1909, %1846
  %1911 = call float @dx.op.unary.f32(i32 6, float %1910)  ; FAbs(value)
  %1912 = fadd fast float %1909, %1846
  %1913 = fmul fast float %1912, %1758
  %1914 = fadd fast float %1913, %1790
  %1915 = fmul fast float %1914, %1911
  %1916 = fsub fast float %1852, %1915
  br label %1928

; <label>:1917                                    ; preds = %1845
  br i1 %1859, label %1918, label %1928, !dx.controlflow.hints !52

; <label>:1918                                    ; preds = %1917
  %1919 = call float @dx.op.binary.f32(i32 35, float %1847, float %1857)  ; FMax(a,b)
  %1920 = icmp eq i32 %1796, 0
  %1921 = select i1 %1920, float %1857, float 0.000000e+00
  %1922 = fsub fast float -0.000000e+00, %1921
  %1923 = call float @dx.op.unary.f32(i32 6, float %1922)  ; FAbs(value)
  %1924 = fmul fast float %1921, %1758
  %1925 = fadd fast float %1924, %1790
  %1926 = fmul fast float %1923, %1925
  %1927 = fsub fast float %1852, %1926
  br label %1928

; <label>:1928                                    ; preds = %1918, %1917, %1907, %1906
  %1929 = phi float [ %1847, %1906 ], [ %1847, %1907 ], [ %1919, %1918 ], [ %1847, %1917 ]
  %1930 = phi float [ 0.000000e+00, %1906 ], [ %1911, %1907 ], [ %1923, %1918 ], [ 0.000000e+00, %1917 ]
  %1931 = phi float [ %1852, %1906 ], [ %1916, %1907 ], [ %1927, %1918 ], [ %1852, %1917 ]
  %1932 = phi float [ %1857, %1906 ], [ %1857, %1907 ], [ %1846, %1918 ], [ %1846, %1917 ]
  %1933 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 0
  store float -1.000000e+00, float* %1933, align 4, !tbaa !53, !noalias !113
  %1934 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 1
  store float -1.000000e+00, float* %1934, align 4, !tbaa !53, !noalias !113
  %1935 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 2
  store float -1.000000e+00, float* %1935, align 4, !tbaa !53, !noalias !113
  %1936 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 0
  store float -1.000000e+00, float* %1936, align 4, !tbaa !53, !noalias !113
  %1937 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 1
  store float -1.000000e+00, float* %1937, align 4, !tbaa !53, !noalias !113
  %1938 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 2
  store float -1.000000e+00, float* %1938, align 4, !tbaa !53, !noalias !113
  %1939 = icmp sgt i32 %1798, 0
  br i1 %1939, label %1940, label %2001

; <label>:1940                                    ; preds = %1928
  br label %1941

; <label>:1941                                    ; preds = %1990, %1940
  %1942 = phi i32 [ %1991, %1990 ], [ 0, %1940 ]
  %1943 = phi i32 [ %1992, %1990 ], [ 0, %1940 ]
  %1944 = add nuw i32 %1943, 171
  %1945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 %1944)  ; CBufferLoadLegacy(handle,regIndex)
  %1946 = extractvalue %dx.types.CBufRet.f32 %1945, 0
  %1947 = extractvalue %dx.types.CBufRet.f32 %1945, 1
  %1948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1949 = extractvalue %dx.types.CBufRet.f32 %1948, 0
  %1950 = extractvalue %dx.types.CBufRet.f32 %1948, 1
  %1951 = fsub fast float %1946, %1949
  %1952 = fsub fast float %1947, %1950
  %1953 = extractvalue %dx.types.CBufRet.f32 %1945, 2
  %1954 = fsub fast float -0.000000e+00, %1951
  %1955 = fsub fast float -0.000000e+00, %1952
  %1956 = call float @dx.op.dot2.f32(i32 54, float %1756, float %1757, float %1954, float %1955)  ; Dot2(ax,ay,bx,by)
  %1957 = fmul fast float %1956, 2.000000e+00
  %1958 = call float @dx.op.dot2.f32(i32 54, float %1954, float %1955, float %1954, float %1955)  ; Dot2(ax,ay,bx,by)
  %1959 = fmul fast float %1953, %1953
  %1960 = fsub fast float %1958, %1959
  %1961 = fmul fast float %1957, %1957
  %1962 = fmul fast float %1818, %1960
  %1963 = fsub fast float %1961, %1962
  %1964 = fcmp fast ogt float %1963, 0.000000e+00
  br i1 %1964, label %1965, label %1980, !dx.controlflow.hints !44

; <label>:1965                                    ; preds = %1941
  %1966 = fcmp fast ogt float %1957, 0.000000e+00
  %1967 = call float @dx.op.unary.f32(i32 24, float %1963)  ; Sqrt(value)
  %1968 = fsub fast float -0.000000e+00, %1967
  %1969 = select i1 %1966, float %1967, float %1968
  %1970 = fadd fast float %1969, %1957
  %1971 = fmul float %1970, -5.000000e-01
  %1972 = fdiv fast float %1971, %1811
  %1973 = call float @dx.op.binary.f32(i32 35, float %1972, float 0.000000e+00)  ; FMax(a,b)
  %1974 = call float @dx.op.binary.f32(i32 36, float %1846, float %1973)  ; FMin(a,b)
  %1975 = fdiv fast float %1960, %1971
  %1976 = call float @dx.op.binary.f32(i32 35, float %1975, float 0.000000e+00)  ; FMax(a,b)
  %1977 = call float @dx.op.binary.f32(i32 36, float %1846, float %1976)  ; FMin(a,b)
  %1978 = call float @dx.op.binary.f32(i32 36, float %1974, float %1977)  ; FMin(a,b)
  %1979 = call float @dx.op.binary.f32(i32 35, float %1974, float %1977)  ; FMax(a,b)
  br label %1980

; <label>:1980                                    ; preds = %1965, %1941
  %1981 = phi float [ %1979, %1965 ], [ -1.000000e+00, %1941 ]
  %1982 = phi float [ %1978, %1965 ], [ -1.000000e+00, %1941 ]
  %1983 = phi i1 [ true, %1965 ], [ false, %1941 ]
  br i1 %1983, label %1984, label %1990, !dx.controlflow.hints !69

; <label>:1984                                    ; preds = %1980
  %1985 = call float @dx.op.binary.f32(i32 35, float %1929, float %1982)  ; FMax(a,b)
  %1986 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %1943
  store float %1985, float* %1986, align 4, !tbaa !53, !noalias !113
  %1987 = call float @dx.op.binary.f32(i32 35, float %1929, float %1981)  ; FMax(a,b)
  %1988 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 %1943
  store float %1987, float* %1988, align 4, !tbaa !53, !noalias !113
  %1989 = add nsw i32 %1942, 1
  br label %1990

; <label>:1990                                    ; preds = %1984, %1980
  %1991 = phi i32 [ %1989, %1984 ], [ %1942, %1980 ]
  %1992 = add nuw nsw i32 %1943, 1
  %1993 = icmp eq i32 %1992, %1798
  br i1 %1993, label %1994, label %1941

; <label>:1994                                    ; preds = %1990
  %1995 = load float, float* %1935, align 4, !tbaa !53, !alias.scope !123, !noalias !126
  %1996 = load float, float* %1934, align 4, !tbaa !53, !alias.scope !129, !noalias !130
  %1997 = load float, float* %1933, align 4, !tbaa !53, !alias.scope !131, !noalias !132
  %1998 = load float, float* %1938, align 4, !tbaa !53, !alias.scope !133, !noalias !136
  %1999 = load float, float* %1937, align 4, !tbaa !53, !alias.scope !139, !noalias !140
  %2000 = load float, float* %1936, align 4, !tbaa !53, !alias.scope !141, !noalias !142
  br label %2001

; <label>:2001                                    ; preds = %1994, %1928
  %2002 = phi float [ -1.000000e+00, %1928 ], [ %2000, %1994 ]
  %2003 = phi float [ -1.000000e+00, %1928 ], [ %1999, %1994 ]
  %2004 = phi float [ -1.000000e+00, %1928 ], [ %1998, %1994 ]
  %2005 = phi float [ -1.000000e+00, %1928 ], [ %1997, %1994 ]
  %2006 = phi float [ -1.000000e+00, %1928 ], [ %1996, %1994 ]
  %2007 = phi float [ -1.000000e+00, %1928 ], [ %1995, %1994 ]
  %2008 = phi i32 [ 0, %1928 ], [ %1991, %1994 ]
  %2009 = call float @dx.op.binary.f32(i32 36, float %2006, float %2007)  ; FMin(a,b)
  %2010 = call float @dx.op.binary.f32(i32 36, float %2005, float %2009)  ; FMin(a,b)
  %2011 = call float @dx.op.binary.f32(i32 35, float %2005, float %2006)  ; FMax(a,b)
  %2012 = call float @dx.op.binary.f32(i32 36, float %2011, float %2007)  ; FMin(a,b)
  %2013 = call float @dx.op.binary.f32(i32 36, float %2005, float %2006)  ; FMin(a,b)
  %2014 = call float @dx.op.binary.f32(i32 35, float %2013, float %2012)  ; FMax(a,b)
  %2015 = call float @dx.op.binary.f32(i32 35, float %2006, float %2007)  ; FMax(a,b)
  %2016 = call float @dx.op.binary.f32(i32 35, float %2005, float %2015)  ; FMax(a,b)
  store float %2010, float* %1933, align 4, !tbaa !53, !alias.scope !131, !noalias !132
  store float %2014, float* %1934, align 4, !tbaa !53, !alias.scope !129, !noalias !130
  store float %2016, float* %1935, align 4, !tbaa !53, !alias.scope !123, !noalias !126
  %2017 = call float @dx.op.binary.f32(i32 36, float %2003, float %2004)  ; FMin(a,b)
  %2018 = call float @dx.op.binary.f32(i32 36, float %2002, float %2017)  ; FMin(a,b)
  %2019 = call float @dx.op.binary.f32(i32 35, float %2002, float %2003)  ; FMax(a,b)
  %2020 = call float @dx.op.binary.f32(i32 36, float %2019, float %2004)  ; FMin(a,b)
  %2021 = call float @dx.op.binary.f32(i32 36, float %2002, float %2003)  ; FMin(a,b)
  %2022 = call float @dx.op.binary.f32(i32 35, float %2021, float %2020)  ; FMax(a,b)
  %2023 = call float @dx.op.binary.f32(i32 35, float %2003, float %2004)  ; FMax(a,b)
  %2024 = call float @dx.op.binary.f32(i32 35, float %2002, float %2023)  ; FMax(a,b)
  store float %2018, float* %1936, align 4, !tbaa !53, !alias.scope !141, !noalias !142
  store float %2022, float* %1937, align 4, !tbaa !53, !alias.scope !139, !noalias !140
  store float %2024, float* %1938, align 4, !tbaa !53, !alias.scope !133, !noalias !136
  %2025 = sub nsw i32 3, %2008
  %2026 = icmp sgt i32 %2025, 2
  br i1 %2026, label %2027, label %2065, !dx.controlflow.hints !90

; <label>:2027                                    ; preds = %2001
  %2028 = icmp eq i32 %1796, 0
  %2029 = fsub fast float %1846, %1930
  %2030 = select i1 %2028, float %2029, float %1930
  %2031 = extractvalue %dx.types.CBufRet.f32 %1786, 0
  %2032 = extractvalue %dx.types.CBufRet.f32 %1786, 1
  %2033 = extractvalue %dx.types.CBufRet.f32 %1786, 2
  %2034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2035 = extractvalue %dx.types.CBufRet.f32 %2034, 0
  %2036 = extractvalue %dx.types.CBufRet.f32 %2034, 1
  %2037 = extractvalue %dx.types.CBufRet.f32 %2034, 2
  %2038 = extractvalue %dx.types.CBufRet.f32 %2034, 3
  %2039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2040 = extractvalue %dx.types.CBufRet.f32 %2039, 3
  %2041 = call float @dx.op.binary.f32(i32 36, float %1931, float %2040)  ; FMin(a,b)
  %2042 = fmul fast float %2038, %2030
  %2043 = call float @dx.op.unary.f32(i32 7, float %2042)  ; Saturate(value)
  %2044 = fsub fast float %2035, %2031
  %2045 = fsub fast float %2036, %2032
  %2046 = fsub fast float %2037, %2033
  %2047 = fmul fast float %2043, %2044
  %2048 = fmul fast float %2043, %2045
  %2049 = fmul fast float %2043, %2046
  %2050 = fadd fast float %2047, %2031
  %2051 = fadd fast float %2048, %2032
  %2052 = fadd fast float %2049, %2033
  br i1 %1681, label %2147, label %2053, !dx.controlflow.hints !50

; <label>:2053                                    ; preds = %2027
  %2054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2055 = extractvalue %dx.types.CBufRet.f32 %2054, 0
  %2056 = extractvalue %dx.types.CBufRet.f32 %2054, 1
  %2057 = fadd fast float %2056, %2055
  %2058 = call float @dx.op.unary.f32(i32 7, float %2057)  ; Saturate(value)
  %2059 = extractvalue %dx.types.CBufRet.f32 %2054, 2
  %2060 = extractvalue %dx.types.CBufRet.f32 %2054, 3
  %2061 = fadd fast float %2060, %2059
  %2062 = call float @dx.op.unary.f32(i32 7, float %2061)  ; Saturate(value)
  %2063 = fmul fast float %2058, %2041
  %2064 = fmul fast float %2063, %2062
  br label %2147

; <label>:2065                                    ; preds = %2001
  %2066 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %2025
  %2067 = load float, float* %2066, align 4, !tbaa !53, !noalias !113
  %2068 = fcmp fast olt float %2067, %1932
  %2069 = icmp sgt i32 %2008, 0
  %2070 = and i1 %2069, %2068
  br i1 %2070, label %2071, label %2108

; <label>:2071                                    ; preds = %2065
  br label %2072

; <label>:2072                                    ; preds = %2101, %2071
  %2073 = phi float [ %2102, %2101 ], [ %1930, %2071 ]
  %2074 = phi float [ %2103, %2101 ], [ %1931, %2071 ]
  %2075 = phi float [ %2083, %2101 ], [ %2067, %2071 ]
  %2076 = phi i32 [ %2080, %2101 ], [ %2025, %2071 ]
  %2077 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 %2076
  %2078 = load float, float* %2077, align 4, !tbaa !53, !noalias !113
  %2079 = icmp slt i32 %2076, 2
  %2080 = add nsw i32 %2076, 1
  %2081 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %2080
  %2082 = load float, float* %2081, align 4, !tbaa !53, !noalias !113
  %2083 = select i1 %2079, float %2082, float %1846
  %2084 = call float @dx.op.binary.f32(i32 36, float %2083, float %2078)  ; FMin(a,b)
  %2085 = call float @dx.op.binary.f32(i32 36, float %1932, float %2084)  ; FMin(a,b)
  %2086 = icmp eq i32 %1796, 0
  %2087 = fadd fast float %2085, %2075
  %2088 = fmul fast float %2087, %1758
  %2089 = fadd fast float %2088, %1790
  br i1 %2086, label %2095, label %2090, !dx.controlflow.hints !91

; <label>:2090                                    ; preds = %2072
  %2091 = fsub fast float %2085, %2075
  %2092 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2091)  ; FMax(a,b)
  %2093 = fmul fast float %2092, %2089
  %2094 = fadd fast float %2093, %2074
  br label %2101

; <label>:2095                                    ; preds = %2072
  %2096 = fsub fast float %2075, %2085
  %2097 = call float @dx.op.unary.f32(i32 6, float %2096)  ; FAbs(value)
  %2098 = fadd fast float %2097, %2073
  %2099 = fmul fast float %2097, %2089
  %2100 = fsub fast float %2074, %2099
  br label %2101

; <label>:2101                                    ; preds = %2095, %2090
  %2102 = phi float [ %2092, %2090 ], [ %2098, %2095 ]
  %2103 = phi float [ %2094, %2090 ], [ %2100, %2095 ]
  %2104 = fcmp fast olt float %2083, %1932
  %2105 = icmp slt i32 %2080, 3
  %2106 = and i1 %2105, %2104
  br i1 %2106, label %2072, label %2107

; <label>:2107                                    ; preds = %2101
  br label %2108

; <label>:2108                                    ; preds = %2107, %2065
  %2109 = phi float [ %1930, %2065 ], [ %2102, %2107 ]
  %2110 = phi float [ %1931, %2065 ], [ %2103, %2107 ]
  %2111 = fsub fast float %1846, %2109
  %2112 = select i1 %1848, float %2109, float %2111
  %2113 = extractvalue %dx.types.CBufRet.f32 %1786, 0
  %2114 = extractvalue %dx.types.CBufRet.f32 %1786, 1
  %2115 = extractvalue %dx.types.CBufRet.f32 %1786, 2
  %2116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2117 = extractvalue %dx.types.CBufRet.f32 %2116, 0
  %2118 = extractvalue %dx.types.CBufRet.f32 %2116, 1
  %2119 = extractvalue %dx.types.CBufRet.f32 %2116, 2
  %2120 = extractvalue %dx.types.CBufRet.f32 %2116, 3
  %2121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2122 = extractvalue %dx.types.CBufRet.f32 %2121, 3
  %2123 = call float @dx.op.binary.f32(i32 36, float %2110, float %2122)  ; FMin(a,b)
  %2124 = fmul fast float %2120, %2112
  %2125 = call float @dx.op.unary.f32(i32 7, float %2124)  ; Saturate(value)
  %2126 = fsub fast float %2117, %2113
  %2127 = fsub fast float %2118, %2114
  %2128 = fsub fast float %2119, %2115
  %2129 = fmul fast float %2125, %2126
  %2130 = fmul fast float %2125, %2127
  %2131 = fmul fast float %2125, %2128
  %2132 = fadd fast float %2129, %2113
  %2133 = fadd fast float %2130, %2114
  %2134 = fadd fast float %2131, %2115
  br i1 %1681, label %2147, label %2135, !dx.controlflow.hints !50

; <label>:2135                                    ; preds = %2108
  %2136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2137 = extractvalue %dx.types.CBufRet.f32 %2136, 0
  %2138 = extractvalue %dx.types.CBufRet.f32 %2136, 1
  %2139 = fadd fast float %2138, %2137
  %2140 = call float @dx.op.unary.f32(i32 7, float %2139)  ; Saturate(value)
  %2141 = extractvalue %dx.types.CBufRet.f32 %2136, 2
  %2142 = extractvalue %dx.types.CBufRet.f32 %2136, 3
  %2143 = fadd fast float %2142, %2141
  %2144 = call float @dx.op.unary.f32(i32 7, float %2143)  ; Saturate(value)
  %2145 = fmul fast float %2140, %2123
  %2146 = fmul fast float %2145, %2144
  br label %2147

; <label>:2147                                    ; preds = %2135, %2108, %2053, %2027, %1894, %1862, %1844, %1842
  %2148 = phi float [ 0.000000e+00, %1842 ], [ 0.000000e+00, %1844 ], [ %1871, %1894 ], [ %1871, %1862 ], [ %2030, %2053 ], [ %2030, %2027 ], [ %2112, %2135 ], [ %2112, %2108 ]
  %2149 = phi float [ 0.000000e+00, %1842 ], [ 0.000000e+00, %1844 ], [ %1905, %1894 ], [ %1882, %1862 ], [ %2064, %2053 ], [ %2041, %2027 ], [ %2146, %2135 ], [ %2123, %2108 ]
  %2150 = phi float [ 0.000000e+00, %1842 ], [ 0.000000e+00, %1844 ], [ %1891, %1894 ], [ %1891, %1862 ], [ %2050, %2053 ], [ %2050, %2027 ], [ %2132, %2135 ], [ %2132, %2108 ]
  %2151 = phi float [ 0.000000e+00, %1842 ], [ 0.000000e+00, %1844 ], [ %1892, %1894 ], [ %1892, %1862 ], [ %2051, %2053 ], [ %2051, %2027 ], [ %2133, %2135 ], [ %2133, %2108 ]
  %2152 = phi float [ 0.000000e+00, %1842 ], [ 0.000000e+00, %1844 ], [ %1893, %1894 ], [ %1893, %1862 ], [ %2052, %2053 ], [ %2052, %2027 ], [ %2134, %2135 ], [ %2134, %2108 ]
  %2153 = fmul fast float %1782, %2149
  %2154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2155 = extractvalue %dx.types.CBufRet.f32 %2154, 2
  %2156 = fsub fast float %1792, %2155
  %2157 = fcmp fast olt float %2153, -2.000000e+01
  %2158 = call float @dx.op.unary.f32(i32 21, float %2153)  ; Exp(value)
  %2159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2160 = extractvalue %dx.types.CBufRet.f32 %2159, 2
  %2161 = extractvalue %dx.types.CBufRet.f32 %2159, 3
  %2162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2163 = extractvalue %dx.types.CBufRet.f32 %2162, 2
  %2164 = fmul fast float %2161, %2156
  %2165 = call float @dx.op.unary.f32(i32 7, float %2164)  ; Saturate(value)
  %2166 = fsub fast float 1.000000e+00, %2165
  %2167 = fmul fast float %1758, 5.000000e-01
  %2168 = fadd fast float %2167, 5.000000e-01
  %2169 = call float @dx.op.unary.f32(i32 7, float %2168)  ; Saturate(value)
  %2170 = fsub fast float 1.000000e+00, %2169
  %2171 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2166)  ; FMax(a,b)
  %2172 = fdiv fast float %2170, %2171
  %2173 = fsub fast float %2156, %1721
  %2174 = call float @dx.op.unary.f32(i32 6, float %2173)  ; FAbs(value)
  %2175 = fmul fast float %2174, %2160
  %2176 = call float @dx.op.unary.f32(i32 7, float %2172)  ; Saturate(value)
  %2177 = fsub fast float 1.000000e+00, %2175
  %2178 = fmul fast float %2177, %2176
  %2179 = fadd fast float %2178, %2175
  %2180 = fmul fast float %2163, %2156
  %2181 = call float @dx.op.unary.f32(i32 7, float %2180)  ; Saturate(value)
  %2182 = fsub fast float 1.000000e+00, %2179
  %2183 = fmul fast float %2182, %2181
  %2184 = fadd fast float %2183, %2179
  %2185 = call float @dx.op.unary.f32(i32 7, float %2184)  ; Saturate(value)
  %2186 = fadd fast float %2158, -1.000000e+00
  %2187 = select i1 %2157, float -1.000000e+00, float %2186
  %2188 = fmul fast float %2185, %2187
  %2189 = fadd fast float %2188, 1.000000e+00
  %2190 = fsub fast float -0.000000e+00, %2188
  %2191 = fmul fast float %2150, %2190
  %2192 = fmul fast float %2151, %2190
  %2193 = fmul fast float %2152, %2190
  br label %2194

; <label>:2194                                    ; preds = %2147, %1772
  %2195 = phi float [ %2148, %2147 ], [ 0.000000e+00, %1772 ]
  %2196 = phi float [ %2189, %2147 ], [ 1.000000e+00, %1772 ]
  %2197 = phi float [ %2191, %2147 ], [ 0.000000e+00, %1772 ]
  %2198 = phi float [ %2192, %2147 ], [ 0.000000e+00, %1772 ]
  %2199 = phi float [ %2193, %2147 ], [ 0.000000e+00, %1772 ]
  %2200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2201 = extractvalue %dx.types.CBufRet.f32 %2200, 1
  %2202 = fsub fast float 1.000000e+00, %2196
  %2203 = fmul fast float %2202, %1773
  %2204 = fmul fast float %2203, %2201
  %2205 = fsub fast float %1773, %2204
  br i1 %1751, label %2206, label %2238, !dx.controlflow.hints !92

; <label>:2206                                    ; preds = %2194
  %2207 = fmul fast float %1776, %1748
  %2208 = fadd fast float %2207, %1749
  %2209 = call float @dx.op.unary.f32(i32 7, float %2208)  ; Saturate(value)
  %2210 = fmul fast float %1730, %2205
  %2211 = fsub fast float -0.000000e+00, %2210
  %2212 = fmul fast float %1731, %2205
  %2213 = fsub fast float -0.000000e+00, %2212
  %2214 = call float @dx.op.unary.f32(i32 21, float %2211)  ; Exp(value)
  %2215 = call float @dx.op.unary.f32(i32 21, float %2213)  ; Exp(value)
  %2216 = call float @dx.op.binary.f32(i32 35, float %1738, float %2214)  ; FMax(a,b)
  %2217 = call float @dx.op.binary.f32(i32 35, float %1738, float %2215)  ; FMax(a,b)
  %2218 = fsub fast float %2217, %2216
  %2219 = fmul fast float %2218, %2209
  %2220 = fadd fast float %2219, %2216
  %2221 = call float @dx.op.unary.f32(i32 7, float %2220)  ; Saturate(value)
  %2222 = fmul fast float %1774, %1752
  %2223 = fsub fast float 1.000000e+00, %2222
  %2224 = select i1 %1681, float %2223, float %2221
  %2225 = fsub fast float %1735, %1740
  %2226 = fsub fast float %1736, %1741
  %2227 = fsub fast float %1737, %1742
  %2228 = fmul fast float %2209, %2225
  %2229 = fmul fast float %2209, %2226
  %2230 = fmul fast float %2209, %2227
  %2231 = fadd fast float %2228, %1740
  %2232 = fadd fast float %2229, %1741
  %2233 = fadd fast float %2230, %1742
  %2234 = fsub fast float 1.000000e+00, %2224
  %2235 = fmul fast float %2234, %2231
  %2236 = fmul fast float %2234, %2232
  %2237 = fmul fast float %2234, %2233
  br label %2309

; <label>:2238                                    ; preds = %2194
  %2239 = fmul fast float %2205, %1747
  %2240 = call float @dx.op.unary.f32(i32 7, float %2239)  ; Saturate(value)
  %2241 = fsub fast float 2.000000e+00, %2240
  %2242 = fmul fast float %2240, 9.921875e-01
  %2243 = fmul fast float %2242, %2241
  %2244 = fadd fast float %2243, 3.906250e-03
  %2245 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %24, float %2244, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2246 = extractvalue %dx.types.ResRet.f32 %2245, 0
  %2247 = fsub fast float %2240, %2246
  %2248 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2247)  ; FMax(a,b)
  %2249 = fmul fast float %1775, %1733
  %2250 = call float @dx.op.unary.f32(i32 6, float %2249)  ; FAbs(value)
  %2251 = fcmp fast ogt float %2250, 0x3EB0C6F7A0000000
  br i1 %2251, label %2252, label %2258, !dx.controlflow.hints !93

; <label>:2252                                    ; preds = %2238
  %2253 = fmul fast float %2249, 0xBFF7154760000000
  %2254 = call float @dx.op.unary.f32(i32 21, float %2253)  ; Exp(value)
  %2255 = fsub fast float 1.000000e+00, %2254
  %2256 = fdiv fast float %2255, %2249
  %2257 = fmul fast float %2256, %1743
  br label %2258

; <label>:2258                                    ; preds = %2252, %2238
  %2259 = phi float [ %2257, %2252 ], [ %1743, %2238 ]
  %2260 = fadd fast float %2259, %1745
  %2261 = fmul fast float %2260, %2248
  %2262 = fmul fast float %1730, %2261
  %2263 = fsub fast float -0.000000e+00, %2262
  %2264 = fmul fast float %1731, %2261
  %2265 = fsub fast float -0.000000e+00, %2264
  %2266 = fmul fast float %1732, %2261
  %2267 = fsub fast float -0.000000e+00, %2266
  %2268 = call float @dx.op.unary.f32(i32 21, float %2263)  ; Exp(value)
  %2269 = call float @dx.op.unary.f32(i32 21, float %2265)  ; Exp(value)
  %2270 = call float @dx.op.unary.f32(i32 21, float %2267)  ; Exp(value)
  br i1 %1681, label %2271, label %2279, !dx.controlflow.hints !94

; <label>:2271                                    ; preds = %2258
  %2272 = fmul fast float %2268, %1774
  %2273 = fmul fast float %2269, %1774
  %2274 = fmul fast float %2270, %1774
  %2275 = fsub fast float 1.000000e+00, %1774
  %2276 = fadd fast float %2272, %2275
  %2277 = fadd fast float %2273, %2275
  %2278 = fadd fast float %2274, %2275
  br label %2279

; <label>:2279                                    ; preds = %2271, %2258
  %2280 = phi float [ %2276, %2271 ], [ %2268, %2258 ]
  %2281 = phi float [ %2277, %2271 ], [ %2269, %2258 ]
  %2282 = phi float [ %2278, %2271 ], [ %2270, %2258 ]
  %2283 = fmul fast float %1776, %1776
  %2284 = fadd fast float %2283, 1.000000e+00
  %2285 = fmul fast float %2284, 0x3FAE8EC8A0000000
  %2286 = fmul fast float %2285, %1740
  %2287 = fmul fast float %2285, %1741
  %2288 = fmul fast float %2285, %1742
  %2289 = fmul fast float %1776, %1738
  %2290 = fsub fast float 1.000000e+00, %2289
  %2291 = fmul fast float %1738, %1738
  %2292 = fsub fast float 1.000000e+00, %2291
  %2293 = fmul fast float %2292, 0x3FB45F3060000000
  %2294 = fmul fast float %2290, %2290
  %2295 = fdiv fast float 1.000000e+00, %2294
  %2296 = fmul fast float %2293, %2295
  %2297 = fmul fast float %2296, %1735
  %2298 = fmul fast float %2296, %1736
  %2299 = fmul fast float %2296, %1737
  %2300 = fadd fast float %2297, %2286
  %2301 = fadd fast float %2298, %2287
  %2302 = fadd fast float %2299, %2288
  %2303 = fsub fast float 1.000000e+00, %2280
  %2304 = fsub fast float 1.000000e+00, %2281
  %2305 = fsub fast float 1.000000e+00, %2282
  %2306 = fmul fast float %2300, %2303
  %2307 = fmul fast float %2301, %2304
  %2308 = fmul fast float %2302, %2305
  br label %2309

; <label>:2309                                    ; preds = %2279, %2206
  %2310 = phi float [ %2235, %2206 ], [ %2306, %2279 ]
  %2311 = phi float [ %2236, %2206 ], [ %2307, %2279 ]
  %2312 = phi float [ %2237, %2206 ], [ %2308, %2279 ]
  %2313 = phi float [ %2224, %2206 ], [ %2280, %2279 ]
  %2314 = phi float [ %2224, %2206 ], [ %2281, %2279 ]
  %2315 = phi float [ %2224, %2206 ], [ %2282, %2279 ]
  br i1 %1784, label %2316, label %2514, !dx.controlflow.hints !95

; <label>:2316                                    ; preds = %2309
  %2317 = extractvalue %dx.types.CBufRet.f32 %2200, 0
  %2318 = fmul fast float %2317, %2202
  %2319 = fsub fast float %2197, %2310
  %2320 = fsub fast float %2198, %2311
  %2321 = fsub fast float %2199, %2312
  %2322 = fmul fast float %2318, %2319
  %2323 = fmul fast float %2318, %2320
  %2324 = fmul fast float %2318, %2321
  %2325 = fadd fast float %2322, %2310
  %2326 = fadd fast float %2323, %2311
  %2327 = fadd fast float %2324, %2312
  %2328 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2313)  ; FMax(a,b)
  %2329 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2314)  ; FMax(a,b)
  %2330 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2315)  ; FMax(a,b)
  %2331 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2196)  ; FMax(a,b)
  %2332 = call float @dx.op.binary.f32(i32 35, float %2195, float %2205)  ; FMax(a,b)
  %2333 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2332)  ; FMax(a,b)
  %2334 = fdiv fast float %2195, %2333
  %2335 = call float @dx.op.unary.f32(i32 7, float %2334)  ; Saturate(value)
  %2336 = fdiv fast float %2205, %2333
  %2337 = call float @dx.op.unary.f32(i32 7, float %2336)  ; Saturate(value)
  %2338 = fcmp fast une float %2331, 1.000000e+00
  br i1 %2338, label %2339, label %2352, !dx.controlflow.hints !96

; <label>:2339                                    ; preds = %2316
  %2340 = call float @dx.op.unary.f32(i32 23, float %2331)  ; Log(value)
  %2341 = fmul fast float %2340, 0x3FE62E4300000000
  %2342 = fmul fast float %2197, %2341
  %2343 = fsub fast float -0.000000e+00, %2342
  %2344 = fmul fast float %2198, %2341
  %2345 = fsub fast float -0.000000e+00, %2344
  %2346 = fmul fast float %2199, %2341
  %2347 = fsub fast float -0.000000e+00, %2346
  %2348 = fsub fast float 1.000000e+00, %2331
  %2349 = fdiv fast float %2343, %2348
  %2350 = fdiv fast float %2345, %2348
  %2351 = fdiv fast float %2347, %2348
  br label %2352

; <label>:2352                                    ; preds = %2339, %2316
  %2353 = phi float [ %2349, %2339 ], [ %2197, %2316 ]
  %2354 = phi float [ %2350, %2339 ], [ %2198, %2316 ]
  %2355 = phi float [ %2351, %2339 ], [ %2199, %2316 ]
  %2356 = phi float [ %2341, %2339 ], [ 0.000000e+00, %2316 ]
  %2357 = fcmp fast une float %2328, 1.000000e+00
  br i1 %2357, label %2358, label %2365, !dx.controlflow.hints !97

; <label>:2358                                    ; preds = %2352
  %2359 = call float @dx.op.unary.f32(i32 23, float %2328)  ; Log(value)
  %2360 = fmul fast float %2359, 0x3FE62E4300000000
  %2361 = fmul fast float %2325, %2360
  %2362 = fsub fast float -0.000000e+00, %2361
  %2363 = fsub fast float 1.000000e+00, %2328
  %2364 = fdiv fast float %2362, %2363
  br label %2365

; <label>:2365                                    ; preds = %2358, %2352
  %2366 = phi float [ %2364, %2358 ], [ %2325, %2352 ]
  %2367 = phi float [ %2360, %2358 ], [ 0.000000e+00, %2352 ]
  %2368 = fcmp fast une float %2329, 1.000000e+00
  br i1 %2368, label %2369, label %2376, !dx.controlflow.hints !97

; <label>:2369                                    ; preds = %2365
  %2370 = call float @dx.op.unary.f32(i32 23, float %2329)  ; Log(value)
  %2371 = fmul fast float %2370, 0x3FE62E4300000000
  %2372 = fmul fast float %2326, %2371
  %2373 = fsub fast float -0.000000e+00, %2372
  %2374 = fsub fast float 1.000000e+00, %2329
  %2375 = fdiv fast float %2373, %2374
  br label %2376

; <label>:2376                                    ; preds = %2369, %2365
  %2377 = phi float [ %2375, %2369 ], [ %2326, %2365 ]
  %2378 = phi float [ %2371, %2369 ], [ 0.000000e+00, %2365 ]
  %2379 = fcmp fast une float %2330, 1.000000e+00
  br i1 %2379, label %2380, label %2387, !dx.controlflow.hints !97

; <label>:2380                                    ; preds = %2376
  %2381 = call float @dx.op.unary.f32(i32 23, float %2330)  ; Log(value)
  %2382 = fmul fast float %2381, 0x3FE62E4300000000
  %2383 = fmul fast float %2327, %2382
  %2384 = fsub fast float -0.000000e+00, %2383
  %2385 = fsub fast float 1.000000e+00, %2330
  %2386 = fdiv fast float %2384, %2385
  br label %2387

; <label>:2387                                    ; preds = %2380, %2376
  %2388 = phi float [ %2386, %2380 ], [ %2327, %2376 ]
  %2389 = phi float [ %2382, %2380 ], [ 0.000000e+00, %2376 ]
  %2390 = fmul fast float %2353, %2337
  %2391 = fmul fast float %2354, %2337
  %2392 = fmul fast float %2355, %2337
  %2393 = fmul fast float %2356, %2337
  %2394 = fmul fast float %2366, %2335
  %2395 = fmul fast float %2377, %2335
  %2396 = fmul fast float %2388, %2335
  %2397 = fmul fast float %2367, %2335
  %2398 = fmul fast float %2378, %2335
  %2399 = fmul fast float %2389, %2335
  %2400 = fadd fast float %2394, %2390
  %2401 = fadd fast float %2395, %2391
  %2402 = fadd fast float %2396, %2392
  %2403 = fadd fast float %2397, %2393
  %2404 = fadd fast float %2398, %2393
  %2405 = fadd fast float %2399, %2393
  %2406 = fcmp fast une float %2403, 0.000000e+00
  br i1 %2406, label %2407, label %2414, !dx.controlflow.hints !98

; <label>:2407                                    ; preds = %2387
  %2408 = fmul fast float %2403, 0x3FF7154760000000
  %2409 = call float @dx.op.unary.f32(i32 21, float %2408)  ; Exp(value)
  %2410 = fsub fast float 1.000000e+00, %2409
  %2411 = fmul fast float %2400, %2410
  %2412 = fsub fast float -0.000000e+00, %2411
  %2413 = fdiv fast float %2412, %2403
  br label %2414

; <label>:2414                                    ; preds = %2407, %2387
  %2415 = phi float [ %2409, %2407 ], [ 1.000000e+00, %2387 ]
  %2416 = phi float [ %2413, %2407 ], [ %2400, %2387 ]
  %2417 = fcmp fast une float %2404, 0.000000e+00
  br i1 %2417, label %2418, label %2425, !dx.controlflow.hints !98

; <label>:2418                                    ; preds = %2414
  %2419 = fmul fast float %2404, 0x3FF7154760000000
  %2420 = call float @dx.op.unary.f32(i32 21, float %2419)  ; Exp(value)
  %2421 = fsub fast float 1.000000e+00, %2420
  %2422 = fmul fast float %2401, %2421
  %2423 = fsub fast float -0.000000e+00, %2422
  %2424 = fdiv fast float %2423, %2404
  br label %2425

; <label>:2425                                    ; preds = %2418, %2414
  %2426 = phi float [ %2420, %2418 ], [ 1.000000e+00, %2414 ]
  %2427 = phi float [ %2424, %2418 ], [ %2401, %2414 ]
  %2428 = fcmp fast une float %2405, 0.000000e+00
  br i1 %2428, label %2429, label %2436, !dx.controlflow.hints !98

; <label>:2429                                    ; preds = %2425
  %2430 = fmul fast float %2405, 0x3FF7154760000000
  %2431 = call float @dx.op.unary.f32(i32 21, float %2430)  ; Exp(value)
  %2432 = fsub fast float 1.000000e+00, %2431
  %2433 = fmul fast float %2402, %2432
  %2434 = fsub fast float -0.000000e+00, %2433
  %2435 = fdiv fast float %2434, %2405
  br label %2436

; <label>:2436                                    ; preds = %2429, %2425
  %2437 = phi float [ %2431, %2429 ], [ 1.000000e+00, %2425 ]
  %2438 = phi float [ %2435, %2429 ], [ %2402, %2425 ]
  %2439 = fcmp fast ogt float %2335, %2337
  br i1 %2439, label %2440, label %2460, !dx.controlflow.hints !99

; <label>:2440                                    ; preds = %2436
  %2441 = fsub fast float 1.000000e+00, %2337
  %2442 = fmul fast float %2353, %2441
  %2443 = fmul fast float %2354, %2441
  %2444 = fmul fast float %2355, %2441
  %2445 = fmul fast float %2356, %2441
  %2446 = fcmp fast une float %2445, 0.000000e+00
  br i1 %2446, label %2447, label %2498, !dx.controlflow.hints !100

; <label>:2447                                    ; preds = %2440
  %2448 = fmul fast float %2445, 0x3FF7154760000000
  %2449 = call float @dx.op.unary.f32(i32 21, float %2448)  ; Exp(value)
  %2450 = fsub fast float 1.000000e+00, %2449
  %2451 = fmul fast float %2442, %2450
  %2452 = fsub fast float -0.000000e+00, %2451
  %2453 = fmul fast float %2443, %2450
  %2454 = fsub fast float -0.000000e+00, %2453
  %2455 = fmul fast float %2444, %2450
  %2456 = fsub fast float -0.000000e+00, %2455
  %2457 = fdiv fast float %2452, %2445
  %2458 = fdiv fast float %2454, %2445
  %2459 = fdiv fast float %2456, %2445
  br label %2498

; <label>:2460                                    ; preds = %2436
  %2461 = fsub fast float 1.000000e+00, %2335
  %2462 = fmul fast float %2366, %2461
  %2463 = fmul fast float %2377, %2461
  %2464 = fmul fast float %2388, %2461
  %2465 = fmul fast float %2367, %2461
  %2466 = fmul fast float %2378, %2461
  %2467 = fmul fast float %2389, %2461
  %2468 = fcmp fast une float %2465, 0.000000e+00
  br i1 %2468, label %2469, label %2476, !dx.controlflow.hints !98

; <label>:2469                                    ; preds = %2460
  %2470 = fmul fast float %2465, 0x3FF7154760000000
  %2471 = call float @dx.op.unary.f32(i32 21, float %2470)  ; Exp(value)
  %2472 = fsub fast float 1.000000e+00, %2471
  %2473 = fmul fast float %2462, %2472
  %2474 = fsub fast float -0.000000e+00, %2473
  %2475 = fdiv fast float %2474, %2465
  br label %2476

; <label>:2476                                    ; preds = %2469, %2460
  %2477 = phi float [ %2475, %2469 ], [ %2462, %2460 ]
  %2478 = phi float [ %2471, %2469 ], [ 1.000000e+00, %2460 ]
  %2479 = fcmp fast une float %2466, 0.000000e+00
  br i1 %2479, label %2480, label %2487, !dx.controlflow.hints !98

; <label>:2480                                    ; preds = %2476
  %2481 = fmul fast float %2466, 0x3FF7154760000000
  %2482 = call float @dx.op.unary.f32(i32 21, float %2481)  ; Exp(value)
  %2483 = fsub fast float 1.000000e+00, %2482
  %2484 = fmul fast float %2463, %2483
  %2485 = fsub fast float -0.000000e+00, %2484
  %2486 = fdiv fast float %2485, %2466
  br label %2487

; <label>:2487                                    ; preds = %2480, %2476
  %2488 = phi float [ %2486, %2480 ], [ %2463, %2476 ]
  %2489 = phi float [ %2482, %2480 ], [ 1.000000e+00, %2476 ]
  %2490 = fcmp fast une float %2467, 0.000000e+00
  br i1 %2490, label %2491, label %2498, !dx.controlflow.hints !98

; <label>:2491                                    ; preds = %2487
  %2492 = fmul fast float %2467, 0x3FF7154760000000
  %2493 = call float @dx.op.unary.f32(i32 21, float %2492)  ; Exp(value)
  %2494 = fsub fast float 1.000000e+00, %2493
  %2495 = fmul fast float %2464, %2494
  %2496 = fsub fast float -0.000000e+00, %2495
  %2497 = fdiv fast float %2496, %2467
  br label %2498

; <label>:2498                                    ; preds = %2491, %2487, %2447, %2440
  %2499 = phi float [ %2497, %2491 ], [ %2459, %2447 ], [ %2444, %2440 ], [ %2464, %2487 ]
  %2500 = phi float [ %2488, %2491 ], [ %2458, %2447 ], [ %2443, %2440 ], [ %2488, %2487 ]
  %2501 = phi float [ %2477, %2491 ], [ %2457, %2447 ], [ %2442, %2440 ], [ %2477, %2487 ]
  %2502 = phi float [ %2493, %2491 ], [ %2449, %2447 ], [ 1.000000e+00, %2440 ], [ 1.000000e+00, %2487 ]
  %2503 = phi float [ %2489, %2491 ], [ %2449, %2447 ], [ 1.000000e+00, %2440 ], [ %2489, %2487 ]
  %2504 = phi float [ %2478, %2491 ], [ %2449, %2447 ], [ 1.000000e+00, %2440 ], [ %2478, %2487 ]
  %2505 = fmul fast float %2504, %2416
  %2506 = fmul fast float %2503, %2427
  %2507 = fmul fast float %2502, %2438
  %2508 = fadd fast float %2505, %2501
  %2509 = fadd fast float %2506, %2500
  %2510 = fadd fast float %2507, %2499
  %2511 = fmul fast float %2504, %2415
  %2512 = fmul fast float %2503, %2426
  %2513 = fmul fast float %2502, %2437
  br label %2514

; <label>:2514                                    ; preds = %2498, %2309
  %2515 = phi float [ %2513, %2498 ], [ %2315, %2309 ]
  %2516 = phi float [ %2512, %2498 ], [ %2314, %2309 ]
  %2517 = phi float [ %2511, %2498 ], [ %2313, %2309 ]
  %2518 = phi float [ %2510, %2498 ], [ %2312, %2309 ]
  %2519 = phi float [ %2509, %2498 ], [ %2311, %2309 ]
  %2520 = phi float [ %2508, %2498 ], [ %2310, %2309 ]
  %2521 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %24, float %1652, float %1653, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2522 = extractvalue %dx.types.ResRet.f32 %2521, 0
  %2523 = extractvalue %dx.types.ResRet.f32 %2521, 1
  %2524 = extractvalue %dx.types.ResRet.f32 %2521, 2
  %2525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2526 = extractvalue %dx.types.CBufRet.f32 %2525, 1
  %2527 = fmul fast float %2526, %2522
  %2528 = fmul fast float %2526, %2523
  %2529 = fmul fast float %2526, %2524
  %2530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %24, float %1652, float %1653, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2531 = extractvalue %dx.types.ResRet.f32 %2530, 0
  %2532 = fmul fast float %2531, %2517
  %2533 = fmul fast float %2531, %2516
  %2534 = fmul fast float %2531, %2515
  %2535 = fmul fast float %2531, %2520
  %2536 = fmul fast float %2531, %2519
  %2537 = fmul fast float %2531, %2518
  %2538 = fadd fast float %2535, %2527
  %2539 = fadd fast float %2536, %2528
  %2540 = fadd fast float %2537, %2529
  br label %2541

; <label>:2541                                    ; preds = %2514, %1645
  %2542 = phi float [ 0.000000e+00, %1645 ], [ %2538, %2514 ]
  %2543 = phi float [ 0.000000e+00, %1645 ], [ %2539, %2514 ]
  %2544 = phi float [ 0.000000e+00, %1645 ], [ %2540, %2514 ]
  %2545 = phi float [ 1.000000e+00, %1645 ], [ %2532, %2514 ]
  %2546 = phi float [ 1.000000e+00, %1645 ], [ %2533, %2514 ]
  %2547 = phi float [ 1.000000e+00, %1645 ], [ %2534, %2514 ]
  %2548 = phi float [ %1678, %1645 ], [ %1685, %2514 ]
  %2549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2550 = extractvalue %dx.types.CBufRet.f32 %2549, 2
  %2551 = extractvalue %dx.types.CBufRet.f32 %2549, 3
  %2552 = fmul fast float %2550, %1648
  %2553 = fmul fast float %2551, %1649
  %2554 = call float @dx.op.unary.f32(i32 7, float %2552)  ; Saturate(value)
  %2555 = call float @dx.op.unary.f32(i32 7, float %2553)  ; Saturate(value)
  %2556 = select i1 %1676, i32 2, i32 0
  %2557 = or i32 %2556, 1
  %2558 = uitofp i32 %2557 to float
  %2559 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %24, float %2554, float %2555, float %2558, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2560 = extractvalue %dx.types.ResRet.f32 %2559, 0
  %2561 = extractvalue %dx.types.ResRet.f32 %2559, 1
  %2562 = extractvalue %dx.types.ResRet.f32 %2559, 2
  %2563 = extractvalue %dx.types.ResRet.f32 %2559, 3
  %2564 = add nuw nsw i32 %2556, 2
  %2565 = uitofp i32 %2564 to float
  %2566 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %24, float %2554, float %2555, float %2565, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2567 = extractvalue %dx.types.ResRet.f32 %2566, 0
  %2568 = extractvalue %dx.types.ResRet.f32 %2566, 1
  %2569 = extractvalue %dx.types.ResRet.f32 %2566, 2
  %2570 = extractvalue %dx.types.ResRet.f32 %2566, 3
  %2571 = call float @dx.op.binary.f32(i32 35, float %2561, float %2562)  ; FMax(a,b)
  %2572 = call float @dx.op.binary.f32(i32 35, float %2560, float %2571)  ; FMax(a,b)
  %2573 = call float @dx.op.binary.f32(i32 35, float %2572, float %2563)  ; FMax(a,b)
  %2574 = call float @dx.op.binary.f32(i32 36, float %2568, float %2569)  ; FMin(a,b)
  %2575 = call float @dx.op.binary.f32(i32 36, float %2567, float %2574)  ; FMin(a,b)
  %2576 = call float @dx.op.binary.f32(i32 36, float %2575, float %2570)  ; FMin(a,b)
  %2577 = fmul fast float %2573, 2.550000e+02
  %2578 = fadd fast float %2577, 0x3F70101020000000
  %2579 = fptoui float %2578 to i32
  %2580 = fmul fast float %2576, 2.550000e+02
  %2581 = fadd fast float %2580, 0x3F70101020000000
  %2582 = fptoui float %2581 to i32
  %2583 = icmp ult i32 %2579, %2582
  br i1 %2583, label %2584, label %2752, !dx.controlflow.hints !101

; <label>:2584                                    ; preds = %2541
  %2585 = fadd fast float %2548, -4.000000e+00
  %2586 = call float @dx.op.binary.f32(i32 35, float %2585, float 0.000000e+00)  ; FMax(a,b)
  %2587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2588 = extractvalue %dx.types.CBufRet.f32 %2587, 0
  %2589 = fadd fast float %2588, %2586
  %2590 = extractvalue %dx.types.CBufRet.f32 %2587, 2
  %2591 = fmul fast float %2589, %2590
  %2592 = call float @dx.op.unary.f32(i32 23, float %2591)  ; Log(value)
  %2593 = extractvalue %dx.types.CBufRet.f32 %2587, 3
  %2594 = fmul fast float %2593, %2592
  %2595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2596 = extractvalue %dx.types.CBufRet.f32 %2595, 2
  %2597 = fmul fast float %2594, %2596
  %2598 = call float @dx.op.unary.f32(i32 7, float %2597)  ; Saturate(value)
  %2599 = select i1 %1681, float 1.000000e+00, float %2598
  %2600 = uitofp i32 %2579 to float
  %2601 = uitofp i32 %2582 to float
  %2602 = fadd fast float %2600, 5.000000e-01
  %2603 = fadd fast float %2601, 5.000000e-01
  %2604 = fmul fast float %2596, %2602
  %2605 = fmul fast float %2596, %2603
  %2606 = fadd fast float %2604, 0x3F0FFB4800000000
  %2607 = fadd fast float %2605, 0xBF0FFB4800000000
  %2608 = call float @dx.op.binary.f32(i32 35, float %2599, float %2606)  ; FMax(a,b)
  %2609 = call float @dx.op.binary.f32(i32 36, float %2608, float %2607)  ; FMin(a,b)
  %2610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2611 = extractvalue %dx.types.CBufRet.f32 %2610, 1
  %2612 = extractvalue %dx.types.CBufRet.f32 %2610, 2
  %2613 = extractvalue %dx.types.CBufRet.f32 %2610, 0
  %2614 = select i1 %1676, float %2613, float 0.000000e+00
  %2615 = fmul fast float %2611, %2609
  %2616 = fadd fast float %2614, %2615
  %2617 = fadd fast float %2614, %2612
  %2618 = fsub fast float %2611, %2612
  %2619 = fadd fast float %2618, %2614
  %2620 = call float @dx.op.binary.f32(i32 35, float %2616, float %2617)  ; FMax(a,b)
  %2621 = call float @dx.op.binary.f32(i32 36, float %2620, float %2619)  ; FMin(a,b)
  %2622 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %23, float %2554, float %2555, float %2621, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2623 = extractvalue %dx.types.ResRet.f32 %2622, 0
  %2624 = extractvalue %dx.types.ResRet.f32 %2622, 1
  %2625 = extractvalue %dx.types.ResRet.f32 %2622, 2
  %2626 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %2627 = extractvalue %dx.types.CBufRet.i32 %2626, 0
  %2628 = extractvalue %dx.types.CBufRet.i32 %2626, 1
  %2629 = uitofp i32 %2627 to float
  %2630 = uitofp i32 %2628 to float
  %2631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %2632 = extractvalue %dx.types.CBufRet.f32 %2631, 0
  %2633 = extractvalue %dx.types.CBufRet.f32 %2631, 1
  %2634 = fmul fast float %2629, %2554
  %2635 = fmul fast float %2630, %2555
  %2636 = fadd fast float %2634, -5.000000e-01
  %2637 = fadd fast float %2635, -5.000000e-01
  %2638 = call float @dx.op.unary.f32(i32 22, float %2636)  ; Frc(value)
  %2639 = call float @dx.op.unary.f32(i32 22, float %2637)  ; Frc(value)
  %2640 = fmul fast float %2638, %2638
  %2641 = fmul fast float %2640, %2638
  %2642 = fsub fast float 3.000000e+00, %2638
  %2643 = fmul fast float %2640, %2642
  %2644 = fmul fast float %2638, 3.000000e+00
  %2645 = fmul fast float %2641, 3.000000e+00
  %2646 = fmul fast float %2640, 6.000000e+00
  %2647 = fsub fast float %2645, %2646
  %2648 = fadd fast float %2647, 4.000000e+00
  %2649 = fmul fast float %2648, 0x3FC5555560000000
  %2650 = fmul fast float %2641, -3.000000e+00
  %2651 = fadd fast float %2640, %2638
  %2652 = fmul fast float %2651, 3.000000e+00
  %2653 = fadd fast float %2650, 1.000000e+00
  %2654 = fadd fast float %2653, %2652
  %2655 = fmul fast float %2641, 0x3FC5555560000000
  %2656 = fmul fast float %2639, %2639
  %2657 = fmul fast float %2656, %2639
  %2658 = fsub fast float 3.000000e+00, %2639
  %2659 = fmul fast float %2656, %2658
  %2660 = fmul fast float %2639, 3.000000e+00
  %2661 = fmul fast float %2657, 3.000000e+00
  %2662 = fmul fast float %2656, 6.000000e+00
  %2663 = fsub fast float %2661, %2662
  %2664 = fadd fast float %2663, 4.000000e+00
  %2665 = fmul fast float %2664, 0x3FC5555560000000
  %2666 = fmul fast float %2657, -3.000000e+00
  %2667 = fadd fast float %2656, %2639
  %2668 = fmul fast float %2667, 3.000000e+00
  %2669 = fadd fast float %2666, 1.000000e+00
  %2670 = fadd fast float %2669, %2668
  %2671 = fmul fast float %2657, 0x3FC5555560000000
  %2672 = fadd fast float %2638, 1.000000e+00
  %2673 = fsub fast float 1.000000e+00, %2644
  %2674 = fadd fast float %2673, %2643
  %2675 = fadd fast float %2674, %2648
  %2676 = fmul fast float %2675, 0x3FC5555560000000
  %2677 = fdiv fast float %2649, %2676
  %2678 = fsub fast float %2672, %2677
  %2679 = fsub fast float 1.000000e+00, %2638
  %2680 = fadd fast float %2654, %2641
  %2681 = fmul fast float %2680, 0x3FC5555560000000
  %2682 = fdiv fast float %2655, %2681
  %2683 = fadd fast float %2679, %2682
  %2684 = fadd fast float %2639, 1.000000e+00
  %2685 = fsub fast float 1.000000e+00, %2660
  %2686 = fadd fast float %2685, %2659
  %2687 = fadd fast float %2686, %2664
  %2688 = fmul fast float %2687, 0x3FC5555560000000
  %2689 = fdiv fast float %2665, %2688
  %2690 = fsub fast float %2684, %2689
  %2691 = fsub fast float 1.000000e+00, %2639
  %2692 = fadd fast float %2670, %2657
  %2693 = fmul fast float %2692, 0x3FC5555560000000
  %2694 = fdiv fast float %2671, %2693
  %2695 = fadd fast float %2694, %2691
  %2696 = fmul fast float %2678, %2632
  %2697 = fsub fast float %2554, %2696
  %2698 = fmul fast float %2683, %2632
  %2699 = fadd fast float %2698, %2554
  %2700 = fmul fast float %2695, %2633
  %2701 = fadd fast float %2700, %2555
  %2702 = fmul fast float %2690, %2633
  %2703 = fsub fast float %2555, %2702
  %2704 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %23, float %2697, float %2703, float %2621, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2705 = extractvalue %dx.types.ResRet.f32 %2704, 0
  %2706 = extractvalue %dx.types.ResRet.f32 %2704, 1
  %2707 = extractvalue %dx.types.ResRet.f32 %2704, 2
  %2708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %23, float %2699, float %2703, float %2621, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2709 = extractvalue %dx.types.ResRet.f32 %2708, 0
  %2710 = extractvalue %dx.types.ResRet.f32 %2708, 1
  %2711 = extractvalue %dx.types.ResRet.f32 %2708, 2
  %2712 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %23, float %2697, float %2701, float %2621, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2713 = extractvalue %dx.types.ResRet.f32 %2712, 0
  %2714 = extractvalue %dx.types.ResRet.f32 %2712, 1
  %2715 = extractvalue %dx.types.ResRet.f32 %2712, 2
  %2716 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %23, float %2699, float %2701, float %2621, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2717 = extractvalue %dx.types.ResRet.f32 %2716, 0
  %2718 = extractvalue %dx.types.ResRet.f32 %2716, 1
  %2719 = extractvalue %dx.types.ResRet.f32 %2716, 2
  %2720 = fsub fast float %2713, %2705
  %2721 = fsub fast float %2714, %2706
  %2722 = fsub fast float %2715, %2707
  %2723 = fmul fast float %2720, %2693
  %2724 = fmul fast float %2721, %2693
  %2725 = fmul fast float %2722, %2693
  %2726 = fadd fast float %2723, %2705
  %2727 = fadd fast float %2724, %2706
  %2728 = fadd fast float %2725, %2707
  %2729 = fsub fast float %2717, %2709
  %2730 = fsub fast float %2718, %2710
  %2731 = fsub fast float %2719, %2711
  %2732 = fmul fast float %2729, %2693
  %2733 = fmul fast float %2730, %2693
  %2734 = fmul fast float %2731, %2693
  %2735 = fsub fast float %2709, %2726
  %2736 = fadd fast float %2735, %2732
  %2737 = fsub fast float %2710, %2727
  %2738 = fadd fast float %2737, %2733
  %2739 = fsub fast float %2711, %2728
  %2740 = fadd fast float %2739, %2734
  %2741 = fmul fast float %2736, %2681
  %2742 = fmul fast float %2738, %2681
  %2743 = fmul fast float %2740, %2681
  %2744 = fadd fast float %2741, %2726
  %2745 = fadd fast float %2742, %2727
  %2746 = fadd fast float %2743, %2728
  %2747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2748 = extractvalue %dx.types.CBufRet.f32 %2747, 1
  %2749 = fmul fast float %2744, %2748
  %2750 = fmul fast float %2745, %2748
  %2751 = fmul fast float %2746, %2748
  br label %2752

; <label>:2752                                    ; preds = %2584, %2541
  %2753 = phi float [ %2623, %2584 ], [ 1.000000e+00, %2541 ]
  %2754 = phi float [ %2624, %2584 ], [ 1.000000e+00, %2541 ]
  %2755 = phi float [ %2625, %2584 ], [ 1.000000e+00, %2541 ]
  %2756 = phi float [ %2749, %2584 ], [ 0.000000e+00, %2541 ]
  %2757 = phi float [ %2750, %2584 ], [ 0.000000e+00, %2541 ]
  %2758 = phi float [ %2751, %2584 ], [ 0.000000e+00, %2541 ]
  %2759 = fmul fast float %2753, %2545
  %2760 = fmul fast float %2754, %2546
  %2761 = fmul fast float %2755, %2547
  %2762 = fmul fast float %2753, %2542
  %2763 = fmul fast float %2754, %2543
  %2764 = fmul fast float %2755, %2544
  %2765 = fadd fast float %2756, %2762
  %2766 = fadd fast float %2757, %2763
  %2767 = fadd fast float %2758, %2764
  %2768 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %1629, i32 %1630, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2769 = extractvalue %dx.types.ResRet.f32 %2768, 0
  %2770 = extractvalue %dx.types.ResRet.f32 %2768, 1
  %2771 = extractvalue %dx.types.ResRet.f32 %2768, 2
  %2772 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %1629, i32 %1630, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2773 = extractvalue %dx.types.ResRet.f32 %2772, 0
  %2774 = extractvalue %dx.types.ResRet.f32 %2772, 1
  %2775 = extractvalue %dx.types.ResRet.f32 %2772, 2
  %2776 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %1629, i32 %1630, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2777 = extractvalue %dx.types.ResRet.f32 %2776, 0
  %2778 = extractvalue %dx.types.ResRet.f32 %2776, 1
  %2779 = extractvalue %dx.types.ResRet.f32 %2776, 2
  %2780 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %1629, i32 %1630, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2781 = extractvalue %dx.types.ResRet.f32 %2780, 0
  %2782 = extractvalue %dx.types.ResRet.f32 %2780, 1
  %2783 = call float @dx.op.binary.f32(i32 35, float %2781, float %2782)  ; FMax(a,b)
  %2784 = fcmp fast ult float %2783, 0x3F70101020000000
  br i1 %2784, label %3016, label %2785, !dx.controlflow.hints !143

; <label>:2785                                    ; preds = %2752
  %2786 = fmul fast float %2782, 2.000000e+00
  %2787 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2786)  ; FMax(a,b)
  %2788 = fmul fast float %2781, 2.000000e+00
  %2789 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2788)  ; FMax(a,b)
  %2790 = extractvalue %dx.types.ResRet.f32 %2776, 3
  %2791 = fmul fast float %2790, 2.000000e+00
  %2792 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2791)  ; FMax(a,b)
  %2793 = fmul fast float %2779, %2779
  %2794 = fmul fast float %2778, %2778
  %2795 = fmul fast float %2777, %2777
  %2796 = fadd fast float %2795, 0xBFD51EB860000000
  %2797 = fadd fast float %2794, 0xBFD51EB860000000
  %2798 = fadd fast float %2793, 0xBFD51EB860000000
  %2799 = fmul fast float %2796, %2796
  %2800 = fmul fast float %2797, %2797
  %2801 = fmul fast float %2798, %2798
  %2802 = fmul fast float %2799, %2799
  %2803 = fmul fast float %2802, 1.000000e+02
  %2804 = fmul fast float %2800, %2800
  %2805 = fmul fast float %2804, 1.000000e+02
  %2806 = fmul fast float %2801, %2801
  %2807 = fmul fast float %2806, 1.000000e+02
  %2808 = fadd fast float %2803, 3.500000e+00
  %2809 = fadd fast float %2805, 3.500000e+00
  %2810 = fadd fast float %2807, 3.500000e+00
  %2811 = fdiv fast float %2808, %2792
  %2812 = fdiv fast float %2809, %2789
  %2813 = fdiv fast float %2810, %2787
  %2814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %2815 = extractvalue %dx.types.CBufRet.f32 %2814, 0
  %2816 = extractvalue %dx.types.CBufRet.f32 %2814, 1
  %2817 = fmul fast float %2815, %1678
  %2818 = fmul fast float %2816, %1678
  %2819 = fdiv fast float 1.000000e+00, %2817
  %2820 = fdiv fast float 1.000000e+00, %2818
  %2821 = fmul fast float %1650, 5.000000e-01
  %2822 = fmul fast float %2821, %2817
  %2823 = fmul fast float %2811, 0xBFF7154760000000
  %2824 = fmul fast float %2823, %2822
  %2825 = call float @dx.op.unary.f32(i32 21, float %2824)  ; Exp(value)
  %2826 = fmul fast float %2825, 2.500000e-01
  %2827 = fsub fast float 1.000000e+00, %2826
  %2828 = fmul fast float %2811, 0xBFDEC709E0000000
  %2829 = fmul fast float %2828, %2822
  %2830 = call float @dx.op.unary.f32(i32 21, float %2829)  ; Exp(value)
  %2831 = fmul fast float %2830, 7.500000e-01
  %2832 = fsub fast float %2827, %2831
  %2833 = fmul fast float %2812, 0xBFF7154760000000
  %2834 = fmul fast float %2833, %2822
  %2835 = call float @dx.op.unary.f32(i32 21, float %2834)  ; Exp(value)
  %2836 = fmul fast float %2835, 2.500000e-01
  %2837 = fsub fast float 1.000000e+00, %2836
  %2838 = fmul fast float %2812, 0xBFDEC709E0000000
  %2839 = fmul fast float %2838, %2822
  %2840 = call float @dx.op.unary.f32(i32 21, float %2839)  ; Exp(value)
  %2841 = fmul fast float %2840, 7.500000e-01
  %2842 = fsub fast float %2837, %2841
  %2843 = fmul fast float %2813, 0xBFF7154760000000
  %2844 = fmul fast float %2843, %2822
  %2845 = call float @dx.op.unary.f32(i32 21, float %2844)  ; Exp(value)
  %2846 = fmul fast float %2845, 2.500000e-01
  %2847 = fsub fast float 1.000000e+00, %2846
  %2848 = fmul fast float %2813, 0xBFDEC709E0000000
  %2849 = fmul fast float %2848, %2822
  %2850 = call float @dx.op.unary.f32(i32 21, float %2849)  ; Exp(value)
  %2851 = fmul fast float %2850, 7.500000e-01
  %2852 = fsub fast float %2847, %2851
  %2853 = fmul fast float %2773, 0x3F1A36E2E0000000
  %2854 = fmul fast float %2774, 0x3F1A36E2E0000000
  %2855 = fmul fast float %2775, 0x3F1A36E2E0000000
  %2856 = call float @dx.op.binary.f32(i32 36, float %2812, float %2813)  ; FMin(a,b)
  %2857 = call float @dx.op.binary.f32(i32 36, float %2811, float %2856)  ; FMin(a,b)
  %2858 = call float @dx.op.binary.f32(i32 36, float %2842, float %2852)  ; FMin(a,b)
  %2859 = call float @dx.op.binary.f32(i32 36, float %2832, float %2858)  ; FMin(a,b)
  %2860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2861 = extractvalue %dx.types.CBufRet.f32 %2860, 2
  %2862 = fmul fast float %2861, %2817
  %2863 = fmul fast float %2857, 0xBFF7154760000000
  %2864 = fmul fast float %2863, %2862
  %2865 = call float @dx.op.unary.f32(i32 21, float %2864)  ; Exp(value)
  %2866 = fmul fast float %2865, 2.500000e-01
  %2867 = fsub fast float 1.000000e+00, %2866
  %2868 = fmul fast float %2857, 0xBFDEC709E0000000
  %2869 = fmul fast float %2868, %2862
  %2870 = call float @dx.op.unary.f32(i32 21, float %2869)  ; Exp(value)
  %2871 = fmul fast float %2870, 7.500000e-01
  %2872 = fsub fast float %2867, %2871
  %2873 = extractvalue %dx.types.CBufRet.f32 %2860, 3
  %2874 = call float @dx.op.binary.f32(i32 36, float %2873, float %2872)  ; FMin(a,b)
  %2875 = fsub fast float %2874, %2859
  %2876 = call float @dx.op.unary.f32(i32 7, float %2875)  ; Saturate(value)
  %2877 = call float @dx.op.unary.f32(i32 7, float %2859)  ; Saturate(value)
  %2878 = extractvalue %dx.types.CBufRet.f32 %2860, 0
  %2879 = fmul fast float %2878, %2876
  %2880 = fptoui float %2879 to i32
  %2881 = uitofp i32 %2880 to float
  %2882 = fdiv fast float 1.000000e+00, %2881
  %2883 = icmp eq i32 %2880, 0
  br i1 %2883, label %2994, label %2884

; <label>:2884                                    ; preds = %2785
  %2885 = fmul fast float %2813, 0x3FA45F3060000000
  %2886 = fmul fast float %2857, 0x3FA45F3060000000
  br label %2887

; <label>:2887                                    ; preds = %2887, %2884
  %2888 = phi float [ %2985, %2887 ], [ %2853, %2884 ]
  %2889 = phi float [ %2986, %2887 ], [ %2854, %2884 ]
  %2890 = phi float [ %2987, %2887 ], [ %2855, %2884 ]
  %2891 = phi float [ %2988, %2887 ], [ 0x3F1A36E2E0000000, %2884 ]
  %2892 = phi float [ %2989, %2887 ], [ 0x3F1A36E2E0000000, %2884 ]
  %2893 = phi float [ %2990, %2887 ], [ 0x3F1A36E2E0000000, %2884 ]
  %2894 = phi i32 [ %2991, %2887 ], [ 0, %2884 ]
  %2895 = sitofp i32 %2894 to float
  %2896 = fadd fast float %2895, %1664
  %2897 = fmul fast float %2882, %2876
  %2898 = fmul fast float %2897, %2896
  %2899 = fsub fast float 1.000000e+00, %2877
  %2900 = fsub fast float %2899, %2898
  %2901 = fmul fast float %2900, 4.000000e+00
  %2902 = fmul fast float %2900, 2.000000e+00
  %2903 = fmul fast float %2900, %2900
  %2904 = fmul fast float %2903, 4.000000e+00
  %2905 = fadd fast float %2904, 1.000000e+00
  %2906 = call float @dx.op.unary.f32(i32 24, float %2905)  ; Sqrt(value)
  %2907 = fadd fast float %2902, %2906
  %2908 = fmul fast float %2901, %2907
  %2909 = fadd fast float %2908, 1.000000e+00
  %2910 = call float @dx.op.unary.f32(i32 23, float %2909)  ; Log(value)
  %2911 = fmul fast float %2910, 0xBFD5555560000000
  %2912 = call float @dx.op.unary.f32(i32 21, float %2911)  ; Exp(value)
  %2913 = fmul fast float %2912, %2912
  %2914 = fmul fast float %2913, %2909
  %2915 = fadd fast float %2912, 1.000000e+00
  %2916 = fadd fast float %2915, %2914
  %2917 = fdiv fast float 2.500000e-01, %2900
  %2918 = fmul fast float %2916, %2917
  %2919 = call float @dx.op.unary.f32(i32 23, float %2918)  ; Log(value)
  %2920 = fmul fast float %2919, 0x4000A2B240000000
  %2921 = fdiv fast float %2920, %2857
  %2922 = fmul fast float %2863, %2921
  %2923 = call float @dx.op.unary.f32(i32 21, float %2922)  ; Exp(value)
  %2924 = fmul fast float %2868, %2921
  %2925 = call float @dx.op.unary.f32(i32 21, float %2924)  ; Exp(value)
  %2926 = fadd fast float %2925, %2923
  %2927 = fmul fast float %2886, %2926
  %2928 = fdiv fast float %2876, %2927
  %2929 = fmul fast float %2895, 0x3FF9E377A0000000
  %2930 = call float @dx.op.unary.f32(i32 22, float %2929)  ; Frc(value)
  %2931 = fadd fast float %2930, %1664
  %2932 = fmul fast float %2931, 0x401921FB60000000
  %2933 = call float @dx.op.unary.f32(i32 13, float %2932)  ; Sin(value)
  %2934 = call float @dx.op.unary.f32(i32 12, float %2932)  ; Cos(value)
  %2935 = fmul fast float %2921, %2819
  %2936 = fmul fast float %2935, %2934
  %2937 = fmul fast float %2921, %2820
  %2938 = fmul fast float %2937, %2933
  %2939 = fadd fast float %2936, %1652
  %2940 = fadd fast float %2938, %1653
  %2941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %24, float %2939, float %2940, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2942 = extractvalue %dx.types.ResRet.f32 %2941, 0
  %2943 = extractvalue %dx.types.ResRet.f32 %2941, 1
  %2944 = extractvalue %dx.types.ResRet.f32 %2941, 2
  %2945 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %24, float %2939, float %2940, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2946 = extractvalue %dx.types.ResRet.f32 %2945, 0
  %2947 = fcmp fast ogt float %2946, -1.000000e+00
  %2948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2949 = extractvalue %dx.types.CBufRet.f32 %2948, 1
  %2950 = select i1 %2947, float %2949, float 1.000000e+00
  %2951 = fadd fast float %2946, 1.000000e+00
  %2952 = fmul fast float %2950, %2951
  %2953 = call float @dx.op.unary.f32(i32 6, float %2952)  ; FAbs(value)
  %2954 = fsub fast float %1678, %2953
  %2955 = fmul fast float %2921, %2921
  %2956 = fmul fast float %2954, %2954
  %2957 = fadd fast float %2956, %2955
  %2958 = call float @dx.op.unary.f32(i32 24, float %2957)  ; Sqrt(value)
  %2959 = fmul fast float %2823, %2958
  %2960 = call float @dx.op.unary.f32(i32 21, float %2959)  ; Exp(value)
  %2961 = fmul fast float %2828, %2958
  %2962 = call float @dx.op.unary.f32(i32 21, float %2961)  ; Exp(value)
  %2963 = fadd fast float %2962, %2960
  %2964 = fmul fast float %2833, %2958
  %2965 = call float @dx.op.unary.f32(i32 21, float %2964)  ; Exp(value)
  %2966 = fmul fast float %2838, %2958
  %2967 = call float @dx.op.unary.f32(i32 21, float %2966)  ; Exp(value)
  %2968 = fadd fast float %2967, %2965
  %2969 = fmul fast float %2843, %2958
  %2970 = call float @dx.op.unary.f32(i32 21, float %2969)  ; Exp(value)
  %2971 = fmul fast float %2848, %2958
  %2972 = call float @dx.op.unary.f32(i32 21, float %2971)  ; Exp(value)
  %2973 = fadd fast float %2972, %2970
  %2974 = fmul fast float %2811, 0x3FA45F3060000000
  %2975 = fmul fast float %2974, %2928
  %2976 = fmul fast float %2975, %2963
  %2977 = fmul fast float %2812, 0x3FA45F3060000000
  %2978 = fmul fast float %2977, %2928
  %2979 = fmul fast float %2978, %2968
  %2980 = fmul fast float %2885, %2928
  %2981 = fmul fast float %2980, %2973
  %2982 = fmul fast float %2976, %2942
  %2983 = fmul fast float %2979, %2943
  %2984 = fmul fast float %2981, %2944
  %2985 = fadd fast float %2982, %2888
  %2986 = fadd fast float %2983, %2889
  %2987 = fadd fast float %2984, %2890
  %2988 = fadd fast float %2976, %2891
  %2989 = fadd fast float %2979, %2892
  %2990 = fadd fast float %2981, %2893
  %2991 = add nuw nsw i32 %2894, 1
  %2992 = icmp eq i32 %2991, %2880
  br i1 %2992, label %2993, label %2887, !llvm.loop !103

; <label>:2993                                    ; preds = %2887
  br label %2994

; <label>:2994                                    ; preds = %2993, %2785
  %2995 = phi float [ %2853, %2785 ], [ %2985, %2993 ]
  %2996 = phi float [ %2854, %2785 ], [ %2986, %2993 ]
  %2997 = phi float [ %2855, %2785 ], [ %2987, %2993 ]
  %2998 = phi float [ 0x3F1A36E2E0000000, %2785 ], [ %2988, %2993 ]
  %2999 = phi float [ 0x3F1A36E2E0000000, %2785 ], [ %2989, %2993 ]
  %3000 = phi float [ 0x3F1A36E2E0000000, %2785 ], [ %2990, %2993 ]
  %3001 = fmul fast float %2832, %2773
  %3002 = fmul fast float %2842, %2774
  %3003 = fmul fast float %2852, %2775
  %3004 = fsub fast float 1.000000e+00, %2832
  %3005 = fsub fast float 1.000000e+00, %2842
  %3006 = fsub fast float 1.000000e+00, %2852
  %3007 = fdiv fast float %2995, %2998
  %3008 = fdiv fast float %2996, %2999
  %3009 = fdiv fast float %2997, %3000
  %3010 = fmul fast float %3007, %3004
  %3011 = fmul fast float %3008, %3005
  %3012 = fmul fast float %3009, %3006
  %3013 = fadd fast float %3010, %3001
  %3014 = fadd fast float %3011, %3002
  %3015 = fadd fast float %3012, %3003
  br label %3016

; <label>:3016                                    ; preds = %2994, %2752
  %3017 = phi float [ %3013, %2994 ], [ 0.000000e+00, %2752 ]
  %3018 = phi float [ %3014, %2994 ], [ 0.000000e+00, %2752 ]
  %3019 = phi float [ %3015, %2994 ], [ 0.000000e+00, %2752 ]
  %3020 = phi float [ %2777, %2994 ], [ 0.000000e+00, %2752 ]
  %3021 = phi float [ %2778, %2994 ], [ 0.000000e+00, %2752 ]
  %3022 = phi float [ %2779, %2994 ], [ 0.000000e+00, %2752 ]
  %3023 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3024 = extractvalue %dx.types.CBufRet.i32 %3023, 3
  %3025 = and i32 %3024, 3
  %3026 = icmp ne i32 %3025, 0
  %3027 = and i32 %3024, 4
  %3028 = icmp ne i32 %3027, 0
  %3029 = and i1 %3026, %3028
  br i1 %3029, label %3030, label %3037, !dx.controlflow.hints !105

; <label>:3030                                    ; preds = %3016
  %3031 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %24, float %1652, float %1653, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3032 = extractvalue %dx.types.ResRet.f32 %3031, 0
  %3033 = fsub fast float 1.000000e+00, %3032
  %3034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %3035 = extractvalue %dx.types.CBufRet.f32 %3034, 0
  %3036 = fcmp fast olt float %3033, %3035
  br label %3040

; <label>:3037                                    ; preds = %3016
  %3038 = icmp eq i32 %3027, 0
  %3039 = and i1 %3026, %3038
  br label %3040

; <label>:3040                                    ; preds = %3037, %3030
  %3041 = phi i1 [ %3036, %3030 ], [ %3039, %3037 ]
  %3042 = select i1 %3041, float 0.000000e+00, float %3021
  %3043 = select i1 %3041, float 0.000000e+00, float %3022
  %3044 = fmul fast float %3020, %3017
  %3045 = fmul fast float %3042, %3018
  %3046 = fmul fast float %3043, %3019
  %3047 = fadd fast float %3044, %2769
  %3048 = fadd fast float %3045, %2770
  %3049 = fadd fast float %3046, %2771
  %3050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3051 = extractvalue %dx.types.CBufRet.f32 %3050, 0
  br i1 %3041, label %3052, label %3071, !dx.controlflow.hints !106

; <label>:3052                                    ; preds = %3040
  %3053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %3054 = extractvalue %dx.types.CBufRet.f32 %3053, 3
  %3055 = call float @dx.op.dot3.f32(i32 55, float %2759, float %2760, float %2761, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3056 = fmul fast float %3055, %3047
  %3057 = call float @dx.op.dot3.f32(i32 55, float %2765, float %2766, float %2767, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3058 = fmul fast float %3051, %3057
  %3059 = fadd fast float %3058, %3056
  br i1 %3029, label %3060, label %3066, !dx.controlflow.hints !107

; <label>:3060                                    ; preds = %3052
  %3061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %3062 = extractvalue %dx.types.CBufRet.f32 %3061, 1
  %3063 = fadd fast float %2759, -1.000000e+00
  %3064 = fmul fast float %3062, %3063
  %3065 = fadd fast float %3064, 1.000000e+00
  br label %3066

; <label>:3066                                    ; preds = %3060, %3052
  %3067 = phi float [ %3065, %3060 ], [ %2759, %3052 ]
  %3068 = fsub fast float %3048, %3054
  %3069 = fmul fast float %3067, %3068
  %3070 = fadd fast float %3069, %3054
  br label %3081

; <label>:3071                                    ; preds = %3040
  %3072 = fmul fast float %3047, %2759
  %3073 = fmul fast float %3048, %2760
  %3074 = fmul fast float %3049, %2761
  %3075 = fmul fast float %3051, %2765
  %3076 = fmul fast float %3051, %2766
  %3077 = fmul fast float %3051, %2767
  %3078 = fadd fast float %3075, %3072
  %3079 = fadd fast float %3076, %3073
  %3080 = fadd fast float %3077, %3074
  br label %3081

; <label>:3081                                    ; preds = %3071, %3066
  %3082 = phi float [ %3059, %3066 ], [ %3078, %3071 ]
  %3083 = phi float [ %3070, %3066 ], [ %3079, %3071 ]
  %3084 = phi float [ %3049, %3066 ], [ %3080, %3071 ]
  %3085 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %3086 = extractvalue %dx.types.CBufRet.i32 %3085, 1
  %3087 = shl i32 %3086, 1
  %3088 = lshr i32 %1630, 5
  %3089 = extractvalue %dx.types.CBufRet.i32 %3085, 0
  %3090 = mul i32 %3089, %3088
  %3091 = add i32 %3087, %1536
  %3092 = add i32 %3091, %3090
  %3093 = shl i32 %3092, 2
  %3094 = and i32 %1630, 24
  %3095 = or i32 %3094, %1541
  %3096 = shl i32 1, %3095
  %3097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3093, i32 undef)  ; BufferLoad(srv,index,wot)
  %3098 = extractvalue %dx.types.ResRet.i32 %3097, 0
  %3099 = and i32 %3098, %3096
  %3100 = icmp eq i32 %3099, 0
  br i1 %3100, label %3116, label %3101, !dx.controlflow.hints !108

; <label>:3101                                    ; preds = %3081
  %3102 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %1629, i32 %1630, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3103 = extractvalue %dx.types.ResRet.f32 %3102, 0
  %3104 = fcmp fast ogt float %3103, 0.000000e+00
  br i1 %3104, label %3105, label %3116, !dx.controlflow.hints !109

; <label>:3105                                    ; preds = %3101
  %3106 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %1629, i32 %1630, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3107 = extractvalue %dx.types.ResRet.f32 %3106, 0
  %3108 = extractvalue %dx.types.ResRet.f32 %3106, 1
  %3109 = extractvalue %dx.types.ResRet.f32 %3106, 2
  %3110 = extractvalue %dx.types.ResRet.f32 %3106, 3
  %3111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %3112 = extractvalue %dx.types.CBufRet.f32 %3111, 2
  %3113 = fmul fast float %3112, %3107
  %3114 = fmul fast float %3112, %3108
  %3115 = fmul fast float %3112, %3109
  br label %3116

; <label>:3116                                    ; preds = %3105, %3101, %3081
  %3117 = phi float [ %3113, %3105 ], [ 0.000000e+00, %3101 ], [ 0.000000e+00, %3081 ]
  %3118 = phi float [ %3114, %3105 ], [ 0.000000e+00, %3101 ], [ 0.000000e+00, %3081 ]
  %3119 = phi float [ %3115, %3105 ], [ 0.000000e+00, %3101 ], [ 0.000000e+00, %3081 ]
  %3120 = phi float [ %3110, %3105 ], [ 0.000000e+00, %3101 ], [ 0.000000e+00, %3081 ]
  %3121 = fsub fast float 1.000000e+00, %3120
  %3122 = fmul fast float %3121, %3082
  %3123 = fmul fast float %3121, %3083
  %3124 = fmul fast float %3121, %3084
  %3125 = fadd fast float %3122, %3117
  %3126 = fadd fast float %3123, %3118
  %3127 = fadd fast float %3124, %3119
  %3128 = fadd fast float %1664, 0x3FE3C6EF40000000
  %3129 = call float @dx.op.unary.f32(i32 22, float %3128)  ; Frc(value)
  %3130 = call float @dx.op.unary.f32(i32 23, float %3125)  ; Log(value)
  %3131 = fadd fast float %3130, -7.000000e+00
  %3132 = call float @dx.op.unary.f32(i32 21, float %3131)  ; Exp(value)
  %3133 = fmul fast float %3129, 2.000000e+00
  %3134 = fadd fast float %3133, -1.000000e+00
  %3135 = fmul fast float %3132, %3134
  %3136 = fcmp fast ogt float %3125, 0.000000e+00
  %3137 = select i1 %3136, float %3135, float 0.000000e+00
  %3138 = fadd fast float %3137, %3125
  %3139 = fadd fast float %1664, 0x3FF3C6EF40000000
  %3140 = call float @dx.op.unary.f32(i32 22, float %3139)  ; Frc(value)
  %3141 = call float @dx.op.unary.f32(i32 23, float %3126)  ; Log(value)
  %3142 = fadd fast float %3141, -7.000000e+00
  %3143 = call float @dx.op.unary.f32(i32 21, float %3142)  ; Exp(value)
  %3144 = fmul fast float %3140, 2.000000e+00
  %3145 = fadd fast float %3144, -1.000000e+00
  %3146 = fmul fast float %3143, %3145
  %3147 = fcmp fast ogt float %3126, 0.000000e+00
  %3148 = select i1 %3147, float %3146, float 0.000000e+00
  %3149 = fadd fast float %3148, %3126
  %3150 = fadd fast float %1664, 0x3FFDAA66E0000000
  %3151 = call float @dx.op.unary.f32(i32 22, float %3150)  ; Frc(value)
  %3152 = call float @dx.op.unary.f32(i32 23, float %3127)  ; Log(value)
  %3153 = fadd fast float %3152, -6.000000e+00
  %3154 = call float @dx.op.unary.f32(i32 21, float %3153)  ; Exp(value)
  %3155 = fmul fast float %3151, 2.000000e+00
  %3156 = fadd fast float %3155, -1.000000e+00
  %3157 = fmul fast float %3154, %3156
  %3158 = fcmp fast ogt float %3127, 0.000000e+00
  %3159 = select i1 %3158, float %3157, float 0.000000e+00
  %3160 = fadd fast float %3159, %3127
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %1629, i32 %1630, i32 undef, float %3138, float %3149, float %3160, float %3138, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %3161 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3162 = extractvalue %dx.types.CBufRet.i32 %3161, 0
  %3163 = and i32 %3162, 1
  %3164 = icmp ne i32 %3163, 0
  %3165 = or i32 %1630, %1622
  %3166 = and i32 %3165, 1
  %3167 = icmp eq i32 %3166, 0
  %3168 = and i1 %3167, %3164
  br i1 %3168, label %3169, label %3172, !dx.controlflow.hints !110

; <label>:3169                                    ; preds = %3116
  %3170 = and i32 %49, 2147483647
  %3171 = lshr i32 %1630, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %3170, i32 %3171, i32 undef, float %3047, float %3048, float %3049, float %3047, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3172

; <label>:3172                                    ; preds = %3169, %3116
  %3173 = fadd fast float %3125, %1617
  %3174 = fadd fast float %3126, %1618
  %3175 = fadd fast float %3127, %1619
  %3176 = fadd fast float %1620, 1.000000e+00
  br label %1639

; <label>:3177                                    ; preds = %1639
  %3178 = fdiv fast float 1.000000e+00, %1643
  %3179 = fmul fast float %3178, %1640
  %3180 = fmul fast float %3178, %1641
  %3181 = fmul fast float %3178, %1642
  %3182 = call float @dx.op.dot3.f32(i32 55, float %3179, float %3180, float %3181, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3183 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %3184 = add i32 %3183, -1
  %3185 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %3186 = and i32 %3183, 1
  %3187 = xor i32 %3186, 1
  %3188 = and i32 %3184, %3185
  %3189 = xor i32 %3187, %3188
  %3190 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3182, i32 %3189)  ; WaveReadLaneAt(value,lane)
  %3191 = call float @dx.op.binary.f32(i32 36, float %3182, float %3190)  ; FMin(a,b)
  %3192 = add i32 %3183, 15
  %3193 = and i32 %3192, 8
  %3194 = xor i32 %3188, %3193
  %3195 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3191, i32 %3194)  ; WaveReadLaneAt(value,lane)
  %3196 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3182, i32 %3189)  ; WaveReadLaneAt(value,lane)
  %3197 = call float @dx.op.binary.f32(i32 35, float %3182, float %3196)  ; FMax(a,b)
  %3198 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3197, i32 %3194)  ; WaveReadLaneAt(value,lane)
  %3199 = or i32 %49, %50
  %3200 = and i32 %3199, 1
  %3201 = icmp eq i32 %3200, 0
  br i1 %3201, label %3202, label %3244, !dx.controlflow.hints !144

; <label>:3202                                    ; preds = %3177
  %3203 = call float @dx.op.binary.f32(i32 35, float %3197, float %3198)  ; FMax(a,b)
  %3204 = call float @dx.op.binary.f32(i32 36, float %3191, float %3195)  ; FMin(a,b)
  %3205 = lshr i32 %49, 1
  %3206 = lshr i32 %50, 1
  %3207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %3208 = extractvalue %dx.types.CBufRet.f32 %3207, 3
  %3209 = fmul fast float %3208, 3.200000e+01
  %3210 = fmul fast float %3204, 0x3F1A36E2E0000000
  %3211 = fmul fast float %3210, %3209
  %3212 = call float @dx.op.unary.f32(i32 23, float %3211)  ; Log(value)
  %3213 = fmul fast float %3212, 0x3FC4640000000000
  %3214 = call float @dx.op.unary.f32(i32 21, float %3213)  ; Exp(value)
  %3215 = fmul fast float %3214, 0x4032DA0000000000
  %3216 = fadd fast float %3215, 8.359375e-01
  %3217 = fmul fast float %3214, 1.868750e+01
  %3218 = fadd fast float %3217, 1.000000e+00
  %3219 = fdiv fast float %3216, %3218
  %3220 = call float @dx.op.unary.f32(i32 23, float %3219)  ; Log(value)
  %3221 = fmul fast float %3220, 7.884375e+01
  %3222 = call float @dx.op.unary.f32(i32 21, float %3221)  ; Exp(value)
  %3223 = fmul fast float %3203, 0x3F1A36E2E0000000
  %3224 = fmul fast float %3223, %3209
  %3225 = call float @dx.op.unary.f32(i32 23, float %3224)  ; Log(value)
  %3226 = fmul fast float %3225, 0x3FC4640000000000
  %3227 = call float @dx.op.unary.f32(i32 21, float %3226)  ; Exp(value)
  %3228 = fmul fast float %3227, 0x4032DA0000000000
  %3229 = fadd fast float %3228, 8.359375e-01
  %3230 = fmul fast float %3227, 1.868750e+01
  %3231 = fadd fast float %3230, 1.000000e+00
  %3232 = fdiv fast float %3229, %3231
  %3233 = call float @dx.op.unary.f32(i32 23, float %3232)  ; Log(value)
  %3234 = fmul fast float %3233, 7.884375e+01
  %3235 = call float @dx.op.unary.f32(i32 21, float %3234)  ; Exp(value)
  %3236 = fmul fast float %3222, 0x40778E40E0000000
  %3237 = fmul fast float %3235, 0x40778E40E0000000
  %3238 = call float @dx.op.unary.f32(i32 26, float %3236)  ; Round_ne(value)
  %3239 = call float @dx.op.unary.f32(i32 26, float %3237)  ; Round_ne(value)
  %3240 = fmul fast float %3238, 0x3F70101020000000
  %3241 = fmul fast float %3239, 0x3F70101020000000
  %3242 = call float @dx.op.unary.f32(i32 7, float %3240)  ; Saturate(value)
  %3243 = call float @dx.op.unary.f32(i32 7, float %3241)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %3205, i32 %3206, i32 undef, float %3242, float %3243, float %3242, float %3242, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3244

; <label>:3244                                    ; preds = %3202, %3177
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
!38 = !{void ()* @cs_post_opaque_processes_luma_subsampletile_dmfpscale, !"cs_post_opaque_processes_luma_subsampletile_dmfpscale", null, !4, !39}
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
!112 = !{!67}
!113 = !{!114, !116, !118, !119, !121, !122, !67}
!114 = distinct !{!114, !115, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!115 = distinct !{!115, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!116 = distinct !{!116, !117, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!117 = distinct !{!117, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!118 = distinct !{!118, !117, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!119 = distinct !{!119, !120, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %extinction"}
!120 = distinct !{!120, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z"}
!121 = distinct !{!121, !120, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %scattering"}
!122 = distinct !{!122, !120, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %thermalFogExtinction"}
!123 = !{!124}
!124 = distinct !{!124, !125, !"\01?sort@@YAXAIAM00@Z: %c"}
!125 = distinct !{!125, !"\01?sort@@YAXAIAM00@Z"}
!126 = !{!127, !128, !114, !116, !118, !119, !121, !122, !67}
!127 = distinct !{!127, !125, !"\01?sort@@YAXAIAM00@Z: %a"}
!128 = distinct !{!128, !125, !"\01?sort@@YAXAIAM00@Z: %b"}
!129 = !{!128}
!130 = !{!127, !124, !114, !116, !118, !119, !121, !122, !67}
!131 = !{!127}
!132 = !{!128, !124, !114, !116, !118, !119, !121, !122, !67}
!133 = !{!134}
!134 = distinct !{!134, !135, !"\01?sort@@YAXAIAM00@Z: %c"}
!135 = distinct !{!135, !"\01?sort@@YAXAIAM00@Z"}
!136 = !{!137, !138, !114, !116, !118, !119, !121, !122, !67}
!137 = distinct !{!137, !135, !"\01?sort@@YAXAIAM00@Z: %a"}
!138 = distinct !{!138, !135, !"\01?sort@@YAXAIAM00@Z: %b"}
!139 = !{!138}
!140 = !{!137, !134, !114, !116, !118, !119, !121, !122, !67}
!141 = !{!137}
!142 = !{!138, !134, !114, !116, !118, !119, !121, !122, !67}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 2}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 2}

