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
; shader hash: ce4b7b1ee17e86b40a8267ba6a422d4c
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
;                                   texture     f32          2d     T11            t18     1
;                                   texture     f32          2d     T12            t21     1
;                                   texture     f32          2d     T13            t22     1
;                                   texture     f32          2d     T14            t12     1
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
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %24 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %25 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %26 = alloca [3 x float], align 4
  %27 = alloca [3 x float], align 4
  %28 = alloca [3 x float], align 4
  %29 = alloca [3 x float], align 4
  %30 = alloca [4 x float], align 4
  %31 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.i32 %31, 0
  %33 = extractvalue %dx.types.CBufRet.i32 %31, 1
  %34 = mul i32 %33, %32
  %35 = add i32 %34, %25
  %36 = shl i32 %35, 2
  %37 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %36, i32 undef)  ; BufferLoad(srv,index,wot)
  %38 = extractvalue %dx.types.ResRet.i32 %37, 0
  %39 = lshr i32 %38, 16
  %40 = shl i32 %38, 3
  %41 = and i32 %40, 524280
  %42 = shl nuw nsw i32 %39, 3
  %43 = add i32 %41, %23
  %44 = add i32 %42, %24
  %45 = shl i32 %43, 1
  %46 = shl i32 %44, 1
  %47 = uitofp i32 %45 to float
  %48 = uitofp i32 %46 to float
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 2
  %51 = extractvalue %dx.types.CBufRet.f32 %49, 3
  %52 = fmul fast float %47, %50
  %53 = fmul fast float %48, %51
  %54 = fadd fast float %52, %50
  %55 = fadd fast float %53, %51
  %56 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %20, float %54, float %55, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %57 = extractvalue %dx.types.ResRet.f32 %56, 0
  %58 = extractvalue %dx.types.ResRet.f32 %56, 1
  %59 = extractvalue %dx.types.ResRet.f32 %56, 2
  %60 = extractvalue %dx.types.ResRet.f32 %56, 3
  %61 = fcmp fast ogt float %60, -1.000000e+00
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 1
  %64 = select i1 %61, float %63, float 1.000000e+00
  %65 = fadd fast float %60, 1.000000e+00
  %66 = fmul fast float %64, %65
  %67 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %68 = fcmp fast ogt float %59, -1.000000e+00
  %69 = select i1 %68, float %63, float 1.000000e+00
  %70 = fadd fast float %59, 1.000000e+00
  %71 = fmul fast float %69, %70
  %72 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %73 = fcmp fast ogt float %57, -1.000000e+00
  %74 = select i1 %73, float %63, float 1.000000e+00
  %75 = fadd fast float %57, 1.000000e+00
  %76 = fmul fast float %74, %75
  %77 = call float @dx.op.unary.f32(i32 6, float %76)  ; FAbs(value)
  %78 = fcmp fast ogt float %58, -1.000000e+00
  %79 = select i1 %78, float %63, float 1.000000e+00
  %80 = fadd fast float %58, 1.000000e+00
  %81 = fmul fast float %79, %80
  %82 = call float @dx.op.unary.f32(i32 6, float %81)  ; FAbs(value)
  %83 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 0
  store float %67, float* %83, align 4
  %84 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 1
  store float %72, float* %84, align 4
  %85 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 2
  store float %77, float* %85, align 4
  %86 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 3
  store float %82, float* %86, align 4
  %87 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %88 = extractvalue %dx.types.ResRet.i32 %87, 0
  %89 = and i32 %88, 114688
  %90 = icmp ne i32 %89, 0
  %91 = select i1 %90, i32 %45, i32 0
  %92 = select i1 %90, i32 %46, i32 0
  %93 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %91, i32 %92, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %94 = extractvalue %dx.types.ResRet.f32 %93, 0
  %95 = fmul fast float %94, 2.550000e+02
  %96 = fptoui float %95 to i32
  %97 = icmp eq i32 %96, 3
  %98 = and i1 %90, %97
  %99 = extractvalue %dx.types.CBufRet.f32 %62, 3
  %100 = fcmp fast oge float %67, %99
  %101 = fadd fast float %47, 5.000000e-01
  %102 = fadd fast float %48, 5.000000e-01
  br i1 %98, label %964, label %103, !dx.controlflow.hints !35

; <label>:103                                     ; preds = %0
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 170)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 0
  %106 = select i1 %100, float %105, float %67
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 3
  %110 = fmul fast float %101, 2.000000e+00
  %111 = fmul fast float %110, %108
  %112 = fmul fast float %102, 2.000000e+00
  %113 = fmul fast float %112, %109
  %114 = fsub fast float 1.000000e+00, %111
  %115 = fsub fast float 1.000000e+00, %113
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 0
  %118 = extractvalue %dx.types.CBufRet.f32 %116, 1
  %119 = extractvalue %dx.types.CBufRet.f32 %116, 2
  %120 = fmul fast float %114, %117
  %121 = fmul fast float %114, %118
  %122 = fmul fast float %114, %119
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %127 = fmul fast float %115, %124
  %128 = fmul fast float %115, %125
  %129 = fmul fast float %115, %126
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %133 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %134 = fadd fast float %127, %131
  %135 = fadd fast float %134, %120
  %136 = fadd fast float %128, %132
  %137 = fadd fast float %136, %121
  %138 = fadd fast float %129, %133
  %139 = fadd fast float %138, %122
  %140 = fmul fast float %135, %106
  %141 = fmul fast float %137, %106
  %142 = fmul fast float %139, %106
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 163)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %148 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %149 = extractvalue %dx.types.CBufRet.f32 %145, 3
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %153 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %154 = extractvalue %dx.types.CBufRet.f32 %150, 3
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 0
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 1
  %158 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %159 = extractvalue %dx.types.CBufRet.f32 %155, 3
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %163 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %164 = extractvalue %dx.types.CBufRet.f32 %160, 3
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 3
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 3
  %169 = extractvalue %dx.types.CBufRet.f32 %167, 0
  %170 = extractvalue %dx.types.CBufRet.f32 %167, 1
  %171 = extractvalue %dx.types.CBufRet.f32 %167, 2
  %172 = fcmp fast olt float %171, -5.000000e-01
  %173 = extractvalue %dx.types.CBufRet.f32 %143, 3
  %174 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %140, float %141, float %142)  ; Dot3(ax,ay,az,bx,by,bz)
  %175 = call float @dx.op.unary.f32(i32 25, float %174)  ; Rsqrt(value)
  %176 = fmul fast float %175, %174
  %177 = fmul fast float %175, %140
  %178 = fmul fast float %175, %141
  %179 = fmul fast float %175, %142
  %180 = fadd fast float %176, %149
  br i1 %100, label %181, label %193, !dx.controlflow.hints !36

; <label>:181                                     ; preds = %103
  %182 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %183 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 187)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 1
  %186 = extractvalue %dx.types.CBufRet.f32 %184, 0
  %187 = call float @dx.op.binary.f32(i32 35, float %179, float %186)  ; FMax(a,b)
  %188 = call float @dx.op.binary.f32(i32 36, float %187, float %185)  ; FMin(a,b)
  %189 = fmul fast float %188, %183
  %190 = fadd fast float %189, %182
  %191 = call float @dx.op.unary.f32(i32 7, float %190)  ; Saturate(value)
  %192 = fmul fast float %179, %144
  br label %193

; <label>:193                                     ; preds = %181, %103
  %194 = phi float [ %144, %181 ], [ %180, %103 ]
  %195 = phi float [ %191, %181 ], [ 0.000000e+00, %103 ]
  %196 = phi float [ %192, %181 ], [ %142, %103 ]
  %197 = call float @dx.op.dot3.f32(i32 55, float %177, float %178, float %179, float %146, float %147, float %148)  ; Dot3(ax,ay,az,bx,by,bz)
  %198 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.i32 %198, 1
  %200 = and i32 %199, 1
  %201 = icmp ne i32 %200, 0
  %202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = extractvalue %dx.types.CBufRet.f32 %202, 2
  %204 = fcmp fast ogt float %203, 0.000000e+00
  %205 = and i1 %201, %204
  br i1 %205, label %206, label %615, !dx.controlflow.hints !37

; <label>:206                                     ; preds = %193
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 3
  %209 = select i1 %100, float %208, float %176
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 3
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 2
  %214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.f32 %214, 2
  %216 = fsub fast float %213, %215
  %217 = and i32 %199, 2
  %218 = extractvalue %dx.types.CBufRet.i32 %198, 0
  %219 = call i32 @dx.op.binary.i32(i32 40, i32 %218, i32 3)  ; UMin(a,b)
  %220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = extractvalue %dx.types.CBufRet.f32 %220, 0
  %222 = extractvalue %dx.types.CBufRet.f32 %220, 1
  %223 = extractvalue %dx.types.CBufRet.f32 %214, 0
  %224 = extractvalue %dx.types.CBufRet.f32 %214, 1
  %225 = fsub fast float %221, %223
  %226 = fsub fast float %222, %224
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.f32 %227, 0
  %229 = fcmp fast ogt float %228, 0.000000e+00
  %230 = fsub fast float -0.000000e+00, %225
  %231 = fsub fast float -0.000000e+00, %226
  %232 = call float @dx.op.dot2.f32(i32 54, float %177, float %178, float %177, float %178)  ; Dot2(ax,ay,bx,by)
  %233 = call float @dx.op.dot2.f32(i32 54, float %177, float %178, float %230, float %231)  ; Dot2(ax,ay,bx,by)
  %234 = fmul fast float %233, 2.000000e+00
  %235 = call float @dx.op.dot2.f32(i32 54, float %230, float %231, float %230, float %231)  ; Dot2(ax,ay,bx,by)
  %236 = fmul fast float %228, %228
  %237 = fsub fast float %235, %236
  %238 = fmul fast float %234, %234
  %239 = fmul fast float %232, 4.000000e+00
  %240 = fmul fast float %239, %237
  %241 = fsub fast float %238, %240
  %242 = fcmp fast ogt float %241, 0.000000e+00
  br i1 %242, label %243, label %258, !dx.controlflow.hints !38

; <label>:243                                     ; preds = %206
  %244 = fcmp fast ogt float %234, 0.000000e+00
  %245 = call float @dx.op.unary.f32(i32 24, float %241)  ; Sqrt(value)
  %246 = fsub fast float -0.000000e+00, %245
  %247 = select i1 %244, float %245, float %246
  %248 = fadd fast float %247, %234
  %249 = fmul float %248, -5.000000e-01
  %250 = fdiv fast float %249, %232
  %251 = call float @dx.op.binary.f32(i32 35, float %250, float 0.000000e+00)  ; FMax(a,b)
  %252 = call float @dx.op.binary.f32(i32 36, float %209, float %251)  ; FMin(a,b)
  %253 = fdiv fast float %237, %249
  %254 = call float @dx.op.binary.f32(i32 35, float %253, float 0.000000e+00)  ; FMax(a,b)
  %255 = call float @dx.op.binary.f32(i32 36, float %209, float %254)  ; FMin(a,b)
  %256 = call float @dx.op.binary.f32(i32 36, float %252, float %255)  ; FMin(a,b)
  %257 = call float @dx.op.binary.f32(i32 35, float %252, float %255)  ; FMax(a,b)
  br label %258

; <label>:258                                     ; preds = %243, %206
  %259 = phi float [ %257, %243 ], [ -1.000000e+00, %206 ]
  %260 = phi float [ %256, %243 ], [ -1.000000e+00, %206 ]
  %261 = phi i1 [ true, %243 ], [ false, %206 ]
  %262 = and i1 %229, %261
  br i1 %262, label %263, label %265, !dx.controlflow.hints !39

; <label>:263                                     ; preds = %258
  %264 = fcmp fast oeq float %260, %259
  br i1 %264, label %568, label %266, !dx.controlflow.hints !40

; <label>:265                                     ; preds = %258
  br i1 %229, label %568, label %266, !dx.controlflow.hints !41

; <label>:266                                     ; preds = %265, %263
  %267 = phi float [ %209, %265 ], [ %259, %263 ]
  %268 = phi float [ 0.000000e+00, %265 ], [ %260, %263 ]
  %269 = icmp ne i32 %217, 0
  %270 = fmul fast float %267, %179
  %271 = fadd fast float %270, %211
  %272 = fmul fast float %271, %267
  %273 = select i1 %269, float 0.000000e+00, float %272
  %274 = fcmp fast oeq float %179, 0.000000e+00
  %275 = fdiv fast float %216, %179
  %276 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %275)  ; FMax(a,b)
  %277 = select i1 %274, float %267, float %276
  %278 = call float @dx.op.binary.f32(i32 36, float %267, float %277)  ; FMin(a,b)
  %279 = fcmp fast ogt float %179, 0.000000e+00
  %280 = fcmp fast olt float %216, 0.000000e+00
  br i1 %279, label %281, label %338, !dx.controlflow.hints !42

; <label>:281                                     ; preds = %266
  %282 = icmp eq i32 %217, 0
  br i1 %280, label %283, label %327, !dx.controlflow.hints !43

; <label>:283                                     ; preds = %281
  %284 = select i1 %282, float %267, float 0.000000e+00
  %285 = fsub fast float -0.000000e+00, %284
  %286 = call float @dx.op.unary.f32(i32 6, float %285)  ; FAbs(value)
  %287 = fmul fast float %284, %179
  %288 = fadd fast float %287, %211
  %289 = fmul fast float %286, %288
  %290 = fsub fast float %273, %289
  %291 = fsub fast float %267, %286
  %292 = select i1 %282, float %291, float 0.000000e+00
  %293 = extractvalue %dx.types.CBufRet.f32 %207, 0
  %294 = extractvalue %dx.types.CBufRet.f32 %207, 1
  %295 = extractvalue %dx.types.CBufRet.f32 %207, 2
  %296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.f32 %296, 0
  %298 = extractvalue %dx.types.CBufRet.f32 %296, 1
  %299 = extractvalue %dx.types.CBufRet.f32 %296, 2
  %300 = extractvalue %dx.types.CBufRet.f32 %296, 3
  %301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.f32 %301, 3
  %303 = call float @dx.op.binary.f32(i32 36, float %290, float %302)  ; FMin(a,b)
  %304 = fmul fast float %300, %292
  %305 = call float @dx.op.unary.f32(i32 7, float %304)  ; Saturate(value)
  %306 = fsub fast float %297, %293
  %307 = fsub fast float %298, %294
  %308 = fsub fast float %299, %295
  %309 = fmul fast float %305, %306
  %310 = fmul fast float %305, %307
  %311 = fmul fast float %305, %308
  %312 = fadd fast float %309, %293
  %313 = fadd fast float %310, %294
  %314 = fadd fast float %311, %295
  br i1 %100, label %568, label %315, !dx.controlflow.hints !44

; <label>:315                                     ; preds = %283
  %316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %317 = extractvalue %dx.types.CBufRet.f32 %316, 0
  %318 = extractvalue %dx.types.CBufRet.f32 %316, 1
  %319 = fadd fast float %318, %317
  %320 = call float @dx.op.unary.f32(i32 7, float %319)  ; Saturate(value)
  %321 = extractvalue %dx.types.CBufRet.f32 %316, 2
  %322 = extractvalue %dx.types.CBufRet.f32 %316, 3
  %323 = fadd fast float %322, %321
  %324 = call float @dx.op.unary.f32(i32 7, float %323)  ; Saturate(value)
  %325 = fmul fast float %320, %303
  %326 = fmul fast float %325, %324
  br label %568

; <label>:327                                     ; preds = %281
  br i1 %282, label %328, label %349, !dx.controlflow.hints !45

; <label>:328                                     ; preds = %327
  %329 = call float @dx.op.binary.f32(i32 36, float %278, float %268)  ; FMin(a,b)
  %330 = fsub fast float %278, %329
  %331 = fsub fast float %330, %267
  %332 = call float @dx.op.unary.f32(i32 6, float %331)  ; FAbs(value)
  %333 = fadd fast float %330, %267
  %334 = fmul fast float %333, %179
  %335 = fadd fast float %334, %211
  %336 = fmul fast float %335, %332
  %337 = fsub fast float %273, %336
  br label %349

; <label>:338                                     ; preds = %266
  br i1 %280, label %339, label %349, !dx.controlflow.hints !46

; <label>:339                                     ; preds = %338
  %340 = call float @dx.op.binary.f32(i32 35, float %268, float %278)  ; FMax(a,b)
  %341 = icmp eq i32 %217, 0
  %342 = select i1 %341, float %278, float 0.000000e+00
  %343 = fsub fast float -0.000000e+00, %342
  %344 = call float @dx.op.unary.f32(i32 6, float %343)  ; FAbs(value)
  %345 = fmul fast float %342, %179
  %346 = fadd fast float %345, %211
  %347 = fmul fast float %344, %346
  %348 = fsub fast float %273, %347
  br label %349

; <label>:349                                     ; preds = %339, %338, %328, %327
  %350 = phi float [ %268, %327 ], [ %268, %328 ], [ %340, %339 ], [ %268, %338 ]
  %351 = phi float [ 0.000000e+00, %327 ], [ %332, %328 ], [ %344, %339 ], [ 0.000000e+00, %338 ]
  %352 = phi float [ %273, %327 ], [ %337, %328 ], [ %348, %339 ], [ %273, %338 ]
  %353 = phi float [ %278, %327 ], [ %278, %328 ], [ %267, %339 ], [ %267, %338 ]
  %354 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 0
  store float -1.000000e+00, float* %354, align 4, !tbaa !47, !noalias !51
  %355 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 1
  store float -1.000000e+00, float* %355, align 4, !tbaa !47, !noalias !51
  %356 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 2
  store float -1.000000e+00, float* %356, align 4, !tbaa !47, !noalias !51
  %357 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 0
  store float -1.000000e+00, float* %357, align 4, !tbaa !47, !noalias !51
  %358 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 1
  store float -1.000000e+00, float* %358, align 4, !tbaa !47, !noalias !51
  %359 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 2
  store float -1.000000e+00, float* %359, align 4, !tbaa !47, !noalias !51
  %360 = icmp sgt i32 %219, 0
  br i1 %360, label %361, label %422

; <label>:361                                     ; preds = %349
  br label %362

; <label>:362                                     ; preds = %411, %361
  %363 = phi i32 [ %412, %411 ], [ 0, %361 ]
  %364 = phi i32 [ %413, %411 ], [ 0, %361 ]
  %365 = add nuw i32 %364, 171
  %366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 %365)  ; CBufferLoadLegacy(handle,regIndex)
  %367 = extractvalue %dx.types.CBufRet.f32 %366, 0
  %368 = extractvalue %dx.types.CBufRet.f32 %366, 1
  %369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.f32 %369, 0
  %371 = extractvalue %dx.types.CBufRet.f32 %369, 1
  %372 = fsub fast float %367, %370
  %373 = fsub fast float %368, %371
  %374 = extractvalue %dx.types.CBufRet.f32 %366, 2
  %375 = fsub fast float -0.000000e+00, %372
  %376 = fsub fast float -0.000000e+00, %373
  %377 = call float @dx.op.dot2.f32(i32 54, float %177, float %178, float %375, float %376)  ; Dot2(ax,ay,bx,by)
  %378 = fmul fast float %377, 2.000000e+00
  %379 = call float @dx.op.dot2.f32(i32 54, float %375, float %376, float %375, float %376)  ; Dot2(ax,ay,bx,by)
  %380 = fmul fast float %374, %374
  %381 = fsub fast float %379, %380
  %382 = fmul fast float %378, %378
  %383 = fmul fast float %239, %381
  %384 = fsub fast float %382, %383
  %385 = fcmp fast ogt float %384, 0.000000e+00
  br i1 %385, label %386, label %401, !dx.controlflow.hints !38

; <label>:386                                     ; preds = %362
  %387 = fcmp fast ogt float %378, 0.000000e+00
  %388 = call float @dx.op.unary.f32(i32 24, float %384)  ; Sqrt(value)
  %389 = fsub fast float -0.000000e+00, %388
  %390 = select i1 %387, float %388, float %389
  %391 = fadd fast float %390, %378
  %392 = fmul float %391, -5.000000e-01
  %393 = fdiv fast float %392, %232
  %394 = call float @dx.op.binary.f32(i32 35, float %393, float 0.000000e+00)  ; FMax(a,b)
  %395 = call float @dx.op.binary.f32(i32 36, float %267, float %394)  ; FMin(a,b)
  %396 = fdiv fast float %381, %392
  %397 = call float @dx.op.binary.f32(i32 35, float %396, float 0.000000e+00)  ; FMax(a,b)
  %398 = call float @dx.op.binary.f32(i32 36, float %267, float %397)  ; FMin(a,b)
  %399 = call float @dx.op.binary.f32(i32 36, float %395, float %398)  ; FMin(a,b)
  %400 = call float @dx.op.binary.f32(i32 35, float %395, float %398)  ; FMax(a,b)
  br label %401

; <label>:401                                     ; preds = %386, %362
  %402 = phi float [ %400, %386 ], [ -1.000000e+00, %362 ]
  %403 = phi float [ %399, %386 ], [ -1.000000e+00, %362 ]
  %404 = phi i1 [ true, %386 ], [ false, %362 ]
  br i1 %404, label %405, label %411, !dx.controlflow.hints !63

; <label>:405                                     ; preds = %401
  %406 = call float @dx.op.binary.f32(i32 35, float %350, float %403)  ; FMax(a,b)
  %407 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %364
  store float %406, float* %407, align 4, !tbaa !47, !noalias !51
  %408 = call float @dx.op.binary.f32(i32 35, float %350, float %402)  ; FMax(a,b)
  %409 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %364
  store float %408, float* %409, align 4, !tbaa !47, !noalias !51
  %410 = add nsw i32 %363, 1
  br label %411

; <label>:411                                     ; preds = %405, %401
  %412 = phi i32 [ %410, %405 ], [ %363, %401 ]
  %413 = add nuw nsw i32 %364, 1
  %414 = icmp eq i32 %413, %219
  br i1 %414, label %415, label %362

; <label>:415                                     ; preds = %411
  %416 = load float, float* %356, align 4, !tbaa !47, !alias.scope !64, !noalias !67
  %417 = load float, float* %355, align 4, !tbaa !47, !alias.scope !70, !noalias !71
  %418 = load float, float* %354, align 4, !tbaa !47, !alias.scope !72, !noalias !73
  %419 = load float, float* %359, align 4, !tbaa !47, !alias.scope !74, !noalias !77
  %420 = load float, float* %358, align 4, !tbaa !47, !alias.scope !80, !noalias !81
  %421 = load float, float* %357, align 4, !tbaa !47, !alias.scope !82, !noalias !83
  br label %422

; <label>:422                                     ; preds = %415, %349
  %423 = phi float [ -1.000000e+00, %349 ], [ %421, %415 ]
  %424 = phi float [ -1.000000e+00, %349 ], [ %420, %415 ]
  %425 = phi float [ -1.000000e+00, %349 ], [ %419, %415 ]
  %426 = phi float [ -1.000000e+00, %349 ], [ %418, %415 ]
  %427 = phi float [ -1.000000e+00, %349 ], [ %417, %415 ]
  %428 = phi float [ -1.000000e+00, %349 ], [ %416, %415 ]
  %429 = phi i32 [ 0, %349 ], [ %412, %415 ]
  %430 = call float @dx.op.binary.f32(i32 36, float %427, float %428)  ; FMin(a,b)
  %431 = call float @dx.op.binary.f32(i32 36, float %426, float %430)  ; FMin(a,b)
  %432 = call float @dx.op.binary.f32(i32 35, float %426, float %427)  ; FMax(a,b)
  %433 = call float @dx.op.binary.f32(i32 36, float %432, float %428)  ; FMin(a,b)
  %434 = call float @dx.op.binary.f32(i32 36, float %426, float %427)  ; FMin(a,b)
  %435 = call float @dx.op.binary.f32(i32 35, float %434, float %433)  ; FMax(a,b)
  %436 = call float @dx.op.binary.f32(i32 35, float %427, float %428)  ; FMax(a,b)
  %437 = call float @dx.op.binary.f32(i32 35, float %426, float %436)  ; FMax(a,b)
  store float %431, float* %354, align 4, !tbaa !47, !alias.scope !72, !noalias !73
  store float %435, float* %355, align 4, !tbaa !47, !alias.scope !70, !noalias !71
  store float %437, float* %356, align 4, !tbaa !47, !alias.scope !64, !noalias !67
  %438 = call float @dx.op.binary.f32(i32 36, float %424, float %425)  ; FMin(a,b)
  %439 = call float @dx.op.binary.f32(i32 36, float %423, float %438)  ; FMin(a,b)
  %440 = call float @dx.op.binary.f32(i32 35, float %423, float %424)  ; FMax(a,b)
  %441 = call float @dx.op.binary.f32(i32 36, float %440, float %425)  ; FMin(a,b)
  %442 = call float @dx.op.binary.f32(i32 36, float %423, float %424)  ; FMin(a,b)
  %443 = call float @dx.op.binary.f32(i32 35, float %442, float %441)  ; FMax(a,b)
  %444 = call float @dx.op.binary.f32(i32 35, float %424, float %425)  ; FMax(a,b)
  %445 = call float @dx.op.binary.f32(i32 35, float %423, float %444)  ; FMax(a,b)
  store float %439, float* %357, align 4, !tbaa !47, !alias.scope !82, !noalias !83
  store float %443, float* %358, align 4, !tbaa !47, !alias.scope !80, !noalias !81
  store float %445, float* %359, align 4, !tbaa !47, !alias.scope !74, !noalias !77
  %446 = sub nsw i32 3, %429
  %447 = icmp sgt i32 %446, 2
  br i1 %447, label %448, label %486, !dx.controlflow.hints !84

; <label>:448                                     ; preds = %422
  %449 = icmp eq i32 %217, 0
  %450 = fsub fast float %267, %351
  %451 = select i1 %449, float %450, float %351
  %452 = extractvalue %dx.types.CBufRet.f32 %207, 0
  %453 = extractvalue %dx.types.CBufRet.f32 %207, 1
  %454 = extractvalue %dx.types.CBufRet.f32 %207, 2
  %455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %456 = extractvalue %dx.types.CBufRet.f32 %455, 0
  %457 = extractvalue %dx.types.CBufRet.f32 %455, 1
  %458 = extractvalue %dx.types.CBufRet.f32 %455, 2
  %459 = extractvalue %dx.types.CBufRet.f32 %455, 3
  %460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %461 = extractvalue %dx.types.CBufRet.f32 %460, 3
  %462 = call float @dx.op.binary.f32(i32 36, float %352, float %461)  ; FMin(a,b)
  %463 = fmul fast float %459, %451
  %464 = call float @dx.op.unary.f32(i32 7, float %463)  ; Saturate(value)
  %465 = fsub fast float %456, %452
  %466 = fsub fast float %457, %453
  %467 = fsub fast float %458, %454
  %468 = fmul fast float %464, %465
  %469 = fmul fast float %464, %466
  %470 = fmul fast float %464, %467
  %471 = fadd fast float %468, %452
  %472 = fadd fast float %469, %453
  %473 = fadd fast float %470, %454
  br i1 %100, label %568, label %474, !dx.controlflow.hints !44

; <label>:474                                     ; preds = %448
  %475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %476 = extractvalue %dx.types.CBufRet.f32 %475, 0
  %477 = extractvalue %dx.types.CBufRet.f32 %475, 1
  %478 = fadd fast float %477, %476
  %479 = call float @dx.op.unary.f32(i32 7, float %478)  ; Saturate(value)
  %480 = extractvalue %dx.types.CBufRet.f32 %475, 2
  %481 = extractvalue %dx.types.CBufRet.f32 %475, 3
  %482 = fadd fast float %481, %480
  %483 = call float @dx.op.unary.f32(i32 7, float %482)  ; Saturate(value)
  %484 = fmul fast float %479, %462
  %485 = fmul fast float %484, %483
  br label %568

; <label>:486                                     ; preds = %422
  %487 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %446
  %488 = load float, float* %487, align 4, !tbaa !47, !noalias !51
  %489 = fcmp fast olt float %488, %353
  %490 = icmp sgt i32 %429, 0
  %491 = and i1 %490, %489
  br i1 %491, label %492, label %529

; <label>:492                                     ; preds = %486
  br label %493

; <label>:493                                     ; preds = %522, %492
  %494 = phi float [ %523, %522 ], [ %351, %492 ]
  %495 = phi float [ %524, %522 ], [ %352, %492 ]
  %496 = phi float [ %504, %522 ], [ %488, %492 ]
  %497 = phi i32 [ %501, %522 ], [ %446, %492 ]
  %498 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %497
  %499 = load float, float* %498, align 4, !tbaa !47, !noalias !51
  %500 = icmp slt i32 %497, 2
  %501 = add nsw i32 %497, 1
  %502 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %501
  %503 = load float, float* %502, align 4, !tbaa !47, !noalias !51
  %504 = select i1 %500, float %503, float %267
  %505 = call float @dx.op.binary.f32(i32 36, float %504, float %499)  ; FMin(a,b)
  %506 = call float @dx.op.binary.f32(i32 36, float %353, float %505)  ; FMin(a,b)
  %507 = icmp eq i32 %217, 0
  %508 = fadd fast float %506, %496
  %509 = fmul fast float %508, %179
  %510 = fadd fast float %509, %211
  br i1 %507, label %516, label %511, !dx.controlflow.hints !85

; <label>:511                                     ; preds = %493
  %512 = fsub fast float %506, %496
  %513 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %512)  ; FMax(a,b)
  %514 = fmul fast float %513, %510
  %515 = fadd fast float %514, %495
  br label %522

; <label>:516                                     ; preds = %493
  %517 = fsub fast float %496, %506
  %518 = call float @dx.op.unary.f32(i32 6, float %517)  ; FAbs(value)
  %519 = fadd fast float %518, %494
  %520 = fmul fast float %518, %510
  %521 = fsub fast float %495, %520
  br label %522

; <label>:522                                     ; preds = %516, %511
  %523 = phi float [ %513, %511 ], [ %519, %516 ]
  %524 = phi float [ %515, %511 ], [ %521, %516 ]
  %525 = fcmp fast olt float %504, %353
  %526 = icmp slt i32 %501, 3
  %527 = and i1 %526, %525
  br i1 %527, label %493, label %528

; <label>:528                                     ; preds = %522
  br label %529

; <label>:529                                     ; preds = %528, %486
  %530 = phi float [ %351, %486 ], [ %523, %528 ]
  %531 = phi float [ %352, %486 ], [ %524, %528 ]
  %532 = fsub fast float %267, %530
  %533 = select i1 %269, float %530, float %532
  %534 = extractvalue %dx.types.CBufRet.f32 %207, 0
  %535 = extractvalue %dx.types.CBufRet.f32 %207, 1
  %536 = extractvalue %dx.types.CBufRet.f32 %207, 2
  %537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %538 = extractvalue %dx.types.CBufRet.f32 %537, 0
  %539 = extractvalue %dx.types.CBufRet.f32 %537, 1
  %540 = extractvalue %dx.types.CBufRet.f32 %537, 2
  %541 = extractvalue %dx.types.CBufRet.f32 %537, 3
  %542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %543 = extractvalue %dx.types.CBufRet.f32 %542, 3
  %544 = call float @dx.op.binary.f32(i32 36, float %531, float %543)  ; FMin(a,b)
  %545 = fmul fast float %541, %533
  %546 = call float @dx.op.unary.f32(i32 7, float %545)  ; Saturate(value)
  %547 = fsub fast float %538, %534
  %548 = fsub fast float %539, %535
  %549 = fsub fast float %540, %536
  %550 = fmul fast float %546, %547
  %551 = fmul fast float %546, %548
  %552 = fmul fast float %546, %549
  %553 = fadd fast float %550, %534
  %554 = fadd fast float %551, %535
  %555 = fadd fast float %552, %536
  br i1 %100, label %568, label %556, !dx.controlflow.hints !44

; <label>:556                                     ; preds = %529
  %557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %558 = extractvalue %dx.types.CBufRet.f32 %557, 0
  %559 = extractvalue %dx.types.CBufRet.f32 %557, 1
  %560 = fadd fast float %559, %558
  %561 = call float @dx.op.unary.f32(i32 7, float %560)  ; Saturate(value)
  %562 = extractvalue %dx.types.CBufRet.f32 %557, 2
  %563 = extractvalue %dx.types.CBufRet.f32 %557, 3
  %564 = fadd fast float %563, %562
  %565 = call float @dx.op.unary.f32(i32 7, float %564)  ; Saturate(value)
  %566 = fmul fast float %561, %544
  %567 = fmul fast float %566, %565
  br label %568

; <label>:568                                     ; preds = %556, %529, %474, %448, %315, %283, %265, %263
  %569 = phi float [ 0.000000e+00, %263 ], [ 0.000000e+00, %265 ], [ %292, %315 ], [ %292, %283 ], [ %451, %474 ], [ %451, %448 ], [ %533, %556 ], [ %533, %529 ]
  %570 = phi float [ 0.000000e+00, %263 ], [ 0.000000e+00, %265 ], [ %326, %315 ], [ %303, %283 ], [ %485, %474 ], [ %462, %448 ], [ %567, %556 ], [ %544, %529 ]
  %571 = phi float [ 0.000000e+00, %263 ], [ 0.000000e+00, %265 ], [ %312, %315 ], [ %312, %283 ], [ %471, %474 ], [ %471, %448 ], [ %553, %556 ], [ %553, %529 ]
  %572 = phi float [ 0.000000e+00, %263 ], [ 0.000000e+00, %265 ], [ %313, %315 ], [ %313, %283 ], [ %472, %474 ], [ %472, %448 ], [ %554, %556 ], [ %554, %529 ]
  %573 = phi float [ 0.000000e+00, %263 ], [ 0.000000e+00, %265 ], [ %314, %315 ], [ %314, %283 ], [ %473, %474 ], [ %473, %448 ], [ %555, %556 ], [ %555, %529 ]
  %574 = fmul fast float %203, %570
  %575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %576 = extractvalue %dx.types.CBufRet.f32 %575, 2
  %577 = fsub fast float %213, %576
  %578 = fcmp fast olt float %574, -2.000000e+01
  %579 = call float @dx.op.unary.f32(i32 21, float %574)  ; Exp(value)
  %580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %581 = extractvalue %dx.types.CBufRet.f32 %580, 2
  %582 = extractvalue %dx.types.CBufRet.f32 %580, 3
  %583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %584 = extractvalue %dx.types.CBufRet.f32 %583, 2
  %585 = fmul fast float %582, %577
  %586 = call float @dx.op.unary.f32(i32 7, float %585)  ; Saturate(value)
  %587 = fsub fast float 1.000000e+00, %586
  %588 = fmul fast float %179, 5.000000e-01
  %589 = fadd fast float %588, 5.000000e-01
  %590 = call float @dx.op.unary.f32(i32 7, float %589)  ; Saturate(value)
  %591 = fsub fast float 1.000000e+00, %590
  %592 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %587)  ; FMax(a,b)
  %593 = fdiv fast float %591, %592
  %594 = fsub fast float %577, %142
  %595 = call float @dx.op.unary.f32(i32 6, float %594)  ; FAbs(value)
  %596 = fmul fast float %595, %581
  %597 = call float @dx.op.unary.f32(i32 7, float %593)  ; Saturate(value)
  %598 = fsub fast float 1.000000e+00, %596
  %599 = fmul fast float %598, %597
  %600 = fadd fast float %599, %596
  %601 = fmul fast float %584, %577
  %602 = call float @dx.op.unary.f32(i32 7, float %601)  ; Saturate(value)
  %603 = fsub fast float 1.000000e+00, %600
  %604 = fmul fast float %603, %602
  %605 = fadd fast float %604, %600
  %606 = call float @dx.op.unary.f32(i32 7, float %605)  ; Saturate(value)
  %607 = fadd fast float %579, -1.000000e+00
  %608 = select i1 %578, float -1.000000e+00, float %607
  %609 = fmul fast float %606, %608
  %610 = fadd fast float %609, 1.000000e+00
  %611 = fsub fast float -0.000000e+00, %609
  %612 = fmul fast float %571, %611
  %613 = fmul fast float %572, %611
  %614 = fmul fast float %573, %611
  br label %615

; <label>:615                                     ; preds = %568, %193
  %616 = phi float [ %569, %568 ], [ 0.000000e+00, %193 ]
  %617 = phi float [ %610, %568 ], [ 1.000000e+00, %193 ]
  %618 = phi float [ %612, %568 ], [ 0.000000e+00, %193 ]
  %619 = phi float [ %613, %568 ], [ 0.000000e+00, %193 ]
  %620 = phi float [ %614, %568 ], [ 0.000000e+00, %193 ]
  %621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %622 = extractvalue %dx.types.CBufRet.f32 %621, 1
  %623 = fsub fast float 1.000000e+00, %617
  %624 = fmul fast float %623, %194
  %625 = fmul fast float %624, %622
  %626 = fsub fast float %194, %625
  br i1 %172, label %627, label %659, !dx.controlflow.hints !86

; <label>:627                                     ; preds = %615
  %628 = fmul fast float %197, %169
  %629 = fadd fast float %628, %170
  %630 = call float @dx.op.unary.f32(i32 7, float %629)  ; Saturate(value)
  %631 = fmul fast float %151, %626
  %632 = fsub fast float -0.000000e+00, %631
  %633 = fmul fast float %152, %626
  %634 = fsub fast float -0.000000e+00, %633
  %635 = call float @dx.op.unary.f32(i32 21, float %632)  ; Exp(value)
  %636 = call float @dx.op.unary.f32(i32 21, float %634)  ; Exp(value)
  %637 = call float @dx.op.binary.f32(i32 35, float %159, float %635)  ; FMax(a,b)
  %638 = call float @dx.op.binary.f32(i32 35, float %159, float %636)  ; FMax(a,b)
  %639 = fsub fast float %638, %637
  %640 = fmul fast float %639, %630
  %641 = fadd fast float %640, %637
  %642 = call float @dx.op.unary.f32(i32 7, float %641)  ; Saturate(value)
  %643 = fmul fast float %195, %173
  %644 = fsub fast float 1.000000e+00, %643
  %645 = select i1 %100, float %644, float %642
  %646 = fsub fast float %156, %161
  %647 = fsub fast float %157, %162
  %648 = fsub fast float %158, %163
  %649 = fmul fast float %630, %646
  %650 = fmul fast float %630, %647
  %651 = fmul fast float %630, %648
  %652 = fadd fast float %649, %161
  %653 = fadd fast float %650, %162
  %654 = fadd fast float %651, %163
  %655 = fsub fast float 1.000000e+00, %645
  %656 = fmul fast float %655, %652
  %657 = fmul fast float %655, %653
  %658 = fmul fast float %655, %654
  br label %730

; <label>:659                                     ; preds = %615
  %660 = fmul fast float %626, %168
  %661 = call float @dx.op.unary.f32(i32 7, float %660)  ; Saturate(value)
  %662 = fsub fast float 2.000000e+00, %661
  %663 = fmul fast float %661, 9.921875e-01
  %664 = fmul fast float %663, %662
  %665 = fadd fast float %664, 3.906250e-03
  %666 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %665, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %667 = extractvalue %dx.types.ResRet.f32 %666, 0
  %668 = fsub fast float %661, %667
  %669 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %668)  ; FMax(a,b)
  %670 = fmul fast float %196, %154
  %671 = call float @dx.op.unary.f32(i32 6, float %670)  ; FAbs(value)
  %672 = fcmp fast ogt float %671, 0x3EB0C6F7A0000000
  br i1 %672, label %673, label %679, !dx.controlflow.hints !87

; <label>:673                                     ; preds = %659
  %674 = fmul fast float %670, 0xBFF7154760000000
  %675 = call float @dx.op.unary.f32(i32 21, float %674)  ; Exp(value)
  %676 = fsub fast float 1.000000e+00, %675
  %677 = fdiv fast float %676, %670
  %678 = fmul fast float %677, %164
  br label %679

; <label>:679                                     ; preds = %673, %659
  %680 = phi float [ %678, %673 ], [ %164, %659 ]
  %681 = fadd fast float %680, %166
  %682 = fmul fast float %681, %669
  %683 = fmul fast float %151, %682
  %684 = fsub fast float -0.000000e+00, %683
  %685 = fmul fast float %152, %682
  %686 = fsub fast float -0.000000e+00, %685
  %687 = fmul fast float %153, %682
  %688 = fsub fast float -0.000000e+00, %687
  %689 = call float @dx.op.unary.f32(i32 21, float %684)  ; Exp(value)
  %690 = call float @dx.op.unary.f32(i32 21, float %686)  ; Exp(value)
  %691 = call float @dx.op.unary.f32(i32 21, float %688)  ; Exp(value)
  br i1 %100, label %692, label %700, !dx.controlflow.hints !88

; <label>:692                                     ; preds = %679
  %693 = fmul fast float %689, %195
  %694 = fmul fast float %690, %195
  %695 = fmul fast float %691, %195
  %696 = fsub fast float 1.000000e+00, %195
  %697 = fadd fast float %693, %696
  %698 = fadd fast float %694, %696
  %699 = fadd fast float %695, %696
  br label %700

; <label>:700                                     ; preds = %692, %679
  %701 = phi float [ %697, %692 ], [ %689, %679 ]
  %702 = phi float [ %698, %692 ], [ %690, %679 ]
  %703 = phi float [ %699, %692 ], [ %691, %679 ]
  %704 = fmul fast float %197, %197
  %705 = fadd fast float %704, 1.000000e+00
  %706 = fmul fast float %705, 0x3FAE8EC8A0000000
  %707 = fmul fast float %706, %161
  %708 = fmul fast float %706, %162
  %709 = fmul fast float %706, %163
  %710 = fmul fast float %197, %159
  %711 = fsub fast float 1.000000e+00, %710
  %712 = fmul fast float %159, %159
  %713 = fsub fast float 1.000000e+00, %712
  %714 = fmul fast float %713, 0x3FB45F3060000000
  %715 = fmul fast float %711, %711
  %716 = fdiv fast float 1.000000e+00, %715
  %717 = fmul fast float %714, %716
  %718 = fmul fast float %717, %156
  %719 = fmul fast float %717, %157
  %720 = fmul fast float %717, %158
  %721 = fadd fast float %718, %707
  %722 = fadd fast float %719, %708
  %723 = fadd fast float %720, %709
  %724 = fsub fast float 1.000000e+00, %701
  %725 = fsub fast float 1.000000e+00, %702
  %726 = fsub fast float 1.000000e+00, %703
  %727 = fmul fast float %721, %724
  %728 = fmul fast float %722, %725
  %729 = fmul fast float %723, %726
  br label %730

; <label>:730                                     ; preds = %700, %627
  %731 = phi float [ %656, %627 ], [ %727, %700 ]
  %732 = phi float [ %657, %627 ], [ %728, %700 ]
  %733 = phi float [ %658, %627 ], [ %729, %700 ]
  %734 = phi float [ %645, %627 ], [ %701, %700 ]
  %735 = phi float [ %645, %627 ], [ %702, %700 ]
  %736 = phi float [ %645, %627 ], [ %703, %700 ]
  br i1 %205, label %737, label %935, !dx.controlflow.hints !89

; <label>:737                                     ; preds = %730
  %738 = extractvalue %dx.types.CBufRet.f32 %621, 0
  %739 = fmul fast float %738, %623
  %740 = fsub fast float %618, %731
  %741 = fsub fast float %619, %732
  %742 = fsub fast float %620, %733
  %743 = fmul fast float %739, %740
  %744 = fmul fast float %739, %741
  %745 = fmul fast float %739, %742
  %746 = fadd fast float %743, %731
  %747 = fadd fast float %744, %732
  %748 = fadd fast float %745, %733
  %749 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %734)  ; FMax(a,b)
  %750 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %735)  ; FMax(a,b)
  %751 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %736)  ; FMax(a,b)
  %752 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %617)  ; FMax(a,b)
  %753 = call float @dx.op.binary.f32(i32 35, float %616, float %626)  ; FMax(a,b)
  %754 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %753)  ; FMax(a,b)
  %755 = fdiv fast float %616, %754
  %756 = call float @dx.op.unary.f32(i32 7, float %755)  ; Saturate(value)
  %757 = fdiv fast float %626, %754
  %758 = call float @dx.op.unary.f32(i32 7, float %757)  ; Saturate(value)
  %759 = fcmp fast une float %752, 1.000000e+00
  br i1 %759, label %760, label %773, !dx.controlflow.hints !90

; <label>:760                                     ; preds = %737
  %761 = call float @dx.op.unary.f32(i32 23, float %752)  ; Log(value)
  %762 = fmul fast float %761, 0x3FE62E4300000000
  %763 = fmul fast float %618, %762
  %764 = fsub fast float -0.000000e+00, %763
  %765 = fmul fast float %619, %762
  %766 = fsub fast float -0.000000e+00, %765
  %767 = fmul fast float %620, %762
  %768 = fsub fast float -0.000000e+00, %767
  %769 = fsub fast float 1.000000e+00, %752
  %770 = fdiv fast float %764, %769
  %771 = fdiv fast float %766, %769
  %772 = fdiv fast float %768, %769
  br label %773

; <label>:773                                     ; preds = %760, %737
  %774 = phi float [ %770, %760 ], [ %618, %737 ]
  %775 = phi float [ %771, %760 ], [ %619, %737 ]
  %776 = phi float [ %772, %760 ], [ %620, %737 ]
  %777 = phi float [ %762, %760 ], [ 0.000000e+00, %737 ]
  %778 = fcmp fast une float %749, 1.000000e+00
  br i1 %778, label %779, label %786, !dx.controlflow.hints !91

; <label>:779                                     ; preds = %773
  %780 = call float @dx.op.unary.f32(i32 23, float %749)  ; Log(value)
  %781 = fmul fast float %780, 0x3FE62E4300000000
  %782 = fmul fast float %746, %781
  %783 = fsub fast float -0.000000e+00, %782
  %784 = fsub fast float 1.000000e+00, %749
  %785 = fdiv fast float %783, %784
  br label %786

; <label>:786                                     ; preds = %779, %773
  %787 = phi float [ %785, %779 ], [ %746, %773 ]
  %788 = phi float [ %781, %779 ], [ 0.000000e+00, %773 ]
  %789 = fcmp fast une float %750, 1.000000e+00
  br i1 %789, label %790, label %797, !dx.controlflow.hints !91

; <label>:790                                     ; preds = %786
  %791 = call float @dx.op.unary.f32(i32 23, float %750)  ; Log(value)
  %792 = fmul fast float %791, 0x3FE62E4300000000
  %793 = fmul fast float %747, %792
  %794 = fsub fast float -0.000000e+00, %793
  %795 = fsub fast float 1.000000e+00, %750
  %796 = fdiv fast float %794, %795
  br label %797

; <label>:797                                     ; preds = %790, %786
  %798 = phi float [ %796, %790 ], [ %747, %786 ]
  %799 = phi float [ %792, %790 ], [ 0.000000e+00, %786 ]
  %800 = fcmp fast une float %751, 1.000000e+00
  br i1 %800, label %801, label %808, !dx.controlflow.hints !91

; <label>:801                                     ; preds = %797
  %802 = call float @dx.op.unary.f32(i32 23, float %751)  ; Log(value)
  %803 = fmul fast float %802, 0x3FE62E4300000000
  %804 = fmul fast float %748, %803
  %805 = fsub fast float -0.000000e+00, %804
  %806 = fsub fast float 1.000000e+00, %751
  %807 = fdiv fast float %805, %806
  br label %808

; <label>:808                                     ; preds = %801, %797
  %809 = phi float [ %807, %801 ], [ %748, %797 ]
  %810 = phi float [ %803, %801 ], [ 0.000000e+00, %797 ]
  %811 = fmul fast float %774, %758
  %812 = fmul fast float %775, %758
  %813 = fmul fast float %776, %758
  %814 = fmul fast float %777, %758
  %815 = fmul fast float %787, %756
  %816 = fmul fast float %798, %756
  %817 = fmul fast float %809, %756
  %818 = fmul fast float %788, %756
  %819 = fmul fast float %799, %756
  %820 = fmul fast float %810, %756
  %821 = fadd fast float %815, %811
  %822 = fadd fast float %816, %812
  %823 = fadd fast float %817, %813
  %824 = fadd fast float %818, %814
  %825 = fadd fast float %819, %814
  %826 = fadd fast float %820, %814
  %827 = fcmp fast une float %824, 0.000000e+00
  br i1 %827, label %828, label %835, !dx.controlflow.hints !92

; <label>:828                                     ; preds = %808
  %829 = fmul fast float %824, 0x3FF7154760000000
  %830 = call float @dx.op.unary.f32(i32 21, float %829)  ; Exp(value)
  %831 = fsub fast float 1.000000e+00, %830
  %832 = fmul fast float %821, %831
  %833 = fsub fast float -0.000000e+00, %832
  %834 = fdiv fast float %833, %824
  br label %835

; <label>:835                                     ; preds = %828, %808
  %836 = phi float [ %830, %828 ], [ 1.000000e+00, %808 ]
  %837 = phi float [ %834, %828 ], [ %821, %808 ]
  %838 = fcmp fast une float %825, 0.000000e+00
  br i1 %838, label %839, label %846, !dx.controlflow.hints !92

; <label>:839                                     ; preds = %835
  %840 = fmul fast float %825, 0x3FF7154760000000
  %841 = call float @dx.op.unary.f32(i32 21, float %840)  ; Exp(value)
  %842 = fsub fast float 1.000000e+00, %841
  %843 = fmul fast float %822, %842
  %844 = fsub fast float -0.000000e+00, %843
  %845 = fdiv fast float %844, %825
  br label %846

; <label>:846                                     ; preds = %839, %835
  %847 = phi float [ %841, %839 ], [ 1.000000e+00, %835 ]
  %848 = phi float [ %845, %839 ], [ %822, %835 ]
  %849 = fcmp fast une float %826, 0.000000e+00
  br i1 %849, label %850, label %857, !dx.controlflow.hints !92

; <label>:850                                     ; preds = %846
  %851 = fmul fast float %826, 0x3FF7154760000000
  %852 = call float @dx.op.unary.f32(i32 21, float %851)  ; Exp(value)
  %853 = fsub fast float 1.000000e+00, %852
  %854 = fmul fast float %823, %853
  %855 = fsub fast float -0.000000e+00, %854
  %856 = fdiv fast float %855, %826
  br label %857

; <label>:857                                     ; preds = %850, %846
  %858 = phi float [ %852, %850 ], [ 1.000000e+00, %846 ]
  %859 = phi float [ %856, %850 ], [ %823, %846 ]
  %860 = fcmp fast ogt float %756, %758
  br i1 %860, label %861, label %881, !dx.controlflow.hints !93

; <label>:861                                     ; preds = %857
  %862 = fsub fast float 1.000000e+00, %758
  %863 = fmul fast float %774, %862
  %864 = fmul fast float %775, %862
  %865 = fmul fast float %776, %862
  %866 = fmul fast float %777, %862
  %867 = fcmp fast une float %866, 0.000000e+00
  br i1 %867, label %868, label %919, !dx.controlflow.hints !94

; <label>:868                                     ; preds = %861
  %869 = fmul fast float %866, 0x3FF7154760000000
  %870 = call float @dx.op.unary.f32(i32 21, float %869)  ; Exp(value)
  %871 = fsub fast float 1.000000e+00, %870
  %872 = fmul fast float %863, %871
  %873 = fsub fast float -0.000000e+00, %872
  %874 = fmul fast float %864, %871
  %875 = fsub fast float -0.000000e+00, %874
  %876 = fmul fast float %865, %871
  %877 = fsub fast float -0.000000e+00, %876
  %878 = fdiv fast float %873, %866
  %879 = fdiv fast float %875, %866
  %880 = fdiv fast float %877, %866
  br label %919

; <label>:881                                     ; preds = %857
  %882 = fsub fast float 1.000000e+00, %756
  %883 = fmul fast float %787, %882
  %884 = fmul fast float %798, %882
  %885 = fmul fast float %809, %882
  %886 = fmul fast float %788, %882
  %887 = fmul fast float %799, %882
  %888 = fmul fast float %810, %882
  %889 = fcmp fast une float %886, 0.000000e+00
  br i1 %889, label %890, label %897, !dx.controlflow.hints !92

; <label>:890                                     ; preds = %881
  %891 = fmul fast float %886, 0x3FF7154760000000
  %892 = call float @dx.op.unary.f32(i32 21, float %891)  ; Exp(value)
  %893 = fsub fast float 1.000000e+00, %892
  %894 = fmul fast float %883, %893
  %895 = fsub fast float -0.000000e+00, %894
  %896 = fdiv fast float %895, %886
  br label %897

; <label>:897                                     ; preds = %890, %881
  %898 = phi float [ %896, %890 ], [ %883, %881 ]
  %899 = phi float [ %892, %890 ], [ 1.000000e+00, %881 ]
  %900 = fcmp fast une float %887, 0.000000e+00
  br i1 %900, label %901, label %908, !dx.controlflow.hints !92

; <label>:901                                     ; preds = %897
  %902 = fmul fast float %887, 0x3FF7154760000000
  %903 = call float @dx.op.unary.f32(i32 21, float %902)  ; Exp(value)
  %904 = fsub fast float 1.000000e+00, %903
  %905 = fmul fast float %884, %904
  %906 = fsub fast float -0.000000e+00, %905
  %907 = fdiv fast float %906, %887
  br label %908

; <label>:908                                     ; preds = %901, %897
  %909 = phi float [ %907, %901 ], [ %884, %897 ]
  %910 = phi float [ %903, %901 ], [ 1.000000e+00, %897 ]
  %911 = fcmp fast une float %888, 0.000000e+00
  br i1 %911, label %912, label %919, !dx.controlflow.hints !92

; <label>:912                                     ; preds = %908
  %913 = fmul fast float %888, 0x3FF7154760000000
  %914 = call float @dx.op.unary.f32(i32 21, float %913)  ; Exp(value)
  %915 = fsub fast float 1.000000e+00, %914
  %916 = fmul fast float %885, %915
  %917 = fsub fast float -0.000000e+00, %916
  %918 = fdiv fast float %917, %888
  br label %919

; <label>:919                                     ; preds = %912, %908, %868, %861
  %920 = phi float [ %918, %912 ], [ %880, %868 ], [ %865, %861 ], [ %885, %908 ]
  %921 = phi float [ %909, %912 ], [ %879, %868 ], [ %864, %861 ], [ %909, %908 ]
  %922 = phi float [ %898, %912 ], [ %878, %868 ], [ %863, %861 ], [ %898, %908 ]
  %923 = phi float [ %914, %912 ], [ %870, %868 ], [ 1.000000e+00, %861 ], [ 1.000000e+00, %908 ]
  %924 = phi float [ %910, %912 ], [ %870, %868 ], [ 1.000000e+00, %861 ], [ %910, %908 ]
  %925 = phi float [ %899, %912 ], [ %870, %868 ], [ 1.000000e+00, %861 ], [ %899, %908 ]
  %926 = fmul fast float %925, %837
  %927 = fmul fast float %924, %848
  %928 = fmul fast float %923, %859
  %929 = fadd fast float %926, %922
  %930 = fadd fast float %927, %921
  %931 = fadd fast float %928, %920
  %932 = fmul fast float %925, %836
  %933 = fmul fast float %924, %847
  %934 = fmul fast float %923, %858
  br label %935

; <label>:935                                     ; preds = %919, %730
  %936 = phi float [ %934, %919 ], [ %736, %730 ]
  %937 = phi float [ %933, %919 ], [ %735, %730 ]
  %938 = phi float [ %932, %919 ], [ %734, %730 ]
  %939 = phi float [ %931, %919 ], [ %733, %730 ]
  %940 = phi float [ %930, %919 ], [ %732, %730 ]
  %941 = phi float [ %929, %919 ], [ %731, %730 ]
  %942 = fmul fast float %50, %101
  %943 = fmul fast float %51, %102
  %944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %19, float %942, float %943, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %945 = extractvalue %dx.types.ResRet.f32 %944, 0
  %946 = extractvalue %dx.types.ResRet.f32 %944, 1
  %947 = extractvalue %dx.types.ResRet.f32 %944, 2
  %948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %949 = extractvalue %dx.types.CBufRet.f32 %948, 1
  %950 = fmul fast float %949, %945
  %951 = fmul fast float %949, %946
  %952 = fmul fast float %949, %947
  %953 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %942, float %943, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %954 = extractvalue %dx.types.ResRet.f32 %953, 0
  %955 = fmul fast float %954, %938
  %956 = fmul fast float %954, %937
  %957 = fmul fast float %954, %936
  %958 = fmul fast float %954, %941
  %959 = fmul fast float %954, %940
  %960 = fmul fast float %954, %939
  %961 = fadd fast float %958, %950
  %962 = fadd fast float %959, %951
  %963 = fadd fast float %960, %952
  br label %964

; <label>:964                                     ; preds = %935, %0
  %965 = phi float [ %961, %935 ], [ 0.000000e+00, %0 ]
  %966 = phi float [ %962, %935 ], [ 0.000000e+00, %0 ]
  %967 = phi float [ %963, %935 ], [ 0.000000e+00, %0 ]
  %968 = phi float [ %955, %935 ], [ 1.000000e+00, %0 ]
  %969 = phi float [ %956, %935 ], [ 1.000000e+00, %0 ]
  %970 = phi float [ %957, %935 ], [ 1.000000e+00, %0 ]
  %971 = phi float [ %106, %935 ], [ %67, %0 ]
  %972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %973 = extractvalue %dx.types.CBufRet.f32 %972, 2
  %974 = extractvalue %dx.types.CBufRet.f32 %972, 3
  %975 = fmul fast float %973, %101
  %976 = fmul fast float %974, %102
  %977 = call float @dx.op.unary.f32(i32 7, float %975)  ; Saturate(value)
  %978 = call float @dx.op.unary.f32(i32 7, float %976)  ; Saturate(value)
  %979 = select i1 %98, i32 2, i32 0
  %980 = or i32 %979, 1
  %981 = uitofp i32 %980 to float
  %982 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %19, float %977, float %978, float %981, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %983 = extractvalue %dx.types.ResRet.f32 %982, 0
  %984 = extractvalue %dx.types.ResRet.f32 %982, 1
  %985 = extractvalue %dx.types.ResRet.f32 %982, 2
  %986 = extractvalue %dx.types.ResRet.f32 %982, 3
  %987 = add nuw nsw i32 %979, 2
  %988 = uitofp i32 %987 to float
  %989 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %19, float %977, float %978, float %988, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %990 = extractvalue %dx.types.ResRet.f32 %989, 0
  %991 = extractvalue %dx.types.ResRet.f32 %989, 1
  %992 = extractvalue %dx.types.ResRet.f32 %989, 2
  %993 = extractvalue %dx.types.ResRet.f32 %989, 3
  %994 = call float @dx.op.binary.f32(i32 35, float %984, float %985)  ; FMax(a,b)
  %995 = call float @dx.op.binary.f32(i32 35, float %983, float %994)  ; FMax(a,b)
  %996 = call float @dx.op.binary.f32(i32 35, float %995, float %986)  ; FMax(a,b)
  %997 = call float @dx.op.binary.f32(i32 36, float %991, float %992)  ; FMin(a,b)
  %998 = call float @dx.op.binary.f32(i32 36, float %990, float %997)  ; FMin(a,b)
  %999 = call float @dx.op.binary.f32(i32 36, float %998, float %993)  ; FMin(a,b)
  %1000 = fmul fast float %996, 2.550000e+02
  %1001 = fadd fast float %1000, 0x3F70101020000000
  %1002 = fptoui float %1001 to i32
  %1003 = fmul fast float %999, 2.550000e+02
  %1004 = fadd fast float %1003, 0x3F70101020000000
  %1005 = fptoui float %1004 to i32
  %1006 = icmp ult i32 %1002, %1005
  br i1 %1006, label %1007, label %1175, !dx.controlflow.hints !95

; <label>:1007                                    ; preds = %964
  %1008 = fadd fast float %971, -4.000000e+00
  %1009 = call float @dx.op.binary.f32(i32 35, float %1008, float 0.000000e+00)  ; FMax(a,b)
  %1010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1011 = extractvalue %dx.types.CBufRet.f32 %1010, 0
  %1012 = fadd fast float %1011, %1009
  %1013 = extractvalue %dx.types.CBufRet.f32 %1010, 2
  %1014 = fmul fast float %1012, %1013
  %1015 = call float @dx.op.unary.f32(i32 23, float %1014)  ; Log(value)
  %1016 = extractvalue %dx.types.CBufRet.f32 %1010, 3
  %1017 = fmul fast float %1016, %1015
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 2
  %1020 = fmul fast float %1017, %1019
  %1021 = call float @dx.op.unary.f32(i32 7, float %1020)  ; Saturate(value)
  %1022 = select i1 %100, float 1.000000e+00, float %1021
  %1023 = uitofp i32 %1002 to float
  %1024 = uitofp i32 %1005 to float
  %1025 = fadd fast float %1023, 5.000000e-01
  %1026 = fadd fast float %1024, 5.000000e-01
  %1027 = fmul fast float %1019, %1025
  %1028 = fmul fast float %1019, %1026
  %1029 = fadd fast float %1027, 0x3F0FFB4800000000
  %1030 = fadd fast float %1028, 0xBF0FFB4800000000
  %1031 = call float @dx.op.binary.f32(i32 35, float %1022, float %1029)  ; FMax(a,b)
  %1032 = call float @dx.op.binary.f32(i32 36, float %1031, float %1030)  ; FMin(a,b)
  %1033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1034 = extractvalue %dx.types.CBufRet.f32 %1033, 1
  %1035 = extractvalue %dx.types.CBufRet.f32 %1033, 2
  %1036 = extractvalue %dx.types.CBufRet.f32 %1033, 0
  %1037 = select i1 %98, float %1036, float 0.000000e+00
  %1038 = fmul fast float %1034, %1032
  %1039 = fadd fast float %1037, %1038
  %1040 = fadd fast float %1037, %1035
  %1041 = fsub fast float %1034, %1035
  %1042 = fadd fast float %1041, %1037
  %1043 = call float @dx.op.binary.f32(i32 35, float %1039, float %1040)  ; FMax(a,b)
  %1044 = call float @dx.op.binary.f32(i32 36, float %1043, float %1042)  ; FMin(a,b)
  %1045 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %18, float %977, float %978, float %1044, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1046 = extractvalue %dx.types.ResRet.f32 %1045, 0
  %1047 = extractvalue %dx.types.ResRet.f32 %1045, 1
  %1048 = extractvalue %dx.types.ResRet.f32 %1045, 2
  %1049 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %1050 = extractvalue %dx.types.CBufRet.i32 %1049, 0
  %1051 = extractvalue %dx.types.CBufRet.i32 %1049, 1
  %1052 = uitofp i32 %1050 to float
  %1053 = uitofp i32 %1051 to float
  %1054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %1055 = extractvalue %dx.types.CBufRet.f32 %1054, 0
  %1056 = extractvalue %dx.types.CBufRet.f32 %1054, 1
  %1057 = fmul fast float %1052, %977
  %1058 = fmul fast float %1053, %978
  %1059 = fadd fast float %1057, -5.000000e-01
  %1060 = fadd fast float %1058, -5.000000e-01
  %1061 = call float @dx.op.unary.f32(i32 22, float %1059)  ; Frc(value)
  %1062 = call float @dx.op.unary.f32(i32 22, float %1060)  ; Frc(value)
  %1063 = fmul fast float %1061, %1061
  %1064 = fmul fast float %1063, %1061
  %1065 = fsub fast float 3.000000e+00, %1061
  %1066 = fmul fast float %1063, %1065
  %1067 = fmul fast float %1061, 3.000000e+00
  %1068 = fmul fast float %1064, 3.000000e+00
  %1069 = fmul fast float %1063, 6.000000e+00
  %1070 = fsub fast float %1068, %1069
  %1071 = fadd fast float %1070, 4.000000e+00
  %1072 = fmul fast float %1071, 0x3FC5555560000000
  %1073 = fmul fast float %1064, -3.000000e+00
  %1074 = fadd fast float %1063, %1061
  %1075 = fmul fast float %1074, 3.000000e+00
  %1076 = fadd fast float %1073, 1.000000e+00
  %1077 = fadd fast float %1076, %1075
  %1078 = fmul fast float %1064, 0x3FC5555560000000
  %1079 = fmul fast float %1062, %1062
  %1080 = fmul fast float %1079, %1062
  %1081 = fsub fast float 3.000000e+00, %1062
  %1082 = fmul fast float %1079, %1081
  %1083 = fmul fast float %1062, 3.000000e+00
  %1084 = fmul fast float %1080, 3.000000e+00
  %1085 = fmul fast float %1079, 6.000000e+00
  %1086 = fsub fast float %1084, %1085
  %1087 = fadd fast float %1086, 4.000000e+00
  %1088 = fmul fast float %1087, 0x3FC5555560000000
  %1089 = fmul fast float %1080, -3.000000e+00
  %1090 = fadd fast float %1079, %1062
  %1091 = fmul fast float %1090, 3.000000e+00
  %1092 = fadd fast float %1089, 1.000000e+00
  %1093 = fadd fast float %1092, %1091
  %1094 = fmul fast float %1080, 0x3FC5555560000000
  %1095 = fadd fast float %1061, 1.000000e+00
  %1096 = fsub fast float 1.000000e+00, %1067
  %1097 = fadd fast float %1096, %1066
  %1098 = fadd fast float %1097, %1071
  %1099 = fmul fast float %1098, 0x3FC5555560000000
  %1100 = fdiv fast float %1072, %1099
  %1101 = fsub fast float %1095, %1100
  %1102 = fsub fast float 1.000000e+00, %1061
  %1103 = fadd fast float %1077, %1064
  %1104 = fmul fast float %1103, 0x3FC5555560000000
  %1105 = fdiv fast float %1078, %1104
  %1106 = fadd fast float %1102, %1105
  %1107 = fadd fast float %1062, 1.000000e+00
  %1108 = fsub fast float 1.000000e+00, %1083
  %1109 = fadd fast float %1108, %1082
  %1110 = fadd fast float %1109, %1087
  %1111 = fmul fast float %1110, 0x3FC5555560000000
  %1112 = fdiv fast float %1088, %1111
  %1113 = fsub fast float %1107, %1112
  %1114 = fsub fast float 1.000000e+00, %1062
  %1115 = fadd fast float %1093, %1080
  %1116 = fmul fast float %1115, 0x3FC5555560000000
  %1117 = fdiv fast float %1094, %1116
  %1118 = fadd fast float %1117, %1114
  %1119 = fmul fast float %1101, %1055
  %1120 = fsub fast float %977, %1119
  %1121 = fmul fast float %1106, %1055
  %1122 = fadd fast float %1121, %977
  %1123 = fmul fast float %1118, %1056
  %1124 = fadd fast float %1123, %978
  %1125 = fmul fast float %1113, %1056
  %1126 = fsub fast float %978, %1125
  %1127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %18, float %1120, float %1126, float %1044, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1128 = extractvalue %dx.types.ResRet.f32 %1127, 0
  %1129 = extractvalue %dx.types.ResRet.f32 %1127, 1
  %1130 = extractvalue %dx.types.ResRet.f32 %1127, 2
  %1131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %18, float %1122, float %1126, float %1044, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1132 = extractvalue %dx.types.ResRet.f32 %1131, 0
  %1133 = extractvalue %dx.types.ResRet.f32 %1131, 1
  %1134 = extractvalue %dx.types.ResRet.f32 %1131, 2
  %1135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %18, float %1120, float %1124, float %1044, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1136 = extractvalue %dx.types.ResRet.f32 %1135, 0
  %1137 = extractvalue %dx.types.ResRet.f32 %1135, 1
  %1138 = extractvalue %dx.types.ResRet.f32 %1135, 2
  %1139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %18, float %1122, float %1124, float %1044, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1140 = extractvalue %dx.types.ResRet.f32 %1139, 0
  %1141 = extractvalue %dx.types.ResRet.f32 %1139, 1
  %1142 = extractvalue %dx.types.ResRet.f32 %1139, 2
  %1143 = fsub fast float %1136, %1128
  %1144 = fsub fast float %1137, %1129
  %1145 = fsub fast float %1138, %1130
  %1146 = fmul fast float %1143, %1116
  %1147 = fmul fast float %1144, %1116
  %1148 = fmul fast float %1145, %1116
  %1149 = fadd fast float %1146, %1128
  %1150 = fadd fast float %1147, %1129
  %1151 = fadd fast float %1148, %1130
  %1152 = fsub fast float %1140, %1132
  %1153 = fsub fast float %1141, %1133
  %1154 = fsub fast float %1142, %1134
  %1155 = fmul fast float %1152, %1116
  %1156 = fmul fast float %1153, %1116
  %1157 = fmul fast float %1154, %1116
  %1158 = fsub fast float %1132, %1149
  %1159 = fadd fast float %1158, %1155
  %1160 = fsub fast float %1133, %1150
  %1161 = fadd fast float %1160, %1156
  %1162 = fsub fast float %1134, %1151
  %1163 = fadd fast float %1162, %1157
  %1164 = fmul fast float %1159, %1104
  %1165 = fmul fast float %1161, %1104
  %1166 = fmul fast float %1163, %1104
  %1167 = fadd fast float %1164, %1149
  %1168 = fadd fast float %1165, %1150
  %1169 = fadd fast float %1166, %1151
  %1170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1171 = extractvalue %dx.types.CBufRet.f32 %1170, 1
  %1172 = fmul fast float %1167, %1171
  %1173 = fmul fast float %1168, %1171
  %1174 = fmul fast float %1169, %1171
  br label %1175

; <label>:1175                                    ; preds = %1007, %964
  %1176 = phi float [ %1046, %1007 ], [ 1.000000e+00, %964 ]
  %1177 = phi float [ %1047, %1007 ], [ 1.000000e+00, %964 ]
  %1178 = phi float [ %1048, %1007 ], [ 1.000000e+00, %964 ]
  %1179 = phi float [ %1172, %1007 ], [ 0.000000e+00, %964 ]
  %1180 = phi float [ %1173, %1007 ], [ 0.000000e+00, %964 ]
  %1181 = phi float [ %1174, %1007 ], [ 0.000000e+00, %964 ]
  %1182 = fmul fast float %1176, %968
  %1183 = fmul fast float %1177, %969
  %1184 = fmul fast float %1178, %970
  %1185 = fmul fast float %1176, %965
  %1186 = fmul fast float %1177, %966
  %1187 = fmul fast float %1178, %967
  %1188 = fadd fast float %1179, %1185
  %1189 = fadd fast float %1180, %1186
  %1190 = fadd fast float %1181, %1187
  %1191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1192 = extractvalue %dx.types.CBufRet.f32 %1191, 2
  %1193 = fmul fast float %1192, 0x3FE3C6EF40000000
  %1194 = frem fast float %47, 2.560000e+02
  %1195 = frem fast float %48, 2.560000e+02
  %1196 = fptoui float %1194 to i32
  %1197 = fptoui float %1195 to i32
  %1198 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %1196, i32 %1197, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1199 = extractvalue %dx.types.ResRet.f32 %1198, 0
  %1200 = fadd fast float %1199, %1193
  %1201 = call float @dx.op.unary.f32(i32 22, float %1200)  ; Frc(value)
  %1202 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 %45, i32 %46, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1203 = extractvalue %dx.types.ResRet.f32 %1202, 0
  %1204 = extractvalue %dx.types.ResRet.f32 %1202, 1
  %1205 = extractvalue %dx.types.ResRet.f32 %1202, 2
  %1206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1207 = extractvalue %dx.types.CBufRet.i32 %1206, 3
  %1208 = and i32 %1207, 3
  %1209 = icmp ne i32 %1208, 0
  %1210 = and i32 %1207, 4
  %1211 = icmp ne i32 %1210, 0
  %1212 = and i1 %1209, %1211
  br i1 %1212, label %1213, label %1222, !dx.controlflow.hints !96

; <label>:1213                                    ; preds = %1175
  %1214 = fmul fast float %51, %102
  %1215 = fmul fast float %50, %101
  %1216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %1215, float %1214, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1217 = extractvalue %dx.types.ResRet.f32 %1216, 0
  %1218 = fsub fast float 1.000000e+00, %1217
  %1219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1220 = extractvalue %dx.types.CBufRet.f32 %1219, 0
  %1221 = fcmp fast olt float %1218, %1220
  br label %1225

; <label>:1222                                    ; preds = %1175
  %1223 = icmp eq i32 %1210, 0
  %1224 = and i1 %1209, %1223
  br label %1225

; <label>:1225                                    ; preds = %1222, %1213
  %1226 = phi i1 [ %1221, %1213 ], [ %1224, %1222 ]
  %1227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1228 = extractvalue %dx.types.CBufRet.f32 %1227, 0
  br i1 %1226, label %1229, label %1248, !dx.controlflow.hints !97

; <label>:1229                                    ; preds = %1225
  %1230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1231 = extractvalue %dx.types.CBufRet.f32 %1230, 3
  %1232 = call float @dx.op.dot3.f32(i32 55, float %1182, float %1183, float %1184, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1233 = fmul fast float %1232, %1203
  %1234 = call float @dx.op.dot3.f32(i32 55, float %1188, float %1189, float %1190, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1235 = fmul fast float %1228, %1234
  %1236 = fadd fast float %1235, %1233
  br i1 %1212, label %1237, label %1243, !dx.controlflow.hints !98

; <label>:1237                                    ; preds = %1229
  %1238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1239 = extractvalue %dx.types.CBufRet.f32 %1238, 1
  %1240 = fadd fast float %1182, -1.000000e+00
  %1241 = fmul fast float %1239, %1240
  %1242 = fadd fast float %1241, 1.000000e+00
  br label %1243

; <label>:1243                                    ; preds = %1237, %1229
  %1244 = phi float [ %1242, %1237 ], [ %1182, %1229 ]
  %1245 = fsub fast float %1204, %1231
  %1246 = fmul fast float %1244, %1245
  %1247 = fadd fast float %1246, %1231
  br label %1258

; <label>:1248                                    ; preds = %1225
  %1249 = fmul fast float %1203, %1182
  %1250 = fmul fast float %1204, %1183
  %1251 = fmul fast float %1205, %1184
  %1252 = fmul fast float %1228, %1188
  %1253 = fmul fast float %1228, %1189
  %1254 = fmul fast float %1228, %1190
  %1255 = fadd fast float %1252, %1249
  %1256 = fadd fast float %1253, %1250
  %1257 = fadd fast float %1254, %1251
  br label %1258

; <label>:1258                                    ; preds = %1248, %1243
  %1259 = phi float [ %1236, %1243 ], [ %1255, %1248 ]
  %1260 = phi float [ %1247, %1243 ], [ %1256, %1248 ]
  %1261 = phi float [ %1205, %1243 ], [ %1257, %1248 ]
  %1262 = lshr i32 %43, 2
  %1263 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1264 = extractvalue %dx.types.CBufRet.i32 %1263, 1
  %1265 = shl i32 %1264, 1
  %1266 = lshr i32 %44, 4
  %1267 = and i32 %1266, 134217727
  %1268 = extractvalue %dx.types.CBufRet.i32 %1263, 0
  %1269 = mul i32 %1268, %1267
  %1270 = lshr i32 %43, 5
  %1271 = and i32 %1270, 67108863
  %1272 = add i32 %1265, %1271
  %1273 = add i32 %1272, %1269
  %1274 = shl i32 %1273, 2
  %1275 = and i32 %46, 24
  %1276 = and i32 %1262, 7
  %1277 = or i32 %1275, %1276
  %1278 = shl i32 1, %1277
  %1279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.i32 %1279, 0
  %1281 = and i32 %1280, %1278
  %1282 = icmp eq i32 %1281, 0
  br i1 %1282, label %1298, label %1283, !dx.controlflow.hints !99

; <label>:1283                                    ; preds = %1258
  %1284 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %45, i32 %46, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1285 = extractvalue %dx.types.ResRet.f32 %1284, 0
  %1286 = fcmp fast ogt float %1285, 0.000000e+00
  br i1 %1286, label %1287, label %1298, !dx.controlflow.hints !100

; <label>:1287                                    ; preds = %1283
  %1288 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %45, i32 %46, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1289 = extractvalue %dx.types.ResRet.f32 %1288, 0
  %1290 = extractvalue %dx.types.ResRet.f32 %1288, 1
  %1291 = extractvalue %dx.types.ResRet.f32 %1288, 2
  %1292 = extractvalue %dx.types.ResRet.f32 %1288, 3
  %1293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %1294 = extractvalue %dx.types.CBufRet.f32 %1293, 2
  %1295 = fmul fast float %1294, %1289
  %1296 = fmul fast float %1294, %1290
  %1297 = fmul fast float %1294, %1291
  br label %1298

; <label>:1298                                    ; preds = %1287, %1283, %1258
  %1299 = phi float [ %1295, %1287 ], [ 0.000000e+00, %1283 ], [ 0.000000e+00, %1258 ]
  %1300 = phi float [ %1296, %1287 ], [ 0.000000e+00, %1283 ], [ 0.000000e+00, %1258 ]
  %1301 = phi float [ %1297, %1287 ], [ 0.000000e+00, %1283 ], [ 0.000000e+00, %1258 ]
  %1302 = phi float [ %1292, %1287 ], [ 0.000000e+00, %1283 ], [ 0.000000e+00, %1258 ]
  %1303 = fsub fast float 1.000000e+00, %1302
  %1304 = fmul fast float %1303, %1259
  %1305 = fmul fast float %1303, %1260
  %1306 = fmul fast float %1303, %1261
  %1307 = fadd fast float %1304, %1299
  %1308 = fadd fast float %1305, %1300
  %1309 = fadd fast float %1306, %1301
  %1310 = fadd fast float %1201, 0x3FE3C6EF40000000
  %1311 = call float @dx.op.unary.f32(i32 22, float %1310)  ; Frc(value)
  %1312 = call float @dx.op.unary.f32(i32 23, float %1307)  ; Log(value)
  %1313 = fadd fast float %1312, -7.000000e+00
  %1314 = call float @dx.op.unary.f32(i32 21, float %1313)  ; Exp(value)
  %1315 = fmul fast float %1311, 2.000000e+00
  %1316 = fadd fast float %1315, -1.000000e+00
  %1317 = fmul fast float %1314, %1316
  %1318 = fcmp fast ogt float %1307, 0.000000e+00
  %1319 = select i1 %1318, float %1317, float 0.000000e+00
  %1320 = fadd fast float %1319, %1307
  %1321 = fadd fast float %1201, 0x3FF3C6EF40000000
  %1322 = call float @dx.op.unary.f32(i32 22, float %1321)  ; Frc(value)
  %1323 = call float @dx.op.unary.f32(i32 23, float %1308)  ; Log(value)
  %1324 = fadd fast float %1323, -7.000000e+00
  %1325 = call float @dx.op.unary.f32(i32 21, float %1324)  ; Exp(value)
  %1326 = fmul fast float %1322, 2.000000e+00
  %1327 = fadd fast float %1326, -1.000000e+00
  %1328 = fmul fast float %1325, %1327
  %1329 = fcmp fast ogt float %1308, 0.000000e+00
  %1330 = select i1 %1329, float %1328, float 0.000000e+00
  %1331 = fadd fast float %1330, %1308
  %1332 = fadd fast float %1201, 0x3FFDAA66E0000000
  %1333 = call float @dx.op.unary.f32(i32 22, float %1332)  ; Frc(value)
  %1334 = call float @dx.op.unary.f32(i32 23, float %1309)  ; Log(value)
  %1335 = fadd fast float %1334, -6.000000e+00
  %1336 = call float @dx.op.unary.f32(i32 21, float %1335)  ; Exp(value)
  %1337 = fmul fast float %1333, 2.000000e+00
  %1338 = fadd fast float %1337, -1.000000e+00
  %1339 = fmul fast float %1336, %1338
  %1340 = fcmp fast ogt float %1309, 0.000000e+00
  %1341 = select i1 %1340, float %1339, float 0.000000e+00
  %1342 = fadd fast float %1341, %1309
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %45, i32 %46, i32 undef, float %1320, float %1331, float %1342, float %1320, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1343 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1344 = extractvalue %dx.types.CBufRet.i32 %1343, 0
  %1345 = and i32 %1344, 1
  %1346 = icmp eq i32 %1345, 0
  br i1 %1346, label %1350, label %1347, !dx.controlflow.hints !101

; <label>:1347                                    ; preds = %1298
  %1348 = and i32 %43, 2147483647
  %1349 = and i32 %44, 2147483647
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1348, i32 %1349, i32 undef, float %1203, float %1204, float %1205, float %1203, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1350

; <label>:1350                                    ; preds = %1347, %1298
  br label %1351

; <label>:1351                                    ; preds = %1370, %1350
  %1352 = phi i32 [ %1357, %1370 ], [ 14, %1350 ]
  %1353 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1352)  ; FirstbitLo(value)
  %1354 = and i32 %1353, 31
  %1355 = shl i32 1, %1354
  %1356 = xor i32 %1355, -1
  %1357 = and i32 %1352, %1356
  %1358 = and i32 %1353, 1
  %1359 = lshr i32 %1353, 1
  %1360 = or i32 %1358, %45
  %1361 = add i32 %1359, %46
  %1362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1363 = extractvalue %dx.types.CBufRet.f32 %1362, 0
  %1364 = fptoui float %1363 to i32
  %1365 = icmp uge i32 %1360, %1364
  %1366 = extractvalue %dx.types.CBufRet.f32 %1362, 1
  %1367 = fptoui float %1366 to i32
  %1368 = icmp uge i32 %1361, %1367
  %1369 = or i1 %1365, %1368
  br i1 %1369, label %1370, label %1372, !dx.controlflow.hints !102

; <label>:1370                                    ; preds = %2637, %2584, %1351
  %1371 = icmp eq i32 %1357, 0
  br i1 %1371, label %2640, label %1351

; <label>:1372                                    ; preds = %1351
  %1373 = uitofp i32 %1360 to float
  %1374 = uitofp i32 %1361 to float
  %1375 = fadd fast float %1373, 5.000000e-01
  %1376 = fadd fast float %1374, 5.000000e-01
  %1377 = extractvalue %dx.types.CBufRet.f32 %1362, 2
  %1378 = extractvalue %dx.types.CBufRet.f32 %1362, 3
  %1379 = fmul fast float %1377, %1375
  %1380 = fmul fast float %1378, %1376
  %1381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1382 = extractvalue %dx.types.CBufRet.f32 %1381, 2
  %1383 = fmul fast float %1382, 0x3FE3C6EF40000000
  %1384 = frem fast float %1373, 2.560000e+02
  %1385 = frem fast float %1374, 2.560000e+02
  %1386 = fptoui float %1384 to i32
  %1387 = fptoui float %1385 to i32
  %1388 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %1386, i32 %1387, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1389 = extractvalue %dx.types.ResRet.f32 %1388, 0
  %1390 = fadd fast float %1389, %1383
  %1391 = call float @dx.op.unary.f32(i32 22, float %1390)  ; Frc(value)
  %1392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1393 = extractvalue %dx.types.ResRet.i32 %1392, 0
  %1394 = and i32 %1393, 114688
  %1395 = icmp ne i32 %1394, 0
  %1396 = select i1 %1395, i32 %1360, i32 0
  %1397 = select i1 %1395, i32 %1361, i32 0
  %1398 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %1396, i32 %1397, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1399 = extractvalue %dx.types.ResRet.f32 %1398, 0
  %1400 = fmul fast float %1399, 2.550000e+02
  %1401 = fptoui float %1400 to i32
  %1402 = icmp eq i32 %1401, 3
  %1403 = and i1 %1395, %1402
  %1404 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 %1353
  %1405 = load float, float* %1404, align 4, !tbaa !47, !noalias !103
  %1406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1407 = extractvalue %dx.types.CBufRet.f32 %1406, 3
  %1408 = fcmp fast oge float %1405, %1407
  br i1 %1403, label %2268, label %1409, !dx.controlflow.hints !35

; <label>:1409                                    ; preds = %1372
  %1410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 170)  ; CBufferLoadLegacy(handle,regIndex)
  %1411 = extractvalue %dx.types.CBufRet.f32 %1410, 0
  %1412 = select i1 %1408, float %1411, float %1405
  %1413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1414 = extractvalue %dx.types.CBufRet.f32 %1413, 2
  %1415 = extractvalue %dx.types.CBufRet.f32 %1413, 3
  %1416 = fmul fast float %1375, 2.000000e+00
  %1417 = fmul fast float %1416, %1414
  %1418 = fmul fast float %1376, 2.000000e+00
  %1419 = fmul fast float %1418, %1415
  %1420 = fsub fast float 1.000000e+00, %1417
  %1421 = fsub fast float 1.000000e+00, %1419
  %1422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1423 = extractvalue %dx.types.CBufRet.f32 %1422, 0
  %1424 = extractvalue %dx.types.CBufRet.f32 %1422, 1
  %1425 = extractvalue %dx.types.CBufRet.f32 %1422, 2
  %1426 = fmul fast float %1420, %1423
  %1427 = fmul fast float %1420, %1424
  %1428 = fmul fast float %1420, %1425
  %1429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1430 = extractvalue %dx.types.CBufRet.f32 %1429, 0
  %1431 = extractvalue %dx.types.CBufRet.f32 %1429, 1
  %1432 = extractvalue %dx.types.CBufRet.f32 %1429, 2
  %1433 = fmul fast float %1421, %1430
  %1434 = fmul fast float %1421, %1431
  %1435 = fmul fast float %1421, %1432
  %1436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1437 = extractvalue %dx.types.CBufRet.f32 %1436, 0
  %1438 = extractvalue %dx.types.CBufRet.f32 %1436, 1
  %1439 = extractvalue %dx.types.CBufRet.f32 %1436, 2
  %1440 = fadd fast float %1433, %1437
  %1441 = fadd fast float %1440, %1426
  %1442 = fadd fast float %1434, %1438
  %1443 = fadd fast float %1442, %1427
  %1444 = fadd fast float %1435, %1439
  %1445 = fadd fast float %1444, %1428
  %1446 = fmul fast float %1441, %1412
  %1447 = fmul fast float %1443, %1412
  %1448 = fmul fast float %1445, %1412
  %1449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 163)  ; CBufferLoadLegacy(handle,regIndex)
  %1450 = extractvalue %dx.types.CBufRet.f32 %1449, 0
  %1451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1452 = extractvalue %dx.types.CBufRet.f32 %1451, 0
  %1453 = extractvalue %dx.types.CBufRet.f32 %1451, 1
  %1454 = extractvalue %dx.types.CBufRet.f32 %1451, 2
  %1455 = extractvalue %dx.types.CBufRet.f32 %1451, 3
  %1456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1457 = extractvalue %dx.types.CBufRet.f32 %1456, 0
  %1458 = extractvalue %dx.types.CBufRet.f32 %1456, 1
  %1459 = extractvalue %dx.types.CBufRet.f32 %1456, 2
  %1460 = extractvalue %dx.types.CBufRet.f32 %1456, 3
  %1461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1462 = extractvalue %dx.types.CBufRet.f32 %1461, 0
  %1463 = extractvalue %dx.types.CBufRet.f32 %1461, 1
  %1464 = extractvalue %dx.types.CBufRet.f32 %1461, 2
  %1465 = extractvalue %dx.types.CBufRet.f32 %1461, 3
  %1466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1467 = extractvalue %dx.types.CBufRet.f32 %1466, 0
  %1468 = extractvalue %dx.types.CBufRet.f32 %1466, 1
  %1469 = extractvalue %dx.types.CBufRet.f32 %1466, 2
  %1470 = extractvalue %dx.types.CBufRet.f32 %1466, 3
  %1471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1472 = extractvalue %dx.types.CBufRet.f32 %1471, 3
  %1473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1474 = extractvalue %dx.types.CBufRet.f32 %1473, 3
  %1475 = extractvalue %dx.types.CBufRet.f32 %1473, 0
  %1476 = extractvalue %dx.types.CBufRet.f32 %1473, 1
  %1477 = extractvalue %dx.types.CBufRet.f32 %1473, 2
  %1478 = fcmp fast olt float %1477, -5.000000e-01
  %1479 = extractvalue %dx.types.CBufRet.f32 %1449, 3
  %1480 = call float @dx.op.dot3.f32(i32 55, float %1446, float %1447, float %1448, float %1446, float %1447, float %1448)  ; Dot3(ax,ay,az,bx,by,bz)
  %1481 = call float @dx.op.unary.f32(i32 25, float %1480)  ; Rsqrt(value)
  %1482 = fmul fast float %1481, %1480
  %1483 = fmul fast float %1481, %1446
  %1484 = fmul fast float %1481, %1447
  %1485 = fmul fast float %1481, %1448
  %1486 = fadd fast float %1482, %1455
  br i1 %1408, label %1487, label %1499, !dx.controlflow.hints !36

; <label>:1487                                    ; preds = %1409
  %1488 = extractvalue %dx.types.CBufRet.f32 %1449, 2
  %1489 = extractvalue %dx.types.CBufRet.f32 %1449, 1
  %1490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 187)  ; CBufferLoadLegacy(handle,regIndex)
  %1491 = extractvalue %dx.types.CBufRet.f32 %1490, 1
  %1492 = extractvalue %dx.types.CBufRet.f32 %1490, 0
  %1493 = call float @dx.op.binary.f32(i32 35, float %1485, float %1492)  ; FMax(a,b)
  %1494 = call float @dx.op.binary.f32(i32 36, float %1493, float %1491)  ; FMin(a,b)
  %1495 = fmul fast float %1494, %1489
  %1496 = fadd fast float %1495, %1488
  %1497 = call float @dx.op.unary.f32(i32 7, float %1496)  ; Saturate(value)
  %1498 = fmul fast float %1485, %1450
  br label %1499

; <label>:1499                                    ; preds = %1487, %1409
  %1500 = phi float [ %1450, %1487 ], [ %1486, %1409 ]
  %1501 = phi float [ %1497, %1487 ], [ 0.000000e+00, %1409 ]
  %1502 = phi float [ %1498, %1487 ], [ %1448, %1409 ]
  %1503 = call float @dx.op.dot3.f32(i32 55, float %1483, float %1484, float %1485, float %1452, float %1453, float %1454)  ; Dot3(ax,ay,az,bx,by,bz)
  %1504 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1505 = extractvalue %dx.types.CBufRet.i32 %1504, 1
  %1506 = and i32 %1505, 1
  %1507 = icmp ne i32 %1506, 0
  %1508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1509 = extractvalue %dx.types.CBufRet.f32 %1508, 2
  %1510 = fcmp fast ogt float %1509, 0.000000e+00
  %1511 = and i1 %1507, %1510
  br i1 %1511, label %1512, label %1921, !dx.controlflow.hints !37

; <label>:1512                                    ; preds = %1499
  %1513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1514 = extractvalue %dx.types.CBufRet.f32 %1513, 3
  %1515 = select i1 %1408, float %1514, float %1482
  %1516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1517 = extractvalue %dx.types.CBufRet.f32 %1516, 3
  %1518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1519 = extractvalue %dx.types.CBufRet.f32 %1518, 2
  %1520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1521 = extractvalue %dx.types.CBufRet.f32 %1520, 2
  %1522 = fsub fast float %1519, %1521
  %1523 = and i32 %1505, 2
  %1524 = extractvalue %dx.types.CBufRet.i32 %1504, 0
  %1525 = call i32 @dx.op.binary.i32(i32 40, i32 %1524, i32 3)  ; UMin(a,b)
  %1526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1527 = extractvalue %dx.types.CBufRet.f32 %1526, 0
  %1528 = extractvalue %dx.types.CBufRet.f32 %1526, 1
  %1529 = extractvalue %dx.types.CBufRet.f32 %1520, 0
  %1530 = extractvalue %dx.types.CBufRet.f32 %1520, 1
  %1531 = fsub fast float %1527, %1529
  %1532 = fsub fast float %1528, %1530
  %1533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1534 = extractvalue %dx.types.CBufRet.f32 %1533, 0
  %1535 = fcmp fast ogt float %1534, 0.000000e+00
  %1536 = fsub fast float -0.000000e+00, %1531
  %1537 = fsub fast float -0.000000e+00, %1532
  %1538 = call float @dx.op.dot2.f32(i32 54, float %1483, float %1484, float %1483, float %1484)  ; Dot2(ax,ay,bx,by)
  %1539 = call float @dx.op.dot2.f32(i32 54, float %1483, float %1484, float %1536, float %1537)  ; Dot2(ax,ay,bx,by)
  %1540 = fmul fast float %1539, 2.000000e+00
  %1541 = call float @dx.op.dot2.f32(i32 54, float %1536, float %1537, float %1536, float %1537)  ; Dot2(ax,ay,bx,by)
  %1542 = fmul fast float %1534, %1534
  %1543 = fsub fast float %1541, %1542
  %1544 = fmul fast float %1540, %1540
  %1545 = fmul fast float %1538, 4.000000e+00
  %1546 = fmul fast float %1545, %1543
  %1547 = fsub fast float %1544, %1546
  %1548 = fcmp fast ogt float %1547, 0.000000e+00
  br i1 %1548, label %1549, label %1564, !dx.controlflow.hints !38

; <label>:1549                                    ; preds = %1512
  %1550 = fcmp fast ogt float %1540, 0.000000e+00
  %1551 = call float @dx.op.unary.f32(i32 24, float %1547)  ; Sqrt(value)
  %1552 = fsub fast float -0.000000e+00, %1551
  %1553 = select i1 %1550, float %1551, float %1552
  %1554 = fadd fast float %1553, %1540
  %1555 = fmul float %1554, -5.000000e-01
  %1556 = fdiv fast float %1555, %1538
  %1557 = call float @dx.op.binary.f32(i32 35, float %1556, float 0.000000e+00)  ; FMax(a,b)
  %1558 = call float @dx.op.binary.f32(i32 36, float %1515, float %1557)  ; FMin(a,b)
  %1559 = fdiv fast float %1543, %1555
  %1560 = call float @dx.op.binary.f32(i32 35, float %1559, float 0.000000e+00)  ; FMax(a,b)
  %1561 = call float @dx.op.binary.f32(i32 36, float %1515, float %1560)  ; FMin(a,b)
  %1562 = call float @dx.op.binary.f32(i32 36, float %1558, float %1561)  ; FMin(a,b)
  %1563 = call float @dx.op.binary.f32(i32 35, float %1558, float %1561)  ; FMax(a,b)
  br label %1564

; <label>:1564                                    ; preds = %1549, %1512
  %1565 = phi float [ %1563, %1549 ], [ -1.000000e+00, %1512 ]
  %1566 = phi float [ %1562, %1549 ], [ -1.000000e+00, %1512 ]
  %1567 = phi i1 [ true, %1549 ], [ false, %1512 ]
  %1568 = and i1 %1535, %1567
  br i1 %1568, label %1569, label %1571, !dx.controlflow.hints !39

; <label>:1569                                    ; preds = %1564
  %1570 = fcmp fast oeq float %1566, %1565
  br i1 %1570, label %1874, label %1572, !dx.controlflow.hints !40

; <label>:1571                                    ; preds = %1564
  br i1 %1535, label %1874, label %1572, !dx.controlflow.hints !41

; <label>:1572                                    ; preds = %1571, %1569
  %1573 = phi float [ %1515, %1571 ], [ %1565, %1569 ]
  %1574 = phi float [ 0.000000e+00, %1571 ], [ %1566, %1569 ]
  %1575 = icmp ne i32 %1523, 0
  %1576 = fmul fast float %1573, %1485
  %1577 = fadd fast float %1576, %1517
  %1578 = fmul fast float %1577, %1573
  %1579 = select i1 %1575, float 0.000000e+00, float %1578
  %1580 = fcmp fast oeq float %1485, 0.000000e+00
  %1581 = fdiv fast float %1522, %1485
  %1582 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1581)  ; FMax(a,b)
  %1583 = select i1 %1580, float %1573, float %1582
  %1584 = call float @dx.op.binary.f32(i32 36, float %1573, float %1583)  ; FMin(a,b)
  %1585 = fcmp fast ogt float %1485, 0.000000e+00
  %1586 = fcmp fast olt float %1522, 0.000000e+00
  br i1 %1585, label %1587, label %1644, !dx.controlflow.hints !42

; <label>:1587                                    ; preds = %1572
  %1588 = icmp eq i32 %1523, 0
  br i1 %1586, label %1589, label %1633, !dx.controlflow.hints !43

; <label>:1589                                    ; preds = %1587
  %1590 = select i1 %1588, float %1573, float 0.000000e+00
  %1591 = fsub fast float -0.000000e+00, %1590
  %1592 = call float @dx.op.unary.f32(i32 6, float %1591)  ; FAbs(value)
  %1593 = fmul fast float %1590, %1485
  %1594 = fadd fast float %1593, %1517
  %1595 = fmul fast float %1592, %1594
  %1596 = fsub fast float %1579, %1595
  %1597 = fsub fast float %1573, %1592
  %1598 = select i1 %1588, float %1597, float 0.000000e+00
  %1599 = extractvalue %dx.types.CBufRet.f32 %1513, 0
  %1600 = extractvalue %dx.types.CBufRet.f32 %1513, 1
  %1601 = extractvalue %dx.types.CBufRet.f32 %1513, 2
  %1602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1603 = extractvalue %dx.types.CBufRet.f32 %1602, 0
  %1604 = extractvalue %dx.types.CBufRet.f32 %1602, 1
  %1605 = extractvalue %dx.types.CBufRet.f32 %1602, 2
  %1606 = extractvalue %dx.types.CBufRet.f32 %1602, 3
  %1607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1608 = extractvalue %dx.types.CBufRet.f32 %1607, 3
  %1609 = call float @dx.op.binary.f32(i32 36, float %1596, float %1608)  ; FMin(a,b)
  %1610 = fmul fast float %1606, %1598
  %1611 = call float @dx.op.unary.f32(i32 7, float %1610)  ; Saturate(value)
  %1612 = fsub fast float %1603, %1599
  %1613 = fsub fast float %1604, %1600
  %1614 = fsub fast float %1605, %1601
  %1615 = fmul fast float %1611, %1612
  %1616 = fmul fast float %1611, %1613
  %1617 = fmul fast float %1611, %1614
  %1618 = fadd fast float %1615, %1599
  %1619 = fadd fast float %1616, %1600
  %1620 = fadd fast float %1617, %1601
  br i1 %1408, label %1874, label %1621, !dx.controlflow.hints !44

; <label>:1621                                    ; preds = %1589
  %1622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1623 = extractvalue %dx.types.CBufRet.f32 %1622, 0
  %1624 = extractvalue %dx.types.CBufRet.f32 %1622, 1
  %1625 = fadd fast float %1624, %1623
  %1626 = call float @dx.op.unary.f32(i32 7, float %1625)  ; Saturate(value)
  %1627 = extractvalue %dx.types.CBufRet.f32 %1622, 2
  %1628 = extractvalue %dx.types.CBufRet.f32 %1622, 3
  %1629 = fadd fast float %1628, %1627
  %1630 = call float @dx.op.unary.f32(i32 7, float %1629)  ; Saturate(value)
  %1631 = fmul fast float %1626, %1609
  %1632 = fmul fast float %1631, %1630
  br label %1874

; <label>:1633                                    ; preds = %1587
  br i1 %1588, label %1634, label %1655, !dx.controlflow.hints !45

; <label>:1634                                    ; preds = %1633
  %1635 = call float @dx.op.binary.f32(i32 36, float %1584, float %1574)  ; FMin(a,b)
  %1636 = fsub fast float %1584, %1635
  %1637 = fsub fast float %1636, %1573
  %1638 = call float @dx.op.unary.f32(i32 6, float %1637)  ; FAbs(value)
  %1639 = fadd fast float %1636, %1573
  %1640 = fmul fast float %1639, %1485
  %1641 = fadd fast float %1640, %1517
  %1642 = fmul fast float %1641, %1638
  %1643 = fsub fast float %1579, %1642
  br label %1655

; <label>:1644                                    ; preds = %1572
  br i1 %1586, label %1645, label %1655, !dx.controlflow.hints !46

; <label>:1645                                    ; preds = %1644
  %1646 = call float @dx.op.binary.f32(i32 35, float %1574, float %1584)  ; FMax(a,b)
  %1647 = icmp eq i32 %1523, 0
  %1648 = select i1 %1647, float %1584, float 0.000000e+00
  %1649 = fsub fast float -0.000000e+00, %1648
  %1650 = call float @dx.op.unary.f32(i32 6, float %1649)  ; FAbs(value)
  %1651 = fmul fast float %1648, %1485
  %1652 = fadd fast float %1651, %1517
  %1653 = fmul fast float %1650, %1652
  %1654 = fsub fast float %1579, %1653
  br label %1655

; <label>:1655                                    ; preds = %1645, %1644, %1634, %1633
  %1656 = phi float [ %1574, %1633 ], [ %1574, %1634 ], [ %1646, %1645 ], [ %1574, %1644 ]
  %1657 = phi float [ 0.000000e+00, %1633 ], [ %1638, %1634 ], [ %1650, %1645 ], [ 0.000000e+00, %1644 ]
  %1658 = phi float [ %1579, %1633 ], [ %1643, %1634 ], [ %1654, %1645 ], [ %1579, %1644 ]
  %1659 = phi float [ %1584, %1633 ], [ %1584, %1634 ], [ %1573, %1645 ], [ %1573, %1644 ]
  %1660 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 0
  store float -1.000000e+00, float* %1660, align 4, !tbaa !47, !noalias !104
  %1661 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 1
  store float -1.000000e+00, float* %1661, align 4, !tbaa !47, !noalias !104
  %1662 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 2
  store float -1.000000e+00, float* %1662, align 4, !tbaa !47, !noalias !104
  %1663 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 0
  store float -1.000000e+00, float* %1663, align 4, !tbaa !47, !noalias !104
  %1664 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 1
  store float -1.000000e+00, float* %1664, align 4, !tbaa !47, !noalias !104
  %1665 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 2
  store float -1.000000e+00, float* %1665, align 4, !tbaa !47, !noalias !104
  %1666 = icmp sgt i32 %1525, 0
  br i1 %1666, label %1667, label %1728

; <label>:1667                                    ; preds = %1655
  br label %1668

; <label>:1668                                    ; preds = %1717, %1667
  %1669 = phi i32 [ %1718, %1717 ], [ 0, %1667 ]
  %1670 = phi i32 [ %1719, %1717 ], [ 0, %1667 ]
  %1671 = add nuw i32 %1670, 171
  %1672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 %1671)  ; CBufferLoadLegacy(handle,regIndex)
  %1673 = extractvalue %dx.types.CBufRet.f32 %1672, 0
  %1674 = extractvalue %dx.types.CBufRet.f32 %1672, 1
  %1675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1676 = extractvalue %dx.types.CBufRet.f32 %1675, 0
  %1677 = extractvalue %dx.types.CBufRet.f32 %1675, 1
  %1678 = fsub fast float %1673, %1676
  %1679 = fsub fast float %1674, %1677
  %1680 = extractvalue %dx.types.CBufRet.f32 %1672, 2
  %1681 = fsub fast float -0.000000e+00, %1678
  %1682 = fsub fast float -0.000000e+00, %1679
  %1683 = call float @dx.op.dot2.f32(i32 54, float %1483, float %1484, float %1681, float %1682)  ; Dot2(ax,ay,bx,by)
  %1684 = fmul fast float %1683, 2.000000e+00
  %1685 = call float @dx.op.dot2.f32(i32 54, float %1681, float %1682, float %1681, float %1682)  ; Dot2(ax,ay,bx,by)
  %1686 = fmul fast float %1680, %1680
  %1687 = fsub fast float %1685, %1686
  %1688 = fmul fast float %1684, %1684
  %1689 = fmul fast float %1545, %1687
  %1690 = fsub fast float %1688, %1689
  %1691 = fcmp fast ogt float %1690, 0.000000e+00
  br i1 %1691, label %1692, label %1707, !dx.controlflow.hints !38

; <label>:1692                                    ; preds = %1668
  %1693 = fcmp fast ogt float %1684, 0.000000e+00
  %1694 = call float @dx.op.unary.f32(i32 24, float %1690)  ; Sqrt(value)
  %1695 = fsub fast float -0.000000e+00, %1694
  %1696 = select i1 %1693, float %1694, float %1695
  %1697 = fadd fast float %1696, %1684
  %1698 = fmul float %1697, -5.000000e-01
  %1699 = fdiv fast float %1698, %1538
  %1700 = call float @dx.op.binary.f32(i32 35, float %1699, float 0.000000e+00)  ; FMax(a,b)
  %1701 = call float @dx.op.binary.f32(i32 36, float %1573, float %1700)  ; FMin(a,b)
  %1702 = fdiv fast float %1687, %1698
  %1703 = call float @dx.op.binary.f32(i32 35, float %1702, float 0.000000e+00)  ; FMax(a,b)
  %1704 = call float @dx.op.binary.f32(i32 36, float %1573, float %1703)  ; FMin(a,b)
  %1705 = call float @dx.op.binary.f32(i32 36, float %1701, float %1704)  ; FMin(a,b)
  %1706 = call float @dx.op.binary.f32(i32 35, float %1701, float %1704)  ; FMax(a,b)
  br label %1707

; <label>:1707                                    ; preds = %1692, %1668
  %1708 = phi float [ %1706, %1692 ], [ -1.000000e+00, %1668 ]
  %1709 = phi float [ %1705, %1692 ], [ -1.000000e+00, %1668 ]
  %1710 = phi i1 [ true, %1692 ], [ false, %1668 ]
  br i1 %1710, label %1711, label %1717, !dx.controlflow.hints !63

; <label>:1711                                    ; preds = %1707
  %1712 = call float @dx.op.binary.f32(i32 35, float %1656, float %1709)  ; FMax(a,b)
  %1713 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %1670
  store float %1712, float* %1713, align 4, !tbaa !47, !noalias !104
  %1714 = call float @dx.op.binary.f32(i32 35, float %1656, float %1708)  ; FMax(a,b)
  %1715 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %1670
  store float %1714, float* %1715, align 4, !tbaa !47, !noalias !104
  %1716 = add nsw i32 %1669, 1
  br label %1717

; <label>:1717                                    ; preds = %1711, %1707
  %1718 = phi i32 [ %1716, %1711 ], [ %1669, %1707 ]
  %1719 = add nuw nsw i32 %1670, 1
  %1720 = icmp eq i32 %1719, %1525
  br i1 %1720, label %1721, label %1668

; <label>:1721                                    ; preds = %1717
  %1722 = load float, float* %1662, align 4, !tbaa !47, !alias.scope !114, !noalias !117
  %1723 = load float, float* %1661, align 4, !tbaa !47, !alias.scope !120, !noalias !121
  %1724 = load float, float* %1660, align 4, !tbaa !47, !alias.scope !122, !noalias !123
  %1725 = load float, float* %1665, align 4, !tbaa !47, !alias.scope !124, !noalias !127
  %1726 = load float, float* %1664, align 4, !tbaa !47, !alias.scope !130, !noalias !131
  %1727 = load float, float* %1663, align 4, !tbaa !47, !alias.scope !132, !noalias !133
  br label %1728

; <label>:1728                                    ; preds = %1721, %1655
  %1729 = phi float [ -1.000000e+00, %1655 ], [ %1727, %1721 ]
  %1730 = phi float [ -1.000000e+00, %1655 ], [ %1726, %1721 ]
  %1731 = phi float [ -1.000000e+00, %1655 ], [ %1725, %1721 ]
  %1732 = phi float [ -1.000000e+00, %1655 ], [ %1724, %1721 ]
  %1733 = phi float [ -1.000000e+00, %1655 ], [ %1723, %1721 ]
  %1734 = phi float [ -1.000000e+00, %1655 ], [ %1722, %1721 ]
  %1735 = phi i32 [ 0, %1655 ], [ %1718, %1721 ]
  %1736 = call float @dx.op.binary.f32(i32 36, float %1733, float %1734)  ; FMin(a,b)
  %1737 = call float @dx.op.binary.f32(i32 36, float %1732, float %1736)  ; FMin(a,b)
  %1738 = call float @dx.op.binary.f32(i32 35, float %1732, float %1733)  ; FMax(a,b)
  %1739 = call float @dx.op.binary.f32(i32 36, float %1738, float %1734)  ; FMin(a,b)
  %1740 = call float @dx.op.binary.f32(i32 36, float %1732, float %1733)  ; FMin(a,b)
  %1741 = call float @dx.op.binary.f32(i32 35, float %1740, float %1739)  ; FMax(a,b)
  %1742 = call float @dx.op.binary.f32(i32 35, float %1733, float %1734)  ; FMax(a,b)
  %1743 = call float @dx.op.binary.f32(i32 35, float %1732, float %1742)  ; FMax(a,b)
  store float %1737, float* %1660, align 4, !tbaa !47, !alias.scope !122, !noalias !123
  store float %1741, float* %1661, align 4, !tbaa !47, !alias.scope !120, !noalias !121
  store float %1743, float* %1662, align 4, !tbaa !47, !alias.scope !114, !noalias !117
  %1744 = call float @dx.op.binary.f32(i32 36, float %1730, float %1731)  ; FMin(a,b)
  %1745 = call float @dx.op.binary.f32(i32 36, float %1729, float %1744)  ; FMin(a,b)
  %1746 = call float @dx.op.binary.f32(i32 35, float %1729, float %1730)  ; FMax(a,b)
  %1747 = call float @dx.op.binary.f32(i32 36, float %1746, float %1731)  ; FMin(a,b)
  %1748 = call float @dx.op.binary.f32(i32 36, float %1729, float %1730)  ; FMin(a,b)
  %1749 = call float @dx.op.binary.f32(i32 35, float %1748, float %1747)  ; FMax(a,b)
  %1750 = call float @dx.op.binary.f32(i32 35, float %1730, float %1731)  ; FMax(a,b)
  %1751 = call float @dx.op.binary.f32(i32 35, float %1729, float %1750)  ; FMax(a,b)
  store float %1745, float* %1663, align 4, !tbaa !47, !alias.scope !132, !noalias !133
  store float %1749, float* %1664, align 4, !tbaa !47, !alias.scope !130, !noalias !131
  store float %1751, float* %1665, align 4, !tbaa !47, !alias.scope !124, !noalias !127
  %1752 = sub nsw i32 3, %1735
  %1753 = icmp sgt i32 %1752, 2
  br i1 %1753, label %1754, label %1792, !dx.controlflow.hints !84

; <label>:1754                                    ; preds = %1728
  %1755 = icmp eq i32 %1523, 0
  %1756 = fsub fast float %1573, %1657
  %1757 = select i1 %1755, float %1756, float %1657
  %1758 = extractvalue %dx.types.CBufRet.f32 %1513, 0
  %1759 = extractvalue %dx.types.CBufRet.f32 %1513, 1
  %1760 = extractvalue %dx.types.CBufRet.f32 %1513, 2
  %1761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1762 = extractvalue %dx.types.CBufRet.f32 %1761, 0
  %1763 = extractvalue %dx.types.CBufRet.f32 %1761, 1
  %1764 = extractvalue %dx.types.CBufRet.f32 %1761, 2
  %1765 = extractvalue %dx.types.CBufRet.f32 %1761, 3
  %1766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1767 = extractvalue %dx.types.CBufRet.f32 %1766, 3
  %1768 = call float @dx.op.binary.f32(i32 36, float %1658, float %1767)  ; FMin(a,b)
  %1769 = fmul fast float %1765, %1757
  %1770 = call float @dx.op.unary.f32(i32 7, float %1769)  ; Saturate(value)
  %1771 = fsub fast float %1762, %1758
  %1772 = fsub fast float %1763, %1759
  %1773 = fsub fast float %1764, %1760
  %1774 = fmul fast float %1770, %1771
  %1775 = fmul fast float %1770, %1772
  %1776 = fmul fast float %1770, %1773
  %1777 = fadd fast float %1774, %1758
  %1778 = fadd fast float %1775, %1759
  %1779 = fadd fast float %1776, %1760
  br i1 %1408, label %1874, label %1780, !dx.controlflow.hints !44

; <label>:1780                                    ; preds = %1754
  %1781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1782 = extractvalue %dx.types.CBufRet.f32 %1781, 0
  %1783 = extractvalue %dx.types.CBufRet.f32 %1781, 1
  %1784 = fadd fast float %1783, %1782
  %1785 = call float @dx.op.unary.f32(i32 7, float %1784)  ; Saturate(value)
  %1786 = extractvalue %dx.types.CBufRet.f32 %1781, 2
  %1787 = extractvalue %dx.types.CBufRet.f32 %1781, 3
  %1788 = fadd fast float %1787, %1786
  %1789 = call float @dx.op.unary.f32(i32 7, float %1788)  ; Saturate(value)
  %1790 = fmul fast float %1785, %1768
  %1791 = fmul fast float %1790, %1789
  br label %1874

; <label>:1792                                    ; preds = %1728
  %1793 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %1752
  %1794 = load float, float* %1793, align 4, !tbaa !47, !noalias !104
  %1795 = fcmp fast olt float %1794, %1659
  %1796 = icmp sgt i32 %1735, 0
  %1797 = and i1 %1796, %1795
  br i1 %1797, label %1798, label %1835

; <label>:1798                                    ; preds = %1792
  br label %1799

; <label>:1799                                    ; preds = %1828, %1798
  %1800 = phi float [ %1829, %1828 ], [ %1657, %1798 ]
  %1801 = phi float [ %1830, %1828 ], [ %1658, %1798 ]
  %1802 = phi float [ %1810, %1828 ], [ %1794, %1798 ]
  %1803 = phi i32 [ %1807, %1828 ], [ %1752, %1798 ]
  %1804 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %1803
  %1805 = load float, float* %1804, align 4, !tbaa !47, !noalias !104
  %1806 = icmp slt i32 %1803, 2
  %1807 = add nsw i32 %1803, 1
  %1808 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %1807
  %1809 = load float, float* %1808, align 4, !tbaa !47, !noalias !104
  %1810 = select i1 %1806, float %1809, float %1573
  %1811 = call float @dx.op.binary.f32(i32 36, float %1810, float %1805)  ; FMin(a,b)
  %1812 = call float @dx.op.binary.f32(i32 36, float %1659, float %1811)  ; FMin(a,b)
  %1813 = icmp eq i32 %1523, 0
  %1814 = fadd fast float %1812, %1802
  %1815 = fmul fast float %1814, %1485
  %1816 = fadd fast float %1815, %1517
  br i1 %1813, label %1822, label %1817, !dx.controlflow.hints !85

; <label>:1817                                    ; preds = %1799
  %1818 = fsub fast float %1812, %1802
  %1819 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1818)  ; FMax(a,b)
  %1820 = fmul fast float %1819, %1816
  %1821 = fadd fast float %1820, %1801
  br label %1828

; <label>:1822                                    ; preds = %1799
  %1823 = fsub fast float %1802, %1812
  %1824 = call float @dx.op.unary.f32(i32 6, float %1823)  ; FAbs(value)
  %1825 = fadd fast float %1824, %1800
  %1826 = fmul fast float %1824, %1816
  %1827 = fsub fast float %1801, %1826
  br label %1828

; <label>:1828                                    ; preds = %1822, %1817
  %1829 = phi float [ %1819, %1817 ], [ %1825, %1822 ]
  %1830 = phi float [ %1821, %1817 ], [ %1827, %1822 ]
  %1831 = fcmp fast olt float %1810, %1659
  %1832 = icmp slt i32 %1807, 3
  %1833 = and i1 %1832, %1831
  br i1 %1833, label %1799, label %1834

; <label>:1834                                    ; preds = %1828
  br label %1835

; <label>:1835                                    ; preds = %1834, %1792
  %1836 = phi float [ %1657, %1792 ], [ %1829, %1834 ]
  %1837 = phi float [ %1658, %1792 ], [ %1830, %1834 ]
  %1838 = fsub fast float %1573, %1836
  %1839 = select i1 %1575, float %1836, float %1838
  %1840 = extractvalue %dx.types.CBufRet.f32 %1513, 0
  %1841 = extractvalue %dx.types.CBufRet.f32 %1513, 1
  %1842 = extractvalue %dx.types.CBufRet.f32 %1513, 2
  %1843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1844 = extractvalue %dx.types.CBufRet.f32 %1843, 0
  %1845 = extractvalue %dx.types.CBufRet.f32 %1843, 1
  %1846 = extractvalue %dx.types.CBufRet.f32 %1843, 2
  %1847 = extractvalue %dx.types.CBufRet.f32 %1843, 3
  %1848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1849 = extractvalue %dx.types.CBufRet.f32 %1848, 3
  %1850 = call float @dx.op.binary.f32(i32 36, float %1837, float %1849)  ; FMin(a,b)
  %1851 = fmul fast float %1847, %1839
  %1852 = call float @dx.op.unary.f32(i32 7, float %1851)  ; Saturate(value)
  %1853 = fsub fast float %1844, %1840
  %1854 = fsub fast float %1845, %1841
  %1855 = fsub fast float %1846, %1842
  %1856 = fmul fast float %1852, %1853
  %1857 = fmul fast float %1852, %1854
  %1858 = fmul fast float %1852, %1855
  %1859 = fadd fast float %1856, %1840
  %1860 = fadd fast float %1857, %1841
  %1861 = fadd fast float %1858, %1842
  br i1 %1408, label %1874, label %1862, !dx.controlflow.hints !44

; <label>:1862                                    ; preds = %1835
  %1863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1864 = extractvalue %dx.types.CBufRet.f32 %1863, 0
  %1865 = extractvalue %dx.types.CBufRet.f32 %1863, 1
  %1866 = fadd fast float %1865, %1864
  %1867 = call float @dx.op.unary.f32(i32 7, float %1866)  ; Saturate(value)
  %1868 = extractvalue %dx.types.CBufRet.f32 %1863, 2
  %1869 = extractvalue %dx.types.CBufRet.f32 %1863, 3
  %1870 = fadd fast float %1869, %1868
  %1871 = call float @dx.op.unary.f32(i32 7, float %1870)  ; Saturate(value)
  %1872 = fmul fast float %1867, %1850
  %1873 = fmul fast float %1872, %1871
  br label %1874

; <label>:1874                                    ; preds = %1862, %1835, %1780, %1754, %1621, %1589, %1571, %1569
  %1875 = phi float [ 0.000000e+00, %1569 ], [ 0.000000e+00, %1571 ], [ %1598, %1621 ], [ %1598, %1589 ], [ %1757, %1780 ], [ %1757, %1754 ], [ %1839, %1862 ], [ %1839, %1835 ]
  %1876 = phi float [ 0.000000e+00, %1569 ], [ 0.000000e+00, %1571 ], [ %1632, %1621 ], [ %1609, %1589 ], [ %1791, %1780 ], [ %1768, %1754 ], [ %1873, %1862 ], [ %1850, %1835 ]
  %1877 = phi float [ 0.000000e+00, %1569 ], [ 0.000000e+00, %1571 ], [ %1618, %1621 ], [ %1618, %1589 ], [ %1777, %1780 ], [ %1777, %1754 ], [ %1859, %1862 ], [ %1859, %1835 ]
  %1878 = phi float [ 0.000000e+00, %1569 ], [ 0.000000e+00, %1571 ], [ %1619, %1621 ], [ %1619, %1589 ], [ %1778, %1780 ], [ %1778, %1754 ], [ %1860, %1862 ], [ %1860, %1835 ]
  %1879 = phi float [ 0.000000e+00, %1569 ], [ 0.000000e+00, %1571 ], [ %1620, %1621 ], [ %1620, %1589 ], [ %1779, %1780 ], [ %1779, %1754 ], [ %1861, %1862 ], [ %1861, %1835 ]
  %1880 = fmul fast float %1509, %1876
  %1881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1882 = extractvalue %dx.types.CBufRet.f32 %1881, 2
  %1883 = fsub fast float %1519, %1882
  %1884 = fcmp fast olt float %1880, -2.000000e+01
  %1885 = call float @dx.op.unary.f32(i32 21, float %1880)  ; Exp(value)
  %1886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1887 = extractvalue %dx.types.CBufRet.f32 %1886, 2
  %1888 = extractvalue %dx.types.CBufRet.f32 %1886, 3
  %1889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1890 = extractvalue %dx.types.CBufRet.f32 %1889, 2
  %1891 = fmul fast float %1888, %1883
  %1892 = call float @dx.op.unary.f32(i32 7, float %1891)  ; Saturate(value)
  %1893 = fsub fast float 1.000000e+00, %1892
  %1894 = fmul fast float %1485, 5.000000e-01
  %1895 = fadd fast float %1894, 5.000000e-01
  %1896 = call float @dx.op.unary.f32(i32 7, float %1895)  ; Saturate(value)
  %1897 = fsub fast float 1.000000e+00, %1896
  %1898 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1893)  ; FMax(a,b)
  %1899 = fdiv fast float %1897, %1898
  %1900 = fsub fast float %1883, %1448
  %1901 = call float @dx.op.unary.f32(i32 6, float %1900)  ; FAbs(value)
  %1902 = fmul fast float %1901, %1887
  %1903 = call float @dx.op.unary.f32(i32 7, float %1899)  ; Saturate(value)
  %1904 = fsub fast float 1.000000e+00, %1902
  %1905 = fmul fast float %1904, %1903
  %1906 = fadd fast float %1905, %1902
  %1907 = fmul fast float %1890, %1883
  %1908 = call float @dx.op.unary.f32(i32 7, float %1907)  ; Saturate(value)
  %1909 = fsub fast float 1.000000e+00, %1906
  %1910 = fmul fast float %1909, %1908
  %1911 = fadd fast float %1910, %1906
  %1912 = call float @dx.op.unary.f32(i32 7, float %1911)  ; Saturate(value)
  %1913 = fadd fast float %1885, -1.000000e+00
  %1914 = select i1 %1884, float -1.000000e+00, float %1913
  %1915 = fmul fast float %1912, %1914
  %1916 = fadd fast float %1915, 1.000000e+00
  %1917 = fsub fast float -0.000000e+00, %1915
  %1918 = fmul fast float %1877, %1917
  %1919 = fmul fast float %1878, %1917
  %1920 = fmul fast float %1879, %1917
  br label %1921

; <label>:1921                                    ; preds = %1874, %1499
  %1922 = phi float [ %1875, %1874 ], [ 0.000000e+00, %1499 ]
  %1923 = phi float [ %1916, %1874 ], [ 1.000000e+00, %1499 ]
  %1924 = phi float [ %1918, %1874 ], [ 0.000000e+00, %1499 ]
  %1925 = phi float [ %1919, %1874 ], [ 0.000000e+00, %1499 ]
  %1926 = phi float [ %1920, %1874 ], [ 0.000000e+00, %1499 ]
  %1927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1928 = extractvalue %dx.types.CBufRet.f32 %1927, 1
  %1929 = fsub fast float 1.000000e+00, %1923
  %1930 = fmul fast float %1929, %1500
  %1931 = fmul fast float %1930, %1928
  %1932 = fsub fast float %1500, %1931
  br i1 %1478, label %1933, label %1965, !dx.controlflow.hints !86

; <label>:1933                                    ; preds = %1921
  %1934 = fmul fast float %1503, %1475
  %1935 = fadd fast float %1934, %1476
  %1936 = call float @dx.op.unary.f32(i32 7, float %1935)  ; Saturate(value)
  %1937 = fmul fast float %1457, %1932
  %1938 = fsub fast float -0.000000e+00, %1937
  %1939 = fmul fast float %1458, %1932
  %1940 = fsub fast float -0.000000e+00, %1939
  %1941 = call float @dx.op.unary.f32(i32 21, float %1938)  ; Exp(value)
  %1942 = call float @dx.op.unary.f32(i32 21, float %1940)  ; Exp(value)
  %1943 = call float @dx.op.binary.f32(i32 35, float %1465, float %1941)  ; FMax(a,b)
  %1944 = call float @dx.op.binary.f32(i32 35, float %1465, float %1942)  ; FMax(a,b)
  %1945 = fsub fast float %1944, %1943
  %1946 = fmul fast float %1945, %1936
  %1947 = fadd fast float %1946, %1943
  %1948 = call float @dx.op.unary.f32(i32 7, float %1947)  ; Saturate(value)
  %1949 = fmul fast float %1501, %1479
  %1950 = fsub fast float 1.000000e+00, %1949
  %1951 = select i1 %1408, float %1950, float %1948
  %1952 = fsub fast float %1462, %1467
  %1953 = fsub fast float %1463, %1468
  %1954 = fsub fast float %1464, %1469
  %1955 = fmul fast float %1936, %1952
  %1956 = fmul fast float %1936, %1953
  %1957 = fmul fast float %1936, %1954
  %1958 = fadd fast float %1955, %1467
  %1959 = fadd fast float %1956, %1468
  %1960 = fadd fast float %1957, %1469
  %1961 = fsub fast float 1.000000e+00, %1951
  %1962 = fmul fast float %1961, %1958
  %1963 = fmul fast float %1961, %1959
  %1964 = fmul fast float %1961, %1960
  br label %2036

; <label>:1965                                    ; preds = %1921
  %1966 = fmul fast float %1932, %1474
  %1967 = call float @dx.op.unary.f32(i32 7, float %1966)  ; Saturate(value)
  %1968 = fsub fast float 2.000000e+00, %1967
  %1969 = fmul fast float %1967, 9.921875e-01
  %1970 = fmul fast float %1969, %1968
  %1971 = fadd fast float %1970, 3.906250e-03
  %1972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %1971, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1973 = extractvalue %dx.types.ResRet.f32 %1972, 0
  %1974 = fsub fast float %1967, %1973
  %1975 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1974)  ; FMax(a,b)
  %1976 = fmul fast float %1502, %1460
  %1977 = call float @dx.op.unary.f32(i32 6, float %1976)  ; FAbs(value)
  %1978 = fcmp fast ogt float %1977, 0x3EB0C6F7A0000000
  br i1 %1978, label %1979, label %1985, !dx.controlflow.hints !87

; <label>:1979                                    ; preds = %1965
  %1980 = fmul fast float %1976, 0xBFF7154760000000
  %1981 = call float @dx.op.unary.f32(i32 21, float %1980)  ; Exp(value)
  %1982 = fsub fast float 1.000000e+00, %1981
  %1983 = fdiv fast float %1982, %1976
  %1984 = fmul fast float %1983, %1470
  br label %1985

; <label>:1985                                    ; preds = %1979, %1965
  %1986 = phi float [ %1984, %1979 ], [ %1470, %1965 ]
  %1987 = fadd fast float %1986, %1472
  %1988 = fmul fast float %1987, %1975
  %1989 = fmul fast float %1457, %1988
  %1990 = fsub fast float -0.000000e+00, %1989
  %1991 = fmul fast float %1458, %1988
  %1992 = fsub fast float -0.000000e+00, %1991
  %1993 = fmul fast float %1459, %1988
  %1994 = fsub fast float -0.000000e+00, %1993
  %1995 = call float @dx.op.unary.f32(i32 21, float %1990)  ; Exp(value)
  %1996 = call float @dx.op.unary.f32(i32 21, float %1992)  ; Exp(value)
  %1997 = call float @dx.op.unary.f32(i32 21, float %1994)  ; Exp(value)
  br i1 %1408, label %1998, label %2006, !dx.controlflow.hints !88

; <label>:1998                                    ; preds = %1985
  %1999 = fmul fast float %1995, %1501
  %2000 = fmul fast float %1996, %1501
  %2001 = fmul fast float %1997, %1501
  %2002 = fsub fast float 1.000000e+00, %1501
  %2003 = fadd fast float %1999, %2002
  %2004 = fadd fast float %2000, %2002
  %2005 = fadd fast float %2001, %2002
  br label %2006

; <label>:2006                                    ; preds = %1998, %1985
  %2007 = phi float [ %2003, %1998 ], [ %1995, %1985 ]
  %2008 = phi float [ %2004, %1998 ], [ %1996, %1985 ]
  %2009 = phi float [ %2005, %1998 ], [ %1997, %1985 ]
  %2010 = fmul fast float %1503, %1503
  %2011 = fadd fast float %2010, 1.000000e+00
  %2012 = fmul fast float %2011, 0x3FAE8EC8A0000000
  %2013 = fmul fast float %2012, %1467
  %2014 = fmul fast float %2012, %1468
  %2015 = fmul fast float %2012, %1469
  %2016 = fmul fast float %1503, %1465
  %2017 = fsub fast float 1.000000e+00, %2016
  %2018 = fmul fast float %1465, %1465
  %2019 = fsub fast float 1.000000e+00, %2018
  %2020 = fmul fast float %2019, 0x3FB45F3060000000
  %2021 = fmul fast float %2017, %2017
  %2022 = fdiv fast float 1.000000e+00, %2021
  %2023 = fmul fast float %2020, %2022
  %2024 = fmul fast float %2023, %1462
  %2025 = fmul fast float %2023, %1463
  %2026 = fmul fast float %2023, %1464
  %2027 = fadd fast float %2024, %2013
  %2028 = fadd fast float %2025, %2014
  %2029 = fadd fast float %2026, %2015
  %2030 = fsub fast float 1.000000e+00, %2007
  %2031 = fsub fast float 1.000000e+00, %2008
  %2032 = fsub fast float 1.000000e+00, %2009
  %2033 = fmul fast float %2027, %2030
  %2034 = fmul fast float %2028, %2031
  %2035 = fmul fast float %2029, %2032
  br label %2036

; <label>:2036                                    ; preds = %2006, %1933
  %2037 = phi float [ %1962, %1933 ], [ %2033, %2006 ]
  %2038 = phi float [ %1963, %1933 ], [ %2034, %2006 ]
  %2039 = phi float [ %1964, %1933 ], [ %2035, %2006 ]
  %2040 = phi float [ %1951, %1933 ], [ %2007, %2006 ]
  %2041 = phi float [ %1951, %1933 ], [ %2008, %2006 ]
  %2042 = phi float [ %1951, %1933 ], [ %2009, %2006 ]
  br i1 %1511, label %2043, label %2241, !dx.controlflow.hints !89

; <label>:2043                                    ; preds = %2036
  %2044 = extractvalue %dx.types.CBufRet.f32 %1927, 0
  %2045 = fmul fast float %2044, %1929
  %2046 = fsub fast float %1924, %2037
  %2047 = fsub fast float %1925, %2038
  %2048 = fsub fast float %1926, %2039
  %2049 = fmul fast float %2045, %2046
  %2050 = fmul fast float %2045, %2047
  %2051 = fmul fast float %2045, %2048
  %2052 = fadd fast float %2049, %2037
  %2053 = fadd fast float %2050, %2038
  %2054 = fadd fast float %2051, %2039
  %2055 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2040)  ; FMax(a,b)
  %2056 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2041)  ; FMax(a,b)
  %2057 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2042)  ; FMax(a,b)
  %2058 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1923)  ; FMax(a,b)
  %2059 = call float @dx.op.binary.f32(i32 35, float %1922, float %1932)  ; FMax(a,b)
  %2060 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2059)  ; FMax(a,b)
  %2061 = fdiv fast float %1922, %2060
  %2062 = call float @dx.op.unary.f32(i32 7, float %2061)  ; Saturate(value)
  %2063 = fdiv fast float %1932, %2060
  %2064 = call float @dx.op.unary.f32(i32 7, float %2063)  ; Saturate(value)
  %2065 = fcmp fast une float %2058, 1.000000e+00
  br i1 %2065, label %2066, label %2079, !dx.controlflow.hints !90

; <label>:2066                                    ; preds = %2043
  %2067 = call float @dx.op.unary.f32(i32 23, float %2058)  ; Log(value)
  %2068 = fmul fast float %2067, 0x3FE62E4300000000
  %2069 = fmul fast float %1924, %2068
  %2070 = fsub fast float -0.000000e+00, %2069
  %2071 = fmul fast float %1925, %2068
  %2072 = fsub fast float -0.000000e+00, %2071
  %2073 = fmul fast float %1926, %2068
  %2074 = fsub fast float -0.000000e+00, %2073
  %2075 = fsub fast float 1.000000e+00, %2058
  %2076 = fdiv fast float %2070, %2075
  %2077 = fdiv fast float %2072, %2075
  %2078 = fdiv fast float %2074, %2075
  br label %2079

; <label>:2079                                    ; preds = %2066, %2043
  %2080 = phi float [ %2076, %2066 ], [ %1924, %2043 ]
  %2081 = phi float [ %2077, %2066 ], [ %1925, %2043 ]
  %2082 = phi float [ %2078, %2066 ], [ %1926, %2043 ]
  %2083 = phi float [ %2068, %2066 ], [ 0.000000e+00, %2043 ]
  %2084 = fcmp fast une float %2055, 1.000000e+00
  br i1 %2084, label %2085, label %2092, !dx.controlflow.hints !91

; <label>:2085                                    ; preds = %2079
  %2086 = call float @dx.op.unary.f32(i32 23, float %2055)  ; Log(value)
  %2087 = fmul fast float %2086, 0x3FE62E4300000000
  %2088 = fmul fast float %2052, %2087
  %2089 = fsub fast float -0.000000e+00, %2088
  %2090 = fsub fast float 1.000000e+00, %2055
  %2091 = fdiv fast float %2089, %2090
  br label %2092

; <label>:2092                                    ; preds = %2085, %2079
  %2093 = phi float [ %2091, %2085 ], [ %2052, %2079 ]
  %2094 = phi float [ %2087, %2085 ], [ 0.000000e+00, %2079 ]
  %2095 = fcmp fast une float %2056, 1.000000e+00
  br i1 %2095, label %2096, label %2103, !dx.controlflow.hints !91

; <label>:2096                                    ; preds = %2092
  %2097 = call float @dx.op.unary.f32(i32 23, float %2056)  ; Log(value)
  %2098 = fmul fast float %2097, 0x3FE62E4300000000
  %2099 = fmul fast float %2053, %2098
  %2100 = fsub fast float -0.000000e+00, %2099
  %2101 = fsub fast float 1.000000e+00, %2056
  %2102 = fdiv fast float %2100, %2101
  br label %2103

; <label>:2103                                    ; preds = %2096, %2092
  %2104 = phi float [ %2102, %2096 ], [ %2053, %2092 ]
  %2105 = phi float [ %2098, %2096 ], [ 0.000000e+00, %2092 ]
  %2106 = fcmp fast une float %2057, 1.000000e+00
  br i1 %2106, label %2107, label %2114, !dx.controlflow.hints !91

; <label>:2107                                    ; preds = %2103
  %2108 = call float @dx.op.unary.f32(i32 23, float %2057)  ; Log(value)
  %2109 = fmul fast float %2108, 0x3FE62E4300000000
  %2110 = fmul fast float %2054, %2109
  %2111 = fsub fast float -0.000000e+00, %2110
  %2112 = fsub fast float 1.000000e+00, %2057
  %2113 = fdiv fast float %2111, %2112
  br label %2114

; <label>:2114                                    ; preds = %2107, %2103
  %2115 = phi float [ %2113, %2107 ], [ %2054, %2103 ]
  %2116 = phi float [ %2109, %2107 ], [ 0.000000e+00, %2103 ]
  %2117 = fmul fast float %2080, %2064
  %2118 = fmul fast float %2081, %2064
  %2119 = fmul fast float %2082, %2064
  %2120 = fmul fast float %2083, %2064
  %2121 = fmul fast float %2093, %2062
  %2122 = fmul fast float %2104, %2062
  %2123 = fmul fast float %2115, %2062
  %2124 = fmul fast float %2094, %2062
  %2125 = fmul fast float %2105, %2062
  %2126 = fmul fast float %2116, %2062
  %2127 = fadd fast float %2121, %2117
  %2128 = fadd fast float %2122, %2118
  %2129 = fadd fast float %2123, %2119
  %2130 = fadd fast float %2124, %2120
  %2131 = fadd fast float %2125, %2120
  %2132 = fadd fast float %2126, %2120
  %2133 = fcmp fast une float %2130, 0.000000e+00
  br i1 %2133, label %2134, label %2141, !dx.controlflow.hints !92

; <label>:2134                                    ; preds = %2114
  %2135 = fmul fast float %2130, 0x3FF7154760000000
  %2136 = call float @dx.op.unary.f32(i32 21, float %2135)  ; Exp(value)
  %2137 = fsub fast float 1.000000e+00, %2136
  %2138 = fmul fast float %2127, %2137
  %2139 = fsub fast float -0.000000e+00, %2138
  %2140 = fdiv fast float %2139, %2130
  br label %2141

; <label>:2141                                    ; preds = %2134, %2114
  %2142 = phi float [ %2136, %2134 ], [ 1.000000e+00, %2114 ]
  %2143 = phi float [ %2140, %2134 ], [ %2127, %2114 ]
  %2144 = fcmp fast une float %2131, 0.000000e+00
  br i1 %2144, label %2145, label %2152, !dx.controlflow.hints !92

; <label>:2145                                    ; preds = %2141
  %2146 = fmul fast float %2131, 0x3FF7154760000000
  %2147 = call float @dx.op.unary.f32(i32 21, float %2146)  ; Exp(value)
  %2148 = fsub fast float 1.000000e+00, %2147
  %2149 = fmul fast float %2128, %2148
  %2150 = fsub fast float -0.000000e+00, %2149
  %2151 = fdiv fast float %2150, %2131
  br label %2152

; <label>:2152                                    ; preds = %2145, %2141
  %2153 = phi float [ %2147, %2145 ], [ 1.000000e+00, %2141 ]
  %2154 = phi float [ %2151, %2145 ], [ %2128, %2141 ]
  %2155 = fcmp fast une float %2132, 0.000000e+00
  br i1 %2155, label %2156, label %2163, !dx.controlflow.hints !92

; <label>:2156                                    ; preds = %2152
  %2157 = fmul fast float %2132, 0x3FF7154760000000
  %2158 = call float @dx.op.unary.f32(i32 21, float %2157)  ; Exp(value)
  %2159 = fsub fast float 1.000000e+00, %2158
  %2160 = fmul fast float %2129, %2159
  %2161 = fsub fast float -0.000000e+00, %2160
  %2162 = fdiv fast float %2161, %2132
  br label %2163

; <label>:2163                                    ; preds = %2156, %2152
  %2164 = phi float [ %2158, %2156 ], [ 1.000000e+00, %2152 ]
  %2165 = phi float [ %2162, %2156 ], [ %2129, %2152 ]
  %2166 = fcmp fast ogt float %2062, %2064
  br i1 %2166, label %2167, label %2187, !dx.controlflow.hints !93

; <label>:2167                                    ; preds = %2163
  %2168 = fsub fast float 1.000000e+00, %2064
  %2169 = fmul fast float %2080, %2168
  %2170 = fmul fast float %2081, %2168
  %2171 = fmul fast float %2082, %2168
  %2172 = fmul fast float %2083, %2168
  %2173 = fcmp fast une float %2172, 0.000000e+00
  br i1 %2173, label %2174, label %2225, !dx.controlflow.hints !94

; <label>:2174                                    ; preds = %2167
  %2175 = fmul fast float %2172, 0x3FF7154760000000
  %2176 = call float @dx.op.unary.f32(i32 21, float %2175)  ; Exp(value)
  %2177 = fsub fast float 1.000000e+00, %2176
  %2178 = fmul fast float %2169, %2177
  %2179 = fsub fast float -0.000000e+00, %2178
  %2180 = fmul fast float %2170, %2177
  %2181 = fsub fast float -0.000000e+00, %2180
  %2182 = fmul fast float %2171, %2177
  %2183 = fsub fast float -0.000000e+00, %2182
  %2184 = fdiv fast float %2179, %2172
  %2185 = fdiv fast float %2181, %2172
  %2186 = fdiv fast float %2183, %2172
  br label %2225

; <label>:2187                                    ; preds = %2163
  %2188 = fsub fast float 1.000000e+00, %2062
  %2189 = fmul fast float %2093, %2188
  %2190 = fmul fast float %2104, %2188
  %2191 = fmul fast float %2115, %2188
  %2192 = fmul fast float %2094, %2188
  %2193 = fmul fast float %2105, %2188
  %2194 = fmul fast float %2116, %2188
  %2195 = fcmp fast une float %2192, 0.000000e+00
  br i1 %2195, label %2196, label %2203, !dx.controlflow.hints !92

; <label>:2196                                    ; preds = %2187
  %2197 = fmul fast float %2192, 0x3FF7154760000000
  %2198 = call float @dx.op.unary.f32(i32 21, float %2197)  ; Exp(value)
  %2199 = fsub fast float 1.000000e+00, %2198
  %2200 = fmul fast float %2189, %2199
  %2201 = fsub fast float -0.000000e+00, %2200
  %2202 = fdiv fast float %2201, %2192
  br label %2203

; <label>:2203                                    ; preds = %2196, %2187
  %2204 = phi float [ %2202, %2196 ], [ %2189, %2187 ]
  %2205 = phi float [ %2198, %2196 ], [ 1.000000e+00, %2187 ]
  %2206 = fcmp fast une float %2193, 0.000000e+00
  br i1 %2206, label %2207, label %2214, !dx.controlflow.hints !92

; <label>:2207                                    ; preds = %2203
  %2208 = fmul fast float %2193, 0x3FF7154760000000
  %2209 = call float @dx.op.unary.f32(i32 21, float %2208)  ; Exp(value)
  %2210 = fsub fast float 1.000000e+00, %2209
  %2211 = fmul fast float %2190, %2210
  %2212 = fsub fast float -0.000000e+00, %2211
  %2213 = fdiv fast float %2212, %2193
  br label %2214

; <label>:2214                                    ; preds = %2207, %2203
  %2215 = phi float [ %2213, %2207 ], [ %2190, %2203 ]
  %2216 = phi float [ %2209, %2207 ], [ 1.000000e+00, %2203 ]
  %2217 = fcmp fast une float %2194, 0.000000e+00
  br i1 %2217, label %2218, label %2225, !dx.controlflow.hints !92

; <label>:2218                                    ; preds = %2214
  %2219 = fmul fast float %2194, 0x3FF7154760000000
  %2220 = call float @dx.op.unary.f32(i32 21, float %2219)  ; Exp(value)
  %2221 = fsub fast float 1.000000e+00, %2220
  %2222 = fmul fast float %2191, %2221
  %2223 = fsub fast float -0.000000e+00, %2222
  %2224 = fdiv fast float %2223, %2194
  br label %2225

; <label>:2225                                    ; preds = %2218, %2214, %2174, %2167
  %2226 = phi float [ %2224, %2218 ], [ %2186, %2174 ], [ %2171, %2167 ], [ %2191, %2214 ]
  %2227 = phi float [ %2215, %2218 ], [ %2185, %2174 ], [ %2170, %2167 ], [ %2215, %2214 ]
  %2228 = phi float [ %2204, %2218 ], [ %2184, %2174 ], [ %2169, %2167 ], [ %2204, %2214 ]
  %2229 = phi float [ %2220, %2218 ], [ %2176, %2174 ], [ 1.000000e+00, %2167 ], [ 1.000000e+00, %2214 ]
  %2230 = phi float [ %2216, %2218 ], [ %2176, %2174 ], [ 1.000000e+00, %2167 ], [ %2216, %2214 ]
  %2231 = phi float [ %2205, %2218 ], [ %2176, %2174 ], [ 1.000000e+00, %2167 ], [ %2205, %2214 ]
  %2232 = fmul fast float %2231, %2143
  %2233 = fmul fast float %2230, %2154
  %2234 = fmul fast float %2229, %2165
  %2235 = fadd fast float %2232, %2228
  %2236 = fadd fast float %2233, %2227
  %2237 = fadd fast float %2234, %2226
  %2238 = fmul fast float %2231, %2142
  %2239 = fmul fast float %2230, %2153
  %2240 = fmul fast float %2229, %2164
  br label %2241

; <label>:2241                                    ; preds = %2225, %2036
  %2242 = phi float [ %2240, %2225 ], [ %2042, %2036 ]
  %2243 = phi float [ %2239, %2225 ], [ %2041, %2036 ]
  %2244 = phi float [ %2238, %2225 ], [ %2040, %2036 ]
  %2245 = phi float [ %2237, %2225 ], [ %2039, %2036 ]
  %2246 = phi float [ %2236, %2225 ], [ %2038, %2036 ]
  %2247 = phi float [ %2235, %2225 ], [ %2037, %2036 ]
  %2248 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %19, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2249 = extractvalue %dx.types.ResRet.f32 %2248, 0
  %2250 = extractvalue %dx.types.ResRet.f32 %2248, 1
  %2251 = extractvalue %dx.types.ResRet.f32 %2248, 2
  %2252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2253 = extractvalue %dx.types.CBufRet.f32 %2252, 1
  %2254 = fmul fast float %2253, %2249
  %2255 = fmul fast float %2253, %2250
  %2256 = fmul fast float %2253, %2251
  %2257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2258 = extractvalue %dx.types.ResRet.f32 %2257, 0
  %2259 = fmul fast float %2258, %2244
  %2260 = fmul fast float %2258, %2243
  %2261 = fmul fast float %2258, %2242
  %2262 = fmul fast float %2258, %2247
  %2263 = fmul fast float %2258, %2246
  %2264 = fmul fast float %2258, %2245
  %2265 = fadd fast float %2262, %2254
  %2266 = fadd fast float %2263, %2255
  %2267 = fadd fast float %2264, %2256
  br label %2268

; <label>:2268                                    ; preds = %2241, %1372
  %2269 = phi float [ 0.000000e+00, %1372 ], [ %2265, %2241 ]
  %2270 = phi float [ 0.000000e+00, %1372 ], [ %2266, %2241 ]
  %2271 = phi float [ 0.000000e+00, %1372 ], [ %2267, %2241 ]
  %2272 = phi float [ 1.000000e+00, %1372 ], [ %2259, %2241 ]
  %2273 = phi float [ 1.000000e+00, %1372 ], [ %2260, %2241 ]
  %2274 = phi float [ 1.000000e+00, %1372 ], [ %2261, %2241 ]
  %2275 = phi float [ %1405, %1372 ], [ %1412, %2241 ]
  %2276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2277 = extractvalue %dx.types.CBufRet.f32 %2276, 2
  %2278 = extractvalue %dx.types.CBufRet.f32 %2276, 3
  %2279 = fmul fast float %2277, %1375
  %2280 = fmul fast float %2278, %1376
  %2281 = call float @dx.op.unary.f32(i32 7, float %2279)  ; Saturate(value)
  %2282 = call float @dx.op.unary.f32(i32 7, float %2280)  ; Saturate(value)
  %2283 = select i1 %1403, i32 2, i32 0
  %2284 = or i32 %2283, 1
  %2285 = uitofp i32 %2284 to float
  %2286 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %19, float %2281, float %2282, float %2285, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2287 = extractvalue %dx.types.ResRet.f32 %2286, 0
  %2288 = extractvalue %dx.types.ResRet.f32 %2286, 1
  %2289 = extractvalue %dx.types.ResRet.f32 %2286, 2
  %2290 = extractvalue %dx.types.ResRet.f32 %2286, 3
  %2291 = add nuw nsw i32 %2283, 2
  %2292 = uitofp i32 %2291 to float
  %2293 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %19, float %2281, float %2282, float %2292, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2294 = extractvalue %dx.types.ResRet.f32 %2293, 0
  %2295 = extractvalue %dx.types.ResRet.f32 %2293, 1
  %2296 = extractvalue %dx.types.ResRet.f32 %2293, 2
  %2297 = extractvalue %dx.types.ResRet.f32 %2293, 3
  %2298 = call float @dx.op.binary.f32(i32 35, float %2288, float %2289)  ; FMax(a,b)
  %2299 = call float @dx.op.binary.f32(i32 35, float %2287, float %2298)  ; FMax(a,b)
  %2300 = call float @dx.op.binary.f32(i32 35, float %2299, float %2290)  ; FMax(a,b)
  %2301 = call float @dx.op.binary.f32(i32 36, float %2295, float %2296)  ; FMin(a,b)
  %2302 = call float @dx.op.binary.f32(i32 36, float %2294, float %2301)  ; FMin(a,b)
  %2303 = call float @dx.op.binary.f32(i32 36, float %2302, float %2297)  ; FMin(a,b)
  %2304 = fmul fast float %2300, 2.550000e+02
  %2305 = fadd fast float %2304, 0x3F70101020000000
  %2306 = fptoui float %2305 to i32
  %2307 = fmul fast float %2303, 2.550000e+02
  %2308 = fadd fast float %2307, 0x3F70101020000000
  %2309 = fptoui float %2308 to i32
  %2310 = icmp ult i32 %2306, %2309
  br i1 %2310, label %2311, label %2479, !dx.controlflow.hints !95

; <label>:2311                                    ; preds = %2268
  %2312 = fadd fast float %2275, -4.000000e+00
  %2313 = call float @dx.op.binary.f32(i32 35, float %2312, float 0.000000e+00)  ; FMax(a,b)
  %2314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2315 = extractvalue %dx.types.CBufRet.f32 %2314, 0
  %2316 = fadd fast float %2315, %2313
  %2317 = extractvalue %dx.types.CBufRet.f32 %2314, 2
  %2318 = fmul fast float %2316, %2317
  %2319 = call float @dx.op.unary.f32(i32 23, float %2318)  ; Log(value)
  %2320 = extractvalue %dx.types.CBufRet.f32 %2314, 3
  %2321 = fmul fast float %2320, %2319
  %2322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2323 = extractvalue %dx.types.CBufRet.f32 %2322, 2
  %2324 = fmul fast float %2321, %2323
  %2325 = call float @dx.op.unary.f32(i32 7, float %2324)  ; Saturate(value)
  %2326 = select i1 %1408, float 1.000000e+00, float %2325
  %2327 = uitofp i32 %2306 to float
  %2328 = uitofp i32 %2309 to float
  %2329 = fadd fast float %2327, 5.000000e-01
  %2330 = fadd fast float %2328, 5.000000e-01
  %2331 = fmul fast float %2323, %2329
  %2332 = fmul fast float %2323, %2330
  %2333 = fadd fast float %2331, 0x3F0FFB4800000000
  %2334 = fadd fast float %2332, 0xBF0FFB4800000000
  %2335 = call float @dx.op.binary.f32(i32 35, float %2326, float %2333)  ; FMax(a,b)
  %2336 = call float @dx.op.binary.f32(i32 36, float %2335, float %2334)  ; FMin(a,b)
  %2337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2338 = extractvalue %dx.types.CBufRet.f32 %2337, 1
  %2339 = extractvalue %dx.types.CBufRet.f32 %2337, 2
  %2340 = extractvalue %dx.types.CBufRet.f32 %2337, 0
  %2341 = select i1 %1403, float %2340, float 0.000000e+00
  %2342 = fmul fast float %2338, %2336
  %2343 = fadd fast float %2341, %2342
  %2344 = fadd fast float %2341, %2339
  %2345 = fsub fast float %2338, %2339
  %2346 = fadd fast float %2345, %2341
  %2347 = call float @dx.op.binary.f32(i32 35, float %2343, float %2344)  ; FMax(a,b)
  %2348 = call float @dx.op.binary.f32(i32 36, float %2347, float %2346)  ; FMin(a,b)
  %2349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %18, float %2281, float %2282, float %2348, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2350 = extractvalue %dx.types.ResRet.f32 %2349, 0
  %2351 = extractvalue %dx.types.ResRet.f32 %2349, 1
  %2352 = extractvalue %dx.types.ResRet.f32 %2349, 2
  %2353 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %2354 = extractvalue %dx.types.CBufRet.i32 %2353, 0
  %2355 = extractvalue %dx.types.CBufRet.i32 %2353, 1
  %2356 = uitofp i32 %2354 to float
  %2357 = uitofp i32 %2355 to float
  %2358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %2359 = extractvalue %dx.types.CBufRet.f32 %2358, 0
  %2360 = extractvalue %dx.types.CBufRet.f32 %2358, 1
  %2361 = fmul fast float %2356, %2281
  %2362 = fmul fast float %2357, %2282
  %2363 = fadd fast float %2361, -5.000000e-01
  %2364 = fadd fast float %2362, -5.000000e-01
  %2365 = call float @dx.op.unary.f32(i32 22, float %2363)  ; Frc(value)
  %2366 = call float @dx.op.unary.f32(i32 22, float %2364)  ; Frc(value)
  %2367 = fmul fast float %2365, %2365
  %2368 = fmul fast float %2367, %2365
  %2369 = fsub fast float 3.000000e+00, %2365
  %2370 = fmul fast float %2367, %2369
  %2371 = fmul fast float %2365, 3.000000e+00
  %2372 = fmul fast float %2368, 3.000000e+00
  %2373 = fmul fast float %2367, 6.000000e+00
  %2374 = fsub fast float %2372, %2373
  %2375 = fadd fast float %2374, 4.000000e+00
  %2376 = fmul fast float %2375, 0x3FC5555560000000
  %2377 = fmul fast float %2368, -3.000000e+00
  %2378 = fadd fast float %2367, %2365
  %2379 = fmul fast float %2378, 3.000000e+00
  %2380 = fadd fast float %2377, 1.000000e+00
  %2381 = fadd fast float %2380, %2379
  %2382 = fmul fast float %2368, 0x3FC5555560000000
  %2383 = fmul fast float %2366, %2366
  %2384 = fmul fast float %2383, %2366
  %2385 = fsub fast float 3.000000e+00, %2366
  %2386 = fmul fast float %2383, %2385
  %2387 = fmul fast float %2366, 3.000000e+00
  %2388 = fmul fast float %2384, 3.000000e+00
  %2389 = fmul fast float %2383, 6.000000e+00
  %2390 = fsub fast float %2388, %2389
  %2391 = fadd fast float %2390, 4.000000e+00
  %2392 = fmul fast float %2391, 0x3FC5555560000000
  %2393 = fmul fast float %2384, -3.000000e+00
  %2394 = fadd fast float %2383, %2366
  %2395 = fmul fast float %2394, 3.000000e+00
  %2396 = fadd fast float %2393, 1.000000e+00
  %2397 = fadd fast float %2396, %2395
  %2398 = fmul fast float %2384, 0x3FC5555560000000
  %2399 = fadd fast float %2365, 1.000000e+00
  %2400 = fsub fast float 1.000000e+00, %2371
  %2401 = fadd fast float %2400, %2370
  %2402 = fadd fast float %2401, %2375
  %2403 = fmul fast float %2402, 0x3FC5555560000000
  %2404 = fdiv fast float %2376, %2403
  %2405 = fsub fast float %2399, %2404
  %2406 = fsub fast float 1.000000e+00, %2365
  %2407 = fadd fast float %2381, %2368
  %2408 = fmul fast float %2407, 0x3FC5555560000000
  %2409 = fdiv fast float %2382, %2408
  %2410 = fadd fast float %2406, %2409
  %2411 = fadd fast float %2366, 1.000000e+00
  %2412 = fsub fast float 1.000000e+00, %2387
  %2413 = fadd fast float %2412, %2386
  %2414 = fadd fast float %2413, %2391
  %2415 = fmul fast float %2414, 0x3FC5555560000000
  %2416 = fdiv fast float %2392, %2415
  %2417 = fsub fast float %2411, %2416
  %2418 = fsub fast float 1.000000e+00, %2366
  %2419 = fadd fast float %2397, %2384
  %2420 = fmul fast float %2419, 0x3FC5555560000000
  %2421 = fdiv fast float %2398, %2420
  %2422 = fadd fast float %2421, %2418
  %2423 = fmul fast float %2405, %2359
  %2424 = fsub fast float %2281, %2423
  %2425 = fmul fast float %2410, %2359
  %2426 = fadd fast float %2425, %2281
  %2427 = fmul fast float %2422, %2360
  %2428 = fadd fast float %2427, %2282
  %2429 = fmul fast float %2417, %2360
  %2430 = fsub fast float %2282, %2429
  %2431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %18, float %2424, float %2430, float %2348, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2432 = extractvalue %dx.types.ResRet.f32 %2431, 0
  %2433 = extractvalue %dx.types.ResRet.f32 %2431, 1
  %2434 = extractvalue %dx.types.ResRet.f32 %2431, 2
  %2435 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %18, float %2426, float %2430, float %2348, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2436 = extractvalue %dx.types.ResRet.f32 %2435, 0
  %2437 = extractvalue %dx.types.ResRet.f32 %2435, 1
  %2438 = extractvalue %dx.types.ResRet.f32 %2435, 2
  %2439 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %18, float %2424, float %2428, float %2348, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2440 = extractvalue %dx.types.ResRet.f32 %2439, 0
  %2441 = extractvalue %dx.types.ResRet.f32 %2439, 1
  %2442 = extractvalue %dx.types.ResRet.f32 %2439, 2
  %2443 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %18, float %2426, float %2428, float %2348, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2444 = extractvalue %dx.types.ResRet.f32 %2443, 0
  %2445 = extractvalue %dx.types.ResRet.f32 %2443, 1
  %2446 = extractvalue %dx.types.ResRet.f32 %2443, 2
  %2447 = fsub fast float %2440, %2432
  %2448 = fsub fast float %2441, %2433
  %2449 = fsub fast float %2442, %2434
  %2450 = fmul fast float %2447, %2420
  %2451 = fmul fast float %2448, %2420
  %2452 = fmul fast float %2449, %2420
  %2453 = fadd fast float %2450, %2432
  %2454 = fadd fast float %2451, %2433
  %2455 = fadd fast float %2452, %2434
  %2456 = fsub fast float %2444, %2436
  %2457 = fsub fast float %2445, %2437
  %2458 = fsub fast float %2446, %2438
  %2459 = fmul fast float %2456, %2420
  %2460 = fmul fast float %2457, %2420
  %2461 = fmul fast float %2458, %2420
  %2462 = fsub fast float %2436, %2453
  %2463 = fadd fast float %2462, %2459
  %2464 = fsub fast float %2437, %2454
  %2465 = fadd fast float %2464, %2460
  %2466 = fsub fast float %2438, %2455
  %2467 = fadd fast float %2466, %2461
  %2468 = fmul fast float %2463, %2408
  %2469 = fmul fast float %2465, %2408
  %2470 = fmul fast float %2467, %2408
  %2471 = fadd fast float %2468, %2453
  %2472 = fadd fast float %2469, %2454
  %2473 = fadd fast float %2470, %2455
  %2474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2475 = extractvalue %dx.types.CBufRet.f32 %2474, 1
  %2476 = fmul fast float %2471, %2475
  %2477 = fmul fast float %2472, %2475
  %2478 = fmul fast float %2473, %2475
  br label %2479

; <label>:2479                                    ; preds = %2311, %2268
  %2480 = phi float [ %2350, %2311 ], [ 1.000000e+00, %2268 ]
  %2481 = phi float [ %2351, %2311 ], [ 1.000000e+00, %2268 ]
  %2482 = phi float [ %2352, %2311 ], [ 1.000000e+00, %2268 ]
  %2483 = phi float [ %2476, %2311 ], [ 0.000000e+00, %2268 ]
  %2484 = phi float [ %2477, %2311 ], [ 0.000000e+00, %2268 ]
  %2485 = phi float [ %2478, %2311 ], [ 0.000000e+00, %2268 ]
  %2486 = fmul fast float %2480, %2272
  %2487 = fmul fast float %2481, %2273
  %2488 = fmul fast float %2482, %2274
  %2489 = fmul fast float %2480, %2269
  %2490 = fmul fast float %2481, %2270
  %2491 = fmul fast float %2482, %2271
  %2492 = fadd fast float %2483, %2489
  %2493 = fadd fast float %2484, %2490
  %2494 = fadd fast float %2485, %2491
  %2495 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 %1360, i32 %1361, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2496 = extractvalue %dx.types.ResRet.f32 %2495, 0
  %2497 = extractvalue %dx.types.ResRet.f32 %2495, 1
  %2498 = extractvalue %dx.types.ResRet.f32 %2495, 2
  %2499 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2500 = extractvalue %dx.types.CBufRet.i32 %2499, 3
  %2501 = and i32 %2500, 3
  %2502 = icmp ne i32 %2501, 0
  %2503 = and i32 %2500, 4
  %2504 = icmp ne i32 %2503, 0
  %2505 = and i1 %2502, %2504
  br i1 %2505, label %2506, label %2513, !dx.controlflow.hints !96

; <label>:2506                                    ; preds = %2479
  %2507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2508 = extractvalue %dx.types.ResRet.f32 %2507, 0
  %2509 = fsub fast float 1.000000e+00, %2508
  %2510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %2511 = extractvalue %dx.types.CBufRet.f32 %2510, 0
  %2512 = fcmp fast olt float %2509, %2511
  br label %2516

; <label>:2513                                    ; preds = %2479
  %2514 = icmp eq i32 %2503, 0
  %2515 = and i1 %2502, %2514
  br label %2516

; <label>:2516                                    ; preds = %2513, %2506
  %2517 = phi i1 [ %2512, %2506 ], [ %2515, %2513 ]
  %2518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2519 = extractvalue %dx.types.CBufRet.f32 %2518, 0
  br i1 %2517, label %2520, label %2539, !dx.controlflow.hints !97

; <label>:2520                                    ; preds = %2516
  %2521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2522 = extractvalue %dx.types.CBufRet.f32 %2521, 3
  %2523 = call float @dx.op.dot3.f32(i32 55, float %2486, float %2487, float %2488, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2524 = fmul fast float %2523, %2496
  %2525 = call float @dx.op.dot3.f32(i32 55, float %2492, float %2493, float %2494, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2526 = fmul fast float %2519, %2525
  %2527 = fadd fast float %2526, %2524
  br i1 %2505, label %2528, label %2534, !dx.controlflow.hints !98

; <label>:2528                                    ; preds = %2520
  %2529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2530 = extractvalue %dx.types.CBufRet.f32 %2529, 1
  %2531 = fadd fast float %2486, -1.000000e+00
  %2532 = fmul fast float %2530, %2531
  %2533 = fadd fast float %2532, 1.000000e+00
  br label %2534

; <label>:2534                                    ; preds = %2528, %2520
  %2535 = phi float [ %2533, %2528 ], [ %2486, %2520 ]
  %2536 = fsub fast float %2497, %2522
  %2537 = fmul fast float %2535, %2536
  %2538 = fadd fast float %2537, %2522
  br label %2549

; <label>:2539                                    ; preds = %2516
  %2540 = fmul fast float %2496, %2486
  %2541 = fmul fast float %2497, %2487
  %2542 = fmul fast float %2498, %2488
  %2543 = fmul fast float %2519, %2492
  %2544 = fmul fast float %2519, %2493
  %2545 = fmul fast float %2519, %2494
  %2546 = fadd fast float %2543, %2540
  %2547 = fadd fast float %2544, %2541
  %2548 = fadd fast float %2545, %2542
  br label %2549

; <label>:2549                                    ; preds = %2539, %2534
  %2550 = phi float [ %2527, %2534 ], [ %2546, %2539 ]
  %2551 = phi float [ %2538, %2534 ], [ %2547, %2539 ]
  %2552 = phi float [ %2498, %2534 ], [ %2548, %2539 ]
  %2553 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %2554 = extractvalue %dx.types.CBufRet.i32 %2553, 1
  %2555 = shl i32 %2554, 1
  %2556 = lshr i32 %1361, 5
  %2557 = extractvalue %dx.types.CBufRet.i32 %2553, 0
  %2558 = mul i32 %2557, %2556
  %2559 = add i32 %2555, %1271
  %2560 = add i32 %2559, %2558
  %2561 = shl i32 %2560, 2
  %2562 = and i32 %1361, 24
  %2563 = or i32 %2562, %1276
  %2564 = shl i32 1, %2563
  %2565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %2566 = extractvalue %dx.types.ResRet.i32 %2565, 0
  %2567 = and i32 %2566, %2564
  %2568 = icmp eq i32 %2567, 0
  br i1 %2568, label %2584, label %2569, !dx.controlflow.hints !99

; <label>:2569                                    ; preds = %2549
  %2570 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1360, i32 %1361, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2571 = extractvalue %dx.types.ResRet.f32 %2570, 0
  %2572 = fcmp fast ogt float %2571, 0.000000e+00
  br i1 %2572, label %2573, label %2584, !dx.controlflow.hints !100

; <label>:2573                                    ; preds = %2569
  %2574 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %1360, i32 %1361, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2575 = extractvalue %dx.types.ResRet.f32 %2574, 0
  %2576 = extractvalue %dx.types.ResRet.f32 %2574, 1
  %2577 = extractvalue %dx.types.ResRet.f32 %2574, 2
  %2578 = extractvalue %dx.types.ResRet.f32 %2574, 3
  %2579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %2580 = extractvalue %dx.types.CBufRet.f32 %2579, 2
  %2581 = fmul fast float %2580, %2575
  %2582 = fmul fast float %2580, %2576
  %2583 = fmul fast float %2580, %2577
  br label %2584

; <label>:2584                                    ; preds = %2573, %2569, %2549
  %2585 = phi float [ %2581, %2573 ], [ 0.000000e+00, %2569 ], [ 0.000000e+00, %2549 ]
  %2586 = phi float [ %2582, %2573 ], [ 0.000000e+00, %2569 ], [ 0.000000e+00, %2549 ]
  %2587 = phi float [ %2583, %2573 ], [ 0.000000e+00, %2569 ], [ 0.000000e+00, %2549 ]
  %2588 = phi float [ %2578, %2573 ], [ 0.000000e+00, %2569 ], [ 0.000000e+00, %2549 ]
  %2589 = fsub fast float 1.000000e+00, %2588
  %2590 = fmul fast float %2589, %2550
  %2591 = fmul fast float %2589, %2551
  %2592 = fmul fast float %2589, %2552
  %2593 = fadd fast float %2590, %2585
  %2594 = fadd fast float %2591, %2586
  %2595 = fadd fast float %2592, %2587
  %2596 = fadd fast float %1391, 0x3FE3C6EF40000000
  %2597 = call float @dx.op.unary.f32(i32 22, float %2596)  ; Frc(value)
  %2598 = call float @dx.op.unary.f32(i32 23, float %2593)  ; Log(value)
  %2599 = fadd fast float %2598, -7.000000e+00
  %2600 = call float @dx.op.unary.f32(i32 21, float %2599)  ; Exp(value)
  %2601 = fmul fast float %2597, 2.000000e+00
  %2602 = fadd fast float %2601, -1.000000e+00
  %2603 = fmul fast float %2600, %2602
  %2604 = fcmp fast ogt float %2593, 0.000000e+00
  %2605 = select i1 %2604, float %2603, float 0.000000e+00
  %2606 = fadd fast float %2605, %2593
  %2607 = fadd fast float %1391, 0x3FF3C6EF40000000
  %2608 = call float @dx.op.unary.f32(i32 22, float %2607)  ; Frc(value)
  %2609 = call float @dx.op.unary.f32(i32 23, float %2594)  ; Log(value)
  %2610 = fadd fast float %2609, -7.000000e+00
  %2611 = call float @dx.op.unary.f32(i32 21, float %2610)  ; Exp(value)
  %2612 = fmul fast float %2608, 2.000000e+00
  %2613 = fadd fast float %2612, -1.000000e+00
  %2614 = fmul fast float %2611, %2613
  %2615 = fcmp fast ogt float %2594, 0.000000e+00
  %2616 = select i1 %2615, float %2614, float 0.000000e+00
  %2617 = fadd fast float %2616, %2594
  %2618 = fadd fast float %1391, 0x3FFDAA66E0000000
  %2619 = call float @dx.op.unary.f32(i32 22, float %2618)  ; Frc(value)
  %2620 = call float @dx.op.unary.f32(i32 23, float %2595)  ; Log(value)
  %2621 = fadd fast float %2620, -6.000000e+00
  %2622 = call float @dx.op.unary.f32(i32 21, float %2621)  ; Exp(value)
  %2623 = fmul fast float %2619, 2.000000e+00
  %2624 = fadd fast float %2623, -1.000000e+00
  %2625 = fmul fast float %2622, %2624
  %2626 = fcmp fast ogt float %2595, 0.000000e+00
  %2627 = select i1 %2626, float %2625, float 0.000000e+00
  %2628 = fadd fast float %2627, %2595
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1360, i32 %1361, i32 undef, float %2606, float %2617, float %2628, float %2606, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2629 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2630 = extractvalue %dx.types.CBufRet.i32 %2629, 0
  %2631 = and i32 %2630, 1
  %2632 = icmp ne i32 %2631, 0
  %2633 = or i32 %1361, %1353
  %2634 = and i32 %2633, 1
  %2635 = icmp eq i32 %2634, 0
  %2636 = and i1 %2635, %2632
  br i1 %2636, label %2637, label %1370, !dx.controlflow.hints !101

; <label>:2637                                    ; preds = %2584
  %2638 = and i32 %43, 2147483647
  %2639 = lshr i32 %1361, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2638, i32 %2639, i32 undef, float %2496, float %2497, float %2498, float %2496, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1370

; <label>:2640                                    ; preds = %1370
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
!dx.entryPoints = !{!32}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !22, !25, !28}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21}
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
!18 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 21, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 22, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 12, i32 1, i32 2, i32 0, !7}
!22 = !{!23, !24}
!23 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!24 = !{i32 1, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!25 = !{!26, !27}
!26 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!27 = !{i32 1, %PostOpaqueConstants* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!28 = !{!29, !30, !31}
!29 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!30 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!31 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!32 = !{void ()* @cs_post_opaque_processes_subsampletile, !"cs_post_opaque_processes_subsampletile", null, !4, !33}
!33 = !{i32 0, i64 8464, i32 4, !34}
!34 = !{i32 8, i32 8, i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 1}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = !{!48, !48, i64 0}
!48 = !{!"float", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !{!52, !54, !56, !57, !59, !60, !61}
!52 = distinct !{!52, !53, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!53 = distinct !{!53, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!54 = distinct !{!54, !55, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!55 = distinct !{!55, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!56 = distinct !{!56, !55, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!57 = distinct !{!57, !58, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %extinction"}
!58 = distinct !{!58, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z"}
!59 = distinct !{!59, !58, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %scattering"}
!60 = distinct !{!60, !58, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %thermalFogExtinction"}
!61 = distinct !{!61, !62, !"\01?PostOpaqueProcessesQuadLoop@@YAXV?$vector@I$01@@00V?$vector@M$03@@AIAV?$vector@M$02@@_N33V?$vector@_N$03@@@Z: %colorQuadAvg"}
!62 = distinct !{!62, !"\01?PostOpaqueProcessesQuadLoop@@YAXV?$vector@I$01@@00V?$vector@M$03@@AIAV?$vector@M$02@@_N33V?$vector@_N$03@@@Z"}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = !{!65}
!65 = distinct !{!65, !66, !"\01?sort@@YAXAIAM00@Z: %c"}
!66 = distinct !{!66, !"\01?sort@@YAXAIAM00@Z"}
!67 = !{!68, !69, !52, !54, !56, !57, !59, !60, !61}
!68 = distinct !{!68, !66, !"\01?sort@@YAXAIAM00@Z: %a"}
!69 = distinct !{!69, !66, !"\01?sort@@YAXAIAM00@Z: %b"}
!70 = !{!69}
!71 = !{!68, !65, !52, !54, !56, !57, !59, !60, !61}
!72 = !{!68}
!73 = !{!69, !65, !52, !54, !56, !57, !59, !60, !61}
!74 = !{!75}
!75 = distinct !{!75, !76, !"\01?sort@@YAXAIAM00@Z: %c"}
!76 = distinct !{!76, !"\01?sort@@YAXAIAM00@Z"}
!77 = !{!78, !79, !52, !54, !56, !57, !59, !60, !61}
!78 = distinct !{!78, !76, !"\01?sort@@YAXAIAM00@Z: %a"}
!79 = distinct !{!79, !76, !"\01?sort@@YAXAIAM00@Z: %b"}
!80 = !{!79}
!81 = !{!78, !75, !52, !54, !56, !57, !59, !60, !61}
!82 = !{!78}
!83 = !{!79, !75, !52, !54, !56, !57, !59, !60, !61}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = !{!61}
!104 = !{!105, !107, !109, !110, !112, !113, !61}
!105 = distinct !{!105, !106, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!106 = distinct !{!106, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!107 = distinct !{!107, !108, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!108 = distinct !{!108, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!109 = distinct !{!109, !108, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!110 = distinct !{!110, !111, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %extinction"}
!111 = distinct !{!111, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z"}
!112 = distinct !{!112, !111, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %scattering"}
!113 = distinct !{!113, !111, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %thermalFogExtinction"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"\01?sort@@YAXAIAM00@Z: %c"}
!116 = distinct !{!116, !"\01?sort@@YAXAIAM00@Z"}
!117 = !{!118, !119, !105, !107, !109, !110, !112, !113, !61}
!118 = distinct !{!118, !116, !"\01?sort@@YAXAIAM00@Z: %a"}
!119 = distinct !{!119, !116, !"\01?sort@@YAXAIAM00@Z: %b"}
!120 = !{!119}
!121 = !{!118, !115, !105, !107, !109, !110, !112, !113, !61}
!122 = !{!118}
!123 = !{!119, !115, !105, !107, !109, !110, !112, !113, !61}
!124 = !{!125}
!125 = distinct !{!125, !126, !"\01?sort@@YAXAIAM00@Z: %c"}
!126 = distinct !{!126, !"\01?sort@@YAXAIAM00@Z"}
!127 = !{!128, !129, !105, !107, !109, !110, !112, !113, !61}
!128 = distinct !{!128, !126, !"\01?sort@@YAXAIAM00@Z: %a"}
!129 = distinct !{!129, !126, !"\01?sort@@YAXAIAM00@Z: %b"}
!130 = !{!129}
!131 = !{!128, !125, !105, !107, !109, !110, !112, !113, !61}
!132 = !{!128}
!133 = !{!129, !125, !105, !107, !109, !110, !112, !113, !61}

