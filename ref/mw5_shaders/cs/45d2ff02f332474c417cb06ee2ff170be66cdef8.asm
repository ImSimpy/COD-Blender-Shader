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
; shader hash: cb19c5b8f1fbdc15cd2eceeee83b73f2
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

@"\01?sharedLuma@@3PAMA" = external addrspace(3) global [64 x float], align 4

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
  %28 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %29 = alloca [3 x float], align 4
  %30 = alloca [3 x float], align 4
  %31 = alloca [3 x float], align 4
  %32 = alloca [3 x float], align 4
  %33 = alloca [4 x float], align 4
  %34 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.i32 %34, 0
  %36 = extractvalue %dx.types.CBufRet.i32 %34, 1
  %37 = mul i32 %36, %35
  %38 = add i32 %37, %27
  %39 = shl i32 %38, 2
  %40 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %39, i32 undef)  ; BufferLoad(srv,index,wot)
  %41 = extractvalue %dx.types.ResRet.i32 %40, 0
  %42 = lshr i32 %41, 16
  %43 = shl i32 %41, 3
  %44 = and i32 %43, 524280
  %45 = shl nuw nsw i32 %42, 3
  %46 = add i32 %44, %25
  %47 = add i32 %45, %26
  %48 = shl i32 %46, 1
  %49 = shl i32 %47, 1
  %50 = uitofp i32 %48 to float
  %51 = uitofp i32 %49 to float
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 2
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 3
  %55 = fmul fast float %50, %53
  %56 = fmul fast float %51, %54
  %57 = fadd fast float %55, %53
  %58 = fadd fast float %56, %54
  %59 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %22, float %57, float %58, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %60 = extractvalue %dx.types.ResRet.f32 %59, 0
  %61 = extractvalue %dx.types.ResRet.f32 %59, 1
  %62 = extractvalue %dx.types.ResRet.f32 %59, 2
  %63 = extractvalue %dx.types.ResRet.f32 %59, 3
  %64 = fcmp fast ogt float %63, -1.000000e+00
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
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
  %90 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
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
  br i1 %101, label %967, label %106, !dx.controlflow.hints !37

; <label>:106                                     ; preds = %0
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 170)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = select i1 %103, float %108, float %70
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 3
  %113 = fmul fast float %104, 2.000000e+00
  %114 = fmul fast float %113, %111
  %115 = fmul fast float %105, 2.000000e+00
  %116 = fmul fast float %115, %112
  %117 = fsub fast float 1.000000e+00, %114
  %118 = fsub fast float 1.000000e+00, %116
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = fmul fast float %117, %120
  %124 = fmul fast float %117, %121
  %125 = fmul fast float %117, %122
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 0
  %128 = extractvalue %dx.types.CBufRet.f32 %126, 1
  %129 = extractvalue %dx.types.CBufRet.f32 %126, 2
  %130 = fmul fast float %118, %127
  %131 = fmul fast float %118, %128
  %132 = fmul fast float %118, %129
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 163)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 1
  %151 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %152 = extractvalue %dx.types.CBufRet.f32 %148, 3
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %156 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %157 = extractvalue %dx.types.CBufRet.f32 %153, 3
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 0
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 1
  %161 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %162 = extractvalue %dx.types.CBufRet.f32 %158, 3
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 0
  %165 = extractvalue %dx.types.CBufRet.f32 %163, 1
  %166 = extractvalue %dx.types.CBufRet.f32 %163, 2
  %167 = extractvalue %dx.types.CBufRet.f32 %163, 3
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 3
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %103, label %184, label %196, !dx.controlflow.hints !38

; <label>:184                                     ; preds = %106
  %185 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %186 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 187)  ; CBufferLoadLegacy(handle,regIndex)
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
  %201 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.i32 %201, 1
  %203 = and i32 %202, 1
  %204 = icmp ne i32 %203, 0
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.f32 %205, 2
  %207 = fcmp fast ogt float %206, 0.000000e+00
  %208 = and i1 %204, %207
  br i1 %208, label %209, label %618, !dx.controlflow.hints !39

; <label>:209                                     ; preds = %196
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 3
  %212 = select i1 %103, float %211, float %179
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 3
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.f32 %215, 2
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 2
  %219 = fsub fast float %216, %218
  %220 = and i32 %202, 2
  %221 = extractvalue %dx.types.CBufRet.i32 %201, 0
  %222 = call i32 @dx.op.binary.i32(i32 40, i32 %221, i32 3)  ; UMin(a,b)
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.f32 %223, 0
  %225 = extractvalue %dx.types.CBufRet.f32 %223, 1
  %226 = extractvalue %dx.types.CBufRet.f32 %217, 0
  %227 = extractvalue %dx.types.CBufRet.f32 %217, 1
  %228 = fsub fast float %224, %226
  %229 = fsub fast float %225, %227
  %230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %245, label %246, label %261, !dx.controlflow.hints !40

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
  br i1 %265, label %266, label %268, !dx.controlflow.hints !41

; <label>:266                                     ; preds = %261
  %267 = fcmp fast oeq float %263, %262
  br i1 %267, label %571, label %269, !dx.controlflow.hints !42

; <label>:268                                     ; preds = %261
  br i1 %232, label %571, label %269, !dx.controlflow.hints !43

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
  br i1 %282, label %284, label %341, !dx.controlflow.hints !44

; <label>:284                                     ; preds = %269
  %285 = icmp eq i32 %220, 0
  br i1 %283, label %286, label %330, !dx.controlflow.hints !45

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
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 0
  %301 = extractvalue %dx.types.CBufRet.f32 %299, 1
  %302 = extractvalue %dx.types.CBufRet.f32 %299, 2
  %303 = extractvalue %dx.types.CBufRet.f32 %299, 3
  %304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %103, label %571, label %318, !dx.controlflow.hints !46

; <label>:318                                     ; preds = %286
  %319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %285, label %331, label %352, !dx.controlflow.hints !47

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
  br i1 %283, label %342, label %352, !dx.controlflow.hints !48

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
  store float -1.000000e+00, float* %357, align 4, !tbaa !49, !noalias !53
  %358 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 1
  store float -1.000000e+00, float* %358, align 4, !tbaa !49, !noalias !53
  %359 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 2
  store float -1.000000e+00, float* %359, align 4, !tbaa !49, !noalias !53
  %360 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 0
  store float -1.000000e+00, float* %360, align 4, !tbaa !49, !noalias !53
  %361 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 1
  store float -1.000000e+00, float* %361, align 4, !tbaa !49, !noalias !53
  %362 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 2
  store float -1.000000e+00, float* %362, align 4, !tbaa !49, !noalias !53
  %363 = icmp sgt i32 %222, 0
  br i1 %363, label %364, label %425

; <label>:364                                     ; preds = %352
  br label %365

; <label>:365                                     ; preds = %414, %364
  %366 = phi i32 [ %415, %414 ], [ 0, %364 ]
  %367 = phi i32 [ %416, %414 ], [ 0, %364 ]
  %368 = add nuw i32 %367, 171
  %369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %368)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.f32 %369, 0
  %371 = extractvalue %dx.types.CBufRet.f32 %369, 1
  %372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %388, label %389, label %404, !dx.controlflow.hints !40

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
  br i1 %407, label %408, label %414, !dx.controlflow.hints !65

; <label>:408                                     ; preds = %404
  %409 = call float @dx.op.binary.f32(i32 35, float %353, float %406)  ; FMax(a,b)
  %410 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %367
  store float %409, float* %410, align 4, !tbaa !49, !noalias !53
  %411 = call float @dx.op.binary.f32(i32 35, float %353, float %405)  ; FMax(a,b)
  %412 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %367
  store float %411, float* %412, align 4, !tbaa !49, !noalias !53
  %413 = add nsw i32 %366, 1
  br label %414

; <label>:414                                     ; preds = %408, %404
  %415 = phi i32 [ %413, %408 ], [ %366, %404 ]
  %416 = add nuw nsw i32 %367, 1
  %417 = icmp eq i32 %416, %222
  br i1 %417, label %418, label %365

; <label>:418                                     ; preds = %414
  %419 = load float, float* %359, align 4, !tbaa !49, !alias.scope !66, !noalias !69
  %420 = load float, float* %358, align 4, !tbaa !49, !alias.scope !72, !noalias !73
  %421 = load float, float* %357, align 4, !tbaa !49, !alias.scope !74, !noalias !75
  %422 = load float, float* %362, align 4, !tbaa !49, !alias.scope !76, !noalias !79
  %423 = load float, float* %361, align 4, !tbaa !49, !alias.scope !82, !noalias !83
  %424 = load float, float* %360, align 4, !tbaa !49, !alias.scope !84, !noalias !85
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
  store float %434, float* %357, align 4, !tbaa !49, !alias.scope !74, !noalias !75
  store float %438, float* %358, align 4, !tbaa !49, !alias.scope !72, !noalias !73
  store float %440, float* %359, align 4, !tbaa !49, !alias.scope !66, !noalias !69
  %441 = call float @dx.op.binary.f32(i32 36, float %427, float %428)  ; FMin(a,b)
  %442 = call float @dx.op.binary.f32(i32 36, float %426, float %441)  ; FMin(a,b)
  %443 = call float @dx.op.binary.f32(i32 35, float %426, float %427)  ; FMax(a,b)
  %444 = call float @dx.op.binary.f32(i32 36, float %443, float %428)  ; FMin(a,b)
  %445 = call float @dx.op.binary.f32(i32 36, float %426, float %427)  ; FMin(a,b)
  %446 = call float @dx.op.binary.f32(i32 35, float %445, float %444)  ; FMax(a,b)
  %447 = call float @dx.op.binary.f32(i32 35, float %427, float %428)  ; FMax(a,b)
  %448 = call float @dx.op.binary.f32(i32 35, float %426, float %447)  ; FMax(a,b)
  store float %442, float* %360, align 4, !tbaa !49, !alias.scope !84, !noalias !85
  store float %446, float* %361, align 4, !tbaa !49, !alias.scope !82, !noalias !83
  store float %448, float* %362, align 4, !tbaa !49, !alias.scope !76, !noalias !79
  %449 = sub nsw i32 3, %432
  %450 = icmp sgt i32 %449, 2
  br i1 %450, label %451, label %489, !dx.controlflow.hints !86

; <label>:451                                     ; preds = %425
  %452 = icmp eq i32 %220, 0
  %453 = fsub fast float %270, %354
  %454 = select i1 %452, float %453, float %354
  %455 = extractvalue %dx.types.CBufRet.f32 %210, 0
  %456 = extractvalue %dx.types.CBufRet.f32 %210, 1
  %457 = extractvalue %dx.types.CBufRet.f32 %210, 2
  %458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %459 = extractvalue %dx.types.CBufRet.f32 %458, 0
  %460 = extractvalue %dx.types.CBufRet.f32 %458, 1
  %461 = extractvalue %dx.types.CBufRet.f32 %458, 2
  %462 = extractvalue %dx.types.CBufRet.f32 %458, 3
  %463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %103, label %571, label %477, !dx.controlflow.hints !46

; <label>:477                                     ; preds = %451
  %478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
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
  %491 = load float, float* %490, align 4, !tbaa !49, !noalias !53
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
  %502 = load float, float* %501, align 4, !tbaa !49, !noalias !53
  %503 = icmp slt i32 %500, 2
  %504 = add nsw i32 %500, 1
  %505 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %504
  %506 = load float, float* %505, align 4, !tbaa !49, !noalias !53
  %507 = select i1 %503, float %506, float %270
  %508 = call float @dx.op.binary.f32(i32 36, float %507, float %502)  ; FMin(a,b)
  %509 = call float @dx.op.binary.f32(i32 36, float %356, float %508)  ; FMin(a,b)
  %510 = icmp eq i32 %220, 0
  %511 = fadd fast float %509, %499
  %512 = fmul fast float %511, %182
  %513 = fadd fast float %512, %214
  br i1 %510, label %519, label %514, !dx.controlflow.hints !87

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
  %540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %541 = extractvalue %dx.types.CBufRet.f32 %540, 0
  %542 = extractvalue %dx.types.CBufRet.f32 %540, 1
  %543 = extractvalue %dx.types.CBufRet.f32 %540, 2
  %544 = extractvalue %dx.types.CBufRet.f32 %540, 3
  %545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %103, label %571, label %559, !dx.controlflow.hints !46

; <label>:559                                     ; preds = %532
  %560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
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
  %578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %579 = extractvalue %dx.types.CBufRet.f32 %578, 2
  %580 = fsub fast float %216, %579
  %581 = fcmp fast olt float %577, -2.000000e+01
  %582 = call float @dx.op.unary.f32(i32 21, float %577)  ; Exp(value)
  %583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %584 = extractvalue %dx.types.CBufRet.f32 %583, 2
  %585 = extractvalue %dx.types.CBufRet.f32 %583, 3
  %586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
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
  %624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %625 = extractvalue %dx.types.CBufRet.f32 %624, 1
  %626 = fsub fast float 1.000000e+00, %620
  %627 = fmul fast float %626, %197
  %628 = fmul fast float %627, %625
  %629 = fsub fast float %197, %628
  br i1 %175, label %630, label %662, !dx.controlflow.hints !88

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
  %669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %21, float %668, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %670 = extractvalue %dx.types.ResRet.f32 %669, 0
  %671 = fsub fast float %664, %670
  %672 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %671)  ; FMax(a,b)
  %673 = fmul fast float %199, %157
  %674 = call float @dx.op.unary.f32(i32 6, float %673)  ; FAbs(value)
  %675 = fcmp fast ogt float %674, 0x3EB0C6F7A0000000
  br i1 %675, label %676, label %682, !dx.controlflow.hints !89

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
  br i1 %103, label %695, label %703, !dx.controlflow.hints !90

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
  br i1 %208, label %740, label %938, !dx.controlflow.hints !91

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
  br i1 %762, label %763, label %776, !dx.controlflow.hints !92

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
  br i1 %781, label %782, label %789, !dx.controlflow.hints !93

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
  br i1 %792, label %793, label %800, !dx.controlflow.hints !93

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
  br i1 %803, label %804, label %811, !dx.controlflow.hints !93

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
  br i1 %830, label %831, label %838, !dx.controlflow.hints !94

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
  br i1 %841, label %842, label %849, !dx.controlflow.hints !94

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
  br i1 %852, label %853, label %860, !dx.controlflow.hints !94

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
  br i1 %863, label %864, label %884, !dx.controlflow.hints !95

; <label>:864                                     ; preds = %860
  %865 = fsub fast float 1.000000e+00, %761
  %866 = fmul fast float %777, %865
  %867 = fmul fast float %778, %865
  %868 = fmul fast float %779, %865
  %869 = fmul fast float %780, %865
  %870 = fcmp fast une float %869, 0.000000e+00
  br i1 %870, label %871, label %922, !dx.controlflow.hints !96

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
  br i1 %892, label %893, label %900, !dx.controlflow.hints !94

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
  br i1 %903, label %904, label %911, !dx.controlflow.hints !94

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
  br i1 %914, label %915, label %922, !dx.controlflow.hints !94

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
  %947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %21, float %945, float %946, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %948 = extractvalue %dx.types.ResRet.f32 %947, 0
  %949 = extractvalue %dx.types.ResRet.f32 %947, 1
  %950 = extractvalue %dx.types.ResRet.f32 %947, 2
  %951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %952 = extractvalue %dx.types.CBufRet.f32 %951, 1
  %953 = fmul fast float %952, %948
  %954 = fmul fast float %952, %949
  %955 = fmul fast float %952, %950
  %956 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %21, float %945, float %946, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %976 = extractvalue %dx.types.CBufRet.f32 %975, 2
  %977 = extractvalue %dx.types.CBufRet.f32 %975, 3
  %978 = fmul fast float %976, %104
  %979 = fmul fast float %977, %105
  %980 = call float @dx.op.unary.f32(i32 7, float %978)  ; Saturate(value)
  %981 = call float @dx.op.unary.f32(i32 7, float %979)  ; Saturate(value)
  %982 = select i1 %101, i32 2, i32 0
  %983 = or i32 %982, 1
  %984 = uitofp i32 %983 to float
  %985 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %21, float %980, float %981, float %984, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %986 = extractvalue %dx.types.ResRet.f32 %985, 0
  %987 = extractvalue %dx.types.ResRet.f32 %985, 1
  %988 = extractvalue %dx.types.ResRet.f32 %985, 2
  %989 = extractvalue %dx.types.ResRet.f32 %985, 3
  %990 = add nuw nsw i32 %982, 2
  %991 = uitofp i32 %990 to float
  %992 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %21, float %980, float %981, float %991, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
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
  br i1 %1009, label %1010, label %1178, !dx.controlflow.hints !97

; <label>:1010                                    ; preds = %967
  %1011 = fadd fast float %974, -4.000000e+00
  %1012 = call float @dx.op.binary.f32(i32 35, float %1011, float 0.000000e+00)  ; FMax(a,b)
  %1013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1014 = extractvalue %dx.types.CBufRet.f32 %1013, 0
  %1015 = fadd fast float %1014, %1012
  %1016 = extractvalue %dx.types.CBufRet.f32 %1013, 2
  %1017 = fmul fast float %1015, %1016
  %1018 = call float @dx.op.unary.f32(i32 23, float %1017)  ; Log(value)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1013, 3
  %1020 = fmul fast float %1019, %1018
  %1021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1048 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %20, float %980, float %981, float %1047, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1049 = extractvalue %dx.types.ResRet.f32 %1048, 0
  %1050 = extractvalue %dx.types.ResRet.f32 %1048, 1
  %1051 = extractvalue %dx.types.ResRet.f32 %1048, 2
  %1052 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %1053 = extractvalue %dx.types.CBufRet.i32 %1052, 0
  %1054 = extractvalue %dx.types.CBufRet.i32 %1052, 1
  %1055 = uitofp i32 %1053 to float
  %1056 = uitofp i32 %1054 to float
  %1057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %1123, float %1129, float %1047, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1131 = extractvalue %dx.types.ResRet.f32 %1130, 0
  %1132 = extractvalue %dx.types.ResRet.f32 %1130, 1
  %1133 = extractvalue %dx.types.ResRet.f32 %1130, 2
  %1134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %1125, float %1129, float %1047, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1135 = extractvalue %dx.types.ResRet.f32 %1134, 0
  %1136 = extractvalue %dx.types.ResRet.f32 %1134, 1
  %1137 = extractvalue %dx.types.ResRet.f32 %1134, 2
  %1138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %1123, float %1127, float %1047, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1139 = extractvalue %dx.types.ResRet.f32 %1138, 0
  %1140 = extractvalue %dx.types.ResRet.f32 %1138, 1
  %1141 = extractvalue %dx.types.ResRet.f32 %1138, 2
  %1142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %1125, float %1127, float %1047, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %1173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1195 = extractvalue %dx.types.CBufRet.f32 %1194, 2
  %1196 = fmul fast float %1195, 0x3FE3C6EF40000000
  %1197 = frem fast float %50, 2.560000e+02
  %1198 = frem fast float %51, 2.560000e+02
  %1199 = fptoui float %1197 to i32
  %1200 = fptoui float %1198 to i32
  %1201 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1199, i32 %1200, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1202 = extractvalue %dx.types.ResRet.f32 %1201, 0
  %1203 = fadd fast float %1202, %1196
  %1204 = call float @dx.op.unary.f32(i32 22, float %1203)  ; Frc(value)
  %1205 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %48, i32 %49, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1206 = extractvalue %dx.types.ResRet.f32 %1205, 0
  %1207 = extractvalue %dx.types.ResRet.f32 %1205, 1
  %1208 = extractvalue %dx.types.ResRet.f32 %1205, 2
  %1209 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1210 = extractvalue %dx.types.CBufRet.i32 %1209, 3
  %1211 = and i32 %1210, 3
  %1212 = icmp ne i32 %1211, 0
  %1213 = and i32 %1210, 4
  %1214 = icmp ne i32 %1213, 0
  %1215 = and i1 %1212, %1214
  br i1 %1215, label %1216, label %1225, !dx.controlflow.hints !98

; <label>:1216                                    ; preds = %1178
  %1217 = fmul fast float %54, %105
  %1218 = fmul fast float %53, %104
  %1219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %21, float %1218, float %1217, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1220 = extractvalue %dx.types.ResRet.f32 %1219, 0
  %1221 = fsub fast float 1.000000e+00, %1220
  %1222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1223 = extractvalue %dx.types.CBufRet.f32 %1222, 0
  %1224 = fcmp fast olt float %1221, %1223
  br label %1228

; <label>:1225                                    ; preds = %1178
  %1226 = icmp eq i32 %1213, 0
  %1227 = and i1 %1212, %1226
  br label %1228

; <label>:1228                                    ; preds = %1225, %1216
  %1229 = phi i1 [ %1224, %1216 ], [ %1227, %1225 ]
  %1230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1231 = extractvalue %dx.types.CBufRet.f32 %1230, 0
  br i1 %1229, label %1232, label %1251, !dx.controlflow.hints !99

; <label>:1232                                    ; preds = %1228
  %1233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1234 = extractvalue %dx.types.CBufRet.f32 %1233, 3
  %1235 = call float @dx.op.dot3.f32(i32 55, float %1185, float %1186, float %1187, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1236 = fmul fast float %1235, %1206
  %1237 = call float @dx.op.dot3.f32(i32 55, float %1191, float %1192, float %1193, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1238 = fmul fast float %1231, %1237
  %1239 = fadd fast float %1238, %1236
  br i1 %1215, label %1240, label %1246, !dx.controlflow.hints !100

; <label>:1240                                    ; preds = %1232
  %1241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1242 = extractvalue %dx.types.CBufRet.f32 %1241, 1
  %1243 = fadd fast float %1185, -1.000000e+00
  %1244 = fmul fast float %1242, %1243
  %1245 = fadd fast float %1244, 1.000000e+00
  br label %1246

; <label>:1246                                    ; preds = %1240, %1232
  %1247 = phi float [ %1245, %1240 ], [ %1185, %1232 ]
  %1248 = fsub fast float %1207, %1234
  %1249 = fmul fast float %1247, %1248
  %1250 = fadd fast float %1249, %1234
  br label %1261

; <label>:1251                                    ; preds = %1228
  %1252 = fmul fast float %1206, %1185
  %1253 = fmul fast float %1207, %1186
  %1254 = fmul fast float %1208, %1187
  %1255 = fmul fast float %1231, %1191
  %1256 = fmul fast float %1231, %1192
  %1257 = fmul fast float %1231, %1193
  %1258 = fadd fast float %1255, %1252
  %1259 = fadd fast float %1256, %1253
  %1260 = fadd fast float %1257, %1254
  br label %1261

; <label>:1261                                    ; preds = %1251, %1246
  %1262 = phi float [ %1239, %1246 ], [ %1258, %1251 ]
  %1263 = phi float [ %1250, %1246 ], [ %1259, %1251 ]
  %1264 = phi float [ %1208, %1246 ], [ %1260, %1251 ]
  %1265 = lshr i32 %46, 2
  %1266 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1267 = extractvalue %dx.types.CBufRet.i32 %1266, 1
  %1268 = shl i32 %1267, 1
  %1269 = lshr i32 %47, 4
  %1270 = and i32 %1269, 134217727
  %1271 = extractvalue %dx.types.CBufRet.i32 %1266, 0
  %1272 = mul i32 %1271, %1270
  %1273 = lshr i32 %46, 5
  %1274 = and i32 %1273, 67108863
  %1275 = add i32 %1268, %1274
  %1276 = add i32 %1275, %1272
  %1277 = shl i32 %1276, 2
  %1278 = and i32 %49, 24
  %1279 = and i32 %1265, 7
  %1280 = or i32 %1278, %1279
  %1281 = shl i32 1, %1280
  %1282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1277, i32 undef)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.i32 %1282, 0
  %1284 = and i32 %1283, %1281
  %1285 = icmp eq i32 %1284, 0
  br i1 %1285, label %1301, label %1286, !dx.controlflow.hints !101

; <label>:1286                                    ; preds = %1261
  %1287 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %48, i32 %49, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1288 = extractvalue %dx.types.ResRet.f32 %1287, 0
  %1289 = fcmp fast ogt float %1288, 0.000000e+00
  br i1 %1289, label %1290, label %1301, !dx.controlflow.hints !102

; <label>:1290                                    ; preds = %1286
  %1291 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %48, i32 %49, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1292 = extractvalue %dx.types.ResRet.f32 %1291, 0
  %1293 = extractvalue %dx.types.ResRet.f32 %1291, 1
  %1294 = extractvalue %dx.types.ResRet.f32 %1291, 2
  %1295 = extractvalue %dx.types.ResRet.f32 %1291, 3
  %1296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %1297 = extractvalue %dx.types.CBufRet.f32 %1296, 2
  %1298 = fmul fast float %1297, %1292
  %1299 = fmul fast float %1297, %1293
  %1300 = fmul fast float %1297, %1294
  br label %1301

; <label>:1301                                    ; preds = %1290, %1286, %1261
  %1302 = phi float [ %1298, %1290 ], [ 0.000000e+00, %1286 ], [ 0.000000e+00, %1261 ]
  %1303 = phi float [ %1299, %1290 ], [ 0.000000e+00, %1286 ], [ 0.000000e+00, %1261 ]
  %1304 = phi float [ %1300, %1290 ], [ 0.000000e+00, %1286 ], [ 0.000000e+00, %1261 ]
  %1305 = phi float [ %1295, %1290 ], [ 0.000000e+00, %1286 ], [ 0.000000e+00, %1261 ]
  %1306 = fsub fast float 1.000000e+00, %1305
  %1307 = fmul fast float %1306, %1262
  %1308 = fmul fast float %1306, %1263
  %1309 = fmul fast float %1306, %1264
  %1310 = fadd fast float %1307, %1302
  %1311 = fadd fast float %1308, %1303
  %1312 = fadd fast float %1309, %1304
  %1313 = fadd fast float %1204, 0x3FE3C6EF40000000
  %1314 = call float @dx.op.unary.f32(i32 22, float %1313)  ; Frc(value)
  %1315 = call float @dx.op.unary.f32(i32 23, float %1310)  ; Log(value)
  %1316 = fadd fast float %1315, -7.000000e+00
  %1317 = call float @dx.op.unary.f32(i32 21, float %1316)  ; Exp(value)
  %1318 = fmul fast float %1314, 2.000000e+00
  %1319 = fadd fast float %1318, -1.000000e+00
  %1320 = fmul fast float %1317, %1319
  %1321 = fcmp fast ogt float %1310, 0.000000e+00
  %1322 = select i1 %1321, float %1320, float 0.000000e+00
  %1323 = fadd fast float %1322, %1310
  %1324 = fadd fast float %1204, 0x3FF3C6EF40000000
  %1325 = call float @dx.op.unary.f32(i32 22, float %1324)  ; Frc(value)
  %1326 = call float @dx.op.unary.f32(i32 23, float %1311)  ; Log(value)
  %1327 = fadd fast float %1326, -7.000000e+00
  %1328 = call float @dx.op.unary.f32(i32 21, float %1327)  ; Exp(value)
  %1329 = fmul fast float %1325, 2.000000e+00
  %1330 = fadd fast float %1329, -1.000000e+00
  %1331 = fmul fast float %1328, %1330
  %1332 = fcmp fast ogt float %1311, 0.000000e+00
  %1333 = select i1 %1332, float %1331, float 0.000000e+00
  %1334 = fadd fast float %1333, %1311
  %1335 = fadd fast float %1204, 0x3FFDAA66E0000000
  %1336 = call float @dx.op.unary.f32(i32 22, float %1335)  ; Frc(value)
  %1337 = call float @dx.op.unary.f32(i32 23, float %1312)  ; Log(value)
  %1338 = fadd fast float %1337, -6.000000e+00
  %1339 = call float @dx.op.unary.f32(i32 21, float %1338)  ; Exp(value)
  %1340 = fmul fast float %1336, 2.000000e+00
  %1341 = fadd fast float %1340, -1.000000e+00
  %1342 = fmul fast float %1339, %1341
  %1343 = fcmp fast ogt float %1312, 0.000000e+00
  %1344 = select i1 %1343, float %1342, float 0.000000e+00
  %1345 = fadd fast float %1344, %1312
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %48, i32 %49, i32 undef, float %1323, float %1334, float %1345, float %1323, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1346 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1347 = extractvalue %dx.types.CBufRet.i32 %1346, 0
  %1348 = and i32 %1347, 1
  %1349 = icmp eq i32 %1348, 0
  br i1 %1349, label %1353, label %1350, !dx.controlflow.hints !103

; <label>:1350                                    ; preds = %1301
  %1351 = and i32 %46, 2147483647
  %1352 = and i32 %47, 2147483647
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1351, i32 %1352, i32 undef, float %1206, float %1207, float %1208, float %1206, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1353

; <label>:1353                                    ; preds = %1350, %1301
  br label %1354

; <label>:1354                                    ; preds = %1377, %1353
  %1355 = phi float [ %1378, %1377 ], [ %1310, %1353 ]
  %1356 = phi float [ %1379, %1377 ], [ %1311, %1353 ]
  %1357 = phi float [ %1380, %1377 ], [ %1312, %1353 ]
  %1358 = phi float [ %1381, %1377 ], [ 1.000000e+00, %1353 ]
  %1359 = phi i32 [ %1364, %1377 ], [ 14, %1353 ]
  %1360 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1359)  ; FirstbitLo(value)
  %1361 = and i32 %1360, 31
  %1362 = shl i32 1, %1361
  %1363 = xor i32 %1362, -1
  %1364 = and i32 %1359, %1363
  %1365 = and i32 %1360, 1
  %1366 = lshr i32 %1360, 1
  %1367 = or i32 %1365, %48
  %1368 = add i32 %1366, %49
  %1369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1370 = extractvalue %dx.types.CBufRet.f32 %1369, 0
  %1371 = fptoui float %1370 to i32
  %1372 = icmp uge i32 %1367, %1371
  %1373 = extractvalue %dx.types.CBufRet.f32 %1369, 1
  %1374 = fptoui float %1373 to i32
  %1375 = icmp uge i32 %1368, %1374
  %1376 = or i1 %1372, %1375
  br i1 %1376, label %1377, label %1383, !dx.controlflow.hints !104

; <label>:1377                                    ; preds = %2651, %1354
  %1378 = phi float [ %1355, %1354 ], [ %2652, %2651 ]
  %1379 = phi float [ %1356, %1354 ], [ %2653, %2651 ]
  %1380 = phi float [ %1357, %1354 ], [ %2654, %2651 ]
  %1381 = phi float [ %1358, %1354 ], [ %2655, %2651 ]
  %1382 = icmp eq i32 %1364, 0
  br i1 %1382, label %2656, label %1354

; <label>:1383                                    ; preds = %1354
  %1384 = uitofp i32 %1367 to float
  %1385 = uitofp i32 %1368 to float
  %1386 = fadd fast float %1384, 5.000000e-01
  %1387 = fadd fast float %1385, 5.000000e-01
  %1388 = extractvalue %dx.types.CBufRet.f32 %1369, 2
  %1389 = extractvalue %dx.types.CBufRet.f32 %1369, 3
  %1390 = fmul fast float %1388, %1386
  %1391 = fmul fast float %1389, %1387
  %1392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1393 = extractvalue %dx.types.CBufRet.f32 %1392, 2
  %1394 = fmul fast float %1393, 0x3FE3C6EF40000000
  %1395 = frem fast float %1384, 2.560000e+02
  %1396 = frem fast float %1385, 2.560000e+02
  %1397 = fptoui float %1395 to i32
  %1398 = fptoui float %1396 to i32
  %1399 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1397, i32 %1398, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1400 = extractvalue %dx.types.ResRet.f32 %1399, 0
  %1401 = fadd fast float %1400, %1394
  %1402 = call float @dx.op.unary.f32(i32 22, float %1401)  ; Frc(value)
  %1403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1404 = extractvalue %dx.types.ResRet.i32 %1403, 0
  %1405 = and i32 %1404, 114688
  %1406 = icmp ne i32 %1405, 0
  %1407 = select i1 %1406, i32 %1367, i32 0
  %1408 = select i1 %1406, i32 %1368, i32 0
  %1409 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %1407, i32 %1408, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1410 = extractvalue %dx.types.ResRet.f32 %1409, 0
  %1411 = fmul fast float %1410, 2.550000e+02
  %1412 = fptoui float %1411 to i32
  %1413 = icmp eq i32 %1412, 3
  %1414 = and i1 %1406, %1413
  %1415 = getelementptr [4 x float], [4 x float]* %33, i32 0, i32 %1360
  %1416 = load float, float* %1415, align 4, !tbaa !49, !noalias !105
  %1417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1418 = extractvalue %dx.types.CBufRet.f32 %1417, 3
  %1419 = fcmp fast oge float %1416, %1418
  br i1 %1414, label %2279, label %1420, !dx.controlflow.hints !37

; <label>:1420                                    ; preds = %1383
  %1421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 170)  ; CBufferLoadLegacy(handle,regIndex)
  %1422 = extractvalue %dx.types.CBufRet.f32 %1421, 0
  %1423 = select i1 %1419, float %1422, float %1416
  %1424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1425 = extractvalue %dx.types.CBufRet.f32 %1424, 2
  %1426 = extractvalue %dx.types.CBufRet.f32 %1424, 3
  %1427 = fmul fast float %1386, 2.000000e+00
  %1428 = fmul fast float %1427, %1425
  %1429 = fmul fast float %1387, 2.000000e+00
  %1430 = fmul fast float %1429, %1426
  %1431 = fsub fast float 1.000000e+00, %1428
  %1432 = fsub fast float 1.000000e+00, %1430
  %1433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1434 = extractvalue %dx.types.CBufRet.f32 %1433, 0
  %1435 = extractvalue %dx.types.CBufRet.f32 %1433, 1
  %1436 = extractvalue %dx.types.CBufRet.f32 %1433, 2
  %1437 = fmul fast float %1431, %1434
  %1438 = fmul fast float %1431, %1435
  %1439 = fmul fast float %1431, %1436
  %1440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1441 = extractvalue %dx.types.CBufRet.f32 %1440, 0
  %1442 = extractvalue %dx.types.CBufRet.f32 %1440, 1
  %1443 = extractvalue %dx.types.CBufRet.f32 %1440, 2
  %1444 = fmul fast float %1432, %1441
  %1445 = fmul fast float %1432, %1442
  %1446 = fmul fast float %1432, %1443
  %1447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1448 = extractvalue %dx.types.CBufRet.f32 %1447, 0
  %1449 = extractvalue %dx.types.CBufRet.f32 %1447, 1
  %1450 = extractvalue %dx.types.CBufRet.f32 %1447, 2
  %1451 = fadd fast float %1444, %1448
  %1452 = fadd fast float %1451, %1437
  %1453 = fadd fast float %1445, %1449
  %1454 = fadd fast float %1453, %1438
  %1455 = fadd fast float %1446, %1450
  %1456 = fadd fast float %1455, %1439
  %1457 = fmul fast float %1452, %1423
  %1458 = fmul fast float %1454, %1423
  %1459 = fmul fast float %1456, %1423
  %1460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 163)  ; CBufferLoadLegacy(handle,regIndex)
  %1461 = extractvalue %dx.types.CBufRet.f32 %1460, 0
  %1462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1463 = extractvalue %dx.types.CBufRet.f32 %1462, 0
  %1464 = extractvalue %dx.types.CBufRet.f32 %1462, 1
  %1465 = extractvalue %dx.types.CBufRet.f32 %1462, 2
  %1466 = extractvalue %dx.types.CBufRet.f32 %1462, 3
  %1467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1468 = extractvalue %dx.types.CBufRet.f32 %1467, 0
  %1469 = extractvalue %dx.types.CBufRet.f32 %1467, 1
  %1470 = extractvalue %dx.types.CBufRet.f32 %1467, 2
  %1471 = extractvalue %dx.types.CBufRet.f32 %1467, 3
  %1472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1473 = extractvalue %dx.types.CBufRet.f32 %1472, 0
  %1474 = extractvalue %dx.types.CBufRet.f32 %1472, 1
  %1475 = extractvalue %dx.types.CBufRet.f32 %1472, 2
  %1476 = extractvalue %dx.types.CBufRet.f32 %1472, 3
  %1477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1478 = extractvalue %dx.types.CBufRet.f32 %1477, 0
  %1479 = extractvalue %dx.types.CBufRet.f32 %1477, 1
  %1480 = extractvalue %dx.types.CBufRet.f32 %1477, 2
  %1481 = extractvalue %dx.types.CBufRet.f32 %1477, 3
  %1482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1483 = extractvalue %dx.types.CBufRet.f32 %1482, 3
  %1484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1485 = extractvalue %dx.types.CBufRet.f32 %1484, 3
  %1486 = extractvalue %dx.types.CBufRet.f32 %1484, 0
  %1487 = extractvalue %dx.types.CBufRet.f32 %1484, 1
  %1488 = extractvalue %dx.types.CBufRet.f32 %1484, 2
  %1489 = fcmp fast olt float %1488, -5.000000e-01
  %1490 = extractvalue %dx.types.CBufRet.f32 %1460, 3
  %1491 = call float @dx.op.dot3.f32(i32 55, float %1457, float %1458, float %1459, float %1457, float %1458, float %1459)  ; Dot3(ax,ay,az,bx,by,bz)
  %1492 = call float @dx.op.unary.f32(i32 25, float %1491)  ; Rsqrt(value)
  %1493 = fmul fast float %1492, %1491
  %1494 = fmul fast float %1492, %1457
  %1495 = fmul fast float %1492, %1458
  %1496 = fmul fast float %1492, %1459
  %1497 = fadd fast float %1493, %1466
  br i1 %1419, label %1498, label %1510, !dx.controlflow.hints !38

; <label>:1498                                    ; preds = %1420
  %1499 = extractvalue %dx.types.CBufRet.f32 %1460, 2
  %1500 = extractvalue %dx.types.CBufRet.f32 %1460, 1
  %1501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 187)  ; CBufferLoadLegacy(handle,regIndex)
  %1502 = extractvalue %dx.types.CBufRet.f32 %1501, 1
  %1503 = extractvalue %dx.types.CBufRet.f32 %1501, 0
  %1504 = call float @dx.op.binary.f32(i32 35, float %1496, float %1503)  ; FMax(a,b)
  %1505 = call float @dx.op.binary.f32(i32 36, float %1504, float %1502)  ; FMin(a,b)
  %1506 = fmul fast float %1505, %1500
  %1507 = fadd fast float %1506, %1499
  %1508 = call float @dx.op.unary.f32(i32 7, float %1507)  ; Saturate(value)
  %1509 = fmul fast float %1496, %1461
  br label %1510

; <label>:1510                                    ; preds = %1498, %1420
  %1511 = phi float [ %1461, %1498 ], [ %1497, %1420 ]
  %1512 = phi float [ %1508, %1498 ], [ 0.000000e+00, %1420 ]
  %1513 = phi float [ %1509, %1498 ], [ %1459, %1420 ]
  %1514 = call float @dx.op.dot3.f32(i32 55, float %1494, float %1495, float %1496, float %1463, float %1464, float %1465)  ; Dot3(ax,ay,az,bx,by,bz)
  %1515 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1516 = extractvalue %dx.types.CBufRet.i32 %1515, 1
  %1517 = and i32 %1516, 1
  %1518 = icmp ne i32 %1517, 0
  %1519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1520 = extractvalue %dx.types.CBufRet.f32 %1519, 2
  %1521 = fcmp fast ogt float %1520, 0.000000e+00
  %1522 = and i1 %1518, %1521
  br i1 %1522, label %1523, label %1932, !dx.controlflow.hints !39

; <label>:1523                                    ; preds = %1510
  %1524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1525 = extractvalue %dx.types.CBufRet.f32 %1524, 3
  %1526 = select i1 %1419, float %1525, float %1493
  %1527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1528 = extractvalue %dx.types.CBufRet.f32 %1527, 3
  %1529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1530 = extractvalue %dx.types.CBufRet.f32 %1529, 2
  %1531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1532 = extractvalue %dx.types.CBufRet.f32 %1531, 2
  %1533 = fsub fast float %1530, %1532
  %1534 = and i32 %1516, 2
  %1535 = extractvalue %dx.types.CBufRet.i32 %1515, 0
  %1536 = call i32 @dx.op.binary.i32(i32 40, i32 %1535, i32 3)  ; UMin(a,b)
  %1537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1538 = extractvalue %dx.types.CBufRet.f32 %1537, 0
  %1539 = extractvalue %dx.types.CBufRet.f32 %1537, 1
  %1540 = extractvalue %dx.types.CBufRet.f32 %1531, 0
  %1541 = extractvalue %dx.types.CBufRet.f32 %1531, 1
  %1542 = fsub fast float %1538, %1540
  %1543 = fsub fast float %1539, %1541
  %1544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1545 = extractvalue %dx.types.CBufRet.f32 %1544, 0
  %1546 = fcmp fast ogt float %1545, 0.000000e+00
  %1547 = fsub fast float -0.000000e+00, %1542
  %1548 = fsub fast float -0.000000e+00, %1543
  %1549 = call float @dx.op.dot2.f32(i32 54, float %1494, float %1495, float %1494, float %1495)  ; Dot2(ax,ay,bx,by)
  %1550 = call float @dx.op.dot2.f32(i32 54, float %1494, float %1495, float %1547, float %1548)  ; Dot2(ax,ay,bx,by)
  %1551 = fmul fast float %1550, 2.000000e+00
  %1552 = call float @dx.op.dot2.f32(i32 54, float %1547, float %1548, float %1547, float %1548)  ; Dot2(ax,ay,bx,by)
  %1553 = fmul fast float %1545, %1545
  %1554 = fsub fast float %1552, %1553
  %1555 = fmul fast float %1551, %1551
  %1556 = fmul fast float %1549, 4.000000e+00
  %1557 = fmul fast float %1556, %1554
  %1558 = fsub fast float %1555, %1557
  %1559 = fcmp fast ogt float %1558, 0.000000e+00
  br i1 %1559, label %1560, label %1575, !dx.controlflow.hints !40

; <label>:1560                                    ; preds = %1523
  %1561 = fcmp fast ogt float %1551, 0.000000e+00
  %1562 = call float @dx.op.unary.f32(i32 24, float %1558)  ; Sqrt(value)
  %1563 = fsub fast float -0.000000e+00, %1562
  %1564 = select i1 %1561, float %1562, float %1563
  %1565 = fadd fast float %1564, %1551
  %1566 = fmul float %1565, -5.000000e-01
  %1567 = fdiv fast float %1566, %1549
  %1568 = call float @dx.op.binary.f32(i32 35, float %1567, float 0.000000e+00)  ; FMax(a,b)
  %1569 = call float @dx.op.binary.f32(i32 36, float %1526, float %1568)  ; FMin(a,b)
  %1570 = fdiv fast float %1554, %1566
  %1571 = call float @dx.op.binary.f32(i32 35, float %1570, float 0.000000e+00)  ; FMax(a,b)
  %1572 = call float @dx.op.binary.f32(i32 36, float %1526, float %1571)  ; FMin(a,b)
  %1573 = call float @dx.op.binary.f32(i32 36, float %1569, float %1572)  ; FMin(a,b)
  %1574 = call float @dx.op.binary.f32(i32 35, float %1569, float %1572)  ; FMax(a,b)
  br label %1575

; <label>:1575                                    ; preds = %1560, %1523
  %1576 = phi float [ %1574, %1560 ], [ -1.000000e+00, %1523 ]
  %1577 = phi float [ %1573, %1560 ], [ -1.000000e+00, %1523 ]
  %1578 = phi i1 [ true, %1560 ], [ false, %1523 ]
  %1579 = and i1 %1546, %1578
  br i1 %1579, label %1580, label %1582, !dx.controlflow.hints !41

; <label>:1580                                    ; preds = %1575
  %1581 = fcmp fast oeq float %1577, %1576
  br i1 %1581, label %1885, label %1583, !dx.controlflow.hints !42

; <label>:1582                                    ; preds = %1575
  br i1 %1546, label %1885, label %1583, !dx.controlflow.hints !43

; <label>:1583                                    ; preds = %1582, %1580
  %1584 = phi float [ %1526, %1582 ], [ %1576, %1580 ]
  %1585 = phi float [ 0.000000e+00, %1582 ], [ %1577, %1580 ]
  %1586 = icmp ne i32 %1534, 0
  %1587 = fmul fast float %1584, %1496
  %1588 = fadd fast float %1587, %1528
  %1589 = fmul fast float %1588, %1584
  %1590 = select i1 %1586, float 0.000000e+00, float %1589
  %1591 = fcmp fast oeq float %1496, 0.000000e+00
  %1592 = fdiv fast float %1533, %1496
  %1593 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1592)  ; FMax(a,b)
  %1594 = select i1 %1591, float %1584, float %1593
  %1595 = call float @dx.op.binary.f32(i32 36, float %1584, float %1594)  ; FMin(a,b)
  %1596 = fcmp fast ogt float %1496, 0.000000e+00
  %1597 = fcmp fast olt float %1533, 0.000000e+00
  br i1 %1596, label %1598, label %1655, !dx.controlflow.hints !44

; <label>:1598                                    ; preds = %1583
  %1599 = icmp eq i32 %1534, 0
  br i1 %1597, label %1600, label %1644, !dx.controlflow.hints !45

; <label>:1600                                    ; preds = %1598
  %1601 = select i1 %1599, float %1584, float 0.000000e+00
  %1602 = fsub fast float -0.000000e+00, %1601
  %1603 = call float @dx.op.unary.f32(i32 6, float %1602)  ; FAbs(value)
  %1604 = fmul fast float %1601, %1496
  %1605 = fadd fast float %1604, %1528
  %1606 = fmul fast float %1603, %1605
  %1607 = fsub fast float %1590, %1606
  %1608 = fsub fast float %1584, %1603
  %1609 = select i1 %1599, float %1608, float 0.000000e+00
  %1610 = extractvalue %dx.types.CBufRet.f32 %1524, 0
  %1611 = extractvalue %dx.types.CBufRet.f32 %1524, 1
  %1612 = extractvalue %dx.types.CBufRet.f32 %1524, 2
  %1613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1614 = extractvalue %dx.types.CBufRet.f32 %1613, 0
  %1615 = extractvalue %dx.types.CBufRet.f32 %1613, 1
  %1616 = extractvalue %dx.types.CBufRet.f32 %1613, 2
  %1617 = extractvalue %dx.types.CBufRet.f32 %1613, 3
  %1618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1619 = extractvalue %dx.types.CBufRet.f32 %1618, 3
  %1620 = call float @dx.op.binary.f32(i32 36, float %1607, float %1619)  ; FMin(a,b)
  %1621 = fmul fast float %1617, %1609
  %1622 = call float @dx.op.unary.f32(i32 7, float %1621)  ; Saturate(value)
  %1623 = fsub fast float %1614, %1610
  %1624 = fsub fast float %1615, %1611
  %1625 = fsub fast float %1616, %1612
  %1626 = fmul fast float %1622, %1623
  %1627 = fmul fast float %1622, %1624
  %1628 = fmul fast float %1622, %1625
  %1629 = fadd fast float %1626, %1610
  %1630 = fadd fast float %1627, %1611
  %1631 = fadd fast float %1628, %1612
  br i1 %1419, label %1885, label %1632, !dx.controlflow.hints !46

; <label>:1632                                    ; preds = %1600
  %1633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1634 = extractvalue %dx.types.CBufRet.f32 %1633, 0
  %1635 = extractvalue %dx.types.CBufRet.f32 %1633, 1
  %1636 = fadd fast float %1635, %1634
  %1637 = call float @dx.op.unary.f32(i32 7, float %1636)  ; Saturate(value)
  %1638 = extractvalue %dx.types.CBufRet.f32 %1633, 2
  %1639 = extractvalue %dx.types.CBufRet.f32 %1633, 3
  %1640 = fadd fast float %1639, %1638
  %1641 = call float @dx.op.unary.f32(i32 7, float %1640)  ; Saturate(value)
  %1642 = fmul fast float %1637, %1620
  %1643 = fmul fast float %1642, %1641
  br label %1885

; <label>:1644                                    ; preds = %1598
  br i1 %1599, label %1645, label %1666, !dx.controlflow.hints !47

; <label>:1645                                    ; preds = %1644
  %1646 = call float @dx.op.binary.f32(i32 36, float %1595, float %1585)  ; FMin(a,b)
  %1647 = fsub fast float %1595, %1646
  %1648 = fsub fast float %1647, %1584
  %1649 = call float @dx.op.unary.f32(i32 6, float %1648)  ; FAbs(value)
  %1650 = fadd fast float %1647, %1584
  %1651 = fmul fast float %1650, %1496
  %1652 = fadd fast float %1651, %1528
  %1653 = fmul fast float %1652, %1649
  %1654 = fsub fast float %1590, %1653
  br label %1666

; <label>:1655                                    ; preds = %1583
  br i1 %1597, label %1656, label %1666, !dx.controlflow.hints !48

; <label>:1656                                    ; preds = %1655
  %1657 = call float @dx.op.binary.f32(i32 35, float %1585, float %1595)  ; FMax(a,b)
  %1658 = icmp eq i32 %1534, 0
  %1659 = select i1 %1658, float %1595, float 0.000000e+00
  %1660 = fsub fast float -0.000000e+00, %1659
  %1661 = call float @dx.op.unary.f32(i32 6, float %1660)  ; FAbs(value)
  %1662 = fmul fast float %1659, %1496
  %1663 = fadd fast float %1662, %1528
  %1664 = fmul fast float %1661, %1663
  %1665 = fsub fast float %1590, %1664
  br label %1666

; <label>:1666                                    ; preds = %1656, %1655, %1645, %1644
  %1667 = phi float [ %1585, %1644 ], [ %1585, %1645 ], [ %1657, %1656 ], [ %1585, %1655 ]
  %1668 = phi float [ 0.000000e+00, %1644 ], [ %1649, %1645 ], [ %1661, %1656 ], [ 0.000000e+00, %1655 ]
  %1669 = phi float [ %1590, %1644 ], [ %1654, %1645 ], [ %1665, %1656 ], [ %1590, %1655 ]
  %1670 = phi float [ %1595, %1644 ], [ %1595, %1645 ], [ %1584, %1656 ], [ %1584, %1655 ]
  %1671 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 0
  store float -1.000000e+00, float* %1671, align 4, !tbaa !49, !noalias !106
  %1672 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 1
  store float -1.000000e+00, float* %1672, align 4, !tbaa !49, !noalias !106
  %1673 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 2
  store float -1.000000e+00, float* %1673, align 4, !tbaa !49, !noalias !106
  %1674 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 0
  store float -1.000000e+00, float* %1674, align 4, !tbaa !49, !noalias !106
  %1675 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 1
  store float -1.000000e+00, float* %1675, align 4, !tbaa !49, !noalias !106
  %1676 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 2
  store float -1.000000e+00, float* %1676, align 4, !tbaa !49, !noalias !106
  %1677 = icmp sgt i32 %1536, 0
  br i1 %1677, label %1678, label %1739

; <label>:1678                                    ; preds = %1666
  br label %1679

; <label>:1679                                    ; preds = %1728, %1678
  %1680 = phi i32 [ %1729, %1728 ], [ 0, %1678 ]
  %1681 = phi i32 [ %1730, %1728 ], [ 0, %1678 ]
  %1682 = add nuw i32 %1681, 171
  %1683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %1682)  ; CBufferLoadLegacy(handle,regIndex)
  %1684 = extractvalue %dx.types.CBufRet.f32 %1683, 0
  %1685 = extractvalue %dx.types.CBufRet.f32 %1683, 1
  %1686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1687 = extractvalue %dx.types.CBufRet.f32 %1686, 0
  %1688 = extractvalue %dx.types.CBufRet.f32 %1686, 1
  %1689 = fsub fast float %1684, %1687
  %1690 = fsub fast float %1685, %1688
  %1691 = extractvalue %dx.types.CBufRet.f32 %1683, 2
  %1692 = fsub fast float -0.000000e+00, %1689
  %1693 = fsub fast float -0.000000e+00, %1690
  %1694 = call float @dx.op.dot2.f32(i32 54, float %1494, float %1495, float %1692, float %1693)  ; Dot2(ax,ay,bx,by)
  %1695 = fmul fast float %1694, 2.000000e+00
  %1696 = call float @dx.op.dot2.f32(i32 54, float %1692, float %1693, float %1692, float %1693)  ; Dot2(ax,ay,bx,by)
  %1697 = fmul fast float %1691, %1691
  %1698 = fsub fast float %1696, %1697
  %1699 = fmul fast float %1695, %1695
  %1700 = fmul fast float %1556, %1698
  %1701 = fsub fast float %1699, %1700
  %1702 = fcmp fast ogt float %1701, 0.000000e+00
  br i1 %1702, label %1703, label %1718, !dx.controlflow.hints !40

; <label>:1703                                    ; preds = %1679
  %1704 = fcmp fast ogt float %1695, 0.000000e+00
  %1705 = call float @dx.op.unary.f32(i32 24, float %1701)  ; Sqrt(value)
  %1706 = fsub fast float -0.000000e+00, %1705
  %1707 = select i1 %1704, float %1705, float %1706
  %1708 = fadd fast float %1707, %1695
  %1709 = fmul float %1708, -5.000000e-01
  %1710 = fdiv fast float %1709, %1549
  %1711 = call float @dx.op.binary.f32(i32 35, float %1710, float 0.000000e+00)  ; FMax(a,b)
  %1712 = call float @dx.op.binary.f32(i32 36, float %1584, float %1711)  ; FMin(a,b)
  %1713 = fdiv fast float %1698, %1709
  %1714 = call float @dx.op.binary.f32(i32 35, float %1713, float 0.000000e+00)  ; FMax(a,b)
  %1715 = call float @dx.op.binary.f32(i32 36, float %1584, float %1714)  ; FMin(a,b)
  %1716 = call float @dx.op.binary.f32(i32 36, float %1712, float %1715)  ; FMin(a,b)
  %1717 = call float @dx.op.binary.f32(i32 35, float %1712, float %1715)  ; FMax(a,b)
  br label %1718

; <label>:1718                                    ; preds = %1703, %1679
  %1719 = phi float [ %1717, %1703 ], [ -1.000000e+00, %1679 ]
  %1720 = phi float [ %1716, %1703 ], [ -1.000000e+00, %1679 ]
  %1721 = phi i1 [ true, %1703 ], [ false, %1679 ]
  br i1 %1721, label %1722, label %1728, !dx.controlflow.hints !65

; <label>:1722                                    ; preds = %1718
  %1723 = call float @dx.op.binary.f32(i32 35, float %1667, float %1720)  ; FMax(a,b)
  %1724 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %1681
  store float %1723, float* %1724, align 4, !tbaa !49, !noalias !106
  %1725 = call float @dx.op.binary.f32(i32 35, float %1667, float %1719)  ; FMax(a,b)
  %1726 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %1681
  store float %1725, float* %1726, align 4, !tbaa !49, !noalias !106
  %1727 = add nsw i32 %1680, 1
  br label %1728

; <label>:1728                                    ; preds = %1722, %1718
  %1729 = phi i32 [ %1727, %1722 ], [ %1680, %1718 ]
  %1730 = add nuw nsw i32 %1681, 1
  %1731 = icmp eq i32 %1730, %1536
  br i1 %1731, label %1732, label %1679

; <label>:1732                                    ; preds = %1728
  %1733 = load float, float* %1673, align 4, !tbaa !49, !alias.scope !116, !noalias !119
  %1734 = load float, float* %1672, align 4, !tbaa !49, !alias.scope !122, !noalias !123
  %1735 = load float, float* %1671, align 4, !tbaa !49, !alias.scope !124, !noalias !125
  %1736 = load float, float* %1676, align 4, !tbaa !49, !alias.scope !126, !noalias !129
  %1737 = load float, float* %1675, align 4, !tbaa !49, !alias.scope !132, !noalias !133
  %1738 = load float, float* %1674, align 4, !tbaa !49, !alias.scope !134, !noalias !135
  br label %1739

; <label>:1739                                    ; preds = %1732, %1666
  %1740 = phi float [ -1.000000e+00, %1666 ], [ %1738, %1732 ]
  %1741 = phi float [ -1.000000e+00, %1666 ], [ %1737, %1732 ]
  %1742 = phi float [ -1.000000e+00, %1666 ], [ %1736, %1732 ]
  %1743 = phi float [ -1.000000e+00, %1666 ], [ %1735, %1732 ]
  %1744 = phi float [ -1.000000e+00, %1666 ], [ %1734, %1732 ]
  %1745 = phi float [ -1.000000e+00, %1666 ], [ %1733, %1732 ]
  %1746 = phi i32 [ 0, %1666 ], [ %1729, %1732 ]
  %1747 = call float @dx.op.binary.f32(i32 36, float %1744, float %1745)  ; FMin(a,b)
  %1748 = call float @dx.op.binary.f32(i32 36, float %1743, float %1747)  ; FMin(a,b)
  %1749 = call float @dx.op.binary.f32(i32 35, float %1743, float %1744)  ; FMax(a,b)
  %1750 = call float @dx.op.binary.f32(i32 36, float %1749, float %1745)  ; FMin(a,b)
  %1751 = call float @dx.op.binary.f32(i32 36, float %1743, float %1744)  ; FMin(a,b)
  %1752 = call float @dx.op.binary.f32(i32 35, float %1751, float %1750)  ; FMax(a,b)
  %1753 = call float @dx.op.binary.f32(i32 35, float %1744, float %1745)  ; FMax(a,b)
  %1754 = call float @dx.op.binary.f32(i32 35, float %1743, float %1753)  ; FMax(a,b)
  store float %1748, float* %1671, align 4, !tbaa !49, !alias.scope !124, !noalias !125
  store float %1752, float* %1672, align 4, !tbaa !49, !alias.scope !122, !noalias !123
  store float %1754, float* %1673, align 4, !tbaa !49, !alias.scope !116, !noalias !119
  %1755 = call float @dx.op.binary.f32(i32 36, float %1741, float %1742)  ; FMin(a,b)
  %1756 = call float @dx.op.binary.f32(i32 36, float %1740, float %1755)  ; FMin(a,b)
  %1757 = call float @dx.op.binary.f32(i32 35, float %1740, float %1741)  ; FMax(a,b)
  %1758 = call float @dx.op.binary.f32(i32 36, float %1757, float %1742)  ; FMin(a,b)
  %1759 = call float @dx.op.binary.f32(i32 36, float %1740, float %1741)  ; FMin(a,b)
  %1760 = call float @dx.op.binary.f32(i32 35, float %1759, float %1758)  ; FMax(a,b)
  %1761 = call float @dx.op.binary.f32(i32 35, float %1741, float %1742)  ; FMax(a,b)
  %1762 = call float @dx.op.binary.f32(i32 35, float %1740, float %1761)  ; FMax(a,b)
  store float %1756, float* %1674, align 4, !tbaa !49, !alias.scope !134, !noalias !135
  store float %1760, float* %1675, align 4, !tbaa !49, !alias.scope !132, !noalias !133
  store float %1762, float* %1676, align 4, !tbaa !49, !alias.scope !126, !noalias !129
  %1763 = sub nsw i32 3, %1746
  %1764 = icmp sgt i32 %1763, 2
  br i1 %1764, label %1765, label %1803, !dx.controlflow.hints !86

; <label>:1765                                    ; preds = %1739
  %1766 = icmp eq i32 %1534, 0
  %1767 = fsub fast float %1584, %1668
  %1768 = select i1 %1766, float %1767, float %1668
  %1769 = extractvalue %dx.types.CBufRet.f32 %1524, 0
  %1770 = extractvalue %dx.types.CBufRet.f32 %1524, 1
  %1771 = extractvalue %dx.types.CBufRet.f32 %1524, 2
  %1772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1773 = extractvalue %dx.types.CBufRet.f32 %1772, 0
  %1774 = extractvalue %dx.types.CBufRet.f32 %1772, 1
  %1775 = extractvalue %dx.types.CBufRet.f32 %1772, 2
  %1776 = extractvalue %dx.types.CBufRet.f32 %1772, 3
  %1777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1778 = extractvalue %dx.types.CBufRet.f32 %1777, 3
  %1779 = call float @dx.op.binary.f32(i32 36, float %1669, float %1778)  ; FMin(a,b)
  %1780 = fmul fast float %1776, %1768
  %1781 = call float @dx.op.unary.f32(i32 7, float %1780)  ; Saturate(value)
  %1782 = fsub fast float %1773, %1769
  %1783 = fsub fast float %1774, %1770
  %1784 = fsub fast float %1775, %1771
  %1785 = fmul fast float %1781, %1782
  %1786 = fmul fast float %1781, %1783
  %1787 = fmul fast float %1781, %1784
  %1788 = fadd fast float %1785, %1769
  %1789 = fadd fast float %1786, %1770
  %1790 = fadd fast float %1787, %1771
  br i1 %1419, label %1885, label %1791, !dx.controlflow.hints !46

; <label>:1791                                    ; preds = %1765
  %1792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1793 = extractvalue %dx.types.CBufRet.f32 %1792, 0
  %1794 = extractvalue %dx.types.CBufRet.f32 %1792, 1
  %1795 = fadd fast float %1794, %1793
  %1796 = call float @dx.op.unary.f32(i32 7, float %1795)  ; Saturate(value)
  %1797 = extractvalue %dx.types.CBufRet.f32 %1792, 2
  %1798 = extractvalue %dx.types.CBufRet.f32 %1792, 3
  %1799 = fadd fast float %1798, %1797
  %1800 = call float @dx.op.unary.f32(i32 7, float %1799)  ; Saturate(value)
  %1801 = fmul fast float %1796, %1779
  %1802 = fmul fast float %1801, %1800
  br label %1885

; <label>:1803                                    ; preds = %1739
  %1804 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %1763
  %1805 = load float, float* %1804, align 4, !tbaa !49, !noalias !106
  %1806 = fcmp fast olt float %1805, %1670
  %1807 = icmp sgt i32 %1746, 0
  %1808 = and i1 %1807, %1806
  br i1 %1808, label %1809, label %1846

; <label>:1809                                    ; preds = %1803
  br label %1810

; <label>:1810                                    ; preds = %1839, %1809
  %1811 = phi float [ %1840, %1839 ], [ %1668, %1809 ]
  %1812 = phi float [ %1841, %1839 ], [ %1669, %1809 ]
  %1813 = phi float [ %1821, %1839 ], [ %1805, %1809 ]
  %1814 = phi i32 [ %1818, %1839 ], [ %1763, %1809 ]
  %1815 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %1814
  %1816 = load float, float* %1815, align 4, !tbaa !49, !noalias !106
  %1817 = icmp slt i32 %1814, 2
  %1818 = add nsw i32 %1814, 1
  %1819 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %1818
  %1820 = load float, float* %1819, align 4, !tbaa !49, !noalias !106
  %1821 = select i1 %1817, float %1820, float %1584
  %1822 = call float @dx.op.binary.f32(i32 36, float %1821, float %1816)  ; FMin(a,b)
  %1823 = call float @dx.op.binary.f32(i32 36, float %1670, float %1822)  ; FMin(a,b)
  %1824 = icmp eq i32 %1534, 0
  %1825 = fadd fast float %1823, %1813
  %1826 = fmul fast float %1825, %1496
  %1827 = fadd fast float %1826, %1528
  br i1 %1824, label %1833, label %1828, !dx.controlflow.hints !87

; <label>:1828                                    ; preds = %1810
  %1829 = fsub fast float %1823, %1813
  %1830 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1829)  ; FMax(a,b)
  %1831 = fmul fast float %1830, %1827
  %1832 = fadd fast float %1831, %1812
  br label %1839

; <label>:1833                                    ; preds = %1810
  %1834 = fsub fast float %1813, %1823
  %1835 = call float @dx.op.unary.f32(i32 6, float %1834)  ; FAbs(value)
  %1836 = fadd fast float %1835, %1811
  %1837 = fmul fast float %1835, %1827
  %1838 = fsub fast float %1812, %1837
  br label %1839

; <label>:1839                                    ; preds = %1833, %1828
  %1840 = phi float [ %1830, %1828 ], [ %1836, %1833 ]
  %1841 = phi float [ %1832, %1828 ], [ %1838, %1833 ]
  %1842 = fcmp fast olt float %1821, %1670
  %1843 = icmp slt i32 %1818, 3
  %1844 = and i1 %1843, %1842
  br i1 %1844, label %1810, label %1845

; <label>:1845                                    ; preds = %1839
  br label %1846

; <label>:1846                                    ; preds = %1845, %1803
  %1847 = phi float [ %1668, %1803 ], [ %1840, %1845 ]
  %1848 = phi float [ %1669, %1803 ], [ %1841, %1845 ]
  %1849 = fsub fast float %1584, %1847
  %1850 = select i1 %1586, float %1847, float %1849
  %1851 = extractvalue %dx.types.CBufRet.f32 %1524, 0
  %1852 = extractvalue %dx.types.CBufRet.f32 %1524, 1
  %1853 = extractvalue %dx.types.CBufRet.f32 %1524, 2
  %1854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1855 = extractvalue %dx.types.CBufRet.f32 %1854, 0
  %1856 = extractvalue %dx.types.CBufRet.f32 %1854, 1
  %1857 = extractvalue %dx.types.CBufRet.f32 %1854, 2
  %1858 = extractvalue %dx.types.CBufRet.f32 %1854, 3
  %1859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1860 = extractvalue %dx.types.CBufRet.f32 %1859, 3
  %1861 = call float @dx.op.binary.f32(i32 36, float %1848, float %1860)  ; FMin(a,b)
  %1862 = fmul fast float %1858, %1850
  %1863 = call float @dx.op.unary.f32(i32 7, float %1862)  ; Saturate(value)
  %1864 = fsub fast float %1855, %1851
  %1865 = fsub fast float %1856, %1852
  %1866 = fsub fast float %1857, %1853
  %1867 = fmul fast float %1863, %1864
  %1868 = fmul fast float %1863, %1865
  %1869 = fmul fast float %1863, %1866
  %1870 = fadd fast float %1867, %1851
  %1871 = fadd fast float %1868, %1852
  %1872 = fadd fast float %1869, %1853
  br i1 %1419, label %1885, label %1873, !dx.controlflow.hints !46

; <label>:1873                                    ; preds = %1846
  %1874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1875 = extractvalue %dx.types.CBufRet.f32 %1874, 0
  %1876 = extractvalue %dx.types.CBufRet.f32 %1874, 1
  %1877 = fadd fast float %1876, %1875
  %1878 = call float @dx.op.unary.f32(i32 7, float %1877)  ; Saturate(value)
  %1879 = extractvalue %dx.types.CBufRet.f32 %1874, 2
  %1880 = extractvalue %dx.types.CBufRet.f32 %1874, 3
  %1881 = fadd fast float %1880, %1879
  %1882 = call float @dx.op.unary.f32(i32 7, float %1881)  ; Saturate(value)
  %1883 = fmul fast float %1878, %1861
  %1884 = fmul fast float %1883, %1882
  br label %1885

; <label>:1885                                    ; preds = %1873, %1846, %1791, %1765, %1632, %1600, %1582, %1580
  %1886 = phi float [ 0.000000e+00, %1580 ], [ 0.000000e+00, %1582 ], [ %1609, %1632 ], [ %1609, %1600 ], [ %1768, %1791 ], [ %1768, %1765 ], [ %1850, %1873 ], [ %1850, %1846 ]
  %1887 = phi float [ 0.000000e+00, %1580 ], [ 0.000000e+00, %1582 ], [ %1643, %1632 ], [ %1620, %1600 ], [ %1802, %1791 ], [ %1779, %1765 ], [ %1884, %1873 ], [ %1861, %1846 ]
  %1888 = phi float [ 0.000000e+00, %1580 ], [ 0.000000e+00, %1582 ], [ %1629, %1632 ], [ %1629, %1600 ], [ %1788, %1791 ], [ %1788, %1765 ], [ %1870, %1873 ], [ %1870, %1846 ]
  %1889 = phi float [ 0.000000e+00, %1580 ], [ 0.000000e+00, %1582 ], [ %1630, %1632 ], [ %1630, %1600 ], [ %1789, %1791 ], [ %1789, %1765 ], [ %1871, %1873 ], [ %1871, %1846 ]
  %1890 = phi float [ 0.000000e+00, %1580 ], [ 0.000000e+00, %1582 ], [ %1631, %1632 ], [ %1631, %1600 ], [ %1790, %1791 ], [ %1790, %1765 ], [ %1872, %1873 ], [ %1872, %1846 ]
  %1891 = fmul fast float %1520, %1887
  %1892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1893 = extractvalue %dx.types.CBufRet.f32 %1892, 2
  %1894 = fsub fast float %1530, %1893
  %1895 = fcmp fast olt float %1891, -2.000000e+01
  %1896 = call float @dx.op.unary.f32(i32 21, float %1891)  ; Exp(value)
  %1897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1898 = extractvalue %dx.types.CBufRet.f32 %1897, 2
  %1899 = extractvalue %dx.types.CBufRet.f32 %1897, 3
  %1900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1901 = extractvalue %dx.types.CBufRet.f32 %1900, 2
  %1902 = fmul fast float %1899, %1894
  %1903 = call float @dx.op.unary.f32(i32 7, float %1902)  ; Saturate(value)
  %1904 = fsub fast float 1.000000e+00, %1903
  %1905 = fmul fast float %1496, 5.000000e-01
  %1906 = fadd fast float %1905, 5.000000e-01
  %1907 = call float @dx.op.unary.f32(i32 7, float %1906)  ; Saturate(value)
  %1908 = fsub fast float 1.000000e+00, %1907
  %1909 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1904)  ; FMax(a,b)
  %1910 = fdiv fast float %1908, %1909
  %1911 = fsub fast float %1894, %1459
  %1912 = call float @dx.op.unary.f32(i32 6, float %1911)  ; FAbs(value)
  %1913 = fmul fast float %1912, %1898
  %1914 = call float @dx.op.unary.f32(i32 7, float %1910)  ; Saturate(value)
  %1915 = fsub fast float 1.000000e+00, %1913
  %1916 = fmul fast float %1915, %1914
  %1917 = fadd fast float %1916, %1913
  %1918 = fmul fast float %1901, %1894
  %1919 = call float @dx.op.unary.f32(i32 7, float %1918)  ; Saturate(value)
  %1920 = fsub fast float 1.000000e+00, %1917
  %1921 = fmul fast float %1920, %1919
  %1922 = fadd fast float %1921, %1917
  %1923 = call float @dx.op.unary.f32(i32 7, float %1922)  ; Saturate(value)
  %1924 = fadd fast float %1896, -1.000000e+00
  %1925 = select i1 %1895, float -1.000000e+00, float %1924
  %1926 = fmul fast float %1923, %1925
  %1927 = fadd fast float %1926, 1.000000e+00
  %1928 = fsub fast float -0.000000e+00, %1926
  %1929 = fmul fast float %1888, %1928
  %1930 = fmul fast float %1889, %1928
  %1931 = fmul fast float %1890, %1928
  br label %1932

; <label>:1932                                    ; preds = %1885, %1510
  %1933 = phi float [ %1886, %1885 ], [ 0.000000e+00, %1510 ]
  %1934 = phi float [ %1927, %1885 ], [ 1.000000e+00, %1510 ]
  %1935 = phi float [ %1929, %1885 ], [ 0.000000e+00, %1510 ]
  %1936 = phi float [ %1930, %1885 ], [ 0.000000e+00, %1510 ]
  %1937 = phi float [ %1931, %1885 ], [ 0.000000e+00, %1510 ]
  %1938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1939 = extractvalue %dx.types.CBufRet.f32 %1938, 1
  %1940 = fsub fast float 1.000000e+00, %1934
  %1941 = fmul fast float %1940, %1511
  %1942 = fmul fast float %1941, %1939
  %1943 = fsub fast float %1511, %1942
  br i1 %1489, label %1944, label %1976, !dx.controlflow.hints !88

; <label>:1944                                    ; preds = %1932
  %1945 = fmul fast float %1514, %1486
  %1946 = fadd fast float %1945, %1487
  %1947 = call float @dx.op.unary.f32(i32 7, float %1946)  ; Saturate(value)
  %1948 = fmul fast float %1468, %1943
  %1949 = fsub fast float -0.000000e+00, %1948
  %1950 = fmul fast float %1469, %1943
  %1951 = fsub fast float -0.000000e+00, %1950
  %1952 = call float @dx.op.unary.f32(i32 21, float %1949)  ; Exp(value)
  %1953 = call float @dx.op.unary.f32(i32 21, float %1951)  ; Exp(value)
  %1954 = call float @dx.op.binary.f32(i32 35, float %1476, float %1952)  ; FMax(a,b)
  %1955 = call float @dx.op.binary.f32(i32 35, float %1476, float %1953)  ; FMax(a,b)
  %1956 = fsub fast float %1955, %1954
  %1957 = fmul fast float %1956, %1947
  %1958 = fadd fast float %1957, %1954
  %1959 = call float @dx.op.unary.f32(i32 7, float %1958)  ; Saturate(value)
  %1960 = fmul fast float %1512, %1490
  %1961 = fsub fast float 1.000000e+00, %1960
  %1962 = select i1 %1419, float %1961, float %1959
  %1963 = fsub fast float %1473, %1478
  %1964 = fsub fast float %1474, %1479
  %1965 = fsub fast float %1475, %1480
  %1966 = fmul fast float %1947, %1963
  %1967 = fmul fast float %1947, %1964
  %1968 = fmul fast float %1947, %1965
  %1969 = fadd fast float %1966, %1478
  %1970 = fadd fast float %1967, %1479
  %1971 = fadd fast float %1968, %1480
  %1972 = fsub fast float 1.000000e+00, %1962
  %1973 = fmul fast float %1972, %1969
  %1974 = fmul fast float %1972, %1970
  %1975 = fmul fast float %1972, %1971
  br label %2047

; <label>:1976                                    ; preds = %1932
  %1977 = fmul fast float %1943, %1485
  %1978 = call float @dx.op.unary.f32(i32 7, float %1977)  ; Saturate(value)
  %1979 = fsub fast float 2.000000e+00, %1978
  %1980 = fmul fast float %1978, 9.921875e-01
  %1981 = fmul fast float %1980, %1979
  %1982 = fadd fast float %1981, 3.906250e-03
  %1983 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %21, float %1982, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1984 = extractvalue %dx.types.ResRet.f32 %1983, 0
  %1985 = fsub fast float %1978, %1984
  %1986 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1985)  ; FMax(a,b)
  %1987 = fmul fast float %1513, %1471
  %1988 = call float @dx.op.unary.f32(i32 6, float %1987)  ; FAbs(value)
  %1989 = fcmp fast ogt float %1988, 0x3EB0C6F7A0000000
  br i1 %1989, label %1990, label %1996, !dx.controlflow.hints !89

; <label>:1990                                    ; preds = %1976
  %1991 = fmul fast float %1987, 0xBFF7154760000000
  %1992 = call float @dx.op.unary.f32(i32 21, float %1991)  ; Exp(value)
  %1993 = fsub fast float 1.000000e+00, %1992
  %1994 = fdiv fast float %1993, %1987
  %1995 = fmul fast float %1994, %1481
  br label %1996

; <label>:1996                                    ; preds = %1990, %1976
  %1997 = phi float [ %1995, %1990 ], [ %1481, %1976 ]
  %1998 = fadd fast float %1997, %1483
  %1999 = fmul fast float %1998, %1986
  %2000 = fmul fast float %1468, %1999
  %2001 = fsub fast float -0.000000e+00, %2000
  %2002 = fmul fast float %1469, %1999
  %2003 = fsub fast float -0.000000e+00, %2002
  %2004 = fmul fast float %1470, %1999
  %2005 = fsub fast float -0.000000e+00, %2004
  %2006 = call float @dx.op.unary.f32(i32 21, float %2001)  ; Exp(value)
  %2007 = call float @dx.op.unary.f32(i32 21, float %2003)  ; Exp(value)
  %2008 = call float @dx.op.unary.f32(i32 21, float %2005)  ; Exp(value)
  br i1 %1419, label %2009, label %2017, !dx.controlflow.hints !90

; <label>:2009                                    ; preds = %1996
  %2010 = fmul fast float %2006, %1512
  %2011 = fmul fast float %2007, %1512
  %2012 = fmul fast float %2008, %1512
  %2013 = fsub fast float 1.000000e+00, %1512
  %2014 = fadd fast float %2010, %2013
  %2015 = fadd fast float %2011, %2013
  %2016 = fadd fast float %2012, %2013
  br label %2017

; <label>:2017                                    ; preds = %2009, %1996
  %2018 = phi float [ %2014, %2009 ], [ %2006, %1996 ]
  %2019 = phi float [ %2015, %2009 ], [ %2007, %1996 ]
  %2020 = phi float [ %2016, %2009 ], [ %2008, %1996 ]
  %2021 = fmul fast float %1514, %1514
  %2022 = fadd fast float %2021, 1.000000e+00
  %2023 = fmul fast float %2022, 0x3FAE8EC8A0000000
  %2024 = fmul fast float %2023, %1478
  %2025 = fmul fast float %2023, %1479
  %2026 = fmul fast float %2023, %1480
  %2027 = fmul fast float %1514, %1476
  %2028 = fsub fast float 1.000000e+00, %2027
  %2029 = fmul fast float %1476, %1476
  %2030 = fsub fast float 1.000000e+00, %2029
  %2031 = fmul fast float %2030, 0x3FB45F3060000000
  %2032 = fmul fast float %2028, %2028
  %2033 = fdiv fast float 1.000000e+00, %2032
  %2034 = fmul fast float %2031, %2033
  %2035 = fmul fast float %2034, %1473
  %2036 = fmul fast float %2034, %1474
  %2037 = fmul fast float %2034, %1475
  %2038 = fadd fast float %2035, %2024
  %2039 = fadd fast float %2036, %2025
  %2040 = fadd fast float %2037, %2026
  %2041 = fsub fast float 1.000000e+00, %2018
  %2042 = fsub fast float 1.000000e+00, %2019
  %2043 = fsub fast float 1.000000e+00, %2020
  %2044 = fmul fast float %2038, %2041
  %2045 = fmul fast float %2039, %2042
  %2046 = fmul fast float %2040, %2043
  br label %2047

; <label>:2047                                    ; preds = %2017, %1944
  %2048 = phi float [ %1973, %1944 ], [ %2044, %2017 ]
  %2049 = phi float [ %1974, %1944 ], [ %2045, %2017 ]
  %2050 = phi float [ %1975, %1944 ], [ %2046, %2017 ]
  %2051 = phi float [ %1962, %1944 ], [ %2018, %2017 ]
  %2052 = phi float [ %1962, %1944 ], [ %2019, %2017 ]
  %2053 = phi float [ %1962, %1944 ], [ %2020, %2017 ]
  br i1 %1522, label %2054, label %2252, !dx.controlflow.hints !91

; <label>:2054                                    ; preds = %2047
  %2055 = extractvalue %dx.types.CBufRet.f32 %1938, 0
  %2056 = fmul fast float %2055, %1940
  %2057 = fsub fast float %1935, %2048
  %2058 = fsub fast float %1936, %2049
  %2059 = fsub fast float %1937, %2050
  %2060 = fmul fast float %2056, %2057
  %2061 = fmul fast float %2056, %2058
  %2062 = fmul fast float %2056, %2059
  %2063 = fadd fast float %2060, %2048
  %2064 = fadd fast float %2061, %2049
  %2065 = fadd fast float %2062, %2050
  %2066 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2051)  ; FMax(a,b)
  %2067 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2052)  ; FMax(a,b)
  %2068 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2053)  ; FMax(a,b)
  %2069 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1934)  ; FMax(a,b)
  %2070 = call float @dx.op.binary.f32(i32 35, float %1933, float %1943)  ; FMax(a,b)
  %2071 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2070)  ; FMax(a,b)
  %2072 = fdiv fast float %1933, %2071
  %2073 = call float @dx.op.unary.f32(i32 7, float %2072)  ; Saturate(value)
  %2074 = fdiv fast float %1943, %2071
  %2075 = call float @dx.op.unary.f32(i32 7, float %2074)  ; Saturate(value)
  %2076 = fcmp fast une float %2069, 1.000000e+00
  br i1 %2076, label %2077, label %2090, !dx.controlflow.hints !92

; <label>:2077                                    ; preds = %2054
  %2078 = call float @dx.op.unary.f32(i32 23, float %2069)  ; Log(value)
  %2079 = fmul fast float %2078, 0x3FE62E4300000000
  %2080 = fmul fast float %1935, %2079
  %2081 = fsub fast float -0.000000e+00, %2080
  %2082 = fmul fast float %1936, %2079
  %2083 = fsub fast float -0.000000e+00, %2082
  %2084 = fmul fast float %1937, %2079
  %2085 = fsub fast float -0.000000e+00, %2084
  %2086 = fsub fast float 1.000000e+00, %2069
  %2087 = fdiv fast float %2081, %2086
  %2088 = fdiv fast float %2083, %2086
  %2089 = fdiv fast float %2085, %2086
  br label %2090

; <label>:2090                                    ; preds = %2077, %2054
  %2091 = phi float [ %2087, %2077 ], [ %1935, %2054 ]
  %2092 = phi float [ %2088, %2077 ], [ %1936, %2054 ]
  %2093 = phi float [ %2089, %2077 ], [ %1937, %2054 ]
  %2094 = phi float [ %2079, %2077 ], [ 0.000000e+00, %2054 ]
  %2095 = fcmp fast une float %2066, 1.000000e+00
  br i1 %2095, label %2096, label %2103, !dx.controlflow.hints !93

; <label>:2096                                    ; preds = %2090
  %2097 = call float @dx.op.unary.f32(i32 23, float %2066)  ; Log(value)
  %2098 = fmul fast float %2097, 0x3FE62E4300000000
  %2099 = fmul fast float %2063, %2098
  %2100 = fsub fast float -0.000000e+00, %2099
  %2101 = fsub fast float 1.000000e+00, %2066
  %2102 = fdiv fast float %2100, %2101
  br label %2103

; <label>:2103                                    ; preds = %2096, %2090
  %2104 = phi float [ %2102, %2096 ], [ %2063, %2090 ]
  %2105 = phi float [ %2098, %2096 ], [ 0.000000e+00, %2090 ]
  %2106 = fcmp fast une float %2067, 1.000000e+00
  br i1 %2106, label %2107, label %2114, !dx.controlflow.hints !93

; <label>:2107                                    ; preds = %2103
  %2108 = call float @dx.op.unary.f32(i32 23, float %2067)  ; Log(value)
  %2109 = fmul fast float %2108, 0x3FE62E4300000000
  %2110 = fmul fast float %2064, %2109
  %2111 = fsub fast float -0.000000e+00, %2110
  %2112 = fsub fast float 1.000000e+00, %2067
  %2113 = fdiv fast float %2111, %2112
  br label %2114

; <label>:2114                                    ; preds = %2107, %2103
  %2115 = phi float [ %2113, %2107 ], [ %2064, %2103 ]
  %2116 = phi float [ %2109, %2107 ], [ 0.000000e+00, %2103 ]
  %2117 = fcmp fast une float %2068, 1.000000e+00
  br i1 %2117, label %2118, label %2125, !dx.controlflow.hints !93

; <label>:2118                                    ; preds = %2114
  %2119 = call float @dx.op.unary.f32(i32 23, float %2068)  ; Log(value)
  %2120 = fmul fast float %2119, 0x3FE62E4300000000
  %2121 = fmul fast float %2065, %2120
  %2122 = fsub fast float -0.000000e+00, %2121
  %2123 = fsub fast float 1.000000e+00, %2068
  %2124 = fdiv fast float %2122, %2123
  br label %2125

; <label>:2125                                    ; preds = %2118, %2114
  %2126 = phi float [ %2124, %2118 ], [ %2065, %2114 ]
  %2127 = phi float [ %2120, %2118 ], [ 0.000000e+00, %2114 ]
  %2128 = fmul fast float %2091, %2075
  %2129 = fmul fast float %2092, %2075
  %2130 = fmul fast float %2093, %2075
  %2131 = fmul fast float %2094, %2075
  %2132 = fmul fast float %2104, %2073
  %2133 = fmul fast float %2115, %2073
  %2134 = fmul fast float %2126, %2073
  %2135 = fmul fast float %2105, %2073
  %2136 = fmul fast float %2116, %2073
  %2137 = fmul fast float %2127, %2073
  %2138 = fadd fast float %2132, %2128
  %2139 = fadd fast float %2133, %2129
  %2140 = fadd fast float %2134, %2130
  %2141 = fadd fast float %2135, %2131
  %2142 = fadd fast float %2136, %2131
  %2143 = fadd fast float %2137, %2131
  %2144 = fcmp fast une float %2141, 0.000000e+00
  br i1 %2144, label %2145, label %2152, !dx.controlflow.hints !94

; <label>:2145                                    ; preds = %2125
  %2146 = fmul fast float %2141, 0x3FF7154760000000
  %2147 = call float @dx.op.unary.f32(i32 21, float %2146)  ; Exp(value)
  %2148 = fsub fast float 1.000000e+00, %2147
  %2149 = fmul fast float %2138, %2148
  %2150 = fsub fast float -0.000000e+00, %2149
  %2151 = fdiv fast float %2150, %2141
  br label %2152

; <label>:2152                                    ; preds = %2145, %2125
  %2153 = phi float [ %2147, %2145 ], [ 1.000000e+00, %2125 ]
  %2154 = phi float [ %2151, %2145 ], [ %2138, %2125 ]
  %2155 = fcmp fast une float %2142, 0.000000e+00
  br i1 %2155, label %2156, label %2163, !dx.controlflow.hints !94

; <label>:2156                                    ; preds = %2152
  %2157 = fmul fast float %2142, 0x3FF7154760000000
  %2158 = call float @dx.op.unary.f32(i32 21, float %2157)  ; Exp(value)
  %2159 = fsub fast float 1.000000e+00, %2158
  %2160 = fmul fast float %2139, %2159
  %2161 = fsub fast float -0.000000e+00, %2160
  %2162 = fdiv fast float %2161, %2142
  br label %2163

; <label>:2163                                    ; preds = %2156, %2152
  %2164 = phi float [ %2158, %2156 ], [ 1.000000e+00, %2152 ]
  %2165 = phi float [ %2162, %2156 ], [ %2139, %2152 ]
  %2166 = fcmp fast une float %2143, 0.000000e+00
  br i1 %2166, label %2167, label %2174, !dx.controlflow.hints !94

; <label>:2167                                    ; preds = %2163
  %2168 = fmul fast float %2143, 0x3FF7154760000000
  %2169 = call float @dx.op.unary.f32(i32 21, float %2168)  ; Exp(value)
  %2170 = fsub fast float 1.000000e+00, %2169
  %2171 = fmul fast float %2140, %2170
  %2172 = fsub fast float -0.000000e+00, %2171
  %2173 = fdiv fast float %2172, %2143
  br label %2174

; <label>:2174                                    ; preds = %2167, %2163
  %2175 = phi float [ %2169, %2167 ], [ 1.000000e+00, %2163 ]
  %2176 = phi float [ %2173, %2167 ], [ %2140, %2163 ]
  %2177 = fcmp fast ogt float %2073, %2075
  br i1 %2177, label %2178, label %2198, !dx.controlflow.hints !95

; <label>:2178                                    ; preds = %2174
  %2179 = fsub fast float 1.000000e+00, %2075
  %2180 = fmul fast float %2091, %2179
  %2181 = fmul fast float %2092, %2179
  %2182 = fmul fast float %2093, %2179
  %2183 = fmul fast float %2094, %2179
  %2184 = fcmp fast une float %2183, 0.000000e+00
  br i1 %2184, label %2185, label %2236, !dx.controlflow.hints !96

; <label>:2185                                    ; preds = %2178
  %2186 = fmul fast float %2183, 0x3FF7154760000000
  %2187 = call float @dx.op.unary.f32(i32 21, float %2186)  ; Exp(value)
  %2188 = fsub fast float 1.000000e+00, %2187
  %2189 = fmul fast float %2180, %2188
  %2190 = fsub fast float -0.000000e+00, %2189
  %2191 = fmul fast float %2181, %2188
  %2192 = fsub fast float -0.000000e+00, %2191
  %2193 = fmul fast float %2182, %2188
  %2194 = fsub fast float -0.000000e+00, %2193
  %2195 = fdiv fast float %2190, %2183
  %2196 = fdiv fast float %2192, %2183
  %2197 = fdiv fast float %2194, %2183
  br label %2236

; <label>:2198                                    ; preds = %2174
  %2199 = fsub fast float 1.000000e+00, %2073
  %2200 = fmul fast float %2104, %2199
  %2201 = fmul fast float %2115, %2199
  %2202 = fmul fast float %2126, %2199
  %2203 = fmul fast float %2105, %2199
  %2204 = fmul fast float %2116, %2199
  %2205 = fmul fast float %2127, %2199
  %2206 = fcmp fast une float %2203, 0.000000e+00
  br i1 %2206, label %2207, label %2214, !dx.controlflow.hints !94

; <label>:2207                                    ; preds = %2198
  %2208 = fmul fast float %2203, 0x3FF7154760000000
  %2209 = call float @dx.op.unary.f32(i32 21, float %2208)  ; Exp(value)
  %2210 = fsub fast float 1.000000e+00, %2209
  %2211 = fmul fast float %2200, %2210
  %2212 = fsub fast float -0.000000e+00, %2211
  %2213 = fdiv fast float %2212, %2203
  br label %2214

; <label>:2214                                    ; preds = %2207, %2198
  %2215 = phi float [ %2213, %2207 ], [ %2200, %2198 ]
  %2216 = phi float [ %2209, %2207 ], [ 1.000000e+00, %2198 ]
  %2217 = fcmp fast une float %2204, 0.000000e+00
  br i1 %2217, label %2218, label %2225, !dx.controlflow.hints !94

; <label>:2218                                    ; preds = %2214
  %2219 = fmul fast float %2204, 0x3FF7154760000000
  %2220 = call float @dx.op.unary.f32(i32 21, float %2219)  ; Exp(value)
  %2221 = fsub fast float 1.000000e+00, %2220
  %2222 = fmul fast float %2201, %2221
  %2223 = fsub fast float -0.000000e+00, %2222
  %2224 = fdiv fast float %2223, %2204
  br label %2225

; <label>:2225                                    ; preds = %2218, %2214
  %2226 = phi float [ %2224, %2218 ], [ %2201, %2214 ]
  %2227 = phi float [ %2220, %2218 ], [ 1.000000e+00, %2214 ]
  %2228 = fcmp fast une float %2205, 0.000000e+00
  br i1 %2228, label %2229, label %2236, !dx.controlflow.hints !94

; <label>:2229                                    ; preds = %2225
  %2230 = fmul fast float %2205, 0x3FF7154760000000
  %2231 = call float @dx.op.unary.f32(i32 21, float %2230)  ; Exp(value)
  %2232 = fsub fast float 1.000000e+00, %2231
  %2233 = fmul fast float %2202, %2232
  %2234 = fsub fast float -0.000000e+00, %2233
  %2235 = fdiv fast float %2234, %2205
  br label %2236

; <label>:2236                                    ; preds = %2229, %2225, %2185, %2178
  %2237 = phi float [ %2235, %2229 ], [ %2197, %2185 ], [ %2182, %2178 ], [ %2202, %2225 ]
  %2238 = phi float [ %2226, %2229 ], [ %2196, %2185 ], [ %2181, %2178 ], [ %2226, %2225 ]
  %2239 = phi float [ %2215, %2229 ], [ %2195, %2185 ], [ %2180, %2178 ], [ %2215, %2225 ]
  %2240 = phi float [ %2231, %2229 ], [ %2187, %2185 ], [ 1.000000e+00, %2178 ], [ 1.000000e+00, %2225 ]
  %2241 = phi float [ %2227, %2229 ], [ %2187, %2185 ], [ 1.000000e+00, %2178 ], [ %2227, %2225 ]
  %2242 = phi float [ %2216, %2229 ], [ %2187, %2185 ], [ 1.000000e+00, %2178 ], [ %2216, %2225 ]
  %2243 = fmul fast float %2242, %2154
  %2244 = fmul fast float %2241, %2165
  %2245 = fmul fast float %2240, %2176
  %2246 = fadd fast float %2243, %2239
  %2247 = fadd fast float %2244, %2238
  %2248 = fadd fast float %2245, %2237
  %2249 = fmul fast float %2242, %2153
  %2250 = fmul fast float %2241, %2164
  %2251 = fmul fast float %2240, %2175
  br label %2252

; <label>:2252                                    ; preds = %2236, %2047
  %2253 = phi float [ %2251, %2236 ], [ %2053, %2047 ]
  %2254 = phi float [ %2250, %2236 ], [ %2052, %2047 ]
  %2255 = phi float [ %2249, %2236 ], [ %2051, %2047 ]
  %2256 = phi float [ %2248, %2236 ], [ %2050, %2047 ]
  %2257 = phi float [ %2247, %2236 ], [ %2049, %2047 ]
  %2258 = phi float [ %2246, %2236 ], [ %2048, %2047 ]
  %2259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %21, float %1390, float %1391, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2260 = extractvalue %dx.types.ResRet.f32 %2259, 0
  %2261 = extractvalue %dx.types.ResRet.f32 %2259, 1
  %2262 = extractvalue %dx.types.ResRet.f32 %2259, 2
  %2263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2264 = extractvalue %dx.types.CBufRet.f32 %2263, 1
  %2265 = fmul fast float %2264, %2260
  %2266 = fmul fast float %2264, %2261
  %2267 = fmul fast float %2264, %2262
  %2268 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %21, float %1390, float %1391, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2269 = extractvalue %dx.types.ResRet.f32 %2268, 0
  %2270 = fmul fast float %2269, %2255
  %2271 = fmul fast float %2269, %2254
  %2272 = fmul fast float %2269, %2253
  %2273 = fmul fast float %2269, %2258
  %2274 = fmul fast float %2269, %2257
  %2275 = fmul fast float %2269, %2256
  %2276 = fadd fast float %2273, %2265
  %2277 = fadd fast float %2274, %2266
  %2278 = fadd fast float %2275, %2267
  br label %2279

; <label>:2279                                    ; preds = %2252, %1383
  %2280 = phi float [ 0.000000e+00, %1383 ], [ %2276, %2252 ]
  %2281 = phi float [ 0.000000e+00, %1383 ], [ %2277, %2252 ]
  %2282 = phi float [ 0.000000e+00, %1383 ], [ %2278, %2252 ]
  %2283 = phi float [ 1.000000e+00, %1383 ], [ %2270, %2252 ]
  %2284 = phi float [ 1.000000e+00, %1383 ], [ %2271, %2252 ]
  %2285 = phi float [ 1.000000e+00, %1383 ], [ %2272, %2252 ]
  %2286 = phi float [ %1416, %1383 ], [ %1423, %2252 ]
  %2287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2288 = extractvalue %dx.types.CBufRet.f32 %2287, 2
  %2289 = extractvalue %dx.types.CBufRet.f32 %2287, 3
  %2290 = fmul fast float %2288, %1386
  %2291 = fmul fast float %2289, %1387
  %2292 = call float @dx.op.unary.f32(i32 7, float %2290)  ; Saturate(value)
  %2293 = call float @dx.op.unary.f32(i32 7, float %2291)  ; Saturate(value)
  %2294 = select i1 %1414, i32 2, i32 0
  %2295 = or i32 %2294, 1
  %2296 = uitofp i32 %2295 to float
  %2297 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %21, float %2292, float %2293, float %2296, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2298 = extractvalue %dx.types.ResRet.f32 %2297, 0
  %2299 = extractvalue %dx.types.ResRet.f32 %2297, 1
  %2300 = extractvalue %dx.types.ResRet.f32 %2297, 2
  %2301 = extractvalue %dx.types.ResRet.f32 %2297, 3
  %2302 = add nuw nsw i32 %2294, 2
  %2303 = uitofp i32 %2302 to float
  %2304 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %21, float %2292, float %2293, float %2303, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2305 = extractvalue %dx.types.ResRet.f32 %2304, 0
  %2306 = extractvalue %dx.types.ResRet.f32 %2304, 1
  %2307 = extractvalue %dx.types.ResRet.f32 %2304, 2
  %2308 = extractvalue %dx.types.ResRet.f32 %2304, 3
  %2309 = call float @dx.op.binary.f32(i32 35, float %2299, float %2300)  ; FMax(a,b)
  %2310 = call float @dx.op.binary.f32(i32 35, float %2298, float %2309)  ; FMax(a,b)
  %2311 = call float @dx.op.binary.f32(i32 35, float %2310, float %2301)  ; FMax(a,b)
  %2312 = call float @dx.op.binary.f32(i32 36, float %2306, float %2307)  ; FMin(a,b)
  %2313 = call float @dx.op.binary.f32(i32 36, float %2305, float %2312)  ; FMin(a,b)
  %2314 = call float @dx.op.binary.f32(i32 36, float %2313, float %2308)  ; FMin(a,b)
  %2315 = fmul fast float %2311, 2.550000e+02
  %2316 = fadd fast float %2315, 0x3F70101020000000
  %2317 = fptoui float %2316 to i32
  %2318 = fmul fast float %2314, 2.550000e+02
  %2319 = fadd fast float %2318, 0x3F70101020000000
  %2320 = fptoui float %2319 to i32
  %2321 = icmp ult i32 %2317, %2320
  br i1 %2321, label %2322, label %2490, !dx.controlflow.hints !97

; <label>:2322                                    ; preds = %2279
  %2323 = fadd fast float %2286, -4.000000e+00
  %2324 = call float @dx.op.binary.f32(i32 35, float %2323, float 0.000000e+00)  ; FMax(a,b)
  %2325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2326 = extractvalue %dx.types.CBufRet.f32 %2325, 0
  %2327 = fadd fast float %2326, %2324
  %2328 = extractvalue %dx.types.CBufRet.f32 %2325, 2
  %2329 = fmul fast float %2327, %2328
  %2330 = call float @dx.op.unary.f32(i32 23, float %2329)  ; Log(value)
  %2331 = extractvalue %dx.types.CBufRet.f32 %2325, 3
  %2332 = fmul fast float %2331, %2330
  %2333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2334 = extractvalue %dx.types.CBufRet.f32 %2333, 2
  %2335 = fmul fast float %2332, %2334
  %2336 = call float @dx.op.unary.f32(i32 7, float %2335)  ; Saturate(value)
  %2337 = select i1 %1419, float 1.000000e+00, float %2336
  %2338 = uitofp i32 %2317 to float
  %2339 = uitofp i32 %2320 to float
  %2340 = fadd fast float %2338, 5.000000e-01
  %2341 = fadd fast float %2339, 5.000000e-01
  %2342 = fmul fast float %2334, %2340
  %2343 = fmul fast float %2334, %2341
  %2344 = fadd fast float %2342, 0x3F0FFB4800000000
  %2345 = fadd fast float %2343, 0xBF0FFB4800000000
  %2346 = call float @dx.op.binary.f32(i32 35, float %2337, float %2344)  ; FMax(a,b)
  %2347 = call float @dx.op.binary.f32(i32 36, float %2346, float %2345)  ; FMin(a,b)
  %2348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2349 = extractvalue %dx.types.CBufRet.f32 %2348, 1
  %2350 = extractvalue %dx.types.CBufRet.f32 %2348, 2
  %2351 = extractvalue %dx.types.CBufRet.f32 %2348, 0
  %2352 = select i1 %1414, float %2351, float 0.000000e+00
  %2353 = fmul fast float %2349, %2347
  %2354 = fadd fast float %2352, %2353
  %2355 = fadd fast float %2352, %2350
  %2356 = fsub fast float %2349, %2350
  %2357 = fadd fast float %2356, %2352
  %2358 = call float @dx.op.binary.f32(i32 35, float %2354, float %2355)  ; FMax(a,b)
  %2359 = call float @dx.op.binary.f32(i32 36, float %2358, float %2357)  ; FMin(a,b)
  %2360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %20, float %2292, float %2293, float %2359, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2361 = extractvalue %dx.types.ResRet.f32 %2360, 0
  %2362 = extractvalue %dx.types.ResRet.f32 %2360, 1
  %2363 = extractvalue %dx.types.ResRet.f32 %2360, 2
  %2364 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %2365 = extractvalue %dx.types.CBufRet.i32 %2364, 0
  %2366 = extractvalue %dx.types.CBufRet.i32 %2364, 1
  %2367 = uitofp i32 %2365 to float
  %2368 = uitofp i32 %2366 to float
  %2369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %2370 = extractvalue %dx.types.CBufRet.f32 %2369, 0
  %2371 = extractvalue %dx.types.CBufRet.f32 %2369, 1
  %2372 = fmul fast float %2367, %2292
  %2373 = fmul fast float %2368, %2293
  %2374 = fadd fast float %2372, -5.000000e-01
  %2375 = fadd fast float %2373, -5.000000e-01
  %2376 = call float @dx.op.unary.f32(i32 22, float %2374)  ; Frc(value)
  %2377 = call float @dx.op.unary.f32(i32 22, float %2375)  ; Frc(value)
  %2378 = fmul fast float %2376, %2376
  %2379 = fmul fast float %2378, %2376
  %2380 = fsub fast float 3.000000e+00, %2376
  %2381 = fmul fast float %2378, %2380
  %2382 = fmul fast float %2376, 3.000000e+00
  %2383 = fmul fast float %2379, 3.000000e+00
  %2384 = fmul fast float %2378, 6.000000e+00
  %2385 = fsub fast float %2383, %2384
  %2386 = fadd fast float %2385, 4.000000e+00
  %2387 = fmul fast float %2386, 0x3FC5555560000000
  %2388 = fmul fast float %2379, -3.000000e+00
  %2389 = fadd fast float %2378, %2376
  %2390 = fmul fast float %2389, 3.000000e+00
  %2391 = fadd fast float %2388, 1.000000e+00
  %2392 = fadd fast float %2391, %2390
  %2393 = fmul fast float %2379, 0x3FC5555560000000
  %2394 = fmul fast float %2377, %2377
  %2395 = fmul fast float %2394, %2377
  %2396 = fsub fast float 3.000000e+00, %2377
  %2397 = fmul fast float %2394, %2396
  %2398 = fmul fast float %2377, 3.000000e+00
  %2399 = fmul fast float %2395, 3.000000e+00
  %2400 = fmul fast float %2394, 6.000000e+00
  %2401 = fsub fast float %2399, %2400
  %2402 = fadd fast float %2401, 4.000000e+00
  %2403 = fmul fast float %2402, 0x3FC5555560000000
  %2404 = fmul fast float %2395, -3.000000e+00
  %2405 = fadd fast float %2394, %2377
  %2406 = fmul fast float %2405, 3.000000e+00
  %2407 = fadd fast float %2404, 1.000000e+00
  %2408 = fadd fast float %2407, %2406
  %2409 = fmul fast float %2395, 0x3FC5555560000000
  %2410 = fadd fast float %2376, 1.000000e+00
  %2411 = fsub fast float 1.000000e+00, %2382
  %2412 = fadd fast float %2411, %2381
  %2413 = fadd fast float %2412, %2386
  %2414 = fmul fast float %2413, 0x3FC5555560000000
  %2415 = fdiv fast float %2387, %2414
  %2416 = fsub fast float %2410, %2415
  %2417 = fsub fast float 1.000000e+00, %2376
  %2418 = fadd fast float %2392, %2379
  %2419 = fmul fast float %2418, 0x3FC5555560000000
  %2420 = fdiv fast float %2393, %2419
  %2421 = fadd fast float %2417, %2420
  %2422 = fadd fast float %2377, 1.000000e+00
  %2423 = fsub fast float 1.000000e+00, %2398
  %2424 = fadd fast float %2423, %2397
  %2425 = fadd fast float %2424, %2402
  %2426 = fmul fast float %2425, 0x3FC5555560000000
  %2427 = fdiv fast float %2403, %2426
  %2428 = fsub fast float %2422, %2427
  %2429 = fsub fast float 1.000000e+00, %2377
  %2430 = fadd fast float %2408, %2395
  %2431 = fmul fast float %2430, 0x3FC5555560000000
  %2432 = fdiv fast float %2409, %2431
  %2433 = fadd fast float %2432, %2429
  %2434 = fmul fast float %2416, %2370
  %2435 = fsub fast float %2292, %2434
  %2436 = fmul fast float %2421, %2370
  %2437 = fadd fast float %2436, %2292
  %2438 = fmul fast float %2433, %2371
  %2439 = fadd fast float %2438, %2293
  %2440 = fmul fast float %2428, %2371
  %2441 = fsub fast float %2293, %2440
  %2442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %2435, float %2441, float %2359, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2443 = extractvalue %dx.types.ResRet.f32 %2442, 0
  %2444 = extractvalue %dx.types.ResRet.f32 %2442, 1
  %2445 = extractvalue %dx.types.ResRet.f32 %2442, 2
  %2446 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %2437, float %2441, float %2359, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2447 = extractvalue %dx.types.ResRet.f32 %2446, 0
  %2448 = extractvalue %dx.types.ResRet.f32 %2446, 1
  %2449 = extractvalue %dx.types.ResRet.f32 %2446, 2
  %2450 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %2435, float %2439, float %2359, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2451 = extractvalue %dx.types.ResRet.f32 %2450, 0
  %2452 = extractvalue %dx.types.ResRet.f32 %2450, 1
  %2453 = extractvalue %dx.types.ResRet.f32 %2450, 2
  %2454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %2437, float %2439, float %2359, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2455 = extractvalue %dx.types.ResRet.f32 %2454, 0
  %2456 = extractvalue %dx.types.ResRet.f32 %2454, 1
  %2457 = extractvalue %dx.types.ResRet.f32 %2454, 2
  %2458 = fsub fast float %2451, %2443
  %2459 = fsub fast float %2452, %2444
  %2460 = fsub fast float %2453, %2445
  %2461 = fmul fast float %2458, %2431
  %2462 = fmul fast float %2459, %2431
  %2463 = fmul fast float %2460, %2431
  %2464 = fadd fast float %2461, %2443
  %2465 = fadd fast float %2462, %2444
  %2466 = fadd fast float %2463, %2445
  %2467 = fsub fast float %2455, %2447
  %2468 = fsub fast float %2456, %2448
  %2469 = fsub fast float %2457, %2449
  %2470 = fmul fast float %2467, %2431
  %2471 = fmul fast float %2468, %2431
  %2472 = fmul fast float %2469, %2431
  %2473 = fsub fast float %2447, %2464
  %2474 = fadd fast float %2473, %2470
  %2475 = fsub fast float %2448, %2465
  %2476 = fadd fast float %2475, %2471
  %2477 = fsub fast float %2449, %2466
  %2478 = fadd fast float %2477, %2472
  %2479 = fmul fast float %2474, %2419
  %2480 = fmul fast float %2476, %2419
  %2481 = fmul fast float %2478, %2419
  %2482 = fadd fast float %2479, %2464
  %2483 = fadd fast float %2480, %2465
  %2484 = fadd fast float %2481, %2466
  %2485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2486 = extractvalue %dx.types.CBufRet.f32 %2485, 1
  %2487 = fmul fast float %2482, %2486
  %2488 = fmul fast float %2483, %2486
  %2489 = fmul fast float %2484, %2486
  br label %2490

; <label>:2490                                    ; preds = %2322, %2279
  %2491 = phi float [ %2361, %2322 ], [ 1.000000e+00, %2279 ]
  %2492 = phi float [ %2362, %2322 ], [ 1.000000e+00, %2279 ]
  %2493 = phi float [ %2363, %2322 ], [ 1.000000e+00, %2279 ]
  %2494 = phi float [ %2487, %2322 ], [ 0.000000e+00, %2279 ]
  %2495 = phi float [ %2488, %2322 ], [ 0.000000e+00, %2279 ]
  %2496 = phi float [ %2489, %2322 ], [ 0.000000e+00, %2279 ]
  %2497 = fmul fast float %2491, %2283
  %2498 = fmul fast float %2492, %2284
  %2499 = fmul fast float %2493, %2285
  %2500 = fmul fast float %2491, %2280
  %2501 = fmul fast float %2492, %2281
  %2502 = fmul fast float %2493, %2282
  %2503 = fadd fast float %2494, %2500
  %2504 = fadd fast float %2495, %2501
  %2505 = fadd fast float %2496, %2502
  %2506 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %1367, i32 %1368, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2507 = extractvalue %dx.types.ResRet.f32 %2506, 0
  %2508 = extractvalue %dx.types.ResRet.f32 %2506, 1
  %2509 = extractvalue %dx.types.ResRet.f32 %2506, 2
  %2510 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2511 = extractvalue %dx.types.CBufRet.i32 %2510, 3
  %2512 = and i32 %2511, 3
  %2513 = icmp ne i32 %2512, 0
  %2514 = and i32 %2511, 4
  %2515 = icmp ne i32 %2514, 0
  %2516 = and i1 %2513, %2515
  br i1 %2516, label %2517, label %2524, !dx.controlflow.hints !98

; <label>:2517                                    ; preds = %2490
  %2518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %21, float %1390, float %1391, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2519 = extractvalue %dx.types.ResRet.f32 %2518, 0
  %2520 = fsub fast float 1.000000e+00, %2519
  %2521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %2522 = extractvalue %dx.types.CBufRet.f32 %2521, 0
  %2523 = fcmp fast olt float %2520, %2522
  br label %2527

; <label>:2524                                    ; preds = %2490
  %2525 = icmp eq i32 %2514, 0
  %2526 = and i1 %2513, %2525
  br label %2527

; <label>:2527                                    ; preds = %2524, %2517
  %2528 = phi i1 [ %2523, %2517 ], [ %2526, %2524 ]
  %2529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2530 = extractvalue %dx.types.CBufRet.f32 %2529, 0
  br i1 %2528, label %2531, label %2550, !dx.controlflow.hints !99

; <label>:2531                                    ; preds = %2527
  %2532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2533 = extractvalue %dx.types.CBufRet.f32 %2532, 3
  %2534 = call float @dx.op.dot3.f32(i32 55, float %2497, float %2498, float %2499, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2535 = fmul fast float %2534, %2507
  %2536 = call float @dx.op.dot3.f32(i32 55, float %2503, float %2504, float %2505, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2537 = fmul fast float %2530, %2536
  %2538 = fadd fast float %2537, %2535
  br i1 %2516, label %2539, label %2545, !dx.controlflow.hints !100

; <label>:2539                                    ; preds = %2531
  %2540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2541 = extractvalue %dx.types.CBufRet.f32 %2540, 1
  %2542 = fadd fast float %2497, -1.000000e+00
  %2543 = fmul fast float %2541, %2542
  %2544 = fadd fast float %2543, 1.000000e+00
  br label %2545

; <label>:2545                                    ; preds = %2539, %2531
  %2546 = phi float [ %2544, %2539 ], [ %2497, %2531 ]
  %2547 = fsub fast float %2508, %2533
  %2548 = fmul fast float %2546, %2547
  %2549 = fadd fast float %2548, %2533
  br label %2560

; <label>:2550                                    ; preds = %2527
  %2551 = fmul fast float %2507, %2497
  %2552 = fmul fast float %2508, %2498
  %2553 = fmul fast float %2509, %2499
  %2554 = fmul fast float %2530, %2503
  %2555 = fmul fast float %2530, %2504
  %2556 = fmul fast float %2530, %2505
  %2557 = fadd fast float %2554, %2551
  %2558 = fadd fast float %2555, %2552
  %2559 = fadd fast float %2556, %2553
  br label %2560

; <label>:2560                                    ; preds = %2550, %2545
  %2561 = phi float [ %2538, %2545 ], [ %2557, %2550 ]
  %2562 = phi float [ %2549, %2545 ], [ %2558, %2550 ]
  %2563 = phi float [ %2509, %2545 ], [ %2559, %2550 ]
  %2564 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %2565 = extractvalue %dx.types.CBufRet.i32 %2564, 1
  %2566 = shl i32 %2565, 1
  %2567 = lshr i32 %1368, 5
  %2568 = extractvalue %dx.types.CBufRet.i32 %2564, 0
  %2569 = mul i32 %2568, %2567
  %2570 = add i32 %2566, %1274
  %2571 = add i32 %2570, %2569
  %2572 = shl i32 %2571, 2
  %2573 = and i32 %1368, 24
  %2574 = or i32 %2573, %1279
  %2575 = shl i32 1, %2574
  %2576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2572, i32 undef)  ; BufferLoad(srv,index,wot)
  %2577 = extractvalue %dx.types.ResRet.i32 %2576, 0
  %2578 = and i32 %2577, %2575
  %2579 = icmp eq i32 %2578, 0
  br i1 %2579, label %2595, label %2580, !dx.controlflow.hints !101

; <label>:2580                                    ; preds = %2560
  %2581 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %1367, i32 %1368, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2582 = extractvalue %dx.types.ResRet.f32 %2581, 0
  %2583 = fcmp fast ogt float %2582, 0.000000e+00
  br i1 %2583, label %2584, label %2595, !dx.controlflow.hints !102

; <label>:2584                                    ; preds = %2580
  %2585 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %1367, i32 %1368, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2586 = extractvalue %dx.types.ResRet.f32 %2585, 0
  %2587 = extractvalue %dx.types.ResRet.f32 %2585, 1
  %2588 = extractvalue %dx.types.ResRet.f32 %2585, 2
  %2589 = extractvalue %dx.types.ResRet.f32 %2585, 3
  %2590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %2591 = extractvalue %dx.types.CBufRet.f32 %2590, 2
  %2592 = fmul fast float %2591, %2586
  %2593 = fmul fast float %2591, %2587
  %2594 = fmul fast float %2591, %2588
  br label %2595

; <label>:2595                                    ; preds = %2584, %2580, %2560
  %2596 = phi float [ %2592, %2584 ], [ 0.000000e+00, %2580 ], [ 0.000000e+00, %2560 ]
  %2597 = phi float [ %2593, %2584 ], [ 0.000000e+00, %2580 ], [ 0.000000e+00, %2560 ]
  %2598 = phi float [ %2594, %2584 ], [ 0.000000e+00, %2580 ], [ 0.000000e+00, %2560 ]
  %2599 = phi float [ %2589, %2584 ], [ 0.000000e+00, %2580 ], [ 0.000000e+00, %2560 ]
  %2600 = fsub fast float 1.000000e+00, %2599
  %2601 = fmul fast float %2600, %2561
  %2602 = fmul fast float %2600, %2562
  %2603 = fmul fast float %2600, %2563
  %2604 = fadd fast float %2601, %2596
  %2605 = fadd fast float %2602, %2597
  %2606 = fadd fast float %2603, %2598
  %2607 = fadd fast float %1402, 0x3FE3C6EF40000000
  %2608 = call float @dx.op.unary.f32(i32 22, float %2607)  ; Frc(value)
  %2609 = call float @dx.op.unary.f32(i32 23, float %2604)  ; Log(value)
  %2610 = fadd fast float %2609, -7.000000e+00
  %2611 = call float @dx.op.unary.f32(i32 21, float %2610)  ; Exp(value)
  %2612 = fmul fast float %2608, 2.000000e+00
  %2613 = fadd fast float %2612, -1.000000e+00
  %2614 = fmul fast float %2611, %2613
  %2615 = fcmp fast ogt float %2604, 0.000000e+00
  %2616 = select i1 %2615, float %2614, float 0.000000e+00
  %2617 = fadd fast float %2616, %2604
  %2618 = fadd fast float %1402, 0x3FF3C6EF40000000
  %2619 = call float @dx.op.unary.f32(i32 22, float %2618)  ; Frc(value)
  %2620 = call float @dx.op.unary.f32(i32 23, float %2605)  ; Log(value)
  %2621 = fadd fast float %2620, -7.000000e+00
  %2622 = call float @dx.op.unary.f32(i32 21, float %2621)  ; Exp(value)
  %2623 = fmul fast float %2619, 2.000000e+00
  %2624 = fadd fast float %2623, -1.000000e+00
  %2625 = fmul fast float %2622, %2624
  %2626 = fcmp fast ogt float %2605, 0.000000e+00
  %2627 = select i1 %2626, float %2625, float 0.000000e+00
  %2628 = fadd fast float %2627, %2605
  %2629 = fadd fast float %1402, 0x3FFDAA66E0000000
  %2630 = call float @dx.op.unary.f32(i32 22, float %2629)  ; Frc(value)
  %2631 = call float @dx.op.unary.f32(i32 23, float %2606)  ; Log(value)
  %2632 = fadd fast float %2631, -6.000000e+00
  %2633 = call float @dx.op.unary.f32(i32 21, float %2632)  ; Exp(value)
  %2634 = fmul fast float %2630, 2.000000e+00
  %2635 = fadd fast float %2634, -1.000000e+00
  %2636 = fmul fast float %2633, %2635
  %2637 = fcmp fast ogt float %2606, 0.000000e+00
  %2638 = select i1 %2637, float %2636, float 0.000000e+00
  %2639 = fadd fast float %2638, %2606
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %1367, i32 %1368, i32 undef, float %2617, float %2628, float %2639, float %2617, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2640 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2641 = extractvalue %dx.types.CBufRet.i32 %2640, 0
  %2642 = and i32 %2641, 1
  %2643 = icmp ne i32 %2642, 0
  %2644 = or i32 %1368, %1360
  %2645 = and i32 %2644, 1
  %2646 = icmp eq i32 %2645, 0
  %2647 = and i1 %2646, %2643
  br i1 %2647, label %2648, label %2651, !dx.controlflow.hints !103

; <label>:2648                                    ; preds = %2595
  %2649 = and i32 %46, 2147483647
  %2650 = lshr i32 %1368, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2649, i32 %2650, i32 undef, float %2507, float %2508, float %2509, float %2507, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2651

; <label>:2651                                    ; preds = %2648, %2595
  %2652 = fadd fast float %2604, %1355
  %2653 = fadd fast float %2605, %1356
  %2654 = fadd fast float %2606, %1357
  %2655 = fadd fast float %1358, 1.000000e+00
  br label %1377

; <label>:2656                                    ; preds = %1377
  %2657 = fdiv fast float 1.000000e+00, %1381
  %2658 = fmul fast float %2657, %1378
  %2659 = fmul fast float %2657, %1379
  %2660 = fmul fast float %2657, %1380
  %2661 = call float @dx.op.dot3.f32(i32 55, float %2658, float %2659, float %2660, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2662 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedLuma@@3PAMA", i32 0, i32 %28
  store float %2661, float addrspace(3)* %2662, align 4, !tbaa !49
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2663 = or i32 %46, %47
  %2664 = and i32 %2663, 1
  %2665 = icmp eq i32 %2664, 0
  br i1 %2665, label %2666, label %2722, !dx.controlflow.hints !136

; <label>:2666                                    ; preds = %2656
  %2667 = and i32 %28, 63
  %2668 = xor i32 %2667, 1
  %2669 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedLuma@@3PAMA", i32 0, i32 %2668
  %2670 = load float, float addrspace(3)* %2669, align 4, !tbaa !49
  %2671 = call float @dx.op.binary.f32(i32 35, float %2661, float %2670)  ; FMax(a,b)
  %2672 = xor i32 %2667, 8
  %2673 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedLuma@@3PAMA", i32 0, i32 %2672
  %2674 = load float, float addrspace(3)* %2673, align 4, !tbaa !49
  %2675 = call float @dx.op.binary.f32(i32 35, float %2671, float %2674)  ; FMax(a,b)
  %2676 = xor i32 %2667, 9
  %2677 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedLuma@@3PAMA", i32 0, i32 %2676
  %2678 = load float, float addrspace(3)* %2677, align 4, !tbaa !49
  %2679 = call float @dx.op.binary.f32(i32 35, float %2675, float %2678)  ; FMax(a,b)
  %2680 = call float @dx.op.binary.f32(i32 36, float %2661, float %2670)  ; FMin(a,b)
  %2681 = call float @dx.op.binary.f32(i32 36, float %2680, float %2674)  ; FMin(a,b)
  %2682 = call float @dx.op.binary.f32(i32 36, float %2681, float %2678)  ; FMin(a,b)
  %2683 = lshr i32 %46, 1
  %2684 = lshr i32 %47, 1
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
  %2701 = fmul fast float %2679, 0x3F1A36E2E0000000
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

; <label>:2722                                    ; preds = %2666, %2656
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

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #3

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
!35 = !{i32 0, i64 272, i32 4, !36}
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

