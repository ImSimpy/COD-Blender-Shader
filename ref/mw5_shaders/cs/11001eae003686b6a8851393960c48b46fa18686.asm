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
; shader hash: bcd25748c92d31ad87d6674b99f04ef5
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
%struct.SamplerState = type { i32 }

define void @cs_post_opaque_processes_subsampletile() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %25 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %26 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %27 = alloca [3 x float], align 4
  %28 = alloca [3 x float], align 4
  %29 = alloca [3 x float], align 4
  %30 = alloca [3 x float], align 4
  %31 = alloca [4 x float], align 4
  %32 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.i32 %32, 0
  %34 = extractvalue %dx.types.CBufRet.i32 %32, 1
  %35 = mul i32 %34, %33
  %36 = add i32 %35, %26
  %37 = shl i32 %36, 2
  %38 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %37, i32 undef)  ; BufferLoad(srv,index,wot)
  %39 = extractvalue %dx.types.ResRet.i32 %38, 0
  %40 = lshr i32 %39, 16
  %41 = shl i32 %39, 3
  %42 = and i32 %41, 524280
  %43 = shl nuw nsw i32 %40, 3
  %44 = add i32 %42, %24
  %45 = add i32 %43, %25
  %46 = shl i32 %44, 1
  %47 = shl i32 %45, 1
  %48 = uitofp i32 %46 to float
  %49 = uitofp i32 %47 to float
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 2
  %52 = extractvalue %dx.types.CBufRet.f32 %50, 3
  %53 = fmul fast float %48, %51
  %54 = fmul fast float %49, %52
  %55 = fadd fast float %53, %51
  %56 = fadd fast float %54, %52
  %57 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %21, float %55, float %56, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %58 = extractvalue %dx.types.ResRet.f32 %57, 0
  %59 = extractvalue %dx.types.ResRet.f32 %57, 1
  %60 = extractvalue %dx.types.ResRet.f32 %57, 2
  %61 = extractvalue %dx.types.ResRet.f32 %57, 3
  %62 = fcmp fast ogt float %61, -1.000000e+00
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 1
  %65 = select i1 %62, float %64, float 1.000000e+00
  %66 = fadd fast float %61, 1.000000e+00
  %67 = fmul fast float %65, %66
  %68 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %69 = fcmp fast ogt float %60, -1.000000e+00
  %70 = select i1 %69, float %64, float 1.000000e+00
  %71 = fadd fast float %60, 1.000000e+00
  %72 = fmul fast float %70, %71
  %73 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %74 = fcmp fast ogt float %58, -1.000000e+00
  %75 = select i1 %74, float %64, float 1.000000e+00
  %76 = fadd fast float %58, 1.000000e+00
  %77 = fmul fast float %75, %76
  %78 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %79 = fcmp fast ogt float %59, -1.000000e+00
  %80 = select i1 %79, float %64, float 1.000000e+00
  %81 = fadd fast float %59, 1.000000e+00
  %82 = fmul fast float %80, %81
  %83 = call float @dx.op.unary.f32(i32 6, float %82)  ; FAbs(value)
  %84 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 0
  store float %68, float* %84, align 4
  %85 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 1
  store float %73, float* %85, align 4
  %86 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 2
  store float %78, float* %86, align 4
  %87 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 3
  store float %83, float* %87, align 4
  %88 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %89 = extractvalue %dx.types.ResRet.i32 %88, 0
  %90 = and i32 %89, 114688
  %91 = icmp ne i32 %90, 0
  %92 = select i1 %91, i32 %46, i32 0
  %93 = select i1 %91, i32 %47, i32 0
  %94 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %92, i32 %93, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %95 = extractvalue %dx.types.ResRet.f32 %94, 0
  %96 = fmul fast float %95, 2.550000e+02
  %97 = fptoui float %96 to i32
  %98 = icmp eq i32 %97, 3
  %99 = and i1 %91, %98
  %100 = extractvalue %dx.types.CBufRet.f32 %63, 3
  %101 = fcmp fast oge float %68, %100
  %102 = fadd fast float %48, 5.000000e-01
  %103 = fadd fast float %49, 5.000000e-01
  br i1 %99, label %965, label %104, !dx.controlflow.hints !36

; <label>:104                                     ; preds = %0
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 170)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %107 = select i1 %101, float %106, float %68
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 2
  %110 = extractvalue %dx.types.CBufRet.f32 %108, 3
  %111 = fmul fast float %102, 2.000000e+00
  %112 = fmul fast float %111, %109
  %113 = fmul fast float %103, 2.000000e+00
  %114 = fmul fast float %113, %110
  %115 = fsub fast float 1.000000e+00, %112
  %116 = fsub fast float 1.000000e+00, %114
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %119 = extractvalue %dx.types.CBufRet.f32 %117, 1
  %120 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %121 = fmul fast float %115, %118
  %122 = fmul fast float %115, %119
  %123 = fmul fast float %115, %120
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %127 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %128 = fmul fast float %116, %125
  %129 = fmul fast float %116, %126
  %130 = fmul fast float %116, %127
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = extractvalue %dx.types.CBufRet.f32 %131, 1
  %134 = extractvalue %dx.types.CBufRet.f32 %131, 2
  %135 = fadd fast float %128, %132
  %136 = fadd fast float %135, %121
  %137 = fadd fast float %129, %133
  %138 = fadd fast float %137, %122
  %139 = fadd fast float %130, %134
  %140 = fadd fast float %139, %123
  %141 = fmul fast float %136, %107
  %142 = fmul fast float %138, %107
  %143 = fmul fast float %140, %107
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 163)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %149 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %150 = extractvalue %dx.types.CBufRet.f32 %146, 3
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 1
  %154 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %155 = extractvalue %dx.types.CBufRet.f32 %151, 3
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %158 = extractvalue %dx.types.CBufRet.f32 %156, 1
  %159 = extractvalue %dx.types.CBufRet.f32 %156, 2
  %160 = extractvalue %dx.types.CBufRet.f32 %156, 3
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %163 = extractvalue %dx.types.CBufRet.f32 %161, 1
  %164 = extractvalue %dx.types.CBufRet.f32 %161, 2
  %165 = extractvalue %dx.types.CBufRet.f32 %161, 3
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 3
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 3
  %170 = extractvalue %dx.types.CBufRet.f32 %168, 0
  %171 = extractvalue %dx.types.CBufRet.f32 %168, 1
  %172 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %173 = fcmp fast olt float %172, -5.000000e-01
  %174 = extractvalue %dx.types.CBufRet.f32 %144, 3
  %175 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %176 = call float @dx.op.unary.f32(i32 25, float %175)  ; Rsqrt(value)
  %177 = fmul fast float %176, %175
  %178 = fmul fast float %176, %141
  %179 = fmul fast float %176, %142
  %180 = fmul fast float %176, %143
  %181 = fadd fast float %177, %150
  br i1 %101, label %182, label %194, !dx.controlflow.hints !37

; <label>:182                                     ; preds = %104
  %183 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %184 = extractvalue %dx.types.CBufRet.f32 %144, 1
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 187)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 1
  %187 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %188 = call float @dx.op.binary.f32(i32 35, float %180, float %187)  ; FMax(a,b)
  %189 = call float @dx.op.binary.f32(i32 36, float %188, float %186)  ; FMin(a,b)
  %190 = fmul fast float %189, %184
  %191 = fadd fast float %190, %183
  %192 = call float @dx.op.unary.f32(i32 7, float %191)  ; Saturate(value)
  %193 = fmul fast float %180, %145
  br label %194

; <label>:194                                     ; preds = %182, %104
  %195 = phi float [ %145, %182 ], [ %181, %104 ]
  %196 = phi float [ %192, %182 ], [ 0.000000e+00, %104 ]
  %197 = phi float [ %193, %182 ], [ %143, %104 ]
  %198 = call float @dx.op.dot3.f32(i32 55, float %178, float %179, float %180, float %147, float %148, float %149)  ; Dot3(ax,ay,az,bx,by,bz)
  %199 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.i32 %199, 1
  %201 = and i32 %200, 1
  %202 = icmp ne i32 %201, 0
  %203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.f32 %203, 2
  %205 = fcmp fast ogt float %204, 0.000000e+00
  %206 = and i1 %202, %205
  br i1 %206, label %207, label %616, !dx.controlflow.hints !38

; <label>:207                                     ; preds = %194
  %208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.f32 %208, 3
  %210 = select i1 %101, float %209, float %177
  %211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.f32 %211, 3
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 2
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.f32 %215, 2
  %217 = fsub fast float %214, %216
  %218 = and i32 %200, 2
  %219 = extractvalue %dx.types.CBufRet.i32 %199, 0
  %220 = call i32 @dx.op.binary.i32(i32 40, i32 %219, i32 3)  ; UMin(a,b)
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 0
  %223 = extractvalue %dx.types.CBufRet.f32 %221, 1
  %224 = extractvalue %dx.types.CBufRet.f32 %215, 0
  %225 = extractvalue %dx.types.CBufRet.f32 %215, 1
  %226 = fsub fast float %222, %224
  %227 = fsub fast float %223, %225
  %228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %229 = extractvalue %dx.types.CBufRet.f32 %228, 0
  %230 = fcmp fast ogt float %229, 0.000000e+00
  %231 = fsub fast float -0.000000e+00, %226
  %232 = fsub fast float -0.000000e+00, %227
  %233 = call float @dx.op.dot2.f32(i32 54, float %178, float %179, float %178, float %179)  ; Dot2(ax,ay,bx,by)
  %234 = call float @dx.op.dot2.f32(i32 54, float %178, float %179, float %231, float %232)  ; Dot2(ax,ay,bx,by)
  %235 = fmul fast float %234, 2.000000e+00
  %236 = call float @dx.op.dot2.f32(i32 54, float %231, float %232, float %231, float %232)  ; Dot2(ax,ay,bx,by)
  %237 = fmul fast float %229, %229
  %238 = fsub fast float %236, %237
  %239 = fmul fast float %235, %235
  %240 = fmul fast float %233, 4.000000e+00
  %241 = fmul fast float %240, %238
  %242 = fsub fast float %239, %241
  %243 = fcmp fast ogt float %242, 0.000000e+00
  br i1 %243, label %244, label %259, !dx.controlflow.hints !39

; <label>:244                                     ; preds = %207
  %245 = fcmp fast ogt float %235, 0.000000e+00
  %246 = call float @dx.op.unary.f32(i32 24, float %242)  ; Sqrt(value)
  %247 = fsub fast float -0.000000e+00, %246
  %248 = select i1 %245, float %246, float %247
  %249 = fadd fast float %248, %235
  %250 = fmul float %249, -5.000000e-01
  %251 = fdiv fast float %250, %233
  %252 = call float @dx.op.binary.f32(i32 35, float %251, float 0.000000e+00)  ; FMax(a,b)
  %253 = call float @dx.op.binary.f32(i32 36, float %210, float %252)  ; FMin(a,b)
  %254 = fdiv fast float %238, %250
  %255 = call float @dx.op.binary.f32(i32 35, float %254, float 0.000000e+00)  ; FMax(a,b)
  %256 = call float @dx.op.binary.f32(i32 36, float %210, float %255)  ; FMin(a,b)
  %257 = call float @dx.op.binary.f32(i32 36, float %253, float %256)  ; FMin(a,b)
  %258 = call float @dx.op.binary.f32(i32 35, float %253, float %256)  ; FMax(a,b)
  br label %259

; <label>:259                                     ; preds = %244, %207
  %260 = phi float [ %258, %244 ], [ -1.000000e+00, %207 ]
  %261 = phi float [ %257, %244 ], [ -1.000000e+00, %207 ]
  %262 = phi i1 [ true, %244 ], [ false, %207 ]
  %263 = and i1 %230, %262
  br i1 %263, label %264, label %266, !dx.controlflow.hints !40

; <label>:264                                     ; preds = %259
  %265 = fcmp fast oeq float %261, %260
  br i1 %265, label %569, label %267, !dx.controlflow.hints !41

; <label>:266                                     ; preds = %259
  br i1 %230, label %569, label %267, !dx.controlflow.hints !42

; <label>:267                                     ; preds = %266, %264
  %268 = phi float [ %210, %266 ], [ %260, %264 ]
  %269 = phi float [ 0.000000e+00, %266 ], [ %261, %264 ]
  %270 = icmp ne i32 %218, 0
  %271 = fmul fast float %268, %180
  %272 = fadd fast float %271, %212
  %273 = fmul fast float %272, %268
  %274 = select i1 %270, float 0.000000e+00, float %273
  %275 = fcmp fast oeq float %180, 0.000000e+00
  %276 = fdiv fast float %217, %180
  %277 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %276)  ; FMax(a,b)
  %278 = select i1 %275, float %268, float %277
  %279 = call float @dx.op.binary.f32(i32 36, float %268, float %278)  ; FMin(a,b)
  %280 = fcmp fast ogt float %180, 0.000000e+00
  %281 = fcmp fast olt float %217, 0.000000e+00
  br i1 %280, label %282, label %339, !dx.controlflow.hints !43

; <label>:282                                     ; preds = %267
  %283 = icmp eq i32 %218, 0
  br i1 %281, label %284, label %328, !dx.controlflow.hints !44

; <label>:284                                     ; preds = %282
  %285 = select i1 %283, float %268, float 0.000000e+00
  %286 = fsub fast float -0.000000e+00, %285
  %287 = call float @dx.op.unary.f32(i32 6, float %286)  ; FAbs(value)
  %288 = fmul fast float %285, %180
  %289 = fadd fast float %288, %212
  %290 = fmul fast float %287, %289
  %291 = fsub fast float %274, %290
  %292 = fsub fast float %268, %287
  %293 = select i1 %283, float %292, float 0.000000e+00
  %294 = extractvalue %dx.types.CBufRet.f32 %208, 0
  %295 = extractvalue %dx.types.CBufRet.f32 %208, 1
  %296 = extractvalue %dx.types.CBufRet.f32 %208, 2
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 0
  %299 = extractvalue %dx.types.CBufRet.f32 %297, 1
  %300 = extractvalue %dx.types.CBufRet.f32 %297, 2
  %301 = extractvalue %dx.types.CBufRet.f32 %297, 3
  %302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.f32 %302, 3
  %304 = call float @dx.op.binary.f32(i32 36, float %291, float %303)  ; FMin(a,b)
  %305 = fmul fast float %301, %293
  %306 = call float @dx.op.unary.f32(i32 7, float %305)  ; Saturate(value)
  %307 = fsub fast float %298, %294
  %308 = fsub fast float %299, %295
  %309 = fsub fast float %300, %296
  %310 = fmul fast float %306, %307
  %311 = fmul fast float %306, %308
  %312 = fmul fast float %306, %309
  %313 = fadd fast float %310, %294
  %314 = fadd fast float %311, %295
  %315 = fadd fast float %312, %296
  br i1 %101, label %569, label %316, !dx.controlflow.hints !45

; <label>:316                                     ; preds = %284
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 0
  %319 = extractvalue %dx.types.CBufRet.f32 %317, 1
  %320 = fadd fast float %319, %318
  %321 = call float @dx.op.unary.f32(i32 7, float %320)  ; Saturate(value)
  %322 = extractvalue %dx.types.CBufRet.f32 %317, 2
  %323 = extractvalue %dx.types.CBufRet.f32 %317, 3
  %324 = fadd fast float %323, %322
  %325 = call float @dx.op.unary.f32(i32 7, float %324)  ; Saturate(value)
  %326 = fmul fast float %321, %304
  %327 = fmul fast float %326, %325
  br label %569

; <label>:328                                     ; preds = %282
  br i1 %283, label %329, label %350, !dx.controlflow.hints !46

; <label>:329                                     ; preds = %328
  %330 = call float @dx.op.binary.f32(i32 36, float %279, float %269)  ; FMin(a,b)
  %331 = fsub fast float %279, %330
  %332 = fsub fast float %331, %268
  %333 = call float @dx.op.unary.f32(i32 6, float %332)  ; FAbs(value)
  %334 = fadd fast float %331, %268
  %335 = fmul fast float %334, %180
  %336 = fadd fast float %335, %212
  %337 = fmul fast float %336, %333
  %338 = fsub fast float %274, %337
  br label %350

; <label>:339                                     ; preds = %267
  br i1 %281, label %340, label %350, !dx.controlflow.hints !47

; <label>:340                                     ; preds = %339
  %341 = call float @dx.op.binary.f32(i32 35, float %269, float %279)  ; FMax(a,b)
  %342 = icmp eq i32 %218, 0
  %343 = select i1 %342, float %279, float 0.000000e+00
  %344 = fsub fast float -0.000000e+00, %343
  %345 = call float @dx.op.unary.f32(i32 6, float %344)  ; FAbs(value)
  %346 = fmul fast float %343, %180
  %347 = fadd fast float %346, %212
  %348 = fmul fast float %345, %347
  %349 = fsub fast float %274, %348
  br label %350

; <label>:350                                     ; preds = %340, %339, %329, %328
  %351 = phi float [ %269, %328 ], [ %269, %329 ], [ %341, %340 ], [ %269, %339 ]
  %352 = phi float [ 0.000000e+00, %328 ], [ %333, %329 ], [ %345, %340 ], [ 0.000000e+00, %339 ]
  %353 = phi float [ %274, %328 ], [ %338, %329 ], [ %349, %340 ], [ %274, %339 ]
  %354 = phi float [ %279, %328 ], [ %279, %329 ], [ %268, %340 ], [ %268, %339 ]
  %355 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 0
  store float -1.000000e+00, float* %355, align 4, !tbaa !48, !noalias !52
  %356 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 1
  store float -1.000000e+00, float* %356, align 4, !tbaa !48, !noalias !52
  %357 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 2
  store float -1.000000e+00, float* %357, align 4, !tbaa !48, !noalias !52
  %358 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 0
  store float -1.000000e+00, float* %358, align 4, !tbaa !48, !noalias !52
  %359 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 1
  store float -1.000000e+00, float* %359, align 4, !tbaa !48, !noalias !52
  %360 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 2
  store float -1.000000e+00, float* %360, align 4, !tbaa !48, !noalias !52
  %361 = icmp sgt i32 %220, 0
  br i1 %361, label %362, label %423

; <label>:362                                     ; preds = %350
  br label %363

; <label>:363                                     ; preds = %412, %362
  %364 = phi i32 [ %413, %412 ], [ 0, %362 ]
  %365 = phi i32 [ %414, %412 ], [ 0, %362 ]
  %366 = add nuw i32 %365, 171
  %367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 %366)  ; CBufferLoadLegacy(handle,regIndex)
  %368 = extractvalue %dx.types.CBufRet.f32 %367, 0
  %369 = extractvalue %dx.types.CBufRet.f32 %367, 1
  %370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.f32 %370, 0
  %372 = extractvalue %dx.types.CBufRet.f32 %370, 1
  %373 = fsub fast float %368, %371
  %374 = fsub fast float %369, %372
  %375 = extractvalue %dx.types.CBufRet.f32 %367, 2
  %376 = fsub fast float -0.000000e+00, %373
  %377 = fsub fast float -0.000000e+00, %374
  %378 = call float @dx.op.dot2.f32(i32 54, float %178, float %179, float %376, float %377)  ; Dot2(ax,ay,bx,by)
  %379 = fmul fast float %378, 2.000000e+00
  %380 = call float @dx.op.dot2.f32(i32 54, float %376, float %377, float %376, float %377)  ; Dot2(ax,ay,bx,by)
  %381 = fmul fast float %375, %375
  %382 = fsub fast float %380, %381
  %383 = fmul fast float %379, %379
  %384 = fmul fast float %240, %382
  %385 = fsub fast float %383, %384
  %386 = fcmp fast ogt float %385, 0.000000e+00
  br i1 %386, label %387, label %402, !dx.controlflow.hints !39

; <label>:387                                     ; preds = %363
  %388 = fcmp fast ogt float %379, 0.000000e+00
  %389 = call float @dx.op.unary.f32(i32 24, float %385)  ; Sqrt(value)
  %390 = fsub fast float -0.000000e+00, %389
  %391 = select i1 %388, float %389, float %390
  %392 = fadd fast float %391, %379
  %393 = fmul float %392, -5.000000e-01
  %394 = fdiv fast float %393, %233
  %395 = call float @dx.op.binary.f32(i32 35, float %394, float 0.000000e+00)  ; FMax(a,b)
  %396 = call float @dx.op.binary.f32(i32 36, float %268, float %395)  ; FMin(a,b)
  %397 = fdiv fast float %382, %393
  %398 = call float @dx.op.binary.f32(i32 35, float %397, float 0.000000e+00)  ; FMax(a,b)
  %399 = call float @dx.op.binary.f32(i32 36, float %268, float %398)  ; FMin(a,b)
  %400 = call float @dx.op.binary.f32(i32 36, float %396, float %399)  ; FMin(a,b)
  %401 = call float @dx.op.binary.f32(i32 35, float %396, float %399)  ; FMax(a,b)
  br label %402

; <label>:402                                     ; preds = %387, %363
  %403 = phi float [ %401, %387 ], [ -1.000000e+00, %363 ]
  %404 = phi float [ %400, %387 ], [ -1.000000e+00, %363 ]
  %405 = phi i1 [ true, %387 ], [ false, %363 ]
  br i1 %405, label %406, label %412, !dx.controlflow.hints !64

; <label>:406                                     ; preds = %402
  %407 = call float @dx.op.binary.f32(i32 35, float %351, float %404)  ; FMax(a,b)
  %408 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %365
  store float %407, float* %408, align 4, !tbaa !48, !noalias !52
  %409 = call float @dx.op.binary.f32(i32 35, float %351, float %403)  ; FMax(a,b)
  %410 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %365
  store float %409, float* %410, align 4, !tbaa !48, !noalias !52
  %411 = add nsw i32 %364, 1
  br label %412

; <label>:412                                     ; preds = %406, %402
  %413 = phi i32 [ %411, %406 ], [ %364, %402 ]
  %414 = add nuw nsw i32 %365, 1
  %415 = icmp eq i32 %414, %220
  br i1 %415, label %416, label %363

; <label>:416                                     ; preds = %412
  %417 = load float, float* %357, align 4, !tbaa !48, !alias.scope !65, !noalias !68
  %418 = load float, float* %356, align 4, !tbaa !48, !alias.scope !71, !noalias !72
  %419 = load float, float* %355, align 4, !tbaa !48, !alias.scope !73, !noalias !74
  %420 = load float, float* %360, align 4, !tbaa !48, !alias.scope !75, !noalias !78
  %421 = load float, float* %359, align 4, !tbaa !48, !alias.scope !81, !noalias !82
  %422 = load float, float* %358, align 4, !tbaa !48, !alias.scope !83, !noalias !84
  br label %423

; <label>:423                                     ; preds = %416, %350
  %424 = phi float [ -1.000000e+00, %350 ], [ %422, %416 ]
  %425 = phi float [ -1.000000e+00, %350 ], [ %421, %416 ]
  %426 = phi float [ -1.000000e+00, %350 ], [ %420, %416 ]
  %427 = phi float [ -1.000000e+00, %350 ], [ %419, %416 ]
  %428 = phi float [ -1.000000e+00, %350 ], [ %418, %416 ]
  %429 = phi float [ -1.000000e+00, %350 ], [ %417, %416 ]
  %430 = phi i32 [ 0, %350 ], [ %413, %416 ]
  %431 = call float @dx.op.binary.f32(i32 36, float %428, float %429)  ; FMin(a,b)
  %432 = call float @dx.op.binary.f32(i32 36, float %427, float %431)  ; FMin(a,b)
  %433 = call float @dx.op.binary.f32(i32 35, float %427, float %428)  ; FMax(a,b)
  %434 = call float @dx.op.binary.f32(i32 36, float %433, float %429)  ; FMin(a,b)
  %435 = call float @dx.op.binary.f32(i32 36, float %427, float %428)  ; FMin(a,b)
  %436 = call float @dx.op.binary.f32(i32 35, float %435, float %434)  ; FMax(a,b)
  %437 = call float @dx.op.binary.f32(i32 35, float %428, float %429)  ; FMax(a,b)
  %438 = call float @dx.op.binary.f32(i32 35, float %427, float %437)  ; FMax(a,b)
  store float %432, float* %355, align 4, !tbaa !48, !alias.scope !73, !noalias !74
  store float %436, float* %356, align 4, !tbaa !48, !alias.scope !71, !noalias !72
  store float %438, float* %357, align 4, !tbaa !48, !alias.scope !65, !noalias !68
  %439 = call float @dx.op.binary.f32(i32 36, float %425, float %426)  ; FMin(a,b)
  %440 = call float @dx.op.binary.f32(i32 36, float %424, float %439)  ; FMin(a,b)
  %441 = call float @dx.op.binary.f32(i32 35, float %424, float %425)  ; FMax(a,b)
  %442 = call float @dx.op.binary.f32(i32 36, float %441, float %426)  ; FMin(a,b)
  %443 = call float @dx.op.binary.f32(i32 36, float %424, float %425)  ; FMin(a,b)
  %444 = call float @dx.op.binary.f32(i32 35, float %443, float %442)  ; FMax(a,b)
  %445 = call float @dx.op.binary.f32(i32 35, float %425, float %426)  ; FMax(a,b)
  %446 = call float @dx.op.binary.f32(i32 35, float %424, float %445)  ; FMax(a,b)
  store float %440, float* %358, align 4, !tbaa !48, !alias.scope !83, !noalias !84
  store float %444, float* %359, align 4, !tbaa !48, !alias.scope !81, !noalias !82
  store float %446, float* %360, align 4, !tbaa !48, !alias.scope !75, !noalias !78
  %447 = sub nsw i32 3, %430
  %448 = icmp sgt i32 %447, 2
  br i1 %448, label %449, label %487, !dx.controlflow.hints !85

; <label>:449                                     ; preds = %423
  %450 = icmp eq i32 %218, 0
  %451 = fsub fast float %268, %352
  %452 = select i1 %450, float %451, float %352
  %453 = extractvalue %dx.types.CBufRet.f32 %208, 0
  %454 = extractvalue %dx.types.CBufRet.f32 %208, 1
  %455 = extractvalue %dx.types.CBufRet.f32 %208, 2
  %456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %457 = extractvalue %dx.types.CBufRet.f32 %456, 0
  %458 = extractvalue %dx.types.CBufRet.f32 %456, 1
  %459 = extractvalue %dx.types.CBufRet.f32 %456, 2
  %460 = extractvalue %dx.types.CBufRet.f32 %456, 3
  %461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %462 = extractvalue %dx.types.CBufRet.f32 %461, 3
  %463 = call float @dx.op.binary.f32(i32 36, float %353, float %462)  ; FMin(a,b)
  %464 = fmul fast float %460, %452
  %465 = call float @dx.op.unary.f32(i32 7, float %464)  ; Saturate(value)
  %466 = fsub fast float %457, %453
  %467 = fsub fast float %458, %454
  %468 = fsub fast float %459, %455
  %469 = fmul fast float %465, %466
  %470 = fmul fast float %465, %467
  %471 = fmul fast float %465, %468
  %472 = fadd fast float %469, %453
  %473 = fadd fast float %470, %454
  %474 = fadd fast float %471, %455
  br i1 %101, label %569, label %475, !dx.controlflow.hints !45

; <label>:475                                     ; preds = %449
  %476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %477 = extractvalue %dx.types.CBufRet.f32 %476, 0
  %478 = extractvalue %dx.types.CBufRet.f32 %476, 1
  %479 = fadd fast float %478, %477
  %480 = call float @dx.op.unary.f32(i32 7, float %479)  ; Saturate(value)
  %481 = extractvalue %dx.types.CBufRet.f32 %476, 2
  %482 = extractvalue %dx.types.CBufRet.f32 %476, 3
  %483 = fadd fast float %482, %481
  %484 = call float @dx.op.unary.f32(i32 7, float %483)  ; Saturate(value)
  %485 = fmul fast float %480, %463
  %486 = fmul fast float %485, %484
  br label %569

; <label>:487                                     ; preds = %423
  %488 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %447
  %489 = load float, float* %488, align 4, !tbaa !48, !noalias !52
  %490 = fcmp fast olt float %489, %354
  %491 = icmp sgt i32 %430, 0
  %492 = and i1 %491, %490
  br i1 %492, label %493, label %530

; <label>:493                                     ; preds = %487
  br label %494

; <label>:494                                     ; preds = %523, %493
  %495 = phi float [ %524, %523 ], [ %352, %493 ]
  %496 = phi float [ %525, %523 ], [ %353, %493 ]
  %497 = phi float [ %505, %523 ], [ %489, %493 ]
  %498 = phi i32 [ %502, %523 ], [ %447, %493 ]
  %499 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %498
  %500 = load float, float* %499, align 4, !tbaa !48, !noalias !52
  %501 = icmp slt i32 %498, 2
  %502 = add nsw i32 %498, 1
  %503 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %502
  %504 = load float, float* %503, align 4, !tbaa !48, !noalias !52
  %505 = select i1 %501, float %504, float %268
  %506 = call float @dx.op.binary.f32(i32 36, float %505, float %500)  ; FMin(a,b)
  %507 = call float @dx.op.binary.f32(i32 36, float %354, float %506)  ; FMin(a,b)
  %508 = icmp eq i32 %218, 0
  %509 = fadd fast float %507, %497
  %510 = fmul fast float %509, %180
  %511 = fadd fast float %510, %212
  br i1 %508, label %517, label %512, !dx.controlflow.hints !86

; <label>:512                                     ; preds = %494
  %513 = fsub fast float %507, %497
  %514 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %513)  ; FMax(a,b)
  %515 = fmul fast float %514, %511
  %516 = fadd fast float %515, %496
  br label %523

; <label>:517                                     ; preds = %494
  %518 = fsub fast float %497, %507
  %519 = call float @dx.op.unary.f32(i32 6, float %518)  ; FAbs(value)
  %520 = fadd fast float %519, %495
  %521 = fmul fast float %519, %511
  %522 = fsub fast float %496, %521
  br label %523

; <label>:523                                     ; preds = %517, %512
  %524 = phi float [ %514, %512 ], [ %520, %517 ]
  %525 = phi float [ %516, %512 ], [ %522, %517 ]
  %526 = fcmp fast olt float %505, %354
  %527 = icmp slt i32 %502, 3
  %528 = and i1 %527, %526
  br i1 %528, label %494, label %529

; <label>:529                                     ; preds = %523
  br label %530

; <label>:530                                     ; preds = %529, %487
  %531 = phi float [ %352, %487 ], [ %524, %529 ]
  %532 = phi float [ %353, %487 ], [ %525, %529 ]
  %533 = fsub fast float %268, %531
  %534 = select i1 %270, float %531, float %533
  %535 = extractvalue %dx.types.CBufRet.f32 %208, 0
  %536 = extractvalue %dx.types.CBufRet.f32 %208, 1
  %537 = extractvalue %dx.types.CBufRet.f32 %208, 2
  %538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %539 = extractvalue %dx.types.CBufRet.f32 %538, 0
  %540 = extractvalue %dx.types.CBufRet.f32 %538, 1
  %541 = extractvalue %dx.types.CBufRet.f32 %538, 2
  %542 = extractvalue %dx.types.CBufRet.f32 %538, 3
  %543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %544 = extractvalue %dx.types.CBufRet.f32 %543, 3
  %545 = call float @dx.op.binary.f32(i32 36, float %532, float %544)  ; FMin(a,b)
  %546 = fmul fast float %542, %534
  %547 = call float @dx.op.unary.f32(i32 7, float %546)  ; Saturate(value)
  %548 = fsub fast float %539, %535
  %549 = fsub fast float %540, %536
  %550 = fsub fast float %541, %537
  %551 = fmul fast float %547, %548
  %552 = fmul fast float %547, %549
  %553 = fmul fast float %547, %550
  %554 = fadd fast float %551, %535
  %555 = fadd fast float %552, %536
  %556 = fadd fast float %553, %537
  br i1 %101, label %569, label %557, !dx.controlflow.hints !45

; <label>:557                                     ; preds = %530
  %558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.f32 %558, 0
  %560 = extractvalue %dx.types.CBufRet.f32 %558, 1
  %561 = fadd fast float %560, %559
  %562 = call float @dx.op.unary.f32(i32 7, float %561)  ; Saturate(value)
  %563 = extractvalue %dx.types.CBufRet.f32 %558, 2
  %564 = extractvalue %dx.types.CBufRet.f32 %558, 3
  %565 = fadd fast float %564, %563
  %566 = call float @dx.op.unary.f32(i32 7, float %565)  ; Saturate(value)
  %567 = fmul fast float %562, %545
  %568 = fmul fast float %567, %566
  br label %569

; <label>:569                                     ; preds = %557, %530, %475, %449, %316, %284, %266, %264
  %570 = phi float [ 0.000000e+00, %264 ], [ 0.000000e+00, %266 ], [ %293, %316 ], [ %293, %284 ], [ %452, %475 ], [ %452, %449 ], [ %534, %557 ], [ %534, %530 ]
  %571 = phi float [ 0.000000e+00, %264 ], [ 0.000000e+00, %266 ], [ %327, %316 ], [ %304, %284 ], [ %486, %475 ], [ %463, %449 ], [ %568, %557 ], [ %545, %530 ]
  %572 = phi float [ 0.000000e+00, %264 ], [ 0.000000e+00, %266 ], [ %313, %316 ], [ %313, %284 ], [ %472, %475 ], [ %472, %449 ], [ %554, %557 ], [ %554, %530 ]
  %573 = phi float [ 0.000000e+00, %264 ], [ 0.000000e+00, %266 ], [ %314, %316 ], [ %314, %284 ], [ %473, %475 ], [ %473, %449 ], [ %555, %557 ], [ %555, %530 ]
  %574 = phi float [ 0.000000e+00, %264 ], [ 0.000000e+00, %266 ], [ %315, %316 ], [ %315, %284 ], [ %474, %475 ], [ %474, %449 ], [ %556, %557 ], [ %556, %530 ]
  %575 = fmul fast float %204, %571
  %576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %577 = extractvalue %dx.types.CBufRet.f32 %576, 2
  %578 = fsub fast float %214, %577
  %579 = fcmp fast olt float %575, -2.000000e+01
  %580 = call float @dx.op.unary.f32(i32 21, float %575)  ; Exp(value)
  %581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %582 = extractvalue %dx.types.CBufRet.f32 %581, 2
  %583 = extractvalue %dx.types.CBufRet.f32 %581, 3
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 2
  %586 = fmul fast float %583, %578
  %587 = call float @dx.op.unary.f32(i32 7, float %586)  ; Saturate(value)
  %588 = fsub fast float 1.000000e+00, %587
  %589 = fmul fast float %180, 5.000000e-01
  %590 = fadd fast float %589, 5.000000e-01
  %591 = call float @dx.op.unary.f32(i32 7, float %590)  ; Saturate(value)
  %592 = fsub fast float 1.000000e+00, %591
  %593 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %588)  ; FMax(a,b)
  %594 = fdiv fast float %592, %593
  %595 = fsub fast float %578, %143
  %596 = call float @dx.op.unary.f32(i32 6, float %595)  ; FAbs(value)
  %597 = fmul fast float %596, %582
  %598 = call float @dx.op.unary.f32(i32 7, float %594)  ; Saturate(value)
  %599 = fsub fast float 1.000000e+00, %597
  %600 = fmul fast float %599, %598
  %601 = fadd fast float %600, %597
  %602 = fmul fast float %585, %578
  %603 = call float @dx.op.unary.f32(i32 7, float %602)  ; Saturate(value)
  %604 = fsub fast float 1.000000e+00, %601
  %605 = fmul fast float %604, %603
  %606 = fadd fast float %605, %601
  %607 = call float @dx.op.unary.f32(i32 7, float %606)  ; Saturate(value)
  %608 = fadd fast float %580, -1.000000e+00
  %609 = select i1 %579, float -1.000000e+00, float %608
  %610 = fmul fast float %607, %609
  %611 = fadd fast float %610, 1.000000e+00
  %612 = fsub fast float -0.000000e+00, %610
  %613 = fmul fast float %572, %612
  %614 = fmul fast float %573, %612
  %615 = fmul fast float %574, %612
  br label %616

; <label>:616                                     ; preds = %569, %194
  %617 = phi float [ %570, %569 ], [ 0.000000e+00, %194 ]
  %618 = phi float [ %611, %569 ], [ 1.000000e+00, %194 ]
  %619 = phi float [ %613, %569 ], [ 0.000000e+00, %194 ]
  %620 = phi float [ %614, %569 ], [ 0.000000e+00, %194 ]
  %621 = phi float [ %615, %569 ], [ 0.000000e+00, %194 ]
  %622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %623 = extractvalue %dx.types.CBufRet.f32 %622, 1
  %624 = fsub fast float 1.000000e+00, %618
  %625 = fmul fast float %624, %195
  %626 = fmul fast float %625, %623
  %627 = fsub fast float %195, %626
  br i1 %173, label %628, label %660, !dx.controlflow.hints !87

; <label>:628                                     ; preds = %616
  %629 = fmul fast float %198, %170
  %630 = fadd fast float %629, %171
  %631 = call float @dx.op.unary.f32(i32 7, float %630)  ; Saturate(value)
  %632 = fmul fast float %152, %627
  %633 = fsub fast float -0.000000e+00, %632
  %634 = fmul fast float %153, %627
  %635 = fsub fast float -0.000000e+00, %634
  %636 = call float @dx.op.unary.f32(i32 21, float %633)  ; Exp(value)
  %637 = call float @dx.op.unary.f32(i32 21, float %635)  ; Exp(value)
  %638 = call float @dx.op.binary.f32(i32 35, float %160, float %636)  ; FMax(a,b)
  %639 = call float @dx.op.binary.f32(i32 35, float %160, float %637)  ; FMax(a,b)
  %640 = fsub fast float %639, %638
  %641 = fmul fast float %640, %631
  %642 = fadd fast float %641, %638
  %643 = call float @dx.op.unary.f32(i32 7, float %642)  ; Saturate(value)
  %644 = fmul fast float %196, %174
  %645 = fsub fast float 1.000000e+00, %644
  %646 = select i1 %101, float %645, float %643
  %647 = fsub fast float %157, %162
  %648 = fsub fast float %158, %163
  %649 = fsub fast float %159, %164
  %650 = fmul fast float %631, %647
  %651 = fmul fast float %631, %648
  %652 = fmul fast float %631, %649
  %653 = fadd fast float %650, %162
  %654 = fadd fast float %651, %163
  %655 = fadd fast float %652, %164
  %656 = fsub fast float 1.000000e+00, %646
  %657 = fmul fast float %656, %653
  %658 = fmul fast float %656, %654
  %659 = fmul fast float %656, %655
  br label %731

; <label>:660                                     ; preds = %616
  %661 = fmul fast float %627, %169
  %662 = call float @dx.op.unary.f32(i32 7, float %661)  ; Saturate(value)
  %663 = fsub fast float 2.000000e+00, %662
  %664 = fmul fast float %662, 9.921875e-01
  %665 = fmul fast float %664, %663
  %666 = fadd fast float %665, 3.906250e-03
  %667 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %666, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %668 = extractvalue %dx.types.ResRet.f32 %667, 0
  %669 = fsub fast float %662, %668
  %670 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %669)  ; FMax(a,b)
  %671 = fmul fast float %197, %155
  %672 = call float @dx.op.unary.f32(i32 6, float %671)  ; FAbs(value)
  %673 = fcmp fast ogt float %672, 0x3EB0C6F7A0000000
  br i1 %673, label %674, label %680, !dx.controlflow.hints !88

; <label>:674                                     ; preds = %660
  %675 = fmul fast float %671, 0xBFF7154760000000
  %676 = call float @dx.op.unary.f32(i32 21, float %675)  ; Exp(value)
  %677 = fsub fast float 1.000000e+00, %676
  %678 = fdiv fast float %677, %671
  %679 = fmul fast float %678, %165
  br label %680

; <label>:680                                     ; preds = %674, %660
  %681 = phi float [ %679, %674 ], [ %165, %660 ]
  %682 = fadd fast float %681, %167
  %683 = fmul fast float %682, %670
  %684 = fmul fast float %152, %683
  %685 = fsub fast float -0.000000e+00, %684
  %686 = fmul fast float %153, %683
  %687 = fsub fast float -0.000000e+00, %686
  %688 = fmul fast float %154, %683
  %689 = fsub fast float -0.000000e+00, %688
  %690 = call float @dx.op.unary.f32(i32 21, float %685)  ; Exp(value)
  %691 = call float @dx.op.unary.f32(i32 21, float %687)  ; Exp(value)
  %692 = call float @dx.op.unary.f32(i32 21, float %689)  ; Exp(value)
  br i1 %101, label %693, label %701, !dx.controlflow.hints !89

; <label>:693                                     ; preds = %680
  %694 = fmul fast float %690, %196
  %695 = fmul fast float %691, %196
  %696 = fmul fast float %692, %196
  %697 = fsub fast float 1.000000e+00, %196
  %698 = fadd fast float %694, %697
  %699 = fadd fast float %695, %697
  %700 = fadd fast float %696, %697
  br label %701

; <label>:701                                     ; preds = %693, %680
  %702 = phi float [ %698, %693 ], [ %690, %680 ]
  %703 = phi float [ %699, %693 ], [ %691, %680 ]
  %704 = phi float [ %700, %693 ], [ %692, %680 ]
  %705 = fmul fast float %198, %198
  %706 = fadd fast float %705, 1.000000e+00
  %707 = fmul fast float %706, 0x3FAE8EC8A0000000
  %708 = fmul fast float %707, %162
  %709 = fmul fast float %707, %163
  %710 = fmul fast float %707, %164
  %711 = fmul fast float %198, %160
  %712 = fsub fast float 1.000000e+00, %711
  %713 = fmul fast float %160, %160
  %714 = fsub fast float 1.000000e+00, %713
  %715 = fmul fast float %714, 0x3FB45F3060000000
  %716 = fmul fast float %712, %712
  %717 = fdiv fast float 1.000000e+00, %716
  %718 = fmul fast float %715, %717
  %719 = fmul fast float %718, %157
  %720 = fmul fast float %718, %158
  %721 = fmul fast float %718, %159
  %722 = fadd fast float %719, %708
  %723 = fadd fast float %720, %709
  %724 = fadd fast float %721, %710
  %725 = fsub fast float 1.000000e+00, %702
  %726 = fsub fast float 1.000000e+00, %703
  %727 = fsub fast float 1.000000e+00, %704
  %728 = fmul fast float %722, %725
  %729 = fmul fast float %723, %726
  %730 = fmul fast float %724, %727
  br label %731

; <label>:731                                     ; preds = %701, %628
  %732 = phi float [ %657, %628 ], [ %728, %701 ]
  %733 = phi float [ %658, %628 ], [ %729, %701 ]
  %734 = phi float [ %659, %628 ], [ %730, %701 ]
  %735 = phi float [ %646, %628 ], [ %702, %701 ]
  %736 = phi float [ %646, %628 ], [ %703, %701 ]
  %737 = phi float [ %646, %628 ], [ %704, %701 ]
  br i1 %206, label %738, label %936, !dx.controlflow.hints !90

; <label>:738                                     ; preds = %731
  %739 = extractvalue %dx.types.CBufRet.f32 %622, 0
  %740 = fmul fast float %739, %624
  %741 = fsub fast float %619, %732
  %742 = fsub fast float %620, %733
  %743 = fsub fast float %621, %734
  %744 = fmul fast float %740, %741
  %745 = fmul fast float %740, %742
  %746 = fmul fast float %740, %743
  %747 = fadd fast float %744, %732
  %748 = fadd fast float %745, %733
  %749 = fadd fast float %746, %734
  %750 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %735)  ; FMax(a,b)
  %751 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %736)  ; FMax(a,b)
  %752 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %737)  ; FMax(a,b)
  %753 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %618)  ; FMax(a,b)
  %754 = call float @dx.op.binary.f32(i32 35, float %617, float %627)  ; FMax(a,b)
  %755 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %754)  ; FMax(a,b)
  %756 = fdiv fast float %617, %755
  %757 = call float @dx.op.unary.f32(i32 7, float %756)  ; Saturate(value)
  %758 = fdiv fast float %627, %755
  %759 = call float @dx.op.unary.f32(i32 7, float %758)  ; Saturate(value)
  %760 = fcmp fast une float %753, 1.000000e+00
  br i1 %760, label %761, label %774, !dx.controlflow.hints !91

; <label>:761                                     ; preds = %738
  %762 = call float @dx.op.unary.f32(i32 23, float %753)  ; Log(value)
  %763 = fmul fast float %762, 0x3FE62E4300000000
  %764 = fmul fast float %619, %763
  %765 = fsub fast float -0.000000e+00, %764
  %766 = fmul fast float %620, %763
  %767 = fsub fast float -0.000000e+00, %766
  %768 = fmul fast float %621, %763
  %769 = fsub fast float -0.000000e+00, %768
  %770 = fsub fast float 1.000000e+00, %753
  %771 = fdiv fast float %765, %770
  %772 = fdiv fast float %767, %770
  %773 = fdiv fast float %769, %770
  br label %774

; <label>:774                                     ; preds = %761, %738
  %775 = phi float [ %771, %761 ], [ %619, %738 ]
  %776 = phi float [ %772, %761 ], [ %620, %738 ]
  %777 = phi float [ %773, %761 ], [ %621, %738 ]
  %778 = phi float [ %763, %761 ], [ 0.000000e+00, %738 ]
  %779 = fcmp fast une float %750, 1.000000e+00
  br i1 %779, label %780, label %787, !dx.controlflow.hints !92

; <label>:780                                     ; preds = %774
  %781 = call float @dx.op.unary.f32(i32 23, float %750)  ; Log(value)
  %782 = fmul fast float %781, 0x3FE62E4300000000
  %783 = fmul fast float %747, %782
  %784 = fsub fast float -0.000000e+00, %783
  %785 = fsub fast float 1.000000e+00, %750
  %786 = fdiv fast float %784, %785
  br label %787

; <label>:787                                     ; preds = %780, %774
  %788 = phi float [ %786, %780 ], [ %747, %774 ]
  %789 = phi float [ %782, %780 ], [ 0.000000e+00, %774 ]
  %790 = fcmp fast une float %751, 1.000000e+00
  br i1 %790, label %791, label %798, !dx.controlflow.hints !92

; <label>:791                                     ; preds = %787
  %792 = call float @dx.op.unary.f32(i32 23, float %751)  ; Log(value)
  %793 = fmul fast float %792, 0x3FE62E4300000000
  %794 = fmul fast float %748, %793
  %795 = fsub fast float -0.000000e+00, %794
  %796 = fsub fast float 1.000000e+00, %751
  %797 = fdiv fast float %795, %796
  br label %798

; <label>:798                                     ; preds = %791, %787
  %799 = phi float [ %797, %791 ], [ %748, %787 ]
  %800 = phi float [ %793, %791 ], [ 0.000000e+00, %787 ]
  %801 = fcmp fast une float %752, 1.000000e+00
  br i1 %801, label %802, label %809, !dx.controlflow.hints !92

; <label>:802                                     ; preds = %798
  %803 = call float @dx.op.unary.f32(i32 23, float %752)  ; Log(value)
  %804 = fmul fast float %803, 0x3FE62E4300000000
  %805 = fmul fast float %749, %804
  %806 = fsub fast float -0.000000e+00, %805
  %807 = fsub fast float 1.000000e+00, %752
  %808 = fdiv fast float %806, %807
  br label %809

; <label>:809                                     ; preds = %802, %798
  %810 = phi float [ %808, %802 ], [ %749, %798 ]
  %811 = phi float [ %804, %802 ], [ 0.000000e+00, %798 ]
  %812 = fmul fast float %775, %759
  %813 = fmul fast float %776, %759
  %814 = fmul fast float %777, %759
  %815 = fmul fast float %778, %759
  %816 = fmul fast float %788, %757
  %817 = fmul fast float %799, %757
  %818 = fmul fast float %810, %757
  %819 = fmul fast float %789, %757
  %820 = fmul fast float %800, %757
  %821 = fmul fast float %811, %757
  %822 = fadd fast float %816, %812
  %823 = fadd fast float %817, %813
  %824 = fadd fast float %818, %814
  %825 = fadd fast float %819, %815
  %826 = fadd fast float %820, %815
  %827 = fadd fast float %821, %815
  %828 = fcmp fast une float %825, 0.000000e+00
  br i1 %828, label %829, label %836, !dx.controlflow.hints !93

; <label>:829                                     ; preds = %809
  %830 = fmul fast float %825, 0x3FF7154760000000
  %831 = call float @dx.op.unary.f32(i32 21, float %830)  ; Exp(value)
  %832 = fsub fast float 1.000000e+00, %831
  %833 = fmul fast float %822, %832
  %834 = fsub fast float -0.000000e+00, %833
  %835 = fdiv fast float %834, %825
  br label %836

; <label>:836                                     ; preds = %829, %809
  %837 = phi float [ %831, %829 ], [ 1.000000e+00, %809 ]
  %838 = phi float [ %835, %829 ], [ %822, %809 ]
  %839 = fcmp fast une float %826, 0.000000e+00
  br i1 %839, label %840, label %847, !dx.controlflow.hints !93

; <label>:840                                     ; preds = %836
  %841 = fmul fast float %826, 0x3FF7154760000000
  %842 = call float @dx.op.unary.f32(i32 21, float %841)  ; Exp(value)
  %843 = fsub fast float 1.000000e+00, %842
  %844 = fmul fast float %823, %843
  %845 = fsub fast float -0.000000e+00, %844
  %846 = fdiv fast float %845, %826
  br label %847

; <label>:847                                     ; preds = %840, %836
  %848 = phi float [ %842, %840 ], [ 1.000000e+00, %836 ]
  %849 = phi float [ %846, %840 ], [ %823, %836 ]
  %850 = fcmp fast une float %827, 0.000000e+00
  br i1 %850, label %851, label %858, !dx.controlflow.hints !93

; <label>:851                                     ; preds = %847
  %852 = fmul fast float %827, 0x3FF7154760000000
  %853 = call float @dx.op.unary.f32(i32 21, float %852)  ; Exp(value)
  %854 = fsub fast float 1.000000e+00, %853
  %855 = fmul fast float %824, %854
  %856 = fsub fast float -0.000000e+00, %855
  %857 = fdiv fast float %856, %827
  br label %858

; <label>:858                                     ; preds = %851, %847
  %859 = phi float [ %853, %851 ], [ 1.000000e+00, %847 ]
  %860 = phi float [ %857, %851 ], [ %824, %847 ]
  %861 = fcmp fast ogt float %757, %759
  br i1 %861, label %862, label %882, !dx.controlflow.hints !94

; <label>:862                                     ; preds = %858
  %863 = fsub fast float 1.000000e+00, %759
  %864 = fmul fast float %775, %863
  %865 = fmul fast float %776, %863
  %866 = fmul fast float %777, %863
  %867 = fmul fast float %778, %863
  %868 = fcmp fast une float %867, 0.000000e+00
  br i1 %868, label %869, label %920, !dx.controlflow.hints !95

; <label>:869                                     ; preds = %862
  %870 = fmul fast float %867, 0x3FF7154760000000
  %871 = call float @dx.op.unary.f32(i32 21, float %870)  ; Exp(value)
  %872 = fsub fast float 1.000000e+00, %871
  %873 = fmul fast float %864, %872
  %874 = fsub fast float -0.000000e+00, %873
  %875 = fmul fast float %865, %872
  %876 = fsub fast float -0.000000e+00, %875
  %877 = fmul fast float %866, %872
  %878 = fsub fast float -0.000000e+00, %877
  %879 = fdiv fast float %874, %867
  %880 = fdiv fast float %876, %867
  %881 = fdiv fast float %878, %867
  br label %920

; <label>:882                                     ; preds = %858
  %883 = fsub fast float 1.000000e+00, %757
  %884 = fmul fast float %788, %883
  %885 = fmul fast float %799, %883
  %886 = fmul fast float %810, %883
  %887 = fmul fast float %789, %883
  %888 = fmul fast float %800, %883
  %889 = fmul fast float %811, %883
  %890 = fcmp fast une float %887, 0.000000e+00
  br i1 %890, label %891, label %898, !dx.controlflow.hints !93

; <label>:891                                     ; preds = %882
  %892 = fmul fast float %887, 0x3FF7154760000000
  %893 = call float @dx.op.unary.f32(i32 21, float %892)  ; Exp(value)
  %894 = fsub fast float 1.000000e+00, %893
  %895 = fmul fast float %884, %894
  %896 = fsub fast float -0.000000e+00, %895
  %897 = fdiv fast float %896, %887
  br label %898

; <label>:898                                     ; preds = %891, %882
  %899 = phi float [ %897, %891 ], [ %884, %882 ]
  %900 = phi float [ %893, %891 ], [ 1.000000e+00, %882 ]
  %901 = fcmp fast une float %888, 0.000000e+00
  br i1 %901, label %902, label %909, !dx.controlflow.hints !93

; <label>:902                                     ; preds = %898
  %903 = fmul fast float %888, 0x3FF7154760000000
  %904 = call float @dx.op.unary.f32(i32 21, float %903)  ; Exp(value)
  %905 = fsub fast float 1.000000e+00, %904
  %906 = fmul fast float %885, %905
  %907 = fsub fast float -0.000000e+00, %906
  %908 = fdiv fast float %907, %888
  br label %909

; <label>:909                                     ; preds = %902, %898
  %910 = phi float [ %908, %902 ], [ %885, %898 ]
  %911 = phi float [ %904, %902 ], [ 1.000000e+00, %898 ]
  %912 = fcmp fast une float %889, 0.000000e+00
  br i1 %912, label %913, label %920, !dx.controlflow.hints !93

; <label>:913                                     ; preds = %909
  %914 = fmul fast float %889, 0x3FF7154760000000
  %915 = call float @dx.op.unary.f32(i32 21, float %914)  ; Exp(value)
  %916 = fsub fast float 1.000000e+00, %915
  %917 = fmul fast float %886, %916
  %918 = fsub fast float -0.000000e+00, %917
  %919 = fdiv fast float %918, %889
  br label %920

; <label>:920                                     ; preds = %913, %909, %869, %862
  %921 = phi float [ %919, %913 ], [ %881, %869 ], [ %866, %862 ], [ %886, %909 ]
  %922 = phi float [ %910, %913 ], [ %880, %869 ], [ %865, %862 ], [ %910, %909 ]
  %923 = phi float [ %899, %913 ], [ %879, %869 ], [ %864, %862 ], [ %899, %909 ]
  %924 = phi float [ %915, %913 ], [ %871, %869 ], [ 1.000000e+00, %862 ], [ 1.000000e+00, %909 ]
  %925 = phi float [ %911, %913 ], [ %871, %869 ], [ 1.000000e+00, %862 ], [ %911, %909 ]
  %926 = phi float [ %900, %913 ], [ %871, %869 ], [ 1.000000e+00, %862 ], [ %900, %909 ]
  %927 = fmul fast float %926, %838
  %928 = fmul fast float %925, %849
  %929 = fmul fast float %924, %860
  %930 = fadd fast float %927, %923
  %931 = fadd fast float %928, %922
  %932 = fadd fast float %929, %921
  %933 = fmul fast float %926, %837
  %934 = fmul fast float %925, %848
  %935 = fmul fast float %924, %859
  br label %936

; <label>:936                                     ; preds = %920, %731
  %937 = phi float [ %935, %920 ], [ %737, %731 ]
  %938 = phi float [ %934, %920 ], [ %736, %731 ]
  %939 = phi float [ %933, %920 ], [ %735, %731 ]
  %940 = phi float [ %932, %920 ], [ %734, %731 ]
  %941 = phi float [ %931, %920 ], [ %733, %731 ]
  %942 = phi float [ %930, %920 ], [ %732, %731 ]
  %943 = fmul fast float %51, %102
  %944 = fmul fast float %52, %103
  %945 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %20, float %943, float %944, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %946 = extractvalue %dx.types.ResRet.f32 %945, 0
  %947 = extractvalue %dx.types.ResRet.f32 %945, 1
  %948 = extractvalue %dx.types.ResRet.f32 %945, 2
  %949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %950 = extractvalue %dx.types.CBufRet.f32 %949, 1
  %951 = fmul fast float %950, %946
  %952 = fmul fast float %950, %947
  %953 = fmul fast float %950, %948
  %954 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %20, float %943, float %944, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %955 = extractvalue %dx.types.ResRet.f32 %954, 0
  %956 = fmul fast float %955, %939
  %957 = fmul fast float %955, %938
  %958 = fmul fast float %955, %937
  %959 = fmul fast float %955, %942
  %960 = fmul fast float %955, %941
  %961 = fmul fast float %955, %940
  %962 = fadd fast float %959, %951
  %963 = fadd fast float %960, %952
  %964 = fadd fast float %961, %953
  br label %965

; <label>:965                                     ; preds = %936, %0
  %966 = phi float [ %962, %936 ], [ 0.000000e+00, %0 ]
  %967 = phi float [ %963, %936 ], [ 0.000000e+00, %0 ]
  %968 = phi float [ %964, %936 ], [ 0.000000e+00, %0 ]
  %969 = phi float [ %956, %936 ], [ 1.000000e+00, %0 ]
  %970 = phi float [ %957, %936 ], [ 1.000000e+00, %0 ]
  %971 = phi float [ %958, %936 ], [ 1.000000e+00, %0 ]
  %972 = phi float [ %107, %936 ], [ %68, %0 ]
  %973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %974 = extractvalue %dx.types.CBufRet.f32 %973, 2
  %975 = extractvalue %dx.types.CBufRet.f32 %973, 3
  %976 = fmul fast float %974, %102
  %977 = fmul fast float %975, %103
  %978 = call float @dx.op.unary.f32(i32 7, float %976)  ; Saturate(value)
  %979 = call float @dx.op.unary.f32(i32 7, float %977)  ; Saturate(value)
  %980 = select i1 %99, i32 2, i32 0
  %981 = or i32 %980, 1
  %982 = uitofp i32 %981 to float
  %983 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %20, float %978, float %979, float %982, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %984 = extractvalue %dx.types.ResRet.f32 %983, 0
  %985 = extractvalue %dx.types.ResRet.f32 %983, 1
  %986 = extractvalue %dx.types.ResRet.f32 %983, 2
  %987 = extractvalue %dx.types.ResRet.f32 %983, 3
  %988 = add nuw nsw i32 %980, 2
  %989 = uitofp i32 %988 to float
  %990 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %20, float %978, float %979, float %989, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %991 = extractvalue %dx.types.ResRet.f32 %990, 0
  %992 = extractvalue %dx.types.ResRet.f32 %990, 1
  %993 = extractvalue %dx.types.ResRet.f32 %990, 2
  %994 = extractvalue %dx.types.ResRet.f32 %990, 3
  %995 = call float @dx.op.binary.f32(i32 35, float %985, float %986)  ; FMax(a,b)
  %996 = call float @dx.op.binary.f32(i32 35, float %984, float %995)  ; FMax(a,b)
  %997 = call float @dx.op.binary.f32(i32 35, float %996, float %987)  ; FMax(a,b)
  %998 = call float @dx.op.binary.f32(i32 36, float %992, float %993)  ; FMin(a,b)
  %999 = call float @dx.op.binary.f32(i32 36, float %991, float %998)  ; FMin(a,b)
  %1000 = call float @dx.op.binary.f32(i32 36, float %999, float %994)  ; FMin(a,b)
  %1001 = fmul fast float %997, 2.550000e+02
  %1002 = fadd fast float %1001, 0x3F70101020000000
  %1003 = fptoui float %1002 to i32
  %1004 = fmul fast float %1000, 2.550000e+02
  %1005 = fadd fast float %1004, 0x3F70101020000000
  %1006 = fptoui float %1005 to i32
  %1007 = icmp ult i32 %1003, %1006
  br i1 %1007, label %1008, label %1176, !dx.controlflow.hints !96

; <label>:1008                                    ; preds = %965
  %1009 = fadd fast float %972, -4.000000e+00
  %1010 = call float @dx.op.binary.f32(i32 35, float %1009, float 0.000000e+00)  ; FMax(a,b)
  %1011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1012 = extractvalue %dx.types.CBufRet.f32 %1011, 0
  %1013 = fadd fast float %1012, %1010
  %1014 = extractvalue %dx.types.CBufRet.f32 %1011, 2
  %1015 = fmul fast float %1013, %1014
  %1016 = call float @dx.op.unary.f32(i32 23, float %1015)  ; Log(value)
  %1017 = extractvalue %dx.types.CBufRet.f32 %1011, 3
  %1018 = fmul fast float %1017, %1016
  %1019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1020 = extractvalue %dx.types.CBufRet.f32 %1019, 2
  %1021 = fmul fast float %1018, %1020
  %1022 = call float @dx.op.unary.f32(i32 7, float %1021)  ; Saturate(value)
  %1023 = select i1 %101, float 1.000000e+00, float %1022
  %1024 = uitofp i32 %1003 to float
  %1025 = uitofp i32 %1006 to float
  %1026 = fadd fast float %1024, 5.000000e-01
  %1027 = fadd fast float %1025, 5.000000e-01
  %1028 = fmul fast float %1020, %1026
  %1029 = fmul fast float %1020, %1027
  %1030 = fadd fast float %1028, 0x3F0FFB4800000000
  %1031 = fadd fast float %1029, 0xBF0FFB4800000000
  %1032 = call float @dx.op.binary.f32(i32 35, float %1023, float %1030)  ; FMax(a,b)
  %1033 = call float @dx.op.binary.f32(i32 36, float %1032, float %1031)  ; FMin(a,b)
  %1034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1035 = extractvalue %dx.types.CBufRet.f32 %1034, 1
  %1036 = extractvalue %dx.types.CBufRet.f32 %1034, 2
  %1037 = extractvalue %dx.types.CBufRet.f32 %1034, 0
  %1038 = select i1 %99, float %1037, float 0.000000e+00
  %1039 = fmul fast float %1035, %1033
  %1040 = fadd fast float %1038, %1039
  %1041 = fadd fast float %1038, %1036
  %1042 = fsub fast float %1035, %1036
  %1043 = fadd fast float %1042, %1038
  %1044 = call float @dx.op.binary.f32(i32 35, float %1040, float %1041)  ; FMax(a,b)
  %1045 = call float @dx.op.binary.f32(i32 36, float %1044, float %1043)  ; FMin(a,b)
  %1046 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %19, float %978, float %979, float %1045, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1047 = extractvalue %dx.types.ResRet.f32 %1046, 0
  %1048 = extractvalue %dx.types.ResRet.f32 %1046, 1
  %1049 = extractvalue %dx.types.ResRet.f32 %1046, 2
  %1050 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %1051 = extractvalue %dx.types.CBufRet.i32 %1050, 0
  %1052 = extractvalue %dx.types.CBufRet.i32 %1050, 1
  %1053 = uitofp i32 %1051 to float
  %1054 = uitofp i32 %1052 to float
  %1055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %1056 = extractvalue %dx.types.CBufRet.f32 %1055, 0
  %1057 = extractvalue %dx.types.CBufRet.f32 %1055, 1
  %1058 = fmul fast float %1053, %978
  %1059 = fmul fast float %1054, %979
  %1060 = fadd fast float %1058, -5.000000e-01
  %1061 = fadd fast float %1059, -5.000000e-01
  %1062 = call float @dx.op.unary.f32(i32 22, float %1060)  ; Frc(value)
  %1063 = call float @dx.op.unary.f32(i32 22, float %1061)  ; Frc(value)
  %1064 = fmul fast float %1062, %1062
  %1065 = fmul fast float %1064, %1062
  %1066 = fsub fast float 3.000000e+00, %1062
  %1067 = fmul fast float %1064, %1066
  %1068 = fmul fast float %1062, 3.000000e+00
  %1069 = fmul fast float %1065, 3.000000e+00
  %1070 = fmul fast float %1064, 6.000000e+00
  %1071 = fsub fast float %1069, %1070
  %1072 = fadd fast float %1071, 4.000000e+00
  %1073 = fmul fast float %1072, 0x3FC5555560000000
  %1074 = fmul fast float %1065, -3.000000e+00
  %1075 = fadd fast float %1064, %1062
  %1076 = fmul fast float %1075, 3.000000e+00
  %1077 = fadd fast float %1074, 1.000000e+00
  %1078 = fadd fast float %1077, %1076
  %1079 = fmul fast float %1065, 0x3FC5555560000000
  %1080 = fmul fast float %1063, %1063
  %1081 = fmul fast float %1080, %1063
  %1082 = fsub fast float 3.000000e+00, %1063
  %1083 = fmul fast float %1080, %1082
  %1084 = fmul fast float %1063, 3.000000e+00
  %1085 = fmul fast float %1081, 3.000000e+00
  %1086 = fmul fast float %1080, 6.000000e+00
  %1087 = fsub fast float %1085, %1086
  %1088 = fadd fast float %1087, 4.000000e+00
  %1089 = fmul fast float %1088, 0x3FC5555560000000
  %1090 = fmul fast float %1081, -3.000000e+00
  %1091 = fadd fast float %1080, %1063
  %1092 = fmul fast float %1091, 3.000000e+00
  %1093 = fadd fast float %1090, 1.000000e+00
  %1094 = fadd fast float %1093, %1092
  %1095 = fmul fast float %1081, 0x3FC5555560000000
  %1096 = fadd fast float %1062, 1.000000e+00
  %1097 = fsub fast float 1.000000e+00, %1068
  %1098 = fadd fast float %1097, %1067
  %1099 = fadd fast float %1098, %1072
  %1100 = fmul fast float %1099, 0x3FC5555560000000
  %1101 = fdiv fast float %1073, %1100
  %1102 = fsub fast float %1096, %1101
  %1103 = fsub fast float 1.000000e+00, %1062
  %1104 = fadd fast float %1078, %1065
  %1105 = fmul fast float %1104, 0x3FC5555560000000
  %1106 = fdiv fast float %1079, %1105
  %1107 = fadd fast float %1103, %1106
  %1108 = fadd fast float %1063, 1.000000e+00
  %1109 = fsub fast float 1.000000e+00, %1084
  %1110 = fadd fast float %1109, %1083
  %1111 = fadd fast float %1110, %1088
  %1112 = fmul fast float %1111, 0x3FC5555560000000
  %1113 = fdiv fast float %1089, %1112
  %1114 = fsub fast float %1108, %1113
  %1115 = fsub fast float 1.000000e+00, %1063
  %1116 = fadd fast float %1094, %1081
  %1117 = fmul fast float %1116, 0x3FC5555560000000
  %1118 = fdiv fast float %1095, %1117
  %1119 = fadd fast float %1118, %1115
  %1120 = fmul fast float %1102, %1056
  %1121 = fsub fast float %978, %1120
  %1122 = fmul fast float %1107, %1056
  %1123 = fadd fast float %1122, %978
  %1124 = fmul fast float %1119, %1057
  %1125 = fadd fast float %1124, %979
  %1126 = fmul fast float %1114, %1057
  %1127 = fsub fast float %979, %1126
  %1128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %1121, float %1127, float %1045, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1129 = extractvalue %dx.types.ResRet.f32 %1128, 0
  %1130 = extractvalue %dx.types.ResRet.f32 %1128, 1
  %1131 = extractvalue %dx.types.ResRet.f32 %1128, 2
  %1132 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %1123, float %1127, float %1045, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1133 = extractvalue %dx.types.ResRet.f32 %1132, 0
  %1134 = extractvalue %dx.types.ResRet.f32 %1132, 1
  %1135 = extractvalue %dx.types.ResRet.f32 %1132, 2
  %1136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %1121, float %1125, float %1045, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1137 = extractvalue %dx.types.ResRet.f32 %1136, 0
  %1138 = extractvalue %dx.types.ResRet.f32 %1136, 1
  %1139 = extractvalue %dx.types.ResRet.f32 %1136, 2
  %1140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %1123, float %1125, float %1045, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1141 = extractvalue %dx.types.ResRet.f32 %1140, 0
  %1142 = extractvalue %dx.types.ResRet.f32 %1140, 1
  %1143 = extractvalue %dx.types.ResRet.f32 %1140, 2
  %1144 = fsub fast float %1137, %1129
  %1145 = fsub fast float %1138, %1130
  %1146 = fsub fast float %1139, %1131
  %1147 = fmul fast float %1144, %1117
  %1148 = fmul fast float %1145, %1117
  %1149 = fmul fast float %1146, %1117
  %1150 = fadd fast float %1147, %1129
  %1151 = fadd fast float %1148, %1130
  %1152 = fadd fast float %1149, %1131
  %1153 = fsub fast float %1141, %1133
  %1154 = fsub fast float %1142, %1134
  %1155 = fsub fast float %1143, %1135
  %1156 = fmul fast float %1153, %1117
  %1157 = fmul fast float %1154, %1117
  %1158 = fmul fast float %1155, %1117
  %1159 = fsub fast float %1133, %1150
  %1160 = fadd fast float %1159, %1156
  %1161 = fsub fast float %1134, %1151
  %1162 = fadd fast float %1161, %1157
  %1163 = fsub fast float %1135, %1152
  %1164 = fadd fast float %1163, %1158
  %1165 = fmul fast float %1160, %1105
  %1166 = fmul fast float %1162, %1105
  %1167 = fmul fast float %1164, %1105
  %1168 = fadd fast float %1165, %1150
  %1169 = fadd fast float %1166, %1151
  %1170 = fadd fast float %1167, %1152
  %1171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1172 = extractvalue %dx.types.CBufRet.f32 %1171, 1
  %1173 = fmul fast float %1168, %1172
  %1174 = fmul fast float %1169, %1172
  %1175 = fmul fast float %1170, %1172
  br label %1176

; <label>:1176                                    ; preds = %1008, %965
  %1177 = phi float [ %1047, %1008 ], [ 1.000000e+00, %965 ]
  %1178 = phi float [ %1048, %1008 ], [ 1.000000e+00, %965 ]
  %1179 = phi float [ %1049, %1008 ], [ 1.000000e+00, %965 ]
  %1180 = phi float [ %1173, %1008 ], [ 0.000000e+00, %965 ]
  %1181 = phi float [ %1174, %1008 ], [ 0.000000e+00, %965 ]
  %1182 = phi float [ %1175, %1008 ], [ 0.000000e+00, %965 ]
  %1183 = fmul fast float %1177, %969
  %1184 = fmul fast float %1178, %970
  %1185 = fmul fast float %1179, %971
  %1186 = fmul fast float %1177, %966
  %1187 = fmul fast float %1178, %967
  %1188 = fmul fast float %1179, %968
  %1189 = fadd fast float %1180, %1186
  %1190 = fadd fast float %1181, %1187
  %1191 = fadd fast float %1182, %1188
  %1192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1193 = extractvalue %dx.types.CBufRet.f32 %1192, 2
  %1194 = fmul fast float %1193, 0x3FE3C6EF40000000
  %1195 = frem fast float %48, 2.560000e+02
  %1196 = frem fast float %49, 2.560000e+02
  %1197 = fptoui float %1195 to i32
  %1198 = fptoui float %1196 to i32
  %1199 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %1197, i32 %1198, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1200 = extractvalue %dx.types.ResRet.f32 %1199, 0
  %1201 = fadd fast float %1200, %1194
  %1202 = call float @dx.op.unary.f32(i32 22, float %1201)  ; Frc(value)
  %1203 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %46, i32 %47, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1204 = extractvalue %dx.types.ResRet.f32 %1203, 0
  %1205 = extractvalue %dx.types.ResRet.f32 %1203, 1
  %1206 = extractvalue %dx.types.ResRet.f32 %1203, 2
  %1207 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1208 = extractvalue %dx.types.CBufRet.i32 %1207, 3
  %1209 = and i32 %1208, 3
  %1210 = icmp ne i32 %1209, 0
  %1211 = and i32 %1208, 4
  %1212 = icmp ne i32 %1211, 0
  %1213 = and i1 %1210, %1212
  br i1 %1213, label %1214, label %1223, !dx.controlflow.hints !97

; <label>:1214                                    ; preds = %1176
  %1215 = fmul fast float %52, %103
  %1216 = fmul fast float %51, %102
  %1217 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %20, float %1216, float %1215, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1218 = extractvalue %dx.types.ResRet.f32 %1217, 0
  %1219 = fsub fast float 1.000000e+00, %1218
  %1220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1221 = extractvalue %dx.types.CBufRet.f32 %1220, 0
  %1222 = fcmp fast olt float %1219, %1221
  br label %1226

; <label>:1223                                    ; preds = %1176
  %1224 = icmp eq i32 %1211, 0
  %1225 = and i1 %1210, %1224
  br label %1226

; <label>:1226                                    ; preds = %1223, %1214
  %1227 = phi i1 [ %1222, %1214 ], [ %1225, %1223 ]
  %1228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1229 = extractvalue %dx.types.CBufRet.f32 %1228, 0
  br i1 %1227, label %1230, label %1249, !dx.controlflow.hints !98

; <label>:1230                                    ; preds = %1226
  %1231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1232 = extractvalue %dx.types.CBufRet.f32 %1231, 3
  %1233 = call float @dx.op.dot3.f32(i32 55, float %1183, float %1184, float %1185, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1234 = fmul fast float %1233, %1204
  %1235 = call float @dx.op.dot3.f32(i32 55, float %1189, float %1190, float %1191, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1236 = fmul fast float %1229, %1235
  %1237 = fadd fast float %1236, %1234
  br i1 %1213, label %1238, label %1244, !dx.controlflow.hints !99

; <label>:1238                                    ; preds = %1230
  %1239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1240 = extractvalue %dx.types.CBufRet.f32 %1239, 1
  %1241 = fadd fast float %1183, -1.000000e+00
  %1242 = fmul fast float %1240, %1241
  %1243 = fadd fast float %1242, 1.000000e+00
  br label %1244

; <label>:1244                                    ; preds = %1238, %1230
  %1245 = phi float [ %1243, %1238 ], [ %1183, %1230 ]
  %1246 = fsub fast float %1205, %1232
  %1247 = fmul fast float %1245, %1246
  %1248 = fadd fast float %1247, %1232
  br label %1259

; <label>:1249                                    ; preds = %1226
  %1250 = fmul fast float %1204, %1183
  %1251 = fmul fast float %1205, %1184
  %1252 = fmul fast float %1206, %1185
  %1253 = fmul fast float %1229, %1189
  %1254 = fmul fast float %1229, %1190
  %1255 = fmul fast float %1229, %1191
  %1256 = fadd fast float %1253, %1250
  %1257 = fadd fast float %1254, %1251
  %1258 = fadd fast float %1255, %1252
  br label %1259

; <label>:1259                                    ; preds = %1249, %1244
  %1260 = phi float [ %1237, %1244 ], [ %1256, %1249 ]
  %1261 = phi float [ %1248, %1244 ], [ %1257, %1249 ]
  %1262 = phi float [ %1206, %1244 ], [ %1258, %1249 ]
  %1263 = lshr i32 %44, 2
  %1264 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1265 = extractvalue %dx.types.CBufRet.i32 %1264, 1
  %1266 = shl i32 %1265, 1
  %1267 = lshr i32 %45, 4
  %1268 = and i32 %1267, 134217727
  %1269 = extractvalue %dx.types.CBufRet.i32 %1264, 0
  %1270 = mul i32 %1269, %1268
  %1271 = lshr i32 %44, 5
  %1272 = and i32 %1271, 67108863
  %1273 = add i32 %1266, %1272
  %1274 = add i32 %1273, %1270
  %1275 = shl i32 %1274, 2
  %1276 = and i32 %47, 24
  %1277 = and i32 %1263, 7
  %1278 = or i32 %1276, %1277
  %1279 = shl i32 1, %1278
  %1280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.i32 %1280, 0
  %1282 = and i32 %1281, %1279
  %1283 = icmp eq i32 %1282, 0
  br i1 %1283, label %1299, label %1284, !dx.controlflow.hints !100

; <label>:1284                                    ; preds = %1259
  %1285 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %46, i32 %47, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1286 = extractvalue %dx.types.ResRet.f32 %1285, 0
  %1287 = fcmp fast ogt float %1286, 0.000000e+00
  br i1 %1287, label %1288, label %1299, !dx.controlflow.hints !101

; <label>:1288                                    ; preds = %1284
  %1289 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %46, i32 %47, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1290 = extractvalue %dx.types.ResRet.f32 %1289, 0
  %1291 = extractvalue %dx.types.ResRet.f32 %1289, 1
  %1292 = extractvalue %dx.types.ResRet.f32 %1289, 2
  %1293 = extractvalue %dx.types.ResRet.f32 %1289, 3
  %1294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %1295 = extractvalue %dx.types.CBufRet.f32 %1294, 2
  %1296 = fmul fast float %1295, %1290
  %1297 = fmul fast float %1295, %1291
  %1298 = fmul fast float %1295, %1292
  br label %1299

; <label>:1299                                    ; preds = %1288, %1284, %1259
  %1300 = phi float [ %1296, %1288 ], [ 0.000000e+00, %1284 ], [ 0.000000e+00, %1259 ]
  %1301 = phi float [ %1297, %1288 ], [ 0.000000e+00, %1284 ], [ 0.000000e+00, %1259 ]
  %1302 = phi float [ %1298, %1288 ], [ 0.000000e+00, %1284 ], [ 0.000000e+00, %1259 ]
  %1303 = phi float [ %1293, %1288 ], [ 0.000000e+00, %1284 ], [ 0.000000e+00, %1259 ]
  %1304 = fsub fast float 1.000000e+00, %1303
  %1305 = fmul fast float %1304, %1260
  %1306 = fmul fast float %1304, %1261
  %1307 = fmul fast float %1304, %1262
  %1308 = fadd fast float %1305, %1300
  %1309 = fadd fast float %1306, %1301
  %1310 = fadd fast float %1307, %1302
  %1311 = fadd fast float %1202, 0x3FE3C6EF40000000
  %1312 = call float @dx.op.unary.f32(i32 22, float %1311)  ; Frc(value)
  %1313 = call float @dx.op.unary.f32(i32 23, float %1308)  ; Log(value)
  %1314 = fadd fast float %1313, -7.000000e+00
  %1315 = call float @dx.op.unary.f32(i32 21, float %1314)  ; Exp(value)
  %1316 = fmul fast float %1312, 2.000000e+00
  %1317 = fadd fast float %1316, -1.000000e+00
  %1318 = fmul fast float %1315, %1317
  %1319 = fcmp fast ogt float %1308, 0.000000e+00
  %1320 = select i1 %1319, float %1318, float 0.000000e+00
  %1321 = fadd fast float %1320, %1308
  %1322 = fadd fast float %1202, 0x3FF3C6EF40000000
  %1323 = call float @dx.op.unary.f32(i32 22, float %1322)  ; Frc(value)
  %1324 = call float @dx.op.unary.f32(i32 23, float %1309)  ; Log(value)
  %1325 = fadd fast float %1324, -7.000000e+00
  %1326 = call float @dx.op.unary.f32(i32 21, float %1325)  ; Exp(value)
  %1327 = fmul fast float %1323, 2.000000e+00
  %1328 = fadd fast float %1327, -1.000000e+00
  %1329 = fmul fast float %1326, %1328
  %1330 = fcmp fast ogt float %1309, 0.000000e+00
  %1331 = select i1 %1330, float %1329, float 0.000000e+00
  %1332 = fadd fast float %1331, %1309
  %1333 = fadd fast float %1202, 0x3FFDAA66E0000000
  %1334 = call float @dx.op.unary.f32(i32 22, float %1333)  ; Frc(value)
  %1335 = call float @dx.op.unary.f32(i32 23, float %1310)  ; Log(value)
  %1336 = fadd fast float %1335, -6.000000e+00
  %1337 = call float @dx.op.unary.f32(i32 21, float %1336)  ; Exp(value)
  %1338 = fmul fast float %1334, 2.000000e+00
  %1339 = fadd fast float %1338, -1.000000e+00
  %1340 = fmul fast float %1337, %1339
  %1341 = fcmp fast ogt float %1310, 0.000000e+00
  %1342 = select i1 %1341, float %1340, float 0.000000e+00
  %1343 = fadd fast float %1342, %1310
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %46, i32 %47, i32 undef, float %1321, float %1332, float %1343, float %1321, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1345 = extractvalue %dx.types.CBufRet.i32 %1344, 0
  %1346 = and i32 %1345, 1
  %1347 = icmp eq i32 %1346, 0
  br i1 %1347, label %1351, label %1348, !dx.controlflow.hints !102

; <label>:1348                                    ; preds = %1299
  %1349 = and i32 %44, 2147483647
  %1350 = and i32 %45, 2147483647
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1349, i32 %1350, i32 undef, float %1204, float %1205, float %1206, float %1204, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1351

; <label>:1351                                    ; preds = %1348, %1299
  br label %1352

; <label>:1352                                    ; preds = %1371, %1351
  %1353 = phi i32 [ %1358, %1371 ], [ 14, %1351 ]
  %1354 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1353)  ; FirstbitLo(value)
  %1355 = and i32 %1354, 31
  %1356 = shl i32 1, %1355
  %1357 = xor i32 %1356, -1
  %1358 = and i32 %1353, %1357
  %1359 = and i32 %1354, 1
  %1360 = lshr i32 %1354, 1
  %1361 = or i32 %1359, %46
  %1362 = add i32 %1360, %47
  %1363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1364 = extractvalue %dx.types.CBufRet.f32 %1363, 0
  %1365 = fptoui float %1364 to i32
  %1366 = icmp uge i32 %1361, %1365
  %1367 = extractvalue %dx.types.CBufRet.f32 %1363, 1
  %1368 = fptoui float %1367 to i32
  %1369 = icmp uge i32 %1362, %1368
  %1370 = or i1 %1366, %1369
  br i1 %1370, label %1371, label %1373, !dx.controlflow.hints !103

; <label>:1371                                    ; preds = %2638, %2585, %1352
  %1372 = icmp eq i32 %1358, 0
  br i1 %1372, label %2641, label %1352

; <label>:1373                                    ; preds = %1352
  %1374 = uitofp i32 %1361 to float
  %1375 = uitofp i32 %1362 to float
  %1376 = fadd fast float %1374, 5.000000e-01
  %1377 = fadd fast float %1375, 5.000000e-01
  %1378 = extractvalue %dx.types.CBufRet.f32 %1363, 2
  %1379 = extractvalue %dx.types.CBufRet.f32 %1363, 3
  %1380 = fmul fast float %1378, %1376
  %1381 = fmul fast float %1379, %1377
  %1382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1383 = extractvalue %dx.types.CBufRet.f32 %1382, 2
  %1384 = fmul fast float %1383, 0x3FE3C6EF40000000
  %1385 = frem fast float %1374, 2.560000e+02
  %1386 = frem fast float %1375, 2.560000e+02
  %1387 = fptoui float %1385 to i32
  %1388 = fptoui float %1386 to i32
  %1389 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %1387, i32 %1388, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1390 = extractvalue %dx.types.ResRet.f32 %1389, 0
  %1391 = fadd fast float %1390, %1384
  %1392 = call float @dx.op.unary.f32(i32 22, float %1391)  ; Frc(value)
  %1393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.i32 %1393, 0
  %1395 = and i32 %1394, 114688
  %1396 = icmp ne i32 %1395, 0
  %1397 = select i1 %1396, i32 %1361, i32 0
  %1398 = select i1 %1396, i32 %1362, i32 0
  %1399 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %1397, i32 %1398, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1400 = extractvalue %dx.types.ResRet.f32 %1399, 0
  %1401 = fmul fast float %1400, 2.550000e+02
  %1402 = fptoui float %1401 to i32
  %1403 = icmp eq i32 %1402, 3
  %1404 = and i1 %1396, %1403
  %1405 = getelementptr [4 x float], [4 x float]* %31, i32 0, i32 %1354
  %1406 = load float, float* %1405, align 4, !tbaa !48, !noalias !104
  %1407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1408 = extractvalue %dx.types.CBufRet.f32 %1407, 3
  %1409 = fcmp fast oge float %1406, %1408
  br i1 %1404, label %2269, label %1410, !dx.controlflow.hints !36

; <label>:1410                                    ; preds = %1373
  %1411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 170)  ; CBufferLoadLegacy(handle,regIndex)
  %1412 = extractvalue %dx.types.CBufRet.f32 %1411, 0
  %1413 = select i1 %1409, float %1412, float %1406
  %1414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1415 = extractvalue %dx.types.CBufRet.f32 %1414, 2
  %1416 = extractvalue %dx.types.CBufRet.f32 %1414, 3
  %1417 = fmul fast float %1376, 2.000000e+00
  %1418 = fmul fast float %1417, %1415
  %1419 = fmul fast float %1377, 2.000000e+00
  %1420 = fmul fast float %1419, %1416
  %1421 = fsub fast float 1.000000e+00, %1418
  %1422 = fsub fast float 1.000000e+00, %1420
  %1423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1424 = extractvalue %dx.types.CBufRet.f32 %1423, 0
  %1425 = extractvalue %dx.types.CBufRet.f32 %1423, 1
  %1426 = extractvalue %dx.types.CBufRet.f32 %1423, 2
  %1427 = fmul fast float %1421, %1424
  %1428 = fmul fast float %1421, %1425
  %1429 = fmul fast float %1421, %1426
  %1430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1431 = extractvalue %dx.types.CBufRet.f32 %1430, 0
  %1432 = extractvalue %dx.types.CBufRet.f32 %1430, 1
  %1433 = extractvalue %dx.types.CBufRet.f32 %1430, 2
  %1434 = fmul fast float %1422, %1431
  %1435 = fmul fast float %1422, %1432
  %1436 = fmul fast float %1422, %1433
  %1437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1438 = extractvalue %dx.types.CBufRet.f32 %1437, 0
  %1439 = extractvalue %dx.types.CBufRet.f32 %1437, 1
  %1440 = extractvalue %dx.types.CBufRet.f32 %1437, 2
  %1441 = fadd fast float %1434, %1438
  %1442 = fadd fast float %1441, %1427
  %1443 = fadd fast float %1435, %1439
  %1444 = fadd fast float %1443, %1428
  %1445 = fadd fast float %1436, %1440
  %1446 = fadd fast float %1445, %1429
  %1447 = fmul fast float %1442, %1413
  %1448 = fmul fast float %1444, %1413
  %1449 = fmul fast float %1446, %1413
  %1450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 163)  ; CBufferLoadLegacy(handle,regIndex)
  %1451 = extractvalue %dx.types.CBufRet.f32 %1450, 0
  %1452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1453 = extractvalue %dx.types.CBufRet.f32 %1452, 0
  %1454 = extractvalue %dx.types.CBufRet.f32 %1452, 1
  %1455 = extractvalue %dx.types.CBufRet.f32 %1452, 2
  %1456 = extractvalue %dx.types.CBufRet.f32 %1452, 3
  %1457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1458 = extractvalue %dx.types.CBufRet.f32 %1457, 0
  %1459 = extractvalue %dx.types.CBufRet.f32 %1457, 1
  %1460 = extractvalue %dx.types.CBufRet.f32 %1457, 2
  %1461 = extractvalue %dx.types.CBufRet.f32 %1457, 3
  %1462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1463 = extractvalue %dx.types.CBufRet.f32 %1462, 0
  %1464 = extractvalue %dx.types.CBufRet.f32 %1462, 1
  %1465 = extractvalue %dx.types.CBufRet.f32 %1462, 2
  %1466 = extractvalue %dx.types.CBufRet.f32 %1462, 3
  %1467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1468 = extractvalue %dx.types.CBufRet.f32 %1467, 0
  %1469 = extractvalue %dx.types.CBufRet.f32 %1467, 1
  %1470 = extractvalue %dx.types.CBufRet.f32 %1467, 2
  %1471 = extractvalue %dx.types.CBufRet.f32 %1467, 3
  %1472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1473 = extractvalue %dx.types.CBufRet.f32 %1472, 3
  %1474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1475 = extractvalue %dx.types.CBufRet.f32 %1474, 3
  %1476 = extractvalue %dx.types.CBufRet.f32 %1474, 0
  %1477 = extractvalue %dx.types.CBufRet.f32 %1474, 1
  %1478 = extractvalue %dx.types.CBufRet.f32 %1474, 2
  %1479 = fcmp fast olt float %1478, -5.000000e-01
  %1480 = extractvalue %dx.types.CBufRet.f32 %1450, 3
  %1481 = call float @dx.op.dot3.f32(i32 55, float %1447, float %1448, float %1449, float %1447, float %1448, float %1449)  ; Dot3(ax,ay,az,bx,by,bz)
  %1482 = call float @dx.op.unary.f32(i32 25, float %1481)  ; Rsqrt(value)
  %1483 = fmul fast float %1482, %1481
  %1484 = fmul fast float %1482, %1447
  %1485 = fmul fast float %1482, %1448
  %1486 = fmul fast float %1482, %1449
  %1487 = fadd fast float %1483, %1456
  br i1 %1409, label %1488, label %1500, !dx.controlflow.hints !37

; <label>:1488                                    ; preds = %1410
  %1489 = extractvalue %dx.types.CBufRet.f32 %1450, 2
  %1490 = extractvalue %dx.types.CBufRet.f32 %1450, 1
  %1491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 187)  ; CBufferLoadLegacy(handle,regIndex)
  %1492 = extractvalue %dx.types.CBufRet.f32 %1491, 1
  %1493 = extractvalue %dx.types.CBufRet.f32 %1491, 0
  %1494 = call float @dx.op.binary.f32(i32 35, float %1486, float %1493)  ; FMax(a,b)
  %1495 = call float @dx.op.binary.f32(i32 36, float %1494, float %1492)  ; FMin(a,b)
  %1496 = fmul fast float %1495, %1490
  %1497 = fadd fast float %1496, %1489
  %1498 = call float @dx.op.unary.f32(i32 7, float %1497)  ; Saturate(value)
  %1499 = fmul fast float %1486, %1451
  br label %1500

; <label>:1500                                    ; preds = %1488, %1410
  %1501 = phi float [ %1451, %1488 ], [ %1487, %1410 ]
  %1502 = phi float [ %1498, %1488 ], [ 0.000000e+00, %1410 ]
  %1503 = phi float [ %1499, %1488 ], [ %1449, %1410 ]
  %1504 = call float @dx.op.dot3.f32(i32 55, float %1484, float %1485, float %1486, float %1453, float %1454, float %1455)  ; Dot3(ax,ay,az,bx,by,bz)
  %1505 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1506 = extractvalue %dx.types.CBufRet.i32 %1505, 1
  %1507 = and i32 %1506, 1
  %1508 = icmp ne i32 %1507, 0
  %1509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1510 = extractvalue %dx.types.CBufRet.f32 %1509, 2
  %1511 = fcmp fast ogt float %1510, 0.000000e+00
  %1512 = and i1 %1508, %1511
  br i1 %1512, label %1513, label %1922, !dx.controlflow.hints !38

; <label>:1513                                    ; preds = %1500
  %1514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1515 = extractvalue %dx.types.CBufRet.f32 %1514, 3
  %1516 = select i1 %1409, float %1515, float %1483
  %1517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1518 = extractvalue %dx.types.CBufRet.f32 %1517, 3
  %1519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1520 = extractvalue %dx.types.CBufRet.f32 %1519, 2
  %1521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1522 = extractvalue %dx.types.CBufRet.f32 %1521, 2
  %1523 = fsub fast float %1520, %1522
  %1524 = and i32 %1506, 2
  %1525 = extractvalue %dx.types.CBufRet.i32 %1505, 0
  %1526 = call i32 @dx.op.binary.i32(i32 40, i32 %1525, i32 3)  ; UMin(a,b)
  %1527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1528 = extractvalue %dx.types.CBufRet.f32 %1527, 0
  %1529 = extractvalue %dx.types.CBufRet.f32 %1527, 1
  %1530 = extractvalue %dx.types.CBufRet.f32 %1521, 0
  %1531 = extractvalue %dx.types.CBufRet.f32 %1521, 1
  %1532 = fsub fast float %1528, %1530
  %1533 = fsub fast float %1529, %1531
  %1534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1535 = extractvalue %dx.types.CBufRet.f32 %1534, 0
  %1536 = fcmp fast ogt float %1535, 0.000000e+00
  %1537 = fsub fast float -0.000000e+00, %1532
  %1538 = fsub fast float -0.000000e+00, %1533
  %1539 = call float @dx.op.dot2.f32(i32 54, float %1484, float %1485, float %1484, float %1485)  ; Dot2(ax,ay,bx,by)
  %1540 = call float @dx.op.dot2.f32(i32 54, float %1484, float %1485, float %1537, float %1538)  ; Dot2(ax,ay,bx,by)
  %1541 = fmul fast float %1540, 2.000000e+00
  %1542 = call float @dx.op.dot2.f32(i32 54, float %1537, float %1538, float %1537, float %1538)  ; Dot2(ax,ay,bx,by)
  %1543 = fmul fast float %1535, %1535
  %1544 = fsub fast float %1542, %1543
  %1545 = fmul fast float %1541, %1541
  %1546 = fmul fast float %1539, 4.000000e+00
  %1547 = fmul fast float %1546, %1544
  %1548 = fsub fast float %1545, %1547
  %1549 = fcmp fast ogt float %1548, 0.000000e+00
  br i1 %1549, label %1550, label %1565, !dx.controlflow.hints !39

; <label>:1550                                    ; preds = %1513
  %1551 = fcmp fast ogt float %1541, 0.000000e+00
  %1552 = call float @dx.op.unary.f32(i32 24, float %1548)  ; Sqrt(value)
  %1553 = fsub fast float -0.000000e+00, %1552
  %1554 = select i1 %1551, float %1552, float %1553
  %1555 = fadd fast float %1554, %1541
  %1556 = fmul float %1555, -5.000000e-01
  %1557 = fdiv fast float %1556, %1539
  %1558 = call float @dx.op.binary.f32(i32 35, float %1557, float 0.000000e+00)  ; FMax(a,b)
  %1559 = call float @dx.op.binary.f32(i32 36, float %1516, float %1558)  ; FMin(a,b)
  %1560 = fdiv fast float %1544, %1556
  %1561 = call float @dx.op.binary.f32(i32 35, float %1560, float 0.000000e+00)  ; FMax(a,b)
  %1562 = call float @dx.op.binary.f32(i32 36, float %1516, float %1561)  ; FMin(a,b)
  %1563 = call float @dx.op.binary.f32(i32 36, float %1559, float %1562)  ; FMin(a,b)
  %1564 = call float @dx.op.binary.f32(i32 35, float %1559, float %1562)  ; FMax(a,b)
  br label %1565

; <label>:1565                                    ; preds = %1550, %1513
  %1566 = phi float [ %1564, %1550 ], [ -1.000000e+00, %1513 ]
  %1567 = phi float [ %1563, %1550 ], [ -1.000000e+00, %1513 ]
  %1568 = phi i1 [ true, %1550 ], [ false, %1513 ]
  %1569 = and i1 %1536, %1568
  br i1 %1569, label %1570, label %1572, !dx.controlflow.hints !40

; <label>:1570                                    ; preds = %1565
  %1571 = fcmp fast oeq float %1567, %1566
  br i1 %1571, label %1875, label %1573, !dx.controlflow.hints !41

; <label>:1572                                    ; preds = %1565
  br i1 %1536, label %1875, label %1573, !dx.controlflow.hints !42

; <label>:1573                                    ; preds = %1572, %1570
  %1574 = phi float [ %1516, %1572 ], [ %1566, %1570 ]
  %1575 = phi float [ 0.000000e+00, %1572 ], [ %1567, %1570 ]
  %1576 = icmp ne i32 %1524, 0
  %1577 = fmul fast float %1574, %1486
  %1578 = fadd fast float %1577, %1518
  %1579 = fmul fast float %1578, %1574
  %1580 = select i1 %1576, float 0.000000e+00, float %1579
  %1581 = fcmp fast oeq float %1486, 0.000000e+00
  %1582 = fdiv fast float %1523, %1486
  %1583 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1582)  ; FMax(a,b)
  %1584 = select i1 %1581, float %1574, float %1583
  %1585 = call float @dx.op.binary.f32(i32 36, float %1574, float %1584)  ; FMin(a,b)
  %1586 = fcmp fast ogt float %1486, 0.000000e+00
  %1587 = fcmp fast olt float %1523, 0.000000e+00
  br i1 %1586, label %1588, label %1645, !dx.controlflow.hints !43

; <label>:1588                                    ; preds = %1573
  %1589 = icmp eq i32 %1524, 0
  br i1 %1587, label %1590, label %1634, !dx.controlflow.hints !44

; <label>:1590                                    ; preds = %1588
  %1591 = select i1 %1589, float %1574, float 0.000000e+00
  %1592 = fsub fast float -0.000000e+00, %1591
  %1593 = call float @dx.op.unary.f32(i32 6, float %1592)  ; FAbs(value)
  %1594 = fmul fast float %1591, %1486
  %1595 = fadd fast float %1594, %1518
  %1596 = fmul fast float %1593, %1595
  %1597 = fsub fast float %1580, %1596
  %1598 = fsub fast float %1574, %1593
  %1599 = select i1 %1589, float %1598, float 0.000000e+00
  %1600 = extractvalue %dx.types.CBufRet.f32 %1514, 0
  %1601 = extractvalue %dx.types.CBufRet.f32 %1514, 1
  %1602 = extractvalue %dx.types.CBufRet.f32 %1514, 2
  %1603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1604 = extractvalue %dx.types.CBufRet.f32 %1603, 0
  %1605 = extractvalue %dx.types.CBufRet.f32 %1603, 1
  %1606 = extractvalue %dx.types.CBufRet.f32 %1603, 2
  %1607 = extractvalue %dx.types.CBufRet.f32 %1603, 3
  %1608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1609 = extractvalue %dx.types.CBufRet.f32 %1608, 3
  %1610 = call float @dx.op.binary.f32(i32 36, float %1597, float %1609)  ; FMin(a,b)
  %1611 = fmul fast float %1607, %1599
  %1612 = call float @dx.op.unary.f32(i32 7, float %1611)  ; Saturate(value)
  %1613 = fsub fast float %1604, %1600
  %1614 = fsub fast float %1605, %1601
  %1615 = fsub fast float %1606, %1602
  %1616 = fmul fast float %1612, %1613
  %1617 = fmul fast float %1612, %1614
  %1618 = fmul fast float %1612, %1615
  %1619 = fadd fast float %1616, %1600
  %1620 = fadd fast float %1617, %1601
  %1621 = fadd fast float %1618, %1602
  br i1 %1409, label %1875, label %1622, !dx.controlflow.hints !45

; <label>:1622                                    ; preds = %1590
  %1623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1624 = extractvalue %dx.types.CBufRet.f32 %1623, 0
  %1625 = extractvalue %dx.types.CBufRet.f32 %1623, 1
  %1626 = fadd fast float %1625, %1624
  %1627 = call float @dx.op.unary.f32(i32 7, float %1626)  ; Saturate(value)
  %1628 = extractvalue %dx.types.CBufRet.f32 %1623, 2
  %1629 = extractvalue %dx.types.CBufRet.f32 %1623, 3
  %1630 = fadd fast float %1629, %1628
  %1631 = call float @dx.op.unary.f32(i32 7, float %1630)  ; Saturate(value)
  %1632 = fmul fast float %1627, %1610
  %1633 = fmul fast float %1632, %1631
  br label %1875

; <label>:1634                                    ; preds = %1588
  br i1 %1589, label %1635, label %1656, !dx.controlflow.hints !46

; <label>:1635                                    ; preds = %1634
  %1636 = call float @dx.op.binary.f32(i32 36, float %1585, float %1575)  ; FMin(a,b)
  %1637 = fsub fast float %1585, %1636
  %1638 = fsub fast float %1637, %1574
  %1639 = call float @dx.op.unary.f32(i32 6, float %1638)  ; FAbs(value)
  %1640 = fadd fast float %1637, %1574
  %1641 = fmul fast float %1640, %1486
  %1642 = fadd fast float %1641, %1518
  %1643 = fmul fast float %1642, %1639
  %1644 = fsub fast float %1580, %1643
  br label %1656

; <label>:1645                                    ; preds = %1573
  br i1 %1587, label %1646, label %1656, !dx.controlflow.hints !47

; <label>:1646                                    ; preds = %1645
  %1647 = call float @dx.op.binary.f32(i32 35, float %1575, float %1585)  ; FMax(a,b)
  %1648 = icmp eq i32 %1524, 0
  %1649 = select i1 %1648, float %1585, float 0.000000e+00
  %1650 = fsub fast float -0.000000e+00, %1649
  %1651 = call float @dx.op.unary.f32(i32 6, float %1650)  ; FAbs(value)
  %1652 = fmul fast float %1649, %1486
  %1653 = fadd fast float %1652, %1518
  %1654 = fmul fast float %1651, %1653
  %1655 = fsub fast float %1580, %1654
  br label %1656

; <label>:1656                                    ; preds = %1646, %1645, %1635, %1634
  %1657 = phi float [ %1575, %1634 ], [ %1575, %1635 ], [ %1647, %1646 ], [ %1575, %1645 ]
  %1658 = phi float [ 0.000000e+00, %1634 ], [ %1639, %1635 ], [ %1651, %1646 ], [ 0.000000e+00, %1645 ]
  %1659 = phi float [ %1580, %1634 ], [ %1644, %1635 ], [ %1655, %1646 ], [ %1580, %1645 ]
  %1660 = phi float [ %1585, %1634 ], [ %1585, %1635 ], [ %1574, %1646 ], [ %1574, %1645 ]
  %1661 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 0
  store float -1.000000e+00, float* %1661, align 4, !tbaa !48, !noalias !105
  %1662 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 1
  store float -1.000000e+00, float* %1662, align 4, !tbaa !48, !noalias !105
  %1663 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 2
  store float -1.000000e+00, float* %1663, align 4, !tbaa !48, !noalias !105
  %1664 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 0
  store float -1.000000e+00, float* %1664, align 4, !tbaa !48, !noalias !105
  %1665 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 1
  store float -1.000000e+00, float* %1665, align 4, !tbaa !48, !noalias !105
  %1666 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 2
  store float -1.000000e+00, float* %1666, align 4, !tbaa !48, !noalias !105
  %1667 = icmp sgt i32 %1526, 0
  br i1 %1667, label %1668, label %1729

; <label>:1668                                    ; preds = %1656
  br label %1669

; <label>:1669                                    ; preds = %1718, %1668
  %1670 = phi i32 [ %1719, %1718 ], [ 0, %1668 ]
  %1671 = phi i32 [ %1720, %1718 ], [ 0, %1668 ]
  %1672 = add nuw i32 %1671, 171
  %1673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 %1672)  ; CBufferLoadLegacy(handle,regIndex)
  %1674 = extractvalue %dx.types.CBufRet.f32 %1673, 0
  %1675 = extractvalue %dx.types.CBufRet.f32 %1673, 1
  %1676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1677 = extractvalue %dx.types.CBufRet.f32 %1676, 0
  %1678 = extractvalue %dx.types.CBufRet.f32 %1676, 1
  %1679 = fsub fast float %1674, %1677
  %1680 = fsub fast float %1675, %1678
  %1681 = extractvalue %dx.types.CBufRet.f32 %1673, 2
  %1682 = fsub fast float -0.000000e+00, %1679
  %1683 = fsub fast float -0.000000e+00, %1680
  %1684 = call float @dx.op.dot2.f32(i32 54, float %1484, float %1485, float %1682, float %1683)  ; Dot2(ax,ay,bx,by)
  %1685 = fmul fast float %1684, 2.000000e+00
  %1686 = call float @dx.op.dot2.f32(i32 54, float %1682, float %1683, float %1682, float %1683)  ; Dot2(ax,ay,bx,by)
  %1687 = fmul fast float %1681, %1681
  %1688 = fsub fast float %1686, %1687
  %1689 = fmul fast float %1685, %1685
  %1690 = fmul fast float %1546, %1688
  %1691 = fsub fast float %1689, %1690
  %1692 = fcmp fast ogt float %1691, 0.000000e+00
  br i1 %1692, label %1693, label %1708, !dx.controlflow.hints !39

; <label>:1693                                    ; preds = %1669
  %1694 = fcmp fast ogt float %1685, 0.000000e+00
  %1695 = call float @dx.op.unary.f32(i32 24, float %1691)  ; Sqrt(value)
  %1696 = fsub fast float -0.000000e+00, %1695
  %1697 = select i1 %1694, float %1695, float %1696
  %1698 = fadd fast float %1697, %1685
  %1699 = fmul float %1698, -5.000000e-01
  %1700 = fdiv fast float %1699, %1539
  %1701 = call float @dx.op.binary.f32(i32 35, float %1700, float 0.000000e+00)  ; FMax(a,b)
  %1702 = call float @dx.op.binary.f32(i32 36, float %1574, float %1701)  ; FMin(a,b)
  %1703 = fdiv fast float %1688, %1699
  %1704 = call float @dx.op.binary.f32(i32 35, float %1703, float 0.000000e+00)  ; FMax(a,b)
  %1705 = call float @dx.op.binary.f32(i32 36, float %1574, float %1704)  ; FMin(a,b)
  %1706 = call float @dx.op.binary.f32(i32 36, float %1702, float %1705)  ; FMin(a,b)
  %1707 = call float @dx.op.binary.f32(i32 35, float %1702, float %1705)  ; FMax(a,b)
  br label %1708

; <label>:1708                                    ; preds = %1693, %1669
  %1709 = phi float [ %1707, %1693 ], [ -1.000000e+00, %1669 ]
  %1710 = phi float [ %1706, %1693 ], [ -1.000000e+00, %1669 ]
  %1711 = phi i1 [ true, %1693 ], [ false, %1669 ]
  br i1 %1711, label %1712, label %1718, !dx.controlflow.hints !64

; <label>:1712                                    ; preds = %1708
  %1713 = call float @dx.op.binary.f32(i32 35, float %1657, float %1710)  ; FMax(a,b)
  %1714 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %1671
  store float %1713, float* %1714, align 4, !tbaa !48, !noalias !105
  %1715 = call float @dx.op.binary.f32(i32 35, float %1657, float %1709)  ; FMax(a,b)
  %1716 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %1671
  store float %1715, float* %1716, align 4, !tbaa !48, !noalias !105
  %1717 = add nsw i32 %1670, 1
  br label %1718

; <label>:1718                                    ; preds = %1712, %1708
  %1719 = phi i32 [ %1717, %1712 ], [ %1670, %1708 ]
  %1720 = add nuw nsw i32 %1671, 1
  %1721 = icmp eq i32 %1720, %1526
  br i1 %1721, label %1722, label %1669

; <label>:1722                                    ; preds = %1718
  %1723 = load float, float* %1663, align 4, !tbaa !48, !alias.scope !115, !noalias !118
  %1724 = load float, float* %1662, align 4, !tbaa !48, !alias.scope !121, !noalias !122
  %1725 = load float, float* %1661, align 4, !tbaa !48, !alias.scope !123, !noalias !124
  %1726 = load float, float* %1666, align 4, !tbaa !48, !alias.scope !125, !noalias !128
  %1727 = load float, float* %1665, align 4, !tbaa !48, !alias.scope !131, !noalias !132
  %1728 = load float, float* %1664, align 4, !tbaa !48, !alias.scope !133, !noalias !134
  br label %1729

; <label>:1729                                    ; preds = %1722, %1656
  %1730 = phi float [ -1.000000e+00, %1656 ], [ %1728, %1722 ]
  %1731 = phi float [ -1.000000e+00, %1656 ], [ %1727, %1722 ]
  %1732 = phi float [ -1.000000e+00, %1656 ], [ %1726, %1722 ]
  %1733 = phi float [ -1.000000e+00, %1656 ], [ %1725, %1722 ]
  %1734 = phi float [ -1.000000e+00, %1656 ], [ %1724, %1722 ]
  %1735 = phi float [ -1.000000e+00, %1656 ], [ %1723, %1722 ]
  %1736 = phi i32 [ 0, %1656 ], [ %1719, %1722 ]
  %1737 = call float @dx.op.binary.f32(i32 36, float %1734, float %1735)  ; FMin(a,b)
  %1738 = call float @dx.op.binary.f32(i32 36, float %1733, float %1737)  ; FMin(a,b)
  %1739 = call float @dx.op.binary.f32(i32 35, float %1733, float %1734)  ; FMax(a,b)
  %1740 = call float @dx.op.binary.f32(i32 36, float %1739, float %1735)  ; FMin(a,b)
  %1741 = call float @dx.op.binary.f32(i32 36, float %1733, float %1734)  ; FMin(a,b)
  %1742 = call float @dx.op.binary.f32(i32 35, float %1741, float %1740)  ; FMax(a,b)
  %1743 = call float @dx.op.binary.f32(i32 35, float %1734, float %1735)  ; FMax(a,b)
  %1744 = call float @dx.op.binary.f32(i32 35, float %1733, float %1743)  ; FMax(a,b)
  store float %1738, float* %1661, align 4, !tbaa !48, !alias.scope !123, !noalias !124
  store float %1742, float* %1662, align 4, !tbaa !48, !alias.scope !121, !noalias !122
  store float %1744, float* %1663, align 4, !tbaa !48, !alias.scope !115, !noalias !118
  %1745 = call float @dx.op.binary.f32(i32 36, float %1731, float %1732)  ; FMin(a,b)
  %1746 = call float @dx.op.binary.f32(i32 36, float %1730, float %1745)  ; FMin(a,b)
  %1747 = call float @dx.op.binary.f32(i32 35, float %1730, float %1731)  ; FMax(a,b)
  %1748 = call float @dx.op.binary.f32(i32 36, float %1747, float %1732)  ; FMin(a,b)
  %1749 = call float @dx.op.binary.f32(i32 36, float %1730, float %1731)  ; FMin(a,b)
  %1750 = call float @dx.op.binary.f32(i32 35, float %1749, float %1748)  ; FMax(a,b)
  %1751 = call float @dx.op.binary.f32(i32 35, float %1731, float %1732)  ; FMax(a,b)
  %1752 = call float @dx.op.binary.f32(i32 35, float %1730, float %1751)  ; FMax(a,b)
  store float %1746, float* %1664, align 4, !tbaa !48, !alias.scope !133, !noalias !134
  store float %1750, float* %1665, align 4, !tbaa !48, !alias.scope !131, !noalias !132
  store float %1752, float* %1666, align 4, !tbaa !48, !alias.scope !125, !noalias !128
  %1753 = sub nsw i32 3, %1736
  %1754 = icmp sgt i32 %1753, 2
  br i1 %1754, label %1755, label %1793, !dx.controlflow.hints !85

; <label>:1755                                    ; preds = %1729
  %1756 = icmp eq i32 %1524, 0
  %1757 = fsub fast float %1574, %1658
  %1758 = select i1 %1756, float %1757, float %1658
  %1759 = extractvalue %dx.types.CBufRet.f32 %1514, 0
  %1760 = extractvalue %dx.types.CBufRet.f32 %1514, 1
  %1761 = extractvalue %dx.types.CBufRet.f32 %1514, 2
  %1762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1763 = extractvalue %dx.types.CBufRet.f32 %1762, 0
  %1764 = extractvalue %dx.types.CBufRet.f32 %1762, 1
  %1765 = extractvalue %dx.types.CBufRet.f32 %1762, 2
  %1766 = extractvalue %dx.types.CBufRet.f32 %1762, 3
  %1767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1768 = extractvalue %dx.types.CBufRet.f32 %1767, 3
  %1769 = call float @dx.op.binary.f32(i32 36, float %1659, float %1768)  ; FMin(a,b)
  %1770 = fmul fast float %1766, %1758
  %1771 = call float @dx.op.unary.f32(i32 7, float %1770)  ; Saturate(value)
  %1772 = fsub fast float %1763, %1759
  %1773 = fsub fast float %1764, %1760
  %1774 = fsub fast float %1765, %1761
  %1775 = fmul fast float %1771, %1772
  %1776 = fmul fast float %1771, %1773
  %1777 = fmul fast float %1771, %1774
  %1778 = fadd fast float %1775, %1759
  %1779 = fadd fast float %1776, %1760
  %1780 = fadd fast float %1777, %1761
  br i1 %1409, label %1875, label %1781, !dx.controlflow.hints !45

; <label>:1781                                    ; preds = %1755
  %1782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1783 = extractvalue %dx.types.CBufRet.f32 %1782, 0
  %1784 = extractvalue %dx.types.CBufRet.f32 %1782, 1
  %1785 = fadd fast float %1784, %1783
  %1786 = call float @dx.op.unary.f32(i32 7, float %1785)  ; Saturate(value)
  %1787 = extractvalue %dx.types.CBufRet.f32 %1782, 2
  %1788 = extractvalue %dx.types.CBufRet.f32 %1782, 3
  %1789 = fadd fast float %1788, %1787
  %1790 = call float @dx.op.unary.f32(i32 7, float %1789)  ; Saturate(value)
  %1791 = fmul fast float %1786, %1769
  %1792 = fmul fast float %1791, %1790
  br label %1875

; <label>:1793                                    ; preds = %1729
  %1794 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %1753
  %1795 = load float, float* %1794, align 4, !tbaa !48, !noalias !105
  %1796 = fcmp fast olt float %1795, %1660
  %1797 = icmp sgt i32 %1736, 0
  %1798 = and i1 %1797, %1796
  br i1 %1798, label %1799, label %1836

; <label>:1799                                    ; preds = %1793
  br label %1800

; <label>:1800                                    ; preds = %1829, %1799
  %1801 = phi float [ %1830, %1829 ], [ %1658, %1799 ]
  %1802 = phi float [ %1831, %1829 ], [ %1659, %1799 ]
  %1803 = phi float [ %1811, %1829 ], [ %1795, %1799 ]
  %1804 = phi i32 [ %1808, %1829 ], [ %1753, %1799 ]
  %1805 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %1804
  %1806 = load float, float* %1805, align 4, !tbaa !48, !noalias !105
  %1807 = icmp slt i32 %1804, 2
  %1808 = add nsw i32 %1804, 1
  %1809 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %1808
  %1810 = load float, float* %1809, align 4, !tbaa !48, !noalias !105
  %1811 = select i1 %1807, float %1810, float %1574
  %1812 = call float @dx.op.binary.f32(i32 36, float %1811, float %1806)  ; FMin(a,b)
  %1813 = call float @dx.op.binary.f32(i32 36, float %1660, float %1812)  ; FMin(a,b)
  %1814 = icmp eq i32 %1524, 0
  %1815 = fadd fast float %1813, %1803
  %1816 = fmul fast float %1815, %1486
  %1817 = fadd fast float %1816, %1518
  br i1 %1814, label %1823, label %1818, !dx.controlflow.hints !86

; <label>:1818                                    ; preds = %1800
  %1819 = fsub fast float %1813, %1803
  %1820 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1819)  ; FMax(a,b)
  %1821 = fmul fast float %1820, %1817
  %1822 = fadd fast float %1821, %1802
  br label %1829

; <label>:1823                                    ; preds = %1800
  %1824 = fsub fast float %1803, %1813
  %1825 = call float @dx.op.unary.f32(i32 6, float %1824)  ; FAbs(value)
  %1826 = fadd fast float %1825, %1801
  %1827 = fmul fast float %1825, %1817
  %1828 = fsub fast float %1802, %1827
  br label %1829

; <label>:1829                                    ; preds = %1823, %1818
  %1830 = phi float [ %1820, %1818 ], [ %1826, %1823 ]
  %1831 = phi float [ %1822, %1818 ], [ %1828, %1823 ]
  %1832 = fcmp fast olt float %1811, %1660
  %1833 = icmp slt i32 %1808, 3
  %1834 = and i1 %1833, %1832
  br i1 %1834, label %1800, label %1835

; <label>:1835                                    ; preds = %1829
  br label %1836

; <label>:1836                                    ; preds = %1835, %1793
  %1837 = phi float [ %1658, %1793 ], [ %1830, %1835 ]
  %1838 = phi float [ %1659, %1793 ], [ %1831, %1835 ]
  %1839 = fsub fast float %1574, %1837
  %1840 = select i1 %1576, float %1837, float %1839
  %1841 = extractvalue %dx.types.CBufRet.f32 %1514, 0
  %1842 = extractvalue %dx.types.CBufRet.f32 %1514, 1
  %1843 = extractvalue %dx.types.CBufRet.f32 %1514, 2
  %1844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1845 = extractvalue %dx.types.CBufRet.f32 %1844, 0
  %1846 = extractvalue %dx.types.CBufRet.f32 %1844, 1
  %1847 = extractvalue %dx.types.CBufRet.f32 %1844, 2
  %1848 = extractvalue %dx.types.CBufRet.f32 %1844, 3
  %1849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1850 = extractvalue %dx.types.CBufRet.f32 %1849, 3
  %1851 = call float @dx.op.binary.f32(i32 36, float %1838, float %1850)  ; FMin(a,b)
  %1852 = fmul fast float %1848, %1840
  %1853 = call float @dx.op.unary.f32(i32 7, float %1852)  ; Saturate(value)
  %1854 = fsub fast float %1845, %1841
  %1855 = fsub fast float %1846, %1842
  %1856 = fsub fast float %1847, %1843
  %1857 = fmul fast float %1853, %1854
  %1858 = fmul fast float %1853, %1855
  %1859 = fmul fast float %1853, %1856
  %1860 = fadd fast float %1857, %1841
  %1861 = fadd fast float %1858, %1842
  %1862 = fadd fast float %1859, %1843
  br i1 %1409, label %1875, label %1863, !dx.controlflow.hints !45

; <label>:1863                                    ; preds = %1836
  %1864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1865 = extractvalue %dx.types.CBufRet.f32 %1864, 0
  %1866 = extractvalue %dx.types.CBufRet.f32 %1864, 1
  %1867 = fadd fast float %1866, %1865
  %1868 = call float @dx.op.unary.f32(i32 7, float %1867)  ; Saturate(value)
  %1869 = extractvalue %dx.types.CBufRet.f32 %1864, 2
  %1870 = extractvalue %dx.types.CBufRet.f32 %1864, 3
  %1871 = fadd fast float %1870, %1869
  %1872 = call float @dx.op.unary.f32(i32 7, float %1871)  ; Saturate(value)
  %1873 = fmul fast float %1868, %1851
  %1874 = fmul fast float %1873, %1872
  br label %1875

; <label>:1875                                    ; preds = %1863, %1836, %1781, %1755, %1622, %1590, %1572, %1570
  %1876 = phi float [ 0.000000e+00, %1570 ], [ 0.000000e+00, %1572 ], [ %1599, %1622 ], [ %1599, %1590 ], [ %1758, %1781 ], [ %1758, %1755 ], [ %1840, %1863 ], [ %1840, %1836 ]
  %1877 = phi float [ 0.000000e+00, %1570 ], [ 0.000000e+00, %1572 ], [ %1633, %1622 ], [ %1610, %1590 ], [ %1792, %1781 ], [ %1769, %1755 ], [ %1874, %1863 ], [ %1851, %1836 ]
  %1878 = phi float [ 0.000000e+00, %1570 ], [ 0.000000e+00, %1572 ], [ %1619, %1622 ], [ %1619, %1590 ], [ %1778, %1781 ], [ %1778, %1755 ], [ %1860, %1863 ], [ %1860, %1836 ]
  %1879 = phi float [ 0.000000e+00, %1570 ], [ 0.000000e+00, %1572 ], [ %1620, %1622 ], [ %1620, %1590 ], [ %1779, %1781 ], [ %1779, %1755 ], [ %1861, %1863 ], [ %1861, %1836 ]
  %1880 = phi float [ 0.000000e+00, %1570 ], [ 0.000000e+00, %1572 ], [ %1621, %1622 ], [ %1621, %1590 ], [ %1780, %1781 ], [ %1780, %1755 ], [ %1862, %1863 ], [ %1862, %1836 ]
  %1881 = fmul fast float %1510, %1877
  %1882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1883 = extractvalue %dx.types.CBufRet.f32 %1882, 2
  %1884 = fsub fast float %1520, %1883
  %1885 = fcmp fast olt float %1881, -2.000000e+01
  %1886 = call float @dx.op.unary.f32(i32 21, float %1881)  ; Exp(value)
  %1887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1888 = extractvalue %dx.types.CBufRet.f32 %1887, 2
  %1889 = extractvalue %dx.types.CBufRet.f32 %1887, 3
  %1890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1891 = extractvalue %dx.types.CBufRet.f32 %1890, 2
  %1892 = fmul fast float %1889, %1884
  %1893 = call float @dx.op.unary.f32(i32 7, float %1892)  ; Saturate(value)
  %1894 = fsub fast float 1.000000e+00, %1893
  %1895 = fmul fast float %1486, 5.000000e-01
  %1896 = fadd fast float %1895, 5.000000e-01
  %1897 = call float @dx.op.unary.f32(i32 7, float %1896)  ; Saturate(value)
  %1898 = fsub fast float 1.000000e+00, %1897
  %1899 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1894)  ; FMax(a,b)
  %1900 = fdiv fast float %1898, %1899
  %1901 = fsub fast float %1884, %1449
  %1902 = call float @dx.op.unary.f32(i32 6, float %1901)  ; FAbs(value)
  %1903 = fmul fast float %1902, %1888
  %1904 = call float @dx.op.unary.f32(i32 7, float %1900)  ; Saturate(value)
  %1905 = fsub fast float 1.000000e+00, %1903
  %1906 = fmul fast float %1905, %1904
  %1907 = fadd fast float %1906, %1903
  %1908 = fmul fast float %1891, %1884
  %1909 = call float @dx.op.unary.f32(i32 7, float %1908)  ; Saturate(value)
  %1910 = fsub fast float 1.000000e+00, %1907
  %1911 = fmul fast float %1910, %1909
  %1912 = fadd fast float %1911, %1907
  %1913 = call float @dx.op.unary.f32(i32 7, float %1912)  ; Saturate(value)
  %1914 = fadd fast float %1886, -1.000000e+00
  %1915 = select i1 %1885, float -1.000000e+00, float %1914
  %1916 = fmul fast float %1913, %1915
  %1917 = fadd fast float %1916, 1.000000e+00
  %1918 = fsub fast float -0.000000e+00, %1916
  %1919 = fmul fast float %1878, %1918
  %1920 = fmul fast float %1879, %1918
  %1921 = fmul fast float %1880, %1918
  br label %1922

; <label>:1922                                    ; preds = %1875, %1500
  %1923 = phi float [ %1876, %1875 ], [ 0.000000e+00, %1500 ]
  %1924 = phi float [ %1917, %1875 ], [ 1.000000e+00, %1500 ]
  %1925 = phi float [ %1919, %1875 ], [ 0.000000e+00, %1500 ]
  %1926 = phi float [ %1920, %1875 ], [ 0.000000e+00, %1500 ]
  %1927 = phi float [ %1921, %1875 ], [ 0.000000e+00, %1500 ]
  %1928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1929 = extractvalue %dx.types.CBufRet.f32 %1928, 1
  %1930 = fsub fast float 1.000000e+00, %1924
  %1931 = fmul fast float %1930, %1501
  %1932 = fmul fast float %1931, %1929
  %1933 = fsub fast float %1501, %1932
  br i1 %1479, label %1934, label %1966, !dx.controlflow.hints !87

; <label>:1934                                    ; preds = %1922
  %1935 = fmul fast float %1504, %1476
  %1936 = fadd fast float %1935, %1477
  %1937 = call float @dx.op.unary.f32(i32 7, float %1936)  ; Saturate(value)
  %1938 = fmul fast float %1458, %1933
  %1939 = fsub fast float -0.000000e+00, %1938
  %1940 = fmul fast float %1459, %1933
  %1941 = fsub fast float -0.000000e+00, %1940
  %1942 = call float @dx.op.unary.f32(i32 21, float %1939)  ; Exp(value)
  %1943 = call float @dx.op.unary.f32(i32 21, float %1941)  ; Exp(value)
  %1944 = call float @dx.op.binary.f32(i32 35, float %1466, float %1942)  ; FMax(a,b)
  %1945 = call float @dx.op.binary.f32(i32 35, float %1466, float %1943)  ; FMax(a,b)
  %1946 = fsub fast float %1945, %1944
  %1947 = fmul fast float %1946, %1937
  %1948 = fadd fast float %1947, %1944
  %1949 = call float @dx.op.unary.f32(i32 7, float %1948)  ; Saturate(value)
  %1950 = fmul fast float %1502, %1480
  %1951 = fsub fast float 1.000000e+00, %1950
  %1952 = select i1 %1409, float %1951, float %1949
  %1953 = fsub fast float %1463, %1468
  %1954 = fsub fast float %1464, %1469
  %1955 = fsub fast float %1465, %1470
  %1956 = fmul fast float %1937, %1953
  %1957 = fmul fast float %1937, %1954
  %1958 = fmul fast float %1937, %1955
  %1959 = fadd fast float %1956, %1468
  %1960 = fadd fast float %1957, %1469
  %1961 = fadd fast float %1958, %1470
  %1962 = fsub fast float 1.000000e+00, %1952
  %1963 = fmul fast float %1962, %1959
  %1964 = fmul fast float %1962, %1960
  %1965 = fmul fast float %1962, %1961
  br label %2037

; <label>:1966                                    ; preds = %1922
  %1967 = fmul fast float %1933, %1475
  %1968 = call float @dx.op.unary.f32(i32 7, float %1967)  ; Saturate(value)
  %1969 = fsub fast float 2.000000e+00, %1968
  %1970 = fmul fast float %1968, 9.921875e-01
  %1971 = fmul fast float %1970, %1969
  %1972 = fadd fast float %1971, 3.906250e-03
  %1973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %1972, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1974 = extractvalue %dx.types.ResRet.f32 %1973, 0
  %1975 = fsub fast float %1968, %1974
  %1976 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1975)  ; FMax(a,b)
  %1977 = fmul fast float %1503, %1461
  %1978 = call float @dx.op.unary.f32(i32 6, float %1977)  ; FAbs(value)
  %1979 = fcmp fast ogt float %1978, 0x3EB0C6F7A0000000
  br i1 %1979, label %1980, label %1986, !dx.controlflow.hints !88

; <label>:1980                                    ; preds = %1966
  %1981 = fmul fast float %1977, 0xBFF7154760000000
  %1982 = call float @dx.op.unary.f32(i32 21, float %1981)  ; Exp(value)
  %1983 = fsub fast float 1.000000e+00, %1982
  %1984 = fdiv fast float %1983, %1977
  %1985 = fmul fast float %1984, %1471
  br label %1986

; <label>:1986                                    ; preds = %1980, %1966
  %1987 = phi float [ %1985, %1980 ], [ %1471, %1966 ]
  %1988 = fadd fast float %1987, %1473
  %1989 = fmul fast float %1988, %1976
  %1990 = fmul fast float %1458, %1989
  %1991 = fsub fast float -0.000000e+00, %1990
  %1992 = fmul fast float %1459, %1989
  %1993 = fsub fast float -0.000000e+00, %1992
  %1994 = fmul fast float %1460, %1989
  %1995 = fsub fast float -0.000000e+00, %1994
  %1996 = call float @dx.op.unary.f32(i32 21, float %1991)  ; Exp(value)
  %1997 = call float @dx.op.unary.f32(i32 21, float %1993)  ; Exp(value)
  %1998 = call float @dx.op.unary.f32(i32 21, float %1995)  ; Exp(value)
  br i1 %1409, label %1999, label %2007, !dx.controlflow.hints !89

; <label>:1999                                    ; preds = %1986
  %2000 = fmul fast float %1996, %1502
  %2001 = fmul fast float %1997, %1502
  %2002 = fmul fast float %1998, %1502
  %2003 = fsub fast float 1.000000e+00, %1502
  %2004 = fadd fast float %2000, %2003
  %2005 = fadd fast float %2001, %2003
  %2006 = fadd fast float %2002, %2003
  br label %2007

; <label>:2007                                    ; preds = %1999, %1986
  %2008 = phi float [ %2004, %1999 ], [ %1996, %1986 ]
  %2009 = phi float [ %2005, %1999 ], [ %1997, %1986 ]
  %2010 = phi float [ %2006, %1999 ], [ %1998, %1986 ]
  %2011 = fmul fast float %1504, %1504
  %2012 = fadd fast float %2011, 1.000000e+00
  %2013 = fmul fast float %2012, 0x3FAE8EC8A0000000
  %2014 = fmul fast float %2013, %1468
  %2015 = fmul fast float %2013, %1469
  %2016 = fmul fast float %2013, %1470
  %2017 = fmul fast float %1504, %1466
  %2018 = fsub fast float 1.000000e+00, %2017
  %2019 = fmul fast float %1466, %1466
  %2020 = fsub fast float 1.000000e+00, %2019
  %2021 = fmul fast float %2020, 0x3FB45F3060000000
  %2022 = fmul fast float %2018, %2018
  %2023 = fdiv fast float 1.000000e+00, %2022
  %2024 = fmul fast float %2021, %2023
  %2025 = fmul fast float %2024, %1463
  %2026 = fmul fast float %2024, %1464
  %2027 = fmul fast float %2024, %1465
  %2028 = fadd fast float %2025, %2014
  %2029 = fadd fast float %2026, %2015
  %2030 = fadd fast float %2027, %2016
  %2031 = fsub fast float 1.000000e+00, %2008
  %2032 = fsub fast float 1.000000e+00, %2009
  %2033 = fsub fast float 1.000000e+00, %2010
  %2034 = fmul fast float %2028, %2031
  %2035 = fmul fast float %2029, %2032
  %2036 = fmul fast float %2030, %2033
  br label %2037

; <label>:2037                                    ; preds = %2007, %1934
  %2038 = phi float [ %1963, %1934 ], [ %2034, %2007 ]
  %2039 = phi float [ %1964, %1934 ], [ %2035, %2007 ]
  %2040 = phi float [ %1965, %1934 ], [ %2036, %2007 ]
  %2041 = phi float [ %1952, %1934 ], [ %2008, %2007 ]
  %2042 = phi float [ %1952, %1934 ], [ %2009, %2007 ]
  %2043 = phi float [ %1952, %1934 ], [ %2010, %2007 ]
  br i1 %1512, label %2044, label %2242, !dx.controlflow.hints !90

; <label>:2044                                    ; preds = %2037
  %2045 = extractvalue %dx.types.CBufRet.f32 %1928, 0
  %2046 = fmul fast float %2045, %1930
  %2047 = fsub fast float %1925, %2038
  %2048 = fsub fast float %1926, %2039
  %2049 = fsub fast float %1927, %2040
  %2050 = fmul fast float %2046, %2047
  %2051 = fmul fast float %2046, %2048
  %2052 = fmul fast float %2046, %2049
  %2053 = fadd fast float %2050, %2038
  %2054 = fadd fast float %2051, %2039
  %2055 = fadd fast float %2052, %2040
  %2056 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2041)  ; FMax(a,b)
  %2057 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2042)  ; FMax(a,b)
  %2058 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2043)  ; FMax(a,b)
  %2059 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1924)  ; FMax(a,b)
  %2060 = call float @dx.op.binary.f32(i32 35, float %1923, float %1933)  ; FMax(a,b)
  %2061 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2060)  ; FMax(a,b)
  %2062 = fdiv fast float %1923, %2061
  %2063 = call float @dx.op.unary.f32(i32 7, float %2062)  ; Saturate(value)
  %2064 = fdiv fast float %1933, %2061
  %2065 = call float @dx.op.unary.f32(i32 7, float %2064)  ; Saturate(value)
  %2066 = fcmp fast une float %2059, 1.000000e+00
  br i1 %2066, label %2067, label %2080, !dx.controlflow.hints !91

; <label>:2067                                    ; preds = %2044
  %2068 = call float @dx.op.unary.f32(i32 23, float %2059)  ; Log(value)
  %2069 = fmul fast float %2068, 0x3FE62E4300000000
  %2070 = fmul fast float %1925, %2069
  %2071 = fsub fast float -0.000000e+00, %2070
  %2072 = fmul fast float %1926, %2069
  %2073 = fsub fast float -0.000000e+00, %2072
  %2074 = fmul fast float %1927, %2069
  %2075 = fsub fast float -0.000000e+00, %2074
  %2076 = fsub fast float 1.000000e+00, %2059
  %2077 = fdiv fast float %2071, %2076
  %2078 = fdiv fast float %2073, %2076
  %2079 = fdiv fast float %2075, %2076
  br label %2080

; <label>:2080                                    ; preds = %2067, %2044
  %2081 = phi float [ %2077, %2067 ], [ %1925, %2044 ]
  %2082 = phi float [ %2078, %2067 ], [ %1926, %2044 ]
  %2083 = phi float [ %2079, %2067 ], [ %1927, %2044 ]
  %2084 = phi float [ %2069, %2067 ], [ 0.000000e+00, %2044 ]
  %2085 = fcmp fast une float %2056, 1.000000e+00
  br i1 %2085, label %2086, label %2093, !dx.controlflow.hints !92

; <label>:2086                                    ; preds = %2080
  %2087 = call float @dx.op.unary.f32(i32 23, float %2056)  ; Log(value)
  %2088 = fmul fast float %2087, 0x3FE62E4300000000
  %2089 = fmul fast float %2053, %2088
  %2090 = fsub fast float -0.000000e+00, %2089
  %2091 = fsub fast float 1.000000e+00, %2056
  %2092 = fdiv fast float %2090, %2091
  br label %2093

; <label>:2093                                    ; preds = %2086, %2080
  %2094 = phi float [ %2092, %2086 ], [ %2053, %2080 ]
  %2095 = phi float [ %2088, %2086 ], [ 0.000000e+00, %2080 ]
  %2096 = fcmp fast une float %2057, 1.000000e+00
  br i1 %2096, label %2097, label %2104, !dx.controlflow.hints !92

; <label>:2097                                    ; preds = %2093
  %2098 = call float @dx.op.unary.f32(i32 23, float %2057)  ; Log(value)
  %2099 = fmul fast float %2098, 0x3FE62E4300000000
  %2100 = fmul fast float %2054, %2099
  %2101 = fsub fast float -0.000000e+00, %2100
  %2102 = fsub fast float 1.000000e+00, %2057
  %2103 = fdiv fast float %2101, %2102
  br label %2104

; <label>:2104                                    ; preds = %2097, %2093
  %2105 = phi float [ %2103, %2097 ], [ %2054, %2093 ]
  %2106 = phi float [ %2099, %2097 ], [ 0.000000e+00, %2093 ]
  %2107 = fcmp fast une float %2058, 1.000000e+00
  br i1 %2107, label %2108, label %2115, !dx.controlflow.hints !92

; <label>:2108                                    ; preds = %2104
  %2109 = call float @dx.op.unary.f32(i32 23, float %2058)  ; Log(value)
  %2110 = fmul fast float %2109, 0x3FE62E4300000000
  %2111 = fmul fast float %2055, %2110
  %2112 = fsub fast float -0.000000e+00, %2111
  %2113 = fsub fast float 1.000000e+00, %2058
  %2114 = fdiv fast float %2112, %2113
  br label %2115

; <label>:2115                                    ; preds = %2108, %2104
  %2116 = phi float [ %2114, %2108 ], [ %2055, %2104 ]
  %2117 = phi float [ %2110, %2108 ], [ 0.000000e+00, %2104 ]
  %2118 = fmul fast float %2081, %2065
  %2119 = fmul fast float %2082, %2065
  %2120 = fmul fast float %2083, %2065
  %2121 = fmul fast float %2084, %2065
  %2122 = fmul fast float %2094, %2063
  %2123 = fmul fast float %2105, %2063
  %2124 = fmul fast float %2116, %2063
  %2125 = fmul fast float %2095, %2063
  %2126 = fmul fast float %2106, %2063
  %2127 = fmul fast float %2117, %2063
  %2128 = fadd fast float %2122, %2118
  %2129 = fadd fast float %2123, %2119
  %2130 = fadd fast float %2124, %2120
  %2131 = fadd fast float %2125, %2121
  %2132 = fadd fast float %2126, %2121
  %2133 = fadd fast float %2127, %2121
  %2134 = fcmp fast une float %2131, 0.000000e+00
  br i1 %2134, label %2135, label %2142, !dx.controlflow.hints !93

; <label>:2135                                    ; preds = %2115
  %2136 = fmul fast float %2131, 0x3FF7154760000000
  %2137 = call float @dx.op.unary.f32(i32 21, float %2136)  ; Exp(value)
  %2138 = fsub fast float 1.000000e+00, %2137
  %2139 = fmul fast float %2128, %2138
  %2140 = fsub fast float -0.000000e+00, %2139
  %2141 = fdiv fast float %2140, %2131
  br label %2142

; <label>:2142                                    ; preds = %2135, %2115
  %2143 = phi float [ %2137, %2135 ], [ 1.000000e+00, %2115 ]
  %2144 = phi float [ %2141, %2135 ], [ %2128, %2115 ]
  %2145 = fcmp fast une float %2132, 0.000000e+00
  br i1 %2145, label %2146, label %2153, !dx.controlflow.hints !93

; <label>:2146                                    ; preds = %2142
  %2147 = fmul fast float %2132, 0x3FF7154760000000
  %2148 = call float @dx.op.unary.f32(i32 21, float %2147)  ; Exp(value)
  %2149 = fsub fast float 1.000000e+00, %2148
  %2150 = fmul fast float %2129, %2149
  %2151 = fsub fast float -0.000000e+00, %2150
  %2152 = fdiv fast float %2151, %2132
  br label %2153

; <label>:2153                                    ; preds = %2146, %2142
  %2154 = phi float [ %2148, %2146 ], [ 1.000000e+00, %2142 ]
  %2155 = phi float [ %2152, %2146 ], [ %2129, %2142 ]
  %2156 = fcmp fast une float %2133, 0.000000e+00
  br i1 %2156, label %2157, label %2164, !dx.controlflow.hints !93

; <label>:2157                                    ; preds = %2153
  %2158 = fmul fast float %2133, 0x3FF7154760000000
  %2159 = call float @dx.op.unary.f32(i32 21, float %2158)  ; Exp(value)
  %2160 = fsub fast float 1.000000e+00, %2159
  %2161 = fmul fast float %2130, %2160
  %2162 = fsub fast float -0.000000e+00, %2161
  %2163 = fdiv fast float %2162, %2133
  br label %2164

; <label>:2164                                    ; preds = %2157, %2153
  %2165 = phi float [ %2159, %2157 ], [ 1.000000e+00, %2153 ]
  %2166 = phi float [ %2163, %2157 ], [ %2130, %2153 ]
  %2167 = fcmp fast ogt float %2063, %2065
  br i1 %2167, label %2168, label %2188, !dx.controlflow.hints !94

; <label>:2168                                    ; preds = %2164
  %2169 = fsub fast float 1.000000e+00, %2065
  %2170 = fmul fast float %2081, %2169
  %2171 = fmul fast float %2082, %2169
  %2172 = fmul fast float %2083, %2169
  %2173 = fmul fast float %2084, %2169
  %2174 = fcmp fast une float %2173, 0.000000e+00
  br i1 %2174, label %2175, label %2226, !dx.controlflow.hints !95

; <label>:2175                                    ; preds = %2168
  %2176 = fmul fast float %2173, 0x3FF7154760000000
  %2177 = call float @dx.op.unary.f32(i32 21, float %2176)  ; Exp(value)
  %2178 = fsub fast float 1.000000e+00, %2177
  %2179 = fmul fast float %2170, %2178
  %2180 = fsub fast float -0.000000e+00, %2179
  %2181 = fmul fast float %2171, %2178
  %2182 = fsub fast float -0.000000e+00, %2181
  %2183 = fmul fast float %2172, %2178
  %2184 = fsub fast float -0.000000e+00, %2183
  %2185 = fdiv fast float %2180, %2173
  %2186 = fdiv fast float %2182, %2173
  %2187 = fdiv fast float %2184, %2173
  br label %2226

; <label>:2188                                    ; preds = %2164
  %2189 = fsub fast float 1.000000e+00, %2063
  %2190 = fmul fast float %2094, %2189
  %2191 = fmul fast float %2105, %2189
  %2192 = fmul fast float %2116, %2189
  %2193 = fmul fast float %2095, %2189
  %2194 = fmul fast float %2106, %2189
  %2195 = fmul fast float %2117, %2189
  %2196 = fcmp fast une float %2193, 0.000000e+00
  br i1 %2196, label %2197, label %2204, !dx.controlflow.hints !93

; <label>:2197                                    ; preds = %2188
  %2198 = fmul fast float %2193, 0x3FF7154760000000
  %2199 = call float @dx.op.unary.f32(i32 21, float %2198)  ; Exp(value)
  %2200 = fsub fast float 1.000000e+00, %2199
  %2201 = fmul fast float %2190, %2200
  %2202 = fsub fast float -0.000000e+00, %2201
  %2203 = fdiv fast float %2202, %2193
  br label %2204

; <label>:2204                                    ; preds = %2197, %2188
  %2205 = phi float [ %2203, %2197 ], [ %2190, %2188 ]
  %2206 = phi float [ %2199, %2197 ], [ 1.000000e+00, %2188 ]
  %2207 = fcmp fast une float %2194, 0.000000e+00
  br i1 %2207, label %2208, label %2215, !dx.controlflow.hints !93

; <label>:2208                                    ; preds = %2204
  %2209 = fmul fast float %2194, 0x3FF7154760000000
  %2210 = call float @dx.op.unary.f32(i32 21, float %2209)  ; Exp(value)
  %2211 = fsub fast float 1.000000e+00, %2210
  %2212 = fmul fast float %2191, %2211
  %2213 = fsub fast float -0.000000e+00, %2212
  %2214 = fdiv fast float %2213, %2194
  br label %2215

; <label>:2215                                    ; preds = %2208, %2204
  %2216 = phi float [ %2214, %2208 ], [ %2191, %2204 ]
  %2217 = phi float [ %2210, %2208 ], [ 1.000000e+00, %2204 ]
  %2218 = fcmp fast une float %2195, 0.000000e+00
  br i1 %2218, label %2219, label %2226, !dx.controlflow.hints !93

; <label>:2219                                    ; preds = %2215
  %2220 = fmul fast float %2195, 0x3FF7154760000000
  %2221 = call float @dx.op.unary.f32(i32 21, float %2220)  ; Exp(value)
  %2222 = fsub fast float 1.000000e+00, %2221
  %2223 = fmul fast float %2192, %2222
  %2224 = fsub fast float -0.000000e+00, %2223
  %2225 = fdiv fast float %2224, %2195
  br label %2226

; <label>:2226                                    ; preds = %2219, %2215, %2175, %2168
  %2227 = phi float [ %2225, %2219 ], [ %2187, %2175 ], [ %2172, %2168 ], [ %2192, %2215 ]
  %2228 = phi float [ %2216, %2219 ], [ %2186, %2175 ], [ %2171, %2168 ], [ %2216, %2215 ]
  %2229 = phi float [ %2205, %2219 ], [ %2185, %2175 ], [ %2170, %2168 ], [ %2205, %2215 ]
  %2230 = phi float [ %2221, %2219 ], [ %2177, %2175 ], [ 1.000000e+00, %2168 ], [ 1.000000e+00, %2215 ]
  %2231 = phi float [ %2217, %2219 ], [ %2177, %2175 ], [ 1.000000e+00, %2168 ], [ %2217, %2215 ]
  %2232 = phi float [ %2206, %2219 ], [ %2177, %2175 ], [ 1.000000e+00, %2168 ], [ %2206, %2215 ]
  %2233 = fmul fast float %2232, %2144
  %2234 = fmul fast float %2231, %2155
  %2235 = fmul fast float %2230, %2166
  %2236 = fadd fast float %2233, %2229
  %2237 = fadd fast float %2234, %2228
  %2238 = fadd fast float %2235, %2227
  %2239 = fmul fast float %2232, %2143
  %2240 = fmul fast float %2231, %2154
  %2241 = fmul fast float %2230, %2165
  br label %2242

; <label>:2242                                    ; preds = %2226, %2037
  %2243 = phi float [ %2241, %2226 ], [ %2043, %2037 ]
  %2244 = phi float [ %2240, %2226 ], [ %2042, %2037 ]
  %2245 = phi float [ %2239, %2226 ], [ %2041, %2037 ]
  %2246 = phi float [ %2238, %2226 ], [ %2040, %2037 ]
  %2247 = phi float [ %2237, %2226 ], [ %2039, %2037 ]
  %2248 = phi float [ %2236, %2226 ], [ %2038, %2037 ]
  %2249 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %20, float %1380, float %1381, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2250 = extractvalue %dx.types.ResRet.f32 %2249, 0
  %2251 = extractvalue %dx.types.ResRet.f32 %2249, 1
  %2252 = extractvalue %dx.types.ResRet.f32 %2249, 2
  %2253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2254 = extractvalue %dx.types.CBufRet.f32 %2253, 1
  %2255 = fmul fast float %2254, %2250
  %2256 = fmul fast float %2254, %2251
  %2257 = fmul fast float %2254, %2252
  %2258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %20, float %1380, float %1381, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2259 = extractvalue %dx.types.ResRet.f32 %2258, 0
  %2260 = fmul fast float %2259, %2245
  %2261 = fmul fast float %2259, %2244
  %2262 = fmul fast float %2259, %2243
  %2263 = fmul fast float %2259, %2248
  %2264 = fmul fast float %2259, %2247
  %2265 = fmul fast float %2259, %2246
  %2266 = fadd fast float %2263, %2255
  %2267 = fadd fast float %2264, %2256
  %2268 = fadd fast float %2265, %2257
  br label %2269

; <label>:2269                                    ; preds = %2242, %1373
  %2270 = phi float [ 0.000000e+00, %1373 ], [ %2266, %2242 ]
  %2271 = phi float [ 0.000000e+00, %1373 ], [ %2267, %2242 ]
  %2272 = phi float [ 0.000000e+00, %1373 ], [ %2268, %2242 ]
  %2273 = phi float [ 1.000000e+00, %1373 ], [ %2260, %2242 ]
  %2274 = phi float [ 1.000000e+00, %1373 ], [ %2261, %2242 ]
  %2275 = phi float [ 1.000000e+00, %1373 ], [ %2262, %2242 ]
  %2276 = phi float [ %1406, %1373 ], [ %1413, %2242 ]
  %2277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2278 = extractvalue %dx.types.CBufRet.f32 %2277, 2
  %2279 = extractvalue %dx.types.CBufRet.f32 %2277, 3
  %2280 = fmul fast float %2278, %1376
  %2281 = fmul fast float %2279, %1377
  %2282 = call float @dx.op.unary.f32(i32 7, float %2280)  ; Saturate(value)
  %2283 = call float @dx.op.unary.f32(i32 7, float %2281)  ; Saturate(value)
  %2284 = select i1 %1404, i32 2, i32 0
  %2285 = or i32 %2284, 1
  %2286 = uitofp i32 %2285 to float
  %2287 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %20, float %2282, float %2283, float %2286, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2288 = extractvalue %dx.types.ResRet.f32 %2287, 0
  %2289 = extractvalue %dx.types.ResRet.f32 %2287, 1
  %2290 = extractvalue %dx.types.ResRet.f32 %2287, 2
  %2291 = extractvalue %dx.types.ResRet.f32 %2287, 3
  %2292 = add nuw nsw i32 %2284, 2
  %2293 = uitofp i32 %2292 to float
  %2294 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %20, float %2282, float %2283, float %2293, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2295 = extractvalue %dx.types.ResRet.f32 %2294, 0
  %2296 = extractvalue %dx.types.ResRet.f32 %2294, 1
  %2297 = extractvalue %dx.types.ResRet.f32 %2294, 2
  %2298 = extractvalue %dx.types.ResRet.f32 %2294, 3
  %2299 = call float @dx.op.binary.f32(i32 35, float %2289, float %2290)  ; FMax(a,b)
  %2300 = call float @dx.op.binary.f32(i32 35, float %2288, float %2299)  ; FMax(a,b)
  %2301 = call float @dx.op.binary.f32(i32 35, float %2300, float %2291)  ; FMax(a,b)
  %2302 = call float @dx.op.binary.f32(i32 36, float %2296, float %2297)  ; FMin(a,b)
  %2303 = call float @dx.op.binary.f32(i32 36, float %2295, float %2302)  ; FMin(a,b)
  %2304 = call float @dx.op.binary.f32(i32 36, float %2303, float %2298)  ; FMin(a,b)
  %2305 = fmul fast float %2301, 2.550000e+02
  %2306 = fadd fast float %2305, 0x3F70101020000000
  %2307 = fptoui float %2306 to i32
  %2308 = fmul fast float %2304, 2.550000e+02
  %2309 = fadd fast float %2308, 0x3F70101020000000
  %2310 = fptoui float %2309 to i32
  %2311 = icmp ult i32 %2307, %2310
  br i1 %2311, label %2312, label %2480, !dx.controlflow.hints !96

; <label>:2312                                    ; preds = %2269
  %2313 = fadd fast float %2276, -4.000000e+00
  %2314 = call float @dx.op.binary.f32(i32 35, float %2313, float 0.000000e+00)  ; FMax(a,b)
  %2315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2316 = extractvalue %dx.types.CBufRet.f32 %2315, 0
  %2317 = fadd fast float %2316, %2314
  %2318 = extractvalue %dx.types.CBufRet.f32 %2315, 2
  %2319 = fmul fast float %2317, %2318
  %2320 = call float @dx.op.unary.f32(i32 23, float %2319)  ; Log(value)
  %2321 = extractvalue %dx.types.CBufRet.f32 %2315, 3
  %2322 = fmul fast float %2321, %2320
  %2323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2324 = extractvalue %dx.types.CBufRet.f32 %2323, 2
  %2325 = fmul fast float %2322, %2324
  %2326 = call float @dx.op.unary.f32(i32 7, float %2325)  ; Saturate(value)
  %2327 = select i1 %1409, float 1.000000e+00, float %2326
  %2328 = uitofp i32 %2307 to float
  %2329 = uitofp i32 %2310 to float
  %2330 = fadd fast float %2328, 5.000000e-01
  %2331 = fadd fast float %2329, 5.000000e-01
  %2332 = fmul fast float %2324, %2330
  %2333 = fmul fast float %2324, %2331
  %2334 = fadd fast float %2332, 0x3F0FFB4800000000
  %2335 = fadd fast float %2333, 0xBF0FFB4800000000
  %2336 = call float @dx.op.binary.f32(i32 35, float %2327, float %2334)  ; FMax(a,b)
  %2337 = call float @dx.op.binary.f32(i32 36, float %2336, float %2335)  ; FMin(a,b)
  %2338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2339 = extractvalue %dx.types.CBufRet.f32 %2338, 1
  %2340 = extractvalue %dx.types.CBufRet.f32 %2338, 2
  %2341 = extractvalue %dx.types.CBufRet.f32 %2338, 0
  %2342 = select i1 %1404, float %2341, float 0.000000e+00
  %2343 = fmul fast float %2339, %2337
  %2344 = fadd fast float %2342, %2343
  %2345 = fadd fast float %2342, %2340
  %2346 = fsub fast float %2339, %2340
  %2347 = fadd fast float %2346, %2342
  %2348 = call float @dx.op.binary.f32(i32 35, float %2344, float %2345)  ; FMax(a,b)
  %2349 = call float @dx.op.binary.f32(i32 36, float %2348, float %2347)  ; FMin(a,b)
  %2350 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %19, float %2282, float %2283, float %2349, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2351 = extractvalue %dx.types.ResRet.f32 %2350, 0
  %2352 = extractvalue %dx.types.ResRet.f32 %2350, 1
  %2353 = extractvalue %dx.types.ResRet.f32 %2350, 2
  %2354 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %2355 = extractvalue %dx.types.CBufRet.i32 %2354, 0
  %2356 = extractvalue %dx.types.CBufRet.i32 %2354, 1
  %2357 = uitofp i32 %2355 to float
  %2358 = uitofp i32 %2356 to float
  %2359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %2360 = extractvalue %dx.types.CBufRet.f32 %2359, 0
  %2361 = extractvalue %dx.types.CBufRet.f32 %2359, 1
  %2362 = fmul fast float %2357, %2282
  %2363 = fmul fast float %2358, %2283
  %2364 = fadd fast float %2362, -5.000000e-01
  %2365 = fadd fast float %2363, -5.000000e-01
  %2366 = call float @dx.op.unary.f32(i32 22, float %2364)  ; Frc(value)
  %2367 = call float @dx.op.unary.f32(i32 22, float %2365)  ; Frc(value)
  %2368 = fmul fast float %2366, %2366
  %2369 = fmul fast float %2368, %2366
  %2370 = fsub fast float 3.000000e+00, %2366
  %2371 = fmul fast float %2368, %2370
  %2372 = fmul fast float %2366, 3.000000e+00
  %2373 = fmul fast float %2369, 3.000000e+00
  %2374 = fmul fast float %2368, 6.000000e+00
  %2375 = fsub fast float %2373, %2374
  %2376 = fadd fast float %2375, 4.000000e+00
  %2377 = fmul fast float %2376, 0x3FC5555560000000
  %2378 = fmul fast float %2369, -3.000000e+00
  %2379 = fadd fast float %2368, %2366
  %2380 = fmul fast float %2379, 3.000000e+00
  %2381 = fadd fast float %2378, 1.000000e+00
  %2382 = fadd fast float %2381, %2380
  %2383 = fmul fast float %2369, 0x3FC5555560000000
  %2384 = fmul fast float %2367, %2367
  %2385 = fmul fast float %2384, %2367
  %2386 = fsub fast float 3.000000e+00, %2367
  %2387 = fmul fast float %2384, %2386
  %2388 = fmul fast float %2367, 3.000000e+00
  %2389 = fmul fast float %2385, 3.000000e+00
  %2390 = fmul fast float %2384, 6.000000e+00
  %2391 = fsub fast float %2389, %2390
  %2392 = fadd fast float %2391, 4.000000e+00
  %2393 = fmul fast float %2392, 0x3FC5555560000000
  %2394 = fmul fast float %2385, -3.000000e+00
  %2395 = fadd fast float %2384, %2367
  %2396 = fmul fast float %2395, 3.000000e+00
  %2397 = fadd fast float %2394, 1.000000e+00
  %2398 = fadd fast float %2397, %2396
  %2399 = fmul fast float %2385, 0x3FC5555560000000
  %2400 = fadd fast float %2366, 1.000000e+00
  %2401 = fsub fast float 1.000000e+00, %2372
  %2402 = fadd fast float %2401, %2371
  %2403 = fadd fast float %2402, %2376
  %2404 = fmul fast float %2403, 0x3FC5555560000000
  %2405 = fdiv fast float %2377, %2404
  %2406 = fsub fast float %2400, %2405
  %2407 = fsub fast float 1.000000e+00, %2366
  %2408 = fadd fast float %2382, %2369
  %2409 = fmul fast float %2408, 0x3FC5555560000000
  %2410 = fdiv fast float %2383, %2409
  %2411 = fadd fast float %2407, %2410
  %2412 = fadd fast float %2367, 1.000000e+00
  %2413 = fsub fast float 1.000000e+00, %2388
  %2414 = fadd fast float %2413, %2387
  %2415 = fadd fast float %2414, %2392
  %2416 = fmul fast float %2415, 0x3FC5555560000000
  %2417 = fdiv fast float %2393, %2416
  %2418 = fsub fast float %2412, %2417
  %2419 = fsub fast float 1.000000e+00, %2367
  %2420 = fadd fast float %2398, %2385
  %2421 = fmul fast float %2420, 0x3FC5555560000000
  %2422 = fdiv fast float %2399, %2421
  %2423 = fadd fast float %2422, %2419
  %2424 = fmul fast float %2406, %2360
  %2425 = fsub fast float %2282, %2424
  %2426 = fmul fast float %2411, %2360
  %2427 = fadd fast float %2426, %2282
  %2428 = fmul fast float %2423, %2361
  %2429 = fadd fast float %2428, %2283
  %2430 = fmul fast float %2418, %2361
  %2431 = fsub fast float %2283, %2430
  %2432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %2425, float %2431, float %2349, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2433 = extractvalue %dx.types.ResRet.f32 %2432, 0
  %2434 = extractvalue %dx.types.ResRet.f32 %2432, 1
  %2435 = extractvalue %dx.types.ResRet.f32 %2432, 2
  %2436 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %2427, float %2431, float %2349, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2437 = extractvalue %dx.types.ResRet.f32 %2436, 0
  %2438 = extractvalue %dx.types.ResRet.f32 %2436, 1
  %2439 = extractvalue %dx.types.ResRet.f32 %2436, 2
  %2440 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %2425, float %2429, float %2349, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2441 = extractvalue %dx.types.ResRet.f32 %2440, 0
  %2442 = extractvalue %dx.types.ResRet.f32 %2440, 1
  %2443 = extractvalue %dx.types.ResRet.f32 %2440, 2
  %2444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %2427, float %2429, float %2349, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2445 = extractvalue %dx.types.ResRet.f32 %2444, 0
  %2446 = extractvalue %dx.types.ResRet.f32 %2444, 1
  %2447 = extractvalue %dx.types.ResRet.f32 %2444, 2
  %2448 = fsub fast float %2441, %2433
  %2449 = fsub fast float %2442, %2434
  %2450 = fsub fast float %2443, %2435
  %2451 = fmul fast float %2448, %2421
  %2452 = fmul fast float %2449, %2421
  %2453 = fmul fast float %2450, %2421
  %2454 = fadd fast float %2451, %2433
  %2455 = fadd fast float %2452, %2434
  %2456 = fadd fast float %2453, %2435
  %2457 = fsub fast float %2445, %2437
  %2458 = fsub fast float %2446, %2438
  %2459 = fsub fast float %2447, %2439
  %2460 = fmul fast float %2457, %2421
  %2461 = fmul fast float %2458, %2421
  %2462 = fmul fast float %2459, %2421
  %2463 = fsub fast float %2437, %2454
  %2464 = fadd fast float %2463, %2460
  %2465 = fsub fast float %2438, %2455
  %2466 = fadd fast float %2465, %2461
  %2467 = fsub fast float %2439, %2456
  %2468 = fadd fast float %2467, %2462
  %2469 = fmul fast float %2464, %2409
  %2470 = fmul fast float %2466, %2409
  %2471 = fmul fast float %2468, %2409
  %2472 = fadd fast float %2469, %2454
  %2473 = fadd fast float %2470, %2455
  %2474 = fadd fast float %2471, %2456
  %2475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2476 = extractvalue %dx.types.CBufRet.f32 %2475, 1
  %2477 = fmul fast float %2472, %2476
  %2478 = fmul fast float %2473, %2476
  %2479 = fmul fast float %2474, %2476
  br label %2480

; <label>:2480                                    ; preds = %2312, %2269
  %2481 = phi float [ %2351, %2312 ], [ 1.000000e+00, %2269 ]
  %2482 = phi float [ %2352, %2312 ], [ 1.000000e+00, %2269 ]
  %2483 = phi float [ %2353, %2312 ], [ 1.000000e+00, %2269 ]
  %2484 = phi float [ %2477, %2312 ], [ 0.000000e+00, %2269 ]
  %2485 = phi float [ %2478, %2312 ], [ 0.000000e+00, %2269 ]
  %2486 = phi float [ %2479, %2312 ], [ 0.000000e+00, %2269 ]
  %2487 = fmul fast float %2481, %2273
  %2488 = fmul fast float %2482, %2274
  %2489 = fmul fast float %2483, %2275
  %2490 = fmul fast float %2481, %2270
  %2491 = fmul fast float %2482, %2271
  %2492 = fmul fast float %2483, %2272
  %2493 = fadd fast float %2484, %2490
  %2494 = fadd fast float %2485, %2491
  %2495 = fadd fast float %2486, %2492
  %2496 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %1361, i32 %1362, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2497 = extractvalue %dx.types.ResRet.f32 %2496, 0
  %2498 = extractvalue %dx.types.ResRet.f32 %2496, 1
  %2499 = extractvalue %dx.types.ResRet.f32 %2496, 2
  %2500 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2501 = extractvalue %dx.types.CBufRet.i32 %2500, 3
  %2502 = and i32 %2501, 3
  %2503 = icmp ne i32 %2502, 0
  %2504 = and i32 %2501, 4
  %2505 = icmp ne i32 %2504, 0
  %2506 = and i1 %2503, %2505
  br i1 %2506, label %2507, label %2514, !dx.controlflow.hints !97

; <label>:2507                                    ; preds = %2480
  %2508 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %20, float %1380, float %1381, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2509 = extractvalue %dx.types.ResRet.f32 %2508, 0
  %2510 = fsub fast float 1.000000e+00, %2509
  %2511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %2512 = extractvalue %dx.types.CBufRet.f32 %2511, 0
  %2513 = fcmp fast olt float %2510, %2512
  br label %2517

; <label>:2514                                    ; preds = %2480
  %2515 = icmp eq i32 %2504, 0
  %2516 = and i1 %2503, %2515
  br label %2517

; <label>:2517                                    ; preds = %2514, %2507
  %2518 = phi i1 [ %2513, %2507 ], [ %2516, %2514 ]
  %2519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2520 = extractvalue %dx.types.CBufRet.f32 %2519, 0
  br i1 %2518, label %2521, label %2540, !dx.controlflow.hints !98

; <label>:2521                                    ; preds = %2517
  %2522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2523 = extractvalue %dx.types.CBufRet.f32 %2522, 3
  %2524 = call float @dx.op.dot3.f32(i32 55, float %2487, float %2488, float %2489, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2525 = fmul fast float %2524, %2497
  %2526 = call float @dx.op.dot3.f32(i32 55, float %2493, float %2494, float %2495, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2527 = fmul fast float %2520, %2526
  %2528 = fadd fast float %2527, %2525
  br i1 %2506, label %2529, label %2535, !dx.controlflow.hints !99

; <label>:2529                                    ; preds = %2521
  %2530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2531 = extractvalue %dx.types.CBufRet.f32 %2530, 1
  %2532 = fadd fast float %2487, -1.000000e+00
  %2533 = fmul fast float %2531, %2532
  %2534 = fadd fast float %2533, 1.000000e+00
  br label %2535

; <label>:2535                                    ; preds = %2529, %2521
  %2536 = phi float [ %2534, %2529 ], [ %2487, %2521 ]
  %2537 = fsub fast float %2498, %2523
  %2538 = fmul fast float %2536, %2537
  %2539 = fadd fast float %2538, %2523
  br label %2550

; <label>:2540                                    ; preds = %2517
  %2541 = fmul fast float %2497, %2487
  %2542 = fmul fast float %2498, %2488
  %2543 = fmul fast float %2499, %2489
  %2544 = fmul fast float %2520, %2493
  %2545 = fmul fast float %2520, %2494
  %2546 = fmul fast float %2520, %2495
  %2547 = fadd fast float %2544, %2541
  %2548 = fadd fast float %2545, %2542
  %2549 = fadd fast float %2546, %2543
  br label %2550

; <label>:2550                                    ; preds = %2540, %2535
  %2551 = phi float [ %2528, %2535 ], [ %2547, %2540 ]
  %2552 = phi float [ %2539, %2535 ], [ %2548, %2540 ]
  %2553 = phi float [ %2499, %2535 ], [ %2549, %2540 ]
  %2554 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %2555 = extractvalue %dx.types.CBufRet.i32 %2554, 1
  %2556 = shl i32 %2555, 1
  %2557 = lshr i32 %1362, 5
  %2558 = extractvalue %dx.types.CBufRet.i32 %2554, 0
  %2559 = mul i32 %2558, %2557
  %2560 = add i32 %2556, %1272
  %2561 = add i32 %2560, %2559
  %2562 = shl i32 %2561, 2
  %2563 = and i32 %1362, 24
  %2564 = or i32 %2563, %1277
  %2565 = shl i32 1, %2564
  %2566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2562, i32 undef)  ; BufferLoad(srv,index,wot)
  %2567 = extractvalue %dx.types.ResRet.i32 %2566, 0
  %2568 = and i32 %2567, %2565
  %2569 = icmp eq i32 %2568, 0
  br i1 %2569, label %2585, label %2570, !dx.controlflow.hints !100

; <label>:2570                                    ; preds = %2550
  %2571 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1361, i32 %1362, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2572 = extractvalue %dx.types.ResRet.f32 %2571, 0
  %2573 = fcmp fast ogt float %2572, 0.000000e+00
  br i1 %2573, label %2574, label %2585, !dx.controlflow.hints !101

; <label>:2574                                    ; preds = %2570
  %2575 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %1361, i32 %1362, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2576 = extractvalue %dx.types.ResRet.f32 %2575, 0
  %2577 = extractvalue %dx.types.ResRet.f32 %2575, 1
  %2578 = extractvalue %dx.types.ResRet.f32 %2575, 2
  %2579 = extractvalue %dx.types.ResRet.f32 %2575, 3
  %2580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %2581 = extractvalue %dx.types.CBufRet.f32 %2580, 2
  %2582 = fmul fast float %2581, %2576
  %2583 = fmul fast float %2581, %2577
  %2584 = fmul fast float %2581, %2578
  br label %2585

; <label>:2585                                    ; preds = %2574, %2570, %2550
  %2586 = phi float [ %2582, %2574 ], [ 0.000000e+00, %2570 ], [ 0.000000e+00, %2550 ]
  %2587 = phi float [ %2583, %2574 ], [ 0.000000e+00, %2570 ], [ 0.000000e+00, %2550 ]
  %2588 = phi float [ %2584, %2574 ], [ 0.000000e+00, %2570 ], [ 0.000000e+00, %2550 ]
  %2589 = phi float [ %2579, %2574 ], [ 0.000000e+00, %2570 ], [ 0.000000e+00, %2550 ]
  %2590 = fsub fast float 1.000000e+00, %2589
  %2591 = fmul fast float %2590, %2551
  %2592 = fmul fast float %2590, %2552
  %2593 = fmul fast float %2590, %2553
  %2594 = fadd fast float %2591, %2586
  %2595 = fadd fast float %2592, %2587
  %2596 = fadd fast float %2593, %2588
  %2597 = fadd fast float %1392, 0x3FE3C6EF40000000
  %2598 = call float @dx.op.unary.f32(i32 22, float %2597)  ; Frc(value)
  %2599 = call float @dx.op.unary.f32(i32 23, float %2594)  ; Log(value)
  %2600 = fadd fast float %2599, -7.000000e+00
  %2601 = call float @dx.op.unary.f32(i32 21, float %2600)  ; Exp(value)
  %2602 = fmul fast float %2598, 2.000000e+00
  %2603 = fadd fast float %2602, -1.000000e+00
  %2604 = fmul fast float %2601, %2603
  %2605 = fcmp fast ogt float %2594, 0.000000e+00
  %2606 = select i1 %2605, float %2604, float 0.000000e+00
  %2607 = fadd fast float %2606, %2594
  %2608 = fadd fast float %1392, 0x3FF3C6EF40000000
  %2609 = call float @dx.op.unary.f32(i32 22, float %2608)  ; Frc(value)
  %2610 = call float @dx.op.unary.f32(i32 23, float %2595)  ; Log(value)
  %2611 = fadd fast float %2610, -7.000000e+00
  %2612 = call float @dx.op.unary.f32(i32 21, float %2611)  ; Exp(value)
  %2613 = fmul fast float %2609, 2.000000e+00
  %2614 = fadd fast float %2613, -1.000000e+00
  %2615 = fmul fast float %2612, %2614
  %2616 = fcmp fast ogt float %2595, 0.000000e+00
  %2617 = select i1 %2616, float %2615, float 0.000000e+00
  %2618 = fadd fast float %2617, %2595
  %2619 = fadd fast float %1392, 0x3FFDAA66E0000000
  %2620 = call float @dx.op.unary.f32(i32 22, float %2619)  ; Frc(value)
  %2621 = call float @dx.op.unary.f32(i32 23, float %2596)  ; Log(value)
  %2622 = fadd fast float %2621, -6.000000e+00
  %2623 = call float @dx.op.unary.f32(i32 21, float %2622)  ; Exp(value)
  %2624 = fmul fast float %2620, 2.000000e+00
  %2625 = fadd fast float %2624, -1.000000e+00
  %2626 = fmul fast float %2623, %2625
  %2627 = fcmp fast ogt float %2596, 0.000000e+00
  %2628 = select i1 %2627, float %2626, float 0.000000e+00
  %2629 = fadd fast float %2628, %2596
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1361, i32 %1362, i32 undef, float %2607, float %2618, float %2629, float %2607, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2630 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2631 = extractvalue %dx.types.CBufRet.i32 %2630, 0
  %2632 = and i32 %2631, 1
  %2633 = icmp ne i32 %2632, 0
  %2634 = or i32 %1362, %1354
  %2635 = and i32 %2634, 1
  %2636 = icmp eq i32 %2635, 0
  %2637 = and i1 %2636, %2633
  br i1 %2637, label %2638, label %1371, !dx.controlflow.hints !102

; <label>:2638                                    ; preds = %2585
  %2639 = and i32 %44, 2147483647
  %2640 = lshr i32 %1362, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2639, i32 %2640, i32 undef, float %2497, float %2498, float %2499, float %2497, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1371

; <label>:2641                                    ; preds = %1371
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
!dx.entryPoints = !{!33}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !23, !26, !29}
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
!23 = !{!24, !25}
!24 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!25 = !{i32 1, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!26 = !{!27, !28}
!27 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!28 = !{i32 1, %PostOpaqueConstants* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!29 = !{!30, !31, !32}
!30 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!31 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!32 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!33 = !{void ()* @cs_post_opaque_processes_subsampletile, !"cs_post_opaque_processes_subsampletile", null, !4, !34}
!34 = !{i32 0, i64 272, i32 4, !35}
!35 = !{i32 8, i32 8, i32 1}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = !{!49, !49, i64 0}
!49 = !{!"float", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C/C++ TBAA"}
!52 = !{!53, !55, !57, !58, !60, !61, !62}
!53 = distinct !{!53, !54, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!54 = distinct !{!54, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!55 = distinct !{!55, !56, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!56 = distinct !{!56, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!57 = distinct !{!57, !56, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!58 = distinct !{!58, !59, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %extinction"}
!59 = distinct !{!59, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z"}
!60 = distinct !{!60, !59, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %scattering"}
!61 = distinct !{!61, !59, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %thermalFogExtinction"}
!62 = distinct !{!62, !63, !"\01?PostOpaqueProcessesQuadLoop@@YAXV?$vector@I$01@@00V?$vector@M$03@@AIAV?$vector@M$02@@_N33V?$vector@_N$03@@@Z: %colorQuadAvg"}
!63 = distinct !{!63, !"\01?PostOpaqueProcessesQuadLoop@@YAXV?$vector@I$01@@00V?$vector@M$03@@AIAV?$vector@M$02@@_N33V?$vector@_N$03@@@Z"}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = !{!66}
!66 = distinct !{!66, !67, !"\01?sort@@YAXAIAM00@Z: %c"}
!67 = distinct !{!67, !"\01?sort@@YAXAIAM00@Z"}
!68 = !{!69, !70, !53, !55, !57, !58, !60, !61, !62}
!69 = distinct !{!69, !67, !"\01?sort@@YAXAIAM00@Z: %a"}
!70 = distinct !{!70, !67, !"\01?sort@@YAXAIAM00@Z: %b"}
!71 = !{!70}
!72 = !{!69, !66, !53, !55, !57, !58, !60, !61, !62}
!73 = !{!69}
!74 = !{!70, !66, !53, !55, !57, !58, !60, !61, !62}
!75 = !{!76}
!76 = distinct !{!76, !77, !"\01?sort@@YAXAIAM00@Z: %c"}
!77 = distinct !{!77, !"\01?sort@@YAXAIAM00@Z"}
!78 = !{!79, !80, !53, !55, !57, !58, !60, !61, !62}
!79 = distinct !{!79, !77, !"\01?sort@@YAXAIAM00@Z: %a"}
!80 = distinct !{!80, !77, !"\01?sort@@YAXAIAM00@Z: %b"}
!81 = !{!80}
!82 = !{!79, !76, !53, !55, !57, !58, !60, !61, !62}
!83 = !{!79}
!84 = !{!80, !76, !53, !55, !57, !58, !60, !61, !62}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = !{!62}
!105 = !{!106, !108, !110, !111, !113, !114, !62}
!106 = distinct !{!106, !107, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!107 = distinct !{!107, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!108 = distinct !{!108, !109, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!109 = distinct !{!109, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!110 = distinct !{!110, !109, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!111 = distinct !{!111, !112, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %extinction"}
!112 = distinct !{!112, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z"}
!113 = distinct !{!113, !112, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %scattering"}
!114 = distinct !{!114, !112, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %thermalFogExtinction"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"\01?sort@@YAXAIAM00@Z: %c"}
!117 = distinct !{!117, !"\01?sort@@YAXAIAM00@Z"}
!118 = !{!119, !120, !106, !108, !110, !111, !113, !114, !62}
!119 = distinct !{!119, !117, !"\01?sort@@YAXAIAM00@Z: %a"}
!120 = distinct !{!120, !117, !"\01?sort@@YAXAIAM00@Z: %b"}
!121 = !{!120}
!122 = !{!119, !116, !106, !108, !110, !111, !113, !114, !62}
!123 = !{!119}
!124 = !{!120, !116, !106, !108, !110, !111, !113, !114, !62}
!125 = !{!126}
!126 = distinct !{!126, !127, !"\01?sort@@YAXAIAM00@Z: %c"}
!127 = distinct !{!127, !"\01?sort@@YAXAIAM00@Z"}
!128 = !{!129, !130, !106, !108, !110, !111, !113, !114, !62}
!129 = distinct !{!129, !127, !"\01?sort@@YAXAIAM00@Z: %a"}
!130 = distinct !{!130, !127, !"\01?sort@@YAXAIAM00@Z: %b"}
!131 = !{!130}
!132 = !{!129, !126, !106, !108, !110, !111, !113, !114, !62}
!133 = !{!129}
!134 = !{!130, !126, !106, !108, !110, !111, !113, !114, !62}

