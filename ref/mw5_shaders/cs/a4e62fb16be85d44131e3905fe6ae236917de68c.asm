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
; shader hash: 6e17c1af71f8409a19294fde704a88c2
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

define void @cs_post_opaque_processes_luma_subsampletile() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %94 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %92, i32 %93, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %1199 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1197, i32 %1198, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1200 = extractvalue %dx.types.ResRet.f32 %1199, 0
  %1201 = fadd fast float %1200, %1194
  %1202 = call float @dx.op.unary.f32(i32 22, float %1201)  ; Frc(value)
  %1203 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 undef, i32 %46, i32 %47, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %1285 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %46, i32 %47, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1286 = extractvalue %dx.types.ResRet.f32 %1285, 0
  %1287 = fcmp fast ogt float %1286, 0.000000e+00
  br i1 %1287, label %1288, label %1299, !dx.controlflow.hints !101

; <label>:1288                                    ; preds = %1284
  %1289 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %46, i32 %47, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %46, i32 %47, i32 undef, float %1321, float %1332, float %1343, float %1321, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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

; <label>:1352                                    ; preds = %1375, %1351
  %1353 = phi float [ %1376, %1375 ], [ %1308, %1351 ]
  %1354 = phi float [ %1377, %1375 ], [ %1309, %1351 ]
  %1355 = phi float [ %1378, %1375 ], [ %1310, %1351 ]
  %1356 = phi float [ %1379, %1375 ], [ 1.000000e+00, %1351 ]
  %1357 = phi i32 [ %1362, %1375 ], [ 14, %1351 ]
  %1358 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1357)  ; FirstbitLo(value)
  %1359 = and i32 %1358, 31
  %1360 = shl i32 1, %1359
  %1361 = xor i32 %1360, -1
  %1362 = and i32 %1357, %1361
  %1363 = and i32 %1358, 1
  %1364 = lshr i32 %1358, 1
  %1365 = or i32 %1363, %46
  %1366 = add i32 %1364, %47
  %1367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1368 = extractvalue %dx.types.CBufRet.f32 %1367, 0
  %1369 = fptoui float %1368 to i32
  %1370 = icmp uge i32 %1365, %1369
  %1371 = extractvalue %dx.types.CBufRet.f32 %1367, 1
  %1372 = fptoui float %1371 to i32
  %1373 = icmp uge i32 %1366, %1372
  %1374 = or i1 %1370, %1373
  br i1 %1374, label %1375, label %1381, !dx.controlflow.hints !103

; <label>:1375                                    ; preds = %2649, %1352
  %1376 = phi float [ %1353, %1352 ], [ %2650, %2649 ]
  %1377 = phi float [ %1354, %1352 ], [ %2651, %2649 ]
  %1378 = phi float [ %1355, %1352 ], [ %2652, %2649 ]
  %1379 = phi float [ %1356, %1352 ], [ %2653, %2649 ]
  %1380 = icmp eq i32 %1362, 0
  br i1 %1380, label %2654, label %1352

; <label>:1381                                    ; preds = %1352
  %1382 = uitofp i32 %1365 to float
  %1383 = uitofp i32 %1366 to float
  %1384 = fadd fast float %1382, 5.000000e-01
  %1385 = fadd fast float %1383, 5.000000e-01
  %1386 = extractvalue %dx.types.CBufRet.f32 %1367, 2
  %1387 = extractvalue %dx.types.CBufRet.f32 %1367, 3
  %1388 = fmul fast float %1386, %1384
  %1389 = fmul fast float %1387, %1385
  %1390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1391 = extractvalue %dx.types.CBufRet.f32 %1390, 2
  %1392 = fmul fast float %1391, 0x3FE3C6EF40000000
  %1393 = frem fast float %1382, 2.560000e+02
  %1394 = frem fast float %1383, 2.560000e+02
  %1395 = fptoui float %1393 to i32
  %1396 = fptoui float %1394 to i32
  %1397 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1395, i32 %1396, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1398 = extractvalue %dx.types.ResRet.f32 %1397, 0
  %1399 = fadd fast float %1398, %1392
  %1400 = call float @dx.op.unary.f32(i32 22, float %1399)  ; Frc(value)
  %1401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1402 = extractvalue %dx.types.ResRet.i32 %1401, 0
  %1403 = and i32 %1402, 114688
  %1404 = icmp ne i32 %1403, 0
  %1405 = select i1 %1404, i32 %1365, i32 0
  %1406 = select i1 %1404, i32 %1366, i32 0
  %1407 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %1405, i32 %1406, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1408 = extractvalue %dx.types.ResRet.f32 %1407, 0
  %1409 = fmul fast float %1408, 2.550000e+02
  %1410 = fptoui float %1409 to i32
  %1411 = icmp eq i32 %1410, 3
  %1412 = and i1 %1404, %1411
  %1413 = getelementptr [4 x float], [4 x float]* %31, i32 0, i32 %1358
  %1414 = load float, float* %1413, align 4, !tbaa !48, !noalias !104
  %1415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1416 = extractvalue %dx.types.CBufRet.f32 %1415, 3
  %1417 = fcmp fast oge float %1414, %1416
  br i1 %1412, label %2277, label %1418, !dx.controlflow.hints !36

; <label>:1418                                    ; preds = %1381
  %1419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 170)  ; CBufferLoadLegacy(handle,regIndex)
  %1420 = extractvalue %dx.types.CBufRet.f32 %1419, 0
  %1421 = select i1 %1417, float %1420, float %1414
  %1422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1423 = extractvalue %dx.types.CBufRet.f32 %1422, 2
  %1424 = extractvalue %dx.types.CBufRet.f32 %1422, 3
  %1425 = fmul fast float %1384, 2.000000e+00
  %1426 = fmul fast float %1425, %1423
  %1427 = fmul fast float %1385, 2.000000e+00
  %1428 = fmul fast float %1427, %1424
  %1429 = fsub fast float 1.000000e+00, %1426
  %1430 = fsub fast float 1.000000e+00, %1428
  %1431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1432 = extractvalue %dx.types.CBufRet.f32 %1431, 0
  %1433 = extractvalue %dx.types.CBufRet.f32 %1431, 1
  %1434 = extractvalue %dx.types.CBufRet.f32 %1431, 2
  %1435 = fmul fast float %1429, %1432
  %1436 = fmul fast float %1429, %1433
  %1437 = fmul fast float %1429, %1434
  %1438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1439 = extractvalue %dx.types.CBufRet.f32 %1438, 0
  %1440 = extractvalue %dx.types.CBufRet.f32 %1438, 1
  %1441 = extractvalue %dx.types.CBufRet.f32 %1438, 2
  %1442 = fmul fast float %1430, %1439
  %1443 = fmul fast float %1430, %1440
  %1444 = fmul fast float %1430, %1441
  %1445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1446 = extractvalue %dx.types.CBufRet.f32 %1445, 0
  %1447 = extractvalue %dx.types.CBufRet.f32 %1445, 1
  %1448 = extractvalue %dx.types.CBufRet.f32 %1445, 2
  %1449 = fadd fast float %1442, %1446
  %1450 = fadd fast float %1449, %1435
  %1451 = fadd fast float %1443, %1447
  %1452 = fadd fast float %1451, %1436
  %1453 = fadd fast float %1444, %1448
  %1454 = fadd fast float %1453, %1437
  %1455 = fmul fast float %1450, %1421
  %1456 = fmul fast float %1452, %1421
  %1457 = fmul fast float %1454, %1421
  %1458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 163)  ; CBufferLoadLegacy(handle,regIndex)
  %1459 = extractvalue %dx.types.CBufRet.f32 %1458, 0
  %1460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1461 = extractvalue %dx.types.CBufRet.f32 %1460, 0
  %1462 = extractvalue %dx.types.CBufRet.f32 %1460, 1
  %1463 = extractvalue %dx.types.CBufRet.f32 %1460, 2
  %1464 = extractvalue %dx.types.CBufRet.f32 %1460, 3
  %1465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1466 = extractvalue %dx.types.CBufRet.f32 %1465, 0
  %1467 = extractvalue %dx.types.CBufRet.f32 %1465, 1
  %1468 = extractvalue %dx.types.CBufRet.f32 %1465, 2
  %1469 = extractvalue %dx.types.CBufRet.f32 %1465, 3
  %1470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1471 = extractvalue %dx.types.CBufRet.f32 %1470, 0
  %1472 = extractvalue %dx.types.CBufRet.f32 %1470, 1
  %1473 = extractvalue %dx.types.CBufRet.f32 %1470, 2
  %1474 = extractvalue %dx.types.CBufRet.f32 %1470, 3
  %1475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1476 = extractvalue %dx.types.CBufRet.f32 %1475, 0
  %1477 = extractvalue %dx.types.CBufRet.f32 %1475, 1
  %1478 = extractvalue %dx.types.CBufRet.f32 %1475, 2
  %1479 = extractvalue %dx.types.CBufRet.f32 %1475, 3
  %1480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1481 = extractvalue %dx.types.CBufRet.f32 %1480, 3
  %1482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1483 = extractvalue %dx.types.CBufRet.f32 %1482, 3
  %1484 = extractvalue %dx.types.CBufRet.f32 %1482, 0
  %1485 = extractvalue %dx.types.CBufRet.f32 %1482, 1
  %1486 = extractvalue %dx.types.CBufRet.f32 %1482, 2
  %1487 = fcmp fast olt float %1486, -5.000000e-01
  %1488 = extractvalue %dx.types.CBufRet.f32 %1458, 3
  %1489 = call float @dx.op.dot3.f32(i32 55, float %1455, float %1456, float %1457, float %1455, float %1456, float %1457)  ; Dot3(ax,ay,az,bx,by,bz)
  %1490 = call float @dx.op.unary.f32(i32 25, float %1489)  ; Rsqrt(value)
  %1491 = fmul fast float %1490, %1489
  %1492 = fmul fast float %1490, %1455
  %1493 = fmul fast float %1490, %1456
  %1494 = fmul fast float %1490, %1457
  %1495 = fadd fast float %1491, %1464
  br i1 %1417, label %1496, label %1508, !dx.controlflow.hints !37

; <label>:1496                                    ; preds = %1418
  %1497 = extractvalue %dx.types.CBufRet.f32 %1458, 2
  %1498 = extractvalue %dx.types.CBufRet.f32 %1458, 1
  %1499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 187)  ; CBufferLoadLegacy(handle,regIndex)
  %1500 = extractvalue %dx.types.CBufRet.f32 %1499, 1
  %1501 = extractvalue %dx.types.CBufRet.f32 %1499, 0
  %1502 = call float @dx.op.binary.f32(i32 35, float %1494, float %1501)  ; FMax(a,b)
  %1503 = call float @dx.op.binary.f32(i32 36, float %1502, float %1500)  ; FMin(a,b)
  %1504 = fmul fast float %1503, %1498
  %1505 = fadd fast float %1504, %1497
  %1506 = call float @dx.op.unary.f32(i32 7, float %1505)  ; Saturate(value)
  %1507 = fmul fast float %1494, %1459
  br label %1508

; <label>:1508                                    ; preds = %1496, %1418
  %1509 = phi float [ %1459, %1496 ], [ %1495, %1418 ]
  %1510 = phi float [ %1506, %1496 ], [ 0.000000e+00, %1418 ]
  %1511 = phi float [ %1507, %1496 ], [ %1457, %1418 ]
  %1512 = call float @dx.op.dot3.f32(i32 55, float %1492, float %1493, float %1494, float %1461, float %1462, float %1463)  ; Dot3(ax,ay,az,bx,by,bz)
  %1513 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1514 = extractvalue %dx.types.CBufRet.i32 %1513, 1
  %1515 = and i32 %1514, 1
  %1516 = icmp ne i32 %1515, 0
  %1517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1518 = extractvalue %dx.types.CBufRet.f32 %1517, 2
  %1519 = fcmp fast ogt float %1518, 0.000000e+00
  %1520 = and i1 %1516, %1519
  br i1 %1520, label %1521, label %1930, !dx.controlflow.hints !38

; <label>:1521                                    ; preds = %1508
  %1522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1523 = extractvalue %dx.types.CBufRet.f32 %1522, 3
  %1524 = select i1 %1417, float %1523, float %1491
  %1525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1526 = extractvalue %dx.types.CBufRet.f32 %1525, 3
  %1527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1528 = extractvalue %dx.types.CBufRet.f32 %1527, 2
  %1529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1530 = extractvalue %dx.types.CBufRet.f32 %1529, 2
  %1531 = fsub fast float %1528, %1530
  %1532 = and i32 %1514, 2
  %1533 = extractvalue %dx.types.CBufRet.i32 %1513, 0
  %1534 = call i32 @dx.op.binary.i32(i32 40, i32 %1533, i32 3)  ; UMin(a,b)
  %1535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1536 = extractvalue %dx.types.CBufRet.f32 %1535, 0
  %1537 = extractvalue %dx.types.CBufRet.f32 %1535, 1
  %1538 = extractvalue %dx.types.CBufRet.f32 %1529, 0
  %1539 = extractvalue %dx.types.CBufRet.f32 %1529, 1
  %1540 = fsub fast float %1536, %1538
  %1541 = fsub fast float %1537, %1539
  %1542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1543 = extractvalue %dx.types.CBufRet.f32 %1542, 0
  %1544 = fcmp fast ogt float %1543, 0.000000e+00
  %1545 = fsub fast float -0.000000e+00, %1540
  %1546 = fsub fast float -0.000000e+00, %1541
  %1547 = call float @dx.op.dot2.f32(i32 54, float %1492, float %1493, float %1492, float %1493)  ; Dot2(ax,ay,bx,by)
  %1548 = call float @dx.op.dot2.f32(i32 54, float %1492, float %1493, float %1545, float %1546)  ; Dot2(ax,ay,bx,by)
  %1549 = fmul fast float %1548, 2.000000e+00
  %1550 = call float @dx.op.dot2.f32(i32 54, float %1545, float %1546, float %1545, float %1546)  ; Dot2(ax,ay,bx,by)
  %1551 = fmul fast float %1543, %1543
  %1552 = fsub fast float %1550, %1551
  %1553 = fmul fast float %1549, %1549
  %1554 = fmul fast float %1547, 4.000000e+00
  %1555 = fmul fast float %1554, %1552
  %1556 = fsub fast float %1553, %1555
  %1557 = fcmp fast ogt float %1556, 0.000000e+00
  br i1 %1557, label %1558, label %1573, !dx.controlflow.hints !39

; <label>:1558                                    ; preds = %1521
  %1559 = fcmp fast ogt float %1549, 0.000000e+00
  %1560 = call float @dx.op.unary.f32(i32 24, float %1556)  ; Sqrt(value)
  %1561 = fsub fast float -0.000000e+00, %1560
  %1562 = select i1 %1559, float %1560, float %1561
  %1563 = fadd fast float %1562, %1549
  %1564 = fmul float %1563, -5.000000e-01
  %1565 = fdiv fast float %1564, %1547
  %1566 = call float @dx.op.binary.f32(i32 35, float %1565, float 0.000000e+00)  ; FMax(a,b)
  %1567 = call float @dx.op.binary.f32(i32 36, float %1524, float %1566)  ; FMin(a,b)
  %1568 = fdiv fast float %1552, %1564
  %1569 = call float @dx.op.binary.f32(i32 35, float %1568, float 0.000000e+00)  ; FMax(a,b)
  %1570 = call float @dx.op.binary.f32(i32 36, float %1524, float %1569)  ; FMin(a,b)
  %1571 = call float @dx.op.binary.f32(i32 36, float %1567, float %1570)  ; FMin(a,b)
  %1572 = call float @dx.op.binary.f32(i32 35, float %1567, float %1570)  ; FMax(a,b)
  br label %1573

; <label>:1573                                    ; preds = %1558, %1521
  %1574 = phi float [ %1572, %1558 ], [ -1.000000e+00, %1521 ]
  %1575 = phi float [ %1571, %1558 ], [ -1.000000e+00, %1521 ]
  %1576 = phi i1 [ true, %1558 ], [ false, %1521 ]
  %1577 = and i1 %1544, %1576
  br i1 %1577, label %1578, label %1580, !dx.controlflow.hints !40

; <label>:1578                                    ; preds = %1573
  %1579 = fcmp fast oeq float %1575, %1574
  br i1 %1579, label %1883, label %1581, !dx.controlflow.hints !41

; <label>:1580                                    ; preds = %1573
  br i1 %1544, label %1883, label %1581, !dx.controlflow.hints !42

; <label>:1581                                    ; preds = %1580, %1578
  %1582 = phi float [ %1524, %1580 ], [ %1574, %1578 ]
  %1583 = phi float [ 0.000000e+00, %1580 ], [ %1575, %1578 ]
  %1584 = icmp ne i32 %1532, 0
  %1585 = fmul fast float %1582, %1494
  %1586 = fadd fast float %1585, %1526
  %1587 = fmul fast float %1586, %1582
  %1588 = select i1 %1584, float 0.000000e+00, float %1587
  %1589 = fcmp fast oeq float %1494, 0.000000e+00
  %1590 = fdiv fast float %1531, %1494
  %1591 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1590)  ; FMax(a,b)
  %1592 = select i1 %1589, float %1582, float %1591
  %1593 = call float @dx.op.binary.f32(i32 36, float %1582, float %1592)  ; FMin(a,b)
  %1594 = fcmp fast ogt float %1494, 0.000000e+00
  %1595 = fcmp fast olt float %1531, 0.000000e+00
  br i1 %1594, label %1596, label %1653, !dx.controlflow.hints !43

; <label>:1596                                    ; preds = %1581
  %1597 = icmp eq i32 %1532, 0
  br i1 %1595, label %1598, label %1642, !dx.controlflow.hints !44

; <label>:1598                                    ; preds = %1596
  %1599 = select i1 %1597, float %1582, float 0.000000e+00
  %1600 = fsub fast float -0.000000e+00, %1599
  %1601 = call float @dx.op.unary.f32(i32 6, float %1600)  ; FAbs(value)
  %1602 = fmul fast float %1599, %1494
  %1603 = fadd fast float %1602, %1526
  %1604 = fmul fast float %1601, %1603
  %1605 = fsub fast float %1588, %1604
  %1606 = fsub fast float %1582, %1601
  %1607 = select i1 %1597, float %1606, float 0.000000e+00
  %1608 = extractvalue %dx.types.CBufRet.f32 %1522, 0
  %1609 = extractvalue %dx.types.CBufRet.f32 %1522, 1
  %1610 = extractvalue %dx.types.CBufRet.f32 %1522, 2
  %1611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1612 = extractvalue %dx.types.CBufRet.f32 %1611, 0
  %1613 = extractvalue %dx.types.CBufRet.f32 %1611, 1
  %1614 = extractvalue %dx.types.CBufRet.f32 %1611, 2
  %1615 = extractvalue %dx.types.CBufRet.f32 %1611, 3
  %1616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1617 = extractvalue %dx.types.CBufRet.f32 %1616, 3
  %1618 = call float @dx.op.binary.f32(i32 36, float %1605, float %1617)  ; FMin(a,b)
  %1619 = fmul fast float %1615, %1607
  %1620 = call float @dx.op.unary.f32(i32 7, float %1619)  ; Saturate(value)
  %1621 = fsub fast float %1612, %1608
  %1622 = fsub fast float %1613, %1609
  %1623 = fsub fast float %1614, %1610
  %1624 = fmul fast float %1620, %1621
  %1625 = fmul fast float %1620, %1622
  %1626 = fmul fast float %1620, %1623
  %1627 = fadd fast float %1624, %1608
  %1628 = fadd fast float %1625, %1609
  %1629 = fadd fast float %1626, %1610
  br i1 %1417, label %1883, label %1630, !dx.controlflow.hints !45

; <label>:1630                                    ; preds = %1598
  %1631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1632 = extractvalue %dx.types.CBufRet.f32 %1631, 0
  %1633 = extractvalue %dx.types.CBufRet.f32 %1631, 1
  %1634 = fadd fast float %1633, %1632
  %1635 = call float @dx.op.unary.f32(i32 7, float %1634)  ; Saturate(value)
  %1636 = extractvalue %dx.types.CBufRet.f32 %1631, 2
  %1637 = extractvalue %dx.types.CBufRet.f32 %1631, 3
  %1638 = fadd fast float %1637, %1636
  %1639 = call float @dx.op.unary.f32(i32 7, float %1638)  ; Saturate(value)
  %1640 = fmul fast float %1635, %1618
  %1641 = fmul fast float %1640, %1639
  br label %1883

; <label>:1642                                    ; preds = %1596
  br i1 %1597, label %1643, label %1664, !dx.controlflow.hints !46

; <label>:1643                                    ; preds = %1642
  %1644 = call float @dx.op.binary.f32(i32 36, float %1593, float %1583)  ; FMin(a,b)
  %1645 = fsub fast float %1593, %1644
  %1646 = fsub fast float %1645, %1582
  %1647 = call float @dx.op.unary.f32(i32 6, float %1646)  ; FAbs(value)
  %1648 = fadd fast float %1645, %1582
  %1649 = fmul fast float %1648, %1494
  %1650 = fadd fast float %1649, %1526
  %1651 = fmul fast float %1650, %1647
  %1652 = fsub fast float %1588, %1651
  br label %1664

; <label>:1653                                    ; preds = %1581
  br i1 %1595, label %1654, label %1664, !dx.controlflow.hints !47

; <label>:1654                                    ; preds = %1653
  %1655 = call float @dx.op.binary.f32(i32 35, float %1583, float %1593)  ; FMax(a,b)
  %1656 = icmp eq i32 %1532, 0
  %1657 = select i1 %1656, float %1593, float 0.000000e+00
  %1658 = fsub fast float -0.000000e+00, %1657
  %1659 = call float @dx.op.unary.f32(i32 6, float %1658)  ; FAbs(value)
  %1660 = fmul fast float %1657, %1494
  %1661 = fadd fast float %1660, %1526
  %1662 = fmul fast float %1659, %1661
  %1663 = fsub fast float %1588, %1662
  br label %1664

; <label>:1664                                    ; preds = %1654, %1653, %1643, %1642
  %1665 = phi float [ %1583, %1642 ], [ %1583, %1643 ], [ %1655, %1654 ], [ %1583, %1653 ]
  %1666 = phi float [ 0.000000e+00, %1642 ], [ %1647, %1643 ], [ %1659, %1654 ], [ 0.000000e+00, %1653 ]
  %1667 = phi float [ %1588, %1642 ], [ %1652, %1643 ], [ %1663, %1654 ], [ %1588, %1653 ]
  %1668 = phi float [ %1593, %1642 ], [ %1593, %1643 ], [ %1582, %1654 ], [ %1582, %1653 ]
  %1669 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 0
  store float -1.000000e+00, float* %1669, align 4, !tbaa !48, !noalias !105
  %1670 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 1
  store float -1.000000e+00, float* %1670, align 4, !tbaa !48, !noalias !105
  %1671 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 2
  store float -1.000000e+00, float* %1671, align 4, !tbaa !48, !noalias !105
  %1672 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 0
  store float -1.000000e+00, float* %1672, align 4, !tbaa !48, !noalias !105
  %1673 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 1
  store float -1.000000e+00, float* %1673, align 4, !tbaa !48, !noalias !105
  %1674 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 2
  store float -1.000000e+00, float* %1674, align 4, !tbaa !48, !noalias !105
  %1675 = icmp sgt i32 %1534, 0
  br i1 %1675, label %1676, label %1737

; <label>:1676                                    ; preds = %1664
  br label %1677

; <label>:1677                                    ; preds = %1726, %1676
  %1678 = phi i32 [ %1727, %1726 ], [ 0, %1676 ]
  %1679 = phi i32 [ %1728, %1726 ], [ 0, %1676 ]
  %1680 = add nuw i32 %1679, 171
  %1681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 %1680)  ; CBufferLoadLegacy(handle,regIndex)
  %1682 = extractvalue %dx.types.CBufRet.f32 %1681, 0
  %1683 = extractvalue %dx.types.CBufRet.f32 %1681, 1
  %1684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1685 = extractvalue %dx.types.CBufRet.f32 %1684, 0
  %1686 = extractvalue %dx.types.CBufRet.f32 %1684, 1
  %1687 = fsub fast float %1682, %1685
  %1688 = fsub fast float %1683, %1686
  %1689 = extractvalue %dx.types.CBufRet.f32 %1681, 2
  %1690 = fsub fast float -0.000000e+00, %1687
  %1691 = fsub fast float -0.000000e+00, %1688
  %1692 = call float @dx.op.dot2.f32(i32 54, float %1492, float %1493, float %1690, float %1691)  ; Dot2(ax,ay,bx,by)
  %1693 = fmul fast float %1692, 2.000000e+00
  %1694 = call float @dx.op.dot2.f32(i32 54, float %1690, float %1691, float %1690, float %1691)  ; Dot2(ax,ay,bx,by)
  %1695 = fmul fast float %1689, %1689
  %1696 = fsub fast float %1694, %1695
  %1697 = fmul fast float %1693, %1693
  %1698 = fmul fast float %1554, %1696
  %1699 = fsub fast float %1697, %1698
  %1700 = fcmp fast ogt float %1699, 0.000000e+00
  br i1 %1700, label %1701, label %1716, !dx.controlflow.hints !39

; <label>:1701                                    ; preds = %1677
  %1702 = fcmp fast ogt float %1693, 0.000000e+00
  %1703 = call float @dx.op.unary.f32(i32 24, float %1699)  ; Sqrt(value)
  %1704 = fsub fast float -0.000000e+00, %1703
  %1705 = select i1 %1702, float %1703, float %1704
  %1706 = fadd fast float %1705, %1693
  %1707 = fmul float %1706, -5.000000e-01
  %1708 = fdiv fast float %1707, %1547
  %1709 = call float @dx.op.binary.f32(i32 35, float %1708, float 0.000000e+00)  ; FMax(a,b)
  %1710 = call float @dx.op.binary.f32(i32 36, float %1582, float %1709)  ; FMin(a,b)
  %1711 = fdiv fast float %1696, %1707
  %1712 = call float @dx.op.binary.f32(i32 35, float %1711, float 0.000000e+00)  ; FMax(a,b)
  %1713 = call float @dx.op.binary.f32(i32 36, float %1582, float %1712)  ; FMin(a,b)
  %1714 = call float @dx.op.binary.f32(i32 36, float %1710, float %1713)  ; FMin(a,b)
  %1715 = call float @dx.op.binary.f32(i32 35, float %1710, float %1713)  ; FMax(a,b)
  br label %1716

; <label>:1716                                    ; preds = %1701, %1677
  %1717 = phi float [ %1715, %1701 ], [ -1.000000e+00, %1677 ]
  %1718 = phi float [ %1714, %1701 ], [ -1.000000e+00, %1677 ]
  %1719 = phi i1 [ true, %1701 ], [ false, %1677 ]
  br i1 %1719, label %1720, label %1726, !dx.controlflow.hints !64

; <label>:1720                                    ; preds = %1716
  %1721 = call float @dx.op.binary.f32(i32 35, float %1665, float %1718)  ; FMax(a,b)
  %1722 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %1679
  store float %1721, float* %1722, align 4, !tbaa !48, !noalias !105
  %1723 = call float @dx.op.binary.f32(i32 35, float %1665, float %1717)  ; FMax(a,b)
  %1724 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %1679
  store float %1723, float* %1724, align 4, !tbaa !48, !noalias !105
  %1725 = add nsw i32 %1678, 1
  br label %1726

; <label>:1726                                    ; preds = %1720, %1716
  %1727 = phi i32 [ %1725, %1720 ], [ %1678, %1716 ]
  %1728 = add nuw nsw i32 %1679, 1
  %1729 = icmp eq i32 %1728, %1534
  br i1 %1729, label %1730, label %1677

; <label>:1730                                    ; preds = %1726
  %1731 = load float, float* %1671, align 4, !tbaa !48, !alias.scope !115, !noalias !118
  %1732 = load float, float* %1670, align 4, !tbaa !48, !alias.scope !121, !noalias !122
  %1733 = load float, float* %1669, align 4, !tbaa !48, !alias.scope !123, !noalias !124
  %1734 = load float, float* %1674, align 4, !tbaa !48, !alias.scope !125, !noalias !128
  %1735 = load float, float* %1673, align 4, !tbaa !48, !alias.scope !131, !noalias !132
  %1736 = load float, float* %1672, align 4, !tbaa !48, !alias.scope !133, !noalias !134
  br label %1737

; <label>:1737                                    ; preds = %1730, %1664
  %1738 = phi float [ -1.000000e+00, %1664 ], [ %1736, %1730 ]
  %1739 = phi float [ -1.000000e+00, %1664 ], [ %1735, %1730 ]
  %1740 = phi float [ -1.000000e+00, %1664 ], [ %1734, %1730 ]
  %1741 = phi float [ -1.000000e+00, %1664 ], [ %1733, %1730 ]
  %1742 = phi float [ -1.000000e+00, %1664 ], [ %1732, %1730 ]
  %1743 = phi float [ -1.000000e+00, %1664 ], [ %1731, %1730 ]
  %1744 = phi i32 [ 0, %1664 ], [ %1727, %1730 ]
  %1745 = call float @dx.op.binary.f32(i32 36, float %1742, float %1743)  ; FMin(a,b)
  %1746 = call float @dx.op.binary.f32(i32 36, float %1741, float %1745)  ; FMin(a,b)
  %1747 = call float @dx.op.binary.f32(i32 35, float %1741, float %1742)  ; FMax(a,b)
  %1748 = call float @dx.op.binary.f32(i32 36, float %1747, float %1743)  ; FMin(a,b)
  %1749 = call float @dx.op.binary.f32(i32 36, float %1741, float %1742)  ; FMin(a,b)
  %1750 = call float @dx.op.binary.f32(i32 35, float %1749, float %1748)  ; FMax(a,b)
  %1751 = call float @dx.op.binary.f32(i32 35, float %1742, float %1743)  ; FMax(a,b)
  %1752 = call float @dx.op.binary.f32(i32 35, float %1741, float %1751)  ; FMax(a,b)
  store float %1746, float* %1669, align 4, !tbaa !48, !alias.scope !123, !noalias !124
  store float %1750, float* %1670, align 4, !tbaa !48, !alias.scope !121, !noalias !122
  store float %1752, float* %1671, align 4, !tbaa !48, !alias.scope !115, !noalias !118
  %1753 = call float @dx.op.binary.f32(i32 36, float %1739, float %1740)  ; FMin(a,b)
  %1754 = call float @dx.op.binary.f32(i32 36, float %1738, float %1753)  ; FMin(a,b)
  %1755 = call float @dx.op.binary.f32(i32 35, float %1738, float %1739)  ; FMax(a,b)
  %1756 = call float @dx.op.binary.f32(i32 36, float %1755, float %1740)  ; FMin(a,b)
  %1757 = call float @dx.op.binary.f32(i32 36, float %1738, float %1739)  ; FMin(a,b)
  %1758 = call float @dx.op.binary.f32(i32 35, float %1757, float %1756)  ; FMax(a,b)
  %1759 = call float @dx.op.binary.f32(i32 35, float %1739, float %1740)  ; FMax(a,b)
  %1760 = call float @dx.op.binary.f32(i32 35, float %1738, float %1759)  ; FMax(a,b)
  store float %1754, float* %1672, align 4, !tbaa !48, !alias.scope !133, !noalias !134
  store float %1758, float* %1673, align 4, !tbaa !48, !alias.scope !131, !noalias !132
  store float %1760, float* %1674, align 4, !tbaa !48, !alias.scope !125, !noalias !128
  %1761 = sub nsw i32 3, %1744
  %1762 = icmp sgt i32 %1761, 2
  br i1 %1762, label %1763, label %1801, !dx.controlflow.hints !85

; <label>:1763                                    ; preds = %1737
  %1764 = icmp eq i32 %1532, 0
  %1765 = fsub fast float %1582, %1666
  %1766 = select i1 %1764, float %1765, float %1666
  %1767 = extractvalue %dx.types.CBufRet.f32 %1522, 0
  %1768 = extractvalue %dx.types.CBufRet.f32 %1522, 1
  %1769 = extractvalue %dx.types.CBufRet.f32 %1522, 2
  %1770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1771 = extractvalue %dx.types.CBufRet.f32 %1770, 0
  %1772 = extractvalue %dx.types.CBufRet.f32 %1770, 1
  %1773 = extractvalue %dx.types.CBufRet.f32 %1770, 2
  %1774 = extractvalue %dx.types.CBufRet.f32 %1770, 3
  %1775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1776 = extractvalue %dx.types.CBufRet.f32 %1775, 3
  %1777 = call float @dx.op.binary.f32(i32 36, float %1667, float %1776)  ; FMin(a,b)
  %1778 = fmul fast float %1774, %1766
  %1779 = call float @dx.op.unary.f32(i32 7, float %1778)  ; Saturate(value)
  %1780 = fsub fast float %1771, %1767
  %1781 = fsub fast float %1772, %1768
  %1782 = fsub fast float %1773, %1769
  %1783 = fmul fast float %1779, %1780
  %1784 = fmul fast float %1779, %1781
  %1785 = fmul fast float %1779, %1782
  %1786 = fadd fast float %1783, %1767
  %1787 = fadd fast float %1784, %1768
  %1788 = fadd fast float %1785, %1769
  br i1 %1417, label %1883, label %1789, !dx.controlflow.hints !45

; <label>:1789                                    ; preds = %1763
  %1790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1791 = extractvalue %dx.types.CBufRet.f32 %1790, 0
  %1792 = extractvalue %dx.types.CBufRet.f32 %1790, 1
  %1793 = fadd fast float %1792, %1791
  %1794 = call float @dx.op.unary.f32(i32 7, float %1793)  ; Saturate(value)
  %1795 = extractvalue %dx.types.CBufRet.f32 %1790, 2
  %1796 = extractvalue %dx.types.CBufRet.f32 %1790, 3
  %1797 = fadd fast float %1796, %1795
  %1798 = call float @dx.op.unary.f32(i32 7, float %1797)  ; Saturate(value)
  %1799 = fmul fast float %1794, %1777
  %1800 = fmul fast float %1799, %1798
  br label %1883

; <label>:1801                                    ; preds = %1737
  %1802 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %1761
  %1803 = load float, float* %1802, align 4, !tbaa !48, !noalias !105
  %1804 = fcmp fast olt float %1803, %1668
  %1805 = icmp sgt i32 %1744, 0
  %1806 = and i1 %1805, %1804
  br i1 %1806, label %1807, label %1844

; <label>:1807                                    ; preds = %1801
  br label %1808

; <label>:1808                                    ; preds = %1837, %1807
  %1809 = phi float [ %1838, %1837 ], [ %1666, %1807 ]
  %1810 = phi float [ %1839, %1837 ], [ %1667, %1807 ]
  %1811 = phi float [ %1819, %1837 ], [ %1803, %1807 ]
  %1812 = phi i32 [ %1816, %1837 ], [ %1761, %1807 ]
  %1813 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %1812
  %1814 = load float, float* %1813, align 4, !tbaa !48, !noalias !105
  %1815 = icmp slt i32 %1812, 2
  %1816 = add nsw i32 %1812, 1
  %1817 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %1816
  %1818 = load float, float* %1817, align 4, !tbaa !48, !noalias !105
  %1819 = select i1 %1815, float %1818, float %1582
  %1820 = call float @dx.op.binary.f32(i32 36, float %1819, float %1814)  ; FMin(a,b)
  %1821 = call float @dx.op.binary.f32(i32 36, float %1668, float %1820)  ; FMin(a,b)
  %1822 = icmp eq i32 %1532, 0
  %1823 = fadd fast float %1821, %1811
  %1824 = fmul fast float %1823, %1494
  %1825 = fadd fast float %1824, %1526
  br i1 %1822, label %1831, label %1826, !dx.controlflow.hints !86

; <label>:1826                                    ; preds = %1808
  %1827 = fsub fast float %1821, %1811
  %1828 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1827)  ; FMax(a,b)
  %1829 = fmul fast float %1828, %1825
  %1830 = fadd fast float %1829, %1810
  br label %1837

; <label>:1831                                    ; preds = %1808
  %1832 = fsub fast float %1811, %1821
  %1833 = call float @dx.op.unary.f32(i32 6, float %1832)  ; FAbs(value)
  %1834 = fadd fast float %1833, %1809
  %1835 = fmul fast float %1833, %1825
  %1836 = fsub fast float %1810, %1835
  br label %1837

; <label>:1837                                    ; preds = %1831, %1826
  %1838 = phi float [ %1828, %1826 ], [ %1834, %1831 ]
  %1839 = phi float [ %1830, %1826 ], [ %1836, %1831 ]
  %1840 = fcmp fast olt float %1819, %1668
  %1841 = icmp slt i32 %1816, 3
  %1842 = and i1 %1841, %1840
  br i1 %1842, label %1808, label %1843

; <label>:1843                                    ; preds = %1837
  br label %1844

; <label>:1844                                    ; preds = %1843, %1801
  %1845 = phi float [ %1666, %1801 ], [ %1838, %1843 ]
  %1846 = phi float [ %1667, %1801 ], [ %1839, %1843 ]
  %1847 = fsub fast float %1582, %1845
  %1848 = select i1 %1584, float %1845, float %1847
  %1849 = extractvalue %dx.types.CBufRet.f32 %1522, 0
  %1850 = extractvalue %dx.types.CBufRet.f32 %1522, 1
  %1851 = extractvalue %dx.types.CBufRet.f32 %1522, 2
  %1852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1853 = extractvalue %dx.types.CBufRet.f32 %1852, 0
  %1854 = extractvalue %dx.types.CBufRet.f32 %1852, 1
  %1855 = extractvalue %dx.types.CBufRet.f32 %1852, 2
  %1856 = extractvalue %dx.types.CBufRet.f32 %1852, 3
  %1857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1858 = extractvalue %dx.types.CBufRet.f32 %1857, 3
  %1859 = call float @dx.op.binary.f32(i32 36, float %1846, float %1858)  ; FMin(a,b)
  %1860 = fmul fast float %1856, %1848
  %1861 = call float @dx.op.unary.f32(i32 7, float %1860)  ; Saturate(value)
  %1862 = fsub fast float %1853, %1849
  %1863 = fsub fast float %1854, %1850
  %1864 = fsub fast float %1855, %1851
  %1865 = fmul fast float %1861, %1862
  %1866 = fmul fast float %1861, %1863
  %1867 = fmul fast float %1861, %1864
  %1868 = fadd fast float %1865, %1849
  %1869 = fadd fast float %1866, %1850
  %1870 = fadd fast float %1867, %1851
  br i1 %1417, label %1883, label %1871, !dx.controlflow.hints !45

; <label>:1871                                    ; preds = %1844
  %1872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1873 = extractvalue %dx.types.CBufRet.f32 %1872, 0
  %1874 = extractvalue %dx.types.CBufRet.f32 %1872, 1
  %1875 = fadd fast float %1874, %1873
  %1876 = call float @dx.op.unary.f32(i32 7, float %1875)  ; Saturate(value)
  %1877 = extractvalue %dx.types.CBufRet.f32 %1872, 2
  %1878 = extractvalue %dx.types.CBufRet.f32 %1872, 3
  %1879 = fadd fast float %1878, %1877
  %1880 = call float @dx.op.unary.f32(i32 7, float %1879)  ; Saturate(value)
  %1881 = fmul fast float %1876, %1859
  %1882 = fmul fast float %1881, %1880
  br label %1883

; <label>:1883                                    ; preds = %1871, %1844, %1789, %1763, %1630, %1598, %1580, %1578
  %1884 = phi float [ 0.000000e+00, %1578 ], [ 0.000000e+00, %1580 ], [ %1607, %1630 ], [ %1607, %1598 ], [ %1766, %1789 ], [ %1766, %1763 ], [ %1848, %1871 ], [ %1848, %1844 ]
  %1885 = phi float [ 0.000000e+00, %1578 ], [ 0.000000e+00, %1580 ], [ %1641, %1630 ], [ %1618, %1598 ], [ %1800, %1789 ], [ %1777, %1763 ], [ %1882, %1871 ], [ %1859, %1844 ]
  %1886 = phi float [ 0.000000e+00, %1578 ], [ 0.000000e+00, %1580 ], [ %1627, %1630 ], [ %1627, %1598 ], [ %1786, %1789 ], [ %1786, %1763 ], [ %1868, %1871 ], [ %1868, %1844 ]
  %1887 = phi float [ 0.000000e+00, %1578 ], [ 0.000000e+00, %1580 ], [ %1628, %1630 ], [ %1628, %1598 ], [ %1787, %1789 ], [ %1787, %1763 ], [ %1869, %1871 ], [ %1869, %1844 ]
  %1888 = phi float [ 0.000000e+00, %1578 ], [ 0.000000e+00, %1580 ], [ %1629, %1630 ], [ %1629, %1598 ], [ %1788, %1789 ], [ %1788, %1763 ], [ %1870, %1871 ], [ %1870, %1844 ]
  %1889 = fmul fast float %1518, %1885
  %1890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1891 = extractvalue %dx.types.CBufRet.f32 %1890, 2
  %1892 = fsub fast float %1528, %1891
  %1893 = fcmp fast olt float %1889, -2.000000e+01
  %1894 = call float @dx.op.unary.f32(i32 21, float %1889)  ; Exp(value)
  %1895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1896 = extractvalue %dx.types.CBufRet.f32 %1895, 2
  %1897 = extractvalue %dx.types.CBufRet.f32 %1895, 3
  %1898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1899 = extractvalue %dx.types.CBufRet.f32 %1898, 2
  %1900 = fmul fast float %1897, %1892
  %1901 = call float @dx.op.unary.f32(i32 7, float %1900)  ; Saturate(value)
  %1902 = fsub fast float 1.000000e+00, %1901
  %1903 = fmul fast float %1494, 5.000000e-01
  %1904 = fadd fast float %1903, 5.000000e-01
  %1905 = call float @dx.op.unary.f32(i32 7, float %1904)  ; Saturate(value)
  %1906 = fsub fast float 1.000000e+00, %1905
  %1907 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1902)  ; FMax(a,b)
  %1908 = fdiv fast float %1906, %1907
  %1909 = fsub fast float %1892, %1457
  %1910 = call float @dx.op.unary.f32(i32 6, float %1909)  ; FAbs(value)
  %1911 = fmul fast float %1910, %1896
  %1912 = call float @dx.op.unary.f32(i32 7, float %1908)  ; Saturate(value)
  %1913 = fsub fast float 1.000000e+00, %1911
  %1914 = fmul fast float %1913, %1912
  %1915 = fadd fast float %1914, %1911
  %1916 = fmul fast float %1899, %1892
  %1917 = call float @dx.op.unary.f32(i32 7, float %1916)  ; Saturate(value)
  %1918 = fsub fast float 1.000000e+00, %1915
  %1919 = fmul fast float %1918, %1917
  %1920 = fadd fast float %1919, %1915
  %1921 = call float @dx.op.unary.f32(i32 7, float %1920)  ; Saturate(value)
  %1922 = fadd fast float %1894, -1.000000e+00
  %1923 = select i1 %1893, float -1.000000e+00, float %1922
  %1924 = fmul fast float %1921, %1923
  %1925 = fadd fast float %1924, 1.000000e+00
  %1926 = fsub fast float -0.000000e+00, %1924
  %1927 = fmul fast float %1886, %1926
  %1928 = fmul fast float %1887, %1926
  %1929 = fmul fast float %1888, %1926
  br label %1930

; <label>:1930                                    ; preds = %1883, %1508
  %1931 = phi float [ %1884, %1883 ], [ 0.000000e+00, %1508 ]
  %1932 = phi float [ %1925, %1883 ], [ 1.000000e+00, %1508 ]
  %1933 = phi float [ %1927, %1883 ], [ 0.000000e+00, %1508 ]
  %1934 = phi float [ %1928, %1883 ], [ 0.000000e+00, %1508 ]
  %1935 = phi float [ %1929, %1883 ], [ 0.000000e+00, %1508 ]
  %1936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1937 = extractvalue %dx.types.CBufRet.f32 %1936, 1
  %1938 = fsub fast float 1.000000e+00, %1932
  %1939 = fmul fast float %1938, %1509
  %1940 = fmul fast float %1939, %1937
  %1941 = fsub fast float %1509, %1940
  br i1 %1487, label %1942, label %1974, !dx.controlflow.hints !87

; <label>:1942                                    ; preds = %1930
  %1943 = fmul fast float %1512, %1484
  %1944 = fadd fast float %1943, %1485
  %1945 = call float @dx.op.unary.f32(i32 7, float %1944)  ; Saturate(value)
  %1946 = fmul fast float %1466, %1941
  %1947 = fsub fast float -0.000000e+00, %1946
  %1948 = fmul fast float %1467, %1941
  %1949 = fsub fast float -0.000000e+00, %1948
  %1950 = call float @dx.op.unary.f32(i32 21, float %1947)  ; Exp(value)
  %1951 = call float @dx.op.unary.f32(i32 21, float %1949)  ; Exp(value)
  %1952 = call float @dx.op.binary.f32(i32 35, float %1474, float %1950)  ; FMax(a,b)
  %1953 = call float @dx.op.binary.f32(i32 35, float %1474, float %1951)  ; FMax(a,b)
  %1954 = fsub fast float %1953, %1952
  %1955 = fmul fast float %1954, %1945
  %1956 = fadd fast float %1955, %1952
  %1957 = call float @dx.op.unary.f32(i32 7, float %1956)  ; Saturate(value)
  %1958 = fmul fast float %1510, %1488
  %1959 = fsub fast float 1.000000e+00, %1958
  %1960 = select i1 %1417, float %1959, float %1957
  %1961 = fsub fast float %1471, %1476
  %1962 = fsub fast float %1472, %1477
  %1963 = fsub fast float %1473, %1478
  %1964 = fmul fast float %1945, %1961
  %1965 = fmul fast float %1945, %1962
  %1966 = fmul fast float %1945, %1963
  %1967 = fadd fast float %1964, %1476
  %1968 = fadd fast float %1965, %1477
  %1969 = fadd fast float %1966, %1478
  %1970 = fsub fast float 1.000000e+00, %1960
  %1971 = fmul fast float %1970, %1967
  %1972 = fmul fast float %1970, %1968
  %1973 = fmul fast float %1970, %1969
  br label %2045

; <label>:1974                                    ; preds = %1930
  %1975 = fmul fast float %1941, %1483
  %1976 = call float @dx.op.unary.f32(i32 7, float %1975)  ; Saturate(value)
  %1977 = fsub fast float 2.000000e+00, %1976
  %1978 = fmul fast float %1976, 9.921875e-01
  %1979 = fmul fast float %1978, %1977
  %1980 = fadd fast float %1979, 3.906250e-03
  %1981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %1980, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1982 = extractvalue %dx.types.ResRet.f32 %1981, 0
  %1983 = fsub fast float %1976, %1982
  %1984 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1983)  ; FMax(a,b)
  %1985 = fmul fast float %1511, %1469
  %1986 = call float @dx.op.unary.f32(i32 6, float %1985)  ; FAbs(value)
  %1987 = fcmp fast ogt float %1986, 0x3EB0C6F7A0000000
  br i1 %1987, label %1988, label %1994, !dx.controlflow.hints !88

; <label>:1988                                    ; preds = %1974
  %1989 = fmul fast float %1985, 0xBFF7154760000000
  %1990 = call float @dx.op.unary.f32(i32 21, float %1989)  ; Exp(value)
  %1991 = fsub fast float 1.000000e+00, %1990
  %1992 = fdiv fast float %1991, %1985
  %1993 = fmul fast float %1992, %1479
  br label %1994

; <label>:1994                                    ; preds = %1988, %1974
  %1995 = phi float [ %1993, %1988 ], [ %1479, %1974 ]
  %1996 = fadd fast float %1995, %1481
  %1997 = fmul fast float %1996, %1984
  %1998 = fmul fast float %1466, %1997
  %1999 = fsub fast float -0.000000e+00, %1998
  %2000 = fmul fast float %1467, %1997
  %2001 = fsub fast float -0.000000e+00, %2000
  %2002 = fmul fast float %1468, %1997
  %2003 = fsub fast float -0.000000e+00, %2002
  %2004 = call float @dx.op.unary.f32(i32 21, float %1999)  ; Exp(value)
  %2005 = call float @dx.op.unary.f32(i32 21, float %2001)  ; Exp(value)
  %2006 = call float @dx.op.unary.f32(i32 21, float %2003)  ; Exp(value)
  br i1 %1417, label %2007, label %2015, !dx.controlflow.hints !89

; <label>:2007                                    ; preds = %1994
  %2008 = fmul fast float %2004, %1510
  %2009 = fmul fast float %2005, %1510
  %2010 = fmul fast float %2006, %1510
  %2011 = fsub fast float 1.000000e+00, %1510
  %2012 = fadd fast float %2008, %2011
  %2013 = fadd fast float %2009, %2011
  %2014 = fadd fast float %2010, %2011
  br label %2015

; <label>:2015                                    ; preds = %2007, %1994
  %2016 = phi float [ %2012, %2007 ], [ %2004, %1994 ]
  %2017 = phi float [ %2013, %2007 ], [ %2005, %1994 ]
  %2018 = phi float [ %2014, %2007 ], [ %2006, %1994 ]
  %2019 = fmul fast float %1512, %1512
  %2020 = fadd fast float %2019, 1.000000e+00
  %2021 = fmul fast float %2020, 0x3FAE8EC8A0000000
  %2022 = fmul fast float %2021, %1476
  %2023 = fmul fast float %2021, %1477
  %2024 = fmul fast float %2021, %1478
  %2025 = fmul fast float %1512, %1474
  %2026 = fsub fast float 1.000000e+00, %2025
  %2027 = fmul fast float %1474, %1474
  %2028 = fsub fast float 1.000000e+00, %2027
  %2029 = fmul fast float %2028, 0x3FB45F3060000000
  %2030 = fmul fast float %2026, %2026
  %2031 = fdiv fast float 1.000000e+00, %2030
  %2032 = fmul fast float %2029, %2031
  %2033 = fmul fast float %2032, %1471
  %2034 = fmul fast float %2032, %1472
  %2035 = fmul fast float %2032, %1473
  %2036 = fadd fast float %2033, %2022
  %2037 = fadd fast float %2034, %2023
  %2038 = fadd fast float %2035, %2024
  %2039 = fsub fast float 1.000000e+00, %2016
  %2040 = fsub fast float 1.000000e+00, %2017
  %2041 = fsub fast float 1.000000e+00, %2018
  %2042 = fmul fast float %2036, %2039
  %2043 = fmul fast float %2037, %2040
  %2044 = fmul fast float %2038, %2041
  br label %2045

; <label>:2045                                    ; preds = %2015, %1942
  %2046 = phi float [ %1971, %1942 ], [ %2042, %2015 ]
  %2047 = phi float [ %1972, %1942 ], [ %2043, %2015 ]
  %2048 = phi float [ %1973, %1942 ], [ %2044, %2015 ]
  %2049 = phi float [ %1960, %1942 ], [ %2016, %2015 ]
  %2050 = phi float [ %1960, %1942 ], [ %2017, %2015 ]
  %2051 = phi float [ %1960, %1942 ], [ %2018, %2015 ]
  br i1 %1520, label %2052, label %2250, !dx.controlflow.hints !90

; <label>:2052                                    ; preds = %2045
  %2053 = extractvalue %dx.types.CBufRet.f32 %1936, 0
  %2054 = fmul fast float %2053, %1938
  %2055 = fsub fast float %1933, %2046
  %2056 = fsub fast float %1934, %2047
  %2057 = fsub fast float %1935, %2048
  %2058 = fmul fast float %2054, %2055
  %2059 = fmul fast float %2054, %2056
  %2060 = fmul fast float %2054, %2057
  %2061 = fadd fast float %2058, %2046
  %2062 = fadd fast float %2059, %2047
  %2063 = fadd fast float %2060, %2048
  %2064 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2049)  ; FMax(a,b)
  %2065 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2050)  ; FMax(a,b)
  %2066 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2051)  ; FMax(a,b)
  %2067 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1932)  ; FMax(a,b)
  %2068 = call float @dx.op.binary.f32(i32 35, float %1931, float %1941)  ; FMax(a,b)
  %2069 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2068)  ; FMax(a,b)
  %2070 = fdiv fast float %1931, %2069
  %2071 = call float @dx.op.unary.f32(i32 7, float %2070)  ; Saturate(value)
  %2072 = fdiv fast float %1941, %2069
  %2073 = call float @dx.op.unary.f32(i32 7, float %2072)  ; Saturate(value)
  %2074 = fcmp fast une float %2067, 1.000000e+00
  br i1 %2074, label %2075, label %2088, !dx.controlflow.hints !91

; <label>:2075                                    ; preds = %2052
  %2076 = call float @dx.op.unary.f32(i32 23, float %2067)  ; Log(value)
  %2077 = fmul fast float %2076, 0x3FE62E4300000000
  %2078 = fmul fast float %1933, %2077
  %2079 = fsub fast float -0.000000e+00, %2078
  %2080 = fmul fast float %1934, %2077
  %2081 = fsub fast float -0.000000e+00, %2080
  %2082 = fmul fast float %1935, %2077
  %2083 = fsub fast float -0.000000e+00, %2082
  %2084 = fsub fast float 1.000000e+00, %2067
  %2085 = fdiv fast float %2079, %2084
  %2086 = fdiv fast float %2081, %2084
  %2087 = fdiv fast float %2083, %2084
  br label %2088

; <label>:2088                                    ; preds = %2075, %2052
  %2089 = phi float [ %2085, %2075 ], [ %1933, %2052 ]
  %2090 = phi float [ %2086, %2075 ], [ %1934, %2052 ]
  %2091 = phi float [ %2087, %2075 ], [ %1935, %2052 ]
  %2092 = phi float [ %2077, %2075 ], [ 0.000000e+00, %2052 ]
  %2093 = fcmp fast une float %2064, 1.000000e+00
  br i1 %2093, label %2094, label %2101, !dx.controlflow.hints !92

; <label>:2094                                    ; preds = %2088
  %2095 = call float @dx.op.unary.f32(i32 23, float %2064)  ; Log(value)
  %2096 = fmul fast float %2095, 0x3FE62E4300000000
  %2097 = fmul fast float %2061, %2096
  %2098 = fsub fast float -0.000000e+00, %2097
  %2099 = fsub fast float 1.000000e+00, %2064
  %2100 = fdiv fast float %2098, %2099
  br label %2101

; <label>:2101                                    ; preds = %2094, %2088
  %2102 = phi float [ %2100, %2094 ], [ %2061, %2088 ]
  %2103 = phi float [ %2096, %2094 ], [ 0.000000e+00, %2088 ]
  %2104 = fcmp fast une float %2065, 1.000000e+00
  br i1 %2104, label %2105, label %2112, !dx.controlflow.hints !92

; <label>:2105                                    ; preds = %2101
  %2106 = call float @dx.op.unary.f32(i32 23, float %2065)  ; Log(value)
  %2107 = fmul fast float %2106, 0x3FE62E4300000000
  %2108 = fmul fast float %2062, %2107
  %2109 = fsub fast float -0.000000e+00, %2108
  %2110 = fsub fast float 1.000000e+00, %2065
  %2111 = fdiv fast float %2109, %2110
  br label %2112

; <label>:2112                                    ; preds = %2105, %2101
  %2113 = phi float [ %2111, %2105 ], [ %2062, %2101 ]
  %2114 = phi float [ %2107, %2105 ], [ 0.000000e+00, %2101 ]
  %2115 = fcmp fast une float %2066, 1.000000e+00
  br i1 %2115, label %2116, label %2123, !dx.controlflow.hints !92

; <label>:2116                                    ; preds = %2112
  %2117 = call float @dx.op.unary.f32(i32 23, float %2066)  ; Log(value)
  %2118 = fmul fast float %2117, 0x3FE62E4300000000
  %2119 = fmul fast float %2063, %2118
  %2120 = fsub fast float -0.000000e+00, %2119
  %2121 = fsub fast float 1.000000e+00, %2066
  %2122 = fdiv fast float %2120, %2121
  br label %2123

; <label>:2123                                    ; preds = %2116, %2112
  %2124 = phi float [ %2122, %2116 ], [ %2063, %2112 ]
  %2125 = phi float [ %2118, %2116 ], [ 0.000000e+00, %2112 ]
  %2126 = fmul fast float %2089, %2073
  %2127 = fmul fast float %2090, %2073
  %2128 = fmul fast float %2091, %2073
  %2129 = fmul fast float %2092, %2073
  %2130 = fmul fast float %2102, %2071
  %2131 = fmul fast float %2113, %2071
  %2132 = fmul fast float %2124, %2071
  %2133 = fmul fast float %2103, %2071
  %2134 = fmul fast float %2114, %2071
  %2135 = fmul fast float %2125, %2071
  %2136 = fadd fast float %2130, %2126
  %2137 = fadd fast float %2131, %2127
  %2138 = fadd fast float %2132, %2128
  %2139 = fadd fast float %2133, %2129
  %2140 = fadd fast float %2134, %2129
  %2141 = fadd fast float %2135, %2129
  %2142 = fcmp fast une float %2139, 0.000000e+00
  br i1 %2142, label %2143, label %2150, !dx.controlflow.hints !93

; <label>:2143                                    ; preds = %2123
  %2144 = fmul fast float %2139, 0x3FF7154760000000
  %2145 = call float @dx.op.unary.f32(i32 21, float %2144)  ; Exp(value)
  %2146 = fsub fast float 1.000000e+00, %2145
  %2147 = fmul fast float %2136, %2146
  %2148 = fsub fast float -0.000000e+00, %2147
  %2149 = fdiv fast float %2148, %2139
  br label %2150

; <label>:2150                                    ; preds = %2143, %2123
  %2151 = phi float [ %2145, %2143 ], [ 1.000000e+00, %2123 ]
  %2152 = phi float [ %2149, %2143 ], [ %2136, %2123 ]
  %2153 = fcmp fast une float %2140, 0.000000e+00
  br i1 %2153, label %2154, label %2161, !dx.controlflow.hints !93

; <label>:2154                                    ; preds = %2150
  %2155 = fmul fast float %2140, 0x3FF7154760000000
  %2156 = call float @dx.op.unary.f32(i32 21, float %2155)  ; Exp(value)
  %2157 = fsub fast float 1.000000e+00, %2156
  %2158 = fmul fast float %2137, %2157
  %2159 = fsub fast float -0.000000e+00, %2158
  %2160 = fdiv fast float %2159, %2140
  br label %2161

; <label>:2161                                    ; preds = %2154, %2150
  %2162 = phi float [ %2156, %2154 ], [ 1.000000e+00, %2150 ]
  %2163 = phi float [ %2160, %2154 ], [ %2137, %2150 ]
  %2164 = fcmp fast une float %2141, 0.000000e+00
  br i1 %2164, label %2165, label %2172, !dx.controlflow.hints !93

; <label>:2165                                    ; preds = %2161
  %2166 = fmul fast float %2141, 0x3FF7154760000000
  %2167 = call float @dx.op.unary.f32(i32 21, float %2166)  ; Exp(value)
  %2168 = fsub fast float 1.000000e+00, %2167
  %2169 = fmul fast float %2138, %2168
  %2170 = fsub fast float -0.000000e+00, %2169
  %2171 = fdiv fast float %2170, %2141
  br label %2172

; <label>:2172                                    ; preds = %2165, %2161
  %2173 = phi float [ %2167, %2165 ], [ 1.000000e+00, %2161 ]
  %2174 = phi float [ %2171, %2165 ], [ %2138, %2161 ]
  %2175 = fcmp fast ogt float %2071, %2073
  br i1 %2175, label %2176, label %2196, !dx.controlflow.hints !94

; <label>:2176                                    ; preds = %2172
  %2177 = fsub fast float 1.000000e+00, %2073
  %2178 = fmul fast float %2089, %2177
  %2179 = fmul fast float %2090, %2177
  %2180 = fmul fast float %2091, %2177
  %2181 = fmul fast float %2092, %2177
  %2182 = fcmp fast une float %2181, 0.000000e+00
  br i1 %2182, label %2183, label %2234, !dx.controlflow.hints !95

; <label>:2183                                    ; preds = %2176
  %2184 = fmul fast float %2181, 0x3FF7154760000000
  %2185 = call float @dx.op.unary.f32(i32 21, float %2184)  ; Exp(value)
  %2186 = fsub fast float 1.000000e+00, %2185
  %2187 = fmul fast float %2178, %2186
  %2188 = fsub fast float -0.000000e+00, %2187
  %2189 = fmul fast float %2179, %2186
  %2190 = fsub fast float -0.000000e+00, %2189
  %2191 = fmul fast float %2180, %2186
  %2192 = fsub fast float -0.000000e+00, %2191
  %2193 = fdiv fast float %2188, %2181
  %2194 = fdiv fast float %2190, %2181
  %2195 = fdiv fast float %2192, %2181
  br label %2234

; <label>:2196                                    ; preds = %2172
  %2197 = fsub fast float 1.000000e+00, %2071
  %2198 = fmul fast float %2102, %2197
  %2199 = fmul fast float %2113, %2197
  %2200 = fmul fast float %2124, %2197
  %2201 = fmul fast float %2103, %2197
  %2202 = fmul fast float %2114, %2197
  %2203 = fmul fast float %2125, %2197
  %2204 = fcmp fast une float %2201, 0.000000e+00
  br i1 %2204, label %2205, label %2212, !dx.controlflow.hints !93

; <label>:2205                                    ; preds = %2196
  %2206 = fmul fast float %2201, 0x3FF7154760000000
  %2207 = call float @dx.op.unary.f32(i32 21, float %2206)  ; Exp(value)
  %2208 = fsub fast float 1.000000e+00, %2207
  %2209 = fmul fast float %2198, %2208
  %2210 = fsub fast float -0.000000e+00, %2209
  %2211 = fdiv fast float %2210, %2201
  br label %2212

; <label>:2212                                    ; preds = %2205, %2196
  %2213 = phi float [ %2211, %2205 ], [ %2198, %2196 ]
  %2214 = phi float [ %2207, %2205 ], [ 1.000000e+00, %2196 ]
  %2215 = fcmp fast une float %2202, 0.000000e+00
  br i1 %2215, label %2216, label %2223, !dx.controlflow.hints !93

; <label>:2216                                    ; preds = %2212
  %2217 = fmul fast float %2202, 0x3FF7154760000000
  %2218 = call float @dx.op.unary.f32(i32 21, float %2217)  ; Exp(value)
  %2219 = fsub fast float 1.000000e+00, %2218
  %2220 = fmul fast float %2199, %2219
  %2221 = fsub fast float -0.000000e+00, %2220
  %2222 = fdiv fast float %2221, %2202
  br label %2223

; <label>:2223                                    ; preds = %2216, %2212
  %2224 = phi float [ %2222, %2216 ], [ %2199, %2212 ]
  %2225 = phi float [ %2218, %2216 ], [ 1.000000e+00, %2212 ]
  %2226 = fcmp fast une float %2203, 0.000000e+00
  br i1 %2226, label %2227, label %2234, !dx.controlflow.hints !93

; <label>:2227                                    ; preds = %2223
  %2228 = fmul fast float %2203, 0x3FF7154760000000
  %2229 = call float @dx.op.unary.f32(i32 21, float %2228)  ; Exp(value)
  %2230 = fsub fast float 1.000000e+00, %2229
  %2231 = fmul fast float %2200, %2230
  %2232 = fsub fast float -0.000000e+00, %2231
  %2233 = fdiv fast float %2232, %2203
  br label %2234

; <label>:2234                                    ; preds = %2227, %2223, %2183, %2176
  %2235 = phi float [ %2233, %2227 ], [ %2195, %2183 ], [ %2180, %2176 ], [ %2200, %2223 ]
  %2236 = phi float [ %2224, %2227 ], [ %2194, %2183 ], [ %2179, %2176 ], [ %2224, %2223 ]
  %2237 = phi float [ %2213, %2227 ], [ %2193, %2183 ], [ %2178, %2176 ], [ %2213, %2223 ]
  %2238 = phi float [ %2229, %2227 ], [ %2185, %2183 ], [ 1.000000e+00, %2176 ], [ 1.000000e+00, %2223 ]
  %2239 = phi float [ %2225, %2227 ], [ %2185, %2183 ], [ 1.000000e+00, %2176 ], [ %2225, %2223 ]
  %2240 = phi float [ %2214, %2227 ], [ %2185, %2183 ], [ 1.000000e+00, %2176 ], [ %2214, %2223 ]
  %2241 = fmul fast float %2240, %2152
  %2242 = fmul fast float %2239, %2163
  %2243 = fmul fast float %2238, %2174
  %2244 = fadd fast float %2241, %2237
  %2245 = fadd fast float %2242, %2236
  %2246 = fadd fast float %2243, %2235
  %2247 = fmul fast float %2240, %2151
  %2248 = fmul fast float %2239, %2162
  %2249 = fmul fast float %2238, %2173
  br label %2250

; <label>:2250                                    ; preds = %2234, %2045
  %2251 = phi float [ %2249, %2234 ], [ %2051, %2045 ]
  %2252 = phi float [ %2248, %2234 ], [ %2050, %2045 ]
  %2253 = phi float [ %2247, %2234 ], [ %2049, %2045 ]
  %2254 = phi float [ %2246, %2234 ], [ %2048, %2045 ]
  %2255 = phi float [ %2245, %2234 ], [ %2047, %2045 ]
  %2256 = phi float [ %2244, %2234 ], [ %2046, %2045 ]
  %2257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %20, float %1388, float %1389, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2258 = extractvalue %dx.types.ResRet.f32 %2257, 0
  %2259 = extractvalue %dx.types.ResRet.f32 %2257, 1
  %2260 = extractvalue %dx.types.ResRet.f32 %2257, 2
  %2261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2262 = extractvalue %dx.types.CBufRet.f32 %2261, 1
  %2263 = fmul fast float %2262, %2258
  %2264 = fmul fast float %2262, %2259
  %2265 = fmul fast float %2262, %2260
  %2266 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %20, float %1388, float %1389, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2267 = extractvalue %dx.types.ResRet.f32 %2266, 0
  %2268 = fmul fast float %2267, %2253
  %2269 = fmul fast float %2267, %2252
  %2270 = fmul fast float %2267, %2251
  %2271 = fmul fast float %2267, %2256
  %2272 = fmul fast float %2267, %2255
  %2273 = fmul fast float %2267, %2254
  %2274 = fadd fast float %2271, %2263
  %2275 = fadd fast float %2272, %2264
  %2276 = fadd fast float %2273, %2265
  br label %2277

; <label>:2277                                    ; preds = %2250, %1381
  %2278 = phi float [ 0.000000e+00, %1381 ], [ %2274, %2250 ]
  %2279 = phi float [ 0.000000e+00, %1381 ], [ %2275, %2250 ]
  %2280 = phi float [ 0.000000e+00, %1381 ], [ %2276, %2250 ]
  %2281 = phi float [ 1.000000e+00, %1381 ], [ %2268, %2250 ]
  %2282 = phi float [ 1.000000e+00, %1381 ], [ %2269, %2250 ]
  %2283 = phi float [ 1.000000e+00, %1381 ], [ %2270, %2250 ]
  %2284 = phi float [ %1414, %1381 ], [ %1421, %2250 ]
  %2285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2286 = extractvalue %dx.types.CBufRet.f32 %2285, 2
  %2287 = extractvalue %dx.types.CBufRet.f32 %2285, 3
  %2288 = fmul fast float %2286, %1384
  %2289 = fmul fast float %2287, %1385
  %2290 = call float @dx.op.unary.f32(i32 7, float %2288)  ; Saturate(value)
  %2291 = call float @dx.op.unary.f32(i32 7, float %2289)  ; Saturate(value)
  %2292 = select i1 %1412, i32 2, i32 0
  %2293 = or i32 %2292, 1
  %2294 = uitofp i32 %2293 to float
  %2295 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %20, float %2290, float %2291, float %2294, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2296 = extractvalue %dx.types.ResRet.f32 %2295, 0
  %2297 = extractvalue %dx.types.ResRet.f32 %2295, 1
  %2298 = extractvalue %dx.types.ResRet.f32 %2295, 2
  %2299 = extractvalue %dx.types.ResRet.f32 %2295, 3
  %2300 = add nuw nsw i32 %2292, 2
  %2301 = uitofp i32 %2300 to float
  %2302 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %20, float %2290, float %2291, float %2301, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2303 = extractvalue %dx.types.ResRet.f32 %2302, 0
  %2304 = extractvalue %dx.types.ResRet.f32 %2302, 1
  %2305 = extractvalue %dx.types.ResRet.f32 %2302, 2
  %2306 = extractvalue %dx.types.ResRet.f32 %2302, 3
  %2307 = call float @dx.op.binary.f32(i32 35, float %2297, float %2298)  ; FMax(a,b)
  %2308 = call float @dx.op.binary.f32(i32 35, float %2296, float %2307)  ; FMax(a,b)
  %2309 = call float @dx.op.binary.f32(i32 35, float %2308, float %2299)  ; FMax(a,b)
  %2310 = call float @dx.op.binary.f32(i32 36, float %2304, float %2305)  ; FMin(a,b)
  %2311 = call float @dx.op.binary.f32(i32 36, float %2303, float %2310)  ; FMin(a,b)
  %2312 = call float @dx.op.binary.f32(i32 36, float %2311, float %2306)  ; FMin(a,b)
  %2313 = fmul fast float %2309, 2.550000e+02
  %2314 = fadd fast float %2313, 0x3F70101020000000
  %2315 = fptoui float %2314 to i32
  %2316 = fmul fast float %2312, 2.550000e+02
  %2317 = fadd fast float %2316, 0x3F70101020000000
  %2318 = fptoui float %2317 to i32
  %2319 = icmp ult i32 %2315, %2318
  br i1 %2319, label %2320, label %2488, !dx.controlflow.hints !96

; <label>:2320                                    ; preds = %2277
  %2321 = fadd fast float %2284, -4.000000e+00
  %2322 = call float @dx.op.binary.f32(i32 35, float %2321, float 0.000000e+00)  ; FMax(a,b)
  %2323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2324 = extractvalue %dx.types.CBufRet.f32 %2323, 0
  %2325 = fadd fast float %2324, %2322
  %2326 = extractvalue %dx.types.CBufRet.f32 %2323, 2
  %2327 = fmul fast float %2325, %2326
  %2328 = call float @dx.op.unary.f32(i32 23, float %2327)  ; Log(value)
  %2329 = extractvalue %dx.types.CBufRet.f32 %2323, 3
  %2330 = fmul fast float %2329, %2328
  %2331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2332 = extractvalue %dx.types.CBufRet.f32 %2331, 2
  %2333 = fmul fast float %2330, %2332
  %2334 = call float @dx.op.unary.f32(i32 7, float %2333)  ; Saturate(value)
  %2335 = select i1 %1417, float 1.000000e+00, float %2334
  %2336 = uitofp i32 %2315 to float
  %2337 = uitofp i32 %2318 to float
  %2338 = fadd fast float %2336, 5.000000e-01
  %2339 = fadd fast float %2337, 5.000000e-01
  %2340 = fmul fast float %2332, %2338
  %2341 = fmul fast float %2332, %2339
  %2342 = fadd fast float %2340, 0x3F0FFB4800000000
  %2343 = fadd fast float %2341, 0xBF0FFB4800000000
  %2344 = call float @dx.op.binary.f32(i32 35, float %2335, float %2342)  ; FMax(a,b)
  %2345 = call float @dx.op.binary.f32(i32 36, float %2344, float %2343)  ; FMin(a,b)
  %2346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2347 = extractvalue %dx.types.CBufRet.f32 %2346, 1
  %2348 = extractvalue %dx.types.CBufRet.f32 %2346, 2
  %2349 = extractvalue %dx.types.CBufRet.f32 %2346, 0
  %2350 = select i1 %1412, float %2349, float 0.000000e+00
  %2351 = fmul fast float %2347, %2345
  %2352 = fadd fast float %2350, %2351
  %2353 = fadd fast float %2350, %2348
  %2354 = fsub fast float %2347, %2348
  %2355 = fadd fast float %2354, %2350
  %2356 = call float @dx.op.binary.f32(i32 35, float %2352, float %2353)  ; FMax(a,b)
  %2357 = call float @dx.op.binary.f32(i32 36, float %2356, float %2355)  ; FMin(a,b)
  %2358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %19, float %2290, float %2291, float %2357, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2359 = extractvalue %dx.types.ResRet.f32 %2358, 0
  %2360 = extractvalue %dx.types.ResRet.f32 %2358, 1
  %2361 = extractvalue %dx.types.ResRet.f32 %2358, 2
  %2362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %2363 = extractvalue %dx.types.CBufRet.i32 %2362, 0
  %2364 = extractvalue %dx.types.CBufRet.i32 %2362, 1
  %2365 = uitofp i32 %2363 to float
  %2366 = uitofp i32 %2364 to float
  %2367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %2368 = extractvalue %dx.types.CBufRet.f32 %2367, 0
  %2369 = extractvalue %dx.types.CBufRet.f32 %2367, 1
  %2370 = fmul fast float %2365, %2290
  %2371 = fmul fast float %2366, %2291
  %2372 = fadd fast float %2370, -5.000000e-01
  %2373 = fadd fast float %2371, -5.000000e-01
  %2374 = call float @dx.op.unary.f32(i32 22, float %2372)  ; Frc(value)
  %2375 = call float @dx.op.unary.f32(i32 22, float %2373)  ; Frc(value)
  %2376 = fmul fast float %2374, %2374
  %2377 = fmul fast float %2376, %2374
  %2378 = fsub fast float 3.000000e+00, %2374
  %2379 = fmul fast float %2376, %2378
  %2380 = fmul fast float %2374, 3.000000e+00
  %2381 = fmul fast float %2377, 3.000000e+00
  %2382 = fmul fast float %2376, 6.000000e+00
  %2383 = fsub fast float %2381, %2382
  %2384 = fadd fast float %2383, 4.000000e+00
  %2385 = fmul fast float %2384, 0x3FC5555560000000
  %2386 = fmul fast float %2377, -3.000000e+00
  %2387 = fadd fast float %2376, %2374
  %2388 = fmul fast float %2387, 3.000000e+00
  %2389 = fadd fast float %2386, 1.000000e+00
  %2390 = fadd fast float %2389, %2388
  %2391 = fmul fast float %2377, 0x3FC5555560000000
  %2392 = fmul fast float %2375, %2375
  %2393 = fmul fast float %2392, %2375
  %2394 = fsub fast float 3.000000e+00, %2375
  %2395 = fmul fast float %2392, %2394
  %2396 = fmul fast float %2375, 3.000000e+00
  %2397 = fmul fast float %2393, 3.000000e+00
  %2398 = fmul fast float %2392, 6.000000e+00
  %2399 = fsub fast float %2397, %2398
  %2400 = fadd fast float %2399, 4.000000e+00
  %2401 = fmul fast float %2400, 0x3FC5555560000000
  %2402 = fmul fast float %2393, -3.000000e+00
  %2403 = fadd fast float %2392, %2375
  %2404 = fmul fast float %2403, 3.000000e+00
  %2405 = fadd fast float %2402, 1.000000e+00
  %2406 = fadd fast float %2405, %2404
  %2407 = fmul fast float %2393, 0x3FC5555560000000
  %2408 = fadd fast float %2374, 1.000000e+00
  %2409 = fsub fast float 1.000000e+00, %2380
  %2410 = fadd fast float %2409, %2379
  %2411 = fadd fast float %2410, %2384
  %2412 = fmul fast float %2411, 0x3FC5555560000000
  %2413 = fdiv fast float %2385, %2412
  %2414 = fsub fast float %2408, %2413
  %2415 = fsub fast float 1.000000e+00, %2374
  %2416 = fadd fast float %2390, %2377
  %2417 = fmul fast float %2416, 0x3FC5555560000000
  %2418 = fdiv fast float %2391, %2417
  %2419 = fadd fast float %2415, %2418
  %2420 = fadd fast float %2375, 1.000000e+00
  %2421 = fsub fast float 1.000000e+00, %2396
  %2422 = fadd fast float %2421, %2395
  %2423 = fadd fast float %2422, %2400
  %2424 = fmul fast float %2423, 0x3FC5555560000000
  %2425 = fdiv fast float %2401, %2424
  %2426 = fsub fast float %2420, %2425
  %2427 = fsub fast float 1.000000e+00, %2375
  %2428 = fadd fast float %2406, %2393
  %2429 = fmul fast float %2428, 0x3FC5555560000000
  %2430 = fdiv fast float %2407, %2429
  %2431 = fadd fast float %2430, %2427
  %2432 = fmul fast float %2414, %2368
  %2433 = fsub fast float %2290, %2432
  %2434 = fmul fast float %2419, %2368
  %2435 = fadd fast float %2434, %2290
  %2436 = fmul fast float %2431, %2369
  %2437 = fadd fast float %2436, %2291
  %2438 = fmul fast float %2426, %2369
  %2439 = fsub fast float %2291, %2438
  %2440 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %2433, float %2439, float %2357, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2441 = extractvalue %dx.types.ResRet.f32 %2440, 0
  %2442 = extractvalue %dx.types.ResRet.f32 %2440, 1
  %2443 = extractvalue %dx.types.ResRet.f32 %2440, 2
  %2444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %2435, float %2439, float %2357, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2445 = extractvalue %dx.types.ResRet.f32 %2444, 0
  %2446 = extractvalue %dx.types.ResRet.f32 %2444, 1
  %2447 = extractvalue %dx.types.ResRet.f32 %2444, 2
  %2448 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %2433, float %2437, float %2357, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2449 = extractvalue %dx.types.ResRet.f32 %2448, 0
  %2450 = extractvalue %dx.types.ResRet.f32 %2448, 1
  %2451 = extractvalue %dx.types.ResRet.f32 %2448, 2
  %2452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %2435, float %2437, float %2357, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2453 = extractvalue %dx.types.ResRet.f32 %2452, 0
  %2454 = extractvalue %dx.types.ResRet.f32 %2452, 1
  %2455 = extractvalue %dx.types.ResRet.f32 %2452, 2
  %2456 = fsub fast float %2449, %2441
  %2457 = fsub fast float %2450, %2442
  %2458 = fsub fast float %2451, %2443
  %2459 = fmul fast float %2456, %2429
  %2460 = fmul fast float %2457, %2429
  %2461 = fmul fast float %2458, %2429
  %2462 = fadd fast float %2459, %2441
  %2463 = fadd fast float %2460, %2442
  %2464 = fadd fast float %2461, %2443
  %2465 = fsub fast float %2453, %2445
  %2466 = fsub fast float %2454, %2446
  %2467 = fsub fast float %2455, %2447
  %2468 = fmul fast float %2465, %2429
  %2469 = fmul fast float %2466, %2429
  %2470 = fmul fast float %2467, %2429
  %2471 = fsub fast float %2445, %2462
  %2472 = fadd fast float %2471, %2468
  %2473 = fsub fast float %2446, %2463
  %2474 = fadd fast float %2473, %2469
  %2475 = fsub fast float %2447, %2464
  %2476 = fadd fast float %2475, %2470
  %2477 = fmul fast float %2472, %2417
  %2478 = fmul fast float %2474, %2417
  %2479 = fmul fast float %2476, %2417
  %2480 = fadd fast float %2477, %2462
  %2481 = fadd fast float %2478, %2463
  %2482 = fadd fast float %2479, %2464
  %2483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2484 = extractvalue %dx.types.CBufRet.f32 %2483, 1
  %2485 = fmul fast float %2480, %2484
  %2486 = fmul fast float %2481, %2484
  %2487 = fmul fast float %2482, %2484
  br label %2488

; <label>:2488                                    ; preds = %2320, %2277
  %2489 = phi float [ %2359, %2320 ], [ 1.000000e+00, %2277 ]
  %2490 = phi float [ %2360, %2320 ], [ 1.000000e+00, %2277 ]
  %2491 = phi float [ %2361, %2320 ], [ 1.000000e+00, %2277 ]
  %2492 = phi float [ %2485, %2320 ], [ 0.000000e+00, %2277 ]
  %2493 = phi float [ %2486, %2320 ], [ 0.000000e+00, %2277 ]
  %2494 = phi float [ %2487, %2320 ], [ 0.000000e+00, %2277 ]
  %2495 = fmul fast float %2489, %2281
  %2496 = fmul fast float %2490, %2282
  %2497 = fmul fast float %2491, %2283
  %2498 = fmul fast float %2489, %2278
  %2499 = fmul fast float %2490, %2279
  %2500 = fmul fast float %2491, %2280
  %2501 = fadd fast float %2492, %2498
  %2502 = fadd fast float %2493, %2499
  %2503 = fadd fast float %2494, %2500
  %2504 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 undef, i32 %1365, i32 %1366, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2505 = extractvalue %dx.types.ResRet.f32 %2504, 0
  %2506 = extractvalue %dx.types.ResRet.f32 %2504, 1
  %2507 = extractvalue %dx.types.ResRet.f32 %2504, 2
  %2508 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2509 = extractvalue %dx.types.CBufRet.i32 %2508, 3
  %2510 = and i32 %2509, 3
  %2511 = icmp ne i32 %2510, 0
  %2512 = and i32 %2509, 4
  %2513 = icmp ne i32 %2512, 0
  %2514 = and i1 %2511, %2513
  br i1 %2514, label %2515, label %2522, !dx.controlflow.hints !97

; <label>:2515                                    ; preds = %2488
  %2516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %20, float %1388, float %1389, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2517 = extractvalue %dx.types.ResRet.f32 %2516, 0
  %2518 = fsub fast float 1.000000e+00, %2517
  %2519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %2520 = extractvalue %dx.types.CBufRet.f32 %2519, 0
  %2521 = fcmp fast olt float %2518, %2520
  br label %2525

; <label>:2522                                    ; preds = %2488
  %2523 = icmp eq i32 %2512, 0
  %2524 = and i1 %2511, %2523
  br label %2525

; <label>:2525                                    ; preds = %2522, %2515
  %2526 = phi i1 [ %2521, %2515 ], [ %2524, %2522 ]
  %2527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2528 = extractvalue %dx.types.CBufRet.f32 %2527, 0
  br i1 %2526, label %2529, label %2548, !dx.controlflow.hints !98

; <label>:2529                                    ; preds = %2525
  %2530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2531 = extractvalue %dx.types.CBufRet.f32 %2530, 3
  %2532 = call float @dx.op.dot3.f32(i32 55, float %2495, float %2496, float %2497, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2533 = fmul fast float %2532, %2505
  %2534 = call float @dx.op.dot3.f32(i32 55, float %2501, float %2502, float %2503, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2535 = fmul fast float %2528, %2534
  %2536 = fadd fast float %2535, %2533
  br i1 %2514, label %2537, label %2543, !dx.controlflow.hints !99

; <label>:2537                                    ; preds = %2529
  %2538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2539 = extractvalue %dx.types.CBufRet.f32 %2538, 1
  %2540 = fadd fast float %2495, -1.000000e+00
  %2541 = fmul fast float %2539, %2540
  %2542 = fadd fast float %2541, 1.000000e+00
  br label %2543

; <label>:2543                                    ; preds = %2537, %2529
  %2544 = phi float [ %2542, %2537 ], [ %2495, %2529 ]
  %2545 = fsub fast float %2506, %2531
  %2546 = fmul fast float %2544, %2545
  %2547 = fadd fast float %2546, %2531
  br label %2558

; <label>:2548                                    ; preds = %2525
  %2549 = fmul fast float %2505, %2495
  %2550 = fmul fast float %2506, %2496
  %2551 = fmul fast float %2507, %2497
  %2552 = fmul fast float %2528, %2501
  %2553 = fmul fast float %2528, %2502
  %2554 = fmul fast float %2528, %2503
  %2555 = fadd fast float %2552, %2549
  %2556 = fadd fast float %2553, %2550
  %2557 = fadd fast float %2554, %2551
  br label %2558

; <label>:2558                                    ; preds = %2548, %2543
  %2559 = phi float [ %2536, %2543 ], [ %2555, %2548 ]
  %2560 = phi float [ %2547, %2543 ], [ %2556, %2548 ]
  %2561 = phi float [ %2507, %2543 ], [ %2557, %2548 ]
  %2562 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %2563 = extractvalue %dx.types.CBufRet.i32 %2562, 1
  %2564 = shl i32 %2563, 1
  %2565 = lshr i32 %1366, 5
  %2566 = extractvalue %dx.types.CBufRet.i32 %2562, 0
  %2567 = mul i32 %2566, %2565
  %2568 = add i32 %2564, %1272
  %2569 = add i32 %2568, %2567
  %2570 = shl i32 %2569, 2
  %2571 = and i32 %1366, 24
  %2572 = or i32 %2571, %1277
  %2573 = shl i32 1, %2572
  %2574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2570, i32 undef)  ; BufferLoad(srv,index,wot)
  %2575 = extractvalue %dx.types.ResRet.i32 %2574, 0
  %2576 = and i32 %2575, %2573
  %2577 = icmp eq i32 %2576, 0
  br i1 %2577, label %2593, label %2578, !dx.controlflow.hints !100

; <label>:2578                                    ; preds = %2558
  %2579 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %1365, i32 %1366, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2580 = extractvalue %dx.types.ResRet.f32 %2579, 0
  %2581 = fcmp fast ogt float %2580, 0.000000e+00
  br i1 %2581, label %2582, label %2593, !dx.controlflow.hints !101

; <label>:2582                                    ; preds = %2578
  %2583 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %1365, i32 %1366, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2584 = extractvalue %dx.types.ResRet.f32 %2583, 0
  %2585 = extractvalue %dx.types.ResRet.f32 %2583, 1
  %2586 = extractvalue %dx.types.ResRet.f32 %2583, 2
  %2587 = extractvalue %dx.types.ResRet.f32 %2583, 3
  %2588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %2589 = extractvalue %dx.types.CBufRet.f32 %2588, 2
  %2590 = fmul fast float %2589, %2584
  %2591 = fmul fast float %2589, %2585
  %2592 = fmul fast float %2589, %2586
  br label %2593

; <label>:2593                                    ; preds = %2582, %2578, %2558
  %2594 = phi float [ %2590, %2582 ], [ 0.000000e+00, %2578 ], [ 0.000000e+00, %2558 ]
  %2595 = phi float [ %2591, %2582 ], [ 0.000000e+00, %2578 ], [ 0.000000e+00, %2558 ]
  %2596 = phi float [ %2592, %2582 ], [ 0.000000e+00, %2578 ], [ 0.000000e+00, %2558 ]
  %2597 = phi float [ %2587, %2582 ], [ 0.000000e+00, %2578 ], [ 0.000000e+00, %2558 ]
  %2598 = fsub fast float 1.000000e+00, %2597
  %2599 = fmul fast float %2598, %2559
  %2600 = fmul fast float %2598, %2560
  %2601 = fmul fast float %2598, %2561
  %2602 = fadd fast float %2599, %2594
  %2603 = fadd fast float %2600, %2595
  %2604 = fadd fast float %2601, %2596
  %2605 = fadd fast float %1400, 0x3FE3C6EF40000000
  %2606 = call float @dx.op.unary.f32(i32 22, float %2605)  ; Frc(value)
  %2607 = call float @dx.op.unary.f32(i32 23, float %2602)  ; Log(value)
  %2608 = fadd fast float %2607, -7.000000e+00
  %2609 = call float @dx.op.unary.f32(i32 21, float %2608)  ; Exp(value)
  %2610 = fmul fast float %2606, 2.000000e+00
  %2611 = fadd fast float %2610, -1.000000e+00
  %2612 = fmul fast float %2609, %2611
  %2613 = fcmp fast ogt float %2602, 0.000000e+00
  %2614 = select i1 %2613, float %2612, float 0.000000e+00
  %2615 = fadd fast float %2614, %2602
  %2616 = fadd fast float %1400, 0x3FF3C6EF40000000
  %2617 = call float @dx.op.unary.f32(i32 22, float %2616)  ; Frc(value)
  %2618 = call float @dx.op.unary.f32(i32 23, float %2603)  ; Log(value)
  %2619 = fadd fast float %2618, -7.000000e+00
  %2620 = call float @dx.op.unary.f32(i32 21, float %2619)  ; Exp(value)
  %2621 = fmul fast float %2617, 2.000000e+00
  %2622 = fadd fast float %2621, -1.000000e+00
  %2623 = fmul fast float %2620, %2622
  %2624 = fcmp fast ogt float %2603, 0.000000e+00
  %2625 = select i1 %2624, float %2623, float 0.000000e+00
  %2626 = fadd fast float %2625, %2603
  %2627 = fadd fast float %1400, 0x3FFDAA66E0000000
  %2628 = call float @dx.op.unary.f32(i32 22, float %2627)  ; Frc(value)
  %2629 = call float @dx.op.unary.f32(i32 23, float %2604)  ; Log(value)
  %2630 = fadd fast float %2629, -6.000000e+00
  %2631 = call float @dx.op.unary.f32(i32 21, float %2630)  ; Exp(value)
  %2632 = fmul fast float %2628, 2.000000e+00
  %2633 = fadd fast float %2632, -1.000000e+00
  %2634 = fmul fast float %2631, %2633
  %2635 = fcmp fast ogt float %2604, 0.000000e+00
  %2636 = select i1 %2635, float %2634, float 0.000000e+00
  %2637 = fadd fast float %2636, %2604
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %1365, i32 %1366, i32 undef, float %2615, float %2626, float %2637, float %2615, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2638 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2639 = extractvalue %dx.types.CBufRet.i32 %2638, 0
  %2640 = and i32 %2639, 1
  %2641 = icmp ne i32 %2640, 0
  %2642 = or i32 %1366, %1358
  %2643 = and i32 %2642, 1
  %2644 = icmp eq i32 %2643, 0
  %2645 = and i1 %2644, %2641
  br i1 %2645, label %2646, label %2649, !dx.controlflow.hints !102

; <label>:2646                                    ; preds = %2593
  %2647 = and i32 %44, 2147483647
  %2648 = lshr i32 %1366, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2647, i32 %2648, i32 undef, float %2505, float %2506, float %2507, float %2505, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2649

; <label>:2649                                    ; preds = %2646, %2593
  %2650 = fadd fast float %2602, %1353
  %2651 = fadd fast float %2603, %1354
  %2652 = fadd fast float %2604, %1355
  %2653 = fadd fast float %1356, 1.000000e+00
  br label %1375

; <label>:2654                                    ; preds = %1375
  %2655 = fdiv fast float 1.000000e+00, %1379
  %2656 = fmul fast float %2655, %1376
  %2657 = fmul fast float %2655, %1377
  %2658 = fmul fast float %2655, %1378
  %2659 = call float @dx.op.dot3.f32(i32 55, float %2656, float %2657, float %2658, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2660 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %2661 = add i32 %2660, -1
  %2662 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %2663 = and i32 %2660, 1
  %2664 = xor i32 %2663, 1
  %2665 = and i32 %2661, %2662
  %2666 = xor i32 %2664, %2665
  %2667 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2659, i32 %2666)  ; WaveReadLaneAt(value,lane)
  %2668 = call float @dx.op.binary.f32(i32 36, float %2659, float %2667)  ; FMin(a,b)
  %2669 = add i32 %2660, 15
  %2670 = and i32 %2669, 8
  %2671 = xor i32 %2665, %2670
  %2672 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2668, i32 %2671)  ; WaveReadLaneAt(value,lane)
  %2673 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2659, i32 %2666)  ; WaveReadLaneAt(value,lane)
  %2674 = call float @dx.op.binary.f32(i32 35, float %2659, float %2673)  ; FMax(a,b)
  %2675 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2674, i32 %2671)  ; WaveReadLaneAt(value,lane)
  %2676 = or i32 %44, %45
  %2677 = and i32 %2676, 1
  %2678 = icmp eq i32 %2677, 0
  br i1 %2678, label %2679, label %2721, !dx.controlflow.hints !135

; <label>:2679                                    ; preds = %2654
  %2680 = call float @dx.op.binary.f32(i32 35, float %2674, float %2675)  ; FMax(a,b)
  %2681 = call float @dx.op.binary.f32(i32 36, float %2668, float %2672)  ; FMin(a,b)
  %2682 = lshr i32 %44, 1
  %2683 = lshr i32 %45, 1
  %2684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2685 = extractvalue %dx.types.CBufRet.f32 %2684, 3
  %2686 = fmul fast float %2685, 3.200000e+01
  %2687 = fmul fast float %2681, 0x3F1A36E2E0000000
  %2688 = fmul fast float %2687, %2686
  %2689 = call float @dx.op.unary.f32(i32 23, float %2688)  ; Log(value)
  %2690 = fmul fast float %2689, 0x3FC4640000000000
  %2691 = call float @dx.op.unary.f32(i32 21, float %2690)  ; Exp(value)
  %2692 = fmul fast float %2691, 0x4032DA0000000000
  %2693 = fadd fast float %2692, 8.359375e-01
  %2694 = fmul fast float %2691, 1.868750e+01
  %2695 = fadd fast float %2694, 1.000000e+00
  %2696 = fdiv fast float %2693, %2695
  %2697 = call float @dx.op.unary.f32(i32 23, float %2696)  ; Log(value)
  %2698 = fmul fast float %2697, 7.884375e+01
  %2699 = call float @dx.op.unary.f32(i32 21, float %2698)  ; Exp(value)
  %2700 = fmul fast float %2680, 0x3F1A36E2E0000000
  %2701 = fmul fast float %2700, %2686
  %2702 = call float @dx.op.unary.f32(i32 23, float %2701)  ; Log(value)
  %2703 = fmul fast float %2702, 0x3FC4640000000000
  %2704 = call float @dx.op.unary.f32(i32 21, float %2703)  ; Exp(value)
  %2705 = fmul fast float %2704, 0x4032DA0000000000
  %2706 = fadd fast float %2705, 8.359375e-01
  %2707 = fmul fast float %2704, 1.868750e+01
  %2708 = fadd fast float %2707, 1.000000e+00
  %2709 = fdiv fast float %2706, %2708
  %2710 = call float @dx.op.unary.f32(i32 23, float %2709)  ; Log(value)
  %2711 = fmul fast float %2710, 7.884375e+01
  %2712 = call float @dx.op.unary.f32(i32 21, float %2711)  ; Exp(value)
  %2713 = fmul fast float %2699, 0x40778E40E0000000
  %2714 = fmul fast float %2712, 0x40778E40E0000000
  %2715 = call float @dx.op.unary.f32(i32 26, float %2713)  ; Round_ne(value)
  %2716 = call float @dx.op.unary.f32(i32 26, float %2714)  ; Round_ne(value)
  %2717 = fmul fast float %2715, 0x3F70101020000000
  %2718 = fmul fast float %2716, 0x3F70101020000000
  %2719 = call float @dx.op.unary.f32(i32 7, float %2717)  ; Saturate(value)
  %2720 = call float @dx.op.unary.f32(i32 7, float %2718)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %2682, i32 %2683, i32 undef, float %2719, float %2720, float %2719, float %2719, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2721

; <label>:2721                                    ; preds = %2679, %2654
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
!dx.entryPoints = !{!33}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !22, !26, !29}
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
!22 = !{!23, !24, !25}
!23 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!24 = !{i32 1, %"class.RWTexture2D<vector<float, 2> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!25 = !{i32 2, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!26 = !{!27, !28}
!27 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!28 = !{i32 1, %PostOpaqueConstants* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!29 = !{!30, !31, !32}
!30 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!31 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!32 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!33 = !{void ()* @cs_post_opaque_processes_luma_subsampletile, !"cs_post_opaque_processes_luma_subsampletile", null, !4, !34}
!34 = !{i32 0, i64 532752, i32 4, !35}
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
!135 = distinct !{!135, !"dx.controlflow.hints", i32 2}

