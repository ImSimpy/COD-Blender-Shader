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
; shader hash: 30dc7d37cd472bfaad389e6e1c2934ad
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
;   [16 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb1     1
;                                   sampler      NA          NA      S0             s0     1
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
;                                   texture     u32          2d      T0             t2     1
;                                   texture    byte         r/o      T1             t9     1
;                                   texture     f32          2d      T2             t0     1
;                                   texture     u32     2darray      T3            t10     1
;                                   texture    byte         r/o      T4            t19     1
;                                   texture    byte         r/o      T5            t20     1
;                                   texture     f32          1d      T6             t8     1
;                                   texture     f32          2d      T7            t13     1
;                                   texture     f32     2darray      T8             t1     1
;                                   texture    byte         r/o      T9             t6     1
;                                   texture    byte         r/o     T10             t7     1
;                                       UAV     f32     2darray      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2DArray<unsigned int>" = type { i32, %"class.Texture2DArray<unsigned int>::mips_type" }
%"class.Texture2DArray<unsigned int>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2DArray<float>" = type { float }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%ConstantBufferSpotvis = type { i32, i32, i32, i32 }
%struct.SamplerComparisonState = type { i32 }
%struct.SamplerState = type { i32 }

define void @cs_spotvis() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %19 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %20 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %21 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.i32 %21, 0
  %23 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = extractvalue %dx.types.CBufRet.i32 %23, 1
  %25 = shl i32 %22, 2
  %26 = mul i32 %25, %24
  %27 = add i32 %26, %18
  %28 = shl i32 %27, 2
  %29 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %28, i32 undef)  ; BufferLoad(srv,index,wot)
  %30 = extractvalue %dx.types.ResRet.i32 %29, 0
  %31 = lshr i32 %30, 10
  %32 = and i32 %31, 262128
  %33 = shl i32 %30, 4
  %34 = and i32 %33, 262128
  %35 = lshr i32 %30, 25
  %36 = and i32 %35, 8
  %37 = lshr i32 %30, 26
  %38 = and i32 %37, 8
  %39 = or i32 %36, %19
  %40 = or i32 %39, %32
  %41 = or i32 %38, %20
  %42 = or i32 %41, %34
  %43 = uitofp i32 %40 to float
  %44 = uitofp i32 %42 to float
  %45 = fadd fast float %43, 5.000000e-01
  %46 = fadd fast float %44, 5.000000e-01
  %47 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %40, i32 %42, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %48 = extractvalue %dx.types.ResRet.f32 %47, 0
  %49 = fcmp fast olt float %48, -1.000000e+00
  %50 = fcmp fast ogt float %48, -1.000000e+00
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 1
  %53 = select i1 %50, float %52, float 1.000000e+00
  %54 = fadd fast float %48, 1.000000e+00
  %55 = fmul fast float %53, %54
  %56 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 2
  %59 = extractvalue %dx.types.CBufRet.f32 %57, 3
  %60 = fmul fast float %45, %58
  %61 = fmul fast float %46, %59
  %62 = fmul fast float %60, 2.000000e+00
  %63 = fmul fast float %61, 2.000000e+00
  %64 = fsub fast float 1.000000e+00, %62
  %65 = fsub fast float 1.000000e+00, %63
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = extractvalue %dx.types.CBufRet.f32 %66, 1
  %69 = extractvalue %dx.types.CBufRet.f32 %66, 2
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 0
  %72 = extractvalue %dx.types.CBufRet.f32 %70, 1
  %73 = extractvalue %dx.types.CBufRet.f32 %70, 2
  %74 = select i1 %49, float %67, float %71
  %75 = select i1 %49, float %68, float %72
  %76 = select i1 %49, float %69, float %73
  %77 = fmul fast float %74, %64
  %78 = fmul fast float %75, %64
  %79 = fmul fast float %76, %64
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = extractvalue %dx.types.CBufRet.f32 %80, 1
  %83 = extractvalue %dx.types.CBufRet.f32 %80, 2
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 0
  %86 = extractvalue %dx.types.CBufRet.f32 %84, 1
  %87 = extractvalue %dx.types.CBufRet.f32 %84, 2
  %88 = select i1 %49, float %81, float %85
  %89 = select i1 %49, float %82, float %86
  %90 = select i1 %49, float %83, float %87
  %91 = fmul fast float %88, %65
  %92 = fmul fast float %89, %65
  %93 = fmul fast float %90, %65
  %94 = fadd fast float %91, %77
  %95 = fadd fast float %92, %78
  %96 = fadd fast float %93, %79
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 0
  %99 = extractvalue %dx.types.CBufRet.f32 %97, 1
  %100 = extractvalue %dx.types.CBufRet.f32 %97, 2
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 1
  %104 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %105 = select i1 %49, float %98, float %102
  %106 = select i1 %49, float %99, float %103
  %107 = select i1 %49, float %100, float %104
  %108 = fadd fast float %94, %105
  %109 = fadd fast float %95, %106
  %110 = fadd fast float %96, %107
  %111 = fmul fast float %108, %56
  %112 = fmul fast float %109, %56
  %113 = fmul fast float %110, %56
  %114 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %40, i32 %42, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %115 = extractvalue %dx.types.ResRet.i32 %114, 0
  %116 = lshr i32 %115, 8
  %117 = and i32 %115, 255
  %118 = and i32 %116, 255
  %119 = uitofp i32 %117 to float
  %120 = uitofp i32 %118 to float
  %121 = fmul fast float %119, 0x3F80101020000000
  %122 = fmul fast float %120, 0x3F80101020000000
  %123 = fadd fast float %121, -1.000000e+00
  %124 = fadd fast float %122, -1.000000e+00
  %125 = call float @dx.op.unary.f32(i32 6, float %123)  ; FAbs(value)
  %126 = fsub fast float 1.000000e+00, %125
  %127 = call float @dx.op.unary.f32(i32 6, float %124)  ; FAbs(value)
  %128 = fsub fast float %126, %127
  %129 = fsub fast float -0.000000e+00, %128
  %130 = call float @dx.op.binary.f32(i32 35, float %129, float 0.000000e+00)  ; FMax(a,b)
  %131 = fcmp fast ogt float %123, 0.000000e+00
  %132 = fsub fast float -0.000000e+00, %130
  %133 = select i1 %131, float %132, float %130
  %134 = fadd fast float %133, %123
  %135 = fcmp fast ogt float %124, 0.000000e+00
  %136 = select i1 %135, float %132, float %130
  %137 = fadd fast float %136, %124
  %138 = call float @dx.op.dot3.f32(i32 55, float %134, float %137, float %128, float %134, float %137, float %128)  ; Dot3(ax,ay,az,bx,by,bz)
  %139 = call float @dx.op.unary.f32(i32 25, float %138)  ; Rsqrt(value)
  %140 = fmul fast float %134, %139
  %141 = fmul fast float %137, %139
  %142 = fmul fast float %139, %128
  %143 = fmul fast float %58, %43
  %144 = fmul fast float %59, %44
  %145 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %14, float %143, float %144, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %146 = extractvalue %dx.types.ResRet.f32 %145, 0
  %147 = extractvalue %dx.types.ResRet.f32 %145, 1
  %148 = extractvalue %dx.types.ResRet.f32 %145, 2
  %149 = fcmp fast ogt float %146, -1.000000e+00
  %150 = select i1 %149, float %52, float 1.000000e+00
  %151 = fadd fast float %146, 1.000000e+00
  %152 = fmul fast float %150, %151
  %153 = call float @dx.op.unary.f32(i32 6, float %152)  ; FAbs(value)
  %154 = fcmp fast ogt float %147, -1.000000e+00
  %155 = select i1 %154, float %52, float 1.000000e+00
  %156 = fadd fast float %147, 1.000000e+00
  %157 = fmul fast float %155, %156
  %158 = call float @dx.op.unary.f32(i32 6, float %157)  ; FAbs(value)
  %159 = fcmp fast ogt float %148, -1.000000e+00
  %160 = select i1 %159, float %52, float 1.000000e+00
  %161 = fadd fast float %148, 1.000000e+00
  %162 = fmul fast float %160, %161
  %163 = call float @dx.op.unary.f32(i32 6, float %162)  ; FAbs(value)
  %164 = fadd fast float %43, 1.000000e+00
  %165 = fmul fast float %58, %164
  %166 = fadd fast float %44, 1.000000e+00
  %167 = fmul fast float %59, %166
  %168 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %14, float %165, float %167, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %169 = extractvalue %dx.types.ResRet.f32 %168, 0
  %170 = extractvalue %dx.types.ResRet.f32 %168, 2
  %171 = fcmp fast ogt float %169, -1.000000e+00
  %172 = select i1 %171, float %52, float 1.000000e+00
  %173 = fadd fast float %169, 1.000000e+00
  %174 = fmul fast float %172, %173
  %175 = call float @dx.op.unary.f32(i32 6, float %174)  ; FAbs(value)
  %176 = fcmp fast ogt float %170, -1.000000e+00
  %177 = select i1 %176, float %52, float 1.000000e+00
  %178 = fadd fast float %170, 1.000000e+00
  %179 = fmul fast float %177, %178
  %180 = call float @dx.op.unary.f32(i32 6, float %179)  ; FAbs(value)
  %181 = fsub fast float %163, %158
  %182 = fsub fast float %175, %158
  %183 = fsub fast float %153, %158
  %184 = fsub fast float %180, %158
  %185 = call float @dx.op.unary.f32(i32 6, float %182)  ; FAbs(value)
  %186 = call float @dx.op.unary.f32(i32 6, float %181)  ; FAbs(value)
  %187 = call float @dx.op.binary.f32(i32 35, float %186, float %185)  ; FMax(a,b)
  %188 = call float @dx.op.unary.f32(i32 6, float %184)  ; FAbs(value)
  %189 = call float @dx.op.unary.f32(i32 6, float %183)  ; FAbs(value)
  %190 = call float @dx.op.binary.f32(i32 35, float %189, float %188)  ; FMax(a,b)
  %191 = fadd fast float %182, %181
  %192 = call float @dx.op.unary.f32(i32 6, float %191)  ; FAbs(value)
  %193 = fadd fast float %184, %183
  %194 = call float @dx.op.unary.f32(i32 6, float %193)  ; FAbs(value)
  %195 = fsub fast float %190, %194
  %196 = call float @dx.op.unary.f32(i32 6, float %195)  ; FAbs(value)
  %197 = fsub fast float %187, %192
  %198 = call float @dx.op.unary.f32(i32 6, float %197)  ; FAbs(value)
  %199 = call float @dx.op.binary.f32(i32 35, float %198, float %196)  ; FMax(a,b)
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.f32 %200, 2
  %202 = fmul fast float %201, 0x3FE3C6EF40000000
  %203 = frem fast float %45, 2.560000e+02
  %204 = frem fast float %46, 2.560000e+02
  %205 = fptoui float %203 to i32
  %206 = fptoui float %204 to i32
  %207 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %205, i32 %206, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %208 = extractvalue %dx.types.ResRet.f32 %207, 0
  %209 = extractvalue %dx.types.ResRet.f32 %207, 2
  %210 = fadd fast float %208, %202
  %211 = fadd fast float %209, %202
  %212 = call float @dx.op.unary.f32(i32 22, float %210)  ; Frc(value)
  %213 = call float @dx.op.unary.f32(i32 22, float %211)  ; Frc(value)
  %214 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.i32 %214, 0
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %800, label %217, !dx.controlflow.hints !31

; <label>:217                                     ; preds = %0
  %218 = fptoui float %45 to i32
  %219 = fptoui float %46 to i32
  %220 = lshr i32 %218, 4
  %221 = lshr i32 %219, 4
  %222 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.i32 %222, 0
  %224 = call i32 @dx.op.tertiary.i32(i32 49, i32 %221, i32 %223, i32 %220)  ; UMad(a,b,c)
  %225 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.i32 %225, 0
  %227 = add nsw i32 %226, -1
  %228 = call i32 @dx.op.binary.i32(i32 37, i32 %227, i32 0)  ; IMax(a,b)
  %229 = call float @dx.op.binary.f32(i32 35, float %56, float 0.000000e+00)  ; FMax(a,b)
  %230 = fptoui float %229 to i32
  %231 = lshr i32 %230, 5
  %232 = call i32 @dx.op.binary.i32(i32 40, i32 %231, i32 8191)  ; UMin(a,b)
  %233 = shl i32 %232, 2
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = lshr i32 %235, 16
  %237 = and i32 %235, 65535
  %238 = lshr i32 %235, 21
  %239 = lshr i32 %237, 5
  %240 = call i32 @dx.op.binary.i32(i32 40, i32 %239, i32 %228)  ; UMin(a,b)
  %241 = icmp ugt i32 %238, %240
  br i1 %241, label %800, label %242

; <label>:242                                     ; preds = %217
  br label %243

; <label>:243                                     ; preds = %796, %242
  %244 = phi i32 [ %797, %796 ], [ %238, %242 ]
  %245 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.i32 %245, 0
  %247 = call i32 @dx.op.tertiary.i32(i32 49, i32 %224, i32 %246, i32 %244)  ; UMad(a,b,c)
  %248 = shl i32 %247, 2
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = shl i32 %244, 5
  %252 = sub nsw i32 %236, %251
  %253 = call i32 @dx.op.binary.i32(i32 37, i32 %252, i32 0)  ; IMax(a,b)
  %254 = call i32 @dx.op.binary.i32(i32 38, i32 %253, i32 31)  ; IMin(a,b)
  %255 = sub nsw i32 1, %236
  %256 = add nsw i32 %255, %237
  %257 = call i32 @dx.op.binary.i32(i32 37, i32 %256, i32 0)  ; IMax(a,b)
  %258 = call i32 @dx.op.binary.i32(i32 38, i32 %257, i32 32)  ; IMin(a,b)
  %259 = and i32 %258, 31
  %260 = shl i32 -1, %259
  %261 = xor i32 %260, -1
  %262 = and i32 %254, 31
  %263 = shl i32 %261, %262
  %264 = icmp eq i32 %258, 32
  %265 = select i1 %264, i32 -1, i32 %263
  %266 = and i32 %265, %250
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %796, label %268

; <label>:268                                     ; preds = %243
  br label %269

; <label>:269                                     ; preds = %774, %268
  %270 = phi i32 [ %275, %774 ], [ %266, %268 ]
  %271 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %270)  ; FirstbitLo(value)
  %272 = add i32 %271, %251
  %273 = and i32 %271, 31
  %274 = shl i32 1, %273
  %275 = xor i32 %274, %270
  %276 = mul i32 %272, 112
  %277 = add i32 %276, 16
  %278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.f32 %278, 0
  %280 = extractvalue %dx.types.ResRet.f32 %278, 1
  %281 = extractvalue %dx.types.ResRet.f32 %278, 2
  %282 = add i32 %276, 28
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = add i32 %276, 32
  %286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.f32 %286, 0
  %288 = extractvalue %dx.types.ResRet.f32 %286, 1
  %289 = extractvalue %dx.types.ResRet.f32 %286, 2
  %290 = add i32 %276, 44
  %291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.f32 %291, 0
  %293 = add i32 %276, 48
  %294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.f32 %294, 0
  %296 = extractvalue %dx.types.ResRet.f32 %294, 1
  %297 = extractvalue %dx.types.ResRet.f32 %294, 2
  %298 = extractvalue %dx.types.ResRet.f32 %294, 3
  %299 = add i32 %276, 64
  %300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.f32 %300, 0
  %302 = extractvalue %dx.types.ResRet.f32 %300, 1
  %303 = extractvalue %dx.types.ResRet.f32 %300, 2
  %304 = extractvalue %dx.types.ResRet.f32 %300, 3
  %305 = add i32 %276, 92
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = and i32 %307, 65535
  %309 = uitofp i32 %308 to float
  %310 = lshr i32 %307, 16
  %311 = uitofp i32 %310 to float
  %312 = and i32 %284, 65535
  %313 = and i32 %284, 50331648
  %314 = icmp eq i32 %313, 33554432
  %315 = call float @dx.op.dot3.f32(i32 55, float %287, float %288, float %289, float %287, float %288, float %289)  ; Dot3(ax,ay,az,bx,by,bz)
  %316 = fsub fast float %111, %295
  %317 = fsub fast float %112, %296
  %318 = fsub fast float %113, %297
  %319 = call float @dx.op.dot3.f32(i32 55, float %316, float %317, float %318, float %287, float %288, float %289)  ; Dot3(ax,ay,az,bx,by,bz)
  %320 = fdiv fast float %319, %315
  %321 = call float @dx.op.binary.f32(i32 35, float %320, float -1.000000e+00)  ; FMax(a,b)
  %322 = call float @dx.op.binary.f32(i32 36, float %321, float 1.000000e+00)  ; FMin(a,b)
  %323 = fmul fast float %322, %287
  %324 = fmul fast float %322, %288
  %325 = fmul fast float %322, %289
  %326 = fadd fast float %323, %295
  %327 = fadd fast float %324, %296
  %328 = fadd fast float %325, %297
  %329 = fsub fast float %326, %111
  %330 = fsub fast float %327, %112
  %331 = fsub fast float %328, %113
  %332 = call float @dx.op.dot3.f32(i32 55, float %329, float %330, float %331, float %329, float %330, float %331)  ; Dot3(ax,ay,az,bx,by,bz)
  %333 = call float @dx.op.unary.f32(i32 24, float %332)  ; Sqrt(value)
  %334 = fdiv fast float 1.000000e+00, %333
  %335 = fmul fast float %329, %334
  %336 = fmul fast float %330, %334
  %337 = fmul fast float %331, %334
  br i1 %314, label %338, label %362, !dx.controlflow.hints !32

; <label>:338                                     ; preds = %269
  %339 = fmul fast float %303, %279
  %340 = fmul fast float %303, %280
  %341 = fmul fast float %303, %281
  %342 = fsub fast float %339, %111
  %343 = fadd fast float %342, %326
  %344 = fsub fast float %340, %112
  %345 = fadd fast float %344, %327
  %346 = fsub fast float %341, %113
  %347 = fadd fast float %346, %328
  %348 = call float @dx.op.dot3.f32(i32 55, float %343, float %345, float %347, float %343, float %345, float %347)  ; Dot3(ax,ay,az,bx,by,bz)
  %349 = call float @dx.op.unary.f32(i32 25, float %348)  ; Rsqrt(value)
  %350 = fmul fast float %349, %343
  %351 = fmul fast float %349, %345
  %352 = fmul fast float %349, %347
  %353 = fsub fast float %111, %326
  %354 = fsub fast float %112, %327
  %355 = fsub fast float %113, %328
  %356 = fsub fast float -0.000000e+00, %353
  %357 = fsub fast float -0.000000e+00, %354
  %358 = fsub fast float -0.000000e+00, %355
  %359 = call float @dx.op.dot3.f32(i32 55, float %356, float %357, float %358, float %279, float %280, float %281)  ; Dot3(ax,ay,az,bx,by,bz)
  %360 = fcmp fast ogt float %359, 0.000000e+00
  %361 = uitofp i1 %360 to float
  br label %362

; <label>:362                                     ; preds = %338, %269
  %363 = phi float [ %361, %338 ], [ 1.000000e+00, %269 ]
  %364 = phi float [ %350, %338 ], [ %335, %269 ]
  %365 = phi float [ %351, %338 ], [ %336, %269 ]
  %366 = phi float [ %352, %338 ], [ %337, %269 ]
  %367 = call float @dx.op.dot3.f32(i32 55, float %279, float %280, float %281, float %364, float %365, float %366)  ; Dot3(ax,ay,az,bx,by,bz)
  %368 = fmul fast float %367, %367
  %369 = call float @dx.op.unary.f32(i32 7, float %368)  ; Saturate(value)
  %370 = fsub fast float 1.000000e+00, %369
  %371 = fmul fast float %370, 5.000000e-01
  %372 = fcmp fast ogt float %367, 0.000000e+00
  %373 = fsub fast float 1.000000e+00, %371
  %374 = select i1 %372, float %371, float %373
  %375 = fmul fast float %374, %311
  %376 = fadd fast float %375, %309
  %377 = fmul fast float %376, 0x3EF0001000000000
  %378 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %13, float %377, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %379 = extractvalue %dx.types.ResRet.f32 %378, 0
  %380 = fmul fast float %367, %301
  %381 = fadd fast float %380, %302
  %382 = call float @dx.op.unary.f32(i32 7, float %381)  ; Saturate(value)
  %383 = select i1 %314, float %382, float 1.000000e+00
  %384 = fmul fast float %333, %298
  %385 = fsub fast float 1.000000e+00, %384
  %386 = fmul fast float %385, %304
  %387 = call float @dx.op.unary.f32(i32 7, float %386)  ; Saturate(value)
  %388 = fmul fast float %387, %383
  %389 = fmul fast float %388, 2.000000e+00
  %390 = fsub fast float 3.000000e+00, %389
  %391 = fmul fast float %379, %363
  %392 = fmul fast float %388, %388
  %393 = fmul fast float %392, %391
  %394 = fmul fast float %393, %390
  %395 = icmp ne i32 %312, 255
  %396 = call float @dx.op.binary.f32(i32 36, float %394, float %394)  ; FMin(a,b)
  %397 = call float @dx.op.binary.f32(i32 36, float %394, float %396)  ; FMin(a,b)
  %398 = fcmp fast ogt float %397, 0.000000e+00
  %399 = and i1 %395, %398
  br i1 %399, label %400, label %499, !dx.controlflow.hints !33

; <label>:400                                     ; preds = %362
  %401 = select i1 %314, float 1.000000e+00, float %382
  %402 = mul nuw nsw i32 %312, 176
  %403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.f32 %403, 0
  %405 = extractvalue %dx.types.ResRet.f32 %403, 1
  %406 = extractvalue %dx.types.ResRet.f32 %403, 2
  %407 = extractvalue %dx.types.ResRet.f32 %403, 3
  %408 = add nuw nsw i32 %402, 16
  %409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.f32 %409, 0
  %411 = extractvalue %dx.types.ResRet.f32 %409, 1
  %412 = add nuw nsw i32 %402, 32
  %413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.f32 %413, 0
  %415 = extractvalue %dx.types.ResRet.f32 %413, 1
  %416 = extractvalue %dx.types.ResRet.f32 %413, 2
  %417 = add nuw nsw i32 %402, 48
  %418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.f32 %418, 0
  %420 = extractvalue %dx.types.ResRet.f32 %418, 1
  %421 = extractvalue %dx.types.ResRet.f32 %418, 2
  %422 = extractvalue %dx.types.ResRet.f32 %418, 3
  %423 = add nuw nsw i32 %402, 64
  %424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.f32 %424, 0
  %426 = extractvalue %dx.types.ResRet.f32 %424, 1
  %427 = extractvalue %dx.types.ResRet.f32 %424, 2
  %428 = extractvalue %dx.types.ResRet.f32 %424, 3
  %429 = add nuw nsw i32 %402, 80
  %430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.f32 %430, 0
  %432 = extractvalue %dx.types.ResRet.f32 %430, 1
  %433 = extractvalue %dx.types.ResRet.f32 %430, 2
  %434 = extractvalue %dx.types.ResRet.f32 %430, 3
  %435 = add nuw nsw i32 %402, 96
  %436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.f32 %436, 0
  %438 = extractvalue %dx.types.ResRet.f32 %436, 1
  %439 = extractvalue %dx.types.ResRet.f32 %436, 2
  %440 = extractvalue %dx.types.ResRet.f32 %436, 3
  %441 = bitcast float %411 to i32
  %442 = fmul fast float %416, %140
  %443 = fmul fast float %416, %141
  %444 = fmul fast float %416, %142
  %445 = fadd fast float %442, %111
  %446 = fadd fast float %443, %112
  %447 = fadd fast float %444, %113
  %448 = fmul fast float %445, %419
  %449 = call float @dx.op.tertiary.f32(i32 46, float %446, float %425, float %448)  ; FMad(a,b,c)
  %450 = call float @dx.op.tertiary.f32(i32 46, float %447, float %431, float %449)  ; FMad(a,b,c)
  %451 = fadd fast float %450, %437
  %452 = fmul fast float %445, %420
  %453 = call float @dx.op.tertiary.f32(i32 46, float %446, float %426, float %452)  ; FMad(a,b,c)
  %454 = call float @dx.op.tertiary.f32(i32 46, float %447, float %432, float %453)  ; FMad(a,b,c)
  %455 = fadd fast float %454, %438
  %456 = fmul fast float %445, %421
  %457 = call float @dx.op.tertiary.f32(i32 46, float %446, float %427, float %456)  ; FMad(a,b,c)
  %458 = call float @dx.op.tertiary.f32(i32 46, float %447, float %433, float %457)  ; FMad(a,b,c)
  %459 = fadd fast float %458, %439
  %460 = fmul fast float %445, %422
  %461 = call float @dx.op.tertiary.f32(i32 46, float %446, float %428, float %460)  ; FMad(a,b,c)
  %462 = call float @dx.op.tertiary.f32(i32 46, float %447, float %434, float %461)  ; FMad(a,b,c)
  %463 = fadd fast float %462, %440
  %464 = fdiv fast float %451, %463
  %465 = fdiv fast float %455, %463
  %466 = fdiv fast float %459, %463
  %467 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %466)  ; FMax(a,b)
  %468 = fmul fast float %212, 0x401921FB60000000
  %469 = call float @dx.op.unary.f32(i32 13, float %468)  ; Sin(value)
  %470 = call float @dx.op.unary.f32(i32 12, float %468)  ; Cos(value)
  %471 = fsub fast float -0.000000e+00, %469
  %472 = fmul fast float %406, 5.000000e-01
  %473 = call float @dx.op.dot2.f32(i32 54, float %212, float %212, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %474 = call float @dx.op.unary.f32(i32 22, float %473)  ; Frc(value)
  %475 = fmul fast float %474, 0x404A7DD040000000
  %476 = call float @dx.op.unary.f32(i32 22, float %475)  ; Frc(value)
  %477 = fmul fast float %476, %415
  %478 = fadd fast float %477, %472
  %479 = call float @dx.op.tertiary.f32(i32 46, float %478, float %471, float 0.000000e+00)  ; FMad(a,b,c)
  %480 = call float @dx.op.tertiary.f32(i32 46, float %478, float %470, float 0.000000e+00)  ; FMad(a,b,c)
  %481 = fadd fast float %479, %464
  %482 = fadd fast float %480, %465
  %483 = fmul fast float %481, %410
  %484 = fmul fast float %482, %410
  %485 = call float @dx.op.binary.f32(i32 35, float %483, float %406)  ; FMax(a,b)
  %486 = call float @dx.op.binary.f32(i32 35, float %484, float %406)  ; FMax(a,b)
  %487 = call float @dx.op.binary.f32(i32 36, float %485, float %407)  ; FMin(a,b)
  %488 = call float @dx.op.binary.f32(i32 36, float %486, float %407)  ; FMin(a,b)
  %489 = fadd fast float %487, %404
  %490 = fadd fast float %488, %405
  %491 = uitofp i32 %441 to float
  %492 = fadd fast float %467, %414
  %493 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %15, float %489, float %490, float %491, float undef, i32 0, i32 0, i32 undef, float %492)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %494 = extractvalue %dx.types.ResRet.f32 %493, 0
  %495 = fadd fast float %494, -1.000000e+00
  %496 = fmul fast float %495, %401
  %497 = fadd fast float %496, 1.000000e+00
  %498 = fmul fast float %497, %394
  br label %499

; <label>:499                                     ; preds = %400, %362
  %500 = phi float [ %498, %400 ], [ %394, %362 ]
  %501 = call float @dx.op.binary.f32(i32 36, float %500, float %500)  ; FMin(a,b)
  %502 = call float @dx.op.binary.f32(i32 36, float %500, float %501)  ; FMin(a,b)
  %503 = fcmp fast ogt float %502, 0.000000e+00
  %504 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %335, float %336, float %337)  ; Dot3(ax,ay,az,bx,by,bz)
  %505 = fcmp fast ogt float %504, 0.000000e+00
  %506 = and i1 %503, %505
  br i1 %506, label %507, label %774, !dx.controlflow.hints !34

; <label>:507                                     ; preds = %499
  %508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %509 = extractvalue %dx.types.CBufRet.f32 %508, 1
  %510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %511 = extractvalue %dx.types.CBufRet.f32 %510, 1
  %512 = select i1 %49, float %509, float %511
  %513 = extractvalue %dx.types.CBufRet.f32 %508, 2
  %514 = extractvalue %dx.types.CBufRet.f32 %510, 2
  %515 = select i1 %49, float %513, float %514
  %516 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %517 = extractvalue %dx.types.CBufRet.i32 %516, 0
  %518 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %519 = extractvalue %dx.types.CBufRet.i32 %518, 0
  %520 = select i1 %49, i32 %517, i32 %519
  %521 = fcmp fast olt float %512, 5.000000e-01
  %522 = icmp eq i32 %520, 0
  %523 = or i1 %521, %522
  br i1 %523, label %771, label %524, !dx.controlflow.hints !35

; <label>:524                                     ; preds = %507
  %525 = fsub fast float %295, %111
  %526 = fsub fast float %296, %112
  %527 = fsub fast float %297, %113
  %528 = fmul fast float %525, %525
  %529 = fmul fast float %526, %526
  %530 = fadd fast float %528, %529
  %531 = fmul fast float %527, %527
  %532 = fadd fast float %530, %531
  %533 = call float @dx.op.unary.f32(i32 24, float %532)  ; Sqrt(value)
  %534 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.i32 %534, 0
  %536 = uitofp i32 %535 to float
  %537 = fmul fast float %512, %292
  %538 = fdiv fast float %537, %533
  %539 = call float @dx.op.binary.f32(i32 36, float %538, float 1.000000e+01)  ; FMin(a,b)
  %540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %541 = extractvalue %dx.types.CBufRet.f32 %540, 0
  %542 = extractvalue %dx.types.CBufRet.f32 %540, 1
  %543 = extractvalue %dx.types.CBufRet.f32 %540, 2
  %544 = extractvalue %dx.types.CBufRet.f32 %540, 3
  %545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %546 = extractvalue %dx.types.CBufRet.f32 %545, 0
  %547 = extractvalue %dx.types.CBufRet.f32 %545, 1
  %548 = extractvalue %dx.types.CBufRet.f32 %545, 2
  %549 = extractvalue %dx.types.CBufRet.f32 %545, 3
  %550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %551 = extractvalue %dx.types.CBufRet.f32 %550, 0
  %552 = extractvalue %dx.types.CBufRet.f32 %550, 1
  %553 = extractvalue %dx.types.CBufRet.f32 %550, 2
  %554 = extractvalue %dx.types.CBufRet.f32 %550, 3
  %555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %556 = extractvalue %dx.types.CBufRet.f32 %555, 0
  %557 = extractvalue %dx.types.CBufRet.f32 %555, 1
  %558 = extractvalue %dx.types.CBufRet.f32 %555, 2
  %559 = extractvalue %dx.types.CBufRet.f32 %555, 3
  %560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %561 = extractvalue %dx.types.CBufRet.f32 %560, 0
  %562 = extractvalue %dx.types.CBufRet.f32 %560, 1
  %563 = extractvalue %dx.types.CBufRet.f32 %560, 2
  %564 = extractvalue %dx.types.CBufRet.f32 %560, 3
  %565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %566 = extractvalue %dx.types.CBufRet.f32 %565, 0
  %567 = extractvalue %dx.types.CBufRet.f32 %565, 1
  %568 = extractvalue %dx.types.CBufRet.f32 %565, 2
  %569 = extractvalue %dx.types.CBufRet.f32 %565, 3
  %570 = select i1 %49, float %541, float %556
  %571 = select i1 %49, float %546, float %561
  %572 = select i1 %49, float %551, float %566
  %573 = select i1 %49, float %542, float %557
  %574 = select i1 %49, float %547, float %562
  %575 = select i1 %49, float %552, float %567
  %576 = select i1 %49, float %543, float %558
  %577 = select i1 %49, float %548, float %563
  %578 = select i1 %49, float %553, float %568
  %579 = select i1 %49, float %544, float %559
  %580 = select i1 %49, float %549, float %564
  %581 = select i1 %49, float %554, float %569
  %582 = fmul fast float %213, 0x401061CAC0000000
  %583 = fmul fast float %213, 0x4023E1D7E0000000
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 0
  %586 = extractvalue %dx.types.CBufRet.f32 %584, 1
  %587 = extractvalue %dx.types.CBufRet.f32 %584, 2
  %588 = extractvalue %dx.types.CBufRet.f32 %584, 3
  %589 = fsub fast float -0.000000e+00, %335
  %590 = fmul fast float %337, %589
  %591 = fmul fast float %335, %589
  %592 = fmul fast float %336, %336
  %593 = fsub fast float %591, %592
  %594 = fdiv fast float 1.000000e+00, %56
  %595 = fmul fast float %587, %45
  %596 = fmul fast float %588, %46
  %597 = fmul fast float %512, %335
  %598 = fmul fast float %512, %337
  %599 = fadd fast float %597, %111
  %600 = fadd fast float %598, %113
  %601 = fadd fast float %583, 5.000000e-01
  %602 = call float @dx.op.unary.f32(i32 22, float %601)  ; Frc(value)
  %603 = bitcast float %602 to i32
  %604 = ashr i32 %603, 1
  %605 = add nsw i32 %604, 532487669
  %606 = bitcast i32 %605 to float
  %607 = fmul fast float %606, %539
  %608 = fadd fast float %582, 5.000000e-01
  %609 = call float @dx.op.unary.f32(i32 22, float %608)  ; Frc(value)
  %610 = fmul fast float %609, 0x401921FB60000000
  %611 = call float @dx.op.unary.f32(i32 12, float %610)  ; Cos(value)
  %612 = fmul fast float %611, %611
  %613 = fsub fast float 1.000000e+00, %612
  %614 = bitcast float %613 to i32
  %615 = ashr i32 %614, 1
  %616 = add nsw i32 %615, 532487669
  %617 = bitcast i32 %616 to float
  %618 = fmul fast float %607, %611
  %619 = fmul fast float %618, %336
  %620 = fmul fast float %618, %589
  %621 = fadd fast float %599, %619
  %622 = fmul fast float %617, %607
  %623 = fmul fast float %590, %622
  %624 = fmul fast float %622, %337
  %625 = fmul fast float %622, %593
  %626 = fsub fast float %621, %623
  %627 = fadd fast float %624, %512
  %628 = fmul fast float %627, %336
  %629 = fadd fast float %620, %112
  %630 = fadd fast float %629, %628
  %631 = fadd fast float %600, %625
  %632 = fmul fast float %626, %570
  %633 = call float @dx.op.tertiary.f32(i32 46, float %630, float %573, float %632)  ; FMad(a,b,c)
  %634 = call float @dx.op.tertiary.f32(i32 46, float %631, float %576, float %633)  ; FMad(a,b,c)
  %635 = fadd fast float %634, %579
  %636 = fmul fast float %626, %571
  %637 = call float @dx.op.tertiary.f32(i32 46, float %630, float %574, float %636)  ; FMad(a,b,c)
  %638 = call float @dx.op.tertiary.f32(i32 46, float %631, float %577, float %637)  ; FMad(a,b,c)
  %639 = fadd fast float %638, %580
  %640 = fmul fast float %626, %572
  %641 = call float @dx.op.tertiary.f32(i32 46, float %630, float %575, float %640)  ; FMad(a,b,c)
  %642 = call float @dx.op.tertiary.f32(i32 46, float %631, float %578, float %641)  ; FMad(a,b,c)
  %643 = fadd fast float %642, %581
  %644 = fdiv fast float 1.000000e+00, %643
  %645 = fmul fast float %635, 5.000000e-01
  %646 = fmul fast float %639, -5.000000e-01
  %647 = fmul fast float %645, %644
  %648 = fmul fast float %646, %644
  %649 = fsub fast float 5.000000e-01, %595
  %650 = fadd fast float %649, %647
  %651 = fsub fast float 5.000000e-01, %596
  %652 = fadd fast float %651, %648
  %653 = fsub fast float %644, %594
  %654 = call float @dx.op.dot2.f32(i32 54, float %650, float %652, float %650, float %652)  ; Dot2(ax,ay,bx,by)
  %655 = call float @dx.op.binary.f32(i32 35, float %654, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %656 = call float @dx.op.dot2.f32(i32 54, float %585, float %586, float %585, float %586)  ; Dot2(ax,ay,bx,by)
  %657 = fmul fast float %656, %655
  %658 = call float @dx.op.unary.f32(i32 25, float %657)  ; Rsqrt(value)
  %659 = fmul fast float %658, %650
  %660 = fmul fast float %658, %652
  %661 = fadd fast float %659, %595
  %662 = fadd fast float %660, %596
  %663 = fmul fast float %650, %585
  %664 = fmul fast float %652, %586
  %665 = fmul fast float %663, %663
  %666 = fmul fast float %664, %664
  %667 = fadd fast float %665, %666
  %668 = call float @dx.op.unary.f32(i32 24, float %667)  ; Sqrt(value)
  %669 = fdiv fast float 1.000000e+00, %668
  %670 = fmul fast float %668, 3.906250e-03
  %671 = fmul fast float %199, 0x3F70624DE0000000
  %672 = fadd fast float %671, 0x3F70624DE0000000
  %673 = icmp sgt i32 %520, -1
  br i1 %673, label %674, label %736

; <label>:674                                     ; preds = %524
  br label %675

; <label>:675                                     ; preds = %732, %674
  %676 = phi float [ %707, %732 ], [ %56, %674 ]
  %677 = phi float [ %694, %732 ], [ %56, %674 ]
  %678 = phi float [ %677, %732 ], [ %56, %674 ]
  %679 = phi i32 [ %733, %732 ], [ 0, %674 ]
  %680 = sitofp i32 %679 to float
  %681 = fadd fast float %213, 5.000000e-01
  %682 = call float @dx.op.unary.f32(i32 22, float %681)  ; Frc(value)
  %683 = fadd fast float %680, %682
  %684 = sitofp i32 %520 to float
  %685 = fdiv fast float %683, %684
  %686 = fmul fast float %685, %685
  %687 = call float @dx.op.binary.f32(i32 36, float %686, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %688 = fmul fast float %687, %650
  %689 = fmul fast float %687, %652
  %690 = fmul fast float %687, %653
  %691 = fadd fast float %688, %661
  %692 = fadd fast float %689, %662
  %693 = fadd fast float %690, %594
  %694 = fdiv fast float 1.000000e+00, %693
  %695 = icmp ne i32 %535, 0
  %696 = fmul fast float %670, %687
  %697 = call float @dx.op.binary.f32(i32 36, float %696, float %536)  ; FMin(a,b)
  %698 = select i1 %695, float %697, float 0.000000e+00
  %699 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %691, float %692, float undef, float undef, i32 0, i32 0, i32 undef, float %698)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %700 = extractvalue %dx.types.ResRet.f32 %699, 0
  %701 = fcmp fast ogt float %700, -1.000000e+00
  %702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %703 = extractvalue %dx.types.CBufRet.f32 %702, 1
  %704 = select i1 %701, float %703, float 1.000000e+00
  %705 = fadd fast float %700, 1.000000e+00
  %706 = fmul fast float %704, %705
  %707 = call float @dx.op.unary.f32(i32 6, float %706)  ; FAbs(value)
  %708 = fmul fast float %707, %672
  %709 = fsub fast float %694, %707
  %710 = fsub fast float %709, %708
  %711 = fcmp fast ogt float %710, 0.000000e+00
  %712 = fcmp fast ogt float %515, 0.000000e+00
  br i1 %712, label %713, label %716, !dx.controlflow.hints !36

; <label>:713                                     ; preds = %675
  %714 = fsub fast float %694, %678
  %715 = call float @dx.op.binary.f32(i32 35, float %714, float %515)  ; FMax(a,b)
  br label %716

; <label>:716                                     ; preds = %713, %675
  %717 = phi float [ %715, %713 ], [ %512, %675 ]
  %718 = fcmp fast olt float %710, %717
  %719 = fcmp uge float %700, -1.000000e+00
  %720 = or i1 %49, %719
  %721 = call float @dx.op.unary.f32(i32 7, float %691)  ; Saturate(value)
  %722 = call float @dx.op.unary.f32(i32 7, float %692)  ; Saturate(value)
  %723 = fcmp fast oeq float %691, %721
  %724 = fcmp fast oeq float %692, %722
  %725 = and i1 %723, %724
  %726 = and i1 %720, %725
  %727 = and i1 %711, %718
  %728 = and i1 %727, %726
  %729 = fcmp fast ogt float %687, %669
  %730 = and i1 %729, %728
  %731 = zext i1 %730 to i32
  br i1 %730, label %735, label %732, !dx.controlflow.hints !37

; <label>:732                                     ; preds = %716
  %733 = add nuw nsw i32 %679, 1
  %734 = icmp slt i32 %679, %520
  br i1 %734, label %675, label %735

; <label>:735                                     ; preds = %732, %716
  br label %736

; <label>:736                                     ; preds = %735, %524
  %737 = phi i32 [ 0, %524 ], [ %731, %735 ]
  %738 = phi float [ %56, %524 ], [ %707, %735 ]
  %739 = phi float [ %56, %524 ], [ %676, %735 ]
  %740 = phi float [ %56, %524 ], [ %694, %735 ]
  %741 = phi float [ %56, %524 ], [ %677, %735 ]
  %742 = fsub fast float %741, %739
  %743 = fsub fast float %740, %738
  %744 = fsub fast float %742, %743
  %745 = fcmp fast une float %744, 0.000000e+00
  %746 = fmul fast float %742, %740
  %747 = fmul fast float %741, %743
  %748 = fsub fast float %746, %747
  %749 = fdiv fast float 1.000000e+00, %744
  %750 = fmul fast float %748, %749
  %751 = select i1 %745, float %750, float %740
  %752 = fdiv fast float 1.000000e+00, %751
  %753 = fsub fast float %752, %594
  %754 = fdiv fast float %753, %653
  %755 = call float @dx.op.unary.f32(i32 7, float %754)  ; Saturate(value)
  %756 = fmul fast float %755, %650
  %757 = fmul fast float %755, %652
  %758 = fadd fast float %756, %661
  %759 = fadd fast float %757, %662
  %760 = fadd fast float %758, -5.000000e-01
  %761 = fadd fast float %759, -5.000000e-01
  %762 = call float @dx.op.unary.f32(i32 6, float %760)  ; FAbs(value)
  %763 = call float @dx.op.unary.f32(i32 6, float %761)  ; FAbs(value)
  %764 = fadd fast float %762, -5.000000e-01
  %765 = fadd fast float %763, -5.000000e-01
  %766 = call float @dx.op.binary.f32(i32 35, float %764, float %765)  ; FMax(a,b)
  %767 = fcmp fast olt float %766, 0.000000e+00
  %768 = icmp ne i32 %737, 0
  %769 = and i1 %768, %767
  %770 = select i1 %769, float 0.000000e+00, float 1.000000e+00
  br label %771

; <label>:771                                     ; preds = %736, %507
  %772 = phi float [ %770, %736 ], [ 1.000000e+00, %507 ]
  %773 = fmul fast float %772, %500
  br label %774

; <label>:774                                     ; preds = %771, %499
  %775 = phi float [ %773, %771 ], [ %500, %499 ]
  %776 = lshr i32 %218, 5
  %777 = lshr i32 %219, 5
  %778 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %776, i32 %777, i32 %272, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %779 = extractvalue %dx.types.ResRet.i32 %778, 0
  %780 = lshr i32 %779, 23
  %781 = and i32 %780, 255
  %782 = and i32 %218, 31
  %783 = and i32 %219, 31
  %784 = lshr i32 %779, 1
  %785 = and i32 %784, 16352
  %786 = lshr i32 %779, 10
  %787 = and i32 %786, 8160
  %788 = or i32 %785, %782
  %789 = or i32 %787, %783
  %790 = fmul fast float %775, 2.550000e+02
  %791 = fadd fast float %790, %212
  %792 = call float @dx.op.unary.f32(i32 27, float %791)  ; Round_ni(value)
  %793 = fmul fast float %792, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %788, i32 %789, i32 %781, float %793, float %793, float %793, float %793, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %794 = icmp eq i32 %270, %274
  br i1 %794, label %795, label %269, !llvm.loop !38

; <label>:795                                     ; preds = %774
  br label %796

; <label>:796                                     ; preds = %795, %243
  %797 = add i32 %244, 1
  %798 = icmp ugt i32 %797, %240
  br i1 %798, label %799, label %243

; <label>:799                                     ; preds = %796
  br label %800

; <label>:800                                     ; preds = %799, %217, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!28}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !19, !21, !24}
!5 = !{!6, !8, !9, !11, !12, !13, !14, !15, !16, !17, !18}
!6 = !{i32 0, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 5}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !10}
!10 = !{i32 0, i32 9}
!11 = !{i32 3, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 0, i32 10, i32 1, i32 7, i32 0, !7}
!12 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!13 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 20, i32 1, i32 11, i32 0, null}
!14 = !{i32 6, %"class.Texture1D<float>"* undef, !"", i32 0, i32 8, i32 1, i32 1, i32 0, !10}
!15 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !10}
!16 = !{i32 8, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 7, i32 0, !10}
!17 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 7, i32 1, i32 11, i32 0, null}
!19 = !{!20}
!20 = !{i32 0, %"class.RWTexture2DArray<float>"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!21 = !{!22, !23}
!22 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!23 = !{i32 1, %ConstantBufferSpotvis* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!24 = !{!25, !26, !27}
!25 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!26 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!27 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!28 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !29}
!29 = !{i32 0, i64 272, i32 4, !30}
!30 = !{i32 8, i32 8, i32 1}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 1}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.unroll.disable"}

