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
; shader hash: 36c8cbebee9ba099b45eea435a2d7e51
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
  %32 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %33 = alloca [3 x float], align 4
  %34 = alloca [3 x float], align 4
  %35 = alloca [3 x float], align 4
  %36 = alloca [3 x float], align 4
  %37 = alloca [4 x float], align 4
  %38 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.i32 %38, 0
  %40 = extractvalue %dx.types.CBufRet.i32 %38, 1
  %41 = mul i32 %40, %39
  %42 = add i32 %41, %31
  %43 = shl i32 %42, 2
  %44 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %43, i32 undef)  ; BufferLoad(srv,index,wot)
  %45 = extractvalue %dx.types.ResRet.i32 %44, 0
  %46 = lshr i32 %45, 16
  %47 = shl i32 %45, 3
  %48 = and i32 %47, 524280
  %49 = shl nuw nsw i32 %46, 3
  %50 = add i32 %48, %29
  %51 = add i32 %49, %30
  %52 = shl i32 %50, 1
  %53 = shl i32 %51, 1
  %54 = uitofp i32 %52 to float
  %55 = uitofp i32 %53 to float
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 2
  %58 = extractvalue %dx.types.CBufRet.f32 %56, 3
  %59 = fmul fast float %54, %57
  %60 = fmul fast float %55, %58
  %61 = fadd fast float %59, %57
  %62 = fadd fast float %60, %58
  %63 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %25, float %61, float %62, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %64 = extractvalue %dx.types.ResRet.f32 %63, 0
  %65 = extractvalue %dx.types.ResRet.f32 %63, 1
  %66 = extractvalue %dx.types.ResRet.f32 %63, 2
  %67 = extractvalue %dx.types.ResRet.f32 %63, 3
  %68 = fcmp fast ogt float %67, -1.000000e+00
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 1
  %71 = select i1 %68, float %70, float 1.000000e+00
  %72 = fadd fast float %67, 1.000000e+00
  %73 = fmul fast float %71, %72
  %74 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %75 = fcmp fast ogt float %66, -1.000000e+00
  %76 = select i1 %75, float %70, float 1.000000e+00
  %77 = fadd fast float %66, 1.000000e+00
  %78 = fmul fast float %76, %77
  %79 = call float @dx.op.unary.f32(i32 6, float %78)  ; FAbs(value)
  %80 = fcmp fast ogt float %64, -1.000000e+00
  %81 = select i1 %80, float %70, float 1.000000e+00
  %82 = fadd fast float %64, 1.000000e+00
  %83 = fmul fast float %81, %82
  %84 = call float @dx.op.unary.f32(i32 6, float %83)  ; FAbs(value)
  %85 = fcmp fast ogt float %65, -1.000000e+00
  %86 = select i1 %85, float %70, float 1.000000e+00
  %87 = fadd fast float %65, 1.000000e+00
  %88 = fmul fast float %86, %87
  %89 = call float @dx.op.unary.f32(i32 6, float %88)  ; FAbs(value)
  %90 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 0
  store float %74, float* %90, align 4
  %91 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 1
  store float %79, float* %91, align 4
  %92 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 2
  store float %84, float* %92, align 4
  %93 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 3
  store float %89, float* %93, align 4
  %94 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %95 = extractvalue %dx.types.ResRet.i32 %94, 0
  %96 = and i32 %95, 114688
  %97 = icmp ne i32 %96, 0
  %98 = select i1 %97, i32 %52, i32 0
  %99 = select i1 %97, i32 %53, i32 0
  %100 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %98, i32 %99, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %101 = extractvalue %dx.types.ResRet.f32 %100, 0
  %102 = fmul fast float %101, 2.550000e+02
  %103 = fptoui float %102 to i32
  %104 = icmp eq i32 %103, 3
  %105 = and i1 %97, %104
  %106 = extractvalue %dx.types.CBufRet.f32 %69, 3
  %107 = fcmp fast oge float %74, %106
  %108 = fadd fast float %54, 5.000000e-01
  %109 = fadd fast float %55, 5.000000e-01
  br i1 %105, label %971, label %110, !dx.controlflow.hints !41

; <label>:110                                     ; preds = %0
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 170)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 0
  %113 = select i1 %107, float %112, float %74
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 2
  %116 = extractvalue %dx.types.CBufRet.f32 %114, 3
  %117 = fmul fast float %108, 2.000000e+00
  %118 = fmul fast float %117, %115
  %119 = fmul fast float %109, 2.000000e+00
  %120 = fmul fast float %119, %116
  %121 = fsub fast float 1.000000e+00, %118
  %122 = fsub fast float 1.000000e+00, %120
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %127 = fmul fast float %121, %124
  %128 = fmul fast float %121, %125
  %129 = fmul fast float %121, %126
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %133 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %134 = fmul fast float %122, %131
  %135 = fmul fast float %122, %132
  %136 = fmul fast float %122, %133
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %140 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %141 = fadd fast float %134, %138
  %142 = fadd fast float %141, %127
  %143 = fadd fast float %135, %139
  %144 = fadd fast float %143, %128
  %145 = fadd fast float %136, %140
  %146 = fadd fast float %145, %129
  %147 = fmul fast float %142, %113
  %148 = fmul fast float %144, %113
  %149 = fmul fast float %146, %113
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 163)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 0
  %154 = extractvalue %dx.types.CBufRet.f32 %152, 1
  %155 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %156 = extractvalue %dx.types.CBufRet.f32 %152, 3
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %160 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %161 = extractvalue %dx.types.CBufRet.f32 %157, 3
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %165 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %166 = extractvalue %dx.types.CBufRet.f32 %162, 3
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 0
  %169 = extractvalue %dx.types.CBufRet.f32 %167, 1
  %170 = extractvalue %dx.types.CBufRet.f32 %167, 2
  %171 = extractvalue %dx.types.CBufRet.f32 %167, 3
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 3
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 3
  %176 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %177 = extractvalue %dx.types.CBufRet.f32 %174, 1
  %178 = extractvalue %dx.types.CBufRet.f32 %174, 2
  %179 = fcmp fast olt float %178, -5.000000e-01
  %180 = extractvalue %dx.types.CBufRet.f32 %150, 3
  %181 = call float @dx.op.dot3.f32(i32 55, float %147, float %148, float %149, float %147, float %148, float %149)  ; Dot3(ax,ay,az,bx,by,bz)
  %182 = call float @dx.op.unary.f32(i32 25, float %181)  ; Rsqrt(value)
  %183 = fmul fast float %182, %181
  %184 = fmul fast float %182, %147
  %185 = fmul fast float %182, %148
  %186 = fmul fast float %182, %149
  %187 = fadd fast float %183, %156
  br i1 %107, label %188, label %200, !dx.controlflow.hints !42

; <label>:188                                     ; preds = %110
  %189 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %190 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 187)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.f32 %191, 1
  %193 = extractvalue %dx.types.CBufRet.f32 %191, 0
  %194 = call float @dx.op.binary.f32(i32 35, float %186, float %193)  ; FMax(a,b)
  %195 = call float @dx.op.binary.f32(i32 36, float %194, float %192)  ; FMin(a,b)
  %196 = fmul fast float %195, %190
  %197 = fadd fast float %196, %189
  %198 = call float @dx.op.unary.f32(i32 7, float %197)  ; Saturate(value)
  %199 = fmul fast float %186, %151
  br label %200

; <label>:200                                     ; preds = %188, %110
  %201 = phi float [ %151, %188 ], [ %187, %110 ]
  %202 = phi float [ %198, %188 ], [ 0.000000e+00, %110 ]
  %203 = phi float [ %199, %188 ], [ %149, %110 ]
  %204 = call float @dx.op.dot3.f32(i32 55, float %184, float %185, float %186, float %153, float %154, float %155)  ; Dot3(ax,ay,az,bx,by,bz)
  %205 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.i32 %205, 1
  %207 = and i32 %206, 1
  %208 = icmp ne i32 %207, 0
  %209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.f32 %209, 2
  %211 = fcmp fast ogt float %210, 0.000000e+00
  %212 = and i1 %208, %211
  br i1 %212, label %213, label %622, !dx.controlflow.hints !43

; <label>:213                                     ; preds = %200
  %214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.f32 %214, 3
  %216 = select i1 %107, float %215, float %183
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 3
  %219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.f32 %219, 2
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 2
  %223 = fsub fast float %220, %222
  %224 = and i32 %206, 2
  %225 = extractvalue %dx.types.CBufRet.i32 %205, 0
  %226 = call i32 @dx.op.binary.i32(i32 40, i32 %225, i32 3)  ; UMin(a,b)
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.f32 %227, 0
  %229 = extractvalue %dx.types.CBufRet.f32 %227, 1
  %230 = extractvalue %dx.types.CBufRet.f32 %221, 0
  %231 = extractvalue %dx.types.CBufRet.f32 %221, 1
  %232 = fsub fast float %228, %230
  %233 = fsub fast float %229, %231
  %234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.f32 %234, 0
  %236 = fcmp fast ogt float %235, 0.000000e+00
  %237 = fsub fast float -0.000000e+00, %232
  %238 = fsub fast float -0.000000e+00, %233
  %239 = call float @dx.op.dot2.f32(i32 54, float %184, float %185, float %184, float %185)  ; Dot2(ax,ay,bx,by)
  %240 = call float @dx.op.dot2.f32(i32 54, float %184, float %185, float %237, float %238)  ; Dot2(ax,ay,bx,by)
  %241 = fmul fast float %240, 2.000000e+00
  %242 = call float @dx.op.dot2.f32(i32 54, float %237, float %238, float %237, float %238)  ; Dot2(ax,ay,bx,by)
  %243 = fmul fast float %235, %235
  %244 = fsub fast float %242, %243
  %245 = fmul fast float %241, %241
  %246 = fmul fast float %239, 4.000000e+00
  %247 = fmul fast float %246, %244
  %248 = fsub fast float %245, %247
  %249 = fcmp fast ogt float %248, 0.000000e+00
  br i1 %249, label %250, label %265, !dx.controlflow.hints !44

; <label>:250                                     ; preds = %213
  %251 = fcmp fast ogt float %241, 0.000000e+00
  %252 = call float @dx.op.unary.f32(i32 24, float %248)  ; Sqrt(value)
  %253 = fsub fast float -0.000000e+00, %252
  %254 = select i1 %251, float %252, float %253
  %255 = fadd fast float %254, %241
  %256 = fmul float %255, -5.000000e-01
  %257 = fdiv fast float %256, %239
  %258 = call float @dx.op.binary.f32(i32 35, float %257, float 0.000000e+00)  ; FMax(a,b)
  %259 = call float @dx.op.binary.f32(i32 36, float %216, float %258)  ; FMin(a,b)
  %260 = fdiv fast float %244, %256
  %261 = call float @dx.op.binary.f32(i32 35, float %260, float 0.000000e+00)  ; FMax(a,b)
  %262 = call float @dx.op.binary.f32(i32 36, float %216, float %261)  ; FMin(a,b)
  %263 = call float @dx.op.binary.f32(i32 36, float %259, float %262)  ; FMin(a,b)
  %264 = call float @dx.op.binary.f32(i32 35, float %259, float %262)  ; FMax(a,b)
  br label %265

; <label>:265                                     ; preds = %250, %213
  %266 = phi float [ %264, %250 ], [ -1.000000e+00, %213 ]
  %267 = phi float [ %263, %250 ], [ -1.000000e+00, %213 ]
  %268 = phi i1 [ true, %250 ], [ false, %213 ]
  %269 = and i1 %236, %268
  br i1 %269, label %270, label %272, !dx.controlflow.hints !45

; <label>:270                                     ; preds = %265
  %271 = fcmp fast oeq float %267, %266
  br i1 %271, label %575, label %273, !dx.controlflow.hints !46

; <label>:272                                     ; preds = %265
  br i1 %236, label %575, label %273, !dx.controlflow.hints !47

; <label>:273                                     ; preds = %272, %270
  %274 = phi float [ %216, %272 ], [ %266, %270 ]
  %275 = phi float [ 0.000000e+00, %272 ], [ %267, %270 ]
  %276 = icmp ne i32 %224, 0
  %277 = fmul fast float %274, %186
  %278 = fadd fast float %277, %218
  %279 = fmul fast float %278, %274
  %280 = select i1 %276, float 0.000000e+00, float %279
  %281 = fcmp fast oeq float %186, 0.000000e+00
  %282 = fdiv fast float %223, %186
  %283 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %282)  ; FMax(a,b)
  %284 = select i1 %281, float %274, float %283
  %285 = call float @dx.op.binary.f32(i32 36, float %274, float %284)  ; FMin(a,b)
  %286 = fcmp fast ogt float %186, 0.000000e+00
  %287 = fcmp fast olt float %223, 0.000000e+00
  br i1 %286, label %288, label %345, !dx.controlflow.hints !48

; <label>:288                                     ; preds = %273
  %289 = icmp eq i32 %224, 0
  br i1 %287, label %290, label %334, !dx.controlflow.hints !49

; <label>:290                                     ; preds = %288
  %291 = select i1 %289, float %274, float 0.000000e+00
  %292 = fsub fast float -0.000000e+00, %291
  %293 = call float @dx.op.unary.f32(i32 6, float %292)  ; FAbs(value)
  %294 = fmul fast float %291, %186
  %295 = fadd fast float %294, %218
  %296 = fmul fast float %293, %295
  %297 = fsub fast float %280, %296
  %298 = fsub fast float %274, %293
  %299 = select i1 %289, float %298, float 0.000000e+00
  %300 = extractvalue %dx.types.CBufRet.f32 %214, 0
  %301 = extractvalue %dx.types.CBufRet.f32 %214, 1
  %302 = extractvalue %dx.types.CBufRet.f32 %214, 2
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 0
  %305 = extractvalue %dx.types.CBufRet.f32 %303, 1
  %306 = extractvalue %dx.types.CBufRet.f32 %303, 2
  %307 = extractvalue %dx.types.CBufRet.f32 %303, 3
  %308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.f32 %308, 3
  %310 = call float @dx.op.binary.f32(i32 36, float %297, float %309)  ; FMin(a,b)
  %311 = fmul fast float %307, %299
  %312 = call float @dx.op.unary.f32(i32 7, float %311)  ; Saturate(value)
  %313 = fsub fast float %304, %300
  %314 = fsub fast float %305, %301
  %315 = fsub fast float %306, %302
  %316 = fmul fast float %312, %313
  %317 = fmul fast float %312, %314
  %318 = fmul fast float %312, %315
  %319 = fadd fast float %316, %300
  %320 = fadd fast float %317, %301
  %321 = fadd fast float %318, %302
  br i1 %107, label %575, label %322, !dx.controlflow.hints !50

; <label>:322                                     ; preds = %290
  %323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %324 = extractvalue %dx.types.CBufRet.f32 %323, 0
  %325 = extractvalue %dx.types.CBufRet.f32 %323, 1
  %326 = fadd fast float %325, %324
  %327 = call float @dx.op.unary.f32(i32 7, float %326)  ; Saturate(value)
  %328 = extractvalue %dx.types.CBufRet.f32 %323, 2
  %329 = extractvalue %dx.types.CBufRet.f32 %323, 3
  %330 = fadd fast float %329, %328
  %331 = call float @dx.op.unary.f32(i32 7, float %330)  ; Saturate(value)
  %332 = fmul fast float %327, %310
  %333 = fmul fast float %332, %331
  br label %575

; <label>:334                                     ; preds = %288
  br i1 %289, label %335, label %356, !dx.controlflow.hints !51

; <label>:335                                     ; preds = %334
  %336 = call float @dx.op.binary.f32(i32 36, float %285, float %275)  ; FMin(a,b)
  %337 = fsub fast float %285, %336
  %338 = fsub fast float %337, %274
  %339 = call float @dx.op.unary.f32(i32 6, float %338)  ; FAbs(value)
  %340 = fadd fast float %337, %274
  %341 = fmul fast float %340, %186
  %342 = fadd fast float %341, %218
  %343 = fmul fast float %342, %339
  %344 = fsub fast float %280, %343
  br label %356

; <label>:345                                     ; preds = %273
  br i1 %287, label %346, label %356, !dx.controlflow.hints !52

; <label>:346                                     ; preds = %345
  %347 = call float @dx.op.binary.f32(i32 35, float %275, float %285)  ; FMax(a,b)
  %348 = icmp eq i32 %224, 0
  %349 = select i1 %348, float %285, float 0.000000e+00
  %350 = fsub fast float -0.000000e+00, %349
  %351 = call float @dx.op.unary.f32(i32 6, float %350)  ; FAbs(value)
  %352 = fmul fast float %349, %186
  %353 = fadd fast float %352, %218
  %354 = fmul fast float %351, %353
  %355 = fsub fast float %280, %354
  br label %356

; <label>:356                                     ; preds = %346, %345, %335, %334
  %357 = phi float [ %275, %334 ], [ %275, %335 ], [ %347, %346 ], [ %275, %345 ]
  %358 = phi float [ 0.000000e+00, %334 ], [ %339, %335 ], [ %351, %346 ], [ 0.000000e+00, %345 ]
  %359 = phi float [ %280, %334 ], [ %344, %335 ], [ %355, %346 ], [ %280, %345 ]
  %360 = phi float [ %285, %334 ], [ %285, %335 ], [ %274, %346 ], [ %274, %345 ]
  %361 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 0
  store float -1.000000e+00, float* %361, align 4, !tbaa !53, !noalias !57
  %362 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 1
  store float -1.000000e+00, float* %362, align 4, !tbaa !53, !noalias !57
  %363 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 2
  store float -1.000000e+00, float* %363, align 4, !tbaa !53, !noalias !57
  %364 = getelementptr inbounds [3 x float], [3 x float]* %36, i32 0, i32 0
  store float -1.000000e+00, float* %364, align 4, !tbaa !53, !noalias !57
  %365 = getelementptr inbounds [3 x float], [3 x float]* %36, i32 0, i32 1
  store float -1.000000e+00, float* %365, align 4, !tbaa !53, !noalias !57
  %366 = getelementptr inbounds [3 x float], [3 x float]* %36, i32 0, i32 2
  store float -1.000000e+00, float* %366, align 4, !tbaa !53, !noalias !57
  %367 = icmp sgt i32 %226, 0
  br i1 %367, label %368, label %429

; <label>:368                                     ; preds = %356
  br label %369

; <label>:369                                     ; preds = %418, %368
  %370 = phi i32 [ %419, %418 ], [ 0, %368 ]
  %371 = phi i32 [ %420, %418 ], [ 0, %368 ]
  %372 = add nuw i32 %371, 171
  %373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 %372)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.f32 %373, 0
  %375 = extractvalue %dx.types.CBufRet.f32 %373, 1
  %376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %377 = extractvalue %dx.types.CBufRet.f32 %376, 0
  %378 = extractvalue %dx.types.CBufRet.f32 %376, 1
  %379 = fsub fast float %374, %377
  %380 = fsub fast float %375, %378
  %381 = extractvalue %dx.types.CBufRet.f32 %373, 2
  %382 = fsub fast float -0.000000e+00, %379
  %383 = fsub fast float -0.000000e+00, %380
  %384 = call float @dx.op.dot2.f32(i32 54, float %184, float %185, float %382, float %383)  ; Dot2(ax,ay,bx,by)
  %385 = fmul fast float %384, 2.000000e+00
  %386 = call float @dx.op.dot2.f32(i32 54, float %382, float %383, float %382, float %383)  ; Dot2(ax,ay,bx,by)
  %387 = fmul fast float %381, %381
  %388 = fsub fast float %386, %387
  %389 = fmul fast float %385, %385
  %390 = fmul fast float %246, %388
  %391 = fsub fast float %389, %390
  %392 = fcmp fast ogt float %391, 0.000000e+00
  br i1 %392, label %393, label %408, !dx.controlflow.hints !44

; <label>:393                                     ; preds = %369
  %394 = fcmp fast ogt float %385, 0.000000e+00
  %395 = call float @dx.op.unary.f32(i32 24, float %391)  ; Sqrt(value)
  %396 = fsub fast float -0.000000e+00, %395
  %397 = select i1 %394, float %395, float %396
  %398 = fadd fast float %397, %385
  %399 = fmul float %398, -5.000000e-01
  %400 = fdiv fast float %399, %239
  %401 = call float @dx.op.binary.f32(i32 35, float %400, float 0.000000e+00)  ; FMax(a,b)
  %402 = call float @dx.op.binary.f32(i32 36, float %274, float %401)  ; FMin(a,b)
  %403 = fdiv fast float %388, %399
  %404 = call float @dx.op.binary.f32(i32 35, float %403, float 0.000000e+00)  ; FMax(a,b)
  %405 = call float @dx.op.binary.f32(i32 36, float %274, float %404)  ; FMin(a,b)
  %406 = call float @dx.op.binary.f32(i32 36, float %402, float %405)  ; FMin(a,b)
  %407 = call float @dx.op.binary.f32(i32 35, float %402, float %405)  ; FMax(a,b)
  br label %408

; <label>:408                                     ; preds = %393, %369
  %409 = phi float [ %407, %393 ], [ -1.000000e+00, %369 ]
  %410 = phi float [ %406, %393 ], [ -1.000000e+00, %369 ]
  %411 = phi i1 [ true, %393 ], [ false, %369 ]
  br i1 %411, label %412, label %418, !dx.controlflow.hints !69

; <label>:412                                     ; preds = %408
  %413 = call float @dx.op.binary.f32(i32 35, float %357, float %410)  ; FMax(a,b)
  %414 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 %371
  store float %413, float* %414, align 4, !tbaa !53, !noalias !57
  %415 = call float @dx.op.binary.f32(i32 35, float %357, float %409)  ; FMax(a,b)
  %416 = getelementptr inbounds [3 x float], [3 x float]* %36, i32 0, i32 %371
  store float %415, float* %416, align 4, !tbaa !53, !noalias !57
  %417 = add nsw i32 %370, 1
  br label %418

; <label>:418                                     ; preds = %412, %408
  %419 = phi i32 [ %417, %412 ], [ %370, %408 ]
  %420 = add nuw nsw i32 %371, 1
  %421 = icmp eq i32 %420, %226
  br i1 %421, label %422, label %369

; <label>:422                                     ; preds = %418
  %423 = load float, float* %363, align 4, !tbaa !53, !alias.scope !70, !noalias !73
  %424 = load float, float* %362, align 4, !tbaa !53, !alias.scope !76, !noalias !77
  %425 = load float, float* %361, align 4, !tbaa !53, !alias.scope !78, !noalias !79
  %426 = load float, float* %366, align 4, !tbaa !53, !alias.scope !80, !noalias !83
  %427 = load float, float* %365, align 4, !tbaa !53, !alias.scope !86, !noalias !87
  %428 = load float, float* %364, align 4, !tbaa !53, !alias.scope !88, !noalias !89
  br label %429

; <label>:429                                     ; preds = %422, %356
  %430 = phi float [ -1.000000e+00, %356 ], [ %428, %422 ]
  %431 = phi float [ -1.000000e+00, %356 ], [ %427, %422 ]
  %432 = phi float [ -1.000000e+00, %356 ], [ %426, %422 ]
  %433 = phi float [ -1.000000e+00, %356 ], [ %425, %422 ]
  %434 = phi float [ -1.000000e+00, %356 ], [ %424, %422 ]
  %435 = phi float [ -1.000000e+00, %356 ], [ %423, %422 ]
  %436 = phi i32 [ 0, %356 ], [ %419, %422 ]
  %437 = call float @dx.op.binary.f32(i32 36, float %434, float %435)  ; FMin(a,b)
  %438 = call float @dx.op.binary.f32(i32 36, float %433, float %437)  ; FMin(a,b)
  %439 = call float @dx.op.binary.f32(i32 35, float %433, float %434)  ; FMax(a,b)
  %440 = call float @dx.op.binary.f32(i32 36, float %439, float %435)  ; FMin(a,b)
  %441 = call float @dx.op.binary.f32(i32 36, float %433, float %434)  ; FMin(a,b)
  %442 = call float @dx.op.binary.f32(i32 35, float %441, float %440)  ; FMax(a,b)
  %443 = call float @dx.op.binary.f32(i32 35, float %434, float %435)  ; FMax(a,b)
  %444 = call float @dx.op.binary.f32(i32 35, float %433, float %443)  ; FMax(a,b)
  store float %438, float* %361, align 4, !tbaa !53, !alias.scope !78, !noalias !79
  store float %442, float* %362, align 4, !tbaa !53, !alias.scope !76, !noalias !77
  store float %444, float* %363, align 4, !tbaa !53, !alias.scope !70, !noalias !73
  %445 = call float @dx.op.binary.f32(i32 36, float %431, float %432)  ; FMin(a,b)
  %446 = call float @dx.op.binary.f32(i32 36, float %430, float %445)  ; FMin(a,b)
  %447 = call float @dx.op.binary.f32(i32 35, float %430, float %431)  ; FMax(a,b)
  %448 = call float @dx.op.binary.f32(i32 36, float %447, float %432)  ; FMin(a,b)
  %449 = call float @dx.op.binary.f32(i32 36, float %430, float %431)  ; FMin(a,b)
  %450 = call float @dx.op.binary.f32(i32 35, float %449, float %448)  ; FMax(a,b)
  %451 = call float @dx.op.binary.f32(i32 35, float %431, float %432)  ; FMax(a,b)
  %452 = call float @dx.op.binary.f32(i32 35, float %430, float %451)  ; FMax(a,b)
  store float %446, float* %364, align 4, !tbaa !53, !alias.scope !88, !noalias !89
  store float %450, float* %365, align 4, !tbaa !53, !alias.scope !86, !noalias !87
  store float %452, float* %366, align 4, !tbaa !53, !alias.scope !80, !noalias !83
  %453 = sub nsw i32 3, %436
  %454 = icmp sgt i32 %453, 2
  br i1 %454, label %455, label %493, !dx.controlflow.hints !90

; <label>:455                                     ; preds = %429
  %456 = icmp eq i32 %224, 0
  %457 = fsub fast float %274, %358
  %458 = select i1 %456, float %457, float %358
  %459 = extractvalue %dx.types.CBufRet.f32 %214, 0
  %460 = extractvalue %dx.types.CBufRet.f32 %214, 1
  %461 = extractvalue %dx.types.CBufRet.f32 %214, 2
  %462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %463 = extractvalue %dx.types.CBufRet.f32 %462, 0
  %464 = extractvalue %dx.types.CBufRet.f32 %462, 1
  %465 = extractvalue %dx.types.CBufRet.f32 %462, 2
  %466 = extractvalue %dx.types.CBufRet.f32 %462, 3
  %467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %468 = extractvalue %dx.types.CBufRet.f32 %467, 3
  %469 = call float @dx.op.binary.f32(i32 36, float %359, float %468)  ; FMin(a,b)
  %470 = fmul fast float %466, %458
  %471 = call float @dx.op.unary.f32(i32 7, float %470)  ; Saturate(value)
  %472 = fsub fast float %463, %459
  %473 = fsub fast float %464, %460
  %474 = fsub fast float %465, %461
  %475 = fmul fast float %471, %472
  %476 = fmul fast float %471, %473
  %477 = fmul fast float %471, %474
  %478 = fadd fast float %475, %459
  %479 = fadd fast float %476, %460
  %480 = fadd fast float %477, %461
  br i1 %107, label %575, label %481, !dx.controlflow.hints !50

; <label>:481                                     ; preds = %455
  %482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %483 = extractvalue %dx.types.CBufRet.f32 %482, 0
  %484 = extractvalue %dx.types.CBufRet.f32 %482, 1
  %485 = fadd fast float %484, %483
  %486 = call float @dx.op.unary.f32(i32 7, float %485)  ; Saturate(value)
  %487 = extractvalue %dx.types.CBufRet.f32 %482, 2
  %488 = extractvalue %dx.types.CBufRet.f32 %482, 3
  %489 = fadd fast float %488, %487
  %490 = call float @dx.op.unary.f32(i32 7, float %489)  ; Saturate(value)
  %491 = fmul fast float %486, %469
  %492 = fmul fast float %491, %490
  br label %575

; <label>:493                                     ; preds = %429
  %494 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 %453
  %495 = load float, float* %494, align 4, !tbaa !53, !noalias !57
  %496 = fcmp fast olt float %495, %360
  %497 = icmp sgt i32 %436, 0
  %498 = and i1 %497, %496
  br i1 %498, label %499, label %536

; <label>:499                                     ; preds = %493
  br label %500

; <label>:500                                     ; preds = %529, %499
  %501 = phi float [ %530, %529 ], [ %358, %499 ]
  %502 = phi float [ %531, %529 ], [ %359, %499 ]
  %503 = phi float [ %511, %529 ], [ %495, %499 ]
  %504 = phi i32 [ %508, %529 ], [ %453, %499 ]
  %505 = getelementptr inbounds [3 x float], [3 x float]* %36, i32 0, i32 %504
  %506 = load float, float* %505, align 4, !tbaa !53, !noalias !57
  %507 = icmp slt i32 %504, 2
  %508 = add nsw i32 %504, 1
  %509 = getelementptr inbounds [3 x float], [3 x float]* %35, i32 0, i32 %508
  %510 = load float, float* %509, align 4, !tbaa !53, !noalias !57
  %511 = select i1 %507, float %510, float %274
  %512 = call float @dx.op.binary.f32(i32 36, float %511, float %506)  ; FMin(a,b)
  %513 = call float @dx.op.binary.f32(i32 36, float %360, float %512)  ; FMin(a,b)
  %514 = icmp eq i32 %224, 0
  %515 = fadd fast float %513, %503
  %516 = fmul fast float %515, %186
  %517 = fadd fast float %516, %218
  br i1 %514, label %523, label %518, !dx.controlflow.hints !91

; <label>:518                                     ; preds = %500
  %519 = fsub fast float %513, %503
  %520 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %519)  ; FMax(a,b)
  %521 = fmul fast float %520, %517
  %522 = fadd fast float %521, %502
  br label %529

; <label>:523                                     ; preds = %500
  %524 = fsub fast float %503, %513
  %525 = call float @dx.op.unary.f32(i32 6, float %524)  ; FAbs(value)
  %526 = fadd fast float %525, %501
  %527 = fmul fast float %525, %517
  %528 = fsub fast float %502, %527
  br label %529

; <label>:529                                     ; preds = %523, %518
  %530 = phi float [ %520, %518 ], [ %526, %523 ]
  %531 = phi float [ %522, %518 ], [ %528, %523 ]
  %532 = fcmp fast olt float %511, %360
  %533 = icmp slt i32 %508, 3
  %534 = and i1 %533, %532
  br i1 %534, label %500, label %535

; <label>:535                                     ; preds = %529
  br label %536

; <label>:536                                     ; preds = %535, %493
  %537 = phi float [ %358, %493 ], [ %530, %535 ]
  %538 = phi float [ %359, %493 ], [ %531, %535 ]
  %539 = fsub fast float %274, %537
  %540 = select i1 %276, float %537, float %539
  %541 = extractvalue %dx.types.CBufRet.f32 %214, 0
  %542 = extractvalue %dx.types.CBufRet.f32 %214, 1
  %543 = extractvalue %dx.types.CBufRet.f32 %214, 2
  %544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %545 = extractvalue %dx.types.CBufRet.f32 %544, 0
  %546 = extractvalue %dx.types.CBufRet.f32 %544, 1
  %547 = extractvalue %dx.types.CBufRet.f32 %544, 2
  %548 = extractvalue %dx.types.CBufRet.f32 %544, 3
  %549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %550 = extractvalue %dx.types.CBufRet.f32 %549, 3
  %551 = call float @dx.op.binary.f32(i32 36, float %538, float %550)  ; FMin(a,b)
  %552 = fmul fast float %548, %540
  %553 = call float @dx.op.unary.f32(i32 7, float %552)  ; Saturate(value)
  %554 = fsub fast float %545, %541
  %555 = fsub fast float %546, %542
  %556 = fsub fast float %547, %543
  %557 = fmul fast float %553, %554
  %558 = fmul fast float %553, %555
  %559 = fmul fast float %553, %556
  %560 = fadd fast float %557, %541
  %561 = fadd fast float %558, %542
  %562 = fadd fast float %559, %543
  br i1 %107, label %575, label %563, !dx.controlflow.hints !50

; <label>:563                                     ; preds = %536
  %564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %565 = extractvalue %dx.types.CBufRet.f32 %564, 0
  %566 = extractvalue %dx.types.CBufRet.f32 %564, 1
  %567 = fadd fast float %566, %565
  %568 = call float @dx.op.unary.f32(i32 7, float %567)  ; Saturate(value)
  %569 = extractvalue %dx.types.CBufRet.f32 %564, 2
  %570 = extractvalue %dx.types.CBufRet.f32 %564, 3
  %571 = fadd fast float %570, %569
  %572 = call float @dx.op.unary.f32(i32 7, float %571)  ; Saturate(value)
  %573 = fmul fast float %568, %551
  %574 = fmul fast float %573, %572
  br label %575

; <label>:575                                     ; preds = %563, %536, %481, %455, %322, %290, %272, %270
  %576 = phi float [ 0.000000e+00, %270 ], [ 0.000000e+00, %272 ], [ %299, %322 ], [ %299, %290 ], [ %458, %481 ], [ %458, %455 ], [ %540, %563 ], [ %540, %536 ]
  %577 = phi float [ 0.000000e+00, %270 ], [ 0.000000e+00, %272 ], [ %333, %322 ], [ %310, %290 ], [ %492, %481 ], [ %469, %455 ], [ %574, %563 ], [ %551, %536 ]
  %578 = phi float [ 0.000000e+00, %270 ], [ 0.000000e+00, %272 ], [ %319, %322 ], [ %319, %290 ], [ %478, %481 ], [ %478, %455 ], [ %560, %563 ], [ %560, %536 ]
  %579 = phi float [ 0.000000e+00, %270 ], [ 0.000000e+00, %272 ], [ %320, %322 ], [ %320, %290 ], [ %479, %481 ], [ %479, %455 ], [ %561, %563 ], [ %561, %536 ]
  %580 = phi float [ 0.000000e+00, %270 ], [ 0.000000e+00, %272 ], [ %321, %322 ], [ %321, %290 ], [ %480, %481 ], [ %480, %455 ], [ %562, %563 ], [ %562, %536 ]
  %581 = fmul fast float %210, %577
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 2
  %584 = fsub fast float %220, %583
  %585 = fcmp fast olt float %581, -2.000000e+01
  %586 = call float @dx.op.unary.f32(i32 21, float %581)  ; Exp(value)
  %587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %588 = extractvalue %dx.types.CBufRet.f32 %587, 2
  %589 = extractvalue %dx.types.CBufRet.f32 %587, 3
  %590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %591 = extractvalue %dx.types.CBufRet.f32 %590, 2
  %592 = fmul fast float %589, %584
  %593 = call float @dx.op.unary.f32(i32 7, float %592)  ; Saturate(value)
  %594 = fsub fast float 1.000000e+00, %593
  %595 = fmul fast float %186, 5.000000e-01
  %596 = fadd fast float %595, 5.000000e-01
  %597 = call float @dx.op.unary.f32(i32 7, float %596)  ; Saturate(value)
  %598 = fsub fast float 1.000000e+00, %597
  %599 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %594)  ; FMax(a,b)
  %600 = fdiv fast float %598, %599
  %601 = fsub fast float %584, %149
  %602 = call float @dx.op.unary.f32(i32 6, float %601)  ; FAbs(value)
  %603 = fmul fast float %602, %588
  %604 = call float @dx.op.unary.f32(i32 7, float %600)  ; Saturate(value)
  %605 = fsub fast float 1.000000e+00, %603
  %606 = fmul fast float %605, %604
  %607 = fadd fast float %606, %603
  %608 = fmul fast float %591, %584
  %609 = call float @dx.op.unary.f32(i32 7, float %608)  ; Saturate(value)
  %610 = fsub fast float 1.000000e+00, %607
  %611 = fmul fast float %610, %609
  %612 = fadd fast float %611, %607
  %613 = call float @dx.op.unary.f32(i32 7, float %612)  ; Saturate(value)
  %614 = fadd fast float %586, -1.000000e+00
  %615 = select i1 %585, float -1.000000e+00, float %614
  %616 = fmul fast float %613, %615
  %617 = fadd fast float %616, 1.000000e+00
  %618 = fsub fast float -0.000000e+00, %616
  %619 = fmul fast float %578, %618
  %620 = fmul fast float %579, %618
  %621 = fmul fast float %580, %618
  br label %622

; <label>:622                                     ; preds = %575, %200
  %623 = phi float [ %576, %575 ], [ 0.000000e+00, %200 ]
  %624 = phi float [ %617, %575 ], [ 1.000000e+00, %200 ]
  %625 = phi float [ %619, %575 ], [ 0.000000e+00, %200 ]
  %626 = phi float [ %620, %575 ], [ 0.000000e+00, %200 ]
  %627 = phi float [ %621, %575 ], [ 0.000000e+00, %200 ]
  %628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %629 = extractvalue %dx.types.CBufRet.f32 %628, 1
  %630 = fsub fast float 1.000000e+00, %624
  %631 = fmul fast float %630, %201
  %632 = fmul fast float %631, %629
  %633 = fsub fast float %201, %632
  br i1 %179, label %634, label %666, !dx.controlflow.hints !92

; <label>:634                                     ; preds = %622
  %635 = fmul fast float %204, %176
  %636 = fadd fast float %635, %177
  %637 = call float @dx.op.unary.f32(i32 7, float %636)  ; Saturate(value)
  %638 = fmul fast float %158, %633
  %639 = fsub fast float -0.000000e+00, %638
  %640 = fmul fast float %159, %633
  %641 = fsub fast float -0.000000e+00, %640
  %642 = call float @dx.op.unary.f32(i32 21, float %639)  ; Exp(value)
  %643 = call float @dx.op.unary.f32(i32 21, float %641)  ; Exp(value)
  %644 = call float @dx.op.binary.f32(i32 35, float %166, float %642)  ; FMax(a,b)
  %645 = call float @dx.op.binary.f32(i32 35, float %166, float %643)  ; FMax(a,b)
  %646 = fsub fast float %645, %644
  %647 = fmul fast float %646, %637
  %648 = fadd fast float %647, %644
  %649 = call float @dx.op.unary.f32(i32 7, float %648)  ; Saturate(value)
  %650 = fmul fast float %202, %180
  %651 = fsub fast float 1.000000e+00, %650
  %652 = select i1 %107, float %651, float %649
  %653 = fsub fast float %163, %168
  %654 = fsub fast float %164, %169
  %655 = fsub fast float %165, %170
  %656 = fmul fast float %637, %653
  %657 = fmul fast float %637, %654
  %658 = fmul fast float %637, %655
  %659 = fadd fast float %656, %168
  %660 = fadd fast float %657, %169
  %661 = fadd fast float %658, %170
  %662 = fsub fast float 1.000000e+00, %652
  %663 = fmul fast float %662, %659
  %664 = fmul fast float %662, %660
  %665 = fmul fast float %662, %661
  br label %737

; <label>:666                                     ; preds = %622
  %667 = fmul fast float %633, %175
  %668 = call float @dx.op.unary.f32(i32 7, float %667)  ; Saturate(value)
  %669 = fsub fast float 2.000000e+00, %668
  %670 = fmul fast float %668, 9.921875e-01
  %671 = fmul fast float %670, %669
  %672 = fadd fast float %671, 3.906250e-03
  %673 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %24, float %672, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %674 = extractvalue %dx.types.ResRet.f32 %673, 0
  %675 = fsub fast float %668, %674
  %676 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %675)  ; FMax(a,b)
  %677 = fmul fast float %203, %161
  %678 = call float @dx.op.unary.f32(i32 6, float %677)  ; FAbs(value)
  %679 = fcmp fast ogt float %678, 0x3EB0C6F7A0000000
  br i1 %679, label %680, label %686, !dx.controlflow.hints !93

; <label>:680                                     ; preds = %666
  %681 = fmul fast float %677, 0xBFF7154760000000
  %682 = call float @dx.op.unary.f32(i32 21, float %681)  ; Exp(value)
  %683 = fsub fast float 1.000000e+00, %682
  %684 = fdiv fast float %683, %677
  %685 = fmul fast float %684, %171
  br label %686

; <label>:686                                     ; preds = %680, %666
  %687 = phi float [ %685, %680 ], [ %171, %666 ]
  %688 = fadd fast float %687, %173
  %689 = fmul fast float %688, %676
  %690 = fmul fast float %158, %689
  %691 = fsub fast float -0.000000e+00, %690
  %692 = fmul fast float %159, %689
  %693 = fsub fast float -0.000000e+00, %692
  %694 = fmul fast float %160, %689
  %695 = fsub fast float -0.000000e+00, %694
  %696 = call float @dx.op.unary.f32(i32 21, float %691)  ; Exp(value)
  %697 = call float @dx.op.unary.f32(i32 21, float %693)  ; Exp(value)
  %698 = call float @dx.op.unary.f32(i32 21, float %695)  ; Exp(value)
  br i1 %107, label %699, label %707, !dx.controlflow.hints !94

; <label>:699                                     ; preds = %686
  %700 = fmul fast float %696, %202
  %701 = fmul fast float %697, %202
  %702 = fmul fast float %698, %202
  %703 = fsub fast float 1.000000e+00, %202
  %704 = fadd fast float %700, %703
  %705 = fadd fast float %701, %703
  %706 = fadd fast float %702, %703
  br label %707

; <label>:707                                     ; preds = %699, %686
  %708 = phi float [ %704, %699 ], [ %696, %686 ]
  %709 = phi float [ %705, %699 ], [ %697, %686 ]
  %710 = phi float [ %706, %699 ], [ %698, %686 ]
  %711 = fmul fast float %204, %204
  %712 = fadd fast float %711, 1.000000e+00
  %713 = fmul fast float %712, 0x3FAE8EC8A0000000
  %714 = fmul fast float %713, %168
  %715 = fmul fast float %713, %169
  %716 = fmul fast float %713, %170
  %717 = fmul fast float %204, %166
  %718 = fsub fast float 1.000000e+00, %717
  %719 = fmul fast float %166, %166
  %720 = fsub fast float 1.000000e+00, %719
  %721 = fmul fast float %720, 0x3FB45F3060000000
  %722 = fmul fast float %718, %718
  %723 = fdiv fast float 1.000000e+00, %722
  %724 = fmul fast float %721, %723
  %725 = fmul fast float %724, %163
  %726 = fmul fast float %724, %164
  %727 = fmul fast float %724, %165
  %728 = fadd fast float %725, %714
  %729 = fadd fast float %726, %715
  %730 = fadd fast float %727, %716
  %731 = fsub fast float 1.000000e+00, %708
  %732 = fsub fast float 1.000000e+00, %709
  %733 = fsub fast float 1.000000e+00, %710
  %734 = fmul fast float %728, %731
  %735 = fmul fast float %729, %732
  %736 = fmul fast float %730, %733
  br label %737

; <label>:737                                     ; preds = %707, %634
  %738 = phi float [ %663, %634 ], [ %734, %707 ]
  %739 = phi float [ %664, %634 ], [ %735, %707 ]
  %740 = phi float [ %665, %634 ], [ %736, %707 ]
  %741 = phi float [ %652, %634 ], [ %708, %707 ]
  %742 = phi float [ %652, %634 ], [ %709, %707 ]
  %743 = phi float [ %652, %634 ], [ %710, %707 ]
  br i1 %212, label %744, label %942, !dx.controlflow.hints !95

; <label>:744                                     ; preds = %737
  %745 = extractvalue %dx.types.CBufRet.f32 %628, 0
  %746 = fmul fast float %745, %630
  %747 = fsub fast float %625, %738
  %748 = fsub fast float %626, %739
  %749 = fsub fast float %627, %740
  %750 = fmul fast float %746, %747
  %751 = fmul fast float %746, %748
  %752 = fmul fast float %746, %749
  %753 = fadd fast float %750, %738
  %754 = fadd fast float %751, %739
  %755 = fadd fast float %752, %740
  %756 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %741)  ; FMax(a,b)
  %757 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %742)  ; FMax(a,b)
  %758 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %743)  ; FMax(a,b)
  %759 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %624)  ; FMax(a,b)
  %760 = call float @dx.op.binary.f32(i32 35, float %623, float %633)  ; FMax(a,b)
  %761 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %760)  ; FMax(a,b)
  %762 = fdiv fast float %623, %761
  %763 = call float @dx.op.unary.f32(i32 7, float %762)  ; Saturate(value)
  %764 = fdiv fast float %633, %761
  %765 = call float @dx.op.unary.f32(i32 7, float %764)  ; Saturate(value)
  %766 = fcmp fast une float %759, 1.000000e+00
  br i1 %766, label %767, label %780, !dx.controlflow.hints !96

; <label>:767                                     ; preds = %744
  %768 = call float @dx.op.unary.f32(i32 23, float %759)  ; Log(value)
  %769 = fmul fast float %768, 0x3FE62E4300000000
  %770 = fmul fast float %625, %769
  %771 = fsub fast float -0.000000e+00, %770
  %772 = fmul fast float %626, %769
  %773 = fsub fast float -0.000000e+00, %772
  %774 = fmul fast float %627, %769
  %775 = fsub fast float -0.000000e+00, %774
  %776 = fsub fast float 1.000000e+00, %759
  %777 = fdiv fast float %771, %776
  %778 = fdiv fast float %773, %776
  %779 = fdiv fast float %775, %776
  br label %780

; <label>:780                                     ; preds = %767, %744
  %781 = phi float [ %777, %767 ], [ %625, %744 ]
  %782 = phi float [ %778, %767 ], [ %626, %744 ]
  %783 = phi float [ %779, %767 ], [ %627, %744 ]
  %784 = phi float [ %769, %767 ], [ 0.000000e+00, %744 ]
  %785 = fcmp fast une float %756, 1.000000e+00
  br i1 %785, label %786, label %793, !dx.controlflow.hints !97

; <label>:786                                     ; preds = %780
  %787 = call float @dx.op.unary.f32(i32 23, float %756)  ; Log(value)
  %788 = fmul fast float %787, 0x3FE62E4300000000
  %789 = fmul fast float %753, %788
  %790 = fsub fast float -0.000000e+00, %789
  %791 = fsub fast float 1.000000e+00, %756
  %792 = fdiv fast float %790, %791
  br label %793

; <label>:793                                     ; preds = %786, %780
  %794 = phi float [ %792, %786 ], [ %753, %780 ]
  %795 = phi float [ %788, %786 ], [ 0.000000e+00, %780 ]
  %796 = fcmp fast une float %757, 1.000000e+00
  br i1 %796, label %797, label %804, !dx.controlflow.hints !97

; <label>:797                                     ; preds = %793
  %798 = call float @dx.op.unary.f32(i32 23, float %757)  ; Log(value)
  %799 = fmul fast float %798, 0x3FE62E4300000000
  %800 = fmul fast float %754, %799
  %801 = fsub fast float -0.000000e+00, %800
  %802 = fsub fast float 1.000000e+00, %757
  %803 = fdiv fast float %801, %802
  br label %804

; <label>:804                                     ; preds = %797, %793
  %805 = phi float [ %803, %797 ], [ %754, %793 ]
  %806 = phi float [ %799, %797 ], [ 0.000000e+00, %793 ]
  %807 = fcmp fast une float %758, 1.000000e+00
  br i1 %807, label %808, label %815, !dx.controlflow.hints !97

; <label>:808                                     ; preds = %804
  %809 = call float @dx.op.unary.f32(i32 23, float %758)  ; Log(value)
  %810 = fmul fast float %809, 0x3FE62E4300000000
  %811 = fmul fast float %755, %810
  %812 = fsub fast float -0.000000e+00, %811
  %813 = fsub fast float 1.000000e+00, %758
  %814 = fdiv fast float %812, %813
  br label %815

; <label>:815                                     ; preds = %808, %804
  %816 = phi float [ %814, %808 ], [ %755, %804 ]
  %817 = phi float [ %810, %808 ], [ 0.000000e+00, %804 ]
  %818 = fmul fast float %781, %765
  %819 = fmul fast float %782, %765
  %820 = fmul fast float %783, %765
  %821 = fmul fast float %784, %765
  %822 = fmul fast float %794, %763
  %823 = fmul fast float %805, %763
  %824 = fmul fast float %816, %763
  %825 = fmul fast float %795, %763
  %826 = fmul fast float %806, %763
  %827 = fmul fast float %817, %763
  %828 = fadd fast float %822, %818
  %829 = fadd fast float %823, %819
  %830 = fadd fast float %824, %820
  %831 = fadd fast float %825, %821
  %832 = fadd fast float %826, %821
  %833 = fadd fast float %827, %821
  %834 = fcmp fast une float %831, 0.000000e+00
  br i1 %834, label %835, label %842, !dx.controlflow.hints !98

; <label>:835                                     ; preds = %815
  %836 = fmul fast float %831, 0x3FF7154760000000
  %837 = call float @dx.op.unary.f32(i32 21, float %836)  ; Exp(value)
  %838 = fsub fast float 1.000000e+00, %837
  %839 = fmul fast float %828, %838
  %840 = fsub fast float -0.000000e+00, %839
  %841 = fdiv fast float %840, %831
  br label %842

; <label>:842                                     ; preds = %835, %815
  %843 = phi float [ %837, %835 ], [ 1.000000e+00, %815 ]
  %844 = phi float [ %841, %835 ], [ %828, %815 ]
  %845 = fcmp fast une float %832, 0.000000e+00
  br i1 %845, label %846, label %853, !dx.controlflow.hints !98

; <label>:846                                     ; preds = %842
  %847 = fmul fast float %832, 0x3FF7154760000000
  %848 = call float @dx.op.unary.f32(i32 21, float %847)  ; Exp(value)
  %849 = fsub fast float 1.000000e+00, %848
  %850 = fmul fast float %829, %849
  %851 = fsub fast float -0.000000e+00, %850
  %852 = fdiv fast float %851, %832
  br label %853

; <label>:853                                     ; preds = %846, %842
  %854 = phi float [ %848, %846 ], [ 1.000000e+00, %842 ]
  %855 = phi float [ %852, %846 ], [ %829, %842 ]
  %856 = fcmp fast une float %833, 0.000000e+00
  br i1 %856, label %857, label %864, !dx.controlflow.hints !98

; <label>:857                                     ; preds = %853
  %858 = fmul fast float %833, 0x3FF7154760000000
  %859 = call float @dx.op.unary.f32(i32 21, float %858)  ; Exp(value)
  %860 = fsub fast float 1.000000e+00, %859
  %861 = fmul fast float %830, %860
  %862 = fsub fast float -0.000000e+00, %861
  %863 = fdiv fast float %862, %833
  br label %864

; <label>:864                                     ; preds = %857, %853
  %865 = phi float [ %859, %857 ], [ 1.000000e+00, %853 ]
  %866 = phi float [ %863, %857 ], [ %830, %853 ]
  %867 = fcmp fast ogt float %763, %765
  br i1 %867, label %868, label %888, !dx.controlflow.hints !99

; <label>:868                                     ; preds = %864
  %869 = fsub fast float 1.000000e+00, %765
  %870 = fmul fast float %781, %869
  %871 = fmul fast float %782, %869
  %872 = fmul fast float %783, %869
  %873 = fmul fast float %784, %869
  %874 = fcmp fast une float %873, 0.000000e+00
  br i1 %874, label %875, label %926, !dx.controlflow.hints !100

; <label>:875                                     ; preds = %868
  %876 = fmul fast float %873, 0x3FF7154760000000
  %877 = call float @dx.op.unary.f32(i32 21, float %876)  ; Exp(value)
  %878 = fsub fast float 1.000000e+00, %877
  %879 = fmul fast float %870, %878
  %880 = fsub fast float -0.000000e+00, %879
  %881 = fmul fast float %871, %878
  %882 = fsub fast float -0.000000e+00, %881
  %883 = fmul fast float %872, %878
  %884 = fsub fast float -0.000000e+00, %883
  %885 = fdiv fast float %880, %873
  %886 = fdiv fast float %882, %873
  %887 = fdiv fast float %884, %873
  br label %926

; <label>:888                                     ; preds = %864
  %889 = fsub fast float 1.000000e+00, %763
  %890 = fmul fast float %794, %889
  %891 = fmul fast float %805, %889
  %892 = fmul fast float %816, %889
  %893 = fmul fast float %795, %889
  %894 = fmul fast float %806, %889
  %895 = fmul fast float %817, %889
  %896 = fcmp fast une float %893, 0.000000e+00
  br i1 %896, label %897, label %904, !dx.controlflow.hints !98

; <label>:897                                     ; preds = %888
  %898 = fmul fast float %893, 0x3FF7154760000000
  %899 = call float @dx.op.unary.f32(i32 21, float %898)  ; Exp(value)
  %900 = fsub fast float 1.000000e+00, %899
  %901 = fmul fast float %890, %900
  %902 = fsub fast float -0.000000e+00, %901
  %903 = fdiv fast float %902, %893
  br label %904

; <label>:904                                     ; preds = %897, %888
  %905 = phi float [ %903, %897 ], [ %890, %888 ]
  %906 = phi float [ %899, %897 ], [ 1.000000e+00, %888 ]
  %907 = fcmp fast une float %894, 0.000000e+00
  br i1 %907, label %908, label %915, !dx.controlflow.hints !98

; <label>:908                                     ; preds = %904
  %909 = fmul fast float %894, 0x3FF7154760000000
  %910 = call float @dx.op.unary.f32(i32 21, float %909)  ; Exp(value)
  %911 = fsub fast float 1.000000e+00, %910
  %912 = fmul fast float %891, %911
  %913 = fsub fast float -0.000000e+00, %912
  %914 = fdiv fast float %913, %894
  br label %915

; <label>:915                                     ; preds = %908, %904
  %916 = phi float [ %914, %908 ], [ %891, %904 ]
  %917 = phi float [ %910, %908 ], [ 1.000000e+00, %904 ]
  %918 = fcmp fast une float %895, 0.000000e+00
  br i1 %918, label %919, label %926, !dx.controlflow.hints !98

; <label>:919                                     ; preds = %915
  %920 = fmul fast float %895, 0x3FF7154760000000
  %921 = call float @dx.op.unary.f32(i32 21, float %920)  ; Exp(value)
  %922 = fsub fast float 1.000000e+00, %921
  %923 = fmul fast float %892, %922
  %924 = fsub fast float -0.000000e+00, %923
  %925 = fdiv fast float %924, %895
  br label %926

; <label>:926                                     ; preds = %919, %915, %875, %868
  %927 = phi float [ %925, %919 ], [ %887, %875 ], [ %872, %868 ], [ %892, %915 ]
  %928 = phi float [ %916, %919 ], [ %886, %875 ], [ %871, %868 ], [ %916, %915 ]
  %929 = phi float [ %905, %919 ], [ %885, %875 ], [ %870, %868 ], [ %905, %915 ]
  %930 = phi float [ %921, %919 ], [ %877, %875 ], [ 1.000000e+00, %868 ], [ 1.000000e+00, %915 ]
  %931 = phi float [ %917, %919 ], [ %877, %875 ], [ 1.000000e+00, %868 ], [ %917, %915 ]
  %932 = phi float [ %906, %919 ], [ %877, %875 ], [ 1.000000e+00, %868 ], [ %906, %915 ]
  %933 = fmul fast float %932, %844
  %934 = fmul fast float %931, %855
  %935 = fmul fast float %930, %866
  %936 = fadd fast float %933, %929
  %937 = fadd fast float %934, %928
  %938 = fadd fast float %935, %927
  %939 = fmul fast float %932, %843
  %940 = fmul fast float %931, %854
  %941 = fmul fast float %930, %865
  br label %942

; <label>:942                                     ; preds = %926, %737
  %943 = phi float [ %941, %926 ], [ %743, %737 ]
  %944 = phi float [ %940, %926 ], [ %742, %737 ]
  %945 = phi float [ %939, %926 ], [ %741, %737 ]
  %946 = phi float [ %938, %926 ], [ %740, %737 ]
  %947 = phi float [ %937, %926 ], [ %739, %737 ]
  %948 = phi float [ %936, %926 ], [ %738, %737 ]
  %949 = fmul fast float %57, %108
  %950 = fmul fast float %58, %109
  %951 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %24, float %949, float %950, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %952 = extractvalue %dx.types.ResRet.f32 %951, 0
  %953 = extractvalue %dx.types.ResRet.f32 %951, 1
  %954 = extractvalue %dx.types.ResRet.f32 %951, 2
  %955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %956 = extractvalue %dx.types.CBufRet.f32 %955, 1
  %957 = fmul fast float %956, %952
  %958 = fmul fast float %956, %953
  %959 = fmul fast float %956, %954
  %960 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %24, float %949, float %950, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %961 = extractvalue %dx.types.ResRet.f32 %960, 0
  %962 = fmul fast float %961, %945
  %963 = fmul fast float %961, %944
  %964 = fmul fast float %961, %943
  %965 = fmul fast float %961, %948
  %966 = fmul fast float %961, %947
  %967 = fmul fast float %961, %946
  %968 = fadd fast float %965, %957
  %969 = fadd fast float %966, %958
  %970 = fadd fast float %967, %959
  br label %971

; <label>:971                                     ; preds = %942, %0
  %972 = phi float [ %968, %942 ], [ 0.000000e+00, %0 ]
  %973 = phi float [ %969, %942 ], [ 0.000000e+00, %0 ]
  %974 = phi float [ %970, %942 ], [ 0.000000e+00, %0 ]
  %975 = phi float [ %962, %942 ], [ 1.000000e+00, %0 ]
  %976 = phi float [ %963, %942 ], [ 1.000000e+00, %0 ]
  %977 = phi float [ %964, %942 ], [ 1.000000e+00, %0 ]
  %978 = phi float [ %113, %942 ], [ %74, %0 ]
  %979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %980 = extractvalue %dx.types.CBufRet.f32 %979, 2
  %981 = extractvalue %dx.types.CBufRet.f32 %979, 3
  %982 = fmul fast float %980, %108
  %983 = fmul fast float %981, %109
  %984 = call float @dx.op.unary.f32(i32 7, float %982)  ; Saturate(value)
  %985 = call float @dx.op.unary.f32(i32 7, float %983)  ; Saturate(value)
  %986 = select i1 %105, i32 2, i32 0
  %987 = or i32 %986, 1
  %988 = uitofp i32 %987 to float
  %989 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %24, float %984, float %985, float %988, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %990 = extractvalue %dx.types.ResRet.f32 %989, 0
  %991 = extractvalue %dx.types.ResRet.f32 %989, 1
  %992 = extractvalue %dx.types.ResRet.f32 %989, 2
  %993 = extractvalue %dx.types.ResRet.f32 %989, 3
  %994 = add nuw nsw i32 %986, 2
  %995 = uitofp i32 %994 to float
  %996 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %24, float %984, float %985, float %995, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %997 = extractvalue %dx.types.ResRet.f32 %996, 0
  %998 = extractvalue %dx.types.ResRet.f32 %996, 1
  %999 = extractvalue %dx.types.ResRet.f32 %996, 2
  %1000 = extractvalue %dx.types.ResRet.f32 %996, 3
  %1001 = call float @dx.op.binary.f32(i32 35, float %991, float %992)  ; FMax(a,b)
  %1002 = call float @dx.op.binary.f32(i32 35, float %990, float %1001)  ; FMax(a,b)
  %1003 = call float @dx.op.binary.f32(i32 35, float %1002, float %993)  ; FMax(a,b)
  %1004 = call float @dx.op.binary.f32(i32 36, float %998, float %999)  ; FMin(a,b)
  %1005 = call float @dx.op.binary.f32(i32 36, float %997, float %1004)  ; FMin(a,b)
  %1006 = call float @dx.op.binary.f32(i32 36, float %1005, float %1000)  ; FMin(a,b)
  %1007 = fmul fast float %1003, 2.550000e+02
  %1008 = fadd fast float %1007, 0x3F70101020000000
  %1009 = fptoui float %1008 to i32
  %1010 = fmul fast float %1006, 2.550000e+02
  %1011 = fadd fast float %1010, 0x3F70101020000000
  %1012 = fptoui float %1011 to i32
  %1013 = icmp ult i32 %1009, %1012
  br i1 %1013, label %1014, label %1182, !dx.controlflow.hints !101

; <label>:1014                                    ; preds = %971
  %1015 = fadd fast float %978, -4.000000e+00
  %1016 = call float @dx.op.binary.f32(i32 35, float %1015, float 0.000000e+00)  ; FMax(a,b)
  %1017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1018 = extractvalue %dx.types.CBufRet.f32 %1017, 0
  %1019 = fadd fast float %1018, %1016
  %1020 = extractvalue %dx.types.CBufRet.f32 %1017, 2
  %1021 = fmul fast float %1019, %1020
  %1022 = call float @dx.op.unary.f32(i32 23, float %1021)  ; Log(value)
  %1023 = extractvalue %dx.types.CBufRet.f32 %1017, 3
  %1024 = fmul fast float %1023, %1022
  %1025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1026 = extractvalue %dx.types.CBufRet.f32 %1025, 2
  %1027 = fmul fast float %1024, %1026
  %1028 = call float @dx.op.unary.f32(i32 7, float %1027)  ; Saturate(value)
  %1029 = select i1 %107, float 1.000000e+00, float %1028
  %1030 = uitofp i32 %1009 to float
  %1031 = uitofp i32 %1012 to float
  %1032 = fadd fast float %1030, 5.000000e-01
  %1033 = fadd fast float %1031, 5.000000e-01
  %1034 = fmul fast float %1026, %1032
  %1035 = fmul fast float %1026, %1033
  %1036 = fadd fast float %1034, 0x3F0FFB4800000000
  %1037 = fadd fast float %1035, 0xBF0FFB4800000000
  %1038 = call float @dx.op.binary.f32(i32 35, float %1029, float %1036)  ; FMax(a,b)
  %1039 = call float @dx.op.binary.f32(i32 36, float %1038, float %1037)  ; FMin(a,b)
  %1040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1041 = extractvalue %dx.types.CBufRet.f32 %1040, 1
  %1042 = extractvalue %dx.types.CBufRet.f32 %1040, 2
  %1043 = extractvalue %dx.types.CBufRet.f32 %1040, 0
  %1044 = select i1 %105, float %1043, float 0.000000e+00
  %1045 = fmul fast float %1041, %1039
  %1046 = fadd fast float %1044, %1045
  %1047 = fadd fast float %1044, %1042
  %1048 = fsub fast float %1041, %1042
  %1049 = fadd fast float %1048, %1044
  %1050 = call float @dx.op.binary.f32(i32 35, float %1046, float %1047)  ; FMax(a,b)
  %1051 = call float @dx.op.binary.f32(i32 36, float %1050, float %1049)  ; FMin(a,b)
  %1052 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %23, float %984, float %985, float %1051, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1053 = extractvalue %dx.types.ResRet.f32 %1052, 0
  %1054 = extractvalue %dx.types.ResRet.f32 %1052, 1
  %1055 = extractvalue %dx.types.ResRet.f32 %1052, 2
  %1056 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %1057 = extractvalue %dx.types.CBufRet.i32 %1056, 0
  %1058 = extractvalue %dx.types.CBufRet.i32 %1056, 1
  %1059 = uitofp i32 %1057 to float
  %1060 = uitofp i32 %1058 to float
  %1061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %1062 = extractvalue %dx.types.CBufRet.f32 %1061, 0
  %1063 = extractvalue %dx.types.CBufRet.f32 %1061, 1
  %1064 = fmul fast float %1059, %984
  %1065 = fmul fast float %1060, %985
  %1066 = fadd fast float %1064, -5.000000e-01
  %1067 = fadd fast float %1065, -5.000000e-01
  %1068 = call float @dx.op.unary.f32(i32 22, float %1066)  ; Frc(value)
  %1069 = call float @dx.op.unary.f32(i32 22, float %1067)  ; Frc(value)
  %1070 = fmul fast float %1068, %1068
  %1071 = fmul fast float %1070, %1068
  %1072 = fsub fast float 3.000000e+00, %1068
  %1073 = fmul fast float %1070, %1072
  %1074 = fmul fast float %1068, 3.000000e+00
  %1075 = fmul fast float %1071, 3.000000e+00
  %1076 = fmul fast float %1070, 6.000000e+00
  %1077 = fsub fast float %1075, %1076
  %1078 = fadd fast float %1077, 4.000000e+00
  %1079 = fmul fast float %1078, 0x3FC5555560000000
  %1080 = fmul fast float %1071, -3.000000e+00
  %1081 = fadd fast float %1070, %1068
  %1082 = fmul fast float %1081, 3.000000e+00
  %1083 = fadd fast float %1080, 1.000000e+00
  %1084 = fadd fast float %1083, %1082
  %1085 = fmul fast float %1071, 0x3FC5555560000000
  %1086 = fmul fast float %1069, %1069
  %1087 = fmul fast float %1086, %1069
  %1088 = fsub fast float 3.000000e+00, %1069
  %1089 = fmul fast float %1086, %1088
  %1090 = fmul fast float %1069, 3.000000e+00
  %1091 = fmul fast float %1087, 3.000000e+00
  %1092 = fmul fast float %1086, 6.000000e+00
  %1093 = fsub fast float %1091, %1092
  %1094 = fadd fast float %1093, 4.000000e+00
  %1095 = fmul fast float %1094, 0x3FC5555560000000
  %1096 = fmul fast float %1087, -3.000000e+00
  %1097 = fadd fast float %1086, %1069
  %1098 = fmul fast float %1097, 3.000000e+00
  %1099 = fadd fast float %1096, 1.000000e+00
  %1100 = fadd fast float %1099, %1098
  %1101 = fmul fast float %1087, 0x3FC5555560000000
  %1102 = fadd fast float %1068, 1.000000e+00
  %1103 = fsub fast float 1.000000e+00, %1074
  %1104 = fadd fast float %1103, %1073
  %1105 = fadd fast float %1104, %1078
  %1106 = fmul fast float %1105, 0x3FC5555560000000
  %1107 = fdiv fast float %1079, %1106
  %1108 = fsub fast float %1102, %1107
  %1109 = fsub fast float 1.000000e+00, %1068
  %1110 = fadd fast float %1084, %1071
  %1111 = fmul fast float %1110, 0x3FC5555560000000
  %1112 = fdiv fast float %1085, %1111
  %1113 = fadd fast float %1109, %1112
  %1114 = fadd fast float %1069, 1.000000e+00
  %1115 = fsub fast float 1.000000e+00, %1090
  %1116 = fadd fast float %1115, %1089
  %1117 = fadd fast float %1116, %1094
  %1118 = fmul fast float %1117, 0x3FC5555560000000
  %1119 = fdiv fast float %1095, %1118
  %1120 = fsub fast float %1114, %1119
  %1121 = fsub fast float 1.000000e+00, %1069
  %1122 = fadd fast float %1100, %1087
  %1123 = fmul fast float %1122, 0x3FC5555560000000
  %1124 = fdiv fast float %1101, %1123
  %1125 = fadd fast float %1124, %1121
  %1126 = fmul fast float %1108, %1062
  %1127 = fsub fast float %984, %1126
  %1128 = fmul fast float %1113, %1062
  %1129 = fadd fast float %1128, %984
  %1130 = fmul fast float %1125, %1063
  %1131 = fadd fast float %1130, %985
  %1132 = fmul fast float %1120, %1063
  %1133 = fsub fast float %985, %1132
  %1134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %23, float %1127, float %1133, float %1051, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1135 = extractvalue %dx.types.ResRet.f32 %1134, 0
  %1136 = extractvalue %dx.types.ResRet.f32 %1134, 1
  %1137 = extractvalue %dx.types.ResRet.f32 %1134, 2
  %1138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %23, float %1129, float %1133, float %1051, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1139 = extractvalue %dx.types.ResRet.f32 %1138, 0
  %1140 = extractvalue %dx.types.ResRet.f32 %1138, 1
  %1141 = extractvalue %dx.types.ResRet.f32 %1138, 2
  %1142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %23, float %1127, float %1131, float %1051, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1143 = extractvalue %dx.types.ResRet.f32 %1142, 0
  %1144 = extractvalue %dx.types.ResRet.f32 %1142, 1
  %1145 = extractvalue %dx.types.ResRet.f32 %1142, 2
  %1146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %23, float %1129, float %1131, float %1051, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1147 = extractvalue %dx.types.ResRet.f32 %1146, 0
  %1148 = extractvalue %dx.types.ResRet.f32 %1146, 1
  %1149 = extractvalue %dx.types.ResRet.f32 %1146, 2
  %1150 = fsub fast float %1143, %1135
  %1151 = fsub fast float %1144, %1136
  %1152 = fsub fast float %1145, %1137
  %1153 = fmul fast float %1150, %1123
  %1154 = fmul fast float %1151, %1123
  %1155 = fmul fast float %1152, %1123
  %1156 = fadd fast float %1153, %1135
  %1157 = fadd fast float %1154, %1136
  %1158 = fadd fast float %1155, %1137
  %1159 = fsub fast float %1147, %1139
  %1160 = fsub fast float %1148, %1140
  %1161 = fsub fast float %1149, %1141
  %1162 = fmul fast float %1159, %1123
  %1163 = fmul fast float %1160, %1123
  %1164 = fmul fast float %1161, %1123
  %1165 = fsub fast float %1139, %1156
  %1166 = fadd fast float %1165, %1162
  %1167 = fsub fast float %1140, %1157
  %1168 = fadd fast float %1167, %1163
  %1169 = fsub fast float %1141, %1158
  %1170 = fadd fast float %1169, %1164
  %1171 = fmul fast float %1166, %1111
  %1172 = fmul fast float %1168, %1111
  %1173 = fmul fast float %1170, %1111
  %1174 = fadd fast float %1171, %1156
  %1175 = fadd fast float %1172, %1157
  %1176 = fadd fast float %1173, %1158
  %1177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1178 = extractvalue %dx.types.CBufRet.f32 %1177, 1
  %1179 = fmul fast float %1174, %1178
  %1180 = fmul fast float %1175, %1178
  %1181 = fmul fast float %1176, %1178
  br label %1182

; <label>:1182                                    ; preds = %1014, %971
  %1183 = phi float [ %1053, %1014 ], [ 1.000000e+00, %971 ]
  %1184 = phi float [ %1054, %1014 ], [ 1.000000e+00, %971 ]
  %1185 = phi float [ %1055, %1014 ], [ 1.000000e+00, %971 ]
  %1186 = phi float [ %1179, %1014 ], [ 0.000000e+00, %971 ]
  %1187 = phi float [ %1180, %1014 ], [ 0.000000e+00, %971 ]
  %1188 = phi float [ %1181, %1014 ], [ 0.000000e+00, %971 ]
  %1189 = fmul fast float %1183, %975
  %1190 = fmul fast float %1184, %976
  %1191 = fmul fast float %1185, %977
  %1192 = fmul fast float %1183, %972
  %1193 = fmul fast float %1184, %973
  %1194 = fmul fast float %1185, %974
  %1195 = fadd fast float %1186, %1192
  %1196 = fadd fast float %1187, %1193
  %1197 = fadd fast float %1188, %1194
  %1198 = fmul fast float %57, %108
  %1199 = fmul fast float %58, %109
  %1200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1201 = extractvalue %dx.types.CBufRet.f32 %1200, 2
  %1202 = fmul fast float %1201, 0x3FE3C6EF40000000
  %1203 = frem fast float %54, 2.560000e+02
  %1204 = frem fast float %55, 2.560000e+02
  %1205 = fptoui float %1203 to i32
  %1206 = fptoui float %1204 to i32
  %1207 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1205, i32 %1206, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1208 = extractvalue %dx.types.ResRet.f32 %1207, 0
  %1209 = fadd fast float %1208, %1202
  %1210 = call float @dx.op.unary.f32(i32 22, float %1209)  ; Frc(value)
  %1211 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %52, i32 %53, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1212 = extractvalue %dx.types.ResRet.f32 %1211, 0
  %1213 = extractvalue %dx.types.ResRet.f32 %1211, 1
  %1214 = extractvalue %dx.types.ResRet.f32 %1211, 2
  %1215 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %52, i32 %53, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1216 = extractvalue %dx.types.ResRet.f32 %1215, 0
  %1217 = extractvalue %dx.types.ResRet.f32 %1215, 1
  %1218 = extractvalue %dx.types.ResRet.f32 %1215, 2
  %1219 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %52, i32 %53, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1220 = extractvalue %dx.types.ResRet.f32 %1219, 0
  %1221 = extractvalue %dx.types.ResRet.f32 %1219, 1
  %1222 = extractvalue %dx.types.ResRet.f32 %1219, 2
  %1223 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %52, i32 %53, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1224 = extractvalue %dx.types.ResRet.f32 %1223, 0
  %1225 = extractvalue %dx.types.ResRet.f32 %1223, 1
  %1226 = call float @dx.op.binary.f32(i32 35, float %1224, float %1225)  ; FMax(a,b)
  %1227 = fcmp fast ult float %1226, 0x3F70101020000000
  br i1 %1227, label %1459, label %1228, !dx.controlflow.hints !102

; <label>:1228                                    ; preds = %1182
  %1229 = fmul fast float %1225, 2.000000e+00
  %1230 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1229)  ; FMax(a,b)
  %1231 = fmul fast float %1224, 2.000000e+00
  %1232 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1231)  ; FMax(a,b)
  %1233 = extractvalue %dx.types.ResRet.f32 %1219, 3
  %1234 = fmul fast float %1233, 2.000000e+00
  %1235 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1234)  ; FMax(a,b)
  %1236 = fmul fast float %1222, %1222
  %1237 = fmul fast float %1221, %1221
  %1238 = fmul fast float %1220, %1220
  %1239 = fadd fast float %1238, 0xBFD51EB860000000
  %1240 = fadd fast float %1237, 0xBFD51EB860000000
  %1241 = fadd fast float %1236, 0xBFD51EB860000000
  %1242 = fmul fast float %1239, %1239
  %1243 = fmul fast float %1240, %1240
  %1244 = fmul fast float %1241, %1241
  %1245 = fmul fast float %1242, %1242
  %1246 = fmul fast float %1245, 1.000000e+02
  %1247 = fmul fast float %1243, %1243
  %1248 = fmul fast float %1247, 1.000000e+02
  %1249 = fmul fast float %1244, %1244
  %1250 = fmul fast float %1249, 1.000000e+02
  %1251 = fadd fast float %1246, 3.500000e+00
  %1252 = fadd fast float %1248, 3.500000e+00
  %1253 = fadd fast float %1250, 3.500000e+00
  %1254 = fdiv fast float %1251, %1235
  %1255 = fdiv fast float %1252, %1232
  %1256 = fdiv fast float %1253, %1230
  %1257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1258 = extractvalue %dx.types.CBufRet.f32 %1257, 0
  %1259 = extractvalue %dx.types.CBufRet.f32 %1257, 1
  %1260 = fmul fast float %1258, %74
  %1261 = fmul fast float %1259, %74
  %1262 = fdiv fast float 1.000000e+00, %1260
  %1263 = fdiv fast float 1.000000e+00, %1261
  %1264 = fmul fast float %57, 5.000000e-01
  %1265 = fmul fast float %1264, %1260
  %1266 = fmul fast float %1254, 0xBFF7154760000000
  %1267 = fmul fast float %1266, %1265
  %1268 = call float @dx.op.unary.f32(i32 21, float %1267)  ; Exp(value)
  %1269 = fmul fast float %1268, 2.500000e-01
  %1270 = fsub fast float 1.000000e+00, %1269
  %1271 = fmul fast float %1254, 0xBFDEC709E0000000
  %1272 = fmul fast float %1271, %1265
  %1273 = call float @dx.op.unary.f32(i32 21, float %1272)  ; Exp(value)
  %1274 = fmul fast float %1273, 7.500000e-01
  %1275 = fsub fast float %1270, %1274
  %1276 = fmul fast float %1255, 0xBFF7154760000000
  %1277 = fmul fast float %1276, %1265
  %1278 = call float @dx.op.unary.f32(i32 21, float %1277)  ; Exp(value)
  %1279 = fmul fast float %1278, 2.500000e-01
  %1280 = fsub fast float 1.000000e+00, %1279
  %1281 = fmul fast float %1255, 0xBFDEC709E0000000
  %1282 = fmul fast float %1281, %1265
  %1283 = call float @dx.op.unary.f32(i32 21, float %1282)  ; Exp(value)
  %1284 = fmul fast float %1283, 7.500000e-01
  %1285 = fsub fast float %1280, %1284
  %1286 = fmul fast float %1256, 0xBFF7154760000000
  %1287 = fmul fast float %1286, %1265
  %1288 = call float @dx.op.unary.f32(i32 21, float %1287)  ; Exp(value)
  %1289 = fmul fast float %1288, 2.500000e-01
  %1290 = fsub fast float 1.000000e+00, %1289
  %1291 = fmul fast float %1256, 0xBFDEC709E0000000
  %1292 = fmul fast float %1291, %1265
  %1293 = call float @dx.op.unary.f32(i32 21, float %1292)  ; Exp(value)
  %1294 = fmul fast float %1293, 7.500000e-01
  %1295 = fsub fast float %1290, %1294
  %1296 = fmul fast float %1216, 0x3F1A36E2E0000000
  %1297 = fmul fast float %1217, 0x3F1A36E2E0000000
  %1298 = fmul fast float %1218, 0x3F1A36E2E0000000
  %1299 = call float @dx.op.binary.f32(i32 36, float %1255, float %1256)  ; FMin(a,b)
  %1300 = call float @dx.op.binary.f32(i32 36, float %1254, float %1299)  ; FMin(a,b)
  %1301 = call float @dx.op.binary.f32(i32 36, float %1285, float %1295)  ; FMin(a,b)
  %1302 = call float @dx.op.binary.f32(i32 36, float %1275, float %1301)  ; FMin(a,b)
  %1303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1304 = extractvalue %dx.types.CBufRet.f32 %1303, 2
  %1305 = fmul fast float %1304, %1260
  %1306 = fmul fast float %1300, 0xBFF7154760000000
  %1307 = fmul fast float %1306, %1305
  %1308 = call float @dx.op.unary.f32(i32 21, float %1307)  ; Exp(value)
  %1309 = fmul fast float %1308, 2.500000e-01
  %1310 = fsub fast float 1.000000e+00, %1309
  %1311 = fmul fast float %1300, 0xBFDEC709E0000000
  %1312 = fmul fast float %1311, %1305
  %1313 = call float @dx.op.unary.f32(i32 21, float %1312)  ; Exp(value)
  %1314 = fmul fast float %1313, 7.500000e-01
  %1315 = fsub fast float %1310, %1314
  %1316 = extractvalue %dx.types.CBufRet.f32 %1303, 3
  %1317 = call float @dx.op.binary.f32(i32 36, float %1316, float %1315)  ; FMin(a,b)
  %1318 = fsub fast float %1317, %1302
  %1319 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  %1320 = call float @dx.op.unary.f32(i32 7, float %1302)  ; Saturate(value)
  %1321 = extractvalue %dx.types.CBufRet.f32 %1303, 0
  %1322 = fmul fast float %1321, %1319
  %1323 = fptoui float %1322 to i32
  %1324 = uitofp i32 %1323 to float
  %1325 = fdiv fast float 1.000000e+00, %1324
  %1326 = icmp eq i32 %1323, 0
  br i1 %1326, label %1437, label %1327

; <label>:1327                                    ; preds = %1228
  %1328 = fmul fast float %1256, 0x3FA45F3060000000
  %1329 = fmul fast float %1300, 0x3FA45F3060000000
  br label %1330

; <label>:1330                                    ; preds = %1330, %1327
  %1331 = phi float [ %1428, %1330 ], [ %1296, %1327 ]
  %1332 = phi float [ %1429, %1330 ], [ %1297, %1327 ]
  %1333 = phi float [ %1430, %1330 ], [ %1298, %1327 ]
  %1334 = phi float [ %1431, %1330 ], [ 0x3F1A36E2E0000000, %1327 ]
  %1335 = phi float [ %1432, %1330 ], [ 0x3F1A36E2E0000000, %1327 ]
  %1336 = phi float [ %1433, %1330 ], [ 0x3F1A36E2E0000000, %1327 ]
  %1337 = phi i32 [ %1434, %1330 ], [ 0, %1327 ]
  %1338 = sitofp i32 %1337 to float
  %1339 = fadd fast float %1338, %1210
  %1340 = fmul fast float %1325, %1319
  %1341 = fmul fast float %1340, %1339
  %1342 = fsub fast float 1.000000e+00, %1320
  %1343 = fsub fast float %1342, %1341
  %1344 = fmul fast float %1343, 4.000000e+00
  %1345 = fmul fast float %1343, 2.000000e+00
  %1346 = fmul fast float %1343, %1343
  %1347 = fmul fast float %1346, 4.000000e+00
  %1348 = fadd fast float %1347, 1.000000e+00
  %1349 = call float @dx.op.unary.f32(i32 24, float %1348)  ; Sqrt(value)
  %1350 = fadd fast float %1345, %1349
  %1351 = fmul fast float %1344, %1350
  %1352 = fadd fast float %1351, 1.000000e+00
  %1353 = call float @dx.op.unary.f32(i32 23, float %1352)  ; Log(value)
  %1354 = fmul fast float %1353, 0xBFD5555560000000
  %1355 = call float @dx.op.unary.f32(i32 21, float %1354)  ; Exp(value)
  %1356 = fmul fast float %1355, %1355
  %1357 = fmul fast float %1356, %1352
  %1358 = fadd fast float %1355, 1.000000e+00
  %1359 = fadd fast float %1358, %1357
  %1360 = fdiv fast float 2.500000e-01, %1343
  %1361 = fmul fast float %1359, %1360
  %1362 = call float @dx.op.unary.f32(i32 23, float %1361)  ; Log(value)
  %1363 = fmul fast float %1362, 0x4000A2B240000000
  %1364 = fdiv fast float %1363, %1300
  %1365 = fmul fast float %1306, %1364
  %1366 = call float @dx.op.unary.f32(i32 21, float %1365)  ; Exp(value)
  %1367 = fmul fast float %1311, %1364
  %1368 = call float @dx.op.unary.f32(i32 21, float %1367)  ; Exp(value)
  %1369 = fadd fast float %1368, %1366
  %1370 = fmul fast float %1329, %1369
  %1371 = fdiv fast float %1319, %1370
  %1372 = fmul fast float %1338, 0x3FF9E377A0000000
  %1373 = call float @dx.op.unary.f32(i32 22, float %1372)  ; Frc(value)
  %1374 = fadd fast float %1373, %1210
  %1375 = fmul fast float %1374, 0x401921FB60000000
  %1376 = call float @dx.op.unary.f32(i32 13, float %1375)  ; Sin(value)
  %1377 = call float @dx.op.unary.f32(i32 12, float %1375)  ; Cos(value)
  %1378 = fmul fast float %1364, %1262
  %1379 = fmul fast float %1378, %1377
  %1380 = fmul fast float %1364, %1263
  %1381 = fmul fast float %1380, %1376
  %1382 = fadd fast float %1379, %1198
  %1383 = fadd fast float %1381, %1199
  %1384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %24, float %1382, float %1383, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1385 = extractvalue %dx.types.ResRet.f32 %1384, 0
  %1386 = extractvalue %dx.types.ResRet.f32 %1384, 1
  %1387 = extractvalue %dx.types.ResRet.f32 %1384, 2
  %1388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %24, float %1382, float %1383, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1389 = extractvalue %dx.types.ResRet.f32 %1388, 0
  %1390 = fcmp fast ogt float %1389, -1.000000e+00
  %1391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1392 = extractvalue %dx.types.CBufRet.f32 %1391, 1
  %1393 = select i1 %1390, float %1392, float 1.000000e+00
  %1394 = fadd fast float %1389, 1.000000e+00
  %1395 = fmul fast float %1393, %1394
  %1396 = call float @dx.op.unary.f32(i32 6, float %1395)  ; FAbs(value)
  %1397 = fsub fast float %74, %1396
  %1398 = fmul fast float %1364, %1364
  %1399 = fmul fast float %1397, %1397
  %1400 = fadd fast float %1399, %1398
  %1401 = call float @dx.op.unary.f32(i32 24, float %1400)  ; Sqrt(value)
  %1402 = fmul fast float %1266, %1401
  %1403 = call float @dx.op.unary.f32(i32 21, float %1402)  ; Exp(value)
  %1404 = fmul fast float %1271, %1401
  %1405 = call float @dx.op.unary.f32(i32 21, float %1404)  ; Exp(value)
  %1406 = fadd fast float %1405, %1403
  %1407 = fmul fast float %1276, %1401
  %1408 = call float @dx.op.unary.f32(i32 21, float %1407)  ; Exp(value)
  %1409 = fmul fast float %1281, %1401
  %1410 = call float @dx.op.unary.f32(i32 21, float %1409)  ; Exp(value)
  %1411 = fadd fast float %1410, %1408
  %1412 = fmul fast float %1286, %1401
  %1413 = call float @dx.op.unary.f32(i32 21, float %1412)  ; Exp(value)
  %1414 = fmul fast float %1291, %1401
  %1415 = call float @dx.op.unary.f32(i32 21, float %1414)  ; Exp(value)
  %1416 = fadd fast float %1415, %1413
  %1417 = fmul fast float %1254, 0x3FA45F3060000000
  %1418 = fmul fast float %1417, %1371
  %1419 = fmul fast float %1418, %1406
  %1420 = fmul fast float %1255, 0x3FA45F3060000000
  %1421 = fmul fast float %1420, %1371
  %1422 = fmul fast float %1421, %1411
  %1423 = fmul fast float %1328, %1371
  %1424 = fmul fast float %1423, %1416
  %1425 = fmul fast float %1419, %1385
  %1426 = fmul fast float %1422, %1386
  %1427 = fmul fast float %1424, %1387
  %1428 = fadd fast float %1425, %1331
  %1429 = fadd fast float %1426, %1332
  %1430 = fadd fast float %1427, %1333
  %1431 = fadd fast float %1419, %1334
  %1432 = fadd fast float %1422, %1335
  %1433 = fadd fast float %1424, %1336
  %1434 = add nuw nsw i32 %1337, 1
  %1435 = icmp eq i32 %1434, %1323
  br i1 %1435, label %1436, label %1330, !llvm.loop !103

; <label>:1436                                    ; preds = %1330
  br label %1437

; <label>:1437                                    ; preds = %1436, %1228
  %1438 = phi float [ %1296, %1228 ], [ %1428, %1436 ]
  %1439 = phi float [ %1297, %1228 ], [ %1429, %1436 ]
  %1440 = phi float [ %1298, %1228 ], [ %1430, %1436 ]
  %1441 = phi float [ 0x3F1A36E2E0000000, %1228 ], [ %1431, %1436 ]
  %1442 = phi float [ 0x3F1A36E2E0000000, %1228 ], [ %1432, %1436 ]
  %1443 = phi float [ 0x3F1A36E2E0000000, %1228 ], [ %1433, %1436 ]
  %1444 = fmul fast float %1275, %1216
  %1445 = fmul fast float %1285, %1217
  %1446 = fmul fast float %1295, %1218
  %1447 = fsub fast float 1.000000e+00, %1275
  %1448 = fsub fast float 1.000000e+00, %1285
  %1449 = fsub fast float 1.000000e+00, %1295
  %1450 = fdiv fast float %1438, %1441
  %1451 = fdiv fast float %1439, %1442
  %1452 = fdiv fast float %1440, %1443
  %1453 = fmul fast float %1450, %1447
  %1454 = fmul fast float %1451, %1448
  %1455 = fmul fast float %1452, %1449
  %1456 = fadd fast float %1453, %1444
  %1457 = fadd fast float %1454, %1445
  %1458 = fadd fast float %1455, %1446
  br label %1459

; <label>:1459                                    ; preds = %1437, %1182
  %1460 = phi float [ %1456, %1437 ], [ 0.000000e+00, %1182 ]
  %1461 = phi float [ %1457, %1437 ], [ 0.000000e+00, %1182 ]
  %1462 = phi float [ %1458, %1437 ], [ 0.000000e+00, %1182 ]
  %1463 = phi float [ %1220, %1437 ], [ 0.000000e+00, %1182 ]
  %1464 = phi float [ %1221, %1437 ], [ 0.000000e+00, %1182 ]
  %1465 = phi float [ %1222, %1437 ], [ 0.000000e+00, %1182 ]
  %1466 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1467 = extractvalue %dx.types.CBufRet.i32 %1466, 3
  %1468 = and i32 %1467, 3
  %1469 = icmp ne i32 %1468, 0
  %1470 = and i32 %1467, 4
  %1471 = icmp ne i32 %1470, 0
  %1472 = and i1 %1469, %1471
  br i1 %1472, label %1473, label %1480, !dx.controlflow.hints !105

; <label>:1473                                    ; preds = %1459
  %1474 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %24, float %1198, float %1199, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1475 = extractvalue %dx.types.ResRet.f32 %1474, 0
  %1476 = fsub fast float 1.000000e+00, %1475
  %1477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1478 = extractvalue %dx.types.CBufRet.f32 %1477, 0
  %1479 = fcmp fast olt float %1476, %1478
  br label %1483

; <label>:1480                                    ; preds = %1459
  %1481 = icmp eq i32 %1470, 0
  %1482 = and i1 %1469, %1481
  br label %1483

; <label>:1483                                    ; preds = %1480, %1473
  %1484 = phi i1 [ %1479, %1473 ], [ %1482, %1480 ]
  %1485 = select i1 %1484, float 0.000000e+00, float %1464
  %1486 = select i1 %1484, float 0.000000e+00, float %1465
  %1487 = fmul fast float %1463, %1460
  %1488 = fmul fast float %1485, %1461
  %1489 = fmul fast float %1486, %1462
  %1490 = fadd fast float %1487, %1212
  %1491 = fadd fast float %1488, %1213
  %1492 = fadd fast float %1489, %1214
  %1493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1494 = extractvalue %dx.types.CBufRet.f32 %1493, 0
  br i1 %1484, label %1495, label %1514, !dx.controlflow.hints !106

; <label>:1495                                    ; preds = %1483
  %1496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1497 = extractvalue %dx.types.CBufRet.f32 %1496, 3
  %1498 = call float @dx.op.dot3.f32(i32 55, float %1189, float %1190, float %1191, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1499 = fmul fast float %1498, %1490
  %1500 = call float @dx.op.dot3.f32(i32 55, float %1195, float %1196, float %1197, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1501 = fmul fast float %1494, %1500
  %1502 = fadd fast float %1501, %1499
  br i1 %1472, label %1503, label %1509, !dx.controlflow.hints !107

; <label>:1503                                    ; preds = %1495
  %1504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1505 = extractvalue %dx.types.CBufRet.f32 %1504, 1
  %1506 = fadd fast float %1189, -1.000000e+00
  %1507 = fmul fast float %1505, %1506
  %1508 = fadd fast float %1507, 1.000000e+00
  br label %1509

; <label>:1509                                    ; preds = %1503, %1495
  %1510 = phi float [ %1508, %1503 ], [ %1189, %1495 ]
  %1511 = fsub fast float %1491, %1497
  %1512 = fmul fast float %1510, %1511
  %1513 = fadd fast float %1512, %1497
  br label %1524

; <label>:1514                                    ; preds = %1483
  %1515 = fmul fast float %1490, %1189
  %1516 = fmul fast float %1491, %1190
  %1517 = fmul fast float %1492, %1191
  %1518 = fmul fast float %1494, %1195
  %1519 = fmul fast float %1494, %1196
  %1520 = fmul fast float %1494, %1197
  %1521 = fadd fast float %1518, %1515
  %1522 = fadd fast float %1519, %1516
  %1523 = fadd fast float %1520, %1517
  br label %1524

; <label>:1524                                    ; preds = %1514, %1509
  %1525 = phi float [ %1502, %1509 ], [ %1521, %1514 ]
  %1526 = phi float [ %1513, %1509 ], [ %1522, %1514 ]
  %1527 = phi float [ %1492, %1509 ], [ %1523, %1514 ]
  %1528 = lshr i32 %50, 2
  %1529 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1530 = extractvalue %dx.types.CBufRet.i32 %1529, 1
  %1531 = shl i32 %1530, 1
  %1532 = lshr i32 %51, 4
  %1533 = and i32 %1532, 134217727
  %1534 = extractvalue %dx.types.CBufRet.i32 %1529, 0
  %1535 = mul i32 %1534, %1533
  %1536 = lshr i32 %50, 5
  %1537 = and i32 %1536, 67108863
  %1538 = add i32 %1531, %1537
  %1539 = add i32 %1538, %1535
  %1540 = shl i32 %1539, 2
  %1541 = and i32 %53, 24
  %1542 = and i32 %1528, 7
  %1543 = or i32 %1541, %1542
  %1544 = shl i32 1, %1543
  %1545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1540, i32 undef)  ; BufferLoad(srv,index,wot)
  %1546 = extractvalue %dx.types.ResRet.i32 %1545, 0
  %1547 = and i32 %1546, %1544
  %1548 = icmp eq i32 %1547, 0
  br i1 %1548, label %1564, label %1549, !dx.controlflow.hints !108

; <label>:1549                                    ; preds = %1524
  %1550 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %52, i32 %53, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1551 = extractvalue %dx.types.ResRet.f32 %1550, 0
  %1552 = fcmp fast ogt float %1551, 0.000000e+00
  br i1 %1552, label %1553, label %1564, !dx.controlflow.hints !109

; <label>:1553                                    ; preds = %1549
  %1554 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %52, i32 %53, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1555 = extractvalue %dx.types.ResRet.f32 %1554, 0
  %1556 = extractvalue %dx.types.ResRet.f32 %1554, 1
  %1557 = extractvalue %dx.types.ResRet.f32 %1554, 2
  %1558 = extractvalue %dx.types.ResRet.f32 %1554, 3
  %1559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %1560 = extractvalue %dx.types.CBufRet.f32 %1559, 2
  %1561 = fmul fast float %1560, %1555
  %1562 = fmul fast float %1560, %1556
  %1563 = fmul fast float %1560, %1557
  br label %1564

; <label>:1564                                    ; preds = %1553, %1549, %1524
  %1565 = phi float [ %1561, %1553 ], [ 0.000000e+00, %1549 ], [ 0.000000e+00, %1524 ]
  %1566 = phi float [ %1562, %1553 ], [ 0.000000e+00, %1549 ], [ 0.000000e+00, %1524 ]
  %1567 = phi float [ %1563, %1553 ], [ 0.000000e+00, %1549 ], [ 0.000000e+00, %1524 ]
  %1568 = phi float [ %1558, %1553 ], [ 0.000000e+00, %1549 ], [ 0.000000e+00, %1524 ]
  %1569 = fsub fast float 1.000000e+00, %1568
  %1570 = fmul fast float %1569, %1525
  %1571 = fmul fast float %1569, %1526
  %1572 = fmul fast float %1569, %1527
  %1573 = fadd fast float %1570, %1565
  %1574 = fadd fast float %1571, %1566
  %1575 = fadd fast float %1572, %1567
  %1576 = fadd fast float %1210, 0x3FE3C6EF40000000
  %1577 = call float @dx.op.unary.f32(i32 22, float %1576)  ; Frc(value)
  %1578 = call float @dx.op.unary.f32(i32 23, float %1573)  ; Log(value)
  %1579 = fadd fast float %1578, -7.000000e+00
  %1580 = call float @dx.op.unary.f32(i32 21, float %1579)  ; Exp(value)
  %1581 = fmul fast float %1577, 2.000000e+00
  %1582 = fadd fast float %1581, -1.000000e+00
  %1583 = fmul fast float %1580, %1582
  %1584 = fcmp fast ogt float %1573, 0.000000e+00
  %1585 = select i1 %1584, float %1583, float 0.000000e+00
  %1586 = fadd fast float %1585, %1573
  %1587 = fadd fast float %1210, 0x3FF3C6EF40000000
  %1588 = call float @dx.op.unary.f32(i32 22, float %1587)  ; Frc(value)
  %1589 = call float @dx.op.unary.f32(i32 23, float %1574)  ; Log(value)
  %1590 = fadd fast float %1589, -7.000000e+00
  %1591 = call float @dx.op.unary.f32(i32 21, float %1590)  ; Exp(value)
  %1592 = fmul fast float %1588, 2.000000e+00
  %1593 = fadd fast float %1592, -1.000000e+00
  %1594 = fmul fast float %1591, %1593
  %1595 = fcmp fast ogt float %1574, 0.000000e+00
  %1596 = select i1 %1595, float %1594, float 0.000000e+00
  %1597 = fadd fast float %1596, %1574
  %1598 = fadd fast float %1210, 0x3FFDAA66E0000000
  %1599 = call float @dx.op.unary.f32(i32 22, float %1598)  ; Frc(value)
  %1600 = call float @dx.op.unary.f32(i32 23, float %1575)  ; Log(value)
  %1601 = fadd fast float %1600, -6.000000e+00
  %1602 = call float @dx.op.unary.f32(i32 21, float %1601)  ; Exp(value)
  %1603 = fmul fast float %1599, 2.000000e+00
  %1604 = fadd fast float %1603, -1.000000e+00
  %1605 = fmul fast float %1602, %1604
  %1606 = fcmp fast ogt float %1575, 0.000000e+00
  %1607 = select i1 %1606, float %1605, float 0.000000e+00
  %1608 = fadd fast float %1607, %1575
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %52, i32 %53, i32 undef, float %1586, float %1597, float %1608, float %1586, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1609 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1610 = extractvalue %dx.types.CBufRet.i32 %1609, 0
  %1611 = and i32 %1610, 1
  %1612 = icmp eq i32 %1611, 0
  br i1 %1612, label %1616, label %1613, !dx.controlflow.hints !110

; <label>:1613                                    ; preds = %1564
  %1614 = and i32 %50, 2147483647
  %1615 = and i32 %51, 2147483647
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1614, i32 %1615, i32 undef, float %1490, float %1491, float %1492, float %1490, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1616

; <label>:1616                                    ; preds = %1613, %1564
  br label %1617

; <label>:1617                                    ; preds = %1640, %1616
  %1618 = phi float [ %1641, %1640 ], [ %1573, %1616 ]
  %1619 = phi float [ %1642, %1640 ], [ %1574, %1616 ]
  %1620 = phi float [ %1643, %1640 ], [ %1575, %1616 ]
  %1621 = phi float [ %1644, %1640 ], [ 1.000000e+00, %1616 ]
  %1622 = phi i32 [ %1627, %1640 ], [ 14, %1616 ]
  %1623 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1622)  ; FirstbitLo(value)
  %1624 = and i32 %1623, 31
  %1625 = shl i32 1, %1624
  %1626 = xor i32 %1625, -1
  %1627 = and i32 %1622, %1626
  %1628 = and i32 %1623, 1
  %1629 = lshr i32 %1623, 1
  %1630 = or i32 %1628, %52
  %1631 = add i32 %1629, %53
  %1632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1633 = extractvalue %dx.types.CBufRet.f32 %1632, 0
  %1634 = fptoui float %1633 to i32
  %1635 = icmp uge i32 %1630, %1634
  %1636 = extractvalue %dx.types.CBufRet.f32 %1632, 1
  %1637 = fptoui float %1636 to i32
  %1638 = icmp uge i32 %1631, %1637
  %1639 = or i1 %1635, %1638
  br i1 %1639, label %1640, label %1646, !dx.controlflow.hints !111

; <label>:1640                                    ; preds = %3173, %1617
  %1641 = phi float [ %1618, %1617 ], [ %3174, %3173 ]
  %1642 = phi float [ %1619, %1617 ], [ %3175, %3173 ]
  %1643 = phi float [ %1620, %1617 ], [ %3176, %3173 ]
  %1644 = phi float [ %1621, %1617 ], [ %3177, %3173 ]
  %1645 = icmp eq i32 %1627, 0
  br i1 %1645, label %3178, label %1617

; <label>:1646                                    ; preds = %1617
  %1647 = uitofp i32 %1630 to float
  %1648 = uitofp i32 %1631 to float
  %1649 = fadd fast float %1647, 5.000000e-01
  %1650 = fadd fast float %1648, 5.000000e-01
  %1651 = extractvalue %dx.types.CBufRet.f32 %1632, 2
  %1652 = extractvalue %dx.types.CBufRet.f32 %1632, 3
  %1653 = fmul fast float %1651, %1649
  %1654 = fmul fast float %1652, %1650
  %1655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1656 = extractvalue %dx.types.CBufRet.f32 %1655, 2
  %1657 = fmul fast float %1656, 0x3FE3C6EF40000000
  %1658 = frem fast float %1647, 2.560000e+02
  %1659 = frem fast float %1648, 2.560000e+02
  %1660 = fptoui float %1658 to i32
  %1661 = fptoui float %1659 to i32
  %1662 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1660, i32 %1661, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1663 = extractvalue %dx.types.ResRet.f32 %1662, 0
  %1664 = fadd fast float %1663, %1657
  %1665 = call float @dx.op.unary.f32(i32 22, float %1664)  ; Frc(value)
  %1666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1667 = extractvalue %dx.types.ResRet.i32 %1666, 0
  %1668 = and i32 %1667, 114688
  %1669 = icmp ne i32 %1668, 0
  %1670 = select i1 %1669, i32 %1630, i32 0
  %1671 = select i1 %1669, i32 %1631, i32 0
  %1672 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %1670, i32 %1671, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1673 = extractvalue %dx.types.ResRet.f32 %1672, 0
  %1674 = fmul fast float %1673, 2.550000e+02
  %1675 = fptoui float %1674 to i32
  %1676 = icmp eq i32 %1675, 3
  %1677 = and i1 %1669, %1676
  %1678 = getelementptr [4 x float], [4 x float]* %37, i32 0, i32 %1623
  %1679 = load float, float* %1678, align 4, !tbaa !53, !noalias !112
  %1680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1681 = extractvalue %dx.types.CBufRet.f32 %1680, 3
  %1682 = fcmp fast oge float %1679, %1681
  br i1 %1677, label %2542, label %1683, !dx.controlflow.hints !41

; <label>:1683                                    ; preds = %1646
  %1684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 170)  ; CBufferLoadLegacy(handle,regIndex)
  %1685 = extractvalue %dx.types.CBufRet.f32 %1684, 0
  %1686 = select i1 %1682, float %1685, float %1679
  %1687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1688 = extractvalue %dx.types.CBufRet.f32 %1687, 2
  %1689 = extractvalue %dx.types.CBufRet.f32 %1687, 3
  %1690 = fmul fast float %1649, 2.000000e+00
  %1691 = fmul fast float %1690, %1688
  %1692 = fmul fast float %1650, 2.000000e+00
  %1693 = fmul fast float %1692, %1689
  %1694 = fsub fast float 1.000000e+00, %1691
  %1695 = fsub fast float 1.000000e+00, %1693
  %1696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1697 = extractvalue %dx.types.CBufRet.f32 %1696, 0
  %1698 = extractvalue %dx.types.CBufRet.f32 %1696, 1
  %1699 = extractvalue %dx.types.CBufRet.f32 %1696, 2
  %1700 = fmul fast float %1694, %1697
  %1701 = fmul fast float %1694, %1698
  %1702 = fmul fast float %1694, %1699
  %1703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1704 = extractvalue %dx.types.CBufRet.f32 %1703, 0
  %1705 = extractvalue %dx.types.CBufRet.f32 %1703, 1
  %1706 = extractvalue %dx.types.CBufRet.f32 %1703, 2
  %1707 = fmul fast float %1695, %1704
  %1708 = fmul fast float %1695, %1705
  %1709 = fmul fast float %1695, %1706
  %1710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1711 = extractvalue %dx.types.CBufRet.f32 %1710, 0
  %1712 = extractvalue %dx.types.CBufRet.f32 %1710, 1
  %1713 = extractvalue %dx.types.CBufRet.f32 %1710, 2
  %1714 = fadd fast float %1707, %1711
  %1715 = fadd fast float %1714, %1700
  %1716 = fadd fast float %1708, %1712
  %1717 = fadd fast float %1716, %1701
  %1718 = fadd fast float %1709, %1713
  %1719 = fadd fast float %1718, %1702
  %1720 = fmul fast float %1715, %1686
  %1721 = fmul fast float %1717, %1686
  %1722 = fmul fast float %1719, %1686
  %1723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 163)  ; CBufferLoadLegacy(handle,regIndex)
  %1724 = extractvalue %dx.types.CBufRet.f32 %1723, 0
  %1725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1726 = extractvalue %dx.types.CBufRet.f32 %1725, 0
  %1727 = extractvalue %dx.types.CBufRet.f32 %1725, 1
  %1728 = extractvalue %dx.types.CBufRet.f32 %1725, 2
  %1729 = extractvalue %dx.types.CBufRet.f32 %1725, 3
  %1730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1731 = extractvalue %dx.types.CBufRet.f32 %1730, 0
  %1732 = extractvalue %dx.types.CBufRet.f32 %1730, 1
  %1733 = extractvalue %dx.types.CBufRet.f32 %1730, 2
  %1734 = extractvalue %dx.types.CBufRet.f32 %1730, 3
  %1735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1736 = extractvalue %dx.types.CBufRet.f32 %1735, 0
  %1737 = extractvalue %dx.types.CBufRet.f32 %1735, 1
  %1738 = extractvalue %dx.types.CBufRet.f32 %1735, 2
  %1739 = extractvalue %dx.types.CBufRet.f32 %1735, 3
  %1740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1741 = extractvalue %dx.types.CBufRet.f32 %1740, 0
  %1742 = extractvalue %dx.types.CBufRet.f32 %1740, 1
  %1743 = extractvalue %dx.types.CBufRet.f32 %1740, 2
  %1744 = extractvalue %dx.types.CBufRet.f32 %1740, 3
  %1745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1746 = extractvalue %dx.types.CBufRet.f32 %1745, 3
  %1747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1748 = extractvalue %dx.types.CBufRet.f32 %1747, 3
  %1749 = extractvalue %dx.types.CBufRet.f32 %1747, 0
  %1750 = extractvalue %dx.types.CBufRet.f32 %1747, 1
  %1751 = extractvalue %dx.types.CBufRet.f32 %1747, 2
  %1752 = fcmp fast olt float %1751, -5.000000e-01
  %1753 = extractvalue %dx.types.CBufRet.f32 %1723, 3
  %1754 = call float @dx.op.dot3.f32(i32 55, float %1720, float %1721, float %1722, float %1720, float %1721, float %1722)  ; Dot3(ax,ay,az,bx,by,bz)
  %1755 = call float @dx.op.unary.f32(i32 25, float %1754)  ; Rsqrt(value)
  %1756 = fmul fast float %1755, %1754
  %1757 = fmul fast float %1755, %1720
  %1758 = fmul fast float %1755, %1721
  %1759 = fmul fast float %1755, %1722
  %1760 = fadd fast float %1756, %1729
  br i1 %1682, label %1761, label %1773, !dx.controlflow.hints !42

; <label>:1761                                    ; preds = %1683
  %1762 = extractvalue %dx.types.CBufRet.f32 %1723, 2
  %1763 = extractvalue %dx.types.CBufRet.f32 %1723, 1
  %1764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 187)  ; CBufferLoadLegacy(handle,regIndex)
  %1765 = extractvalue %dx.types.CBufRet.f32 %1764, 1
  %1766 = extractvalue %dx.types.CBufRet.f32 %1764, 0
  %1767 = call float @dx.op.binary.f32(i32 35, float %1759, float %1766)  ; FMax(a,b)
  %1768 = call float @dx.op.binary.f32(i32 36, float %1767, float %1765)  ; FMin(a,b)
  %1769 = fmul fast float %1768, %1763
  %1770 = fadd fast float %1769, %1762
  %1771 = call float @dx.op.unary.f32(i32 7, float %1770)  ; Saturate(value)
  %1772 = fmul fast float %1759, %1724
  br label %1773

; <label>:1773                                    ; preds = %1761, %1683
  %1774 = phi float [ %1724, %1761 ], [ %1760, %1683 ]
  %1775 = phi float [ %1771, %1761 ], [ 0.000000e+00, %1683 ]
  %1776 = phi float [ %1772, %1761 ], [ %1722, %1683 ]
  %1777 = call float @dx.op.dot3.f32(i32 55, float %1757, float %1758, float %1759, float %1726, float %1727, float %1728)  ; Dot3(ax,ay,az,bx,by,bz)
  %1778 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1779 = extractvalue %dx.types.CBufRet.i32 %1778, 1
  %1780 = and i32 %1779, 1
  %1781 = icmp ne i32 %1780, 0
  %1782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1783 = extractvalue %dx.types.CBufRet.f32 %1782, 2
  %1784 = fcmp fast ogt float %1783, 0.000000e+00
  %1785 = and i1 %1781, %1784
  br i1 %1785, label %1786, label %2195, !dx.controlflow.hints !43

; <label>:1786                                    ; preds = %1773
  %1787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1788 = extractvalue %dx.types.CBufRet.f32 %1787, 3
  %1789 = select i1 %1682, float %1788, float %1756
  %1790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1791 = extractvalue %dx.types.CBufRet.f32 %1790, 3
  %1792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1793 = extractvalue %dx.types.CBufRet.f32 %1792, 2
  %1794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1795 = extractvalue %dx.types.CBufRet.f32 %1794, 2
  %1796 = fsub fast float %1793, %1795
  %1797 = and i32 %1779, 2
  %1798 = extractvalue %dx.types.CBufRet.i32 %1778, 0
  %1799 = call i32 @dx.op.binary.i32(i32 40, i32 %1798, i32 3)  ; UMin(a,b)
  %1800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1801 = extractvalue %dx.types.CBufRet.f32 %1800, 0
  %1802 = extractvalue %dx.types.CBufRet.f32 %1800, 1
  %1803 = extractvalue %dx.types.CBufRet.f32 %1794, 0
  %1804 = extractvalue %dx.types.CBufRet.f32 %1794, 1
  %1805 = fsub fast float %1801, %1803
  %1806 = fsub fast float %1802, %1804
  %1807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1808 = extractvalue %dx.types.CBufRet.f32 %1807, 0
  %1809 = fcmp fast ogt float %1808, 0.000000e+00
  %1810 = fsub fast float -0.000000e+00, %1805
  %1811 = fsub fast float -0.000000e+00, %1806
  %1812 = call float @dx.op.dot2.f32(i32 54, float %1757, float %1758, float %1757, float %1758)  ; Dot2(ax,ay,bx,by)
  %1813 = call float @dx.op.dot2.f32(i32 54, float %1757, float %1758, float %1810, float %1811)  ; Dot2(ax,ay,bx,by)
  %1814 = fmul fast float %1813, 2.000000e+00
  %1815 = call float @dx.op.dot2.f32(i32 54, float %1810, float %1811, float %1810, float %1811)  ; Dot2(ax,ay,bx,by)
  %1816 = fmul fast float %1808, %1808
  %1817 = fsub fast float %1815, %1816
  %1818 = fmul fast float %1814, %1814
  %1819 = fmul fast float %1812, 4.000000e+00
  %1820 = fmul fast float %1819, %1817
  %1821 = fsub fast float %1818, %1820
  %1822 = fcmp fast ogt float %1821, 0.000000e+00
  br i1 %1822, label %1823, label %1838, !dx.controlflow.hints !44

; <label>:1823                                    ; preds = %1786
  %1824 = fcmp fast ogt float %1814, 0.000000e+00
  %1825 = call float @dx.op.unary.f32(i32 24, float %1821)  ; Sqrt(value)
  %1826 = fsub fast float -0.000000e+00, %1825
  %1827 = select i1 %1824, float %1825, float %1826
  %1828 = fadd fast float %1827, %1814
  %1829 = fmul float %1828, -5.000000e-01
  %1830 = fdiv fast float %1829, %1812
  %1831 = call float @dx.op.binary.f32(i32 35, float %1830, float 0.000000e+00)  ; FMax(a,b)
  %1832 = call float @dx.op.binary.f32(i32 36, float %1789, float %1831)  ; FMin(a,b)
  %1833 = fdiv fast float %1817, %1829
  %1834 = call float @dx.op.binary.f32(i32 35, float %1833, float 0.000000e+00)  ; FMax(a,b)
  %1835 = call float @dx.op.binary.f32(i32 36, float %1789, float %1834)  ; FMin(a,b)
  %1836 = call float @dx.op.binary.f32(i32 36, float %1832, float %1835)  ; FMin(a,b)
  %1837 = call float @dx.op.binary.f32(i32 35, float %1832, float %1835)  ; FMax(a,b)
  br label %1838

; <label>:1838                                    ; preds = %1823, %1786
  %1839 = phi float [ %1837, %1823 ], [ -1.000000e+00, %1786 ]
  %1840 = phi float [ %1836, %1823 ], [ -1.000000e+00, %1786 ]
  %1841 = phi i1 [ true, %1823 ], [ false, %1786 ]
  %1842 = and i1 %1809, %1841
  br i1 %1842, label %1843, label %1845, !dx.controlflow.hints !45

; <label>:1843                                    ; preds = %1838
  %1844 = fcmp fast oeq float %1840, %1839
  br i1 %1844, label %2148, label %1846, !dx.controlflow.hints !46

; <label>:1845                                    ; preds = %1838
  br i1 %1809, label %2148, label %1846, !dx.controlflow.hints !47

; <label>:1846                                    ; preds = %1845, %1843
  %1847 = phi float [ %1789, %1845 ], [ %1839, %1843 ]
  %1848 = phi float [ 0.000000e+00, %1845 ], [ %1840, %1843 ]
  %1849 = icmp ne i32 %1797, 0
  %1850 = fmul fast float %1847, %1759
  %1851 = fadd fast float %1850, %1791
  %1852 = fmul fast float %1851, %1847
  %1853 = select i1 %1849, float 0.000000e+00, float %1852
  %1854 = fcmp fast oeq float %1759, 0.000000e+00
  %1855 = fdiv fast float %1796, %1759
  %1856 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1855)  ; FMax(a,b)
  %1857 = select i1 %1854, float %1847, float %1856
  %1858 = call float @dx.op.binary.f32(i32 36, float %1847, float %1857)  ; FMin(a,b)
  %1859 = fcmp fast ogt float %1759, 0.000000e+00
  %1860 = fcmp fast olt float %1796, 0.000000e+00
  br i1 %1859, label %1861, label %1918, !dx.controlflow.hints !48

; <label>:1861                                    ; preds = %1846
  %1862 = icmp eq i32 %1797, 0
  br i1 %1860, label %1863, label %1907, !dx.controlflow.hints !49

; <label>:1863                                    ; preds = %1861
  %1864 = select i1 %1862, float %1847, float 0.000000e+00
  %1865 = fsub fast float -0.000000e+00, %1864
  %1866 = call float @dx.op.unary.f32(i32 6, float %1865)  ; FAbs(value)
  %1867 = fmul fast float %1864, %1759
  %1868 = fadd fast float %1867, %1791
  %1869 = fmul fast float %1866, %1868
  %1870 = fsub fast float %1853, %1869
  %1871 = fsub fast float %1847, %1866
  %1872 = select i1 %1862, float %1871, float 0.000000e+00
  %1873 = extractvalue %dx.types.CBufRet.f32 %1787, 0
  %1874 = extractvalue %dx.types.CBufRet.f32 %1787, 1
  %1875 = extractvalue %dx.types.CBufRet.f32 %1787, 2
  %1876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1877 = extractvalue %dx.types.CBufRet.f32 %1876, 0
  %1878 = extractvalue %dx.types.CBufRet.f32 %1876, 1
  %1879 = extractvalue %dx.types.CBufRet.f32 %1876, 2
  %1880 = extractvalue %dx.types.CBufRet.f32 %1876, 3
  %1881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1882 = extractvalue %dx.types.CBufRet.f32 %1881, 3
  %1883 = call float @dx.op.binary.f32(i32 36, float %1870, float %1882)  ; FMin(a,b)
  %1884 = fmul fast float %1880, %1872
  %1885 = call float @dx.op.unary.f32(i32 7, float %1884)  ; Saturate(value)
  %1886 = fsub fast float %1877, %1873
  %1887 = fsub fast float %1878, %1874
  %1888 = fsub fast float %1879, %1875
  %1889 = fmul fast float %1885, %1886
  %1890 = fmul fast float %1885, %1887
  %1891 = fmul fast float %1885, %1888
  %1892 = fadd fast float %1889, %1873
  %1893 = fadd fast float %1890, %1874
  %1894 = fadd fast float %1891, %1875
  br i1 %1682, label %2148, label %1895, !dx.controlflow.hints !50

; <label>:1895                                    ; preds = %1863
  %1896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1897 = extractvalue %dx.types.CBufRet.f32 %1896, 0
  %1898 = extractvalue %dx.types.CBufRet.f32 %1896, 1
  %1899 = fadd fast float %1898, %1897
  %1900 = call float @dx.op.unary.f32(i32 7, float %1899)  ; Saturate(value)
  %1901 = extractvalue %dx.types.CBufRet.f32 %1896, 2
  %1902 = extractvalue %dx.types.CBufRet.f32 %1896, 3
  %1903 = fadd fast float %1902, %1901
  %1904 = call float @dx.op.unary.f32(i32 7, float %1903)  ; Saturate(value)
  %1905 = fmul fast float %1900, %1883
  %1906 = fmul fast float %1905, %1904
  br label %2148

; <label>:1907                                    ; preds = %1861
  br i1 %1862, label %1908, label %1929, !dx.controlflow.hints !51

; <label>:1908                                    ; preds = %1907
  %1909 = call float @dx.op.binary.f32(i32 36, float %1858, float %1848)  ; FMin(a,b)
  %1910 = fsub fast float %1858, %1909
  %1911 = fsub fast float %1910, %1847
  %1912 = call float @dx.op.unary.f32(i32 6, float %1911)  ; FAbs(value)
  %1913 = fadd fast float %1910, %1847
  %1914 = fmul fast float %1913, %1759
  %1915 = fadd fast float %1914, %1791
  %1916 = fmul fast float %1915, %1912
  %1917 = fsub fast float %1853, %1916
  br label %1929

; <label>:1918                                    ; preds = %1846
  br i1 %1860, label %1919, label %1929, !dx.controlflow.hints !52

; <label>:1919                                    ; preds = %1918
  %1920 = call float @dx.op.binary.f32(i32 35, float %1848, float %1858)  ; FMax(a,b)
  %1921 = icmp eq i32 %1797, 0
  %1922 = select i1 %1921, float %1858, float 0.000000e+00
  %1923 = fsub fast float -0.000000e+00, %1922
  %1924 = call float @dx.op.unary.f32(i32 6, float %1923)  ; FAbs(value)
  %1925 = fmul fast float %1922, %1759
  %1926 = fadd fast float %1925, %1791
  %1927 = fmul fast float %1924, %1926
  %1928 = fsub fast float %1853, %1927
  br label %1929

; <label>:1929                                    ; preds = %1919, %1918, %1908, %1907
  %1930 = phi float [ %1848, %1907 ], [ %1848, %1908 ], [ %1920, %1919 ], [ %1848, %1918 ]
  %1931 = phi float [ 0.000000e+00, %1907 ], [ %1912, %1908 ], [ %1924, %1919 ], [ 0.000000e+00, %1918 ]
  %1932 = phi float [ %1853, %1907 ], [ %1917, %1908 ], [ %1928, %1919 ], [ %1853, %1918 ]
  %1933 = phi float [ %1858, %1907 ], [ %1858, %1908 ], [ %1847, %1919 ], [ %1847, %1918 ]
  %1934 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 0
  store float -1.000000e+00, float* %1934, align 4, !tbaa !53, !noalias !113
  %1935 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 1
  store float -1.000000e+00, float* %1935, align 4, !tbaa !53, !noalias !113
  %1936 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 2
  store float -1.000000e+00, float* %1936, align 4, !tbaa !53, !noalias !113
  %1937 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 0
  store float -1.000000e+00, float* %1937, align 4, !tbaa !53, !noalias !113
  %1938 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 1
  store float -1.000000e+00, float* %1938, align 4, !tbaa !53, !noalias !113
  %1939 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 2
  store float -1.000000e+00, float* %1939, align 4, !tbaa !53, !noalias !113
  %1940 = icmp sgt i32 %1799, 0
  br i1 %1940, label %1941, label %2002

; <label>:1941                                    ; preds = %1929
  br label %1942

; <label>:1942                                    ; preds = %1991, %1941
  %1943 = phi i32 [ %1992, %1991 ], [ 0, %1941 ]
  %1944 = phi i32 [ %1993, %1991 ], [ 0, %1941 ]
  %1945 = add nuw i32 %1944, 171
  %1946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 %1945)  ; CBufferLoadLegacy(handle,regIndex)
  %1947 = extractvalue %dx.types.CBufRet.f32 %1946, 0
  %1948 = extractvalue %dx.types.CBufRet.f32 %1946, 1
  %1949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1950 = extractvalue %dx.types.CBufRet.f32 %1949, 0
  %1951 = extractvalue %dx.types.CBufRet.f32 %1949, 1
  %1952 = fsub fast float %1947, %1950
  %1953 = fsub fast float %1948, %1951
  %1954 = extractvalue %dx.types.CBufRet.f32 %1946, 2
  %1955 = fsub fast float -0.000000e+00, %1952
  %1956 = fsub fast float -0.000000e+00, %1953
  %1957 = call float @dx.op.dot2.f32(i32 54, float %1757, float %1758, float %1955, float %1956)  ; Dot2(ax,ay,bx,by)
  %1958 = fmul fast float %1957, 2.000000e+00
  %1959 = call float @dx.op.dot2.f32(i32 54, float %1955, float %1956, float %1955, float %1956)  ; Dot2(ax,ay,bx,by)
  %1960 = fmul fast float %1954, %1954
  %1961 = fsub fast float %1959, %1960
  %1962 = fmul fast float %1958, %1958
  %1963 = fmul fast float %1819, %1961
  %1964 = fsub fast float %1962, %1963
  %1965 = fcmp fast ogt float %1964, 0.000000e+00
  br i1 %1965, label %1966, label %1981, !dx.controlflow.hints !44

; <label>:1966                                    ; preds = %1942
  %1967 = fcmp fast ogt float %1958, 0.000000e+00
  %1968 = call float @dx.op.unary.f32(i32 24, float %1964)  ; Sqrt(value)
  %1969 = fsub fast float -0.000000e+00, %1968
  %1970 = select i1 %1967, float %1968, float %1969
  %1971 = fadd fast float %1970, %1958
  %1972 = fmul float %1971, -5.000000e-01
  %1973 = fdiv fast float %1972, %1812
  %1974 = call float @dx.op.binary.f32(i32 35, float %1973, float 0.000000e+00)  ; FMax(a,b)
  %1975 = call float @dx.op.binary.f32(i32 36, float %1847, float %1974)  ; FMin(a,b)
  %1976 = fdiv fast float %1961, %1972
  %1977 = call float @dx.op.binary.f32(i32 35, float %1976, float 0.000000e+00)  ; FMax(a,b)
  %1978 = call float @dx.op.binary.f32(i32 36, float %1847, float %1977)  ; FMin(a,b)
  %1979 = call float @dx.op.binary.f32(i32 36, float %1975, float %1978)  ; FMin(a,b)
  %1980 = call float @dx.op.binary.f32(i32 35, float %1975, float %1978)  ; FMax(a,b)
  br label %1981

; <label>:1981                                    ; preds = %1966, %1942
  %1982 = phi float [ %1980, %1966 ], [ -1.000000e+00, %1942 ]
  %1983 = phi float [ %1979, %1966 ], [ -1.000000e+00, %1942 ]
  %1984 = phi i1 [ true, %1966 ], [ false, %1942 ]
  br i1 %1984, label %1985, label %1991, !dx.controlflow.hints !69

; <label>:1985                                    ; preds = %1981
  %1986 = call float @dx.op.binary.f32(i32 35, float %1930, float %1983)  ; FMax(a,b)
  %1987 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 %1944
  store float %1986, float* %1987, align 4, !tbaa !53, !noalias !113
  %1988 = call float @dx.op.binary.f32(i32 35, float %1930, float %1982)  ; FMax(a,b)
  %1989 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 %1944
  store float %1988, float* %1989, align 4, !tbaa !53, !noalias !113
  %1990 = add nsw i32 %1943, 1
  br label %1991

; <label>:1991                                    ; preds = %1985, %1981
  %1992 = phi i32 [ %1990, %1985 ], [ %1943, %1981 ]
  %1993 = add nuw nsw i32 %1944, 1
  %1994 = icmp eq i32 %1993, %1799
  br i1 %1994, label %1995, label %1942

; <label>:1995                                    ; preds = %1991
  %1996 = load float, float* %1936, align 4, !tbaa !53, !alias.scope !123, !noalias !126
  %1997 = load float, float* %1935, align 4, !tbaa !53, !alias.scope !129, !noalias !130
  %1998 = load float, float* %1934, align 4, !tbaa !53, !alias.scope !131, !noalias !132
  %1999 = load float, float* %1939, align 4, !tbaa !53, !alias.scope !133, !noalias !136
  %2000 = load float, float* %1938, align 4, !tbaa !53, !alias.scope !139, !noalias !140
  %2001 = load float, float* %1937, align 4, !tbaa !53, !alias.scope !141, !noalias !142
  br label %2002

; <label>:2002                                    ; preds = %1995, %1929
  %2003 = phi float [ -1.000000e+00, %1929 ], [ %2001, %1995 ]
  %2004 = phi float [ -1.000000e+00, %1929 ], [ %2000, %1995 ]
  %2005 = phi float [ -1.000000e+00, %1929 ], [ %1999, %1995 ]
  %2006 = phi float [ -1.000000e+00, %1929 ], [ %1998, %1995 ]
  %2007 = phi float [ -1.000000e+00, %1929 ], [ %1997, %1995 ]
  %2008 = phi float [ -1.000000e+00, %1929 ], [ %1996, %1995 ]
  %2009 = phi i32 [ 0, %1929 ], [ %1992, %1995 ]
  %2010 = call float @dx.op.binary.f32(i32 36, float %2007, float %2008)  ; FMin(a,b)
  %2011 = call float @dx.op.binary.f32(i32 36, float %2006, float %2010)  ; FMin(a,b)
  %2012 = call float @dx.op.binary.f32(i32 35, float %2006, float %2007)  ; FMax(a,b)
  %2013 = call float @dx.op.binary.f32(i32 36, float %2012, float %2008)  ; FMin(a,b)
  %2014 = call float @dx.op.binary.f32(i32 36, float %2006, float %2007)  ; FMin(a,b)
  %2015 = call float @dx.op.binary.f32(i32 35, float %2014, float %2013)  ; FMax(a,b)
  %2016 = call float @dx.op.binary.f32(i32 35, float %2007, float %2008)  ; FMax(a,b)
  %2017 = call float @dx.op.binary.f32(i32 35, float %2006, float %2016)  ; FMax(a,b)
  store float %2011, float* %1934, align 4, !tbaa !53, !alias.scope !131, !noalias !132
  store float %2015, float* %1935, align 4, !tbaa !53, !alias.scope !129, !noalias !130
  store float %2017, float* %1936, align 4, !tbaa !53, !alias.scope !123, !noalias !126
  %2018 = call float @dx.op.binary.f32(i32 36, float %2004, float %2005)  ; FMin(a,b)
  %2019 = call float @dx.op.binary.f32(i32 36, float %2003, float %2018)  ; FMin(a,b)
  %2020 = call float @dx.op.binary.f32(i32 35, float %2003, float %2004)  ; FMax(a,b)
  %2021 = call float @dx.op.binary.f32(i32 36, float %2020, float %2005)  ; FMin(a,b)
  %2022 = call float @dx.op.binary.f32(i32 36, float %2003, float %2004)  ; FMin(a,b)
  %2023 = call float @dx.op.binary.f32(i32 35, float %2022, float %2021)  ; FMax(a,b)
  %2024 = call float @dx.op.binary.f32(i32 35, float %2004, float %2005)  ; FMax(a,b)
  %2025 = call float @dx.op.binary.f32(i32 35, float %2003, float %2024)  ; FMax(a,b)
  store float %2019, float* %1937, align 4, !tbaa !53, !alias.scope !141, !noalias !142
  store float %2023, float* %1938, align 4, !tbaa !53, !alias.scope !139, !noalias !140
  store float %2025, float* %1939, align 4, !tbaa !53, !alias.scope !133, !noalias !136
  %2026 = sub nsw i32 3, %2009
  %2027 = icmp sgt i32 %2026, 2
  br i1 %2027, label %2028, label %2066, !dx.controlflow.hints !90

; <label>:2028                                    ; preds = %2002
  %2029 = icmp eq i32 %1797, 0
  %2030 = fsub fast float %1847, %1931
  %2031 = select i1 %2029, float %2030, float %1931
  %2032 = extractvalue %dx.types.CBufRet.f32 %1787, 0
  %2033 = extractvalue %dx.types.CBufRet.f32 %1787, 1
  %2034 = extractvalue %dx.types.CBufRet.f32 %1787, 2
  %2035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2036 = extractvalue %dx.types.CBufRet.f32 %2035, 0
  %2037 = extractvalue %dx.types.CBufRet.f32 %2035, 1
  %2038 = extractvalue %dx.types.CBufRet.f32 %2035, 2
  %2039 = extractvalue %dx.types.CBufRet.f32 %2035, 3
  %2040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2041 = extractvalue %dx.types.CBufRet.f32 %2040, 3
  %2042 = call float @dx.op.binary.f32(i32 36, float %1932, float %2041)  ; FMin(a,b)
  %2043 = fmul fast float %2039, %2031
  %2044 = call float @dx.op.unary.f32(i32 7, float %2043)  ; Saturate(value)
  %2045 = fsub fast float %2036, %2032
  %2046 = fsub fast float %2037, %2033
  %2047 = fsub fast float %2038, %2034
  %2048 = fmul fast float %2044, %2045
  %2049 = fmul fast float %2044, %2046
  %2050 = fmul fast float %2044, %2047
  %2051 = fadd fast float %2048, %2032
  %2052 = fadd fast float %2049, %2033
  %2053 = fadd fast float %2050, %2034
  br i1 %1682, label %2148, label %2054, !dx.controlflow.hints !50

; <label>:2054                                    ; preds = %2028
  %2055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2056 = extractvalue %dx.types.CBufRet.f32 %2055, 0
  %2057 = extractvalue %dx.types.CBufRet.f32 %2055, 1
  %2058 = fadd fast float %2057, %2056
  %2059 = call float @dx.op.unary.f32(i32 7, float %2058)  ; Saturate(value)
  %2060 = extractvalue %dx.types.CBufRet.f32 %2055, 2
  %2061 = extractvalue %dx.types.CBufRet.f32 %2055, 3
  %2062 = fadd fast float %2061, %2060
  %2063 = call float @dx.op.unary.f32(i32 7, float %2062)  ; Saturate(value)
  %2064 = fmul fast float %2059, %2042
  %2065 = fmul fast float %2064, %2063
  br label %2148

; <label>:2066                                    ; preds = %2002
  %2067 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 %2026
  %2068 = load float, float* %2067, align 4, !tbaa !53, !noalias !113
  %2069 = fcmp fast olt float %2068, %1933
  %2070 = icmp sgt i32 %2009, 0
  %2071 = and i1 %2070, %2069
  br i1 %2071, label %2072, label %2109

; <label>:2072                                    ; preds = %2066
  br label %2073

; <label>:2073                                    ; preds = %2102, %2072
  %2074 = phi float [ %2103, %2102 ], [ %1931, %2072 ]
  %2075 = phi float [ %2104, %2102 ], [ %1932, %2072 ]
  %2076 = phi float [ %2084, %2102 ], [ %2068, %2072 ]
  %2077 = phi i32 [ %2081, %2102 ], [ %2026, %2072 ]
  %2078 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 %2077
  %2079 = load float, float* %2078, align 4, !tbaa !53, !noalias !113
  %2080 = icmp slt i32 %2077, 2
  %2081 = add nsw i32 %2077, 1
  %2082 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 %2081
  %2083 = load float, float* %2082, align 4, !tbaa !53, !noalias !113
  %2084 = select i1 %2080, float %2083, float %1847
  %2085 = call float @dx.op.binary.f32(i32 36, float %2084, float %2079)  ; FMin(a,b)
  %2086 = call float @dx.op.binary.f32(i32 36, float %1933, float %2085)  ; FMin(a,b)
  %2087 = icmp eq i32 %1797, 0
  %2088 = fadd fast float %2086, %2076
  %2089 = fmul fast float %2088, %1759
  %2090 = fadd fast float %2089, %1791
  br i1 %2087, label %2096, label %2091, !dx.controlflow.hints !91

; <label>:2091                                    ; preds = %2073
  %2092 = fsub fast float %2086, %2076
  %2093 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2092)  ; FMax(a,b)
  %2094 = fmul fast float %2093, %2090
  %2095 = fadd fast float %2094, %2075
  br label %2102

; <label>:2096                                    ; preds = %2073
  %2097 = fsub fast float %2076, %2086
  %2098 = call float @dx.op.unary.f32(i32 6, float %2097)  ; FAbs(value)
  %2099 = fadd fast float %2098, %2074
  %2100 = fmul fast float %2098, %2090
  %2101 = fsub fast float %2075, %2100
  br label %2102

; <label>:2102                                    ; preds = %2096, %2091
  %2103 = phi float [ %2093, %2091 ], [ %2099, %2096 ]
  %2104 = phi float [ %2095, %2091 ], [ %2101, %2096 ]
  %2105 = fcmp fast olt float %2084, %1933
  %2106 = icmp slt i32 %2081, 3
  %2107 = and i1 %2106, %2105
  br i1 %2107, label %2073, label %2108

; <label>:2108                                    ; preds = %2102
  br label %2109

; <label>:2109                                    ; preds = %2108, %2066
  %2110 = phi float [ %1931, %2066 ], [ %2103, %2108 ]
  %2111 = phi float [ %1932, %2066 ], [ %2104, %2108 ]
  %2112 = fsub fast float %1847, %2110
  %2113 = select i1 %1849, float %2110, float %2112
  %2114 = extractvalue %dx.types.CBufRet.f32 %1787, 0
  %2115 = extractvalue %dx.types.CBufRet.f32 %1787, 1
  %2116 = extractvalue %dx.types.CBufRet.f32 %1787, 2
  %2117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2118 = extractvalue %dx.types.CBufRet.f32 %2117, 0
  %2119 = extractvalue %dx.types.CBufRet.f32 %2117, 1
  %2120 = extractvalue %dx.types.CBufRet.f32 %2117, 2
  %2121 = extractvalue %dx.types.CBufRet.f32 %2117, 3
  %2122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2123 = extractvalue %dx.types.CBufRet.f32 %2122, 3
  %2124 = call float @dx.op.binary.f32(i32 36, float %2111, float %2123)  ; FMin(a,b)
  %2125 = fmul fast float %2121, %2113
  %2126 = call float @dx.op.unary.f32(i32 7, float %2125)  ; Saturate(value)
  %2127 = fsub fast float %2118, %2114
  %2128 = fsub fast float %2119, %2115
  %2129 = fsub fast float %2120, %2116
  %2130 = fmul fast float %2126, %2127
  %2131 = fmul fast float %2126, %2128
  %2132 = fmul fast float %2126, %2129
  %2133 = fadd fast float %2130, %2114
  %2134 = fadd fast float %2131, %2115
  %2135 = fadd fast float %2132, %2116
  br i1 %1682, label %2148, label %2136, !dx.controlflow.hints !50

; <label>:2136                                    ; preds = %2109
  %2137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2138 = extractvalue %dx.types.CBufRet.f32 %2137, 0
  %2139 = extractvalue %dx.types.CBufRet.f32 %2137, 1
  %2140 = fadd fast float %2139, %2138
  %2141 = call float @dx.op.unary.f32(i32 7, float %2140)  ; Saturate(value)
  %2142 = extractvalue %dx.types.CBufRet.f32 %2137, 2
  %2143 = extractvalue %dx.types.CBufRet.f32 %2137, 3
  %2144 = fadd fast float %2143, %2142
  %2145 = call float @dx.op.unary.f32(i32 7, float %2144)  ; Saturate(value)
  %2146 = fmul fast float %2141, %2124
  %2147 = fmul fast float %2146, %2145
  br label %2148

; <label>:2148                                    ; preds = %2136, %2109, %2054, %2028, %1895, %1863, %1845, %1843
  %2149 = phi float [ 0.000000e+00, %1843 ], [ 0.000000e+00, %1845 ], [ %1872, %1895 ], [ %1872, %1863 ], [ %2031, %2054 ], [ %2031, %2028 ], [ %2113, %2136 ], [ %2113, %2109 ]
  %2150 = phi float [ 0.000000e+00, %1843 ], [ 0.000000e+00, %1845 ], [ %1906, %1895 ], [ %1883, %1863 ], [ %2065, %2054 ], [ %2042, %2028 ], [ %2147, %2136 ], [ %2124, %2109 ]
  %2151 = phi float [ 0.000000e+00, %1843 ], [ 0.000000e+00, %1845 ], [ %1892, %1895 ], [ %1892, %1863 ], [ %2051, %2054 ], [ %2051, %2028 ], [ %2133, %2136 ], [ %2133, %2109 ]
  %2152 = phi float [ 0.000000e+00, %1843 ], [ 0.000000e+00, %1845 ], [ %1893, %1895 ], [ %1893, %1863 ], [ %2052, %2054 ], [ %2052, %2028 ], [ %2134, %2136 ], [ %2134, %2109 ]
  %2153 = phi float [ 0.000000e+00, %1843 ], [ 0.000000e+00, %1845 ], [ %1894, %1895 ], [ %1894, %1863 ], [ %2053, %2054 ], [ %2053, %2028 ], [ %2135, %2136 ], [ %2135, %2109 ]
  %2154 = fmul fast float %1783, %2150
  %2155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2156 = extractvalue %dx.types.CBufRet.f32 %2155, 2
  %2157 = fsub fast float %1793, %2156
  %2158 = fcmp fast olt float %2154, -2.000000e+01
  %2159 = call float @dx.op.unary.f32(i32 21, float %2154)  ; Exp(value)
  %2160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2161 = extractvalue %dx.types.CBufRet.f32 %2160, 2
  %2162 = extractvalue %dx.types.CBufRet.f32 %2160, 3
  %2163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2164 = extractvalue %dx.types.CBufRet.f32 %2163, 2
  %2165 = fmul fast float %2162, %2157
  %2166 = call float @dx.op.unary.f32(i32 7, float %2165)  ; Saturate(value)
  %2167 = fsub fast float 1.000000e+00, %2166
  %2168 = fmul fast float %1759, 5.000000e-01
  %2169 = fadd fast float %2168, 5.000000e-01
  %2170 = call float @dx.op.unary.f32(i32 7, float %2169)  ; Saturate(value)
  %2171 = fsub fast float 1.000000e+00, %2170
  %2172 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2167)  ; FMax(a,b)
  %2173 = fdiv fast float %2171, %2172
  %2174 = fsub fast float %2157, %1722
  %2175 = call float @dx.op.unary.f32(i32 6, float %2174)  ; FAbs(value)
  %2176 = fmul fast float %2175, %2161
  %2177 = call float @dx.op.unary.f32(i32 7, float %2173)  ; Saturate(value)
  %2178 = fsub fast float 1.000000e+00, %2176
  %2179 = fmul fast float %2178, %2177
  %2180 = fadd fast float %2179, %2176
  %2181 = fmul fast float %2164, %2157
  %2182 = call float @dx.op.unary.f32(i32 7, float %2181)  ; Saturate(value)
  %2183 = fsub fast float 1.000000e+00, %2180
  %2184 = fmul fast float %2183, %2182
  %2185 = fadd fast float %2184, %2180
  %2186 = call float @dx.op.unary.f32(i32 7, float %2185)  ; Saturate(value)
  %2187 = fadd fast float %2159, -1.000000e+00
  %2188 = select i1 %2158, float -1.000000e+00, float %2187
  %2189 = fmul fast float %2186, %2188
  %2190 = fadd fast float %2189, 1.000000e+00
  %2191 = fsub fast float -0.000000e+00, %2189
  %2192 = fmul fast float %2151, %2191
  %2193 = fmul fast float %2152, %2191
  %2194 = fmul fast float %2153, %2191
  br label %2195

; <label>:2195                                    ; preds = %2148, %1773
  %2196 = phi float [ %2149, %2148 ], [ 0.000000e+00, %1773 ]
  %2197 = phi float [ %2190, %2148 ], [ 1.000000e+00, %1773 ]
  %2198 = phi float [ %2192, %2148 ], [ 0.000000e+00, %1773 ]
  %2199 = phi float [ %2193, %2148 ], [ 0.000000e+00, %1773 ]
  %2200 = phi float [ %2194, %2148 ], [ 0.000000e+00, %1773 ]
  %2201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2202 = extractvalue %dx.types.CBufRet.f32 %2201, 1
  %2203 = fsub fast float 1.000000e+00, %2197
  %2204 = fmul fast float %2203, %1774
  %2205 = fmul fast float %2204, %2202
  %2206 = fsub fast float %1774, %2205
  br i1 %1752, label %2207, label %2239, !dx.controlflow.hints !92

; <label>:2207                                    ; preds = %2195
  %2208 = fmul fast float %1777, %1749
  %2209 = fadd fast float %2208, %1750
  %2210 = call float @dx.op.unary.f32(i32 7, float %2209)  ; Saturate(value)
  %2211 = fmul fast float %1731, %2206
  %2212 = fsub fast float -0.000000e+00, %2211
  %2213 = fmul fast float %1732, %2206
  %2214 = fsub fast float -0.000000e+00, %2213
  %2215 = call float @dx.op.unary.f32(i32 21, float %2212)  ; Exp(value)
  %2216 = call float @dx.op.unary.f32(i32 21, float %2214)  ; Exp(value)
  %2217 = call float @dx.op.binary.f32(i32 35, float %1739, float %2215)  ; FMax(a,b)
  %2218 = call float @dx.op.binary.f32(i32 35, float %1739, float %2216)  ; FMax(a,b)
  %2219 = fsub fast float %2218, %2217
  %2220 = fmul fast float %2219, %2210
  %2221 = fadd fast float %2220, %2217
  %2222 = call float @dx.op.unary.f32(i32 7, float %2221)  ; Saturate(value)
  %2223 = fmul fast float %1775, %1753
  %2224 = fsub fast float 1.000000e+00, %2223
  %2225 = select i1 %1682, float %2224, float %2222
  %2226 = fsub fast float %1736, %1741
  %2227 = fsub fast float %1737, %1742
  %2228 = fsub fast float %1738, %1743
  %2229 = fmul fast float %2210, %2226
  %2230 = fmul fast float %2210, %2227
  %2231 = fmul fast float %2210, %2228
  %2232 = fadd fast float %2229, %1741
  %2233 = fadd fast float %2230, %1742
  %2234 = fadd fast float %2231, %1743
  %2235 = fsub fast float 1.000000e+00, %2225
  %2236 = fmul fast float %2235, %2232
  %2237 = fmul fast float %2235, %2233
  %2238 = fmul fast float %2235, %2234
  br label %2310

; <label>:2239                                    ; preds = %2195
  %2240 = fmul fast float %2206, %1748
  %2241 = call float @dx.op.unary.f32(i32 7, float %2240)  ; Saturate(value)
  %2242 = fsub fast float 2.000000e+00, %2241
  %2243 = fmul fast float %2241, 9.921875e-01
  %2244 = fmul fast float %2243, %2242
  %2245 = fadd fast float %2244, 3.906250e-03
  %2246 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %24, float %2245, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2247 = extractvalue %dx.types.ResRet.f32 %2246, 0
  %2248 = fsub fast float %2241, %2247
  %2249 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2248)  ; FMax(a,b)
  %2250 = fmul fast float %1776, %1734
  %2251 = call float @dx.op.unary.f32(i32 6, float %2250)  ; FAbs(value)
  %2252 = fcmp fast ogt float %2251, 0x3EB0C6F7A0000000
  br i1 %2252, label %2253, label %2259, !dx.controlflow.hints !93

; <label>:2253                                    ; preds = %2239
  %2254 = fmul fast float %2250, 0xBFF7154760000000
  %2255 = call float @dx.op.unary.f32(i32 21, float %2254)  ; Exp(value)
  %2256 = fsub fast float 1.000000e+00, %2255
  %2257 = fdiv fast float %2256, %2250
  %2258 = fmul fast float %2257, %1744
  br label %2259

; <label>:2259                                    ; preds = %2253, %2239
  %2260 = phi float [ %2258, %2253 ], [ %1744, %2239 ]
  %2261 = fadd fast float %2260, %1746
  %2262 = fmul fast float %2261, %2249
  %2263 = fmul fast float %1731, %2262
  %2264 = fsub fast float -0.000000e+00, %2263
  %2265 = fmul fast float %1732, %2262
  %2266 = fsub fast float -0.000000e+00, %2265
  %2267 = fmul fast float %1733, %2262
  %2268 = fsub fast float -0.000000e+00, %2267
  %2269 = call float @dx.op.unary.f32(i32 21, float %2264)  ; Exp(value)
  %2270 = call float @dx.op.unary.f32(i32 21, float %2266)  ; Exp(value)
  %2271 = call float @dx.op.unary.f32(i32 21, float %2268)  ; Exp(value)
  br i1 %1682, label %2272, label %2280, !dx.controlflow.hints !94

; <label>:2272                                    ; preds = %2259
  %2273 = fmul fast float %2269, %1775
  %2274 = fmul fast float %2270, %1775
  %2275 = fmul fast float %2271, %1775
  %2276 = fsub fast float 1.000000e+00, %1775
  %2277 = fadd fast float %2273, %2276
  %2278 = fadd fast float %2274, %2276
  %2279 = fadd fast float %2275, %2276
  br label %2280

; <label>:2280                                    ; preds = %2272, %2259
  %2281 = phi float [ %2277, %2272 ], [ %2269, %2259 ]
  %2282 = phi float [ %2278, %2272 ], [ %2270, %2259 ]
  %2283 = phi float [ %2279, %2272 ], [ %2271, %2259 ]
  %2284 = fmul fast float %1777, %1777
  %2285 = fadd fast float %2284, 1.000000e+00
  %2286 = fmul fast float %2285, 0x3FAE8EC8A0000000
  %2287 = fmul fast float %2286, %1741
  %2288 = fmul fast float %2286, %1742
  %2289 = fmul fast float %2286, %1743
  %2290 = fmul fast float %1777, %1739
  %2291 = fsub fast float 1.000000e+00, %2290
  %2292 = fmul fast float %1739, %1739
  %2293 = fsub fast float 1.000000e+00, %2292
  %2294 = fmul fast float %2293, 0x3FB45F3060000000
  %2295 = fmul fast float %2291, %2291
  %2296 = fdiv fast float 1.000000e+00, %2295
  %2297 = fmul fast float %2294, %2296
  %2298 = fmul fast float %2297, %1736
  %2299 = fmul fast float %2297, %1737
  %2300 = fmul fast float %2297, %1738
  %2301 = fadd fast float %2298, %2287
  %2302 = fadd fast float %2299, %2288
  %2303 = fadd fast float %2300, %2289
  %2304 = fsub fast float 1.000000e+00, %2281
  %2305 = fsub fast float 1.000000e+00, %2282
  %2306 = fsub fast float 1.000000e+00, %2283
  %2307 = fmul fast float %2301, %2304
  %2308 = fmul fast float %2302, %2305
  %2309 = fmul fast float %2303, %2306
  br label %2310

; <label>:2310                                    ; preds = %2280, %2207
  %2311 = phi float [ %2236, %2207 ], [ %2307, %2280 ]
  %2312 = phi float [ %2237, %2207 ], [ %2308, %2280 ]
  %2313 = phi float [ %2238, %2207 ], [ %2309, %2280 ]
  %2314 = phi float [ %2225, %2207 ], [ %2281, %2280 ]
  %2315 = phi float [ %2225, %2207 ], [ %2282, %2280 ]
  %2316 = phi float [ %2225, %2207 ], [ %2283, %2280 ]
  br i1 %1785, label %2317, label %2515, !dx.controlflow.hints !95

; <label>:2317                                    ; preds = %2310
  %2318 = extractvalue %dx.types.CBufRet.f32 %2201, 0
  %2319 = fmul fast float %2318, %2203
  %2320 = fsub fast float %2198, %2311
  %2321 = fsub fast float %2199, %2312
  %2322 = fsub fast float %2200, %2313
  %2323 = fmul fast float %2319, %2320
  %2324 = fmul fast float %2319, %2321
  %2325 = fmul fast float %2319, %2322
  %2326 = fadd fast float %2323, %2311
  %2327 = fadd fast float %2324, %2312
  %2328 = fadd fast float %2325, %2313
  %2329 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2314)  ; FMax(a,b)
  %2330 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2315)  ; FMax(a,b)
  %2331 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2316)  ; FMax(a,b)
  %2332 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2197)  ; FMax(a,b)
  %2333 = call float @dx.op.binary.f32(i32 35, float %2196, float %2206)  ; FMax(a,b)
  %2334 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2333)  ; FMax(a,b)
  %2335 = fdiv fast float %2196, %2334
  %2336 = call float @dx.op.unary.f32(i32 7, float %2335)  ; Saturate(value)
  %2337 = fdiv fast float %2206, %2334
  %2338 = call float @dx.op.unary.f32(i32 7, float %2337)  ; Saturate(value)
  %2339 = fcmp fast une float %2332, 1.000000e+00
  br i1 %2339, label %2340, label %2353, !dx.controlflow.hints !96

; <label>:2340                                    ; preds = %2317
  %2341 = call float @dx.op.unary.f32(i32 23, float %2332)  ; Log(value)
  %2342 = fmul fast float %2341, 0x3FE62E4300000000
  %2343 = fmul fast float %2198, %2342
  %2344 = fsub fast float -0.000000e+00, %2343
  %2345 = fmul fast float %2199, %2342
  %2346 = fsub fast float -0.000000e+00, %2345
  %2347 = fmul fast float %2200, %2342
  %2348 = fsub fast float -0.000000e+00, %2347
  %2349 = fsub fast float 1.000000e+00, %2332
  %2350 = fdiv fast float %2344, %2349
  %2351 = fdiv fast float %2346, %2349
  %2352 = fdiv fast float %2348, %2349
  br label %2353

; <label>:2353                                    ; preds = %2340, %2317
  %2354 = phi float [ %2350, %2340 ], [ %2198, %2317 ]
  %2355 = phi float [ %2351, %2340 ], [ %2199, %2317 ]
  %2356 = phi float [ %2352, %2340 ], [ %2200, %2317 ]
  %2357 = phi float [ %2342, %2340 ], [ 0.000000e+00, %2317 ]
  %2358 = fcmp fast une float %2329, 1.000000e+00
  br i1 %2358, label %2359, label %2366, !dx.controlflow.hints !97

; <label>:2359                                    ; preds = %2353
  %2360 = call float @dx.op.unary.f32(i32 23, float %2329)  ; Log(value)
  %2361 = fmul fast float %2360, 0x3FE62E4300000000
  %2362 = fmul fast float %2326, %2361
  %2363 = fsub fast float -0.000000e+00, %2362
  %2364 = fsub fast float 1.000000e+00, %2329
  %2365 = fdiv fast float %2363, %2364
  br label %2366

; <label>:2366                                    ; preds = %2359, %2353
  %2367 = phi float [ %2365, %2359 ], [ %2326, %2353 ]
  %2368 = phi float [ %2361, %2359 ], [ 0.000000e+00, %2353 ]
  %2369 = fcmp fast une float %2330, 1.000000e+00
  br i1 %2369, label %2370, label %2377, !dx.controlflow.hints !97

; <label>:2370                                    ; preds = %2366
  %2371 = call float @dx.op.unary.f32(i32 23, float %2330)  ; Log(value)
  %2372 = fmul fast float %2371, 0x3FE62E4300000000
  %2373 = fmul fast float %2327, %2372
  %2374 = fsub fast float -0.000000e+00, %2373
  %2375 = fsub fast float 1.000000e+00, %2330
  %2376 = fdiv fast float %2374, %2375
  br label %2377

; <label>:2377                                    ; preds = %2370, %2366
  %2378 = phi float [ %2376, %2370 ], [ %2327, %2366 ]
  %2379 = phi float [ %2372, %2370 ], [ 0.000000e+00, %2366 ]
  %2380 = fcmp fast une float %2331, 1.000000e+00
  br i1 %2380, label %2381, label %2388, !dx.controlflow.hints !97

; <label>:2381                                    ; preds = %2377
  %2382 = call float @dx.op.unary.f32(i32 23, float %2331)  ; Log(value)
  %2383 = fmul fast float %2382, 0x3FE62E4300000000
  %2384 = fmul fast float %2328, %2383
  %2385 = fsub fast float -0.000000e+00, %2384
  %2386 = fsub fast float 1.000000e+00, %2331
  %2387 = fdiv fast float %2385, %2386
  br label %2388

; <label>:2388                                    ; preds = %2381, %2377
  %2389 = phi float [ %2387, %2381 ], [ %2328, %2377 ]
  %2390 = phi float [ %2383, %2381 ], [ 0.000000e+00, %2377 ]
  %2391 = fmul fast float %2354, %2338
  %2392 = fmul fast float %2355, %2338
  %2393 = fmul fast float %2356, %2338
  %2394 = fmul fast float %2357, %2338
  %2395 = fmul fast float %2367, %2336
  %2396 = fmul fast float %2378, %2336
  %2397 = fmul fast float %2389, %2336
  %2398 = fmul fast float %2368, %2336
  %2399 = fmul fast float %2379, %2336
  %2400 = fmul fast float %2390, %2336
  %2401 = fadd fast float %2395, %2391
  %2402 = fadd fast float %2396, %2392
  %2403 = fadd fast float %2397, %2393
  %2404 = fadd fast float %2398, %2394
  %2405 = fadd fast float %2399, %2394
  %2406 = fadd fast float %2400, %2394
  %2407 = fcmp fast une float %2404, 0.000000e+00
  br i1 %2407, label %2408, label %2415, !dx.controlflow.hints !98

; <label>:2408                                    ; preds = %2388
  %2409 = fmul fast float %2404, 0x3FF7154760000000
  %2410 = call float @dx.op.unary.f32(i32 21, float %2409)  ; Exp(value)
  %2411 = fsub fast float 1.000000e+00, %2410
  %2412 = fmul fast float %2401, %2411
  %2413 = fsub fast float -0.000000e+00, %2412
  %2414 = fdiv fast float %2413, %2404
  br label %2415

; <label>:2415                                    ; preds = %2408, %2388
  %2416 = phi float [ %2410, %2408 ], [ 1.000000e+00, %2388 ]
  %2417 = phi float [ %2414, %2408 ], [ %2401, %2388 ]
  %2418 = fcmp fast une float %2405, 0.000000e+00
  br i1 %2418, label %2419, label %2426, !dx.controlflow.hints !98

; <label>:2419                                    ; preds = %2415
  %2420 = fmul fast float %2405, 0x3FF7154760000000
  %2421 = call float @dx.op.unary.f32(i32 21, float %2420)  ; Exp(value)
  %2422 = fsub fast float 1.000000e+00, %2421
  %2423 = fmul fast float %2402, %2422
  %2424 = fsub fast float -0.000000e+00, %2423
  %2425 = fdiv fast float %2424, %2405
  br label %2426

; <label>:2426                                    ; preds = %2419, %2415
  %2427 = phi float [ %2421, %2419 ], [ 1.000000e+00, %2415 ]
  %2428 = phi float [ %2425, %2419 ], [ %2402, %2415 ]
  %2429 = fcmp fast une float %2406, 0.000000e+00
  br i1 %2429, label %2430, label %2437, !dx.controlflow.hints !98

; <label>:2430                                    ; preds = %2426
  %2431 = fmul fast float %2406, 0x3FF7154760000000
  %2432 = call float @dx.op.unary.f32(i32 21, float %2431)  ; Exp(value)
  %2433 = fsub fast float 1.000000e+00, %2432
  %2434 = fmul fast float %2403, %2433
  %2435 = fsub fast float -0.000000e+00, %2434
  %2436 = fdiv fast float %2435, %2406
  br label %2437

; <label>:2437                                    ; preds = %2430, %2426
  %2438 = phi float [ %2432, %2430 ], [ 1.000000e+00, %2426 ]
  %2439 = phi float [ %2436, %2430 ], [ %2403, %2426 ]
  %2440 = fcmp fast ogt float %2336, %2338
  br i1 %2440, label %2441, label %2461, !dx.controlflow.hints !99

; <label>:2441                                    ; preds = %2437
  %2442 = fsub fast float 1.000000e+00, %2338
  %2443 = fmul fast float %2354, %2442
  %2444 = fmul fast float %2355, %2442
  %2445 = fmul fast float %2356, %2442
  %2446 = fmul fast float %2357, %2442
  %2447 = fcmp fast une float %2446, 0.000000e+00
  br i1 %2447, label %2448, label %2499, !dx.controlflow.hints !100

; <label>:2448                                    ; preds = %2441
  %2449 = fmul fast float %2446, 0x3FF7154760000000
  %2450 = call float @dx.op.unary.f32(i32 21, float %2449)  ; Exp(value)
  %2451 = fsub fast float 1.000000e+00, %2450
  %2452 = fmul fast float %2443, %2451
  %2453 = fsub fast float -0.000000e+00, %2452
  %2454 = fmul fast float %2444, %2451
  %2455 = fsub fast float -0.000000e+00, %2454
  %2456 = fmul fast float %2445, %2451
  %2457 = fsub fast float -0.000000e+00, %2456
  %2458 = fdiv fast float %2453, %2446
  %2459 = fdiv fast float %2455, %2446
  %2460 = fdiv fast float %2457, %2446
  br label %2499

; <label>:2461                                    ; preds = %2437
  %2462 = fsub fast float 1.000000e+00, %2336
  %2463 = fmul fast float %2367, %2462
  %2464 = fmul fast float %2378, %2462
  %2465 = fmul fast float %2389, %2462
  %2466 = fmul fast float %2368, %2462
  %2467 = fmul fast float %2379, %2462
  %2468 = fmul fast float %2390, %2462
  %2469 = fcmp fast une float %2466, 0.000000e+00
  br i1 %2469, label %2470, label %2477, !dx.controlflow.hints !98

; <label>:2470                                    ; preds = %2461
  %2471 = fmul fast float %2466, 0x3FF7154760000000
  %2472 = call float @dx.op.unary.f32(i32 21, float %2471)  ; Exp(value)
  %2473 = fsub fast float 1.000000e+00, %2472
  %2474 = fmul fast float %2463, %2473
  %2475 = fsub fast float -0.000000e+00, %2474
  %2476 = fdiv fast float %2475, %2466
  br label %2477

; <label>:2477                                    ; preds = %2470, %2461
  %2478 = phi float [ %2476, %2470 ], [ %2463, %2461 ]
  %2479 = phi float [ %2472, %2470 ], [ 1.000000e+00, %2461 ]
  %2480 = fcmp fast une float %2467, 0.000000e+00
  br i1 %2480, label %2481, label %2488, !dx.controlflow.hints !98

; <label>:2481                                    ; preds = %2477
  %2482 = fmul fast float %2467, 0x3FF7154760000000
  %2483 = call float @dx.op.unary.f32(i32 21, float %2482)  ; Exp(value)
  %2484 = fsub fast float 1.000000e+00, %2483
  %2485 = fmul fast float %2464, %2484
  %2486 = fsub fast float -0.000000e+00, %2485
  %2487 = fdiv fast float %2486, %2467
  br label %2488

; <label>:2488                                    ; preds = %2481, %2477
  %2489 = phi float [ %2487, %2481 ], [ %2464, %2477 ]
  %2490 = phi float [ %2483, %2481 ], [ 1.000000e+00, %2477 ]
  %2491 = fcmp fast une float %2468, 0.000000e+00
  br i1 %2491, label %2492, label %2499, !dx.controlflow.hints !98

; <label>:2492                                    ; preds = %2488
  %2493 = fmul fast float %2468, 0x3FF7154760000000
  %2494 = call float @dx.op.unary.f32(i32 21, float %2493)  ; Exp(value)
  %2495 = fsub fast float 1.000000e+00, %2494
  %2496 = fmul fast float %2465, %2495
  %2497 = fsub fast float -0.000000e+00, %2496
  %2498 = fdiv fast float %2497, %2468
  br label %2499

; <label>:2499                                    ; preds = %2492, %2488, %2448, %2441
  %2500 = phi float [ %2498, %2492 ], [ %2460, %2448 ], [ %2445, %2441 ], [ %2465, %2488 ]
  %2501 = phi float [ %2489, %2492 ], [ %2459, %2448 ], [ %2444, %2441 ], [ %2489, %2488 ]
  %2502 = phi float [ %2478, %2492 ], [ %2458, %2448 ], [ %2443, %2441 ], [ %2478, %2488 ]
  %2503 = phi float [ %2494, %2492 ], [ %2450, %2448 ], [ 1.000000e+00, %2441 ], [ 1.000000e+00, %2488 ]
  %2504 = phi float [ %2490, %2492 ], [ %2450, %2448 ], [ 1.000000e+00, %2441 ], [ %2490, %2488 ]
  %2505 = phi float [ %2479, %2492 ], [ %2450, %2448 ], [ 1.000000e+00, %2441 ], [ %2479, %2488 ]
  %2506 = fmul fast float %2505, %2417
  %2507 = fmul fast float %2504, %2428
  %2508 = fmul fast float %2503, %2439
  %2509 = fadd fast float %2506, %2502
  %2510 = fadd fast float %2507, %2501
  %2511 = fadd fast float %2508, %2500
  %2512 = fmul fast float %2505, %2416
  %2513 = fmul fast float %2504, %2427
  %2514 = fmul fast float %2503, %2438
  br label %2515

; <label>:2515                                    ; preds = %2499, %2310
  %2516 = phi float [ %2514, %2499 ], [ %2316, %2310 ]
  %2517 = phi float [ %2513, %2499 ], [ %2315, %2310 ]
  %2518 = phi float [ %2512, %2499 ], [ %2314, %2310 ]
  %2519 = phi float [ %2511, %2499 ], [ %2313, %2310 ]
  %2520 = phi float [ %2510, %2499 ], [ %2312, %2310 ]
  %2521 = phi float [ %2509, %2499 ], [ %2311, %2310 ]
  %2522 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %24, float %1653, float %1654, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2523 = extractvalue %dx.types.ResRet.f32 %2522, 0
  %2524 = extractvalue %dx.types.ResRet.f32 %2522, 1
  %2525 = extractvalue %dx.types.ResRet.f32 %2522, 2
  %2526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2527 = extractvalue %dx.types.CBufRet.f32 %2526, 1
  %2528 = fmul fast float %2527, %2523
  %2529 = fmul fast float %2527, %2524
  %2530 = fmul fast float %2527, %2525
  %2531 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %24, float %1653, float %1654, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2532 = extractvalue %dx.types.ResRet.f32 %2531, 0
  %2533 = fmul fast float %2532, %2518
  %2534 = fmul fast float %2532, %2517
  %2535 = fmul fast float %2532, %2516
  %2536 = fmul fast float %2532, %2521
  %2537 = fmul fast float %2532, %2520
  %2538 = fmul fast float %2532, %2519
  %2539 = fadd fast float %2536, %2528
  %2540 = fadd fast float %2537, %2529
  %2541 = fadd fast float %2538, %2530
  br label %2542

; <label>:2542                                    ; preds = %2515, %1646
  %2543 = phi float [ 0.000000e+00, %1646 ], [ %2539, %2515 ]
  %2544 = phi float [ 0.000000e+00, %1646 ], [ %2540, %2515 ]
  %2545 = phi float [ 0.000000e+00, %1646 ], [ %2541, %2515 ]
  %2546 = phi float [ 1.000000e+00, %1646 ], [ %2533, %2515 ]
  %2547 = phi float [ 1.000000e+00, %1646 ], [ %2534, %2515 ]
  %2548 = phi float [ 1.000000e+00, %1646 ], [ %2535, %2515 ]
  %2549 = phi float [ %1679, %1646 ], [ %1686, %2515 ]
  %2550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2551 = extractvalue %dx.types.CBufRet.f32 %2550, 2
  %2552 = extractvalue %dx.types.CBufRet.f32 %2550, 3
  %2553 = fmul fast float %2551, %1649
  %2554 = fmul fast float %2552, %1650
  %2555 = call float @dx.op.unary.f32(i32 7, float %2553)  ; Saturate(value)
  %2556 = call float @dx.op.unary.f32(i32 7, float %2554)  ; Saturate(value)
  %2557 = select i1 %1677, i32 2, i32 0
  %2558 = or i32 %2557, 1
  %2559 = uitofp i32 %2558 to float
  %2560 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %24, float %2555, float %2556, float %2559, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2561 = extractvalue %dx.types.ResRet.f32 %2560, 0
  %2562 = extractvalue %dx.types.ResRet.f32 %2560, 1
  %2563 = extractvalue %dx.types.ResRet.f32 %2560, 2
  %2564 = extractvalue %dx.types.ResRet.f32 %2560, 3
  %2565 = add nuw nsw i32 %2557, 2
  %2566 = uitofp i32 %2565 to float
  %2567 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %24, float %2555, float %2556, float %2566, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2568 = extractvalue %dx.types.ResRet.f32 %2567, 0
  %2569 = extractvalue %dx.types.ResRet.f32 %2567, 1
  %2570 = extractvalue %dx.types.ResRet.f32 %2567, 2
  %2571 = extractvalue %dx.types.ResRet.f32 %2567, 3
  %2572 = call float @dx.op.binary.f32(i32 35, float %2562, float %2563)  ; FMax(a,b)
  %2573 = call float @dx.op.binary.f32(i32 35, float %2561, float %2572)  ; FMax(a,b)
  %2574 = call float @dx.op.binary.f32(i32 35, float %2573, float %2564)  ; FMax(a,b)
  %2575 = call float @dx.op.binary.f32(i32 36, float %2569, float %2570)  ; FMin(a,b)
  %2576 = call float @dx.op.binary.f32(i32 36, float %2568, float %2575)  ; FMin(a,b)
  %2577 = call float @dx.op.binary.f32(i32 36, float %2576, float %2571)  ; FMin(a,b)
  %2578 = fmul fast float %2574, 2.550000e+02
  %2579 = fadd fast float %2578, 0x3F70101020000000
  %2580 = fptoui float %2579 to i32
  %2581 = fmul fast float %2577, 2.550000e+02
  %2582 = fadd fast float %2581, 0x3F70101020000000
  %2583 = fptoui float %2582 to i32
  %2584 = icmp ult i32 %2580, %2583
  br i1 %2584, label %2585, label %2753, !dx.controlflow.hints !101

; <label>:2585                                    ; preds = %2542
  %2586 = fadd fast float %2549, -4.000000e+00
  %2587 = call float @dx.op.binary.f32(i32 35, float %2586, float 0.000000e+00)  ; FMax(a,b)
  %2588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2589 = extractvalue %dx.types.CBufRet.f32 %2588, 0
  %2590 = fadd fast float %2589, %2587
  %2591 = extractvalue %dx.types.CBufRet.f32 %2588, 2
  %2592 = fmul fast float %2590, %2591
  %2593 = call float @dx.op.unary.f32(i32 23, float %2592)  ; Log(value)
  %2594 = extractvalue %dx.types.CBufRet.f32 %2588, 3
  %2595 = fmul fast float %2594, %2593
  %2596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2597 = extractvalue %dx.types.CBufRet.f32 %2596, 2
  %2598 = fmul fast float %2595, %2597
  %2599 = call float @dx.op.unary.f32(i32 7, float %2598)  ; Saturate(value)
  %2600 = select i1 %1682, float 1.000000e+00, float %2599
  %2601 = uitofp i32 %2580 to float
  %2602 = uitofp i32 %2583 to float
  %2603 = fadd fast float %2601, 5.000000e-01
  %2604 = fadd fast float %2602, 5.000000e-01
  %2605 = fmul fast float %2597, %2603
  %2606 = fmul fast float %2597, %2604
  %2607 = fadd fast float %2605, 0x3F0FFB4800000000
  %2608 = fadd fast float %2606, 0xBF0FFB4800000000
  %2609 = call float @dx.op.binary.f32(i32 35, float %2600, float %2607)  ; FMax(a,b)
  %2610 = call float @dx.op.binary.f32(i32 36, float %2609, float %2608)  ; FMin(a,b)
  %2611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2612 = extractvalue %dx.types.CBufRet.f32 %2611, 1
  %2613 = extractvalue %dx.types.CBufRet.f32 %2611, 2
  %2614 = extractvalue %dx.types.CBufRet.f32 %2611, 0
  %2615 = select i1 %1677, float %2614, float 0.000000e+00
  %2616 = fmul fast float %2612, %2610
  %2617 = fadd fast float %2615, %2616
  %2618 = fadd fast float %2615, %2613
  %2619 = fsub fast float %2612, %2613
  %2620 = fadd fast float %2619, %2615
  %2621 = call float @dx.op.binary.f32(i32 35, float %2617, float %2618)  ; FMax(a,b)
  %2622 = call float @dx.op.binary.f32(i32 36, float %2621, float %2620)  ; FMin(a,b)
  %2623 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %23, float %2555, float %2556, float %2622, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2624 = extractvalue %dx.types.ResRet.f32 %2623, 0
  %2625 = extractvalue %dx.types.ResRet.f32 %2623, 1
  %2626 = extractvalue %dx.types.ResRet.f32 %2623, 2
  %2627 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %2628 = extractvalue %dx.types.CBufRet.i32 %2627, 0
  %2629 = extractvalue %dx.types.CBufRet.i32 %2627, 1
  %2630 = uitofp i32 %2628 to float
  %2631 = uitofp i32 %2629 to float
  %2632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %2633 = extractvalue %dx.types.CBufRet.f32 %2632, 0
  %2634 = extractvalue %dx.types.CBufRet.f32 %2632, 1
  %2635 = fmul fast float %2630, %2555
  %2636 = fmul fast float %2631, %2556
  %2637 = fadd fast float %2635, -5.000000e-01
  %2638 = fadd fast float %2636, -5.000000e-01
  %2639 = call float @dx.op.unary.f32(i32 22, float %2637)  ; Frc(value)
  %2640 = call float @dx.op.unary.f32(i32 22, float %2638)  ; Frc(value)
  %2641 = fmul fast float %2639, %2639
  %2642 = fmul fast float %2641, %2639
  %2643 = fsub fast float 3.000000e+00, %2639
  %2644 = fmul fast float %2641, %2643
  %2645 = fmul fast float %2639, 3.000000e+00
  %2646 = fmul fast float %2642, 3.000000e+00
  %2647 = fmul fast float %2641, 6.000000e+00
  %2648 = fsub fast float %2646, %2647
  %2649 = fadd fast float %2648, 4.000000e+00
  %2650 = fmul fast float %2649, 0x3FC5555560000000
  %2651 = fmul fast float %2642, -3.000000e+00
  %2652 = fadd fast float %2641, %2639
  %2653 = fmul fast float %2652, 3.000000e+00
  %2654 = fadd fast float %2651, 1.000000e+00
  %2655 = fadd fast float %2654, %2653
  %2656 = fmul fast float %2642, 0x3FC5555560000000
  %2657 = fmul fast float %2640, %2640
  %2658 = fmul fast float %2657, %2640
  %2659 = fsub fast float 3.000000e+00, %2640
  %2660 = fmul fast float %2657, %2659
  %2661 = fmul fast float %2640, 3.000000e+00
  %2662 = fmul fast float %2658, 3.000000e+00
  %2663 = fmul fast float %2657, 6.000000e+00
  %2664 = fsub fast float %2662, %2663
  %2665 = fadd fast float %2664, 4.000000e+00
  %2666 = fmul fast float %2665, 0x3FC5555560000000
  %2667 = fmul fast float %2658, -3.000000e+00
  %2668 = fadd fast float %2657, %2640
  %2669 = fmul fast float %2668, 3.000000e+00
  %2670 = fadd fast float %2667, 1.000000e+00
  %2671 = fadd fast float %2670, %2669
  %2672 = fmul fast float %2658, 0x3FC5555560000000
  %2673 = fadd fast float %2639, 1.000000e+00
  %2674 = fsub fast float 1.000000e+00, %2645
  %2675 = fadd fast float %2674, %2644
  %2676 = fadd fast float %2675, %2649
  %2677 = fmul fast float %2676, 0x3FC5555560000000
  %2678 = fdiv fast float %2650, %2677
  %2679 = fsub fast float %2673, %2678
  %2680 = fsub fast float 1.000000e+00, %2639
  %2681 = fadd fast float %2655, %2642
  %2682 = fmul fast float %2681, 0x3FC5555560000000
  %2683 = fdiv fast float %2656, %2682
  %2684 = fadd fast float %2680, %2683
  %2685 = fadd fast float %2640, 1.000000e+00
  %2686 = fsub fast float 1.000000e+00, %2661
  %2687 = fadd fast float %2686, %2660
  %2688 = fadd fast float %2687, %2665
  %2689 = fmul fast float %2688, 0x3FC5555560000000
  %2690 = fdiv fast float %2666, %2689
  %2691 = fsub fast float %2685, %2690
  %2692 = fsub fast float 1.000000e+00, %2640
  %2693 = fadd fast float %2671, %2658
  %2694 = fmul fast float %2693, 0x3FC5555560000000
  %2695 = fdiv fast float %2672, %2694
  %2696 = fadd fast float %2695, %2692
  %2697 = fmul fast float %2679, %2633
  %2698 = fsub fast float %2555, %2697
  %2699 = fmul fast float %2684, %2633
  %2700 = fadd fast float %2699, %2555
  %2701 = fmul fast float %2696, %2634
  %2702 = fadd fast float %2701, %2556
  %2703 = fmul fast float %2691, %2634
  %2704 = fsub fast float %2556, %2703
  %2705 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %23, float %2698, float %2704, float %2622, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2706 = extractvalue %dx.types.ResRet.f32 %2705, 0
  %2707 = extractvalue %dx.types.ResRet.f32 %2705, 1
  %2708 = extractvalue %dx.types.ResRet.f32 %2705, 2
  %2709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %23, float %2700, float %2704, float %2622, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2710 = extractvalue %dx.types.ResRet.f32 %2709, 0
  %2711 = extractvalue %dx.types.ResRet.f32 %2709, 1
  %2712 = extractvalue %dx.types.ResRet.f32 %2709, 2
  %2713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %23, float %2698, float %2702, float %2622, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2714 = extractvalue %dx.types.ResRet.f32 %2713, 0
  %2715 = extractvalue %dx.types.ResRet.f32 %2713, 1
  %2716 = extractvalue %dx.types.ResRet.f32 %2713, 2
  %2717 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %23, float %2700, float %2702, float %2622, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2718 = extractvalue %dx.types.ResRet.f32 %2717, 0
  %2719 = extractvalue %dx.types.ResRet.f32 %2717, 1
  %2720 = extractvalue %dx.types.ResRet.f32 %2717, 2
  %2721 = fsub fast float %2714, %2706
  %2722 = fsub fast float %2715, %2707
  %2723 = fsub fast float %2716, %2708
  %2724 = fmul fast float %2721, %2694
  %2725 = fmul fast float %2722, %2694
  %2726 = fmul fast float %2723, %2694
  %2727 = fadd fast float %2724, %2706
  %2728 = fadd fast float %2725, %2707
  %2729 = fadd fast float %2726, %2708
  %2730 = fsub fast float %2718, %2710
  %2731 = fsub fast float %2719, %2711
  %2732 = fsub fast float %2720, %2712
  %2733 = fmul fast float %2730, %2694
  %2734 = fmul fast float %2731, %2694
  %2735 = fmul fast float %2732, %2694
  %2736 = fsub fast float %2710, %2727
  %2737 = fadd fast float %2736, %2733
  %2738 = fsub fast float %2711, %2728
  %2739 = fadd fast float %2738, %2734
  %2740 = fsub fast float %2712, %2729
  %2741 = fadd fast float %2740, %2735
  %2742 = fmul fast float %2737, %2682
  %2743 = fmul fast float %2739, %2682
  %2744 = fmul fast float %2741, %2682
  %2745 = fadd fast float %2742, %2727
  %2746 = fadd fast float %2743, %2728
  %2747 = fadd fast float %2744, %2729
  %2748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2749 = extractvalue %dx.types.CBufRet.f32 %2748, 1
  %2750 = fmul fast float %2745, %2749
  %2751 = fmul fast float %2746, %2749
  %2752 = fmul fast float %2747, %2749
  br label %2753

; <label>:2753                                    ; preds = %2585, %2542
  %2754 = phi float [ %2624, %2585 ], [ 1.000000e+00, %2542 ]
  %2755 = phi float [ %2625, %2585 ], [ 1.000000e+00, %2542 ]
  %2756 = phi float [ %2626, %2585 ], [ 1.000000e+00, %2542 ]
  %2757 = phi float [ %2750, %2585 ], [ 0.000000e+00, %2542 ]
  %2758 = phi float [ %2751, %2585 ], [ 0.000000e+00, %2542 ]
  %2759 = phi float [ %2752, %2585 ], [ 0.000000e+00, %2542 ]
  %2760 = fmul fast float %2754, %2546
  %2761 = fmul fast float %2755, %2547
  %2762 = fmul fast float %2756, %2548
  %2763 = fmul fast float %2754, %2543
  %2764 = fmul fast float %2755, %2544
  %2765 = fmul fast float %2756, %2545
  %2766 = fadd fast float %2757, %2763
  %2767 = fadd fast float %2758, %2764
  %2768 = fadd fast float %2759, %2765
  %2769 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %1630, i32 %1631, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2770 = extractvalue %dx.types.ResRet.f32 %2769, 0
  %2771 = extractvalue %dx.types.ResRet.f32 %2769, 1
  %2772 = extractvalue %dx.types.ResRet.f32 %2769, 2
  %2773 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %1630, i32 %1631, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2774 = extractvalue %dx.types.ResRet.f32 %2773, 0
  %2775 = extractvalue %dx.types.ResRet.f32 %2773, 1
  %2776 = extractvalue %dx.types.ResRet.f32 %2773, 2
  %2777 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %1630, i32 %1631, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2778 = extractvalue %dx.types.ResRet.f32 %2777, 0
  %2779 = extractvalue %dx.types.ResRet.f32 %2777, 1
  %2780 = extractvalue %dx.types.ResRet.f32 %2777, 2
  %2781 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %1630, i32 %1631, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2782 = extractvalue %dx.types.ResRet.f32 %2781, 0
  %2783 = extractvalue %dx.types.ResRet.f32 %2781, 1
  %2784 = call float @dx.op.binary.f32(i32 35, float %2782, float %2783)  ; FMax(a,b)
  %2785 = fcmp fast ult float %2784, 0x3F70101020000000
  br i1 %2785, label %3017, label %2786, !dx.controlflow.hints !143

; <label>:2786                                    ; preds = %2753
  %2787 = fmul fast float %2783, 2.000000e+00
  %2788 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2787)  ; FMax(a,b)
  %2789 = fmul fast float %2782, 2.000000e+00
  %2790 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2789)  ; FMax(a,b)
  %2791 = extractvalue %dx.types.ResRet.f32 %2777, 3
  %2792 = fmul fast float %2791, 2.000000e+00
  %2793 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2792)  ; FMax(a,b)
  %2794 = fmul fast float %2780, %2780
  %2795 = fmul fast float %2779, %2779
  %2796 = fmul fast float %2778, %2778
  %2797 = fadd fast float %2796, 0xBFD51EB860000000
  %2798 = fadd fast float %2795, 0xBFD51EB860000000
  %2799 = fadd fast float %2794, 0xBFD51EB860000000
  %2800 = fmul fast float %2797, %2797
  %2801 = fmul fast float %2798, %2798
  %2802 = fmul fast float %2799, %2799
  %2803 = fmul fast float %2800, %2800
  %2804 = fmul fast float %2803, 1.000000e+02
  %2805 = fmul fast float %2801, %2801
  %2806 = fmul fast float %2805, 1.000000e+02
  %2807 = fmul fast float %2802, %2802
  %2808 = fmul fast float %2807, 1.000000e+02
  %2809 = fadd fast float %2804, 3.500000e+00
  %2810 = fadd fast float %2806, 3.500000e+00
  %2811 = fadd fast float %2808, 3.500000e+00
  %2812 = fdiv fast float %2809, %2793
  %2813 = fdiv fast float %2810, %2790
  %2814 = fdiv fast float %2811, %2788
  %2815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %2816 = extractvalue %dx.types.CBufRet.f32 %2815, 0
  %2817 = extractvalue %dx.types.CBufRet.f32 %2815, 1
  %2818 = fmul fast float %2816, %1679
  %2819 = fmul fast float %2817, %1679
  %2820 = fdiv fast float 1.000000e+00, %2818
  %2821 = fdiv fast float 1.000000e+00, %2819
  %2822 = fmul fast float %1651, 5.000000e-01
  %2823 = fmul fast float %2822, %2818
  %2824 = fmul fast float %2812, 0xBFF7154760000000
  %2825 = fmul fast float %2824, %2823
  %2826 = call float @dx.op.unary.f32(i32 21, float %2825)  ; Exp(value)
  %2827 = fmul fast float %2826, 2.500000e-01
  %2828 = fsub fast float 1.000000e+00, %2827
  %2829 = fmul fast float %2812, 0xBFDEC709E0000000
  %2830 = fmul fast float %2829, %2823
  %2831 = call float @dx.op.unary.f32(i32 21, float %2830)  ; Exp(value)
  %2832 = fmul fast float %2831, 7.500000e-01
  %2833 = fsub fast float %2828, %2832
  %2834 = fmul fast float %2813, 0xBFF7154760000000
  %2835 = fmul fast float %2834, %2823
  %2836 = call float @dx.op.unary.f32(i32 21, float %2835)  ; Exp(value)
  %2837 = fmul fast float %2836, 2.500000e-01
  %2838 = fsub fast float 1.000000e+00, %2837
  %2839 = fmul fast float %2813, 0xBFDEC709E0000000
  %2840 = fmul fast float %2839, %2823
  %2841 = call float @dx.op.unary.f32(i32 21, float %2840)  ; Exp(value)
  %2842 = fmul fast float %2841, 7.500000e-01
  %2843 = fsub fast float %2838, %2842
  %2844 = fmul fast float %2814, 0xBFF7154760000000
  %2845 = fmul fast float %2844, %2823
  %2846 = call float @dx.op.unary.f32(i32 21, float %2845)  ; Exp(value)
  %2847 = fmul fast float %2846, 2.500000e-01
  %2848 = fsub fast float 1.000000e+00, %2847
  %2849 = fmul fast float %2814, 0xBFDEC709E0000000
  %2850 = fmul fast float %2849, %2823
  %2851 = call float @dx.op.unary.f32(i32 21, float %2850)  ; Exp(value)
  %2852 = fmul fast float %2851, 7.500000e-01
  %2853 = fsub fast float %2848, %2852
  %2854 = fmul fast float %2774, 0x3F1A36E2E0000000
  %2855 = fmul fast float %2775, 0x3F1A36E2E0000000
  %2856 = fmul fast float %2776, 0x3F1A36E2E0000000
  %2857 = call float @dx.op.binary.f32(i32 36, float %2813, float %2814)  ; FMin(a,b)
  %2858 = call float @dx.op.binary.f32(i32 36, float %2812, float %2857)  ; FMin(a,b)
  %2859 = call float @dx.op.binary.f32(i32 36, float %2843, float %2853)  ; FMin(a,b)
  %2860 = call float @dx.op.binary.f32(i32 36, float %2833, float %2859)  ; FMin(a,b)
  %2861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2862 = extractvalue %dx.types.CBufRet.f32 %2861, 2
  %2863 = fmul fast float %2862, %2818
  %2864 = fmul fast float %2858, 0xBFF7154760000000
  %2865 = fmul fast float %2864, %2863
  %2866 = call float @dx.op.unary.f32(i32 21, float %2865)  ; Exp(value)
  %2867 = fmul fast float %2866, 2.500000e-01
  %2868 = fsub fast float 1.000000e+00, %2867
  %2869 = fmul fast float %2858, 0xBFDEC709E0000000
  %2870 = fmul fast float %2869, %2863
  %2871 = call float @dx.op.unary.f32(i32 21, float %2870)  ; Exp(value)
  %2872 = fmul fast float %2871, 7.500000e-01
  %2873 = fsub fast float %2868, %2872
  %2874 = extractvalue %dx.types.CBufRet.f32 %2861, 3
  %2875 = call float @dx.op.binary.f32(i32 36, float %2874, float %2873)  ; FMin(a,b)
  %2876 = fsub fast float %2875, %2860
  %2877 = call float @dx.op.unary.f32(i32 7, float %2876)  ; Saturate(value)
  %2878 = call float @dx.op.unary.f32(i32 7, float %2860)  ; Saturate(value)
  %2879 = extractvalue %dx.types.CBufRet.f32 %2861, 0
  %2880 = fmul fast float %2879, %2877
  %2881 = fptoui float %2880 to i32
  %2882 = uitofp i32 %2881 to float
  %2883 = fdiv fast float 1.000000e+00, %2882
  %2884 = icmp eq i32 %2881, 0
  br i1 %2884, label %2995, label %2885

; <label>:2885                                    ; preds = %2786
  %2886 = fmul fast float %2814, 0x3FA45F3060000000
  %2887 = fmul fast float %2858, 0x3FA45F3060000000
  br label %2888

; <label>:2888                                    ; preds = %2888, %2885
  %2889 = phi float [ %2986, %2888 ], [ %2854, %2885 ]
  %2890 = phi float [ %2987, %2888 ], [ %2855, %2885 ]
  %2891 = phi float [ %2988, %2888 ], [ %2856, %2885 ]
  %2892 = phi float [ %2989, %2888 ], [ 0x3F1A36E2E0000000, %2885 ]
  %2893 = phi float [ %2990, %2888 ], [ 0x3F1A36E2E0000000, %2885 ]
  %2894 = phi float [ %2991, %2888 ], [ 0x3F1A36E2E0000000, %2885 ]
  %2895 = phi i32 [ %2992, %2888 ], [ 0, %2885 ]
  %2896 = sitofp i32 %2895 to float
  %2897 = fadd fast float %2896, %1665
  %2898 = fmul fast float %2883, %2877
  %2899 = fmul fast float %2898, %2897
  %2900 = fsub fast float 1.000000e+00, %2878
  %2901 = fsub fast float %2900, %2899
  %2902 = fmul fast float %2901, 4.000000e+00
  %2903 = fmul fast float %2901, 2.000000e+00
  %2904 = fmul fast float %2901, %2901
  %2905 = fmul fast float %2904, 4.000000e+00
  %2906 = fadd fast float %2905, 1.000000e+00
  %2907 = call float @dx.op.unary.f32(i32 24, float %2906)  ; Sqrt(value)
  %2908 = fadd fast float %2903, %2907
  %2909 = fmul fast float %2902, %2908
  %2910 = fadd fast float %2909, 1.000000e+00
  %2911 = call float @dx.op.unary.f32(i32 23, float %2910)  ; Log(value)
  %2912 = fmul fast float %2911, 0xBFD5555560000000
  %2913 = call float @dx.op.unary.f32(i32 21, float %2912)  ; Exp(value)
  %2914 = fmul fast float %2913, %2913
  %2915 = fmul fast float %2914, %2910
  %2916 = fadd fast float %2913, 1.000000e+00
  %2917 = fadd fast float %2916, %2915
  %2918 = fdiv fast float 2.500000e-01, %2901
  %2919 = fmul fast float %2917, %2918
  %2920 = call float @dx.op.unary.f32(i32 23, float %2919)  ; Log(value)
  %2921 = fmul fast float %2920, 0x4000A2B240000000
  %2922 = fdiv fast float %2921, %2858
  %2923 = fmul fast float %2864, %2922
  %2924 = call float @dx.op.unary.f32(i32 21, float %2923)  ; Exp(value)
  %2925 = fmul fast float %2869, %2922
  %2926 = call float @dx.op.unary.f32(i32 21, float %2925)  ; Exp(value)
  %2927 = fadd fast float %2926, %2924
  %2928 = fmul fast float %2887, %2927
  %2929 = fdiv fast float %2877, %2928
  %2930 = fmul fast float %2896, 0x3FF9E377A0000000
  %2931 = call float @dx.op.unary.f32(i32 22, float %2930)  ; Frc(value)
  %2932 = fadd fast float %2931, %1665
  %2933 = fmul fast float %2932, 0x401921FB60000000
  %2934 = call float @dx.op.unary.f32(i32 13, float %2933)  ; Sin(value)
  %2935 = call float @dx.op.unary.f32(i32 12, float %2933)  ; Cos(value)
  %2936 = fmul fast float %2922, %2820
  %2937 = fmul fast float %2936, %2935
  %2938 = fmul fast float %2922, %2821
  %2939 = fmul fast float %2938, %2934
  %2940 = fadd fast float %2937, %1653
  %2941 = fadd fast float %2939, %1654
  %2942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %24, float %2940, float %2941, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2943 = extractvalue %dx.types.ResRet.f32 %2942, 0
  %2944 = extractvalue %dx.types.ResRet.f32 %2942, 1
  %2945 = extractvalue %dx.types.ResRet.f32 %2942, 2
  %2946 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %24, float %2940, float %2941, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2947 = extractvalue %dx.types.ResRet.f32 %2946, 0
  %2948 = fcmp fast ogt float %2947, -1.000000e+00
  %2949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2950 = extractvalue %dx.types.CBufRet.f32 %2949, 1
  %2951 = select i1 %2948, float %2950, float 1.000000e+00
  %2952 = fadd fast float %2947, 1.000000e+00
  %2953 = fmul fast float %2951, %2952
  %2954 = call float @dx.op.unary.f32(i32 6, float %2953)  ; FAbs(value)
  %2955 = fsub fast float %1679, %2954
  %2956 = fmul fast float %2922, %2922
  %2957 = fmul fast float %2955, %2955
  %2958 = fadd fast float %2957, %2956
  %2959 = call float @dx.op.unary.f32(i32 24, float %2958)  ; Sqrt(value)
  %2960 = fmul fast float %2824, %2959
  %2961 = call float @dx.op.unary.f32(i32 21, float %2960)  ; Exp(value)
  %2962 = fmul fast float %2829, %2959
  %2963 = call float @dx.op.unary.f32(i32 21, float %2962)  ; Exp(value)
  %2964 = fadd fast float %2963, %2961
  %2965 = fmul fast float %2834, %2959
  %2966 = call float @dx.op.unary.f32(i32 21, float %2965)  ; Exp(value)
  %2967 = fmul fast float %2839, %2959
  %2968 = call float @dx.op.unary.f32(i32 21, float %2967)  ; Exp(value)
  %2969 = fadd fast float %2968, %2966
  %2970 = fmul fast float %2844, %2959
  %2971 = call float @dx.op.unary.f32(i32 21, float %2970)  ; Exp(value)
  %2972 = fmul fast float %2849, %2959
  %2973 = call float @dx.op.unary.f32(i32 21, float %2972)  ; Exp(value)
  %2974 = fadd fast float %2973, %2971
  %2975 = fmul fast float %2812, 0x3FA45F3060000000
  %2976 = fmul fast float %2975, %2929
  %2977 = fmul fast float %2976, %2964
  %2978 = fmul fast float %2813, 0x3FA45F3060000000
  %2979 = fmul fast float %2978, %2929
  %2980 = fmul fast float %2979, %2969
  %2981 = fmul fast float %2886, %2929
  %2982 = fmul fast float %2981, %2974
  %2983 = fmul fast float %2977, %2943
  %2984 = fmul fast float %2980, %2944
  %2985 = fmul fast float %2982, %2945
  %2986 = fadd fast float %2983, %2889
  %2987 = fadd fast float %2984, %2890
  %2988 = fadd fast float %2985, %2891
  %2989 = fadd fast float %2977, %2892
  %2990 = fadd fast float %2980, %2893
  %2991 = fadd fast float %2982, %2894
  %2992 = add nuw nsw i32 %2895, 1
  %2993 = icmp eq i32 %2992, %2881
  br i1 %2993, label %2994, label %2888, !llvm.loop !103

; <label>:2994                                    ; preds = %2888
  br label %2995

; <label>:2995                                    ; preds = %2994, %2786
  %2996 = phi float [ %2854, %2786 ], [ %2986, %2994 ]
  %2997 = phi float [ %2855, %2786 ], [ %2987, %2994 ]
  %2998 = phi float [ %2856, %2786 ], [ %2988, %2994 ]
  %2999 = phi float [ 0x3F1A36E2E0000000, %2786 ], [ %2989, %2994 ]
  %3000 = phi float [ 0x3F1A36E2E0000000, %2786 ], [ %2990, %2994 ]
  %3001 = phi float [ 0x3F1A36E2E0000000, %2786 ], [ %2991, %2994 ]
  %3002 = fmul fast float %2833, %2774
  %3003 = fmul fast float %2843, %2775
  %3004 = fmul fast float %2853, %2776
  %3005 = fsub fast float 1.000000e+00, %2833
  %3006 = fsub fast float 1.000000e+00, %2843
  %3007 = fsub fast float 1.000000e+00, %2853
  %3008 = fdiv fast float %2996, %2999
  %3009 = fdiv fast float %2997, %3000
  %3010 = fdiv fast float %2998, %3001
  %3011 = fmul fast float %3008, %3005
  %3012 = fmul fast float %3009, %3006
  %3013 = fmul fast float %3010, %3007
  %3014 = fadd fast float %3011, %3002
  %3015 = fadd fast float %3012, %3003
  %3016 = fadd fast float %3013, %3004
  br label %3017

; <label>:3017                                    ; preds = %2995, %2753
  %3018 = phi float [ %3014, %2995 ], [ 0.000000e+00, %2753 ]
  %3019 = phi float [ %3015, %2995 ], [ 0.000000e+00, %2753 ]
  %3020 = phi float [ %3016, %2995 ], [ 0.000000e+00, %2753 ]
  %3021 = phi float [ %2778, %2995 ], [ 0.000000e+00, %2753 ]
  %3022 = phi float [ %2779, %2995 ], [ 0.000000e+00, %2753 ]
  %3023 = phi float [ %2780, %2995 ], [ 0.000000e+00, %2753 ]
  %3024 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3025 = extractvalue %dx.types.CBufRet.i32 %3024, 3
  %3026 = and i32 %3025, 3
  %3027 = icmp ne i32 %3026, 0
  %3028 = and i32 %3025, 4
  %3029 = icmp ne i32 %3028, 0
  %3030 = and i1 %3027, %3029
  br i1 %3030, label %3031, label %3038, !dx.controlflow.hints !105

; <label>:3031                                    ; preds = %3017
  %3032 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %24, float %1653, float %1654, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3033 = extractvalue %dx.types.ResRet.f32 %3032, 0
  %3034 = fsub fast float 1.000000e+00, %3033
  %3035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %3036 = extractvalue %dx.types.CBufRet.f32 %3035, 0
  %3037 = fcmp fast olt float %3034, %3036
  br label %3041

; <label>:3038                                    ; preds = %3017
  %3039 = icmp eq i32 %3028, 0
  %3040 = and i1 %3027, %3039
  br label %3041

; <label>:3041                                    ; preds = %3038, %3031
  %3042 = phi i1 [ %3037, %3031 ], [ %3040, %3038 ]
  %3043 = select i1 %3042, float 0.000000e+00, float %3022
  %3044 = select i1 %3042, float 0.000000e+00, float %3023
  %3045 = fmul fast float %3021, %3018
  %3046 = fmul fast float %3043, %3019
  %3047 = fmul fast float %3044, %3020
  %3048 = fadd fast float %3045, %2770
  %3049 = fadd fast float %3046, %2771
  %3050 = fadd fast float %3047, %2772
  %3051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3052 = extractvalue %dx.types.CBufRet.f32 %3051, 0
  br i1 %3042, label %3053, label %3072, !dx.controlflow.hints !106

; <label>:3053                                    ; preds = %3041
  %3054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %3055 = extractvalue %dx.types.CBufRet.f32 %3054, 3
  %3056 = call float @dx.op.dot3.f32(i32 55, float %2760, float %2761, float %2762, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3057 = fmul fast float %3056, %3048
  %3058 = call float @dx.op.dot3.f32(i32 55, float %2766, float %2767, float %2768, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3059 = fmul fast float %3052, %3058
  %3060 = fadd fast float %3059, %3057
  br i1 %3030, label %3061, label %3067, !dx.controlflow.hints !107

; <label>:3061                                    ; preds = %3053
  %3062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %3063 = extractvalue %dx.types.CBufRet.f32 %3062, 1
  %3064 = fadd fast float %2760, -1.000000e+00
  %3065 = fmul fast float %3063, %3064
  %3066 = fadd fast float %3065, 1.000000e+00
  br label %3067

; <label>:3067                                    ; preds = %3061, %3053
  %3068 = phi float [ %3066, %3061 ], [ %2760, %3053 ]
  %3069 = fsub fast float %3049, %3055
  %3070 = fmul fast float %3068, %3069
  %3071 = fadd fast float %3070, %3055
  br label %3082

; <label>:3072                                    ; preds = %3041
  %3073 = fmul fast float %3048, %2760
  %3074 = fmul fast float %3049, %2761
  %3075 = fmul fast float %3050, %2762
  %3076 = fmul fast float %3052, %2766
  %3077 = fmul fast float %3052, %2767
  %3078 = fmul fast float %3052, %2768
  %3079 = fadd fast float %3076, %3073
  %3080 = fadd fast float %3077, %3074
  %3081 = fadd fast float %3078, %3075
  br label %3082

; <label>:3082                                    ; preds = %3072, %3067
  %3083 = phi float [ %3060, %3067 ], [ %3079, %3072 ]
  %3084 = phi float [ %3071, %3067 ], [ %3080, %3072 ]
  %3085 = phi float [ %3050, %3067 ], [ %3081, %3072 ]
  %3086 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %3087 = extractvalue %dx.types.CBufRet.i32 %3086, 1
  %3088 = shl i32 %3087, 1
  %3089 = lshr i32 %1631, 5
  %3090 = extractvalue %dx.types.CBufRet.i32 %3086, 0
  %3091 = mul i32 %3090, %3089
  %3092 = add i32 %3088, %1537
  %3093 = add i32 %3092, %3091
  %3094 = shl i32 %3093, 2
  %3095 = and i32 %1631, 24
  %3096 = or i32 %3095, %1542
  %3097 = shl i32 1, %3096
  %3098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3094, i32 undef)  ; BufferLoad(srv,index,wot)
  %3099 = extractvalue %dx.types.ResRet.i32 %3098, 0
  %3100 = and i32 %3099, %3097
  %3101 = icmp eq i32 %3100, 0
  br i1 %3101, label %3117, label %3102, !dx.controlflow.hints !108

; <label>:3102                                    ; preds = %3082
  %3103 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %1630, i32 %1631, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3104 = extractvalue %dx.types.ResRet.f32 %3103, 0
  %3105 = fcmp fast ogt float %3104, 0.000000e+00
  br i1 %3105, label %3106, label %3117, !dx.controlflow.hints !109

; <label>:3106                                    ; preds = %3102
  %3107 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %1630, i32 %1631, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3108 = extractvalue %dx.types.ResRet.f32 %3107, 0
  %3109 = extractvalue %dx.types.ResRet.f32 %3107, 1
  %3110 = extractvalue %dx.types.ResRet.f32 %3107, 2
  %3111 = extractvalue %dx.types.ResRet.f32 %3107, 3
  %3112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %3113 = extractvalue %dx.types.CBufRet.f32 %3112, 2
  %3114 = fmul fast float %3113, %3108
  %3115 = fmul fast float %3113, %3109
  %3116 = fmul fast float %3113, %3110
  br label %3117

; <label>:3117                                    ; preds = %3106, %3102, %3082
  %3118 = phi float [ %3114, %3106 ], [ 0.000000e+00, %3102 ], [ 0.000000e+00, %3082 ]
  %3119 = phi float [ %3115, %3106 ], [ 0.000000e+00, %3102 ], [ 0.000000e+00, %3082 ]
  %3120 = phi float [ %3116, %3106 ], [ 0.000000e+00, %3102 ], [ 0.000000e+00, %3082 ]
  %3121 = phi float [ %3111, %3106 ], [ 0.000000e+00, %3102 ], [ 0.000000e+00, %3082 ]
  %3122 = fsub fast float 1.000000e+00, %3121
  %3123 = fmul fast float %3122, %3083
  %3124 = fmul fast float %3122, %3084
  %3125 = fmul fast float %3122, %3085
  %3126 = fadd fast float %3123, %3118
  %3127 = fadd fast float %3124, %3119
  %3128 = fadd fast float %3125, %3120
  %3129 = fadd fast float %1665, 0x3FE3C6EF40000000
  %3130 = call float @dx.op.unary.f32(i32 22, float %3129)  ; Frc(value)
  %3131 = call float @dx.op.unary.f32(i32 23, float %3126)  ; Log(value)
  %3132 = fadd fast float %3131, -7.000000e+00
  %3133 = call float @dx.op.unary.f32(i32 21, float %3132)  ; Exp(value)
  %3134 = fmul fast float %3130, 2.000000e+00
  %3135 = fadd fast float %3134, -1.000000e+00
  %3136 = fmul fast float %3133, %3135
  %3137 = fcmp fast ogt float %3126, 0.000000e+00
  %3138 = select i1 %3137, float %3136, float 0.000000e+00
  %3139 = fadd fast float %3138, %3126
  %3140 = fadd fast float %1665, 0x3FF3C6EF40000000
  %3141 = call float @dx.op.unary.f32(i32 22, float %3140)  ; Frc(value)
  %3142 = call float @dx.op.unary.f32(i32 23, float %3127)  ; Log(value)
  %3143 = fadd fast float %3142, -7.000000e+00
  %3144 = call float @dx.op.unary.f32(i32 21, float %3143)  ; Exp(value)
  %3145 = fmul fast float %3141, 2.000000e+00
  %3146 = fadd fast float %3145, -1.000000e+00
  %3147 = fmul fast float %3144, %3146
  %3148 = fcmp fast ogt float %3127, 0.000000e+00
  %3149 = select i1 %3148, float %3147, float 0.000000e+00
  %3150 = fadd fast float %3149, %3127
  %3151 = fadd fast float %1665, 0x3FFDAA66E0000000
  %3152 = call float @dx.op.unary.f32(i32 22, float %3151)  ; Frc(value)
  %3153 = call float @dx.op.unary.f32(i32 23, float %3128)  ; Log(value)
  %3154 = fadd fast float %3153, -6.000000e+00
  %3155 = call float @dx.op.unary.f32(i32 21, float %3154)  ; Exp(value)
  %3156 = fmul fast float %3152, 2.000000e+00
  %3157 = fadd fast float %3156, -1.000000e+00
  %3158 = fmul fast float %3155, %3157
  %3159 = fcmp fast ogt float %3128, 0.000000e+00
  %3160 = select i1 %3159, float %3158, float 0.000000e+00
  %3161 = fadd fast float %3160, %3128
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %1630, i32 %1631, i32 undef, float %3139, float %3150, float %3161, float %3139, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %3162 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3163 = extractvalue %dx.types.CBufRet.i32 %3162, 0
  %3164 = and i32 %3163, 1
  %3165 = icmp ne i32 %3164, 0
  %3166 = or i32 %1631, %1623
  %3167 = and i32 %3166, 1
  %3168 = icmp eq i32 %3167, 0
  %3169 = and i1 %3168, %3165
  br i1 %3169, label %3170, label %3173, !dx.controlflow.hints !110

; <label>:3170                                    ; preds = %3117
  %3171 = and i32 %50, 2147483647
  %3172 = lshr i32 %1631, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %3171, i32 %3172, i32 undef, float %3048, float %3049, float %3050, float %3048, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3173

; <label>:3173                                    ; preds = %3170, %3117
  %3174 = fadd fast float %3126, %1618
  %3175 = fadd fast float %3127, %1619
  %3176 = fadd fast float %3128, %1620
  %3177 = fadd fast float %1621, 1.000000e+00
  br label %1640

; <label>:3178                                    ; preds = %1640
  %3179 = fdiv fast float 1.000000e+00, %1644
  %3180 = fmul fast float %3179, %1641
  %3181 = fmul fast float %3179, %1642
  %3182 = fmul fast float %3179, %1643
  %3183 = call float @dx.op.dot3.f32(i32 55, float %3180, float %3181, float %3182, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3184 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedLuma@@3PAMA", i32 0, i32 %32
  store float %3183, float addrspace(3)* %3184, align 4, !tbaa !53
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3185 = or i32 %50, %51
  %3186 = and i32 %3185, 1
  %3187 = icmp eq i32 %3186, 0
  br i1 %3187, label %3188, label %3244, !dx.controlflow.hints !144

; <label>:3188                                    ; preds = %3178
  %3189 = and i32 %32, 63
  %3190 = xor i32 %3189, 1
  %3191 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedLuma@@3PAMA", i32 0, i32 %3190
  %3192 = load float, float addrspace(3)* %3191, align 4, !tbaa !53
  %3193 = call float @dx.op.binary.f32(i32 35, float %3183, float %3192)  ; FMax(a,b)
  %3194 = xor i32 %3189, 8
  %3195 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedLuma@@3PAMA", i32 0, i32 %3194
  %3196 = load float, float addrspace(3)* %3195, align 4, !tbaa !53
  %3197 = call float @dx.op.binary.f32(i32 35, float %3193, float %3196)  ; FMax(a,b)
  %3198 = xor i32 %3189, 9
  %3199 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedLuma@@3PAMA", i32 0, i32 %3198
  %3200 = load float, float addrspace(3)* %3199, align 4, !tbaa !53
  %3201 = call float @dx.op.binary.f32(i32 35, float %3197, float %3200)  ; FMax(a,b)
  %3202 = call float @dx.op.binary.f32(i32 36, float %3183, float %3192)  ; FMin(a,b)
  %3203 = call float @dx.op.binary.f32(i32 36, float %3202, float %3196)  ; FMin(a,b)
  %3204 = call float @dx.op.binary.f32(i32 36, float %3203, float %3200)  ; FMin(a,b)
  %3205 = lshr i32 %50, 1
  %3206 = lshr i32 %51, 1
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
  %3223 = fmul fast float %3201, 0x3F1A36E2E0000000
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

; <label>:3244                                    ; preds = %3188, %3178
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
!38 = !{void ()* @cs_post_opaque_processes_luma_subsampletile_dmfpscale, !"cs_post_opaque_processes_luma_subsampletile_dmfpscale", null, !4, !39}
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

