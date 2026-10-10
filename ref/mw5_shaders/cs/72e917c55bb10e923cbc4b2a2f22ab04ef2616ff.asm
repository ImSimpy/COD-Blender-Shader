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
; shader hash: 972d4319e6395b261d7eb4ba1be28801
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb0     1
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
;                                   texture     f32          2d     T12            t18     1
;                                   texture     f32          2d     T13            t21     1
;                                   texture     f32          2d     T14            t22     1
;                                   texture     f32          2d     T15            t12     1
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
%struct.SamplerState = type { i32 }

define void @cs_post_opaque_processes_luma_subsampletile_dmfpscale() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %26 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %27 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %28 = alloca [3 x float], align 4
  %29 = alloca [3 x float], align 4
  %30 = alloca [3 x float], align 4
  %31 = alloca [3 x float], align 4
  %32 = alloca [4 x float], align 4
  %33 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.i32 %33, 0
  %35 = extractvalue %dx.types.CBufRet.i32 %33, 1
  %36 = mul i32 %35, %34
  %37 = add i32 %36, %27
  %38 = shl i32 %37, 2
  %39 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %38, i32 undef)  ; BufferLoad(srv,index,wot)
  %40 = extractvalue %dx.types.ResRet.i32 %39, 0
  %41 = lshr i32 %40, 16
  %42 = shl i32 %40, 3
  %43 = and i32 %42, 524280
  %44 = shl nuw nsw i32 %41, 3
  %45 = add i32 %43, %25
  %46 = add i32 %44, %26
  %47 = shl i32 %45, 1
  %48 = shl i32 %46, 1
  %49 = uitofp i32 %47 to float
  %50 = uitofp i32 %48 to float
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 2
  %53 = extractvalue %dx.types.CBufRet.f32 %51, 3
  %54 = fmul fast float %49, %52
  %55 = fmul fast float %50, %53
  %56 = fadd fast float %54, %52
  %57 = fadd fast float %55, %53
  %58 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %22, float %56, float %57, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %59 = extractvalue %dx.types.ResRet.f32 %58, 0
  %60 = extractvalue %dx.types.ResRet.f32 %58, 1
  %61 = extractvalue %dx.types.ResRet.f32 %58, 2
  %62 = extractvalue %dx.types.ResRet.f32 %58, 3
  %63 = fcmp fast ogt float %62, -1.000000e+00
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
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
  %89 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %90 = extractvalue %dx.types.ResRet.i32 %89, 0
  %91 = and i32 %90, 114688
  %92 = icmp ne i32 %91, 0
  %93 = select i1 %92, i32 %47, i32 0
  %94 = select i1 %92, i32 %48, i32 0
  %95 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %93, i32 %94, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %96 = extractvalue %dx.types.ResRet.f32 %95, 0
  %97 = fmul fast float %96, 2.550000e+02
  %98 = fptoui float %97 to i32
  %99 = icmp eq i32 %98, 3
  %100 = and i1 %92, %99
  %101 = extractvalue %dx.types.CBufRet.f32 %64, 3
  %102 = fcmp fast oge float %69, %101
  %103 = fadd fast float %49, 5.000000e-01
  %104 = fadd fast float %50, 5.000000e-01
  br i1 %100, label %966, label %105, !dx.controlflow.hints !37

; <label>:105                                     ; preds = %0
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 170)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = select i1 %102, float %107, float %69
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %111 = extractvalue %dx.types.CBufRet.f32 %109, 3
  %112 = fmul fast float %103, 2.000000e+00
  %113 = fmul fast float %112, %110
  %114 = fmul fast float %104, 2.000000e+00
  %115 = fmul fast float %114, %111
  %116 = fsub fast float 1.000000e+00, %113
  %117 = fsub fast float 1.000000e+00, %115
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 0
  %120 = extractvalue %dx.types.CBufRet.f32 %118, 1
  %121 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %122 = fmul fast float %116, %119
  %123 = fmul fast float %116, %120
  %124 = fmul fast float %116, %121
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 0
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 1
  %128 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %129 = fmul fast float %117, %126
  %130 = fmul fast float %117, %127
  %131 = fmul fast float %117, %128
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 163)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %151 = extractvalue %dx.types.CBufRet.f32 %147, 3
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 0
  %154 = extractvalue %dx.types.CBufRet.f32 %152, 1
  %155 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %156 = extractvalue %dx.types.CBufRet.f32 %152, 3
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %160 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %161 = extractvalue %dx.types.CBufRet.f32 %157, 3
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %165 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %166 = extractvalue %dx.types.CBufRet.f32 %162, 3
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 3
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %102, label %183, label %195, !dx.controlflow.hints !38

; <label>:183                                     ; preds = %105
  %184 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %185 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 187)  ; CBufferLoadLegacy(handle,regIndex)
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
  %200 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.i32 %200, 1
  %202 = and i32 %201, 1
  %203 = icmp ne i32 %202, 0
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 2
  %206 = fcmp fast ogt float %205, 0.000000e+00
  %207 = and i1 %203, %206
  br i1 %207, label %208, label %617, !dx.controlflow.hints !39

; <label>:208                                     ; preds = %195
  %209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.f32 %209, 3
  %211 = select i1 %102, float %210, float %178
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 3
  %214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.f32 %214, 2
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 2
  %218 = fsub fast float %215, %217
  %219 = and i32 %201, 2
  %220 = extractvalue %dx.types.CBufRet.i32 %200, 0
  %221 = call i32 @dx.op.binary.i32(i32 40, i32 %220, i32 3)  ; UMin(a,b)
  %222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.f32 %222, 0
  %224 = extractvalue %dx.types.CBufRet.f32 %222, 1
  %225 = extractvalue %dx.types.CBufRet.f32 %216, 0
  %226 = extractvalue %dx.types.CBufRet.f32 %216, 1
  %227 = fsub fast float %223, %225
  %228 = fsub fast float %224, %226
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %244, label %245, label %260, !dx.controlflow.hints !40

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
  br i1 %264, label %265, label %267, !dx.controlflow.hints !41

; <label>:265                                     ; preds = %260
  %266 = fcmp fast oeq float %262, %261
  br i1 %266, label %570, label %268, !dx.controlflow.hints !42

; <label>:267                                     ; preds = %260
  br i1 %231, label %570, label %268, !dx.controlflow.hints !43

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
  br i1 %281, label %283, label %340, !dx.controlflow.hints !44

; <label>:283                                     ; preds = %268
  %284 = icmp eq i32 %219, 0
  br i1 %282, label %285, label %329, !dx.controlflow.hints !45

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
  %298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %299 = extractvalue %dx.types.CBufRet.f32 %298, 0
  %300 = extractvalue %dx.types.CBufRet.f32 %298, 1
  %301 = extractvalue %dx.types.CBufRet.f32 %298, 2
  %302 = extractvalue %dx.types.CBufRet.f32 %298, 3
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %102, label %570, label %317, !dx.controlflow.hints !46

; <label>:317                                     ; preds = %285
  %318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %284, label %330, label %351, !dx.controlflow.hints !47

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
  br i1 %282, label %341, label %351, !dx.controlflow.hints !48

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
  store float -1.000000e+00, float* %356, align 4, !tbaa !49, !noalias !53
  %357 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 1
  store float -1.000000e+00, float* %357, align 4, !tbaa !49, !noalias !53
  %358 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 2
  store float -1.000000e+00, float* %358, align 4, !tbaa !49, !noalias !53
  %359 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 0
  store float -1.000000e+00, float* %359, align 4, !tbaa !49, !noalias !53
  %360 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 1
  store float -1.000000e+00, float* %360, align 4, !tbaa !49, !noalias !53
  %361 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 2
  store float -1.000000e+00, float* %361, align 4, !tbaa !49, !noalias !53
  %362 = icmp sgt i32 %221, 0
  br i1 %362, label %363, label %424

; <label>:363                                     ; preds = %351
  br label %364

; <label>:364                                     ; preds = %413, %363
  %365 = phi i32 [ %414, %413 ], [ 0, %363 ]
  %366 = phi i32 [ %415, %413 ], [ 0, %363 ]
  %367 = add nuw i32 %366, 171
  %368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %367)  ; CBufferLoadLegacy(handle,regIndex)
  %369 = extractvalue %dx.types.CBufRet.f32 %368, 0
  %370 = extractvalue %dx.types.CBufRet.f32 %368, 1
  %371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %387, label %388, label %403, !dx.controlflow.hints !40

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
  br i1 %406, label %407, label %413, !dx.controlflow.hints !65

; <label>:407                                     ; preds = %403
  %408 = call float @dx.op.binary.f32(i32 35, float %352, float %405)  ; FMax(a,b)
  %409 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %366
  store float %408, float* %409, align 4, !tbaa !49, !noalias !53
  %410 = call float @dx.op.binary.f32(i32 35, float %352, float %404)  ; FMax(a,b)
  %411 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %366
  store float %410, float* %411, align 4, !tbaa !49, !noalias !53
  %412 = add nsw i32 %365, 1
  br label %413

; <label>:413                                     ; preds = %407, %403
  %414 = phi i32 [ %412, %407 ], [ %365, %403 ]
  %415 = add nuw nsw i32 %366, 1
  %416 = icmp eq i32 %415, %221
  br i1 %416, label %417, label %364

; <label>:417                                     ; preds = %413
  %418 = load float, float* %358, align 4, !tbaa !49, !alias.scope !66, !noalias !69
  %419 = load float, float* %357, align 4, !tbaa !49, !alias.scope !72, !noalias !73
  %420 = load float, float* %356, align 4, !tbaa !49, !alias.scope !74, !noalias !75
  %421 = load float, float* %361, align 4, !tbaa !49, !alias.scope !76, !noalias !79
  %422 = load float, float* %360, align 4, !tbaa !49, !alias.scope !82, !noalias !83
  %423 = load float, float* %359, align 4, !tbaa !49, !alias.scope !84, !noalias !85
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
  store float %433, float* %356, align 4, !tbaa !49, !alias.scope !74, !noalias !75
  store float %437, float* %357, align 4, !tbaa !49, !alias.scope !72, !noalias !73
  store float %439, float* %358, align 4, !tbaa !49, !alias.scope !66, !noalias !69
  %440 = call float @dx.op.binary.f32(i32 36, float %426, float %427)  ; FMin(a,b)
  %441 = call float @dx.op.binary.f32(i32 36, float %425, float %440)  ; FMin(a,b)
  %442 = call float @dx.op.binary.f32(i32 35, float %425, float %426)  ; FMax(a,b)
  %443 = call float @dx.op.binary.f32(i32 36, float %442, float %427)  ; FMin(a,b)
  %444 = call float @dx.op.binary.f32(i32 36, float %425, float %426)  ; FMin(a,b)
  %445 = call float @dx.op.binary.f32(i32 35, float %444, float %443)  ; FMax(a,b)
  %446 = call float @dx.op.binary.f32(i32 35, float %426, float %427)  ; FMax(a,b)
  %447 = call float @dx.op.binary.f32(i32 35, float %425, float %446)  ; FMax(a,b)
  store float %441, float* %359, align 4, !tbaa !49, !alias.scope !84, !noalias !85
  store float %445, float* %360, align 4, !tbaa !49, !alias.scope !82, !noalias !83
  store float %447, float* %361, align 4, !tbaa !49, !alias.scope !76, !noalias !79
  %448 = sub nsw i32 3, %431
  %449 = icmp sgt i32 %448, 2
  br i1 %449, label %450, label %488, !dx.controlflow.hints !86

; <label>:450                                     ; preds = %424
  %451 = icmp eq i32 %219, 0
  %452 = fsub fast float %269, %353
  %453 = select i1 %451, float %452, float %353
  %454 = extractvalue %dx.types.CBufRet.f32 %209, 0
  %455 = extractvalue %dx.types.CBufRet.f32 %209, 1
  %456 = extractvalue %dx.types.CBufRet.f32 %209, 2
  %457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %458 = extractvalue %dx.types.CBufRet.f32 %457, 0
  %459 = extractvalue %dx.types.CBufRet.f32 %457, 1
  %460 = extractvalue %dx.types.CBufRet.f32 %457, 2
  %461 = extractvalue %dx.types.CBufRet.f32 %457, 3
  %462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %102, label %570, label %476, !dx.controlflow.hints !46

; <label>:476                                     ; preds = %450
  %477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
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
  %490 = load float, float* %489, align 4, !tbaa !49, !noalias !53
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
  %501 = load float, float* %500, align 4, !tbaa !49, !noalias !53
  %502 = icmp slt i32 %499, 2
  %503 = add nsw i32 %499, 1
  %504 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %503
  %505 = load float, float* %504, align 4, !tbaa !49, !noalias !53
  %506 = select i1 %502, float %505, float %269
  %507 = call float @dx.op.binary.f32(i32 36, float %506, float %501)  ; FMin(a,b)
  %508 = call float @dx.op.binary.f32(i32 36, float %355, float %507)  ; FMin(a,b)
  %509 = icmp eq i32 %219, 0
  %510 = fadd fast float %508, %498
  %511 = fmul fast float %510, %181
  %512 = fadd fast float %511, %213
  br i1 %509, label %518, label %513, !dx.controlflow.hints !87

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
  %539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %540 = extractvalue %dx.types.CBufRet.f32 %539, 0
  %541 = extractvalue %dx.types.CBufRet.f32 %539, 1
  %542 = extractvalue %dx.types.CBufRet.f32 %539, 2
  %543 = extractvalue %dx.types.CBufRet.f32 %539, 3
  %544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %102, label %570, label %558, !dx.controlflow.hints !46

; <label>:558                                     ; preds = %531
  %559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
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
  %577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %578 = extractvalue %dx.types.CBufRet.f32 %577, 2
  %579 = fsub fast float %215, %578
  %580 = fcmp fast olt float %576, -2.000000e+01
  %581 = call float @dx.op.unary.f32(i32 21, float %576)  ; Exp(value)
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 2
  %584 = extractvalue %dx.types.CBufRet.f32 %582, 3
  %585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
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
  %623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %624 = extractvalue %dx.types.CBufRet.f32 %623, 1
  %625 = fsub fast float 1.000000e+00, %619
  %626 = fmul fast float %625, %196
  %627 = fmul fast float %626, %624
  %628 = fsub fast float %196, %627
  br i1 %174, label %629, label %661, !dx.controlflow.hints !88

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
  %668 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %21, float %667, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %669 = extractvalue %dx.types.ResRet.f32 %668, 0
  %670 = fsub fast float %663, %669
  %671 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %670)  ; FMax(a,b)
  %672 = fmul fast float %198, %156
  %673 = call float @dx.op.unary.f32(i32 6, float %672)  ; FAbs(value)
  %674 = fcmp fast ogt float %673, 0x3EB0C6F7A0000000
  br i1 %674, label %675, label %681, !dx.controlflow.hints !89

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
  br i1 %102, label %694, label %702, !dx.controlflow.hints !90

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
  br i1 %207, label %739, label %937, !dx.controlflow.hints !91

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
  br i1 %761, label %762, label %775, !dx.controlflow.hints !92

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
  br i1 %780, label %781, label %788, !dx.controlflow.hints !93

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
  br i1 %791, label %792, label %799, !dx.controlflow.hints !93

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
  br i1 %802, label %803, label %810, !dx.controlflow.hints !93

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
  br i1 %829, label %830, label %837, !dx.controlflow.hints !94

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
  br i1 %840, label %841, label %848, !dx.controlflow.hints !94

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
  br i1 %851, label %852, label %859, !dx.controlflow.hints !94

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
  br i1 %862, label %863, label %883, !dx.controlflow.hints !95

; <label>:863                                     ; preds = %859
  %864 = fsub fast float 1.000000e+00, %760
  %865 = fmul fast float %776, %864
  %866 = fmul fast float %777, %864
  %867 = fmul fast float %778, %864
  %868 = fmul fast float %779, %864
  %869 = fcmp fast une float %868, 0.000000e+00
  br i1 %869, label %870, label %921, !dx.controlflow.hints !96

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
  br i1 %891, label %892, label %899, !dx.controlflow.hints !94

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
  br i1 %902, label %903, label %910, !dx.controlflow.hints !94

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
  br i1 %913, label %914, label %921, !dx.controlflow.hints !94

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
  %946 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %21, float %944, float %945, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %947 = extractvalue %dx.types.ResRet.f32 %946, 0
  %948 = extractvalue %dx.types.ResRet.f32 %946, 1
  %949 = extractvalue %dx.types.ResRet.f32 %946, 2
  %950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %951 = extractvalue %dx.types.CBufRet.f32 %950, 1
  %952 = fmul fast float %951, %947
  %953 = fmul fast float %951, %948
  %954 = fmul fast float %951, %949
  %955 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %21, float %944, float %945, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %975 = extractvalue %dx.types.CBufRet.f32 %974, 2
  %976 = extractvalue %dx.types.CBufRet.f32 %974, 3
  %977 = fmul fast float %975, %103
  %978 = fmul fast float %976, %104
  %979 = call float @dx.op.unary.f32(i32 7, float %977)  ; Saturate(value)
  %980 = call float @dx.op.unary.f32(i32 7, float %978)  ; Saturate(value)
  %981 = select i1 %100, i32 2, i32 0
  %982 = or i32 %981, 1
  %983 = uitofp i32 %982 to float
  %984 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %21, float %979, float %980, float %983, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %985 = extractvalue %dx.types.ResRet.f32 %984, 0
  %986 = extractvalue %dx.types.ResRet.f32 %984, 1
  %987 = extractvalue %dx.types.ResRet.f32 %984, 2
  %988 = extractvalue %dx.types.ResRet.f32 %984, 3
  %989 = add nuw nsw i32 %981, 2
  %990 = uitofp i32 %989 to float
  %991 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %21, float %979, float %980, float %990, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
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
  br i1 %1008, label %1009, label %1177, !dx.controlflow.hints !97

; <label>:1009                                    ; preds = %966
  %1010 = fadd fast float %973, -4.000000e+00
  %1011 = call float @dx.op.binary.f32(i32 35, float %1010, float 0.000000e+00)  ; FMax(a,b)
  %1012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1013 = extractvalue %dx.types.CBufRet.f32 %1012, 0
  %1014 = fadd fast float %1013, %1011
  %1015 = extractvalue %dx.types.CBufRet.f32 %1012, 2
  %1016 = fmul fast float %1014, %1015
  %1017 = call float @dx.op.unary.f32(i32 23, float %1016)  ; Log(value)
  %1018 = extractvalue %dx.types.CBufRet.f32 %1012, 3
  %1019 = fmul fast float %1018, %1017
  %1020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %20, float %979, float %980, float %1046, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1048 = extractvalue %dx.types.ResRet.f32 %1047, 0
  %1049 = extractvalue %dx.types.ResRet.f32 %1047, 1
  %1050 = extractvalue %dx.types.ResRet.f32 %1047, 2
  %1051 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %1052 = extractvalue %dx.types.CBufRet.i32 %1051, 0
  %1053 = extractvalue %dx.types.CBufRet.i32 %1051, 1
  %1054 = uitofp i32 %1052 to float
  %1055 = uitofp i32 %1053 to float
  %1056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %1122, float %1128, float %1046, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1130 = extractvalue %dx.types.ResRet.f32 %1129, 0
  %1131 = extractvalue %dx.types.ResRet.f32 %1129, 1
  %1132 = extractvalue %dx.types.ResRet.f32 %1129, 2
  %1133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %1124, float %1128, float %1046, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1134 = extractvalue %dx.types.ResRet.f32 %1133, 0
  %1135 = extractvalue %dx.types.ResRet.f32 %1133, 1
  %1136 = extractvalue %dx.types.ResRet.f32 %1133, 2
  %1137 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %1122, float %1126, float %1046, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1138 = extractvalue %dx.types.ResRet.f32 %1137, 0
  %1139 = extractvalue %dx.types.ResRet.f32 %1137, 1
  %1140 = extractvalue %dx.types.ResRet.f32 %1137, 2
  %1141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %1124, float %1126, float %1046, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %1172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1194 = extractvalue %dx.types.CBufRet.f32 %1193, 2
  %1195 = fmul fast float %1194, 0x3FE3C6EF40000000
  %1196 = frem fast float %49, 2.560000e+02
  %1197 = frem fast float %50, 2.560000e+02
  %1198 = fptoui float %1196 to i32
  %1199 = fptoui float %1197 to i32
  %1200 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1198, i32 %1199, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1201 = extractvalue %dx.types.ResRet.f32 %1200, 0
  %1202 = fadd fast float %1201, %1195
  %1203 = call float @dx.op.unary.f32(i32 22, float %1202)  ; Frc(value)
  %1204 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %47, i32 %48, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1205 = extractvalue %dx.types.ResRet.f32 %1204, 0
  %1206 = extractvalue %dx.types.ResRet.f32 %1204, 1
  %1207 = extractvalue %dx.types.ResRet.f32 %1204, 2
  %1208 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1209 = extractvalue %dx.types.CBufRet.i32 %1208, 3
  %1210 = and i32 %1209, 3
  %1211 = icmp ne i32 %1210, 0
  %1212 = and i32 %1209, 4
  %1213 = icmp ne i32 %1212, 0
  %1214 = and i1 %1211, %1213
  br i1 %1214, label %1215, label %1224, !dx.controlflow.hints !98

; <label>:1215                                    ; preds = %1177
  %1216 = fmul fast float %53, %104
  %1217 = fmul fast float %52, %103
  %1218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %21, float %1217, float %1216, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1219 = extractvalue %dx.types.ResRet.f32 %1218, 0
  %1220 = fsub fast float 1.000000e+00, %1219
  %1221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1222 = extractvalue %dx.types.CBufRet.f32 %1221, 0
  %1223 = fcmp fast olt float %1220, %1222
  br label %1227

; <label>:1224                                    ; preds = %1177
  %1225 = icmp eq i32 %1212, 0
  %1226 = and i1 %1211, %1225
  br label %1227

; <label>:1227                                    ; preds = %1224, %1215
  %1228 = phi i1 [ %1223, %1215 ], [ %1226, %1224 ]
  %1229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1230 = extractvalue %dx.types.CBufRet.f32 %1229, 0
  br i1 %1228, label %1231, label %1250, !dx.controlflow.hints !99

; <label>:1231                                    ; preds = %1227
  %1232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1233 = extractvalue %dx.types.CBufRet.f32 %1232, 3
  %1234 = call float @dx.op.dot3.f32(i32 55, float %1184, float %1185, float %1186, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1235 = fmul fast float %1234, %1205
  %1236 = call float @dx.op.dot3.f32(i32 55, float %1190, float %1191, float %1192, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1237 = fmul fast float %1230, %1236
  %1238 = fadd fast float %1237, %1235
  br i1 %1214, label %1239, label %1245, !dx.controlflow.hints !100

; <label>:1239                                    ; preds = %1231
  %1240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1241 = extractvalue %dx.types.CBufRet.f32 %1240, 1
  %1242 = fadd fast float %1184, -1.000000e+00
  %1243 = fmul fast float %1241, %1242
  %1244 = fadd fast float %1243, 1.000000e+00
  br label %1245

; <label>:1245                                    ; preds = %1239, %1231
  %1246 = phi float [ %1244, %1239 ], [ %1184, %1231 ]
  %1247 = fsub fast float %1206, %1233
  %1248 = fmul fast float %1246, %1247
  %1249 = fadd fast float %1248, %1233
  br label %1260

; <label>:1250                                    ; preds = %1227
  %1251 = fmul fast float %1205, %1184
  %1252 = fmul fast float %1206, %1185
  %1253 = fmul fast float %1207, %1186
  %1254 = fmul fast float %1230, %1190
  %1255 = fmul fast float %1230, %1191
  %1256 = fmul fast float %1230, %1192
  %1257 = fadd fast float %1254, %1251
  %1258 = fadd fast float %1255, %1252
  %1259 = fadd fast float %1256, %1253
  br label %1260

; <label>:1260                                    ; preds = %1250, %1245
  %1261 = phi float [ %1238, %1245 ], [ %1257, %1250 ]
  %1262 = phi float [ %1249, %1245 ], [ %1258, %1250 ]
  %1263 = phi float [ %1207, %1245 ], [ %1259, %1250 ]
  %1264 = lshr i32 %45, 2
  %1265 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1266 = extractvalue %dx.types.CBufRet.i32 %1265, 1
  %1267 = shl i32 %1266, 1
  %1268 = lshr i32 %46, 4
  %1269 = and i32 %1268, 134217727
  %1270 = extractvalue %dx.types.CBufRet.i32 %1265, 0
  %1271 = mul i32 %1270, %1269
  %1272 = lshr i32 %45, 5
  %1273 = and i32 %1272, 67108863
  %1274 = add i32 %1267, %1273
  %1275 = add i32 %1274, %1271
  %1276 = shl i32 %1275, 2
  %1277 = and i32 %48, 24
  %1278 = and i32 %1264, 7
  %1279 = or i32 %1277, %1278
  %1280 = shl i32 1, %1279
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = and i32 %1282, %1280
  %1284 = icmp eq i32 %1283, 0
  br i1 %1284, label %1300, label %1285, !dx.controlflow.hints !101

; <label>:1285                                    ; preds = %1260
  %1286 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %47, i32 %48, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1287 = extractvalue %dx.types.ResRet.f32 %1286, 0
  %1288 = fcmp fast ogt float %1287, 0.000000e+00
  br i1 %1288, label %1289, label %1300, !dx.controlflow.hints !102

; <label>:1289                                    ; preds = %1285
  %1290 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %47, i32 %48, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1291 = extractvalue %dx.types.ResRet.f32 %1290, 0
  %1292 = extractvalue %dx.types.ResRet.f32 %1290, 1
  %1293 = extractvalue %dx.types.ResRet.f32 %1290, 2
  %1294 = extractvalue %dx.types.ResRet.f32 %1290, 3
  %1295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %1296 = extractvalue %dx.types.CBufRet.f32 %1295, 2
  %1297 = fmul fast float %1296, %1291
  %1298 = fmul fast float %1296, %1292
  %1299 = fmul fast float %1296, %1293
  br label %1300

; <label>:1300                                    ; preds = %1289, %1285, %1260
  %1301 = phi float [ %1297, %1289 ], [ 0.000000e+00, %1285 ], [ 0.000000e+00, %1260 ]
  %1302 = phi float [ %1298, %1289 ], [ 0.000000e+00, %1285 ], [ 0.000000e+00, %1260 ]
  %1303 = phi float [ %1299, %1289 ], [ 0.000000e+00, %1285 ], [ 0.000000e+00, %1260 ]
  %1304 = phi float [ %1294, %1289 ], [ 0.000000e+00, %1285 ], [ 0.000000e+00, %1260 ]
  %1305 = fsub fast float 1.000000e+00, %1304
  %1306 = fmul fast float %1305, %1261
  %1307 = fmul fast float %1305, %1262
  %1308 = fmul fast float %1305, %1263
  %1309 = fadd fast float %1306, %1301
  %1310 = fadd fast float %1307, %1302
  %1311 = fadd fast float %1308, %1303
  %1312 = fadd fast float %1203, 0x3FE3C6EF40000000
  %1313 = call float @dx.op.unary.f32(i32 22, float %1312)  ; Frc(value)
  %1314 = call float @dx.op.unary.f32(i32 23, float %1309)  ; Log(value)
  %1315 = fadd fast float %1314, -7.000000e+00
  %1316 = call float @dx.op.unary.f32(i32 21, float %1315)  ; Exp(value)
  %1317 = fmul fast float %1313, 2.000000e+00
  %1318 = fadd fast float %1317, -1.000000e+00
  %1319 = fmul fast float %1316, %1318
  %1320 = fcmp fast ogt float %1309, 0.000000e+00
  %1321 = select i1 %1320, float %1319, float 0.000000e+00
  %1322 = fadd fast float %1321, %1309
  %1323 = fadd fast float %1203, 0x3FF3C6EF40000000
  %1324 = call float @dx.op.unary.f32(i32 22, float %1323)  ; Frc(value)
  %1325 = call float @dx.op.unary.f32(i32 23, float %1310)  ; Log(value)
  %1326 = fadd fast float %1325, -7.000000e+00
  %1327 = call float @dx.op.unary.f32(i32 21, float %1326)  ; Exp(value)
  %1328 = fmul fast float %1324, 2.000000e+00
  %1329 = fadd fast float %1328, -1.000000e+00
  %1330 = fmul fast float %1327, %1329
  %1331 = fcmp fast ogt float %1310, 0.000000e+00
  %1332 = select i1 %1331, float %1330, float 0.000000e+00
  %1333 = fadd fast float %1332, %1310
  %1334 = fadd fast float %1203, 0x3FFDAA66E0000000
  %1335 = call float @dx.op.unary.f32(i32 22, float %1334)  ; Frc(value)
  %1336 = call float @dx.op.unary.f32(i32 23, float %1311)  ; Log(value)
  %1337 = fadd fast float %1336, -6.000000e+00
  %1338 = call float @dx.op.unary.f32(i32 21, float %1337)  ; Exp(value)
  %1339 = fmul fast float %1335, 2.000000e+00
  %1340 = fadd fast float %1339, -1.000000e+00
  %1341 = fmul fast float %1338, %1340
  %1342 = fcmp fast ogt float %1311, 0.000000e+00
  %1343 = select i1 %1342, float %1341, float 0.000000e+00
  %1344 = fadd fast float %1343, %1311
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %47, i32 %48, i32 undef, float %1322, float %1333, float %1344, float %1322, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1345 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1346 = extractvalue %dx.types.CBufRet.i32 %1345, 0
  %1347 = and i32 %1346, 1
  %1348 = icmp eq i32 %1347, 0
  br i1 %1348, label %1352, label %1349, !dx.controlflow.hints !103

; <label>:1349                                    ; preds = %1300
  %1350 = and i32 %45, 2147483647
  %1351 = and i32 %46, 2147483647
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1350, i32 %1351, i32 undef, float %1205, float %1206, float %1207, float %1205, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1352

; <label>:1352                                    ; preds = %1349, %1300
  br label %1353

; <label>:1353                                    ; preds = %1376, %1352
  %1354 = phi float [ %1377, %1376 ], [ %1309, %1352 ]
  %1355 = phi float [ %1378, %1376 ], [ %1310, %1352 ]
  %1356 = phi float [ %1379, %1376 ], [ %1311, %1352 ]
  %1357 = phi float [ %1380, %1376 ], [ 1.000000e+00, %1352 ]
  %1358 = phi i32 [ %1363, %1376 ], [ 14, %1352 ]
  %1359 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1358)  ; FirstbitLo(value)
  %1360 = and i32 %1359, 31
  %1361 = shl i32 1, %1360
  %1362 = xor i32 %1361, -1
  %1363 = and i32 %1358, %1362
  %1364 = and i32 %1359, 1
  %1365 = lshr i32 %1359, 1
  %1366 = or i32 %1364, %47
  %1367 = add i32 %1365, %48
  %1368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1369 = extractvalue %dx.types.CBufRet.f32 %1368, 0
  %1370 = fptoui float %1369 to i32
  %1371 = icmp uge i32 %1366, %1370
  %1372 = extractvalue %dx.types.CBufRet.f32 %1368, 1
  %1373 = fptoui float %1372 to i32
  %1374 = icmp uge i32 %1367, %1373
  %1375 = or i1 %1371, %1374
  br i1 %1375, label %1376, label %1382, !dx.controlflow.hints !104

; <label>:1376                                    ; preds = %2650, %1353
  %1377 = phi float [ %1354, %1353 ], [ %2651, %2650 ]
  %1378 = phi float [ %1355, %1353 ], [ %2652, %2650 ]
  %1379 = phi float [ %1356, %1353 ], [ %2653, %2650 ]
  %1380 = phi float [ %1357, %1353 ], [ %2654, %2650 ]
  %1381 = icmp eq i32 %1363, 0
  br i1 %1381, label %2655, label %1353

; <label>:1382                                    ; preds = %1353
  %1383 = uitofp i32 %1366 to float
  %1384 = uitofp i32 %1367 to float
  %1385 = fadd fast float %1383, 5.000000e-01
  %1386 = fadd fast float %1384, 5.000000e-01
  %1387 = extractvalue %dx.types.CBufRet.f32 %1368, 2
  %1388 = extractvalue %dx.types.CBufRet.f32 %1368, 3
  %1389 = fmul fast float %1387, %1385
  %1390 = fmul fast float %1388, %1386
  %1391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1392 = extractvalue %dx.types.CBufRet.f32 %1391, 2
  %1393 = fmul fast float %1392, 0x3FE3C6EF40000000
  %1394 = frem fast float %1383, 2.560000e+02
  %1395 = frem fast float %1384, 2.560000e+02
  %1396 = fptoui float %1394 to i32
  %1397 = fptoui float %1395 to i32
  %1398 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1396, i32 %1397, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1399 = extractvalue %dx.types.ResRet.f32 %1398, 0
  %1400 = fadd fast float %1399, %1393
  %1401 = call float @dx.op.unary.f32(i32 22, float %1400)  ; Frc(value)
  %1402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.i32 %1402, 0
  %1404 = and i32 %1403, 114688
  %1405 = icmp ne i32 %1404, 0
  %1406 = select i1 %1405, i32 %1366, i32 0
  %1407 = select i1 %1405, i32 %1367, i32 0
  %1408 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %1406, i32 %1407, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1409 = extractvalue %dx.types.ResRet.f32 %1408, 0
  %1410 = fmul fast float %1409, 2.550000e+02
  %1411 = fptoui float %1410 to i32
  %1412 = icmp eq i32 %1411, 3
  %1413 = and i1 %1405, %1412
  %1414 = getelementptr [4 x float], [4 x float]* %32, i32 0, i32 %1359
  %1415 = load float, float* %1414, align 4, !tbaa !49, !noalias !105
  %1416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1417 = extractvalue %dx.types.CBufRet.f32 %1416, 3
  %1418 = fcmp fast oge float %1415, %1417
  br i1 %1413, label %2278, label %1419, !dx.controlflow.hints !37

; <label>:1419                                    ; preds = %1382
  %1420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 170)  ; CBufferLoadLegacy(handle,regIndex)
  %1421 = extractvalue %dx.types.CBufRet.f32 %1420, 0
  %1422 = select i1 %1418, float %1421, float %1415
  %1423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1424 = extractvalue %dx.types.CBufRet.f32 %1423, 2
  %1425 = extractvalue %dx.types.CBufRet.f32 %1423, 3
  %1426 = fmul fast float %1385, 2.000000e+00
  %1427 = fmul fast float %1426, %1424
  %1428 = fmul fast float %1386, 2.000000e+00
  %1429 = fmul fast float %1428, %1425
  %1430 = fsub fast float 1.000000e+00, %1427
  %1431 = fsub fast float 1.000000e+00, %1429
  %1432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1433 = extractvalue %dx.types.CBufRet.f32 %1432, 0
  %1434 = extractvalue %dx.types.CBufRet.f32 %1432, 1
  %1435 = extractvalue %dx.types.CBufRet.f32 %1432, 2
  %1436 = fmul fast float %1430, %1433
  %1437 = fmul fast float %1430, %1434
  %1438 = fmul fast float %1430, %1435
  %1439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1440 = extractvalue %dx.types.CBufRet.f32 %1439, 0
  %1441 = extractvalue %dx.types.CBufRet.f32 %1439, 1
  %1442 = extractvalue %dx.types.CBufRet.f32 %1439, 2
  %1443 = fmul fast float %1431, %1440
  %1444 = fmul fast float %1431, %1441
  %1445 = fmul fast float %1431, %1442
  %1446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1447 = extractvalue %dx.types.CBufRet.f32 %1446, 0
  %1448 = extractvalue %dx.types.CBufRet.f32 %1446, 1
  %1449 = extractvalue %dx.types.CBufRet.f32 %1446, 2
  %1450 = fadd fast float %1443, %1447
  %1451 = fadd fast float %1450, %1436
  %1452 = fadd fast float %1444, %1448
  %1453 = fadd fast float %1452, %1437
  %1454 = fadd fast float %1445, %1449
  %1455 = fadd fast float %1454, %1438
  %1456 = fmul fast float %1451, %1422
  %1457 = fmul fast float %1453, %1422
  %1458 = fmul fast float %1455, %1422
  %1459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 163)  ; CBufferLoadLegacy(handle,regIndex)
  %1460 = extractvalue %dx.types.CBufRet.f32 %1459, 0
  %1461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1462 = extractvalue %dx.types.CBufRet.f32 %1461, 0
  %1463 = extractvalue %dx.types.CBufRet.f32 %1461, 1
  %1464 = extractvalue %dx.types.CBufRet.f32 %1461, 2
  %1465 = extractvalue %dx.types.CBufRet.f32 %1461, 3
  %1466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1467 = extractvalue %dx.types.CBufRet.f32 %1466, 0
  %1468 = extractvalue %dx.types.CBufRet.f32 %1466, 1
  %1469 = extractvalue %dx.types.CBufRet.f32 %1466, 2
  %1470 = extractvalue %dx.types.CBufRet.f32 %1466, 3
  %1471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1472 = extractvalue %dx.types.CBufRet.f32 %1471, 0
  %1473 = extractvalue %dx.types.CBufRet.f32 %1471, 1
  %1474 = extractvalue %dx.types.CBufRet.f32 %1471, 2
  %1475 = extractvalue %dx.types.CBufRet.f32 %1471, 3
  %1476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1477 = extractvalue %dx.types.CBufRet.f32 %1476, 0
  %1478 = extractvalue %dx.types.CBufRet.f32 %1476, 1
  %1479 = extractvalue %dx.types.CBufRet.f32 %1476, 2
  %1480 = extractvalue %dx.types.CBufRet.f32 %1476, 3
  %1481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1482 = extractvalue %dx.types.CBufRet.f32 %1481, 3
  %1483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1484 = extractvalue %dx.types.CBufRet.f32 %1483, 3
  %1485 = extractvalue %dx.types.CBufRet.f32 %1483, 0
  %1486 = extractvalue %dx.types.CBufRet.f32 %1483, 1
  %1487 = extractvalue %dx.types.CBufRet.f32 %1483, 2
  %1488 = fcmp fast olt float %1487, -5.000000e-01
  %1489 = extractvalue %dx.types.CBufRet.f32 %1459, 3
  %1490 = call float @dx.op.dot3.f32(i32 55, float %1456, float %1457, float %1458, float %1456, float %1457, float %1458)  ; Dot3(ax,ay,az,bx,by,bz)
  %1491 = call float @dx.op.unary.f32(i32 25, float %1490)  ; Rsqrt(value)
  %1492 = fmul fast float %1491, %1490
  %1493 = fmul fast float %1491, %1456
  %1494 = fmul fast float %1491, %1457
  %1495 = fmul fast float %1491, %1458
  %1496 = fadd fast float %1492, %1465
  br i1 %1418, label %1497, label %1509, !dx.controlflow.hints !38

; <label>:1497                                    ; preds = %1419
  %1498 = extractvalue %dx.types.CBufRet.f32 %1459, 2
  %1499 = extractvalue %dx.types.CBufRet.f32 %1459, 1
  %1500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 187)  ; CBufferLoadLegacy(handle,regIndex)
  %1501 = extractvalue %dx.types.CBufRet.f32 %1500, 1
  %1502 = extractvalue %dx.types.CBufRet.f32 %1500, 0
  %1503 = call float @dx.op.binary.f32(i32 35, float %1495, float %1502)  ; FMax(a,b)
  %1504 = call float @dx.op.binary.f32(i32 36, float %1503, float %1501)  ; FMin(a,b)
  %1505 = fmul fast float %1504, %1499
  %1506 = fadd fast float %1505, %1498
  %1507 = call float @dx.op.unary.f32(i32 7, float %1506)  ; Saturate(value)
  %1508 = fmul fast float %1495, %1460
  br label %1509

; <label>:1509                                    ; preds = %1497, %1419
  %1510 = phi float [ %1460, %1497 ], [ %1496, %1419 ]
  %1511 = phi float [ %1507, %1497 ], [ 0.000000e+00, %1419 ]
  %1512 = phi float [ %1508, %1497 ], [ %1458, %1419 ]
  %1513 = call float @dx.op.dot3.f32(i32 55, float %1493, float %1494, float %1495, float %1462, float %1463, float %1464)  ; Dot3(ax,ay,az,bx,by,bz)
  %1514 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1515 = extractvalue %dx.types.CBufRet.i32 %1514, 1
  %1516 = and i32 %1515, 1
  %1517 = icmp ne i32 %1516, 0
  %1518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1519 = extractvalue %dx.types.CBufRet.f32 %1518, 2
  %1520 = fcmp fast ogt float %1519, 0.000000e+00
  %1521 = and i1 %1517, %1520
  br i1 %1521, label %1522, label %1931, !dx.controlflow.hints !39

; <label>:1522                                    ; preds = %1509
  %1523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1524 = extractvalue %dx.types.CBufRet.f32 %1523, 3
  %1525 = select i1 %1418, float %1524, float %1492
  %1526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1527 = extractvalue %dx.types.CBufRet.f32 %1526, 3
  %1528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1529 = extractvalue %dx.types.CBufRet.f32 %1528, 2
  %1530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1531 = extractvalue %dx.types.CBufRet.f32 %1530, 2
  %1532 = fsub fast float %1529, %1531
  %1533 = and i32 %1515, 2
  %1534 = extractvalue %dx.types.CBufRet.i32 %1514, 0
  %1535 = call i32 @dx.op.binary.i32(i32 40, i32 %1534, i32 3)  ; UMin(a,b)
  %1536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1537 = extractvalue %dx.types.CBufRet.f32 %1536, 0
  %1538 = extractvalue %dx.types.CBufRet.f32 %1536, 1
  %1539 = extractvalue %dx.types.CBufRet.f32 %1530, 0
  %1540 = extractvalue %dx.types.CBufRet.f32 %1530, 1
  %1541 = fsub fast float %1537, %1539
  %1542 = fsub fast float %1538, %1540
  %1543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1544 = extractvalue %dx.types.CBufRet.f32 %1543, 0
  %1545 = fcmp fast ogt float %1544, 0.000000e+00
  %1546 = fsub fast float -0.000000e+00, %1541
  %1547 = fsub fast float -0.000000e+00, %1542
  %1548 = call float @dx.op.dot2.f32(i32 54, float %1493, float %1494, float %1493, float %1494)  ; Dot2(ax,ay,bx,by)
  %1549 = call float @dx.op.dot2.f32(i32 54, float %1493, float %1494, float %1546, float %1547)  ; Dot2(ax,ay,bx,by)
  %1550 = fmul fast float %1549, 2.000000e+00
  %1551 = call float @dx.op.dot2.f32(i32 54, float %1546, float %1547, float %1546, float %1547)  ; Dot2(ax,ay,bx,by)
  %1552 = fmul fast float %1544, %1544
  %1553 = fsub fast float %1551, %1552
  %1554 = fmul fast float %1550, %1550
  %1555 = fmul fast float %1548, 4.000000e+00
  %1556 = fmul fast float %1555, %1553
  %1557 = fsub fast float %1554, %1556
  %1558 = fcmp fast ogt float %1557, 0.000000e+00
  br i1 %1558, label %1559, label %1574, !dx.controlflow.hints !40

; <label>:1559                                    ; preds = %1522
  %1560 = fcmp fast ogt float %1550, 0.000000e+00
  %1561 = call float @dx.op.unary.f32(i32 24, float %1557)  ; Sqrt(value)
  %1562 = fsub fast float -0.000000e+00, %1561
  %1563 = select i1 %1560, float %1561, float %1562
  %1564 = fadd fast float %1563, %1550
  %1565 = fmul float %1564, -5.000000e-01
  %1566 = fdiv fast float %1565, %1548
  %1567 = call float @dx.op.binary.f32(i32 35, float %1566, float 0.000000e+00)  ; FMax(a,b)
  %1568 = call float @dx.op.binary.f32(i32 36, float %1525, float %1567)  ; FMin(a,b)
  %1569 = fdiv fast float %1553, %1565
  %1570 = call float @dx.op.binary.f32(i32 35, float %1569, float 0.000000e+00)  ; FMax(a,b)
  %1571 = call float @dx.op.binary.f32(i32 36, float %1525, float %1570)  ; FMin(a,b)
  %1572 = call float @dx.op.binary.f32(i32 36, float %1568, float %1571)  ; FMin(a,b)
  %1573 = call float @dx.op.binary.f32(i32 35, float %1568, float %1571)  ; FMax(a,b)
  br label %1574

; <label>:1574                                    ; preds = %1559, %1522
  %1575 = phi float [ %1573, %1559 ], [ -1.000000e+00, %1522 ]
  %1576 = phi float [ %1572, %1559 ], [ -1.000000e+00, %1522 ]
  %1577 = phi i1 [ true, %1559 ], [ false, %1522 ]
  %1578 = and i1 %1545, %1577
  br i1 %1578, label %1579, label %1581, !dx.controlflow.hints !41

; <label>:1579                                    ; preds = %1574
  %1580 = fcmp fast oeq float %1576, %1575
  br i1 %1580, label %1884, label %1582, !dx.controlflow.hints !42

; <label>:1581                                    ; preds = %1574
  br i1 %1545, label %1884, label %1582, !dx.controlflow.hints !43

; <label>:1582                                    ; preds = %1581, %1579
  %1583 = phi float [ %1525, %1581 ], [ %1575, %1579 ]
  %1584 = phi float [ 0.000000e+00, %1581 ], [ %1576, %1579 ]
  %1585 = icmp ne i32 %1533, 0
  %1586 = fmul fast float %1583, %1495
  %1587 = fadd fast float %1586, %1527
  %1588 = fmul fast float %1587, %1583
  %1589 = select i1 %1585, float 0.000000e+00, float %1588
  %1590 = fcmp fast oeq float %1495, 0.000000e+00
  %1591 = fdiv fast float %1532, %1495
  %1592 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1591)  ; FMax(a,b)
  %1593 = select i1 %1590, float %1583, float %1592
  %1594 = call float @dx.op.binary.f32(i32 36, float %1583, float %1593)  ; FMin(a,b)
  %1595 = fcmp fast ogt float %1495, 0.000000e+00
  %1596 = fcmp fast olt float %1532, 0.000000e+00
  br i1 %1595, label %1597, label %1654, !dx.controlflow.hints !44

; <label>:1597                                    ; preds = %1582
  %1598 = icmp eq i32 %1533, 0
  br i1 %1596, label %1599, label %1643, !dx.controlflow.hints !45

; <label>:1599                                    ; preds = %1597
  %1600 = select i1 %1598, float %1583, float 0.000000e+00
  %1601 = fsub fast float -0.000000e+00, %1600
  %1602 = call float @dx.op.unary.f32(i32 6, float %1601)  ; FAbs(value)
  %1603 = fmul fast float %1600, %1495
  %1604 = fadd fast float %1603, %1527
  %1605 = fmul fast float %1602, %1604
  %1606 = fsub fast float %1589, %1605
  %1607 = fsub fast float %1583, %1602
  %1608 = select i1 %1598, float %1607, float 0.000000e+00
  %1609 = extractvalue %dx.types.CBufRet.f32 %1523, 0
  %1610 = extractvalue %dx.types.CBufRet.f32 %1523, 1
  %1611 = extractvalue %dx.types.CBufRet.f32 %1523, 2
  %1612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1613 = extractvalue %dx.types.CBufRet.f32 %1612, 0
  %1614 = extractvalue %dx.types.CBufRet.f32 %1612, 1
  %1615 = extractvalue %dx.types.CBufRet.f32 %1612, 2
  %1616 = extractvalue %dx.types.CBufRet.f32 %1612, 3
  %1617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1618 = extractvalue %dx.types.CBufRet.f32 %1617, 3
  %1619 = call float @dx.op.binary.f32(i32 36, float %1606, float %1618)  ; FMin(a,b)
  %1620 = fmul fast float %1616, %1608
  %1621 = call float @dx.op.unary.f32(i32 7, float %1620)  ; Saturate(value)
  %1622 = fsub fast float %1613, %1609
  %1623 = fsub fast float %1614, %1610
  %1624 = fsub fast float %1615, %1611
  %1625 = fmul fast float %1621, %1622
  %1626 = fmul fast float %1621, %1623
  %1627 = fmul fast float %1621, %1624
  %1628 = fadd fast float %1625, %1609
  %1629 = fadd fast float %1626, %1610
  %1630 = fadd fast float %1627, %1611
  br i1 %1418, label %1884, label %1631, !dx.controlflow.hints !46

; <label>:1631                                    ; preds = %1599
  %1632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1633 = extractvalue %dx.types.CBufRet.f32 %1632, 0
  %1634 = extractvalue %dx.types.CBufRet.f32 %1632, 1
  %1635 = fadd fast float %1634, %1633
  %1636 = call float @dx.op.unary.f32(i32 7, float %1635)  ; Saturate(value)
  %1637 = extractvalue %dx.types.CBufRet.f32 %1632, 2
  %1638 = extractvalue %dx.types.CBufRet.f32 %1632, 3
  %1639 = fadd fast float %1638, %1637
  %1640 = call float @dx.op.unary.f32(i32 7, float %1639)  ; Saturate(value)
  %1641 = fmul fast float %1636, %1619
  %1642 = fmul fast float %1641, %1640
  br label %1884

; <label>:1643                                    ; preds = %1597
  br i1 %1598, label %1644, label %1665, !dx.controlflow.hints !47

; <label>:1644                                    ; preds = %1643
  %1645 = call float @dx.op.binary.f32(i32 36, float %1594, float %1584)  ; FMin(a,b)
  %1646 = fsub fast float %1594, %1645
  %1647 = fsub fast float %1646, %1583
  %1648 = call float @dx.op.unary.f32(i32 6, float %1647)  ; FAbs(value)
  %1649 = fadd fast float %1646, %1583
  %1650 = fmul fast float %1649, %1495
  %1651 = fadd fast float %1650, %1527
  %1652 = fmul fast float %1651, %1648
  %1653 = fsub fast float %1589, %1652
  br label %1665

; <label>:1654                                    ; preds = %1582
  br i1 %1596, label %1655, label %1665, !dx.controlflow.hints !48

; <label>:1655                                    ; preds = %1654
  %1656 = call float @dx.op.binary.f32(i32 35, float %1584, float %1594)  ; FMax(a,b)
  %1657 = icmp eq i32 %1533, 0
  %1658 = select i1 %1657, float %1594, float 0.000000e+00
  %1659 = fsub fast float -0.000000e+00, %1658
  %1660 = call float @dx.op.unary.f32(i32 6, float %1659)  ; FAbs(value)
  %1661 = fmul fast float %1658, %1495
  %1662 = fadd fast float %1661, %1527
  %1663 = fmul fast float %1660, %1662
  %1664 = fsub fast float %1589, %1663
  br label %1665

; <label>:1665                                    ; preds = %1655, %1654, %1644, %1643
  %1666 = phi float [ %1584, %1643 ], [ %1584, %1644 ], [ %1656, %1655 ], [ %1584, %1654 ]
  %1667 = phi float [ 0.000000e+00, %1643 ], [ %1648, %1644 ], [ %1660, %1655 ], [ 0.000000e+00, %1654 ]
  %1668 = phi float [ %1589, %1643 ], [ %1653, %1644 ], [ %1664, %1655 ], [ %1589, %1654 ]
  %1669 = phi float [ %1594, %1643 ], [ %1594, %1644 ], [ %1583, %1655 ], [ %1583, %1654 ]
  %1670 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 0
  store float -1.000000e+00, float* %1670, align 4, !tbaa !49, !noalias !106
  %1671 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 1
  store float -1.000000e+00, float* %1671, align 4, !tbaa !49, !noalias !106
  %1672 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 2
  store float -1.000000e+00, float* %1672, align 4, !tbaa !49, !noalias !106
  %1673 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 0
  store float -1.000000e+00, float* %1673, align 4, !tbaa !49, !noalias !106
  %1674 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 1
  store float -1.000000e+00, float* %1674, align 4, !tbaa !49, !noalias !106
  %1675 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 2
  store float -1.000000e+00, float* %1675, align 4, !tbaa !49, !noalias !106
  %1676 = icmp sgt i32 %1535, 0
  br i1 %1676, label %1677, label %1738

; <label>:1677                                    ; preds = %1665
  br label %1678

; <label>:1678                                    ; preds = %1727, %1677
  %1679 = phi i32 [ %1728, %1727 ], [ 0, %1677 ]
  %1680 = phi i32 [ %1729, %1727 ], [ 0, %1677 ]
  %1681 = add nuw i32 %1680, 171
  %1682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %1681)  ; CBufferLoadLegacy(handle,regIndex)
  %1683 = extractvalue %dx.types.CBufRet.f32 %1682, 0
  %1684 = extractvalue %dx.types.CBufRet.f32 %1682, 1
  %1685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1686 = extractvalue %dx.types.CBufRet.f32 %1685, 0
  %1687 = extractvalue %dx.types.CBufRet.f32 %1685, 1
  %1688 = fsub fast float %1683, %1686
  %1689 = fsub fast float %1684, %1687
  %1690 = extractvalue %dx.types.CBufRet.f32 %1682, 2
  %1691 = fsub fast float -0.000000e+00, %1688
  %1692 = fsub fast float -0.000000e+00, %1689
  %1693 = call float @dx.op.dot2.f32(i32 54, float %1493, float %1494, float %1691, float %1692)  ; Dot2(ax,ay,bx,by)
  %1694 = fmul fast float %1693, 2.000000e+00
  %1695 = call float @dx.op.dot2.f32(i32 54, float %1691, float %1692, float %1691, float %1692)  ; Dot2(ax,ay,bx,by)
  %1696 = fmul fast float %1690, %1690
  %1697 = fsub fast float %1695, %1696
  %1698 = fmul fast float %1694, %1694
  %1699 = fmul fast float %1555, %1697
  %1700 = fsub fast float %1698, %1699
  %1701 = fcmp fast ogt float %1700, 0.000000e+00
  br i1 %1701, label %1702, label %1717, !dx.controlflow.hints !40

; <label>:1702                                    ; preds = %1678
  %1703 = fcmp fast ogt float %1694, 0.000000e+00
  %1704 = call float @dx.op.unary.f32(i32 24, float %1700)  ; Sqrt(value)
  %1705 = fsub fast float -0.000000e+00, %1704
  %1706 = select i1 %1703, float %1704, float %1705
  %1707 = fadd fast float %1706, %1694
  %1708 = fmul float %1707, -5.000000e-01
  %1709 = fdiv fast float %1708, %1548
  %1710 = call float @dx.op.binary.f32(i32 35, float %1709, float 0.000000e+00)  ; FMax(a,b)
  %1711 = call float @dx.op.binary.f32(i32 36, float %1583, float %1710)  ; FMin(a,b)
  %1712 = fdiv fast float %1697, %1708
  %1713 = call float @dx.op.binary.f32(i32 35, float %1712, float 0.000000e+00)  ; FMax(a,b)
  %1714 = call float @dx.op.binary.f32(i32 36, float %1583, float %1713)  ; FMin(a,b)
  %1715 = call float @dx.op.binary.f32(i32 36, float %1711, float %1714)  ; FMin(a,b)
  %1716 = call float @dx.op.binary.f32(i32 35, float %1711, float %1714)  ; FMax(a,b)
  br label %1717

; <label>:1717                                    ; preds = %1702, %1678
  %1718 = phi float [ %1716, %1702 ], [ -1.000000e+00, %1678 ]
  %1719 = phi float [ %1715, %1702 ], [ -1.000000e+00, %1678 ]
  %1720 = phi i1 [ true, %1702 ], [ false, %1678 ]
  br i1 %1720, label %1721, label %1727, !dx.controlflow.hints !65

; <label>:1721                                    ; preds = %1717
  %1722 = call float @dx.op.binary.f32(i32 35, float %1666, float %1719)  ; FMax(a,b)
  %1723 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %1680
  store float %1722, float* %1723, align 4, !tbaa !49, !noalias !106
  %1724 = call float @dx.op.binary.f32(i32 35, float %1666, float %1718)  ; FMax(a,b)
  %1725 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %1680
  store float %1724, float* %1725, align 4, !tbaa !49, !noalias !106
  %1726 = add nsw i32 %1679, 1
  br label %1727

; <label>:1727                                    ; preds = %1721, %1717
  %1728 = phi i32 [ %1726, %1721 ], [ %1679, %1717 ]
  %1729 = add nuw nsw i32 %1680, 1
  %1730 = icmp eq i32 %1729, %1535
  br i1 %1730, label %1731, label %1678

; <label>:1731                                    ; preds = %1727
  %1732 = load float, float* %1672, align 4, !tbaa !49, !alias.scope !116, !noalias !119
  %1733 = load float, float* %1671, align 4, !tbaa !49, !alias.scope !122, !noalias !123
  %1734 = load float, float* %1670, align 4, !tbaa !49, !alias.scope !124, !noalias !125
  %1735 = load float, float* %1675, align 4, !tbaa !49, !alias.scope !126, !noalias !129
  %1736 = load float, float* %1674, align 4, !tbaa !49, !alias.scope !132, !noalias !133
  %1737 = load float, float* %1673, align 4, !tbaa !49, !alias.scope !134, !noalias !135
  br label %1738

; <label>:1738                                    ; preds = %1731, %1665
  %1739 = phi float [ -1.000000e+00, %1665 ], [ %1737, %1731 ]
  %1740 = phi float [ -1.000000e+00, %1665 ], [ %1736, %1731 ]
  %1741 = phi float [ -1.000000e+00, %1665 ], [ %1735, %1731 ]
  %1742 = phi float [ -1.000000e+00, %1665 ], [ %1734, %1731 ]
  %1743 = phi float [ -1.000000e+00, %1665 ], [ %1733, %1731 ]
  %1744 = phi float [ -1.000000e+00, %1665 ], [ %1732, %1731 ]
  %1745 = phi i32 [ 0, %1665 ], [ %1728, %1731 ]
  %1746 = call float @dx.op.binary.f32(i32 36, float %1743, float %1744)  ; FMin(a,b)
  %1747 = call float @dx.op.binary.f32(i32 36, float %1742, float %1746)  ; FMin(a,b)
  %1748 = call float @dx.op.binary.f32(i32 35, float %1742, float %1743)  ; FMax(a,b)
  %1749 = call float @dx.op.binary.f32(i32 36, float %1748, float %1744)  ; FMin(a,b)
  %1750 = call float @dx.op.binary.f32(i32 36, float %1742, float %1743)  ; FMin(a,b)
  %1751 = call float @dx.op.binary.f32(i32 35, float %1750, float %1749)  ; FMax(a,b)
  %1752 = call float @dx.op.binary.f32(i32 35, float %1743, float %1744)  ; FMax(a,b)
  %1753 = call float @dx.op.binary.f32(i32 35, float %1742, float %1752)  ; FMax(a,b)
  store float %1747, float* %1670, align 4, !tbaa !49, !alias.scope !124, !noalias !125
  store float %1751, float* %1671, align 4, !tbaa !49, !alias.scope !122, !noalias !123
  store float %1753, float* %1672, align 4, !tbaa !49, !alias.scope !116, !noalias !119
  %1754 = call float @dx.op.binary.f32(i32 36, float %1740, float %1741)  ; FMin(a,b)
  %1755 = call float @dx.op.binary.f32(i32 36, float %1739, float %1754)  ; FMin(a,b)
  %1756 = call float @dx.op.binary.f32(i32 35, float %1739, float %1740)  ; FMax(a,b)
  %1757 = call float @dx.op.binary.f32(i32 36, float %1756, float %1741)  ; FMin(a,b)
  %1758 = call float @dx.op.binary.f32(i32 36, float %1739, float %1740)  ; FMin(a,b)
  %1759 = call float @dx.op.binary.f32(i32 35, float %1758, float %1757)  ; FMax(a,b)
  %1760 = call float @dx.op.binary.f32(i32 35, float %1740, float %1741)  ; FMax(a,b)
  %1761 = call float @dx.op.binary.f32(i32 35, float %1739, float %1760)  ; FMax(a,b)
  store float %1755, float* %1673, align 4, !tbaa !49, !alias.scope !134, !noalias !135
  store float %1759, float* %1674, align 4, !tbaa !49, !alias.scope !132, !noalias !133
  store float %1761, float* %1675, align 4, !tbaa !49, !alias.scope !126, !noalias !129
  %1762 = sub nsw i32 3, %1745
  %1763 = icmp sgt i32 %1762, 2
  br i1 %1763, label %1764, label %1802, !dx.controlflow.hints !86

; <label>:1764                                    ; preds = %1738
  %1765 = icmp eq i32 %1533, 0
  %1766 = fsub fast float %1583, %1667
  %1767 = select i1 %1765, float %1766, float %1667
  %1768 = extractvalue %dx.types.CBufRet.f32 %1523, 0
  %1769 = extractvalue %dx.types.CBufRet.f32 %1523, 1
  %1770 = extractvalue %dx.types.CBufRet.f32 %1523, 2
  %1771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1772 = extractvalue %dx.types.CBufRet.f32 %1771, 0
  %1773 = extractvalue %dx.types.CBufRet.f32 %1771, 1
  %1774 = extractvalue %dx.types.CBufRet.f32 %1771, 2
  %1775 = extractvalue %dx.types.CBufRet.f32 %1771, 3
  %1776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1777 = extractvalue %dx.types.CBufRet.f32 %1776, 3
  %1778 = call float @dx.op.binary.f32(i32 36, float %1668, float %1777)  ; FMin(a,b)
  %1779 = fmul fast float %1775, %1767
  %1780 = call float @dx.op.unary.f32(i32 7, float %1779)  ; Saturate(value)
  %1781 = fsub fast float %1772, %1768
  %1782 = fsub fast float %1773, %1769
  %1783 = fsub fast float %1774, %1770
  %1784 = fmul fast float %1780, %1781
  %1785 = fmul fast float %1780, %1782
  %1786 = fmul fast float %1780, %1783
  %1787 = fadd fast float %1784, %1768
  %1788 = fadd fast float %1785, %1769
  %1789 = fadd fast float %1786, %1770
  br i1 %1418, label %1884, label %1790, !dx.controlflow.hints !46

; <label>:1790                                    ; preds = %1764
  %1791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1792 = extractvalue %dx.types.CBufRet.f32 %1791, 0
  %1793 = extractvalue %dx.types.CBufRet.f32 %1791, 1
  %1794 = fadd fast float %1793, %1792
  %1795 = call float @dx.op.unary.f32(i32 7, float %1794)  ; Saturate(value)
  %1796 = extractvalue %dx.types.CBufRet.f32 %1791, 2
  %1797 = extractvalue %dx.types.CBufRet.f32 %1791, 3
  %1798 = fadd fast float %1797, %1796
  %1799 = call float @dx.op.unary.f32(i32 7, float %1798)  ; Saturate(value)
  %1800 = fmul fast float %1795, %1778
  %1801 = fmul fast float %1800, %1799
  br label %1884

; <label>:1802                                    ; preds = %1738
  %1803 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %1762
  %1804 = load float, float* %1803, align 4, !tbaa !49, !noalias !106
  %1805 = fcmp fast olt float %1804, %1669
  %1806 = icmp sgt i32 %1745, 0
  %1807 = and i1 %1806, %1805
  br i1 %1807, label %1808, label %1845

; <label>:1808                                    ; preds = %1802
  br label %1809

; <label>:1809                                    ; preds = %1838, %1808
  %1810 = phi float [ %1839, %1838 ], [ %1667, %1808 ]
  %1811 = phi float [ %1840, %1838 ], [ %1668, %1808 ]
  %1812 = phi float [ %1820, %1838 ], [ %1804, %1808 ]
  %1813 = phi i32 [ %1817, %1838 ], [ %1762, %1808 ]
  %1814 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %1813
  %1815 = load float, float* %1814, align 4, !tbaa !49, !noalias !106
  %1816 = icmp slt i32 %1813, 2
  %1817 = add nsw i32 %1813, 1
  %1818 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %1817
  %1819 = load float, float* %1818, align 4, !tbaa !49, !noalias !106
  %1820 = select i1 %1816, float %1819, float %1583
  %1821 = call float @dx.op.binary.f32(i32 36, float %1820, float %1815)  ; FMin(a,b)
  %1822 = call float @dx.op.binary.f32(i32 36, float %1669, float %1821)  ; FMin(a,b)
  %1823 = icmp eq i32 %1533, 0
  %1824 = fadd fast float %1822, %1812
  %1825 = fmul fast float %1824, %1495
  %1826 = fadd fast float %1825, %1527
  br i1 %1823, label %1832, label %1827, !dx.controlflow.hints !87

; <label>:1827                                    ; preds = %1809
  %1828 = fsub fast float %1822, %1812
  %1829 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1828)  ; FMax(a,b)
  %1830 = fmul fast float %1829, %1826
  %1831 = fadd fast float %1830, %1811
  br label %1838

; <label>:1832                                    ; preds = %1809
  %1833 = fsub fast float %1812, %1822
  %1834 = call float @dx.op.unary.f32(i32 6, float %1833)  ; FAbs(value)
  %1835 = fadd fast float %1834, %1810
  %1836 = fmul fast float %1834, %1826
  %1837 = fsub fast float %1811, %1836
  br label %1838

; <label>:1838                                    ; preds = %1832, %1827
  %1839 = phi float [ %1829, %1827 ], [ %1835, %1832 ]
  %1840 = phi float [ %1831, %1827 ], [ %1837, %1832 ]
  %1841 = fcmp fast olt float %1820, %1669
  %1842 = icmp slt i32 %1817, 3
  %1843 = and i1 %1842, %1841
  br i1 %1843, label %1809, label %1844

; <label>:1844                                    ; preds = %1838
  br label %1845

; <label>:1845                                    ; preds = %1844, %1802
  %1846 = phi float [ %1667, %1802 ], [ %1839, %1844 ]
  %1847 = phi float [ %1668, %1802 ], [ %1840, %1844 ]
  %1848 = fsub fast float %1583, %1846
  %1849 = select i1 %1585, float %1846, float %1848
  %1850 = extractvalue %dx.types.CBufRet.f32 %1523, 0
  %1851 = extractvalue %dx.types.CBufRet.f32 %1523, 1
  %1852 = extractvalue %dx.types.CBufRet.f32 %1523, 2
  %1853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1854 = extractvalue %dx.types.CBufRet.f32 %1853, 0
  %1855 = extractvalue %dx.types.CBufRet.f32 %1853, 1
  %1856 = extractvalue %dx.types.CBufRet.f32 %1853, 2
  %1857 = extractvalue %dx.types.CBufRet.f32 %1853, 3
  %1858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1859 = extractvalue %dx.types.CBufRet.f32 %1858, 3
  %1860 = call float @dx.op.binary.f32(i32 36, float %1847, float %1859)  ; FMin(a,b)
  %1861 = fmul fast float %1857, %1849
  %1862 = call float @dx.op.unary.f32(i32 7, float %1861)  ; Saturate(value)
  %1863 = fsub fast float %1854, %1850
  %1864 = fsub fast float %1855, %1851
  %1865 = fsub fast float %1856, %1852
  %1866 = fmul fast float %1862, %1863
  %1867 = fmul fast float %1862, %1864
  %1868 = fmul fast float %1862, %1865
  %1869 = fadd fast float %1866, %1850
  %1870 = fadd fast float %1867, %1851
  %1871 = fadd fast float %1868, %1852
  br i1 %1418, label %1884, label %1872, !dx.controlflow.hints !46

; <label>:1872                                    ; preds = %1845
  %1873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1874 = extractvalue %dx.types.CBufRet.f32 %1873, 0
  %1875 = extractvalue %dx.types.CBufRet.f32 %1873, 1
  %1876 = fadd fast float %1875, %1874
  %1877 = call float @dx.op.unary.f32(i32 7, float %1876)  ; Saturate(value)
  %1878 = extractvalue %dx.types.CBufRet.f32 %1873, 2
  %1879 = extractvalue %dx.types.CBufRet.f32 %1873, 3
  %1880 = fadd fast float %1879, %1878
  %1881 = call float @dx.op.unary.f32(i32 7, float %1880)  ; Saturate(value)
  %1882 = fmul fast float %1877, %1860
  %1883 = fmul fast float %1882, %1881
  br label %1884

; <label>:1884                                    ; preds = %1872, %1845, %1790, %1764, %1631, %1599, %1581, %1579
  %1885 = phi float [ 0.000000e+00, %1579 ], [ 0.000000e+00, %1581 ], [ %1608, %1631 ], [ %1608, %1599 ], [ %1767, %1790 ], [ %1767, %1764 ], [ %1849, %1872 ], [ %1849, %1845 ]
  %1886 = phi float [ 0.000000e+00, %1579 ], [ 0.000000e+00, %1581 ], [ %1642, %1631 ], [ %1619, %1599 ], [ %1801, %1790 ], [ %1778, %1764 ], [ %1883, %1872 ], [ %1860, %1845 ]
  %1887 = phi float [ 0.000000e+00, %1579 ], [ 0.000000e+00, %1581 ], [ %1628, %1631 ], [ %1628, %1599 ], [ %1787, %1790 ], [ %1787, %1764 ], [ %1869, %1872 ], [ %1869, %1845 ]
  %1888 = phi float [ 0.000000e+00, %1579 ], [ 0.000000e+00, %1581 ], [ %1629, %1631 ], [ %1629, %1599 ], [ %1788, %1790 ], [ %1788, %1764 ], [ %1870, %1872 ], [ %1870, %1845 ]
  %1889 = phi float [ 0.000000e+00, %1579 ], [ 0.000000e+00, %1581 ], [ %1630, %1631 ], [ %1630, %1599 ], [ %1789, %1790 ], [ %1789, %1764 ], [ %1871, %1872 ], [ %1871, %1845 ]
  %1890 = fmul fast float %1519, %1886
  %1891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1892 = extractvalue %dx.types.CBufRet.f32 %1891, 2
  %1893 = fsub fast float %1529, %1892
  %1894 = fcmp fast olt float %1890, -2.000000e+01
  %1895 = call float @dx.op.unary.f32(i32 21, float %1890)  ; Exp(value)
  %1896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1897 = extractvalue %dx.types.CBufRet.f32 %1896, 2
  %1898 = extractvalue %dx.types.CBufRet.f32 %1896, 3
  %1899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1900 = extractvalue %dx.types.CBufRet.f32 %1899, 2
  %1901 = fmul fast float %1898, %1893
  %1902 = call float @dx.op.unary.f32(i32 7, float %1901)  ; Saturate(value)
  %1903 = fsub fast float 1.000000e+00, %1902
  %1904 = fmul fast float %1495, 5.000000e-01
  %1905 = fadd fast float %1904, 5.000000e-01
  %1906 = call float @dx.op.unary.f32(i32 7, float %1905)  ; Saturate(value)
  %1907 = fsub fast float 1.000000e+00, %1906
  %1908 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1903)  ; FMax(a,b)
  %1909 = fdiv fast float %1907, %1908
  %1910 = fsub fast float %1893, %1458
  %1911 = call float @dx.op.unary.f32(i32 6, float %1910)  ; FAbs(value)
  %1912 = fmul fast float %1911, %1897
  %1913 = call float @dx.op.unary.f32(i32 7, float %1909)  ; Saturate(value)
  %1914 = fsub fast float 1.000000e+00, %1912
  %1915 = fmul fast float %1914, %1913
  %1916 = fadd fast float %1915, %1912
  %1917 = fmul fast float %1900, %1893
  %1918 = call float @dx.op.unary.f32(i32 7, float %1917)  ; Saturate(value)
  %1919 = fsub fast float 1.000000e+00, %1916
  %1920 = fmul fast float %1919, %1918
  %1921 = fadd fast float %1920, %1916
  %1922 = call float @dx.op.unary.f32(i32 7, float %1921)  ; Saturate(value)
  %1923 = fadd fast float %1895, -1.000000e+00
  %1924 = select i1 %1894, float -1.000000e+00, float %1923
  %1925 = fmul fast float %1922, %1924
  %1926 = fadd fast float %1925, 1.000000e+00
  %1927 = fsub fast float -0.000000e+00, %1925
  %1928 = fmul fast float %1887, %1927
  %1929 = fmul fast float %1888, %1927
  %1930 = fmul fast float %1889, %1927
  br label %1931

; <label>:1931                                    ; preds = %1884, %1509
  %1932 = phi float [ %1885, %1884 ], [ 0.000000e+00, %1509 ]
  %1933 = phi float [ %1926, %1884 ], [ 1.000000e+00, %1509 ]
  %1934 = phi float [ %1928, %1884 ], [ 0.000000e+00, %1509 ]
  %1935 = phi float [ %1929, %1884 ], [ 0.000000e+00, %1509 ]
  %1936 = phi float [ %1930, %1884 ], [ 0.000000e+00, %1509 ]
  %1937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1938 = extractvalue %dx.types.CBufRet.f32 %1937, 1
  %1939 = fsub fast float 1.000000e+00, %1933
  %1940 = fmul fast float %1939, %1510
  %1941 = fmul fast float %1940, %1938
  %1942 = fsub fast float %1510, %1941
  br i1 %1488, label %1943, label %1975, !dx.controlflow.hints !88

; <label>:1943                                    ; preds = %1931
  %1944 = fmul fast float %1513, %1485
  %1945 = fadd fast float %1944, %1486
  %1946 = call float @dx.op.unary.f32(i32 7, float %1945)  ; Saturate(value)
  %1947 = fmul fast float %1467, %1942
  %1948 = fsub fast float -0.000000e+00, %1947
  %1949 = fmul fast float %1468, %1942
  %1950 = fsub fast float -0.000000e+00, %1949
  %1951 = call float @dx.op.unary.f32(i32 21, float %1948)  ; Exp(value)
  %1952 = call float @dx.op.unary.f32(i32 21, float %1950)  ; Exp(value)
  %1953 = call float @dx.op.binary.f32(i32 35, float %1475, float %1951)  ; FMax(a,b)
  %1954 = call float @dx.op.binary.f32(i32 35, float %1475, float %1952)  ; FMax(a,b)
  %1955 = fsub fast float %1954, %1953
  %1956 = fmul fast float %1955, %1946
  %1957 = fadd fast float %1956, %1953
  %1958 = call float @dx.op.unary.f32(i32 7, float %1957)  ; Saturate(value)
  %1959 = fmul fast float %1511, %1489
  %1960 = fsub fast float 1.000000e+00, %1959
  %1961 = select i1 %1418, float %1960, float %1958
  %1962 = fsub fast float %1472, %1477
  %1963 = fsub fast float %1473, %1478
  %1964 = fsub fast float %1474, %1479
  %1965 = fmul fast float %1946, %1962
  %1966 = fmul fast float %1946, %1963
  %1967 = fmul fast float %1946, %1964
  %1968 = fadd fast float %1965, %1477
  %1969 = fadd fast float %1966, %1478
  %1970 = fadd fast float %1967, %1479
  %1971 = fsub fast float 1.000000e+00, %1961
  %1972 = fmul fast float %1971, %1968
  %1973 = fmul fast float %1971, %1969
  %1974 = fmul fast float %1971, %1970
  br label %2046

; <label>:1975                                    ; preds = %1931
  %1976 = fmul fast float %1942, %1484
  %1977 = call float @dx.op.unary.f32(i32 7, float %1976)  ; Saturate(value)
  %1978 = fsub fast float 2.000000e+00, %1977
  %1979 = fmul fast float %1977, 9.921875e-01
  %1980 = fmul fast float %1979, %1978
  %1981 = fadd fast float %1980, 3.906250e-03
  %1982 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %21, float %1981, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1983 = extractvalue %dx.types.ResRet.f32 %1982, 0
  %1984 = fsub fast float %1977, %1983
  %1985 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1984)  ; FMax(a,b)
  %1986 = fmul fast float %1512, %1470
  %1987 = call float @dx.op.unary.f32(i32 6, float %1986)  ; FAbs(value)
  %1988 = fcmp fast ogt float %1987, 0x3EB0C6F7A0000000
  br i1 %1988, label %1989, label %1995, !dx.controlflow.hints !89

; <label>:1989                                    ; preds = %1975
  %1990 = fmul fast float %1986, 0xBFF7154760000000
  %1991 = call float @dx.op.unary.f32(i32 21, float %1990)  ; Exp(value)
  %1992 = fsub fast float 1.000000e+00, %1991
  %1993 = fdiv fast float %1992, %1986
  %1994 = fmul fast float %1993, %1480
  br label %1995

; <label>:1995                                    ; preds = %1989, %1975
  %1996 = phi float [ %1994, %1989 ], [ %1480, %1975 ]
  %1997 = fadd fast float %1996, %1482
  %1998 = fmul fast float %1997, %1985
  %1999 = fmul fast float %1467, %1998
  %2000 = fsub fast float -0.000000e+00, %1999
  %2001 = fmul fast float %1468, %1998
  %2002 = fsub fast float -0.000000e+00, %2001
  %2003 = fmul fast float %1469, %1998
  %2004 = fsub fast float -0.000000e+00, %2003
  %2005 = call float @dx.op.unary.f32(i32 21, float %2000)  ; Exp(value)
  %2006 = call float @dx.op.unary.f32(i32 21, float %2002)  ; Exp(value)
  %2007 = call float @dx.op.unary.f32(i32 21, float %2004)  ; Exp(value)
  br i1 %1418, label %2008, label %2016, !dx.controlflow.hints !90

; <label>:2008                                    ; preds = %1995
  %2009 = fmul fast float %2005, %1511
  %2010 = fmul fast float %2006, %1511
  %2011 = fmul fast float %2007, %1511
  %2012 = fsub fast float 1.000000e+00, %1511
  %2013 = fadd fast float %2009, %2012
  %2014 = fadd fast float %2010, %2012
  %2015 = fadd fast float %2011, %2012
  br label %2016

; <label>:2016                                    ; preds = %2008, %1995
  %2017 = phi float [ %2013, %2008 ], [ %2005, %1995 ]
  %2018 = phi float [ %2014, %2008 ], [ %2006, %1995 ]
  %2019 = phi float [ %2015, %2008 ], [ %2007, %1995 ]
  %2020 = fmul fast float %1513, %1513
  %2021 = fadd fast float %2020, 1.000000e+00
  %2022 = fmul fast float %2021, 0x3FAE8EC8A0000000
  %2023 = fmul fast float %2022, %1477
  %2024 = fmul fast float %2022, %1478
  %2025 = fmul fast float %2022, %1479
  %2026 = fmul fast float %1513, %1475
  %2027 = fsub fast float 1.000000e+00, %2026
  %2028 = fmul fast float %1475, %1475
  %2029 = fsub fast float 1.000000e+00, %2028
  %2030 = fmul fast float %2029, 0x3FB45F3060000000
  %2031 = fmul fast float %2027, %2027
  %2032 = fdiv fast float 1.000000e+00, %2031
  %2033 = fmul fast float %2030, %2032
  %2034 = fmul fast float %2033, %1472
  %2035 = fmul fast float %2033, %1473
  %2036 = fmul fast float %2033, %1474
  %2037 = fadd fast float %2034, %2023
  %2038 = fadd fast float %2035, %2024
  %2039 = fadd fast float %2036, %2025
  %2040 = fsub fast float 1.000000e+00, %2017
  %2041 = fsub fast float 1.000000e+00, %2018
  %2042 = fsub fast float 1.000000e+00, %2019
  %2043 = fmul fast float %2037, %2040
  %2044 = fmul fast float %2038, %2041
  %2045 = fmul fast float %2039, %2042
  br label %2046

; <label>:2046                                    ; preds = %2016, %1943
  %2047 = phi float [ %1972, %1943 ], [ %2043, %2016 ]
  %2048 = phi float [ %1973, %1943 ], [ %2044, %2016 ]
  %2049 = phi float [ %1974, %1943 ], [ %2045, %2016 ]
  %2050 = phi float [ %1961, %1943 ], [ %2017, %2016 ]
  %2051 = phi float [ %1961, %1943 ], [ %2018, %2016 ]
  %2052 = phi float [ %1961, %1943 ], [ %2019, %2016 ]
  br i1 %1521, label %2053, label %2251, !dx.controlflow.hints !91

; <label>:2053                                    ; preds = %2046
  %2054 = extractvalue %dx.types.CBufRet.f32 %1937, 0
  %2055 = fmul fast float %2054, %1939
  %2056 = fsub fast float %1934, %2047
  %2057 = fsub fast float %1935, %2048
  %2058 = fsub fast float %1936, %2049
  %2059 = fmul fast float %2055, %2056
  %2060 = fmul fast float %2055, %2057
  %2061 = fmul fast float %2055, %2058
  %2062 = fadd fast float %2059, %2047
  %2063 = fadd fast float %2060, %2048
  %2064 = fadd fast float %2061, %2049
  %2065 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2050)  ; FMax(a,b)
  %2066 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2051)  ; FMax(a,b)
  %2067 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2052)  ; FMax(a,b)
  %2068 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1933)  ; FMax(a,b)
  %2069 = call float @dx.op.binary.f32(i32 35, float %1932, float %1942)  ; FMax(a,b)
  %2070 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2069)  ; FMax(a,b)
  %2071 = fdiv fast float %1932, %2070
  %2072 = call float @dx.op.unary.f32(i32 7, float %2071)  ; Saturate(value)
  %2073 = fdiv fast float %1942, %2070
  %2074 = call float @dx.op.unary.f32(i32 7, float %2073)  ; Saturate(value)
  %2075 = fcmp fast une float %2068, 1.000000e+00
  br i1 %2075, label %2076, label %2089, !dx.controlflow.hints !92

; <label>:2076                                    ; preds = %2053
  %2077 = call float @dx.op.unary.f32(i32 23, float %2068)  ; Log(value)
  %2078 = fmul fast float %2077, 0x3FE62E4300000000
  %2079 = fmul fast float %1934, %2078
  %2080 = fsub fast float -0.000000e+00, %2079
  %2081 = fmul fast float %1935, %2078
  %2082 = fsub fast float -0.000000e+00, %2081
  %2083 = fmul fast float %1936, %2078
  %2084 = fsub fast float -0.000000e+00, %2083
  %2085 = fsub fast float 1.000000e+00, %2068
  %2086 = fdiv fast float %2080, %2085
  %2087 = fdiv fast float %2082, %2085
  %2088 = fdiv fast float %2084, %2085
  br label %2089

; <label>:2089                                    ; preds = %2076, %2053
  %2090 = phi float [ %2086, %2076 ], [ %1934, %2053 ]
  %2091 = phi float [ %2087, %2076 ], [ %1935, %2053 ]
  %2092 = phi float [ %2088, %2076 ], [ %1936, %2053 ]
  %2093 = phi float [ %2078, %2076 ], [ 0.000000e+00, %2053 ]
  %2094 = fcmp fast une float %2065, 1.000000e+00
  br i1 %2094, label %2095, label %2102, !dx.controlflow.hints !93

; <label>:2095                                    ; preds = %2089
  %2096 = call float @dx.op.unary.f32(i32 23, float %2065)  ; Log(value)
  %2097 = fmul fast float %2096, 0x3FE62E4300000000
  %2098 = fmul fast float %2062, %2097
  %2099 = fsub fast float -0.000000e+00, %2098
  %2100 = fsub fast float 1.000000e+00, %2065
  %2101 = fdiv fast float %2099, %2100
  br label %2102

; <label>:2102                                    ; preds = %2095, %2089
  %2103 = phi float [ %2101, %2095 ], [ %2062, %2089 ]
  %2104 = phi float [ %2097, %2095 ], [ 0.000000e+00, %2089 ]
  %2105 = fcmp fast une float %2066, 1.000000e+00
  br i1 %2105, label %2106, label %2113, !dx.controlflow.hints !93

; <label>:2106                                    ; preds = %2102
  %2107 = call float @dx.op.unary.f32(i32 23, float %2066)  ; Log(value)
  %2108 = fmul fast float %2107, 0x3FE62E4300000000
  %2109 = fmul fast float %2063, %2108
  %2110 = fsub fast float -0.000000e+00, %2109
  %2111 = fsub fast float 1.000000e+00, %2066
  %2112 = fdiv fast float %2110, %2111
  br label %2113

; <label>:2113                                    ; preds = %2106, %2102
  %2114 = phi float [ %2112, %2106 ], [ %2063, %2102 ]
  %2115 = phi float [ %2108, %2106 ], [ 0.000000e+00, %2102 ]
  %2116 = fcmp fast une float %2067, 1.000000e+00
  br i1 %2116, label %2117, label %2124, !dx.controlflow.hints !93

; <label>:2117                                    ; preds = %2113
  %2118 = call float @dx.op.unary.f32(i32 23, float %2067)  ; Log(value)
  %2119 = fmul fast float %2118, 0x3FE62E4300000000
  %2120 = fmul fast float %2064, %2119
  %2121 = fsub fast float -0.000000e+00, %2120
  %2122 = fsub fast float 1.000000e+00, %2067
  %2123 = fdiv fast float %2121, %2122
  br label %2124

; <label>:2124                                    ; preds = %2117, %2113
  %2125 = phi float [ %2123, %2117 ], [ %2064, %2113 ]
  %2126 = phi float [ %2119, %2117 ], [ 0.000000e+00, %2113 ]
  %2127 = fmul fast float %2090, %2074
  %2128 = fmul fast float %2091, %2074
  %2129 = fmul fast float %2092, %2074
  %2130 = fmul fast float %2093, %2074
  %2131 = fmul fast float %2103, %2072
  %2132 = fmul fast float %2114, %2072
  %2133 = fmul fast float %2125, %2072
  %2134 = fmul fast float %2104, %2072
  %2135 = fmul fast float %2115, %2072
  %2136 = fmul fast float %2126, %2072
  %2137 = fadd fast float %2131, %2127
  %2138 = fadd fast float %2132, %2128
  %2139 = fadd fast float %2133, %2129
  %2140 = fadd fast float %2134, %2130
  %2141 = fadd fast float %2135, %2130
  %2142 = fadd fast float %2136, %2130
  %2143 = fcmp fast une float %2140, 0.000000e+00
  br i1 %2143, label %2144, label %2151, !dx.controlflow.hints !94

; <label>:2144                                    ; preds = %2124
  %2145 = fmul fast float %2140, 0x3FF7154760000000
  %2146 = call float @dx.op.unary.f32(i32 21, float %2145)  ; Exp(value)
  %2147 = fsub fast float 1.000000e+00, %2146
  %2148 = fmul fast float %2137, %2147
  %2149 = fsub fast float -0.000000e+00, %2148
  %2150 = fdiv fast float %2149, %2140
  br label %2151

; <label>:2151                                    ; preds = %2144, %2124
  %2152 = phi float [ %2146, %2144 ], [ 1.000000e+00, %2124 ]
  %2153 = phi float [ %2150, %2144 ], [ %2137, %2124 ]
  %2154 = fcmp fast une float %2141, 0.000000e+00
  br i1 %2154, label %2155, label %2162, !dx.controlflow.hints !94

; <label>:2155                                    ; preds = %2151
  %2156 = fmul fast float %2141, 0x3FF7154760000000
  %2157 = call float @dx.op.unary.f32(i32 21, float %2156)  ; Exp(value)
  %2158 = fsub fast float 1.000000e+00, %2157
  %2159 = fmul fast float %2138, %2158
  %2160 = fsub fast float -0.000000e+00, %2159
  %2161 = fdiv fast float %2160, %2141
  br label %2162

; <label>:2162                                    ; preds = %2155, %2151
  %2163 = phi float [ %2157, %2155 ], [ 1.000000e+00, %2151 ]
  %2164 = phi float [ %2161, %2155 ], [ %2138, %2151 ]
  %2165 = fcmp fast une float %2142, 0.000000e+00
  br i1 %2165, label %2166, label %2173, !dx.controlflow.hints !94

; <label>:2166                                    ; preds = %2162
  %2167 = fmul fast float %2142, 0x3FF7154760000000
  %2168 = call float @dx.op.unary.f32(i32 21, float %2167)  ; Exp(value)
  %2169 = fsub fast float 1.000000e+00, %2168
  %2170 = fmul fast float %2139, %2169
  %2171 = fsub fast float -0.000000e+00, %2170
  %2172 = fdiv fast float %2171, %2142
  br label %2173

; <label>:2173                                    ; preds = %2166, %2162
  %2174 = phi float [ %2168, %2166 ], [ 1.000000e+00, %2162 ]
  %2175 = phi float [ %2172, %2166 ], [ %2139, %2162 ]
  %2176 = fcmp fast ogt float %2072, %2074
  br i1 %2176, label %2177, label %2197, !dx.controlflow.hints !95

; <label>:2177                                    ; preds = %2173
  %2178 = fsub fast float 1.000000e+00, %2074
  %2179 = fmul fast float %2090, %2178
  %2180 = fmul fast float %2091, %2178
  %2181 = fmul fast float %2092, %2178
  %2182 = fmul fast float %2093, %2178
  %2183 = fcmp fast une float %2182, 0.000000e+00
  br i1 %2183, label %2184, label %2235, !dx.controlflow.hints !96

; <label>:2184                                    ; preds = %2177
  %2185 = fmul fast float %2182, 0x3FF7154760000000
  %2186 = call float @dx.op.unary.f32(i32 21, float %2185)  ; Exp(value)
  %2187 = fsub fast float 1.000000e+00, %2186
  %2188 = fmul fast float %2179, %2187
  %2189 = fsub fast float -0.000000e+00, %2188
  %2190 = fmul fast float %2180, %2187
  %2191 = fsub fast float -0.000000e+00, %2190
  %2192 = fmul fast float %2181, %2187
  %2193 = fsub fast float -0.000000e+00, %2192
  %2194 = fdiv fast float %2189, %2182
  %2195 = fdiv fast float %2191, %2182
  %2196 = fdiv fast float %2193, %2182
  br label %2235

; <label>:2197                                    ; preds = %2173
  %2198 = fsub fast float 1.000000e+00, %2072
  %2199 = fmul fast float %2103, %2198
  %2200 = fmul fast float %2114, %2198
  %2201 = fmul fast float %2125, %2198
  %2202 = fmul fast float %2104, %2198
  %2203 = fmul fast float %2115, %2198
  %2204 = fmul fast float %2126, %2198
  %2205 = fcmp fast une float %2202, 0.000000e+00
  br i1 %2205, label %2206, label %2213, !dx.controlflow.hints !94

; <label>:2206                                    ; preds = %2197
  %2207 = fmul fast float %2202, 0x3FF7154760000000
  %2208 = call float @dx.op.unary.f32(i32 21, float %2207)  ; Exp(value)
  %2209 = fsub fast float 1.000000e+00, %2208
  %2210 = fmul fast float %2199, %2209
  %2211 = fsub fast float -0.000000e+00, %2210
  %2212 = fdiv fast float %2211, %2202
  br label %2213

; <label>:2213                                    ; preds = %2206, %2197
  %2214 = phi float [ %2212, %2206 ], [ %2199, %2197 ]
  %2215 = phi float [ %2208, %2206 ], [ 1.000000e+00, %2197 ]
  %2216 = fcmp fast une float %2203, 0.000000e+00
  br i1 %2216, label %2217, label %2224, !dx.controlflow.hints !94

; <label>:2217                                    ; preds = %2213
  %2218 = fmul fast float %2203, 0x3FF7154760000000
  %2219 = call float @dx.op.unary.f32(i32 21, float %2218)  ; Exp(value)
  %2220 = fsub fast float 1.000000e+00, %2219
  %2221 = fmul fast float %2200, %2220
  %2222 = fsub fast float -0.000000e+00, %2221
  %2223 = fdiv fast float %2222, %2203
  br label %2224

; <label>:2224                                    ; preds = %2217, %2213
  %2225 = phi float [ %2223, %2217 ], [ %2200, %2213 ]
  %2226 = phi float [ %2219, %2217 ], [ 1.000000e+00, %2213 ]
  %2227 = fcmp fast une float %2204, 0.000000e+00
  br i1 %2227, label %2228, label %2235, !dx.controlflow.hints !94

; <label>:2228                                    ; preds = %2224
  %2229 = fmul fast float %2204, 0x3FF7154760000000
  %2230 = call float @dx.op.unary.f32(i32 21, float %2229)  ; Exp(value)
  %2231 = fsub fast float 1.000000e+00, %2230
  %2232 = fmul fast float %2201, %2231
  %2233 = fsub fast float -0.000000e+00, %2232
  %2234 = fdiv fast float %2233, %2204
  br label %2235

; <label>:2235                                    ; preds = %2228, %2224, %2184, %2177
  %2236 = phi float [ %2234, %2228 ], [ %2196, %2184 ], [ %2181, %2177 ], [ %2201, %2224 ]
  %2237 = phi float [ %2225, %2228 ], [ %2195, %2184 ], [ %2180, %2177 ], [ %2225, %2224 ]
  %2238 = phi float [ %2214, %2228 ], [ %2194, %2184 ], [ %2179, %2177 ], [ %2214, %2224 ]
  %2239 = phi float [ %2230, %2228 ], [ %2186, %2184 ], [ 1.000000e+00, %2177 ], [ 1.000000e+00, %2224 ]
  %2240 = phi float [ %2226, %2228 ], [ %2186, %2184 ], [ 1.000000e+00, %2177 ], [ %2226, %2224 ]
  %2241 = phi float [ %2215, %2228 ], [ %2186, %2184 ], [ 1.000000e+00, %2177 ], [ %2215, %2224 ]
  %2242 = fmul fast float %2241, %2153
  %2243 = fmul fast float %2240, %2164
  %2244 = fmul fast float %2239, %2175
  %2245 = fadd fast float %2242, %2238
  %2246 = fadd fast float %2243, %2237
  %2247 = fadd fast float %2244, %2236
  %2248 = fmul fast float %2241, %2152
  %2249 = fmul fast float %2240, %2163
  %2250 = fmul fast float %2239, %2174
  br label %2251

; <label>:2251                                    ; preds = %2235, %2046
  %2252 = phi float [ %2250, %2235 ], [ %2052, %2046 ]
  %2253 = phi float [ %2249, %2235 ], [ %2051, %2046 ]
  %2254 = phi float [ %2248, %2235 ], [ %2050, %2046 ]
  %2255 = phi float [ %2247, %2235 ], [ %2049, %2046 ]
  %2256 = phi float [ %2246, %2235 ], [ %2048, %2046 ]
  %2257 = phi float [ %2245, %2235 ], [ %2047, %2046 ]
  %2258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %21, float %1389, float %1390, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2259 = extractvalue %dx.types.ResRet.f32 %2258, 0
  %2260 = extractvalue %dx.types.ResRet.f32 %2258, 1
  %2261 = extractvalue %dx.types.ResRet.f32 %2258, 2
  %2262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2263 = extractvalue %dx.types.CBufRet.f32 %2262, 1
  %2264 = fmul fast float %2263, %2259
  %2265 = fmul fast float %2263, %2260
  %2266 = fmul fast float %2263, %2261
  %2267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %21, float %1389, float %1390, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2268 = extractvalue %dx.types.ResRet.f32 %2267, 0
  %2269 = fmul fast float %2268, %2254
  %2270 = fmul fast float %2268, %2253
  %2271 = fmul fast float %2268, %2252
  %2272 = fmul fast float %2268, %2257
  %2273 = fmul fast float %2268, %2256
  %2274 = fmul fast float %2268, %2255
  %2275 = fadd fast float %2272, %2264
  %2276 = fadd fast float %2273, %2265
  %2277 = fadd fast float %2274, %2266
  br label %2278

; <label>:2278                                    ; preds = %2251, %1382
  %2279 = phi float [ 0.000000e+00, %1382 ], [ %2275, %2251 ]
  %2280 = phi float [ 0.000000e+00, %1382 ], [ %2276, %2251 ]
  %2281 = phi float [ 0.000000e+00, %1382 ], [ %2277, %2251 ]
  %2282 = phi float [ 1.000000e+00, %1382 ], [ %2269, %2251 ]
  %2283 = phi float [ 1.000000e+00, %1382 ], [ %2270, %2251 ]
  %2284 = phi float [ 1.000000e+00, %1382 ], [ %2271, %2251 ]
  %2285 = phi float [ %1415, %1382 ], [ %1422, %2251 ]
  %2286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2287 = extractvalue %dx.types.CBufRet.f32 %2286, 2
  %2288 = extractvalue %dx.types.CBufRet.f32 %2286, 3
  %2289 = fmul fast float %2287, %1385
  %2290 = fmul fast float %2288, %1386
  %2291 = call float @dx.op.unary.f32(i32 7, float %2289)  ; Saturate(value)
  %2292 = call float @dx.op.unary.f32(i32 7, float %2290)  ; Saturate(value)
  %2293 = select i1 %1413, i32 2, i32 0
  %2294 = or i32 %2293, 1
  %2295 = uitofp i32 %2294 to float
  %2296 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %21, float %2291, float %2292, float %2295, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2297 = extractvalue %dx.types.ResRet.f32 %2296, 0
  %2298 = extractvalue %dx.types.ResRet.f32 %2296, 1
  %2299 = extractvalue %dx.types.ResRet.f32 %2296, 2
  %2300 = extractvalue %dx.types.ResRet.f32 %2296, 3
  %2301 = add nuw nsw i32 %2293, 2
  %2302 = uitofp i32 %2301 to float
  %2303 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %21, float %2291, float %2292, float %2302, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2304 = extractvalue %dx.types.ResRet.f32 %2303, 0
  %2305 = extractvalue %dx.types.ResRet.f32 %2303, 1
  %2306 = extractvalue %dx.types.ResRet.f32 %2303, 2
  %2307 = extractvalue %dx.types.ResRet.f32 %2303, 3
  %2308 = call float @dx.op.binary.f32(i32 35, float %2298, float %2299)  ; FMax(a,b)
  %2309 = call float @dx.op.binary.f32(i32 35, float %2297, float %2308)  ; FMax(a,b)
  %2310 = call float @dx.op.binary.f32(i32 35, float %2309, float %2300)  ; FMax(a,b)
  %2311 = call float @dx.op.binary.f32(i32 36, float %2305, float %2306)  ; FMin(a,b)
  %2312 = call float @dx.op.binary.f32(i32 36, float %2304, float %2311)  ; FMin(a,b)
  %2313 = call float @dx.op.binary.f32(i32 36, float %2312, float %2307)  ; FMin(a,b)
  %2314 = fmul fast float %2310, 2.550000e+02
  %2315 = fadd fast float %2314, 0x3F70101020000000
  %2316 = fptoui float %2315 to i32
  %2317 = fmul fast float %2313, 2.550000e+02
  %2318 = fadd fast float %2317, 0x3F70101020000000
  %2319 = fptoui float %2318 to i32
  %2320 = icmp ult i32 %2316, %2319
  br i1 %2320, label %2321, label %2489, !dx.controlflow.hints !97

; <label>:2321                                    ; preds = %2278
  %2322 = fadd fast float %2285, -4.000000e+00
  %2323 = call float @dx.op.binary.f32(i32 35, float %2322, float 0.000000e+00)  ; FMax(a,b)
  %2324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2325 = extractvalue %dx.types.CBufRet.f32 %2324, 0
  %2326 = fadd fast float %2325, %2323
  %2327 = extractvalue %dx.types.CBufRet.f32 %2324, 2
  %2328 = fmul fast float %2326, %2327
  %2329 = call float @dx.op.unary.f32(i32 23, float %2328)  ; Log(value)
  %2330 = extractvalue %dx.types.CBufRet.f32 %2324, 3
  %2331 = fmul fast float %2330, %2329
  %2332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2333 = extractvalue %dx.types.CBufRet.f32 %2332, 2
  %2334 = fmul fast float %2331, %2333
  %2335 = call float @dx.op.unary.f32(i32 7, float %2334)  ; Saturate(value)
  %2336 = select i1 %1418, float 1.000000e+00, float %2335
  %2337 = uitofp i32 %2316 to float
  %2338 = uitofp i32 %2319 to float
  %2339 = fadd fast float %2337, 5.000000e-01
  %2340 = fadd fast float %2338, 5.000000e-01
  %2341 = fmul fast float %2333, %2339
  %2342 = fmul fast float %2333, %2340
  %2343 = fadd fast float %2341, 0x3F0FFB4800000000
  %2344 = fadd fast float %2342, 0xBF0FFB4800000000
  %2345 = call float @dx.op.binary.f32(i32 35, float %2336, float %2343)  ; FMax(a,b)
  %2346 = call float @dx.op.binary.f32(i32 36, float %2345, float %2344)  ; FMin(a,b)
  %2347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2348 = extractvalue %dx.types.CBufRet.f32 %2347, 1
  %2349 = extractvalue %dx.types.CBufRet.f32 %2347, 2
  %2350 = extractvalue %dx.types.CBufRet.f32 %2347, 0
  %2351 = select i1 %1413, float %2350, float 0.000000e+00
  %2352 = fmul fast float %2348, %2346
  %2353 = fadd fast float %2351, %2352
  %2354 = fadd fast float %2351, %2349
  %2355 = fsub fast float %2348, %2349
  %2356 = fadd fast float %2355, %2351
  %2357 = call float @dx.op.binary.f32(i32 35, float %2353, float %2354)  ; FMax(a,b)
  %2358 = call float @dx.op.binary.f32(i32 36, float %2357, float %2356)  ; FMin(a,b)
  %2359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %20, float %2291, float %2292, float %2358, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2360 = extractvalue %dx.types.ResRet.f32 %2359, 0
  %2361 = extractvalue %dx.types.ResRet.f32 %2359, 1
  %2362 = extractvalue %dx.types.ResRet.f32 %2359, 2
  %2363 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %2364 = extractvalue %dx.types.CBufRet.i32 %2363, 0
  %2365 = extractvalue %dx.types.CBufRet.i32 %2363, 1
  %2366 = uitofp i32 %2364 to float
  %2367 = uitofp i32 %2365 to float
  %2368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %2369 = extractvalue %dx.types.CBufRet.f32 %2368, 0
  %2370 = extractvalue %dx.types.CBufRet.f32 %2368, 1
  %2371 = fmul fast float %2366, %2291
  %2372 = fmul fast float %2367, %2292
  %2373 = fadd fast float %2371, -5.000000e-01
  %2374 = fadd fast float %2372, -5.000000e-01
  %2375 = call float @dx.op.unary.f32(i32 22, float %2373)  ; Frc(value)
  %2376 = call float @dx.op.unary.f32(i32 22, float %2374)  ; Frc(value)
  %2377 = fmul fast float %2375, %2375
  %2378 = fmul fast float %2377, %2375
  %2379 = fsub fast float 3.000000e+00, %2375
  %2380 = fmul fast float %2377, %2379
  %2381 = fmul fast float %2375, 3.000000e+00
  %2382 = fmul fast float %2378, 3.000000e+00
  %2383 = fmul fast float %2377, 6.000000e+00
  %2384 = fsub fast float %2382, %2383
  %2385 = fadd fast float %2384, 4.000000e+00
  %2386 = fmul fast float %2385, 0x3FC5555560000000
  %2387 = fmul fast float %2378, -3.000000e+00
  %2388 = fadd fast float %2377, %2375
  %2389 = fmul fast float %2388, 3.000000e+00
  %2390 = fadd fast float %2387, 1.000000e+00
  %2391 = fadd fast float %2390, %2389
  %2392 = fmul fast float %2378, 0x3FC5555560000000
  %2393 = fmul fast float %2376, %2376
  %2394 = fmul fast float %2393, %2376
  %2395 = fsub fast float 3.000000e+00, %2376
  %2396 = fmul fast float %2393, %2395
  %2397 = fmul fast float %2376, 3.000000e+00
  %2398 = fmul fast float %2394, 3.000000e+00
  %2399 = fmul fast float %2393, 6.000000e+00
  %2400 = fsub fast float %2398, %2399
  %2401 = fadd fast float %2400, 4.000000e+00
  %2402 = fmul fast float %2401, 0x3FC5555560000000
  %2403 = fmul fast float %2394, -3.000000e+00
  %2404 = fadd fast float %2393, %2376
  %2405 = fmul fast float %2404, 3.000000e+00
  %2406 = fadd fast float %2403, 1.000000e+00
  %2407 = fadd fast float %2406, %2405
  %2408 = fmul fast float %2394, 0x3FC5555560000000
  %2409 = fadd fast float %2375, 1.000000e+00
  %2410 = fsub fast float 1.000000e+00, %2381
  %2411 = fadd fast float %2410, %2380
  %2412 = fadd fast float %2411, %2385
  %2413 = fmul fast float %2412, 0x3FC5555560000000
  %2414 = fdiv fast float %2386, %2413
  %2415 = fsub fast float %2409, %2414
  %2416 = fsub fast float 1.000000e+00, %2375
  %2417 = fadd fast float %2391, %2378
  %2418 = fmul fast float %2417, 0x3FC5555560000000
  %2419 = fdiv fast float %2392, %2418
  %2420 = fadd fast float %2416, %2419
  %2421 = fadd fast float %2376, 1.000000e+00
  %2422 = fsub fast float 1.000000e+00, %2397
  %2423 = fadd fast float %2422, %2396
  %2424 = fadd fast float %2423, %2401
  %2425 = fmul fast float %2424, 0x3FC5555560000000
  %2426 = fdiv fast float %2402, %2425
  %2427 = fsub fast float %2421, %2426
  %2428 = fsub fast float 1.000000e+00, %2376
  %2429 = fadd fast float %2407, %2394
  %2430 = fmul fast float %2429, 0x3FC5555560000000
  %2431 = fdiv fast float %2408, %2430
  %2432 = fadd fast float %2431, %2428
  %2433 = fmul fast float %2415, %2369
  %2434 = fsub fast float %2291, %2433
  %2435 = fmul fast float %2420, %2369
  %2436 = fadd fast float %2435, %2291
  %2437 = fmul fast float %2432, %2370
  %2438 = fadd fast float %2437, %2292
  %2439 = fmul fast float %2427, %2370
  %2440 = fsub fast float %2292, %2439
  %2441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %2434, float %2440, float %2358, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2442 = extractvalue %dx.types.ResRet.f32 %2441, 0
  %2443 = extractvalue %dx.types.ResRet.f32 %2441, 1
  %2444 = extractvalue %dx.types.ResRet.f32 %2441, 2
  %2445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %2436, float %2440, float %2358, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2446 = extractvalue %dx.types.ResRet.f32 %2445, 0
  %2447 = extractvalue %dx.types.ResRet.f32 %2445, 1
  %2448 = extractvalue %dx.types.ResRet.f32 %2445, 2
  %2449 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %2434, float %2438, float %2358, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2450 = extractvalue %dx.types.ResRet.f32 %2449, 0
  %2451 = extractvalue %dx.types.ResRet.f32 %2449, 1
  %2452 = extractvalue %dx.types.ResRet.f32 %2449, 2
  %2453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %2436, float %2438, float %2358, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2454 = extractvalue %dx.types.ResRet.f32 %2453, 0
  %2455 = extractvalue %dx.types.ResRet.f32 %2453, 1
  %2456 = extractvalue %dx.types.ResRet.f32 %2453, 2
  %2457 = fsub fast float %2450, %2442
  %2458 = fsub fast float %2451, %2443
  %2459 = fsub fast float %2452, %2444
  %2460 = fmul fast float %2457, %2430
  %2461 = fmul fast float %2458, %2430
  %2462 = fmul fast float %2459, %2430
  %2463 = fadd fast float %2460, %2442
  %2464 = fadd fast float %2461, %2443
  %2465 = fadd fast float %2462, %2444
  %2466 = fsub fast float %2454, %2446
  %2467 = fsub fast float %2455, %2447
  %2468 = fsub fast float %2456, %2448
  %2469 = fmul fast float %2466, %2430
  %2470 = fmul fast float %2467, %2430
  %2471 = fmul fast float %2468, %2430
  %2472 = fsub fast float %2446, %2463
  %2473 = fadd fast float %2472, %2469
  %2474 = fsub fast float %2447, %2464
  %2475 = fadd fast float %2474, %2470
  %2476 = fsub fast float %2448, %2465
  %2477 = fadd fast float %2476, %2471
  %2478 = fmul fast float %2473, %2418
  %2479 = fmul fast float %2475, %2418
  %2480 = fmul fast float %2477, %2418
  %2481 = fadd fast float %2478, %2463
  %2482 = fadd fast float %2479, %2464
  %2483 = fadd fast float %2480, %2465
  %2484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2485 = extractvalue %dx.types.CBufRet.f32 %2484, 1
  %2486 = fmul fast float %2481, %2485
  %2487 = fmul fast float %2482, %2485
  %2488 = fmul fast float %2483, %2485
  br label %2489

; <label>:2489                                    ; preds = %2321, %2278
  %2490 = phi float [ %2360, %2321 ], [ 1.000000e+00, %2278 ]
  %2491 = phi float [ %2361, %2321 ], [ 1.000000e+00, %2278 ]
  %2492 = phi float [ %2362, %2321 ], [ 1.000000e+00, %2278 ]
  %2493 = phi float [ %2486, %2321 ], [ 0.000000e+00, %2278 ]
  %2494 = phi float [ %2487, %2321 ], [ 0.000000e+00, %2278 ]
  %2495 = phi float [ %2488, %2321 ], [ 0.000000e+00, %2278 ]
  %2496 = fmul fast float %2490, %2282
  %2497 = fmul fast float %2491, %2283
  %2498 = fmul fast float %2492, %2284
  %2499 = fmul fast float %2490, %2279
  %2500 = fmul fast float %2491, %2280
  %2501 = fmul fast float %2492, %2281
  %2502 = fadd fast float %2493, %2499
  %2503 = fadd fast float %2494, %2500
  %2504 = fadd fast float %2495, %2501
  %2505 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %1366, i32 %1367, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2506 = extractvalue %dx.types.ResRet.f32 %2505, 0
  %2507 = extractvalue %dx.types.ResRet.f32 %2505, 1
  %2508 = extractvalue %dx.types.ResRet.f32 %2505, 2
  %2509 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2510 = extractvalue %dx.types.CBufRet.i32 %2509, 3
  %2511 = and i32 %2510, 3
  %2512 = icmp ne i32 %2511, 0
  %2513 = and i32 %2510, 4
  %2514 = icmp ne i32 %2513, 0
  %2515 = and i1 %2512, %2514
  br i1 %2515, label %2516, label %2523, !dx.controlflow.hints !98

; <label>:2516                                    ; preds = %2489
  %2517 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %21, float %1389, float %1390, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2518 = extractvalue %dx.types.ResRet.f32 %2517, 0
  %2519 = fsub fast float 1.000000e+00, %2518
  %2520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %2521 = extractvalue %dx.types.CBufRet.f32 %2520, 0
  %2522 = fcmp fast olt float %2519, %2521
  br label %2526

; <label>:2523                                    ; preds = %2489
  %2524 = icmp eq i32 %2513, 0
  %2525 = and i1 %2512, %2524
  br label %2526

; <label>:2526                                    ; preds = %2523, %2516
  %2527 = phi i1 [ %2522, %2516 ], [ %2525, %2523 ]
  %2528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2529 = extractvalue %dx.types.CBufRet.f32 %2528, 0
  br i1 %2527, label %2530, label %2549, !dx.controlflow.hints !99

; <label>:2530                                    ; preds = %2526
  %2531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2532 = extractvalue %dx.types.CBufRet.f32 %2531, 3
  %2533 = call float @dx.op.dot3.f32(i32 55, float %2496, float %2497, float %2498, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2534 = fmul fast float %2533, %2506
  %2535 = call float @dx.op.dot3.f32(i32 55, float %2502, float %2503, float %2504, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2536 = fmul fast float %2529, %2535
  %2537 = fadd fast float %2536, %2534
  br i1 %2515, label %2538, label %2544, !dx.controlflow.hints !100

; <label>:2538                                    ; preds = %2530
  %2539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2540 = extractvalue %dx.types.CBufRet.f32 %2539, 1
  %2541 = fadd fast float %2496, -1.000000e+00
  %2542 = fmul fast float %2540, %2541
  %2543 = fadd fast float %2542, 1.000000e+00
  br label %2544

; <label>:2544                                    ; preds = %2538, %2530
  %2545 = phi float [ %2543, %2538 ], [ %2496, %2530 ]
  %2546 = fsub fast float %2507, %2532
  %2547 = fmul fast float %2545, %2546
  %2548 = fadd fast float %2547, %2532
  br label %2559

; <label>:2549                                    ; preds = %2526
  %2550 = fmul fast float %2506, %2496
  %2551 = fmul fast float %2507, %2497
  %2552 = fmul fast float %2508, %2498
  %2553 = fmul fast float %2529, %2502
  %2554 = fmul fast float %2529, %2503
  %2555 = fmul fast float %2529, %2504
  %2556 = fadd fast float %2553, %2550
  %2557 = fadd fast float %2554, %2551
  %2558 = fadd fast float %2555, %2552
  br label %2559

; <label>:2559                                    ; preds = %2549, %2544
  %2560 = phi float [ %2537, %2544 ], [ %2556, %2549 ]
  %2561 = phi float [ %2548, %2544 ], [ %2557, %2549 ]
  %2562 = phi float [ %2508, %2544 ], [ %2558, %2549 ]
  %2563 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %2564 = extractvalue %dx.types.CBufRet.i32 %2563, 1
  %2565 = shl i32 %2564, 1
  %2566 = lshr i32 %1367, 5
  %2567 = extractvalue %dx.types.CBufRet.i32 %2563, 0
  %2568 = mul i32 %2567, %2566
  %2569 = add i32 %2565, %1273
  %2570 = add i32 %2569, %2568
  %2571 = shl i32 %2570, 2
  %2572 = and i32 %1367, 24
  %2573 = or i32 %2572, %1278
  %2574 = shl i32 1, %2573
  %2575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2571, i32 undef)  ; BufferLoad(srv,index,wot)
  %2576 = extractvalue %dx.types.ResRet.i32 %2575, 0
  %2577 = and i32 %2576, %2574
  %2578 = icmp eq i32 %2577, 0
  br i1 %2578, label %2594, label %2579, !dx.controlflow.hints !101

; <label>:2579                                    ; preds = %2559
  %2580 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %1366, i32 %1367, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2581 = extractvalue %dx.types.ResRet.f32 %2580, 0
  %2582 = fcmp fast ogt float %2581, 0.000000e+00
  br i1 %2582, label %2583, label %2594, !dx.controlflow.hints !102

; <label>:2583                                    ; preds = %2579
  %2584 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %1366, i32 %1367, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2585 = extractvalue %dx.types.ResRet.f32 %2584, 0
  %2586 = extractvalue %dx.types.ResRet.f32 %2584, 1
  %2587 = extractvalue %dx.types.ResRet.f32 %2584, 2
  %2588 = extractvalue %dx.types.ResRet.f32 %2584, 3
  %2589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %2590 = extractvalue %dx.types.CBufRet.f32 %2589, 2
  %2591 = fmul fast float %2590, %2585
  %2592 = fmul fast float %2590, %2586
  %2593 = fmul fast float %2590, %2587
  br label %2594

; <label>:2594                                    ; preds = %2583, %2579, %2559
  %2595 = phi float [ %2591, %2583 ], [ 0.000000e+00, %2579 ], [ 0.000000e+00, %2559 ]
  %2596 = phi float [ %2592, %2583 ], [ 0.000000e+00, %2579 ], [ 0.000000e+00, %2559 ]
  %2597 = phi float [ %2593, %2583 ], [ 0.000000e+00, %2579 ], [ 0.000000e+00, %2559 ]
  %2598 = phi float [ %2588, %2583 ], [ 0.000000e+00, %2579 ], [ 0.000000e+00, %2559 ]
  %2599 = fsub fast float 1.000000e+00, %2598
  %2600 = fmul fast float %2599, %2560
  %2601 = fmul fast float %2599, %2561
  %2602 = fmul fast float %2599, %2562
  %2603 = fadd fast float %2600, %2595
  %2604 = fadd fast float %2601, %2596
  %2605 = fadd fast float %2602, %2597
  %2606 = fadd fast float %1401, 0x3FE3C6EF40000000
  %2607 = call float @dx.op.unary.f32(i32 22, float %2606)  ; Frc(value)
  %2608 = call float @dx.op.unary.f32(i32 23, float %2603)  ; Log(value)
  %2609 = fadd fast float %2608, -7.000000e+00
  %2610 = call float @dx.op.unary.f32(i32 21, float %2609)  ; Exp(value)
  %2611 = fmul fast float %2607, 2.000000e+00
  %2612 = fadd fast float %2611, -1.000000e+00
  %2613 = fmul fast float %2610, %2612
  %2614 = fcmp fast ogt float %2603, 0.000000e+00
  %2615 = select i1 %2614, float %2613, float 0.000000e+00
  %2616 = fadd fast float %2615, %2603
  %2617 = fadd fast float %1401, 0x3FF3C6EF40000000
  %2618 = call float @dx.op.unary.f32(i32 22, float %2617)  ; Frc(value)
  %2619 = call float @dx.op.unary.f32(i32 23, float %2604)  ; Log(value)
  %2620 = fadd fast float %2619, -7.000000e+00
  %2621 = call float @dx.op.unary.f32(i32 21, float %2620)  ; Exp(value)
  %2622 = fmul fast float %2618, 2.000000e+00
  %2623 = fadd fast float %2622, -1.000000e+00
  %2624 = fmul fast float %2621, %2623
  %2625 = fcmp fast ogt float %2604, 0.000000e+00
  %2626 = select i1 %2625, float %2624, float 0.000000e+00
  %2627 = fadd fast float %2626, %2604
  %2628 = fadd fast float %1401, 0x3FFDAA66E0000000
  %2629 = call float @dx.op.unary.f32(i32 22, float %2628)  ; Frc(value)
  %2630 = call float @dx.op.unary.f32(i32 23, float %2605)  ; Log(value)
  %2631 = fadd fast float %2630, -6.000000e+00
  %2632 = call float @dx.op.unary.f32(i32 21, float %2631)  ; Exp(value)
  %2633 = fmul fast float %2629, 2.000000e+00
  %2634 = fadd fast float %2633, -1.000000e+00
  %2635 = fmul fast float %2632, %2634
  %2636 = fcmp fast ogt float %2605, 0.000000e+00
  %2637 = select i1 %2636, float %2635, float 0.000000e+00
  %2638 = fadd fast float %2637, %2605
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %1366, i32 %1367, i32 undef, float %2616, float %2627, float %2638, float %2616, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2639 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2640 = extractvalue %dx.types.CBufRet.i32 %2639, 0
  %2641 = and i32 %2640, 1
  %2642 = icmp ne i32 %2641, 0
  %2643 = or i32 %1367, %1359
  %2644 = and i32 %2643, 1
  %2645 = icmp eq i32 %2644, 0
  %2646 = and i1 %2645, %2642
  br i1 %2646, label %2647, label %2650, !dx.controlflow.hints !103

; <label>:2647                                    ; preds = %2594
  %2648 = and i32 %45, 2147483647
  %2649 = lshr i32 %1367, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2648, i32 %2649, i32 undef, float %2506, float %2507, float %2508, float %2506, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2650

; <label>:2650                                    ; preds = %2647, %2594
  %2651 = fadd fast float %2603, %1354
  %2652 = fadd fast float %2604, %1355
  %2653 = fadd fast float %2605, %1356
  %2654 = fadd fast float %1357, 1.000000e+00
  br label %1376

; <label>:2655                                    ; preds = %1376
  %2656 = fdiv fast float 1.000000e+00, %1380
  %2657 = fmul fast float %2656, %1377
  %2658 = fmul fast float %2656, %1378
  %2659 = fmul fast float %2656, %1379
  %2660 = call float @dx.op.dot3.f32(i32 55, float %2657, float %2658, float %2659, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2661 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %2662 = add i32 %2661, -1
  %2663 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %2664 = and i32 %2661, 1
  %2665 = xor i32 %2664, 1
  %2666 = and i32 %2662, %2663
  %2667 = xor i32 %2665, %2666
  %2668 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2660, i32 %2667)  ; WaveReadLaneAt(value,lane)
  %2669 = call float @dx.op.binary.f32(i32 36, float %2660, float %2668)  ; FMin(a,b)
  %2670 = add i32 %2661, 15
  %2671 = and i32 %2670, 8
  %2672 = xor i32 %2666, %2671
  %2673 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2669, i32 %2672)  ; WaveReadLaneAt(value,lane)
  %2674 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2660, i32 %2667)  ; WaveReadLaneAt(value,lane)
  %2675 = call float @dx.op.binary.f32(i32 35, float %2660, float %2674)  ; FMax(a,b)
  %2676 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2675, i32 %2672)  ; WaveReadLaneAt(value,lane)
  %2677 = or i32 %45, %46
  %2678 = and i32 %2677, 1
  %2679 = icmp eq i32 %2678, 0
  br i1 %2679, label %2680, label %2722, !dx.controlflow.hints !136

; <label>:2680                                    ; preds = %2655
  %2681 = call float @dx.op.binary.f32(i32 35, float %2675, float %2676)  ; FMax(a,b)
  %2682 = call float @dx.op.binary.f32(i32 36, float %2669, float %2673)  ; FMin(a,b)
  %2683 = lshr i32 %45, 1
  %2684 = lshr i32 %46, 1
  %2685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2686 = extractvalue %dx.types.CBufRet.f32 %2685, 3
  %2687 = fmul fast float %2686, 3.200000e+01
  %2688 = fmul fast float %2682, 0x3F1A36E2E0000000
  %2689 = fmul fast float %2688, %2687
  %2690 = call float @dx.op.unary.f32(i32 23, float %2689)  ; Log(value)
  %2691 = fmul fast float %2690, 0x3FC4640000000000
  %2692 = call float @dx.op.unary.f32(i32 21, float %2691)  ; Exp(value)
  %2693 = fmul fast float %2692, 0x4032DA0000000000
  %2694 = fadd fast float %2693, 8.359375e-01
  %2695 = fmul fast float %2692, 1.868750e+01
  %2696 = fadd fast float %2695, 1.000000e+00
  %2697 = fdiv fast float %2694, %2696
  %2698 = call float @dx.op.unary.f32(i32 23, float %2697)  ; Log(value)
  %2699 = fmul fast float %2698, 7.884375e+01
  %2700 = call float @dx.op.unary.f32(i32 21, float %2699)  ; Exp(value)
  %2701 = fmul fast float %2681, 0x3F1A36E2E0000000
  %2702 = fmul fast float %2701, %2687
  %2703 = call float @dx.op.unary.f32(i32 23, float %2702)  ; Log(value)
  %2704 = fmul fast float %2703, 0x3FC4640000000000
  %2705 = call float @dx.op.unary.f32(i32 21, float %2704)  ; Exp(value)
  %2706 = fmul fast float %2705, 0x4032DA0000000000
  %2707 = fadd fast float %2706, 8.359375e-01
  %2708 = fmul fast float %2705, 1.868750e+01
  %2709 = fadd fast float %2708, 1.000000e+00
  %2710 = fdiv fast float %2707, %2709
  %2711 = call float @dx.op.unary.f32(i32 23, float %2710)  ; Log(value)
  %2712 = fmul fast float %2711, 7.884375e+01
  %2713 = call float @dx.op.unary.f32(i32 21, float %2712)  ; Exp(value)
  %2714 = fmul fast float %2700, 0x40778E40E0000000
  %2715 = fmul fast float %2713, 0x40778E40E0000000
  %2716 = call float @dx.op.unary.f32(i32 26, float %2714)  ; Round_ne(value)
  %2717 = call float @dx.op.unary.f32(i32 26, float %2715)  ; Round_ne(value)
  %2718 = fmul fast float %2716, 0x3F70101020000000
  %2719 = fmul fast float %2717, 0x3F70101020000000
  %2720 = call float @dx.op.unary.f32(i32 7, float %2718)  ; Saturate(value)
  %2721 = call float @dx.op.unary.f32(i32 7, float %2719)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %2683, i32 %2684, i32 undef, float %2720, float %2721, float %2720, float %2720, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2722

; <label>:2722                                    ; preds = %2680, %2655
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

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

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
!dx.entryPoints = !{!34}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !23, !27, !30}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22}
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
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 21, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 22, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 12, i32 1, i32 2, i32 0, !7}
!23 = !{!24, !25, !26}
!24 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!25 = !{i32 1, %"class.RWTexture2D<vector<float, 2> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!26 = !{i32 2, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!27 = !{!28, !29}
!28 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!29 = !{i32 1, %PostOpaqueConstants* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!30 = !{!31, !32, !33}
!31 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!32 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!33 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!34 = !{void ()* @cs_post_opaque_processes_luma_subsampletile_dmfpscale, !"cs_post_opaque_processes_luma_subsampletile_dmfpscale", null, !4, !35}
!35 = !{i32 0, i64 524560, i32 4, !36}
!36 = !{i32 8, i32 8, i32 1}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = !{!50, !50, i64 0}
!50 = !{!"float", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = !{!54, !56, !58, !59, !61, !62, !63}
!54 = distinct !{!54, !55, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!55 = distinct !{!55, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!56 = distinct !{!56, !57, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!57 = distinct !{!57, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!58 = distinct !{!58, !57, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!59 = distinct !{!59, !60, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %extinction"}
!60 = distinct !{!60, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z"}
!61 = distinct !{!61, !60, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %scattering"}
!62 = distinct !{!62, !60, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %thermalFogExtinction"}
!63 = distinct !{!63, !64, !"\01?PostOpaqueProcessesQuadLoop@@YAXV?$vector@I$01@@00V?$vector@M$03@@AIAV?$vector@M$02@@_N33V?$vector@_N$03@@@Z: %colorQuadAvg"}
!64 = distinct !{!64, !"\01?PostOpaqueProcessesQuadLoop@@YAXV?$vector@I$01@@00V?$vector@M$03@@AIAV?$vector@M$02@@_N33V?$vector@_N$03@@@Z"}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = !{!67}
!67 = distinct !{!67, !68, !"\01?sort@@YAXAIAM00@Z: %c"}
!68 = distinct !{!68, !"\01?sort@@YAXAIAM00@Z"}
!69 = !{!70, !71, !54, !56, !58, !59, !61, !62, !63}
!70 = distinct !{!70, !68, !"\01?sort@@YAXAIAM00@Z: %a"}
!71 = distinct !{!71, !68, !"\01?sort@@YAXAIAM00@Z: %b"}
!72 = !{!71}
!73 = !{!70, !67, !54, !56, !58, !59, !61, !62, !63}
!74 = !{!70}
!75 = !{!71, !67, !54, !56, !58, !59, !61, !62, !63}
!76 = !{!77}
!77 = distinct !{!77, !78, !"\01?sort@@YAXAIAM00@Z: %c"}
!78 = distinct !{!78, !"\01?sort@@YAXAIAM00@Z"}
!79 = !{!80, !81, !54, !56, !58, !59, !61, !62, !63}
!80 = distinct !{!80, !78, !"\01?sort@@YAXAIAM00@Z: %a"}
!81 = distinct !{!81, !78, !"\01?sort@@YAXAIAM00@Z: %b"}
!82 = !{!81}
!83 = !{!80, !77, !54, !56, !58, !59, !61, !62, !63}
!84 = !{!80}
!85 = !{!81, !77, !54, !56, !58, !59, !61, !62, !63}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = !{!63}
!106 = !{!107, !109, !111, !112, !114, !115, !63}
!107 = distinct !{!107, !108, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!108 = distinct !{!108, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!109 = distinct !{!109, !110, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!110 = distinct !{!110, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!111 = distinct !{!111, !110, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!112 = distinct !{!112, !113, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %extinction"}
!113 = distinct !{!113, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z"}
!114 = distinct !{!114, !113, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %scattering"}
!115 = distinct !{!115, !113, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %thermalFogExtinction"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"\01?sort@@YAXAIAM00@Z: %c"}
!118 = distinct !{!118, !"\01?sort@@YAXAIAM00@Z"}
!119 = !{!120, !121, !107, !109, !111, !112, !114, !115, !63}
!120 = distinct !{!120, !118, !"\01?sort@@YAXAIAM00@Z: %a"}
!121 = distinct !{!121, !118, !"\01?sort@@YAXAIAM00@Z: %b"}
!122 = !{!121}
!123 = !{!120, !117, !107, !109, !111, !112, !114, !115, !63}
!124 = !{!120}
!125 = !{!121, !117, !107, !109, !111, !112, !114, !115, !63}
!126 = !{!127}
!127 = distinct !{!127, !128, !"\01?sort@@YAXAIAM00@Z: %c"}
!128 = distinct !{!128, !"\01?sort@@YAXAIAM00@Z"}
!129 = !{!130, !131, !107, !109, !111, !112, !114, !115, !63}
!130 = distinct !{!130, !128, !"\01?sort@@YAXAIAM00@Z: %a"}
!131 = distinct !{!131, !128, !"\01?sort@@YAXAIAM00@Z: %b"}
!132 = !{!131}
!133 = !{!130, !127, !107, !109, !111, !112, !114, !115, !63}
!134 = !{!130}
!135 = !{!131, !127, !107, !109, !111, !112, !114, !115, !63}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 2}

