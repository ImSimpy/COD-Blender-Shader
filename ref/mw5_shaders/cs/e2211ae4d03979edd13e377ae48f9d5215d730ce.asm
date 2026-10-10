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
; shader hash: 62570e5180b4a73ac16a8695476b5c5f
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

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

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
  br i1 %216, label %1630, label %217, !dx.controlflow.hints !31

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
  br i1 %241, label %1630, label %242

; <label>:242                                     ; preds = %217
  br label %243

; <label>:243                                     ; preds = %1626, %242
  %244 = phi i32 [ %1627, %1626 ], [ %238, %242 ]
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
  br i1 %267, label %1626, label %268

; <label>:268                                     ; preds = %243
  br label %269

; <label>:269                                     ; preds = %1604, %268
  %270 = phi i32 [ %275, %1604 ], [ %266, %268 ]
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
  %383 = select i1 %314, float 1.000000e+00, float %382
  %384 = select i1 %314, float %382, float 1.000000e+00
  %385 = fmul fast float %333, %298
  %386 = fsub fast float 1.000000e+00, %385
  %387 = fmul fast float %386, %304
  %388 = call float @dx.op.unary.f32(i32 7, float %387)  ; Saturate(value)
  %389 = fmul fast float %388, %384
  %390 = fmul fast float %389, 2.000000e+00
  %391 = fsub fast float 3.000000e+00, %390
  %392 = fmul fast float %379, %363
  %393 = fmul fast float %389, %389
  %394 = fmul fast float %393, %392
  %395 = fmul fast float %394, %391
  %396 = icmp ne i32 %312, 255
  %397 = call float @dx.op.binary.f32(i32 36, float %395, float %395)  ; FMin(a,b)
  %398 = call float @dx.op.binary.f32(i32 36, float %395, float %397)  ; FMin(a,b)
  %399 = fcmp fast ogt float %398, 0.000000e+00
  %400 = and i1 %396, %399
  br i1 %400, label %401, label %1315, !dx.controlflow.hints !33

; <label>:401                                     ; preds = %362
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
  %417 = extractvalue %dx.types.ResRet.f32 %413, 3
  %418 = add nuw nsw i32 %402, 48
  %419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.f32 %419, 0
  %421 = extractvalue %dx.types.ResRet.f32 %419, 1
  %422 = extractvalue %dx.types.ResRet.f32 %419, 2
  %423 = extractvalue %dx.types.ResRet.f32 %419, 3
  %424 = add nuw nsw i32 %402, 64
  %425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.f32 %425, 0
  %427 = extractvalue %dx.types.ResRet.f32 %425, 1
  %428 = extractvalue %dx.types.ResRet.f32 %425, 2
  %429 = extractvalue %dx.types.ResRet.f32 %425, 3
  %430 = add nuw nsw i32 %402, 80
  %431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.f32 %431, 0
  %433 = extractvalue %dx.types.ResRet.f32 %431, 1
  %434 = extractvalue %dx.types.ResRet.f32 %431, 2
  %435 = extractvalue %dx.types.ResRet.f32 %431, 3
  %436 = add nuw nsw i32 %402, 96
  %437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.f32 %437, 0
  %439 = extractvalue %dx.types.ResRet.f32 %437, 1
  %440 = extractvalue %dx.types.ResRet.f32 %437, 2
  %441 = extractvalue %dx.types.ResRet.f32 %437, 3
  %442 = add nuw nsw i32 %402, 112
  %443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.f32 %443, 0
  %445 = extractvalue %dx.types.ResRet.f32 %443, 1
  %446 = extractvalue %dx.types.ResRet.f32 %443, 2
  %447 = extractvalue %dx.types.ResRet.f32 %443, 3
  %448 = add nuw nsw i32 %402, 128
  %449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.f32 %449, 0
  %451 = extractvalue %dx.types.ResRet.f32 %449, 1
  %452 = extractvalue %dx.types.ResRet.f32 %449, 2
  %453 = extractvalue %dx.types.ResRet.f32 %449, 3
  %454 = add nuw nsw i32 %402, 144
  %455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.f32 %455, 0
  %457 = extractvalue %dx.types.ResRet.f32 %455, 1
  %458 = extractvalue %dx.types.ResRet.f32 %455, 2
  %459 = extractvalue %dx.types.ResRet.f32 %455, 3
  %460 = add nuw nsw i32 %402, 160
  %461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.f32 %461, 0
  %463 = extractvalue %dx.types.ResRet.f32 %461, 1
  %464 = extractvalue %dx.types.ResRet.f32 %461, 2
  %465 = extractvalue %dx.types.ResRet.f32 %461, 3
  %466 = bitcast float %411 to i32
  %467 = bitcast float %417 to i32
  %468 = and i32 %467, 1
  %469 = icmp ne i32 %468, 0
  %470 = and i32 %467, 2
  %471 = fmul fast float %416, %140
  %472 = fmul fast float %416, %141
  %473 = fmul fast float %416, %142
  %474 = fadd fast float %471, %111
  %475 = fadd fast float %472, %112
  %476 = fadd fast float %473, %113
  %477 = fmul fast float %474, %420
  %478 = call float @dx.op.tertiary.f32(i32 46, float %475, float %426, float %477)  ; FMad(a,b,c)
  %479 = call float @dx.op.tertiary.f32(i32 46, float %476, float %432, float %478)  ; FMad(a,b,c)
  %480 = fadd fast float %479, %438
  %481 = fmul fast float %474, %421
  %482 = call float @dx.op.tertiary.f32(i32 46, float %475, float %427, float %481)  ; FMad(a,b,c)
  %483 = call float @dx.op.tertiary.f32(i32 46, float %476, float %433, float %482)  ; FMad(a,b,c)
  %484 = fadd fast float %483, %439
  %485 = fmul fast float %474, %422
  %486 = call float @dx.op.tertiary.f32(i32 46, float %475, float %428, float %485)  ; FMad(a,b,c)
  %487 = call float @dx.op.tertiary.f32(i32 46, float %476, float %434, float %486)  ; FMad(a,b,c)
  %488 = fadd fast float %487, %440
  %489 = fmul fast float %474, %423
  %490 = call float @dx.op.tertiary.f32(i32 46, float %475, float %429, float %489)  ; FMad(a,b,c)
  %491 = call float @dx.op.tertiary.f32(i32 46, float %476, float %435, float %490)  ; FMad(a,b,c)
  %492 = fadd fast float %491, %441
  %493 = fdiv fast float %480, %492
  %494 = fdiv fast float %484, %492
  %495 = fdiv fast float %488, %492
  %496 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %495)  ; FMax(a,b)
  %497 = fmul fast float %212, 0x401921FB60000000
  %498 = call float @dx.op.unary.f32(i32 13, float %497)  ; Sin(value)
  %499 = call float @dx.op.unary.f32(i32 12, float %497)  ; Cos(value)
  %500 = fsub fast float -0.000000e+00, %498
  %501 = icmp eq i32 %470, 0
  br i1 %501, label %502, label %573, !dx.controlflow.hints !34

; <label>:502                                     ; preds = %401
  %503 = fmul fast float %499, %415
  %504 = call float @dx.op.tertiary.f32(i32 46, float %498, float %415, float 0.000000e+00)  ; FMad(a,b,c)
  %505 = fmul fast float %415, %500
  %506 = call float @dx.op.tertiary.f32(i32 46, float %499, float %415, float 0.000000e+00)  ; FMad(a,b,c)
  br label %507

; <label>:507                                     ; preds = %507, %502
  %508 = phi float [ 0.000000e+00, %502 ], [ %540, %507 ]
  %509 = phi float [ 0.000000e+00, %502 ], [ %542, %507 ]
  %510 = phi i32 [ 0, %502 ], [ %543, %507 ]
  %511 = mul i32 %510, 2
  %512 = add i32 0, %511
  %513 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %512
  %514 = load float, float* %513, align 4
  %515 = mul i32 %510, 2
  %516 = add i32 1, %515
  %517 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %516
  %518 = load float, float* %517, align 4
  %519 = fmul fast float %503, %514
  %520 = call float @dx.op.tertiary.f32(i32 46, float %518, float %505, float %519)  ; FMad(a,b,c)
  %521 = fmul fast float %514, %504
  %522 = call float @dx.op.tertiary.f32(i32 46, float %518, float %506, float %521)  ; FMad(a,b,c)
  %523 = fadd fast float %520, %493
  %524 = fadd fast float %522, %494
  %525 = fmul fast float %523, %410
  %526 = fmul fast float %524, %410
  %527 = call float @dx.op.binary.f32(i32 35, float %525, float %406)  ; FMax(a,b)
  %528 = call float @dx.op.binary.f32(i32 35, float %526, float %406)  ; FMax(a,b)
  %529 = call float @dx.op.binary.f32(i32 36, float %527, float %407)  ; FMin(a,b)
  %530 = call float @dx.op.binary.f32(i32 36, float %528, float %407)  ; FMin(a,b)
  %531 = fadd fast float %529, %404
  %532 = fadd fast float %530, %405
  %533 = uitofp i32 %466 to float
  %534 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %14, float %531, float %532, float %533, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %535 = extractvalue %dx.types.ResRet.f32 %534, 0
  %536 = fsub fast float %535, %496
  %537 = fsub fast float %536, %414
  %538 = fcmp fast ogt float %537, 0.000000e+00
  %539 = select i1 %538, float 1.000000e+00, float 0.000000e+00
  %540 = fadd fast float %539, %508
  %541 = select i1 %538, float %537, float 0.000000e+00
  %542 = fadd fast float %541, %509
  %543 = add nuw nsw i32 %510, 1
  %544 = icmp eq i32 %543, 8
  br i1 %544, label %545, label %507

; <label>:545                                     ; preds = %507
  %546 = fdiv fast float 1.000000e+00, %540
  %547 = fmul fast float %546, %542
  %548 = fdiv fast float 1.000000e+00, %496
  %549 = fmul fast float %547, %548
  %550 = call float @dx.op.unary.f32(i32 7, float %549)  ; Saturate(value)
  %551 = call float @dx.op.binary.f32(i32 35, float %550, float 0.000000e+00)  ; FMax(a,b)
  %552 = fmul fast float %540, 1.250000e-01
  %553 = call float @dx.op.unary.f32(i32 7, float %552)  ; Saturate(value)
  %554 = fmul fast float %553, 2.000000e+00
  %555 = fadd fast float %554, -1.000000e+00
  %556 = fcmp fast ogt float %555, 0.000000e+00
  %557 = fcmp fast olt float %555, 0.000000e+00
  %558 = zext i1 %556 to i32
  %559 = zext i1 %557 to i32
  %560 = sub nsw i32 %558, %559
  %561 = sitofp i32 %560 to float
  %562 = fmul fast float %561, %555
  %563 = fsub fast float 1.000000e+00, %562
  %564 = fmul fast float %563, %563
  %565 = fmul fast float %564, %563
  %566 = fsub fast float %563, %565
  %567 = fmul fast float %566, %551
  %568 = fsub fast float 1.000000e+00, %565
  %569 = fsub fast float %568, %567
  %570 = fmul fast float %561, 5.000000e-01
  %571 = fmul fast float %570, %569
  %572 = fsub fast float 5.000000e-01, %571
  br label %1188

; <label>:573                                     ; preds = %401
  %574 = fsub fast float 1.000000e+00, %496
  %575 = fmul fast float %574, 5.000000e-01
  %576 = fadd fast float %575, %496
  %577 = fsub fast float %474, %295
  %578 = fsub fast float %475, %296
  %579 = fsub fast float %476, %297
  %580 = call float @dx.op.dot3.f32(i32 55, float %577, float %578, float %579, float %287, float %288, float %289)  ; Dot3(ax,ay,az,bx,by,bz)
  %581 = fdiv fast float %580, %315
  %582 = call float @dx.op.binary.f32(i32 35, float %581, float -1.000000e+00)  ; FMax(a,b)
  %583 = call float @dx.op.binary.f32(i32 36, float %582, float 1.000000e+00)  ; FMin(a,b)
  %584 = fmul fast float %583, %287
  %585 = fmul fast float %583, %288
  %586 = fmul fast float %583, %289
  %587 = fsub fast float %577, %584
  %588 = fsub fast float %578, %585
  %589 = fsub fast float %579, %586
  %590 = call float @dx.op.dot3.f32(i32 55, float %587, float %588, float %589, float %587, float %588, float %589)  ; Dot3(ax,ay,az,bx,by,bz)
  %591 = call float @dx.op.unary.f32(i32 25, float %590)  ; Rsqrt(value)
  %592 = fmul fast float %587, %591
  %593 = fmul fast float %588, %591
  %594 = fmul fast float %589, %591
  %595 = call float @dx.op.unary.f32(i32 25, float %315)  ; Rsqrt(value)
  %596 = fmul fast float %595, %287
  %597 = fmul fast float %595, %288
  %598 = fmul fast float %595, %289
  br i1 %469, label %599, label %603, !dx.controlflow.hints !35

; <label>:599                                     ; preds = %573
  %600 = fcmp fast olt float %593, 0x3FE6666660000000
  %601 = select i1 %600, float 1.000000e+00, float 0.000000e+00
  %602 = select i1 %600, float 0.000000e+00, float 1.000000e+00
  br label %603

; <label>:603                                     ; preds = %599, %573
  %604 = phi float [ 0.000000e+00, %599 ], [ %596, %573 ]
  %605 = phi float [ %601, %599 ], [ %597, %573 ]
  %606 = phi float [ %602, %599 ], [ %598, %573 ]
  %607 = fmul fast float %605, %594
  %608 = fmul fast float %606, %593
  %609 = fsub fast float %607, %608
  %610 = fmul fast float %606, %592
  %611 = fmul fast float %604, %594
  %612 = fsub fast float %610, %611
  %613 = fmul fast float %604, %593
  %614 = fmul fast float %605, %592
  %615 = fsub fast float %613, %614
  %616 = call float @dx.op.dot3.f32(i32 55, float %609, float %612, float %615, float %609, float %612, float %615)  ; Dot3(ax,ay,az,bx,by,bz)
  %617 = call float @dx.op.unary.f32(i32 25, float %616)  ; Rsqrt(value)
  %618 = fmul fast float %617, %292
  %619 = fmul fast float %618, %609
  %620 = fmul fast float %618, %612
  %621 = fmul fast float %615, %292
  %622 = fmul fast float %621, %617
  %623 = fmul fast float %493, %444
  %624 = call float @dx.op.tertiary.f32(i32 46, float %494, float %450, float %623)  ; FMad(a,b,c)
  %625 = call float @dx.op.tertiary.f32(i32 46, float %576, float %456, float %624)  ; FMad(a,b,c)
  %626 = fadd fast float %625, %462
  %627 = fmul fast float %493, %445
  %628 = call float @dx.op.tertiary.f32(i32 46, float %494, float %451, float %627)  ; FMad(a,b,c)
  %629 = call float @dx.op.tertiary.f32(i32 46, float %576, float %457, float %628)  ; FMad(a,b,c)
  %630 = fadd fast float %629, %463
  %631 = fmul fast float %493, %446
  %632 = call float @dx.op.tertiary.f32(i32 46, float %494, float %452, float %631)  ; FMad(a,b,c)
  %633 = call float @dx.op.tertiary.f32(i32 46, float %576, float %458, float %632)  ; FMad(a,b,c)
  %634 = fadd fast float %633, %464
  %635 = fmul fast float %493, %447
  %636 = call float @dx.op.tertiary.f32(i32 46, float %494, float %453, float %635)  ; FMad(a,b,c)
  %637 = call float @dx.op.tertiary.f32(i32 46, float %576, float %459, float %636)  ; FMad(a,b,c)
  %638 = fadd fast float %637, %465
  %639 = fdiv fast float 1.000000e+00, %638
  %640 = fmul fast float %639, %626
  %641 = fmul fast float %639, %630
  %642 = fmul fast float %639, %634
  %643 = fsub fast float -0.000000e+00, %592
  %644 = fsub fast float -0.000000e+00, %593
  %645 = fsub fast float -0.000000e+00, %594
  %646 = fsub fast float %295, %619
  %647 = fsub fast float %296, %620
  %648 = fsub fast float %297, %622
  %649 = fsub fast float %640, %646
  %650 = fsub fast float %641, %647
  %651 = fsub fast float %642, %648
  %652 = call float @dx.op.dot3.f32(i32 55, float %649, float %650, float %651, float %649, float %650, float %651)  ; Dot3(ax,ay,az,bx,by,bz)
  %653 = call float @dx.op.unary.f32(i32 25, float %652)  ; Rsqrt(value)
  %654 = fmul fast float %649, %653
  %655 = fmul fast float %650, %653
  %656 = fmul fast float %651, %653
  %657 = fsub fast float %474, %646
  %658 = fsub fast float %475, %647
  %659 = fsub fast float %476, %648
  %660 = call float @dx.op.dot3.f32(i32 55, float %643, float %644, float %645, float %657, float %658, float %659)  ; Dot3(ax,ay,az,bx,by,bz)
  %661 = call float @dx.op.dot3.f32(i32 55, float %643, float %644, float %645, float %654, float %655, float %656)  ; Dot3(ax,ay,az,bx,by,bz)
  %662 = fdiv fast float 1.000000e+00, %661
  %663 = fmul fast float %662, %660
  %664 = fmul fast float %663, %654
  %665 = fmul fast float %663, %655
  %666 = fmul fast float %663, %656
  %667 = fadd fast float %664, %646
  %668 = fadd fast float %665, %647
  %669 = fadd fast float %666, %648
  %670 = fadd fast float %619, %295
  %671 = fadd fast float %620, %296
  %672 = fadd fast float %622, %297
  %673 = fsub fast float %640, %670
  %674 = fsub fast float %641, %671
  %675 = fsub fast float %642, %672
  %676 = call float @dx.op.dot3.f32(i32 55, float %673, float %674, float %675, float %673, float %674, float %675)  ; Dot3(ax,ay,az,bx,by,bz)
  %677 = call float @dx.op.unary.f32(i32 25, float %676)  ; Rsqrt(value)
  %678 = fmul fast float %677, %673
  %679 = fmul fast float %677, %674
  %680 = fmul fast float %677, %675
  %681 = fsub fast float %474, %670
  %682 = fsub fast float %475, %671
  %683 = fsub fast float %476, %672
  %684 = call float @dx.op.dot3.f32(i32 55, float %643, float %644, float %645, float %681, float %682, float %683)  ; Dot3(ax,ay,az,bx,by,bz)
  %685 = call float @dx.op.dot3.f32(i32 55, float %643, float %644, float %645, float %678, float %679, float %680)  ; Dot3(ax,ay,az,bx,by,bz)
  %686 = fdiv fast float 1.000000e+00, %685
  %687 = fmul fast float %686, %684
  %688 = fmul fast float %687, %678
  %689 = fmul fast float %687, %679
  %690 = fmul fast float %687, %680
  %691 = fadd fast float %688, %670
  %692 = fadd fast float %689, %671
  %693 = fadd fast float %690, %672
  %694 = fmul fast float %667, %420
  %695 = call float @dx.op.tertiary.f32(i32 46, float %668, float %426, float %694)  ; FMad(a,b,c)
  %696 = call float @dx.op.tertiary.f32(i32 46, float %669, float %432, float %695)  ; FMad(a,b,c)
  %697 = fadd fast float %696, %438
  %698 = fmul fast float %667, %421
  %699 = call float @dx.op.tertiary.f32(i32 46, float %668, float %427, float %698)  ; FMad(a,b,c)
  %700 = call float @dx.op.tertiary.f32(i32 46, float %669, float %433, float %699)  ; FMad(a,b,c)
  %701 = fadd fast float %700, %439
  %702 = fmul fast float %667, %423
  %703 = call float @dx.op.tertiary.f32(i32 46, float %668, float %429, float %702)  ; FMad(a,b,c)
  %704 = call float @dx.op.tertiary.f32(i32 46, float %669, float %435, float %703)  ; FMad(a,b,c)
  %705 = fadd fast float %704, %441
  %706 = fmul fast float %691, %420
  %707 = call float @dx.op.tertiary.f32(i32 46, float %692, float %426, float %706)  ; FMad(a,b,c)
  %708 = call float @dx.op.tertiary.f32(i32 46, float %693, float %432, float %707)  ; FMad(a,b,c)
  %709 = fadd fast float %708, %438
  %710 = fmul fast float %691, %421
  %711 = call float @dx.op.tertiary.f32(i32 46, float %692, float %427, float %710)  ; FMad(a,b,c)
  %712 = call float @dx.op.tertiary.f32(i32 46, float %693, float %433, float %711)  ; FMad(a,b,c)
  %713 = fadd fast float %712, %439
  %714 = fmul fast float %691, %423
  %715 = call float @dx.op.tertiary.f32(i32 46, float %692, float %429, float %714)  ; FMad(a,b,c)
  %716 = call float @dx.op.tertiary.f32(i32 46, float %693, float %435, float %715)  ; FMad(a,b,c)
  %717 = fadd fast float %716, %441
  %718 = fdiv fast float 1.000000e+00, %705
  %719 = fmul fast float %718, %697
  %720 = fmul fast float %718, %701
  %721 = fdiv fast float 1.000000e+00, %717
  %722 = fmul fast float %721, %709
  %723 = fmul fast float %721, %713
  %724 = fsub fast float %722, %719
  %725 = fsub fast float %723, %720
  %726 = call float @dx.op.dot2.f32(i32 54, float %724, float %725, float %724, float %725)  ; Dot2(ax,ay,bx,by)
  %727 = call float @dx.op.unary.f32(i32 25, float %726)  ; Rsqrt(value)
  %728 = fmul fast float %724, %727
  %729 = fmul fast float %725, %727
  %730 = fmul fast float %724, %724
  %731 = fmul fast float %725, %725
  %732 = fadd fast float %730, %731
  %733 = call float @dx.op.unary.f32(i32 24, float %732)  ; Sqrt(value)
  %734 = fmul fast float %733, 5.000000e-01
  br i1 %469, label %827, label %735, !dx.controlflow.hints !36

; <label>:735                                     ; preds = %603
  %736 = fsub fast float %295, %287
  %737 = fsub fast float %296, %288
  %738 = fsub fast float %297, %289
  %739 = fsub fast float %640, %736
  %740 = fsub fast float %641, %737
  %741 = fsub fast float %642, %738
  %742 = call float @dx.op.dot3.f32(i32 55, float %739, float %740, float %741, float %739, float %740, float %741)  ; Dot3(ax,ay,az,bx,by,bz)
  %743 = call float @dx.op.unary.f32(i32 25, float %742)  ; Rsqrt(value)
  %744 = fmul fast float %743, %739
  %745 = fmul fast float %743, %740
  %746 = fmul fast float %743, %741
  %747 = fsub fast float %474, %736
  %748 = fsub fast float %475, %737
  %749 = fsub fast float %476, %738
  %750 = call float @dx.op.dot3.f32(i32 55, float %643, float %644, float %645, float %747, float %748, float %749)  ; Dot3(ax,ay,az,bx,by,bz)
  %751 = call float @dx.op.dot3.f32(i32 55, float %643, float %644, float %645, float %744, float %745, float %746)  ; Dot3(ax,ay,az,bx,by,bz)
  %752 = fdiv fast float 1.000000e+00, %751
  %753 = fmul fast float %752, %750
  %754 = fmul fast float %753, %744
  %755 = fmul fast float %753, %745
  %756 = fmul fast float %753, %746
  %757 = fadd fast float %754, %736
  %758 = fadd fast float %755, %737
  %759 = fadd fast float %756, %738
  %760 = fadd fast float %295, %287
  %761 = fadd fast float %296, %288
  %762 = fadd fast float %297, %289
  %763 = fsub fast float %640, %760
  %764 = fsub fast float %641, %761
  %765 = fsub fast float %642, %762
  %766 = call float @dx.op.dot3.f32(i32 55, float %763, float %764, float %765, float %763, float %764, float %765)  ; Dot3(ax,ay,az,bx,by,bz)
  %767 = call float @dx.op.unary.f32(i32 25, float %766)  ; Rsqrt(value)
  %768 = fmul fast float %767, %763
  %769 = fmul fast float %767, %764
  %770 = fmul fast float %767, %765
  %771 = fsub fast float %474, %760
  %772 = fsub fast float %475, %761
  %773 = fsub fast float %476, %762
  %774 = call float @dx.op.dot3.f32(i32 55, float %643, float %644, float %645, float %771, float %772, float %773)  ; Dot3(ax,ay,az,bx,by,bz)
  %775 = call float @dx.op.dot3.f32(i32 55, float %643, float %644, float %645, float %768, float %769, float %770)  ; Dot3(ax,ay,az,bx,by,bz)
  %776 = fdiv fast float 1.000000e+00, %775
  %777 = fmul fast float %776, %774
  %778 = fmul fast float %777, %768
  %779 = fmul fast float %777, %769
  %780 = fmul fast float %777, %770
  %781 = fadd fast float %778, %760
  %782 = fadd fast float %779, %761
  %783 = fadd fast float %780, %762
  %784 = fmul fast float %757, %420
  %785 = call float @dx.op.tertiary.f32(i32 46, float %758, float %426, float %784)  ; FMad(a,b,c)
  %786 = call float @dx.op.tertiary.f32(i32 46, float %759, float %432, float %785)  ; FMad(a,b,c)
  %787 = fadd fast float %786, %438
  %788 = fmul fast float %757, %421
  %789 = call float @dx.op.tertiary.f32(i32 46, float %758, float %427, float %788)  ; FMad(a,b,c)
  %790 = call float @dx.op.tertiary.f32(i32 46, float %759, float %433, float %789)  ; FMad(a,b,c)
  %791 = fadd fast float %790, %439
  %792 = fmul fast float %757, %423
  %793 = call float @dx.op.tertiary.f32(i32 46, float %758, float %429, float %792)  ; FMad(a,b,c)
  %794 = call float @dx.op.tertiary.f32(i32 46, float %759, float %435, float %793)  ; FMad(a,b,c)
  %795 = fadd fast float %794, %441
  %796 = fmul fast float %781, %420
  %797 = call float @dx.op.tertiary.f32(i32 46, float %782, float %426, float %796)  ; FMad(a,b,c)
  %798 = call float @dx.op.tertiary.f32(i32 46, float %783, float %432, float %797)  ; FMad(a,b,c)
  %799 = fadd fast float %798, %438
  %800 = fmul fast float %781, %421
  %801 = call float @dx.op.tertiary.f32(i32 46, float %782, float %427, float %800)  ; FMad(a,b,c)
  %802 = call float @dx.op.tertiary.f32(i32 46, float %783, float %433, float %801)  ; FMad(a,b,c)
  %803 = fadd fast float %802, %439
  %804 = fmul fast float %781, %423
  %805 = call float @dx.op.tertiary.f32(i32 46, float %782, float %429, float %804)  ; FMad(a,b,c)
  %806 = call float @dx.op.tertiary.f32(i32 46, float %783, float %435, float %805)  ; FMad(a,b,c)
  %807 = fadd fast float %806, %441
  %808 = fdiv fast float 1.000000e+00, %795
  %809 = fmul fast float %808, %787
  %810 = fmul fast float %808, %791
  %811 = fdiv fast float 1.000000e+00, %807
  %812 = fmul fast float %811, %799
  %813 = fmul fast float %811, %803
  %814 = fsub fast float %812, %809
  %815 = fsub fast float %813, %810
  %816 = call float @dx.op.dot2.f32(i32 54, float %814, float %815, float %814, float %815)  ; Dot2(ax,ay,bx,by)
  %817 = call float @dx.op.unary.f32(i32 25, float %816)  ; Rsqrt(value)
  %818 = fmul fast float %814, %817
  %819 = fmul fast float %815, %817
  %820 = fmul fast float %814, %814
  %821 = fmul fast float %815, %815
  %822 = fadd fast float %820, %821
  %823 = call float @dx.op.unary.f32(i32 24, float %822)  ; Sqrt(value)
  %824 = fmul fast float %823, 5.000000e-01
  %825 = fcmp fast olt float %824, %734
  br i1 %825, label %826, label %827, !dx.controlflow.hints !37

; <label>:826                                     ; preds = %735
  br label %827

; <label>:827                                     ; preds = %826, %735, %603
  %828 = phi float [ %734, %603 ], [ %824, %826 ], [ %734, %735 ]
  %829 = phi float [ %734, %603 ], [ %734, %826 ], [ %824, %735 ]
  %830 = phi float [ %728, %603 ], [ %728, %826 ], [ %818, %735 ]
  %831 = phi float [ %729, %603 ], [ %729, %826 ], [ %819, %735 ]
  %832 = fmul fast float %828, %415
  %833 = fdiv fast float %832, %829
  %834 = fsub fast float %415, %833
  %835 = fmul fast float %830, %830
  %836 = fmul fast float %835, %834
  %837 = fadd fast float %836, %833
  %838 = fmul fast float %831, %830
  %839 = fmul fast float %838, %834
  %840 = fmul fast float %831, %831
  %841 = fmul fast float %840, %834
  %842 = fadd fast float %841, %833
  %843 = fmul fast float %837, %499
  %844 = call float @dx.op.tertiary.f32(i32 46, float %498, float %839, float %843)  ; FMad(a,b,c)
  %845 = fmul fast float %839, %499
  %846 = call float @dx.op.tertiary.f32(i32 46, float %498, float %842, float %845)  ; FMad(a,b,c)
  %847 = fmul fast float %837, %500
  %848 = call float @dx.op.tertiary.f32(i32 46, float %499, float %839, float %847)  ; FMad(a,b,c)
  %849 = fmul fast float %839, %500
  %850 = call float @dx.op.tertiary.f32(i32 46, float %499, float %842, float %849)  ; FMad(a,b,c)
  br label %851

; <label>:851                                     ; preds = %889, %827
  %852 = phi float [ 0.000000e+00, %827 ], [ %890, %889 ]
  %853 = phi float [ 0.000000e+00, %827 ], [ %891, %889 ]
  %854 = phi float [ 0.000000e+00, %827 ], [ %892, %889 ]
  %855 = phi float [ 0.000000e+00, %827 ], [ %893, %889 ]
  %856 = phi i32 [ 0, %827 ], [ %894, %889 ]
  %857 = mul i32 %856, 2
  %858 = add i32 0, %857
  %859 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %858
  %860 = load float, float* %859, align 4
  %861 = mul i32 %856, 2
  %862 = add i32 1, %861
  %863 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %862
  %864 = load float, float* %863, align 4
  %865 = fmul fast float %860, %844
  %866 = call float @dx.op.tertiary.f32(i32 46, float %864, float %848, float %865)  ; FMad(a,b,c)
  %867 = fmul fast float %860, %846
  %868 = call float @dx.op.tertiary.f32(i32 46, float %864, float %850, float %867)  ; FMad(a,b,c)
  %869 = fadd fast float %866, %493
  %870 = fadd fast float %868, %494
  %871 = fmul fast float %869, %410
  %872 = fmul fast float %870, %410
  %873 = call float @dx.op.binary.f32(i32 35, float %871, float %406)  ; FMax(a,b)
  %874 = call float @dx.op.binary.f32(i32 35, float %872, float %406)  ; FMax(a,b)
  %875 = call float @dx.op.binary.f32(i32 36, float %873, float %407)  ; FMin(a,b)
  %876 = call float @dx.op.binary.f32(i32 36, float %874, float %407)  ; FMin(a,b)
  %877 = fadd fast float %875, %404
  %878 = fadd fast float %876, %405
  %879 = uitofp i32 %466 to float
  %880 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %14, float %877, float %878, float %879, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %881 = extractvalue %dx.types.ResRet.f32 %880, 0
  %882 = fadd fast float %496, %414
  %883 = fcmp fast olt float %882, %881
  br i1 %883, label %884, label %889, !dx.controlflow.hints !38

; <label>:884                                     ; preds = %851
  %885 = fadd fast float %881, %854
  %886 = fadd fast float %866, %852
  %887 = fadd fast float %868, %853
  %888 = fadd fast float %855, 1.000000e+00
  br label %889

; <label>:889                                     ; preds = %884, %851
  %890 = phi float [ %886, %884 ], [ %852, %851 ]
  %891 = phi float [ %887, %884 ], [ %853, %851 ]
  %892 = phi float [ %885, %884 ], [ %854, %851 ]
  %893 = phi float [ %888, %884 ], [ %855, %851 ]
  %894 = add nuw nsw i32 %856, 1
  %895 = icmp eq i32 %894, 8
  br i1 %895, label %896, label %851

; <label>:896                                     ; preds = %889
  %897 = fdiv fast float 1.000000e+00, %893
  %898 = fcmp fast oeq float %893, 0.000000e+00
  %899 = fmul fast float %897, %892
  %900 = select i1 %898, float -1.000000e+00, float %899
  %901 = fcmp fast olt float %900, 0.000000e+00
  br i1 %901, label %1188, label %902, !dx.controlflow.hints !39

; <label>:902                                     ; preds = %896
  %903 = fmul fast float %897, %891
  %904 = select i1 %898, float 0.000000e+00, float %903
  %905 = fmul fast float %897, %890
  %906 = select i1 %898, float 0.000000e+00, float %905
  %907 = fadd fast float %906, %493
  %908 = fadd fast float %904, %494
  br i1 %469, label %909, label %913, !dx.controlflow.hints !35

; <label>:909                                     ; preds = %902
  %910 = fcmp fast olt float %593, 0x3FE6666660000000
  %911 = select i1 %910, float 1.000000e+00, float 0.000000e+00
  %912 = select i1 %910, float 0.000000e+00, float 1.000000e+00
  br label %913

; <label>:913                                     ; preds = %909, %902
  %914 = phi float [ 0.000000e+00, %909 ], [ %596, %902 ]
  %915 = phi float [ %911, %909 ], [ %597, %902 ]
  %916 = phi float [ %912, %909 ], [ %598, %902 ]
  %917 = fmul fast float %915, %594
  %918 = fmul fast float %916, %593
  %919 = fsub fast float %917, %918
  %920 = fmul fast float %916, %592
  %921 = fmul fast float %914, %594
  %922 = fsub fast float %920, %921
  %923 = fmul fast float %914, %593
  %924 = fmul fast float %915, %592
  %925 = fsub fast float %923, %924
  %926 = call float @dx.op.dot3.f32(i32 55, float %919, float %922, float %925, float %919, float %922, float %925)  ; Dot3(ax,ay,az,bx,by,bz)
  %927 = call float @dx.op.unary.f32(i32 25, float %926)  ; Rsqrt(value)
  %928 = fmul fast float %927, %292
  %929 = fmul fast float %928, %919
  %930 = fmul fast float %928, %922
  %931 = fmul fast float %925, %292
  %932 = fmul fast float %931, %927
  %933 = fmul fast float %907, %444
  %934 = call float @dx.op.tertiary.f32(i32 46, float %908, float %450, float %933)  ; FMad(a,b,c)
  %935 = call float @dx.op.tertiary.f32(i32 46, float %900, float %456, float %934)  ; FMad(a,b,c)
  %936 = fadd fast float %935, %462
  %937 = fmul fast float %907, %445
  %938 = call float @dx.op.tertiary.f32(i32 46, float %908, float %451, float %937)  ; FMad(a,b,c)
  %939 = call float @dx.op.tertiary.f32(i32 46, float %900, float %457, float %938)  ; FMad(a,b,c)
  %940 = fadd fast float %939, %463
  %941 = fmul fast float %907, %446
  %942 = call float @dx.op.tertiary.f32(i32 46, float %908, float %452, float %941)  ; FMad(a,b,c)
  %943 = call float @dx.op.tertiary.f32(i32 46, float %900, float %458, float %942)  ; FMad(a,b,c)
  %944 = fadd fast float %943, %464
  %945 = fmul fast float %907, %447
  %946 = call float @dx.op.tertiary.f32(i32 46, float %908, float %453, float %945)  ; FMad(a,b,c)
  %947 = call float @dx.op.tertiary.f32(i32 46, float %900, float %459, float %946)  ; FMad(a,b,c)
  %948 = fadd fast float %947, %465
  %949 = fdiv fast float 1.000000e+00, %948
  %950 = fmul fast float %949, %936
  %951 = fmul fast float %949, %940
  %952 = fmul fast float %949, %944
  %953 = fsub fast float %295, %929
  %954 = fsub fast float %296, %930
  %955 = fsub fast float %297, %932
  %956 = fsub fast float %950, %953
  %957 = fsub fast float %951, %954
  %958 = fsub fast float %952, %955
  %959 = call float @dx.op.dot3.f32(i32 55, float %956, float %957, float %958, float %956, float %957, float %958)  ; Dot3(ax,ay,az,bx,by,bz)
  %960 = call float @dx.op.unary.f32(i32 25, float %959)  ; Rsqrt(value)
  %961 = fmul fast float %956, %960
  %962 = fmul fast float %957, %960
  %963 = fmul fast float %958, %960
  %964 = fsub fast float %474, %953
  %965 = fsub fast float %475, %954
  %966 = fsub fast float %476, %955
  %967 = call float @dx.op.dot3.f32(i32 55, float %643, float %644, float %645, float %964, float %965, float %966)  ; Dot3(ax,ay,az,bx,by,bz)
  %968 = call float @dx.op.dot3.f32(i32 55, float %643, float %644, float %645, float %961, float %962, float %963)  ; Dot3(ax,ay,az,bx,by,bz)
  %969 = fdiv fast float 1.000000e+00, %968
  %970 = fmul fast float %969, %967
  %971 = fmul fast float %970, %961
  %972 = fmul fast float %970, %962
  %973 = fmul fast float %970, %963
  %974 = fadd fast float %971, %953
  %975 = fadd fast float %972, %954
  %976 = fadd fast float %973, %955
  %977 = fadd fast float %929, %295
  %978 = fadd fast float %930, %296
  %979 = fadd fast float %932, %297
  %980 = fsub fast float %950, %977
  %981 = fsub fast float %951, %978
  %982 = fsub fast float %952, %979
  %983 = call float @dx.op.dot3.f32(i32 55, float %980, float %981, float %982, float %980, float %981, float %982)  ; Dot3(ax,ay,az,bx,by,bz)
  %984 = call float @dx.op.unary.f32(i32 25, float %983)  ; Rsqrt(value)
  %985 = fmul fast float %984, %980
  %986 = fmul fast float %984, %981
  %987 = fmul fast float %984, %982
  %988 = fsub fast float %474, %977
  %989 = fsub fast float %475, %978
  %990 = fsub fast float %476, %979
  %991 = call float @dx.op.dot3.f32(i32 55, float %643, float %644, float %645, float %988, float %989, float %990)  ; Dot3(ax,ay,az,bx,by,bz)
  %992 = call float @dx.op.dot3.f32(i32 55, float %643, float %644, float %645, float %985, float %986, float %987)  ; Dot3(ax,ay,az,bx,by,bz)
  %993 = fdiv fast float 1.000000e+00, %992
  %994 = fmul fast float %993, %991
  %995 = fmul fast float %994, %985
  %996 = fmul fast float %994, %986
  %997 = fmul fast float %994, %987
  %998 = fadd fast float %995, %977
  %999 = fadd fast float %996, %978
  %1000 = fadd fast float %997, %979
  %1001 = fmul fast float %974, %420
  %1002 = call float @dx.op.tertiary.f32(i32 46, float %975, float %426, float %1001)  ; FMad(a,b,c)
  %1003 = call float @dx.op.tertiary.f32(i32 46, float %976, float %432, float %1002)  ; FMad(a,b,c)
  %1004 = fadd fast float %1003, %438
  %1005 = fmul fast float %974, %421
  %1006 = call float @dx.op.tertiary.f32(i32 46, float %975, float %427, float %1005)  ; FMad(a,b,c)
  %1007 = call float @dx.op.tertiary.f32(i32 46, float %976, float %433, float %1006)  ; FMad(a,b,c)
  %1008 = fadd fast float %1007, %439
  %1009 = fmul fast float %974, %423
  %1010 = call float @dx.op.tertiary.f32(i32 46, float %975, float %429, float %1009)  ; FMad(a,b,c)
  %1011 = call float @dx.op.tertiary.f32(i32 46, float %976, float %435, float %1010)  ; FMad(a,b,c)
  %1012 = fadd fast float %1011, %441
  %1013 = fmul fast float %998, %420
  %1014 = call float @dx.op.tertiary.f32(i32 46, float %999, float %426, float %1013)  ; FMad(a,b,c)
  %1015 = call float @dx.op.tertiary.f32(i32 46, float %1000, float %432, float %1014)  ; FMad(a,b,c)
  %1016 = fadd fast float %1015, %438
  %1017 = fmul fast float %998, %421
  %1018 = call float @dx.op.tertiary.f32(i32 46, float %999, float %427, float %1017)  ; FMad(a,b,c)
  %1019 = call float @dx.op.tertiary.f32(i32 46, float %1000, float %433, float %1018)  ; FMad(a,b,c)
  %1020 = fadd fast float %1019, %439
  %1021 = fmul fast float %998, %423
  %1022 = call float @dx.op.tertiary.f32(i32 46, float %999, float %429, float %1021)  ; FMad(a,b,c)
  %1023 = call float @dx.op.tertiary.f32(i32 46, float %1000, float %435, float %1022)  ; FMad(a,b,c)
  %1024 = fadd fast float %1023, %441
  %1025 = fdiv fast float 1.000000e+00, %1012
  %1026 = fmul fast float %1025, %1004
  %1027 = fmul fast float %1025, %1008
  %1028 = fdiv fast float 1.000000e+00, %1024
  %1029 = fmul fast float %1028, %1016
  %1030 = fmul fast float %1028, %1020
  %1031 = fsub fast float %1029, %1026
  %1032 = fsub fast float %1030, %1027
  %1033 = call float @dx.op.dot2.f32(i32 54, float %1031, float %1032, float %1031, float %1032)  ; Dot2(ax,ay,bx,by)
  %1034 = call float @dx.op.unary.f32(i32 25, float %1033)  ; Rsqrt(value)
  %1035 = fmul fast float %1031, %1034
  %1036 = fmul fast float %1032, %1034
  %1037 = fmul fast float %1031, %1031
  %1038 = fmul fast float %1032, %1032
  %1039 = fadd fast float %1037, %1038
  %1040 = call float @dx.op.unary.f32(i32 24, float %1039)  ; Sqrt(value)
  %1041 = fmul fast float %1040, 5.000000e-01
  br i1 %469, label %1134, label %1042, !dx.controlflow.hints !36

; <label>:1042                                    ; preds = %913
  %1043 = fsub fast float %295, %287
  %1044 = fsub fast float %296, %288
  %1045 = fsub fast float %297, %289
  %1046 = fsub fast float %950, %1043
  %1047 = fsub fast float %951, %1044
  %1048 = fsub fast float %952, %1045
  %1049 = call float @dx.op.dot3.f32(i32 55, float %1046, float %1047, float %1048, float %1046, float %1047, float %1048)  ; Dot3(ax,ay,az,bx,by,bz)
  %1050 = call float @dx.op.unary.f32(i32 25, float %1049)  ; Rsqrt(value)
  %1051 = fmul fast float %1050, %1046
  %1052 = fmul fast float %1050, %1047
  %1053 = fmul fast float %1050, %1048
  %1054 = fsub fast float %474, %1043
  %1055 = fsub fast float %475, %1044
  %1056 = fsub fast float %476, %1045
  %1057 = call float @dx.op.dot3.f32(i32 55, float %643, float %644, float %645, float %1054, float %1055, float %1056)  ; Dot3(ax,ay,az,bx,by,bz)
  %1058 = call float @dx.op.dot3.f32(i32 55, float %643, float %644, float %645, float %1051, float %1052, float %1053)  ; Dot3(ax,ay,az,bx,by,bz)
  %1059 = fdiv fast float 1.000000e+00, %1058
  %1060 = fmul fast float %1059, %1057
  %1061 = fmul fast float %1060, %1051
  %1062 = fmul fast float %1060, %1052
  %1063 = fmul fast float %1060, %1053
  %1064 = fadd fast float %1061, %1043
  %1065 = fadd fast float %1062, %1044
  %1066 = fadd fast float %1063, %1045
  %1067 = fadd fast float %295, %287
  %1068 = fadd fast float %296, %288
  %1069 = fadd fast float %297, %289
  %1070 = fsub fast float %950, %1067
  %1071 = fsub fast float %951, %1068
  %1072 = fsub fast float %952, %1069
  %1073 = call float @dx.op.dot3.f32(i32 55, float %1070, float %1071, float %1072, float %1070, float %1071, float %1072)  ; Dot3(ax,ay,az,bx,by,bz)
  %1074 = call float @dx.op.unary.f32(i32 25, float %1073)  ; Rsqrt(value)
  %1075 = fmul fast float %1074, %1070
  %1076 = fmul fast float %1074, %1071
  %1077 = fmul fast float %1074, %1072
  %1078 = fsub fast float %474, %1067
  %1079 = fsub fast float %475, %1068
  %1080 = fsub fast float %476, %1069
  %1081 = call float @dx.op.dot3.f32(i32 55, float %643, float %644, float %645, float %1078, float %1079, float %1080)  ; Dot3(ax,ay,az,bx,by,bz)
  %1082 = call float @dx.op.dot3.f32(i32 55, float %643, float %644, float %645, float %1075, float %1076, float %1077)  ; Dot3(ax,ay,az,bx,by,bz)
  %1083 = fdiv fast float 1.000000e+00, %1082
  %1084 = fmul fast float %1083, %1081
  %1085 = fmul fast float %1084, %1075
  %1086 = fmul fast float %1084, %1076
  %1087 = fmul fast float %1084, %1077
  %1088 = fadd fast float %1085, %1067
  %1089 = fadd fast float %1086, %1068
  %1090 = fadd fast float %1087, %1069
  %1091 = fmul fast float %1064, %420
  %1092 = call float @dx.op.tertiary.f32(i32 46, float %1065, float %426, float %1091)  ; FMad(a,b,c)
  %1093 = call float @dx.op.tertiary.f32(i32 46, float %1066, float %432, float %1092)  ; FMad(a,b,c)
  %1094 = fadd fast float %1093, %438
  %1095 = fmul fast float %1064, %421
  %1096 = call float @dx.op.tertiary.f32(i32 46, float %1065, float %427, float %1095)  ; FMad(a,b,c)
  %1097 = call float @dx.op.tertiary.f32(i32 46, float %1066, float %433, float %1096)  ; FMad(a,b,c)
  %1098 = fadd fast float %1097, %439
  %1099 = fmul fast float %1064, %423
  %1100 = call float @dx.op.tertiary.f32(i32 46, float %1065, float %429, float %1099)  ; FMad(a,b,c)
  %1101 = call float @dx.op.tertiary.f32(i32 46, float %1066, float %435, float %1100)  ; FMad(a,b,c)
  %1102 = fadd fast float %1101, %441
  %1103 = fmul fast float %1088, %420
  %1104 = call float @dx.op.tertiary.f32(i32 46, float %1089, float %426, float %1103)  ; FMad(a,b,c)
  %1105 = call float @dx.op.tertiary.f32(i32 46, float %1090, float %432, float %1104)  ; FMad(a,b,c)
  %1106 = fadd fast float %1105, %438
  %1107 = fmul fast float %1088, %421
  %1108 = call float @dx.op.tertiary.f32(i32 46, float %1089, float %427, float %1107)  ; FMad(a,b,c)
  %1109 = call float @dx.op.tertiary.f32(i32 46, float %1090, float %433, float %1108)  ; FMad(a,b,c)
  %1110 = fadd fast float %1109, %439
  %1111 = fmul fast float %1088, %423
  %1112 = call float @dx.op.tertiary.f32(i32 46, float %1089, float %429, float %1111)  ; FMad(a,b,c)
  %1113 = call float @dx.op.tertiary.f32(i32 46, float %1090, float %435, float %1112)  ; FMad(a,b,c)
  %1114 = fadd fast float %1113, %441
  %1115 = fdiv fast float 1.000000e+00, %1102
  %1116 = fmul fast float %1115, %1094
  %1117 = fmul fast float %1115, %1098
  %1118 = fdiv fast float 1.000000e+00, %1114
  %1119 = fmul fast float %1118, %1106
  %1120 = fmul fast float %1118, %1110
  %1121 = fsub fast float %1119, %1116
  %1122 = fsub fast float %1120, %1117
  %1123 = call float @dx.op.dot2.f32(i32 54, float %1121, float %1122, float %1121, float %1122)  ; Dot2(ax,ay,bx,by)
  %1124 = call float @dx.op.unary.f32(i32 25, float %1123)  ; Rsqrt(value)
  %1125 = fmul fast float %1121, %1124
  %1126 = fmul fast float %1122, %1124
  %1127 = fmul fast float %1121, %1121
  %1128 = fmul fast float %1122, %1122
  %1129 = fadd fast float %1127, %1128
  %1130 = call float @dx.op.unary.f32(i32 24, float %1129)  ; Sqrt(value)
  %1131 = fmul fast float %1130, 5.000000e-01
  %1132 = fcmp fast olt float %1131, %1041
  br i1 %1132, label %1133, label %1134, !dx.controlflow.hints !37

; <label>:1133                                    ; preds = %1042
  br label %1134

; <label>:1134                                    ; preds = %1133, %1042, %913
  %1135 = phi float [ %1041, %913 ], [ %1131, %1133 ], [ %1041, %1042 ]
  %1136 = phi float [ %1041, %913 ], [ %1041, %1133 ], [ %1131, %1042 ]
  %1137 = phi float [ %1035, %913 ], [ %1035, %1133 ], [ %1125, %1042 ]
  %1138 = phi float [ %1036, %913 ], [ %1036, %1133 ], [ %1126, %1042 ]
  %1139 = fsub fast float %1136, %1135
  %1140 = fmul fast float %1137, %1137
  %1141 = fmul fast float %1140, %1139
  %1142 = fadd fast float %1141, %1135
  %1143 = fmul fast float %1137, %1139
  %1144 = fmul fast float %1143, %1138
  %1145 = fmul fast float %1138, %1138
  %1146 = fmul fast float %1145, %1139
  %1147 = fadd fast float %1146, %1135
  %1148 = fmul fast float %1142, %499
  %1149 = call float @dx.op.tertiary.f32(i32 46, float %498, float %1144, float %1148)  ; FMad(a,b,c)
  %1150 = fmul fast float %1144, %499
  %1151 = call float @dx.op.tertiary.f32(i32 46, float %498, float %1147, float %1150)  ; FMad(a,b,c)
  %1152 = fmul fast float %1142, %500
  %1153 = call float @dx.op.tertiary.f32(i32 46, float %499, float %1144, float %1152)  ; FMad(a,b,c)
  %1154 = fmul fast float %1144, %500
  %1155 = call float @dx.op.tertiary.f32(i32 46, float %499, float %1147, float %1154)  ; FMad(a,b,c)
  br label %1156

; <label>:1156                                    ; preds = %1156, %1134
  %1157 = phi float [ 0.000000e+00, %1134 ], [ %1183, %1156 ]
  %1158 = phi i32 [ 0, %1134 ], [ %1184, %1156 ]
  %1159 = mul i32 %1158, 2
  %1160 = add i32 0, %1159
  %1161 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1160
  %1162 = load float, float* %1161, align 4
  %1163 = mul i32 %1158, 2
  %1164 = add i32 1, %1163
  %1165 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1164
  %1166 = load float, float* %1165, align 4
  %1167 = fmul fast float %1162, %1149
  %1168 = call float @dx.op.tertiary.f32(i32 46, float %1166, float %1153, float %1167)  ; FMad(a,b,c)
  %1169 = fmul fast float %1162, %1151
  %1170 = call float @dx.op.tertiary.f32(i32 46, float %1166, float %1155, float %1169)  ; FMad(a,b,c)
  %1171 = fadd fast float %1168, %493
  %1172 = fadd fast float %1170, %494
  %1173 = fmul fast float %1171, %410
  %1174 = fmul fast float %1172, %410
  %1175 = call float @dx.op.binary.f32(i32 35, float %1173, float %406)  ; FMax(a,b)
  %1176 = call float @dx.op.binary.f32(i32 35, float %1174, float %406)  ; FMax(a,b)
  %1177 = call float @dx.op.binary.f32(i32 36, float %1175, float %407)  ; FMin(a,b)
  %1178 = call float @dx.op.binary.f32(i32 36, float %1176, float %407)  ; FMin(a,b)
  %1179 = fadd fast float %1177, %404
  %1180 = fadd fast float %1178, %405
  %1181 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %15, float %1179, float %1180, float %879, float undef, i32 0, i32 0, i32 undef, float %882)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1182 = extractvalue %dx.types.ResRet.f32 %1181, 0
  %1183 = fadd fast float %1182, %1157
  %1184 = add nuw nsw i32 %1158, 1
  %1185 = icmp eq i32 %1184, 8
  br i1 %1185, label %1186, label %1156

; <label>:1186                                    ; preds = %1156
  %1187 = fmul fast float %1183, 1.250000e-01
  br label %1188

; <label>:1188                                    ; preds = %1186, %896, %545
  %1189 = phi float [ %572, %545 ], [ %1187, %1186 ], [ 1.000000e+00, %896 ]
  %1190 = fcmp fast ogt float %1189, 0.000000e+00
  %1191 = xor i1 %49, true
  %1192 = and i1 %1190, %1191
  %1193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1194 = extractvalue %dx.types.CBufRet.f32 %1193, 1
  %1195 = fcmp fast olt float %1194, 0.000000e+00
  %1196 = and i1 %1192, %1195
  br i1 %1196, label %1197, label %1308, !dx.controlflow.hints !40

; <label>:1197                                    ; preds = %1188
  %1198 = fadd fast float %493, %406
  %1199 = fadd fast float %494, %406
  %1200 = fadd fast float %496, %414
  %1201 = fmul fast float %493, %444
  %1202 = call float @dx.op.tertiary.f32(i32 46, float %494, float %450, float %1201)  ; FMad(a,b,c)
  %1203 = call float @dx.op.tertiary.f32(i32 46, float %496, float %456, float %1202)  ; FMad(a,b,c)
  %1204 = fadd fast float %1203, %462
  %1205 = fmul fast float %493, %445
  %1206 = call float @dx.op.tertiary.f32(i32 46, float %494, float %451, float %1205)  ; FMad(a,b,c)
  %1207 = call float @dx.op.tertiary.f32(i32 46, float %496, float %457, float %1206)  ; FMad(a,b,c)
  %1208 = fadd fast float %1207, %463
  %1209 = fmul fast float %493, %446
  %1210 = call float @dx.op.tertiary.f32(i32 46, float %494, float %452, float %1209)  ; FMad(a,b,c)
  %1211 = call float @dx.op.tertiary.f32(i32 46, float %496, float %458, float %1210)  ; FMad(a,b,c)
  %1212 = fadd fast float %1211, %464
  %1213 = fmul fast float %493, %447
  %1214 = call float @dx.op.tertiary.f32(i32 46, float %494, float %453, float %1213)  ; FMad(a,b,c)
  %1215 = call float @dx.op.tertiary.f32(i32 46, float %496, float %459, float %1214)  ; FMad(a,b,c)
  %1216 = fadd fast float %1215, %465
  %1217 = fmul fast float %1198, %444
  %1218 = call float @dx.op.tertiary.f32(i32 46, float %1199, float %450, float %1217)  ; FMad(a,b,c)
  %1219 = call float @dx.op.tertiary.f32(i32 46, float %1200, float %456, float %1218)  ; FMad(a,b,c)
  %1220 = fadd fast float %1219, %462
  %1221 = fmul fast float %1198, %445
  %1222 = call float @dx.op.tertiary.f32(i32 46, float %1199, float %451, float %1221)  ; FMad(a,b,c)
  %1223 = call float @dx.op.tertiary.f32(i32 46, float %1200, float %457, float %1222)  ; FMad(a,b,c)
  %1224 = fadd fast float %1223, %463
  %1225 = fmul fast float %1198, %446
  %1226 = call float @dx.op.tertiary.f32(i32 46, float %1199, float %452, float %1225)  ; FMad(a,b,c)
  %1227 = call float @dx.op.tertiary.f32(i32 46, float %1200, float %458, float %1226)  ; FMad(a,b,c)
  %1228 = fadd fast float %1227, %464
  %1229 = fmul fast float %1198, %447
  %1230 = call float @dx.op.tertiary.f32(i32 46, float %1199, float %453, float %1229)  ; FMad(a,b,c)
  %1231 = call float @dx.op.tertiary.f32(i32 46, float %1200, float %459, float %1230)  ; FMad(a,b,c)
  %1232 = fadd fast float %1231, %465
  %1233 = fdiv fast float 1.000000e+00, %1216
  %1234 = fmul fast float %1233, %1204
  %1235 = fmul fast float %1233, %1208
  %1236 = fmul fast float %1233, %1212
  %1237 = fdiv fast float 1.000000e+00, %1232
  %1238 = fmul fast float %1237, %1220
  %1239 = fmul fast float %1237, %1224
  %1240 = fmul fast float %1237, %1228
  %1241 = fsub fast float %1234, %1238
  %1242 = fsub fast float %1235, %1239
  %1243 = fsub fast float %1236, %1240
  %1244 = fmul fast float %1241, %1241
  %1245 = fmul fast float %1242, %1242
  %1246 = fadd fast float %1244, %1245
  %1247 = fmul fast float %1243, %1243
  %1248 = fadd fast float %1246, %1247
  %1249 = call float @dx.op.unary.f32(i32 24, float %1248)  ; Sqrt(value)
  %1250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1251 = extractvalue %dx.types.CBufRet.f32 %1250, 0
  %1252 = extractvalue %dx.types.CBufRet.f32 %1250, 1
  %1253 = extractvalue %dx.types.CBufRet.f32 %1250, 2
  %1254 = extractvalue %dx.types.CBufRet.f32 %1250, 3
  %1255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1256 = extractvalue %dx.types.CBufRet.f32 %1255, 0
  %1257 = extractvalue %dx.types.CBufRet.f32 %1255, 1
  %1258 = extractvalue %dx.types.CBufRet.f32 %1255, 2
  %1259 = extractvalue %dx.types.CBufRet.f32 %1255, 3
  %1260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1261 = extractvalue %dx.types.CBufRet.f32 %1260, 0
  %1262 = extractvalue %dx.types.CBufRet.f32 %1260, 1
  %1263 = extractvalue %dx.types.CBufRet.f32 %1260, 2
  %1264 = extractvalue %dx.types.CBufRet.f32 %1260, 3
  %1265 = fmul fast float %1251, %1234
  %1266 = call float @dx.op.tertiary.f32(i32 46, float %1235, float %1252, float %1265)  ; FMad(a,b,c)
  %1267 = call float @dx.op.tertiary.f32(i32 46, float %1236, float %1253, float %1266)  ; FMad(a,b,c)
  %1268 = call float @dx.op.tertiary.f32(i32 46, float %1216, float %1254, float %1267)  ; FMad(a,b,c)
  %1269 = fmul fast float %1256, %1234
  %1270 = call float @dx.op.tertiary.f32(i32 46, float %1235, float %1257, float %1269)  ; FMad(a,b,c)
  %1271 = call float @dx.op.tertiary.f32(i32 46, float %1236, float %1258, float %1270)  ; FMad(a,b,c)
  %1272 = call float @dx.op.tertiary.f32(i32 46, float %1216, float %1259, float %1271)  ; FMad(a,b,c)
  %1273 = fmul fast float %1261, %1234
  %1274 = call float @dx.op.tertiary.f32(i32 46, float %1235, float %1262, float %1273)  ; FMad(a,b,c)
  %1275 = call float @dx.op.tertiary.f32(i32 46, float %1236, float %1263, float %1274)  ; FMad(a,b,c)
  %1276 = call float @dx.op.tertiary.f32(i32 46, float %1216, float %1264, float %1275)  ; FMad(a,b,c)
  %1277 = fmul fast float %1251, %1238
  %1278 = call float @dx.op.tertiary.f32(i32 46, float %1239, float %1252, float %1277)  ; FMad(a,b,c)
  %1279 = call float @dx.op.tertiary.f32(i32 46, float %1240, float %1253, float %1278)  ; FMad(a,b,c)
  %1280 = call float @dx.op.tertiary.f32(i32 46, float %1232, float %1254, float %1279)  ; FMad(a,b,c)
  %1281 = fmul fast float %1256, %1238
  %1282 = call float @dx.op.tertiary.f32(i32 46, float %1239, float %1257, float %1281)  ; FMad(a,b,c)
  %1283 = call float @dx.op.tertiary.f32(i32 46, float %1240, float %1258, float %1282)  ; FMad(a,b,c)
  %1284 = call float @dx.op.tertiary.f32(i32 46, float %1232, float %1259, float %1283)  ; FMad(a,b,c)
  %1285 = fmul fast float %1261, %1238
  %1286 = call float @dx.op.tertiary.f32(i32 46, float %1239, float %1262, float %1285)  ; FMad(a,b,c)
  %1287 = call float @dx.op.tertiary.f32(i32 46, float %1240, float %1263, float %1286)  ; FMad(a,b,c)
  %1288 = call float @dx.op.tertiary.f32(i32 46, float %1232, float %1264, float %1287)  ; FMad(a,b,c)
  %1289 = fdiv fast float 1.000000e+00, %1276
  %1290 = fmul fast float %1289, %1268
  %1291 = fmul fast float %1289, %1272
  %1292 = fdiv fast float 1.000000e+00, %1288
  %1293 = fmul fast float %1292, %1280
  %1294 = fmul fast float %1292, %1284
  %1295 = fsub fast float %1290, %1293
  %1296 = fsub fast float %1291, %1294
  %1297 = fmul fast float %1295, 5.000000e-01
  %1298 = fmul fast float %1296, 5.000000e-01
  %1299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1300 = extractvalue %dx.types.CBufRet.f32 %1299, 0
  %1301 = extractvalue %dx.types.CBufRet.f32 %1299, 1
  %1302 = fmul fast float %1297, %1300
  %1303 = fmul fast float %1298, %1301
  %1304 = fmul fast float %1302, %1302
  %1305 = fmul fast float %1303, %1303
  %1306 = fadd fast float %1304, %1305
  %1307 = call float @dx.op.unary.f32(i32 24, float %1306)  ; Sqrt(value)
  br label %1308

; <label>:1308                                    ; preds = %1197, %1188
  %1309 = phi float [ %1249, %1197 ], [ 0.000000e+00, %1188 ]
  %1310 = phi float [ %1307, %1197 ], [ 0.000000e+00, %1188 ]
  %1311 = fadd fast float %1189, -1.000000e+00
  %1312 = fmul fast float %1311, %383
  %1313 = fadd fast float %1312, 1.000000e+00
  %1314 = fmul fast float %1313, %395
  br label %1315

; <label>:1315                                    ; preds = %1308, %362
  %1316 = phi float [ %1314, %1308 ], [ %395, %362 ]
  %1317 = phi float [ %1309, %1308 ], [ 0.000000e+00, %362 ]
  %1318 = phi float [ %1310, %1308 ], [ 0.000000e+00, %362 ]
  %1319 = call float @dx.op.binary.f32(i32 36, float %1316, float %1316)  ; FMin(a,b)
  %1320 = call float @dx.op.binary.f32(i32 36, float %1316, float %1319)  ; FMin(a,b)
  %1321 = fcmp fast ogt float %1320, 0.000000e+00
  %1322 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %335, float %336, float %337)  ; Dot3(ax,ay,az,bx,by,bz)
  %1323 = fcmp fast ogt float %1322, 0.000000e+00
  %1324 = and i1 %1321, %1323
  br i1 %1324, label %1325, label %1604, !dx.controlflow.hints !41

; <label>:1325                                    ; preds = %1315
  %1326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1327 = extractvalue %dx.types.CBufRet.f32 %1326, 1
  %1328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1329 = extractvalue %dx.types.CBufRet.f32 %1328, 1
  %1330 = select i1 %49, float %1327, float %1329
  %1331 = extractvalue %dx.types.CBufRet.f32 %1326, 2
  %1332 = extractvalue %dx.types.CBufRet.f32 %1328, 2
  %1333 = select i1 %49, float %1331, float %1332
  %1334 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1335 = extractvalue %dx.types.CBufRet.i32 %1334, 0
  %1336 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1337 = extractvalue %dx.types.CBufRet.i32 %1336, 0
  %1338 = select i1 %49, i32 %1335, i32 %1337
  %1339 = fcmp fast ogt float %1317, 0.000000e+00
  br i1 %1339, label %1340, label %1344, !dx.controlflow.hints !42

; <label>:1340                                    ; preds = %1325
  %1341 = fptosi float %1318 to i32
  %1342 = call i32 @dx.op.binary.i32(i32 37, i32 %1341, i32 1)  ; IMax(a,b)
  %1343 = call i32 @dx.op.binary.i32(i32 38, i32 %1342, i32 16)  ; IMin(a,b)
  br label %1344

; <label>:1344                                    ; preds = %1340, %1325
  %1345 = phi float [ 0.000000e+00, %1340 ], [ 1.000000e+00, %1325 ]
  %1346 = phi float [ %1317, %1340 ], [ %1330, %1325 ]
  %1347 = phi i32 [ %1343, %1340 ], [ %1338, %1325 ]
  %1348 = fcmp fast olt float %1346, 5.000000e-01
  %1349 = icmp eq i32 %1347, 0
  %1350 = or i1 %1348, %1349
  br i1 %1350, label %1601, label %1351, !dx.controlflow.hints !43

; <label>:1351                                    ; preds = %1344
  %1352 = fsub fast float %295, %111
  %1353 = fsub fast float %296, %112
  %1354 = fsub fast float %297, %113
  %1355 = fmul fast float %1352, %1352
  %1356 = fmul fast float %1353, %1353
  %1357 = fadd fast float %1355, %1356
  %1358 = fmul fast float %1354, %1354
  %1359 = fadd fast float %1357, %1358
  %1360 = call float @dx.op.unary.f32(i32 24, float %1359)  ; Sqrt(value)
  %1361 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1362 = extractvalue %dx.types.CBufRet.i32 %1361, 0
  %1363 = uitofp i32 %1362 to float
  %1364 = fmul fast float %1346, %292
  %1365 = fdiv fast float %1364, %1360
  %1366 = call float @dx.op.binary.f32(i32 36, float %1365, float 1.000000e+01)  ; FMin(a,b)
  %1367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %1368 = extractvalue %dx.types.CBufRet.f32 %1367, 0
  %1369 = extractvalue %dx.types.CBufRet.f32 %1367, 1
  %1370 = extractvalue %dx.types.CBufRet.f32 %1367, 2
  %1371 = extractvalue %dx.types.CBufRet.f32 %1367, 3
  %1372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %1373 = extractvalue %dx.types.CBufRet.f32 %1372, 0
  %1374 = extractvalue %dx.types.CBufRet.f32 %1372, 1
  %1375 = extractvalue %dx.types.CBufRet.f32 %1372, 2
  %1376 = extractvalue %dx.types.CBufRet.f32 %1372, 3
  %1377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %1378 = extractvalue %dx.types.CBufRet.f32 %1377, 0
  %1379 = extractvalue %dx.types.CBufRet.f32 %1377, 1
  %1380 = extractvalue %dx.types.CBufRet.f32 %1377, 2
  %1381 = extractvalue %dx.types.CBufRet.f32 %1377, 3
  %1382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1383 = extractvalue %dx.types.CBufRet.f32 %1382, 0
  %1384 = extractvalue %dx.types.CBufRet.f32 %1382, 1
  %1385 = extractvalue %dx.types.CBufRet.f32 %1382, 2
  %1386 = extractvalue %dx.types.CBufRet.f32 %1382, 3
  %1387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1388 = extractvalue %dx.types.CBufRet.f32 %1387, 0
  %1389 = extractvalue %dx.types.CBufRet.f32 %1387, 1
  %1390 = extractvalue %dx.types.CBufRet.f32 %1387, 2
  %1391 = extractvalue %dx.types.CBufRet.f32 %1387, 3
  %1392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1393 = extractvalue %dx.types.CBufRet.f32 %1392, 0
  %1394 = extractvalue %dx.types.CBufRet.f32 %1392, 1
  %1395 = extractvalue %dx.types.CBufRet.f32 %1392, 2
  %1396 = extractvalue %dx.types.CBufRet.f32 %1392, 3
  %1397 = select i1 %49, float %1368, float %1383
  %1398 = select i1 %49, float %1373, float %1388
  %1399 = select i1 %49, float %1378, float %1393
  %1400 = select i1 %49, float %1369, float %1384
  %1401 = select i1 %49, float %1374, float %1389
  %1402 = select i1 %49, float %1379, float %1394
  %1403 = select i1 %49, float %1370, float %1385
  %1404 = select i1 %49, float %1375, float %1390
  %1405 = select i1 %49, float %1380, float %1395
  %1406 = select i1 %49, float %1371, float %1386
  %1407 = select i1 %49, float %1376, float %1391
  %1408 = select i1 %49, float %1381, float %1396
  %1409 = fmul fast float %213, 0x401061CAC0000000
  %1410 = fmul fast float %213, 0x4023E1D7E0000000
  %1411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1412 = extractvalue %dx.types.CBufRet.f32 %1411, 0
  %1413 = extractvalue %dx.types.CBufRet.f32 %1411, 1
  %1414 = extractvalue %dx.types.CBufRet.f32 %1411, 2
  %1415 = extractvalue %dx.types.CBufRet.f32 %1411, 3
  %1416 = fsub fast float -0.000000e+00, %335
  %1417 = fmul fast float %337, %1416
  %1418 = fmul fast float %335, %1416
  %1419 = fmul fast float %336, %336
  %1420 = fsub fast float %1418, %1419
  %1421 = fdiv fast float 1.000000e+00, %56
  %1422 = fmul fast float %1414, %45
  %1423 = fmul fast float %1415, %46
  %1424 = fmul fast float %1346, %335
  %1425 = fmul fast float %1346, %337
  %1426 = fadd fast float %1424, %111
  %1427 = fadd fast float %1425, %113
  %1428 = fadd fast float %1410, 5.000000e-01
  %1429 = call float @dx.op.unary.f32(i32 22, float %1428)  ; Frc(value)
  %1430 = bitcast float %1429 to i32
  %1431 = ashr i32 %1430, 1
  %1432 = add nsw i32 %1431, 532487669
  %1433 = bitcast i32 %1432 to float
  %1434 = fmul fast float %1433, %1366
  %1435 = fadd fast float %1409, 5.000000e-01
  %1436 = call float @dx.op.unary.f32(i32 22, float %1435)  ; Frc(value)
  %1437 = fmul fast float %1436, 0x401921FB60000000
  %1438 = call float @dx.op.unary.f32(i32 12, float %1437)  ; Cos(value)
  %1439 = fmul fast float %1438, %1438
  %1440 = fsub fast float 1.000000e+00, %1439
  %1441 = bitcast float %1440 to i32
  %1442 = ashr i32 %1441, 1
  %1443 = add nsw i32 %1442, 532487669
  %1444 = bitcast i32 %1443 to float
  %1445 = fmul fast float %1434, %1438
  %1446 = fmul fast float %1445, %336
  %1447 = fmul fast float %1445, %1416
  %1448 = fadd fast float %1426, %1446
  %1449 = fmul fast float %1444, %1434
  %1450 = fmul fast float %1417, %1449
  %1451 = fmul fast float %1449, %337
  %1452 = fmul fast float %1449, %1420
  %1453 = fsub fast float %1448, %1450
  %1454 = fadd fast float %1451, %1346
  %1455 = fmul fast float %1454, %336
  %1456 = fadd fast float %1447, %112
  %1457 = fadd fast float %1456, %1455
  %1458 = fadd fast float %1427, %1452
  %1459 = fmul fast float %1453, %1397
  %1460 = call float @dx.op.tertiary.f32(i32 46, float %1457, float %1400, float %1459)  ; FMad(a,b,c)
  %1461 = call float @dx.op.tertiary.f32(i32 46, float %1458, float %1403, float %1460)  ; FMad(a,b,c)
  %1462 = fadd fast float %1461, %1406
  %1463 = fmul fast float %1453, %1398
  %1464 = call float @dx.op.tertiary.f32(i32 46, float %1457, float %1401, float %1463)  ; FMad(a,b,c)
  %1465 = call float @dx.op.tertiary.f32(i32 46, float %1458, float %1404, float %1464)  ; FMad(a,b,c)
  %1466 = fadd fast float %1465, %1407
  %1467 = fmul fast float %1453, %1399
  %1468 = call float @dx.op.tertiary.f32(i32 46, float %1457, float %1402, float %1467)  ; FMad(a,b,c)
  %1469 = call float @dx.op.tertiary.f32(i32 46, float %1458, float %1405, float %1468)  ; FMad(a,b,c)
  %1470 = fadd fast float %1469, %1408
  %1471 = fdiv fast float 1.000000e+00, %1470
  %1472 = fmul fast float %1462, 5.000000e-01
  %1473 = fmul fast float %1466, -5.000000e-01
  %1474 = fmul fast float %1472, %1471
  %1475 = fmul fast float %1473, %1471
  %1476 = fsub fast float 5.000000e-01, %1422
  %1477 = fadd fast float %1476, %1474
  %1478 = fsub fast float 5.000000e-01, %1423
  %1479 = fadd fast float %1478, %1475
  %1480 = fsub fast float %1471, %1421
  %1481 = call float @dx.op.dot2.f32(i32 54, float %1477, float %1479, float %1477, float %1479)  ; Dot2(ax,ay,bx,by)
  %1482 = call float @dx.op.binary.f32(i32 35, float %1481, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %1483 = call float @dx.op.dot2.f32(i32 54, float %1412, float %1413, float %1412, float %1413)  ; Dot2(ax,ay,bx,by)
  %1484 = fmul fast float %1483, %1482
  %1485 = call float @dx.op.unary.f32(i32 25, float %1484)  ; Rsqrt(value)
  %1486 = fmul fast float %1485, %1477
  %1487 = fmul fast float %1485, %1479
  %1488 = fadd fast float %1486, %1422
  %1489 = fadd fast float %1487, %1423
  %1490 = fmul fast float %1477, %1412
  %1491 = fmul fast float %1479, %1413
  %1492 = fmul fast float %1490, %1490
  %1493 = fmul fast float %1491, %1491
  %1494 = fadd fast float %1492, %1493
  %1495 = call float @dx.op.unary.f32(i32 24, float %1494)  ; Sqrt(value)
  %1496 = fdiv fast float 1.000000e+00, %1495
  %1497 = fmul fast float %1495, 3.906250e-03
  %1498 = fmul fast float %199, 0x3F70624DE0000000
  %1499 = fadd fast float %1498, 0x3F70624DE0000000
  %1500 = icmp sgt i32 %1347, -1
  br i1 %1500, label %1501, label %1566

; <label>:1501                                    ; preds = %1351
  br label %1502

; <label>:1502                                    ; preds = %1562, %1501
  %1503 = phi float [ %1537, %1562 ], [ %56, %1501 ]
  %1504 = phi float [ %1524, %1562 ], [ %56, %1501 ]
  %1505 = phi float [ %1504, %1562 ], [ %56, %1501 ]
  %1506 = phi i32 [ %1563, %1562 ], [ 0, %1501 ]
  %1507 = sitofp i32 %1506 to float
  %1508 = fadd fast float %213, 5.000000e-01
  %1509 = call float @dx.op.unary.f32(i32 22, float %1508)  ; Frc(value)
  %1510 = fadd fast float %1507, %1509
  %1511 = sitofp i32 %1347 to float
  %1512 = fdiv fast float %1510, %1511
  %1513 = fmul fast float %1512, %1512
  %1514 = fsub fast float %1513, %1512
  %1515 = fmul fast float %1514, %1345
  %1516 = fadd fast float %1515, %1512
  %1517 = call float @dx.op.binary.f32(i32 36, float %1516, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %1518 = fmul fast float %1517, %1477
  %1519 = fmul fast float %1517, %1479
  %1520 = fmul fast float %1517, %1480
  %1521 = fadd fast float %1518, %1488
  %1522 = fadd fast float %1519, %1489
  %1523 = fadd fast float %1520, %1421
  %1524 = fdiv fast float 1.000000e+00, %1523
  %1525 = icmp ne i32 %1362, 0
  %1526 = fmul fast float %1497, %1517
  %1527 = call float @dx.op.binary.f32(i32 36, float %1526, float %1363)  ; FMin(a,b)
  %1528 = select i1 %1525, float %1527, float 0.000000e+00
  %1529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %1521, float %1522, float undef, float undef, i32 0, i32 0, i32 undef, float %1528)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1530 = extractvalue %dx.types.ResRet.f32 %1529, 0
  %1531 = fcmp fast ogt float %1530, -1.000000e+00
  %1532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1533 = extractvalue %dx.types.CBufRet.f32 %1532, 1
  %1534 = select i1 %1531, float %1533, float 1.000000e+00
  %1535 = fadd fast float %1530, 1.000000e+00
  %1536 = fmul fast float %1534, %1535
  %1537 = call float @dx.op.unary.f32(i32 6, float %1536)  ; FAbs(value)
  %1538 = fmul fast float %1537, %1499
  %1539 = fsub fast float %1524, %1537
  %1540 = fsub fast float %1539, %1538
  %1541 = fcmp fast ogt float %1540, 0.000000e+00
  %1542 = fcmp fast ogt float %1333, 0.000000e+00
  br i1 %1542, label %1543, label %1546, !dx.controlflow.hints !44

; <label>:1543                                    ; preds = %1502
  %1544 = fsub fast float %1524, %1505
  %1545 = call float @dx.op.binary.f32(i32 35, float %1544, float %1333)  ; FMax(a,b)
  br label %1546

; <label>:1546                                    ; preds = %1543, %1502
  %1547 = phi float [ %1545, %1543 ], [ %1346, %1502 ]
  %1548 = fcmp fast olt float %1540, %1547
  %1549 = fcmp uge float %1530, -1.000000e+00
  %1550 = or i1 %49, %1549
  %1551 = call float @dx.op.unary.f32(i32 7, float %1521)  ; Saturate(value)
  %1552 = call float @dx.op.unary.f32(i32 7, float %1522)  ; Saturate(value)
  %1553 = fcmp fast oeq float %1521, %1551
  %1554 = fcmp fast oeq float %1522, %1552
  %1555 = and i1 %1553, %1554
  %1556 = and i1 %1550, %1555
  %1557 = and i1 %1541, %1548
  %1558 = and i1 %1557, %1556
  %1559 = fcmp fast ogt float %1517, %1496
  %1560 = and i1 %1559, %1558
  %1561 = zext i1 %1560 to i32
  br i1 %1560, label %1565, label %1562, !dx.controlflow.hints !45

; <label>:1562                                    ; preds = %1546
  %1563 = add nuw nsw i32 %1506, 1
  %1564 = icmp slt i32 %1506, %1347
  br i1 %1564, label %1502, label %1565

; <label>:1565                                    ; preds = %1562, %1546
  br label %1566

; <label>:1566                                    ; preds = %1565, %1351
  %1567 = phi i32 [ 0, %1351 ], [ %1561, %1565 ]
  %1568 = phi float [ %56, %1351 ], [ %1537, %1565 ]
  %1569 = phi float [ %56, %1351 ], [ %1503, %1565 ]
  %1570 = phi float [ %56, %1351 ], [ %1524, %1565 ]
  %1571 = phi float [ %56, %1351 ], [ %1504, %1565 ]
  %1572 = fsub fast float %1571, %1569
  %1573 = fsub fast float %1570, %1568
  %1574 = fsub fast float %1572, %1573
  %1575 = fcmp fast une float %1574, 0.000000e+00
  %1576 = fmul fast float %1572, %1570
  %1577 = fmul fast float %1571, %1573
  %1578 = fsub fast float %1576, %1577
  %1579 = fdiv fast float 1.000000e+00, %1574
  %1580 = fmul fast float %1578, %1579
  %1581 = select i1 %1575, float %1580, float %1570
  %1582 = fdiv fast float 1.000000e+00, %1581
  %1583 = fsub fast float %1582, %1421
  %1584 = fdiv fast float %1583, %1480
  %1585 = call float @dx.op.unary.f32(i32 7, float %1584)  ; Saturate(value)
  %1586 = fmul fast float %1585, %1477
  %1587 = fmul fast float %1585, %1479
  %1588 = fadd fast float %1586, %1488
  %1589 = fadd fast float %1587, %1489
  %1590 = fadd fast float %1588, -5.000000e-01
  %1591 = fadd fast float %1589, -5.000000e-01
  %1592 = call float @dx.op.unary.f32(i32 6, float %1590)  ; FAbs(value)
  %1593 = call float @dx.op.unary.f32(i32 6, float %1591)  ; FAbs(value)
  %1594 = fadd fast float %1592, -5.000000e-01
  %1595 = fadd fast float %1593, -5.000000e-01
  %1596 = call float @dx.op.binary.f32(i32 35, float %1594, float %1595)  ; FMax(a,b)
  %1597 = fcmp fast olt float %1596, 0.000000e+00
  %1598 = icmp ne i32 %1567, 0
  %1599 = and i1 %1598, %1597
  %1600 = select i1 %1599, float 0.000000e+00, float 1.000000e+00
  br label %1601

; <label>:1601                                    ; preds = %1566, %1344
  %1602 = phi float [ %1600, %1566 ], [ 1.000000e+00, %1344 ]
  %1603 = fmul fast float %1602, %1316
  br label %1604

; <label>:1604                                    ; preds = %1601, %1315
  %1605 = phi float [ %1603, %1601 ], [ %1316, %1315 ]
  %1606 = lshr i32 %218, 5
  %1607 = lshr i32 %219, 5
  %1608 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %1606, i32 %1607, i32 %272, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1609 = extractvalue %dx.types.ResRet.i32 %1608, 0
  %1610 = lshr i32 %1609, 23
  %1611 = and i32 %1610, 255
  %1612 = and i32 %218, 31
  %1613 = and i32 %219, 31
  %1614 = lshr i32 %1609, 1
  %1615 = and i32 %1614, 16352
  %1616 = lshr i32 %1609, 10
  %1617 = and i32 %1616, 8160
  %1618 = or i32 %1615, %1612
  %1619 = or i32 %1617, %1613
  %1620 = fmul fast float %1605, 2.550000e+02
  %1621 = fadd fast float %1620, %212
  %1622 = call float @dx.op.unary.f32(i32 27, float %1621)  ; Round_ni(value)
  %1623 = fmul fast float %1622, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1618, i32 %1619, i32 %1611, float %1623, float %1623, float %1623, float %1623, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1624 = icmp eq i32 %270, %274
  br i1 %1624, label %1625, label %269, !llvm.loop !46

; <label>:1625                                    ; preds = %1604
  br label %1626

; <label>:1626                                    ; preds = %1625, %243
  %1627 = add i32 %244, 1
  %1628 = icmp ugt i32 %1627, %240
  br i1 %1628, label %1629, label %243

; <label>:1629                                    ; preds = %1626
  br label %1630

; <label>:1630                                    ; preds = %1629, %217, %0
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
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 1}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.unroll.disable"}

