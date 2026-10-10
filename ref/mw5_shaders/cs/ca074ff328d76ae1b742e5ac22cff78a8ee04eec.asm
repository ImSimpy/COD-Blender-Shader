;
; Note: shader requires additional functionality:
;       Typed UAV Load Additional Formats
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
; shader hash: 88c9eb0dfbca9d638e80d2edfb7dc8e0
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
;                                   texture     f32          2d     T11             t0     1
;                                   texture     f32          2d     T12             t1     1
;                                   texture     f32          2d     T13             t2     1
;                                   texture     f32          2d     T14            t18     1
;                                   texture     f32          2d     T15            t21     1
;                                   texture     f32          2d     T16            t22     1
;                                   texture     f32          2d     T17            t12     1
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
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %29 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %30 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %31 = alloca [3 x float], align 4
  %32 = alloca [3 x float], align 4
  %33 = alloca [4 x float], align 4
  %34 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.i32 %34, 0
  %36 = extractvalue %dx.types.CBufRet.i32 %34, 1
  %37 = mul i32 %36, %35
  %38 = add i32 %37, %30
  %39 = shl i32 %38, 2
  %40 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %39, i32 undef)  ; BufferLoad(srv,index,wot)
  %41 = extractvalue %dx.types.ResRet.i32 %40, 0
  %42 = lshr i32 %41, 16
  %43 = shl i32 %41, 3
  %44 = and i32 %43, 524280
  %45 = shl nuw nsw i32 %42, 3
  %46 = add i32 %44, %28
  %47 = add i32 %45, %29
  %48 = shl i32 %46, 1
  %49 = shl i32 %47, 1
  %50 = uitofp i32 %48 to float
  %51 = uitofp i32 %49 to float
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 2
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 3
  %55 = fmul fast float %50, %53
  %56 = fmul fast float %51, %54
  %57 = fadd fast float %55, %53
  %58 = fadd fast float %56, %54
  %59 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %24, float %57, float %58, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %60 = extractvalue %dx.types.ResRet.f32 %59, 0
  %61 = extractvalue %dx.types.ResRet.f32 %59, 1
  %62 = extractvalue %dx.types.ResRet.f32 %59, 2
  %63 = extractvalue %dx.types.ResRet.f32 %59, 3
  %64 = fcmp fast ogt float %63, -1.000000e+00
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 1
  %67 = select i1 %64, float %66, float 1.000000e+00
  %68 = fadd fast float %63, 1.000000e+00
  %69 = fmul fast float %67, %68
  %70 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %71 = fcmp fast ogt float %62, -1.000000e+00
  %72 = select i1 %71, float %66, float 1.000000e+00
  %73 = fadd fast float %62, 1.000000e+00
  %74 = fmul fast float %72, %73
  %75 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %76 = fcmp fast ogt float %60, -1.000000e+00
  %77 = select i1 %76, float %66, float 1.000000e+00
  %78 = fadd fast float %60, 1.000000e+00
  %79 = fmul fast float %77, %78
  %80 = call float @dx.op.unary.f32(i32 6, float %79)  ; FAbs(value)
  %81 = fcmp fast ogt float %61, -1.000000e+00
  %82 = select i1 %81, float %66, float 1.000000e+00
  %83 = fadd fast float %61, 1.000000e+00
  %84 = fmul fast float %82, %83
  %85 = call float @dx.op.unary.f32(i32 6, float %84)  ; FAbs(value)
  %86 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 0
  store float %70, float* %86, align 4
  %87 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 1
  store float %75, float* %87, align 4
  %88 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 2
  store float %80, float* %88, align 4
  %89 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 3
  store float %85, float* %89, align 4
  %90 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %91 = extractvalue %dx.types.ResRet.i32 %90, 0
  %92 = and i32 %91, 114688
  %93 = icmp ne i32 %92, 0
  %94 = select i1 %93, i32 %48, i32 0
  %95 = select i1 %93, i32 %49, i32 0
  %96 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %94, i32 %95, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %97 = extractvalue %dx.types.ResRet.f32 %96, 0
  %98 = fmul fast float %97, 2.550000e+02
  %99 = fptoui float %98 to i32
  %100 = icmp eq i32 %99, 3
  %101 = and i1 %93, %100
  %102 = extractvalue %dx.types.CBufRet.f32 %65, 3
  %103 = fcmp fast oge float %70, %102
  %104 = fadd fast float %50, 5.000000e-01
  %105 = fadd fast float %51, 5.000000e-01
  br i1 %101, label %967, label %106, !dx.controlflow.hints !40

; <label>:106                                     ; preds = %0
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 170)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = select i1 %103, float %108, float %70
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 3
  %113 = fmul fast float %104, 2.000000e+00
  %114 = fmul fast float %113, %111
  %115 = fmul fast float %105, 2.000000e+00
  %116 = fmul fast float %115, %112
  %117 = fsub fast float 1.000000e+00, %114
  %118 = fsub fast float 1.000000e+00, %116
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = fmul fast float %117, %120
  %124 = fmul fast float %117, %121
  %125 = fmul fast float %117, %122
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 0
  %128 = extractvalue %dx.types.CBufRet.f32 %126, 1
  %129 = extractvalue %dx.types.CBufRet.f32 %126, 2
  %130 = fmul fast float %118, %127
  %131 = fmul fast float %118, %128
  %132 = fmul fast float %118, %129
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %136 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %137 = fadd fast float %130, %134
  %138 = fadd fast float %137, %123
  %139 = fadd fast float %131, %135
  %140 = fadd fast float %139, %124
  %141 = fadd fast float %132, %136
  %142 = fadd fast float %141, %125
  %143 = fmul fast float %138, %109
  %144 = fmul fast float %140, %109
  %145 = fmul fast float %142, %109
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 163)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 1
  %151 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %152 = extractvalue %dx.types.CBufRet.f32 %148, 3
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %156 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %157 = extractvalue %dx.types.CBufRet.f32 %153, 3
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 0
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 1
  %161 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %162 = extractvalue %dx.types.CBufRet.f32 %158, 3
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 0
  %165 = extractvalue %dx.types.CBufRet.f32 %163, 1
  %166 = extractvalue %dx.types.CBufRet.f32 %163, 2
  %167 = extractvalue %dx.types.CBufRet.f32 %163, 3
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 3
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.f32 %170, 3
  %172 = extractvalue %dx.types.CBufRet.f32 %170, 0
  %173 = extractvalue %dx.types.CBufRet.f32 %170, 1
  %174 = extractvalue %dx.types.CBufRet.f32 %170, 2
  %175 = fcmp fast olt float %174, -5.000000e-01
  %176 = extractvalue %dx.types.CBufRet.f32 %146, 3
  %177 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %178 = call float @dx.op.unary.f32(i32 25, float %177)  ; Rsqrt(value)
  %179 = fmul fast float %178, %177
  %180 = fmul fast float %178, %143
  %181 = fmul fast float %178, %144
  %182 = fmul fast float %178, %145
  %183 = fadd fast float %179, %152
  br i1 %103, label %184, label %196, !dx.controlflow.hints !41

; <label>:184                                     ; preds = %106
  %185 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %186 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 187)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 1
  %189 = extractvalue %dx.types.CBufRet.f32 %187, 0
  %190 = call float @dx.op.binary.f32(i32 35, float %182, float %189)  ; FMax(a,b)
  %191 = call float @dx.op.binary.f32(i32 36, float %190, float %188)  ; FMin(a,b)
  %192 = fmul fast float %191, %186
  %193 = fadd fast float %192, %185
  %194 = call float @dx.op.unary.f32(i32 7, float %193)  ; Saturate(value)
  %195 = fmul fast float %182, %147
  br label %196

; <label>:196                                     ; preds = %184, %106
  %197 = phi float [ %147, %184 ], [ %183, %106 ]
  %198 = phi float [ %194, %184 ], [ 0.000000e+00, %106 ]
  %199 = phi float [ %195, %184 ], [ %145, %106 ]
  %200 = call float @dx.op.dot3.f32(i32 55, float %180, float %181, float %182, float %149, float %150, float %151)  ; Dot3(ax,ay,az,bx,by,bz)
  %201 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.i32 %201, 1
  %203 = and i32 %202, 1
  %204 = icmp ne i32 %203, 0
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.f32 %205, 2
  %207 = fcmp fast ogt float %206, 0.000000e+00
  %208 = and i1 %204, %207
  br i1 %208, label %209, label %618, !dx.controlflow.hints !42

; <label>:209                                     ; preds = %196
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 3
  %212 = select i1 %103, float %211, float %179
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 3
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.f32 %215, 2
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 2
  %219 = fsub fast float %216, %218
  %220 = and i32 %202, 2
  %221 = extractvalue %dx.types.CBufRet.i32 %201, 0
  %222 = call i32 @dx.op.binary.i32(i32 40, i32 %221, i32 3)  ; UMin(a,b)
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.f32 %223, 0
  %225 = extractvalue %dx.types.CBufRet.f32 %223, 1
  %226 = extractvalue %dx.types.CBufRet.f32 %217, 0
  %227 = extractvalue %dx.types.CBufRet.f32 %217, 1
  %228 = fsub fast float %224, %226
  %229 = fsub fast float %225, %227
  %230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.f32 %230, 0
  %232 = fcmp fast ogt float %231, 0.000000e+00
  %233 = fsub fast float -0.000000e+00, %228
  %234 = fsub fast float -0.000000e+00, %229
  %235 = call float @dx.op.dot2.f32(i32 54, float %180, float %181, float %180, float %181)  ; Dot2(ax,ay,bx,by)
  %236 = call float @dx.op.dot2.f32(i32 54, float %180, float %181, float %233, float %234)  ; Dot2(ax,ay,bx,by)
  %237 = fmul fast float %236, 2.000000e+00
  %238 = call float @dx.op.dot2.f32(i32 54, float %233, float %234, float %233, float %234)  ; Dot2(ax,ay,bx,by)
  %239 = fmul fast float %231, %231
  %240 = fsub fast float %238, %239
  %241 = fmul fast float %237, %237
  %242 = fmul fast float %235, 4.000000e+00
  %243 = fmul fast float %242, %240
  %244 = fsub fast float %241, %243
  %245 = fcmp fast ogt float %244, 0.000000e+00
  br i1 %245, label %246, label %261, !dx.controlflow.hints !43

; <label>:246                                     ; preds = %209
  %247 = fcmp fast ogt float %237, 0.000000e+00
  %248 = call float @dx.op.unary.f32(i32 24, float %244)  ; Sqrt(value)
  %249 = fsub fast float -0.000000e+00, %248
  %250 = select i1 %247, float %248, float %249
  %251 = fadd fast float %250, %237
  %252 = fmul float %251, -5.000000e-01
  %253 = fdiv fast float %252, %235
  %254 = call float @dx.op.binary.f32(i32 35, float %253, float 0.000000e+00)  ; FMax(a,b)
  %255 = call float @dx.op.binary.f32(i32 36, float %212, float %254)  ; FMin(a,b)
  %256 = fdiv fast float %240, %252
  %257 = call float @dx.op.binary.f32(i32 35, float %256, float 0.000000e+00)  ; FMax(a,b)
  %258 = call float @dx.op.binary.f32(i32 36, float %212, float %257)  ; FMin(a,b)
  %259 = call float @dx.op.binary.f32(i32 36, float %255, float %258)  ; FMin(a,b)
  %260 = call float @dx.op.binary.f32(i32 35, float %255, float %258)  ; FMax(a,b)
  br label %261

; <label>:261                                     ; preds = %246, %209
  %262 = phi float [ %260, %246 ], [ -1.000000e+00, %209 ]
  %263 = phi float [ %259, %246 ], [ -1.000000e+00, %209 ]
  %264 = phi i1 [ true, %246 ], [ false, %209 ]
  %265 = and i1 %232, %264
  br i1 %265, label %266, label %268, !dx.controlflow.hints !44

; <label>:266                                     ; preds = %261
  %267 = fcmp fast oeq float %263, %262
  br i1 %267, label %571, label %269, !dx.controlflow.hints !45

; <label>:268                                     ; preds = %261
  br i1 %232, label %571, label %269, !dx.controlflow.hints !46

; <label>:269                                     ; preds = %268, %266
  %270 = phi float [ %212, %268 ], [ %262, %266 ]
  %271 = phi float [ 0.000000e+00, %268 ], [ %263, %266 ]
  %272 = icmp ne i32 %220, 0
  %273 = fmul fast float %270, %182
  %274 = fadd fast float %273, %214
  %275 = fmul fast float %274, %270
  %276 = select i1 %272, float 0.000000e+00, float %275
  %277 = fcmp fast oeq float %182, 0.000000e+00
  %278 = fdiv fast float %219, %182
  %279 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %278)  ; FMax(a,b)
  %280 = select i1 %277, float %270, float %279
  %281 = call float @dx.op.binary.f32(i32 36, float %270, float %280)  ; FMin(a,b)
  %282 = fcmp fast ogt float %182, 0.000000e+00
  %283 = fcmp fast olt float %219, 0.000000e+00
  br i1 %282, label %284, label %341, !dx.controlflow.hints !47

; <label>:284                                     ; preds = %269
  %285 = icmp eq i32 %220, 0
  br i1 %283, label %286, label %330, !dx.controlflow.hints !48

; <label>:286                                     ; preds = %284
  %287 = select i1 %285, float %270, float 0.000000e+00
  %288 = fsub fast float -0.000000e+00, %287
  %289 = call float @dx.op.unary.f32(i32 6, float %288)  ; FAbs(value)
  %290 = fmul fast float %287, %182
  %291 = fadd fast float %290, %214
  %292 = fmul fast float %289, %291
  %293 = fsub fast float %276, %292
  %294 = fsub fast float %270, %289
  %295 = select i1 %285, float %294, float 0.000000e+00
  %296 = extractvalue %dx.types.CBufRet.f32 %210, 0
  %297 = extractvalue %dx.types.CBufRet.f32 %210, 1
  %298 = extractvalue %dx.types.CBufRet.f32 %210, 2
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 0
  %301 = extractvalue %dx.types.CBufRet.f32 %299, 1
  %302 = extractvalue %dx.types.CBufRet.f32 %299, 2
  %303 = extractvalue %dx.types.CBufRet.f32 %299, 3
  %304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.f32 %304, 3
  %306 = call float @dx.op.binary.f32(i32 36, float %293, float %305)  ; FMin(a,b)
  %307 = fmul fast float %303, %295
  %308 = call float @dx.op.unary.f32(i32 7, float %307)  ; Saturate(value)
  %309 = fsub fast float %300, %296
  %310 = fsub fast float %301, %297
  %311 = fsub fast float %302, %298
  %312 = fmul fast float %308, %309
  %313 = fmul fast float %308, %310
  %314 = fmul fast float %308, %311
  %315 = fadd fast float %312, %296
  %316 = fadd fast float %313, %297
  %317 = fadd fast float %314, %298
  br i1 %103, label %571, label %318, !dx.controlflow.hints !49

; <label>:318                                     ; preds = %286
  %319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %320 = extractvalue %dx.types.CBufRet.f32 %319, 0
  %321 = extractvalue %dx.types.CBufRet.f32 %319, 1
  %322 = fadd fast float %321, %320
  %323 = call float @dx.op.unary.f32(i32 7, float %322)  ; Saturate(value)
  %324 = extractvalue %dx.types.CBufRet.f32 %319, 2
  %325 = extractvalue %dx.types.CBufRet.f32 %319, 3
  %326 = fadd fast float %325, %324
  %327 = call float @dx.op.unary.f32(i32 7, float %326)  ; Saturate(value)
  %328 = fmul fast float %323, %306
  %329 = fmul fast float %328, %327
  br label %571

; <label>:330                                     ; preds = %284
  br i1 %285, label %331, label %352, !dx.controlflow.hints !50

; <label>:331                                     ; preds = %330
  %332 = call float @dx.op.binary.f32(i32 36, float %281, float %271)  ; FMin(a,b)
  %333 = fsub fast float %281, %332
  %334 = fsub fast float %333, %270
  %335 = call float @dx.op.unary.f32(i32 6, float %334)  ; FAbs(value)
  %336 = fadd fast float %333, %270
  %337 = fmul fast float %336, %182
  %338 = fadd fast float %337, %214
  %339 = fmul fast float %338, %335
  %340 = fsub fast float %276, %339
  br label %352

; <label>:341                                     ; preds = %269
  br i1 %283, label %342, label %352, !dx.controlflow.hints !51

; <label>:342                                     ; preds = %341
  %343 = call float @dx.op.binary.f32(i32 35, float %271, float %281)  ; FMax(a,b)
  %344 = icmp eq i32 %220, 0
  %345 = select i1 %344, float %281, float 0.000000e+00
  %346 = fsub fast float -0.000000e+00, %345
  %347 = call float @dx.op.unary.f32(i32 6, float %346)  ; FAbs(value)
  %348 = fmul fast float %345, %182
  %349 = fadd fast float %348, %214
  %350 = fmul fast float %347, %349
  %351 = fsub fast float %276, %350
  br label %352

; <label>:352                                     ; preds = %342, %341, %331, %330
  %353 = phi float [ %271, %330 ], [ %271, %331 ], [ %343, %342 ], [ %271, %341 ]
  %354 = phi float [ 0.000000e+00, %330 ], [ %335, %331 ], [ %347, %342 ], [ 0.000000e+00, %341 ]
  %355 = phi float [ %276, %330 ], [ %340, %331 ], [ %351, %342 ], [ %276, %341 ]
  %356 = phi float [ %281, %330 ], [ %281, %331 ], [ %270, %342 ], [ %270, %341 ]
  %357 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 0
  store float -1.000000e+00, float* %357, align 4, !tbaa !52, !noalias !56
  %358 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 1
  store float -1.000000e+00, float* %358, align 4, !tbaa !52, !noalias !56
  %359 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 2
  store float -1.000000e+00, float* %359, align 4, !tbaa !52, !noalias !56
  %360 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 0
  store float -1.000000e+00, float* %360, align 4, !tbaa !52, !noalias !56
  %361 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 1
  store float -1.000000e+00, float* %361, align 4, !tbaa !52, !noalias !56
  %362 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 2
  store float -1.000000e+00, float* %362, align 4, !tbaa !52, !noalias !56
  %363 = icmp sgt i32 %222, 0
  br i1 %363, label %364, label %425

; <label>:364                                     ; preds = %352
  br label %365

; <label>:365                                     ; preds = %414, %364
  %366 = phi i32 [ %415, %414 ], [ 0, %364 ]
  %367 = phi i32 [ %416, %414 ], [ 0, %364 ]
  %368 = add nuw i32 %367, 171
  %369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 %368)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.f32 %369, 0
  %371 = extractvalue %dx.types.CBufRet.f32 %369, 1
  %372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.f32 %372, 0
  %374 = extractvalue %dx.types.CBufRet.f32 %372, 1
  %375 = fsub fast float %370, %373
  %376 = fsub fast float %371, %374
  %377 = extractvalue %dx.types.CBufRet.f32 %369, 2
  %378 = fsub fast float -0.000000e+00, %375
  %379 = fsub fast float -0.000000e+00, %376
  %380 = call float @dx.op.dot2.f32(i32 54, float %180, float %181, float %378, float %379)  ; Dot2(ax,ay,bx,by)
  %381 = fmul fast float %380, 2.000000e+00
  %382 = call float @dx.op.dot2.f32(i32 54, float %378, float %379, float %378, float %379)  ; Dot2(ax,ay,bx,by)
  %383 = fmul fast float %377, %377
  %384 = fsub fast float %382, %383
  %385 = fmul fast float %381, %381
  %386 = fmul fast float %242, %384
  %387 = fsub fast float %385, %386
  %388 = fcmp fast ogt float %387, 0.000000e+00
  br i1 %388, label %389, label %404, !dx.controlflow.hints !43

; <label>:389                                     ; preds = %365
  %390 = fcmp fast ogt float %381, 0.000000e+00
  %391 = call float @dx.op.unary.f32(i32 24, float %387)  ; Sqrt(value)
  %392 = fsub fast float -0.000000e+00, %391
  %393 = select i1 %390, float %391, float %392
  %394 = fadd fast float %393, %381
  %395 = fmul float %394, -5.000000e-01
  %396 = fdiv fast float %395, %235
  %397 = call float @dx.op.binary.f32(i32 35, float %396, float 0.000000e+00)  ; FMax(a,b)
  %398 = call float @dx.op.binary.f32(i32 36, float %270, float %397)  ; FMin(a,b)
  %399 = fdiv fast float %384, %395
  %400 = call float @dx.op.binary.f32(i32 35, float %399, float 0.000000e+00)  ; FMax(a,b)
  %401 = call float @dx.op.binary.f32(i32 36, float %270, float %400)  ; FMin(a,b)
  %402 = call float @dx.op.binary.f32(i32 36, float %398, float %401)  ; FMin(a,b)
  %403 = call float @dx.op.binary.f32(i32 35, float %398, float %401)  ; FMax(a,b)
  br label %404

; <label>:404                                     ; preds = %389, %365
  %405 = phi float [ %403, %389 ], [ -1.000000e+00, %365 ]
  %406 = phi float [ %402, %389 ], [ -1.000000e+00, %365 ]
  %407 = phi i1 [ true, %389 ], [ false, %365 ]
  br i1 %407, label %408, label %414, !dx.controlflow.hints !68

; <label>:408                                     ; preds = %404
  %409 = call float @dx.op.binary.f32(i32 35, float %353, float %406)  ; FMax(a,b)
  %410 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %367
  store float %409, float* %410, align 4, !tbaa !52, !noalias !56
  %411 = call float @dx.op.binary.f32(i32 35, float %353, float %405)  ; FMax(a,b)
  %412 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %367
  store float %411, float* %412, align 4, !tbaa !52, !noalias !56
  %413 = add nsw i32 %366, 1
  br label %414

; <label>:414                                     ; preds = %408, %404
  %415 = phi i32 [ %413, %408 ], [ %366, %404 ]
  %416 = add nuw nsw i32 %367, 1
  %417 = icmp eq i32 %416, %222
  br i1 %417, label %418, label %365

; <label>:418                                     ; preds = %414
  %419 = load float, float* %359, align 4, !tbaa !52, !alias.scope !69, !noalias !72
  %420 = load float, float* %358, align 4, !tbaa !52, !alias.scope !75, !noalias !76
  %421 = load float, float* %357, align 4, !tbaa !52, !alias.scope !77, !noalias !78
  %422 = load float, float* %362, align 4, !tbaa !52, !alias.scope !79, !noalias !82
  %423 = load float, float* %361, align 4, !tbaa !52, !alias.scope !85, !noalias !86
  %424 = load float, float* %360, align 4, !tbaa !52, !alias.scope !87, !noalias !88
  br label %425

; <label>:425                                     ; preds = %418, %352
  %426 = phi float [ -1.000000e+00, %352 ], [ %424, %418 ]
  %427 = phi float [ -1.000000e+00, %352 ], [ %423, %418 ]
  %428 = phi float [ -1.000000e+00, %352 ], [ %422, %418 ]
  %429 = phi float [ -1.000000e+00, %352 ], [ %421, %418 ]
  %430 = phi float [ -1.000000e+00, %352 ], [ %420, %418 ]
  %431 = phi float [ -1.000000e+00, %352 ], [ %419, %418 ]
  %432 = phi i32 [ 0, %352 ], [ %415, %418 ]
  %433 = call float @dx.op.binary.f32(i32 36, float %430, float %431)  ; FMin(a,b)
  %434 = call float @dx.op.binary.f32(i32 36, float %429, float %433)  ; FMin(a,b)
  %435 = call float @dx.op.binary.f32(i32 35, float %429, float %430)  ; FMax(a,b)
  %436 = call float @dx.op.binary.f32(i32 36, float %435, float %431)  ; FMin(a,b)
  %437 = call float @dx.op.binary.f32(i32 36, float %429, float %430)  ; FMin(a,b)
  %438 = call float @dx.op.binary.f32(i32 35, float %437, float %436)  ; FMax(a,b)
  %439 = call float @dx.op.binary.f32(i32 35, float %430, float %431)  ; FMax(a,b)
  %440 = call float @dx.op.binary.f32(i32 35, float %429, float %439)  ; FMax(a,b)
  store float %434, float* %357, align 4, !tbaa !52, !alias.scope !77, !noalias !78
  store float %438, float* %358, align 4, !tbaa !52, !alias.scope !75, !noalias !76
  store float %440, float* %359, align 4, !tbaa !52, !alias.scope !69, !noalias !72
  %441 = call float @dx.op.binary.f32(i32 36, float %427, float %428)  ; FMin(a,b)
  %442 = call float @dx.op.binary.f32(i32 36, float %426, float %441)  ; FMin(a,b)
  %443 = call float @dx.op.binary.f32(i32 35, float %426, float %427)  ; FMax(a,b)
  %444 = call float @dx.op.binary.f32(i32 36, float %443, float %428)  ; FMin(a,b)
  %445 = call float @dx.op.binary.f32(i32 36, float %426, float %427)  ; FMin(a,b)
  %446 = call float @dx.op.binary.f32(i32 35, float %445, float %444)  ; FMax(a,b)
  %447 = call float @dx.op.binary.f32(i32 35, float %427, float %428)  ; FMax(a,b)
  %448 = call float @dx.op.binary.f32(i32 35, float %426, float %447)  ; FMax(a,b)
  store float %442, float* %360, align 4, !tbaa !52, !alias.scope !87, !noalias !88
  store float %446, float* %361, align 4, !tbaa !52, !alias.scope !85, !noalias !86
  store float %448, float* %362, align 4, !tbaa !52, !alias.scope !79, !noalias !82
  %449 = sub nsw i32 3, %432
  %450 = icmp sgt i32 %449, 2
  br i1 %450, label %451, label %489, !dx.controlflow.hints !89

; <label>:451                                     ; preds = %425
  %452 = icmp eq i32 %220, 0
  %453 = fsub fast float %270, %354
  %454 = select i1 %452, float %453, float %354
  %455 = extractvalue %dx.types.CBufRet.f32 %210, 0
  %456 = extractvalue %dx.types.CBufRet.f32 %210, 1
  %457 = extractvalue %dx.types.CBufRet.f32 %210, 2
  %458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %459 = extractvalue %dx.types.CBufRet.f32 %458, 0
  %460 = extractvalue %dx.types.CBufRet.f32 %458, 1
  %461 = extractvalue %dx.types.CBufRet.f32 %458, 2
  %462 = extractvalue %dx.types.CBufRet.f32 %458, 3
  %463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %464 = extractvalue %dx.types.CBufRet.f32 %463, 3
  %465 = call float @dx.op.binary.f32(i32 36, float %355, float %464)  ; FMin(a,b)
  %466 = fmul fast float %462, %454
  %467 = call float @dx.op.unary.f32(i32 7, float %466)  ; Saturate(value)
  %468 = fsub fast float %459, %455
  %469 = fsub fast float %460, %456
  %470 = fsub fast float %461, %457
  %471 = fmul fast float %467, %468
  %472 = fmul fast float %467, %469
  %473 = fmul fast float %467, %470
  %474 = fadd fast float %471, %455
  %475 = fadd fast float %472, %456
  %476 = fadd fast float %473, %457
  br i1 %103, label %571, label %477, !dx.controlflow.hints !49

; <label>:477                                     ; preds = %451
  %478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %479 = extractvalue %dx.types.CBufRet.f32 %478, 0
  %480 = extractvalue %dx.types.CBufRet.f32 %478, 1
  %481 = fadd fast float %480, %479
  %482 = call float @dx.op.unary.f32(i32 7, float %481)  ; Saturate(value)
  %483 = extractvalue %dx.types.CBufRet.f32 %478, 2
  %484 = extractvalue %dx.types.CBufRet.f32 %478, 3
  %485 = fadd fast float %484, %483
  %486 = call float @dx.op.unary.f32(i32 7, float %485)  ; Saturate(value)
  %487 = fmul fast float %482, %465
  %488 = fmul fast float %487, %486
  br label %571

; <label>:489                                     ; preds = %425
  %490 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %449
  %491 = load float, float* %490, align 4, !tbaa !52, !noalias !56
  %492 = fcmp fast olt float %491, %356
  %493 = icmp sgt i32 %432, 0
  %494 = and i1 %493, %492
  br i1 %494, label %495, label %532

; <label>:495                                     ; preds = %489
  br label %496

; <label>:496                                     ; preds = %525, %495
  %497 = phi float [ %526, %525 ], [ %354, %495 ]
  %498 = phi float [ %527, %525 ], [ %355, %495 ]
  %499 = phi float [ %507, %525 ], [ %491, %495 ]
  %500 = phi i32 [ %504, %525 ], [ %449, %495 ]
  %501 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %500
  %502 = load float, float* %501, align 4, !tbaa !52, !noalias !56
  %503 = icmp slt i32 %500, 2
  %504 = add nsw i32 %500, 1
  %505 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %504
  %506 = load float, float* %505, align 4, !tbaa !52, !noalias !56
  %507 = select i1 %503, float %506, float %270
  %508 = call float @dx.op.binary.f32(i32 36, float %507, float %502)  ; FMin(a,b)
  %509 = call float @dx.op.binary.f32(i32 36, float %356, float %508)  ; FMin(a,b)
  %510 = icmp eq i32 %220, 0
  %511 = fadd fast float %509, %499
  %512 = fmul fast float %511, %182
  %513 = fadd fast float %512, %214
  br i1 %510, label %519, label %514, !dx.controlflow.hints !90

; <label>:514                                     ; preds = %496
  %515 = fsub fast float %509, %499
  %516 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %515)  ; FMax(a,b)
  %517 = fmul fast float %516, %513
  %518 = fadd fast float %517, %498
  br label %525

; <label>:519                                     ; preds = %496
  %520 = fsub fast float %499, %509
  %521 = call float @dx.op.unary.f32(i32 6, float %520)  ; FAbs(value)
  %522 = fadd fast float %521, %497
  %523 = fmul fast float %521, %513
  %524 = fsub fast float %498, %523
  br label %525

; <label>:525                                     ; preds = %519, %514
  %526 = phi float [ %516, %514 ], [ %522, %519 ]
  %527 = phi float [ %518, %514 ], [ %524, %519 ]
  %528 = fcmp fast olt float %507, %356
  %529 = icmp slt i32 %504, 3
  %530 = and i1 %529, %528
  br i1 %530, label %496, label %531

; <label>:531                                     ; preds = %525
  br label %532

; <label>:532                                     ; preds = %531, %489
  %533 = phi float [ %354, %489 ], [ %526, %531 ]
  %534 = phi float [ %355, %489 ], [ %527, %531 ]
  %535 = fsub fast float %270, %533
  %536 = select i1 %272, float %533, float %535
  %537 = extractvalue %dx.types.CBufRet.f32 %210, 0
  %538 = extractvalue %dx.types.CBufRet.f32 %210, 1
  %539 = extractvalue %dx.types.CBufRet.f32 %210, 2
  %540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %541 = extractvalue %dx.types.CBufRet.f32 %540, 0
  %542 = extractvalue %dx.types.CBufRet.f32 %540, 1
  %543 = extractvalue %dx.types.CBufRet.f32 %540, 2
  %544 = extractvalue %dx.types.CBufRet.f32 %540, 3
  %545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %546 = extractvalue %dx.types.CBufRet.f32 %545, 3
  %547 = call float @dx.op.binary.f32(i32 36, float %534, float %546)  ; FMin(a,b)
  %548 = fmul fast float %544, %536
  %549 = call float @dx.op.unary.f32(i32 7, float %548)  ; Saturate(value)
  %550 = fsub fast float %541, %537
  %551 = fsub fast float %542, %538
  %552 = fsub fast float %543, %539
  %553 = fmul fast float %549, %550
  %554 = fmul fast float %549, %551
  %555 = fmul fast float %549, %552
  %556 = fadd fast float %553, %537
  %557 = fadd fast float %554, %538
  %558 = fadd fast float %555, %539
  br i1 %103, label %571, label %559, !dx.controlflow.hints !49

; <label>:559                                     ; preds = %532
  %560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %561 = extractvalue %dx.types.CBufRet.f32 %560, 0
  %562 = extractvalue %dx.types.CBufRet.f32 %560, 1
  %563 = fadd fast float %562, %561
  %564 = call float @dx.op.unary.f32(i32 7, float %563)  ; Saturate(value)
  %565 = extractvalue %dx.types.CBufRet.f32 %560, 2
  %566 = extractvalue %dx.types.CBufRet.f32 %560, 3
  %567 = fadd fast float %566, %565
  %568 = call float @dx.op.unary.f32(i32 7, float %567)  ; Saturate(value)
  %569 = fmul fast float %564, %547
  %570 = fmul fast float %569, %568
  br label %571

; <label>:571                                     ; preds = %559, %532, %477, %451, %318, %286, %268, %266
  %572 = phi float [ 0.000000e+00, %266 ], [ 0.000000e+00, %268 ], [ %295, %318 ], [ %295, %286 ], [ %454, %477 ], [ %454, %451 ], [ %536, %559 ], [ %536, %532 ]
  %573 = phi float [ 0.000000e+00, %266 ], [ 0.000000e+00, %268 ], [ %329, %318 ], [ %306, %286 ], [ %488, %477 ], [ %465, %451 ], [ %570, %559 ], [ %547, %532 ]
  %574 = phi float [ 0.000000e+00, %266 ], [ 0.000000e+00, %268 ], [ %315, %318 ], [ %315, %286 ], [ %474, %477 ], [ %474, %451 ], [ %556, %559 ], [ %556, %532 ]
  %575 = phi float [ 0.000000e+00, %266 ], [ 0.000000e+00, %268 ], [ %316, %318 ], [ %316, %286 ], [ %475, %477 ], [ %475, %451 ], [ %557, %559 ], [ %557, %532 ]
  %576 = phi float [ 0.000000e+00, %266 ], [ 0.000000e+00, %268 ], [ %317, %318 ], [ %317, %286 ], [ %476, %477 ], [ %476, %451 ], [ %558, %559 ], [ %558, %532 ]
  %577 = fmul fast float %206, %573
  %578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %579 = extractvalue %dx.types.CBufRet.f32 %578, 2
  %580 = fsub fast float %216, %579
  %581 = fcmp fast olt float %577, -2.000000e+01
  %582 = call float @dx.op.unary.f32(i32 21, float %577)  ; Exp(value)
  %583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %584 = extractvalue %dx.types.CBufRet.f32 %583, 2
  %585 = extractvalue %dx.types.CBufRet.f32 %583, 3
  %586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %587 = extractvalue %dx.types.CBufRet.f32 %586, 2
  %588 = fmul fast float %585, %580
  %589 = call float @dx.op.unary.f32(i32 7, float %588)  ; Saturate(value)
  %590 = fsub fast float 1.000000e+00, %589
  %591 = fmul fast float %182, 5.000000e-01
  %592 = fadd fast float %591, 5.000000e-01
  %593 = call float @dx.op.unary.f32(i32 7, float %592)  ; Saturate(value)
  %594 = fsub fast float 1.000000e+00, %593
  %595 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %590)  ; FMax(a,b)
  %596 = fdiv fast float %594, %595
  %597 = fsub fast float %580, %145
  %598 = call float @dx.op.unary.f32(i32 6, float %597)  ; FAbs(value)
  %599 = fmul fast float %598, %584
  %600 = call float @dx.op.unary.f32(i32 7, float %596)  ; Saturate(value)
  %601 = fsub fast float 1.000000e+00, %599
  %602 = fmul fast float %601, %600
  %603 = fadd fast float %602, %599
  %604 = fmul fast float %587, %580
  %605 = call float @dx.op.unary.f32(i32 7, float %604)  ; Saturate(value)
  %606 = fsub fast float 1.000000e+00, %603
  %607 = fmul fast float %606, %605
  %608 = fadd fast float %607, %603
  %609 = call float @dx.op.unary.f32(i32 7, float %608)  ; Saturate(value)
  %610 = fadd fast float %582, -1.000000e+00
  %611 = select i1 %581, float -1.000000e+00, float %610
  %612 = fmul fast float %609, %611
  %613 = fadd fast float %612, 1.000000e+00
  %614 = fsub fast float -0.000000e+00, %612
  %615 = fmul fast float %574, %614
  %616 = fmul fast float %575, %614
  %617 = fmul fast float %576, %614
  br label %618

; <label>:618                                     ; preds = %571, %196
  %619 = phi float [ %572, %571 ], [ 0.000000e+00, %196 ]
  %620 = phi float [ %613, %571 ], [ 1.000000e+00, %196 ]
  %621 = phi float [ %615, %571 ], [ 0.000000e+00, %196 ]
  %622 = phi float [ %616, %571 ], [ 0.000000e+00, %196 ]
  %623 = phi float [ %617, %571 ], [ 0.000000e+00, %196 ]
  %624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %625 = extractvalue %dx.types.CBufRet.f32 %624, 1
  %626 = fsub fast float 1.000000e+00, %620
  %627 = fmul fast float %626, %197
  %628 = fmul fast float %627, %625
  %629 = fsub fast float %197, %628
  br i1 %175, label %630, label %662, !dx.controlflow.hints !91

; <label>:630                                     ; preds = %618
  %631 = fmul fast float %200, %172
  %632 = fadd fast float %631, %173
  %633 = call float @dx.op.unary.f32(i32 7, float %632)  ; Saturate(value)
  %634 = fmul fast float %154, %629
  %635 = fsub fast float -0.000000e+00, %634
  %636 = fmul fast float %155, %629
  %637 = fsub fast float -0.000000e+00, %636
  %638 = call float @dx.op.unary.f32(i32 21, float %635)  ; Exp(value)
  %639 = call float @dx.op.unary.f32(i32 21, float %637)  ; Exp(value)
  %640 = call float @dx.op.binary.f32(i32 35, float %162, float %638)  ; FMax(a,b)
  %641 = call float @dx.op.binary.f32(i32 35, float %162, float %639)  ; FMax(a,b)
  %642 = fsub fast float %641, %640
  %643 = fmul fast float %642, %633
  %644 = fadd fast float %643, %640
  %645 = call float @dx.op.unary.f32(i32 7, float %644)  ; Saturate(value)
  %646 = fmul fast float %198, %176
  %647 = fsub fast float 1.000000e+00, %646
  %648 = select i1 %103, float %647, float %645
  %649 = fsub fast float %159, %164
  %650 = fsub fast float %160, %165
  %651 = fsub fast float %161, %166
  %652 = fmul fast float %633, %649
  %653 = fmul fast float %633, %650
  %654 = fmul fast float %633, %651
  %655 = fadd fast float %652, %164
  %656 = fadd fast float %653, %165
  %657 = fadd fast float %654, %166
  %658 = fsub fast float 1.000000e+00, %648
  %659 = fmul fast float %658, %655
  %660 = fmul fast float %658, %656
  %661 = fmul fast float %658, %657
  br label %733

; <label>:662                                     ; preds = %618
  %663 = fmul fast float %629, %171
  %664 = call float @dx.op.unary.f32(i32 7, float %663)  ; Saturate(value)
  %665 = fsub fast float 2.000000e+00, %664
  %666 = fmul fast float %664, 9.921875e-01
  %667 = fmul fast float %666, %665
  %668 = fadd fast float %667, 3.906250e-03
  %669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %23, float %668, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %670 = extractvalue %dx.types.ResRet.f32 %669, 0
  %671 = fsub fast float %664, %670
  %672 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %671)  ; FMax(a,b)
  %673 = fmul fast float %199, %157
  %674 = call float @dx.op.unary.f32(i32 6, float %673)  ; FAbs(value)
  %675 = fcmp fast ogt float %674, 0x3EB0C6F7A0000000
  br i1 %675, label %676, label %682, !dx.controlflow.hints !92

; <label>:676                                     ; preds = %662
  %677 = fmul fast float %673, 0xBFF7154760000000
  %678 = call float @dx.op.unary.f32(i32 21, float %677)  ; Exp(value)
  %679 = fsub fast float 1.000000e+00, %678
  %680 = fdiv fast float %679, %673
  %681 = fmul fast float %680, %167
  br label %682

; <label>:682                                     ; preds = %676, %662
  %683 = phi float [ %681, %676 ], [ %167, %662 ]
  %684 = fadd fast float %683, %169
  %685 = fmul fast float %684, %672
  %686 = fmul fast float %154, %685
  %687 = fsub fast float -0.000000e+00, %686
  %688 = fmul fast float %155, %685
  %689 = fsub fast float -0.000000e+00, %688
  %690 = fmul fast float %156, %685
  %691 = fsub fast float -0.000000e+00, %690
  %692 = call float @dx.op.unary.f32(i32 21, float %687)  ; Exp(value)
  %693 = call float @dx.op.unary.f32(i32 21, float %689)  ; Exp(value)
  %694 = call float @dx.op.unary.f32(i32 21, float %691)  ; Exp(value)
  br i1 %103, label %695, label %703, !dx.controlflow.hints !93

; <label>:695                                     ; preds = %682
  %696 = fmul fast float %692, %198
  %697 = fmul fast float %693, %198
  %698 = fmul fast float %694, %198
  %699 = fsub fast float 1.000000e+00, %198
  %700 = fadd fast float %696, %699
  %701 = fadd fast float %697, %699
  %702 = fadd fast float %698, %699
  br label %703

; <label>:703                                     ; preds = %695, %682
  %704 = phi float [ %700, %695 ], [ %692, %682 ]
  %705 = phi float [ %701, %695 ], [ %693, %682 ]
  %706 = phi float [ %702, %695 ], [ %694, %682 ]
  %707 = fmul fast float %200, %200
  %708 = fadd fast float %707, 1.000000e+00
  %709 = fmul fast float %708, 0x3FAE8EC8A0000000
  %710 = fmul fast float %709, %164
  %711 = fmul fast float %709, %165
  %712 = fmul fast float %709, %166
  %713 = fmul fast float %200, %162
  %714 = fsub fast float 1.000000e+00, %713
  %715 = fmul fast float %162, %162
  %716 = fsub fast float 1.000000e+00, %715
  %717 = fmul fast float %716, 0x3FB45F3060000000
  %718 = fmul fast float %714, %714
  %719 = fdiv fast float 1.000000e+00, %718
  %720 = fmul fast float %717, %719
  %721 = fmul fast float %720, %159
  %722 = fmul fast float %720, %160
  %723 = fmul fast float %720, %161
  %724 = fadd fast float %721, %710
  %725 = fadd fast float %722, %711
  %726 = fadd fast float %723, %712
  %727 = fsub fast float 1.000000e+00, %704
  %728 = fsub fast float 1.000000e+00, %705
  %729 = fsub fast float 1.000000e+00, %706
  %730 = fmul fast float %724, %727
  %731 = fmul fast float %725, %728
  %732 = fmul fast float %726, %729
  br label %733

; <label>:733                                     ; preds = %703, %630
  %734 = phi float [ %659, %630 ], [ %730, %703 ]
  %735 = phi float [ %660, %630 ], [ %731, %703 ]
  %736 = phi float [ %661, %630 ], [ %732, %703 ]
  %737 = phi float [ %648, %630 ], [ %704, %703 ]
  %738 = phi float [ %648, %630 ], [ %705, %703 ]
  %739 = phi float [ %648, %630 ], [ %706, %703 ]
  br i1 %208, label %740, label %938, !dx.controlflow.hints !94

; <label>:740                                     ; preds = %733
  %741 = extractvalue %dx.types.CBufRet.f32 %624, 0
  %742 = fmul fast float %741, %626
  %743 = fsub fast float %621, %734
  %744 = fsub fast float %622, %735
  %745 = fsub fast float %623, %736
  %746 = fmul fast float %742, %743
  %747 = fmul fast float %742, %744
  %748 = fmul fast float %742, %745
  %749 = fadd fast float %746, %734
  %750 = fadd fast float %747, %735
  %751 = fadd fast float %748, %736
  %752 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %737)  ; FMax(a,b)
  %753 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %738)  ; FMax(a,b)
  %754 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %739)  ; FMax(a,b)
  %755 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %620)  ; FMax(a,b)
  %756 = call float @dx.op.binary.f32(i32 35, float %619, float %629)  ; FMax(a,b)
  %757 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %756)  ; FMax(a,b)
  %758 = fdiv fast float %619, %757
  %759 = call float @dx.op.unary.f32(i32 7, float %758)  ; Saturate(value)
  %760 = fdiv fast float %629, %757
  %761 = call float @dx.op.unary.f32(i32 7, float %760)  ; Saturate(value)
  %762 = fcmp fast une float %755, 1.000000e+00
  br i1 %762, label %763, label %776, !dx.controlflow.hints !95

; <label>:763                                     ; preds = %740
  %764 = call float @dx.op.unary.f32(i32 23, float %755)  ; Log(value)
  %765 = fmul fast float %764, 0x3FE62E4300000000
  %766 = fmul fast float %621, %765
  %767 = fsub fast float -0.000000e+00, %766
  %768 = fmul fast float %622, %765
  %769 = fsub fast float -0.000000e+00, %768
  %770 = fmul fast float %623, %765
  %771 = fsub fast float -0.000000e+00, %770
  %772 = fsub fast float 1.000000e+00, %755
  %773 = fdiv fast float %767, %772
  %774 = fdiv fast float %769, %772
  %775 = fdiv fast float %771, %772
  br label %776

; <label>:776                                     ; preds = %763, %740
  %777 = phi float [ %773, %763 ], [ %621, %740 ]
  %778 = phi float [ %774, %763 ], [ %622, %740 ]
  %779 = phi float [ %775, %763 ], [ %623, %740 ]
  %780 = phi float [ %765, %763 ], [ 0.000000e+00, %740 ]
  %781 = fcmp fast une float %752, 1.000000e+00
  br i1 %781, label %782, label %789, !dx.controlflow.hints !96

; <label>:782                                     ; preds = %776
  %783 = call float @dx.op.unary.f32(i32 23, float %752)  ; Log(value)
  %784 = fmul fast float %783, 0x3FE62E4300000000
  %785 = fmul fast float %749, %784
  %786 = fsub fast float -0.000000e+00, %785
  %787 = fsub fast float 1.000000e+00, %752
  %788 = fdiv fast float %786, %787
  br label %789

; <label>:789                                     ; preds = %782, %776
  %790 = phi float [ %788, %782 ], [ %749, %776 ]
  %791 = phi float [ %784, %782 ], [ 0.000000e+00, %776 ]
  %792 = fcmp fast une float %753, 1.000000e+00
  br i1 %792, label %793, label %800, !dx.controlflow.hints !96

; <label>:793                                     ; preds = %789
  %794 = call float @dx.op.unary.f32(i32 23, float %753)  ; Log(value)
  %795 = fmul fast float %794, 0x3FE62E4300000000
  %796 = fmul fast float %750, %795
  %797 = fsub fast float -0.000000e+00, %796
  %798 = fsub fast float 1.000000e+00, %753
  %799 = fdiv fast float %797, %798
  br label %800

; <label>:800                                     ; preds = %793, %789
  %801 = phi float [ %799, %793 ], [ %750, %789 ]
  %802 = phi float [ %795, %793 ], [ 0.000000e+00, %789 ]
  %803 = fcmp fast une float %754, 1.000000e+00
  br i1 %803, label %804, label %811, !dx.controlflow.hints !96

; <label>:804                                     ; preds = %800
  %805 = call float @dx.op.unary.f32(i32 23, float %754)  ; Log(value)
  %806 = fmul fast float %805, 0x3FE62E4300000000
  %807 = fmul fast float %751, %806
  %808 = fsub fast float -0.000000e+00, %807
  %809 = fsub fast float 1.000000e+00, %754
  %810 = fdiv fast float %808, %809
  br label %811

; <label>:811                                     ; preds = %804, %800
  %812 = phi float [ %810, %804 ], [ %751, %800 ]
  %813 = phi float [ %806, %804 ], [ 0.000000e+00, %800 ]
  %814 = fmul fast float %777, %761
  %815 = fmul fast float %778, %761
  %816 = fmul fast float %779, %761
  %817 = fmul fast float %780, %761
  %818 = fmul fast float %790, %759
  %819 = fmul fast float %801, %759
  %820 = fmul fast float %812, %759
  %821 = fmul fast float %791, %759
  %822 = fmul fast float %802, %759
  %823 = fmul fast float %813, %759
  %824 = fadd fast float %818, %814
  %825 = fadd fast float %819, %815
  %826 = fadd fast float %820, %816
  %827 = fadd fast float %821, %817
  %828 = fadd fast float %822, %817
  %829 = fadd fast float %823, %817
  %830 = fcmp fast une float %827, 0.000000e+00
  br i1 %830, label %831, label %838, !dx.controlflow.hints !97

; <label>:831                                     ; preds = %811
  %832 = fmul fast float %827, 0x3FF7154760000000
  %833 = call float @dx.op.unary.f32(i32 21, float %832)  ; Exp(value)
  %834 = fsub fast float 1.000000e+00, %833
  %835 = fmul fast float %824, %834
  %836 = fsub fast float -0.000000e+00, %835
  %837 = fdiv fast float %836, %827
  br label %838

; <label>:838                                     ; preds = %831, %811
  %839 = phi float [ %833, %831 ], [ 1.000000e+00, %811 ]
  %840 = phi float [ %837, %831 ], [ %824, %811 ]
  %841 = fcmp fast une float %828, 0.000000e+00
  br i1 %841, label %842, label %849, !dx.controlflow.hints !97

; <label>:842                                     ; preds = %838
  %843 = fmul fast float %828, 0x3FF7154760000000
  %844 = call float @dx.op.unary.f32(i32 21, float %843)  ; Exp(value)
  %845 = fsub fast float 1.000000e+00, %844
  %846 = fmul fast float %825, %845
  %847 = fsub fast float -0.000000e+00, %846
  %848 = fdiv fast float %847, %828
  br label %849

; <label>:849                                     ; preds = %842, %838
  %850 = phi float [ %844, %842 ], [ 1.000000e+00, %838 ]
  %851 = phi float [ %848, %842 ], [ %825, %838 ]
  %852 = fcmp fast une float %829, 0.000000e+00
  br i1 %852, label %853, label %860, !dx.controlflow.hints !97

; <label>:853                                     ; preds = %849
  %854 = fmul fast float %829, 0x3FF7154760000000
  %855 = call float @dx.op.unary.f32(i32 21, float %854)  ; Exp(value)
  %856 = fsub fast float 1.000000e+00, %855
  %857 = fmul fast float %826, %856
  %858 = fsub fast float -0.000000e+00, %857
  %859 = fdiv fast float %858, %829
  br label %860

; <label>:860                                     ; preds = %853, %849
  %861 = phi float [ %855, %853 ], [ 1.000000e+00, %849 ]
  %862 = phi float [ %859, %853 ], [ %826, %849 ]
  %863 = fcmp fast ogt float %759, %761
  br i1 %863, label %864, label %884, !dx.controlflow.hints !98

; <label>:864                                     ; preds = %860
  %865 = fsub fast float 1.000000e+00, %761
  %866 = fmul fast float %777, %865
  %867 = fmul fast float %778, %865
  %868 = fmul fast float %779, %865
  %869 = fmul fast float %780, %865
  %870 = fcmp fast une float %869, 0.000000e+00
  br i1 %870, label %871, label %922, !dx.controlflow.hints !99

; <label>:871                                     ; preds = %864
  %872 = fmul fast float %869, 0x3FF7154760000000
  %873 = call float @dx.op.unary.f32(i32 21, float %872)  ; Exp(value)
  %874 = fsub fast float 1.000000e+00, %873
  %875 = fmul fast float %866, %874
  %876 = fsub fast float -0.000000e+00, %875
  %877 = fmul fast float %867, %874
  %878 = fsub fast float -0.000000e+00, %877
  %879 = fmul fast float %868, %874
  %880 = fsub fast float -0.000000e+00, %879
  %881 = fdiv fast float %876, %869
  %882 = fdiv fast float %878, %869
  %883 = fdiv fast float %880, %869
  br label %922

; <label>:884                                     ; preds = %860
  %885 = fsub fast float 1.000000e+00, %759
  %886 = fmul fast float %790, %885
  %887 = fmul fast float %801, %885
  %888 = fmul fast float %812, %885
  %889 = fmul fast float %791, %885
  %890 = fmul fast float %802, %885
  %891 = fmul fast float %813, %885
  %892 = fcmp fast une float %889, 0.000000e+00
  br i1 %892, label %893, label %900, !dx.controlflow.hints !97

; <label>:893                                     ; preds = %884
  %894 = fmul fast float %889, 0x3FF7154760000000
  %895 = call float @dx.op.unary.f32(i32 21, float %894)  ; Exp(value)
  %896 = fsub fast float 1.000000e+00, %895
  %897 = fmul fast float %886, %896
  %898 = fsub fast float -0.000000e+00, %897
  %899 = fdiv fast float %898, %889
  br label %900

; <label>:900                                     ; preds = %893, %884
  %901 = phi float [ %899, %893 ], [ %886, %884 ]
  %902 = phi float [ %895, %893 ], [ 1.000000e+00, %884 ]
  %903 = fcmp fast une float %890, 0.000000e+00
  br i1 %903, label %904, label %911, !dx.controlflow.hints !97

; <label>:904                                     ; preds = %900
  %905 = fmul fast float %890, 0x3FF7154760000000
  %906 = call float @dx.op.unary.f32(i32 21, float %905)  ; Exp(value)
  %907 = fsub fast float 1.000000e+00, %906
  %908 = fmul fast float %887, %907
  %909 = fsub fast float -0.000000e+00, %908
  %910 = fdiv fast float %909, %890
  br label %911

; <label>:911                                     ; preds = %904, %900
  %912 = phi float [ %910, %904 ], [ %887, %900 ]
  %913 = phi float [ %906, %904 ], [ 1.000000e+00, %900 ]
  %914 = fcmp fast une float %891, 0.000000e+00
  br i1 %914, label %915, label %922, !dx.controlflow.hints !97

; <label>:915                                     ; preds = %911
  %916 = fmul fast float %891, 0x3FF7154760000000
  %917 = call float @dx.op.unary.f32(i32 21, float %916)  ; Exp(value)
  %918 = fsub fast float 1.000000e+00, %917
  %919 = fmul fast float %888, %918
  %920 = fsub fast float -0.000000e+00, %919
  %921 = fdiv fast float %920, %891
  br label %922

; <label>:922                                     ; preds = %915, %911, %871, %864
  %923 = phi float [ %921, %915 ], [ %883, %871 ], [ %868, %864 ], [ %888, %911 ]
  %924 = phi float [ %912, %915 ], [ %882, %871 ], [ %867, %864 ], [ %912, %911 ]
  %925 = phi float [ %901, %915 ], [ %881, %871 ], [ %866, %864 ], [ %901, %911 ]
  %926 = phi float [ %917, %915 ], [ %873, %871 ], [ 1.000000e+00, %864 ], [ 1.000000e+00, %911 ]
  %927 = phi float [ %913, %915 ], [ %873, %871 ], [ 1.000000e+00, %864 ], [ %913, %911 ]
  %928 = phi float [ %902, %915 ], [ %873, %871 ], [ 1.000000e+00, %864 ], [ %902, %911 ]
  %929 = fmul fast float %928, %840
  %930 = fmul fast float %927, %851
  %931 = fmul fast float %926, %862
  %932 = fadd fast float %929, %925
  %933 = fadd fast float %930, %924
  %934 = fadd fast float %931, %923
  %935 = fmul fast float %928, %839
  %936 = fmul fast float %927, %850
  %937 = fmul fast float %926, %861
  br label %938

; <label>:938                                     ; preds = %922, %733
  %939 = phi float [ %937, %922 ], [ %739, %733 ]
  %940 = phi float [ %936, %922 ], [ %738, %733 ]
  %941 = phi float [ %935, %922 ], [ %737, %733 ]
  %942 = phi float [ %934, %922 ], [ %736, %733 ]
  %943 = phi float [ %933, %922 ], [ %735, %733 ]
  %944 = phi float [ %932, %922 ], [ %734, %733 ]
  %945 = fmul fast float %53, %104
  %946 = fmul fast float %54, %105
  %947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %23, float %945, float %946, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %948 = extractvalue %dx.types.ResRet.f32 %947, 0
  %949 = extractvalue %dx.types.ResRet.f32 %947, 1
  %950 = extractvalue %dx.types.ResRet.f32 %947, 2
  %951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %952 = extractvalue %dx.types.CBufRet.f32 %951, 1
  %953 = fmul fast float %952, %948
  %954 = fmul fast float %952, %949
  %955 = fmul fast float %952, %950
  %956 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %23, float %945, float %946, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %957 = extractvalue %dx.types.ResRet.f32 %956, 0
  %958 = fmul fast float %957, %941
  %959 = fmul fast float %957, %940
  %960 = fmul fast float %957, %939
  %961 = fmul fast float %957, %944
  %962 = fmul fast float %957, %943
  %963 = fmul fast float %957, %942
  %964 = fadd fast float %961, %953
  %965 = fadd fast float %962, %954
  %966 = fadd fast float %963, %955
  br label %967

; <label>:967                                     ; preds = %938, %0
  %968 = phi float [ %964, %938 ], [ 0.000000e+00, %0 ]
  %969 = phi float [ %965, %938 ], [ 0.000000e+00, %0 ]
  %970 = phi float [ %966, %938 ], [ 0.000000e+00, %0 ]
  %971 = phi float [ %958, %938 ], [ 1.000000e+00, %0 ]
  %972 = phi float [ %959, %938 ], [ 1.000000e+00, %0 ]
  %973 = phi float [ %960, %938 ], [ 1.000000e+00, %0 ]
  %974 = phi float [ %109, %938 ], [ %70, %0 ]
  %975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %976 = extractvalue %dx.types.CBufRet.f32 %975, 2
  %977 = extractvalue %dx.types.CBufRet.f32 %975, 3
  %978 = fmul fast float %976, %104
  %979 = fmul fast float %977, %105
  %980 = call float @dx.op.unary.f32(i32 7, float %978)  ; Saturate(value)
  %981 = call float @dx.op.unary.f32(i32 7, float %979)  ; Saturate(value)
  %982 = select i1 %101, i32 2, i32 0
  %983 = or i32 %982, 1
  %984 = uitofp i32 %983 to float
  %985 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %23, float %980, float %981, float %984, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %986 = extractvalue %dx.types.ResRet.f32 %985, 0
  %987 = extractvalue %dx.types.ResRet.f32 %985, 1
  %988 = extractvalue %dx.types.ResRet.f32 %985, 2
  %989 = extractvalue %dx.types.ResRet.f32 %985, 3
  %990 = add nuw nsw i32 %982, 2
  %991 = uitofp i32 %990 to float
  %992 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %23, float %980, float %981, float %991, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %993 = extractvalue %dx.types.ResRet.f32 %992, 0
  %994 = extractvalue %dx.types.ResRet.f32 %992, 1
  %995 = extractvalue %dx.types.ResRet.f32 %992, 2
  %996 = extractvalue %dx.types.ResRet.f32 %992, 3
  %997 = call float @dx.op.binary.f32(i32 35, float %987, float %988)  ; FMax(a,b)
  %998 = call float @dx.op.binary.f32(i32 35, float %986, float %997)  ; FMax(a,b)
  %999 = call float @dx.op.binary.f32(i32 35, float %998, float %989)  ; FMax(a,b)
  %1000 = call float @dx.op.binary.f32(i32 36, float %994, float %995)  ; FMin(a,b)
  %1001 = call float @dx.op.binary.f32(i32 36, float %993, float %1000)  ; FMin(a,b)
  %1002 = call float @dx.op.binary.f32(i32 36, float %1001, float %996)  ; FMin(a,b)
  %1003 = fmul fast float %999, 2.550000e+02
  %1004 = fadd fast float %1003, 0x3F70101020000000
  %1005 = fptoui float %1004 to i32
  %1006 = fmul fast float %1002, 2.550000e+02
  %1007 = fadd fast float %1006, 0x3F70101020000000
  %1008 = fptoui float %1007 to i32
  %1009 = icmp ult i32 %1005, %1008
  br i1 %1009, label %1010, label %1178, !dx.controlflow.hints !100

; <label>:1010                                    ; preds = %967
  %1011 = fadd fast float %974, -4.000000e+00
  %1012 = call float @dx.op.binary.f32(i32 35, float %1011, float 0.000000e+00)  ; FMax(a,b)
  %1013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1014 = extractvalue %dx.types.CBufRet.f32 %1013, 0
  %1015 = fadd fast float %1014, %1012
  %1016 = extractvalue %dx.types.CBufRet.f32 %1013, 2
  %1017 = fmul fast float %1015, %1016
  %1018 = call float @dx.op.unary.f32(i32 23, float %1017)  ; Log(value)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1013, 3
  %1020 = fmul fast float %1019, %1018
  %1021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1022 = extractvalue %dx.types.CBufRet.f32 %1021, 2
  %1023 = fmul fast float %1020, %1022
  %1024 = call float @dx.op.unary.f32(i32 7, float %1023)  ; Saturate(value)
  %1025 = select i1 %103, float 1.000000e+00, float %1024
  %1026 = uitofp i32 %1005 to float
  %1027 = uitofp i32 %1008 to float
  %1028 = fadd fast float %1026, 5.000000e-01
  %1029 = fadd fast float %1027, 5.000000e-01
  %1030 = fmul fast float %1022, %1028
  %1031 = fmul fast float %1022, %1029
  %1032 = fadd fast float %1030, 0x3F0FFB4800000000
  %1033 = fadd fast float %1031, 0xBF0FFB4800000000
  %1034 = call float @dx.op.binary.f32(i32 35, float %1025, float %1032)  ; FMax(a,b)
  %1035 = call float @dx.op.binary.f32(i32 36, float %1034, float %1033)  ; FMin(a,b)
  %1036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1037 = extractvalue %dx.types.CBufRet.f32 %1036, 1
  %1038 = extractvalue %dx.types.CBufRet.f32 %1036, 2
  %1039 = extractvalue %dx.types.CBufRet.f32 %1036, 0
  %1040 = select i1 %101, float %1039, float 0.000000e+00
  %1041 = fmul fast float %1037, %1035
  %1042 = fadd fast float %1040, %1041
  %1043 = fadd fast float %1040, %1038
  %1044 = fsub fast float %1037, %1038
  %1045 = fadd fast float %1044, %1040
  %1046 = call float @dx.op.binary.f32(i32 35, float %1042, float %1043)  ; FMax(a,b)
  %1047 = call float @dx.op.binary.f32(i32 36, float %1046, float %1045)  ; FMin(a,b)
  %1048 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %22, float %980, float %981, float %1047, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1049 = extractvalue %dx.types.ResRet.f32 %1048, 0
  %1050 = extractvalue %dx.types.ResRet.f32 %1048, 1
  %1051 = extractvalue %dx.types.ResRet.f32 %1048, 2
  %1052 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %1053 = extractvalue %dx.types.CBufRet.i32 %1052, 0
  %1054 = extractvalue %dx.types.CBufRet.i32 %1052, 1
  %1055 = uitofp i32 %1053 to float
  %1056 = uitofp i32 %1054 to float
  %1057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %1058 = extractvalue %dx.types.CBufRet.f32 %1057, 0
  %1059 = extractvalue %dx.types.CBufRet.f32 %1057, 1
  %1060 = fmul fast float %1055, %980
  %1061 = fmul fast float %1056, %981
  %1062 = fadd fast float %1060, -5.000000e-01
  %1063 = fadd fast float %1061, -5.000000e-01
  %1064 = call float @dx.op.unary.f32(i32 22, float %1062)  ; Frc(value)
  %1065 = call float @dx.op.unary.f32(i32 22, float %1063)  ; Frc(value)
  %1066 = fmul fast float %1064, %1064
  %1067 = fmul fast float %1066, %1064
  %1068 = fsub fast float 3.000000e+00, %1064
  %1069 = fmul fast float %1066, %1068
  %1070 = fmul fast float %1064, 3.000000e+00
  %1071 = fmul fast float %1067, 3.000000e+00
  %1072 = fmul fast float %1066, 6.000000e+00
  %1073 = fsub fast float %1071, %1072
  %1074 = fadd fast float %1073, 4.000000e+00
  %1075 = fmul fast float %1074, 0x3FC5555560000000
  %1076 = fmul fast float %1067, -3.000000e+00
  %1077 = fadd fast float %1066, %1064
  %1078 = fmul fast float %1077, 3.000000e+00
  %1079 = fadd fast float %1076, 1.000000e+00
  %1080 = fadd fast float %1079, %1078
  %1081 = fmul fast float %1067, 0x3FC5555560000000
  %1082 = fmul fast float %1065, %1065
  %1083 = fmul fast float %1082, %1065
  %1084 = fsub fast float 3.000000e+00, %1065
  %1085 = fmul fast float %1082, %1084
  %1086 = fmul fast float %1065, 3.000000e+00
  %1087 = fmul fast float %1083, 3.000000e+00
  %1088 = fmul fast float %1082, 6.000000e+00
  %1089 = fsub fast float %1087, %1088
  %1090 = fadd fast float %1089, 4.000000e+00
  %1091 = fmul fast float %1090, 0x3FC5555560000000
  %1092 = fmul fast float %1083, -3.000000e+00
  %1093 = fadd fast float %1082, %1065
  %1094 = fmul fast float %1093, 3.000000e+00
  %1095 = fadd fast float %1092, 1.000000e+00
  %1096 = fadd fast float %1095, %1094
  %1097 = fmul fast float %1083, 0x3FC5555560000000
  %1098 = fadd fast float %1064, 1.000000e+00
  %1099 = fsub fast float 1.000000e+00, %1070
  %1100 = fadd fast float %1099, %1069
  %1101 = fadd fast float %1100, %1074
  %1102 = fmul fast float %1101, 0x3FC5555560000000
  %1103 = fdiv fast float %1075, %1102
  %1104 = fsub fast float %1098, %1103
  %1105 = fsub fast float 1.000000e+00, %1064
  %1106 = fadd fast float %1080, %1067
  %1107 = fmul fast float %1106, 0x3FC5555560000000
  %1108 = fdiv fast float %1081, %1107
  %1109 = fadd fast float %1105, %1108
  %1110 = fadd fast float %1065, 1.000000e+00
  %1111 = fsub fast float 1.000000e+00, %1086
  %1112 = fadd fast float %1111, %1085
  %1113 = fadd fast float %1112, %1090
  %1114 = fmul fast float %1113, 0x3FC5555560000000
  %1115 = fdiv fast float %1091, %1114
  %1116 = fsub fast float %1110, %1115
  %1117 = fsub fast float 1.000000e+00, %1065
  %1118 = fadd fast float %1096, %1083
  %1119 = fmul fast float %1118, 0x3FC5555560000000
  %1120 = fdiv fast float %1097, %1119
  %1121 = fadd fast float %1120, %1117
  %1122 = fmul fast float %1104, %1058
  %1123 = fsub fast float %980, %1122
  %1124 = fmul fast float %1109, %1058
  %1125 = fadd fast float %1124, %980
  %1126 = fmul fast float %1121, %1059
  %1127 = fadd fast float %1126, %981
  %1128 = fmul fast float %1116, %1059
  %1129 = fsub fast float %981, %1128
  %1130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %1123, float %1129, float %1047, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1131 = extractvalue %dx.types.ResRet.f32 %1130, 0
  %1132 = extractvalue %dx.types.ResRet.f32 %1130, 1
  %1133 = extractvalue %dx.types.ResRet.f32 %1130, 2
  %1134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %1125, float %1129, float %1047, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1135 = extractvalue %dx.types.ResRet.f32 %1134, 0
  %1136 = extractvalue %dx.types.ResRet.f32 %1134, 1
  %1137 = extractvalue %dx.types.ResRet.f32 %1134, 2
  %1138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %1123, float %1127, float %1047, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1139 = extractvalue %dx.types.ResRet.f32 %1138, 0
  %1140 = extractvalue %dx.types.ResRet.f32 %1138, 1
  %1141 = extractvalue %dx.types.ResRet.f32 %1138, 2
  %1142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %1125, float %1127, float %1047, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1143 = extractvalue %dx.types.ResRet.f32 %1142, 0
  %1144 = extractvalue %dx.types.ResRet.f32 %1142, 1
  %1145 = extractvalue %dx.types.ResRet.f32 %1142, 2
  %1146 = fsub fast float %1139, %1131
  %1147 = fsub fast float %1140, %1132
  %1148 = fsub fast float %1141, %1133
  %1149 = fmul fast float %1146, %1119
  %1150 = fmul fast float %1147, %1119
  %1151 = fmul fast float %1148, %1119
  %1152 = fadd fast float %1149, %1131
  %1153 = fadd fast float %1150, %1132
  %1154 = fadd fast float %1151, %1133
  %1155 = fsub fast float %1143, %1135
  %1156 = fsub fast float %1144, %1136
  %1157 = fsub fast float %1145, %1137
  %1158 = fmul fast float %1155, %1119
  %1159 = fmul fast float %1156, %1119
  %1160 = fmul fast float %1157, %1119
  %1161 = fsub fast float %1135, %1152
  %1162 = fadd fast float %1161, %1158
  %1163 = fsub fast float %1136, %1153
  %1164 = fadd fast float %1163, %1159
  %1165 = fsub fast float %1137, %1154
  %1166 = fadd fast float %1165, %1160
  %1167 = fmul fast float %1162, %1107
  %1168 = fmul fast float %1164, %1107
  %1169 = fmul fast float %1166, %1107
  %1170 = fadd fast float %1167, %1152
  %1171 = fadd fast float %1168, %1153
  %1172 = fadd fast float %1169, %1154
  %1173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1174 = extractvalue %dx.types.CBufRet.f32 %1173, 1
  %1175 = fmul fast float %1170, %1174
  %1176 = fmul fast float %1171, %1174
  %1177 = fmul fast float %1172, %1174
  br label %1178

; <label>:1178                                    ; preds = %1010, %967
  %1179 = phi float [ %1049, %1010 ], [ 1.000000e+00, %967 ]
  %1180 = phi float [ %1050, %1010 ], [ 1.000000e+00, %967 ]
  %1181 = phi float [ %1051, %1010 ], [ 1.000000e+00, %967 ]
  %1182 = phi float [ %1175, %1010 ], [ 0.000000e+00, %967 ]
  %1183 = phi float [ %1176, %1010 ], [ 0.000000e+00, %967 ]
  %1184 = phi float [ %1177, %1010 ], [ 0.000000e+00, %967 ]
  %1185 = fmul fast float %1179, %971
  %1186 = fmul fast float %1180, %972
  %1187 = fmul fast float %1181, %973
  %1188 = fmul fast float %1179, %968
  %1189 = fmul fast float %1180, %969
  %1190 = fmul fast float %1181, %970
  %1191 = fadd fast float %1182, %1188
  %1192 = fadd fast float %1183, %1189
  %1193 = fadd fast float %1184, %1190
  %1194 = fmul fast float %53, %104
  %1195 = fmul fast float %54, %105
  %1196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1197 = extractvalue %dx.types.CBufRet.f32 %1196, 2
  %1198 = fmul fast float %1197, 0x3FE3C6EF40000000
  %1199 = frem fast float %50, 2.560000e+02
  %1200 = frem fast float %51, 2.560000e+02
  %1201 = fptoui float %1199 to i32
  %1202 = fptoui float %1200 to i32
  %1203 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1201, i32 %1202, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1204 = extractvalue %dx.types.ResRet.f32 %1203, 0
  %1205 = fadd fast float %1204, %1198
  %1206 = call float @dx.op.unary.f32(i32 22, float %1205)  ; Frc(value)
  %1207 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 undef, i32 %48, i32 %49, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1208 = extractvalue %dx.types.ResRet.f32 %1207, 0
  %1209 = extractvalue %dx.types.ResRet.f32 %1207, 1
  %1210 = extractvalue %dx.types.ResRet.f32 %1207, 2
  %1211 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %48, i32 %49, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1212 = extractvalue %dx.types.ResRet.f32 %1211, 0
  %1213 = extractvalue %dx.types.ResRet.f32 %1211, 1
  %1214 = extractvalue %dx.types.ResRet.f32 %1211, 2
  %1215 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %48, i32 %49, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1216 = extractvalue %dx.types.ResRet.f32 %1215, 0
  %1217 = extractvalue %dx.types.ResRet.f32 %1215, 1
  %1218 = extractvalue %dx.types.ResRet.f32 %1215, 2
  %1219 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %48, i32 %49, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1220 = extractvalue %dx.types.ResRet.f32 %1219, 0
  %1221 = extractvalue %dx.types.ResRet.f32 %1219, 1
  %1222 = call float @dx.op.binary.f32(i32 35, float %1220, float %1221)  ; FMax(a,b)
  %1223 = fcmp fast ult float %1222, 0x3F70101020000000
  br i1 %1223, label %1455, label %1224, !dx.controlflow.hints !101

; <label>:1224                                    ; preds = %1178
  %1225 = fmul fast float %1221, 2.000000e+00
  %1226 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1225)  ; FMax(a,b)
  %1227 = fmul fast float %1220, 2.000000e+00
  %1228 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1227)  ; FMax(a,b)
  %1229 = extractvalue %dx.types.ResRet.f32 %1215, 3
  %1230 = fmul fast float %1229, 2.000000e+00
  %1231 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1230)  ; FMax(a,b)
  %1232 = fmul fast float %1218, %1218
  %1233 = fmul fast float %1217, %1217
  %1234 = fmul fast float %1216, %1216
  %1235 = fadd fast float %1234, 0xBFD51EB860000000
  %1236 = fadd fast float %1233, 0xBFD51EB860000000
  %1237 = fadd fast float %1232, 0xBFD51EB860000000
  %1238 = fmul fast float %1235, %1235
  %1239 = fmul fast float %1236, %1236
  %1240 = fmul fast float %1237, %1237
  %1241 = fmul fast float %1238, %1238
  %1242 = fmul fast float %1241, 1.000000e+02
  %1243 = fmul fast float %1239, %1239
  %1244 = fmul fast float %1243, 1.000000e+02
  %1245 = fmul fast float %1240, %1240
  %1246 = fmul fast float %1245, 1.000000e+02
  %1247 = fadd fast float %1242, 3.500000e+00
  %1248 = fadd fast float %1244, 3.500000e+00
  %1249 = fadd fast float %1246, 3.500000e+00
  %1250 = fdiv fast float %1247, %1231
  %1251 = fdiv fast float %1248, %1228
  %1252 = fdiv fast float %1249, %1226
  %1253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1254 = extractvalue %dx.types.CBufRet.f32 %1253, 0
  %1255 = extractvalue %dx.types.CBufRet.f32 %1253, 1
  %1256 = fmul fast float %1254, %70
  %1257 = fmul fast float %1255, %70
  %1258 = fdiv fast float 1.000000e+00, %1256
  %1259 = fdiv fast float 1.000000e+00, %1257
  %1260 = fmul fast float %53, 5.000000e-01
  %1261 = fmul fast float %1260, %1256
  %1262 = fmul fast float %1250, 0xBFF7154760000000
  %1263 = fmul fast float %1262, %1261
  %1264 = call float @dx.op.unary.f32(i32 21, float %1263)  ; Exp(value)
  %1265 = fmul fast float %1264, 2.500000e-01
  %1266 = fsub fast float 1.000000e+00, %1265
  %1267 = fmul fast float %1250, 0xBFDEC709E0000000
  %1268 = fmul fast float %1267, %1261
  %1269 = call float @dx.op.unary.f32(i32 21, float %1268)  ; Exp(value)
  %1270 = fmul fast float %1269, 7.500000e-01
  %1271 = fsub fast float %1266, %1270
  %1272 = fmul fast float %1251, 0xBFF7154760000000
  %1273 = fmul fast float %1272, %1261
  %1274 = call float @dx.op.unary.f32(i32 21, float %1273)  ; Exp(value)
  %1275 = fmul fast float %1274, 2.500000e-01
  %1276 = fsub fast float 1.000000e+00, %1275
  %1277 = fmul fast float %1251, 0xBFDEC709E0000000
  %1278 = fmul fast float %1277, %1261
  %1279 = call float @dx.op.unary.f32(i32 21, float %1278)  ; Exp(value)
  %1280 = fmul fast float %1279, 7.500000e-01
  %1281 = fsub fast float %1276, %1280
  %1282 = fmul fast float %1252, 0xBFF7154760000000
  %1283 = fmul fast float %1282, %1261
  %1284 = call float @dx.op.unary.f32(i32 21, float %1283)  ; Exp(value)
  %1285 = fmul fast float %1284, 2.500000e-01
  %1286 = fsub fast float 1.000000e+00, %1285
  %1287 = fmul fast float %1252, 0xBFDEC709E0000000
  %1288 = fmul fast float %1287, %1261
  %1289 = call float @dx.op.unary.f32(i32 21, float %1288)  ; Exp(value)
  %1290 = fmul fast float %1289, 7.500000e-01
  %1291 = fsub fast float %1286, %1290
  %1292 = fmul fast float %1212, 0x3F1A36E2E0000000
  %1293 = fmul fast float %1213, 0x3F1A36E2E0000000
  %1294 = fmul fast float %1214, 0x3F1A36E2E0000000
  %1295 = call float @dx.op.binary.f32(i32 36, float %1251, float %1252)  ; FMin(a,b)
  %1296 = call float @dx.op.binary.f32(i32 36, float %1250, float %1295)  ; FMin(a,b)
  %1297 = call float @dx.op.binary.f32(i32 36, float %1281, float %1291)  ; FMin(a,b)
  %1298 = call float @dx.op.binary.f32(i32 36, float %1271, float %1297)  ; FMin(a,b)
  %1299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1300 = extractvalue %dx.types.CBufRet.f32 %1299, 2
  %1301 = fmul fast float %1300, %1256
  %1302 = fmul fast float %1296, 0xBFF7154760000000
  %1303 = fmul fast float %1302, %1301
  %1304 = call float @dx.op.unary.f32(i32 21, float %1303)  ; Exp(value)
  %1305 = fmul fast float %1304, 2.500000e-01
  %1306 = fsub fast float 1.000000e+00, %1305
  %1307 = fmul fast float %1296, 0xBFDEC709E0000000
  %1308 = fmul fast float %1307, %1301
  %1309 = call float @dx.op.unary.f32(i32 21, float %1308)  ; Exp(value)
  %1310 = fmul fast float %1309, 7.500000e-01
  %1311 = fsub fast float %1306, %1310
  %1312 = extractvalue %dx.types.CBufRet.f32 %1299, 3
  %1313 = call float @dx.op.binary.f32(i32 36, float %1312, float %1311)  ; FMin(a,b)
  %1314 = fsub fast float %1313, %1298
  %1315 = call float @dx.op.unary.f32(i32 7, float %1314)  ; Saturate(value)
  %1316 = call float @dx.op.unary.f32(i32 7, float %1298)  ; Saturate(value)
  %1317 = extractvalue %dx.types.CBufRet.f32 %1299, 0
  %1318 = fmul fast float %1317, %1315
  %1319 = fptoui float %1318 to i32
  %1320 = uitofp i32 %1319 to float
  %1321 = fdiv fast float 1.000000e+00, %1320
  %1322 = icmp eq i32 %1319, 0
  br i1 %1322, label %1433, label %1323

; <label>:1323                                    ; preds = %1224
  %1324 = fmul fast float %1252, 0x3FA45F3060000000
  %1325 = fmul fast float %1296, 0x3FA45F3060000000
  br label %1326

; <label>:1326                                    ; preds = %1326, %1323
  %1327 = phi float [ %1424, %1326 ], [ %1292, %1323 ]
  %1328 = phi float [ %1425, %1326 ], [ %1293, %1323 ]
  %1329 = phi float [ %1426, %1326 ], [ %1294, %1323 ]
  %1330 = phi float [ %1427, %1326 ], [ 0x3F1A36E2E0000000, %1323 ]
  %1331 = phi float [ %1428, %1326 ], [ 0x3F1A36E2E0000000, %1323 ]
  %1332 = phi float [ %1429, %1326 ], [ 0x3F1A36E2E0000000, %1323 ]
  %1333 = phi i32 [ %1430, %1326 ], [ 0, %1323 ]
  %1334 = sitofp i32 %1333 to float
  %1335 = fadd fast float %1334, %1206
  %1336 = fmul fast float %1321, %1315
  %1337 = fmul fast float %1336, %1335
  %1338 = fsub fast float 1.000000e+00, %1316
  %1339 = fsub fast float %1338, %1337
  %1340 = fmul fast float %1339, 4.000000e+00
  %1341 = fmul fast float %1339, 2.000000e+00
  %1342 = fmul fast float %1339, %1339
  %1343 = fmul fast float %1342, 4.000000e+00
  %1344 = fadd fast float %1343, 1.000000e+00
  %1345 = call float @dx.op.unary.f32(i32 24, float %1344)  ; Sqrt(value)
  %1346 = fadd fast float %1341, %1345
  %1347 = fmul fast float %1340, %1346
  %1348 = fadd fast float %1347, 1.000000e+00
  %1349 = call float @dx.op.unary.f32(i32 23, float %1348)  ; Log(value)
  %1350 = fmul fast float %1349, 0xBFD5555560000000
  %1351 = call float @dx.op.unary.f32(i32 21, float %1350)  ; Exp(value)
  %1352 = fmul fast float %1351, %1351
  %1353 = fmul fast float %1352, %1348
  %1354 = fadd fast float %1351, 1.000000e+00
  %1355 = fadd fast float %1354, %1353
  %1356 = fdiv fast float 2.500000e-01, %1339
  %1357 = fmul fast float %1355, %1356
  %1358 = call float @dx.op.unary.f32(i32 23, float %1357)  ; Log(value)
  %1359 = fmul fast float %1358, 0x4000A2B240000000
  %1360 = fdiv fast float %1359, %1296
  %1361 = fmul fast float %1302, %1360
  %1362 = call float @dx.op.unary.f32(i32 21, float %1361)  ; Exp(value)
  %1363 = fmul fast float %1307, %1360
  %1364 = call float @dx.op.unary.f32(i32 21, float %1363)  ; Exp(value)
  %1365 = fadd fast float %1364, %1362
  %1366 = fmul fast float %1325, %1365
  %1367 = fdiv fast float %1315, %1366
  %1368 = fmul fast float %1334, 0x3FF9E377A0000000
  %1369 = call float @dx.op.unary.f32(i32 22, float %1368)  ; Frc(value)
  %1370 = fadd fast float %1369, %1206
  %1371 = fmul fast float %1370, 0x401921FB60000000
  %1372 = call float @dx.op.unary.f32(i32 13, float %1371)  ; Sin(value)
  %1373 = call float @dx.op.unary.f32(i32 12, float %1371)  ; Cos(value)
  %1374 = fmul fast float %1360, %1258
  %1375 = fmul fast float %1374, %1373
  %1376 = fmul fast float %1360, %1259
  %1377 = fmul fast float %1376, %1372
  %1378 = fadd fast float %1375, %1194
  %1379 = fadd fast float %1377, %1195
  %1380 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %23, float %1378, float %1379, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1381 = extractvalue %dx.types.ResRet.f32 %1380, 0
  %1382 = extractvalue %dx.types.ResRet.f32 %1380, 1
  %1383 = extractvalue %dx.types.ResRet.f32 %1380, 2
  %1384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %23, float %1378, float %1379, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1385 = extractvalue %dx.types.ResRet.f32 %1384, 0
  %1386 = fcmp fast ogt float %1385, -1.000000e+00
  %1387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1388 = extractvalue %dx.types.CBufRet.f32 %1387, 1
  %1389 = select i1 %1386, float %1388, float 1.000000e+00
  %1390 = fadd fast float %1385, 1.000000e+00
  %1391 = fmul fast float %1389, %1390
  %1392 = call float @dx.op.unary.f32(i32 6, float %1391)  ; FAbs(value)
  %1393 = fsub fast float %70, %1392
  %1394 = fmul fast float %1360, %1360
  %1395 = fmul fast float %1393, %1393
  %1396 = fadd fast float %1395, %1394
  %1397 = call float @dx.op.unary.f32(i32 24, float %1396)  ; Sqrt(value)
  %1398 = fmul fast float %1262, %1397
  %1399 = call float @dx.op.unary.f32(i32 21, float %1398)  ; Exp(value)
  %1400 = fmul fast float %1267, %1397
  %1401 = call float @dx.op.unary.f32(i32 21, float %1400)  ; Exp(value)
  %1402 = fadd fast float %1401, %1399
  %1403 = fmul fast float %1272, %1397
  %1404 = call float @dx.op.unary.f32(i32 21, float %1403)  ; Exp(value)
  %1405 = fmul fast float %1277, %1397
  %1406 = call float @dx.op.unary.f32(i32 21, float %1405)  ; Exp(value)
  %1407 = fadd fast float %1406, %1404
  %1408 = fmul fast float %1282, %1397
  %1409 = call float @dx.op.unary.f32(i32 21, float %1408)  ; Exp(value)
  %1410 = fmul fast float %1287, %1397
  %1411 = call float @dx.op.unary.f32(i32 21, float %1410)  ; Exp(value)
  %1412 = fadd fast float %1411, %1409
  %1413 = fmul fast float %1250, 0x3FA45F3060000000
  %1414 = fmul fast float %1413, %1367
  %1415 = fmul fast float %1414, %1402
  %1416 = fmul fast float %1251, 0x3FA45F3060000000
  %1417 = fmul fast float %1416, %1367
  %1418 = fmul fast float %1417, %1407
  %1419 = fmul fast float %1324, %1367
  %1420 = fmul fast float %1419, %1412
  %1421 = fmul fast float %1415, %1381
  %1422 = fmul fast float %1418, %1382
  %1423 = fmul fast float %1420, %1383
  %1424 = fadd fast float %1421, %1327
  %1425 = fadd fast float %1422, %1328
  %1426 = fadd fast float %1423, %1329
  %1427 = fadd fast float %1415, %1330
  %1428 = fadd fast float %1418, %1331
  %1429 = fadd fast float %1420, %1332
  %1430 = add nuw nsw i32 %1333, 1
  %1431 = icmp eq i32 %1430, %1319
  br i1 %1431, label %1432, label %1326, !llvm.loop !102

; <label>:1432                                    ; preds = %1326
  br label %1433

; <label>:1433                                    ; preds = %1432, %1224
  %1434 = phi float [ %1292, %1224 ], [ %1424, %1432 ]
  %1435 = phi float [ %1293, %1224 ], [ %1425, %1432 ]
  %1436 = phi float [ %1294, %1224 ], [ %1426, %1432 ]
  %1437 = phi float [ 0x3F1A36E2E0000000, %1224 ], [ %1427, %1432 ]
  %1438 = phi float [ 0x3F1A36E2E0000000, %1224 ], [ %1428, %1432 ]
  %1439 = phi float [ 0x3F1A36E2E0000000, %1224 ], [ %1429, %1432 ]
  %1440 = fmul fast float %1271, %1212
  %1441 = fmul fast float %1281, %1213
  %1442 = fmul fast float %1291, %1214
  %1443 = fsub fast float 1.000000e+00, %1271
  %1444 = fsub fast float 1.000000e+00, %1281
  %1445 = fsub fast float 1.000000e+00, %1291
  %1446 = fdiv fast float %1434, %1437
  %1447 = fdiv fast float %1435, %1438
  %1448 = fdiv fast float %1436, %1439
  %1449 = fmul fast float %1446, %1443
  %1450 = fmul fast float %1447, %1444
  %1451 = fmul fast float %1448, %1445
  %1452 = fadd fast float %1449, %1440
  %1453 = fadd fast float %1450, %1441
  %1454 = fadd fast float %1451, %1442
  br label %1455

; <label>:1455                                    ; preds = %1433, %1178
  %1456 = phi float [ %1452, %1433 ], [ 0.000000e+00, %1178 ]
  %1457 = phi float [ %1453, %1433 ], [ 0.000000e+00, %1178 ]
  %1458 = phi float [ %1454, %1433 ], [ 0.000000e+00, %1178 ]
  %1459 = phi float [ %1216, %1433 ], [ 0.000000e+00, %1178 ]
  %1460 = phi float [ %1217, %1433 ], [ 0.000000e+00, %1178 ]
  %1461 = phi float [ %1218, %1433 ], [ 0.000000e+00, %1178 ]
  %1462 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1463 = extractvalue %dx.types.CBufRet.i32 %1462, 3
  %1464 = and i32 %1463, 3
  %1465 = icmp ne i32 %1464, 0
  %1466 = and i32 %1463, 4
  %1467 = icmp ne i32 %1466, 0
  %1468 = and i1 %1465, %1467
  br i1 %1468, label %1469, label %1476, !dx.controlflow.hints !104

; <label>:1469                                    ; preds = %1455
  %1470 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %23, float %1194, float %1195, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1471 = extractvalue %dx.types.ResRet.f32 %1470, 0
  %1472 = fsub fast float 1.000000e+00, %1471
  %1473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1474 = extractvalue %dx.types.CBufRet.f32 %1473, 0
  %1475 = fcmp fast olt float %1472, %1474
  br label %1479

; <label>:1476                                    ; preds = %1455
  %1477 = icmp eq i32 %1466, 0
  %1478 = and i1 %1465, %1477
  br label %1479

; <label>:1479                                    ; preds = %1476, %1469
  %1480 = phi i1 [ %1475, %1469 ], [ %1478, %1476 ]
  %1481 = select i1 %1480, float 0.000000e+00, float %1460
  %1482 = select i1 %1480, float 0.000000e+00, float %1461
  %1483 = fmul fast float %1459, %1456
  %1484 = fmul fast float %1481, %1457
  %1485 = fmul fast float %1482, %1458
  %1486 = fadd fast float %1483, %1208
  %1487 = fadd fast float %1484, %1209
  %1488 = fadd fast float %1485, %1210
  %1489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1490 = extractvalue %dx.types.CBufRet.f32 %1489, 0
  br i1 %1480, label %1491, label %1510, !dx.controlflow.hints !105

; <label>:1491                                    ; preds = %1479
  %1492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1493 = extractvalue %dx.types.CBufRet.f32 %1492, 3
  %1494 = call float @dx.op.dot3.f32(i32 55, float %1185, float %1186, float %1187, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1495 = fmul fast float %1494, %1486
  %1496 = call float @dx.op.dot3.f32(i32 55, float %1191, float %1192, float %1193, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1497 = fmul fast float %1490, %1496
  %1498 = fadd fast float %1497, %1495
  br i1 %1468, label %1499, label %1505, !dx.controlflow.hints !106

; <label>:1499                                    ; preds = %1491
  %1500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1501 = extractvalue %dx.types.CBufRet.f32 %1500, 1
  %1502 = fadd fast float %1185, -1.000000e+00
  %1503 = fmul fast float %1501, %1502
  %1504 = fadd fast float %1503, 1.000000e+00
  br label %1505

; <label>:1505                                    ; preds = %1499, %1491
  %1506 = phi float [ %1504, %1499 ], [ %1185, %1491 ]
  %1507 = fsub fast float %1487, %1493
  %1508 = fmul fast float %1506, %1507
  %1509 = fadd fast float %1508, %1493
  br label %1520

; <label>:1510                                    ; preds = %1479
  %1511 = fmul fast float %1486, %1185
  %1512 = fmul fast float %1487, %1186
  %1513 = fmul fast float %1488, %1187
  %1514 = fmul fast float %1490, %1191
  %1515 = fmul fast float %1490, %1192
  %1516 = fmul fast float %1490, %1193
  %1517 = fadd fast float %1514, %1511
  %1518 = fadd fast float %1515, %1512
  %1519 = fadd fast float %1516, %1513
  br label %1520

; <label>:1520                                    ; preds = %1510, %1505
  %1521 = phi float [ %1498, %1505 ], [ %1517, %1510 ]
  %1522 = phi float [ %1509, %1505 ], [ %1518, %1510 ]
  %1523 = phi float [ %1488, %1505 ], [ %1519, %1510 ]
  %1524 = lshr i32 %46, 2
  %1525 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1526 = extractvalue %dx.types.CBufRet.i32 %1525, 1
  %1527 = shl i32 %1526, 1
  %1528 = lshr i32 %47, 4
  %1529 = and i32 %1528, 134217727
  %1530 = extractvalue %dx.types.CBufRet.i32 %1525, 0
  %1531 = mul i32 %1530, %1529
  %1532 = lshr i32 %46, 5
  %1533 = and i32 %1532, 67108863
  %1534 = add i32 %1527, %1533
  %1535 = add i32 %1534, %1531
  %1536 = shl i32 %1535, 2
  %1537 = and i32 %49, 24
  %1538 = and i32 %1524, 7
  %1539 = or i32 %1537, %1538
  %1540 = shl i32 1, %1539
  %1541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1536, i32 undef)  ; BufferLoad(srv,index,wot)
  %1542 = extractvalue %dx.types.ResRet.i32 %1541, 0
  %1543 = and i32 %1542, %1540
  %1544 = icmp eq i32 %1543, 0
  br i1 %1544, label %1560, label %1545, !dx.controlflow.hints !107

; <label>:1545                                    ; preds = %1520
  %1546 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %48, i32 %49, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1547 = extractvalue %dx.types.ResRet.f32 %1546, 0
  %1548 = fcmp fast ogt float %1547, 0.000000e+00
  br i1 %1548, label %1549, label %1560, !dx.controlflow.hints !108

; <label>:1549                                    ; preds = %1545
  %1550 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %48, i32 %49, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1551 = extractvalue %dx.types.ResRet.f32 %1550, 0
  %1552 = extractvalue %dx.types.ResRet.f32 %1550, 1
  %1553 = extractvalue %dx.types.ResRet.f32 %1550, 2
  %1554 = extractvalue %dx.types.ResRet.f32 %1550, 3
  %1555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %1556 = extractvalue %dx.types.CBufRet.f32 %1555, 2
  %1557 = fmul fast float %1556, %1551
  %1558 = fmul fast float %1556, %1552
  %1559 = fmul fast float %1556, %1553
  br label %1560

; <label>:1560                                    ; preds = %1549, %1545, %1520
  %1561 = phi float [ %1557, %1549 ], [ 0.000000e+00, %1545 ], [ 0.000000e+00, %1520 ]
  %1562 = phi float [ %1558, %1549 ], [ 0.000000e+00, %1545 ], [ 0.000000e+00, %1520 ]
  %1563 = phi float [ %1559, %1549 ], [ 0.000000e+00, %1545 ], [ 0.000000e+00, %1520 ]
  %1564 = phi float [ %1554, %1549 ], [ 0.000000e+00, %1545 ], [ 0.000000e+00, %1520 ]
  %1565 = fsub fast float 1.000000e+00, %1564
  %1566 = fmul fast float %1565, %1521
  %1567 = fmul fast float %1565, %1522
  %1568 = fmul fast float %1565, %1523
  %1569 = fadd fast float %1566, %1561
  %1570 = fadd fast float %1567, %1562
  %1571 = fadd fast float %1568, %1563
  %1572 = fadd fast float %1206, 0x3FE3C6EF40000000
  %1573 = call float @dx.op.unary.f32(i32 22, float %1572)  ; Frc(value)
  %1574 = call float @dx.op.unary.f32(i32 23, float %1569)  ; Log(value)
  %1575 = fadd fast float %1574, -7.000000e+00
  %1576 = call float @dx.op.unary.f32(i32 21, float %1575)  ; Exp(value)
  %1577 = fmul fast float %1573, 2.000000e+00
  %1578 = fadd fast float %1577, -1.000000e+00
  %1579 = fmul fast float %1576, %1578
  %1580 = fcmp fast ogt float %1569, 0.000000e+00
  %1581 = select i1 %1580, float %1579, float 0.000000e+00
  %1582 = fadd fast float %1581, %1569
  %1583 = fadd fast float %1206, 0x3FF3C6EF40000000
  %1584 = call float @dx.op.unary.f32(i32 22, float %1583)  ; Frc(value)
  %1585 = call float @dx.op.unary.f32(i32 23, float %1570)  ; Log(value)
  %1586 = fadd fast float %1585, -7.000000e+00
  %1587 = call float @dx.op.unary.f32(i32 21, float %1586)  ; Exp(value)
  %1588 = fmul fast float %1584, 2.000000e+00
  %1589 = fadd fast float %1588, -1.000000e+00
  %1590 = fmul fast float %1587, %1589
  %1591 = fcmp fast ogt float %1570, 0.000000e+00
  %1592 = select i1 %1591, float %1590, float 0.000000e+00
  %1593 = fadd fast float %1592, %1570
  %1594 = fadd fast float %1206, 0x3FFDAA66E0000000
  %1595 = call float @dx.op.unary.f32(i32 22, float %1594)  ; Frc(value)
  %1596 = call float @dx.op.unary.f32(i32 23, float %1571)  ; Log(value)
  %1597 = fadd fast float %1596, -6.000000e+00
  %1598 = call float @dx.op.unary.f32(i32 21, float %1597)  ; Exp(value)
  %1599 = fmul fast float %1595, 2.000000e+00
  %1600 = fadd fast float %1599, -1.000000e+00
  %1601 = fmul fast float %1598, %1600
  %1602 = fcmp fast ogt float %1571, 0.000000e+00
  %1603 = select i1 %1602, float %1601, float 0.000000e+00
  %1604 = fadd fast float %1603, %1571
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %48, i32 %49, i32 undef, float %1582, float %1593, float %1604, float %1582, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1605 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1606 = extractvalue %dx.types.CBufRet.i32 %1605, 0
  %1607 = and i32 %1606, 1
  %1608 = icmp eq i32 %1607, 0
  br i1 %1608, label %1612, label %1609, !dx.controlflow.hints !109

; <label>:1609                                    ; preds = %1560
  %1610 = and i32 %46, 2147483647
  %1611 = and i32 %47, 2147483647
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1610, i32 %1611, i32 undef, float %1486, float %1487, float %1488, float %1486, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1612

; <label>:1612                                    ; preds = %1609, %1560
  br label %1613

; <label>:1613                                    ; preds = %1636, %1612
  %1614 = phi float [ %1637, %1636 ], [ %1569, %1612 ]
  %1615 = phi float [ %1638, %1636 ], [ %1570, %1612 ]
  %1616 = phi float [ %1639, %1636 ], [ %1571, %1612 ]
  %1617 = phi float [ %1640, %1636 ], [ 1.000000e+00, %1612 ]
  %1618 = phi i32 [ %1623, %1636 ], [ 14, %1612 ]
  %1619 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1618)  ; FirstbitLo(value)
  %1620 = and i32 %1619, 31
  %1621 = shl i32 1, %1620
  %1622 = xor i32 %1621, -1
  %1623 = and i32 %1618, %1622
  %1624 = and i32 %1619, 1
  %1625 = lshr i32 %1619, 1
  %1626 = or i32 %1624, %48
  %1627 = add i32 %1625, %49
  %1628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1629 = extractvalue %dx.types.CBufRet.f32 %1628, 0
  %1630 = fptoui float %1629 to i32
  %1631 = icmp uge i32 %1626, %1630
  %1632 = extractvalue %dx.types.CBufRet.f32 %1628, 1
  %1633 = fptoui float %1632 to i32
  %1634 = icmp uge i32 %1627, %1633
  %1635 = or i1 %1631, %1634
  br i1 %1635, label %1636, label %1642, !dx.controlflow.hints !110

; <label>:1636                                    ; preds = %2068, %1613
  %1637 = phi float [ %1614, %1613 ], [ %2069, %2068 ]
  %1638 = phi float [ %1615, %1613 ], [ %2070, %2068 ]
  %1639 = phi float [ %1616, %1613 ], [ %2071, %2068 ]
  %1640 = phi float [ %1617, %1613 ], [ %2072, %2068 ]
  %1641 = icmp eq i32 %1623, 0
  br i1 %1641, label %2073, label %1613

; <label>:1642                                    ; preds = %1613
  %1643 = uitofp i32 %1626 to float
  %1644 = uitofp i32 %1627 to float
  %1645 = fadd fast float %1643, 5.000000e-01
  %1646 = fadd fast float %1644, 5.000000e-01
  %1647 = extractvalue %dx.types.CBufRet.f32 %1628, 2
  %1648 = extractvalue %dx.types.CBufRet.f32 %1628, 3
  %1649 = fmul fast float %1647, %1645
  %1650 = fmul fast float %1648, %1646
  %1651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1652 = extractvalue %dx.types.CBufRet.f32 %1651, 2
  %1653 = fmul fast float %1652, 0x3FE3C6EF40000000
  %1654 = frem fast float %1643, 2.560000e+02
  %1655 = frem fast float %1644, 2.560000e+02
  %1656 = fptoui float %1654 to i32
  %1657 = fptoui float %1655 to i32
  %1658 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1656, i32 %1657, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1659 = extractvalue %dx.types.ResRet.f32 %1658, 0
  %1660 = fadd fast float %1659, %1653
  %1661 = call float @dx.op.unary.f32(i32 22, float %1660)  ; Frc(value)
  %1662 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 undef, i32 %1626, i32 %1627, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1663 = extractvalue %dx.types.ResRet.f32 %1662, 0
  %1664 = extractvalue %dx.types.ResRet.f32 %1662, 1
  %1665 = extractvalue %dx.types.ResRet.f32 %1662, 2
  %1666 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %1626, i32 %1627, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1667 = extractvalue %dx.types.ResRet.f32 %1666, 0
  %1668 = extractvalue %dx.types.ResRet.f32 %1666, 1
  %1669 = extractvalue %dx.types.ResRet.f32 %1666, 2
  %1670 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %1626, i32 %1627, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1671 = extractvalue %dx.types.ResRet.f32 %1670, 0
  %1672 = extractvalue %dx.types.ResRet.f32 %1670, 1
  %1673 = extractvalue %dx.types.ResRet.f32 %1670, 2
  %1674 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %1626, i32 %1627, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1675 = extractvalue %dx.types.ResRet.f32 %1674, 0
  %1676 = extractvalue %dx.types.ResRet.f32 %1674, 1
  %1677 = call float @dx.op.binary.f32(i32 35, float %1675, float %1676)  ; FMax(a,b)
  %1678 = fcmp fast ult float %1677, 0x3F70101020000000
  br i1 %1678, label %1912, label %1679, !dx.controlflow.hints !111

; <label>:1679                                    ; preds = %1642
  %1680 = fmul fast float %1676, 2.000000e+00
  %1681 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1680)  ; FMax(a,b)
  %1682 = fmul fast float %1675, 2.000000e+00
  %1683 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1682)  ; FMax(a,b)
  %1684 = extractvalue %dx.types.ResRet.f32 %1670, 3
  %1685 = fmul fast float %1684, 2.000000e+00
  %1686 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1685)  ; FMax(a,b)
  %1687 = fmul fast float %1673, %1673
  %1688 = fmul fast float %1672, %1672
  %1689 = fmul fast float %1671, %1671
  %1690 = getelementptr [4 x float], [4 x float]* %33, i32 0, i32 %1619
  %1691 = load float, float* %1690, align 4, !tbaa !52, !noalias !112
  %1692 = fadd fast float %1689, 0xBFD51EB860000000
  %1693 = fadd fast float %1688, 0xBFD51EB860000000
  %1694 = fadd fast float %1687, 0xBFD51EB860000000
  %1695 = fmul fast float %1692, %1692
  %1696 = fmul fast float %1693, %1693
  %1697 = fmul fast float %1694, %1694
  %1698 = fmul fast float %1695, %1695
  %1699 = fmul fast float %1698, 1.000000e+02
  %1700 = fmul fast float %1696, %1696
  %1701 = fmul fast float %1700, 1.000000e+02
  %1702 = fmul fast float %1697, %1697
  %1703 = fmul fast float %1702, 1.000000e+02
  %1704 = fadd fast float %1699, 3.500000e+00
  %1705 = fadd fast float %1701, 3.500000e+00
  %1706 = fadd fast float %1703, 3.500000e+00
  %1707 = fdiv fast float %1704, %1686
  %1708 = fdiv fast float %1705, %1683
  %1709 = fdiv fast float %1706, %1681
  %1710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1711 = extractvalue %dx.types.CBufRet.f32 %1710, 0
  %1712 = extractvalue %dx.types.CBufRet.f32 %1710, 1
  %1713 = fmul fast float %1711, %1691
  %1714 = fmul fast float %1712, %1691
  %1715 = fdiv fast float 1.000000e+00, %1713
  %1716 = fdiv fast float 1.000000e+00, %1714
  %1717 = fmul fast float %1647, 5.000000e-01
  %1718 = fmul fast float %1717, %1713
  %1719 = fmul fast float %1707, 0xBFF7154760000000
  %1720 = fmul fast float %1719, %1718
  %1721 = call float @dx.op.unary.f32(i32 21, float %1720)  ; Exp(value)
  %1722 = fmul fast float %1721, 2.500000e-01
  %1723 = fsub fast float 1.000000e+00, %1722
  %1724 = fmul fast float %1707, 0xBFDEC709E0000000
  %1725 = fmul fast float %1724, %1718
  %1726 = call float @dx.op.unary.f32(i32 21, float %1725)  ; Exp(value)
  %1727 = fmul fast float %1726, 7.500000e-01
  %1728 = fsub fast float %1723, %1727
  %1729 = fmul fast float %1708, 0xBFF7154760000000
  %1730 = fmul fast float %1729, %1718
  %1731 = call float @dx.op.unary.f32(i32 21, float %1730)  ; Exp(value)
  %1732 = fmul fast float %1731, 2.500000e-01
  %1733 = fsub fast float 1.000000e+00, %1732
  %1734 = fmul fast float %1708, 0xBFDEC709E0000000
  %1735 = fmul fast float %1734, %1718
  %1736 = call float @dx.op.unary.f32(i32 21, float %1735)  ; Exp(value)
  %1737 = fmul fast float %1736, 7.500000e-01
  %1738 = fsub fast float %1733, %1737
  %1739 = fmul fast float %1709, 0xBFF7154760000000
  %1740 = fmul fast float %1739, %1718
  %1741 = call float @dx.op.unary.f32(i32 21, float %1740)  ; Exp(value)
  %1742 = fmul fast float %1741, 2.500000e-01
  %1743 = fsub fast float 1.000000e+00, %1742
  %1744 = fmul fast float %1709, 0xBFDEC709E0000000
  %1745 = fmul fast float %1744, %1718
  %1746 = call float @dx.op.unary.f32(i32 21, float %1745)  ; Exp(value)
  %1747 = fmul fast float %1746, 7.500000e-01
  %1748 = fsub fast float %1743, %1747
  %1749 = fmul fast float %1667, 0x3F1A36E2E0000000
  %1750 = fmul fast float %1668, 0x3F1A36E2E0000000
  %1751 = fmul fast float %1669, 0x3F1A36E2E0000000
  %1752 = call float @dx.op.binary.f32(i32 36, float %1708, float %1709)  ; FMin(a,b)
  %1753 = call float @dx.op.binary.f32(i32 36, float %1707, float %1752)  ; FMin(a,b)
  %1754 = call float @dx.op.binary.f32(i32 36, float %1738, float %1748)  ; FMin(a,b)
  %1755 = call float @dx.op.binary.f32(i32 36, float %1728, float %1754)  ; FMin(a,b)
  %1756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1757 = extractvalue %dx.types.CBufRet.f32 %1756, 2
  %1758 = fmul fast float %1757, %1713
  %1759 = fmul fast float %1753, 0xBFF7154760000000
  %1760 = fmul fast float %1759, %1758
  %1761 = call float @dx.op.unary.f32(i32 21, float %1760)  ; Exp(value)
  %1762 = fmul fast float %1761, 2.500000e-01
  %1763 = fsub fast float 1.000000e+00, %1762
  %1764 = fmul fast float %1753, 0xBFDEC709E0000000
  %1765 = fmul fast float %1764, %1758
  %1766 = call float @dx.op.unary.f32(i32 21, float %1765)  ; Exp(value)
  %1767 = fmul fast float %1766, 7.500000e-01
  %1768 = fsub fast float %1763, %1767
  %1769 = extractvalue %dx.types.CBufRet.f32 %1756, 3
  %1770 = call float @dx.op.binary.f32(i32 36, float %1769, float %1768)  ; FMin(a,b)
  %1771 = fsub fast float %1770, %1755
  %1772 = call float @dx.op.unary.f32(i32 7, float %1771)  ; Saturate(value)
  %1773 = call float @dx.op.unary.f32(i32 7, float %1755)  ; Saturate(value)
  %1774 = extractvalue %dx.types.CBufRet.f32 %1756, 0
  %1775 = fmul fast float %1774, %1772
  %1776 = fptoui float %1775 to i32
  %1777 = uitofp i32 %1776 to float
  %1778 = fdiv fast float 1.000000e+00, %1777
  %1779 = icmp eq i32 %1776, 0
  br i1 %1779, label %1890, label %1780

; <label>:1780                                    ; preds = %1679
  %1781 = fmul fast float %1709, 0x3FA45F3060000000
  %1782 = fmul fast float %1753, 0x3FA45F3060000000
  br label %1783

; <label>:1783                                    ; preds = %1783, %1780
  %1784 = phi float [ %1881, %1783 ], [ %1749, %1780 ]
  %1785 = phi float [ %1882, %1783 ], [ %1750, %1780 ]
  %1786 = phi float [ %1883, %1783 ], [ %1751, %1780 ]
  %1787 = phi float [ %1884, %1783 ], [ 0x3F1A36E2E0000000, %1780 ]
  %1788 = phi float [ %1885, %1783 ], [ 0x3F1A36E2E0000000, %1780 ]
  %1789 = phi float [ %1886, %1783 ], [ 0x3F1A36E2E0000000, %1780 ]
  %1790 = phi i32 [ %1887, %1783 ], [ 0, %1780 ]
  %1791 = sitofp i32 %1790 to float
  %1792 = fadd fast float %1791, %1661
  %1793 = fmul fast float %1778, %1772
  %1794 = fmul fast float %1793, %1792
  %1795 = fsub fast float 1.000000e+00, %1773
  %1796 = fsub fast float %1795, %1794
  %1797 = fmul fast float %1796, 4.000000e+00
  %1798 = fmul fast float %1796, 2.000000e+00
  %1799 = fmul fast float %1796, %1796
  %1800 = fmul fast float %1799, 4.000000e+00
  %1801 = fadd fast float %1800, 1.000000e+00
  %1802 = call float @dx.op.unary.f32(i32 24, float %1801)  ; Sqrt(value)
  %1803 = fadd fast float %1798, %1802
  %1804 = fmul fast float %1797, %1803
  %1805 = fadd fast float %1804, 1.000000e+00
  %1806 = call float @dx.op.unary.f32(i32 23, float %1805)  ; Log(value)
  %1807 = fmul fast float %1806, 0xBFD5555560000000
  %1808 = call float @dx.op.unary.f32(i32 21, float %1807)  ; Exp(value)
  %1809 = fmul fast float %1808, %1808
  %1810 = fmul fast float %1809, %1805
  %1811 = fadd fast float %1808, 1.000000e+00
  %1812 = fadd fast float %1811, %1810
  %1813 = fdiv fast float 2.500000e-01, %1796
  %1814 = fmul fast float %1812, %1813
  %1815 = call float @dx.op.unary.f32(i32 23, float %1814)  ; Log(value)
  %1816 = fmul fast float %1815, 0x4000A2B240000000
  %1817 = fdiv fast float %1816, %1753
  %1818 = fmul fast float %1759, %1817
  %1819 = call float @dx.op.unary.f32(i32 21, float %1818)  ; Exp(value)
  %1820 = fmul fast float %1764, %1817
  %1821 = call float @dx.op.unary.f32(i32 21, float %1820)  ; Exp(value)
  %1822 = fadd fast float %1821, %1819
  %1823 = fmul fast float %1782, %1822
  %1824 = fdiv fast float %1772, %1823
  %1825 = fmul fast float %1791, 0x3FF9E377A0000000
  %1826 = call float @dx.op.unary.f32(i32 22, float %1825)  ; Frc(value)
  %1827 = fadd fast float %1826, %1661
  %1828 = fmul fast float %1827, 0x401921FB60000000
  %1829 = call float @dx.op.unary.f32(i32 13, float %1828)  ; Sin(value)
  %1830 = call float @dx.op.unary.f32(i32 12, float %1828)  ; Cos(value)
  %1831 = fmul fast float %1817, %1715
  %1832 = fmul fast float %1831, %1830
  %1833 = fmul fast float %1817, %1716
  %1834 = fmul fast float %1833, %1829
  %1835 = fadd fast float %1832, %1649
  %1836 = fadd fast float %1834, %1650
  %1837 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %23, float %1835, float %1836, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1838 = extractvalue %dx.types.ResRet.f32 %1837, 0
  %1839 = extractvalue %dx.types.ResRet.f32 %1837, 1
  %1840 = extractvalue %dx.types.ResRet.f32 %1837, 2
  %1841 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %23, float %1835, float %1836, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1842 = extractvalue %dx.types.ResRet.f32 %1841, 0
  %1843 = fcmp fast ogt float %1842, -1.000000e+00
  %1844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1845 = extractvalue %dx.types.CBufRet.f32 %1844, 1
  %1846 = select i1 %1843, float %1845, float 1.000000e+00
  %1847 = fadd fast float %1842, 1.000000e+00
  %1848 = fmul fast float %1846, %1847
  %1849 = call float @dx.op.unary.f32(i32 6, float %1848)  ; FAbs(value)
  %1850 = fsub fast float %1691, %1849
  %1851 = fmul fast float %1817, %1817
  %1852 = fmul fast float %1850, %1850
  %1853 = fadd fast float %1852, %1851
  %1854 = call float @dx.op.unary.f32(i32 24, float %1853)  ; Sqrt(value)
  %1855 = fmul fast float %1719, %1854
  %1856 = call float @dx.op.unary.f32(i32 21, float %1855)  ; Exp(value)
  %1857 = fmul fast float %1724, %1854
  %1858 = call float @dx.op.unary.f32(i32 21, float %1857)  ; Exp(value)
  %1859 = fadd fast float %1858, %1856
  %1860 = fmul fast float %1729, %1854
  %1861 = call float @dx.op.unary.f32(i32 21, float %1860)  ; Exp(value)
  %1862 = fmul fast float %1734, %1854
  %1863 = call float @dx.op.unary.f32(i32 21, float %1862)  ; Exp(value)
  %1864 = fadd fast float %1863, %1861
  %1865 = fmul fast float %1739, %1854
  %1866 = call float @dx.op.unary.f32(i32 21, float %1865)  ; Exp(value)
  %1867 = fmul fast float %1744, %1854
  %1868 = call float @dx.op.unary.f32(i32 21, float %1867)  ; Exp(value)
  %1869 = fadd fast float %1868, %1866
  %1870 = fmul fast float %1707, 0x3FA45F3060000000
  %1871 = fmul fast float %1870, %1824
  %1872 = fmul fast float %1871, %1859
  %1873 = fmul fast float %1708, 0x3FA45F3060000000
  %1874 = fmul fast float %1873, %1824
  %1875 = fmul fast float %1874, %1864
  %1876 = fmul fast float %1781, %1824
  %1877 = fmul fast float %1876, %1869
  %1878 = fmul fast float %1872, %1838
  %1879 = fmul fast float %1875, %1839
  %1880 = fmul fast float %1877, %1840
  %1881 = fadd fast float %1878, %1784
  %1882 = fadd fast float %1879, %1785
  %1883 = fadd fast float %1880, %1786
  %1884 = fadd fast float %1872, %1787
  %1885 = fadd fast float %1875, %1788
  %1886 = fadd fast float %1877, %1789
  %1887 = add nuw nsw i32 %1790, 1
  %1888 = icmp eq i32 %1887, %1776
  br i1 %1888, label %1889, label %1783, !llvm.loop !102

; <label>:1889                                    ; preds = %1783
  br label %1890

; <label>:1890                                    ; preds = %1889, %1679
  %1891 = phi float [ %1749, %1679 ], [ %1881, %1889 ]
  %1892 = phi float [ %1750, %1679 ], [ %1882, %1889 ]
  %1893 = phi float [ %1751, %1679 ], [ %1883, %1889 ]
  %1894 = phi float [ 0x3F1A36E2E0000000, %1679 ], [ %1884, %1889 ]
  %1895 = phi float [ 0x3F1A36E2E0000000, %1679 ], [ %1885, %1889 ]
  %1896 = phi float [ 0x3F1A36E2E0000000, %1679 ], [ %1886, %1889 ]
  %1897 = fmul fast float %1728, %1667
  %1898 = fmul fast float %1738, %1668
  %1899 = fmul fast float %1748, %1669
  %1900 = fsub fast float 1.000000e+00, %1728
  %1901 = fsub fast float 1.000000e+00, %1738
  %1902 = fsub fast float 1.000000e+00, %1748
  %1903 = fdiv fast float %1891, %1894
  %1904 = fdiv fast float %1892, %1895
  %1905 = fdiv fast float %1893, %1896
  %1906 = fmul fast float %1903, %1900
  %1907 = fmul fast float %1904, %1901
  %1908 = fmul fast float %1905, %1902
  %1909 = fadd fast float %1906, %1897
  %1910 = fadd fast float %1907, %1898
  %1911 = fadd fast float %1908, %1899
  br label %1912

; <label>:1912                                    ; preds = %1890, %1642
  %1913 = phi float [ %1909, %1890 ], [ 0.000000e+00, %1642 ]
  %1914 = phi float [ %1910, %1890 ], [ 0.000000e+00, %1642 ]
  %1915 = phi float [ %1911, %1890 ], [ 0.000000e+00, %1642 ]
  %1916 = phi float [ %1671, %1890 ], [ 0.000000e+00, %1642 ]
  %1917 = phi float [ %1672, %1890 ], [ 0.000000e+00, %1642 ]
  %1918 = phi float [ %1673, %1890 ], [ 0.000000e+00, %1642 ]
  %1919 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1920 = extractvalue %dx.types.CBufRet.i32 %1919, 3
  %1921 = and i32 %1920, 3
  %1922 = icmp ne i32 %1921, 0
  %1923 = and i32 %1920, 4
  %1924 = icmp ne i32 %1923, 0
  %1925 = and i1 %1922, %1924
  br i1 %1925, label %1926, label %1933, !dx.controlflow.hints !104

; <label>:1926                                    ; preds = %1912
  %1927 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %23, float %1649, float %1650, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1928 = extractvalue %dx.types.ResRet.f32 %1927, 0
  %1929 = fsub fast float 1.000000e+00, %1928
  %1930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1931 = extractvalue %dx.types.CBufRet.f32 %1930, 0
  %1932 = fcmp fast olt float %1929, %1931
  br label %1936

; <label>:1933                                    ; preds = %1912
  %1934 = icmp eq i32 %1923, 0
  %1935 = and i1 %1922, %1934
  br label %1936

; <label>:1936                                    ; preds = %1933, %1926
  %1937 = phi i1 [ %1932, %1926 ], [ %1935, %1933 ]
  %1938 = select i1 %1937, float 0.000000e+00, float %1917
  %1939 = select i1 %1937, float 0.000000e+00, float %1918
  %1940 = fmul fast float %1916, %1913
  %1941 = fmul fast float %1938, %1914
  %1942 = fmul fast float %1939, %1915
  %1943 = fadd fast float %1940, %1663
  %1944 = fadd fast float %1941, %1664
  %1945 = fadd fast float %1942, %1665
  %1946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1947 = extractvalue %dx.types.CBufRet.f32 %1946, 0
  br i1 %1937, label %1948, label %1967, !dx.controlflow.hints !105

; <label>:1948                                    ; preds = %1936
  %1949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1950 = extractvalue %dx.types.CBufRet.f32 %1949, 3
  %1951 = call float @dx.op.dot3.f32(i32 55, float %1185, float %1186, float %1187, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1952 = fmul fast float %1951, %1943
  %1953 = call float @dx.op.dot3.f32(i32 55, float %1191, float %1192, float %1193, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1954 = fmul fast float %1947, %1953
  %1955 = fadd fast float %1954, %1952
  br i1 %1925, label %1956, label %1962, !dx.controlflow.hints !106

; <label>:1956                                    ; preds = %1948
  %1957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1958 = extractvalue %dx.types.CBufRet.f32 %1957, 1
  %1959 = fadd fast float %1185, -1.000000e+00
  %1960 = fmul fast float %1958, %1959
  %1961 = fadd fast float %1960, 1.000000e+00
  br label %1962

; <label>:1962                                    ; preds = %1956, %1948
  %1963 = phi float [ %1961, %1956 ], [ %1185, %1948 ]
  %1964 = fsub fast float %1944, %1950
  %1965 = fmul fast float %1963, %1964
  %1966 = fadd fast float %1965, %1950
  br label %1977

; <label>:1967                                    ; preds = %1936
  %1968 = fmul fast float %1943, %1185
  %1969 = fmul fast float %1944, %1186
  %1970 = fmul fast float %1945, %1187
  %1971 = fmul fast float %1947, %1191
  %1972 = fmul fast float %1947, %1192
  %1973 = fmul fast float %1947, %1193
  %1974 = fadd fast float %1971, %1968
  %1975 = fadd fast float %1972, %1969
  %1976 = fadd fast float %1973, %1970
  br label %1977

; <label>:1977                                    ; preds = %1967, %1962
  %1978 = phi float [ %1955, %1962 ], [ %1974, %1967 ]
  %1979 = phi float [ %1966, %1962 ], [ %1975, %1967 ]
  %1980 = phi float [ %1945, %1962 ], [ %1976, %1967 ]
  %1981 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1982 = extractvalue %dx.types.CBufRet.i32 %1981, 1
  %1983 = shl i32 %1982, 1
  %1984 = lshr i32 %1627, 5
  %1985 = extractvalue %dx.types.CBufRet.i32 %1981, 0
  %1986 = mul i32 %1985, %1984
  %1987 = add i32 %1983, %1533
  %1988 = add i32 %1987, %1986
  %1989 = shl i32 %1988, 2
  %1990 = and i32 %1627, 24
  %1991 = or i32 %1990, %1538
  %1992 = shl i32 1, %1991
  %1993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1989, i32 undef)  ; BufferLoad(srv,index,wot)
  %1994 = extractvalue %dx.types.ResRet.i32 %1993, 0
  %1995 = and i32 %1994, %1992
  %1996 = icmp eq i32 %1995, 0
  br i1 %1996, label %2012, label %1997, !dx.controlflow.hints !107

; <label>:1997                                    ; preds = %1977
  %1998 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %1626, i32 %1627, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1999 = extractvalue %dx.types.ResRet.f32 %1998, 0
  %2000 = fcmp fast ogt float %1999, 0.000000e+00
  br i1 %2000, label %2001, label %2012, !dx.controlflow.hints !108

; <label>:2001                                    ; preds = %1997
  %2002 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %1626, i32 %1627, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2003 = extractvalue %dx.types.ResRet.f32 %2002, 0
  %2004 = extractvalue %dx.types.ResRet.f32 %2002, 1
  %2005 = extractvalue %dx.types.ResRet.f32 %2002, 2
  %2006 = extractvalue %dx.types.ResRet.f32 %2002, 3
  %2007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %2008 = extractvalue %dx.types.CBufRet.f32 %2007, 2
  %2009 = fmul fast float %2008, %2003
  %2010 = fmul fast float %2008, %2004
  %2011 = fmul fast float %2008, %2005
  br label %2012

; <label>:2012                                    ; preds = %2001, %1997, %1977
  %2013 = phi float [ %2009, %2001 ], [ 0.000000e+00, %1997 ], [ 0.000000e+00, %1977 ]
  %2014 = phi float [ %2010, %2001 ], [ 0.000000e+00, %1997 ], [ 0.000000e+00, %1977 ]
  %2015 = phi float [ %2011, %2001 ], [ 0.000000e+00, %1997 ], [ 0.000000e+00, %1977 ]
  %2016 = phi float [ %2006, %2001 ], [ 0.000000e+00, %1997 ], [ 0.000000e+00, %1977 ]
  %2017 = fsub fast float 1.000000e+00, %2016
  %2018 = fmul fast float %2017, %1978
  %2019 = fmul fast float %2017, %1979
  %2020 = fmul fast float %2017, %1980
  %2021 = fadd fast float %2018, %2013
  %2022 = fadd fast float %2019, %2014
  %2023 = fadd fast float %2020, %2015
  %2024 = fadd fast float %1661, 0x3FE3C6EF40000000
  %2025 = call float @dx.op.unary.f32(i32 22, float %2024)  ; Frc(value)
  %2026 = call float @dx.op.unary.f32(i32 23, float %2021)  ; Log(value)
  %2027 = fadd fast float %2026, -7.000000e+00
  %2028 = call float @dx.op.unary.f32(i32 21, float %2027)  ; Exp(value)
  %2029 = fmul fast float %2025, 2.000000e+00
  %2030 = fadd fast float %2029, -1.000000e+00
  %2031 = fmul fast float %2028, %2030
  %2032 = fcmp fast ogt float %2021, 0.000000e+00
  %2033 = select i1 %2032, float %2031, float 0.000000e+00
  %2034 = fadd fast float %2033, %2021
  %2035 = fadd fast float %1661, 0x3FF3C6EF40000000
  %2036 = call float @dx.op.unary.f32(i32 22, float %2035)  ; Frc(value)
  %2037 = call float @dx.op.unary.f32(i32 23, float %2022)  ; Log(value)
  %2038 = fadd fast float %2037, -7.000000e+00
  %2039 = call float @dx.op.unary.f32(i32 21, float %2038)  ; Exp(value)
  %2040 = fmul fast float %2036, 2.000000e+00
  %2041 = fadd fast float %2040, -1.000000e+00
  %2042 = fmul fast float %2039, %2041
  %2043 = fcmp fast ogt float %2022, 0.000000e+00
  %2044 = select i1 %2043, float %2042, float 0.000000e+00
  %2045 = fadd fast float %2044, %2022
  %2046 = fadd fast float %1661, 0x3FFDAA66E0000000
  %2047 = call float @dx.op.unary.f32(i32 22, float %2046)  ; Frc(value)
  %2048 = call float @dx.op.unary.f32(i32 23, float %2023)  ; Log(value)
  %2049 = fadd fast float %2048, -6.000000e+00
  %2050 = call float @dx.op.unary.f32(i32 21, float %2049)  ; Exp(value)
  %2051 = fmul fast float %2047, 2.000000e+00
  %2052 = fadd fast float %2051, -1.000000e+00
  %2053 = fmul fast float %2050, %2052
  %2054 = fcmp fast ogt float %2023, 0.000000e+00
  %2055 = select i1 %2054, float %2053, float 0.000000e+00
  %2056 = fadd fast float %2055, %2023
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %1626, i32 %1627, i32 undef, float %2034, float %2045, float %2056, float %2034, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2057 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2058 = extractvalue %dx.types.CBufRet.i32 %2057, 0
  %2059 = and i32 %2058, 1
  %2060 = icmp ne i32 %2059, 0
  %2061 = or i32 %1627, %1619
  %2062 = and i32 %2061, 1
  %2063 = icmp eq i32 %2062, 0
  %2064 = and i1 %2063, %2060
  br i1 %2064, label %2065, label %2068, !dx.controlflow.hints !109

; <label>:2065                                    ; preds = %2012
  %2066 = and i32 %46, 2147483647
  %2067 = lshr i32 %1627, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2066, i32 %2067, i32 undef, float %1943, float %1944, float %1945, float %1943, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2068

; <label>:2068                                    ; preds = %2065, %2012
  %2069 = fadd fast float %2021, %1614
  %2070 = fadd fast float %2022, %1615
  %2071 = fadd fast float %2023, %1616
  %2072 = fadd fast float %1617, 1.000000e+00
  br label %1636

; <label>:2073                                    ; preds = %1636
  %2074 = fdiv fast float 1.000000e+00, %1640
  %2075 = fmul fast float %2074, %1637
  %2076 = fmul fast float %2074, %1638
  %2077 = fmul fast float %2074, %1639
  %2078 = call float @dx.op.dot3.f32(i32 55, float %2075, float %2076, float %2077, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2079 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %2080 = add i32 %2079, -1
  %2081 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %2082 = and i32 %2079, 1
  %2083 = xor i32 %2082, 1
  %2084 = and i32 %2080, %2081
  %2085 = xor i32 %2083, %2084
  %2086 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2078, i32 %2085)  ; WaveReadLaneAt(value,lane)
  %2087 = call float @dx.op.binary.f32(i32 36, float %2078, float %2086)  ; FMin(a,b)
  %2088 = add i32 %2079, 15
  %2089 = and i32 %2088, 8
  %2090 = xor i32 %2084, %2089
  %2091 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2087, i32 %2090)  ; WaveReadLaneAt(value,lane)
  %2092 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2078, i32 %2085)  ; WaveReadLaneAt(value,lane)
  %2093 = call float @dx.op.binary.f32(i32 35, float %2078, float %2092)  ; FMax(a,b)
  %2094 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2093, i32 %2090)  ; WaveReadLaneAt(value,lane)
  %2095 = or i32 %46, %47
  %2096 = and i32 %2095, 1
  %2097 = icmp eq i32 %2096, 0
  br i1 %2097, label %2098, label %2140, !dx.controlflow.hints !113

; <label>:2098                                    ; preds = %2073
  %2099 = call float @dx.op.binary.f32(i32 35, float %2093, float %2094)  ; FMax(a,b)
  %2100 = call float @dx.op.binary.f32(i32 36, float %2087, float %2091)  ; FMin(a,b)
  %2101 = lshr i32 %46, 1
  %2102 = lshr i32 %47, 1
  %2103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2104 = extractvalue %dx.types.CBufRet.f32 %2103, 3
  %2105 = fmul fast float %2104, 3.200000e+01
  %2106 = fmul fast float %2100, 0x3F1A36E2E0000000
  %2107 = fmul fast float %2106, %2105
  %2108 = call float @dx.op.unary.f32(i32 23, float %2107)  ; Log(value)
  %2109 = fmul fast float %2108, 0x3FC4640000000000
  %2110 = call float @dx.op.unary.f32(i32 21, float %2109)  ; Exp(value)
  %2111 = fmul fast float %2110, 0x4032DA0000000000
  %2112 = fadd fast float %2111, 8.359375e-01
  %2113 = fmul fast float %2110, 1.868750e+01
  %2114 = fadd fast float %2113, 1.000000e+00
  %2115 = fdiv fast float %2112, %2114
  %2116 = call float @dx.op.unary.f32(i32 23, float %2115)  ; Log(value)
  %2117 = fmul fast float %2116, 7.884375e+01
  %2118 = call float @dx.op.unary.f32(i32 21, float %2117)  ; Exp(value)
  %2119 = fmul fast float %2099, 0x3F1A36E2E0000000
  %2120 = fmul fast float %2119, %2105
  %2121 = call float @dx.op.unary.f32(i32 23, float %2120)  ; Log(value)
  %2122 = fmul fast float %2121, 0x3FC4640000000000
  %2123 = call float @dx.op.unary.f32(i32 21, float %2122)  ; Exp(value)
  %2124 = fmul fast float %2123, 0x4032DA0000000000
  %2125 = fadd fast float %2124, 8.359375e-01
  %2126 = fmul fast float %2123, 1.868750e+01
  %2127 = fadd fast float %2126, 1.000000e+00
  %2128 = fdiv fast float %2125, %2127
  %2129 = call float @dx.op.unary.f32(i32 23, float %2128)  ; Log(value)
  %2130 = fmul fast float %2129, 7.884375e+01
  %2131 = call float @dx.op.unary.f32(i32 21, float %2130)  ; Exp(value)
  %2132 = fmul fast float %2118, 0x40778E40E0000000
  %2133 = fmul fast float %2131, 0x40778E40E0000000
  %2134 = call float @dx.op.unary.f32(i32 26, float %2132)  ; Round_ne(value)
  %2135 = call float @dx.op.unary.f32(i32 26, float %2133)  ; Round_ne(value)
  %2136 = fmul fast float %2134, 0x3F70101020000000
  %2137 = fmul fast float %2135, 0x3F70101020000000
  %2138 = call float @dx.op.unary.f32(i32 7, float %2136)  ; Saturate(value)
  %2139 = call float @dx.op.unary.f32(i32 7, float %2137)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %2101, i32 %2102, i32 undef, float %2138, float %2139, float %2138, float %2138, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2140

; <label>:2140                                    ; preds = %2098, %2073
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
!dx.entryPoints = !{!37}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !25, !29, !33}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24}
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
!18 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 21, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 22, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 12, i32 1, i32 2, i32 0, !7}
!25 = !{!26, !27, !28}
!26 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!27 = !{i32 1, %"class.RWTexture2D<vector<float, 2> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!28 = !{i32 2, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!29 = !{!30, !31, !32}
!30 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!31 = !{i32 1, %PostOpaqueConstants* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!32 = !{i32 2, %SSSBlurConstBuffer* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!33 = !{!34, !35, !36}
!34 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!35 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!36 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!37 = !{void ()* @cs_post_opaque_processes_luma_dmfpscale, !"cs_post_opaque_processes_luma_dmfpscale", null, !4, !38}
!38 = !{i32 0, i64 532752, i32 4, !39}
!39 = !{i32 8, i32 8, i32 1}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 1}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = !{!53, !53, i64 0}
!53 = !{!"float", !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C/C++ TBAA"}
!56 = !{!57, !59, !61, !62, !64, !65, !66}
!57 = distinct !{!57, !58, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!58 = distinct !{!58, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!59 = distinct !{!59, !60, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!60 = distinct !{!60, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!61 = distinct !{!61, !60, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!62 = distinct !{!62, !63, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %extinction"}
!63 = distinct !{!63, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z"}
!64 = distinct !{!64, !63, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %scattering"}
!65 = distinct !{!65, !63, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %thermalFogExtinction"}
!66 = distinct !{!66, !67, !"\01?PostOpaqueProcessesQuadLoop@@YAXV?$vector@I$01@@00V?$vector@M$03@@AIAV?$vector@M$02@@_N33V?$vector@_N$03@@@Z: %colorQuadAvg"}
!67 = distinct !{!67, !"\01?PostOpaqueProcessesQuadLoop@@YAXV?$vector@I$01@@00V?$vector@M$03@@AIAV?$vector@M$02@@_N33V?$vector@_N$03@@@Z"}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = !{!70}
!70 = distinct !{!70, !71, !"\01?sort@@YAXAIAM00@Z: %c"}
!71 = distinct !{!71, !"\01?sort@@YAXAIAM00@Z"}
!72 = !{!73, !74, !57, !59, !61, !62, !64, !65, !66}
!73 = distinct !{!73, !71, !"\01?sort@@YAXAIAM00@Z: %a"}
!74 = distinct !{!74, !71, !"\01?sort@@YAXAIAM00@Z: %b"}
!75 = !{!74}
!76 = !{!73, !70, !57, !59, !61, !62, !64, !65, !66}
!77 = !{!73}
!78 = !{!74, !70, !57, !59, !61, !62, !64, !65, !66}
!79 = !{!80}
!80 = distinct !{!80, !81, !"\01?sort@@YAXAIAM00@Z: %c"}
!81 = distinct !{!81, !"\01?sort@@YAXAIAM00@Z"}
!82 = !{!83, !84, !57, !59, !61, !62, !64, !65, !66}
!83 = distinct !{!83, !81, !"\01?sort@@YAXAIAM00@Z: %a"}
!84 = distinct !{!84, !81, !"\01?sort@@YAXAIAM00@Z: %b"}
!85 = !{!84}
!86 = !{!83, !80, !57, !59, !61, !62, !64, !65, !66}
!87 = !{!83}
!88 = !{!84, !80, !57, !59, !61, !62, !64, !65, !66}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !103}
!103 = !{!"llvm.loop.unroll.disable"}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 2}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 2}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 2}
!112 = !{!66}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 2}

