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
; shader hash: a377f61ecf0bbdb06f2577ed38b3dfbc
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
;                                       UAV     f32          2d      U1             u2     1
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

define void @cs_post_opaque_processes_subsampletile_dmfpscale() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %33 = alloca [3 x float], align 4
  %34 = alloca [3 x float], align 4
  %35 = alloca [4 x float], align 4
  %36 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.i32 %36, 0
  %38 = extractvalue %dx.types.CBufRet.i32 %36, 1
  %39 = mul i32 %38, %37
  %40 = add i32 %39, %30
  %41 = shl i32 %40, 2
  %42 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %41, i32 undef)  ; BufferLoad(srv,index,wot)
  %43 = extractvalue %dx.types.ResRet.i32 %42, 0
  %44 = lshr i32 %43, 16
  %45 = shl i32 %43, 3
  %46 = and i32 %45, 524280
  %47 = shl nuw nsw i32 %44, 3
  %48 = add i32 %46, %28
  %49 = add i32 %47, %29
  %50 = shl i32 %48, 1
  %51 = shl i32 %49, 1
  %52 = uitofp i32 %50 to float
  %53 = uitofp i32 %51 to float
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 2
  %56 = extractvalue %dx.types.CBufRet.f32 %54, 3
  %57 = fmul fast float %52, %55
  %58 = fmul fast float %53, %56
  %59 = fadd fast float %57, %55
  %60 = fadd fast float %58, %56
  %61 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %24, float %59, float %60, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %62 = extractvalue %dx.types.ResRet.f32 %61, 0
  %63 = extractvalue %dx.types.ResRet.f32 %61, 1
  %64 = extractvalue %dx.types.ResRet.f32 %61, 2
  %65 = extractvalue %dx.types.ResRet.f32 %61, 3
  %66 = fcmp fast ogt float %65, -1.000000e+00
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
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
  %92 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %93 = extractvalue %dx.types.ResRet.i32 %92, 0
  %94 = and i32 %93, 114688
  %95 = icmp ne i32 %94, 0
  %96 = select i1 %95, i32 %50, i32 0
  %97 = select i1 %95, i32 %51, i32 0
  %98 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %96, i32 %97, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %99 = extractvalue %dx.types.ResRet.f32 %98, 0
  %100 = fmul fast float %99, 2.550000e+02
  %101 = fptoui float %100 to i32
  %102 = icmp eq i32 %101, 3
  %103 = and i1 %95, %102
  %104 = extractvalue %dx.types.CBufRet.f32 %67, 3
  %105 = fcmp fast oge float %72, %104
  %106 = fadd fast float %52, 5.000000e-01
  %107 = fadd fast float %53, 5.000000e-01
  br i1 %103, label %969, label %108, !dx.controlflow.hints !40

; <label>:108                                     ; preds = %0
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 170)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %111 = select i1 %105, float %110, float %72
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %114 = extractvalue %dx.types.CBufRet.f32 %112, 3
  %115 = fmul fast float %106, 2.000000e+00
  %116 = fmul fast float %115, %113
  %117 = fmul fast float %107, 2.000000e+00
  %118 = fmul fast float %117, %114
  %119 = fsub fast float 1.000000e+00, %116
  %120 = fsub fast float 1.000000e+00, %118
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %124 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %125 = fmul fast float %119, %122
  %126 = fmul fast float %119, %123
  %127 = fmul fast float %119, %124
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 0
  %130 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %131 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %132 = fmul fast float %120, %129
  %133 = fmul fast float %120, %130
  %134 = fmul fast float %120, %131
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 163)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %153 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %154 = extractvalue %dx.types.CBufRet.f32 %150, 3
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 0
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 1
  %158 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %159 = extractvalue %dx.types.CBufRet.f32 %155, 3
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %163 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %164 = extractvalue %dx.types.CBufRet.f32 %160, 3
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 0
  %167 = extractvalue %dx.types.CBufRet.f32 %165, 1
  %168 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %169 = extractvalue %dx.types.CBufRet.f32 %165, 3
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.f32 %170, 3
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %105, label %186, label %198, !dx.controlflow.hints !41

; <label>:186                                     ; preds = %108
  %187 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %188 = extractvalue %dx.types.CBufRet.f32 %148, 1
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 187)  ; CBufferLoadLegacy(handle,regIndex)
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
  %203 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.i32 %203, 1
  %205 = and i32 %204, 1
  %206 = icmp ne i32 %205, 0
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 2
  %209 = fcmp fast ogt float %208, 0.000000e+00
  %210 = and i1 %206, %209
  br i1 %210, label %211, label %620, !dx.controlflow.hints !42

; <label>:211                                     ; preds = %198
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 3
  %214 = select i1 %105, float %213, float %181
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.f32 %215, 3
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 2
  %219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.f32 %219, 2
  %221 = fsub fast float %218, %220
  %222 = and i32 %204, 2
  %223 = extractvalue %dx.types.CBufRet.i32 %203, 0
  %224 = call i32 @dx.op.binary.i32(i32 40, i32 %223, i32 3)  ; UMin(a,b)
  %225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.f32 %225, 0
  %227 = extractvalue %dx.types.CBufRet.f32 %225, 1
  %228 = extractvalue %dx.types.CBufRet.f32 %219, 0
  %229 = extractvalue %dx.types.CBufRet.f32 %219, 1
  %230 = fsub fast float %226, %228
  %231 = fsub fast float %227, %229
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %247, label %248, label %263, !dx.controlflow.hints !43

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
  br i1 %267, label %268, label %270, !dx.controlflow.hints !44

; <label>:268                                     ; preds = %263
  %269 = fcmp fast oeq float %265, %264
  br i1 %269, label %573, label %271, !dx.controlflow.hints !45

; <label>:270                                     ; preds = %263
  br i1 %234, label %573, label %271, !dx.controlflow.hints !46

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
  br i1 %284, label %286, label %343, !dx.controlflow.hints !47

; <label>:286                                     ; preds = %271
  %287 = icmp eq i32 %222, 0
  br i1 %285, label %288, label %332, !dx.controlflow.hints !48

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
  %301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.f32 %301, 0
  %303 = extractvalue %dx.types.CBufRet.f32 %301, 1
  %304 = extractvalue %dx.types.CBufRet.f32 %301, 2
  %305 = extractvalue %dx.types.CBufRet.f32 %301, 3
  %306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %105, label %573, label %320, !dx.controlflow.hints !49

; <label>:320                                     ; preds = %288
  %321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %287, label %333, label %354, !dx.controlflow.hints !50

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
  br i1 %285, label %344, label %354, !dx.controlflow.hints !51

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
  store float -1.000000e+00, float* %359, align 4, !tbaa !52, !noalias !56
  %360 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 1
  store float -1.000000e+00, float* %360, align 4, !tbaa !52, !noalias !56
  %361 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 2
  store float -1.000000e+00, float* %361, align 4, !tbaa !52, !noalias !56
  %362 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 0
  store float -1.000000e+00, float* %362, align 4, !tbaa !52, !noalias !56
  %363 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 1
  store float -1.000000e+00, float* %363, align 4, !tbaa !52, !noalias !56
  %364 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 2
  store float -1.000000e+00, float* %364, align 4, !tbaa !52, !noalias !56
  %365 = icmp sgt i32 %224, 0
  br i1 %365, label %366, label %427

; <label>:366                                     ; preds = %354
  br label %367

; <label>:367                                     ; preds = %416, %366
  %368 = phi i32 [ %417, %416 ], [ 0, %366 ]
  %369 = phi i32 [ %418, %416 ], [ 0, %366 ]
  %370 = add nuw i32 %369, 171
  %371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 %370)  ; CBufferLoadLegacy(handle,regIndex)
  %372 = extractvalue %dx.types.CBufRet.f32 %371, 0
  %373 = extractvalue %dx.types.CBufRet.f32 %371, 1
  %374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %390, label %391, label %406, !dx.controlflow.hints !43

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
  br i1 %409, label %410, label %416, !dx.controlflow.hints !68

; <label>:410                                     ; preds = %406
  %411 = call float @dx.op.binary.f32(i32 35, float %355, float %408)  ; FMax(a,b)
  %412 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 %369
  store float %411, float* %412, align 4, !tbaa !52, !noalias !56
  %413 = call float @dx.op.binary.f32(i32 35, float %355, float %407)  ; FMax(a,b)
  %414 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 %369
  store float %413, float* %414, align 4, !tbaa !52, !noalias !56
  %415 = add nsw i32 %368, 1
  br label %416

; <label>:416                                     ; preds = %410, %406
  %417 = phi i32 [ %415, %410 ], [ %368, %406 ]
  %418 = add nuw nsw i32 %369, 1
  %419 = icmp eq i32 %418, %224
  br i1 %419, label %420, label %367

; <label>:420                                     ; preds = %416
  %421 = load float, float* %361, align 4, !tbaa !52, !alias.scope !69, !noalias !72
  %422 = load float, float* %360, align 4, !tbaa !52, !alias.scope !75, !noalias !76
  %423 = load float, float* %359, align 4, !tbaa !52, !alias.scope !77, !noalias !78
  %424 = load float, float* %364, align 4, !tbaa !52, !alias.scope !79, !noalias !82
  %425 = load float, float* %363, align 4, !tbaa !52, !alias.scope !85, !noalias !86
  %426 = load float, float* %362, align 4, !tbaa !52, !alias.scope !87, !noalias !88
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
  store float %436, float* %359, align 4, !tbaa !52, !alias.scope !77, !noalias !78
  store float %440, float* %360, align 4, !tbaa !52, !alias.scope !75, !noalias !76
  store float %442, float* %361, align 4, !tbaa !52, !alias.scope !69, !noalias !72
  %443 = call float @dx.op.binary.f32(i32 36, float %429, float %430)  ; FMin(a,b)
  %444 = call float @dx.op.binary.f32(i32 36, float %428, float %443)  ; FMin(a,b)
  %445 = call float @dx.op.binary.f32(i32 35, float %428, float %429)  ; FMax(a,b)
  %446 = call float @dx.op.binary.f32(i32 36, float %445, float %430)  ; FMin(a,b)
  %447 = call float @dx.op.binary.f32(i32 36, float %428, float %429)  ; FMin(a,b)
  %448 = call float @dx.op.binary.f32(i32 35, float %447, float %446)  ; FMax(a,b)
  %449 = call float @dx.op.binary.f32(i32 35, float %429, float %430)  ; FMax(a,b)
  %450 = call float @dx.op.binary.f32(i32 35, float %428, float %449)  ; FMax(a,b)
  store float %444, float* %362, align 4, !tbaa !52, !alias.scope !87, !noalias !88
  store float %448, float* %363, align 4, !tbaa !52, !alias.scope !85, !noalias !86
  store float %450, float* %364, align 4, !tbaa !52, !alias.scope !79, !noalias !82
  %451 = sub nsw i32 3, %434
  %452 = icmp sgt i32 %451, 2
  br i1 %452, label %453, label %491, !dx.controlflow.hints !89

; <label>:453                                     ; preds = %427
  %454 = icmp eq i32 %222, 0
  %455 = fsub fast float %272, %356
  %456 = select i1 %454, float %455, float %356
  %457 = extractvalue %dx.types.CBufRet.f32 %212, 0
  %458 = extractvalue %dx.types.CBufRet.f32 %212, 1
  %459 = extractvalue %dx.types.CBufRet.f32 %212, 2
  %460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %461 = extractvalue %dx.types.CBufRet.f32 %460, 0
  %462 = extractvalue %dx.types.CBufRet.f32 %460, 1
  %463 = extractvalue %dx.types.CBufRet.f32 %460, 2
  %464 = extractvalue %dx.types.CBufRet.f32 %460, 3
  %465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %105, label %573, label %479, !dx.controlflow.hints !49

; <label>:479                                     ; preds = %453
  %480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
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
  %493 = load float, float* %492, align 4, !tbaa !52, !noalias !56
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
  %504 = load float, float* %503, align 4, !tbaa !52, !noalias !56
  %505 = icmp slt i32 %502, 2
  %506 = add nsw i32 %502, 1
  %507 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 %506
  %508 = load float, float* %507, align 4, !tbaa !52, !noalias !56
  %509 = select i1 %505, float %508, float %272
  %510 = call float @dx.op.binary.f32(i32 36, float %509, float %504)  ; FMin(a,b)
  %511 = call float @dx.op.binary.f32(i32 36, float %358, float %510)  ; FMin(a,b)
  %512 = icmp eq i32 %222, 0
  %513 = fadd fast float %511, %501
  %514 = fmul fast float %513, %184
  %515 = fadd fast float %514, %216
  br i1 %512, label %521, label %516, !dx.controlflow.hints !90

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
  %542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %543 = extractvalue %dx.types.CBufRet.f32 %542, 0
  %544 = extractvalue %dx.types.CBufRet.f32 %542, 1
  %545 = extractvalue %dx.types.CBufRet.f32 %542, 2
  %546 = extractvalue %dx.types.CBufRet.f32 %542, 3
  %547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %105, label %573, label %561, !dx.controlflow.hints !49

; <label>:561                                     ; preds = %534
  %562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
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
  %580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %581 = extractvalue %dx.types.CBufRet.f32 %580, 2
  %582 = fsub fast float %218, %581
  %583 = fcmp fast olt float %579, -2.000000e+01
  %584 = call float @dx.op.unary.f32(i32 21, float %579)  ; Exp(value)
  %585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %586 = extractvalue %dx.types.CBufRet.f32 %585, 2
  %587 = extractvalue %dx.types.CBufRet.f32 %585, 3
  %588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
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
  %626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %627 = extractvalue %dx.types.CBufRet.f32 %626, 1
  %628 = fsub fast float 1.000000e+00, %622
  %629 = fmul fast float %628, %199
  %630 = fmul fast float %629, %627
  %631 = fsub fast float %199, %630
  br i1 %177, label %632, label %664, !dx.controlflow.hints !91

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
  %671 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %23, float %670, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %672 = extractvalue %dx.types.ResRet.f32 %671, 0
  %673 = fsub fast float %666, %672
  %674 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %673)  ; FMax(a,b)
  %675 = fmul fast float %201, %159
  %676 = call float @dx.op.unary.f32(i32 6, float %675)  ; FAbs(value)
  %677 = fcmp fast ogt float %676, 0x3EB0C6F7A0000000
  br i1 %677, label %678, label %684, !dx.controlflow.hints !92

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
  br i1 %105, label %697, label %705, !dx.controlflow.hints !93

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
  br i1 %210, label %742, label %940, !dx.controlflow.hints !94

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
  br i1 %764, label %765, label %778, !dx.controlflow.hints !95

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
  br i1 %783, label %784, label %791, !dx.controlflow.hints !96

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
  br i1 %794, label %795, label %802, !dx.controlflow.hints !96

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
  br i1 %805, label %806, label %813, !dx.controlflow.hints !96

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
  br i1 %832, label %833, label %840, !dx.controlflow.hints !97

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
  br i1 %843, label %844, label %851, !dx.controlflow.hints !97

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
  br i1 %854, label %855, label %862, !dx.controlflow.hints !97

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
  br i1 %865, label %866, label %886, !dx.controlflow.hints !98

; <label>:866                                     ; preds = %862
  %867 = fsub fast float 1.000000e+00, %763
  %868 = fmul fast float %779, %867
  %869 = fmul fast float %780, %867
  %870 = fmul fast float %781, %867
  %871 = fmul fast float %782, %867
  %872 = fcmp fast une float %871, 0.000000e+00
  br i1 %872, label %873, label %924, !dx.controlflow.hints !99

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
  br i1 %894, label %895, label %902, !dx.controlflow.hints !97

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
  br i1 %905, label %906, label %913, !dx.controlflow.hints !97

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
  br i1 %916, label %917, label %924, !dx.controlflow.hints !97

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
  %949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %23, float %947, float %948, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %950 = extractvalue %dx.types.ResRet.f32 %949, 0
  %951 = extractvalue %dx.types.ResRet.f32 %949, 1
  %952 = extractvalue %dx.types.ResRet.f32 %949, 2
  %953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %954 = extractvalue %dx.types.CBufRet.f32 %953, 1
  %955 = fmul fast float %954, %950
  %956 = fmul fast float %954, %951
  %957 = fmul fast float %954, %952
  %958 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %23, float %947, float %948, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %978 = extractvalue %dx.types.CBufRet.f32 %977, 2
  %979 = extractvalue %dx.types.CBufRet.f32 %977, 3
  %980 = fmul fast float %978, %106
  %981 = fmul fast float %979, %107
  %982 = call float @dx.op.unary.f32(i32 7, float %980)  ; Saturate(value)
  %983 = call float @dx.op.unary.f32(i32 7, float %981)  ; Saturate(value)
  %984 = select i1 %103, i32 2, i32 0
  %985 = or i32 %984, 1
  %986 = uitofp i32 %985 to float
  %987 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %23, float %982, float %983, float %986, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %988 = extractvalue %dx.types.ResRet.f32 %987, 0
  %989 = extractvalue %dx.types.ResRet.f32 %987, 1
  %990 = extractvalue %dx.types.ResRet.f32 %987, 2
  %991 = extractvalue %dx.types.ResRet.f32 %987, 3
  %992 = add nuw nsw i32 %984, 2
  %993 = uitofp i32 %992 to float
  %994 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %23, float %982, float %983, float %993, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
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
  br i1 %1011, label %1012, label %1180, !dx.controlflow.hints !100

; <label>:1012                                    ; preds = %969
  %1013 = fadd fast float %976, -4.000000e+00
  %1014 = call float @dx.op.binary.f32(i32 35, float %1013, float 0.000000e+00)  ; FMax(a,b)
  %1015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1016 = extractvalue %dx.types.CBufRet.f32 %1015, 0
  %1017 = fadd fast float %1016, %1014
  %1018 = extractvalue %dx.types.CBufRet.f32 %1015, 2
  %1019 = fmul fast float %1017, %1018
  %1020 = call float @dx.op.unary.f32(i32 23, float %1019)  ; Log(value)
  %1021 = extractvalue %dx.types.CBufRet.f32 %1015, 3
  %1022 = fmul fast float %1021, %1020
  %1023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1050 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %22, float %982, float %983, float %1049, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1051 = extractvalue %dx.types.ResRet.f32 %1050, 0
  %1052 = extractvalue %dx.types.ResRet.f32 %1050, 1
  %1053 = extractvalue %dx.types.ResRet.f32 %1050, 2
  %1054 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %1055 = extractvalue %dx.types.CBufRet.i32 %1054, 0
  %1056 = extractvalue %dx.types.CBufRet.i32 %1054, 1
  %1057 = uitofp i32 %1055 to float
  %1058 = uitofp i32 %1056 to float
  %1059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1132 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %1125, float %1131, float %1049, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1133 = extractvalue %dx.types.ResRet.f32 %1132, 0
  %1134 = extractvalue %dx.types.ResRet.f32 %1132, 1
  %1135 = extractvalue %dx.types.ResRet.f32 %1132, 2
  %1136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %1127, float %1131, float %1049, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1137 = extractvalue %dx.types.ResRet.f32 %1136, 0
  %1138 = extractvalue %dx.types.ResRet.f32 %1136, 1
  %1139 = extractvalue %dx.types.ResRet.f32 %1136, 2
  %1140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %1125, float %1129, float %1049, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1141 = extractvalue %dx.types.ResRet.f32 %1140, 0
  %1142 = extractvalue %dx.types.ResRet.f32 %1140, 1
  %1143 = extractvalue %dx.types.ResRet.f32 %1140, 2
  %1144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %1127, float %1129, float %1049, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %1175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1199 = extractvalue %dx.types.CBufRet.f32 %1198, 2
  %1200 = fmul fast float %1199, 0x3FE3C6EF40000000
  %1201 = frem fast float %52, 2.560000e+02
  %1202 = frem fast float %53, 2.560000e+02
  %1203 = fptoui float %1201 to i32
  %1204 = fptoui float %1202 to i32
  %1205 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %1203, i32 %1204, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1206 = extractvalue %dx.types.ResRet.f32 %1205, 0
  %1207 = fadd fast float %1206, %1200
  %1208 = call float @dx.op.unary.f32(i32 22, float %1207)  ; Frc(value)
  %1209 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %50, i32 %51, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1210 = extractvalue %dx.types.ResRet.f32 %1209, 0
  %1211 = extractvalue %dx.types.ResRet.f32 %1209, 1
  %1212 = extractvalue %dx.types.ResRet.f32 %1209, 2
  %1213 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %50, i32 %51, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1214 = extractvalue %dx.types.ResRet.f32 %1213, 0
  %1215 = extractvalue %dx.types.ResRet.f32 %1213, 1
  %1216 = extractvalue %dx.types.ResRet.f32 %1213, 2
  %1217 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %50, i32 %51, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1218 = extractvalue %dx.types.ResRet.f32 %1217, 0
  %1219 = extractvalue %dx.types.ResRet.f32 %1217, 1
  %1220 = extractvalue %dx.types.ResRet.f32 %1217, 2
  %1221 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %50, i32 %51, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1222 = extractvalue %dx.types.ResRet.f32 %1221, 0
  %1223 = extractvalue %dx.types.ResRet.f32 %1221, 1
  %1224 = call float @dx.op.binary.f32(i32 35, float %1222, float %1223)  ; FMax(a,b)
  %1225 = fcmp fast ult float %1224, 0x3F70101020000000
  br i1 %1225, label %1457, label %1226, !dx.controlflow.hints !101

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
  %1255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1382 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %23, float %1380, float %1381, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1383 = extractvalue %dx.types.ResRet.f32 %1382, 0
  %1384 = extractvalue %dx.types.ResRet.f32 %1382, 1
  %1385 = extractvalue %dx.types.ResRet.f32 %1382, 2
  %1386 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %23, float %1380, float %1381, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1387 = extractvalue %dx.types.ResRet.f32 %1386, 0
  %1388 = fcmp fast ogt float %1387, -1.000000e+00
  %1389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %1433, label %1434, label %1328, !llvm.loop !102

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
  %1464 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1465 = extractvalue %dx.types.CBufRet.i32 %1464, 3
  %1466 = and i32 %1465, 3
  %1467 = icmp ne i32 %1466, 0
  %1468 = and i32 %1465, 4
  %1469 = icmp ne i32 %1468, 0
  %1470 = and i1 %1467, %1469
  br i1 %1470, label %1471, label %1478, !dx.controlflow.hints !104

; <label>:1471                                    ; preds = %1457
  %1472 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %23, float %1196, float %1197, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1473 = extractvalue %dx.types.ResRet.f32 %1472, 0
  %1474 = fsub fast float 1.000000e+00, %1473
  %1475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1492 = extractvalue %dx.types.CBufRet.f32 %1491, 0
  br i1 %1482, label %1493, label %1512, !dx.controlflow.hints !105

; <label>:1493                                    ; preds = %1481
  %1494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1495 = extractvalue %dx.types.CBufRet.f32 %1494, 3
  %1496 = call float @dx.op.dot3.f32(i32 55, float %1187, float %1188, float %1189, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1497 = fmul fast float %1496, %1488
  %1498 = call float @dx.op.dot3.f32(i32 55, float %1193, float %1194, float %1195, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1499 = fmul fast float %1492, %1498
  %1500 = fadd fast float %1499, %1497
  br i1 %1470, label %1501, label %1507, !dx.controlflow.hints !106

; <label>:1501                                    ; preds = %1493
  %1502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1527 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1538, i32 undef)  ; BufferLoad(srv,index,wot)
  %1544 = extractvalue %dx.types.ResRet.i32 %1543, 0
  %1545 = and i32 %1544, %1542
  %1546 = icmp eq i32 %1545, 0
  br i1 %1546, label %1562, label %1547, !dx.controlflow.hints !107

; <label>:1547                                    ; preds = %1522
  %1548 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %50, i32 %51, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1549 = extractvalue %dx.types.ResRet.f32 %1548, 0
  %1550 = fcmp fast ogt float %1549, 0.000000e+00
  br i1 %1550, label %1551, label %1562, !dx.controlflow.hints !108

; <label>:1551                                    ; preds = %1547
  %1552 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %50, i32 %51, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1553 = extractvalue %dx.types.ResRet.f32 %1552, 0
  %1554 = extractvalue %dx.types.ResRet.f32 %1552, 1
  %1555 = extractvalue %dx.types.ResRet.f32 %1552, 2
  %1556 = extractvalue %dx.types.ResRet.f32 %1552, 3
  %1557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
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
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %50, i32 %51, i32 undef, float %1584, float %1595, float %1606, float %1584, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1607 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1608 = extractvalue %dx.types.CBufRet.i32 %1607, 0
  %1609 = and i32 %1608, 1
  %1610 = icmp eq i32 %1609, 0
  br i1 %1610, label %1614, label %1611, !dx.controlflow.hints !109

; <label>:1611                                    ; preds = %1562
  %1612 = and i32 %48, 2147483647
  %1613 = and i32 %49, 2147483647
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1612, i32 %1613, i32 undef, float %1488, float %1489, float %1490, float %1488, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1614

; <label>:1614                                    ; preds = %1611, %1562
  br label %1615

; <label>:1615                                    ; preds = %1634, %1614
  %1616 = phi i32 [ %1621, %1634 ], [ 14, %1614 ]
  %1617 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1616)  ; FirstbitLo(value)
  %1618 = and i32 %1617, 31
  %1619 = shl i32 1, %1618
  %1620 = xor i32 %1619, -1
  %1621 = and i32 %1616, %1620
  %1622 = and i32 %1617, 1
  %1623 = lshr i32 %1617, 1
  %1624 = or i32 %1622, %50
  %1625 = add i32 %1623, %51
  %1626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1627 = extractvalue %dx.types.CBufRet.f32 %1626, 0
  %1628 = fptoui float %1627 to i32
  %1629 = icmp uge i32 %1624, %1628
  %1630 = extractvalue %dx.types.CBufRet.f32 %1626, 1
  %1631 = fptoui float %1630 to i32
  %1632 = icmp uge i32 %1625, %1631
  %1633 = or i1 %1629, %1632
  br i1 %1633, label %1634, label %1636, !dx.controlflow.hints !110

; <label>:1634                                    ; preds = %3160, %3107, %1615
  %1635 = icmp eq i32 %1621, 0
  br i1 %1635, label %3163, label %1615

; <label>:1636                                    ; preds = %1615
  %1637 = uitofp i32 %1624 to float
  %1638 = uitofp i32 %1625 to float
  %1639 = fadd fast float %1637, 5.000000e-01
  %1640 = fadd fast float %1638, 5.000000e-01
  %1641 = extractvalue %dx.types.CBufRet.f32 %1626, 2
  %1642 = extractvalue %dx.types.CBufRet.f32 %1626, 3
  %1643 = fmul fast float %1641, %1639
  %1644 = fmul fast float %1642, %1640
  %1645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1646 = extractvalue %dx.types.CBufRet.f32 %1645, 2
  %1647 = fmul fast float %1646, 0x3FE3C6EF40000000
  %1648 = frem fast float %1637, 2.560000e+02
  %1649 = frem fast float %1638, 2.560000e+02
  %1650 = fptoui float %1648 to i32
  %1651 = fptoui float %1649 to i32
  %1652 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %1650, i32 %1651, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1653 = extractvalue %dx.types.ResRet.f32 %1652, 0
  %1654 = fadd fast float %1653, %1647
  %1655 = call float @dx.op.unary.f32(i32 22, float %1654)  ; Frc(value)
  %1656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1657 = extractvalue %dx.types.ResRet.i32 %1656, 0
  %1658 = and i32 %1657, 114688
  %1659 = icmp ne i32 %1658, 0
  %1660 = select i1 %1659, i32 %1624, i32 0
  %1661 = select i1 %1659, i32 %1625, i32 0
  %1662 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %1660, i32 %1661, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1663 = extractvalue %dx.types.ResRet.f32 %1662, 0
  %1664 = fmul fast float %1663, 2.550000e+02
  %1665 = fptoui float %1664 to i32
  %1666 = icmp eq i32 %1665, 3
  %1667 = and i1 %1659, %1666
  %1668 = getelementptr [4 x float], [4 x float]* %35, i32 0, i32 %1617
  %1669 = load float, float* %1668, align 4, !tbaa !52, !noalias !111
  %1670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1671 = extractvalue %dx.types.CBufRet.f32 %1670, 3
  %1672 = fcmp fast oge float %1669, %1671
  br i1 %1667, label %2532, label %1673, !dx.controlflow.hints !40

; <label>:1673                                    ; preds = %1636
  %1674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 170)  ; CBufferLoadLegacy(handle,regIndex)
  %1675 = extractvalue %dx.types.CBufRet.f32 %1674, 0
  %1676 = select i1 %1672, float %1675, float %1669
  %1677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1678 = extractvalue %dx.types.CBufRet.f32 %1677, 2
  %1679 = extractvalue %dx.types.CBufRet.f32 %1677, 3
  %1680 = fmul fast float %1639, 2.000000e+00
  %1681 = fmul fast float %1680, %1678
  %1682 = fmul fast float %1640, 2.000000e+00
  %1683 = fmul fast float %1682, %1679
  %1684 = fsub fast float 1.000000e+00, %1681
  %1685 = fsub fast float 1.000000e+00, %1683
  %1686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1687 = extractvalue %dx.types.CBufRet.f32 %1686, 0
  %1688 = extractvalue %dx.types.CBufRet.f32 %1686, 1
  %1689 = extractvalue %dx.types.CBufRet.f32 %1686, 2
  %1690 = fmul fast float %1684, %1687
  %1691 = fmul fast float %1684, %1688
  %1692 = fmul fast float %1684, %1689
  %1693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1694 = extractvalue %dx.types.CBufRet.f32 %1693, 0
  %1695 = extractvalue %dx.types.CBufRet.f32 %1693, 1
  %1696 = extractvalue %dx.types.CBufRet.f32 %1693, 2
  %1697 = fmul fast float %1685, %1694
  %1698 = fmul fast float %1685, %1695
  %1699 = fmul fast float %1685, %1696
  %1700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1701 = extractvalue %dx.types.CBufRet.f32 %1700, 0
  %1702 = extractvalue %dx.types.CBufRet.f32 %1700, 1
  %1703 = extractvalue %dx.types.CBufRet.f32 %1700, 2
  %1704 = fadd fast float %1697, %1701
  %1705 = fadd fast float %1704, %1690
  %1706 = fadd fast float %1698, %1702
  %1707 = fadd fast float %1706, %1691
  %1708 = fadd fast float %1699, %1703
  %1709 = fadd fast float %1708, %1692
  %1710 = fmul fast float %1705, %1676
  %1711 = fmul fast float %1707, %1676
  %1712 = fmul fast float %1709, %1676
  %1713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 163)  ; CBufferLoadLegacy(handle,regIndex)
  %1714 = extractvalue %dx.types.CBufRet.f32 %1713, 0
  %1715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1716 = extractvalue %dx.types.CBufRet.f32 %1715, 0
  %1717 = extractvalue %dx.types.CBufRet.f32 %1715, 1
  %1718 = extractvalue %dx.types.CBufRet.f32 %1715, 2
  %1719 = extractvalue %dx.types.CBufRet.f32 %1715, 3
  %1720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1721 = extractvalue %dx.types.CBufRet.f32 %1720, 0
  %1722 = extractvalue %dx.types.CBufRet.f32 %1720, 1
  %1723 = extractvalue %dx.types.CBufRet.f32 %1720, 2
  %1724 = extractvalue %dx.types.CBufRet.f32 %1720, 3
  %1725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1726 = extractvalue %dx.types.CBufRet.f32 %1725, 0
  %1727 = extractvalue %dx.types.CBufRet.f32 %1725, 1
  %1728 = extractvalue %dx.types.CBufRet.f32 %1725, 2
  %1729 = extractvalue %dx.types.CBufRet.f32 %1725, 3
  %1730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1731 = extractvalue %dx.types.CBufRet.f32 %1730, 0
  %1732 = extractvalue %dx.types.CBufRet.f32 %1730, 1
  %1733 = extractvalue %dx.types.CBufRet.f32 %1730, 2
  %1734 = extractvalue %dx.types.CBufRet.f32 %1730, 3
  %1735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1736 = extractvalue %dx.types.CBufRet.f32 %1735, 3
  %1737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1738 = extractvalue %dx.types.CBufRet.f32 %1737, 3
  %1739 = extractvalue %dx.types.CBufRet.f32 %1737, 0
  %1740 = extractvalue %dx.types.CBufRet.f32 %1737, 1
  %1741 = extractvalue %dx.types.CBufRet.f32 %1737, 2
  %1742 = fcmp fast olt float %1741, -5.000000e-01
  %1743 = extractvalue %dx.types.CBufRet.f32 %1713, 3
  %1744 = call float @dx.op.dot3.f32(i32 55, float %1710, float %1711, float %1712, float %1710, float %1711, float %1712)  ; Dot3(ax,ay,az,bx,by,bz)
  %1745 = call float @dx.op.unary.f32(i32 25, float %1744)  ; Rsqrt(value)
  %1746 = fmul fast float %1745, %1744
  %1747 = fmul fast float %1745, %1710
  %1748 = fmul fast float %1745, %1711
  %1749 = fmul fast float %1745, %1712
  %1750 = fadd fast float %1746, %1719
  br i1 %1672, label %1751, label %1763, !dx.controlflow.hints !41

; <label>:1751                                    ; preds = %1673
  %1752 = extractvalue %dx.types.CBufRet.f32 %1713, 2
  %1753 = extractvalue %dx.types.CBufRet.f32 %1713, 1
  %1754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 187)  ; CBufferLoadLegacy(handle,regIndex)
  %1755 = extractvalue %dx.types.CBufRet.f32 %1754, 1
  %1756 = extractvalue %dx.types.CBufRet.f32 %1754, 0
  %1757 = call float @dx.op.binary.f32(i32 35, float %1749, float %1756)  ; FMax(a,b)
  %1758 = call float @dx.op.binary.f32(i32 36, float %1757, float %1755)  ; FMin(a,b)
  %1759 = fmul fast float %1758, %1753
  %1760 = fadd fast float %1759, %1752
  %1761 = call float @dx.op.unary.f32(i32 7, float %1760)  ; Saturate(value)
  %1762 = fmul fast float %1749, %1714
  br label %1763

; <label>:1763                                    ; preds = %1751, %1673
  %1764 = phi float [ %1714, %1751 ], [ %1750, %1673 ]
  %1765 = phi float [ %1761, %1751 ], [ 0.000000e+00, %1673 ]
  %1766 = phi float [ %1762, %1751 ], [ %1712, %1673 ]
  %1767 = call float @dx.op.dot3.f32(i32 55, float %1747, float %1748, float %1749, float %1716, float %1717, float %1718)  ; Dot3(ax,ay,az,bx,by,bz)
  %1768 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1769 = extractvalue %dx.types.CBufRet.i32 %1768, 1
  %1770 = and i32 %1769, 1
  %1771 = icmp ne i32 %1770, 0
  %1772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1773 = extractvalue %dx.types.CBufRet.f32 %1772, 2
  %1774 = fcmp fast ogt float %1773, 0.000000e+00
  %1775 = and i1 %1771, %1774
  br i1 %1775, label %1776, label %2185, !dx.controlflow.hints !42

; <label>:1776                                    ; preds = %1763
  %1777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1778 = extractvalue %dx.types.CBufRet.f32 %1777, 3
  %1779 = select i1 %1672, float %1778, float %1746
  %1780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1781 = extractvalue %dx.types.CBufRet.f32 %1780, 3
  %1782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1783 = extractvalue %dx.types.CBufRet.f32 %1782, 2
  %1784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1785 = extractvalue %dx.types.CBufRet.f32 %1784, 2
  %1786 = fsub fast float %1783, %1785
  %1787 = and i32 %1769, 2
  %1788 = extractvalue %dx.types.CBufRet.i32 %1768, 0
  %1789 = call i32 @dx.op.binary.i32(i32 40, i32 %1788, i32 3)  ; UMin(a,b)
  %1790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1791 = extractvalue %dx.types.CBufRet.f32 %1790, 0
  %1792 = extractvalue %dx.types.CBufRet.f32 %1790, 1
  %1793 = extractvalue %dx.types.CBufRet.f32 %1784, 0
  %1794 = extractvalue %dx.types.CBufRet.f32 %1784, 1
  %1795 = fsub fast float %1791, %1793
  %1796 = fsub fast float %1792, %1794
  %1797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1798 = extractvalue %dx.types.CBufRet.f32 %1797, 0
  %1799 = fcmp fast ogt float %1798, 0.000000e+00
  %1800 = fsub fast float -0.000000e+00, %1795
  %1801 = fsub fast float -0.000000e+00, %1796
  %1802 = call float @dx.op.dot2.f32(i32 54, float %1747, float %1748, float %1747, float %1748)  ; Dot2(ax,ay,bx,by)
  %1803 = call float @dx.op.dot2.f32(i32 54, float %1747, float %1748, float %1800, float %1801)  ; Dot2(ax,ay,bx,by)
  %1804 = fmul fast float %1803, 2.000000e+00
  %1805 = call float @dx.op.dot2.f32(i32 54, float %1800, float %1801, float %1800, float %1801)  ; Dot2(ax,ay,bx,by)
  %1806 = fmul fast float %1798, %1798
  %1807 = fsub fast float %1805, %1806
  %1808 = fmul fast float %1804, %1804
  %1809 = fmul fast float %1802, 4.000000e+00
  %1810 = fmul fast float %1809, %1807
  %1811 = fsub fast float %1808, %1810
  %1812 = fcmp fast ogt float %1811, 0.000000e+00
  br i1 %1812, label %1813, label %1828, !dx.controlflow.hints !43

; <label>:1813                                    ; preds = %1776
  %1814 = fcmp fast ogt float %1804, 0.000000e+00
  %1815 = call float @dx.op.unary.f32(i32 24, float %1811)  ; Sqrt(value)
  %1816 = fsub fast float -0.000000e+00, %1815
  %1817 = select i1 %1814, float %1815, float %1816
  %1818 = fadd fast float %1817, %1804
  %1819 = fmul float %1818, -5.000000e-01
  %1820 = fdiv fast float %1819, %1802
  %1821 = call float @dx.op.binary.f32(i32 35, float %1820, float 0.000000e+00)  ; FMax(a,b)
  %1822 = call float @dx.op.binary.f32(i32 36, float %1779, float %1821)  ; FMin(a,b)
  %1823 = fdiv fast float %1807, %1819
  %1824 = call float @dx.op.binary.f32(i32 35, float %1823, float 0.000000e+00)  ; FMax(a,b)
  %1825 = call float @dx.op.binary.f32(i32 36, float %1779, float %1824)  ; FMin(a,b)
  %1826 = call float @dx.op.binary.f32(i32 36, float %1822, float %1825)  ; FMin(a,b)
  %1827 = call float @dx.op.binary.f32(i32 35, float %1822, float %1825)  ; FMax(a,b)
  br label %1828

; <label>:1828                                    ; preds = %1813, %1776
  %1829 = phi float [ %1827, %1813 ], [ -1.000000e+00, %1776 ]
  %1830 = phi float [ %1826, %1813 ], [ -1.000000e+00, %1776 ]
  %1831 = phi i1 [ true, %1813 ], [ false, %1776 ]
  %1832 = and i1 %1799, %1831
  br i1 %1832, label %1833, label %1835, !dx.controlflow.hints !44

; <label>:1833                                    ; preds = %1828
  %1834 = fcmp fast oeq float %1830, %1829
  br i1 %1834, label %2138, label %1836, !dx.controlflow.hints !45

; <label>:1835                                    ; preds = %1828
  br i1 %1799, label %2138, label %1836, !dx.controlflow.hints !46

; <label>:1836                                    ; preds = %1835, %1833
  %1837 = phi float [ %1779, %1835 ], [ %1829, %1833 ]
  %1838 = phi float [ 0.000000e+00, %1835 ], [ %1830, %1833 ]
  %1839 = icmp ne i32 %1787, 0
  %1840 = fmul fast float %1837, %1749
  %1841 = fadd fast float %1840, %1781
  %1842 = fmul fast float %1841, %1837
  %1843 = select i1 %1839, float 0.000000e+00, float %1842
  %1844 = fcmp fast oeq float %1749, 0.000000e+00
  %1845 = fdiv fast float %1786, %1749
  %1846 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1845)  ; FMax(a,b)
  %1847 = select i1 %1844, float %1837, float %1846
  %1848 = call float @dx.op.binary.f32(i32 36, float %1837, float %1847)  ; FMin(a,b)
  %1849 = fcmp fast ogt float %1749, 0.000000e+00
  %1850 = fcmp fast olt float %1786, 0.000000e+00
  br i1 %1849, label %1851, label %1908, !dx.controlflow.hints !47

; <label>:1851                                    ; preds = %1836
  %1852 = icmp eq i32 %1787, 0
  br i1 %1850, label %1853, label %1897, !dx.controlflow.hints !48

; <label>:1853                                    ; preds = %1851
  %1854 = select i1 %1852, float %1837, float 0.000000e+00
  %1855 = fsub fast float -0.000000e+00, %1854
  %1856 = call float @dx.op.unary.f32(i32 6, float %1855)  ; FAbs(value)
  %1857 = fmul fast float %1854, %1749
  %1858 = fadd fast float %1857, %1781
  %1859 = fmul fast float %1856, %1858
  %1860 = fsub fast float %1843, %1859
  %1861 = fsub fast float %1837, %1856
  %1862 = select i1 %1852, float %1861, float 0.000000e+00
  %1863 = extractvalue %dx.types.CBufRet.f32 %1777, 0
  %1864 = extractvalue %dx.types.CBufRet.f32 %1777, 1
  %1865 = extractvalue %dx.types.CBufRet.f32 %1777, 2
  %1866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1867 = extractvalue %dx.types.CBufRet.f32 %1866, 0
  %1868 = extractvalue %dx.types.CBufRet.f32 %1866, 1
  %1869 = extractvalue %dx.types.CBufRet.f32 %1866, 2
  %1870 = extractvalue %dx.types.CBufRet.f32 %1866, 3
  %1871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1872 = extractvalue %dx.types.CBufRet.f32 %1871, 3
  %1873 = call float @dx.op.binary.f32(i32 36, float %1860, float %1872)  ; FMin(a,b)
  %1874 = fmul fast float %1870, %1862
  %1875 = call float @dx.op.unary.f32(i32 7, float %1874)  ; Saturate(value)
  %1876 = fsub fast float %1867, %1863
  %1877 = fsub fast float %1868, %1864
  %1878 = fsub fast float %1869, %1865
  %1879 = fmul fast float %1875, %1876
  %1880 = fmul fast float %1875, %1877
  %1881 = fmul fast float %1875, %1878
  %1882 = fadd fast float %1879, %1863
  %1883 = fadd fast float %1880, %1864
  %1884 = fadd fast float %1881, %1865
  br i1 %1672, label %2138, label %1885, !dx.controlflow.hints !49

; <label>:1885                                    ; preds = %1853
  %1886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1887 = extractvalue %dx.types.CBufRet.f32 %1886, 0
  %1888 = extractvalue %dx.types.CBufRet.f32 %1886, 1
  %1889 = fadd fast float %1888, %1887
  %1890 = call float @dx.op.unary.f32(i32 7, float %1889)  ; Saturate(value)
  %1891 = extractvalue %dx.types.CBufRet.f32 %1886, 2
  %1892 = extractvalue %dx.types.CBufRet.f32 %1886, 3
  %1893 = fadd fast float %1892, %1891
  %1894 = call float @dx.op.unary.f32(i32 7, float %1893)  ; Saturate(value)
  %1895 = fmul fast float %1890, %1873
  %1896 = fmul fast float %1895, %1894
  br label %2138

; <label>:1897                                    ; preds = %1851
  br i1 %1852, label %1898, label %1919, !dx.controlflow.hints !50

; <label>:1898                                    ; preds = %1897
  %1899 = call float @dx.op.binary.f32(i32 36, float %1848, float %1838)  ; FMin(a,b)
  %1900 = fsub fast float %1848, %1899
  %1901 = fsub fast float %1900, %1837
  %1902 = call float @dx.op.unary.f32(i32 6, float %1901)  ; FAbs(value)
  %1903 = fadd fast float %1900, %1837
  %1904 = fmul fast float %1903, %1749
  %1905 = fadd fast float %1904, %1781
  %1906 = fmul fast float %1905, %1902
  %1907 = fsub fast float %1843, %1906
  br label %1919

; <label>:1908                                    ; preds = %1836
  br i1 %1850, label %1909, label %1919, !dx.controlflow.hints !51

; <label>:1909                                    ; preds = %1908
  %1910 = call float @dx.op.binary.f32(i32 35, float %1838, float %1848)  ; FMax(a,b)
  %1911 = icmp eq i32 %1787, 0
  %1912 = select i1 %1911, float %1848, float 0.000000e+00
  %1913 = fsub fast float -0.000000e+00, %1912
  %1914 = call float @dx.op.unary.f32(i32 6, float %1913)  ; FAbs(value)
  %1915 = fmul fast float %1912, %1749
  %1916 = fadd fast float %1915, %1781
  %1917 = fmul fast float %1914, %1916
  %1918 = fsub fast float %1843, %1917
  br label %1919

; <label>:1919                                    ; preds = %1909, %1908, %1898, %1897
  %1920 = phi float [ %1838, %1897 ], [ %1838, %1898 ], [ %1910, %1909 ], [ %1838, %1908 ]
  %1921 = phi float [ 0.000000e+00, %1897 ], [ %1902, %1898 ], [ %1914, %1909 ], [ 0.000000e+00, %1908 ]
  %1922 = phi float [ %1843, %1897 ], [ %1907, %1898 ], [ %1918, %1909 ], [ %1843, %1908 ]
  %1923 = phi float [ %1848, %1897 ], [ %1848, %1898 ], [ %1837, %1909 ], [ %1837, %1908 ]
  %1924 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 0
  store float -1.000000e+00, float* %1924, align 4, !tbaa !52, !noalias !112
  %1925 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 1
  store float -1.000000e+00, float* %1925, align 4, !tbaa !52, !noalias !112
  %1926 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 2
  store float -1.000000e+00, float* %1926, align 4, !tbaa !52, !noalias !112
  %1927 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 0
  store float -1.000000e+00, float* %1927, align 4, !tbaa !52, !noalias !112
  %1928 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 1
  store float -1.000000e+00, float* %1928, align 4, !tbaa !52, !noalias !112
  %1929 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 2
  store float -1.000000e+00, float* %1929, align 4, !tbaa !52, !noalias !112
  %1930 = icmp sgt i32 %1789, 0
  br i1 %1930, label %1931, label %1992

; <label>:1931                                    ; preds = %1919
  br label %1932

; <label>:1932                                    ; preds = %1981, %1931
  %1933 = phi i32 [ %1982, %1981 ], [ 0, %1931 ]
  %1934 = phi i32 [ %1983, %1981 ], [ 0, %1931 ]
  %1935 = add nuw i32 %1934, 171
  %1936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 %1935)  ; CBufferLoadLegacy(handle,regIndex)
  %1937 = extractvalue %dx.types.CBufRet.f32 %1936, 0
  %1938 = extractvalue %dx.types.CBufRet.f32 %1936, 1
  %1939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1940 = extractvalue %dx.types.CBufRet.f32 %1939, 0
  %1941 = extractvalue %dx.types.CBufRet.f32 %1939, 1
  %1942 = fsub fast float %1937, %1940
  %1943 = fsub fast float %1938, %1941
  %1944 = extractvalue %dx.types.CBufRet.f32 %1936, 2
  %1945 = fsub fast float -0.000000e+00, %1942
  %1946 = fsub fast float -0.000000e+00, %1943
  %1947 = call float @dx.op.dot2.f32(i32 54, float %1747, float %1748, float %1945, float %1946)  ; Dot2(ax,ay,bx,by)
  %1948 = fmul fast float %1947, 2.000000e+00
  %1949 = call float @dx.op.dot2.f32(i32 54, float %1945, float %1946, float %1945, float %1946)  ; Dot2(ax,ay,bx,by)
  %1950 = fmul fast float %1944, %1944
  %1951 = fsub fast float %1949, %1950
  %1952 = fmul fast float %1948, %1948
  %1953 = fmul fast float %1809, %1951
  %1954 = fsub fast float %1952, %1953
  %1955 = fcmp fast ogt float %1954, 0.000000e+00
  br i1 %1955, label %1956, label %1971, !dx.controlflow.hints !43

; <label>:1956                                    ; preds = %1932
  %1957 = fcmp fast ogt float %1948, 0.000000e+00
  %1958 = call float @dx.op.unary.f32(i32 24, float %1954)  ; Sqrt(value)
  %1959 = fsub fast float -0.000000e+00, %1958
  %1960 = select i1 %1957, float %1958, float %1959
  %1961 = fadd fast float %1960, %1948
  %1962 = fmul float %1961, -5.000000e-01
  %1963 = fdiv fast float %1962, %1802
  %1964 = call float @dx.op.binary.f32(i32 35, float %1963, float 0.000000e+00)  ; FMax(a,b)
  %1965 = call float @dx.op.binary.f32(i32 36, float %1837, float %1964)  ; FMin(a,b)
  %1966 = fdiv fast float %1951, %1962
  %1967 = call float @dx.op.binary.f32(i32 35, float %1966, float 0.000000e+00)  ; FMax(a,b)
  %1968 = call float @dx.op.binary.f32(i32 36, float %1837, float %1967)  ; FMin(a,b)
  %1969 = call float @dx.op.binary.f32(i32 36, float %1965, float %1968)  ; FMin(a,b)
  %1970 = call float @dx.op.binary.f32(i32 35, float %1965, float %1968)  ; FMax(a,b)
  br label %1971

; <label>:1971                                    ; preds = %1956, %1932
  %1972 = phi float [ %1970, %1956 ], [ -1.000000e+00, %1932 ]
  %1973 = phi float [ %1969, %1956 ], [ -1.000000e+00, %1932 ]
  %1974 = phi i1 [ true, %1956 ], [ false, %1932 ]
  br i1 %1974, label %1975, label %1981, !dx.controlflow.hints !68

; <label>:1975                                    ; preds = %1971
  %1976 = call float @dx.op.binary.f32(i32 35, float %1920, float %1973)  ; FMax(a,b)
  %1977 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %1934
  store float %1976, float* %1977, align 4, !tbaa !52, !noalias !112
  %1978 = call float @dx.op.binary.f32(i32 35, float %1920, float %1972)  ; FMax(a,b)
  %1979 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %1934
  store float %1978, float* %1979, align 4, !tbaa !52, !noalias !112
  %1980 = add nsw i32 %1933, 1
  br label %1981

; <label>:1981                                    ; preds = %1975, %1971
  %1982 = phi i32 [ %1980, %1975 ], [ %1933, %1971 ]
  %1983 = add nuw nsw i32 %1934, 1
  %1984 = icmp eq i32 %1983, %1789
  br i1 %1984, label %1985, label %1932

; <label>:1985                                    ; preds = %1981
  %1986 = load float, float* %1926, align 4, !tbaa !52, !alias.scope !122, !noalias !125
  %1987 = load float, float* %1925, align 4, !tbaa !52, !alias.scope !128, !noalias !129
  %1988 = load float, float* %1924, align 4, !tbaa !52, !alias.scope !130, !noalias !131
  %1989 = load float, float* %1929, align 4, !tbaa !52, !alias.scope !132, !noalias !135
  %1990 = load float, float* %1928, align 4, !tbaa !52, !alias.scope !138, !noalias !139
  %1991 = load float, float* %1927, align 4, !tbaa !52, !alias.scope !140, !noalias !141
  br label %1992

; <label>:1992                                    ; preds = %1985, %1919
  %1993 = phi float [ -1.000000e+00, %1919 ], [ %1991, %1985 ]
  %1994 = phi float [ -1.000000e+00, %1919 ], [ %1990, %1985 ]
  %1995 = phi float [ -1.000000e+00, %1919 ], [ %1989, %1985 ]
  %1996 = phi float [ -1.000000e+00, %1919 ], [ %1988, %1985 ]
  %1997 = phi float [ -1.000000e+00, %1919 ], [ %1987, %1985 ]
  %1998 = phi float [ -1.000000e+00, %1919 ], [ %1986, %1985 ]
  %1999 = phi i32 [ 0, %1919 ], [ %1982, %1985 ]
  %2000 = call float @dx.op.binary.f32(i32 36, float %1997, float %1998)  ; FMin(a,b)
  %2001 = call float @dx.op.binary.f32(i32 36, float %1996, float %2000)  ; FMin(a,b)
  %2002 = call float @dx.op.binary.f32(i32 35, float %1996, float %1997)  ; FMax(a,b)
  %2003 = call float @dx.op.binary.f32(i32 36, float %2002, float %1998)  ; FMin(a,b)
  %2004 = call float @dx.op.binary.f32(i32 36, float %1996, float %1997)  ; FMin(a,b)
  %2005 = call float @dx.op.binary.f32(i32 35, float %2004, float %2003)  ; FMax(a,b)
  %2006 = call float @dx.op.binary.f32(i32 35, float %1997, float %1998)  ; FMax(a,b)
  %2007 = call float @dx.op.binary.f32(i32 35, float %1996, float %2006)  ; FMax(a,b)
  store float %2001, float* %1924, align 4, !tbaa !52, !alias.scope !130, !noalias !131
  store float %2005, float* %1925, align 4, !tbaa !52, !alias.scope !128, !noalias !129
  store float %2007, float* %1926, align 4, !tbaa !52, !alias.scope !122, !noalias !125
  %2008 = call float @dx.op.binary.f32(i32 36, float %1994, float %1995)  ; FMin(a,b)
  %2009 = call float @dx.op.binary.f32(i32 36, float %1993, float %2008)  ; FMin(a,b)
  %2010 = call float @dx.op.binary.f32(i32 35, float %1993, float %1994)  ; FMax(a,b)
  %2011 = call float @dx.op.binary.f32(i32 36, float %2010, float %1995)  ; FMin(a,b)
  %2012 = call float @dx.op.binary.f32(i32 36, float %1993, float %1994)  ; FMin(a,b)
  %2013 = call float @dx.op.binary.f32(i32 35, float %2012, float %2011)  ; FMax(a,b)
  %2014 = call float @dx.op.binary.f32(i32 35, float %1994, float %1995)  ; FMax(a,b)
  %2015 = call float @dx.op.binary.f32(i32 35, float %1993, float %2014)  ; FMax(a,b)
  store float %2009, float* %1927, align 4, !tbaa !52, !alias.scope !140, !noalias !141
  store float %2013, float* %1928, align 4, !tbaa !52, !alias.scope !138, !noalias !139
  store float %2015, float* %1929, align 4, !tbaa !52, !alias.scope !132, !noalias !135
  %2016 = sub nsw i32 3, %1999
  %2017 = icmp sgt i32 %2016, 2
  br i1 %2017, label %2018, label %2056, !dx.controlflow.hints !89

; <label>:2018                                    ; preds = %1992
  %2019 = icmp eq i32 %1787, 0
  %2020 = fsub fast float %1837, %1921
  %2021 = select i1 %2019, float %2020, float %1921
  %2022 = extractvalue %dx.types.CBufRet.f32 %1777, 0
  %2023 = extractvalue %dx.types.CBufRet.f32 %1777, 1
  %2024 = extractvalue %dx.types.CBufRet.f32 %1777, 2
  %2025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2026 = extractvalue %dx.types.CBufRet.f32 %2025, 0
  %2027 = extractvalue %dx.types.CBufRet.f32 %2025, 1
  %2028 = extractvalue %dx.types.CBufRet.f32 %2025, 2
  %2029 = extractvalue %dx.types.CBufRet.f32 %2025, 3
  %2030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2031 = extractvalue %dx.types.CBufRet.f32 %2030, 3
  %2032 = call float @dx.op.binary.f32(i32 36, float %1922, float %2031)  ; FMin(a,b)
  %2033 = fmul fast float %2029, %2021
  %2034 = call float @dx.op.unary.f32(i32 7, float %2033)  ; Saturate(value)
  %2035 = fsub fast float %2026, %2022
  %2036 = fsub fast float %2027, %2023
  %2037 = fsub fast float %2028, %2024
  %2038 = fmul fast float %2034, %2035
  %2039 = fmul fast float %2034, %2036
  %2040 = fmul fast float %2034, %2037
  %2041 = fadd fast float %2038, %2022
  %2042 = fadd fast float %2039, %2023
  %2043 = fadd fast float %2040, %2024
  br i1 %1672, label %2138, label %2044, !dx.controlflow.hints !49

; <label>:2044                                    ; preds = %2018
  %2045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2046 = extractvalue %dx.types.CBufRet.f32 %2045, 0
  %2047 = extractvalue %dx.types.CBufRet.f32 %2045, 1
  %2048 = fadd fast float %2047, %2046
  %2049 = call float @dx.op.unary.f32(i32 7, float %2048)  ; Saturate(value)
  %2050 = extractvalue %dx.types.CBufRet.f32 %2045, 2
  %2051 = extractvalue %dx.types.CBufRet.f32 %2045, 3
  %2052 = fadd fast float %2051, %2050
  %2053 = call float @dx.op.unary.f32(i32 7, float %2052)  ; Saturate(value)
  %2054 = fmul fast float %2049, %2032
  %2055 = fmul fast float %2054, %2053
  br label %2138

; <label>:2056                                    ; preds = %1992
  %2057 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %2016
  %2058 = load float, float* %2057, align 4, !tbaa !52, !noalias !112
  %2059 = fcmp fast olt float %2058, %1923
  %2060 = icmp sgt i32 %1999, 0
  %2061 = and i1 %2060, %2059
  br i1 %2061, label %2062, label %2099

; <label>:2062                                    ; preds = %2056
  br label %2063

; <label>:2063                                    ; preds = %2092, %2062
  %2064 = phi float [ %2093, %2092 ], [ %1921, %2062 ]
  %2065 = phi float [ %2094, %2092 ], [ %1922, %2062 ]
  %2066 = phi float [ %2074, %2092 ], [ %2058, %2062 ]
  %2067 = phi i32 [ %2071, %2092 ], [ %2016, %2062 ]
  %2068 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %2067
  %2069 = load float, float* %2068, align 4, !tbaa !52, !noalias !112
  %2070 = icmp slt i32 %2067, 2
  %2071 = add nsw i32 %2067, 1
  %2072 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %2071
  %2073 = load float, float* %2072, align 4, !tbaa !52, !noalias !112
  %2074 = select i1 %2070, float %2073, float %1837
  %2075 = call float @dx.op.binary.f32(i32 36, float %2074, float %2069)  ; FMin(a,b)
  %2076 = call float @dx.op.binary.f32(i32 36, float %1923, float %2075)  ; FMin(a,b)
  %2077 = icmp eq i32 %1787, 0
  %2078 = fadd fast float %2076, %2066
  %2079 = fmul fast float %2078, %1749
  %2080 = fadd fast float %2079, %1781
  br i1 %2077, label %2086, label %2081, !dx.controlflow.hints !90

; <label>:2081                                    ; preds = %2063
  %2082 = fsub fast float %2076, %2066
  %2083 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2082)  ; FMax(a,b)
  %2084 = fmul fast float %2083, %2080
  %2085 = fadd fast float %2084, %2065
  br label %2092

; <label>:2086                                    ; preds = %2063
  %2087 = fsub fast float %2066, %2076
  %2088 = call float @dx.op.unary.f32(i32 6, float %2087)  ; FAbs(value)
  %2089 = fadd fast float %2088, %2064
  %2090 = fmul fast float %2088, %2080
  %2091 = fsub fast float %2065, %2090
  br label %2092

; <label>:2092                                    ; preds = %2086, %2081
  %2093 = phi float [ %2083, %2081 ], [ %2089, %2086 ]
  %2094 = phi float [ %2085, %2081 ], [ %2091, %2086 ]
  %2095 = fcmp fast olt float %2074, %1923
  %2096 = icmp slt i32 %2071, 3
  %2097 = and i1 %2096, %2095
  br i1 %2097, label %2063, label %2098

; <label>:2098                                    ; preds = %2092
  br label %2099

; <label>:2099                                    ; preds = %2098, %2056
  %2100 = phi float [ %1921, %2056 ], [ %2093, %2098 ]
  %2101 = phi float [ %1922, %2056 ], [ %2094, %2098 ]
  %2102 = fsub fast float %1837, %2100
  %2103 = select i1 %1839, float %2100, float %2102
  %2104 = extractvalue %dx.types.CBufRet.f32 %1777, 0
  %2105 = extractvalue %dx.types.CBufRet.f32 %1777, 1
  %2106 = extractvalue %dx.types.CBufRet.f32 %1777, 2
  %2107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2108 = extractvalue %dx.types.CBufRet.f32 %2107, 0
  %2109 = extractvalue %dx.types.CBufRet.f32 %2107, 1
  %2110 = extractvalue %dx.types.CBufRet.f32 %2107, 2
  %2111 = extractvalue %dx.types.CBufRet.f32 %2107, 3
  %2112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2113 = extractvalue %dx.types.CBufRet.f32 %2112, 3
  %2114 = call float @dx.op.binary.f32(i32 36, float %2101, float %2113)  ; FMin(a,b)
  %2115 = fmul fast float %2111, %2103
  %2116 = call float @dx.op.unary.f32(i32 7, float %2115)  ; Saturate(value)
  %2117 = fsub fast float %2108, %2104
  %2118 = fsub fast float %2109, %2105
  %2119 = fsub fast float %2110, %2106
  %2120 = fmul fast float %2116, %2117
  %2121 = fmul fast float %2116, %2118
  %2122 = fmul fast float %2116, %2119
  %2123 = fadd fast float %2120, %2104
  %2124 = fadd fast float %2121, %2105
  %2125 = fadd fast float %2122, %2106
  br i1 %1672, label %2138, label %2126, !dx.controlflow.hints !49

; <label>:2126                                    ; preds = %2099
  %2127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2128 = extractvalue %dx.types.CBufRet.f32 %2127, 0
  %2129 = extractvalue %dx.types.CBufRet.f32 %2127, 1
  %2130 = fadd fast float %2129, %2128
  %2131 = call float @dx.op.unary.f32(i32 7, float %2130)  ; Saturate(value)
  %2132 = extractvalue %dx.types.CBufRet.f32 %2127, 2
  %2133 = extractvalue %dx.types.CBufRet.f32 %2127, 3
  %2134 = fadd fast float %2133, %2132
  %2135 = call float @dx.op.unary.f32(i32 7, float %2134)  ; Saturate(value)
  %2136 = fmul fast float %2131, %2114
  %2137 = fmul fast float %2136, %2135
  br label %2138

; <label>:2138                                    ; preds = %2126, %2099, %2044, %2018, %1885, %1853, %1835, %1833
  %2139 = phi float [ 0.000000e+00, %1833 ], [ 0.000000e+00, %1835 ], [ %1862, %1885 ], [ %1862, %1853 ], [ %2021, %2044 ], [ %2021, %2018 ], [ %2103, %2126 ], [ %2103, %2099 ]
  %2140 = phi float [ 0.000000e+00, %1833 ], [ 0.000000e+00, %1835 ], [ %1896, %1885 ], [ %1873, %1853 ], [ %2055, %2044 ], [ %2032, %2018 ], [ %2137, %2126 ], [ %2114, %2099 ]
  %2141 = phi float [ 0.000000e+00, %1833 ], [ 0.000000e+00, %1835 ], [ %1882, %1885 ], [ %1882, %1853 ], [ %2041, %2044 ], [ %2041, %2018 ], [ %2123, %2126 ], [ %2123, %2099 ]
  %2142 = phi float [ 0.000000e+00, %1833 ], [ 0.000000e+00, %1835 ], [ %1883, %1885 ], [ %1883, %1853 ], [ %2042, %2044 ], [ %2042, %2018 ], [ %2124, %2126 ], [ %2124, %2099 ]
  %2143 = phi float [ 0.000000e+00, %1833 ], [ 0.000000e+00, %1835 ], [ %1884, %1885 ], [ %1884, %1853 ], [ %2043, %2044 ], [ %2043, %2018 ], [ %2125, %2126 ], [ %2125, %2099 ]
  %2144 = fmul fast float %1773, %2140
  %2145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2146 = extractvalue %dx.types.CBufRet.f32 %2145, 2
  %2147 = fsub fast float %1783, %2146
  %2148 = fcmp fast olt float %2144, -2.000000e+01
  %2149 = call float @dx.op.unary.f32(i32 21, float %2144)  ; Exp(value)
  %2150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2151 = extractvalue %dx.types.CBufRet.f32 %2150, 2
  %2152 = extractvalue %dx.types.CBufRet.f32 %2150, 3
  %2153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2154 = extractvalue %dx.types.CBufRet.f32 %2153, 2
  %2155 = fmul fast float %2152, %2147
  %2156 = call float @dx.op.unary.f32(i32 7, float %2155)  ; Saturate(value)
  %2157 = fsub fast float 1.000000e+00, %2156
  %2158 = fmul fast float %1749, 5.000000e-01
  %2159 = fadd fast float %2158, 5.000000e-01
  %2160 = call float @dx.op.unary.f32(i32 7, float %2159)  ; Saturate(value)
  %2161 = fsub fast float 1.000000e+00, %2160
  %2162 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2157)  ; FMax(a,b)
  %2163 = fdiv fast float %2161, %2162
  %2164 = fsub fast float %2147, %1712
  %2165 = call float @dx.op.unary.f32(i32 6, float %2164)  ; FAbs(value)
  %2166 = fmul fast float %2165, %2151
  %2167 = call float @dx.op.unary.f32(i32 7, float %2163)  ; Saturate(value)
  %2168 = fsub fast float 1.000000e+00, %2166
  %2169 = fmul fast float %2168, %2167
  %2170 = fadd fast float %2169, %2166
  %2171 = fmul fast float %2154, %2147
  %2172 = call float @dx.op.unary.f32(i32 7, float %2171)  ; Saturate(value)
  %2173 = fsub fast float 1.000000e+00, %2170
  %2174 = fmul fast float %2173, %2172
  %2175 = fadd fast float %2174, %2170
  %2176 = call float @dx.op.unary.f32(i32 7, float %2175)  ; Saturate(value)
  %2177 = fadd fast float %2149, -1.000000e+00
  %2178 = select i1 %2148, float -1.000000e+00, float %2177
  %2179 = fmul fast float %2176, %2178
  %2180 = fadd fast float %2179, 1.000000e+00
  %2181 = fsub fast float -0.000000e+00, %2179
  %2182 = fmul fast float %2141, %2181
  %2183 = fmul fast float %2142, %2181
  %2184 = fmul fast float %2143, %2181
  br label %2185

; <label>:2185                                    ; preds = %2138, %1763
  %2186 = phi float [ %2139, %2138 ], [ 0.000000e+00, %1763 ]
  %2187 = phi float [ %2180, %2138 ], [ 1.000000e+00, %1763 ]
  %2188 = phi float [ %2182, %2138 ], [ 0.000000e+00, %1763 ]
  %2189 = phi float [ %2183, %2138 ], [ 0.000000e+00, %1763 ]
  %2190 = phi float [ %2184, %2138 ], [ 0.000000e+00, %1763 ]
  %2191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2192 = extractvalue %dx.types.CBufRet.f32 %2191, 1
  %2193 = fsub fast float 1.000000e+00, %2187
  %2194 = fmul fast float %2193, %1764
  %2195 = fmul fast float %2194, %2192
  %2196 = fsub fast float %1764, %2195
  br i1 %1742, label %2197, label %2229, !dx.controlflow.hints !91

; <label>:2197                                    ; preds = %2185
  %2198 = fmul fast float %1767, %1739
  %2199 = fadd fast float %2198, %1740
  %2200 = call float @dx.op.unary.f32(i32 7, float %2199)  ; Saturate(value)
  %2201 = fmul fast float %1721, %2196
  %2202 = fsub fast float -0.000000e+00, %2201
  %2203 = fmul fast float %1722, %2196
  %2204 = fsub fast float -0.000000e+00, %2203
  %2205 = call float @dx.op.unary.f32(i32 21, float %2202)  ; Exp(value)
  %2206 = call float @dx.op.unary.f32(i32 21, float %2204)  ; Exp(value)
  %2207 = call float @dx.op.binary.f32(i32 35, float %1729, float %2205)  ; FMax(a,b)
  %2208 = call float @dx.op.binary.f32(i32 35, float %1729, float %2206)  ; FMax(a,b)
  %2209 = fsub fast float %2208, %2207
  %2210 = fmul fast float %2209, %2200
  %2211 = fadd fast float %2210, %2207
  %2212 = call float @dx.op.unary.f32(i32 7, float %2211)  ; Saturate(value)
  %2213 = fmul fast float %1765, %1743
  %2214 = fsub fast float 1.000000e+00, %2213
  %2215 = select i1 %1672, float %2214, float %2212
  %2216 = fsub fast float %1726, %1731
  %2217 = fsub fast float %1727, %1732
  %2218 = fsub fast float %1728, %1733
  %2219 = fmul fast float %2200, %2216
  %2220 = fmul fast float %2200, %2217
  %2221 = fmul fast float %2200, %2218
  %2222 = fadd fast float %2219, %1731
  %2223 = fadd fast float %2220, %1732
  %2224 = fadd fast float %2221, %1733
  %2225 = fsub fast float 1.000000e+00, %2215
  %2226 = fmul fast float %2225, %2222
  %2227 = fmul fast float %2225, %2223
  %2228 = fmul fast float %2225, %2224
  br label %2300

; <label>:2229                                    ; preds = %2185
  %2230 = fmul fast float %2196, %1738
  %2231 = call float @dx.op.unary.f32(i32 7, float %2230)  ; Saturate(value)
  %2232 = fsub fast float 2.000000e+00, %2231
  %2233 = fmul fast float %2231, 9.921875e-01
  %2234 = fmul fast float %2233, %2232
  %2235 = fadd fast float %2234, 3.906250e-03
  %2236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %23, float %2235, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2237 = extractvalue %dx.types.ResRet.f32 %2236, 0
  %2238 = fsub fast float %2231, %2237
  %2239 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2238)  ; FMax(a,b)
  %2240 = fmul fast float %1766, %1724
  %2241 = call float @dx.op.unary.f32(i32 6, float %2240)  ; FAbs(value)
  %2242 = fcmp fast ogt float %2241, 0x3EB0C6F7A0000000
  br i1 %2242, label %2243, label %2249, !dx.controlflow.hints !92

; <label>:2243                                    ; preds = %2229
  %2244 = fmul fast float %2240, 0xBFF7154760000000
  %2245 = call float @dx.op.unary.f32(i32 21, float %2244)  ; Exp(value)
  %2246 = fsub fast float 1.000000e+00, %2245
  %2247 = fdiv fast float %2246, %2240
  %2248 = fmul fast float %2247, %1734
  br label %2249

; <label>:2249                                    ; preds = %2243, %2229
  %2250 = phi float [ %2248, %2243 ], [ %1734, %2229 ]
  %2251 = fadd fast float %2250, %1736
  %2252 = fmul fast float %2251, %2239
  %2253 = fmul fast float %1721, %2252
  %2254 = fsub fast float -0.000000e+00, %2253
  %2255 = fmul fast float %1722, %2252
  %2256 = fsub fast float -0.000000e+00, %2255
  %2257 = fmul fast float %1723, %2252
  %2258 = fsub fast float -0.000000e+00, %2257
  %2259 = call float @dx.op.unary.f32(i32 21, float %2254)  ; Exp(value)
  %2260 = call float @dx.op.unary.f32(i32 21, float %2256)  ; Exp(value)
  %2261 = call float @dx.op.unary.f32(i32 21, float %2258)  ; Exp(value)
  br i1 %1672, label %2262, label %2270, !dx.controlflow.hints !93

; <label>:2262                                    ; preds = %2249
  %2263 = fmul fast float %2259, %1765
  %2264 = fmul fast float %2260, %1765
  %2265 = fmul fast float %2261, %1765
  %2266 = fsub fast float 1.000000e+00, %1765
  %2267 = fadd fast float %2263, %2266
  %2268 = fadd fast float %2264, %2266
  %2269 = fadd fast float %2265, %2266
  br label %2270

; <label>:2270                                    ; preds = %2262, %2249
  %2271 = phi float [ %2267, %2262 ], [ %2259, %2249 ]
  %2272 = phi float [ %2268, %2262 ], [ %2260, %2249 ]
  %2273 = phi float [ %2269, %2262 ], [ %2261, %2249 ]
  %2274 = fmul fast float %1767, %1767
  %2275 = fadd fast float %2274, 1.000000e+00
  %2276 = fmul fast float %2275, 0x3FAE8EC8A0000000
  %2277 = fmul fast float %2276, %1731
  %2278 = fmul fast float %2276, %1732
  %2279 = fmul fast float %2276, %1733
  %2280 = fmul fast float %1767, %1729
  %2281 = fsub fast float 1.000000e+00, %2280
  %2282 = fmul fast float %1729, %1729
  %2283 = fsub fast float 1.000000e+00, %2282
  %2284 = fmul fast float %2283, 0x3FB45F3060000000
  %2285 = fmul fast float %2281, %2281
  %2286 = fdiv fast float 1.000000e+00, %2285
  %2287 = fmul fast float %2284, %2286
  %2288 = fmul fast float %2287, %1726
  %2289 = fmul fast float %2287, %1727
  %2290 = fmul fast float %2287, %1728
  %2291 = fadd fast float %2288, %2277
  %2292 = fadd fast float %2289, %2278
  %2293 = fadd fast float %2290, %2279
  %2294 = fsub fast float 1.000000e+00, %2271
  %2295 = fsub fast float 1.000000e+00, %2272
  %2296 = fsub fast float 1.000000e+00, %2273
  %2297 = fmul fast float %2291, %2294
  %2298 = fmul fast float %2292, %2295
  %2299 = fmul fast float %2293, %2296
  br label %2300

; <label>:2300                                    ; preds = %2270, %2197
  %2301 = phi float [ %2226, %2197 ], [ %2297, %2270 ]
  %2302 = phi float [ %2227, %2197 ], [ %2298, %2270 ]
  %2303 = phi float [ %2228, %2197 ], [ %2299, %2270 ]
  %2304 = phi float [ %2215, %2197 ], [ %2271, %2270 ]
  %2305 = phi float [ %2215, %2197 ], [ %2272, %2270 ]
  %2306 = phi float [ %2215, %2197 ], [ %2273, %2270 ]
  br i1 %1775, label %2307, label %2505, !dx.controlflow.hints !94

; <label>:2307                                    ; preds = %2300
  %2308 = extractvalue %dx.types.CBufRet.f32 %2191, 0
  %2309 = fmul fast float %2308, %2193
  %2310 = fsub fast float %2188, %2301
  %2311 = fsub fast float %2189, %2302
  %2312 = fsub fast float %2190, %2303
  %2313 = fmul fast float %2309, %2310
  %2314 = fmul fast float %2309, %2311
  %2315 = fmul fast float %2309, %2312
  %2316 = fadd fast float %2313, %2301
  %2317 = fadd fast float %2314, %2302
  %2318 = fadd fast float %2315, %2303
  %2319 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2304)  ; FMax(a,b)
  %2320 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2305)  ; FMax(a,b)
  %2321 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2306)  ; FMax(a,b)
  %2322 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2187)  ; FMax(a,b)
  %2323 = call float @dx.op.binary.f32(i32 35, float %2186, float %2196)  ; FMax(a,b)
  %2324 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2323)  ; FMax(a,b)
  %2325 = fdiv fast float %2186, %2324
  %2326 = call float @dx.op.unary.f32(i32 7, float %2325)  ; Saturate(value)
  %2327 = fdiv fast float %2196, %2324
  %2328 = call float @dx.op.unary.f32(i32 7, float %2327)  ; Saturate(value)
  %2329 = fcmp fast une float %2322, 1.000000e+00
  br i1 %2329, label %2330, label %2343, !dx.controlflow.hints !95

; <label>:2330                                    ; preds = %2307
  %2331 = call float @dx.op.unary.f32(i32 23, float %2322)  ; Log(value)
  %2332 = fmul fast float %2331, 0x3FE62E4300000000
  %2333 = fmul fast float %2188, %2332
  %2334 = fsub fast float -0.000000e+00, %2333
  %2335 = fmul fast float %2189, %2332
  %2336 = fsub fast float -0.000000e+00, %2335
  %2337 = fmul fast float %2190, %2332
  %2338 = fsub fast float -0.000000e+00, %2337
  %2339 = fsub fast float 1.000000e+00, %2322
  %2340 = fdiv fast float %2334, %2339
  %2341 = fdiv fast float %2336, %2339
  %2342 = fdiv fast float %2338, %2339
  br label %2343

; <label>:2343                                    ; preds = %2330, %2307
  %2344 = phi float [ %2340, %2330 ], [ %2188, %2307 ]
  %2345 = phi float [ %2341, %2330 ], [ %2189, %2307 ]
  %2346 = phi float [ %2342, %2330 ], [ %2190, %2307 ]
  %2347 = phi float [ %2332, %2330 ], [ 0.000000e+00, %2307 ]
  %2348 = fcmp fast une float %2319, 1.000000e+00
  br i1 %2348, label %2349, label %2356, !dx.controlflow.hints !96

; <label>:2349                                    ; preds = %2343
  %2350 = call float @dx.op.unary.f32(i32 23, float %2319)  ; Log(value)
  %2351 = fmul fast float %2350, 0x3FE62E4300000000
  %2352 = fmul fast float %2316, %2351
  %2353 = fsub fast float -0.000000e+00, %2352
  %2354 = fsub fast float 1.000000e+00, %2319
  %2355 = fdiv fast float %2353, %2354
  br label %2356

; <label>:2356                                    ; preds = %2349, %2343
  %2357 = phi float [ %2355, %2349 ], [ %2316, %2343 ]
  %2358 = phi float [ %2351, %2349 ], [ 0.000000e+00, %2343 ]
  %2359 = fcmp fast une float %2320, 1.000000e+00
  br i1 %2359, label %2360, label %2367, !dx.controlflow.hints !96

; <label>:2360                                    ; preds = %2356
  %2361 = call float @dx.op.unary.f32(i32 23, float %2320)  ; Log(value)
  %2362 = fmul fast float %2361, 0x3FE62E4300000000
  %2363 = fmul fast float %2317, %2362
  %2364 = fsub fast float -0.000000e+00, %2363
  %2365 = fsub fast float 1.000000e+00, %2320
  %2366 = fdiv fast float %2364, %2365
  br label %2367

; <label>:2367                                    ; preds = %2360, %2356
  %2368 = phi float [ %2366, %2360 ], [ %2317, %2356 ]
  %2369 = phi float [ %2362, %2360 ], [ 0.000000e+00, %2356 ]
  %2370 = fcmp fast une float %2321, 1.000000e+00
  br i1 %2370, label %2371, label %2378, !dx.controlflow.hints !96

; <label>:2371                                    ; preds = %2367
  %2372 = call float @dx.op.unary.f32(i32 23, float %2321)  ; Log(value)
  %2373 = fmul fast float %2372, 0x3FE62E4300000000
  %2374 = fmul fast float %2318, %2373
  %2375 = fsub fast float -0.000000e+00, %2374
  %2376 = fsub fast float 1.000000e+00, %2321
  %2377 = fdiv fast float %2375, %2376
  br label %2378

; <label>:2378                                    ; preds = %2371, %2367
  %2379 = phi float [ %2377, %2371 ], [ %2318, %2367 ]
  %2380 = phi float [ %2373, %2371 ], [ 0.000000e+00, %2367 ]
  %2381 = fmul fast float %2344, %2328
  %2382 = fmul fast float %2345, %2328
  %2383 = fmul fast float %2346, %2328
  %2384 = fmul fast float %2347, %2328
  %2385 = fmul fast float %2357, %2326
  %2386 = fmul fast float %2368, %2326
  %2387 = fmul fast float %2379, %2326
  %2388 = fmul fast float %2358, %2326
  %2389 = fmul fast float %2369, %2326
  %2390 = fmul fast float %2380, %2326
  %2391 = fadd fast float %2385, %2381
  %2392 = fadd fast float %2386, %2382
  %2393 = fadd fast float %2387, %2383
  %2394 = fadd fast float %2388, %2384
  %2395 = fadd fast float %2389, %2384
  %2396 = fadd fast float %2390, %2384
  %2397 = fcmp fast une float %2394, 0.000000e+00
  br i1 %2397, label %2398, label %2405, !dx.controlflow.hints !97

; <label>:2398                                    ; preds = %2378
  %2399 = fmul fast float %2394, 0x3FF7154760000000
  %2400 = call float @dx.op.unary.f32(i32 21, float %2399)  ; Exp(value)
  %2401 = fsub fast float 1.000000e+00, %2400
  %2402 = fmul fast float %2391, %2401
  %2403 = fsub fast float -0.000000e+00, %2402
  %2404 = fdiv fast float %2403, %2394
  br label %2405

; <label>:2405                                    ; preds = %2398, %2378
  %2406 = phi float [ %2400, %2398 ], [ 1.000000e+00, %2378 ]
  %2407 = phi float [ %2404, %2398 ], [ %2391, %2378 ]
  %2408 = fcmp fast une float %2395, 0.000000e+00
  br i1 %2408, label %2409, label %2416, !dx.controlflow.hints !97

; <label>:2409                                    ; preds = %2405
  %2410 = fmul fast float %2395, 0x3FF7154760000000
  %2411 = call float @dx.op.unary.f32(i32 21, float %2410)  ; Exp(value)
  %2412 = fsub fast float 1.000000e+00, %2411
  %2413 = fmul fast float %2392, %2412
  %2414 = fsub fast float -0.000000e+00, %2413
  %2415 = fdiv fast float %2414, %2395
  br label %2416

; <label>:2416                                    ; preds = %2409, %2405
  %2417 = phi float [ %2411, %2409 ], [ 1.000000e+00, %2405 ]
  %2418 = phi float [ %2415, %2409 ], [ %2392, %2405 ]
  %2419 = fcmp fast une float %2396, 0.000000e+00
  br i1 %2419, label %2420, label %2427, !dx.controlflow.hints !97

; <label>:2420                                    ; preds = %2416
  %2421 = fmul fast float %2396, 0x3FF7154760000000
  %2422 = call float @dx.op.unary.f32(i32 21, float %2421)  ; Exp(value)
  %2423 = fsub fast float 1.000000e+00, %2422
  %2424 = fmul fast float %2393, %2423
  %2425 = fsub fast float -0.000000e+00, %2424
  %2426 = fdiv fast float %2425, %2396
  br label %2427

; <label>:2427                                    ; preds = %2420, %2416
  %2428 = phi float [ %2422, %2420 ], [ 1.000000e+00, %2416 ]
  %2429 = phi float [ %2426, %2420 ], [ %2393, %2416 ]
  %2430 = fcmp fast ogt float %2326, %2328
  br i1 %2430, label %2431, label %2451, !dx.controlflow.hints !98

; <label>:2431                                    ; preds = %2427
  %2432 = fsub fast float 1.000000e+00, %2328
  %2433 = fmul fast float %2344, %2432
  %2434 = fmul fast float %2345, %2432
  %2435 = fmul fast float %2346, %2432
  %2436 = fmul fast float %2347, %2432
  %2437 = fcmp fast une float %2436, 0.000000e+00
  br i1 %2437, label %2438, label %2489, !dx.controlflow.hints !99

; <label>:2438                                    ; preds = %2431
  %2439 = fmul fast float %2436, 0x3FF7154760000000
  %2440 = call float @dx.op.unary.f32(i32 21, float %2439)  ; Exp(value)
  %2441 = fsub fast float 1.000000e+00, %2440
  %2442 = fmul fast float %2433, %2441
  %2443 = fsub fast float -0.000000e+00, %2442
  %2444 = fmul fast float %2434, %2441
  %2445 = fsub fast float -0.000000e+00, %2444
  %2446 = fmul fast float %2435, %2441
  %2447 = fsub fast float -0.000000e+00, %2446
  %2448 = fdiv fast float %2443, %2436
  %2449 = fdiv fast float %2445, %2436
  %2450 = fdiv fast float %2447, %2436
  br label %2489

; <label>:2451                                    ; preds = %2427
  %2452 = fsub fast float 1.000000e+00, %2326
  %2453 = fmul fast float %2357, %2452
  %2454 = fmul fast float %2368, %2452
  %2455 = fmul fast float %2379, %2452
  %2456 = fmul fast float %2358, %2452
  %2457 = fmul fast float %2369, %2452
  %2458 = fmul fast float %2380, %2452
  %2459 = fcmp fast une float %2456, 0.000000e+00
  br i1 %2459, label %2460, label %2467, !dx.controlflow.hints !97

; <label>:2460                                    ; preds = %2451
  %2461 = fmul fast float %2456, 0x3FF7154760000000
  %2462 = call float @dx.op.unary.f32(i32 21, float %2461)  ; Exp(value)
  %2463 = fsub fast float 1.000000e+00, %2462
  %2464 = fmul fast float %2453, %2463
  %2465 = fsub fast float -0.000000e+00, %2464
  %2466 = fdiv fast float %2465, %2456
  br label %2467

; <label>:2467                                    ; preds = %2460, %2451
  %2468 = phi float [ %2466, %2460 ], [ %2453, %2451 ]
  %2469 = phi float [ %2462, %2460 ], [ 1.000000e+00, %2451 ]
  %2470 = fcmp fast une float %2457, 0.000000e+00
  br i1 %2470, label %2471, label %2478, !dx.controlflow.hints !97

; <label>:2471                                    ; preds = %2467
  %2472 = fmul fast float %2457, 0x3FF7154760000000
  %2473 = call float @dx.op.unary.f32(i32 21, float %2472)  ; Exp(value)
  %2474 = fsub fast float 1.000000e+00, %2473
  %2475 = fmul fast float %2454, %2474
  %2476 = fsub fast float -0.000000e+00, %2475
  %2477 = fdiv fast float %2476, %2457
  br label %2478

; <label>:2478                                    ; preds = %2471, %2467
  %2479 = phi float [ %2477, %2471 ], [ %2454, %2467 ]
  %2480 = phi float [ %2473, %2471 ], [ 1.000000e+00, %2467 ]
  %2481 = fcmp fast une float %2458, 0.000000e+00
  br i1 %2481, label %2482, label %2489, !dx.controlflow.hints !97

; <label>:2482                                    ; preds = %2478
  %2483 = fmul fast float %2458, 0x3FF7154760000000
  %2484 = call float @dx.op.unary.f32(i32 21, float %2483)  ; Exp(value)
  %2485 = fsub fast float 1.000000e+00, %2484
  %2486 = fmul fast float %2455, %2485
  %2487 = fsub fast float -0.000000e+00, %2486
  %2488 = fdiv fast float %2487, %2458
  br label %2489

; <label>:2489                                    ; preds = %2482, %2478, %2438, %2431
  %2490 = phi float [ %2488, %2482 ], [ %2450, %2438 ], [ %2435, %2431 ], [ %2455, %2478 ]
  %2491 = phi float [ %2479, %2482 ], [ %2449, %2438 ], [ %2434, %2431 ], [ %2479, %2478 ]
  %2492 = phi float [ %2468, %2482 ], [ %2448, %2438 ], [ %2433, %2431 ], [ %2468, %2478 ]
  %2493 = phi float [ %2484, %2482 ], [ %2440, %2438 ], [ 1.000000e+00, %2431 ], [ 1.000000e+00, %2478 ]
  %2494 = phi float [ %2480, %2482 ], [ %2440, %2438 ], [ 1.000000e+00, %2431 ], [ %2480, %2478 ]
  %2495 = phi float [ %2469, %2482 ], [ %2440, %2438 ], [ 1.000000e+00, %2431 ], [ %2469, %2478 ]
  %2496 = fmul fast float %2495, %2407
  %2497 = fmul fast float %2494, %2418
  %2498 = fmul fast float %2493, %2429
  %2499 = fadd fast float %2496, %2492
  %2500 = fadd fast float %2497, %2491
  %2501 = fadd fast float %2498, %2490
  %2502 = fmul fast float %2495, %2406
  %2503 = fmul fast float %2494, %2417
  %2504 = fmul fast float %2493, %2428
  br label %2505

; <label>:2505                                    ; preds = %2489, %2300
  %2506 = phi float [ %2504, %2489 ], [ %2306, %2300 ]
  %2507 = phi float [ %2503, %2489 ], [ %2305, %2300 ]
  %2508 = phi float [ %2502, %2489 ], [ %2304, %2300 ]
  %2509 = phi float [ %2501, %2489 ], [ %2303, %2300 ]
  %2510 = phi float [ %2500, %2489 ], [ %2302, %2300 ]
  %2511 = phi float [ %2499, %2489 ], [ %2301, %2300 ]
  %2512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %23, float %1643, float %1644, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2513 = extractvalue %dx.types.ResRet.f32 %2512, 0
  %2514 = extractvalue %dx.types.ResRet.f32 %2512, 1
  %2515 = extractvalue %dx.types.ResRet.f32 %2512, 2
  %2516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2517 = extractvalue %dx.types.CBufRet.f32 %2516, 1
  %2518 = fmul fast float %2517, %2513
  %2519 = fmul fast float %2517, %2514
  %2520 = fmul fast float %2517, %2515
  %2521 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %23, float %1643, float %1644, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2522 = extractvalue %dx.types.ResRet.f32 %2521, 0
  %2523 = fmul fast float %2522, %2508
  %2524 = fmul fast float %2522, %2507
  %2525 = fmul fast float %2522, %2506
  %2526 = fmul fast float %2522, %2511
  %2527 = fmul fast float %2522, %2510
  %2528 = fmul fast float %2522, %2509
  %2529 = fadd fast float %2526, %2518
  %2530 = fadd fast float %2527, %2519
  %2531 = fadd fast float %2528, %2520
  br label %2532

; <label>:2532                                    ; preds = %2505, %1636
  %2533 = phi float [ 0.000000e+00, %1636 ], [ %2529, %2505 ]
  %2534 = phi float [ 0.000000e+00, %1636 ], [ %2530, %2505 ]
  %2535 = phi float [ 0.000000e+00, %1636 ], [ %2531, %2505 ]
  %2536 = phi float [ 1.000000e+00, %1636 ], [ %2523, %2505 ]
  %2537 = phi float [ 1.000000e+00, %1636 ], [ %2524, %2505 ]
  %2538 = phi float [ 1.000000e+00, %1636 ], [ %2525, %2505 ]
  %2539 = phi float [ %1669, %1636 ], [ %1676, %2505 ]
  %2540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2541 = extractvalue %dx.types.CBufRet.f32 %2540, 2
  %2542 = extractvalue %dx.types.CBufRet.f32 %2540, 3
  %2543 = fmul fast float %2541, %1639
  %2544 = fmul fast float %2542, %1640
  %2545 = call float @dx.op.unary.f32(i32 7, float %2543)  ; Saturate(value)
  %2546 = call float @dx.op.unary.f32(i32 7, float %2544)  ; Saturate(value)
  %2547 = select i1 %1667, i32 2, i32 0
  %2548 = or i32 %2547, 1
  %2549 = uitofp i32 %2548 to float
  %2550 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %23, float %2545, float %2546, float %2549, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2551 = extractvalue %dx.types.ResRet.f32 %2550, 0
  %2552 = extractvalue %dx.types.ResRet.f32 %2550, 1
  %2553 = extractvalue %dx.types.ResRet.f32 %2550, 2
  %2554 = extractvalue %dx.types.ResRet.f32 %2550, 3
  %2555 = add nuw nsw i32 %2547, 2
  %2556 = uitofp i32 %2555 to float
  %2557 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %23, float %2545, float %2546, float %2556, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2558 = extractvalue %dx.types.ResRet.f32 %2557, 0
  %2559 = extractvalue %dx.types.ResRet.f32 %2557, 1
  %2560 = extractvalue %dx.types.ResRet.f32 %2557, 2
  %2561 = extractvalue %dx.types.ResRet.f32 %2557, 3
  %2562 = call float @dx.op.binary.f32(i32 35, float %2552, float %2553)  ; FMax(a,b)
  %2563 = call float @dx.op.binary.f32(i32 35, float %2551, float %2562)  ; FMax(a,b)
  %2564 = call float @dx.op.binary.f32(i32 35, float %2563, float %2554)  ; FMax(a,b)
  %2565 = call float @dx.op.binary.f32(i32 36, float %2559, float %2560)  ; FMin(a,b)
  %2566 = call float @dx.op.binary.f32(i32 36, float %2558, float %2565)  ; FMin(a,b)
  %2567 = call float @dx.op.binary.f32(i32 36, float %2566, float %2561)  ; FMin(a,b)
  %2568 = fmul fast float %2564, 2.550000e+02
  %2569 = fadd fast float %2568, 0x3F70101020000000
  %2570 = fptoui float %2569 to i32
  %2571 = fmul fast float %2567, 2.550000e+02
  %2572 = fadd fast float %2571, 0x3F70101020000000
  %2573 = fptoui float %2572 to i32
  %2574 = icmp ult i32 %2570, %2573
  br i1 %2574, label %2575, label %2743, !dx.controlflow.hints !100

; <label>:2575                                    ; preds = %2532
  %2576 = fadd fast float %2539, -4.000000e+00
  %2577 = call float @dx.op.binary.f32(i32 35, float %2576, float 0.000000e+00)  ; FMax(a,b)
  %2578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2579 = extractvalue %dx.types.CBufRet.f32 %2578, 0
  %2580 = fadd fast float %2579, %2577
  %2581 = extractvalue %dx.types.CBufRet.f32 %2578, 2
  %2582 = fmul fast float %2580, %2581
  %2583 = call float @dx.op.unary.f32(i32 23, float %2582)  ; Log(value)
  %2584 = extractvalue %dx.types.CBufRet.f32 %2578, 3
  %2585 = fmul fast float %2584, %2583
  %2586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2587 = extractvalue %dx.types.CBufRet.f32 %2586, 2
  %2588 = fmul fast float %2585, %2587
  %2589 = call float @dx.op.unary.f32(i32 7, float %2588)  ; Saturate(value)
  %2590 = select i1 %1672, float 1.000000e+00, float %2589
  %2591 = uitofp i32 %2570 to float
  %2592 = uitofp i32 %2573 to float
  %2593 = fadd fast float %2591, 5.000000e-01
  %2594 = fadd fast float %2592, 5.000000e-01
  %2595 = fmul fast float %2587, %2593
  %2596 = fmul fast float %2587, %2594
  %2597 = fadd fast float %2595, 0x3F0FFB4800000000
  %2598 = fadd fast float %2596, 0xBF0FFB4800000000
  %2599 = call float @dx.op.binary.f32(i32 35, float %2590, float %2597)  ; FMax(a,b)
  %2600 = call float @dx.op.binary.f32(i32 36, float %2599, float %2598)  ; FMin(a,b)
  %2601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2602 = extractvalue %dx.types.CBufRet.f32 %2601, 1
  %2603 = extractvalue %dx.types.CBufRet.f32 %2601, 2
  %2604 = extractvalue %dx.types.CBufRet.f32 %2601, 0
  %2605 = select i1 %1667, float %2604, float 0.000000e+00
  %2606 = fmul fast float %2602, %2600
  %2607 = fadd fast float %2605, %2606
  %2608 = fadd fast float %2605, %2603
  %2609 = fsub fast float %2602, %2603
  %2610 = fadd fast float %2609, %2605
  %2611 = call float @dx.op.binary.f32(i32 35, float %2607, float %2608)  ; FMax(a,b)
  %2612 = call float @dx.op.binary.f32(i32 36, float %2611, float %2610)  ; FMin(a,b)
  %2613 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %22, float %2545, float %2546, float %2612, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2614 = extractvalue %dx.types.ResRet.f32 %2613, 0
  %2615 = extractvalue %dx.types.ResRet.f32 %2613, 1
  %2616 = extractvalue %dx.types.ResRet.f32 %2613, 2
  %2617 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %2618 = extractvalue %dx.types.CBufRet.i32 %2617, 0
  %2619 = extractvalue %dx.types.CBufRet.i32 %2617, 1
  %2620 = uitofp i32 %2618 to float
  %2621 = uitofp i32 %2619 to float
  %2622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %2623 = extractvalue %dx.types.CBufRet.f32 %2622, 0
  %2624 = extractvalue %dx.types.CBufRet.f32 %2622, 1
  %2625 = fmul fast float %2620, %2545
  %2626 = fmul fast float %2621, %2546
  %2627 = fadd fast float %2625, -5.000000e-01
  %2628 = fadd fast float %2626, -5.000000e-01
  %2629 = call float @dx.op.unary.f32(i32 22, float %2627)  ; Frc(value)
  %2630 = call float @dx.op.unary.f32(i32 22, float %2628)  ; Frc(value)
  %2631 = fmul fast float %2629, %2629
  %2632 = fmul fast float %2631, %2629
  %2633 = fsub fast float 3.000000e+00, %2629
  %2634 = fmul fast float %2631, %2633
  %2635 = fmul fast float %2629, 3.000000e+00
  %2636 = fmul fast float %2632, 3.000000e+00
  %2637 = fmul fast float %2631, 6.000000e+00
  %2638 = fsub fast float %2636, %2637
  %2639 = fadd fast float %2638, 4.000000e+00
  %2640 = fmul fast float %2639, 0x3FC5555560000000
  %2641 = fmul fast float %2632, -3.000000e+00
  %2642 = fadd fast float %2631, %2629
  %2643 = fmul fast float %2642, 3.000000e+00
  %2644 = fadd fast float %2641, 1.000000e+00
  %2645 = fadd fast float %2644, %2643
  %2646 = fmul fast float %2632, 0x3FC5555560000000
  %2647 = fmul fast float %2630, %2630
  %2648 = fmul fast float %2647, %2630
  %2649 = fsub fast float 3.000000e+00, %2630
  %2650 = fmul fast float %2647, %2649
  %2651 = fmul fast float %2630, 3.000000e+00
  %2652 = fmul fast float %2648, 3.000000e+00
  %2653 = fmul fast float %2647, 6.000000e+00
  %2654 = fsub fast float %2652, %2653
  %2655 = fadd fast float %2654, 4.000000e+00
  %2656 = fmul fast float %2655, 0x3FC5555560000000
  %2657 = fmul fast float %2648, -3.000000e+00
  %2658 = fadd fast float %2647, %2630
  %2659 = fmul fast float %2658, 3.000000e+00
  %2660 = fadd fast float %2657, 1.000000e+00
  %2661 = fadd fast float %2660, %2659
  %2662 = fmul fast float %2648, 0x3FC5555560000000
  %2663 = fadd fast float %2629, 1.000000e+00
  %2664 = fsub fast float 1.000000e+00, %2635
  %2665 = fadd fast float %2664, %2634
  %2666 = fadd fast float %2665, %2639
  %2667 = fmul fast float %2666, 0x3FC5555560000000
  %2668 = fdiv fast float %2640, %2667
  %2669 = fsub fast float %2663, %2668
  %2670 = fsub fast float 1.000000e+00, %2629
  %2671 = fadd fast float %2645, %2632
  %2672 = fmul fast float %2671, 0x3FC5555560000000
  %2673 = fdiv fast float %2646, %2672
  %2674 = fadd fast float %2670, %2673
  %2675 = fadd fast float %2630, 1.000000e+00
  %2676 = fsub fast float 1.000000e+00, %2651
  %2677 = fadd fast float %2676, %2650
  %2678 = fadd fast float %2677, %2655
  %2679 = fmul fast float %2678, 0x3FC5555560000000
  %2680 = fdiv fast float %2656, %2679
  %2681 = fsub fast float %2675, %2680
  %2682 = fsub fast float 1.000000e+00, %2630
  %2683 = fadd fast float %2661, %2648
  %2684 = fmul fast float %2683, 0x3FC5555560000000
  %2685 = fdiv fast float %2662, %2684
  %2686 = fadd fast float %2685, %2682
  %2687 = fmul fast float %2669, %2623
  %2688 = fsub fast float %2545, %2687
  %2689 = fmul fast float %2674, %2623
  %2690 = fadd fast float %2689, %2545
  %2691 = fmul fast float %2686, %2624
  %2692 = fadd fast float %2691, %2546
  %2693 = fmul fast float %2681, %2624
  %2694 = fsub fast float %2546, %2693
  %2695 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %2688, float %2694, float %2612, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2696 = extractvalue %dx.types.ResRet.f32 %2695, 0
  %2697 = extractvalue %dx.types.ResRet.f32 %2695, 1
  %2698 = extractvalue %dx.types.ResRet.f32 %2695, 2
  %2699 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %2690, float %2694, float %2612, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2700 = extractvalue %dx.types.ResRet.f32 %2699, 0
  %2701 = extractvalue %dx.types.ResRet.f32 %2699, 1
  %2702 = extractvalue %dx.types.ResRet.f32 %2699, 2
  %2703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %2688, float %2692, float %2612, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2704 = extractvalue %dx.types.ResRet.f32 %2703, 0
  %2705 = extractvalue %dx.types.ResRet.f32 %2703, 1
  %2706 = extractvalue %dx.types.ResRet.f32 %2703, 2
  %2707 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %2690, float %2692, float %2612, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2708 = extractvalue %dx.types.ResRet.f32 %2707, 0
  %2709 = extractvalue %dx.types.ResRet.f32 %2707, 1
  %2710 = extractvalue %dx.types.ResRet.f32 %2707, 2
  %2711 = fsub fast float %2704, %2696
  %2712 = fsub fast float %2705, %2697
  %2713 = fsub fast float %2706, %2698
  %2714 = fmul fast float %2711, %2684
  %2715 = fmul fast float %2712, %2684
  %2716 = fmul fast float %2713, %2684
  %2717 = fadd fast float %2714, %2696
  %2718 = fadd fast float %2715, %2697
  %2719 = fadd fast float %2716, %2698
  %2720 = fsub fast float %2708, %2700
  %2721 = fsub fast float %2709, %2701
  %2722 = fsub fast float %2710, %2702
  %2723 = fmul fast float %2720, %2684
  %2724 = fmul fast float %2721, %2684
  %2725 = fmul fast float %2722, %2684
  %2726 = fsub fast float %2700, %2717
  %2727 = fadd fast float %2726, %2723
  %2728 = fsub fast float %2701, %2718
  %2729 = fadd fast float %2728, %2724
  %2730 = fsub fast float %2702, %2719
  %2731 = fadd fast float %2730, %2725
  %2732 = fmul fast float %2727, %2672
  %2733 = fmul fast float %2729, %2672
  %2734 = fmul fast float %2731, %2672
  %2735 = fadd fast float %2732, %2717
  %2736 = fadd fast float %2733, %2718
  %2737 = fadd fast float %2734, %2719
  %2738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2739 = extractvalue %dx.types.CBufRet.f32 %2738, 1
  %2740 = fmul fast float %2735, %2739
  %2741 = fmul fast float %2736, %2739
  %2742 = fmul fast float %2737, %2739
  br label %2743

; <label>:2743                                    ; preds = %2575, %2532
  %2744 = phi float [ %2614, %2575 ], [ 1.000000e+00, %2532 ]
  %2745 = phi float [ %2615, %2575 ], [ 1.000000e+00, %2532 ]
  %2746 = phi float [ %2616, %2575 ], [ 1.000000e+00, %2532 ]
  %2747 = phi float [ %2740, %2575 ], [ 0.000000e+00, %2532 ]
  %2748 = phi float [ %2741, %2575 ], [ 0.000000e+00, %2532 ]
  %2749 = phi float [ %2742, %2575 ], [ 0.000000e+00, %2532 ]
  %2750 = fmul fast float %2744, %2536
  %2751 = fmul fast float %2745, %2537
  %2752 = fmul fast float %2746, %2538
  %2753 = fmul fast float %2744, %2533
  %2754 = fmul fast float %2745, %2534
  %2755 = fmul fast float %2746, %2535
  %2756 = fadd fast float %2747, %2753
  %2757 = fadd fast float %2748, %2754
  %2758 = fadd fast float %2749, %2755
  %2759 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %1624, i32 %1625, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2760 = extractvalue %dx.types.ResRet.f32 %2759, 0
  %2761 = extractvalue %dx.types.ResRet.f32 %2759, 1
  %2762 = extractvalue %dx.types.ResRet.f32 %2759, 2
  %2763 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %1624, i32 %1625, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2764 = extractvalue %dx.types.ResRet.f32 %2763, 0
  %2765 = extractvalue %dx.types.ResRet.f32 %2763, 1
  %2766 = extractvalue %dx.types.ResRet.f32 %2763, 2
  %2767 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %1624, i32 %1625, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2768 = extractvalue %dx.types.ResRet.f32 %2767, 0
  %2769 = extractvalue %dx.types.ResRet.f32 %2767, 1
  %2770 = extractvalue %dx.types.ResRet.f32 %2767, 2
  %2771 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %1624, i32 %1625, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2772 = extractvalue %dx.types.ResRet.f32 %2771, 0
  %2773 = extractvalue %dx.types.ResRet.f32 %2771, 1
  %2774 = call float @dx.op.binary.f32(i32 35, float %2772, float %2773)  ; FMax(a,b)
  %2775 = fcmp fast ult float %2774, 0x3F70101020000000
  br i1 %2775, label %3007, label %2776, !dx.controlflow.hints !142

; <label>:2776                                    ; preds = %2743
  %2777 = fmul fast float %2773, 2.000000e+00
  %2778 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2777)  ; FMax(a,b)
  %2779 = fmul fast float %2772, 2.000000e+00
  %2780 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2779)  ; FMax(a,b)
  %2781 = extractvalue %dx.types.ResRet.f32 %2767, 3
  %2782 = fmul fast float %2781, 2.000000e+00
  %2783 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2782)  ; FMax(a,b)
  %2784 = fmul fast float %2770, %2770
  %2785 = fmul fast float %2769, %2769
  %2786 = fmul fast float %2768, %2768
  %2787 = fadd fast float %2786, 0xBFD51EB860000000
  %2788 = fadd fast float %2785, 0xBFD51EB860000000
  %2789 = fadd fast float %2784, 0xBFD51EB860000000
  %2790 = fmul fast float %2787, %2787
  %2791 = fmul fast float %2788, %2788
  %2792 = fmul fast float %2789, %2789
  %2793 = fmul fast float %2790, %2790
  %2794 = fmul fast float %2793, 1.000000e+02
  %2795 = fmul fast float %2791, %2791
  %2796 = fmul fast float %2795, 1.000000e+02
  %2797 = fmul fast float %2792, %2792
  %2798 = fmul fast float %2797, 1.000000e+02
  %2799 = fadd fast float %2794, 3.500000e+00
  %2800 = fadd fast float %2796, 3.500000e+00
  %2801 = fadd fast float %2798, 3.500000e+00
  %2802 = fdiv fast float %2799, %2783
  %2803 = fdiv fast float %2800, %2780
  %2804 = fdiv fast float %2801, %2778
  %2805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %2806 = extractvalue %dx.types.CBufRet.f32 %2805, 0
  %2807 = extractvalue %dx.types.CBufRet.f32 %2805, 1
  %2808 = fmul fast float %2806, %1669
  %2809 = fmul fast float %2807, %1669
  %2810 = fdiv fast float 1.000000e+00, %2808
  %2811 = fdiv fast float 1.000000e+00, %2809
  %2812 = fmul fast float %1641, 5.000000e-01
  %2813 = fmul fast float %2812, %2808
  %2814 = fmul fast float %2802, 0xBFF7154760000000
  %2815 = fmul fast float %2814, %2813
  %2816 = call float @dx.op.unary.f32(i32 21, float %2815)  ; Exp(value)
  %2817 = fmul fast float %2816, 2.500000e-01
  %2818 = fsub fast float 1.000000e+00, %2817
  %2819 = fmul fast float %2802, 0xBFDEC709E0000000
  %2820 = fmul fast float %2819, %2813
  %2821 = call float @dx.op.unary.f32(i32 21, float %2820)  ; Exp(value)
  %2822 = fmul fast float %2821, 7.500000e-01
  %2823 = fsub fast float %2818, %2822
  %2824 = fmul fast float %2803, 0xBFF7154760000000
  %2825 = fmul fast float %2824, %2813
  %2826 = call float @dx.op.unary.f32(i32 21, float %2825)  ; Exp(value)
  %2827 = fmul fast float %2826, 2.500000e-01
  %2828 = fsub fast float 1.000000e+00, %2827
  %2829 = fmul fast float %2803, 0xBFDEC709E0000000
  %2830 = fmul fast float %2829, %2813
  %2831 = call float @dx.op.unary.f32(i32 21, float %2830)  ; Exp(value)
  %2832 = fmul fast float %2831, 7.500000e-01
  %2833 = fsub fast float %2828, %2832
  %2834 = fmul fast float %2804, 0xBFF7154760000000
  %2835 = fmul fast float %2834, %2813
  %2836 = call float @dx.op.unary.f32(i32 21, float %2835)  ; Exp(value)
  %2837 = fmul fast float %2836, 2.500000e-01
  %2838 = fsub fast float 1.000000e+00, %2837
  %2839 = fmul fast float %2804, 0xBFDEC709E0000000
  %2840 = fmul fast float %2839, %2813
  %2841 = call float @dx.op.unary.f32(i32 21, float %2840)  ; Exp(value)
  %2842 = fmul fast float %2841, 7.500000e-01
  %2843 = fsub fast float %2838, %2842
  %2844 = fmul fast float %2764, 0x3F1A36E2E0000000
  %2845 = fmul fast float %2765, 0x3F1A36E2E0000000
  %2846 = fmul fast float %2766, 0x3F1A36E2E0000000
  %2847 = call float @dx.op.binary.f32(i32 36, float %2803, float %2804)  ; FMin(a,b)
  %2848 = call float @dx.op.binary.f32(i32 36, float %2802, float %2847)  ; FMin(a,b)
  %2849 = call float @dx.op.binary.f32(i32 36, float %2833, float %2843)  ; FMin(a,b)
  %2850 = call float @dx.op.binary.f32(i32 36, float %2823, float %2849)  ; FMin(a,b)
  %2851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2852 = extractvalue %dx.types.CBufRet.f32 %2851, 2
  %2853 = fmul fast float %2852, %2808
  %2854 = fmul fast float %2848, 0xBFF7154760000000
  %2855 = fmul fast float %2854, %2853
  %2856 = call float @dx.op.unary.f32(i32 21, float %2855)  ; Exp(value)
  %2857 = fmul fast float %2856, 2.500000e-01
  %2858 = fsub fast float 1.000000e+00, %2857
  %2859 = fmul fast float %2848, 0xBFDEC709E0000000
  %2860 = fmul fast float %2859, %2853
  %2861 = call float @dx.op.unary.f32(i32 21, float %2860)  ; Exp(value)
  %2862 = fmul fast float %2861, 7.500000e-01
  %2863 = fsub fast float %2858, %2862
  %2864 = extractvalue %dx.types.CBufRet.f32 %2851, 3
  %2865 = call float @dx.op.binary.f32(i32 36, float %2864, float %2863)  ; FMin(a,b)
  %2866 = fsub fast float %2865, %2850
  %2867 = call float @dx.op.unary.f32(i32 7, float %2866)  ; Saturate(value)
  %2868 = call float @dx.op.unary.f32(i32 7, float %2850)  ; Saturate(value)
  %2869 = extractvalue %dx.types.CBufRet.f32 %2851, 0
  %2870 = fmul fast float %2869, %2867
  %2871 = fptoui float %2870 to i32
  %2872 = uitofp i32 %2871 to float
  %2873 = fdiv fast float 1.000000e+00, %2872
  %2874 = icmp eq i32 %2871, 0
  br i1 %2874, label %2985, label %2875

; <label>:2875                                    ; preds = %2776
  %2876 = fmul fast float %2804, 0x3FA45F3060000000
  %2877 = fmul fast float %2848, 0x3FA45F3060000000
  br label %2878

; <label>:2878                                    ; preds = %2878, %2875
  %2879 = phi float [ %2976, %2878 ], [ %2844, %2875 ]
  %2880 = phi float [ %2977, %2878 ], [ %2845, %2875 ]
  %2881 = phi float [ %2978, %2878 ], [ %2846, %2875 ]
  %2882 = phi float [ %2979, %2878 ], [ 0x3F1A36E2E0000000, %2875 ]
  %2883 = phi float [ %2980, %2878 ], [ 0x3F1A36E2E0000000, %2875 ]
  %2884 = phi float [ %2981, %2878 ], [ 0x3F1A36E2E0000000, %2875 ]
  %2885 = phi i32 [ %2982, %2878 ], [ 0, %2875 ]
  %2886 = sitofp i32 %2885 to float
  %2887 = fadd fast float %2886, %1655
  %2888 = fmul fast float %2873, %2867
  %2889 = fmul fast float %2888, %2887
  %2890 = fsub fast float 1.000000e+00, %2868
  %2891 = fsub fast float %2890, %2889
  %2892 = fmul fast float %2891, 4.000000e+00
  %2893 = fmul fast float %2891, 2.000000e+00
  %2894 = fmul fast float %2891, %2891
  %2895 = fmul fast float %2894, 4.000000e+00
  %2896 = fadd fast float %2895, 1.000000e+00
  %2897 = call float @dx.op.unary.f32(i32 24, float %2896)  ; Sqrt(value)
  %2898 = fadd fast float %2893, %2897
  %2899 = fmul fast float %2892, %2898
  %2900 = fadd fast float %2899, 1.000000e+00
  %2901 = call float @dx.op.unary.f32(i32 23, float %2900)  ; Log(value)
  %2902 = fmul fast float %2901, 0xBFD5555560000000
  %2903 = call float @dx.op.unary.f32(i32 21, float %2902)  ; Exp(value)
  %2904 = fmul fast float %2903, %2903
  %2905 = fmul fast float %2904, %2900
  %2906 = fadd fast float %2903, 1.000000e+00
  %2907 = fadd fast float %2906, %2905
  %2908 = fdiv fast float 2.500000e-01, %2891
  %2909 = fmul fast float %2907, %2908
  %2910 = call float @dx.op.unary.f32(i32 23, float %2909)  ; Log(value)
  %2911 = fmul fast float %2910, 0x4000A2B240000000
  %2912 = fdiv fast float %2911, %2848
  %2913 = fmul fast float %2854, %2912
  %2914 = call float @dx.op.unary.f32(i32 21, float %2913)  ; Exp(value)
  %2915 = fmul fast float %2859, %2912
  %2916 = call float @dx.op.unary.f32(i32 21, float %2915)  ; Exp(value)
  %2917 = fadd fast float %2916, %2914
  %2918 = fmul fast float %2877, %2917
  %2919 = fdiv fast float %2867, %2918
  %2920 = fmul fast float %2886, 0x3FF9E377A0000000
  %2921 = call float @dx.op.unary.f32(i32 22, float %2920)  ; Frc(value)
  %2922 = fadd fast float %2921, %1655
  %2923 = fmul fast float %2922, 0x401921FB60000000
  %2924 = call float @dx.op.unary.f32(i32 13, float %2923)  ; Sin(value)
  %2925 = call float @dx.op.unary.f32(i32 12, float %2923)  ; Cos(value)
  %2926 = fmul fast float %2912, %2810
  %2927 = fmul fast float %2926, %2925
  %2928 = fmul fast float %2912, %2811
  %2929 = fmul fast float %2928, %2924
  %2930 = fadd fast float %2927, %1643
  %2931 = fadd fast float %2929, %1644
  %2932 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %23, float %2930, float %2931, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2933 = extractvalue %dx.types.ResRet.f32 %2932, 0
  %2934 = extractvalue %dx.types.ResRet.f32 %2932, 1
  %2935 = extractvalue %dx.types.ResRet.f32 %2932, 2
  %2936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %23, float %2930, float %2931, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2937 = extractvalue %dx.types.ResRet.f32 %2936, 0
  %2938 = fcmp fast ogt float %2937, -1.000000e+00
  %2939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2940 = extractvalue %dx.types.CBufRet.f32 %2939, 1
  %2941 = select i1 %2938, float %2940, float 1.000000e+00
  %2942 = fadd fast float %2937, 1.000000e+00
  %2943 = fmul fast float %2941, %2942
  %2944 = call float @dx.op.unary.f32(i32 6, float %2943)  ; FAbs(value)
  %2945 = fsub fast float %1669, %2944
  %2946 = fmul fast float %2912, %2912
  %2947 = fmul fast float %2945, %2945
  %2948 = fadd fast float %2947, %2946
  %2949 = call float @dx.op.unary.f32(i32 24, float %2948)  ; Sqrt(value)
  %2950 = fmul fast float %2814, %2949
  %2951 = call float @dx.op.unary.f32(i32 21, float %2950)  ; Exp(value)
  %2952 = fmul fast float %2819, %2949
  %2953 = call float @dx.op.unary.f32(i32 21, float %2952)  ; Exp(value)
  %2954 = fadd fast float %2953, %2951
  %2955 = fmul fast float %2824, %2949
  %2956 = call float @dx.op.unary.f32(i32 21, float %2955)  ; Exp(value)
  %2957 = fmul fast float %2829, %2949
  %2958 = call float @dx.op.unary.f32(i32 21, float %2957)  ; Exp(value)
  %2959 = fadd fast float %2958, %2956
  %2960 = fmul fast float %2834, %2949
  %2961 = call float @dx.op.unary.f32(i32 21, float %2960)  ; Exp(value)
  %2962 = fmul fast float %2839, %2949
  %2963 = call float @dx.op.unary.f32(i32 21, float %2962)  ; Exp(value)
  %2964 = fadd fast float %2963, %2961
  %2965 = fmul fast float %2802, 0x3FA45F3060000000
  %2966 = fmul fast float %2965, %2919
  %2967 = fmul fast float %2966, %2954
  %2968 = fmul fast float %2803, 0x3FA45F3060000000
  %2969 = fmul fast float %2968, %2919
  %2970 = fmul fast float %2969, %2959
  %2971 = fmul fast float %2876, %2919
  %2972 = fmul fast float %2971, %2964
  %2973 = fmul fast float %2967, %2933
  %2974 = fmul fast float %2970, %2934
  %2975 = fmul fast float %2972, %2935
  %2976 = fadd fast float %2973, %2879
  %2977 = fadd fast float %2974, %2880
  %2978 = fadd fast float %2975, %2881
  %2979 = fadd fast float %2967, %2882
  %2980 = fadd fast float %2970, %2883
  %2981 = fadd fast float %2972, %2884
  %2982 = add nuw nsw i32 %2885, 1
  %2983 = icmp eq i32 %2982, %2871
  br i1 %2983, label %2984, label %2878, !llvm.loop !102

; <label>:2984                                    ; preds = %2878
  br label %2985

; <label>:2985                                    ; preds = %2984, %2776
  %2986 = phi float [ %2844, %2776 ], [ %2976, %2984 ]
  %2987 = phi float [ %2845, %2776 ], [ %2977, %2984 ]
  %2988 = phi float [ %2846, %2776 ], [ %2978, %2984 ]
  %2989 = phi float [ 0x3F1A36E2E0000000, %2776 ], [ %2979, %2984 ]
  %2990 = phi float [ 0x3F1A36E2E0000000, %2776 ], [ %2980, %2984 ]
  %2991 = phi float [ 0x3F1A36E2E0000000, %2776 ], [ %2981, %2984 ]
  %2992 = fmul fast float %2823, %2764
  %2993 = fmul fast float %2833, %2765
  %2994 = fmul fast float %2843, %2766
  %2995 = fsub fast float 1.000000e+00, %2823
  %2996 = fsub fast float 1.000000e+00, %2833
  %2997 = fsub fast float 1.000000e+00, %2843
  %2998 = fdiv fast float %2986, %2989
  %2999 = fdiv fast float %2987, %2990
  %3000 = fdiv fast float %2988, %2991
  %3001 = fmul fast float %2998, %2995
  %3002 = fmul fast float %2999, %2996
  %3003 = fmul fast float %3000, %2997
  %3004 = fadd fast float %3001, %2992
  %3005 = fadd fast float %3002, %2993
  %3006 = fadd fast float %3003, %2994
  br label %3007

; <label>:3007                                    ; preds = %2985, %2743
  %3008 = phi float [ %3004, %2985 ], [ 0.000000e+00, %2743 ]
  %3009 = phi float [ %3005, %2985 ], [ 0.000000e+00, %2743 ]
  %3010 = phi float [ %3006, %2985 ], [ 0.000000e+00, %2743 ]
  %3011 = phi float [ %2768, %2985 ], [ 0.000000e+00, %2743 ]
  %3012 = phi float [ %2769, %2985 ], [ 0.000000e+00, %2743 ]
  %3013 = phi float [ %2770, %2985 ], [ 0.000000e+00, %2743 ]
  %3014 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3015 = extractvalue %dx.types.CBufRet.i32 %3014, 3
  %3016 = and i32 %3015, 3
  %3017 = icmp ne i32 %3016, 0
  %3018 = and i32 %3015, 4
  %3019 = icmp ne i32 %3018, 0
  %3020 = and i1 %3017, %3019
  br i1 %3020, label %3021, label %3028, !dx.controlflow.hints !104

; <label>:3021                                    ; preds = %3007
  %3022 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %23, float %1643, float %1644, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3023 = extractvalue %dx.types.ResRet.f32 %3022, 0
  %3024 = fsub fast float 1.000000e+00, %3023
  %3025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %3026 = extractvalue %dx.types.CBufRet.f32 %3025, 0
  %3027 = fcmp fast olt float %3024, %3026
  br label %3031

; <label>:3028                                    ; preds = %3007
  %3029 = icmp eq i32 %3018, 0
  %3030 = and i1 %3017, %3029
  br label %3031

; <label>:3031                                    ; preds = %3028, %3021
  %3032 = phi i1 [ %3027, %3021 ], [ %3030, %3028 ]
  %3033 = select i1 %3032, float 0.000000e+00, float %3012
  %3034 = select i1 %3032, float 0.000000e+00, float %3013
  %3035 = fmul fast float %3011, %3008
  %3036 = fmul fast float %3033, %3009
  %3037 = fmul fast float %3034, %3010
  %3038 = fadd fast float %3035, %2760
  %3039 = fadd fast float %3036, %2761
  %3040 = fadd fast float %3037, %2762
  %3041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3042 = extractvalue %dx.types.CBufRet.f32 %3041, 0
  br i1 %3032, label %3043, label %3062, !dx.controlflow.hints !105

; <label>:3043                                    ; preds = %3031
  %3044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %3045 = extractvalue %dx.types.CBufRet.f32 %3044, 3
  %3046 = call float @dx.op.dot3.f32(i32 55, float %2750, float %2751, float %2752, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3047 = fmul fast float %3046, %3038
  %3048 = call float @dx.op.dot3.f32(i32 55, float %2756, float %2757, float %2758, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3049 = fmul fast float %3042, %3048
  %3050 = fadd fast float %3049, %3047
  br i1 %3020, label %3051, label %3057, !dx.controlflow.hints !106

; <label>:3051                                    ; preds = %3043
  %3052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %3053 = extractvalue %dx.types.CBufRet.f32 %3052, 1
  %3054 = fadd fast float %2750, -1.000000e+00
  %3055 = fmul fast float %3053, %3054
  %3056 = fadd fast float %3055, 1.000000e+00
  br label %3057

; <label>:3057                                    ; preds = %3051, %3043
  %3058 = phi float [ %3056, %3051 ], [ %2750, %3043 ]
  %3059 = fsub fast float %3039, %3045
  %3060 = fmul fast float %3058, %3059
  %3061 = fadd fast float %3060, %3045
  br label %3072

; <label>:3062                                    ; preds = %3031
  %3063 = fmul fast float %3038, %2750
  %3064 = fmul fast float %3039, %2751
  %3065 = fmul fast float %3040, %2752
  %3066 = fmul fast float %3042, %2756
  %3067 = fmul fast float %3042, %2757
  %3068 = fmul fast float %3042, %2758
  %3069 = fadd fast float %3066, %3063
  %3070 = fadd fast float %3067, %3064
  %3071 = fadd fast float %3068, %3065
  br label %3072

; <label>:3072                                    ; preds = %3062, %3057
  %3073 = phi float [ %3050, %3057 ], [ %3069, %3062 ]
  %3074 = phi float [ %3061, %3057 ], [ %3070, %3062 ]
  %3075 = phi float [ %3040, %3057 ], [ %3071, %3062 ]
  %3076 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %3077 = extractvalue %dx.types.CBufRet.i32 %3076, 1
  %3078 = shl i32 %3077, 1
  %3079 = lshr i32 %1625, 5
  %3080 = extractvalue %dx.types.CBufRet.i32 %3076, 0
  %3081 = mul i32 %3080, %3079
  %3082 = add i32 %3078, %1535
  %3083 = add i32 %3082, %3081
  %3084 = shl i32 %3083, 2
  %3085 = and i32 %1625, 24
  %3086 = or i32 %3085, %1540
  %3087 = shl i32 1, %3086
  %3088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3084, i32 undef)  ; BufferLoad(srv,index,wot)
  %3089 = extractvalue %dx.types.ResRet.i32 %3088, 0
  %3090 = and i32 %3089, %3087
  %3091 = icmp eq i32 %3090, 0
  br i1 %3091, label %3107, label %3092, !dx.controlflow.hints !107

; <label>:3092                                    ; preds = %3072
  %3093 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1624, i32 %1625, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3094 = extractvalue %dx.types.ResRet.f32 %3093, 0
  %3095 = fcmp fast ogt float %3094, 0.000000e+00
  br i1 %3095, label %3096, label %3107, !dx.controlflow.hints !108

; <label>:3096                                    ; preds = %3092
  %3097 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %1624, i32 %1625, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3098 = extractvalue %dx.types.ResRet.f32 %3097, 0
  %3099 = extractvalue %dx.types.ResRet.f32 %3097, 1
  %3100 = extractvalue %dx.types.ResRet.f32 %3097, 2
  %3101 = extractvalue %dx.types.ResRet.f32 %3097, 3
  %3102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %3103 = extractvalue %dx.types.CBufRet.f32 %3102, 2
  %3104 = fmul fast float %3103, %3098
  %3105 = fmul fast float %3103, %3099
  %3106 = fmul fast float %3103, %3100
  br label %3107

; <label>:3107                                    ; preds = %3096, %3092, %3072
  %3108 = phi float [ %3104, %3096 ], [ 0.000000e+00, %3092 ], [ 0.000000e+00, %3072 ]
  %3109 = phi float [ %3105, %3096 ], [ 0.000000e+00, %3092 ], [ 0.000000e+00, %3072 ]
  %3110 = phi float [ %3106, %3096 ], [ 0.000000e+00, %3092 ], [ 0.000000e+00, %3072 ]
  %3111 = phi float [ %3101, %3096 ], [ 0.000000e+00, %3092 ], [ 0.000000e+00, %3072 ]
  %3112 = fsub fast float 1.000000e+00, %3111
  %3113 = fmul fast float %3112, %3073
  %3114 = fmul fast float %3112, %3074
  %3115 = fmul fast float %3112, %3075
  %3116 = fadd fast float %3113, %3108
  %3117 = fadd fast float %3114, %3109
  %3118 = fadd fast float %3115, %3110
  %3119 = fadd fast float %1655, 0x3FE3C6EF40000000
  %3120 = call float @dx.op.unary.f32(i32 22, float %3119)  ; Frc(value)
  %3121 = call float @dx.op.unary.f32(i32 23, float %3116)  ; Log(value)
  %3122 = fadd fast float %3121, -7.000000e+00
  %3123 = call float @dx.op.unary.f32(i32 21, float %3122)  ; Exp(value)
  %3124 = fmul fast float %3120, 2.000000e+00
  %3125 = fadd fast float %3124, -1.000000e+00
  %3126 = fmul fast float %3123, %3125
  %3127 = fcmp fast ogt float %3116, 0.000000e+00
  %3128 = select i1 %3127, float %3126, float 0.000000e+00
  %3129 = fadd fast float %3128, %3116
  %3130 = fadd fast float %1655, 0x3FF3C6EF40000000
  %3131 = call float @dx.op.unary.f32(i32 22, float %3130)  ; Frc(value)
  %3132 = call float @dx.op.unary.f32(i32 23, float %3117)  ; Log(value)
  %3133 = fadd fast float %3132, -7.000000e+00
  %3134 = call float @dx.op.unary.f32(i32 21, float %3133)  ; Exp(value)
  %3135 = fmul fast float %3131, 2.000000e+00
  %3136 = fadd fast float %3135, -1.000000e+00
  %3137 = fmul fast float %3134, %3136
  %3138 = fcmp fast ogt float %3117, 0.000000e+00
  %3139 = select i1 %3138, float %3137, float 0.000000e+00
  %3140 = fadd fast float %3139, %3117
  %3141 = fadd fast float %1655, 0x3FFDAA66E0000000
  %3142 = call float @dx.op.unary.f32(i32 22, float %3141)  ; Frc(value)
  %3143 = call float @dx.op.unary.f32(i32 23, float %3118)  ; Log(value)
  %3144 = fadd fast float %3143, -6.000000e+00
  %3145 = call float @dx.op.unary.f32(i32 21, float %3144)  ; Exp(value)
  %3146 = fmul fast float %3142, 2.000000e+00
  %3147 = fadd fast float %3146, -1.000000e+00
  %3148 = fmul fast float %3145, %3147
  %3149 = fcmp fast ogt float %3118, 0.000000e+00
  %3150 = select i1 %3149, float %3148, float 0.000000e+00
  %3151 = fadd fast float %3150, %3118
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1624, i32 %1625, i32 undef, float %3129, float %3140, float %3151, float %3129, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %3152 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3153 = extractvalue %dx.types.CBufRet.i32 %3152, 0
  %3154 = and i32 %3153, 1
  %3155 = icmp ne i32 %3154, 0
  %3156 = or i32 %1625, %1617
  %3157 = and i32 %3156, 1
  %3158 = icmp eq i32 %3157, 0
  %3159 = and i1 %3158, %3155
  br i1 %3159, label %3160, label %1634, !dx.controlflow.hints !109

; <label>:3160                                    ; preds = %3107
  %3161 = and i32 %48, 2147483647
  %3162 = lshr i32 %1625, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %3161, i32 %3162, i32 undef, float %3038, float %3039, float %3040, float %3038, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1634

; <label>:3163                                    ; preds = %1634
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

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
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

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
!4 = !{!5, !26, !29, !33}
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
!26 = !{!27, !28}
!27 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!28 = !{i32 1, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!29 = !{!30, !31, !32}
!30 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!31 = !{i32 1, %PostOpaqueConstants* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!32 = !{i32 2, %SSSBlurConstBuffer* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!33 = !{!34, !35, !36}
!34 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!35 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!36 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!37 = !{void ()* @cs_post_opaque_processes_subsampletile_dmfpscale, !"cs_post_opaque_processes_subsampletile_dmfpscale", null, !4, !38}
!38 = !{i32 0, i64 272, i32 4, !39}
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
!111 = !{!66}
!112 = !{!113, !115, !117, !118, !120, !121, !66}
!113 = distinct !{!113, !114, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!114 = distinct !{!114, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!115 = distinct !{!115, !116, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!116 = distinct !{!116, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!117 = distinct !{!117, !116, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!118 = distinct !{!118, !119, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %extinction"}
!119 = distinct !{!119, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z"}
!120 = distinct !{!120, !119, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %scattering"}
!121 = distinct !{!121, !119, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %thermalFogExtinction"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"\01?sort@@YAXAIAM00@Z: %c"}
!124 = distinct !{!124, !"\01?sort@@YAXAIAM00@Z"}
!125 = !{!126, !127, !113, !115, !117, !118, !120, !121, !66}
!126 = distinct !{!126, !124, !"\01?sort@@YAXAIAM00@Z: %a"}
!127 = distinct !{!127, !124, !"\01?sort@@YAXAIAM00@Z: %b"}
!128 = !{!127}
!129 = !{!126, !123, !113, !115, !117, !118, !120, !121, !66}
!130 = !{!126}
!131 = !{!127, !123, !113, !115, !117, !118, !120, !121, !66}
!132 = !{!133}
!133 = distinct !{!133, !134, !"\01?sort@@YAXAIAM00@Z: %c"}
!134 = distinct !{!134, !"\01?sort@@YAXAIAM00@Z"}
!135 = !{!136, !137, !113, !115, !117, !118, !120, !121, !66}
!136 = distinct !{!136, !134, !"\01?sort@@YAXAIAM00@Z: %a"}
!137 = distinct !{!137, !134, !"\01?sort@@YAXAIAM00@Z: %b"}
!138 = !{!137}
!139 = !{!136, !133, !113, !115, !117, !118, !120, !121, !66}
!140 = !{!136}
!141 = !{!137, !133, !113, !115, !117, !118, !120, !121, !66}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 2}

