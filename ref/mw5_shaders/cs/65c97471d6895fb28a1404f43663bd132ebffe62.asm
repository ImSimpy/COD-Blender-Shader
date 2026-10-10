;
; Note: shader requires additional functionality:
;       Typed UAV Load Additional Formats
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
; shader hash: a3130636191e74ddcf3c58b303424353
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

define void @cs_post_opaque_processes_dmfpscale() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %28 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %29 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %30 = alloca [3 x float], align 4
  %31 = alloca [3 x float], align 4
  %32 = alloca [4 x float], align 4
  %33 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.i32 %33, 0
  %35 = extractvalue %dx.types.CBufRet.i32 %33, 1
  %36 = mul i32 %35, %34
  %37 = add i32 %36, %29
  %38 = shl i32 %37, 2
  %39 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %38, i32 undef)  ; BufferLoad(srv,index,wot)
  %40 = extractvalue %dx.types.ResRet.i32 %39, 0
  %41 = lshr i32 %40, 16
  %42 = shl i32 %40, 3
  %43 = and i32 %42, 524280
  %44 = shl nuw nsw i32 %41, 3
  %45 = add i32 %43, %27
  %46 = add i32 %44, %28
  %47 = shl i32 %45, 1
  %48 = shl i32 %46, 1
  %49 = uitofp i32 %47 to float
  %50 = uitofp i32 %48 to float
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 2
  %53 = extractvalue %dx.types.CBufRet.f32 %51, 3
  %54 = fmul fast float %49, %52
  %55 = fmul fast float %50, %53
  %56 = fadd fast float %54, %52
  %57 = fadd fast float %55, %53
  %58 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %23, float %56, float %57, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %59 = extractvalue %dx.types.ResRet.f32 %58, 0
  %60 = extractvalue %dx.types.ResRet.f32 %58, 1
  %61 = extractvalue %dx.types.ResRet.f32 %58, 2
  %62 = extractvalue %dx.types.ResRet.f32 %58, 3
  %63 = fcmp fast ogt float %62, -1.000000e+00
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 1
  %66 = select i1 %63, float %65, float 1.000000e+00
  %67 = fadd fast float %62, 1.000000e+00
  %68 = fmul fast float %66, %67
  %69 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %70 = fcmp fast ogt float %61, -1.000000e+00
  %71 = select i1 %70, float %65, float 1.000000e+00
  %72 = fadd fast float %61, 1.000000e+00
  %73 = fmul fast float %71, %72
  %74 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %75 = fcmp fast ogt float %59, -1.000000e+00
  %76 = select i1 %75, float %65, float 1.000000e+00
  %77 = fadd fast float %59, 1.000000e+00
  %78 = fmul fast float %76, %77
  %79 = call float @dx.op.unary.f32(i32 6, float %78)  ; FAbs(value)
  %80 = fcmp fast ogt float %60, -1.000000e+00
  %81 = select i1 %80, float %65, float 1.000000e+00
  %82 = fadd fast float %60, 1.000000e+00
  %83 = fmul fast float %81, %82
  %84 = call float @dx.op.unary.f32(i32 6, float %83)  ; FAbs(value)
  %85 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 0
  store float %69, float* %85, align 4
  %86 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 1
  store float %74, float* %86, align 4
  %87 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 2
  store float %79, float* %87, align 4
  %88 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 3
  store float %84, float* %88, align 4
  %89 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %90 = extractvalue %dx.types.ResRet.i32 %89, 0
  %91 = and i32 %90, 114688
  %92 = icmp ne i32 %91, 0
  %93 = select i1 %92, i32 %47, i32 0
  %94 = select i1 %92, i32 %48, i32 0
  %95 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %93, i32 %94, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %96 = extractvalue %dx.types.ResRet.f32 %95, 0
  %97 = fmul fast float %96, 2.550000e+02
  %98 = fptoui float %97 to i32
  %99 = icmp eq i32 %98, 3
  %100 = and i1 %92, %99
  %101 = extractvalue %dx.types.CBufRet.f32 %64, 3
  %102 = fcmp fast oge float %69, %101
  %103 = fadd fast float %49, 5.000000e-01
  %104 = fadd fast float %50, 5.000000e-01
  br i1 %100, label %966, label %105, !dx.controlflow.hints !39

; <label>:105                                     ; preds = %0
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 170)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = select i1 %102, float %107, float %69
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %111 = extractvalue %dx.types.CBufRet.f32 %109, 3
  %112 = fmul fast float %103, 2.000000e+00
  %113 = fmul fast float %112, %110
  %114 = fmul fast float %104, 2.000000e+00
  %115 = fmul fast float %114, %111
  %116 = fsub fast float 1.000000e+00, %113
  %117 = fsub fast float 1.000000e+00, %115
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 0
  %120 = extractvalue %dx.types.CBufRet.f32 %118, 1
  %121 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %122 = fmul fast float %116, %119
  %123 = fmul fast float %116, %120
  %124 = fmul fast float %116, %121
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 0
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 1
  %128 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %129 = fmul fast float %117, %126
  %130 = fmul fast float %117, %127
  %131 = fmul fast float %117, %128
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = extractvalue %dx.types.CBufRet.f32 %132, 1
  %135 = extractvalue %dx.types.CBufRet.f32 %132, 2
  %136 = fadd fast float %129, %133
  %137 = fadd fast float %136, %122
  %138 = fadd fast float %130, %134
  %139 = fadd fast float %138, %123
  %140 = fadd fast float %131, %135
  %141 = fadd fast float %140, %124
  %142 = fmul fast float %137, %108
  %143 = fmul fast float %139, %108
  %144 = fmul fast float %141, %108
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 163)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %151 = extractvalue %dx.types.CBufRet.f32 %147, 3
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 0
  %154 = extractvalue %dx.types.CBufRet.f32 %152, 1
  %155 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %156 = extractvalue %dx.types.CBufRet.f32 %152, 3
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %160 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %161 = extractvalue %dx.types.CBufRet.f32 %157, 3
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %165 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %166 = extractvalue %dx.types.CBufRet.f32 %162, 3
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 3
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 3
  %171 = extractvalue %dx.types.CBufRet.f32 %169, 0
  %172 = extractvalue %dx.types.CBufRet.f32 %169, 1
  %173 = extractvalue %dx.types.CBufRet.f32 %169, 2
  %174 = fcmp fast olt float %173, -5.000000e-01
  %175 = extractvalue %dx.types.CBufRet.f32 %145, 3
  %176 = call float @dx.op.dot3.f32(i32 55, float %142, float %143, float %144, float %142, float %143, float %144)  ; Dot3(ax,ay,az,bx,by,bz)
  %177 = call float @dx.op.unary.f32(i32 25, float %176)  ; Rsqrt(value)
  %178 = fmul fast float %177, %176
  %179 = fmul fast float %177, %142
  %180 = fmul fast float %177, %143
  %181 = fmul fast float %177, %144
  %182 = fadd fast float %178, %151
  br i1 %102, label %183, label %195, !dx.controlflow.hints !40

; <label>:183                                     ; preds = %105
  %184 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %185 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 187)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 1
  %188 = extractvalue %dx.types.CBufRet.f32 %186, 0
  %189 = call float @dx.op.binary.f32(i32 35, float %181, float %188)  ; FMax(a,b)
  %190 = call float @dx.op.binary.f32(i32 36, float %189, float %187)  ; FMin(a,b)
  %191 = fmul fast float %190, %185
  %192 = fadd fast float %191, %184
  %193 = call float @dx.op.unary.f32(i32 7, float %192)  ; Saturate(value)
  %194 = fmul fast float %181, %146
  br label %195

; <label>:195                                     ; preds = %183, %105
  %196 = phi float [ %146, %183 ], [ %182, %105 ]
  %197 = phi float [ %193, %183 ], [ 0.000000e+00, %105 ]
  %198 = phi float [ %194, %183 ], [ %144, %105 ]
  %199 = call float @dx.op.dot3.f32(i32 55, float %179, float %180, float %181, float %148, float %149, float %150)  ; Dot3(ax,ay,az,bx,by,bz)
  %200 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.i32 %200, 1
  %202 = and i32 %201, 1
  %203 = icmp ne i32 %202, 0
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 2
  %206 = fcmp fast ogt float %205, 0.000000e+00
  %207 = and i1 %203, %206
  br i1 %207, label %208, label %617, !dx.controlflow.hints !41

; <label>:208                                     ; preds = %195
  %209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.f32 %209, 3
  %211 = select i1 %102, float %210, float %178
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 3
  %214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.f32 %214, 2
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 2
  %218 = fsub fast float %215, %217
  %219 = and i32 %201, 2
  %220 = extractvalue %dx.types.CBufRet.i32 %200, 0
  %221 = call i32 @dx.op.binary.i32(i32 40, i32 %220, i32 3)  ; UMin(a,b)
  %222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.f32 %222, 0
  %224 = extractvalue %dx.types.CBufRet.f32 %222, 1
  %225 = extractvalue %dx.types.CBufRet.f32 %216, 0
  %226 = extractvalue %dx.types.CBufRet.f32 %216, 1
  %227 = fsub fast float %223, %225
  %228 = fsub fast float %224, %226
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 0
  %231 = fcmp fast ogt float %230, 0.000000e+00
  %232 = fsub fast float -0.000000e+00, %227
  %233 = fsub fast float -0.000000e+00, %228
  %234 = call float @dx.op.dot2.f32(i32 54, float %179, float %180, float %179, float %180)  ; Dot2(ax,ay,bx,by)
  %235 = call float @dx.op.dot2.f32(i32 54, float %179, float %180, float %232, float %233)  ; Dot2(ax,ay,bx,by)
  %236 = fmul fast float %235, 2.000000e+00
  %237 = call float @dx.op.dot2.f32(i32 54, float %232, float %233, float %232, float %233)  ; Dot2(ax,ay,bx,by)
  %238 = fmul fast float %230, %230
  %239 = fsub fast float %237, %238
  %240 = fmul fast float %236, %236
  %241 = fmul fast float %234, 4.000000e+00
  %242 = fmul fast float %241, %239
  %243 = fsub fast float %240, %242
  %244 = fcmp fast ogt float %243, 0.000000e+00
  br i1 %244, label %245, label %260, !dx.controlflow.hints !42

; <label>:245                                     ; preds = %208
  %246 = fcmp fast ogt float %236, 0.000000e+00
  %247 = call float @dx.op.unary.f32(i32 24, float %243)  ; Sqrt(value)
  %248 = fsub fast float -0.000000e+00, %247
  %249 = select i1 %246, float %247, float %248
  %250 = fadd fast float %249, %236
  %251 = fmul float %250, -5.000000e-01
  %252 = fdiv fast float %251, %234
  %253 = call float @dx.op.binary.f32(i32 35, float %252, float 0.000000e+00)  ; FMax(a,b)
  %254 = call float @dx.op.binary.f32(i32 36, float %211, float %253)  ; FMin(a,b)
  %255 = fdiv fast float %239, %251
  %256 = call float @dx.op.binary.f32(i32 35, float %255, float 0.000000e+00)  ; FMax(a,b)
  %257 = call float @dx.op.binary.f32(i32 36, float %211, float %256)  ; FMin(a,b)
  %258 = call float @dx.op.binary.f32(i32 36, float %254, float %257)  ; FMin(a,b)
  %259 = call float @dx.op.binary.f32(i32 35, float %254, float %257)  ; FMax(a,b)
  br label %260

; <label>:260                                     ; preds = %245, %208
  %261 = phi float [ %259, %245 ], [ -1.000000e+00, %208 ]
  %262 = phi float [ %258, %245 ], [ -1.000000e+00, %208 ]
  %263 = phi i1 [ true, %245 ], [ false, %208 ]
  %264 = and i1 %231, %263
  br i1 %264, label %265, label %267, !dx.controlflow.hints !43

; <label>:265                                     ; preds = %260
  %266 = fcmp fast oeq float %262, %261
  br i1 %266, label %570, label %268, !dx.controlflow.hints !44

; <label>:267                                     ; preds = %260
  br i1 %231, label %570, label %268, !dx.controlflow.hints !45

; <label>:268                                     ; preds = %267, %265
  %269 = phi float [ %211, %267 ], [ %261, %265 ]
  %270 = phi float [ 0.000000e+00, %267 ], [ %262, %265 ]
  %271 = icmp ne i32 %219, 0
  %272 = fmul fast float %269, %181
  %273 = fadd fast float %272, %213
  %274 = fmul fast float %273, %269
  %275 = select i1 %271, float 0.000000e+00, float %274
  %276 = fcmp fast oeq float %181, 0.000000e+00
  %277 = fdiv fast float %218, %181
  %278 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %277)  ; FMax(a,b)
  %279 = select i1 %276, float %269, float %278
  %280 = call float @dx.op.binary.f32(i32 36, float %269, float %279)  ; FMin(a,b)
  %281 = fcmp fast ogt float %181, 0.000000e+00
  %282 = fcmp fast olt float %218, 0.000000e+00
  br i1 %281, label %283, label %340, !dx.controlflow.hints !46

; <label>:283                                     ; preds = %268
  %284 = icmp eq i32 %219, 0
  br i1 %282, label %285, label %329, !dx.controlflow.hints !47

; <label>:285                                     ; preds = %283
  %286 = select i1 %284, float %269, float 0.000000e+00
  %287 = fsub fast float -0.000000e+00, %286
  %288 = call float @dx.op.unary.f32(i32 6, float %287)  ; FAbs(value)
  %289 = fmul fast float %286, %181
  %290 = fadd fast float %289, %213
  %291 = fmul fast float %288, %290
  %292 = fsub fast float %275, %291
  %293 = fsub fast float %269, %288
  %294 = select i1 %284, float %293, float 0.000000e+00
  %295 = extractvalue %dx.types.CBufRet.f32 %209, 0
  %296 = extractvalue %dx.types.CBufRet.f32 %209, 1
  %297 = extractvalue %dx.types.CBufRet.f32 %209, 2
  %298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %299 = extractvalue %dx.types.CBufRet.f32 %298, 0
  %300 = extractvalue %dx.types.CBufRet.f32 %298, 1
  %301 = extractvalue %dx.types.CBufRet.f32 %298, 2
  %302 = extractvalue %dx.types.CBufRet.f32 %298, 3
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 3
  %305 = call float @dx.op.binary.f32(i32 36, float %292, float %304)  ; FMin(a,b)
  %306 = fmul fast float %302, %294
  %307 = call float @dx.op.unary.f32(i32 7, float %306)  ; Saturate(value)
  %308 = fsub fast float %299, %295
  %309 = fsub fast float %300, %296
  %310 = fsub fast float %301, %297
  %311 = fmul fast float %307, %308
  %312 = fmul fast float %307, %309
  %313 = fmul fast float %307, %310
  %314 = fadd fast float %311, %295
  %315 = fadd fast float %312, %296
  %316 = fadd fast float %313, %297
  br i1 %102, label %570, label %317, !dx.controlflow.hints !48

; <label>:317                                     ; preds = %285
  %318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.f32 %318, 0
  %320 = extractvalue %dx.types.CBufRet.f32 %318, 1
  %321 = fadd fast float %320, %319
  %322 = call float @dx.op.unary.f32(i32 7, float %321)  ; Saturate(value)
  %323 = extractvalue %dx.types.CBufRet.f32 %318, 2
  %324 = extractvalue %dx.types.CBufRet.f32 %318, 3
  %325 = fadd fast float %324, %323
  %326 = call float @dx.op.unary.f32(i32 7, float %325)  ; Saturate(value)
  %327 = fmul fast float %322, %305
  %328 = fmul fast float %327, %326
  br label %570

; <label>:329                                     ; preds = %283
  br i1 %284, label %330, label %351, !dx.controlflow.hints !49

; <label>:330                                     ; preds = %329
  %331 = call float @dx.op.binary.f32(i32 36, float %280, float %270)  ; FMin(a,b)
  %332 = fsub fast float %280, %331
  %333 = fsub fast float %332, %269
  %334 = call float @dx.op.unary.f32(i32 6, float %333)  ; FAbs(value)
  %335 = fadd fast float %332, %269
  %336 = fmul fast float %335, %181
  %337 = fadd fast float %336, %213
  %338 = fmul fast float %337, %334
  %339 = fsub fast float %275, %338
  br label %351

; <label>:340                                     ; preds = %268
  br i1 %282, label %341, label %351, !dx.controlflow.hints !50

; <label>:341                                     ; preds = %340
  %342 = call float @dx.op.binary.f32(i32 35, float %270, float %280)  ; FMax(a,b)
  %343 = icmp eq i32 %219, 0
  %344 = select i1 %343, float %280, float 0.000000e+00
  %345 = fsub fast float -0.000000e+00, %344
  %346 = call float @dx.op.unary.f32(i32 6, float %345)  ; FAbs(value)
  %347 = fmul fast float %344, %181
  %348 = fadd fast float %347, %213
  %349 = fmul fast float %346, %348
  %350 = fsub fast float %275, %349
  br label %351

; <label>:351                                     ; preds = %341, %340, %330, %329
  %352 = phi float [ %270, %329 ], [ %270, %330 ], [ %342, %341 ], [ %270, %340 ]
  %353 = phi float [ 0.000000e+00, %329 ], [ %334, %330 ], [ %346, %341 ], [ 0.000000e+00, %340 ]
  %354 = phi float [ %275, %329 ], [ %339, %330 ], [ %350, %341 ], [ %275, %340 ]
  %355 = phi float [ %280, %329 ], [ %280, %330 ], [ %269, %341 ], [ %269, %340 ]
  %356 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 0
  store float -1.000000e+00, float* %356, align 4, !tbaa !51, !noalias !55
  %357 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 1
  store float -1.000000e+00, float* %357, align 4, !tbaa !51, !noalias !55
  %358 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 2
  store float -1.000000e+00, float* %358, align 4, !tbaa !51, !noalias !55
  %359 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 0
  store float -1.000000e+00, float* %359, align 4, !tbaa !51, !noalias !55
  %360 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 1
  store float -1.000000e+00, float* %360, align 4, !tbaa !51, !noalias !55
  %361 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 2
  store float -1.000000e+00, float* %361, align 4, !tbaa !51, !noalias !55
  %362 = icmp sgt i32 %221, 0
  br i1 %362, label %363, label %424

; <label>:363                                     ; preds = %351
  br label %364

; <label>:364                                     ; preds = %413, %363
  %365 = phi i32 [ %414, %413 ], [ 0, %363 ]
  %366 = phi i32 [ %415, %413 ], [ 0, %363 ]
  %367 = add nuw i32 %366, 171
  %368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 %367)  ; CBufferLoadLegacy(handle,regIndex)
  %369 = extractvalue %dx.types.CBufRet.f32 %368, 0
  %370 = extractvalue %dx.types.CBufRet.f32 %368, 1
  %371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %372 = extractvalue %dx.types.CBufRet.f32 %371, 0
  %373 = extractvalue %dx.types.CBufRet.f32 %371, 1
  %374 = fsub fast float %369, %372
  %375 = fsub fast float %370, %373
  %376 = extractvalue %dx.types.CBufRet.f32 %368, 2
  %377 = fsub fast float -0.000000e+00, %374
  %378 = fsub fast float -0.000000e+00, %375
  %379 = call float @dx.op.dot2.f32(i32 54, float %179, float %180, float %377, float %378)  ; Dot2(ax,ay,bx,by)
  %380 = fmul fast float %379, 2.000000e+00
  %381 = call float @dx.op.dot2.f32(i32 54, float %377, float %378, float %377, float %378)  ; Dot2(ax,ay,bx,by)
  %382 = fmul fast float %376, %376
  %383 = fsub fast float %381, %382
  %384 = fmul fast float %380, %380
  %385 = fmul fast float %241, %383
  %386 = fsub fast float %384, %385
  %387 = fcmp fast ogt float %386, 0.000000e+00
  br i1 %387, label %388, label %403, !dx.controlflow.hints !42

; <label>:388                                     ; preds = %364
  %389 = fcmp fast ogt float %380, 0.000000e+00
  %390 = call float @dx.op.unary.f32(i32 24, float %386)  ; Sqrt(value)
  %391 = fsub fast float -0.000000e+00, %390
  %392 = select i1 %389, float %390, float %391
  %393 = fadd fast float %392, %380
  %394 = fmul float %393, -5.000000e-01
  %395 = fdiv fast float %394, %234
  %396 = call float @dx.op.binary.f32(i32 35, float %395, float 0.000000e+00)  ; FMax(a,b)
  %397 = call float @dx.op.binary.f32(i32 36, float %269, float %396)  ; FMin(a,b)
  %398 = fdiv fast float %383, %394
  %399 = call float @dx.op.binary.f32(i32 35, float %398, float 0.000000e+00)  ; FMax(a,b)
  %400 = call float @dx.op.binary.f32(i32 36, float %269, float %399)  ; FMin(a,b)
  %401 = call float @dx.op.binary.f32(i32 36, float %397, float %400)  ; FMin(a,b)
  %402 = call float @dx.op.binary.f32(i32 35, float %397, float %400)  ; FMax(a,b)
  br label %403

; <label>:403                                     ; preds = %388, %364
  %404 = phi float [ %402, %388 ], [ -1.000000e+00, %364 ]
  %405 = phi float [ %401, %388 ], [ -1.000000e+00, %364 ]
  %406 = phi i1 [ true, %388 ], [ false, %364 ]
  br i1 %406, label %407, label %413, !dx.controlflow.hints !67

; <label>:407                                     ; preds = %403
  %408 = call float @dx.op.binary.f32(i32 35, float %352, float %405)  ; FMax(a,b)
  %409 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %366
  store float %408, float* %409, align 4, !tbaa !51, !noalias !55
  %410 = call float @dx.op.binary.f32(i32 35, float %352, float %404)  ; FMax(a,b)
  %411 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %366
  store float %410, float* %411, align 4, !tbaa !51, !noalias !55
  %412 = add nsw i32 %365, 1
  br label %413

; <label>:413                                     ; preds = %407, %403
  %414 = phi i32 [ %412, %407 ], [ %365, %403 ]
  %415 = add nuw nsw i32 %366, 1
  %416 = icmp eq i32 %415, %221
  br i1 %416, label %417, label %364

; <label>:417                                     ; preds = %413
  %418 = load float, float* %358, align 4, !tbaa !51, !alias.scope !68, !noalias !71
  %419 = load float, float* %357, align 4, !tbaa !51, !alias.scope !74, !noalias !75
  %420 = load float, float* %356, align 4, !tbaa !51, !alias.scope !76, !noalias !77
  %421 = load float, float* %361, align 4, !tbaa !51, !alias.scope !78, !noalias !81
  %422 = load float, float* %360, align 4, !tbaa !51, !alias.scope !84, !noalias !85
  %423 = load float, float* %359, align 4, !tbaa !51, !alias.scope !86, !noalias !87
  br label %424

; <label>:424                                     ; preds = %417, %351
  %425 = phi float [ -1.000000e+00, %351 ], [ %423, %417 ]
  %426 = phi float [ -1.000000e+00, %351 ], [ %422, %417 ]
  %427 = phi float [ -1.000000e+00, %351 ], [ %421, %417 ]
  %428 = phi float [ -1.000000e+00, %351 ], [ %420, %417 ]
  %429 = phi float [ -1.000000e+00, %351 ], [ %419, %417 ]
  %430 = phi float [ -1.000000e+00, %351 ], [ %418, %417 ]
  %431 = phi i32 [ 0, %351 ], [ %414, %417 ]
  %432 = call float @dx.op.binary.f32(i32 36, float %429, float %430)  ; FMin(a,b)
  %433 = call float @dx.op.binary.f32(i32 36, float %428, float %432)  ; FMin(a,b)
  %434 = call float @dx.op.binary.f32(i32 35, float %428, float %429)  ; FMax(a,b)
  %435 = call float @dx.op.binary.f32(i32 36, float %434, float %430)  ; FMin(a,b)
  %436 = call float @dx.op.binary.f32(i32 36, float %428, float %429)  ; FMin(a,b)
  %437 = call float @dx.op.binary.f32(i32 35, float %436, float %435)  ; FMax(a,b)
  %438 = call float @dx.op.binary.f32(i32 35, float %429, float %430)  ; FMax(a,b)
  %439 = call float @dx.op.binary.f32(i32 35, float %428, float %438)  ; FMax(a,b)
  store float %433, float* %356, align 4, !tbaa !51, !alias.scope !76, !noalias !77
  store float %437, float* %357, align 4, !tbaa !51, !alias.scope !74, !noalias !75
  store float %439, float* %358, align 4, !tbaa !51, !alias.scope !68, !noalias !71
  %440 = call float @dx.op.binary.f32(i32 36, float %426, float %427)  ; FMin(a,b)
  %441 = call float @dx.op.binary.f32(i32 36, float %425, float %440)  ; FMin(a,b)
  %442 = call float @dx.op.binary.f32(i32 35, float %425, float %426)  ; FMax(a,b)
  %443 = call float @dx.op.binary.f32(i32 36, float %442, float %427)  ; FMin(a,b)
  %444 = call float @dx.op.binary.f32(i32 36, float %425, float %426)  ; FMin(a,b)
  %445 = call float @dx.op.binary.f32(i32 35, float %444, float %443)  ; FMax(a,b)
  %446 = call float @dx.op.binary.f32(i32 35, float %426, float %427)  ; FMax(a,b)
  %447 = call float @dx.op.binary.f32(i32 35, float %425, float %446)  ; FMax(a,b)
  store float %441, float* %359, align 4, !tbaa !51, !alias.scope !86, !noalias !87
  store float %445, float* %360, align 4, !tbaa !51, !alias.scope !84, !noalias !85
  store float %447, float* %361, align 4, !tbaa !51, !alias.scope !78, !noalias !81
  %448 = sub nsw i32 3, %431
  %449 = icmp sgt i32 %448, 2
  br i1 %449, label %450, label %488, !dx.controlflow.hints !88

; <label>:450                                     ; preds = %424
  %451 = icmp eq i32 %219, 0
  %452 = fsub fast float %269, %353
  %453 = select i1 %451, float %452, float %353
  %454 = extractvalue %dx.types.CBufRet.f32 %209, 0
  %455 = extractvalue %dx.types.CBufRet.f32 %209, 1
  %456 = extractvalue %dx.types.CBufRet.f32 %209, 2
  %457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %458 = extractvalue %dx.types.CBufRet.f32 %457, 0
  %459 = extractvalue %dx.types.CBufRet.f32 %457, 1
  %460 = extractvalue %dx.types.CBufRet.f32 %457, 2
  %461 = extractvalue %dx.types.CBufRet.f32 %457, 3
  %462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %463 = extractvalue %dx.types.CBufRet.f32 %462, 3
  %464 = call float @dx.op.binary.f32(i32 36, float %354, float %463)  ; FMin(a,b)
  %465 = fmul fast float %461, %453
  %466 = call float @dx.op.unary.f32(i32 7, float %465)  ; Saturate(value)
  %467 = fsub fast float %458, %454
  %468 = fsub fast float %459, %455
  %469 = fsub fast float %460, %456
  %470 = fmul fast float %466, %467
  %471 = fmul fast float %466, %468
  %472 = fmul fast float %466, %469
  %473 = fadd fast float %470, %454
  %474 = fadd fast float %471, %455
  %475 = fadd fast float %472, %456
  br i1 %102, label %570, label %476, !dx.controlflow.hints !48

; <label>:476                                     ; preds = %450
  %477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %478 = extractvalue %dx.types.CBufRet.f32 %477, 0
  %479 = extractvalue %dx.types.CBufRet.f32 %477, 1
  %480 = fadd fast float %479, %478
  %481 = call float @dx.op.unary.f32(i32 7, float %480)  ; Saturate(value)
  %482 = extractvalue %dx.types.CBufRet.f32 %477, 2
  %483 = extractvalue %dx.types.CBufRet.f32 %477, 3
  %484 = fadd fast float %483, %482
  %485 = call float @dx.op.unary.f32(i32 7, float %484)  ; Saturate(value)
  %486 = fmul fast float %481, %464
  %487 = fmul fast float %486, %485
  br label %570

; <label>:488                                     ; preds = %424
  %489 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %448
  %490 = load float, float* %489, align 4, !tbaa !51, !noalias !55
  %491 = fcmp fast olt float %490, %355
  %492 = icmp sgt i32 %431, 0
  %493 = and i1 %492, %491
  br i1 %493, label %494, label %531

; <label>:494                                     ; preds = %488
  br label %495

; <label>:495                                     ; preds = %524, %494
  %496 = phi float [ %525, %524 ], [ %353, %494 ]
  %497 = phi float [ %526, %524 ], [ %354, %494 ]
  %498 = phi float [ %506, %524 ], [ %490, %494 ]
  %499 = phi i32 [ %503, %524 ], [ %448, %494 ]
  %500 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %499
  %501 = load float, float* %500, align 4, !tbaa !51, !noalias !55
  %502 = icmp slt i32 %499, 2
  %503 = add nsw i32 %499, 1
  %504 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %503
  %505 = load float, float* %504, align 4, !tbaa !51, !noalias !55
  %506 = select i1 %502, float %505, float %269
  %507 = call float @dx.op.binary.f32(i32 36, float %506, float %501)  ; FMin(a,b)
  %508 = call float @dx.op.binary.f32(i32 36, float %355, float %507)  ; FMin(a,b)
  %509 = icmp eq i32 %219, 0
  %510 = fadd fast float %508, %498
  %511 = fmul fast float %510, %181
  %512 = fadd fast float %511, %213
  br i1 %509, label %518, label %513, !dx.controlflow.hints !89

; <label>:513                                     ; preds = %495
  %514 = fsub fast float %508, %498
  %515 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %514)  ; FMax(a,b)
  %516 = fmul fast float %515, %512
  %517 = fadd fast float %516, %497
  br label %524

; <label>:518                                     ; preds = %495
  %519 = fsub fast float %498, %508
  %520 = call float @dx.op.unary.f32(i32 6, float %519)  ; FAbs(value)
  %521 = fadd fast float %520, %496
  %522 = fmul fast float %520, %512
  %523 = fsub fast float %497, %522
  br label %524

; <label>:524                                     ; preds = %518, %513
  %525 = phi float [ %515, %513 ], [ %521, %518 ]
  %526 = phi float [ %517, %513 ], [ %523, %518 ]
  %527 = fcmp fast olt float %506, %355
  %528 = icmp slt i32 %503, 3
  %529 = and i1 %528, %527
  br i1 %529, label %495, label %530

; <label>:530                                     ; preds = %524
  br label %531

; <label>:531                                     ; preds = %530, %488
  %532 = phi float [ %353, %488 ], [ %525, %530 ]
  %533 = phi float [ %354, %488 ], [ %526, %530 ]
  %534 = fsub fast float %269, %532
  %535 = select i1 %271, float %532, float %534
  %536 = extractvalue %dx.types.CBufRet.f32 %209, 0
  %537 = extractvalue %dx.types.CBufRet.f32 %209, 1
  %538 = extractvalue %dx.types.CBufRet.f32 %209, 2
  %539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %540 = extractvalue %dx.types.CBufRet.f32 %539, 0
  %541 = extractvalue %dx.types.CBufRet.f32 %539, 1
  %542 = extractvalue %dx.types.CBufRet.f32 %539, 2
  %543 = extractvalue %dx.types.CBufRet.f32 %539, 3
  %544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %545 = extractvalue %dx.types.CBufRet.f32 %544, 3
  %546 = call float @dx.op.binary.f32(i32 36, float %533, float %545)  ; FMin(a,b)
  %547 = fmul fast float %543, %535
  %548 = call float @dx.op.unary.f32(i32 7, float %547)  ; Saturate(value)
  %549 = fsub fast float %540, %536
  %550 = fsub fast float %541, %537
  %551 = fsub fast float %542, %538
  %552 = fmul fast float %548, %549
  %553 = fmul fast float %548, %550
  %554 = fmul fast float %548, %551
  %555 = fadd fast float %552, %536
  %556 = fadd fast float %553, %537
  %557 = fadd fast float %554, %538
  br i1 %102, label %570, label %558, !dx.controlflow.hints !48

; <label>:558                                     ; preds = %531
  %559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %560 = extractvalue %dx.types.CBufRet.f32 %559, 0
  %561 = extractvalue %dx.types.CBufRet.f32 %559, 1
  %562 = fadd fast float %561, %560
  %563 = call float @dx.op.unary.f32(i32 7, float %562)  ; Saturate(value)
  %564 = extractvalue %dx.types.CBufRet.f32 %559, 2
  %565 = extractvalue %dx.types.CBufRet.f32 %559, 3
  %566 = fadd fast float %565, %564
  %567 = call float @dx.op.unary.f32(i32 7, float %566)  ; Saturate(value)
  %568 = fmul fast float %563, %546
  %569 = fmul fast float %568, %567
  br label %570

; <label>:570                                     ; preds = %558, %531, %476, %450, %317, %285, %267, %265
  %571 = phi float [ 0.000000e+00, %265 ], [ 0.000000e+00, %267 ], [ %294, %317 ], [ %294, %285 ], [ %453, %476 ], [ %453, %450 ], [ %535, %558 ], [ %535, %531 ]
  %572 = phi float [ 0.000000e+00, %265 ], [ 0.000000e+00, %267 ], [ %328, %317 ], [ %305, %285 ], [ %487, %476 ], [ %464, %450 ], [ %569, %558 ], [ %546, %531 ]
  %573 = phi float [ 0.000000e+00, %265 ], [ 0.000000e+00, %267 ], [ %314, %317 ], [ %314, %285 ], [ %473, %476 ], [ %473, %450 ], [ %555, %558 ], [ %555, %531 ]
  %574 = phi float [ 0.000000e+00, %265 ], [ 0.000000e+00, %267 ], [ %315, %317 ], [ %315, %285 ], [ %474, %476 ], [ %474, %450 ], [ %556, %558 ], [ %556, %531 ]
  %575 = phi float [ 0.000000e+00, %265 ], [ 0.000000e+00, %267 ], [ %316, %317 ], [ %316, %285 ], [ %475, %476 ], [ %475, %450 ], [ %557, %558 ], [ %557, %531 ]
  %576 = fmul fast float %205, %572
  %577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %578 = extractvalue %dx.types.CBufRet.f32 %577, 2
  %579 = fsub fast float %215, %578
  %580 = fcmp fast olt float %576, -2.000000e+01
  %581 = call float @dx.op.unary.f32(i32 21, float %576)  ; Exp(value)
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 2
  %584 = extractvalue %dx.types.CBufRet.f32 %582, 3
  %585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %586 = extractvalue %dx.types.CBufRet.f32 %585, 2
  %587 = fmul fast float %584, %579
  %588 = call float @dx.op.unary.f32(i32 7, float %587)  ; Saturate(value)
  %589 = fsub fast float 1.000000e+00, %588
  %590 = fmul fast float %181, 5.000000e-01
  %591 = fadd fast float %590, 5.000000e-01
  %592 = call float @dx.op.unary.f32(i32 7, float %591)  ; Saturate(value)
  %593 = fsub fast float 1.000000e+00, %592
  %594 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %589)  ; FMax(a,b)
  %595 = fdiv fast float %593, %594
  %596 = fsub fast float %579, %144
  %597 = call float @dx.op.unary.f32(i32 6, float %596)  ; FAbs(value)
  %598 = fmul fast float %597, %583
  %599 = call float @dx.op.unary.f32(i32 7, float %595)  ; Saturate(value)
  %600 = fsub fast float 1.000000e+00, %598
  %601 = fmul fast float %600, %599
  %602 = fadd fast float %601, %598
  %603 = fmul fast float %586, %579
  %604 = call float @dx.op.unary.f32(i32 7, float %603)  ; Saturate(value)
  %605 = fsub fast float 1.000000e+00, %602
  %606 = fmul fast float %605, %604
  %607 = fadd fast float %606, %602
  %608 = call float @dx.op.unary.f32(i32 7, float %607)  ; Saturate(value)
  %609 = fadd fast float %581, -1.000000e+00
  %610 = select i1 %580, float -1.000000e+00, float %609
  %611 = fmul fast float %608, %610
  %612 = fadd fast float %611, 1.000000e+00
  %613 = fsub fast float -0.000000e+00, %611
  %614 = fmul fast float %573, %613
  %615 = fmul fast float %574, %613
  %616 = fmul fast float %575, %613
  br label %617

; <label>:617                                     ; preds = %570, %195
  %618 = phi float [ %571, %570 ], [ 0.000000e+00, %195 ]
  %619 = phi float [ %612, %570 ], [ 1.000000e+00, %195 ]
  %620 = phi float [ %614, %570 ], [ 0.000000e+00, %195 ]
  %621 = phi float [ %615, %570 ], [ 0.000000e+00, %195 ]
  %622 = phi float [ %616, %570 ], [ 0.000000e+00, %195 ]
  %623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %624 = extractvalue %dx.types.CBufRet.f32 %623, 1
  %625 = fsub fast float 1.000000e+00, %619
  %626 = fmul fast float %625, %196
  %627 = fmul fast float %626, %624
  %628 = fsub fast float %196, %627
  br i1 %174, label %629, label %661, !dx.controlflow.hints !90

; <label>:629                                     ; preds = %617
  %630 = fmul fast float %199, %171
  %631 = fadd fast float %630, %172
  %632 = call float @dx.op.unary.f32(i32 7, float %631)  ; Saturate(value)
  %633 = fmul fast float %153, %628
  %634 = fsub fast float -0.000000e+00, %633
  %635 = fmul fast float %154, %628
  %636 = fsub fast float -0.000000e+00, %635
  %637 = call float @dx.op.unary.f32(i32 21, float %634)  ; Exp(value)
  %638 = call float @dx.op.unary.f32(i32 21, float %636)  ; Exp(value)
  %639 = call float @dx.op.binary.f32(i32 35, float %161, float %637)  ; FMax(a,b)
  %640 = call float @dx.op.binary.f32(i32 35, float %161, float %638)  ; FMax(a,b)
  %641 = fsub fast float %640, %639
  %642 = fmul fast float %641, %632
  %643 = fadd fast float %642, %639
  %644 = call float @dx.op.unary.f32(i32 7, float %643)  ; Saturate(value)
  %645 = fmul fast float %197, %175
  %646 = fsub fast float 1.000000e+00, %645
  %647 = select i1 %102, float %646, float %644
  %648 = fsub fast float %158, %163
  %649 = fsub fast float %159, %164
  %650 = fsub fast float %160, %165
  %651 = fmul fast float %632, %648
  %652 = fmul fast float %632, %649
  %653 = fmul fast float %632, %650
  %654 = fadd fast float %651, %163
  %655 = fadd fast float %652, %164
  %656 = fadd fast float %653, %165
  %657 = fsub fast float 1.000000e+00, %647
  %658 = fmul fast float %657, %654
  %659 = fmul fast float %657, %655
  %660 = fmul fast float %657, %656
  br label %732

; <label>:661                                     ; preds = %617
  %662 = fmul fast float %628, %170
  %663 = call float @dx.op.unary.f32(i32 7, float %662)  ; Saturate(value)
  %664 = fsub fast float 2.000000e+00, %663
  %665 = fmul fast float %663, 9.921875e-01
  %666 = fmul fast float %665, %664
  %667 = fadd fast float %666, 3.906250e-03
  %668 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %667, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %669 = extractvalue %dx.types.ResRet.f32 %668, 0
  %670 = fsub fast float %663, %669
  %671 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %670)  ; FMax(a,b)
  %672 = fmul fast float %198, %156
  %673 = call float @dx.op.unary.f32(i32 6, float %672)  ; FAbs(value)
  %674 = fcmp fast ogt float %673, 0x3EB0C6F7A0000000
  br i1 %674, label %675, label %681, !dx.controlflow.hints !91

; <label>:675                                     ; preds = %661
  %676 = fmul fast float %672, 0xBFF7154760000000
  %677 = call float @dx.op.unary.f32(i32 21, float %676)  ; Exp(value)
  %678 = fsub fast float 1.000000e+00, %677
  %679 = fdiv fast float %678, %672
  %680 = fmul fast float %679, %166
  br label %681

; <label>:681                                     ; preds = %675, %661
  %682 = phi float [ %680, %675 ], [ %166, %661 ]
  %683 = fadd fast float %682, %168
  %684 = fmul fast float %683, %671
  %685 = fmul fast float %153, %684
  %686 = fsub fast float -0.000000e+00, %685
  %687 = fmul fast float %154, %684
  %688 = fsub fast float -0.000000e+00, %687
  %689 = fmul fast float %155, %684
  %690 = fsub fast float -0.000000e+00, %689
  %691 = call float @dx.op.unary.f32(i32 21, float %686)  ; Exp(value)
  %692 = call float @dx.op.unary.f32(i32 21, float %688)  ; Exp(value)
  %693 = call float @dx.op.unary.f32(i32 21, float %690)  ; Exp(value)
  br i1 %102, label %694, label %702, !dx.controlflow.hints !92

; <label>:694                                     ; preds = %681
  %695 = fmul fast float %691, %197
  %696 = fmul fast float %692, %197
  %697 = fmul fast float %693, %197
  %698 = fsub fast float 1.000000e+00, %197
  %699 = fadd fast float %695, %698
  %700 = fadd fast float %696, %698
  %701 = fadd fast float %697, %698
  br label %702

; <label>:702                                     ; preds = %694, %681
  %703 = phi float [ %699, %694 ], [ %691, %681 ]
  %704 = phi float [ %700, %694 ], [ %692, %681 ]
  %705 = phi float [ %701, %694 ], [ %693, %681 ]
  %706 = fmul fast float %199, %199
  %707 = fadd fast float %706, 1.000000e+00
  %708 = fmul fast float %707, 0x3FAE8EC8A0000000
  %709 = fmul fast float %708, %163
  %710 = fmul fast float %708, %164
  %711 = fmul fast float %708, %165
  %712 = fmul fast float %199, %161
  %713 = fsub fast float 1.000000e+00, %712
  %714 = fmul fast float %161, %161
  %715 = fsub fast float 1.000000e+00, %714
  %716 = fmul fast float %715, 0x3FB45F3060000000
  %717 = fmul fast float %713, %713
  %718 = fdiv fast float 1.000000e+00, %717
  %719 = fmul fast float %716, %718
  %720 = fmul fast float %719, %158
  %721 = fmul fast float %719, %159
  %722 = fmul fast float %719, %160
  %723 = fadd fast float %720, %709
  %724 = fadd fast float %721, %710
  %725 = fadd fast float %722, %711
  %726 = fsub fast float 1.000000e+00, %703
  %727 = fsub fast float 1.000000e+00, %704
  %728 = fsub fast float 1.000000e+00, %705
  %729 = fmul fast float %723, %726
  %730 = fmul fast float %724, %727
  %731 = fmul fast float %725, %728
  br label %732

; <label>:732                                     ; preds = %702, %629
  %733 = phi float [ %658, %629 ], [ %729, %702 ]
  %734 = phi float [ %659, %629 ], [ %730, %702 ]
  %735 = phi float [ %660, %629 ], [ %731, %702 ]
  %736 = phi float [ %647, %629 ], [ %703, %702 ]
  %737 = phi float [ %647, %629 ], [ %704, %702 ]
  %738 = phi float [ %647, %629 ], [ %705, %702 ]
  br i1 %207, label %739, label %937, !dx.controlflow.hints !93

; <label>:739                                     ; preds = %732
  %740 = extractvalue %dx.types.CBufRet.f32 %623, 0
  %741 = fmul fast float %740, %625
  %742 = fsub fast float %620, %733
  %743 = fsub fast float %621, %734
  %744 = fsub fast float %622, %735
  %745 = fmul fast float %741, %742
  %746 = fmul fast float %741, %743
  %747 = fmul fast float %741, %744
  %748 = fadd fast float %745, %733
  %749 = fadd fast float %746, %734
  %750 = fadd fast float %747, %735
  %751 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %736)  ; FMax(a,b)
  %752 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %737)  ; FMax(a,b)
  %753 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %738)  ; FMax(a,b)
  %754 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %619)  ; FMax(a,b)
  %755 = call float @dx.op.binary.f32(i32 35, float %618, float %628)  ; FMax(a,b)
  %756 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %755)  ; FMax(a,b)
  %757 = fdiv fast float %618, %756
  %758 = call float @dx.op.unary.f32(i32 7, float %757)  ; Saturate(value)
  %759 = fdiv fast float %628, %756
  %760 = call float @dx.op.unary.f32(i32 7, float %759)  ; Saturate(value)
  %761 = fcmp fast une float %754, 1.000000e+00
  br i1 %761, label %762, label %775, !dx.controlflow.hints !94

; <label>:762                                     ; preds = %739
  %763 = call float @dx.op.unary.f32(i32 23, float %754)  ; Log(value)
  %764 = fmul fast float %763, 0x3FE62E4300000000
  %765 = fmul fast float %620, %764
  %766 = fsub fast float -0.000000e+00, %765
  %767 = fmul fast float %621, %764
  %768 = fsub fast float -0.000000e+00, %767
  %769 = fmul fast float %622, %764
  %770 = fsub fast float -0.000000e+00, %769
  %771 = fsub fast float 1.000000e+00, %754
  %772 = fdiv fast float %766, %771
  %773 = fdiv fast float %768, %771
  %774 = fdiv fast float %770, %771
  br label %775

; <label>:775                                     ; preds = %762, %739
  %776 = phi float [ %772, %762 ], [ %620, %739 ]
  %777 = phi float [ %773, %762 ], [ %621, %739 ]
  %778 = phi float [ %774, %762 ], [ %622, %739 ]
  %779 = phi float [ %764, %762 ], [ 0.000000e+00, %739 ]
  %780 = fcmp fast une float %751, 1.000000e+00
  br i1 %780, label %781, label %788, !dx.controlflow.hints !95

; <label>:781                                     ; preds = %775
  %782 = call float @dx.op.unary.f32(i32 23, float %751)  ; Log(value)
  %783 = fmul fast float %782, 0x3FE62E4300000000
  %784 = fmul fast float %748, %783
  %785 = fsub fast float -0.000000e+00, %784
  %786 = fsub fast float 1.000000e+00, %751
  %787 = fdiv fast float %785, %786
  br label %788

; <label>:788                                     ; preds = %781, %775
  %789 = phi float [ %787, %781 ], [ %748, %775 ]
  %790 = phi float [ %783, %781 ], [ 0.000000e+00, %775 ]
  %791 = fcmp fast une float %752, 1.000000e+00
  br i1 %791, label %792, label %799, !dx.controlflow.hints !95

; <label>:792                                     ; preds = %788
  %793 = call float @dx.op.unary.f32(i32 23, float %752)  ; Log(value)
  %794 = fmul fast float %793, 0x3FE62E4300000000
  %795 = fmul fast float %749, %794
  %796 = fsub fast float -0.000000e+00, %795
  %797 = fsub fast float 1.000000e+00, %752
  %798 = fdiv fast float %796, %797
  br label %799

; <label>:799                                     ; preds = %792, %788
  %800 = phi float [ %798, %792 ], [ %749, %788 ]
  %801 = phi float [ %794, %792 ], [ 0.000000e+00, %788 ]
  %802 = fcmp fast une float %753, 1.000000e+00
  br i1 %802, label %803, label %810, !dx.controlflow.hints !95

; <label>:803                                     ; preds = %799
  %804 = call float @dx.op.unary.f32(i32 23, float %753)  ; Log(value)
  %805 = fmul fast float %804, 0x3FE62E4300000000
  %806 = fmul fast float %750, %805
  %807 = fsub fast float -0.000000e+00, %806
  %808 = fsub fast float 1.000000e+00, %753
  %809 = fdiv fast float %807, %808
  br label %810

; <label>:810                                     ; preds = %803, %799
  %811 = phi float [ %809, %803 ], [ %750, %799 ]
  %812 = phi float [ %805, %803 ], [ 0.000000e+00, %799 ]
  %813 = fmul fast float %776, %760
  %814 = fmul fast float %777, %760
  %815 = fmul fast float %778, %760
  %816 = fmul fast float %779, %760
  %817 = fmul fast float %789, %758
  %818 = fmul fast float %800, %758
  %819 = fmul fast float %811, %758
  %820 = fmul fast float %790, %758
  %821 = fmul fast float %801, %758
  %822 = fmul fast float %812, %758
  %823 = fadd fast float %817, %813
  %824 = fadd fast float %818, %814
  %825 = fadd fast float %819, %815
  %826 = fadd fast float %820, %816
  %827 = fadd fast float %821, %816
  %828 = fadd fast float %822, %816
  %829 = fcmp fast une float %826, 0.000000e+00
  br i1 %829, label %830, label %837, !dx.controlflow.hints !96

; <label>:830                                     ; preds = %810
  %831 = fmul fast float %826, 0x3FF7154760000000
  %832 = call float @dx.op.unary.f32(i32 21, float %831)  ; Exp(value)
  %833 = fsub fast float 1.000000e+00, %832
  %834 = fmul fast float %823, %833
  %835 = fsub fast float -0.000000e+00, %834
  %836 = fdiv fast float %835, %826
  br label %837

; <label>:837                                     ; preds = %830, %810
  %838 = phi float [ %832, %830 ], [ 1.000000e+00, %810 ]
  %839 = phi float [ %836, %830 ], [ %823, %810 ]
  %840 = fcmp fast une float %827, 0.000000e+00
  br i1 %840, label %841, label %848, !dx.controlflow.hints !96

; <label>:841                                     ; preds = %837
  %842 = fmul fast float %827, 0x3FF7154760000000
  %843 = call float @dx.op.unary.f32(i32 21, float %842)  ; Exp(value)
  %844 = fsub fast float 1.000000e+00, %843
  %845 = fmul fast float %824, %844
  %846 = fsub fast float -0.000000e+00, %845
  %847 = fdiv fast float %846, %827
  br label %848

; <label>:848                                     ; preds = %841, %837
  %849 = phi float [ %843, %841 ], [ 1.000000e+00, %837 ]
  %850 = phi float [ %847, %841 ], [ %824, %837 ]
  %851 = fcmp fast une float %828, 0.000000e+00
  br i1 %851, label %852, label %859, !dx.controlflow.hints !96

; <label>:852                                     ; preds = %848
  %853 = fmul fast float %828, 0x3FF7154760000000
  %854 = call float @dx.op.unary.f32(i32 21, float %853)  ; Exp(value)
  %855 = fsub fast float 1.000000e+00, %854
  %856 = fmul fast float %825, %855
  %857 = fsub fast float -0.000000e+00, %856
  %858 = fdiv fast float %857, %828
  br label %859

; <label>:859                                     ; preds = %852, %848
  %860 = phi float [ %854, %852 ], [ 1.000000e+00, %848 ]
  %861 = phi float [ %858, %852 ], [ %825, %848 ]
  %862 = fcmp fast ogt float %758, %760
  br i1 %862, label %863, label %883, !dx.controlflow.hints !97

; <label>:863                                     ; preds = %859
  %864 = fsub fast float 1.000000e+00, %760
  %865 = fmul fast float %776, %864
  %866 = fmul fast float %777, %864
  %867 = fmul fast float %778, %864
  %868 = fmul fast float %779, %864
  %869 = fcmp fast une float %868, 0.000000e+00
  br i1 %869, label %870, label %921, !dx.controlflow.hints !98

; <label>:870                                     ; preds = %863
  %871 = fmul fast float %868, 0x3FF7154760000000
  %872 = call float @dx.op.unary.f32(i32 21, float %871)  ; Exp(value)
  %873 = fsub fast float 1.000000e+00, %872
  %874 = fmul fast float %865, %873
  %875 = fsub fast float -0.000000e+00, %874
  %876 = fmul fast float %866, %873
  %877 = fsub fast float -0.000000e+00, %876
  %878 = fmul fast float %867, %873
  %879 = fsub fast float -0.000000e+00, %878
  %880 = fdiv fast float %875, %868
  %881 = fdiv fast float %877, %868
  %882 = fdiv fast float %879, %868
  br label %921

; <label>:883                                     ; preds = %859
  %884 = fsub fast float 1.000000e+00, %758
  %885 = fmul fast float %789, %884
  %886 = fmul fast float %800, %884
  %887 = fmul fast float %811, %884
  %888 = fmul fast float %790, %884
  %889 = fmul fast float %801, %884
  %890 = fmul fast float %812, %884
  %891 = fcmp fast une float %888, 0.000000e+00
  br i1 %891, label %892, label %899, !dx.controlflow.hints !96

; <label>:892                                     ; preds = %883
  %893 = fmul fast float %888, 0x3FF7154760000000
  %894 = call float @dx.op.unary.f32(i32 21, float %893)  ; Exp(value)
  %895 = fsub fast float 1.000000e+00, %894
  %896 = fmul fast float %885, %895
  %897 = fsub fast float -0.000000e+00, %896
  %898 = fdiv fast float %897, %888
  br label %899

; <label>:899                                     ; preds = %892, %883
  %900 = phi float [ %898, %892 ], [ %885, %883 ]
  %901 = phi float [ %894, %892 ], [ 1.000000e+00, %883 ]
  %902 = fcmp fast une float %889, 0.000000e+00
  br i1 %902, label %903, label %910, !dx.controlflow.hints !96

; <label>:903                                     ; preds = %899
  %904 = fmul fast float %889, 0x3FF7154760000000
  %905 = call float @dx.op.unary.f32(i32 21, float %904)  ; Exp(value)
  %906 = fsub fast float 1.000000e+00, %905
  %907 = fmul fast float %886, %906
  %908 = fsub fast float -0.000000e+00, %907
  %909 = fdiv fast float %908, %889
  br label %910

; <label>:910                                     ; preds = %903, %899
  %911 = phi float [ %909, %903 ], [ %886, %899 ]
  %912 = phi float [ %905, %903 ], [ 1.000000e+00, %899 ]
  %913 = fcmp fast une float %890, 0.000000e+00
  br i1 %913, label %914, label %921, !dx.controlflow.hints !96

; <label>:914                                     ; preds = %910
  %915 = fmul fast float %890, 0x3FF7154760000000
  %916 = call float @dx.op.unary.f32(i32 21, float %915)  ; Exp(value)
  %917 = fsub fast float 1.000000e+00, %916
  %918 = fmul fast float %887, %917
  %919 = fsub fast float -0.000000e+00, %918
  %920 = fdiv fast float %919, %890
  br label %921

; <label>:921                                     ; preds = %914, %910, %870, %863
  %922 = phi float [ %920, %914 ], [ %882, %870 ], [ %867, %863 ], [ %887, %910 ]
  %923 = phi float [ %911, %914 ], [ %881, %870 ], [ %866, %863 ], [ %911, %910 ]
  %924 = phi float [ %900, %914 ], [ %880, %870 ], [ %865, %863 ], [ %900, %910 ]
  %925 = phi float [ %916, %914 ], [ %872, %870 ], [ 1.000000e+00, %863 ], [ 1.000000e+00, %910 ]
  %926 = phi float [ %912, %914 ], [ %872, %870 ], [ 1.000000e+00, %863 ], [ %912, %910 ]
  %927 = phi float [ %901, %914 ], [ %872, %870 ], [ 1.000000e+00, %863 ], [ %901, %910 ]
  %928 = fmul fast float %927, %839
  %929 = fmul fast float %926, %850
  %930 = fmul fast float %925, %861
  %931 = fadd fast float %928, %924
  %932 = fadd fast float %929, %923
  %933 = fadd fast float %930, %922
  %934 = fmul fast float %927, %838
  %935 = fmul fast float %926, %849
  %936 = fmul fast float %925, %860
  br label %937

; <label>:937                                     ; preds = %921, %732
  %938 = phi float [ %936, %921 ], [ %738, %732 ]
  %939 = phi float [ %935, %921 ], [ %737, %732 ]
  %940 = phi float [ %934, %921 ], [ %736, %732 ]
  %941 = phi float [ %933, %921 ], [ %735, %732 ]
  %942 = phi float [ %932, %921 ], [ %734, %732 ]
  %943 = phi float [ %931, %921 ], [ %733, %732 ]
  %944 = fmul fast float %52, %103
  %945 = fmul fast float %53, %104
  %946 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %22, float %944, float %945, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %947 = extractvalue %dx.types.ResRet.f32 %946, 0
  %948 = extractvalue %dx.types.ResRet.f32 %946, 1
  %949 = extractvalue %dx.types.ResRet.f32 %946, 2
  %950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %951 = extractvalue %dx.types.CBufRet.f32 %950, 1
  %952 = fmul fast float %951, %947
  %953 = fmul fast float %951, %948
  %954 = fmul fast float %951, %949
  %955 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %22, float %944, float %945, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %956 = extractvalue %dx.types.ResRet.f32 %955, 0
  %957 = fmul fast float %956, %940
  %958 = fmul fast float %956, %939
  %959 = fmul fast float %956, %938
  %960 = fmul fast float %956, %943
  %961 = fmul fast float %956, %942
  %962 = fmul fast float %956, %941
  %963 = fadd fast float %960, %952
  %964 = fadd fast float %961, %953
  %965 = fadd fast float %962, %954
  br label %966

; <label>:966                                     ; preds = %937, %0
  %967 = phi float [ %963, %937 ], [ 0.000000e+00, %0 ]
  %968 = phi float [ %964, %937 ], [ 0.000000e+00, %0 ]
  %969 = phi float [ %965, %937 ], [ 0.000000e+00, %0 ]
  %970 = phi float [ %957, %937 ], [ 1.000000e+00, %0 ]
  %971 = phi float [ %958, %937 ], [ 1.000000e+00, %0 ]
  %972 = phi float [ %959, %937 ], [ 1.000000e+00, %0 ]
  %973 = phi float [ %108, %937 ], [ %69, %0 ]
  %974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %975 = extractvalue %dx.types.CBufRet.f32 %974, 2
  %976 = extractvalue %dx.types.CBufRet.f32 %974, 3
  %977 = fmul fast float %975, %103
  %978 = fmul fast float %976, %104
  %979 = call float @dx.op.unary.f32(i32 7, float %977)  ; Saturate(value)
  %980 = call float @dx.op.unary.f32(i32 7, float %978)  ; Saturate(value)
  %981 = select i1 %100, i32 2, i32 0
  %982 = or i32 %981, 1
  %983 = uitofp i32 %982 to float
  %984 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %22, float %979, float %980, float %983, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %985 = extractvalue %dx.types.ResRet.f32 %984, 0
  %986 = extractvalue %dx.types.ResRet.f32 %984, 1
  %987 = extractvalue %dx.types.ResRet.f32 %984, 2
  %988 = extractvalue %dx.types.ResRet.f32 %984, 3
  %989 = add nuw nsw i32 %981, 2
  %990 = uitofp i32 %989 to float
  %991 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %22, float %979, float %980, float %990, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %992 = extractvalue %dx.types.ResRet.f32 %991, 0
  %993 = extractvalue %dx.types.ResRet.f32 %991, 1
  %994 = extractvalue %dx.types.ResRet.f32 %991, 2
  %995 = extractvalue %dx.types.ResRet.f32 %991, 3
  %996 = call float @dx.op.binary.f32(i32 35, float %986, float %987)  ; FMax(a,b)
  %997 = call float @dx.op.binary.f32(i32 35, float %985, float %996)  ; FMax(a,b)
  %998 = call float @dx.op.binary.f32(i32 35, float %997, float %988)  ; FMax(a,b)
  %999 = call float @dx.op.binary.f32(i32 36, float %993, float %994)  ; FMin(a,b)
  %1000 = call float @dx.op.binary.f32(i32 36, float %992, float %999)  ; FMin(a,b)
  %1001 = call float @dx.op.binary.f32(i32 36, float %1000, float %995)  ; FMin(a,b)
  %1002 = fmul fast float %998, 2.550000e+02
  %1003 = fadd fast float %1002, 0x3F70101020000000
  %1004 = fptoui float %1003 to i32
  %1005 = fmul fast float %1001, 2.550000e+02
  %1006 = fadd fast float %1005, 0x3F70101020000000
  %1007 = fptoui float %1006 to i32
  %1008 = icmp ult i32 %1004, %1007
  br i1 %1008, label %1009, label %1177, !dx.controlflow.hints !99

; <label>:1009                                    ; preds = %966
  %1010 = fadd fast float %973, -4.000000e+00
  %1011 = call float @dx.op.binary.f32(i32 35, float %1010, float 0.000000e+00)  ; FMax(a,b)
  %1012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1013 = extractvalue %dx.types.CBufRet.f32 %1012, 0
  %1014 = fadd fast float %1013, %1011
  %1015 = extractvalue %dx.types.CBufRet.f32 %1012, 2
  %1016 = fmul fast float %1014, %1015
  %1017 = call float @dx.op.unary.f32(i32 23, float %1016)  ; Log(value)
  %1018 = extractvalue %dx.types.CBufRet.f32 %1012, 3
  %1019 = fmul fast float %1018, %1017
  %1020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1021 = extractvalue %dx.types.CBufRet.f32 %1020, 2
  %1022 = fmul fast float %1019, %1021
  %1023 = call float @dx.op.unary.f32(i32 7, float %1022)  ; Saturate(value)
  %1024 = select i1 %102, float 1.000000e+00, float %1023
  %1025 = uitofp i32 %1004 to float
  %1026 = uitofp i32 %1007 to float
  %1027 = fadd fast float %1025, 5.000000e-01
  %1028 = fadd fast float %1026, 5.000000e-01
  %1029 = fmul fast float %1021, %1027
  %1030 = fmul fast float %1021, %1028
  %1031 = fadd fast float %1029, 0x3F0FFB4800000000
  %1032 = fadd fast float %1030, 0xBF0FFB4800000000
  %1033 = call float @dx.op.binary.f32(i32 35, float %1024, float %1031)  ; FMax(a,b)
  %1034 = call float @dx.op.binary.f32(i32 36, float %1033, float %1032)  ; FMin(a,b)
  %1035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1036 = extractvalue %dx.types.CBufRet.f32 %1035, 1
  %1037 = extractvalue %dx.types.CBufRet.f32 %1035, 2
  %1038 = extractvalue %dx.types.CBufRet.f32 %1035, 0
  %1039 = select i1 %100, float %1038, float 0.000000e+00
  %1040 = fmul fast float %1036, %1034
  %1041 = fadd fast float %1039, %1040
  %1042 = fadd fast float %1039, %1037
  %1043 = fsub fast float %1036, %1037
  %1044 = fadd fast float %1043, %1039
  %1045 = call float @dx.op.binary.f32(i32 35, float %1041, float %1042)  ; FMax(a,b)
  %1046 = call float @dx.op.binary.f32(i32 36, float %1045, float %1044)  ; FMin(a,b)
  %1047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %21, float %979, float %980, float %1046, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1048 = extractvalue %dx.types.ResRet.f32 %1047, 0
  %1049 = extractvalue %dx.types.ResRet.f32 %1047, 1
  %1050 = extractvalue %dx.types.ResRet.f32 %1047, 2
  %1051 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %1052 = extractvalue %dx.types.CBufRet.i32 %1051, 0
  %1053 = extractvalue %dx.types.CBufRet.i32 %1051, 1
  %1054 = uitofp i32 %1052 to float
  %1055 = uitofp i32 %1053 to float
  %1056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %1057 = extractvalue %dx.types.CBufRet.f32 %1056, 0
  %1058 = extractvalue %dx.types.CBufRet.f32 %1056, 1
  %1059 = fmul fast float %1054, %979
  %1060 = fmul fast float %1055, %980
  %1061 = fadd fast float %1059, -5.000000e-01
  %1062 = fadd fast float %1060, -5.000000e-01
  %1063 = call float @dx.op.unary.f32(i32 22, float %1061)  ; Frc(value)
  %1064 = call float @dx.op.unary.f32(i32 22, float %1062)  ; Frc(value)
  %1065 = fmul fast float %1063, %1063
  %1066 = fmul fast float %1065, %1063
  %1067 = fsub fast float 3.000000e+00, %1063
  %1068 = fmul fast float %1065, %1067
  %1069 = fmul fast float %1063, 3.000000e+00
  %1070 = fmul fast float %1066, 3.000000e+00
  %1071 = fmul fast float %1065, 6.000000e+00
  %1072 = fsub fast float %1070, %1071
  %1073 = fadd fast float %1072, 4.000000e+00
  %1074 = fmul fast float %1073, 0x3FC5555560000000
  %1075 = fmul fast float %1066, -3.000000e+00
  %1076 = fadd fast float %1065, %1063
  %1077 = fmul fast float %1076, 3.000000e+00
  %1078 = fadd fast float %1075, 1.000000e+00
  %1079 = fadd fast float %1078, %1077
  %1080 = fmul fast float %1066, 0x3FC5555560000000
  %1081 = fmul fast float %1064, %1064
  %1082 = fmul fast float %1081, %1064
  %1083 = fsub fast float 3.000000e+00, %1064
  %1084 = fmul fast float %1081, %1083
  %1085 = fmul fast float %1064, 3.000000e+00
  %1086 = fmul fast float %1082, 3.000000e+00
  %1087 = fmul fast float %1081, 6.000000e+00
  %1088 = fsub fast float %1086, %1087
  %1089 = fadd fast float %1088, 4.000000e+00
  %1090 = fmul fast float %1089, 0x3FC5555560000000
  %1091 = fmul fast float %1082, -3.000000e+00
  %1092 = fadd fast float %1081, %1064
  %1093 = fmul fast float %1092, 3.000000e+00
  %1094 = fadd fast float %1091, 1.000000e+00
  %1095 = fadd fast float %1094, %1093
  %1096 = fmul fast float %1082, 0x3FC5555560000000
  %1097 = fadd fast float %1063, 1.000000e+00
  %1098 = fsub fast float 1.000000e+00, %1069
  %1099 = fadd fast float %1098, %1068
  %1100 = fadd fast float %1099, %1073
  %1101 = fmul fast float %1100, 0x3FC5555560000000
  %1102 = fdiv fast float %1074, %1101
  %1103 = fsub fast float %1097, %1102
  %1104 = fsub fast float 1.000000e+00, %1063
  %1105 = fadd fast float %1079, %1066
  %1106 = fmul fast float %1105, 0x3FC5555560000000
  %1107 = fdiv fast float %1080, %1106
  %1108 = fadd fast float %1104, %1107
  %1109 = fadd fast float %1064, 1.000000e+00
  %1110 = fsub fast float 1.000000e+00, %1085
  %1111 = fadd fast float %1110, %1084
  %1112 = fadd fast float %1111, %1089
  %1113 = fmul fast float %1112, 0x3FC5555560000000
  %1114 = fdiv fast float %1090, %1113
  %1115 = fsub fast float %1109, %1114
  %1116 = fsub fast float 1.000000e+00, %1064
  %1117 = fadd fast float %1095, %1082
  %1118 = fmul fast float %1117, 0x3FC5555560000000
  %1119 = fdiv fast float %1096, %1118
  %1120 = fadd fast float %1119, %1116
  %1121 = fmul fast float %1103, %1057
  %1122 = fsub fast float %979, %1121
  %1123 = fmul fast float %1108, %1057
  %1124 = fadd fast float %1123, %979
  %1125 = fmul fast float %1120, %1058
  %1126 = fadd fast float %1125, %980
  %1127 = fmul fast float %1115, %1058
  %1128 = fsub fast float %980, %1127
  %1129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %21, float %1122, float %1128, float %1046, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1130 = extractvalue %dx.types.ResRet.f32 %1129, 0
  %1131 = extractvalue %dx.types.ResRet.f32 %1129, 1
  %1132 = extractvalue %dx.types.ResRet.f32 %1129, 2
  %1133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %21, float %1124, float %1128, float %1046, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1134 = extractvalue %dx.types.ResRet.f32 %1133, 0
  %1135 = extractvalue %dx.types.ResRet.f32 %1133, 1
  %1136 = extractvalue %dx.types.ResRet.f32 %1133, 2
  %1137 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %21, float %1122, float %1126, float %1046, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1138 = extractvalue %dx.types.ResRet.f32 %1137, 0
  %1139 = extractvalue %dx.types.ResRet.f32 %1137, 1
  %1140 = extractvalue %dx.types.ResRet.f32 %1137, 2
  %1141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %21, float %1124, float %1126, float %1046, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1142 = extractvalue %dx.types.ResRet.f32 %1141, 0
  %1143 = extractvalue %dx.types.ResRet.f32 %1141, 1
  %1144 = extractvalue %dx.types.ResRet.f32 %1141, 2
  %1145 = fsub fast float %1138, %1130
  %1146 = fsub fast float %1139, %1131
  %1147 = fsub fast float %1140, %1132
  %1148 = fmul fast float %1145, %1118
  %1149 = fmul fast float %1146, %1118
  %1150 = fmul fast float %1147, %1118
  %1151 = fadd fast float %1148, %1130
  %1152 = fadd fast float %1149, %1131
  %1153 = fadd fast float %1150, %1132
  %1154 = fsub fast float %1142, %1134
  %1155 = fsub fast float %1143, %1135
  %1156 = fsub fast float %1144, %1136
  %1157 = fmul fast float %1154, %1118
  %1158 = fmul fast float %1155, %1118
  %1159 = fmul fast float %1156, %1118
  %1160 = fsub fast float %1134, %1151
  %1161 = fadd fast float %1160, %1157
  %1162 = fsub fast float %1135, %1152
  %1163 = fadd fast float %1162, %1158
  %1164 = fsub fast float %1136, %1153
  %1165 = fadd fast float %1164, %1159
  %1166 = fmul fast float %1161, %1106
  %1167 = fmul fast float %1163, %1106
  %1168 = fmul fast float %1165, %1106
  %1169 = fadd fast float %1166, %1151
  %1170 = fadd fast float %1167, %1152
  %1171 = fadd fast float %1168, %1153
  %1172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1173 = extractvalue %dx.types.CBufRet.f32 %1172, 1
  %1174 = fmul fast float %1169, %1173
  %1175 = fmul fast float %1170, %1173
  %1176 = fmul fast float %1171, %1173
  br label %1177

; <label>:1177                                    ; preds = %1009, %966
  %1178 = phi float [ %1048, %1009 ], [ 1.000000e+00, %966 ]
  %1179 = phi float [ %1049, %1009 ], [ 1.000000e+00, %966 ]
  %1180 = phi float [ %1050, %1009 ], [ 1.000000e+00, %966 ]
  %1181 = phi float [ %1174, %1009 ], [ 0.000000e+00, %966 ]
  %1182 = phi float [ %1175, %1009 ], [ 0.000000e+00, %966 ]
  %1183 = phi float [ %1176, %1009 ], [ 0.000000e+00, %966 ]
  %1184 = fmul fast float %1178, %970
  %1185 = fmul fast float %1179, %971
  %1186 = fmul fast float %1180, %972
  %1187 = fmul fast float %1178, %967
  %1188 = fmul fast float %1179, %968
  %1189 = fmul fast float %1180, %969
  %1190 = fadd fast float %1181, %1187
  %1191 = fadd fast float %1182, %1188
  %1192 = fadd fast float %1183, %1189
  %1193 = fmul fast float %52, %103
  %1194 = fmul fast float %53, %104
  %1195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1196 = extractvalue %dx.types.CBufRet.f32 %1195, 2
  %1197 = fmul fast float %1196, 0x3FE3C6EF40000000
  %1198 = frem fast float %49, 2.560000e+02
  %1199 = frem fast float %50, 2.560000e+02
  %1200 = fptoui float %1198 to i32
  %1201 = fptoui float %1199 to i32
  %1202 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %1200, i32 %1201, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1203 = extractvalue %dx.types.ResRet.f32 %1202, 0
  %1204 = fadd fast float %1203, %1197
  %1205 = call float @dx.op.unary.f32(i32 22, float %1204)  ; Frc(value)
  %1206 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 %47, i32 %48, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1207 = extractvalue %dx.types.ResRet.f32 %1206, 0
  %1208 = extractvalue %dx.types.ResRet.f32 %1206, 1
  %1209 = extractvalue %dx.types.ResRet.f32 %1206, 2
  %1210 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %47, i32 %48, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1211 = extractvalue %dx.types.ResRet.f32 %1210, 0
  %1212 = extractvalue %dx.types.ResRet.f32 %1210, 1
  %1213 = extractvalue %dx.types.ResRet.f32 %1210, 2
  %1214 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %47, i32 %48, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1215 = extractvalue %dx.types.ResRet.f32 %1214, 0
  %1216 = extractvalue %dx.types.ResRet.f32 %1214, 1
  %1217 = extractvalue %dx.types.ResRet.f32 %1214, 2
  %1218 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %47, i32 %48, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1219 = extractvalue %dx.types.ResRet.f32 %1218, 0
  %1220 = extractvalue %dx.types.ResRet.f32 %1218, 1
  %1221 = call float @dx.op.binary.f32(i32 35, float %1219, float %1220)  ; FMax(a,b)
  %1222 = fcmp fast ult float %1221, 0x3F70101020000000
  br i1 %1222, label %1454, label %1223, !dx.controlflow.hints !100

; <label>:1223                                    ; preds = %1177
  %1224 = fmul fast float %1220, 2.000000e+00
  %1225 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1224)  ; FMax(a,b)
  %1226 = fmul fast float %1219, 2.000000e+00
  %1227 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1226)  ; FMax(a,b)
  %1228 = extractvalue %dx.types.ResRet.f32 %1214, 3
  %1229 = fmul fast float %1228, 2.000000e+00
  %1230 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1229)  ; FMax(a,b)
  %1231 = fmul fast float %1217, %1217
  %1232 = fmul fast float %1216, %1216
  %1233 = fmul fast float %1215, %1215
  %1234 = fadd fast float %1233, 0xBFD51EB860000000
  %1235 = fadd fast float %1232, 0xBFD51EB860000000
  %1236 = fadd fast float %1231, 0xBFD51EB860000000
  %1237 = fmul fast float %1234, %1234
  %1238 = fmul fast float %1235, %1235
  %1239 = fmul fast float %1236, %1236
  %1240 = fmul fast float %1237, %1237
  %1241 = fmul fast float %1240, 1.000000e+02
  %1242 = fmul fast float %1238, %1238
  %1243 = fmul fast float %1242, 1.000000e+02
  %1244 = fmul fast float %1239, %1239
  %1245 = fmul fast float %1244, 1.000000e+02
  %1246 = fadd fast float %1241, 3.500000e+00
  %1247 = fadd fast float %1243, 3.500000e+00
  %1248 = fadd fast float %1245, 3.500000e+00
  %1249 = fdiv fast float %1246, %1230
  %1250 = fdiv fast float %1247, %1227
  %1251 = fdiv fast float %1248, %1225
  %1252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1253 = extractvalue %dx.types.CBufRet.f32 %1252, 0
  %1254 = extractvalue %dx.types.CBufRet.f32 %1252, 1
  %1255 = fmul fast float %1253, %69
  %1256 = fmul fast float %1254, %69
  %1257 = fdiv fast float 1.000000e+00, %1255
  %1258 = fdiv fast float 1.000000e+00, %1256
  %1259 = fmul fast float %52, 5.000000e-01
  %1260 = fmul fast float %1259, %1255
  %1261 = fmul fast float %1249, 0xBFF7154760000000
  %1262 = fmul fast float %1261, %1260
  %1263 = call float @dx.op.unary.f32(i32 21, float %1262)  ; Exp(value)
  %1264 = fmul fast float %1263, 2.500000e-01
  %1265 = fsub fast float 1.000000e+00, %1264
  %1266 = fmul fast float %1249, 0xBFDEC709E0000000
  %1267 = fmul fast float %1266, %1260
  %1268 = call float @dx.op.unary.f32(i32 21, float %1267)  ; Exp(value)
  %1269 = fmul fast float %1268, 7.500000e-01
  %1270 = fsub fast float %1265, %1269
  %1271 = fmul fast float %1250, 0xBFF7154760000000
  %1272 = fmul fast float %1271, %1260
  %1273 = call float @dx.op.unary.f32(i32 21, float %1272)  ; Exp(value)
  %1274 = fmul fast float %1273, 2.500000e-01
  %1275 = fsub fast float 1.000000e+00, %1274
  %1276 = fmul fast float %1250, 0xBFDEC709E0000000
  %1277 = fmul fast float %1276, %1260
  %1278 = call float @dx.op.unary.f32(i32 21, float %1277)  ; Exp(value)
  %1279 = fmul fast float %1278, 7.500000e-01
  %1280 = fsub fast float %1275, %1279
  %1281 = fmul fast float %1251, 0xBFF7154760000000
  %1282 = fmul fast float %1281, %1260
  %1283 = call float @dx.op.unary.f32(i32 21, float %1282)  ; Exp(value)
  %1284 = fmul fast float %1283, 2.500000e-01
  %1285 = fsub fast float 1.000000e+00, %1284
  %1286 = fmul fast float %1251, 0xBFDEC709E0000000
  %1287 = fmul fast float %1286, %1260
  %1288 = call float @dx.op.unary.f32(i32 21, float %1287)  ; Exp(value)
  %1289 = fmul fast float %1288, 7.500000e-01
  %1290 = fsub fast float %1285, %1289
  %1291 = fmul fast float %1211, 0x3F1A36E2E0000000
  %1292 = fmul fast float %1212, 0x3F1A36E2E0000000
  %1293 = fmul fast float %1213, 0x3F1A36E2E0000000
  %1294 = call float @dx.op.binary.f32(i32 36, float %1250, float %1251)  ; FMin(a,b)
  %1295 = call float @dx.op.binary.f32(i32 36, float %1249, float %1294)  ; FMin(a,b)
  %1296 = call float @dx.op.binary.f32(i32 36, float %1280, float %1290)  ; FMin(a,b)
  %1297 = call float @dx.op.binary.f32(i32 36, float %1270, float %1296)  ; FMin(a,b)
  %1298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1299 = extractvalue %dx.types.CBufRet.f32 %1298, 2
  %1300 = fmul fast float %1299, %1255
  %1301 = fmul fast float %1295, 0xBFF7154760000000
  %1302 = fmul fast float %1301, %1300
  %1303 = call float @dx.op.unary.f32(i32 21, float %1302)  ; Exp(value)
  %1304 = fmul fast float %1303, 2.500000e-01
  %1305 = fsub fast float 1.000000e+00, %1304
  %1306 = fmul fast float %1295, 0xBFDEC709E0000000
  %1307 = fmul fast float %1306, %1300
  %1308 = call float @dx.op.unary.f32(i32 21, float %1307)  ; Exp(value)
  %1309 = fmul fast float %1308, 7.500000e-01
  %1310 = fsub fast float %1305, %1309
  %1311 = extractvalue %dx.types.CBufRet.f32 %1298, 3
  %1312 = call float @dx.op.binary.f32(i32 36, float %1311, float %1310)  ; FMin(a,b)
  %1313 = fsub fast float %1312, %1297
  %1314 = call float @dx.op.unary.f32(i32 7, float %1313)  ; Saturate(value)
  %1315 = call float @dx.op.unary.f32(i32 7, float %1297)  ; Saturate(value)
  %1316 = extractvalue %dx.types.CBufRet.f32 %1298, 0
  %1317 = fmul fast float %1316, %1314
  %1318 = fptoui float %1317 to i32
  %1319 = uitofp i32 %1318 to float
  %1320 = fdiv fast float 1.000000e+00, %1319
  %1321 = icmp eq i32 %1318, 0
  br i1 %1321, label %1432, label %1322

; <label>:1322                                    ; preds = %1223
  %1323 = fmul fast float %1251, 0x3FA45F3060000000
  %1324 = fmul fast float %1295, 0x3FA45F3060000000
  br label %1325

; <label>:1325                                    ; preds = %1325, %1322
  %1326 = phi float [ %1423, %1325 ], [ %1291, %1322 ]
  %1327 = phi float [ %1424, %1325 ], [ %1292, %1322 ]
  %1328 = phi float [ %1425, %1325 ], [ %1293, %1322 ]
  %1329 = phi float [ %1426, %1325 ], [ 0x3F1A36E2E0000000, %1322 ]
  %1330 = phi float [ %1427, %1325 ], [ 0x3F1A36E2E0000000, %1322 ]
  %1331 = phi float [ %1428, %1325 ], [ 0x3F1A36E2E0000000, %1322 ]
  %1332 = phi i32 [ %1429, %1325 ], [ 0, %1322 ]
  %1333 = sitofp i32 %1332 to float
  %1334 = fadd fast float %1333, %1205
  %1335 = fmul fast float %1320, %1314
  %1336 = fmul fast float %1335, %1334
  %1337 = fsub fast float 1.000000e+00, %1315
  %1338 = fsub fast float %1337, %1336
  %1339 = fmul fast float %1338, 4.000000e+00
  %1340 = fmul fast float %1338, 2.000000e+00
  %1341 = fmul fast float %1338, %1338
  %1342 = fmul fast float %1341, 4.000000e+00
  %1343 = fadd fast float %1342, 1.000000e+00
  %1344 = call float @dx.op.unary.f32(i32 24, float %1343)  ; Sqrt(value)
  %1345 = fadd fast float %1340, %1344
  %1346 = fmul fast float %1339, %1345
  %1347 = fadd fast float %1346, 1.000000e+00
  %1348 = call float @dx.op.unary.f32(i32 23, float %1347)  ; Log(value)
  %1349 = fmul fast float %1348, 0xBFD5555560000000
  %1350 = call float @dx.op.unary.f32(i32 21, float %1349)  ; Exp(value)
  %1351 = fmul fast float %1350, %1350
  %1352 = fmul fast float %1351, %1347
  %1353 = fadd fast float %1350, 1.000000e+00
  %1354 = fadd fast float %1353, %1352
  %1355 = fdiv fast float 2.500000e-01, %1338
  %1356 = fmul fast float %1354, %1355
  %1357 = call float @dx.op.unary.f32(i32 23, float %1356)  ; Log(value)
  %1358 = fmul fast float %1357, 0x4000A2B240000000
  %1359 = fdiv fast float %1358, %1295
  %1360 = fmul fast float %1301, %1359
  %1361 = call float @dx.op.unary.f32(i32 21, float %1360)  ; Exp(value)
  %1362 = fmul fast float %1306, %1359
  %1363 = call float @dx.op.unary.f32(i32 21, float %1362)  ; Exp(value)
  %1364 = fadd fast float %1363, %1361
  %1365 = fmul fast float %1324, %1364
  %1366 = fdiv fast float %1314, %1365
  %1367 = fmul fast float %1333, 0x3FF9E377A0000000
  %1368 = call float @dx.op.unary.f32(i32 22, float %1367)  ; Frc(value)
  %1369 = fadd fast float %1368, %1205
  %1370 = fmul fast float %1369, 0x401921FB60000000
  %1371 = call float @dx.op.unary.f32(i32 13, float %1370)  ; Sin(value)
  %1372 = call float @dx.op.unary.f32(i32 12, float %1370)  ; Cos(value)
  %1373 = fmul fast float %1359, %1257
  %1374 = fmul fast float %1373, %1372
  %1375 = fmul fast float %1359, %1258
  %1376 = fmul fast float %1375, %1371
  %1377 = fadd fast float %1374, %1193
  %1378 = fadd fast float %1376, %1194
  %1379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %22, float %1377, float %1378, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1380 = extractvalue %dx.types.ResRet.f32 %1379, 0
  %1381 = extractvalue %dx.types.ResRet.f32 %1379, 1
  %1382 = extractvalue %dx.types.ResRet.f32 %1379, 2
  %1383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %22, float %1377, float %1378, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1384 = extractvalue %dx.types.ResRet.f32 %1383, 0
  %1385 = fcmp fast ogt float %1384, -1.000000e+00
  %1386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1387 = extractvalue %dx.types.CBufRet.f32 %1386, 1
  %1388 = select i1 %1385, float %1387, float 1.000000e+00
  %1389 = fadd fast float %1384, 1.000000e+00
  %1390 = fmul fast float %1388, %1389
  %1391 = call float @dx.op.unary.f32(i32 6, float %1390)  ; FAbs(value)
  %1392 = fsub fast float %69, %1391
  %1393 = fmul fast float %1359, %1359
  %1394 = fmul fast float %1392, %1392
  %1395 = fadd fast float %1394, %1393
  %1396 = call float @dx.op.unary.f32(i32 24, float %1395)  ; Sqrt(value)
  %1397 = fmul fast float %1261, %1396
  %1398 = call float @dx.op.unary.f32(i32 21, float %1397)  ; Exp(value)
  %1399 = fmul fast float %1266, %1396
  %1400 = call float @dx.op.unary.f32(i32 21, float %1399)  ; Exp(value)
  %1401 = fadd fast float %1400, %1398
  %1402 = fmul fast float %1271, %1396
  %1403 = call float @dx.op.unary.f32(i32 21, float %1402)  ; Exp(value)
  %1404 = fmul fast float %1276, %1396
  %1405 = call float @dx.op.unary.f32(i32 21, float %1404)  ; Exp(value)
  %1406 = fadd fast float %1405, %1403
  %1407 = fmul fast float %1281, %1396
  %1408 = call float @dx.op.unary.f32(i32 21, float %1407)  ; Exp(value)
  %1409 = fmul fast float %1286, %1396
  %1410 = call float @dx.op.unary.f32(i32 21, float %1409)  ; Exp(value)
  %1411 = fadd fast float %1410, %1408
  %1412 = fmul fast float %1249, 0x3FA45F3060000000
  %1413 = fmul fast float %1412, %1366
  %1414 = fmul fast float %1413, %1401
  %1415 = fmul fast float %1250, 0x3FA45F3060000000
  %1416 = fmul fast float %1415, %1366
  %1417 = fmul fast float %1416, %1406
  %1418 = fmul fast float %1323, %1366
  %1419 = fmul fast float %1418, %1411
  %1420 = fmul fast float %1414, %1380
  %1421 = fmul fast float %1417, %1381
  %1422 = fmul fast float %1419, %1382
  %1423 = fadd fast float %1420, %1326
  %1424 = fadd fast float %1421, %1327
  %1425 = fadd fast float %1422, %1328
  %1426 = fadd fast float %1414, %1329
  %1427 = fadd fast float %1417, %1330
  %1428 = fadd fast float %1419, %1331
  %1429 = add nuw nsw i32 %1332, 1
  %1430 = icmp eq i32 %1429, %1318
  br i1 %1430, label %1431, label %1325, !llvm.loop !101

; <label>:1431                                    ; preds = %1325
  br label %1432

; <label>:1432                                    ; preds = %1431, %1223
  %1433 = phi float [ %1291, %1223 ], [ %1423, %1431 ]
  %1434 = phi float [ %1292, %1223 ], [ %1424, %1431 ]
  %1435 = phi float [ %1293, %1223 ], [ %1425, %1431 ]
  %1436 = phi float [ 0x3F1A36E2E0000000, %1223 ], [ %1426, %1431 ]
  %1437 = phi float [ 0x3F1A36E2E0000000, %1223 ], [ %1427, %1431 ]
  %1438 = phi float [ 0x3F1A36E2E0000000, %1223 ], [ %1428, %1431 ]
  %1439 = fmul fast float %1270, %1211
  %1440 = fmul fast float %1280, %1212
  %1441 = fmul fast float %1290, %1213
  %1442 = fsub fast float 1.000000e+00, %1270
  %1443 = fsub fast float 1.000000e+00, %1280
  %1444 = fsub fast float 1.000000e+00, %1290
  %1445 = fdiv fast float %1433, %1436
  %1446 = fdiv fast float %1434, %1437
  %1447 = fdiv fast float %1435, %1438
  %1448 = fmul fast float %1445, %1442
  %1449 = fmul fast float %1446, %1443
  %1450 = fmul fast float %1447, %1444
  %1451 = fadd fast float %1448, %1439
  %1452 = fadd fast float %1449, %1440
  %1453 = fadd fast float %1450, %1441
  br label %1454

; <label>:1454                                    ; preds = %1432, %1177
  %1455 = phi float [ %1451, %1432 ], [ 0.000000e+00, %1177 ]
  %1456 = phi float [ %1452, %1432 ], [ 0.000000e+00, %1177 ]
  %1457 = phi float [ %1453, %1432 ], [ 0.000000e+00, %1177 ]
  %1458 = phi float [ %1215, %1432 ], [ 0.000000e+00, %1177 ]
  %1459 = phi float [ %1216, %1432 ], [ 0.000000e+00, %1177 ]
  %1460 = phi float [ %1217, %1432 ], [ 0.000000e+00, %1177 ]
  %1461 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1462 = extractvalue %dx.types.CBufRet.i32 %1461, 3
  %1463 = and i32 %1462, 3
  %1464 = icmp ne i32 %1463, 0
  %1465 = and i32 %1462, 4
  %1466 = icmp ne i32 %1465, 0
  %1467 = and i1 %1464, %1466
  br i1 %1467, label %1468, label %1475, !dx.controlflow.hints !103

; <label>:1468                                    ; preds = %1454
  %1469 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %22, float %1193, float %1194, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1470 = extractvalue %dx.types.ResRet.f32 %1469, 0
  %1471 = fsub fast float 1.000000e+00, %1470
  %1472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1473 = extractvalue %dx.types.CBufRet.f32 %1472, 0
  %1474 = fcmp fast olt float %1471, %1473
  br label %1478

; <label>:1475                                    ; preds = %1454
  %1476 = icmp eq i32 %1465, 0
  %1477 = and i1 %1464, %1476
  br label %1478

; <label>:1478                                    ; preds = %1475, %1468
  %1479 = phi i1 [ %1474, %1468 ], [ %1477, %1475 ]
  %1480 = select i1 %1479, float 0.000000e+00, float %1459
  %1481 = select i1 %1479, float 0.000000e+00, float %1460
  %1482 = fmul fast float %1458, %1455
  %1483 = fmul fast float %1480, %1456
  %1484 = fmul fast float %1481, %1457
  %1485 = fadd fast float %1482, %1207
  %1486 = fadd fast float %1483, %1208
  %1487 = fadd fast float %1484, %1209
  %1488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1489 = extractvalue %dx.types.CBufRet.f32 %1488, 0
  br i1 %1479, label %1490, label %1509, !dx.controlflow.hints !104

; <label>:1490                                    ; preds = %1478
  %1491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1492 = extractvalue %dx.types.CBufRet.f32 %1491, 3
  %1493 = call float @dx.op.dot3.f32(i32 55, float %1184, float %1185, float %1186, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1494 = fmul fast float %1493, %1485
  %1495 = call float @dx.op.dot3.f32(i32 55, float %1190, float %1191, float %1192, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1496 = fmul fast float %1489, %1495
  %1497 = fadd fast float %1496, %1494
  br i1 %1467, label %1498, label %1504, !dx.controlflow.hints !105

; <label>:1498                                    ; preds = %1490
  %1499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1500 = extractvalue %dx.types.CBufRet.f32 %1499, 1
  %1501 = fadd fast float %1184, -1.000000e+00
  %1502 = fmul fast float %1500, %1501
  %1503 = fadd fast float %1502, 1.000000e+00
  br label %1504

; <label>:1504                                    ; preds = %1498, %1490
  %1505 = phi float [ %1503, %1498 ], [ %1184, %1490 ]
  %1506 = fsub fast float %1486, %1492
  %1507 = fmul fast float %1505, %1506
  %1508 = fadd fast float %1507, %1492
  br label %1519

; <label>:1509                                    ; preds = %1478
  %1510 = fmul fast float %1485, %1184
  %1511 = fmul fast float %1486, %1185
  %1512 = fmul fast float %1487, %1186
  %1513 = fmul fast float %1489, %1190
  %1514 = fmul fast float %1489, %1191
  %1515 = fmul fast float %1489, %1192
  %1516 = fadd fast float %1513, %1510
  %1517 = fadd fast float %1514, %1511
  %1518 = fadd fast float %1515, %1512
  br label %1519

; <label>:1519                                    ; preds = %1509, %1504
  %1520 = phi float [ %1497, %1504 ], [ %1516, %1509 ]
  %1521 = phi float [ %1508, %1504 ], [ %1517, %1509 ]
  %1522 = phi float [ %1487, %1504 ], [ %1518, %1509 ]
  %1523 = lshr i32 %45, 2
  %1524 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1525 = extractvalue %dx.types.CBufRet.i32 %1524, 1
  %1526 = shl i32 %1525, 1
  %1527 = lshr i32 %46, 4
  %1528 = and i32 %1527, 134217727
  %1529 = extractvalue %dx.types.CBufRet.i32 %1524, 0
  %1530 = mul i32 %1529, %1528
  %1531 = lshr i32 %45, 5
  %1532 = and i32 %1531, 67108863
  %1533 = add i32 %1526, %1532
  %1534 = add i32 %1533, %1530
  %1535 = shl i32 %1534, 2
  %1536 = and i32 %48, 24
  %1537 = and i32 %1523, 7
  %1538 = or i32 %1536, %1537
  %1539 = shl i32 1, %1538
  %1540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %1535, i32 undef)  ; BufferLoad(srv,index,wot)
  %1541 = extractvalue %dx.types.ResRet.i32 %1540, 0
  %1542 = and i32 %1541, %1539
  %1543 = icmp eq i32 %1542, 0
  br i1 %1543, label %1559, label %1544, !dx.controlflow.hints !106

; <label>:1544                                    ; preds = %1519
  %1545 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %47, i32 %48, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1546 = extractvalue %dx.types.ResRet.f32 %1545, 0
  %1547 = fcmp fast ogt float %1546, 0.000000e+00
  br i1 %1547, label %1548, label %1559, !dx.controlflow.hints !107

; <label>:1548                                    ; preds = %1544
  %1549 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %47, i32 %48, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1550 = extractvalue %dx.types.ResRet.f32 %1549, 0
  %1551 = extractvalue %dx.types.ResRet.f32 %1549, 1
  %1552 = extractvalue %dx.types.ResRet.f32 %1549, 2
  %1553 = extractvalue %dx.types.ResRet.f32 %1549, 3
  %1554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %1555 = extractvalue %dx.types.CBufRet.f32 %1554, 2
  %1556 = fmul fast float %1555, %1550
  %1557 = fmul fast float %1555, %1551
  %1558 = fmul fast float %1555, %1552
  br label %1559

; <label>:1559                                    ; preds = %1548, %1544, %1519
  %1560 = phi float [ %1556, %1548 ], [ 0.000000e+00, %1544 ], [ 0.000000e+00, %1519 ]
  %1561 = phi float [ %1557, %1548 ], [ 0.000000e+00, %1544 ], [ 0.000000e+00, %1519 ]
  %1562 = phi float [ %1558, %1548 ], [ 0.000000e+00, %1544 ], [ 0.000000e+00, %1519 ]
  %1563 = phi float [ %1553, %1548 ], [ 0.000000e+00, %1544 ], [ 0.000000e+00, %1519 ]
  %1564 = fsub fast float 1.000000e+00, %1563
  %1565 = fmul fast float %1564, %1520
  %1566 = fmul fast float %1564, %1521
  %1567 = fmul fast float %1564, %1522
  %1568 = fadd fast float %1565, %1560
  %1569 = fadd fast float %1566, %1561
  %1570 = fadd fast float %1567, %1562
  %1571 = fadd fast float %1205, 0x3FE3C6EF40000000
  %1572 = call float @dx.op.unary.f32(i32 22, float %1571)  ; Frc(value)
  %1573 = call float @dx.op.unary.f32(i32 23, float %1568)  ; Log(value)
  %1574 = fadd fast float %1573, -7.000000e+00
  %1575 = call float @dx.op.unary.f32(i32 21, float %1574)  ; Exp(value)
  %1576 = fmul fast float %1572, 2.000000e+00
  %1577 = fadd fast float %1576, -1.000000e+00
  %1578 = fmul fast float %1575, %1577
  %1579 = fcmp fast ogt float %1568, 0.000000e+00
  %1580 = select i1 %1579, float %1578, float 0.000000e+00
  %1581 = fadd fast float %1580, %1568
  %1582 = fadd fast float %1205, 0x3FF3C6EF40000000
  %1583 = call float @dx.op.unary.f32(i32 22, float %1582)  ; Frc(value)
  %1584 = call float @dx.op.unary.f32(i32 23, float %1569)  ; Log(value)
  %1585 = fadd fast float %1584, -7.000000e+00
  %1586 = call float @dx.op.unary.f32(i32 21, float %1585)  ; Exp(value)
  %1587 = fmul fast float %1583, 2.000000e+00
  %1588 = fadd fast float %1587, -1.000000e+00
  %1589 = fmul fast float %1586, %1588
  %1590 = fcmp fast ogt float %1569, 0.000000e+00
  %1591 = select i1 %1590, float %1589, float 0.000000e+00
  %1592 = fadd fast float %1591, %1569
  %1593 = fadd fast float %1205, 0x3FFDAA66E0000000
  %1594 = call float @dx.op.unary.f32(i32 22, float %1593)  ; Frc(value)
  %1595 = call float @dx.op.unary.f32(i32 23, float %1570)  ; Log(value)
  %1596 = fadd fast float %1595, -6.000000e+00
  %1597 = call float @dx.op.unary.f32(i32 21, float %1596)  ; Exp(value)
  %1598 = fmul fast float %1594, 2.000000e+00
  %1599 = fadd fast float %1598, -1.000000e+00
  %1600 = fmul fast float %1597, %1599
  %1601 = fcmp fast ogt float %1570, 0.000000e+00
  %1602 = select i1 %1601, float %1600, float 0.000000e+00
  %1603 = fadd fast float %1602, %1570
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %47, i32 %48, i32 undef, float %1581, float %1592, float %1603, float %1581, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1604 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1605 = extractvalue %dx.types.CBufRet.i32 %1604, 0
  %1606 = and i32 %1605, 1
  %1607 = icmp eq i32 %1606, 0
  br i1 %1607, label %1611, label %1608, !dx.controlflow.hints !108

; <label>:1608                                    ; preds = %1559
  %1609 = and i32 %45, 2147483647
  %1610 = and i32 %46, 2147483647
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1609, i32 %1610, i32 undef, float %1485, float %1486, float %1487, float %1485, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1611

; <label>:1611                                    ; preds = %1608, %1559
  br label %1612

; <label>:1612                                    ; preds = %1631, %1611
  %1613 = phi i32 [ %1618, %1631 ], [ 14, %1611 ]
  %1614 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1613)  ; FirstbitLo(value)
  %1615 = and i32 %1614, 31
  %1616 = shl i32 1, %1615
  %1617 = xor i32 %1616, -1
  %1618 = and i32 %1613, %1617
  %1619 = and i32 %1614, 1
  %1620 = lshr i32 %1614, 1
  %1621 = or i32 %1619, %47
  %1622 = add i32 %1620, %48
  %1623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1624 = extractvalue %dx.types.CBufRet.f32 %1623, 0
  %1625 = fptoui float %1624 to i32
  %1626 = icmp uge i32 %1621, %1625
  %1627 = extractvalue %dx.types.CBufRet.f32 %1623, 1
  %1628 = fptoui float %1627 to i32
  %1629 = icmp uge i32 %1622, %1628
  %1630 = or i1 %1626, %1629
  br i1 %1630, label %1631, label %1633, !dx.controlflow.hints !109

; <label>:1631                                    ; preds = %2056, %2003, %1612
  %1632 = icmp eq i32 %1618, 0
  br i1 %1632, label %2059, label %1612

; <label>:1633                                    ; preds = %1612
  %1634 = uitofp i32 %1621 to float
  %1635 = uitofp i32 %1622 to float
  %1636 = fadd fast float %1634, 5.000000e-01
  %1637 = fadd fast float %1635, 5.000000e-01
  %1638 = extractvalue %dx.types.CBufRet.f32 %1623, 2
  %1639 = extractvalue %dx.types.CBufRet.f32 %1623, 3
  %1640 = fmul fast float %1638, %1636
  %1641 = fmul fast float %1639, %1637
  %1642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1643 = extractvalue %dx.types.CBufRet.f32 %1642, 2
  %1644 = fmul fast float %1643, 0x3FE3C6EF40000000
  %1645 = frem fast float %1634, 2.560000e+02
  %1646 = frem fast float %1635, 2.560000e+02
  %1647 = fptoui float %1645 to i32
  %1648 = fptoui float %1646 to i32
  %1649 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %1647, i32 %1648, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1650 = extractvalue %dx.types.ResRet.f32 %1649, 0
  %1651 = fadd fast float %1650, %1644
  %1652 = call float @dx.op.unary.f32(i32 22, float %1651)  ; Frc(value)
  %1653 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 %1621, i32 %1622, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1654 = extractvalue %dx.types.ResRet.f32 %1653, 0
  %1655 = extractvalue %dx.types.ResRet.f32 %1653, 1
  %1656 = extractvalue %dx.types.ResRet.f32 %1653, 2
  %1657 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %1621, i32 %1622, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1658 = extractvalue %dx.types.ResRet.f32 %1657, 0
  %1659 = extractvalue %dx.types.ResRet.f32 %1657, 1
  %1660 = extractvalue %dx.types.ResRet.f32 %1657, 2
  %1661 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %1621, i32 %1622, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1662 = extractvalue %dx.types.ResRet.f32 %1661, 0
  %1663 = extractvalue %dx.types.ResRet.f32 %1661, 1
  %1664 = extractvalue %dx.types.ResRet.f32 %1661, 2
  %1665 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %1621, i32 %1622, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1666 = extractvalue %dx.types.ResRet.f32 %1665, 0
  %1667 = extractvalue %dx.types.ResRet.f32 %1665, 1
  %1668 = call float @dx.op.binary.f32(i32 35, float %1666, float %1667)  ; FMax(a,b)
  %1669 = fcmp fast ult float %1668, 0x3F70101020000000
  br i1 %1669, label %1903, label %1670, !dx.controlflow.hints !110

; <label>:1670                                    ; preds = %1633
  %1671 = fmul fast float %1667, 2.000000e+00
  %1672 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1671)  ; FMax(a,b)
  %1673 = fmul fast float %1666, 2.000000e+00
  %1674 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1673)  ; FMax(a,b)
  %1675 = extractvalue %dx.types.ResRet.f32 %1661, 3
  %1676 = fmul fast float %1675, 2.000000e+00
  %1677 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1676)  ; FMax(a,b)
  %1678 = fmul fast float %1664, %1664
  %1679 = fmul fast float %1663, %1663
  %1680 = fmul fast float %1662, %1662
  %1681 = getelementptr [4 x float], [4 x float]* %32, i32 0, i32 %1614
  %1682 = load float, float* %1681, align 4, !tbaa !51, !noalias !111
  %1683 = fadd fast float %1680, 0xBFD51EB860000000
  %1684 = fadd fast float %1679, 0xBFD51EB860000000
  %1685 = fadd fast float %1678, 0xBFD51EB860000000
  %1686 = fmul fast float %1683, %1683
  %1687 = fmul fast float %1684, %1684
  %1688 = fmul fast float %1685, %1685
  %1689 = fmul fast float %1686, %1686
  %1690 = fmul fast float %1689, 1.000000e+02
  %1691 = fmul fast float %1687, %1687
  %1692 = fmul fast float %1691, 1.000000e+02
  %1693 = fmul fast float %1688, %1688
  %1694 = fmul fast float %1693, 1.000000e+02
  %1695 = fadd fast float %1690, 3.500000e+00
  %1696 = fadd fast float %1692, 3.500000e+00
  %1697 = fadd fast float %1694, 3.500000e+00
  %1698 = fdiv fast float %1695, %1677
  %1699 = fdiv fast float %1696, %1674
  %1700 = fdiv fast float %1697, %1672
  %1701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1702 = extractvalue %dx.types.CBufRet.f32 %1701, 0
  %1703 = extractvalue %dx.types.CBufRet.f32 %1701, 1
  %1704 = fmul fast float %1702, %1682
  %1705 = fmul fast float %1703, %1682
  %1706 = fdiv fast float 1.000000e+00, %1704
  %1707 = fdiv fast float 1.000000e+00, %1705
  %1708 = fmul fast float %1638, 5.000000e-01
  %1709 = fmul fast float %1708, %1704
  %1710 = fmul fast float %1698, 0xBFF7154760000000
  %1711 = fmul fast float %1710, %1709
  %1712 = call float @dx.op.unary.f32(i32 21, float %1711)  ; Exp(value)
  %1713 = fmul fast float %1712, 2.500000e-01
  %1714 = fsub fast float 1.000000e+00, %1713
  %1715 = fmul fast float %1698, 0xBFDEC709E0000000
  %1716 = fmul fast float %1715, %1709
  %1717 = call float @dx.op.unary.f32(i32 21, float %1716)  ; Exp(value)
  %1718 = fmul fast float %1717, 7.500000e-01
  %1719 = fsub fast float %1714, %1718
  %1720 = fmul fast float %1699, 0xBFF7154760000000
  %1721 = fmul fast float %1720, %1709
  %1722 = call float @dx.op.unary.f32(i32 21, float %1721)  ; Exp(value)
  %1723 = fmul fast float %1722, 2.500000e-01
  %1724 = fsub fast float 1.000000e+00, %1723
  %1725 = fmul fast float %1699, 0xBFDEC709E0000000
  %1726 = fmul fast float %1725, %1709
  %1727 = call float @dx.op.unary.f32(i32 21, float %1726)  ; Exp(value)
  %1728 = fmul fast float %1727, 7.500000e-01
  %1729 = fsub fast float %1724, %1728
  %1730 = fmul fast float %1700, 0xBFF7154760000000
  %1731 = fmul fast float %1730, %1709
  %1732 = call float @dx.op.unary.f32(i32 21, float %1731)  ; Exp(value)
  %1733 = fmul fast float %1732, 2.500000e-01
  %1734 = fsub fast float 1.000000e+00, %1733
  %1735 = fmul fast float %1700, 0xBFDEC709E0000000
  %1736 = fmul fast float %1735, %1709
  %1737 = call float @dx.op.unary.f32(i32 21, float %1736)  ; Exp(value)
  %1738 = fmul fast float %1737, 7.500000e-01
  %1739 = fsub fast float %1734, %1738
  %1740 = fmul fast float %1658, 0x3F1A36E2E0000000
  %1741 = fmul fast float %1659, 0x3F1A36E2E0000000
  %1742 = fmul fast float %1660, 0x3F1A36E2E0000000
  %1743 = call float @dx.op.binary.f32(i32 36, float %1699, float %1700)  ; FMin(a,b)
  %1744 = call float @dx.op.binary.f32(i32 36, float %1698, float %1743)  ; FMin(a,b)
  %1745 = call float @dx.op.binary.f32(i32 36, float %1729, float %1739)  ; FMin(a,b)
  %1746 = call float @dx.op.binary.f32(i32 36, float %1719, float %1745)  ; FMin(a,b)
  %1747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1748 = extractvalue %dx.types.CBufRet.f32 %1747, 2
  %1749 = fmul fast float %1748, %1704
  %1750 = fmul fast float %1744, 0xBFF7154760000000
  %1751 = fmul fast float %1750, %1749
  %1752 = call float @dx.op.unary.f32(i32 21, float %1751)  ; Exp(value)
  %1753 = fmul fast float %1752, 2.500000e-01
  %1754 = fsub fast float 1.000000e+00, %1753
  %1755 = fmul fast float %1744, 0xBFDEC709E0000000
  %1756 = fmul fast float %1755, %1749
  %1757 = call float @dx.op.unary.f32(i32 21, float %1756)  ; Exp(value)
  %1758 = fmul fast float %1757, 7.500000e-01
  %1759 = fsub fast float %1754, %1758
  %1760 = extractvalue %dx.types.CBufRet.f32 %1747, 3
  %1761 = call float @dx.op.binary.f32(i32 36, float %1760, float %1759)  ; FMin(a,b)
  %1762 = fsub fast float %1761, %1746
  %1763 = call float @dx.op.unary.f32(i32 7, float %1762)  ; Saturate(value)
  %1764 = call float @dx.op.unary.f32(i32 7, float %1746)  ; Saturate(value)
  %1765 = extractvalue %dx.types.CBufRet.f32 %1747, 0
  %1766 = fmul fast float %1765, %1763
  %1767 = fptoui float %1766 to i32
  %1768 = uitofp i32 %1767 to float
  %1769 = fdiv fast float 1.000000e+00, %1768
  %1770 = icmp eq i32 %1767, 0
  br i1 %1770, label %1881, label %1771

; <label>:1771                                    ; preds = %1670
  %1772 = fmul fast float %1700, 0x3FA45F3060000000
  %1773 = fmul fast float %1744, 0x3FA45F3060000000
  br label %1774

; <label>:1774                                    ; preds = %1774, %1771
  %1775 = phi float [ %1872, %1774 ], [ %1740, %1771 ]
  %1776 = phi float [ %1873, %1774 ], [ %1741, %1771 ]
  %1777 = phi float [ %1874, %1774 ], [ %1742, %1771 ]
  %1778 = phi float [ %1875, %1774 ], [ 0x3F1A36E2E0000000, %1771 ]
  %1779 = phi float [ %1876, %1774 ], [ 0x3F1A36E2E0000000, %1771 ]
  %1780 = phi float [ %1877, %1774 ], [ 0x3F1A36E2E0000000, %1771 ]
  %1781 = phi i32 [ %1878, %1774 ], [ 0, %1771 ]
  %1782 = sitofp i32 %1781 to float
  %1783 = fadd fast float %1782, %1652
  %1784 = fmul fast float %1769, %1763
  %1785 = fmul fast float %1784, %1783
  %1786 = fsub fast float 1.000000e+00, %1764
  %1787 = fsub fast float %1786, %1785
  %1788 = fmul fast float %1787, 4.000000e+00
  %1789 = fmul fast float %1787, 2.000000e+00
  %1790 = fmul fast float %1787, %1787
  %1791 = fmul fast float %1790, 4.000000e+00
  %1792 = fadd fast float %1791, 1.000000e+00
  %1793 = call float @dx.op.unary.f32(i32 24, float %1792)  ; Sqrt(value)
  %1794 = fadd fast float %1789, %1793
  %1795 = fmul fast float %1788, %1794
  %1796 = fadd fast float %1795, 1.000000e+00
  %1797 = call float @dx.op.unary.f32(i32 23, float %1796)  ; Log(value)
  %1798 = fmul fast float %1797, 0xBFD5555560000000
  %1799 = call float @dx.op.unary.f32(i32 21, float %1798)  ; Exp(value)
  %1800 = fmul fast float %1799, %1799
  %1801 = fmul fast float %1800, %1796
  %1802 = fadd fast float %1799, 1.000000e+00
  %1803 = fadd fast float %1802, %1801
  %1804 = fdiv fast float 2.500000e-01, %1787
  %1805 = fmul fast float %1803, %1804
  %1806 = call float @dx.op.unary.f32(i32 23, float %1805)  ; Log(value)
  %1807 = fmul fast float %1806, 0x4000A2B240000000
  %1808 = fdiv fast float %1807, %1744
  %1809 = fmul fast float %1750, %1808
  %1810 = call float @dx.op.unary.f32(i32 21, float %1809)  ; Exp(value)
  %1811 = fmul fast float %1755, %1808
  %1812 = call float @dx.op.unary.f32(i32 21, float %1811)  ; Exp(value)
  %1813 = fadd fast float %1812, %1810
  %1814 = fmul fast float %1773, %1813
  %1815 = fdiv fast float %1763, %1814
  %1816 = fmul fast float %1782, 0x3FF9E377A0000000
  %1817 = call float @dx.op.unary.f32(i32 22, float %1816)  ; Frc(value)
  %1818 = fadd fast float %1817, %1652
  %1819 = fmul fast float %1818, 0x401921FB60000000
  %1820 = call float @dx.op.unary.f32(i32 13, float %1819)  ; Sin(value)
  %1821 = call float @dx.op.unary.f32(i32 12, float %1819)  ; Cos(value)
  %1822 = fmul fast float %1808, %1706
  %1823 = fmul fast float %1822, %1821
  %1824 = fmul fast float %1808, %1707
  %1825 = fmul fast float %1824, %1820
  %1826 = fadd fast float %1823, %1640
  %1827 = fadd fast float %1825, %1641
  %1828 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %22, float %1826, float %1827, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1829 = extractvalue %dx.types.ResRet.f32 %1828, 0
  %1830 = extractvalue %dx.types.ResRet.f32 %1828, 1
  %1831 = extractvalue %dx.types.ResRet.f32 %1828, 2
  %1832 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %22, float %1826, float %1827, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1833 = extractvalue %dx.types.ResRet.f32 %1832, 0
  %1834 = fcmp fast ogt float %1833, -1.000000e+00
  %1835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1836 = extractvalue %dx.types.CBufRet.f32 %1835, 1
  %1837 = select i1 %1834, float %1836, float 1.000000e+00
  %1838 = fadd fast float %1833, 1.000000e+00
  %1839 = fmul fast float %1837, %1838
  %1840 = call float @dx.op.unary.f32(i32 6, float %1839)  ; FAbs(value)
  %1841 = fsub fast float %1682, %1840
  %1842 = fmul fast float %1808, %1808
  %1843 = fmul fast float %1841, %1841
  %1844 = fadd fast float %1843, %1842
  %1845 = call float @dx.op.unary.f32(i32 24, float %1844)  ; Sqrt(value)
  %1846 = fmul fast float %1710, %1845
  %1847 = call float @dx.op.unary.f32(i32 21, float %1846)  ; Exp(value)
  %1848 = fmul fast float %1715, %1845
  %1849 = call float @dx.op.unary.f32(i32 21, float %1848)  ; Exp(value)
  %1850 = fadd fast float %1849, %1847
  %1851 = fmul fast float %1720, %1845
  %1852 = call float @dx.op.unary.f32(i32 21, float %1851)  ; Exp(value)
  %1853 = fmul fast float %1725, %1845
  %1854 = call float @dx.op.unary.f32(i32 21, float %1853)  ; Exp(value)
  %1855 = fadd fast float %1854, %1852
  %1856 = fmul fast float %1730, %1845
  %1857 = call float @dx.op.unary.f32(i32 21, float %1856)  ; Exp(value)
  %1858 = fmul fast float %1735, %1845
  %1859 = call float @dx.op.unary.f32(i32 21, float %1858)  ; Exp(value)
  %1860 = fadd fast float %1859, %1857
  %1861 = fmul fast float %1698, 0x3FA45F3060000000
  %1862 = fmul fast float %1861, %1815
  %1863 = fmul fast float %1862, %1850
  %1864 = fmul fast float %1699, 0x3FA45F3060000000
  %1865 = fmul fast float %1864, %1815
  %1866 = fmul fast float %1865, %1855
  %1867 = fmul fast float %1772, %1815
  %1868 = fmul fast float %1867, %1860
  %1869 = fmul fast float %1863, %1829
  %1870 = fmul fast float %1866, %1830
  %1871 = fmul fast float %1868, %1831
  %1872 = fadd fast float %1869, %1775
  %1873 = fadd fast float %1870, %1776
  %1874 = fadd fast float %1871, %1777
  %1875 = fadd fast float %1863, %1778
  %1876 = fadd fast float %1866, %1779
  %1877 = fadd fast float %1868, %1780
  %1878 = add nuw nsw i32 %1781, 1
  %1879 = icmp eq i32 %1878, %1767
  br i1 %1879, label %1880, label %1774, !llvm.loop !101

; <label>:1880                                    ; preds = %1774
  br label %1881

; <label>:1881                                    ; preds = %1880, %1670
  %1882 = phi float [ %1740, %1670 ], [ %1872, %1880 ]
  %1883 = phi float [ %1741, %1670 ], [ %1873, %1880 ]
  %1884 = phi float [ %1742, %1670 ], [ %1874, %1880 ]
  %1885 = phi float [ 0x3F1A36E2E0000000, %1670 ], [ %1875, %1880 ]
  %1886 = phi float [ 0x3F1A36E2E0000000, %1670 ], [ %1876, %1880 ]
  %1887 = phi float [ 0x3F1A36E2E0000000, %1670 ], [ %1877, %1880 ]
  %1888 = fmul fast float %1719, %1658
  %1889 = fmul fast float %1729, %1659
  %1890 = fmul fast float %1739, %1660
  %1891 = fsub fast float 1.000000e+00, %1719
  %1892 = fsub fast float 1.000000e+00, %1729
  %1893 = fsub fast float 1.000000e+00, %1739
  %1894 = fdiv fast float %1882, %1885
  %1895 = fdiv fast float %1883, %1886
  %1896 = fdiv fast float %1884, %1887
  %1897 = fmul fast float %1894, %1891
  %1898 = fmul fast float %1895, %1892
  %1899 = fmul fast float %1896, %1893
  %1900 = fadd fast float %1897, %1888
  %1901 = fadd fast float %1898, %1889
  %1902 = fadd fast float %1899, %1890
  br label %1903

; <label>:1903                                    ; preds = %1881, %1633
  %1904 = phi float [ %1900, %1881 ], [ 0.000000e+00, %1633 ]
  %1905 = phi float [ %1901, %1881 ], [ 0.000000e+00, %1633 ]
  %1906 = phi float [ %1902, %1881 ], [ 0.000000e+00, %1633 ]
  %1907 = phi float [ %1662, %1881 ], [ 0.000000e+00, %1633 ]
  %1908 = phi float [ %1663, %1881 ], [ 0.000000e+00, %1633 ]
  %1909 = phi float [ %1664, %1881 ], [ 0.000000e+00, %1633 ]
  %1910 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1911 = extractvalue %dx.types.CBufRet.i32 %1910, 3
  %1912 = and i32 %1911, 3
  %1913 = icmp ne i32 %1912, 0
  %1914 = and i32 %1911, 4
  %1915 = icmp ne i32 %1914, 0
  %1916 = and i1 %1913, %1915
  br i1 %1916, label %1917, label %1924, !dx.controlflow.hints !103

; <label>:1917                                    ; preds = %1903
  %1918 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %22, float %1640, float %1641, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1919 = extractvalue %dx.types.ResRet.f32 %1918, 0
  %1920 = fsub fast float 1.000000e+00, %1919
  %1921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1922 = extractvalue %dx.types.CBufRet.f32 %1921, 0
  %1923 = fcmp fast olt float %1920, %1922
  br label %1927

; <label>:1924                                    ; preds = %1903
  %1925 = icmp eq i32 %1914, 0
  %1926 = and i1 %1913, %1925
  br label %1927

; <label>:1927                                    ; preds = %1924, %1917
  %1928 = phi i1 [ %1923, %1917 ], [ %1926, %1924 ]
  %1929 = select i1 %1928, float 0.000000e+00, float %1908
  %1930 = select i1 %1928, float 0.000000e+00, float %1909
  %1931 = fmul fast float %1907, %1904
  %1932 = fmul fast float %1929, %1905
  %1933 = fmul fast float %1930, %1906
  %1934 = fadd fast float %1931, %1654
  %1935 = fadd fast float %1932, %1655
  %1936 = fadd fast float %1933, %1656
  %1937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1938 = extractvalue %dx.types.CBufRet.f32 %1937, 0
  br i1 %1928, label %1939, label %1958, !dx.controlflow.hints !104

; <label>:1939                                    ; preds = %1927
  %1940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1941 = extractvalue %dx.types.CBufRet.f32 %1940, 3
  %1942 = call float @dx.op.dot3.f32(i32 55, float %1184, float %1185, float %1186, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1943 = fmul fast float %1942, %1934
  %1944 = call float @dx.op.dot3.f32(i32 55, float %1190, float %1191, float %1192, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1945 = fmul fast float %1938, %1944
  %1946 = fadd fast float %1945, %1943
  br i1 %1916, label %1947, label %1953, !dx.controlflow.hints !105

; <label>:1947                                    ; preds = %1939
  %1948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1949 = extractvalue %dx.types.CBufRet.f32 %1948, 1
  %1950 = fadd fast float %1184, -1.000000e+00
  %1951 = fmul fast float %1949, %1950
  %1952 = fadd fast float %1951, 1.000000e+00
  br label %1953

; <label>:1953                                    ; preds = %1947, %1939
  %1954 = phi float [ %1952, %1947 ], [ %1184, %1939 ]
  %1955 = fsub fast float %1935, %1941
  %1956 = fmul fast float %1954, %1955
  %1957 = fadd fast float %1956, %1941
  br label %1968

; <label>:1958                                    ; preds = %1927
  %1959 = fmul fast float %1934, %1184
  %1960 = fmul fast float %1935, %1185
  %1961 = fmul fast float %1936, %1186
  %1962 = fmul fast float %1938, %1190
  %1963 = fmul fast float %1938, %1191
  %1964 = fmul fast float %1938, %1192
  %1965 = fadd fast float %1962, %1959
  %1966 = fadd fast float %1963, %1960
  %1967 = fadd fast float %1964, %1961
  br label %1968

; <label>:1968                                    ; preds = %1958, %1953
  %1969 = phi float [ %1946, %1953 ], [ %1965, %1958 ]
  %1970 = phi float [ %1957, %1953 ], [ %1966, %1958 ]
  %1971 = phi float [ %1936, %1953 ], [ %1967, %1958 ]
  %1972 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1973 = extractvalue %dx.types.CBufRet.i32 %1972, 1
  %1974 = shl i32 %1973, 1
  %1975 = lshr i32 %1622, 5
  %1976 = extractvalue %dx.types.CBufRet.i32 %1972, 0
  %1977 = mul i32 %1976, %1975
  %1978 = add i32 %1974, %1532
  %1979 = add i32 %1978, %1977
  %1980 = shl i32 %1979, 2
  %1981 = and i32 %1622, 24
  %1982 = or i32 %1981, %1537
  %1983 = shl i32 1, %1982
  %1984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %1985 = extractvalue %dx.types.ResRet.i32 %1984, 0
  %1986 = and i32 %1985, %1983
  %1987 = icmp eq i32 %1986, 0
  br i1 %1987, label %2003, label %1988, !dx.controlflow.hints !106

; <label>:1988                                    ; preds = %1968
  %1989 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1621, i32 %1622, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1990 = extractvalue %dx.types.ResRet.f32 %1989, 0
  %1991 = fcmp fast ogt float %1990, 0.000000e+00
  br i1 %1991, label %1992, label %2003, !dx.controlflow.hints !107

; <label>:1992                                    ; preds = %1988
  %1993 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %1621, i32 %1622, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1994 = extractvalue %dx.types.ResRet.f32 %1993, 0
  %1995 = extractvalue %dx.types.ResRet.f32 %1993, 1
  %1996 = extractvalue %dx.types.ResRet.f32 %1993, 2
  %1997 = extractvalue %dx.types.ResRet.f32 %1993, 3
  %1998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %1999 = extractvalue %dx.types.CBufRet.f32 %1998, 2
  %2000 = fmul fast float %1999, %1994
  %2001 = fmul fast float %1999, %1995
  %2002 = fmul fast float %1999, %1996
  br label %2003

; <label>:2003                                    ; preds = %1992, %1988, %1968
  %2004 = phi float [ %2000, %1992 ], [ 0.000000e+00, %1988 ], [ 0.000000e+00, %1968 ]
  %2005 = phi float [ %2001, %1992 ], [ 0.000000e+00, %1988 ], [ 0.000000e+00, %1968 ]
  %2006 = phi float [ %2002, %1992 ], [ 0.000000e+00, %1988 ], [ 0.000000e+00, %1968 ]
  %2007 = phi float [ %1997, %1992 ], [ 0.000000e+00, %1988 ], [ 0.000000e+00, %1968 ]
  %2008 = fsub fast float 1.000000e+00, %2007
  %2009 = fmul fast float %2008, %1969
  %2010 = fmul fast float %2008, %1970
  %2011 = fmul fast float %2008, %1971
  %2012 = fadd fast float %2009, %2004
  %2013 = fadd fast float %2010, %2005
  %2014 = fadd fast float %2011, %2006
  %2015 = fadd fast float %1652, 0x3FE3C6EF40000000
  %2016 = call float @dx.op.unary.f32(i32 22, float %2015)  ; Frc(value)
  %2017 = call float @dx.op.unary.f32(i32 23, float %2012)  ; Log(value)
  %2018 = fadd fast float %2017, -7.000000e+00
  %2019 = call float @dx.op.unary.f32(i32 21, float %2018)  ; Exp(value)
  %2020 = fmul fast float %2016, 2.000000e+00
  %2021 = fadd fast float %2020, -1.000000e+00
  %2022 = fmul fast float %2019, %2021
  %2023 = fcmp fast ogt float %2012, 0.000000e+00
  %2024 = select i1 %2023, float %2022, float 0.000000e+00
  %2025 = fadd fast float %2024, %2012
  %2026 = fadd fast float %1652, 0x3FF3C6EF40000000
  %2027 = call float @dx.op.unary.f32(i32 22, float %2026)  ; Frc(value)
  %2028 = call float @dx.op.unary.f32(i32 23, float %2013)  ; Log(value)
  %2029 = fadd fast float %2028, -7.000000e+00
  %2030 = call float @dx.op.unary.f32(i32 21, float %2029)  ; Exp(value)
  %2031 = fmul fast float %2027, 2.000000e+00
  %2032 = fadd fast float %2031, -1.000000e+00
  %2033 = fmul fast float %2030, %2032
  %2034 = fcmp fast ogt float %2013, 0.000000e+00
  %2035 = select i1 %2034, float %2033, float 0.000000e+00
  %2036 = fadd fast float %2035, %2013
  %2037 = fadd fast float %1652, 0x3FFDAA66E0000000
  %2038 = call float @dx.op.unary.f32(i32 22, float %2037)  ; Frc(value)
  %2039 = call float @dx.op.unary.f32(i32 23, float %2014)  ; Log(value)
  %2040 = fadd fast float %2039, -6.000000e+00
  %2041 = call float @dx.op.unary.f32(i32 21, float %2040)  ; Exp(value)
  %2042 = fmul fast float %2038, 2.000000e+00
  %2043 = fadd fast float %2042, -1.000000e+00
  %2044 = fmul fast float %2041, %2043
  %2045 = fcmp fast ogt float %2014, 0.000000e+00
  %2046 = select i1 %2045, float %2044, float 0.000000e+00
  %2047 = fadd fast float %2046, %2014
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1621, i32 %1622, i32 undef, float %2025, float %2036, float %2047, float %2025, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2048 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2049 = extractvalue %dx.types.CBufRet.i32 %2048, 0
  %2050 = and i32 %2049, 1
  %2051 = icmp ne i32 %2050, 0
  %2052 = or i32 %1622, %1614
  %2053 = and i32 %2052, 1
  %2054 = icmp eq i32 %2053, 0
  %2055 = and i1 %2054, %2051
  br i1 %2055, label %2056, label %1631, !dx.controlflow.hints !108

; <label>:2056                                    ; preds = %2003
  %2057 = and i32 %45, 2147483647
  %2058 = lshr i32 %1622, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2057, i32 %2058, i32 undef, float %1934, float %1935, float %1936, float %1934, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1631

; <label>:2059                                    ; preds = %1631
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
!dx.entryPoints = !{!36}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !25, !28, !32}
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
!25 = !{!26, !27}
!26 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!27 = !{i32 1, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!28 = !{!29, !30, !31}
!29 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!30 = !{i32 1, %PostOpaqueConstants* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!31 = !{i32 2, %SSSBlurConstBuffer* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!32 = !{!33, !34, !35}
!33 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!34 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!35 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!36 = !{void ()* @cs_post_opaque_processes_dmfpscale, !"cs_post_opaque_processes_dmfpscale", null, !4, !37}
!37 = !{i32 0, i64 8464, i32 4, !38}
!38 = !{i32 8, i32 8, i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 1}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = !{!52, !52, i64 0}
!52 = !{!"float", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !{!56, !58, !60, !61, !63, !64, !65}
!56 = distinct !{!56, !57, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!57 = distinct !{!57, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!58 = distinct !{!58, !59, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!59 = distinct !{!59, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!60 = distinct !{!60, !59, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!61 = distinct !{!61, !62, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %extinction"}
!62 = distinct !{!62, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z"}
!63 = distinct !{!63, !62, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %scattering"}
!64 = distinct !{!64, !62, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %thermalFogExtinction"}
!65 = distinct !{!65, !66, !"\01?PostOpaqueProcessesQuadLoop@@YAXV?$vector@I$01@@00V?$vector@M$03@@AIAV?$vector@M$02@@_N33V?$vector@_N$03@@@Z: %colorQuadAvg"}
!66 = distinct !{!66, !"\01?PostOpaqueProcessesQuadLoop@@YAXV?$vector@I$01@@00V?$vector@M$03@@AIAV?$vector@M$02@@_N33V?$vector@_N$03@@@Z"}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = !{!69}
!69 = distinct !{!69, !70, !"\01?sort@@YAXAIAM00@Z: %c"}
!70 = distinct !{!70, !"\01?sort@@YAXAIAM00@Z"}
!71 = !{!72, !73, !56, !58, !60, !61, !63, !64, !65}
!72 = distinct !{!72, !70, !"\01?sort@@YAXAIAM00@Z: %a"}
!73 = distinct !{!73, !70, !"\01?sort@@YAXAIAM00@Z: %b"}
!74 = !{!73}
!75 = !{!72, !69, !56, !58, !60, !61, !63, !64, !65}
!76 = !{!72}
!77 = !{!73, !69, !56, !58, !60, !61, !63, !64, !65}
!78 = !{!79}
!79 = distinct !{!79, !80, !"\01?sort@@YAXAIAM00@Z: %c"}
!80 = distinct !{!80, !"\01?sort@@YAXAIAM00@Z"}
!81 = !{!82, !83, !56, !58, !60, !61, !63, !64, !65}
!82 = distinct !{!82, !80, !"\01?sort@@YAXAIAM00@Z: %a"}
!83 = distinct !{!83, !80, !"\01?sort@@YAXAIAM00@Z: %b"}
!84 = !{!83}
!85 = !{!82, !79, !56, !58, !60, !61, !63, !64, !65}
!86 = !{!82}
!87 = !{!83, !79, !56, !58, !60, !61, !63, !64, !65}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !102}
!102 = !{!"llvm.loop.unroll.disable"}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 2}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 2}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}
!111 = !{!65}

