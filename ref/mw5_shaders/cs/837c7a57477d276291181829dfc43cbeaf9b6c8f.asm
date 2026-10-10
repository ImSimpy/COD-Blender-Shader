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
; shader hash: 3803f6b16960a715179582837fb2fe78
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

define void @cs_post_opaque_processes_subsampletile_dmfpscale() {
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
  %32 = alloca [3 x float], align 4
  %33 = alloca [3 x float], align 4
  %34 = alloca [4 x float], align 4
  %35 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.i32 %35, 0
  %37 = extractvalue %dx.types.CBufRet.i32 %35, 1
  %38 = mul i32 %37, %36
  %39 = add i32 %38, %29
  %40 = shl i32 %39, 2
  %41 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %40, i32 undef)  ; BufferLoad(srv,index,wot)
  %42 = extractvalue %dx.types.ResRet.i32 %41, 0
  %43 = lshr i32 %42, 16
  %44 = shl i32 %42, 3
  %45 = and i32 %44, 524280
  %46 = shl nuw nsw i32 %43, 3
  %47 = add i32 %45, %27
  %48 = add i32 %46, %28
  %49 = shl i32 %47, 1
  %50 = shl i32 %48, 1
  %51 = uitofp i32 %49 to float
  %52 = uitofp i32 %50 to float
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 2
  %55 = extractvalue %dx.types.CBufRet.f32 %53, 3
  %56 = fmul fast float %51, %54
  %57 = fmul fast float %52, %55
  %58 = fadd fast float %56, %54
  %59 = fadd fast float %57, %55
  %60 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %23, float %58, float %59, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %61 = extractvalue %dx.types.ResRet.f32 %60, 0
  %62 = extractvalue %dx.types.ResRet.f32 %60, 1
  %63 = extractvalue %dx.types.ResRet.f32 %60, 2
  %64 = extractvalue %dx.types.ResRet.f32 %60, 3
  %65 = fcmp fast ogt float %64, -1.000000e+00
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
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
  %91 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %92 = extractvalue %dx.types.ResRet.i32 %91, 0
  %93 = and i32 %92, 114688
  %94 = icmp ne i32 %93, 0
  %95 = select i1 %94, i32 %49, i32 0
  %96 = select i1 %94, i32 %50, i32 0
  %97 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %95, i32 %96, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %98 = extractvalue %dx.types.ResRet.f32 %97, 0
  %99 = fmul fast float %98, 2.550000e+02
  %100 = fptoui float %99 to i32
  %101 = icmp eq i32 %100, 3
  %102 = and i1 %94, %101
  %103 = extractvalue %dx.types.CBufRet.f32 %66, 3
  %104 = fcmp fast oge float %71, %103
  %105 = fadd fast float %51, 5.000000e-01
  %106 = fadd fast float %52, 5.000000e-01
  br i1 %102, label %968, label %107, !dx.controlflow.hints !39

; <label>:107                                     ; preds = %0
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 170)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = select i1 %104, float %109, float %71
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 3
  %114 = fmul fast float %105, 2.000000e+00
  %115 = fmul fast float %114, %112
  %116 = fmul fast float %106, 2.000000e+00
  %117 = fmul fast float %116, %113
  %118 = fsub fast float 1.000000e+00, %115
  %119 = fsub fast float 1.000000e+00, %117
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = fmul fast float %118, %121
  %125 = fmul fast float %118, %122
  %126 = fmul fast float %118, %123
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 0
  %129 = extractvalue %dx.types.CBufRet.f32 %127, 1
  %130 = extractvalue %dx.types.CBufRet.f32 %127, 2
  %131 = fmul fast float %119, %128
  %132 = fmul fast float %119, %129
  %133 = fmul fast float %119, %130
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 163)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 1
  %152 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %153 = extractvalue %dx.types.CBufRet.f32 %149, 3
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 0
  %156 = extractvalue %dx.types.CBufRet.f32 %154, 1
  %157 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %158 = extractvalue %dx.types.CBufRet.f32 %154, 3
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %161 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %162 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %163 = extractvalue %dx.types.CBufRet.f32 %159, 3
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %166 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %167 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %168 = extractvalue %dx.types.CBufRet.f32 %164, 3
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 3
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %104, label %185, label %197, !dx.controlflow.hints !40

; <label>:185                                     ; preds = %107
  %186 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %187 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 187)  ; CBufferLoadLegacy(handle,regIndex)
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
  %202 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = extractvalue %dx.types.CBufRet.i32 %202, 1
  %204 = and i32 %203, 1
  %205 = icmp ne i32 %204, 0
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.f32 %206, 2
  %208 = fcmp fast ogt float %207, 0.000000e+00
  %209 = and i1 %205, %208
  br i1 %209, label %210, label %619, !dx.controlflow.hints !41

; <label>:210                                     ; preds = %197
  %211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.f32 %211, 3
  %213 = select i1 %104, float %212, float %180
  %214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.f32 %214, 3
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 2
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 2
  %220 = fsub fast float %217, %219
  %221 = and i32 %203, 2
  %222 = extractvalue %dx.types.CBufRet.i32 %202, 0
  %223 = call i32 @dx.op.binary.i32(i32 40, i32 %222, i32 3)  ; UMin(a,b)
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 0
  %226 = extractvalue %dx.types.CBufRet.f32 %224, 1
  %227 = extractvalue %dx.types.CBufRet.f32 %218, 0
  %228 = extractvalue %dx.types.CBufRet.f32 %218, 1
  %229 = fsub fast float %225, %227
  %230 = fsub fast float %226, %228
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %246, label %247, label %262, !dx.controlflow.hints !42

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
  br i1 %266, label %267, label %269, !dx.controlflow.hints !43

; <label>:267                                     ; preds = %262
  %268 = fcmp fast oeq float %264, %263
  br i1 %268, label %572, label %270, !dx.controlflow.hints !44

; <label>:269                                     ; preds = %262
  br i1 %233, label %572, label %270, !dx.controlflow.hints !45

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
  br i1 %283, label %285, label %342, !dx.controlflow.hints !46

; <label>:285                                     ; preds = %270
  %286 = icmp eq i32 %221, 0
  br i1 %284, label %287, label %331, !dx.controlflow.hints !47

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
  %300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.f32 %300, 0
  %302 = extractvalue %dx.types.CBufRet.f32 %300, 1
  %303 = extractvalue %dx.types.CBufRet.f32 %300, 2
  %304 = extractvalue %dx.types.CBufRet.f32 %300, 3
  %305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %104, label %572, label %319, !dx.controlflow.hints !48

; <label>:319                                     ; preds = %287
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %286, label %332, label %353, !dx.controlflow.hints !49

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
  br i1 %284, label %343, label %353, !dx.controlflow.hints !50

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
  store float -1.000000e+00, float* %358, align 4, !tbaa !51, !noalias !55
  %359 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 1
  store float -1.000000e+00, float* %359, align 4, !tbaa !51, !noalias !55
  %360 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 2
  store float -1.000000e+00, float* %360, align 4, !tbaa !51, !noalias !55
  %361 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 0
  store float -1.000000e+00, float* %361, align 4, !tbaa !51, !noalias !55
  %362 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 1
  store float -1.000000e+00, float* %362, align 4, !tbaa !51, !noalias !55
  %363 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 2
  store float -1.000000e+00, float* %363, align 4, !tbaa !51, !noalias !55
  %364 = icmp sgt i32 %223, 0
  br i1 %364, label %365, label %426

; <label>:365                                     ; preds = %353
  br label %366

; <label>:366                                     ; preds = %415, %365
  %367 = phi i32 [ %416, %415 ], [ 0, %365 ]
  %368 = phi i32 [ %417, %415 ], [ 0, %365 ]
  %369 = add nuw i32 %368, 171
  %370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 %369)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.f32 %370, 0
  %372 = extractvalue %dx.types.CBufRet.f32 %370, 1
  %373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %389, label %390, label %405, !dx.controlflow.hints !42

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
  br i1 %408, label %409, label %415, !dx.controlflow.hints !67

; <label>:409                                     ; preds = %405
  %410 = call float @dx.op.binary.f32(i32 35, float %354, float %407)  ; FMax(a,b)
  %411 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %368
  store float %410, float* %411, align 4, !tbaa !51, !noalias !55
  %412 = call float @dx.op.binary.f32(i32 35, float %354, float %406)  ; FMax(a,b)
  %413 = getelementptr inbounds [3 x float], [3 x float]* %33, i32 0, i32 %368
  store float %412, float* %413, align 4, !tbaa !51, !noalias !55
  %414 = add nsw i32 %367, 1
  br label %415

; <label>:415                                     ; preds = %409, %405
  %416 = phi i32 [ %414, %409 ], [ %367, %405 ]
  %417 = add nuw nsw i32 %368, 1
  %418 = icmp eq i32 %417, %223
  br i1 %418, label %419, label %366

; <label>:419                                     ; preds = %415
  %420 = load float, float* %360, align 4, !tbaa !51, !alias.scope !68, !noalias !71
  %421 = load float, float* %359, align 4, !tbaa !51, !alias.scope !74, !noalias !75
  %422 = load float, float* %358, align 4, !tbaa !51, !alias.scope !76, !noalias !77
  %423 = load float, float* %363, align 4, !tbaa !51, !alias.scope !78, !noalias !81
  %424 = load float, float* %362, align 4, !tbaa !51, !alias.scope !84, !noalias !85
  %425 = load float, float* %361, align 4, !tbaa !51, !alias.scope !86, !noalias !87
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
  store float %435, float* %358, align 4, !tbaa !51, !alias.scope !76, !noalias !77
  store float %439, float* %359, align 4, !tbaa !51, !alias.scope !74, !noalias !75
  store float %441, float* %360, align 4, !tbaa !51, !alias.scope !68, !noalias !71
  %442 = call float @dx.op.binary.f32(i32 36, float %428, float %429)  ; FMin(a,b)
  %443 = call float @dx.op.binary.f32(i32 36, float %427, float %442)  ; FMin(a,b)
  %444 = call float @dx.op.binary.f32(i32 35, float %427, float %428)  ; FMax(a,b)
  %445 = call float @dx.op.binary.f32(i32 36, float %444, float %429)  ; FMin(a,b)
  %446 = call float @dx.op.binary.f32(i32 36, float %427, float %428)  ; FMin(a,b)
  %447 = call float @dx.op.binary.f32(i32 35, float %446, float %445)  ; FMax(a,b)
  %448 = call float @dx.op.binary.f32(i32 35, float %428, float %429)  ; FMax(a,b)
  %449 = call float @dx.op.binary.f32(i32 35, float %427, float %448)  ; FMax(a,b)
  store float %443, float* %361, align 4, !tbaa !51, !alias.scope !86, !noalias !87
  store float %447, float* %362, align 4, !tbaa !51, !alias.scope !84, !noalias !85
  store float %449, float* %363, align 4, !tbaa !51, !alias.scope !78, !noalias !81
  %450 = sub nsw i32 3, %433
  %451 = icmp sgt i32 %450, 2
  br i1 %451, label %452, label %490, !dx.controlflow.hints !88

; <label>:452                                     ; preds = %426
  %453 = icmp eq i32 %221, 0
  %454 = fsub fast float %271, %355
  %455 = select i1 %453, float %454, float %355
  %456 = extractvalue %dx.types.CBufRet.f32 %211, 0
  %457 = extractvalue %dx.types.CBufRet.f32 %211, 1
  %458 = extractvalue %dx.types.CBufRet.f32 %211, 2
  %459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %460 = extractvalue %dx.types.CBufRet.f32 %459, 0
  %461 = extractvalue %dx.types.CBufRet.f32 %459, 1
  %462 = extractvalue %dx.types.CBufRet.f32 %459, 2
  %463 = extractvalue %dx.types.CBufRet.f32 %459, 3
  %464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %104, label %572, label %478, !dx.controlflow.hints !48

; <label>:478                                     ; preds = %452
  %479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
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
  %492 = load float, float* %491, align 4, !tbaa !51, !noalias !55
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
  %503 = load float, float* %502, align 4, !tbaa !51, !noalias !55
  %504 = icmp slt i32 %501, 2
  %505 = add nsw i32 %501, 1
  %506 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %505
  %507 = load float, float* %506, align 4, !tbaa !51, !noalias !55
  %508 = select i1 %504, float %507, float %271
  %509 = call float @dx.op.binary.f32(i32 36, float %508, float %503)  ; FMin(a,b)
  %510 = call float @dx.op.binary.f32(i32 36, float %357, float %509)  ; FMin(a,b)
  %511 = icmp eq i32 %221, 0
  %512 = fadd fast float %510, %500
  %513 = fmul fast float %512, %183
  %514 = fadd fast float %513, %215
  br i1 %511, label %520, label %515, !dx.controlflow.hints !89

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
  %541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %542 = extractvalue %dx.types.CBufRet.f32 %541, 0
  %543 = extractvalue %dx.types.CBufRet.f32 %541, 1
  %544 = extractvalue %dx.types.CBufRet.f32 %541, 2
  %545 = extractvalue %dx.types.CBufRet.f32 %541, 3
  %546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %104, label %572, label %560, !dx.controlflow.hints !48

; <label>:560                                     ; preds = %533
  %561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
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
  %579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %580 = extractvalue %dx.types.CBufRet.f32 %579, 2
  %581 = fsub fast float %217, %580
  %582 = fcmp fast olt float %578, -2.000000e+01
  %583 = call float @dx.op.unary.f32(i32 21, float %578)  ; Exp(value)
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 2
  %586 = extractvalue %dx.types.CBufRet.f32 %584, 3
  %587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
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
  %625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %626 = extractvalue %dx.types.CBufRet.f32 %625, 1
  %627 = fsub fast float 1.000000e+00, %621
  %628 = fmul fast float %627, %198
  %629 = fmul fast float %628, %626
  %630 = fsub fast float %198, %629
  br i1 %176, label %631, label %663, !dx.controlflow.hints !90

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
  %670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %669, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %671 = extractvalue %dx.types.ResRet.f32 %670, 0
  %672 = fsub fast float %665, %671
  %673 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %672)  ; FMax(a,b)
  %674 = fmul fast float %200, %158
  %675 = call float @dx.op.unary.f32(i32 6, float %674)  ; FAbs(value)
  %676 = fcmp fast ogt float %675, 0x3EB0C6F7A0000000
  br i1 %676, label %677, label %683, !dx.controlflow.hints !91

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
  br i1 %104, label %696, label %704, !dx.controlflow.hints !92

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
  br i1 %209, label %741, label %939, !dx.controlflow.hints !93

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
  br i1 %763, label %764, label %777, !dx.controlflow.hints !94

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
  br i1 %782, label %783, label %790, !dx.controlflow.hints !95

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
  br i1 %793, label %794, label %801, !dx.controlflow.hints !95

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
  br i1 %804, label %805, label %812, !dx.controlflow.hints !95

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
  br i1 %831, label %832, label %839, !dx.controlflow.hints !96

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
  br i1 %842, label %843, label %850, !dx.controlflow.hints !96

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
  br i1 %853, label %854, label %861, !dx.controlflow.hints !96

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
  br i1 %864, label %865, label %885, !dx.controlflow.hints !97

; <label>:865                                     ; preds = %861
  %866 = fsub fast float 1.000000e+00, %762
  %867 = fmul fast float %778, %866
  %868 = fmul fast float %779, %866
  %869 = fmul fast float %780, %866
  %870 = fmul fast float %781, %866
  %871 = fcmp fast une float %870, 0.000000e+00
  br i1 %871, label %872, label %923, !dx.controlflow.hints !98

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
  br i1 %893, label %894, label %901, !dx.controlflow.hints !96

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
  br i1 %904, label %905, label %912, !dx.controlflow.hints !96

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
  br i1 %915, label %916, label %923, !dx.controlflow.hints !96

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
  %948 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %22, float %946, float %947, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %949 = extractvalue %dx.types.ResRet.f32 %948, 0
  %950 = extractvalue %dx.types.ResRet.f32 %948, 1
  %951 = extractvalue %dx.types.ResRet.f32 %948, 2
  %952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %953 = extractvalue %dx.types.CBufRet.f32 %952, 1
  %954 = fmul fast float %953, %949
  %955 = fmul fast float %953, %950
  %956 = fmul fast float %953, %951
  %957 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %22, float %946, float %947, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %977 = extractvalue %dx.types.CBufRet.f32 %976, 2
  %978 = extractvalue %dx.types.CBufRet.f32 %976, 3
  %979 = fmul fast float %977, %105
  %980 = fmul fast float %978, %106
  %981 = call float @dx.op.unary.f32(i32 7, float %979)  ; Saturate(value)
  %982 = call float @dx.op.unary.f32(i32 7, float %980)  ; Saturate(value)
  %983 = select i1 %102, i32 2, i32 0
  %984 = or i32 %983, 1
  %985 = uitofp i32 %984 to float
  %986 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %22, float %981, float %982, float %985, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %987 = extractvalue %dx.types.ResRet.f32 %986, 0
  %988 = extractvalue %dx.types.ResRet.f32 %986, 1
  %989 = extractvalue %dx.types.ResRet.f32 %986, 2
  %990 = extractvalue %dx.types.ResRet.f32 %986, 3
  %991 = add nuw nsw i32 %983, 2
  %992 = uitofp i32 %991 to float
  %993 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %22, float %981, float %982, float %992, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
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
  br i1 %1010, label %1011, label %1179, !dx.controlflow.hints !99

; <label>:1011                                    ; preds = %968
  %1012 = fadd fast float %975, -4.000000e+00
  %1013 = call float @dx.op.binary.f32(i32 35, float %1012, float 0.000000e+00)  ; FMax(a,b)
  %1014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1015 = extractvalue %dx.types.CBufRet.f32 %1014, 0
  %1016 = fadd fast float %1015, %1013
  %1017 = extractvalue %dx.types.CBufRet.f32 %1014, 2
  %1018 = fmul fast float %1016, %1017
  %1019 = call float @dx.op.unary.f32(i32 23, float %1018)  ; Log(value)
  %1020 = extractvalue %dx.types.CBufRet.f32 %1014, 3
  %1021 = fmul fast float %1020, %1019
  %1022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %21, float %981, float %982, float %1048, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1050 = extractvalue %dx.types.ResRet.f32 %1049, 0
  %1051 = extractvalue %dx.types.ResRet.f32 %1049, 1
  %1052 = extractvalue %dx.types.ResRet.f32 %1049, 2
  %1053 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %1054 = extractvalue %dx.types.CBufRet.i32 %1053, 0
  %1055 = extractvalue %dx.types.CBufRet.i32 %1053, 1
  %1056 = uitofp i32 %1054 to float
  %1057 = uitofp i32 %1055 to float
  %1058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %21, float %1124, float %1130, float %1048, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1132 = extractvalue %dx.types.ResRet.f32 %1131, 0
  %1133 = extractvalue %dx.types.ResRet.f32 %1131, 1
  %1134 = extractvalue %dx.types.ResRet.f32 %1131, 2
  %1135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %21, float %1126, float %1130, float %1048, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1136 = extractvalue %dx.types.ResRet.f32 %1135, 0
  %1137 = extractvalue %dx.types.ResRet.f32 %1135, 1
  %1138 = extractvalue %dx.types.ResRet.f32 %1135, 2
  %1139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %21, float %1124, float %1128, float %1048, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1140 = extractvalue %dx.types.ResRet.f32 %1139, 0
  %1141 = extractvalue %dx.types.ResRet.f32 %1139, 1
  %1142 = extractvalue %dx.types.ResRet.f32 %1139, 2
  %1143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %21, float %1126, float %1128, float %1048, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %1174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1198 = extractvalue %dx.types.CBufRet.f32 %1197, 2
  %1199 = fmul fast float %1198, 0x3FE3C6EF40000000
  %1200 = frem fast float %51, 2.560000e+02
  %1201 = frem fast float %52, 2.560000e+02
  %1202 = fptoui float %1200 to i32
  %1203 = fptoui float %1201 to i32
  %1204 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %1202, i32 %1203, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1205 = extractvalue %dx.types.ResRet.f32 %1204, 0
  %1206 = fadd fast float %1205, %1199
  %1207 = call float @dx.op.unary.f32(i32 22, float %1206)  ; Frc(value)
  %1208 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 %49, i32 %50, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1209 = extractvalue %dx.types.ResRet.f32 %1208, 0
  %1210 = extractvalue %dx.types.ResRet.f32 %1208, 1
  %1211 = extractvalue %dx.types.ResRet.f32 %1208, 2
  %1212 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %49, i32 %50, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1213 = extractvalue %dx.types.ResRet.f32 %1212, 0
  %1214 = extractvalue %dx.types.ResRet.f32 %1212, 1
  %1215 = extractvalue %dx.types.ResRet.f32 %1212, 2
  %1216 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %49, i32 %50, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1217 = extractvalue %dx.types.ResRet.f32 %1216, 0
  %1218 = extractvalue %dx.types.ResRet.f32 %1216, 1
  %1219 = extractvalue %dx.types.ResRet.f32 %1216, 2
  %1220 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %49, i32 %50, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1221 = extractvalue %dx.types.ResRet.f32 %1220, 0
  %1222 = extractvalue %dx.types.ResRet.f32 %1220, 1
  %1223 = call float @dx.op.binary.f32(i32 35, float %1221, float %1222)  ; FMax(a,b)
  %1224 = fcmp fast ult float %1223, 0x3F70101020000000
  br i1 %1224, label %1456, label %1225, !dx.controlflow.hints !100

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
  %1254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %22, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1382 = extractvalue %dx.types.ResRet.f32 %1381, 0
  %1383 = extractvalue %dx.types.ResRet.f32 %1381, 1
  %1384 = extractvalue %dx.types.ResRet.f32 %1381, 2
  %1385 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %22, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1386 = extractvalue %dx.types.ResRet.f32 %1385, 0
  %1387 = fcmp fast ogt float %1386, -1.000000e+00
  %1388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %1432, label %1433, label %1327, !llvm.loop !101

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
  %1463 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1464 = extractvalue %dx.types.CBufRet.i32 %1463, 3
  %1465 = and i32 %1464, 3
  %1466 = icmp ne i32 %1465, 0
  %1467 = and i32 %1464, 4
  %1468 = icmp ne i32 %1467, 0
  %1469 = and i1 %1466, %1468
  br i1 %1469, label %1470, label %1477, !dx.controlflow.hints !103

; <label>:1470                                    ; preds = %1456
  %1471 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %22, float %1195, float %1196, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1472 = extractvalue %dx.types.ResRet.f32 %1471, 0
  %1473 = fsub fast float 1.000000e+00, %1472
  %1474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1491 = extractvalue %dx.types.CBufRet.f32 %1490, 0
  br i1 %1481, label %1492, label %1511, !dx.controlflow.hints !104

; <label>:1492                                    ; preds = %1480
  %1493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1494 = extractvalue %dx.types.CBufRet.f32 %1493, 3
  %1495 = call float @dx.op.dot3.f32(i32 55, float %1186, float %1187, float %1188, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1496 = fmul fast float %1495, %1487
  %1497 = call float @dx.op.dot3.f32(i32 55, float %1192, float %1193, float %1194, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1498 = fmul fast float %1491, %1497
  %1499 = fadd fast float %1498, %1496
  br i1 %1469, label %1500, label %1506, !dx.controlflow.hints !105

; <label>:1500                                    ; preds = %1492
  %1501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1526 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %1537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.i32 %1542, 0
  %1544 = and i32 %1543, %1541
  %1545 = icmp eq i32 %1544, 0
  br i1 %1545, label %1561, label %1546, !dx.controlflow.hints !106

; <label>:1546                                    ; preds = %1521
  %1547 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %49, i32 %50, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1548 = extractvalue %dx.types.ResRet.f32 %1547, 0
  %1549 = fcmp fast ogt float %1548, 0.000000e+00
  br i1 %1549, label %1550, label %1561, !dx.controlflow.hints !107

; <label>:1550                                    ; preds = %1546
  %1551 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %49, i32 %50, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1552 = extractvalue %dx.types.ResRet.f32 %1551, 0
  %1553 = extractvalue %dx.types.ResRet.f32 %1551, 1
  %1554 = extractvalue %dx.types.ResRet.f32 %1551, 2
  %1555 = extractvalue %dx.types.ResRet.f32 %1551, 3
  %1556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
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
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %49, i32 %50, i32 undef, float %1583, float %1594, float %1605, float %1583, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1606 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1607 = extractvalue %dx.types.CBufRet.i32 %1606, 0
  %1608 = and i32 %1607, 1
  %1609 = icmp eq i32 %1608, 0
  br i1 %1609, label %1613, label %1610, !dx.controlflow.hints !108

; <label>:1610                                    ; preds = %1561
  %1611 = and i32 %47, 2147483647
  %1612 = and i32 %48, 2147483647
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1611, i32 %1612, i32 undef, float %1487, float %1488, float %1489, float %1487, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1613

; <label>:1613                                    ; preds = %1610, %1561
  br label %1614

; <label>:1614                                    ; preds = %1633, %1613
  %1615 = phi i32 [ %1620, %1633 ], [ 14, %1613 ]
  %1616 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1615)  ; FirstbitLo(value)
  %1617 = and i32 %1616, 31
  %1618 = shl i32 1, %1617
  %1619 = xor i32 %1618, -1
  %1620 = and i32 %1615, %1619
  %1621 = and i32 %1616, 1
  %1622 = lshr i32 %1616, 1
  %1623 = or i32 %1621, %49
  %1624 = add i32 %1622, %50
  %1625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1626 = extractvalue %dx.types.CBufRet.f32 %1625, 0
  %1627 = fptoui float %1626 to i32
  %1628 = icmp uge i32 %1623, %1627
  %1629 = extractvalue %dx.types.CBufRet.f32 %1625, 1
  %1630 = fptoui float %1629 to i32
  %1631 = icmp uge i32 %1624, %1630
  %1632 = or i1 %1628, %1631
  br i1 %1632, label %1633, label %1635, !dx.controlflow.hints !109

; <label>:1633                                    ; preds = %3159, %3106, %1614
  %1634 = icmp eq i32 %1620, 0
  br i1 %1634, label %3162, label %1614

; <label>:1635                                    ; preds = %1614
  %1636 = uitofp i32 %1623 to float
  %1637 = uitofp i32 %1624 to float
  %1638 = fadd fast float %1636, 5.000000e-01
  %1639 = fadd fast float %1637, 5.000000e-01
  %1640 = extractvalue %dx.types.CBufRet.f32 %1625, 2
  %1641 = extractvalue %dx.types.CBufRet.f32 %1625, 3
  %1642 = fmul fast float %1640, %1638
  %1643 = fmul fast float %1641, %1639
  %1644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1645 = extractvalue %dx.types.CBufRet.f32 %1644, 2
  %1646 = fmul fast float %1645, 0x3FE3C6EF40000000
  %1647 = frem fast float %1636, 2.560000e+02
  %1648 = frem fast float %1637, 2.560000e+02
  %1649 = fptoui float %1647 to i32
  %1650 = fptoui float %1648 to i32
  %1651 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %1649, i32 %1650, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1652 = extractvalue %dx.types.ResRet.f32 %1651, 0
  %1653 = fadd fast float %1652, %1646
  %1654 = call float @dx.op.unary.f32(i32 22, float %1653)  ; Frc(value)
  %1655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1656 = extractvalue %dx.types.ResRet.i32 %1655, 0
  %1657 = and i32 %1656, 114688
  %1658 = icmp ne i32 %1657, 0
  %1659 = select i1 %1658, i32 %1623, i32 0
  %1660 = select i1 %1658, i32 %1624, i32 0
  %1661 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %1659, i32 %1660, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1662 = extractvalue %dx.types.ResRet.f32 %1661, 0
  %1663 = fmul fast float %1662, 2.550000e+02
  %1664 = fptoui float %1663 to i32
  %1665 = icmp eq i32 %1664, 3
  %1666 = and i1 %1658, %1665
  %1667 = getelementptr [4 x float], [4 x float]* %34, i32 0, i32 %1616
  %1668 = load float, float* %1667, align 4, !tbaa !51, !noalias !110
  %1669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1670 = extractvalue %dx.types.CBufRet.f32 %1669, 3
  %1671 = fcmp fast oge float %1668, %1670
  br i1 %1666, label %2531, label %1672, !dx.controlflow.hints !39

; <label>:1672                                    ; preds = %1635
  %1673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 170)  ; CBufferLoadLegacy(handle,regIndex)
  %1674 = extractvalue %dx.types.CBufRet.f32 %1673, 0
  %1675 = select i1 %1671, float %1674, float %1668
  %1676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1677 = extractvalue %dx.types.CBufRet.f32 %1676, 2
  %1678 = extractvalue %dx.types.CBufRet.f32 %1676, 3
  %1679 = fmul fast float %1638, 2.000000e+00
  %1680 = fmul fast float %1679, %1677
  %1681 = fmul fast float %1639, 2.000000e+00
  %1682 = fmul fast float %1681, %1678
  %1683 = fsub fast float 1.000000e+00, %1680
  %1684 = fsub fast float 1.000000e+00, %1682
  %1685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1686 = extractvalue %dx.types.CBufRet.f32 %1685, 0
  %1687 = extractvalue %dx.types.CBufRet.f32 %1685, 1
  %1688 = extractvalue %dx.types.CBufRet.f32 %1685, 2
  %1689 = fmul fast float %1683, %1686
  %1690 = fmul fast float %1683, %1687
  %1691 = fmul fast float %1683, %1688
  %1692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1693 = extractvalue %dx.types.CBufRet.f32 %1692, 0
  %1694 = extractvalue %dx.types.CBufRet.f32 %1692, 1
  %1695 = extractvalue %dx.types.CBufRet.f32 %1692, 2
  %1696 = fmul fast float %1684, %1693
  %1697 = fmul fast float %1684, %1694
  %1698 = fmul fast float %1684, %1695
  %1699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1700 = extractvalue %dx.types.CBufRet.f32 %1699, 0
  %1701 = extractvalue %dx.types.CBufRet.f32 %1699, 1
  %1702 = extractvalue %dx.types.CBufRet.f32 %1699, 2
  %1703 = fadd fast float %1696, %1700
  %1704 = fadd fast float %1703, %1689
  %1705 = fadd fast float %1697, %1701
  %1706 = fadd fast float %1705, %1690
  %1707 = fadd fast float %1698, %1702
  %1708 = fadd fast float %1707, %1691
  %1709 = fmul fast float %1704, %1675
  %1710 = fmul fast float %1706, %1675
  %1711 = fmul fast float %1708, %1675
  %1712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 163)  ; CBufferLoadLegacy(handle,regIndex)
  %1713 = extractvalue %dx.types.CBufRet.f32 %1712, 0
  %1714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1715 = extractvalue %dx.types.CBufRet.f32 %1714, 0
  %1716 = extractvalue %dx.types.CBufRet.f32 %1714, 1
  %1717 = extractvalue %dx.types.CBufRet.f32 %1714, 2
  %1718 = extractvalue %dx.types.CBufRet.f32 %1714, 3
  %1719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1720 = extractvalue %dx.types.CBufRet.f32 %1719, 0
  %1721 = extractvalue %dx.types.CBufRet.f32 %1719, 1
  %1722 = extractvalue %dx.types.CBufRet.f32 %1719, 2
  %1723 = extractvalue %dx.types.CBufRet.f32 %1719, 3
  %1724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1725 = extractvalue %dx.types.CBufRet.f32 %1724, 0
  %1726 = extractvalue %dx.types.CBufRet.f32 %1724, 1
  %1727 = extractvalue %dx.types.CBufRet.f32 %1724, 2
  %1728 = extractvalue %dx.types.CBufRet.f32 %1724, 3
  %1729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1730 = extractvalue %dx.types.CBufRet.f32 %1729, 0
  %1731 = extractvalue %dx.types.CBufRet.f32 %1729, 1
  %1732 = extractvalue %dx.types.CBufRet.f32 %1729, 2
  %1733 = extractvalue %dx.types.CBufRet.f32 %1729, 3
  %1734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1735 = extractvalue %dx.types.CBufRet.f32 %1734, 3
  %1736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1737 = extractvalue %dx.types.CBufRet.f32 %1736, 3
  %1738 = extractvalue %dx.types.CBufRet.f32 %1736, 0
  %1739 = extractvalue %dx.types.CBufRet.f32 %1736, 1
  %1740 = extractvalue %dx.types.CBufRet.f32 %1736, 2
  %1741 = fcmp fast olt float %1740, -5.000000e-01
  %1742 = extractvalue %dx.types.CBufRet.f32 %1712, 3
  %1743 = call float @dx.op.dot3.f32(i32 55, float %1709, float %1710, float %1711, float %1709, float %1710, float %1711)  ; Dot3(ax,ay,az,bx,by,bz)
  %1744 = call float @dx.op.unary.f32(i32 25, float %1743)  ; Rsqrt(value)
  %1745 = fmul fast float %1744, %1743
  %1746 = fmul fast float %1744, %1709
  %1747 = fmul fast float %1744, %1710
  %1748 = fmul fast float %1744, %1711
  %1749 = fadd fast float %1745, %1718
  br i1 %1671, label %1750, label %1762, !dx.controlflow.hints !40

; <label>:1750                                    ; preds = %1672
  %1751 = extractvalue %dx.types.CBufRet.f32 %1712, 2
  %1752 = extractvalue %dx.types.CBufRet.f32 %1712, 1
  %1753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 187)  ; CBufferLoadLegacy(handle,regIndex)
  %1754 = extractvalue %dx.types.CBufRet.f32 %1753, 1
  %1755 = extractvalue %dx.types.CBufRet.f32 %1753, 0
  %1756 = call float @dx.op.binary.f32(i32 35, float %1748, float %1755)  ; FMax(a,b)
  %1757 = call float @dx.op.binary.f32(i32 36, float %1756, float %1754)  ; FMin(a,b)
  %1758 = fmul fast float %1757, %1752
  %1759 = fadd fast float %1758, %1751
  %1760 = call float @dx.op.unary.f32(i32 7, float %1759)  ; Saturate(value)
  %1761 = fmul fast float %1748, %1713
  br label %1762

; <label>:1762                                    ; preds = %1750, %1672
  %1763 = phi float [ %1713, %1750 ], [ %1749, %1672 ]
  %1764 = phi float [ %1760, %1750 ], [ 0.000000e+00, %1672 ]
  %1765 = phi float [ %1761, %1750 ], [ %1711, %1672 ]
  %1766 = call float @dx.op.dot3.f32(i32 55, float %1746, float %1747, float %1748, float %1715, float %1716, float %1717)  ; Dot3(ax,ay,az,bx,by,bz)
  %1767 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1768 = extractvalue %dx.types.CBufRet.i32 %1767, 1
  %1769 = and i32 %1768, 1
  %1770 = icmp ne i32 %1769, 0
  %1771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1772 = extractvalue %dx.types.CBufRet.f32 %1771, 2
  %1773 = fcmp fast ogt float %1772, 0.000000e+00
  %1774 = and i1 %1770, %1773
  br i1 %1774, label %1775, label %2184, !dx.controlflow.hints !41

; <label>:1775                                    ; preds = %1762
  %1776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1777 = extractvalue %dx.types.CBufRet.f32 %1776, 3
  %1778 = select i1 %1671, float %1777, float %1745
  %1779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1780 = extractvalue %dx.types.CBufRet.f32 %1779, 3
  %1781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1782 = extractvalue %dx.types.CBufRet.f32 %1781, 2
  %1783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1784 = extractvalue %dx.types.CBufRet.f32 %1783, 2
  %1785 = fsub fast float %1782, %1784
  %1786 = and i32 %1768, 2
  %1787 = extractvalue %dx.types.CBufRet.i32 %1767, 0
  %1788 = call i32 @dx.op.binary.i32(i32 40, i32 %1787, i32 3)  ; UMin(a,b)
  %1789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1790 = extractvalue %dx.types.CBufRet.f32 %1789, 0
  %1791 = extractvalue %dx.types.CBufRet.f32 %1789, 1
  %1792 = extractvalue %dx.types.CBufRet.f32 %1783, 0
  %1793 = extractvalue %dx.types.CBufRet.f32 %1783, 1
  %1794 = fsub fast float %1790, %1792
  %1795 = fsub fast float %1791, %1793
  %1796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1797 = extractvalue %dx.types.CBufRet.f32 %1796, 0
  %1798 = fcmp fast ogt float %1797, 0.000000e+00
  %1799 = fsub fast float -0.000000e+00, %1794
  %1800 = fsub fast float -0.000000e+00, %1795
  %1801 = call float @dx.op.dot2.f32(i32 54, float %1746, float %1747, float %1746, float %1747)  ; Dot2(ax,ay,bx,by)
  %1802 = call float @dx.op.dot2.f32(i32 54, float %1746, float %1747, float %1799, float %1800)  ; Dot2(ax,ay,bx,by)
  %1803 = fmul fast float %1802, 2.000000e+00
  %1804 = call float @dx.op.dot2.f32(i32 54, float %1799, float %1800, float %1799, float %1800)  ; Dot2(ax,ay,bx,by)
  %1805 = fmul fast float %1797, %1797
  %1806 = fsub fast float %1804, %1805
  %1807 = fmul fast float %1803, %1803
  %1808 = fmul fast float %1801, 4.000000e+00
  %1809 = fmul fast float %1808, %1806
  %1810 = fsub fast float %1807, %1809
  %1811 = fcmp fast ogt float %1810, 0.000000e+00
  br i1 %1811, label %1812, label %1827, !dx.controlflow.hints !42

; <label>:1812                                    ; preds = %1775
  %1813 = fcmp fast ogt float %1803, 0.000000e+00
  %1814 = call float @dx.op.unary.f32(i32 24, float %1810)  ; Sqrt(value)
  %1815 = fsub fast float -0.000000e+00, %1814
  %1816 = select i1 %1813, float %1814, float %1815
  %1817 = fadd fast float %1816, %1803
  %1818 = fmul float %1817, -5.000000e-01
  %1819 = fdiv fast float %1818, %1801
  %1820 = call float @dx.op.binary.f32(i32 35, float %1819, float 0.000000e+00)  ; FMax(a,b)
  %1821 = call float @dx.op.binary.f32(i32 36, float %1778, float %1820)  ; FMin(a,b)
  %1822 = fdiv fast float %1806, %1818
  %1823 = call float @dx.op.binary.f32(i32 35, float %1822, float 0.000000e+00)  ; FMax(a,b)
  %1824 = call float @dx.op.binary.f32(i32 36, float %1778, float %1823)  ; FMin(a,b)
  %1825 = call float @dx.op.binary.f32(i32 36, float %1821, float %1824)  ; FMin(a,b)
  %1826 = call float @dx.op.binary.f32(i32 35, float %1821, float %1824)  ; FMax(a,b)
  br label %1827

; <label>:1827                                    ; preds = %1812, %1775
  %1828 = phi float [ %1826, %1812 ], [ -1.000000e+00, %1775 ]
  %1829 = phi float [ %1825, %1812 ], [ -1.000000e+00, %1775 ]
  %1830 = phi i1 [ true, %1812 ], [ false, %1775 ]
  %1831 = and i1 %1798, %1830
  br i1 %1831, label %1832, label %1834, !dx.controlflow.hints !43

; <label>:1832                                    ; preds = %1827
  %1833 = fcmp fast oeq float %1829, %1828
  br i1 %1833, label %2137, label %1835, !dx.controlflow.hints !44

; <label>:1834                                    ; preds = %1827
  br i1 %1798, label %2137, label %1835, !dx.controlflow.hints !45

; <label>:1835                                    ; preds = %1834, %1832
  %1836 = phi float [ %1778, %1834 ], [ %1828, %1832 ]
  %1837 = phi float [ 0.000000e+00, %1834 ], [ %1829, %1832 ]
  %1838 = icmp ne i32 %1786, 0
  %1839 = fmul fast float %1836, %1748
  %1840 = fadd fast float %1839, %1780
  %1841 = fmul fast float %1840, %1836
  %1842 = select i1 %1838, float 0.000000e+00, float %1841
  %1843 = fcmp fast oeq float %1748, 0.000000e+00
  %1844 = fdiv fast float %1785, %1748
  %1845 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1844)  ; FMax(a,b)
  %1846 = select i1 %1843, float %1836, float %1845
  %1847 = call float @dx.op.binary.f32(i32 36, float %1836, float %1846)  ; FMin(a,b)
  %1848 = fcmp fast ogt float %1748, 0.000000e+00
  %1849 = fcmp fast olt float %1785, 0.000000e+00
  br i1 %1848, label %1850, label %1907, !dx.controlflow.hints !46

; <label>:1850                                    ; preds = %1835
  %1851 = icmp eq i32 %1786, 0
  br i1 %1849, label %1852, label %1896, !dx.controlflow.hints !47

; <label>:1852                                    ; preds = %1850
  %1853 = select i1 %1851, float %1836, float 0.000000e+00
  %1854 = fsub fast float -0.000000e+00, %1853
  %1855 = call float @dx.op.unary.f32(i32 6, float %1854)  ; FAbs(value)
  %1856 = fmul fast float %1853, %1748
  %1857 = fadd fast float %1856, %1780
  %1858 = fmul fast float %1855, %1857
  %1859 = fsub fast float %1842, %1858
  %1860 = fsub fast float %1836, %1855
  %1861 = select i1 %1851, float %1860, float 0.000000e+00
  %1862 = extractvalue %dx.types.CBufRet.f32 %1776, 0
  %1863 = extractvalue %dx.types.CBufRet.f32 %1776, 1
  %1864 = extractvalue %dx.types.CBufRet.f32 %1776, 2
  %1865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1866 = extractvalue %dx.types.CBufRet.f32 %1865, 0
  %1867 = extractvalue %dx.types.CBufRet.f32 %1865, 1
  %1868 = extractvalue %dx.types.CBufRet.f32 %1865, 2
  %1869 = extractvalue %dx.types.CBufRet.f32 %1865, 3
  %1870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1871 = extractvalue %dx.types.CBufRet.f32 %1870, 3
  %1872 = call float @dx.op.binary.f32(i32 36, float %1859, float %1871)  ; FMin(a,b)
  %1873 = fmul fast float %1869, %1861
  %1874 = call float @dx.op.unary.f32(i32 7, float %1873)  ; Saturate(value)
  %1875 = fsub fast float %1866, %1862
  %1876 = fsub fast float %1867, %1863
  %1877 = fsub fast float %1868, %1864
  %1878 = fmul fast float %1874, %1875
  %1879 = fmul fast float %1874, %1876
  %1880 = fmul fast float %1874, %1877
  %1881 = fadd fast float %1878, %1862
  %1882 = fadd fast float %1879, %1863
  %1883 = fadd fast float %1880, %1864
  br i1 %1671, label %2137, label %1884, !dx.controlflow.hints !48

; <label>:1884                                    ; preds = %1852
  %1885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1886 = extractvalue %dx.types.CBufRet.f32 %1885, 0
  %1887 = extractvalue %dx.types.CBufRet.f32 %1885, 1
  %1888 = fadd fast float %1887, %1886
  %1889 = call float @dx.op.unary.f32(i32 7, float %1888)  ; Saturate(value)
  %1890 = extractvalue %dx.types.CBufRet.f32 %1885, 2
  %1891 = extractvalue %dx.types.CBufRet.f32 %1885, 3
  %1892 = fadd fast float %1891, %1890
  %1893 = call float @dx.op.unary.f32(i32 7, float %1892)  ; Saturate(value)
  %1894 = fmul fast float %1889, %1872
  %1895 = fmul fast float %1894, %1893
  br label %2137

; <label>:1896                                    ; preds = %1850
  br i1 %1851, label %1897, label %1918, !dx.controlflow.hints !49

; <label>:1897                                    ; preds = %1896
  %1898 = call float @dx.op.binary.f32(i32 36, float %1847, float %1837)  ; FMin(a,b)
  %1899 = fsub fast float %1847, %1898
  %1900 = fsub fast float %1899, %1836
  %1901 = call float @dx.op.unary.f32(i32 6, float %1900)  ; FAbs(value)
  %1902 = fadd fast float %1899, %1836
  %1903 = fmul fast float %1902, %1748
  %1904 = fadd fast float %1903, %1780
  %1905 = fmul fast float %1904, %1901
  %1906 = fsub fast float %1842, %1905
  br label %1918

; <label>:1907                                    ; preds = %1835
  br i1 %1849, label %1908, label %1918, !dx.controlflow.hints !50

; <label>:1908                                    ; preds = %1907
  %1909 = call float @dx.op.binary.f32(i32 35, float %1837, float %1847)  ; FMax(a,b)
  %1910 = icmp eq i32 %1786, 0
  %1911 = select i1 %1910, float %1847, float 0.000000e+00
  %1912 = fsub fast float -0.000000e+00, %1911
  %1913 = call float @dx.op.unary.f32(i32 6, float %1912)  ; FAbs(value)
  %1914 = fmul fast float %1911, %1748
  %1915 = fadd fast float %1914, %1780
  %1916 = fmul fast float %1913, %1915
  %1917 = fsub fast float %1842, %1916
  br label %1918

; <label>:1918                                    ; preds = %1908, %1907, %1897, %1896
  %1919 = phi float [ %1837, %1896 ], [ %1837, %1897 ], [ %1909, %1908 ], [ %1837, %1907 ]
  %1920 = phi float [ 0.000000e+00, %1896 ], [ %1901, %1897 ], [ %1913, %1908 ], [ 0.000000e+00, %1907 ]
  %1921 = phi float [ %1842, %1896 ], [ %1906, %1897 ], [ %1917, %1908 ], [ %1842, %1907 ]
  %1922 = phi float [ %1847, %1896 ], [ %1847, %1897 ], [ %1836, %1908 ], [ %1836, %1907 ]
  %1923 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 0
  store float -1.000000e+00, float* %1923, align 4, !tbaa !51, !noalias !111
  %1924 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 1
  store float -1.000000e+00, float* %1924, align 4, !tbaa !51, !noalias !111
  %1925 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 2
  store float -1.000000e+00, float* %1925, align 4, !tbaa !51, !noalias !111
  %1926 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 0
  store float -1.000000e+00, float* %1926, align 4, !tbaa !51, !noalias !111
  %1927 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 1
  store float -1.000000e+00, float* %1927, align 4, !tbaa !51, !noalias !111
  %1928 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 2
  store float -1.000000e+00, float* %1928, align 4, !tbaa !51, !noalias !111
  %1929 = icmp sgt i32 %1788, 0
  br i1 %1929, label %1930, label %1991

; <label>:1930                                    ; preds = %1918
  br label %1931

; <label>:1931                                    ; preds = %1980, %1930
  %1932 = phi i32 [ %1981, %1980 ], [ 0, %1930 ]
  %1933 = phi i32 [ %1982, %1980 ], [ 0, %1930 ]
  %1934 = add nuw i32 %1933, 171
  %1935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 %1934)  ; CBufferLoadLegacy(handle,regIndex)
  %1936 = extractvalue %dx.types.CBufRet.f32 %1935, 0
  %1937 = extractvalue %dx.types.CBufRet.f32 %1935, 1
  %1938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1939 = extractvalue %dx.types.CBufRet.f32 %1938, 0
  %1940 = extractvalue %dx.types.CBufRet.f32 %1938, 1
  %1941 = fsub fast float %1936, %1939
  %1942 = fsub fast float %1937, %1940
  %1943 = extractvalue %dx.types.CBufRet.f32 %1935, 2
  %1944 = fsub fast float -0.000000e+00, %1941
  %1945 = fsub fast float -0.000000e+00, %1942
  %1946 = call float @dx.op.dot2.f32(i32 54, float %1746, float %1747, float %1944, float %1945)  ; Dot2(ax,ay,bx,by)
  %1947 = fmul fast float %1946, 2.000000e+00
  %1948 = call float @dx.op.dot2.f32(i32 54, float %1944, float %1945, float %1944, float %1945)  ; Dot2(ax,ay,bx,by)
  %1949 = fmul fast float %1943, %1943
  %1950 = fsub fast float %1948, %1949
  %1951 = fmul fast float %1947, %1947
  %1952 = fmul fast float %1808, %1950
  %1953 = fsub fast float %1951, %1952
  %1954 = fcmp fast ogt float %1953, 0.000000e+00
  br i1 %1954, label %1955, label %1970, !dx.controlflow.hints !42

; <label>:1955                                    ; preds = %1931
  %1956 = fcmp fast ogt float %1947, 0.000000e+00
  %1957 = call float @dx.op.unary.f32(i32 24, float %1953)  ; Sqrt(value)
  %1958 = fsub fast float -0.000000e+00, %1957
  %1959 = select i1 %1956, float %1957, float %1958
  %1960 = fadd fast float %1959, %1947
  %1961 = fmul float %1960, -5.000000e-01
  %1962 = fdiv fast float %1961, %1801
  %1963 = call float @dx.op.binary.f32(i32 35, float %1962, float 0.000000e+00)  ; FMax(a,b)
  %1964 = call float @dx.op.binary.f32(i32 36, float %1836, float %1963)  ; FMin(a,b)
  %1965 = fdiv fast float %1950, %1961
  %1966 = call float @dx.op.binary.f32(i32 35, float %1965, float 0.000000e+00)  ; FMax(a,b)
  %1967 = call float @dx.op.binary.f32(i32 36, float %1836, float %1966)  ; FMin(a,b)
  %1968 = call float @dx.op.binary.f32(i32 36, float %1964, float %1967)  ; FMin(a,b)
  %1969 = call float @dx.op.binary.f32(i32 35, float %1964, float %1967)  ; FMax(a,b)
  br label %1970

; <label>:1970                                    ; preds = %1955, %1931
  %1971 = phi float [ %1969, %1955 ], [ -1.000000e+00, %1931 ]
  %1972 = phi float [ %1968, %1955 ], [ -1.000000e+00, %1931 ]
  %1973 = phi i1 [ true, %1955 ], [ false, %1931 ]
  br i1 %1973, label %1974, label %1980, !dx.controlflow.hints !67

; <label>:1974                                    ; preds = %1970
  %1975 = call float @dx.op.binary.f32(i32 35, float %1919, float %1972)  ; FMax(a,b)
  %1976 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %1933
  store float %1975, float* %1976, align 4, !tbaa !51, !noalias !111
  %1977 = call float @dx.op.binary.f32(i32 35, float %1919, float %1971)  ; FMax(a,b)
  %1978 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %1933
  store float %1977, float* %1978, align 4, !tbaa !51, !noalias !111
  %1979 = add nsw i32 %1932, 1
  br label %1980

; <label>:1980                                    ; preds = %1974, %1970
  %1981 = phi i32 [ %1979, %1974 ], [ %1932, %1970 ]
  %1982 = add nuw nsw i32 %1933, 1
  %1983 = icmp eq i32 %1982, %1788
  br i1 %1983, label %1984, label %1931

; <label>:1984                                    ; preds = %1980
  %1985 = load float, float* %1925, align 4, !tbaa !51, !alias.scope !121, !noalias !124
  %1986 = load float, float* %1924, align 4, !tbaa !51, !alias.scope !127, !noalias !128
  %1987 = load float, float* %1923, align 4, !tbaa !51, !alias.scope !129, !noalias !130
  %1988 = load float, float* %1928, align 4, !tbaa !51, !alias.scope !131, !noalias !134
  %1989 = load float, float* %1927, align 4, !tbaa !51, !alias.scope !137, !noalias !138
  %1990 = load float, float* %1926, align 4, !tbaa !51, !alias.scope !139, !noalias !140
  br label %1991

; <label>:1991                                    ; preds = %1984, %1918
  %1992 = phi float [ -1.000000e+00, %1918 ], [ %1990, %1984 ]
  %1993 = phi float [ -1.000000e+00, %1918 ], [ %1989, %1984 ]
  %1994 = phi float [ -1.000000e+00, %1918 ], [ %1988, %1984 ]
  %1995 = phi float [ -1.000000e+00, %1918 ], [ %1987, %1984 ]
  %1996 = phi float [ -1.000000e+00, %1918 ], [ %1986, %1984 ]
  %1997 = phi float [ -1.000000e+00, %1918 ], [ %1985, %1984 ]
  %1998 = phi i32 [ 0, %1918 ], [ %1981, %1984 ]
  %1999 = call float @dx.op.binary.f32(i32 36, float %1996, float %1997)  ; FMin(a,b)
  %2000 = call float @dx.op.binary.f32(i32 36, float %1995, float %1999)  ; FMin(a,b)
  %2001 = call float @dx.op.binary.f32(i32 35, float %1995, float %1996)  ; FMax(a,b)
  %2002 = call float @dx.op.binary.f32(i32 36, float %2001, float %1997)  ; FMin(a,b)
  %2003 = call float @dx.op.binary.f32(i32 36, float %1995, float %1996)  ; FMin(a,b)
  %2004 = call float @dx.op.binary.f32(i32 35, float %2003, float %2002)  ; FMax(a,b)
  %2005 = call float @dx.op.binary.f32(i32 35, float %1996, float %1997)  ; FMax(a,b)
  %2006 = call float @dx.op.binary.f32(i32 35, float %1995, float %2005)  ; FMax(a,b)
  store float %2000, float* %1923, align 4, !tbaa !51, !alias.scope !129, !noalias !130
  store float %2004, float* %1924, align 4, !tbaa !51, !alias.scope !127, !noalias !128
  store float %2006, float* %1925, align 4, !tbaa !51, !alias.scope !121, !noalias !124
  %2007 = call float @dx.op.binary.f32(i32 36, float %1993, float %1994)  ; FMin(a,b)
  %2008 = call float @dx.op.binary.f32(i32 36, float %1992, float %2007)  ; FMin(a,b)
  %2009 = call float @dx.op.binary.f32(i32 35, float %1992, float %1993)  ; FMax(a,b)
  %2010 = call float @dx.op.binary.f32(i32 36, float %2009, float %1994)  ; FMin(a,b)
  %2011 = call float @dx.op.binary.f32(i32 36, float %1992, float %1993)  ; FMin(a,b)
  %2012 = call float @dx.op.binary.f32(i32 35, float %2011, float %2010)  ; FMax(a,b)
  %2013 = call float @dx.op.binary.f32(i32 35, float %1993, float %1994)  ; FMax(a,b)
  %2014 = call float @dx.op.binary.f32(i32 35, float %1992, float %2013)  ; FMax(a,b)
  store float %2008, float* %1926, align 4, !tbaa !51, !alias.scope !139, !noalias !140
  store float %2012, float* %1927, align 4, !tbaa !51, !alias.scope !137, !noalias !138
  store float %2014, float* %1928, align 4, !tbaa !51, !alias.scope !131, !noalias !134
  %2015 = sub nsw i32 3, %1998
  %2016 = icmp sgt i32 %2015, 2
  br i1 %2016, label %2017, label %2055, !dx.controlflow.hints !88

; <label>:2017                                    ; preds = %1991
  %2018 = icmp eq i32 %1786, 0
  %2019 = fsub fast float %1836, %1920
  %2020 = select i1 %2018, float %2019, float %1920
  %2021 = extractvalue %dx.types.CBufRet.f32 %1776, 0
  %2022 = extractvalue %dx.types.CBufRet.f32 %1776, 1
  %2023 = extractvalue %dx.types.CBufRet.f32 %1776, 2
  %2024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2025 = extractvalue %dx.types.CBufRet.f32 %2024, 0
  %2026 = extractvalue %dx.types.CBufRet.f32 %2024, 1
  %2027 = extractvalue %dx.types.CBufRet.f32 %2024, 2
  %2028 = extractvalue %dx.types.CBufRet.f32 %2024, 3
  %2029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2030 = extractvalue %dx.types.CBufRet.f32 %2029, 3
  %2031 = call float @dx.op.binary.f32(i32 36, float %1921, float %2030)  ; FMin(a,b)
  %2032 = fmul fast float %2028, %2020
  %2033 = call float @dx.op.unary.f32(i32 7, float %2032)  ; Saturate(value)
  %2034 = fsub fast float %2025, %2021
  %2035 = fsub fast float %2026, %2022
  %2036 = fsub fast float %2027, %2023
  %2037 = fmul fast float %2033, %2034
  %2038 = fmul fast float %2033, %2035
  %2039 = fmul fast float %2033, %2036
  %2040 = fadd fast float %2037, %2021
  %2041 = fadd fast float %2038, %2022
  %2042 = fadd fast float %2039, %2023
  br i1 %1671, label %2137, label %2043, !dx.controlflow.hints !48

; <label>:2043                                    ; preds = %2017
  %2044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2045 = extractvalue %dx.types.CBufRet.f32 %2044, 0
  %2046 = extractvalue %dx.types.CBufRet.f32 %2044, 1
  %2047 = fadd fast float %2046, %2045
  %2048 = call float @dx.op.unary.f32(i32 7, float %2047)  ; Saturate(value)
  %2049 = extractvalue %dx.types.CBufRet.f32 %2044, 2
  %2050 = extractvalue %dx.types.CBufRet.f32 %2044, 3
  %2051 = fadd fast float %2050, %2049
  %2052 = call float @dx.op.unary.f32(i32 7, float %2051)  ; Saturate(value)
  %2053 = fmul fast float %2048, %2031
  %2054 = fmul fast float %2053, %2052
  br label %2137

; <label>:2055                                    ; preds = %1991
  %2056 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %2015
  %2057 = load float, float* %2056, align 4, !tbaa !51, !noalias !111
  %2058 = fcmp fast olt float %2057, %1922
  %2059 = icmp sgt i32 %1998, 0
  %2060 = and i1 %2059, %2058
  br i1 %2060, label %2061, label %2098

; <label>:2061                                    ; preds = %2055
  br label %2062

; <label>:2062                                    ; preds = %2091, %2061
  %2063 = phi float [ %2092, %2091 ], [ %1920, %2061 ]
  %2064 = phi float [ %2093, %2091 ], [ %1921, %2061 ]
  %2065 = phi float [ %2073, %2091 ], [ %2057, %2061 ]
  %2066 = phi i32 [ %2070, %2091 ], [ %2015, %2061 ]
  %2067 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %2066
  %2068 = load float, float* %2067, align 4, !tbaa !51, !noalias !111
  %2069 = icmp slt i32 %2066, 2
  %2070 = add nsw i32 %2066, 1
  %2071 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %2070
  %2072 = load float, float* %2071, align 4, !tbaa !51, !noalias !111
  %2073 = select i1 %2069, float %2072, float %1836
  %2074 = call float @dx.op.binary.f32(i32 36, float %2073, float %2068)  ; FMin(a,b)
  %2075 = call float @dx.op.binary.f32(i32 36, float %1922, float %2074)  ; FMin(a,b)
  %2076 = icmp eq i32 %1786, 0
  %2077 = fadd fast float %2075, %2065
  %2078 = fmul fast float %2077, %1748
  %2079 = fadd fast float %2078, %1780
  br i1 %2076, label %2085, label %2080, !dx.controlflow.hints !89

; <label>:2080                                    ; preds = %2062
  %2081 = fsub fast float %2075, %2065
  %2082 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2081)  ; FMax(a,b)
  %2083 = fmul fast float %2082, %2079
  %2084 = fadd fast float %2083, %2064
  br label %2091

; <label>:2085                                    ; preds = %2062
  %2086 = fsub fast float %2065, %2075
  %2087 = call float @dx.op.unary.f32(i32 6, float %2086)  ; FAbs(value)
  %2088 = fadd fast float %2087, %2063
  %2089 = fmul fast float %2087, %2079
  %2090 = fsub fast float %2064, %2089
  br label %2091

; <label>:2091                                    ; preds = %2085, %2080
  %2092 = phi float [ %2082, %2080 ], [ %2088, %2085 ]
  %2093 = phi float [ %2084, %2080 ], [ %2090, %2085 ]
  %2094 = fcmp fast olt float %2073, %1922
  %2095 = icmp slt i32 %2070, 3
  %2096 = and i1 %2095, %2094
  br i1 %2096, label %2062, label %2097

; <label>:2097                                    ; preds = %2091
  br label %2098

; <label>:2098                                    ; preds = %2097, %2055
  %2099 = phi float [ %1920, %2055 ], [ %2092, %2097 ]
  %2100 = phi float [ %1921, %2055 ], [ %2093, %2097 ]
  %2101 = fsub fast float %1836, %2099
  %2102 = select i1 %1838, float %2099, float %2101
  %2103 = extractvalue %dx.types.CBufRet.f32 %1776, 0
  %2104 = extractvalue %dx.types.CBufRet.f32 %1776, 1
  %2105 = extractvalue %dx.types.CBufRet.f32 %1776, 2
  %2106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2107 = extractvalue %dx.types.CBufRet.f32 %2106, 0
  %2108 = extractvalue %dx.types.CBufRet.f32 %2106, 1
  %2109 = extractvalue %dx.types.CBufRet.f32 %2106, 2
  %2110 = extractvalue %dx.types.CBufRet.f32 %2106, 3
  %2111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2112 = extractvalue %dx.types.CBufRet.f32 %2111, 3
  %2113 = call float @dx.op.binary.f32(i32 36, float %2100, float %2112)  ; FMin(a,b)
  %2114 = fmul fast float %2110, %2102
  %2115 = call float @dx.op.unary.f32(i32 7, float %2114)  ; Saturate(value)
  %2116 = fsub fast float %2107, %2103
  %2117 = fsub fast float %2108, %2104
  %2118 = fsub fast float %2109, %2105
  %2119 = fmul fast float %2115, %2116
  %2120 = fmul fast float %2115, %2117
  %2121 = fmul fast float %2115, %2118
  %2122 = fadd fast float %2119, %2103
  %2123 = fadd fast float %2120, %2104
  %2124 = fadd fast float %2121, %2105
  br i1 %1671, label %2137, label %2125, !dx.controlflow.hints !48

; <label>:2125                                    ; preds = %2098
  %2126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2127 = extractvalue %dx.types.CBufRet.f32 %2126, 0
  %2128 = extractvalue %dx.types.CBufRet.f32 %2126, 1
  %2129 = fadd fast float %2128, %2127
  %2130 = call float @dx.op.unary.f32(i32 7, float %2129)  ; Saturate(value)
  %2131 = extractvalue %dx.types.CBufRet.f32 %2126, 2
  %2132 = extractvalue %dx.types.CBufRet.f32 %2126, 3
  %2133 = fadd fast float %2132, %2131
  %2134 = call float @dx.op.unary.f32(i32 7, float %2133)  ; Saturate(value)
  %2135 = fmul fast float %2130, %2113
  %2136 = fmul fast float %2135, %2134
  br label %2137

; <label>:2137                                    ; preds = %2125, %2098, %2043, %2017, %1884, %1852, %1834, %1832
  %2138 = phi float [ 0.000000e+00, %1832 ], [ 0.000000e+00, %1834 ], [ %1861, %1884 ], [ %1861, %1852 ], [ %2020, %2043 ], [ %2020, %2017 ], [ %2102, %2125 ], [ %2102, %2098 ]
  %2139 = phi float [ 0.000000e+00, %1832 ], [ 0.000000e+00, %1834 ], [ %1895, %1884 ], [ %1872, %1852 ], [ %2054, %2043 ], [ %2031, %2017 ], [ %2136, %2125 ], [ %2113, %2098 ]
  %2140 = phi float [ 0.000000e+00, %1832 ], [ 0.000000e+00, %1834 ], [ %1881, %1884 ], [ %1881, %1852 ], [ %2040, %2043 ], [ %2040, %2017 ], [ %2122, %2125 ], [ %2122, %2098 ]
  %2141 = phi float [ 0.000000e+00, %1832 ], [ 0.000000e+00, %1834 ], [ %1882, %1884 ], [ %1882, %1852 ], [ %2041, %2043 ], [ %2041, %2017 ], [ %2123, %2125 ], [ %2123, %2098 ]
  %2142 = phi float [ 0.000000e+00, %1832 ], [ 0.000000e+00, %1834 ], [ %1883, %1884 ], [ %1883, %1852 ], [ %2042, %2043 ], [ %2042, %2017 ], [ %2124, %2125 ], [ %2124, %2098 ]
  %2143 = fmul fast float %1772, %2139
  %2144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2145 = extractvalue %dx.types.CBufRet.f32 %2144, 2
  %2146 = fsub fast float %1782, %2145
  %2147 = fcmp fast olt float %2143, -2.000000e+01
  %2148 = call float @dx.op.unary.f32(i32 21, float %2143)  ; Exp(value)
  %2149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2150 = extractvalue %dx.types.CBufRet.f32 %2149, 2
  %2151 = extractvalue %dx.types.CBufRet.f32 %2149, 3
  %2152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2153 = extractvalue %dx.types.CBufRet.f32 %2152, 2
  %2154 = fmul fast float %2151, %2146
  %2155 = call float @dx.op.unary.f32(i32 7, float %2154)  ; Saturate(value)
  %2156 = fsub fast float 1.000000e+00, %2155
  %2157 = fmul fast float %1748, 5.000000e-01
  %2158 = fadd fast float %2157, 5.000000e-01
  %2159 = call float @dx.op.unary.f32(i32 7, float %2158)  ; Saturate(value)
  %2160 = fsub fast float 1.000000e+00, %2159
  %2161 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2156)  ; FMax(a,b)
  %2162 = fdiv fast float %2160, %2161
  %2163 = fsub fast float %2146, %1711
  %2164 = call float @dx.op.unary.f32(i32 6, float %2163)  ; FAbs(value)
  %2165 = fmul fast float %2164, %2150
  %2166 = call float @dx.op.unary.f32(i32 7, float %2162)  ; Saturate(value)
  %2167 = fsub fast float 1.000000e+00, %2165
  %2168 = fmul fast float %2167, %2166
  %2169 = fadd fast float %2168, %2165
  %2170 = fmul fast float %2153, %2146
  %2171 = call float @dx.op.unary.f32(i32 7, float %2170)  ; Saturate(value)
  %2172 = fsub fast float 1.000000e+00, %2169
  %2173 = fmul fast float %2172, %2171
  %2174 = fadd fast float %2173, %2169
  %2175 = call float @dx.op.unary.f32(i32 7, float %2174)  ; Saturate(value)
  %2176 = fadd fast float %2148, -1.000000e+00
  %2177 = select i1 %2147, float -1.000000e+00, float %2176
  %2178 = fmul fast float %2175, %2177
  %2179 = fadd fast float %2178, 1.000000e+00
  %2180 = fsub fast float -0.000000e+00, %2178
  %2181 = fmul fast float %2140, %2180
  %2182 = fmul fast float %2141, %2180
  %2183 = fmul fast float %2142, %2180
  br label %2184

; <label>:2184                                    ; preds = %2137, %1762
  %2185 = phi float [ %2138, %2137 ], [ 0.000000e+00, %1762 ]
  %2186 = phi float [ %2179, %2137 ], [ 1.000000e+00, %1762 ]
  %2187 = phi float [ %2181, %2137 ], [ 0.000000e+00, %1762 ]
  %2188 = phi float [ %2182, %2137 ], [ 0.000000e+00, %1762 ]
  %2189 = phi float [ %2183, %2137 ], [ 0.000000e+00, %1762 ]
  %2190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2191 = extractvalue %dx.types.CBufRet.f32 %2190, 1
  %2192 = fsub fast float 1.000000e+00, %2186
  %2193 = fmul fast float %2192, %1763
  %2194 = fmul fast float %2193, %2191
  %2195 = fsub fast float %1763, %2194
  br i1 %1741, label %2196, label %2228, !dx.controlflow.hints !90

; <label>:2196                                    ; preds = %2184
  %2197 = fmul fast float %1766, %1738
  %2198 = fadd fast float %2197, %1739
  %2199 = call float @dx.op.unary.f32(i32 7, float %2198)  ; Saturate(value)
  %2200 = fmul fast float %1720, %2195
  %2201 = fsub fast float -0.000000e+00, %2200
  %2202 = fmul fast float %1721, %2195
  %2203 = fsub fast float -0.000000e+00, %2202
  %2204 = call float @dx.op.unary.f32(i32 21, float %2201)  ; Exp(value)
  %2205 = call float @dx.op.unary.f32(i32 21, float %2203)  ; Exp(value)
  %2206 = call float @dx.op.binary.f32(i32 35, float %1728, float %2204)  ; FMax(a,b)
  %2207 = call float @dx.op.binary.f32(i32 35, float %1728, float %2205)  ; FMax(a,b)
  %2208 = fsub fast float %2207, %2206
  %2209 = fmul fast float %2208, %2199
  %2210 = fadd fast float %2209, %2206
  %2211 = call float @dx.op.unary.f32(i32 7, float %2210)  ; Saturate(value)
  %2212 = fmul fast float %1764, %1742
  %2213 = fsub fast float 1.000000e+00, %2212
  %2214 = select i1 %1671, float %2213, float %2211
  %2215 = fsub fast float %1725, %1730
  %2216 = fsub fast float %1726, %1731
  %2217 = fsub fast float %1727, %1732
  %2218 = fmul fast float %2199, %2215
  %2219 = fmul fast float %2199, %2216
  %2220 = fmul fast float %2199, %2217
  %2221 = fadd fast float %2218, %1730
  %2222 = fadd fast float %2219, %1731
  %2223 = fadd fast float %2220, %1732
  %2224 = fsub fast float 1.000000e+00, %2214
  %2225 = fmul fast float %2224, %2221
  %2226 = fmul fast float %2224, %2222
  %2227 = fmul fast float %2224, %2223
  br label %2299

; <label>:2228                                    ; preds = %2184
  %2229 = fmul fast float %2195, %1737
  %2230 = call float @dx.op.unary.f32(i32 7, float %2229)  ; Saturate(value)
  %2231 = fsub fast float 2.000000e+00, %2230
  %2232 = fmul fast float %2230, 9.921875e-01
  %2233 = fmul fast float %2232, %2231
  %2234 = fadd fast float %2233, 3.906250e-03
  %2235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %2234, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2236 = extractvalue %dx.types.ResRet.f32 %2235, 0
  %2237 = fsub fast float %2230, %2236
  %2238 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2237)  ; FMax(a,b)
  %2239 = fmul fast float %1765, %1723
  %2240 = call float @dx.op.unary.f32(i32 6, float %2239)  ; FAbs(value)
  %2241 = fcmp fast ogt float %2240, 0x3EB0C6F7A0000000
  br i1 %2241, label %2242, label %2248, !dx.controlflow.hints !91

; <label>:2242                                    ; preds = %2228
  %2243 = fmul fast float %2239, 0xBFF7154760000000
  %2244 = call float @dx.op.unary.f32(i32 21, float %2243)  ; Exp(value)
  %2245 = fsub fast float 1.000000e+00, %2244
  %2246 = fdiv fast float %2245, %2239
  %2247 = fmul fast float %2246, %1733
  br label %2248

; <label>:2248                                    ; preds = %2242, %2228
  %2249 = phi float [ %2247, %2242 ], [ %1733, %2228 ]
  %2250 = fadd fast float %2249, %1735
  %2251 = fmul fast float %2250, %2238
  %2252 = fmul fast float %1720, %2251
  %2253 = fsub fast float -0.000000e+00, %2252
  %2254 = fmul fast float %1721, %2251
  %2255 = fsub fast float -0.000000e+00, %2254
  %2256 = fmul fast float %1722, %2251
  %2257 = fsub fast float -0.000000e+00, %2256
  %2258 = call float @dx.op.unary.f32(i32 21, float %2253)  ; Exp(value)
  %2259 = call float @dx.op.unary.f32(i32 21, float %2255)  ; Exp(value)
  %2260 = call float @dx.op.unary.f32(i32 21, float %2257)  ; Exp(value)
  br i1 %1671, label %2261, label %2269, !dx.controlflow.hints !92

; <label>:2261                                    ; preds = %2248
  %2262 = fmul fast float %2258, %1764
  %2263 = fmul fast float %2259, %1764
  %2264 = fmul fast float %2260, %1764
  %2265 = fsub fast float 1.000000e+00, %1764
  %2266 = fadd fast float %2262, %2265
  %2267 = fadd fast float %2263, %2265
  %2268 = fadd fast float %2264, %2265
  br label %2269

; <label>:2269                                    ; preds = %2261, %2248
  %2270 = phi float [ %2266, %2261 ], [ %2258, %2248 ]
  %2271 = phi float [ %2267, %2261 ], [ %2259, %2248 ]
  %2272 = phi float [ %2268, %2261 ], [ %2260, %2248 ]
  %2273 = fmul fast float %1766, %1766
  %2274 = fadd fast float %2273, 1.000000e+00
  %2275 = fmul fast float %2274, 0x3FAE8EC8A0000000
  %2276 = fmul fast float %2275, %1730
  %2277 = fmul fast float %2275, %1731
  %2278 = fmul fast float %2275, %1732
  %2279 = fmul fast float %1766, %1728
  %2280 = fsub fast float 1.000000e+00, %2279
  %2281 = fmul fast float %1728, %1728
  %2282 = fsub fast float 1.000000e+00, %2281
  %2283 = fmul fast float %2282, 0x3FB45F3060000000
  %2284 = fmul fast float %2280, %2280
  %2285 = fdiv fast float 1.000000e+00, %2284
  %2286 = fmul fast float %2283, %2285
  %2287 = fmul fast float %2286, %1725
  %2288 = fmul fast float %2286, %1726
  %2289 = fmul fast float %2286, %1727
  %2290 = fadd fast float %2287, %2276
  %2291 = fadd fast float %2288, %2277
  %2292 = fadd fast float %2289, %2278
  %2293 = fsub fast float 1.000000e+00, %2270
  %2294 = fsub fast float 1.000000e+00, %2271
  %2295 = fsub fast float 1.000000e+00, %2272
  %2296 = fmul fast float %2290, %2293
  %2297 = fmul fast float %2291, %2294
  %2298 = fmul fast float %2292, %2295
  br label %2299

; <label>:2299                                    ; preds = %2269, %2196
  %2300 = phi float [ %2225, %2196 ], [ %2296, %2269 ]
  %2301 = phi float [ %2226, %2196 ], [ %2297, %2269 ]
  %2302 = phi float [ %2227, %2196 ], [ %2298, %2269 ]
  %2303 = phi float [ %2214, %2196 ], [ %2270, %2269 ]
  %2304 = phi float [ %2214, %2196 ], [ %2271, %2269 ]
  %2305 = phi float [ %2214, %2196 ], [ %2272, %2269 ]
  br i1 %1774, label %2306, label %2504, !dx.controlflow.hints !93

; <label>:2306                                    ; preds = %2299
  %2307 = extractvalue %dx.types.CBufRet.f32 %2190, 0
  %2308 = fmul fast float %2307, %2192
  %2309 = fsub fast float %2187, %2300
  %2310 = fsub fast float %2188, %2301
  %2311 = fsub fast float %2189, %2302
  %2312 = fmul fast float %2308, %2309
  %2313 = fmul fast float %2308, %2310
  %2314 = fmul fast float %2308, %2311
  %2315 = fadd fast float %2312, %2300
  %2316 = fadd fast float %2313, %2301
  %2317 = fadd fast float %2314, %2302
  %2318 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2303)  ; FMax(a,b)
  %2319 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2304)  ; FMax(a,b)
  %2320 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2305)  ; FMax(a,b)
  %2321 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2186)  ; FMax(a,b)
  %2322 = call float @dx.op.binary.f32(i32 35, float %2185, float %2195)  ; FMax(a,b)
  %2323 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2322)  ; FMax(a,b)
  %2324 = fdiv fast float %2185, %2323
  %2325 = call float @dx.op.unary.f32(i32 7, float %2324)  ; Saturate(value)
  %2326 = fdiv fast float %2195, %2323
  %2327 = call float @dx.op.unary.f32(i32 7, float %2326)  ; Saturate(value)
  %2328 = fcmp fast une float %2321, 1.000000e+00
  br i1 %2328, label %2329, label %2342, !dx.controlflow.hints !94

; <label>:2329                                    ; preds = %2306
  %2330 = call float @dx.op.unary.f32(i32 23, float %2321)  ; Log(value)
  %2331 = fmul fast float %2330, 0x3FE62E4300000000
  %2332 = fmul fast float %2187, %2331
  %2333 = fsub fast float -0.000000e+00, %2332
  %2334 = fmul fast float %2188, %2331
  %2335 = fsub fast float -0.000000e+00, %2334
  %2336 = fmul fast float %2189, %2331
  %2337 = fsub fast float -0.000000e+00, %2336
  %2338 = fsub fast float 1.000000e+00, %2321
  %2339 = fdiv fast float %2333, %2338
  %2340 = fdiv fast float %2335, %2338
  %2341 = fdiv fast float %2337, %2338
  br label %2342

; <label>:2342                                    ; preds = %2329, %2306
  %2343 = phi float [ %2339, %2329 ], [ %2187, %2306 ]
  %2344 = phi float [ %2340, %2329 ], [ %2188, %2306 ]
  %2345 = phi float [ %2341, %2329 ], [ %2189, %2306 ]
  %2346 = phi float [ %2331, %2329 ], [ 0.000000e+00, %2306 ]
  %2347 = fcmp fast une float %2318, 1.000000e+00
  br i1 %2347, label %2348, label %2355, !dx.controlflow.hints !95

; <label>:2348                                    ; preds = %2342
  %2349 = call float @dx.op.unary.f32(i32 23, float %2318)  ; Log(value)
  %2350 = fmul fast float %2349, 0x3FE62E4300000000
  %2351 = fmul fast float %2315, %2350
  %2352 = fsub fast float -0.000000e+00, %2351
  %2353 = fsub fast float 1.000000e+00, %2318
  %2354 = fdiv fast float %2352, %2353
  br label %2355

; <label>:2355                                    ; preds = %2348, %2342
  %2356 = phi float [ %2354, %2348 ], [ %2315, %2342 ]
  %2357 = phi float [ %2350, %2348 ], [ 0.000000e+00, %2342 ]
  %2358 = fcmp fast une float %2319, 1.000000e+00
  br i1 %2358, label %2359, label %2366, !dx.controlflow.hints !95

; <label>:2359                                    ; preds = %2355
  %2360 = call float @dx.op.unary.f32(i32 23, float %2319)  ; Log(value)
  %2361 = fmul fast float %2360, 0x3FE62E4300000000
  %2362 = fmul fast float %2316, %2361
  %2363 = fsub fast float -0.000000e+00, %2362
  %2364 = fsub fast float 1.000000e+00, %2319
  %2365 = fdiv fast float %2363, %2364
  br label %2366

; <label>:2366                                    ; preds = %2359, %2355
  %2367 = phi float [ %2365, %2359 ], [ %2316, %2355 ]
  %2368 = phi float [ %2361, %2359 ], [ 0.000000e+00, %2355 ]
  %2369 = fcmp fast une float %2320, 1.000000e+00
  br i1 %2369, label %2370, label %2377, !dx.controlflow.hints !95

; <label>:2370                                    ; preds = %2366
  %2371 = call float @dx.op.unary.f32(i32 23, float %2320)  ; Log(value)
  %2372 = fmul fast float %2371, 0x3FE62E4300000000
  %2373 = fmul fast float %2317, %2372
  %2374 = fsub fast float -0.000000e+00, %2373
  %2375 = fsub fast float 1.000000e+00, %2320
  %2376 = fdiv fast float %2374, %2375
  br label %2377

; <label>:2377                                    ; preds = %2370, %2366
  %2378 = phi float [ %2376, %2370 ], [ %2317, %2366 ]
  %2379 = phi float [ %2372, %2370 ], [ 0.000000e+00, %2366 ]
  %2380 = fmul fast float %2343, %2327
  %2381 = fmul fast float %2344, %2327
  %2382 = fmul fast float %2345, %2327
  %2383 = fmul fast float %2346, %2327
  %2384 = fmul fast float %2356, %2325
  %2385 = fmul fast float %2367, %2325
  %2386 = fmul fast float %2378, %2325
  %2387 = fmul fast float %2357, %2325
  %2388 = fmul fast float %2368, %2325
  %2389 = fmul fast float %2379, %2325
  %2390 = fadd fast float %2384, %2380
  %2391 = fadd fast float %2385, %2381
  %2392 = fadd fast float %2386, %2382
  %2393 = fadd fast float %2387, %2383
  %2394 = fadd fast float %2388, %2383
  %2395 = fadd fast float %2389, %2383
  %2396 = fcmp fast une float %2393, 0.000000e+00
  br i1 %2396, label %2397, label %2404, !dx.controlflow.hints !96

; <label>:2397                                    ; preds = %2377
  %2398 = fmul fast float %2393, 0x3FF7154760000000
  %2399 = call float @dx.op.unary.f32(i32 21, float %2398)  ; Exp(value)
  %2400 = fsub fast float 1.000000e+00, %2399
  %2401 = fmul fast float %2390, %2400
  %2402 = fsub fast float -0.000000e+00, %2401
  %2403 = fdiv fast float %2402, %2393
  br label %2404

; <label>:2404                                    ; preds = %2397, %2377
  %2405 = phi float [ %2399, %2397 ], [ 1.000000e+00, %2377 ]
  %2406 = phi float [ %2403, %2397 ], [ %2390, %2377 ]
  %2407 = fcmp fast une float %2394, 0.000000e+00
  br i1 %2407, label %2408, label %2415, !dx.controlflow.hints !96

; <label>:2408                                    ; preds = %2404
  %2409 = fmul fast float %2394, 0x3FF7154760000000
  %2410 = call float @dx.op.unary.f32(i32 21, float %2409)  ; Exp(value)
  %2411 = fsub fast float 1.000000e+00, %2410
  %2412 = fmul fast float %2391, %2411
  %2413 = fsub fast float -0.000000e+00, %2412
  %2414 = fdiv fast float %2413, %2394
  br label %2415

; <label>:2415                                    ; preds = %2408, %2404
  %2416 = phi float [ %2410, %2408 ], [ 1.000000e+00, %2404 ]
  %2417 = phi float [ %2414, %2408 ], [ %2391, %2404 ]
  %2418 = fcmp fast une float %2395, 0.000000e+00
  br i1 %2418, label %2419, label %2426, !dx.controlflow.hints !96

; <label>:2419                                    ; preds = %2415
  %2420 = fmul fast float %2395, 0x3FF7154760000000
  %2421 = call float @dx.op.unary.f32(i32 21, float %2420)  ; Exp(value)
  %2422 = fsub fast float 1.000000e+00, %2421
  %2423 = fmul fast float %2392, %2422
  %2424 = fsub fast float -0.000000e+00, %2423
  %2425 = fdiv fast float %2424, %2395
  br label %2426

; <label>:2426                                    ; preds = %2419, %2415
  %2427 = phi float [ %2421, %2419 ], [ 1.000000e+00, %2415 ]
  %2428 = phi float [ %2425, %2419 ], [ %2392, %2415 ]
  %2429 = fcmp fast ogt float %2325, %2327
  br i1 %2429, label %2430, label %2450, !dx.controlflow.hints !97

; <label>:2430                                    ; preds = %2426
  %2431 = fsub fast float 1.000000e+00, %2327
  %2432 = fmul fast float %2343, %2431
  %2433 = fmul fast float %2344, %2431
  %2434 = fmul fast float %2345, %2431
  %2435 = fmul fast float %2346, %2431
  %2436 = fcmp fast une float %2435, 0.000000e+00
  br i1 %2436, label %2437, label %2488, !dx.controlflow.hints !98

; <label>:2437                                    ; preds = %2430
  %2438 = fmul fast float %2435, 0x3FF7154760000000
  %2439 = call float @dx.op.unary.f32(i32 21, float %2438)  ; Exp(value)
  %2440 = fsub fast float 1.000000e+00, %2439
  %2441 = fmul fast float %2432, %2440
  %2442 = fsub fast float -0.000000e+00, %2441
  %2443 = fmul fast float %2433, %2440
  %2444 = fsub fast float -0.000000e+00, %2443
  %2445 = fmul fast float %2434, %2440
  %2446 = fsub fast float -0.000000e+00, %2445
  %2447 = fdiv fast float %2442, %2435
  %2448 = fdiv fast float %2444, %2435
  %2449 = fdiv fast float %2446, %2435
  br label %2488

; <label>:2450                                    ; preds = %2426
  %2451 = fsub fast float 1.000000e+00, %2325
  %2452 = fmul fast float %2356, %2451
  %2453 = fmul fast float %2367, %2451
  %2454 = fmul fast float %2378, %2451
  %2455 = fmul fast float %2357, %2451
  %2456 = fmul fast float %2368, %2451
  %2457 = fmul fast float %2379, %2451
  %2458 = fcmp fast une float %2455, 0.000000e+00
  br i1 %2458, label %2459, label %2466, !dx.controlflow.hints !96

; <label>:2459                                    ; preds = %2450
  %2460 = fmul fast float %2455, 0x3FF7154760000000
  %2461 = call float @dx.op.unary.f32(i32 21, float %2460)  ; Exp(value)
  %2462 = fsub fast float 1.000000e+00, %2461
  %2463 = fmul fast float %2452, %2462
  %2464 = fsub fast float -0.000000e+00, %2463
  %2465 = fdiv fast float %2464, %2455
  br label %2466

; <label>:2466                                    ; preds = %2459, %2450
  %2467 = phi float [ %2465, %2459 ], [ %2452, %2450 ]
  %2468 = phi float [ %2461, %2459 ], [ 1.000000e+00, %2450 ]
  %2469 = fcmp fast une float %2456, 0.000000e+00
  br i1 %2469, label %2470, label %2477, !dx.controlflow.hints !96

; <label>:2470                                    ; preds = %2466
  %2471 = fmul fast float %2456, 0x3FF7154760000000
  %2472 = call float @dx.op.unary.f32(i32 21, float %2471)  ; Exp(value)
  %2473 = fsub fast float 1.000000e+00, %2472
  %2474 = fmul fast float %2453, %2473
  %2475 = fsub fast float -0.000000e+00, %2474
  %2476 = fdiv fast float %2475, %2456
  br label %2477

; <label>:2477                                    ; preds = %2470, %2466
  %2478 = phi float [ %2476, %2470 ], [ %2453, %2466 ]
  %2479 = phi float [ %2472, %2470 ], [ 1.000000e+00, %2466 ]
  %2480 = fcmp fast une float %2457, 0.000000e+00
  br i1 %2480, label %2481, label %2488, !dx.controlflow.hints !96

; <label>:2481                                    ; preds = %2477
  %2482 = fmul fast float %2457, 0x3FF7154760000000
  %2483 = call float @dx.op.unary.f32(i32 21, float %2482)  ; Exp(value)
  %2484 = fsub fast float 1.000000e+00, %2483
  %2485 = fmul fast float %2454, %2484
  %2486 = fsub fast float -0.000000e+00, %2485
  %2487 = fdiv fast float %2486, %2457
  br label %2488

; <label>:2488                                    ; preds = %2481, %2477, %2437, %2430
  %2489 = phi float [ %2487, %2481 ], [ %2449, %2437 ], [ %2434, %2430 ], [ %2454, %2477 ]
  %2490 = phi float [ %2478, %2481 ], [ %2448, %2437 ], [ %2433, %2430 ], [ %2478, %2477 ]
  %2491 = phi float [ %2467, %2481 ], [ %2447, %2437 ], [ %2432, %2430 ], [ %2467, %2477 ]
  %2492 = phi float [ %2483, %2481 ], [ %2439, %2437 ], [ 1.000000e+00, %2430 ], [ 1.000000e+00, %2477 ]
  %2493 = phi float [ %2479, %2481 ], [ %2439, %2437 ], [ 1.000000e+00, %2430 ], [ %2479, %2477 ]
  %2494 = phi float [ %2468, %2481 ], [ %2439, %2437 ], [ 1.000000e+00, %2430 ], [ %2468, %2477 ]
  %2495 = fmul fast float %2494, %2406
  %2496 = fmul fast float %2493, %2417
  %2497 = fmul fast float %2492, %2428
  %2498 = fadd fast float %2495, %2491
  %2499 = fadd fast float %2496, %2490
  %2500 = fadd fast float %2497, %2489
  %2501 = fmul fast float %2494, %2405
  %2502 = fmul fast float %2493, %2416
  %2503 = fmul fast float %2492, %2427
  br label %2504

; <label>:2504                                    ; preds = %2488, %2299
  %2505 = phi float [ %2503, %2488 ], [ %2305, %2299 ]
  %2506 = phi float [ %2502, %2488 ], [ %2304, %2299 ]
  %2507 = phi float [ %2501, %2488 ], [ %2303, %2299 ]
  %2508 = phi float [ %2500, %2488 ], [ %2302, %2299 ]
  %2509 = phi float [ %2499, %2488 ], [ %2301, %2299 ]
  %2510 = phi float [ %2498, %2488 ], [ %2300, %2299 ]
  %2511 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %22, float %1642, float %1643, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2512 = extractvalue %dx.types.ResRet.f32 %2511, 0
  %2513 = extractvalue %dx.types.ResRet.f32 %2511, 1
  %2514 = extractvalue %dx.types.ResRet.f32 %2511, 2
  %2515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2516 = extractvalue %dx.types.CBufRet.f32 %2515, 1
  %2517 = fmul fast float %2516, %2512
  %2518 = fmul fast float %2516, %2513
  %2519 = fmul fast float %2516, %2514
  %2520 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %22, float %1642, float %1643, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2521 = extractvalue %dx.types.ResRet.f32 %2520, 0
  %2522 = fmul fast float %2521, %2507
  %2523 = fmul fast float %2521, %2506
  %2524 = fmul fast float %2521, %2505
  %2525 = fmul fast float %2521, %2510
  %2526 = fmul fast float %2521, %2509
  %2527 = fmul fast float %2521, %2508
  %2528 = fadd fast float %2525, %2517
  %2529 = fadd fast float %2526, %2518
  %2530 = fadd fast float %2527, %2519
  br label %2531

; <label>:2531                                    ; preds = %2504, %1635
  %2532 = phi float [ 0.000000e+00, %1635 ], [ %2528, %2504 ]
  %2533 = phi float [ 0.000000e+00, %1635 ], [ %2529, %2504 ]
  %2534 = phi float [ 0.000000e+00, %1635 ], [ %2530, %2504 ]
  %2535 = phi float [ 1.000000e+00, %1635 ], [ %2522, %2504 ]
  %2536 = phi float [ 1.000000e+00, %1635 ], [ %2523, %2504 ]
  %2537 = phi float [ 1.000000e+00, %1635 ], [ %2524, %2504 ]
  %2538 = phi float [ %1668, %1635 ], [ %1675, %2504 ]
  %2539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2540 = extractvalue %dx.types.CBufRet.f32 %2539, 2
  %2541 = extractvalue %dx.types.CBufRet.f32 %2539, 3
  %2542 = fmul fast float %2540, %1638
  %2543 = fmul fast float %2541, %1639
  %2544 = call float @dx.op.unary.f32(i32 7, float %2542)  ; Saturate(value)
  %2545 = call float @dx.op.unary.f32(i32 7, float %2543)  ; Saturate(value)
  %2546 = select i1 %1666, i32 2, i32 0
  %2547 = or i32 %2546, 1
  %2548 = uitofp i32 %2547 to float
  %2549 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %22, float %2544, float %2545, float %2548, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2550 = extractvalue %dx.types.ResRet.f32 %2549, 0
  %2551 = extractvalue %dx.types.ResRet.f32 %2549, 1
  %2552 = extractvalue %dx.types.ResRet.f32 %2549, 2
  %2553 = extractvalue %dx.types.ResRet.f32 %2549, 3
  %2554 = add nuw nsw i32 %2546, 2
  %2555 = uitofp i32 %2554 to float
  %2556 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %22, float %2544, float %2545, float %2555, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2557 = extractvalue %dx.types.ResRet.f32 %2556, 0
  %2558 = extractvalue %dx.types.ResRet.f32 %2556, 1
  %2559 = extractvalue %dx.types.ResRet.f32 %2556, 2
  %2560 = extractvalue %dx.types.ResRet.f32 %2556, 3
  %2561 = call float @dx.op.binary.f32(i32 35, float %2551, float %2552)  ; FMax(a,b)
  %2562 = call float @dx.op.binary.f32(i32 35, float %2550, float %2561)  ; FMax(a,b)
  %2563 = call float @dx.op.binary.f32(i32 35, float %2562, float %2553)  ; FMax(a,b)
  %2564 = call float @dx.op.binary.f32(i32 36, float %2558, float %2559)  ; FMin(a,b)
  %2565 = call float @dx.op.binary.f32(i32 36, float %2557, float %2564)  ; FMin(a,b)
  %2566 = call float @dx.op.binary.f32(i32 36, float %2565, float %2560)  ; FMin(a,b)
  %2567 = fmul fast float %2563, 2.550000e+02
  %2568 = fadd fast float %2567, 0x3F70101020000000
  %2569 = fptoui float %2568 to i32
  %2570 = fmul fast float %2566, 2.550000e+02
  %2571 = fadd fast float %2570, 0x3F70101020000000
  %2572 = fptoui float %2571 to i32
  %2573 = icmp ult i32 %2569, %2572
  br i1 %2573, label %2574, label %2742, !dx.controlflow.hints !99

; <label>:2574                                    ; preds = %2531
  %2575 = fadd fast float %2538, -4.000000e+00
  %2576 = call float @dx.op.binary.f32(i32 35, float %2575, float 0.000000e+00)  ; FMax(a,b)
  %2577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2578 = extractvalue %dx.types.CBufRet.f32 %2577, 0
  %2579 = fadd fast float %2578, %2576
  %2580 = extractvalue %dx.types.CBufRet.f32 %2577, 2
  %2581 = fmul fast float %2579, %2580
  %2582 = call float @dx.op.unary.f32(i32 23, float %2581)  ; Log(value)
  %2583 = extractvalue %dx.types.CBufRet.f32 %2577, 3
  %2584 = fmul fast float %2583, %2582
  %2585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2586 = extractvalue %dx.types.CBufRet.f32 %2585, 2
  %2587 = fmul fast float %2584, %2586
  %2588 = call float @dx.op.unary.f32(i32 7, float %2587)  ; Saturate(value)
  %2589 = select i1 %1671, float 1.000000e+00, float %2588
  %2590 = uitofp i32 %2569 to float
  %2591 = uitofp i32 %2572 to float
  %2592 = fadd fast float %2590, 5.000000e-01
  %2593 = fadd fast float %2591, 5.000000e-01
  %2594 = fmul fast float %2586, %2592
  %2595 = fmul fast float %2586, %2593
  %2596 = fadd fast float %2594, 0x3F0FFB4800000000
  %2597 = fadd fast float %2595, 0xBF0FFB4800000000
  %2598 = call float @dx.op.binary.f32(i32 35, float %2589, float %2596)  ; FMax(a,b)
  %2599 = call float @dx.op.binary.f32(i32 36, float %2598, float %2597)  ; FMin(a,b)
  %2600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2601 = extractvalue %dx.types.CBufRet.f32 %2600, 1
  %2602 = extractvalue %dx.types.CBufRet.f32 %2600, 2
  %2603 = extractvalue %dx.types.CBufRet.f32 %2600, 0
  %2604 = select i1 %1666, float %2603, float 0.000000e+00
  %2605 = fmul fast float %2601, %2599
  %2606 = fadd fast float %2604, %2605
  %2607 = fadd fast float %2604, %2602
  %2608 = fsub fast float %2601, %2602
  %2609 = fadd fast float %2608, %2604
  %2610 = call float @dx.op.binary.f32(i32 35, float %2606, float %2607)  ; FMax(a,b)
  %2611 = call float @dx.op.binary.f32(i32 36, float %2610, float %2609)  ; FMin(a,b)
  %2612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %21, float %2544, float %2545, float %2611, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2613 = extractvalue %dx.types.ResRet.f32 %2612, 0
  %2614 = extractvalue %dx.types.ResRet.f32 %2612, 1
  %2615 = extractvalue %dx.types.ResRet.f32 %2612, 2
  %2616 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %2617 = extractvalue %dx.types.CBufRet.i32 %2616, 0
  %2618 = extractvalue %dx.types.CBufRet.i32 %2616, 1
  %2619 = uitofp i32 %2617 to float
  %2620 = uitofp i32 %2618 to float
  %2621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %2622 = extractvalue %dx.types.CBufRet.f32 %2621, 0
  %2623 = extractvalue %dx.types.CBufRet.f32 %2621, 1
  %2624 = fmul fast float %2619, %2544
  %2625 = fmul fast float %2620, %2545
  %2626 = fadd fast float %2624, -5.000000e-01
  %2627 = fadd fast float %2625, -5.000000e-01
  %2628 = call float @dx.op.unary.f32(i32 22, float %2626)  ; Frc(value)
  %2629 = call float @dx.op.unary.f32(i32 22, float %2627)  ; Frc(value)
  %2630 = fmul fast float %2628, %2628
  %2631 = fmul fast float %2630, %2628
  %2632 = fsub fast float 3.000000e+00, %2628
  %2633 = fmul fast float %2630, %2632
  %2634 = fmul fast float %2628, 3.000000e+00
  %2635 = fmul fast float %2631, 3.000000e+00
  %2636 = fmul fast float %2630, 6.000000e+00
  %2637 = fsub fast float %2635, %2636
  %2638 = fadd fast float %2637, 4.000000e+00
  %2639 = fmul fast float %2638, 0x3FC5555560000000
  %2640 = fmul fast float %2631, -3.000000e+00
  %2641 = fadd fast float %2630, %2628
  %2642 = fmul fast float %2641, 3.000000e+00
  %2643 = fadd fast float %2640, 1.000000e+00
  %2644 = fadd fast float %2643, %2642
  %2645 = fmul fast float %2631, 0x3FC5555560000000
  %2646 = fmul fast float %2629, %2629
  %2647 = fmul fast float %2646, %2629
  %2648 = fsub fast float 3.000000e+00, %2629
  %2649 = fmul fast float %2646, %2648
  %2650 = fmul fast float %2629, 3.000000e+00
  %2651 = fmul fast float %2647, 3.000000e+00
  %2652 = fmul fast float %2646, 6.000000e+00
  %2653 = fsub fast float %2651, %2652
  %2654 = fadd fast float %2653, 4.000000e+00
  %2655 = fmul fast float %2654, 0x3FC5555560000000
  %2656 = fmul fast float %2647, -3.000000e+00
  %2657 = fadd fast float %2646, %2629
  %2658 = fmul fast float %2657, 3.000000e+00
  %2659 = fadd fast float %2656, 1.000000e+00
  %2660 = fadd fast float %2659, %2658
  %2661 = fmul fast float %2647, 0x3FC5555560000000
  %2662 = fadd fast float %2628, 1.000000e+00
  %2663 = fsub fast float 1.000000e+00, %2634
  %2664 = fadd fast float %2663, %2633
  %2665 = fadd fast float %2664, %2638
  %2666 = fmul fast float %2665, 0x3FC5555560000000
  %2667 = fdiv fast float %2639, %2666
  %2668 = fsub fast float %2662, %2667
  %2669 = fsub fast float 1.000000e+00, %2628
  %2670 = fadd fast float %2644, %2631
  %2671 = fmul fast float %2670, 0x3FC5555560000000
  %2672 = fdiv fast float %2645, %2671
  %2673 = fadd fast float %2669, %2672
  %2674 = fadd fast float %2629, 1.000000e+00
  %2675 = fsub fast float 1.000000e+00, %2650
  %2676 = fadd fast float %2675, %2649
  %2677 = fadd fast float %2676, %2654
  %2678 = fmul fast float %2677, 0x3FC5555560000000
  %2679 = fdiv fast float %2655, %2678
  %2680 = fsub fast float %2674, %2679
  %2681 = fsub fast float 1.000000e+00, %2629
  %2682 = fadd fast float %2660, %2647
  %2683 = fmul fast float %2682, 0x3FC5555560000000
  %2684 = fdiv fast float %2661, %2683
  %2685 = fadd fast float %2684, %2681
  %2686 = fmul fast float %2668, %2622
  %2687 = fsub fast float %2544, %2686
  %2688 = fmul fast float %2673, %2622
  %2689 = fadd fast float %2688, %2544
  %2690 = fmul fast float %2685, %2623
  %2691 = fadd fast float %2690, %2545
  %2692 = fmul fast float %2680, %2623
  %2693 = fsub fast float %2545, %2692
  %2694 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %21, float %2687, float %2693, float %2611, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2695 = extractvalue %dx.types.ResRet.f32 %2694, 0
  %2696 = extractvalue %dx.types.ResRet.f32 %2694, 1
  %2697 = extractvalue %dx.types.ResRet.f32 %2694, 2
  %2698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %21, float %2689, float %2693, float %2611, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2699 = extractvalue %dx.types.ResRet.f32 %2698, 0
  %2700 = extractvalue %dx.types.ResRet.f32 %2698, 1
  %2701 = extractvalue %dx.types.ResRet.f32 %2698, 2
  %2702 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %21, float %2687, float %2691, float %2611, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2703 = extractvalue %dx.types.ResRet.f32 %2702, 0
  %2704 = extractvalue %dx.types.ResRet.f32 %2702, 1
  %2705 = extractvalue %dx.types.ResRet.f32 %2702, 2
  %2706 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %21, float %2689, float %2691, float %2611, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2707 = extractvalue %dx.types.ResRet.f32 %2706, 0
  %2708 = extractvalue %dx.types.ResRet.f32 %2706, 1
  %2709 = extractvalue %dx.types.ResRet.f32 %2706, 2
  %2710 = fsub fast float %2703, %2695
  %2711 = fsub fast float %2704, %2696
  %2712 = fsub fast float %2705, %2697
  %2713 = fmul fast float %2710, %2683
  %2714 = fmul fast float %2711, %2683
  %2715 = fmul fast float %2712, %2683
  %2716 = fadd fast float %2713, %2695
  %2717 = fadd fast float %2714, %2696
  %2718 = fadd fast float %2715, %2697
  %2719 = fsub fast float %2707, %2699
  %2720 = fsub fast float %2708, %2700
  %2721 = fsub fast float %2709, %2701
  %2722 = fmul fast float %2719, %2683
  %2723 = fmul fast float %2720, %2683
  %2724 = fmul fast float %2721, %2683
  %2725 = fsub fast float %2699, %2716
  %2726 = fadd fast float %2725, %2722
  %2727 = fsub fast float %2700, %2717
  %2728 = fadd fast float %2727, %2723
  %2729 = fsub fast float %2701, %2718
  %2730 = fadd fast float %2729, %2724
  %2731 = fmul fast float %2726, %2671
  %2732 = fmul fast float %2728, %2671
  %2733 = fmul fast float %2730, %2671
  %2734 = fadd fast float %2731, %2716
  %2735 = fadd fast float %2732, %2717
  %2736 = fadd fast float %2733, %2718
  %2737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2738 = extractvalue %dx.types.CBufRet.f32 %2737, 1
  %2739 = fmul fast float %2734, %2738
  %2740 = fmul fast float %2735, %2738
  %2741 = fmul fast float %2736, %2738
  br label %2742

; <label>:2742                                    ; preds = %2574, %2531
  %2743 = phi float [ %2613, %2574 ], [ 1.000000e+00, %2531 ]
  %2744 = phi float [ %2614, %2574 ], [ 1.000000e+00, %2531 ]
  %2745 = phi float [ %2615, %2574 ], [ 1.000000e+00, %2531 ]
  %2746 = phi float [ %2739, %2574 ], [ 0.000000e+00, %2531 ]
  %2747 = phi float [ %2740, %2574 ], [ 0.000000e+00, %2531 ]
  %2748 = phi float [ %2741, %2574 ], [ 0.000000e+00, %2531 ]
  %2749 = fmul fast float %2743, %2535
  %2750 = fmul fast float %2744, %2536
  %2751 = fmul fast float %2745, %2537
  %2752 = fmul fast float %2743, %2532
  %2753 = fmul fast float %2744, %2533
  %2754 = fmul fast float %2745, %2534
  %2755 = fadd fast float %2746, %2752
  %2756 = fadd fast float %2747, %2753
  %2757 = fadd fast float %2748, %2754
  %2758 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 %1623, i32 %1624, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2759 = extractvalue %dx.types.ResRet.f32 %2758, 0
  %2760 = extractvalue %dx.types.ResRet.f32 %2758, 1
  %2761 = extractvalue %dx.types.ResRet.f32 %2758, 2
  %2762 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %1623, i32 %1624, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2763 = extractvalue %dx.types.ResRet.f32 %2762, 0
  %2764 = extractvalue %dx.types.ResRet.f32 %2762, 1
  %2765 = extractvalue %dx.types.ResRet.f32 %2762, 2
  %2766 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %1623, i32 %1624, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2767 = extractvalue %dx.types.ResRet.f32 %2766, 0
  %2768 = extractvalue %dx.types.ResRet.f32 %2766, 1
  %2769 = extractvalue %dx.types.ResRet.f32 %2766, 2
  %2770 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %1623, i32 %1624, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2771 = extractvalue %dx.types.ResRet.f32 %2770, 0
  %2772 = extractvalue %dx.types.ResRet.f32 %2770, 1
  %2773 = call float @dx.op.binary.f32(i32 35, float %2771, float %2772)  ; FMax(a,b)
  %2774 = fcmp fast ult float %2773, 0x3F70101020000000
  br i1 %2774, label %3006, label %2775, !dx.controlflow.hints !141

; <label>:2775                                    ; preds = %2742
  %2776 = fmul fast float %2772, 2.000000e+00
  %2777 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2776)  ; FMax(a,b)
  %2778 = fmul fast float %2771, 2.000000e+00
  %2779 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2778)  ; FMax(a,b)
  %2780 = extractvalue %dx.types.ResRet.f32 %2766, 3
  %2781 = fmul fast float %2780, 2.000000e+00
  %2782 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2781)  ; FMax(a,b)
  %2783 = fmul fast float %2769, %2769
  %2784 = fmul fast float %2768, %2768
  %2785 = fmul fast float %2767, %2767
  %2786 = fadd fast float %2785, 0xBFD51EB860000000
  %2787 = fadd fast float %2784, 0xBFD51EB860000000
  %2788 = fadd fast float %2783, 0xBFD51EB860000000
  %2789 = fmul fast float %2786, %2786
  %2790 = fmul fast float %2787, %2787
  %2791 = fmul fast float %2788, %2788
  %2792 = fmul fast float %2789, %2789
  %2793 = fmul fast float %2792, 1.000000e+02
  %2794 = fmul fast float %2790, %2790
  %2795 = fmul fast float %2794, 1.000000e+02
  %2796 = fmul fast float %2791, %2791
  %2797 = fmul fast float %2796, 1.000000e+02
  %2798 = fadd fast float %2793, 3.500000e+00
  %2799 = fadd fast float %2795, 3.500000e+00
  %2800 = fadd fast float %2797, 3.500000e+00
  %2801 = fdiv fast float %2798, %2782
  %2802 = fdiv fast float %2799, %2779
  %2803 = fdiv fast float %2800, %2777
  %2804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %2805 = extractvalue %dx.types.CBufRet.f32 %2804, 0
  %2806 = extractvalue %dx.types.CBufRet.f32 %2804, 1
  %2807 = fmul fast float %2805, %1668
  %2808 = fmul fast float %2806, %1668
  %2809 = fdiv fast float 1.000000e+00, %2807
  %2810 = fdiv fast float 1.000000e+00, %2808
  %2811 = fmul fast float %1640, 5.000000e-01
  %2812 = fmul fast float %2811, %2807
  %2813 = fmul fast float %2801, 0xBFF7154760000000
  %2814 = fmul fast float %2813, %2812
  %2815 = call float @dx.op.unary.f32(i32 21, float %2814)  ; Exp(value)
  %2816 = fmul fast float %2815, 2.500000e-01
  %2817 = fsub fast float 1.000000e+00, %2816
  %2818 = fmul fast float %2801, 0xBFDEC709E0000000
  %2819 = fmul fast float %2818, %2812
  %2820 = call float @dx.op.unary.f32(i32 21, float %2819)  ; Exp(value)
  %2821 = fmul fast float %2820, 7.500000e-01
  %2822 = fsub fast float %2817, %2821
  %2823 = fmul fast float %2802, 0xBFF7154760000000
  %2824 = fmul fast float %2823, %2812
  %2825 = call float @dx.op.unary.f32(i32 21, float %2824)  ; Exp(value)
  %2826 = fmul fast float %2825, 2.500000e-01
  %2827 = fsub fast float 1.000000e+00, %2826
  %2828 = fmul fast float %2802, 0xBFDEC709E0000000
  %2829 = fmul fast float %2828, %2812
  %2830 = call float @dx.op.unary.f32(i32 21, float %2829)  ; Exp(value)
  %2831 = fmul fast float %2830, 7.500000e-01
  %2832 = fsub fast float %2827, %2831
  %2833 = fmul fast float %2803, 0xBFF7154760000000
  %2834 = fmul fast float %2833, %2812
  %2835 = call float @dx.op.unary.f32(i32 21, float %2834)  ; Exp(value)
  %2836 = fmul fast float %2835, 2.500000e-01
  %2837 = fsub fast float 1.000000e+00, %2836
  %2838 = fmul fast float %2803, 0xBFDEC709E0000000
  %2839 = fmul fast float %2838, %2812
  %2840 = call float @dx.op.unary.f32(i32 21, float %2839)  ; Exp(value)
  %2841 = fmul fast float %2840, 7.500000e-01
  %2842 = fsub fast float %2837, %2841
  %2843 = fmul fast float %2763, 0x3F1A36E2E0000000
  %2844 = fmul fast float %2764, 0x3F1A36E2E0000000
  %2845 = fmul fast float %2765, 0x3F1A36E2E0000000
  %2846 = call float @dx.op.binary.f32(i32 36, float %2802, float %2803)  ; FMin(a,b)
  %2847 = call float @dx.op.binary.f32(i32 36, float %2801, float %2846)  ; FMin(a,b)
  %2848 = call float @dx.op.binary.f32(i32 36, float %2832, float %2842)  ; FMin(a,b)
  %2849 = call float @dx.op.binary.f32(i32 36, float %2822, float %2848)  ; FMin(a,b)
  %2850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2851 = extractvalue %dx.types.CBufRet.f32 %2850, 2
  %2852 = fmul fast float %2851, %2807
  %2853 = fmul fast float %2847, 0xBFF7154760000000
  %2854 = fmul fast float %2853, %2852
  %2855 = call float @dx.op.unary.f32(i32 21, float %2854)  ; Exp(value)
  %2856 = fmul fast float %2855, 2.500000e-01
  %2857 = fsub fast float 1.000000e+00, %2856
  %2858 = fmul fast float %2847, 0xBFDEC709E0000000
  %2859 = fmul fast float %2858, %2852
  %2860 = call float @dx.op.unary.f32(i32 21, float %2859)  ; Exp(value)
  %2861 = fmul fast float %2860, 7.500000e-01
  %2862 = fsub fast float %2857, %2861
  %2863 = extractvalue %dx.types.CBufRet.f32 %2850, 3
  %2864 = call float @dx.op.binary.f32(i32 36, float %2863, float %2862)  ; FMin(a,b)
  %2865 = fsub fast float %2864, %2849
  %2866 = call float @dx.op.unary.f32(i32 7, float %2865)  ; Saturate(value)
  %2867 = call float @dx.op.unary.f32(i32 7, float %2849)  ; Saturate(value)
  %2868 = extractvalue %dx.types.CBufRet.f32 %2850, 0
  %2869 = fmul fast float %2868, %2866
  %2870 = fptoui float %2869 to i32
  %2871 = uitofp i32 %2870 to float
  %2872 = fdiv fast float 1.000000e+00, %2871
  %2873 = icmp eq i32 %2870, 0
  br i1 %2873, label %2984, label %2874

; <label>:2874                                    ; preds = %2775
  %2875 = fmul fast float %2803, 0x3FA45F3060000000
  %2876 = fmul fast float %2847, 0x3FA45F3060000000
  br label %2877

; <label>:2877                                    ; preds = %2877, %2874
  %2878 = phi float [ %2975, %2877 ], [ %2843, %2874 ]
  %2879 = phi float [ %2976, %2877 ], [ %2844, %2874 ]
  %2880 = phi float [ %2977, %2877 ], [ %2845, %2874 ]
  %2881 = phi float [ %2978, %2877 ], [ 0x3F1A36E2E0000000, %2874 ]
  %2882 = phi float [ %2979, %2877 ], [ 0x3F1A36E2E0000000, %2874 ]
  %2883 = phi float [ %2980, %2877 ], [ 0x3F1A36E2E0000000, %2874 ]
  %2884 = phi i32 [ %2981, %2877 ], [ 0, %2874 ]
  %2885 = sitofp i32 %2884 to float
  %2886 = fadd fast float %2885, %1654
  %2887 = fmul fast float %2872, %2866
  %2888 = fmul fast float %2887, %2886
  %2889 = fsub fast float 1.000000e+00, %2867
  %2890 = fsub fast float %2889, %2888
  %2891 = fmul fast float %2890, 4.000000e+00
  %2892 = fmul fast float %2890, 2.000000e+00
  %2893 = fmul fast float %2890, %2890
  %2894 = fmul fast float %2893, 4.000000e+00
  %2895 = fadd fast float %2894, 1.000000e+00
  %2896 = call float @dx.op.unary.f32(i32 24, float %2895)  ; Sqrt(value)
  %2897 = fadd fast float %2892, %2896
  %2898 = fmul fast float %2891, %2897
  %2899 = fadd fast float %2898, 1.000000e+00
  %2900 = call float @dx.op.unary.f32(i32 23, float %2899)  ; Log(value)
  %2901 = fmul fast float %2900, 0xBFD5555560000000
  %2902 = call float @dx.op.unary.f32(i32 21, float %2901)  ; Exp(value)
  %2903 = fmul fast float %2902, %2902
  %2904 = fmul fast float %2903, %2899
  %2905 = fadd fast float %2902, 1.000000e+00
  %2906 = fadd fast float %2905, %2904
  %2907 = fdiv fast float 2.500000e-01, %2890
  %2908 = fmul fast float %2906, %2907
  %2909 = call float @dx.op.unary.f32(i32 23, float %2908)  ; Log(value)
  %2910 = fmul fast float %2909, 0x4000A2B240000000
  %2911 = fdiv fast float %2910, %2847
  %2912 = fmul fast float %2853, %2911
  %2913 = call float @dx.op.unary.f32(i32 21, float %2912)  ; Exp(value)
  %2914 = fmul fast float %2858, %2911
  %2915 = call float @dx.op.unary.f32(i32 21, float %2914)  ; Exp(value)
  %2916 = fadd fast float %2915, %2913
  %2917 = fmul fast float %2876, %2916
  %2918 = fdiv fast float %2866, %2917
  %2919 = fmul fast float %2885, 0x3FF9E377A0000000
  %2920 = call float @dx.op.unary.f32(i32 22, float %2919)  ; Frc(value)
  %2921 = fadd fast float %2920, %1654
  %2922 = fmul fast float %2921, 0x401921FB60000000
  %2923 = call float @dx.op.unary.f32(i32 13, float %2922)  ; Sin(value)
  %2924 = call float @dx.op.unary.f32(i32 12, float %2922)  ; Cos(value)
  %2925 = fmul fast float %2911, %2809
  %2926 = fmul fast float %2925, %2924
  %2927 = fmul fast float %2911, %2810
  %2928 = fmul fast float %2927, %2923
  %2929 = fadd fast float %2926, %1642
  %2930 = fadd fast float %2928, %1643
  %2931 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %22, float %2929, float %2930, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2932 = extractvalue %dx.types.ResRet.f32 %2931, 0
  %2933 = extractvalue %dx.types.ResRet.f32 %2931, 1
  %2934 = extractvalue %dx.types.ResRet.f32 %2931, 2
  %2935 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %22, float %2929, float %2930, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2936 = extractvalue %dx.types.ResRet.f32 %2935, 0
  %2937 = fcmp fast ogt float %2936, -1.000000e+00
  %2938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2939 = extractvalue %dx.types.CBufRet.f32 %2938, 1
  %2940 = select i1 %2937, float %2939, float 1.000000e+00
  %2941 = fadd fast float %2936, 1.000000e+00
  %2942 = fmul fast float %2940, %2941
  %2943 = call float @dx.op.unary.f32(i32 6, float %2942)  ; FAbs(value)
  %2944 = fsub fast float %1668, %2943
  %2945 = fmul fast float %2911, %2911
  %2946 = fmul fast float %2944, %2944
  %2947 = fadd fast float %2946, %2945
  %2948 = call float @dx.op.unary.f32(i32 24, float %2947)  ; Sqrt(value)
  %2949 = fmul fast float %2813, %2948
  %2950 = call float @dx.op.unary.f32(i32 21, float %2949)  ; Exp(value)
  %2951 = fmul fast float %2818, %2948
  %2952 = call float @dx.op.unary.f32(i32 21, float %2951)  ; Exp(value)
  %2953 = fadd fast float %2952, %2950
  %2954 = fmul fast float %2823, %2948
  %2955 = call float @dx.op.unary.f32(i32 21, float %2954)  ; Exp(value)
  %2956 = fmul fast float %2828, %2948
  %2957 = call float @dx.op.unary.f32(i32 21, float %2956)  ; Exp(value)
  %2958 = fadd fast float %2957, %2955
  %2959 = fmul fast float %2833, %2948
  %2960 = call float @dx.op.unary.f32(i32 21, float %2959)  ; Exp(value)
  %2961 = fmul fast float %2838, %2948
  %2962 = call float @dx.op.unary.f32(i32 21, float %2961)  ; Exp(value)
  %2963 = fadd fast float %2962, %2960
  %2964 = fmul fast float %2801, 0x3FA45F3060000000
  %2965 = fmul fast float %2964, %2918
  %2966 = fmul fast float %2965, %2953
  %2967 = fmul fast float %2802, 0x3FA45F3060000000
  %2968 = fmul fast float %2967, %2918
  %2969 = fmul fast float %2968, %2958
  %2970 = fmul fast float %2875, %2918
  %2971 = fmul fast float %2970, %2963
  %2972 = fmul fast float %2966, %2932
  %2973 = fmul fast float %2969, %2933
  %2974 = fmul fast float %2971, %2934
  %2975 = fadd fast float %2972, %2878
  %2976 = fadd fast float %2973, %2879
  %2977 = fadd fast float %2974, %2880
  %2978 = fadd fast float %2966, %2881
  %2979 = fadd fast float %2969, %2882
  %2980 = fadd fast float %2971, %2883
  %2981 = add nuw nsw i32 %2884, 1
  %2982 = icmp eq i32 %2981, %2870
  br i1 %2982, label %2983, label %2877, !llvm.loop !101

; <label>:2983                                    ; preds = %2877
  br label %2984

; <label>:2984                                    ; preds = %2983, %2775
  %2985 = phi float [ %2843, %2775 ], [ %2975, %2983 ]
  %2986 = phi float [ %2844, %2775 ], [ %2976, %2983 ]
  %2987 = phi float [ %2845, %2775 ], [ %2977, %2983 ]
  %2988 = phi float [ 0x3F1A36E2E0000000, %2775 ], [ %2978, %2983 ]
  %2989 = phi float [ 0x3F1A36E2E0000000, %2775 ], [ %2979, %2983 ]
  %2990 = phi float [ 0x3F1A36E2E0000000, %2775 ], [ %2980, %2983 ]
  %2991 = fmul fast float %2822, %2763
  %2992 = fmul fast float %2832, %2764
  %2993 = fmul fast float %2842, %2765
  %2994 = fsub fast float 1.000000e+00, %2822
  %2995 = fsub fast float 1.000000e+00, %2832
  %2996 = fsub fast float 1.000000e+00, %2842
  %2997 = fdiv fast float %2985, %2988
  %2998 = fdiv fast float %2986, %2989
  %2999 = fdiv fast float %2987, %2990
  %3000 = fmul fast float %2997, %2994
  %3001 = fmul fast float %2998, %2995
  %3002 = fmul fast float %2999, %2996
  %3003 = fadd fast float %3000, %2991
  %3004 = fadd fast float %3001, %2992
  %3005 = fadd fast float %3002, %2993
  br label %3006

; <label>:3006                                    ; preds = %2984, %2742
  %3007 = phi float [ %3003, %2984 ], [ 0.000000e+00, %2742 ]
  %3008 = phi float [ %3004, %2984 ], [ 0.000000e+00, %2742 ]
  %3009 = phi float [ %3005, %2984 ], [ 0.000000e+00, %2742 ]
  %3010 = phi float [ %2767, %2984 ], [ 0.000000e+00, %2742 ]
  %3011 = phi float [ %2768, %2984 ], [ 0.000000e+00, %2742 ]
  %3012 = phi float [ %2769, %2984 ], [ 0.000000e+00, %2742 ]
  %3013 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3014 = extractvalue %dx.types.CBufRet.i32 %3013, 3
  %3015 = and i32 %3014, 3
  %3016 = icmp ne i32 %3015, 0
  %3017 = and i32 %3014, 4
  %3018 = icmp ne i32 %3017, 0
  %3019 = and i1 %3016, %3018
  br i1 %3019, label %3020, label %3027, !dx.controlflow.hints !103

; <label>:3020                                    ; preds = %3006
  %3021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %22, float %1642, float %1643, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3022 = extractvalue %dx.types.ResRet.f32 %3021, 0
  %3023 = fsub fast float 1.000000e+00, %3022
  %3024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %3025 = extractvalue %dx.types.CBufRet.f32 %3024, 0
  %3026 = fcmp fast olt float %3023, %3025
  br label %3030

; <label>:3027                                    ; preds = %3006
  %3028 = icmp eq i32 %3017, 0
  %3029 = and i1 %3016, %3028
  br label %3030

; <label>:3030                                    ; preds = %3027, %3020
  %3031 = phi i1 [ %3026, %3020 ], [ %3029, %3027 ]
  %3032 = select i1 %3031, float 0.000000e+00, float %3011
  %3033 = select i1 %3031, float 0.000000e+00, float %3012
  %3034 = fmul fast float %3010, %3007
  %3035 = fmul fast float %3032, %3008
  %3036 = fmul fast float %3033, %3009
  %3037 = fadd fast float %3034, %2759
  %3038 = fadd fast float %3035, %2760
  %3039 = fadd fast float %3036, %2761
  %3040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3041 = extractvalue %dx.types.CBufRet.f32 %3040, 0
  br i1 %3031, label %3042, label %3061, !dx.controlflow.hints !104

; <label>:3042                                    ; preds = %3030
  %3043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %3044 = extractvalue %dx.types.CBufRet.f32 %3043, 3
  %3045 = call float @dx.op.dot3.f32(i32 55, float %2749, float %2750, float %2751, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3046 = fmul fast float %3045, %3037
  %3047 = call float @dx.op.dot3.f32(i32 55, float %2755, float %2756, float %2757, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3048 = fmul fast float %3041, %3047
  %3049 = fadd fast float %3048, %3046
  br i1 %3019, label %3050, label %3056, !dx.controlflow.hints !105

; <label>:3050                                    ; preds = %3042
  %3051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %3052 = extractvalue %dx.types.CBufRet.f32 %3051, 1
  %3053 = fadd fast float %2749, -1.000000e+00
  %3054 = fmul fast float %3052, %3053
  %3055 = fadd fast float %3054, 1.000000e+00
  br label %3056

; <label>:3056                                    ; preds = %3050, %3042
  %3057 = phi float [ %3055, %3050 ], [ %2749, %3042 ]
  %3058 = fsub fast float %3038, %3044
  %3059 = fmul fast float %3057, %3058
  %3060 = fadd fast float %3059, %3044
  br label %3071

; <label>:3061                                    ; preds = %3030
  %3062 = fmul fast float %3037, %2749
  %3063 = fmul fast float %3038, %2750
  %3064 = fmul fast float %3039, %2751
  %3065 = fmul fast float %3041, %2755
  %3066 = fmul fast float %3041, %2756
  %3067 = fmul fast float %3041, %2757
  %3068 = fadd fast float %3065, %3062
  %3069 = fadd fast float %3066, %3063
  %3070 = fadd fast float %3067, %3064
  br label %3071

; <label>:3071                                    ; preds = %3061, %3056
  %3072 = phi float [ %3049, %3056 ], [ %3068, %3061 ]
  %3073 = phi float [ %3060, %3056 ], [ %3069, %3061 ]
  %3074 = phi float [ %3039, %3056 ], [ %3070, %3061 ]
  %3075 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %3076 = extractvalue %dx.types.CBufRet.i32 %3075, 1
  %3077 = shl i32 %3076, 1
  %3078 = lshr i32 %1624, 5
  %3079 = extractvalue %dx.types.CBufRet.i32 %3075, 0
  %3080 = mul i32 %3079, %3078
  %3081 = add i32 %3077, %1534
  %3082 = add i32 %3081, %3080
  %3083 = shl i32 %3082, 2
  %3084 = and i32 %1624, 24
  %3085 = or i32 %3084, %1539
  %3086 = shl i32 1, %3085
  %3087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3083, i32 undef)  ; BufferLoad(srv,index,wot)
  %3088 = extractvalue %dx.types.ResRet.i32 %3087, 0
  %3089 = and i32 %3088, %3086
  %3090 = icmp eq i32 %3089, 0
  br i1 %3090, label %3106, label %3091, !dx.controlflow.hints !106

; <label>:3091                                    ; preds = %3071
  %3092 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1623, i32 %1624, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3093 = extractvalue %dx.types.ResRet.f32 %3092, 0
  %3094 = fcmp fast ogt float %3093, 0.000000e+00
  br i1 %3094, label %3095, label %3106, !dx.controlflow.hints !107

; <label>:3095                                    ; preds = %3091
  %3096 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %1623, i32 %1624, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3097 = extractvalue %dx.types.ResRet.f32 %3096, 0
  %3098 = extractvalue %dx.types.ResRet.f32 %3096, 1
  %3099 = extractvalue %dx.types.ResRet.f32 %3096, 2
  %3100 = extractvalue %dx.types.ResRet.f32 %3096, 3
  %3101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %3102 = extractvalue %dx.types.CBufRet.f32 %3101, 2
  %3103 = fmul fast float %3102, %3097
  %3104 = fmul fast float %3102, %3098
  %3105 = fmul fast float %3102, %3099
  br label %3106

; <label>:3106                                    ; preds = %3095, %3091, %3071
  %3107 = phi float [ %3103, %3095 ], [ 0.000000e+00, %3091 ], [ 0.000000e+00, %3071 ]
  %3108 = phi float [ %3104, %3095 ], [ 0.000000e+00, %3091 ], [ 0.000000e+00, %3071 ]
  %3109 = phi float [ %3105, %3095 ], [ 0.000000e+00, %3091 ], [ 0.000000e+00, %3071 ]
  %3110 = phi float [ %3100, %3095 ], [ 0.000000e+00, %3091 ], [ 0.000000e+00, %3071 ]
  %3111 = fsub fast float 1.000000e+00, %3110
  %3112 = fmul fast float %3111, %3072
  %3113 = fmul fast float %3111, %3073
  %3114 = fmul fast float %3111, %3074
  %3115 = fadd fast float %3112, %3107
  %3116 = fadd fast float %3113, %3108
  %3117 = fadd fast float %3114, %3109
  %3118 = fadd fast float %1654, 0x3FE3C6EF40000000
  %3119 = call float @dx.op.unary.f32(i32 22, float %3118)  ; Frc(value)
  %3120 = call float @dx.op.unary.f32(i32 23, float %3115)  ; Log(value)
  %3121 = fadd fast float %3120, -7.000000e+00
  %3122 = call float @dx.op.unary.f32(i32 21, float %3121)  ; Exp(value)
  %3123 = fmul fast float %3119, 2.000000e+00
  %3124 = fadd fast float %3123, -1.000000e+00
  %3125 = fmul fast float %3122, %3124
  %3126 = fcmp fast ogt float %3115, 0.000000e+00
  %3127 = select i1 %3126, float %3125, float 0.000000e+00
  %3128 = fadd fast float %3127, %3115
  %3129 = fadd fast float %1654, 0x3FF3C6EF40000000
  %3130 = call float @dx.op.unary.f32(i32 22, float %3129)  ; Frc(value)
  %3131 = call float @dx.op.unary.f32(i32 23, float %3116)  ; Log(value)
  %3132 = fadd fast float %3131, -7.000000e+00
  %3133 = call float @dx.op.unary.f32(i32 21, float %3132)  ; Exp(value)
  %3134 = fmul fast float %3130, 2.000000e+00
  %3135 = fadd fast float %3134, -1.000000e+00
  %3136 = fmul fast float %3133, %3135
  %3137 = fcmp fast ogt float %3116, 0.000000e+00
  %3138 = select i1 %3137, float %3136, float 0.000000e+00
  %3139 = fadd fast float %3138, %3116
  %3140 = fadd fast float %1654, 0x3FFDAA66E0000000
  %3141 = call float @dx.op.unary.f32(i32 22, float %3140)  ; Frc(value)
  %3142 = call float @dx.op.unary.f32(i32 23, float %3117)  ; Log(value)
  %3143 = fadd fast float %3142, -6.000000e+00
  %3144 = call float @dx.op.unary.f32(i32 21, float %3143)  ; Exp(value)
  %3145 = fmul fast float %3141, 2.000000e+00
  %3146 = fadd fast float %3145, -1.000000e+00
  %3147 = fmul fast float %3144, %3146
  %3148 = fcmp fast ogt float %3117, 0.000000e+00
  %3149 = select i1 %3148, float %3147, float 0.000000e+00
  %3150 = fadd fast float %3149, %3117
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1623, i32 %1624, i32 undef, float %3128, float %3139, float %3150, float %3128, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %3151 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3152 = extractvalue %dx.types.CBufRet.i32 %3151, 0
  %3153 = and i32 %3152, 1
  %3154 = icmp ne i32 %3153, 0
  %3155 = or i32 %1624, %1616
  %3156 = and i32 %3155, 1
  %3157 = icmp eq i32 %3156, 0
  %3158 = and i1 %3157, %3154
  br i1 %3158, label %3159, label %1633, !dx.controlflow.hints !108

; <label>:3159                                    ; preds = %3106
  %3160 = and i32 %47, 2147483647
  %3161 = lshr i32 %1624, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %3160, i32 %3161, i32 undef, float %3037, float %3038, float %3039, float %3037, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1633

; <label>:3162                                    ; preds = %1633
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
!36 = !{void ()* @cs_post_opaque_processes_subsampletile_dmfpscale, !"cs_post_opaque_processes_subsampletile_dmfpscale", null, !4, !37}
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
!110 = !{!65}
!111 = !{!112, !114, !116, !117, !119, !120, !65}
!112 = distinct !{!112, !113, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!113 = distinct !{!113, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!114 = distinct !{!114, !115, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!115 = distinct !{!115, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!116 = distinct !{!116, !115, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!117 = distinct !{!117, !118, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %extinction"}
!118 = distinct !{!118, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z"}
!119 = distinct !{!119, !118, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %scattering"}
!120 = distinct !{!120, !118, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %thermalFogExtinction"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"\01?sort@@YAXAIAM00@Z: %c"}
!123 = distinct !{!123, !"\01?sort@@YAXAIAM00@Z"}
!124 = !{!125, !126, !112, !114, !116, !117, !119, !120, !65}
!125 = distinct !{!125, !123, !"\01?sort@@YAXAIAM00@Z: %a"}
!126 = distinct !{!126, !123, !"\01?sort@@YAXAIAM00@Z: %b"}
!127 = !{!126}
!128 = !{!125, !122, !112, !114, !116, !117, !119, !120, !65}
!129 = !{!125}
!130 = !{!126, !122, !112, !114, !116, !117, !119, !120, !65}
!131 = !{!132}
!132 = distinct !{!132, !133, !"\01?sort@@YAXAIAM00@Z: %c"}
!133 = distinct !{!133, !"\01?sort@@YAXAIAM00@Z"}
!134 = !{!135, !136, !112, !114, !116, !117, !119, !120, !65}
!135 = distinct !{!135, !133, !"\01?sort@@YAXAIAM00@Z: %a"}
!136 = distinct !{!136, !133, !"\01?sort@@YAXAIAM00@Z: %b"}
!137 = !{!136}
!138 = !{!135, !132, !112, !114, !116, !117, !119, !120, !65}
!139 = !{!135}
!140 = !{!136, !132, !112, !114, !116, !117, !119, !120, !65}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 2}

