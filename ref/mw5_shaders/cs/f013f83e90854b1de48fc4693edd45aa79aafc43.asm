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
; shader hash: a62d95c65485c9de6fe466b423a80d19
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

define void @cs_post_opaque_processes_luma_subsampletile_dmfpscale() {
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
  %1205 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1203, i32 %1204, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1206 = extractvalue %dx.types.ResRet.f32 %1205, 0
  %1207 = fadd fast float %1206, %1200
  %1208 = call float @dx.op.unary.f32(i32 22, float %1207)  ; Frc(value)
  %1209 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 undef, i32 %50, i32 %51, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %1382 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %23, float %1380, float %1381, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %1548 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %50, i32 %51, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1549 = extractvalue %dx.types.ResRet.f32 %1548, 0
  %1550 = fcmp fast ogt float %1549, 0.000000e+00
  br i1 %1550, label %1551, label %1562, !dx.controlflow.hints !108

; <label>:1551                                    ; preds = %1547
  %1552 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %50, i32 %51, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %50, i32 %51, i32 undef, float %1584, float %1595, float %1606, float %1584, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
  %1630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1631 = extractvalue %dx.types.CBufRet.f32 %1630, 0
  %1632 = fptoui float %1631 to i32
  %1633 = icmp uge i32 %1628, %1632
  %1634 = extractvalue %dx.types.CBufRet.f32 %1630, 1
  %1635 = fptoui float %1634 to i32
  %1636 = icmp uge i32 %1629, %1635
  %1637 = or i1 %1633, %1636
  br i1 %1637, label %1638, label %1644, !dx.controlflow.hints !110

; <label>:1638                                    ; preds = %3171, %1615
  %1639 = phi float [ %1616, %1615 ], [ %3172, %3171 ]
  %1640 = phi float [ %1617, %1615 ], [ %3173, %3171 ]
  %1641 = phi float [ %1618, %1615 ], [ %3174, %3171 ]
  %1642 = phi float [ %1619, %1615 ], [ %3175, %3171 ]
  %1643 = icmp eq i32 %1625, 0
  br i1 %1643, label %3176, label %1615

; <label>:1644                                    ; preds = %1615
  %1645 = uitofp i32 %1628 to float
  %1646 = uitofp i32 %1629 to float
  %1647 = fadd fast float %1645, 5.000000e-01
  %1648 = fadd fast float %1646, 5.000000e-01
  %1649 = extractvalue %dx.types.CBufRet.f32 %1630, 2
  %1650 = extractvalue %dx.types.CBufRet.f32 %1630, 3
  %1651 = fmul fast float %1649, %1647
  %1652 = fmul fast float %1650, %1648
  %1653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1665 = extractvalue %dx.types.ResRet.i32 %1664, 0
  %1666 = and i32 %1665, 114688
  %1667 = icmp ne i32 %1666, 0
  %1668 = select i1 %1667, i32 %1628, i32 0
  %1669 = select i1 %1667, i32 %1629, i32 0
  %1670 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %1668, i32 %1669, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1671 = extractvalue %dx.types.ResRet.f32 %1670, 0
  %1672 = fmul fast float %1671, 2.550000e+02
  %1673 = fptoui float %1672 to i32
  %1674 = icmp eq i32 %1673, 3
  %1675 = and i1 %1667, %1674
  %1676 = getelementptr [4 x float], [4 x float]* %35, i32 0, i32 %1621
  %1677 = load float, float* %1676, align 4, !tbaa !52, !noalias !111
  %1678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1679 = extractvalue %dx.types.CBufRet.f32 %1678, 3
  %1680 = fcmp fast oge float %1677, %1679
  br i1 %1675, label %2540, label %1681, !dx.controlflow.hints !40

; <label>:1681                                    ; preds = %1644
  %1682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 170)  ; CBufferLoadLegacy(handle,regIndex)
  %1683 = extractvalue %dx.types.CBufRet.f32 %1682, 0
  %1684 = select i1 %1680, float %1683, float %1677
  %1685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1686 = extractvalue %dx.types.CBufRet.f32 %1685, 2
  %1687 = extractvalue %dx.types.CBufRet.f32 %1685, 3
  %1688 = fmul fast float %1647, 2.000000e+00
  %1689 = fmul fast float %1688, %1686
  %1690 = fmul fast float %1648, 2.000000e+00
  %1691 = fmul fast float %1690, %1687
  %1692 = fsub fast float 1.000000e+00, %1689
  %1693 = fsub fast float 1.000000e+00, %1691
  %1694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1695 = extractvalue %dx.types.CBufRet.f32 %1694, 0
  %1696 = extractvalue %dx.types.CBufRet.f32 %1694, 1
  %1697 = extractvalue %dx.types.CBufRet.f32 %1694, 2
  %1698 = fmul fast float %1692, %1695
  %1699 = fmul fast float %1692, %1696
  %1700 = fmul fast float %1692, %1697
  %1701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1702 = extractvalue %dx.types.CBufRet.f32 %1701, 0
  %1703 = extractvalue %dx.types.CBufRet.f32 %1701, 1
  %1704 = extractvalue %dx.types.CBufRet.f32 %1701, 2
  %1705 = fmul fast float %1693, %1702
  %1706 = fmul fast float %1693, %1703
  %1707 = fmul fast float %1693, %1704
  %1708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1709 = extractvalue %dx.types.CBufRet.f32 %1708, 0
  %1710 = extractvalue %dx.types.CBufRet.f32 %1708, 1
  %1711 = extractvalue %dx.types.CBufRet.f32 %1708, 2
  %1712 = fadd fast float %1705, %1709
  %1713 = fadd fast float %1712, %1698
  %1714 = fadd fast float %1706, %1710
  %1715 = fadd fast float %1714, %1699
  %1716 = fadd fast float %1707, %1711
  %1717 = fadd fast float %1716, %1700
  %1718 = fmul fast float %1713, %1684
  %1719 = fmul fast float %1715, %1684
  %1720 = fmul fast float %1717, %1684
  %1721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 163)  ; CBufferLoadLegacy(handle,regIndex)
  %1722 = extractvalue %dx.types.CBufRet.f32 %1721, 0
  %1723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1724 = extractvalue %dx.types.CBufRet.f32 %1723, 0
  %1725 = extractvalue %dx.types.CBufRet.f32 %1723, 1
  %1726 = extractvalue %dx.types.CBufRet.f32 %1723, 2
  %1727 = extractvalue %dx.types.CBufRet.f32 %1723, 3
  %1728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1729 = extractvalue %dx.types.CBufRet.f32 %1728, 0
  %1730 = extractvalue %dx.types.CBufRet.f32 %1728, 1
  %1731 = extractvalue %dx.types.CBufRet.f32 %1728, 2
  %1732 = extractvalue %dx.types.CBufRet.f32 %1728, 3
  %1733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1734 = extractvalue %dx.types.CBufRet.f32 %1733, 0
  %1735 = extractvalue %dx.types.CBufRet.f32 %1733, 1
  %1736 = extractvalue %dx.types.CBufRet.f32 %1733, 2
  %1737 = extractvalue %dx.types.CBufRet.f32 %1733, 3
  %1738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1739 = extractvalue %dx.types.CBufRet.f32 %1738, 0
  %1740 = extractvalue %dx.types.CBufRet.f32 %1738, 1
  %1741 = extractvalue %dx.types.CBufRet.f32 %1738, 2
  %1742 = extractvalue %dx.types.CBufRet.f32 %1738, 3
  %1743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1744 = extractvalue %dx.types.CBufRet.f32 %1743, 3
  %1745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1746 = extractvalue %dx.types.CBufRet.f32 %1745, 3
  %1747 = extractvalue %dx.types.CBufRet.f32 %1745, 0
  %1748 = extractvalue %dx.types.CBufRet.f32 %1745, 1
  %1749 = extractvalue %dx.types.CBufRet.f32 %1745, 2
  %1750 = fcmp fast olt float %1749, -5.000000e-01
  %1751 = extractvalue %dx.types.CBufRet.f32 %1721, 3
  %1752 = call float @dx.op.dot3.f32(i32 55, float %1718, float %1719, float %1720, float %1718, float %1719, float %1720)  ; Dot3(ax,ay,az,bx,by,bz)
  %1753 = call float @dx.op.unary.f32(i32 25, float %1752)  ; Rsqrt(value)
  %1754 = fmul fast float %1753, %1752
  %1755 = fmul fast float %1753, %1718
  %1756 = fmul fast float %1753, %1719
  %1757 = fmul fast float %1753, %1720
  %1758 = fadd fast float %1754, %1727
  br i1 %1680, label %1759, label %1771, !dx.controlflow.hints !41

; <label>:1759                                    ; preds = %1681
  %1760 = extractvalue %dx.types.CBufRet.f32 %1721, 2
  %1761 = extractvalue %dx.types.CBufRet.f32 %1721, 1
  %1762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 187)  ; CBufferLoadLegacy(handle,regIndex)
  %1763 = extractvalue %dx.types.CBufRet.f32 %1762, 1
  %1764 = extractvalue %dx.types.CBufRet.f32 %1762, 0
  %1765 = call float @dx.op.binary.f32(i32 35, float %1757, float %1764)  ; FMax(a,b)
  %1766 = call float @dx.op.binary.f32(i32 36, float %1765, float %1763)  ; FMin(a,b)
  %1767 = fmul fast float %1766, %1761
  %1768 = fadd fast float %1767, %1760
  %1769 = call float @dx.op.unary.f32(i32 7, float %1768)  ; Saturate(value)
  %1770 = fmul fast float %1757, %1722
  br label %1771

; <label>:1771                                    ; preds = %1759, %1681
  %1772 = phi float [ %1722, %1759 ], [ %1758, %1681 ]
  %1773 = phi float [ %1769, %1759 ], [ 0.000000e+00, %1681 ]
  %1774 = phi float [ %1770, %1759 ], [ %1720, %1681 ]
  %1775 = call float @dx.op.dot3.f32(i32 55, float %1755, float %1756, float %1757, float %1724, float %1725, float %1726)  ; Dot3(ax,ay,az,bx,by,bz)
  %1776 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1777 = extractvalue %dx.types.CBufRet.i32 %1776, 1
  %1778 = and i32 %1777, 1
  %1779 = icmp ne i32 %1778, 0
  %1780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1781 = extractvalue %dx.types.CBufRet.f32 %1780, 2
  %1782 = fcmp fast ogt float %1781, 0.000000e+00
  %1783 = and i1 %1779, %1782
  br i1 %1783, label %1784, label %2193, !dx.controlflow.hints !42

; <label>:1784                                    ; preds = %1771
  %1785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1786 = extractvalue %dx.types.CBufRet.f32 %1785, 3
  %1787 = select i1 %1680, float %1786, float %1754
  %1788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1788, 3
  %1790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1791 = extractvalue %dx.types.CBufRet.f32 %1790, 2
  %1792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1793 = extractvalue %dx.types.CBufRet.f32 %1792, 2
  %1794 = fsub fast float %1791, %1793
  %1795 = and i32 %1777, 2
  %1796 = extractvalue %dx.types.CBufRet.i32 %1776, 0
  %1797 = call i32 @dx.op.binary.i32(i32 40, i32 %1796, i32 3)  ; UMin(a,b)
  %1798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1799 = extractvalue %dx.types.CBufRet.f32 %1798, 0
  %1800 = extractvalue %dx.types.CBufRet.f32 %1798, 1
  %1801 = extractvalue %dx.types.CBufRet.f32 %1792, 0
  %1802 = extractvalue %dx.types.CBufRet.f32 %1792, 1
  %1803 = fsub fast float %1799, %1801
  %1804 = fsub fast float %1800, %1802
  %1805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1806 = extractvalue %dx.types.CBufRet.f32 %1805, 0
  %1807 = fcmp fast ogt float %1806, 0.000000e+00
  %1808 = fsub fast float -0.000000e+00, %1803
  %1809 = fsub fast float -0.000000e+00, %1804
  %1810 = call float @dx.op.dot2.f32(i32 54, float %1755, float %1756, float %1755, float %1756)  ; Dot2(ax,ay,bx,by)
  %1811 = call float @dx.op.dot2.f32(i32 54, float %1755, float %1756, float %1808, float %1809)  ; Dot2(ax,ay,bx,by)
  %1812 = fmul fast float %1811, 2.000000e+00
  %1813 = call float @dx.op.dot2.f32(i32 54, float %1808, float %1809, float %1808, float %1809)  ; Dot2(ax,ay,bx,by)
  %1814 = fmul fast float %1806, %1806
  %1815 = fsub fast float %1813, %1814
  %1816 = fmul fast float %1812, %1812
  %1817 = fmul fast float %1810, 4.000000e+00
  %1818 = fmul fast float %1817, %1815
  %1819 = fsub fast float %1816, %1818
  %1820 = fcmp fast ogt float %1819, 0.000000e+00
  br i1 %1820, label %1821, label %1836, !dx.controlflow.hints !43

; <label>:1821                                    ; preds = %1784
  %1822 = fcmp fast ogt float %1812, 0.000000e+00
  %1823 = call float @dx.op.unary.f32(i32 24, float %1819)  ; Sqrt(value)
  %1824 = fsub fast float -0.000000e+00, %1823
  %1825 = select i1 %1822, float %1823, float %1824
  %1826 = fadd fast float %1825, %1812
  %1827 = fmul float %1826, -5.000000e-01
  %1828 = fdiv fast float %1827, %1810
  %1829 = call float @dx.op.binary.f32(i32 35, float %1828, float 0.000000e+00)  ; FMax(a,b)
  %1830 = call float @dx.op.binary.f32(i32 36, float %1787, float %1829)  ; FMin(a,b)
  %1831 = fdiv fast float %1815, %1827
  %1832 = call float @dx.op.binary.f32(i32 35, float %1831, float 0.000000e+00)  ; FMax(a,b)
  %1833 = call float @dx.op.binary.f32(i32 36, float %1787, float %1832)  ; FMin(a,b)
  %1834 = call float @dx.op.binary.f32(i32 36, float %1830, float %1833)  ; FMin(a,b)
  %1835 = call float @dx.op.binary.f32(i32 35, float %1830, float %1833)  ; FMax(a,b)
  br label %1836

; <label>:1836                                    ; preds = %1821, %1784
  %1837 = phi float [ %1835, %1821 ], [ -1.000000e+00, %1784 ]
  %1838 = phi float [ %1834, %1821 ], [ -1.000000e+00, %1784 ]
  %1839 = phi i1 [ true, %1821 ], [ false, %1784 ]
  %1840 = and i1 %1807, %1839
  br i1 %1840, label %1841, label %1843, !dx.controlflow.hints !44

; <label>:1841                                    ; preds = %1836
  %1842 = fcmp fast oeq float %1838, %1837
  br i1 %1842, label %2146, label %1844, !dx.controlflow.hints !45

; <label>:1843                                    ; preds = %1836
  br i1 %1807, label %2146, label %1844, !dx.controlflow.hints !46

; <label>:1844                                    ; preds = %1843, %1841
  %1845 = phi float [ %1787, %1843 ], [ %1837, %1841 ]
  %1846 = phi float [ 0.000000e+00, %1843 ], [ %1838, %1841 ]
  %1847 = icmp ne i32 %1795, 0
  %1848 = fmul fast float %1845, %1757
  %1849 = fadd fast float %1848, %1789
  %1850 = fmul fast float %1849, %1845
  %1851 = select i1 %1847, float 0.000000e+00, float %1850
  %1852 = fcmp fast oeq float %1757, 0.000000e+00
  %1853 = fdiv fast float %1794, %1757
  %1854 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1853)  ; FMax(a,b)
  %1855 = select i1 %1852, float %1845, float %1854
  %1856 = call float @dx.op.binary.f32(i32 36, float %1845, float %1855)  ; FMin(a,b)
  %1857 = fcmp fast ogt float %1757, 0.000000e+00
  %1858 = fcmp fast olt float %1794, 0.000000e+00
  br i1 %1857, label %1859, label %1916, !dx.controlflow.hints !47

; <label>:1859                                    ; preds = %1844
  %1860 = icmp eq i32 %1795, 0
  br i1 %1858, label %1861, label %1905, !dx.controlflow.hints !48

; <label>:1861                                    ; preds = %1859
  %1862 = select i1 %1860, float %1845, float 0.000000e+00
  %1863 = fsub fast float -0.000000e+00, %1862
  %1864 = call float @dx.op.unary.f32(i32 6, float %1863)  ; FAbs(value)
  %1865 = fmul fast float %1862, %1757
  %1866 = fadd fast float %1865, %1789
  %1867 = fmul fast float %1864, %1866
  %1868 = fsub fast float %1851, %1867
  %1869 = fsub fast float %1845, %1864
  %1870 = select i1 %1860, float %1869, float 0.000000e+00
  %1871 = extractvalue %dx.types.CBufRet.f32 %1785, 0
  %1872 = extractvalue %dx.types.CBufRet.f32 %1785, 1
  %1873 = extractvalue %dx.types.CBufRet.f32 %1785, 2
  %1874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1875 = extractvalue %dx.types.CBufRet.f32 %1874, 0
  %1876 = extractvalue %dx.types.CBufRet.f32 %1874, 1
  %1877 = extractvalue %dx.types.CBufRet.f32 %1874, 2
  %1878 = extractvalue %dx.types.CBufRet.f32 %1874, 3
  %1879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1880 = extractvalue %dx.types.CBufRet.f32 %1879, 3
  %1881 = call float @dx.op.binary.f32(i32 36, float %1868, float %1880)  ; FMin(a,b)
  %1882 = fmul fast float %1878, %1870
  %1883 = call float @dx.op.unary.f32(i32 7, float %1882)  ; Saturate(value)
  %1884 = fsub fast float %1875, %1871
  %1885 = fsub fast float %1876, %1872
  %1886 = fsub fast float %1877, %1873
  %1887 = fmul fast float %1883, %1884
  %1888 = fmul fast float %1883, %1885
  %1889 = fmul fast float %1883, %1886
  %1890 = fadd fast float %1887, %1871
  %1891 = fadd fast float %1888, %1872
  %1892 = fadd fast float %1889, %1873
  br i1 %1680, label %2146, label %1893, !dx.controlflow.hints !49

; <label>:1893                                    ; preds = %1861
  %1894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1895 = extractvalue %dx.types.CBufRet.f32 %1894, 0
  %1896 = extractvalue %dx.types.CBufRet.f32 %1894, 1
  %1897 = fadd fast float %1896, %1895
  %1898 = call float @dx.op.unary.f32(i32 7, float %1897)  ; Saturate(value)
  %1899 = extractvalue %dx.types.CBufRet.f32 %1894, 2
  %1900 = extractvalue %dx.types.CBufRet.f32 %1894, 3
  %1901 = fadd fast float %1900, %1899
  %1902 = call float @dx.op.unary.f32(i32 7, float %1901)  ; Saturate(value)
  %1903 = fmul fast float %1898, %1881
  %1904 = fmul fast float %1903, %1902
  br label %2146

; <label>:1905                                    ; preds = %1859
  br i1 %1860, label %1906, label %1927, !dx.controlflow.hints !50

; <label>:1906                                    ; preds = %1905
  %1907 = call float @dx.op.binary.f32(i32 36, float %1856, float %1846)  ; FMin(a,b)
  %1908 = fsub fast float %1856, %1907
  %1909 = fsub fast float %1908, %1845
  %1910 = call float @dx.op.unary.f32(i32 6, float %1909)  ; FAbs(value)
  %1911 = fadd fast float %1908, %1845
  %1912 = fmul fast float %1911, %1757
  %1913 = fadd fast float %1912, %1789
  %1914 = fmul fast float %1913, %1910
  %1915 = fsub fast float %1851, %1914
  br label %1927

; <label>:1916                                    ; preds = %1844
  br i1 %1858, label %1917, label %1927, !dx.controlflow.hints !51

; <label>:1917                                    ; preds = %1916
  %1918 = call float @dx.op.binary.f32(i32 35, float %1846, float %1856)  ; FMax(a,b)
  %1919 = icmp eq i32 %1795, 0
  %1920 = select i1 %1919, float %1856, float 0.000000e+00
  %1921 = fsub fast float -0.000000e+00, %1920
  %1922 = call float @dx.op.unary.f32(i32 6, float %1921)  ; FAbs(value)
  %1923 = fmul fast float %1920, %1757
  %1924 = fadd fast float %1923, %1789
  %1925 = fmul fast float %1922, %1924
  %1926 = fsub fast float %1851, %1925
  br label %1927

; <label>:1927                                    ; preds = %1917, %1916, %1906, %1905
  %1928 = phi float [ %1846, %1905 ], [ %1846, %1906 ], [ %1918, %1917 ], [ %1846, %1916 ]
  %1929 = phi float [ 0.000000e+00, %1905 ], [ %1910, %1906 ], [ %1922, %1917 ], [ 0.000000e+00, %1916 ]
  %1930 = phi float [ %1851, %1905 ], [ %1915, %1906 ], [ %1926, %1917 ], [ %1851, %1916 ]
  %1931 = phi float [ %1856, %1905 ], [ %1856, %1906 ], [ %1845, %1917 ], [ %1845, %1916 ]
  %1932 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 0
  store float -1.000000e+00, float* %1932, align 4, !tbaa !52, !noalias !112
  %1933 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 1
  store float -1.000000e+00, float* %1933, align 4, !tbaa !52, !noalias !112
  %1934 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 2
  store float -1.000000e+00, float* %1934, align 4, !tbaa !52, !noalias !112
  %1935 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 0
  store float -1.000000e+00, float* %1935, align 4, !tbaa !52, !noalias !112
  %1936 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 1
  store float -1.000000e+00, float* %1936, align 4, !tbaa !52, !noalias !112
  %1937 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 2
  store float -1.000000e+00, float* %1937, align 4, !tbaa !52, !noalias !112
  %1938 = icmp sgt i32 %1797, 0
  br i1 %1938, label %1939, label %2000

; <label>:1939                                    ; preds = %1927
  br label %1940

; <label>:1940                                    ; preds = %1989, %1939
  %1941 = phi i32 [ %1990, %1989 ], [ 0, %1939 ]
  %1942 = phi i32 [ %1991, %1989 ], [ 0, %1939 ]
  %1943 = add nuw i32 %1942, 171
  %1944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 %1943)  ; CBufferLoadLegacy(handle,regIndex)
  %1945 = extractvalue %dx.types.CBufRet.f32 %1944, 0
  %1946 = extractvalue %dx.types.CBufRet.f32 %1944, 1
  %1947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1948 = extractvalue %dx.types.CBufRet.f32 %1947, 0
  %1949 = extractvalue %dx.types.CBufRet.f32 %1947, 1
  %1950 = fsub fast float %1945, %1948
  %1951 = fsub fast float %1946, %1949
  %1952 = extractvalue %dx.types.CBufRet.f32 %1944, 2
  %1953 = fsub fast float -0.000000e+00, %1950
  %1954 = fsub fast float -0.000000e+00, %1951
  %1955 = call float @dx.op.dot2.f32(i32 54, float %1755, float %1756, float %1953, float %1954)  ; Dot2(ax,ay,bx,by)
  %1956 = fmul fast float %1955, 2.000000e+00
  %1957 = call float @dx.op.dot2.f32(i32 54, float %1953, float %1954, float %1953, float %1954)  ; Dot2(ax,ay,bx,by)
  %1958 = fmul fast float %1952, %1952
  %1959 = fsub fast float %1957, %1958
  %1960 = fmul fast float %1956, %1956
  %1961 = fmul fast float %1817, %1959
  %1962 = fsub fast float %1960, %1961
  %1963 = fcmp fast ogt float %1962, 0.000000e+00
  br i1 %1963, label %1964, label %1979, !dx.controlflow.hints !43

; <label>:1964                                    ; preds = %1940
  %1965 = fcmp fast ogt float %1956, 0.000000e+00
  %1966 = call float @dx.op.unary.f32(i32 24, float %1962)  ; Sqrt(value)
  %1967 = fsub fast float -0.000000e+00, %1966
  %1968 = select i1 %1965, float %1966, float %1967
  %1969 = fadd fast float %1968, %1956
  %1970 = fmul float %1969, -5.000000e-01
  %1971 = fdiv fast float %1970, %1810
  %1972 = call float @dx.op.binary.f32(i32 35, float %1971, float 0.000000e+00)  ; FMax(a,b)
  %1973 = call float @dx.op.binary.f32(i32 36, float %1845, float %1972)  ; FMin(a,b)
  %1974 = fdiv fast float %1959, %1970
  %1975 = call float @dx.op.binary.f32(i32 35, float %1974, float 0.000000e+00)  ; FMax(a,b)
  %1976 = call float @dx.op.binary.f32(i32 36, float %1845, float %1975)  ; FMin(a,b)
  %1977 = call float @dx.op.binary.f32(i32 36, float %1973, float %1976)  ; FMin(a,b)
  %1978 = call float @dx.op.binary.f32(i32 35, float %1973, float %1976)  ; FMax(a,b)
  br label %1979

; <label>:1979                                    ; preds = %1964, %1940
  %1980 = phi float [ %1978, %1964 ], [ -1.000000e+00, %1940 ]
  %1981 = phi float [ %1977, %1964 ], [ -1.000000e+00, %1940 ]
  %1982 = phi i1 [ true, %1964 ], [ false, %1940 ]
  br i1 %1982, label %1983, label %1989, !dx.controlflow.hints !68

; <label>:1983                                    ; preds = %1979
  %1984 = call float @dx.op.binary.f32(i32 35, float %1928, float %1981)  ; FMax(a,b)
  %1985 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %1942
  store float %1984, float* %1985, align 4, !tbaa !52, !noalias !112
  %1986 = call float @dx.op.binary.f32(i32 35, float %1928, float %1980)  ; FMax(a,b)
  %1987 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %1942
  store float %1986, float* %1987, align 4, !tbaa !52, !noalias !112
  %1988 = add nsw i32 %1941, 1
  br label %1989

; <label>:1989                                    ; preds = %1983, %1979
  %1990 = phi i32 [ %1988, %1983 ], [ %1941, %1979 ]
  %1991 = add nuw nsw i32 %1942, 1
  %1992 = icmp eq i32 %1991, %1797
  br i1 %1992, label %1993, label %1940

; <label>:1993                                    ; preds = %1989
  %1994 = load float, float* %1934, align 4, !tbaa !52, !alias.scope !122, !noalias !125
  %1995 = load float, float* %1933, align 4, !tbaa !52, !alias.scope !128, !noalias !129
  %1996 = load float, float* %1932, align 4, !tbaa !52, !alias.scope !130, !noalias !131
  %1997 = load float, float* %1937, align 4, !tbaa !52, !alias.scope !132, !noalias !135
  %1998 = load float, float* %1936, align 4, !tbaa !52, !alias.scope !138, !noalias !139
  %1999 = load float, float* %1935, align 4, !tbaa !52, !alias.scope !140, !noalias !141
  br label %2000

; <label>:2000                                    ; preds = %1993, %1927
  %2001 = phi float [ -1.000000e+00, %1927 ], [ %1999, %1993 ]
  %2002 = phi float [ -1.000000e+00, %1927 ], [ %1998, %1993 ]
  %2003 = phi float [ -1.000000e+00, %1927 ], [ %1997, %1993 ]
  %2004 = phi float [ -1.000000e+00, %1927 ], [ %1996, %1993 ]
  %2005 = phi float [ -1.000000e+00, %1927 ], [ %1995, %1993 ]
  %2006 = phi float [ -1.000000e+00, %1927 ], [ %1994, %1993 ]
  %2007 = phi i32 [ 0, %1927 ], [ %1990, %1993 ]
  %2008 = call float @dx.op.binary.f32(i32 36, float %2005, float %2006)  ; FMin(a,b)
  %2009 = call float @dx.op.binary.f32(i32 36, float %2004, float %2008)  ; FMin(a,b)
  %2010 = call float @dx.op.binary.f32(i32 35, float %2004, float %2005)  ; FMax(a,b)
  %2011 = call float @dx.op.binary.f32(i32 36, float %2010, float %2006)  ; FMin(a,b)
  %2012 = call float @dx.op.binary.f32(i32 36, float %2004, float %2005)  ; FMin(a,b)
  %2013 = call float @dx.op.binary.f32(i32 35, float %2012, float %2011)  ; FMax(a,b)
  %2014 = call float @dx.op.binary.f32(i32 35, float %2005, float %2006)  ; FMax(a,b)
  %2015 = call float @dx.op.binary.f32(i32 35, float %2004, float %2014)  ; FMax(a,b)
  store float %2009, float* %1932, align 4, !tbaa !52, !alias.scope !130, !noalias !131
  store float %2013, float* %1933, align 4, !tbaa !52, !alias.scope !128, !noalias !129
  store float %2015, float* %1934, align 4, !tbaa !52, !alias.scope !122, !noalias !125
  %2016 = call float @dx.op.binary.f32(i32 36, float %2002, float %2003)  ; FMin(a,b)
  %2017 = call float @dx.op.binary.f32(i32 36, float %2001, float %2016)  ; FMin(a,b)
  %2018 = call float @dx.op.binary.f32(i32 35, float %2001, float %2002)  ; FMax(a,b)
  %2019 = call float @dx.op.binary.f32(i32 36, float %2018, float %2003)  ; FMin(a,b)
  %2020 = call float @dx.op.binary.f32(i32 36, float %2001, float %2002)  ; FMin(a,b)
  %2021 = call float @dx.op.binary.f32(i32 35, float %2020, float %2019)  ; FMax(a,b)
  %2022 = call float @dx.op.binary.f32(i32 35, float %2002, float %2003)  ; FMax(a,b)
  %2023 = call float @dx.op.binary.f32(i32 35, float %2001, float %2022)  ; FMax(a,b)
  store float %2017, float* %1935, align 4, !tbaa !52, !alias.scope !140, !noalias !141
  store float %2021, float* %1936, align 4, !tbaa !52, !alias.scope !138, !noalias !139
  store float %2023, float* %1937, align 4, !tbaa !52, !alias.scope !132, !noalias !135
  %2024 = sub nsw i32 3, %2007
  %2025 = icmp sgt i32 %2024, 2
  br i1 %2025, label %2026, label %2064, !dx.controlflow.hints !89

; <label>:2026                                    ; preds = %2000
  %2027 = icmp eq i32 %1795, 0
  %2028 = fsub fast float %1845, %1929
  %2029 = select i1 %2027, float %2028, float %1929
  %2030 = extractvalue %dx.types.CBufRet.f32 %1785, 0
  %2031 = extractvalue %dx.types.CBufRet.f32 %1785, 1
  %2032 = extractvalue %dx.types.CBufRet.f32 %1785, 2
  %2033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2034 = extractvalue %dx.types.CBufRet.f32 %2033, 0
  %2035 = extractvalue %dx.types.CBufRet.f32 %2033, 1
  %2036 = extractvalue %dx.types.CBufRet.f32 %2033, 2
  %2037 = extractvalue %dx.types.CBufRet.f32 %2033, 3
  %2038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2039 = extractvalue %dx.types.CBufRet.f32 %2038, 3
  %2040 = call float @dx.op.binary.f32(i32 36, float %1930, float %2039)  ; FMin(a,b)
  %2041 = fmul fast float %2037, %2029
  %2042 = call float @dx.op.unary.f32(i32 7, float %2041)  ; Saturate(value)
  %2043 = fsub fast float %2034, %2030
  %2044 = fsub fast float %2035, %2031
  %2045 = fsub fast float %2036, %2032
  %2046 = fmul fast float %2042, %2043
  %2047 = fmul fast float %2042, %2044
  %2048 = fmul fast float %2042, %2045
  %2049 = fadd fast float %2046, %2030
  %2050 = fadd fast float %2047, %2031
  %2051 = fadd fast float %2048, %2032
  br i1 %1680, label %2146, label %2052, !dx.controlflow.hints !49

; <label>:2052                                    ; preds = %2026
  %2053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2054 = extractvalue %dx.types.CBufRet.f32 %2053, 0
  %2055 = extractvalue %dx.types.CBufRet.f32 %2053, 1
  %2056 = fadd fast float %2055, %2054
  %2057 = call float @dx.op.unary.f32(i32 7, float %2056)  ; Saturate(value)
  %2058 = extractvalue %dx.types.CBufRet.f32 %2053, 2
  %2059 = extractvalue %dx.types.CBufRet.f32 %2053, 3
  %2060 = fadd fast float %2059, %2058
  %2061 = call float @dx.op.unary.f32(i32 7, float %2060)  ; Saturate(value)
  %2062 = fmul fast float %2057, %2040
  %2063 = fmul fast float %2062, %2061
  br label %2146

; <label>:2064                                    ; preds = %2000
  %2065 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %2024
  %2066 = load float, float* %2065, align 4, !tbaa !52, !noalias !112
  %2067 = fcmp fast olt float %2066, %1931
  %2068 = icmp sgt i32 %2007, 0
  %2069 = and i1 %2068, %2067
  br i1 %2069, label %2070, label %2107

; <label>:2070                                    ; preds = %2064
  br label %2071

; <label>:2071                                    ; preds = %2100, %2070
  %2072 = phi float [ %2101, %2100 ], [ %1929, %2070 ]
  %2073 = phi float [ %2102, %2100 ], [ %1930, %2070 ]
  %2074 = phi float [ %2082, %2100 ], [ %2066, %2070 ]
  %2075 = phi i32 [ %2079, %2100 ], [ %2024, %2070 ]
  %2076 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %2075
  %2077 = load float, float* %2076, align 4, !tbaa !52, !noalias !112
  %2078 = icmp slt i32 %2075, 2
  %2079 = add nsw i32 %2075, 1
  %2080 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %2079
  %2081 = load float, float* %2080, align 4, !tbaa !52, !noalias !112
  %2082 = select i1 %2078, float %2081, float %1845
  %2083 = call float @dx.op.binary.f32(i32 36, float %2082, float %2077)  ; FMin(a,b)
  %2084 = call float @dx.op.binary.f32(i32 36, float %1931, float %2083)  ; FMin(a,b)
  %2085 = icmp eq i32 %1795, 0
  %2086 = fadd fast float %2084, %2074
  %2087 = fmul fast float %2086, %1757
  %2088 = fadd fast float %2087, %1789
  br i1 %2085, label %2094, label %2089, !dx.controlflow.hints !90

; <label>:2089                                    ; preds = %2071
  %2090 = fsub fast float %2084, %2074
  %2091 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2090)  ; FMax(a,b)
  %2092 = fmul fast float %2091, %2088
  %2093 = fadd fast float %2092, %2073
  br label %2100

; <label>:2094                                    ; preds = %2071
  %2095 = fsub fast float %2074, %2084
  %2096 = call float @dx.op.unary.f32(i32 6, float %2095)  ; FAbs(value)
  %2097 = fadd fast float %2096, %2072
  %2098 = fmul fast float %2096, %2088
  %2099 = fsub fast float %2073, %2098
  br label %2100

; <label>:2100                                    ; preds = %2094, %2089
  %2101 = phi float [ %2091, %2089 ], [ %2097, %2094 ]
  %2102 = phi float [ %2093, %2089 ], [ %2099, %2094 ]
  %2103 = fcmp fast olt float %2082, %1931
  %2104 = icmp slt i32 %2079, 3
  %2105 = and i1 %2104, %2103
  br i1 %2105, label %2071, label %2106

; <label>:2106                                    ; preds = %2100
  br label %2107

; <label>:2107                                    ; preds = %2106, %2064
  %2108 = phi float [ %1929, %2064 ], [ %2101, %2106 ]
  %2109 = phi float [ %1930, %2064 ], [ %2102, %2106 ]
  %2110 = fsub fast float %1845, %2108
  %2111 = select i1 %1847, float %2108, float %2110
  %2112 = extractvalue %dx.types.CBufRet.f32 %1785, 0
  %2113 = extractvalue %dx.types.CBufRet.f32 %1785, 1
  %2114 = extractvalue %dx.types.CBufRet.f32 %1785, 2
  %2115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2116 = extractvalue %dx.types.CBufRet.f32 %2115, 0
  %2117 = extractvalue %dx.types.CBufRet.f32 %2115, 1
  %2118 = extractvalue %dx.types.CBufRet.f32 %2115, 2
  %2119 = extractvalue %dx.types.CBufRet.f32 %2115, 3
  %2120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2121 = extractvalue %dx.types.CBufRet.f32 %2120, 3
  %2122 = call float @dx.op.binary.f32(i32 36, float %2109, float %2121)  ; FMin(a,b)
  %2123 = fmul fast float %2119, %2111
  %2124 = call float @dx.op.unary.f32(i32 7, float %2123)  ; Saturate(value)
  %2125 = fsub fast float %2116, %2112
  %2126 = fsub fast float %2117, %2113
  %2127 = fsub fast float %2118, %2114
  %2128 = fmul fast float %2124, %2125
  %2129 = fmul fast float %2124, %2126
  %2130 = fmul fast float %2124, %2127
  %2131 = fadd fast float %2128, %2112
  %2132 = fadd fast float %2129, %2113
  %2133 = fadd fast float %2130, %2114
  br i1 %1680, label %2146, label %2134, !dx.controlflow.hints !49

; <label>:2134                                    ; preds = %2107
  %2135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2136 = extractvalue %dx.types.CBufRet.f32 %2135, 0
  %2137 = extractvalue %dx.types.CBufRet.f32 %2135, 1
  %2138 = fadd fast float %2137, %2136
  %2139 = call float @dx.op.unary.f32(i32 7, float %2138)  ; Saturate(value)
  %2140 = extractvalue %dx.types.CBufRet.f32 %2135, 2
  %2141 = extractvalue %dx.types.CBufRet.f32 %2135, 3
  %2142 = fadd fast float %2141, %2140
  %2143 = call float @dx.op.unary.f32(i32 7, float %2142)  ; Saturate(value)
  %2144 = fmul fast float %2139, %2122
  %2145 = fmul fast float %2144, %2143
  br label %2146

; <label>:2146                                    ; preds = %2134, %2107, %2052, %2026, %1893, %1861, %1843, %1841
  %2147 = phi float [ 0.000000e+00, %1841 ], [ 0.000000e+00, %1843 ], [ %1870, %1893 ], [ %1870, %1861 ], [ %2029, %2052 ], [ %2029, %2026 ], [ %2111, %2134 ], [ %2111, %2107 ]
  %2148 = phi float [ 0.000000e+00, %1841 ], [ 0.000000e+00, %1843 ], [ %1904, %1893 ], [ %1881, %1861 ], [ %2063, %2052 ], [ %2040, %2026 ], [ %2145, %2134 ], [ %2122, %2107 ]
  %2149 = phi float [ 0.000000e+00, %1841 ], [ 0.000000e+00, %1843 ], [ %1890, %1893 ], [ %1890, %1861 ], [ %2049, %2052 ], [ %2049, %2026 ], [ %2131, %2134 ], [ %2131, %2107 ]
  %2150 = phi float [ 0.000000e+00, %1841 ], [ 0.000000e+00, %1843 ], [ %1891, %1893 ], [ %1891, %1861 ], [ %2050, %2052 ], [ %2050, %2026 ], [ %2132, %2134 ], [ %2132, %2107 ]
  %2151 = phi float [ 0.000000e+00, %1841 ], [ 0.000000e+00, %1843 ], [ %1892, %1893 ], [ %1892, %1861 ], [ %2051, %2052 ], [ %2051, %2026 ], [ %2133, %2134 ], [ %2133, %2107 ]
  %2152 = fmul fast float %1781, %2148
  %2153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2154 = extractvalue %dx.types.CBufRet.f32 %2153, 2
  %2155 = fsub fast float %1791, %2154
  %2156 = fcmp fast olt float %2152, -2.000000e+01
  %2157 = call float @dx.op.unary.f32(i32 21, float %2152)  ; Exp(value)
  %2158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2159 = extractvalue %dx.types.CBufRet.f32 %2158, 2
  %2160 = extractvalue %dx.types.CBufRet.f32 %2158, 3
  %2161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2162 = extractvalue %dx.types.CBufRet.f32 %2161, 2
  %2163 = fmul fast float %2160, %2155
  %2164 = call float @dx.op.unary.f32(i32 7, float %2163)  ; Saturate(value)
  %2165 = fsub fast float 1.000000e+00, %2164
  %2166 = fmul fast float %1757, 5.000000e-01
  %2167 = fadd fast float %2166, 5.000000e-01
  %2168 = call float @dx.op.unary.f32(i32 7, float %2167)  ; Saturate(value)
  %2169 = fsub fast float 1.000000e+00, %2168
  %2170 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2165)  ; FMax(a,b)
  %2171 = fdiv fast float %2169, %2170
  %2172 = fsub fast float %2155, %1720
  %2173 = call float @dx.op.unary.f32(i32 6, float %2172)  ; FAbs(value)
  %2174 = fmul fast float %2173, %2159
  %2175 = call float @dx.op.unary.f32(i32 7, float %2171)  ; Saturate(value)
  %2176 = fsub fast float 1.000000e+00, %2174
  %2177 = fmul fast float %2176, %2175
  %2178 = fadd fast float %2177, %2174
  %2179 = fmul fast float %2162, %2155
  %2180 = call float @dx.op.unary.f32(i32 7, float %2179)  ; Saturate(value)
  %2181 = fsub fast float 1.000000e+00, %2178
  %2182 = fmul fast float %2181, %2180
  %2183 = fadd fast float %2182, %2178
  %2184 = call float @dx.op.unary.f32(i32 7, float %2183)  ; Saturate(value)
  %2185 = fadd fast float %2157, -1.000000e+00
  %2186 = select i1 %2156, float -1.000000e+00, float %2185
  %2187 = fmul fast float %2184, %2186
  %2188 = fadd fast float %2187, 1.000000e+00
  %2189 = fsub fast float -0.000000e+00, %2187
  %2190 = fmul fast float %2149, %2189
  %2191 = fmul fast float %2150, %2189
  %2192 = fmul fast float %2151, %2189
  br label %2193

; <label>:2193                                    ; preds = %2146, %1771
  %2194 = phi float [ %2147, %2146 ], [ 0.000000e+00, %1771 ]
  %2195 = phi float [ %2188, %2146 ], [ 1.000000e+00, %1771 ]
  %2196 = phi float [ %2190, %2146 ], [ 0.000000e+00, %1771 ]
  %2197 = phi float [ %2191, %2146 ], [ 0.000000e+00, %1771 ]
  %2198 = phi float [ %2192, %2146 ], [ 0.000000e+00, %1771 ]
  %2199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2200 = extractvalue %dx.types.CBufRet.f32 %2199, 1
  %2201 = fsub fast float 1.000000e+00, %2195
  %2202 = fmul fast float %2201, %1772
  %2203 = fmul fast float %2202, %2200
  %2204 = fsub fast float %1772, %2203
  br i1 %1750, label %2205, label %2237, !dx.controlflow.hints !91

; <label>:2205                                    ; preds = %2193
  %2206 = fmul fast float %1775, %1747
  %2207 = fadd fast float %2206, %1748
  %2208 = call float @dx.op.unary.f32(i32 7, float %2207)  ; Saturate(value)
  %2209 = fmul fast float %1729, %2204
  %2210 = fsub fast float -0.000000e+00, %2209
  %2211 = fmul fast float %1730, %2204
  %2212 = fsub fast float -0.000000e+00, %2211
  %2213 = call float @dx.op.unary.f32(i32 21, float %2210)  ; Exp(value)
  %2214 = call float @dx.op.unary.f32(i32 21, float %2212)  ; Exp(value)
  %2215 = call float @dx.op.binary.f32(i32 35, float %1737, float %2213)  ; FMax(a,b)
  %2216 = call float @dx.op.binary.f32(i32 35, float %1737, float %2214)  ; FMax(a,b)
  %2217 = fsub fast float %2216, %2215
  %2218 = fmul fast float %2217, %2208
  %2219 = fadd fast float %2218, %2215
  %2220 = call float @dx.op.unary.f32(i32 7, float %2219)  ; Saturate(value)
  %2221 = fmul fast float %1773, %1751
  %2222 = fsub fast float 1.000000e+00, %2221
  %2223 = select i1 %1680, float %2222, float %2220
  %2224 = fsub fast float %1734, %1739
  %2225 = fsub fast float %1735, %1740
  %2226 = fsub fast float %1736, %1741
  %2227 = fmul fast float %2208, %2224
  %2228 = fmul fast float %2208, %2225
  %2229 = fmul fast float %2208, %2226
  %2230 = fadd fast float %2227, %1739
  %2231 = fadd fast float %2228, %1740
  %2232 = fadd fast float %2229, %1741
  %2233 = fsub fast float 1.000000e+00, %2223
  %2234 = fmul fast float %2233, %2230
  %2235 = fmul fast float %2233, %2231
  %2236 = fmul fast float %2233, %2232
  br label %2308

; <label>:2237                                    ; preds = %2193
  %2238 = fmul fast float %2204, %1746
  %2239 = call float @dx.op.unary.f32(i32 7, float %2238)  ; Saturate(value)
  %2240 = fsub fast float 2.000000e+00, %2239
  %2241 = fmul fast float %2239, 9.921875e-01
  %2242 = fmul fast float %2241, %2240
  %2243 = fadd fast float %2242, 3.906250e-03
  %2244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %23, float %2243, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2245 = extractvalue %dx.types.ResRet.f32 %2244, 0
  %2246 = fsub fast float %2239, %2245
  %2247 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2246)  ; FMax(a,b)
  %2248 = fmul fast float %1774, %1732
  %2249 = call float @dx.op.unary.f32(i32 6, float %2248)  ; FAbs(value)
  %2250 = fcmp fast ogt float %2249, 0x3EB0C6F7A0000000
  br i1 %2250, label %2251, label %2257, !dx.controlflow.hints !92

; <label>:2251                                    ; preds = %2237
  %2252 = fmul fast float %2248, 0xBFF7154760000000
  %2253 = call float @dx.op.unary.f32(i32 21, float %2252)  ; Exp(value)
  %2254 = fsub fast float 1.000000e+00, %2253
  %2255 = fdiv fast float %2254, %2248
  %2256 = fmul fast float %2255, %1742
  br label %2257

; <label>:2257                                    ; preds = %2251, %2237
  %2258 = phi float [ %2256, %2251 ], [ %1742, %2237 ]
  %2259 = fadd fast float %2258, %1744
  %2260 = fmul fast float %2259, %2247
  %2261 = fmul fast float %1729, %2260
  %2262 = fsub fast float -0.000000e+00, %2261
  %2263 = fmul fast float %1730, %2260
  %2264 = fsub fast float -0.000000e+00, %2263
  %2265 = fmul fast float %1731, %2260
  %2266 = fsub fast float -0.000000e+00, %2265
  %2267 = call float @dx.op.unary.f32(i32 21, float %2262)  ; Exp(value)
  %2268 = call float @dx.op.unary.f32(i32 21, float %2264)  ; Exp(value)
  %2269 = call float @dx.op.unary.f32(i32 21, float %2266)  ; Exp(value)
  br i1 %1680, label %2270, label %2278, !dx.controlflow.hints !93

; <label>:2270                                    ; preds = %2257
  %2271 = fmul fast float %2267, %1773
  %2272 = fmul fast float %2268, %1773
  %2273 = fmul fast float %2269, %1773
  %2274 = fsub fast float 1.000000e+00, %1773
  %2275 = fadd fast float %2271, %2274
  %2276 = fadd fast float %2272, %2274
  %2277 = fadd fast float %2273, %2274
  br label %2278

; <label>:2278                                    ; preds = %2270, %2257
  %2279 = phi float [ %2275, %2270 ], [ %2267, %2257 ]
  %2280 = phi float [ %2276, %2270 ], [ %2268, %2257 ]
  %2281 = phi float [ %2277, %2270 ], [ %2269, %2257 ]
  %2282 = fmul fast float %1775, %1775
  %2283 = fadd fast float %2282, 1.000000e+00
  %2284 = fmul fast float %2283, 0x3FAE8EC8A0000000
  %2285 = fmul fast float %2284, %1739
  %2286 = fmul fast float %2284, %1740
  %2287 = fmul fast float %2284, %1741
  %2288 = fmul fast float %1775, %1737
  %2289 = fsub fast float 1.000000e+00, %2288
  %2290 = fmul fast float %1737, %1737
  %2291 = fsub fast float 1.000000e+00, %2290
  %2292 = fmul fast float %2291, 0x3FB45F3060000000
  %2293 = fmul fast float %2289, %2289
  %2294 = fdiv fast float 1.000000e+00, %2293
  %2295 = fmul fast float %2292, %2294
  %2296 = fmul fast float %2295, %1734
  %2297 = fmul fast float %2295, %1735
  %2298 = fmul fast float %2295, %1736
  %2299 = fadd fast float %2296, %2285
  %2300 = fadd fast float %2297, %2286
  %2301 = fadd fast float %2298, %2287
  %2302 = fsub fast float 1.000000e+00, %2279
  %2303 = fsub fast float 1.000000e+00, %2280
  %2304 = fsub fast float 1.000000e+00, %2281
  %2305 = fmul fast float %2299, %2302
  %2306 = fmul fast float %2300, %2303
  %2307 = fmul fast float %2301, %2304
  br label %2308

; <label>:2308                                    ; preds = %2278, %2205
  %2309 = phi float [ %2234, %2205 ], [ %2305, %2278 ]
  %2310 = phi float [ %2235, %2205 ], [ %2306, %2278 ]
  %2311 = phi float [ %2236, %2205 ], [ %2307, %2278 ]
  %2312 = phi float [ %2223, %2205 ], [ %2279, %2278 ]
  %2313 = phi float [ %2223, %2205 ], [ %2280, %2278 ]
  %2314 = phi float [ %2223, %2205 ], [ %2281, %2278 ]
  br i1 %1783, label %2315, label %2513, !dx.controlflow.hints !94

; <label>:2315                                    ; preds = %2308
  %2316 = extractvalue %dx.types.CBufRet.f32 %2199, 0
  %2317 = fmul fast float %2316, %2201
  %2318 = fsub fast float %2196, %2309
  %2319 = fsub fast float %2197, %2310
  %2320 = fsub fast float %2198, %2311
  %2321 = fmul fast float %2317, %2318
  %2322 = fmul fast float %2317, %2319
  %2323 = fmul fast float %2317, %2320
  %2324 = fadd fast float %2321, %2309
  %2325 = fadd fast float %2322, %2310
  %2326 = fadd fast float %2323, %2311
  %2327 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2312)  ; FMax(a,b)
  %2328 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2313)  ; FMax(a,b)
  %2329 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2314)  ; FMax(a,b)
  %2330 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2195)  ; FMax(a,b)
  %2331 = call float @dx.op.binary.f32(i32 35, float %2194, float %2204)  ; FMax(a,b)
  %2332 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2331)  ; FMax(a,b)
  %2333 = fdiv fast float %2194, %2332
  %2334 = call float @dx.op.unary.f32(i32 7, float %2333)  ; Saturate(value)
  %2335 = fdiv fast float %2204, %2332
  %2336 = call float @dx.op.unary.f32(i32 7, float %2335)  ; Saturate(value)
  %2337 = fcmp fast une float %2330, 1.000000e+00
  br i1 %2337, label %2338, label %2351, !dx.controlflow.hints !95

; <label>:2338                                    ; preds = %2315
  %2339 = call float @dx.op.unary.f32(i32 23, float %2330)  ; Log(value)
  %2340 = fmul fast float %2339, 0x3FE62E4300000000
  %2341 = fmul fast float %2196, %2340
  %2342 = fsub fast float -0.000000e+00, %2341
  %2343 = fmul fast float %2197, %2340
  %2344 = fsub fast float -0.000000e+00, %2343
  %2345 = fmul fast float %2198, %2340
  %2346 = fsub fast float -0.000000e+00, %2345
  %2347 = fsub fast float 1.000000e+00, %2330
  %2348 = fdiv fast float %2342, %2347
  %2349 = fdiv fast float %2344, %2347
  %2350 = fdiv fast float %2346, %2347
  br label %2351

; <label>:2351                                    ; preds = %2338, %2315
  %2352 = phi float [ %2348, %2338 ], [ %2196, %2315 ]
  %2353 = phi float [ %2349, %2338 ], [ %2197, %2315 ]
  %2354 = phi float [ %2350, %2338 ], [ %2198, %2315 ]
  %2355 = phi float [ %2340, %2338 ], [ 0.000000e+00, %2315 ]
  %2356 = fcmp fast une float %2327, 1.000000e+00
  br i1 %2356, label %2357, label %2364, !dx.controlflow.hints !96

; <label>:2357                                    ; preds = %2351
  %2358 = call float @dx.op.unary.f32(i32 23, float %2327)  ; Log(value)
  %2359 = fmul fast float %2358, 0x3FE62E4300000000
  %2360 = fmul fast float %2324, %2359
  %2361 = fsub fast float -0.000000e+00, %2360
  %2362 = fsub fast float 1.000000e+00, %2327
  %2363 = fdiv fast float %2361, %2362
  br label %2364

; <label>:2364                                    ; preds = %2357, %2351
  %2365 = phi float [ %2363, %2357 ], [ %2324, %2351 ]
  %2366 = phi float [ %2359, %2357 ], [ 0.000000e+00, %2351 ]
  %2367 = fcmp fast une float %2328, 1.000000e+00
  br i1 %2367, label %2368, label %2375, !dx.controlflow.hints !96

; <label>:2368                                    ; preds = %2364
  %2369 = call float @dx.op.unary.f32(i32 23, float %2328)  ; Log(value)
  %2370 = fmul fast float %2369, 0x3FE62E4300000000
  %2371 = fmul fast float %2325, %2370
  %2372 = fsub fast float -0.000000e+00, %2371
  %2373 = fsub fast float 1.000000e+00, %2328
  %2374 = fdiv fast float %2372, %2373
  br label %2375

; <label>:2375                                    ; preds = %2368, %2364
  %2376 = phi float [ %2374, %2368 ], [ %2325, %2364 ]
  %2377 = phi float [ %2370, %2368 ], [ 0.000000e+00, %2364 ]
  %2378 = fcmp fast une float %2329, 1.000000e+00
  br i1 %2378, label %2379, label %2386, !dx.controlflow.hints !96

; <label>:2379                                    ; preds = %2375
  %2380 = call float @dx.op.unary.f32(i32 23, float %2329)  ; Log(value)
  %2381 = fmul fast float %2380, 0x3FE62E4300000000
  %2382 = fmul fast float %2326, %2381
  %2383 = fsub fast float -0.000000e+00, %2382
  %2384 = fsub fast float 1.000000e+00, %2329
  %2385 = fdiv fast float %2383, %2384
  br label %2386

; <label>:2386                                    ; preds = %2379, %2375
  %2387 = phi float [ %2385, %2379 ], [ %2326, %2375 ]
  %2388 = phi float [ %2381, %2379 ], [ 0.000000e+00, %2375 ]
  %2389 = fmul fast float %2352, %2336
  %2390 = fmul fast float %2353, %2336
  %2391 = fmul fast float %2354, %2336
  %2392 = fmul fast float %2355, %2336
  %2393 = fmul fast float %2365, %2334
  %2394 = fmul fast float %2376, %2334
  %2395 = fmul fast float %2387, %2334
  %2396 = fmul fast float %2366, %2334
  %2397 = fmul fast float %2377, %2334
  %2398 = fmul fast float %2388, %2334
  %2399 = fadd fast float %2393, %2389
  %2400 = fadd fast float %2394, %2390
  %2401 = fadd fast float %2395, %2391
  %2402 = fadd fast float %2396, %2392
  %2403 = fadd fast float %2397, %2392
  %2404 = fadd fast float %2398, %2392
  %2405 = fcmp fast une float %2402, 0.000000e+00
  br i1 %2405, label %2406, label %2413, !dx.controlflow.hints !97

; <label>:2406                                    ; preds = %2386
  %2407 = fmul fast float %2402, 0x3FF7154760000000
  %2408 = call float @dx.op.unary.f32(i32 21, float %2407)  ; Exp(value)
  %2409 = fsub fast float 1.000000e+00, %2408
  %2410 = fmul fast float %2399, %2409
  %2411 = fsub fast float -0.000000e+00, %2410
  %2412 = fdiv fast float %2411, %2402
  br label %2413

; <label>:2413                                    ; preds = %2406, %2386
  %2414 = phi float [ %2408, %2406 ], [ 1.000000e+00, %2386 ]
  %2415 = phi float [ %2412, %2406 ], [ %2399, %2386 ]
  %2416 = fcmp fast une float %2403, 0.000000e+00
  br i1 %2416, label %2417, label %2424, !dx.controlflow.hints !97

; <label>:2417                                    ; preds = %2413
  %2418 = fmul fast float %2403, 0x3FF7154760000000
  %2419 = call float @dx.op.unary.f32(i32 21, float %2418)  ; Exp(value)
  %2420 = fsub fast float 1.000000e+00, %2419
  %2421 = fmul fast float %2400, %2420
  %2422 = fsub fast float -0.000000e+00, %2421
  %2423 = fdiv fast float %2422, %2403
  br label %2424

; <label>:2424                                    ; preds = %2417, %2413
  %2425 = phi float [ %2419, %2417 ], [ 1.000000e+00, %2413 ]
  %2426 = phi float [ %2423, %2417 ], [ %2400, %2413 ]
  %2427 = fcmp fast une float %2404, 0.000000e+00
  br i1 %2427, label %2428, label %2435, !dx.controlflow.hints !97

; <label>:2428                                    ; preds = %2424
  %2429 = fmul fast float %2404, 0x3FF7154760000000
  %2430 = call float @dx.op.unary.f32(i32 21, float %2429)  ; Exp(value)
  %2431 = fsub fast float 1.000000e+00, %2430
  %2432 = fmul fast float %2401, %2431
  %2433 = fsub fast float -0.000000e+00, %2432
  %2434 = fdiv fast float %2433, %2404
  br label %2435

; <label>:2435                                    ; preds = %2428, %2424
  %2436 = phi float [ %2430, %2428 ], [ 1.000000e+00, %2424 ]
  %2437 = phi float [ %2434, %2428 ], [ %2401, %2424 ]
  %2438 = fcmp fast ogt float %2334, %2336
  br i1 %2438, label %2439, label %2459, !dx.controlflow.hints !98

; <label>:2439                                    ; preds = %2435
  %2440 = fsub fast float 1.000000e+00, %2336
  %2441 = fmul fast float %2352, %2440
  %2442 = fmul fast float %2353, %2440
  %2443 = fmul fast float %2354, %2440
  %2444 = fmul fast float %2355, %2440
  %2445 = fcmp fast une float %2444, 0.000000e+00
  br i1 %2445, label %2446, label %2497, !dx.controlflow.hints !99

; <label>:2446                                    ; preds = %2439
  %2447 = fmul fast float %2444, 0x3FF7154760000000
  %2448 = call float @dx.op.unary.f32(i32 21, float %2447)  ; Exp(value)
  %2449 = fsub fast float 1.000000e+00, %2448
  %2450 = fmul fast float %2441, %2449
  %2451 = fsub fast float -0.000000e+00, %2450
  %2452 = fmul fast float %2442, %2449
  %2453 = fsub fast float -0.000000e+00, %2452
  %2454 = fmul fast float %2443, %2449
  %2455 = fsub fast float -0.000000e+00, %2454
  %2456 = fdiv fast float %2451, %2444
  %2457 = fdiv fast float %2453, %2444
  %2458 = fdiv fast float %2455, %2444
  br label %2497

; <label>:2459                                    ; preds = %2435
  %2460 = fsub fast float 1.000000e+00, %2334
  %2461 = fmul fast float %2365, %2460
  %2462 = fmul fast float %2376, %2460
  %2463 = fmul fast float %2387, %2460
  %2464 = fmul fast float %2366, %2460
  %2465 = fmul fast float %2377, %2460
  %2466 = fmul fast float %2388, %2460
  %2467 = fcmp fast une float %2464, 0.000000e+00
  br i1 %2467, label %2468, label %2475, !dx.controlflow.hints !97

; <label>:2468                                    ; preds = %2459
  %2469 = fmul fast float %2464, 0x3FF7154760000000
  %2470 = call float @dx.op.unary.f32(i32 21, float %2469)  ; Exp(value)
  %2471 = fsub fast float 1.000000e+00, %2470
  %2472 = fmul fast float %2461, %2471
  %2473 = fsub fast float -0.000000e+00, %2472
  %2474 = fdiv fast float %2473, %2464
  br label %2475

; <label>:2475                                    ; preds = %2468, %2459
  %2476 = phi float [ %2474, %2468 ], [ %2461, %2459 ]
  %2477 = phi float [ %2470, %2468 ], [ 1.000000e+00, %2459 ]
  %2478 = fcmp fast une float %2465, 0.000000e+00
  br i1 %2478, label %2479, label %2486, !dx.controlflow.hints !97

; <label>:2479                                    ; preds = %2475
  %2480 = fmul fast float %2465, 0x3FF7154760000000
  %2481 = call float @dx.op.unary.f32(i32 21, float %2480)  ; Exp(value)
  %2482 = fsub fast float 1.000000e+00, %2481
  %2483 = fmul fast float %2462, %2482
  %2484 = fsub fast float -0.000000e+00, %2483
  %2485 = fdiv fast float %2484, %2465
  br label %2486

; <label>:2486                                    ; preds = %2479, %2475
  %2487 = phi float [ %2485, %2479 ], [ %2462, %2475 ]
  %2488 = phi float [ %2481, %2479 ], [ 1.000000e+00, %2475 ]
  %2489 = fcmp fast une float %2466, 0.000000e+00
  br i1 %2489, label %2490, label %2497, !dx.controlflow.hints !97

; <label>:2490                                    ; preds = %2486
  %2491 = fmul fast float %2466, 0x3FF7154760000000
  %2492 = call float @dx.op.unary.f32(i32 21, float %2491)  ; Exp(value)
  %2493 = fsub fast float 1.000000e+00, %2492
  %2494 = fmul fast float %2463, %2493
  %2495 = fsub fast float -0.000000e+00, %2494
  %2496 = fdiv fast float %2495, %2466
  br label %2497

; <label>:2497                                    ; preds = %2490, %2486, %2446, %2439
  %2498 = phi float [ %2496, %2490 ], [ %2458, %2446 ], [ %2443, %2439 ], [ %2463, %2486 ]
  %2499 = phi float [ %2487, %2490 ], [ %2457, %2446 ], [ %2442, %2439 ], [ %2487, %2486 ]
  %2500 = phi float [ %2476, %2490 ], [ %2456, %2446 ], [ %2441, %2439 ], [ %2476, %2486 ]
  %2501 = phi float [ %2492, %2490 ], [ %2448, %2446 ], [ 1.000000e+00, %2439 ], [ 1.000000e+00, %2486 ]
  %2502 = phi float [ %2488, %2490 ], [ %2448, %2446 ], [ 1.000000e+00, %2439 ], [ %2488, %2486 ]
  %2503 = phi float [ %2477, %2490 ], [ %2448, %2446 ], [ 1.000000e+00, %2439 ], [ %2477, %2486 ]
  %2504 = fmul fast float %2503, %2415
  %2505 = fmul fast float %2502, %2426
  %2506 = fmul fast float %2501, %2437
  %2507 = fadd fast float %2504, %2500
  %2508 = fadd fast float %2505, %2499
  %2509 = fadd fast float %2506, %2498
  %2510 = fmul fast float %2503, %2414
  %2511 = fmul fast float %2502, %2425
  %2512 = fmul fast float %2501, %2436
  br label %2513

; <label>:2513                                    ; preds = %2497, %2308
  %2514 = phi float [ %2512, %2497 ], [ %2314, %2308 ]
  %2515 = phi float [ %2511, %2497 ], [ %2313, %2308 ]
  %2516 = phi float [ %2510, %2497 ], [ %2312, %2308 ]
  %2517 = phi float [ %2509, %2497 ], [ %2311, %2308 ]
  %2518 = phi float [ %2508, %2497 ], [ %2310, %2308 ]
  %2519 = phi float [ %2507, %2497 ], [ %2309, %2308 ]
  %2520 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %23, float %1651, float %1652, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2521 = extractvalue %dx.types.ResRet.f32 %2520, 0
  %2522 = extractvalue %dx.types.ResRet.f32 %2520, 1
  %2523 = extractvalue %dx.types.ResRet.f32 %2520, 2
  %2524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2525 = extractvalue %dx.types.CBufRet.f32 %2524, 1
  %2526 = fmul fast float %2525, %2521
  %2527 = fmul fast float %2525, %2522
  %2528 = fmul fast float %2525, %2523
  %2529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %23, float %1651, float %1652, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2530 = extractvalue %dx.types.ResRet.f32 %2529, 0
  %2531 = fmul fast float %2530, %2516
  %2532 = fmul fast float %2530, %2515
  %2533 = fmul fast float %2530, %2514
  %2534 = fmul fast float %2530, %2519
  %2535 = fmul fast float %2530, %2518
  %2536 = fmul fast float %2530, %2517
  %2537 = fadd fast float %2534, %2526
  %2538 = fadd fast float %2535, %2527
  %2539 = fadd fast float %2536, %2528
  br label %2540

; <label>:2540                                    ; preds = %2513, %1644
  %2541 = phi float [ 0.000000e+00, %1644 ], [ %2537, %2513 ]
  %2542 = phi float [ 0.000000e+00, %1644 ], [ %2538, %2513 ]
  %2543 = phi float [ 0.000000e+00, %1644 ], [ %2539, %2513 ]
  %2544 = phi float [ 1.000000e+00, %1644 ], [ %2531, %2513 ]
  %2545 = phi float [ 1.000000e+00, %1644 ], [ %2532, %2513 ]
  %2546 = phi float [ 1.000000e+00, %1644 ], [ %2533, %2513 ]
  %2547 = phi float [ %1677, %1644 ], [ %1684, %2513 ]
  %2548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2549 = extractvalue %dx.types.CBufRet.f32 %2548, 2
  %2550 = extractvalue %dx.types.CBufRet.f32 %2548, 3
  %2551 = fmul fast float %2549, %1647
  %2552 = fmul fast float %2550, %1648
  %2553 = call float @dx.op.unary.f32(i32 7, float %2551)  ; Saturate(value)
  %2554 = call float @dx.op.unary.f32(i32 7, float %2552)  ; Saturate(value)
  %2555 = select i1 %1675, i32 2, i32 0
  %2556 = or i32 %2555, 1
  %2557 = uitofp i32 %2556 to float
  %2558 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %23, float %2553, float %2554, float %2557, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2559 = extractvalue %dx.types.ResRet.f32 %2558, 0
  %2560 = extractvalue %dx.types.ResRet.f32 %2558, 1
  %2561 = extractvalue %dx.types.ResRet.f32 %2558, 2
  %2562 = extractvalue %dx.types.ResRet.f32 %2558, 3
  %2563 = add nuw nsw i32 %2555, 2
  %2564 = uitofp i32 %2563 to float
  %2565 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %23, float %2553, float %2554, float %2564, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2566 = extractvalue %dx.types.ResRet.f32 %2565, 0
  %2567 = extractvalue %dx.types.ResRet.f32 %2565, 1
  %2568 = extractvalue %dx.types.ResRet.f32 %2565, 2
  %2569 = extractvalue %dx.types.ResRet.f32 %2565, 3
  %2570 = call float @dx.op.binary.f32(i32 35, float %2560, float %2561)  ; FMax(a,b)
  %2571 = call float @dx.op.binary.f32(i32 35, float %2559, float %2570)  ; FMax(a,b)
  %2572 = call float @dx.op.binary.f32(i32 35, float %2571, float %2562)  ; FMax(a,b)
  %2573 = call float @dx.op.binary.f32(i32 36, float %2567, float %2568)  ; FMin(a,b)
  %2574 = call float @dx.op.binary.f32(i32 36, float %2566, float %2573)  ; FMin(a,b)
  %2575 = call float @dx.op.binary.f32(i32 36, float %2574, float %2569)  ; FMin(a,b)
  %2576 = fmul fast float %2572, 2.550000e+02
  %2577 = fadd fast float %2576, 0x3F70101020000000
  %2578 = fptoui float %2577 to i32
  %2579 = fmul fast float %2575, 2.550000e+02
  %2580 = fadd fast float %2579, 0x3F70101020000000
  %2581 = fptoui float %2580 to i32
  %2582 = icmp ult i32 %2578, %2581
  br i1 %2582, label %2583, label %2751, !dx.controlflow.hints !100

; <label>:2583                                    ; preds = %2540
  %2584 = fadd fast float %2547, -4.000000e+00
  %2585 = call float @dx.op.binary.f32(i32 35, float %2584, float 0.000000e+00)  ; FMax(a,b)
  %2586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2587 = extractvalue %dx.types.CBufRet.f32 %2586, 0
  %2588 = fadd fast float %2587, %2585
  %2589 = extractvalue %dx.types.CBufRet.f32 %2586, 2
  %2590 = fmul fast float %2588, %2589
  %2591 = call float @dx.op.unary.f32(i32 23, float %2590)  ; Log(value)
  %2592 = extractvalue %dx.types.CBufRet.f32 %2586, 3
  %2593 = fmul fast float %2592, %2591
  %2594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2595 = extractvalue %dx.types.CBufRet.f32 %2594, 2
  %2596 = fmul fast float %2593, %2595
  %2597 = call float @dx.op.unary.f32(i32 7, float %2596)  ; Saturate(value)
  %2598 = select i1 %1680, float 1.000000e+00, float %2597
  %2599 = uitofp i32 %2578 to float
  %2600 = uitofp i32 %2581 to float
  %2601 = fadd fast float %2599, 5.000000e-01
  %2602 = fadd fast float %2600, 5.000000e-01
  %2603 = fmul fast float %2595, %2601
  %2604 = fmul fast float %2595, %2602
  %2605 = fadd fast float %2603, 0x3F0FFB4800000000
  %2606 = fadd fast float %2604, 0xBF0FFB4800000000
  %2607 = call float @dx.op.binary.f32(i32 35, float %2598, float %2605)  ; FMax(a,b)
  %2608 = call float @dx.op.binary.f32(i32 36, float %2607, float %2606)  ; FMin(a,b)
  %2609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2610 = extractvalue %dx.types.CBufRet.f32 %2609, 1
  %2611 = extractvalue %dx.types.CBufRet.f32 %2609, 2
  %2612 = extractvalue %dx.types.CBufRet.f32 %2609, 0
  %2613 = select i1 %1675, float %2612, float 0.000000e+00
  %2614 = fmul fast float %2610, %2608
  %2615 = fadd fast float %2613, %2614
  %2616 = fadd fast float %2613, %2611
  %2617 = fsub fast float %2610, %2611
  %2618 = fadd fast float %2617, %2613
  %2619 = call float @dx.op.binary.f32(i32 35, float %2615, float %2616)  ; FMax(a,b)
  %2620 = call float @dx.op.binary.f32(i32 36, float %2619, float %2618)  ; FMin(a,b)
  %2621 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %22, float %2553, float %2554, float %2620, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2622 = extractvalue %dx.types.ResRet.f32 %2621, 0
  %2623 = extractvalue %dx.types.ResRet.f32 %2621, 1
  %2624 = extractvalue %dx.types.ResRet.f32 %2621, 2
  %2625 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %2626 = extractvalue %dx.types.CBufRet.i32 %2625, 0
  %2627 = extractvalue %dx.types.CBufRet.i32 %2625, 1
  %2628 = uitofp i32 %2626 to float
  %2629 = uitofp i32 %2627 to float
  %2630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %2631 = extractvalue %dx.types.CBufRet.f32 %2630, 0
  %2632 = extractvalue %dx.types.CBufRet.f32 %2630, 1
  %2633 = fmul fast float %2628, %2553
  %2634 = fmul fast float %2629, %2554
  %2635 = fadd fast float %2633, -5.000000e-01
  %2636 = fadd fast float %2634, -5.000000e-01
  %2637 = call float @dx.op.unary.f32(i32 22, float %2635)  ; Frc(value)
  %2638 = call float @dx.op.unary.f32(i32 22, float %2636)  ; Frc(value)
  %2639 = fmul fast float %2637, %2637
  %2640 = fmul fast float %2639, %2637
  %2641 = fsub fast float 3.000000e+00, %2637
  %2642 = fmul fast float %2639, %2641
  %2643 = fmul fast float %2637, 3.000000e+00
  %2644 = fmul fast float %2640, 3.000000e+00
  %2645 = fmul fast float %2639, 6.000000e+00
  %2646 = fsub fast float %2644, %2645
  %2647 = fadd fast float %2646, 4.000000e+00
  %2648 = fmul fast float %2647, 0x3FC5555560000000
  %2649 = fmul fast float %2640, -3.000000e+00
  %2650 = fadd fast float %2639, %2637
  %2651 = fmul fast float %2650, 3.000000e+00
  %2652 = fadd fast float %2649, 1.000000e+00
  %2653 = fadd fast float %2652, %2651
  %2654 = fmul fast float %2640, 0x3FC5555560000000
  %2655 = fmul fast float %2638, %2638
  %2656 = fmul fast float %2655, %2638
  %2657 = fsub fast float 3.000000e+00, %2638
  %2658 = fmul fast float %2655, %2657
  %2659 = fmul fast float %2638, 3.000000e+00
  %2660 = fmul fast float %2656, 3.000000e+00
  %2661 = fmul fast float %2655, 6.000000e+00
  %2662 = fsub fast float %2660, %2661
  %2663 = fadd fast float %2662, 4.000000e+00
  %2664 = fmul fast float %2663, 0x3FC5555560000000
  %2665 = fmul fast float %2656, -3.000000e+00
  %2666 = fadd fast float %2655, %2638
  %2667 = fmul fast float %2666, 3.000000e+00
  %2668 = fadd fast float %2665, 1.000000e+00
  %2669 = fadd fast float %2668, %2667
  %2670 = fmul fast float %2656, 0x3FC5555560000000
  %2671 = fadd fast float %2637, 1.000000e+00
  %2672 = fsub fast float 1.000000e+00, %2643
  %2673 = fadd fast float %2672, %2642
  %2674 = fadd fast float %2673, %2647
  %2675 = fmul fast float %2674, 0x3FC5555560000000
  %2676 = fdiv fast float %2648, %2675
  %2677 = fsub fast float %2671, %2676
  %2678 = fsub fast float 1.000000e+00, %2637
  %2679 = fadd fast float %2653, %2640
  %2680 = fmul fast float %2679, 0x3FC5555560000000
  %2681 = fdiv fast float %2654, %2680
  %2682 = fadd fast float %2678, %2681
  %2683 = fadd fast float %2638, 1.000000e+00
  %2684 = fsub fast float 1.000000e+00, %2659
  %2685 = fadd fast float %2684, %2658
  %2686 = fadd fast float %2685, %2663
  %2687 = fmul fast float %2686, 0x3FC5555560000000
  %2688 = fdiv fast float %2664, %2687
  %2689 = fsub fast float %2683, %2688
  %2690 = fsub fast float 1.000000e+00, %2638
  %2691 = fadd fast float %2669, %2656
  %2692 = fmul fast float %2691, 0x3FC5555560000000
  %2693 = fdiv fast float %2670, %2692
  %2694 = fadd fast float %2693, %2690
  %2695 = fmul fast float %2677, %2631
  %2696 = fsub fast float %2553, %2695
  %2697 = fmul fast float %2682, %2631
  %2698 = fadd fast float %2697, %2553
  %2699 = fmul fast float %2694, %2632
  %2700 = fadd fast float %2699, %2554
  %2701 = fmul fast float %2689, %2632
  %2702 = fsub fast float %2554, %2701
  %2703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %2696, float %2702, float %2620, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2704 = extractvalue %dx.types.ResRet.f32 %2703, 0
  %2705 = extractvalue %dx.types.ResRet.f32 %2703, 1
  %2706 = extractvalue %dx.types.ResRet.f32 %2703, 2
  %2707 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %2698, float %2702, float %2620, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2708 = extractvalue %dx.types.ResRet.f32 %2707, 0
  %2709 = extractvalue %dx.types.ResRet.f32 %2707, 1
  %2710 = extractvalue %dx.types.ResRet.f32 %2707, 2
  %2711 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %2696, float %2700, float %2620, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2712 = extractvalue %dx.types.ResRet.f32 %2711, 0
  %2713 = extractvalue %dx.types.ResRet.f32 %2711, 1
  %2714 = extractvalue %dx.types.ResRet.f32 %2711, 2
  %2715 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %2698, float %2700, float %2620, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2716 = extractvalue %dx.types.ResRet.f32 %2715, 0
  %2717 = extractvalue %dx.types.ResRet.f32 %2715, 1
  %2718 = extractvalue %dx.types.ResRet.f32 %2715, 2
  %2719 = fsub fast float %2712, %2704
  %2720 = fsub fast float %2713, %2705
  %2721 = fsub fast float %2714, %2706
  %2722 = fmul fast float %2719, %2692
  %2723 = fmul fast float %2720, %2692
  %2724 = fmul fast float %2721, %2692
  %2725 = fadd fast float %2722, %2704
  %2726 = fadd fast float %2723, %2705
  %2727 = fadd fast float %2724, %2706
  %2728 = fsub fast float %2716, %2708
  %2729 = fsub fast float %2717, %2709
  %2730 = fsub fast float %2718, %2710
  %2731 = fmul fast float %2728, %2692
  %2732 = fmul fast float %2729, %2692
  %2733 = fmul fast float %2730, %2692
  %2734 = fsub fast float %2708, %2725
  %2735 = fadd fast float %2734, %2731
  %2736 = fsub fast float %2709, %2726
  %2737 = fadd fast float %2736, %2732
  %2738 = fsub fast float %2710, %2727
  %2739 = fadd fast float %2738, %2733
  %2740 = fmul fast float %2735, %2680
  %2741 = fmul fast float %2737, %2680
  %2742 = fmul fast float %2739, %2680
  %2743 = fadd fast float %2740, %2725
  %2744 = fadd fast float %2741, %2726
  %2745 = fadd fast float %2742, %2727
  %2746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2747 = extractvalue %dx.types.CBufRet.f32 %2746, 1
  %2748 = fmul fast float %2743, %2747
  %2749 = fmul fast float %2744, %2747
  %2750 = fmul fast float %2745, %2747
  br label %2751

; <label>:2751                                    ; preds = %2583, %2540
  %2752 = phi float [ %2622, %2583 ], [ 1.000000e+00, %2540 ]
  %2753 = phi float [ %2623, %2583 ], [ 1.000000e+00, %2540 ]
  %2754 = phi float [ %2624, %2583 ], [ 1.000000e+00, %2540 ]
  %2755 = phi float [ %2748, %2583 ], [ 0.000000e+00, %2540 ]
  %2756 = phi float [ %2749, %2583 ], [ 0.000000e+00, %2540 ]
  %2757 = phi float [ %2750, %2583 ], [ 0.000000e+00, %2540 ]
  %2758 = fmul fast float %2752, %2544
  %2759 = fmul fast float %2753, %2545
  %2760 = fmul fast float %2754, %2546
  %2761 = fmul fast float %2752, %2541
  %2762 = fmul fast float %2753, %2542
  %2763 = fmul fast float %2754, %2543
  %2764 = fadd fast float %2755, %2761
  %2765 = fadd fast float %2756, %2762
  %2766 = fadd fast float %2757, %2763
  %2767 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 undef, i32 %1628, i32 %1629, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2768 = extractvalue %dx.types.ResRet.f32 %2767, 0
  %2769 = extractvalue %dx.types.ResRet.f32 %2767, 1
  %2770 = extractvalue %dx.types.ResRet.f32 %2767, 2
  %2771 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %1628, i32 %1629, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2772 = extractvalue %dx.types.ResRet.f32 %2771, 0
  %2773 = extractvalue %dx.types.ResRet.f32 %2771, 1
  %2774 = extractvalue %dx.types.ResRet.f32 %2771, 2
  %2775 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %1628, i32 %1629, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2776 = extractvalue %dx.types.ResRet.f32 %2775, 0
  %2777 = extractvalue %dx.types.ResRet.f32 %2775, 1
  %2778 = extractvalue %dx.types.ResRet.f32 %2775, 2
  %2779 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %1628, i32 %1629, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2780 = extractvalue %dx.types.ResRet.f32 %2779, 0
  %2781 = extractvalue %dx.types.ResRet.f32 %2779, 1
  %2782 = call float @dx.op.binary.f32(i32 35, float %2780, float %2781)  ; FMax(a,b)
  %2783 = fcmp fast ult float %2782, 0x3F70101020000000
  br i1 %2783, label %3015, label %2784, !dx.controlflow.hints !142

; <label>:2784                                    ; preds = %2751
  %2785 = fmul fast float %2781, 2.000000e+00
  %2786 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2785)  ; FMax(a,b)
  %2787 = fmul fast float %2780, 2.000000e+00
  %2788 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2787)  ; FMax(a,b)
  %2789 = extractvalue %dx.types.ResRet.f32 %2775, 3
  %2790 = fmul fast float %2789, 2.000000e+00
  %2791 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2790)  ; FMax(a,b)
  %2792 = fmul fast float %2778, %2778
  %2793 = fmul fast float %2777, %2777
  %2794 = fmul fast float %2776, %2776
  %2795 = fadd fast float %2794, 0xBFD51EB860000000
  %2796 = fadd fast float %2793, 0xBFD51EB860000000
  %2797 = fadd fast float %2792, 0xBFD51EB860000000
  %2798 = fmul fast float %2795, %2795
  %2799 = fmul fast float %2796, %2796
  %2800 = fmul fast float %2797, %2797
  %2801 = fmul fast float %2798, %2798
  %2802 = fmul fast float %2801, 1.000000e+02
  %2803 = fmul fast float %2799, %2799
  %2804 = fmul fast float %2803, 1.000000e+02
  %2805 = fmul fast float %2800, %2800
  %2806 = fmul fast float %2805, 1.000000e+02
  %2807 = fadd fast float %2802, 3.500000e+00
  %2808 = fadd fast float %2804, 3.500000e+00
  %2809 = fadd fast float %2806, 3.500000e+00
  %2810 = fdiv fast float %2807, %2791
  %2811 = fdiv fast float %2808, %2788
  %2812 = fdiv fast float %2809, %2786
  %2813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %2814 = extractvalue %dx.types.CBufRet.f32 %2813, 0
  %2815 = extractvalue %dx.types.CBufRet.f32 %2813, 1
  %2816 = fmul fast float %2814, %1677
  %2817 = fmul fast float %2815, %1677
  %2818 = fdiv fast float 1.000000e+00, %2816
  %2819 = fdiv fast float 1.000000e+00, %2817
  %2820 = fmul fast float %1649, 5.000000e-01
  %2821 = fmul fast float %2820, %2816
  %2822 = fmul fast float %2810, 0xBFF7154760000000
  %2823 = fmul fast float %2822, %2821
  %2824 = call float @dx.op.unary.f32(i32 21, float %2823)  ; Exp(value)
  %2825 = fmul fast float %2824, 2.500000e-01
  %2826 = fsub fast float 1.000000e+00, %2825
  %2827 = fmul fast float %2810, 0xBFDEC709E0000000
  %2828 = fmul fast float %2827, %2821
  %2829 = call float @dx.op.unary.f32(i32 21, float %2828)  ; Exp(value)
  %2830 = fmul fast float %2829, 7.500000e-01
  %2831 = fsub fast float %2826, %2830
  %2832 = fmul fast float %2811, 0xBFF7154760000000
  %2833 = fmul fast float %2832, %2821
  %2834 = call float @dx.op.unary.f32(i32 21, float %2833)  ; Exp(value)
  %2835 = fmul fast float %2834, 2.500000e-01
  %2836 = fsub fast float 1.000000e+00, %2835
  %2837 = fmul fast float %2811, 0xBFDEC709E0000000
  %2838 = fmul fast float %2837, %2821
  %2839 = call float @dx.op.unary.f32(i32 21, float %2838)  ; Exp(value)
  %2840 = fmul fast float %2839, 7.500000e-01
  %2841 = fsub fast float %2836, %2840
  %2842 = fmul fast float %2812, 0xBFF7154760000000
  %2843 = fmul fast float %2842, %2821
  %2844 = call float @dx.op.unary.f32(i32 21, float %2843)  ; Exp(value)
  %2845 = fmul fast float %2844, 2.500000e-01
  %2846 = fsub fast float 1.000000e+00, %2845
  %2847 = fmul fast float %2812, 0xBFDEC709E0000000
  %2848 = fmul fast float %2847, %2821
  %2849 = call float @dx.op.unary.f32(i32 21, float %2848)  ; Exp(value)
  %2850 = fmul fast float %2849, 7.500000e-01
  %2851 = fsub fast float %2846, %2850
  %2852 = fmul fast float %2772, 0x3F1A36E2E0000000
  %2853 = fmul fast float %2773, 0x3F1A36E2E0000000
  %2854 = fmul fast float %2774, 0x3F1A36E2E0000000
  %2855 = call float @dx.op.binary.f32(i32 36, float %2811, float %2812)  ; FMin(a,b)
  %2856 = call float @dx.op.binary.f32(i32 36, float %2810, float %2855)  ; FMin(a,b)
  %2857 = call float @dx.op.binary.f32(i32 36, float %2841, float %2851)  ; FMin(a,b)
  %2858 = call float @dx.op.binary.f32(i32 36, float %2831, float %2857)  ; FMin(a,b)
  %2859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2860 = extractvalue %dx.types.CBufRet.f32 %2859, 2
  %2861 = fmul fast float %2860, %2816
  %2862 = fmul fast float %2856, 0xBFF7154760000000
  %2863 = fmul fast float %2862, %2861
  %2864 = call float @dx.op.unary.f32(i32 21, float %2863)  ; Exp(value)
  %2865 = fmul fast float %2864, 2.500000e-01
  %2866 = fsub fast float 1.000000e+00, %2865
  %2867 = fmul fast float %2856, 0xBFDEC709E0000000
  %2868 = fmul fast float %2867, %2861
  %2869 = call float @dx.op.unary.f32(i32 21, float %2868)  ; Exp(value)
  %2870 = fmul fast float %2869, 7.500000e-01
  %2871 = fsub fast float %2866, %2870
  %2872 = extractvalue %dx.types.CBufRet.f32 %2859, 3
  %2873 = call float @dx.op.binary.f32(i32 36, float %2872, float %2871)  ; FMin(a,b)
  %2874 = fsub fast float %2873, %2858
  %2875 = call float @dx.op.unary.f32(i32 7, float %2874)  ; Saturate(value)
  %2876 = call float @dx.op.unary.f32(i32 7, float %2858)  ; Saturate(value)
  %2877 = extractvalue %dx.types.CBufRet.f32 %2859, 0
  %2878 = fmul fast float %2877, %2875
  %2879 = fptoui float %2878 to i32
  %2880 = uitofp i32 %2879 to float
  %2881 = fdiv fast float 1.000000e+00, %2880
  %2882 = icmp eq i32 %2879, 0
  br i1 %2882, label %2993, label %2883

; <label>:2883                                    ; preds = %2784
  %2884 = fmul fast float %2812, 0x3FA45F3060000000
  %2885 = fmul fast float %2856, 0x3FA45F3060000000
  br label %2886

; <label>:2886                                    ; preds = %2886, %2883
  %2887 = phi float [ %2984, %2886 ], [ %2852, %2883 ]
  %2888 = phi float [ %2985, %2886 ], [ %2853, %2883 ]
  %2889 = phi float [ %2986, %2886 ], [ %2854, %2883 ]
  %2890 = phi float [ %2987, %2886 ], [ 0x3F1A36E2E0000000, %2883 ]
  %2891 = phi float [ %2988, %2886 ], [ 0x3F1A36E2E0000000, %2883 ]
  %2892 = phi float [ %2989, %2886 ], [ 0x3F1A36E2E0000000, %2883 ]
  %2893 = phi i32 [ %2990, %2886 ], [ 0, %2883 ]
  %2894 = sitofp i32 %2893 to float
  %2895 = fadd fast float %2894, %1663
  %2896 = fmul fast float %2881, %2875
  %2897 = fmul fast float %2896, %2895
  %2898 = fsub fast float 1.000000e+00, %2876
  %2899 = fsub fast float %2898, %2897
  %2900 = fmul fast float %2899, 4.000000e+00
  %2901 = fmul fast float %2899, 2.000000e+00
  %2902 = fmul fast float %2899, %2899
  %2903 = fmul fast float %2902, 4.000000e+00
  %2904 = fadd fast float %2903, 1.000000e+00
  %2905 = call float @dx.op.unary.f32(i32 24, float %2904)  ; Sqrt(value)
  %2906 = fadd fast float %2901, %2905
  %2907 = fmul fast float %2900, %2906
  %2908 = fadd fast float %2907, 1.000000e+00
  %2909 = call float @dx.op.unary.f32(i32 23, float %2908)  ; Log(value)
  %2910 = fmul fast float %2909, 0xBFD5555560000000
  %2911 = call float @dx.op.unary.f32(i32 21, float %2910)  ; Exp(value)
  %2912 = fmul fast float %2911, %2911
  %2913 = fmul fast float %2912, %2908
  %2914 = fadd fast float %2911, 1.000000e+00
  %2915 = fadd fast float %2914, %2913
  %2916 = fdiv fast float 2.500000e-01, %2899
  %2917 = fmul fast float %2915, %2916
  %2918 = call float @dx.op.unary.f32(i32 23, float %2917)  ; Log(value)
  %2919 = fmul fast float %2918, 0x4000A2B240000000
  %2920 = fdiv fast float %2919, %2856
  %2921 = fmul fast float %2862, %2920
  %2922 = call float @dx.op.unary.f32(i32 21, float %2921)  ; Exp(value)
  %2923 = fmul fast float %2867, %2920
  %2924 = call float @dx.op.unary.f32(i32 21, float %2923)  ; Exp(value)
  %2925 = fadd fast float %2924, %2922
  %2926 = fmul fast float %2885, %2925
  %2927 = fdiv fast float %2875, %2926
  %2928 = fmul fast float %2894, 0x3FF9E377A0000000
  %2929 = call float @dx.op.unary.f32(i32 22, float %2928)  ; Frc(value)
  %2930 = fadd fast float %2929, %1663
  %2931 = fmul fast float %2930, 0x401921FB60000000
  %2932 = call float @dx.op.unary.f32(i32 13, float %2931)  ; Sin(value)
  %2933 = call float @dx.op.unary.f32(i32 12, float %2931)  ; Cos(value)
  %2934 = fmul fast float %2920, %2818
  %2935 = fmul fast float %2934, %2933
  %2936 = fmul fast float %2920, %2819
  %2937 = fmul fast float %2936, %2932
  %2938 = fadd fast float %2935, %1651
  %2939 = fadd fast float %2937, %1652
  %2940 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %23, float %2938, float %2939, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2941 = extractvalue %dx.types.ResRet.f32 %2940, 0
  %2942 = extractvalue %dx.types.ResRet.f32 %2940, 1
  %2943 = extractvalue %dx.types.ResRet.f32 %2940, 2
  %2944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %23, float %2938, float %2939, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2945 = extractvalue %dx.types.ResRet.f32 %2944, 0
  %2946 = fcmp fast ogt float %2945, -1.000000e+00
  %2947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2948 = extractvalue %dx.types.CBufRet.f32 %2947, 1
  %2949 = select i1 %2946, float %2948, float 1.000000e+00
  %2950 = fadd fast float %2945, 1.000000e+00
  %2951 = fmul fast float %2949, %2950
  %2952 = call float @dx.op.unary.f32(i32 6, float %2951)  ; FAbs(value)
  %2953 = fsub fast float %1677, %2952
  %2954 = fmul fast float %2920, %2920
  %2955 = fmul fast float %2953, %2953
  %2956 = fadd fast float %2955, %2954
  %2957 = call float @dx.op.unary.f32(i32 24, float %2956)  ; Sqrt(value)
  %2958 = fmul fast float %2822, %2957
  %2959 = call float @dx.op.unary.f32(i32 21, float %2958)  ; Exp(value)
  %2960 = fmul fast float %2827, %2957
  %2961 = call float @dx.op.unary.f32(i32 21, float %2960)  ; Exp(value)
  %2962 = fadd fast float %2961, %2959
  %2963 = fmul fast float %2832, %2957
  %2964 = call float @dx.op.unary.f32(i32 21, float %2963)  ; Exp(value)
  %2965 = fmul fast float %2837, %2957
  %2966 = call float @dx.op.unary.f32(i32 21, float %2965)  ; Exp(value)
  %2967 = fadd fast float %2966, %2964
  %2968 = fmul fast float %2842, %2957
  %2969 = call float @dx.op.unary.f32(i32 21, float %2968)  ; Exp(value)
  %2970 = fmul fast float %2847, %2957
  %2971 = call float @dx.op.unary.f32(i32 21, float %2970)  ; Exp(value)
  %2972 = fadd fast float %2971, %2969
  %2973 = fmul fast float %2810, 0x3FA45F3060000000
  %2974 = fmul fast float %2973, %2927
  %2975 = fmul fast float %2974, %2962
  %2976 = fmul fast float %2811, 0x3FA45F3060000000
  %2977 = fmul fast float %2976, %2927
  %2978 = fmul fast float %2977, %2967
  %2979 = fmul fast float %2884, %2927
  %2980 = fmul fast float %2979, %2972
  %2981 = fmul fast float %2975, %2941
  %2982 = fmul fast float %2978, %2942
  %2983 = fmul fast float %2980, %2943
  %2984 = fadd fast float %2981, %2887
  %2985 = fadd fast float %2982, %2888
  %2986 = fadd fast float %2983, %2889
  %2987 = fadd fast float %2975, %2890
  %2988 = fadd fast float %2978, %2891
  %2989 = fadd fast float %2980, %2892
  %2990 = add nuw nsw i32 %2893, 1
  %2991 = icmp eq i32 %2990, %2879
  br i1 %2991, label %2992, label %2886, !llvm.loop !102

; <label>:2992                                    ; preds = %2886
  br label %2993

; <label>:2993                                    ; preds = %2992, %2784
  %2994 = phi float [ %2852, %2784 ], [ %2984, %2992 ]
  %2995 = phi float [ %2853, %2784 ], [ %2985, %2992 ]
  %2996 = phi float [ %2854, %2784 ], [ %2986, %2992 ]
  %2997 = phi float [ 0x3F1A36E2E0000000, %2784 ], [ %2987, %2992 ]
  %2998 = phi float [ 0x3F1A36E2E0000000, %2784 ], [ %2988, %2992 ]
  %2999 = phi float [ 0x3F1A36E2E0000000, %2784 ], [ %2989, %2992 ]
  %3000 = fmul fast float %2831, %2772
  %3001 = fmul fast float %2841, %2773
  %3002 = fmul fast float %2851, %2774
  %3003 = fsub fast float 1.000000e+00, %2831
  %3004 = fsub fast float 1.000000e+00, %2841
  %3005 = fsub fast float 1.000000e+00, %2851
  %3006 = fdiv fast float %2994, %2997
  %3007 = fdiv fast float %2995, %2998
  %3008 = fdiv fast float %2996, %2999
  %3009 = fmul fast float %3006, %3003
  %3010 = fmul fast float %3007, %3004
  %3011 = fmul fast float %3008, %3005
  %3012 = fadd fast float %3009, %3000
  %3013 = fadd fast float %3010, %3001
  %3014 = fadd fast float %3011, %3002
  br label %3015

; <label>:3015                                    ; preds = %2993, %2751
  %3016 = phi float [ %3012, %2993 ], [ 0.000000e+00, %2751 ]
  %3017 = phi float [ %3013, %2993 ], [ 0.000000e+00, %2751 ]
  %3018 = phi float [ %3014, %2993 ], [ 0.000000e+00, %2751 ]
  %3019 = phi float [ %2776, %2993 ], [ 0.000000e+00, %2751 ]
  %3020 = phi float [ %2777, %2993 ], [ 0.000000e+00, %2751 ]
  %3021 = phi float [ %2778, %2993 ], [ 0.000000e+00, %2751 ]
  %3022 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3023 = extractvalue %dx.types.CBufRet.i32 %3022, 3
  %3024 = and i32 %3023, 3
  %3025 = icmp ne i32 %3024, 0
  %3026 = and i32 %3023, 4
  %3027 = icmp ne i32 %3026, 0
  %3028 = and i1 %3025, %3027
  br i1 %3028, label %3029, label %3036, !dx.controlflow.hints !104

; <label>:3029                                    ; preds = %3015
  %3030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %23, float %1651, float %1652, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3031 = extractvalue %dx.types.ResRet.f32 %3030, 0
  %3032 = fsub fast float 1.000000e+00, %3031
  %3033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %3034 = extractvalue %dx.types.CBufRet.f32 %3033, 0
  %3035 = fcmp fast olt float %3032, %3034
  br label %3039

; <label>:3036                                    ; preds = %3015
  %3037 = icmp eq i32 %3026, 0
  %3038 = and i1 %3025, %3037
  br label %3039

; <label>:3039                                    ; preds = %3036, %3029
  %3040 = phi i1 [ %3035, %3029 ], [ %3038, %3036 ]
  %3041 = select i1 %3040, float 0.000000e+00, float %3020
  %3042 = select i1 %3040, float 0.000000e+00, float %3021
  %3043 = fmul fast float %3019, %3016
  %3044 = fmul fast float %3041, %3017
  %3045 = fmul fast float %3042, %3018
  %3046 = fadd fast float %3043, %2768
  %3047 = fadd fast float %3044, %2769
  %3048 = fadd fast float %3045, %2770
  %3049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3050 = extractvalue %dx.types.CBufRet.f32 %3049, 0
  br i1 %3040, label %3051, label %3070, !dx.controlflow.hints !105

; <label>:3051                                    ; preds = %3039
  %3052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %3053 = extractvalue %dx.types.CBufRet.f32 %3052, 3
  %3054 = call float @dx.op.dot3.f32(i32 55, float %2758, float %2759, float %2760, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3055 = fmul fast float %3054, %3046
  %3056 = call float @dx.op.dot3.f32(i32 55, float %2764, float %2765, float %2766, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3057 = fmul fast float %3050, %3056
  %3058 = fadd fast float %3057, %3055
  br i1 %3028, label %3059, label %3065, !dx.controlflow.hints !106

; <label>:3059                                    ; preds = %3051
  %3060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %3061 = extractvalue %dx.types.CBufRet.f32 %3060, 1
  %3062 = fadd fast float %2758, -1.000000e+00
  %3063 = fmul fast float %3061, %3062
  %3064 = fadd fast float %3063, 1.000000e+00
  br label %3065

; <label>:3065                                    ; preds = %3059, %3051
  %3066 = phi float [ %3064, %3059 ], [ %2758, %3051 ]
  %3067 = fsub fast float %3047, %3053
  %3068 = fmul fast float %3066, %3067
  %3069 = fadd fast float %3068, %3053
  br label %3080

; <label>:3070                                    ; preds = %3039
  %3071 = fmul fast float %3046, %2758
  %3072 = fmul fast float %3047, %2759
  %3073 = fmul fast float %3048, %2760
  %3074 = fmul fast float %3050, %2764
  %3075 = fmul fast float %3050, %2765
  %3076 = fmul fast float %3050, %2766
  %3077 = fadd fast float %3074, %3071
  %3078 = fadd fast float %3075, %3072
  %3079 = fadd fast float %3076, %3073
  br label %3080

; <label>:3080                                    ; preds = %3070, %3065
  %3081 = phi float [ %3058, %3065 ], [ %3077, %3070 ]
  %3082 = phi float [ %3069, %3065 ], [ %3078, %3070 ]
  %3083 = phi float [ %3048, %3065 ], [ %3079, %3070 ]
  %3084 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %3085 = extractvalue %dx.types.CBufRet.i32 %3084, 1
  %3086 = shl i32 %3085, 1
  %3087 = lshr i32 %1629, 5
  %3088 = extractvalue %dx.types.CBufRet.i32 %3084, 0
  %3089 = mul i32 %3088, %3087
  %3090 = add i32 %3086, %1535
  %3091 = add i32 %3090, %3089
  %3092 = shl i32 %3091, 2
  %3093 = and i32 %1629, 24
  %3094 = or i32 %3093, %1540
  %3095 = shl i32 1, %3094
  %3096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3092, i32 undef)  ; BufferLoad(srv,index,wot)
  %3097 = extractvalue %dx.types.ResRet.i32 %3096, 0
  %3098 = and i32 %3097, %3095
  %3099 = icmp eq i32 %3098, 0
  br i1 %3099, label %3115, label %3100, !dx.controlflow.hints !107

; <label>:3100                                    ; preds = %3080
  %3101 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %1628, i32 %1629, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3102 = extractvalue %dx.types.ResRet.f32 %3101, 0
  %3103 = fcmp fast ogt float %3102, 0.000000e+00
  br i1 %3103, label %3104, label %3115, !dx.controlflow.hints !108

; <label>:3104                                    ; preds = %3100
  %3105 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %1628, i32 %1629, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3106 = extractvalue %dx.types.ResRet.f32 %3105, 0
  %3107 = extractvalue %dx.types.ResRet.f32 %3105, 1
  %3108 = extractvalue %dx.types.ResRet.f32 %3105, 2
  %3109 = extractvalue %dx.types.ResRet.f32 %3105, 3
  %3110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %3111 = extractvalue %dx.types.CBufRet.f32 %3110, 2
  %3112 = fmul fast float %3111, %3106
  %3113 = fmul fast float %3111, %3107
  %3114 = fmul fast float %3111, %3108
  br label %3115

; <label>:3115                                    ; preds = %3104, %3100, %3080
  %3116 = phi float [ %3112, %3104 ], [ 0.000000e+00, %3100 ], [ 0.000000e+00, %3080 ]
  %3117 = phi float [ %3113, %3104 ], [ 0.000000e+00, %3100 ], [ 0.000000e+00, %3080 ]
  %3118 = phi float [ %3114, %3104 ], [ 0.000000e+00, %3100 ], [ 0.000000e+00, %3080 ]
  %3119 = phi float [ %3109, %3104 ], [ 0.000000e+00, %3100 ], [ 0.000000e+00, %3080 ]
  %3120 = fsub fast float 1.000000e+00, %3119
  %3121 = fmul fast float %3120, %3081
  %3122 = fmul fast float %3120, %3082
  %3123 = fmul fast float %3120, %3083
  %3124 = fadd fast float %3121, %3116
  %3125 = fadd fast float %3122, %3117
  %3126 = fadd fast float %3123, %3118
  %3127 = fadd fast float %1663, 0x3FE3C6EF40000000
  %3128 = call float @dx.op.unary.f32(i32 22, float %3127)  ; Frc(value)
  %3129 = call float @dx.op.unary.f32(i32 23, float %3124)  ; Log(value)
  %3130 = fadd fast float %3129, -7.000000e+00
  %3131 = call float @dx.op.unary.f32(i32 21, float %3130)  ; Exp(value)
  %3132 = fmul fast float %3128, 2.000000e+00
  %3133 = fadd fast float %3132, -1.000000e+00
  %3134 = fmul fast float %3131, %3133
  %3135 = fcmp fast ogt float %3124, 0.000000e+00
  %3136 = select i1 %3135, float %3134, float 0.000000e+00
  %3137 = fadd fast float %3136, %3124
  %3138 = fadd fast float %1663, 0x3FF3C6EF40000000
  %3139 = call float @dx.op.unary.f32(i32 22, float %3138)  ; Frc(value)
  %3140 = call float @dx.op.unary.f32(i32 23, float %3125)  ; Log(value)
  %3141 = fadd fast float %3140, -7.000000e+00
  %3142 = call float @dx.op.unary.f32(i32 21, float %3141)  ; Exp(value)
  %3143 = fmul fast float %3139, 2.000000e+00
  %3144 = fadd fast float %3143, -1.000000e+00
  %3145 = fmul fast float %3142, %3144
  %3146 = fcmp fast ogt float %3125, 0.000000e+00
  %3147 = select i1 %3146, float %3145, float 0.000000e+00
  %3148 = fadd fast float %3147, %3125
  %3149 = fadd fast float %1663, 0x3FFDAA66E0000000
  %3150 = call float @dx.op.unary.f32(i32 22, float %3149)  ; Frc(value)
  %3151 = call float @dx.op.unary.f32(i32 23, float %3126)  ; Log(value)
  %3152 = fadd fast float %3151, -6.000000e+00
  %3153 = call float @dx.op.unary.f32(i32 21, float %3152)  ; Exp(value)
  %3154 = fmul fast float %3150, 2.000000e+00
  %3155 = fadd fast float %3154, -1.000000e+00
  %3156 = fmul fast float %3153, %3155
  %3157 = fcmp fast ogt float %3126, 0.000000e+00
  %3158 = select i1 %3157, float %3156, float 0.000000e+00
  %3159 = fadd fast float %3158, %3126
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %1628, i32 %1629, i32 undef, float %3137, float %3148, float %3159, float %3137, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %3160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3161 = extractvalue %dx.types.CBufRet.i32 %3160, 0
  %3162 = and i32 %3161, 1
  %3163 = icmp ne i32 %3162, 0
  %3164 = or i32 %1629, %1621
  %3165 = and i32 %3164, 1
  %3166 = icmp eq i32 %3165, 0
  %3167 = and i1 %3166, %3163
  br i1 %3167, label %3168, label %3171, !dx.controlflow.hints !109

; <label>:3168                                    ; preds = %3115
  %3169 = and i32 %48, 2147483647
  %3170 = lshr i32 %1629, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %3169, i32 %3170, i32 undef, float %3046, float %3047, float %3048, float %3046, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3171

; <label>:3171                                    ; preds = %3168, %3115
  %3172 = fadd fast float %3124, %1616
  %3173 = fadd fast float %3125, %1617
  %3174 = fadd fast float %3126, %1618
  %3175 = fadd fast float %1619, 1.000000e+00
  br label %1638

; <label>:3176                                    ; preds = %1638
  %3177 = fdiv fast float 1.000000e+00, %1642
  %3178 = fmul fast float %3177, %1639
  %3179 = fmul fast float %3177, %1640
  %3180 = fmul fast float %3177, %1641
  %3181 = call float @dx.op.dot3.f32(i32 55, float %3178, float %3179, float %3180, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3182 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %3183 = add i32 %3182, -1
  %3184 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %3185 = and i32 %3182, 1
  %3186 = xor i32 %3185, 1
  %3187 = and i32 %3183, %3184
  %3188 = xor i32 %3186, %3187
  %3189 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3181, i32 %3188)  ; WaveReadLaneAt(value,lane)
  %3190 = call float @dx.op.binary.f32(i32 36, float %3181, float %3189)  ; FMin(a,b)
  %3191 = add i32 %3182, 15
  %3192 = and i32 %3191, 8
  %3193 = xor i32 %3187, %3192
  %3194 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3190, i32 %3193)  ; WaveReadLaneAt(value,lane)
  %3195 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3181, i32 %3188)  ; WaveReadLaneAt(value,lane)
  %3196 = call float @dx.op.binary.f32(i32 35, float %3181, float %3195)  ; FMax(a,b)
  %3197 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3196, i32 %3193)  ; WaveReadLaneAt(value,lane)
  %3198 = or i32 %48, %49
  %3199 = and i32 %3198, 1
  %3200 = icmp eq i32 %3199, 0
  br i1 %3200, label %3201, label %3243, !dx.controlflow.hints !143

; <label>:3201                                    ; preds = %3176
  %3202 = call float @dx.op.binary.f32(i32 35, float %3196, float %3197)  ; FMax(a,b)
  %3203 = call float @dx.op.binary.f32(i32 36, float %3190, float %3194)  ; FMin(a,b)
  %3204 = lshr i32 %48, 1
  %3205 = lshr i32 %49, 1
  %3206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %3207 = extractvalue %dx.types.CBufRet.f32 %3206, 3
  %3208 = fmul fast float %3207, 3.200000e+01
  %3209 = fmul fast float %3203, 0x3F1A36E2E0000000
  %3210 = fmul fast float %3209, %3208
  %3211 = call float @dx.op.unary.f32(i32 23, float %3210)  ; Log(value)
  %3212 = fmul fast float %3211, 0x3FC4640000000000
  %3213 = call float @dx.op.unary.f32(i32 21, float %3212)  ; Exp(value)
  %3214 = fmul fast float %3213, 0x4032DA0000000000
  %3215 = fadd fast float %3214, 8.359375e-01
  %3216 = fmul fast float %3213, 1.868750e+01
  %3217 = fadd fast float %3216, 1.000000e+00
  %3218 = fdiv fast float %3215, %3217
  %3219 = call float @dx.op.unary.f32(i32 23, float %3218)  ; Log(value)
  %3220 = fmul fast float %3219, 7.884375e+01
  %3221 = call float @dx.op.unary.f32(i32 21, float %3220)  ; Exp(value)
  %3222 = fmul fast float %3202, 0x3F1A36E2E0000000
  %3223 = fmul fast float %3222, %3208
  %3224 = call float @dx.op.unary.f32(i32 23, float %3223)  ; Log(value)
  %3225 = fmul fast float %3224, 0x3FC4640000000000
  %3226 = call float @dx.op.unary.f32(i32 21, float %3225)  ; Exp(value)
  %3227 = fmul fast float %3226, 0x4032DA0000000000
  %3228 = fadd fast float %3227, 8.359375e-01
  %3229 = fmul fast float %3226, 1.868750e+01
  %3230 = fadd fast float %3229, 1.000000e+00
  %3231 = fdiv fast float %3228, %3230
  %3232 = call float @dx.op.unary.f32(i32 23, float %3231)  ; Log(value)
  %3233 = fmul fast float %3232, 7.884375e+01
  %3234 = call float @dx.op.unary.f32(i32 21, float %3233)  ; Exp(value)
  %3235 = fmul fast float %3221, 0x40778E40E0000000
  %3236 = fmul fast float %3234, 0x40778E40E0000000
  %3237 = call float @dx.op.unary.f32(i32 26, float %3235)  ; Round_ne(value)
  %3238 = call float @dx.op.unary.f32(i32 26, float %3236)  ; Round_ne(value)
  %3239 = fmul fast float %3237, 0x3F70101020000000
  %3240 = fmul fast float %3238, 0x3F70101020000000
  %3241 = call float @dx.op.unary.f32(i32 7, float %3239)  ; Saturate(value)
  %3242 = call float @dx.op.unary.f32(i32 7, float %3240)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %3204, i32 %3205, i32 undef, float %3241, float %3242, float %3241, float %3241, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3243

; <label>:3243                                    ; preds = %3201, %3176
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
!37 = !{void ()* @cs_post_opaque_processes_luma_subsampletile_dmfpscale, !"cs_post_opaque_processes_luma_subsampletile_dmfpscale", null, !4, !38}
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
!143 = distinct !{!143, !"dx.controlflow.hints", i32 2}

