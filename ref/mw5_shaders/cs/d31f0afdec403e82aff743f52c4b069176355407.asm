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
; shader hash: c7676cb4d78542d11509d5717dd7cb40
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
;                                   sampler      NA          NA      S1             s2     1
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
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %18 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %19 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %20 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %21 = extractvalue %dx.types.CBufRet.i32 %20, 0
  %22 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.i32 %22, 1
  %24 = shl i32 %21, 2
  %25 = mul i32 %24, %23
  %26 = add i32 %25, %17
  %27 = shl i32 %26, 2
  %28 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %27, i32 undef)  ; BufferLoad(srv,index,wot)
  %29 = extractvalue %dx.types.ResRet.i32 %28, 0
  %30 = lshr i32 %29, 10
  %31 = and i32 %30, 262128
  %32 = shl i32 %29, 4
  %33 = and i32 %32, 262128
  %34 = lshr i32 %29, 25
  %35 = and i32 %34, 8
  %36 = lshr i32 %29, 26
  %37 = and i32 %36, 8
  %38 = or i32 %35, %18
  %39 = or i32 %38, %31
  %40 = or i32 %37, %19
  %41 = or i32 %40, %33
  %42 = uitofp i32 %39 to float
  %43 = uitofp i32 %41 to float
  %44 = fadd fast float %42, 5.000000e-01
  %45 = fadd fast float %43, 5.000000e-01
  %46 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %39, i32 %41, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %47 = extractvalue %dx.types.ResRet.f32 %46, 0
  %48 = fcmp fast olt float %47, -1.000000e+00
  %49 = fcmp fast ogt float %47, -1.000000e+00
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 1
  %52 = select i1 %49, float %51, float 1.000000e+00
  %53 = fadd fast float %47, 1.000000e+00
  %54 = fmul fast float %52, %53
  %55 = call float @dx.op.unary.f32(i32 6, float %54)  ; FAbs(value)
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 2
  %58 = extractvalue %dx.types.CBufRet.f32 %56, 3
  %59 = fmul fast float %57, 2.000000e+00
  %60 = fmul fast float %59, %44
  %61 = fmul fast float %58, 2.000000e+00
  %62 = fmul fast float %61, %45
  %63 = fsub fast float 1.000000e+00, %60
  %64 = fsub fast float 1.000000e+00, %62
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %67 = extractvalue %dx.types.CBufRet.f32 %65, 1
  %68 = extractvalue %dx.types.CBufRet.f32 %65, 2
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = extractvalue %dx.types.CBufRet.f32 %69, 1
  %72 = extractvalue %dx.types.CBufRet.f32 %69, 2
  %73 = select i1 %48, float %66, float %70
  %74 = select i1 %48, float %67, float %71
  %75 = select i1 %48, float %68, float %72
  %76 = fmul fast float %73, %63
  %77 = fmul fast float %74, %63
  %78 = fmul fast float %75, %63
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 0
  %81 = extractvalue %dx.types.CBufRet.f32 %79, 1
  %82 = extractvalue %dx.types.CBufRet.f32 %79, 2
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = extractvalue %dx.types.CBufRet.f32 %83, 1
  %86 = extractvalue %dx.types.CBufRet.f32 %83, 2
  %87 = select i1 %48, float %80, float %84
  %88 = select i1 %48, float %81, float %85
  %89 = select i1 %48, float %82, float %86
  %90 = fmul fast float %87, %64
  %91 = fmul fast float %88, %64
  %92 = fmul fast float %89, %64
  %93 = fadd fast float %90, %76
  %94 = fadd fast float %91, %77
  %95 = fadd fast float %92, %78
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 0
  %98 = extractvalue %dx.types.CBufRet.f32 %96, 1
  %99 = extractvalue %dx.types.CBufRet.f32 %96, 2
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %102 = extractvalue %dx.types.CBufRet.f32 %100, 1
  %103 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %104 = select i1 %48, float %97, float %101
  %105 = select i1 %48, float %98, float %102
  %106 = select i1 %48, float %99, float %103
  %107 = fadd fast float %93, %104
  %108 = fadd fast float %94, %105
  %109 = fadd fast float %95, %106
  %110 = fmul fast float %107, %55
  %111 = fmul fast float %108, %55
  %112 = fmul fast float %109, %55
  %113 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %39, i32 %41, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %114 = extractvalue %dx.types.ResRet.i32 %113, 0
  %115 = lshr i32 %114, 8
  %116 = and i32 %114, 255
  %117 = and i32 %115, 255
  %118 = uitofp i32 %116 to float
  %119 = uitofp i32 %117 to float
  %120 = fmul fast float %118, 0x3F80101020000000
  %121 = fmul fast float %119, 0x3F80101020000000
  %122 = fadd fast float %120, -1.000000e+00
  %123 = fadd fast float %121, -1.000000e+00
  %124 = call float @dx.op.unary.f32(i32 6, float %122)  ; FAbs(value)
  %125 = fsub fast float 1.000000e+00, %124
  %126 = call float @dx.op.unary.f32(i32 6, float %123)  ; FAbs(value)
  %127 = fsub fast float %125, %126
  %128 = fsub fast float -0.000000e+00, %127
  %129 = call float @dx.op.binary.f32(i32 35, float %128, float 0.000000e+00)  ; FMax(a,b)
  %130 = fcmp fast ogt float %122, 0.000000e+00
  %131 = fsub fast float -0.000000e+00, %129
  %132 = select i1 %130, float %131, float %129
  %133 = fadd fast float %132, %122
  %134 = fcmp fast ogt float %123, 0.000000e+00
  %135 = select i1 %134, float %131, float %129
  %136 = fadd fast float %135, %123
  %137 = call float @dx.op.dot3.f32(i32 55, float %133, float %136, float %127, float %133, float %136, float %127)  ; Dot3(ax,ay,az,bx,by,bz)
  %138 = call float @dx.op.unary.f32(i32 25, float %137)  ; Rsqrt(value)
  %139 = fmul fast float %133, %138
  %140 = fmul fast float %136, %138
  %141 = fmul fast float %138, %127
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 2
  %144 = fmul fast float %143, 0x3FE3C6EF40000000
  %145 = frem fast float %44, 2.560000e+02
  %146 = frem fast float %45, 2.560000e+02
  %147 = fptoui float %145 to i32
  %148 = fptoui float %146 to i32
  %149 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %147, i32 %148, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %150 = extractvalue %dx.types.ResRet.f32 %149, 0
  %151 = fadd fast float %150, %144
  %152 = call float @dx.op.unary.f32(i32 22, float %151)  ; Frc(value)
  %153 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.i32 %153, 0
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %461, label %156, !dx.controlflow.hints !30

; <label>:156                                     ; preds = %0
  %157 = fptoui float %44 to i32
  %158 = fptoui float %45 to i32
  %159 = lshr i32 %157, 4
  %160 = lshr i32 %158, 4
  %161 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.i32 %161, 0
  %163 = call i32 @dx.op.tertiary.i32(i32 49, i32 %160, i32 %162, i32 %159)  ; UMad(a,b,c)
  %164 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.i32 %164, 0
  %166 = add nsw i32 %165, -1
  %167 = call i32 @dx.op.binary.i32(i32 37, i32 %166, i32 0)  ; IMax(a,b)
  %168 = call float @dx.op.binary.f32(i32 35, float %55, float 0.000000e+00)  ; FMax(a,b)
  %169 = fptoui float %168 to i32
  %170 = lshr i32 %169, 5
  %171 = call i32 @dx.op.binary.i32(i32 40, i32 %170, i32 8191)  ; UMin(a,b)
  %172 = shl i32 %171, 2
  %173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %172, i32 undef)  ; BufferLoad(srv,index,wot)
  %174 = extractvalue %dx.types.ResRet.i32 %173, 0
  %175 = lshr i32 %174, 16
  %176 = and i32 %174, 65535
  %177 = lshr i32 %174, 21
  %178 = lshr i32 %176, 5
  %179 = call i32 @dx.op.binary.i32(i32 40, i32 %178, i32 %167)  ; UMin(a,b)
  %180 = icmp ugt i32 %177, %179
  br i1 %180, label %461, label %181

; <label>:181                                     ; preds = %156
  br label %182

; <label>:182                                     ; preds = %457, %181
  %183 = phi i32 [ %458, %457 ], [ %177, %181 ]
  %184 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.i32 %184, 0
  %186 = call i32 @dx.op.tertiary.i32(i32 49, i32 %163, i32 %185, i32 %183)  ; UMad(a,b,c)
  %187 = shl i32 %186, 2
  %188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %187, i32 undef)  ; BufferLoad(srv,index,wot)
  %189 = extractvalue %dx.types.ResRet.i32 %188, 0
  %190 = shl i32 %183, 5
  %191 = sub nsw i32 %175, %190
  %192 = call i32 @dx.op.binary.i32(i32 37, i32 %191, i32 0)  ; IMax(a,b)
  %193 = call i32 @dx.op.binary.i32(i32 38, i32 %192, i32 31)  ; IMin(a,b)
  %194 = sub nsw i32 1, %175
  %195 = add nsw i32 %194, %176
  %196 = call i32 @dx.op.binary.i32(i32 37, i32 %195, i32 0)  ; IMax(a,b)
  %197 = call i32 @dx.op.binary.i32(i32 38, i32 %196, i32 32)  ; IMin(a,b)
  %198 = and i32 %197, 31
  %199 = shl i32 -1, %198
  %200 = xor i32 %199, -1
  %201 = and i32 %193, 31
  %202 = shl i32 %200, %201
  %203 = icmp eq i32 %197, 32
  %204 = select i1 %203, i32 -1, i32 %202
  %205 = and i32 %204, %189
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %457, label %207

; <label>:207                                     ; preds = %182
  br label %208

; <label>:208                                     ; preds = %435, %207
  %209 = phi i32 [ %214, %435 ], [ %205, %207 ]
  %210 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %209)  ; FirstbitLo(value)
  %211 = add i32 %210, %190
  %212 = and i32 %210, 31
  %213 = shl i32 1, %212
  %214 = xor i32 %213, %209
  %215 = mul i32 %211, 112
  %216 = add i32 %215, 16
  %217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.f32 %217, 0
  %219 = extractvalue %dx.types.ResRet.f32 %217, 1
  %220 = extractvalue %dx.types.ResRet.f32 %217, 2
  %221 = add i32 %215, 28
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.i32 %222, 0
  %224 = add i32 %215, 32
  %225 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %224, i32 undef)  ; BufferLoad(srv,index,wot)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = extractvalue %dx.types.ResRet.f32 %225, 1
  %228 = extractvalue %dx.types.ResRet.f32 %225, 2
  %229 = add i32 %215, 48
  %230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.f32 %230, 0
  %232 = extractvalue %dx.types.ResRet.f32 %230, 1
  %233 = extractvalue %dx.types.ResRet.f32 %230, 2
  %234 = extractvalue %dx.types.ResRet.f32 %230, 3
  %235 = add i32 %215, 64
  %236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 0
  %238 = extractvalue %dx.types.ResRet.f32 %236, 1
  %239 = extractvalue %dx.types.ResRet.f32 %236, 2
  %240 = extractvalue %dx.types.ResRet.f32 %236, 3
  %241 = add i32 %215, 92
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = and i32 %243, 65535
  %245 = uitofp i32 %244 to float
  %246 = lshr i32 %243, 16
  %247 = uitofp i32 %246 to float
  %248 = and i32 %223, 65535
  %249 = and i32 %223, 50331648
  %250 = icmp eq i32 %249, 33554432
  %251 = call float @dx.op.dot3.f32(i32 55, float %226, float %227, float %228, float %226, float %227, float %228)  ; Dot3(ax,ay,az,bx,by,bz)
  %252 = fsub fast float %110, %231
  %253 = fsub fast float %111, %232
  %254 = fsub fast float %112, %233
  %255 = call float @dx.op.dot3.f32(i32 55, float %252, float %253, float %254, float %226, float %227, float %228)  ; Dot3(ax,ay,az,bx,by,bz)
  %256 = fdiv fast float %255, %251
  %257 = call float @dx.op.binary.f32(i32 35, float %256, float -1.000000e+00)  ; FMax(a,b)
  %258 = call float @dx.op.binary.f32(i32 36, float %257, float 1.000000e+00)  ; FMin(a,b)
  %259 = fmul fast float %258, %226
  %260 = fmul fast float %258, %227
  %261 = fmul fast float %258, %228
  %262 = fadd fast float %259, %231
  %263 = fadd fast float %260, %232
  %264 = fadd fast float %261, %233
  %265 = fsub fast float %262, %110
  %266 = fsub fast float %263, %111
  %267 = fsub fast float %264, %112
  %268 = call float @dx.op.dot3.f32(i32 55, float %265, float %266, float %267, float %265, float %266, float %267)  ; Dot3(ax,ay,az,bx,by,bz)
  %269 = call float @dx.op.unary.f32(i32 24, float %268)  ; Sqrt(value)
  %270 = fdiv fast float 1.000000e+00, %269
  %271 = fmul fast float %265, %270
  %272 = fmul fast float %266, %270
  %273 = fmul fast float %267, %270
  br i1 %250, label %274, label %298, !dx.controlflow.hints !31

; <label>:274                                     ; preds = %208
  %275 = fmul fast float %239, %218
  %276 = fmul fast float %239, %219
  %277 = fmul fast float %239, %220
  %278 = fsub fast float %275, %110
  %279 = fadd fast float %278, %262
  %280 = fsub fast float %276, %111
  %281 = fadd fast float %280, %263
  %282 = fsub fast float %277, %112
  %283 = fadd fast float %282, %264
  %284 = call float @dx.op.dot3.f32(i32 55, float %279, float %281, float %283, float %279, float %281, float %283)  ; Dot3(ax,ay,az,bx,by,bz)
  %285 = call float @dx.op.unary.f32(i32 25, float %284)  ; Rsqrt(value)
  %286 = fmul fast float %285, %279
  %287 = fmul fast float %285, %281
  %288 = fmul fast float %285, %283
  %289 = fsub fast float %110, %262
  %290 = fsub fast float %111, %263
  %291 = fsub fast float %112, %264
  %292 = fsub fast float -0.000000e+00, %289
  %293 = fsub fast float -0.000000e+00, %290
  %294 = fsub fast float -0.000000e+00, %291
  %295 = call float @dx.op.dot3.f32(i32 55, float %292, float %293, float %294, float %218, float %219, float %220)  ; Dot3(ax,ay,az,bx,by,bz)
  %296 = fcmp fast ogt float %295, 0.000000e+00
  %297 = uitofp i1 %296 to float
  br label %298

; <label>:298                                     ; preds = %274, %208
  %299 = phi float [ %297, %274 ], [ 1.000000e+00, %208 ]
  %300 = phi float [ %286, %274 ], [ %271, %208 ]
  %301 = phi float [ %287, %274 ], [ %272, %208 ]
  %302 = phi float [ %288, %274 ], [ %273, %208 ]
  %303 = call float @dx.op.dot3.f32(i32 55, float %218, float %219, float %220, float %300, float %301, float %302)  ; Dot3(ax,ay,az,bx,by,bz)
  %304 = fmul fast float %303, %303
  %305 = call float @dx.op.unary.f32(i32 7, float %304)  ; Saturate(value)
  %306 = fsub fast float 1.000000e+00, %305
  %307 = fmul fast float %306, 5.000000e-01
  %308 = fcmp fast ogt float %303, 0.000000e+00
  %309 = fsub fast float 1.000000e+00, %307
  %310 = select i1 %308, float %307, float %309
  %311 = fmul fast float %310, %247
  %312 = fadd fast float %311, %245
  %313 = fmul fast float %312, 0x3EF0001000000000
  %314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %13, float %313, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %315 = extractvalue %dx.types.ResRet.f32 %314, 0
  %316 = fmul fast float %303, %237
  %317 = fadd fast float %316, %238
  %318 = call float @dx.op.unary.f32(i32 7, float %317)  ; Saturate(value)
  %319 = select i1 %250, float %318, float 1.000000e+00
  %320 = fmul fast float %269, %234
  %321 = fsub fast float 1.000000e+00, %320
  %322 = fmul fast float %321, %240
  %323 = call float @dx.op.unary.f32(i32 7, float %322)  ; Saturate(value)
  %324 = fmul fast float %323, %319
  %325 = fmul fast float %324, 2.000000e+00
  %326 = fsub fast float 3.000000e+00, %325
  %327 = fmul fast float %315, %299
  %328 = fmul fast float %324, %324
  %329 = fmul fast float %328, %327
  %330 = fmul fast float %329, %326
  %331 = icmp ne i32 %248, 255
  %332 = call float @dx.op.binary.f32(i32 36, float %330, float %330)  ; FMin(a,b)
  %333 = call float @dx.op.binary.f32(i32 36, float %330, float %332)  ; FMin(a,b)
  %334 = fcmp fast ogt float %333, 0.000000e+00
  %335 = and i1 %331, %334
  br i1 %335, label %336, label %435, !dx.controlflow.hints !32

; <label>:336                                     ; preds = %298
  %337 = select i1 %250, float 1.000000e+00, float %318
  %338 = mul nuw nsw i32 %248, 176
  %339 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.f32 %339, 0
  %341 = extractvalue %dx.types.ResRet.f32 %339, 1
  %342 = extractvalue %dx.types.ResRet.f32 %339, 2
  %343 = extractvalue %dx.types.ResRet.f32 %339, 3
  %344 = add nuw nsw i32 %338, 16
  %345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.f32 %345, 0
  %347 = extractvalue %dx.types.ResRet.f32 %345, 1
  %348 = add nuw nsw i32 %338, 32
  %349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.f32 %349, 0
  %351 = extractvalue %dx.types.ResRet.f32 %349, 1
  %352 = extractvalue %dx.types.ResRet.f32 %349, 2
  %353 = add nuw nsw i32 %338, 48
  %354 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.f32 %354, 0
  %356 = extractvalue %dx.types.ResRet.f32 %354, 1
  %357 = extractvalue %dx.types.ResRet.f32 %354, 2
  %358 = extractvalue %dx.types.ResRet.f32 %354, 3
  %359 = add nuw nsw i32 %338, 64
  %360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.f32 %360, 0
  %362 = extractvalue %dx.types.ResRet.f32 %360, 1
  %363 = extractvalue %dx.types.ResRet.f32 %360, 2
  %364 = extractvalue %dx.types.ResRet.f32 %360, 3
  %365 = add nuw nsw i32 %338, 80
  %366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.f32 %366, 0
  %368 = extractvalue %dx.types.ResRet.f32 %366, 1
  %369 = extractvalue %dx.types.ResRet.f32 %366, 2
  %370 = extractvalue %dx.types.ResRet.f32 %366, 3
  %371 = add nuw nsw i32 %338, 96
  %372 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.f32 %372, 0
  %374 = extractvalue %dx.types.ResRet.f32 %372, 1
  %375 = extractvalue %dx.types.ResRet.f32 %372, 2
  %376 = extractvalue %dx.types.ResRet.f32 %372, 3
  %377 = bitcast float %347 to i32
  %378 = fmul fast float %139, %352
  %379 = fmul fast float %140, %352
  %380 = fmul fast float %141, %352
  %381 = fadd fast float %378, %110
  %382 = fadd fast float %379, %111
  %383 = fadd fast float %380, %112
  %384 = fmul fast float %381, %355
  %385 = call float @dx.op.tertiary.f32(i32 46, float %382, float %361, float %384)  ; FMad(a,b,c)
  %386 = call float @dx.op.tertiary.f32(i32 46, float %383, float %367, float %385)  ; FMad(a,b,c)
  %387 = fadd fast float %386, %373
  %388 = fmul fast float %381, %356
  %389 = call float @dx.op.tertiary.f32(i32 46, float %382, float %362, float %388)  ; FMad(a,b,c)
  %390 = call float @dx.op.tertiary.f32(i32 46, float %383, float %368, float %389)  ; FMad(a,b,c)
  %391 = fadd fast float %390, %374
  %392 = fmul fast float %381, %357
  %393 = call float @dx.op.tertiary.f32(i32 46, float %382, float %363, float %392)  ; FMad(a,b,c)
  %394 = call float @dx.op.tertiary.f32(i32 46, float %383, float %369, float %393)  ; FMad(a,b,c)
  %395 = fadd fast float %394, %375
  %396 = fmul fast float %381, %358
  %397 = call float @dx.op.tertiary.f32(i32 46, float %382, float %364, float %396)  ; FMad(a,b,c)
  %398 = call float @dx.op.tertiary.f32(i32 46, float %383, float %370, float %397)  ; FMad(a,b,c)
  %399 = fadd fast float %398, %376
  %400 = fdiv fast float %387, %399
  %401 = fdiv fast float %391, %399
  %402 = fdiv fast float %395, %399
  %403 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %402)  ; FMax(a,b)
  %404 = fmul fast float %152, 0x401921FB60000000
  %405 = call float @dx.op.unary.f32(i32 13, float %404)  ; Sin(value)
  %406 = call float @dx.op.unary.f32(i32 12, float %404)  ; Cos(value)
  %407 = fsub fast float -0.000000e+00, %405
  %408 = fmul fast float %342, 5.000000e-01
  %409 = call float @dx.op.dot2.f32(i32 54, float %152, float %152, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %410 = call float @dx.op.unary.f32(i32 22, float %409)  ; Frc(value)
  %411 = fmul fast float %410, 0x404A7DD040000000
  %412 = call float @dx.op.unary.f32(i32 22, float %411)  ; Frc(value)
  %413 = fmul fast float %412, %351
  %414 = fadd fast float %413, %408
  %415 = call float @dx.op.tertiary.f32(i32 46, float %414, float %407, float 0.000000e+00)  ; FMad(a,b,c)
  %416 = call float @dx.op.tertiary.f32(i32 46, float %414, float %406, float 0.000000e+00)  ; FMad(a,b,c)
  %417 = fadd fast float %415, %400
  %418 = fadd fast float %416, %401
  %419 = fmul fast float %417, %346
  %420 = fmul fast float %418, %346
  %421 = call float @dx.op.binary.f32(i32 35, float %419, float %342)  ; FMax(a,b)
  %422 = call float @dx.op.binary.f32(i32 35, float %420, float %342)  ; FMax(a,b)
  %423 = call float @dx.op.binary.f32(i32 36, float %421, float %343)  ; FMin(a,b)
  %424 = call float @dx.op.binary.f32(i32 36, float %422, float %343)  ; FMin(a,b)
  %425 = fadd fast float %423, %340
  %426 = fadd fast float %424, %341
  %427 = uitofp i32 %377 to float
  %428 = fadd fast float %403, %350
  %429 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %14, float %425, float %426, float %427, float undef, i32 0, i32 0, i32 undef, float %428)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %430 = extractvalue %dx.types.ResRet.f32 %429, 0
  %431 = fadd fast float %430, -1.000000e+00
  %432 = fmul fast float %431, %337
  %433 = fadd fast float %432, 1.000000e+00
  %434 = fmul fast float %433, %330
  br label %435

; <label>:435                                     ; preds = %336, %298
  %436 = phi float [ %434, %336 ], [ %330, %298 ]
  %437 = lshr i32 %157, 5
  %438 = lshr i32 %158, 5
  %439 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %437, i32 %438, i32 %211, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = lshr i32 %440, 23
  %442 = and i32 %441, 255
  %443 = and i32 %157, 31
  %444 = and i32 %158, 31
  %445 = lshr i32 %440, 1
  %446 = and i32 %445, 16352
  %447 = lshr i32 %440, 10
  %448 = and i32 %447, 8160
  %449 = or i32 %446, %443
  %450 = or i32 %448, %444
  %451 = fmul fast float %436, 2.550000e+02
  %452 = fadd fast float %451, %152
  %453 = call float @dx.op.unary.f32(i32 27, float %452)  ; Round_ni(value)
  %454 = fmul fast float %453, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %449, i32 %450, i32 %442, float %454, float %454, float %454, float %454, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %455 = icmp eq i32 %209, %213
  br i1 %455, label %456, label %208, !llvm.loop !33

; <label>:456                                     ; preds = %435
  br label %457

; <label>:457                                     ; preds = %456, %182
  %458 = add i32 %183, 1
  %459 = icmp ugt i32 %458, %179
  br i1 %459, label %460, label %182

; <label>:460                                     ; preds = %457
  br label %461

; <label>:461                                     ; preds = %460, %156, %0
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
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

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
!dx.entryPoints = !{!27}

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
!24 = !{!25, !26}
!25 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!26 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!27 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !28}
!28 = !{i32 0, i64 272, i32 4, !29}
!29 = !{i32 8, i32 8, i32 1}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 1}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.unroll.disable"}

