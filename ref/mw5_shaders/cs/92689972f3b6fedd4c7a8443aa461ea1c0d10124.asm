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
; shader hash: 7795c76b503acf150edc55217caf89d1
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
  %18 = alloca [4 x i32], align 4
  %19 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %20 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %21 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %22 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.i32 %22, 0
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 1
  %26 = shl i32 %23, 2
  %27 = mul i32 %26, %25
  %28 = add i32 %27, %19
  %29 = shl i32 %28, 2
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %29, i32 undef)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 0
  %32 = lshr i32 %31, 10
  %33 = and i32 %32, 262128
  %34 = shl i32 %31, 4
  %35 = and i32 %34, 262128
  %36 = lshr i32 %31, 25
  %37 = and i32 %36, 8
  %38 = lshr i32 %31, 26
  %39 = and i32 %38, 8
  %40 = or i32 %37, %20
  %41 = or i32 %40, %33
  %42 = or i32 %39, %21
  %43 = or i32 %42, %35
  %44 = uitofp i32 %41 to float
  %45 = uitofp i32 %43 to float
  %46 = fadd fast float %44, 5.000000e-01
  %47 = fadd fast float %45, 5.000000e-01
  %48 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %41, i32 %43, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %49 = extractvalue %dx.types.ResRet.f32 %48, 0
  %50 = fcmp fast olt float %49, -1.000000e+00
  %51 = fcmp fast ogt float %49, -1.000000e+00
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 1
  %54 = select i1 %51, float %53, float 1.000000e+00
  %55 = fadd fast float %49, 1.000000e+00
  %56 = fmul fast float %54, %55
  %57 = call float @dx.op.unary.f32(i32 6, float %56)  ; FAbs(value)
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 3
  %61 = fmul fast float %46, %59
  %62 = fmul fast float %47, %60
  %63 = fmul fast float %61, 2.000000e+00
  %64 = fmul fast float %62, 2.000000e+00
  %65 = fsub fast float 1.000000e+00, %63
  %66 = fsub fast float 1.000000e+00, %64
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = extractvalue %dx.types.CBufRet.f32 %67, 1
  %70 = extractvalue %dx.types.CBufRet.f32 %67, 2
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %73 = extractvalue %dx.types.CBufRet.f32 %71, 1
  %74 = extractvalue %dx.types.CBufRet.f32 %71, 2
  %75 = select i1 %50, float %68, float %72
  %76 = select i1 %50, float %69, float %73
  %77 = select i1 %50, float %70, float %74
  %78 = fmul fast float %75, %65
  %79 = fmul fast float %76, %65
  %80 = fmul fast float %77, %65
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 0
  %83 = extractvalue %dx.types.CBufRet.f32 %81, 1
  %84 = extractvalue %dx.types.CBufRet.f32 %81, 2
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.f32 %85, 0
  %87 = extractvalue %dx.types.CBufRet.f32 %85, 1
  %88 = extractvalue %dx.types.CBufRet.f32 %85, 2
  %89 = select i1 %50, float %82, float %86
  %90 = select i1 %50, float %83, float %87
  %91 = select i1 %50, float %84, float %88
  %92 = fmul fast float %89, %66
  %93 = fmul fast float %90, %66
  %94 = fmul fast float %91, %66
  %95 = fadd fast float %92, %78
  %96 = fadd fast float %93, %79
  %97 = fadd fast float %94, %80
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %100 = extractvalue %dx.types.CBufRet.f32 %98, 1
  %101 = extractvalue %dx.types.CBufRet.f32 %98, 2
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 1
  %105 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %106 = select i1 %50, float %99, float %103
  %107 = select i1 %50, float %100, float %104
  %108 = select i1 %50, float %101, float %105
  %109 = fadd fast float %95, %106
  %110 = fadd fast float %96, %107
  %111 = fadd fast float %97, %108
  %112 = fmul fast float %109, %57
  %113 = fmul fast float %110, %57
  %114 = fmul fast float %111, %57
  %115 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %41, i32 %43, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %116 = extractvalue %dx.types.ResRet.i32 %115, 0
  %117 = lshr i32 %116, 8
  %118 = and i32 %116, 255
  %119 = and i32 %117, 255
  %120 = uitofp i32 %118 to float
  %121 = uitofp i32 %119 to float
  %122 = fmul fast float %120, 0x3F80101020000000
  %123 = fmul fast float %121, 0x3F80101020000000
  %124 = fadd fast float %122, -1.000000e+00
  %125 = fadd fast float %123, -1.000000e+00
  %126 = call float @dx.op.unary.f32(i32 6, float %124)  ; FAbs(value)
  %127 = fsub fast float 1.000000e+00, %126
  %128 = call float @dx.op.unary.f32(i32 6, float %125)  ; FAbs(value)
  %129 = fsub fast float %127, %128
  %130 = fsub fast float -0.000000e+00, %129
  %131 = call float @dx.op.binary.f32(i32 35, float %130, float 0.000000e+00)  ; FMax(a,b)
  %132 = fcmp fast ogt float %124, 0.000000e+00
  %133 = fsub fast float -0.000000e+00, %131
  %134 = select i1 %132, float %133, float %131
  %135 = fadd fast float %134, %124
  %136 = fcmp fast ogt float %125, 0.000000e+00
  %137 = select i1 %136, float %133, float %131
  %138 = fadd fast float %137, %125
  %139 = call float @dx.op.dot3.f32(i32 55, float %135, float %138, float %129, float %135, float %138, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %140 = call float @dx.op.unary.f32(i32 25, float %139)  ; Rsqrt(value)
  %141 = fmul fast float %135, %140
  %142 = fmul fast float %138, %140
  %143 = fmul fast float %140, %129
  %144 = fmul fast float %59, %44
  %145 = fmul fast float %60, %45
  %146 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %14, float %144, float %145, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %147 = extractvalue %dx.types.ResRet.f32 %146, 0
  %148 = extractvalue %dx.types.ResRet.f32 %146, 1
  %149 = extractvalue %dx.types.ResRet.f32 %146, 2
  %150 = fcmp fast ogt float %147, -1.000000e+00
  %151 = select i1 %150, float %53, float 1.000000e+00
  %152 = fadd fast float %147, 1.000000e+00
  %153 = fmul fast float %151, %152
  %154 = call float @dx.op.unary.f32(i32 6, float %153)  ; FAbs(value)
  %155 = fcmp fast ogt float %148, -1.000000e+00
  %156 = select i1 %155, float %53, float 1.000000e+00
  %157 = fadd fast float %148, 1.000000e+00
  %158 = fmul fast float %156, %157
  %159 = call float @dx.op.unary.f32(i32 6, float %158)  ; FAbs(value)
  %160 = fcmp fast ogt float %149, -1.000000e+00
  %161 = select i1 %160, float %53, float 1.000000e+00
  %162 = fadd fast float %149, 1.000000e+00
  %163 = fmul fast float %161, %162
  %164 = call float @dx.op.unary.f32(i32 6, float %163)  ; FAbs(value)
  %165 = fadd fast float %44, 1.000000e+00
  %166 = fmul fast float %59, %165
  %167 = fadd fast float %45, 1.000000e+00
  %168 = fmul fast float %60, %167
  %169 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %14, float %166, float %168, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %170 = extractvalue %dx.types.ResRet.f32 %169, 0
  %171 = extractvalue %dx.types.ResRet.f32 %169, 2
  %172 = fcmp fast ogt float %170, -1.000000e+00
  %173 = select i1 %172, float %53, float 1.000000e+00
  %174 = fadd fast float %170, 1.000000e+00
  %175 = fmul fast float %173, %174
  %176 = call float @dx.op.unary.f32(i32 6, float %175)  ; FAbs(value)
  %177 = fcmp fast ogt float %171, -1.000000e+00
  %178 = select i1 %177, float %53, float 1.000000e+00
  %179 = fadd fast float %171, 1.000000e+00
  %180 = fmul fast float %178, %179
  %181 = call float @dx.op.unary.f32(i32 6, float %180)  ; FAbs(value)
  %182 = fsub fast float %164, %159
  %183 = fsub fast float %176, %159
  %184 = fsub fast float %154, %159
  %185 = fsub fast float %181, %159
  %186 = call float @dx.op.unary.f32(i32 6, float %183)  ; FAbs(value)
  %187 = call float @dx.op.unary.f32(i32 6, float %182)  ; FAbs(value)
  %188 = call float @dx.op.binary.f32(i32 35, float %187, float %186)  ; FMax(a,b)
  %189 = call float @dx.op.unary.f32(i32 6, float %185)  ; FAbs(value)
  %190 = call float @dx.op.unary.f32(i32 6, float %184)  ; FAbs(value)
  %191 = call float @dx.op.binary.f32(i32 35, float %190, float %189)  ; FMax(a,b)
  %192 = fadd fast float %183, %182
  %193 = call float @dx.op.unary.f32(i32 6, float %192)  ; FAbs(value)
  %194 = fadd fast float %185, %184
  %195 = call float @dx.op.unary.f32(i32 6, float %194)  ; FAbs(value)
  %196 = fsub fast float %191, %195
  %197 = call float @dx.op.unary.f32(i32 6, float %196)  ; FAbs(value)
  %198 = fsub fast float %188, %193
  %199 = call float @dx.op.unary.f32(i32 6, float %198)  ; FAbs(value)
  %200 = call float @dx.op.binary.f32(i32 35, float %199, float %197)  ; FMax(a,b)
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 2
  %203 = fmul fast float %202, 0x3FE3C6EF40000000
  %204 = frem fast float %46, 2.560000e+02
  %205 = frem fast float %47, 2.560000e+02
  %206 = fptoui float %204 to i32
  %207 = fptoui float %205 to i32
  %208 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %206, i32 %207, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %209 = extractvalue %dx.types.ResRet.f32 %208, 0
  %210 = extractvalue %dx.types.ResRet.f32 %208, 2
  %211 = fadd fast float %209, %203
  %212 = fadd fast float %210, %203
  %213 = call float @dx.op.unary.f32(i32 22, float %211)  ; Frc(value)
  %214 = call float @dx.op.unary.f32(i32 22, float %212)  ; Frc(value)
  %215 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.i32 %215, 0
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %1660, label %218, !dx.controlflow.hints !31

; <label>:218                                     ; preds = %0
  %219 = fptoui float %46 to i32
  %220 = fptoui float %47 to i32
  %221 = lshr i32 %219, 4
  %222 = lshr i32 %220, 4
  %223 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.i32 %223, 0
  %225 = call i32 @dx.op.tertiary.i32(i32 49, i32 %222, i32 %224, i32 %221)  ; UMad(a,b,c)
  %226 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.i32 %226, 0
  %228 = add nsw i32 %227, -1
  %229 = call i32 @dx.op.binary.i32(i32 37, i32 %228, i32 0)  ; IMax(a,b)
  %230 = call float @dx.op.binary.f32(i32 35, float %57, float 0.000000e+00)  ; FMax(a,b)
  %231 = fptoui float %230 to i32
  %232 = lshr i32 %231, 5
  %233 = call i32 @dx.op.binary.i32(i32 40, i32 %232, i32 8191)  ; UMin(a,b)
  %234 = shl i32 %233, 2
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = lshr i32 %236, 16
  %238 = and i32 %236, 65535
  %239 = lshr i32 %236, 21
  %240 = lshr i32 %238, 5
  %241 = call i32 @dx.op.binary.i32(i32 40, i32 %240, i32 %229)  ; UMin(a,b)
  %242 = icmp ugt i32 %239, %241
  br i1 %242, label %1660, label %243

; <label>:243                                     ; preds = %218
  br label %244

; <label>:244                                     ; preds = %1656, %243
  %245 = phi i32 [ %1657, %1656 ], [ %239, %243 ]
  %246 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.i32 %246, 0
  %248 = call i32 @dx.op.tertiary.i32(i32 49, i32 %225, i32 %247, i32 %245)  ; UMad(a,b,c)
  %249 = shl i32 %248, 2
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.i32 %250, 0
  %252 = shl i32 %245, 5
  %253 = sub nsw i32 %237, %252
  %254 = call i32 @dx.op.binary.i32(i32 37, i32 %253, i32 0)  ; IMax(a,b)
  %255 = call i32 @dx.op.binary.i32(i32 38, i32 %254, i32 31)  ; IMin(a,b)
  %256 = sub nsw i32 1, %237
  %257 = add nsw i32 %256, %238
  %258 = call i32 @dx.op.binary.i32(i32 37, i32 %257, i32 0)  ; IMax(a,b)
  %259 = call i32 @dx.op.binary.i32(i32 38, i32 %258, i32 32)  ; IMin(a,b)
  %260 = and i32 %259, 31
  %261 = shl i32 -1, %260
  %262 = xor i32 %261, -1
  %263 = and i32 %255, 31
  %264 = shl i32 %262, %263
  %265 = icmp eq i32 %259, 32
  %266 = select i1 %265, i32 -1, i32 %264
  %267 = and i32 %266, %251
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %1656, label %269

; <label>:269                                     ; preds = %244
  br label %270

; <label>:270                                     ; preds = %1614, %269
  %271 = phi i32 [ %276, %1614 ], [ %267, %269 ]
  %272 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %271)  ; FirstbitLo(value)
  %273 = add i32 %272, %252
  %274 = and i32 %272, 31
  %275 = shl i32 1, %274
  %276 = xor i32 %275, %271
  %277 = mul i32 %273, 112
  %278 = add i32 %277, 16
  %279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.f32 %279, 0
  %281 = extractvalue %dx.types.ResRet.f32 %279, 1
  %282 = extractvalue %dx.types.ResRet.f32 %279, 2
  %283 = add i32 %277, 28
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = add i32 %277, 32
  %287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.f32 %287, 0
  %289 = extractvalue %dx.types.ResRet.f32 %287, 1
  %290 = extractvalue %dx.types.ResRet.f32 %287, 2
  %291 = add i32 %277, 44
  %292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.f32 %292, 0
  %294 = add i32 %277, 48
  %295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.f32 %295, 0
  %297 = extractvalue %dx.types.ResRet.f32 %295, 1
  %298 = extractvalue %dx.types.ResRet.f32 %295, 2
  %299 = extractvalue %dx.types.ResRet.f32 %295, 3
  %300 = add i32 %277, 64
  %301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.f32 %301, 0
  %303 = extractvalue %dx.types.ResRet.f32 %301, 1
  %304 = extractvalue %dx.types.ResRet.f32 %301, 2
  %305 = extractvalue %dx.types.ResRet.f32 %301, 3
  %306 = add i32 %277, 92
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = and i32 %308, 65535
  %310 = uitofp i32 %309 to float
  %311 = lshr i32 %308, 16
  %312 = uitofp i32 %311 to float
  %313 = and i32 %285, 65535
  %314 = and i32 %285, 50331648
  %315 = icmp eq i32 %314, 33554432
  %316 = call float @dx.op.dot3.f32(i32 55, float %288, float %289, float %290, float %288, float %289, float %290)  ; Dot3(ax,ay,az,bx,by,bz)
  %317 = fsub fast float %112, %296
  %318 = fsub fast float %113, %297
  %319 = fsub fast float %114, %298
  %320 = call float @dx.op.dot3.f32(i32 55, float %317, float %318, float %319, float %288, float %289, float %290)  ; Dot3(ax,ay,az,bx,by,bz)
  %321 = fdiv fast float %320, %316
  %322 = call float @dx.op.binary.f32(i32 35, float %321, float -1.000000e+00)  ; FMax(a,b)
  %323 = call float @dx.op.binary.f32(i32 36, float %322, float 1.000000e+00)  ; FMin(a,b)
  %324 = fmul fast float %323, %288
  %325 = fmul fast float %323, %289
  %326 = fmul fast float %323, %290
  %327 = fadd fast float %324, %296
  %328 = fadd fast float %325, %297
  %329 = fadd fast float %326, %298
  %330 = fsub fast float %327, %112
  %331 = fsub fast float %328, %113
  %332 = fsub fast float %329, %114
  %333 = call float @dx.op.dot3.f32(i32 55, float %330, float %331, float %332, float %330, float %331, float %332)  ; Dot3(ax,ay,az,bx,by,bz)
  %334 = call float @dx.op.unary.f32(i32 24, float %333)  ; Sqrt(value)
  %335 = fdiv fast float 1.000000e+00, %334
  %336 = fmul fast float %330, %335
  %337 = fmul fast float %331, %335
  %338 = fmul fast float %332, %335
  br i1 %315, label %339, label %363, !dx.controlflow.hints !32

; <label>:339                                     ; preds = %270
  %340 = fmul fast float %304, %280
  %341 = fmul fast float %304, %281
  %342 = fmul fast float %304, %282
  %343 = fsub fast float %340, %112
  %344 = fadd fast float %343, %327
  %345 = fsub fast float %341, %113
  %346 = fadd fast float %345, %328
  %347 = fsub fast float %342, %114
  %348 = fadd fast float %347, %329
  %349 = call float @dx.op.dot3.f32(i32 55, float %344, float %346, float %348, float %344, float %346, float %348)  ; Dot3(ax,ay,az,bx,by,bz)
  %350 = call float @dx.op.unary.f32(i32 25, float %349)  ; Rsqrt(value)
  %351 = fmul fast float %350, %344
  %352 = fmul fast float %350, %346
  %353 = fmul fast float %350, %348
  %354 = fsub fast float %112, %327
  %355 = fsub fast float %113, %328
  %356 = fsub fast float %114, %329
  %357 = fsub fast float -0.000000e+00, %354
  %358 = fsub fast float -0.000000e+00, %355
  %359 = fsub fast float -0.000000e+00, %356
  %360 = call float @dx.op.dot3.f32(i32 55, float %357, float %358, float %359, float %280, float %281, float %282)  ; Dot3(ax,ay,az,bx,by,bz)
  %361 = fcmp fast ogt float %360, 0.000000e+00
  %362 = uitofp i1 %361 to float
  br label %363

; <label>:363                                     ; preds = %339, %270
  %364 = phi float [ %362, %339 ], [ 1.000000e+00, %270 ]
  %365 = phi float [ %351, %339 ], [ %336, %270 ]
  %366 = phi float [ %352, %339 ], [ %337, %270 ]
  %367 = phi float [ %353, %339 ], [ %338, %270 ]
  %368 = call float @dx.op.dot3.f32(i32 55, float %280, float %281, float %282, float %365, float %366, float %367)  ; Dot3(ax,ay,az,bx,by,bz)
  %369 = fmul fast float %368, %368
  %370 = call float @dx.op.unary.f32(i32 7, float %369)  ; Saturate(value)
  %371 = fsub fast float 1.000000e+00, %370
  %372 = fmul fast float %371, 5.000000e-01
  %373 = fcmp fast ogt float %368, 0.000000e+00
  %374 = fsub fast float 1.000000e+00, %372
  %375 = select i1 %373, float %372, float %374
  %376 = fmul fast float %375, %312
  %377 = fadd fast float %376, %310
  %378 = fmul fast float %377, 0x3EF0001000000000
  %379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %13, float %378, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %380 = extractvalue %dx.types.ResRet.f32 %379, 0
  %381 = fmul fast float %368, %302
  %382 = fadd fast float %381, %303
  %383 = call float @dx.op.unary.f32(i32 7, float %382)  ; Saturate(value)
  %384 = select i1 %315, float 1.000000e+00, float %383
  %385 = select i1 %315, float %383, float 1.000000e+00
  %386 = fmul fast float %334, %299
  %387 = fsub fast float 1.000000e+00, %386
  %388 = fmul fast float %387, %305
  %389 = call float @dx.op.unary.f32(i32 7, float %388)  ; Saturate(value)
  %390 = fmul fast float %389, %385
  %391 = fmul fast float %390, 2.000000e+00
  %392 = fsub fast float 3.000000e+00, %391
  %393 = fmul fast float %380, %364
  %394 = fmul fast float %390, %390
  %395 = fmul fast float %394, %393
  %396 = fmul fast float %395, %392
  %397 = icmp ne i32 %313, 255
  %398 = call float @dx.op.binary.f32(i32 36, float %396, float %396)  ; FMin(a,b)
  %399 = call float @dx.op.binary.f32(i32 36, float %396, float %398)  ; FMin(a,b)
  %400 = fcmp fast ogt float %399, 0.000000e+00
  %401 = and i1 %397, %400
  br i1 %401, label %402, label %1325, !dx.controlflow.hints !33

; <label>:402                                     ; preds = %363
  %403 = mul nuw nsw i32 %313, 176
  %404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.f32 %404, 0
  %406 = extractvalue %dx.types.ResRet.f32 %404, 1
  %407 = extractvalue %dx.types.ResRet.f32 %404, 2
  %408 = extractvalue %dx.types.ResRet.f32 %404, 3
  %409 = add nuw nsw i32 %403, 16
  %410 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.f32 %410, 0
  %412 = extractvalue %dx.types.ResRet.f32 %410, 1
  %413 = add nuw nsw i32 %403, 32
  %414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.f32 %414, 0
  %416 = extractvalue %dx.types.ResRet.f32 %414, 1
  %417 = extractvalue %dx.types.ResRet.f32 %414, 2
  %418 = extractvalue %dx.types.ResRet.f32 %414, 3
  %419 = add nuw nsw i32 %403, 48
  %420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.f32 %420, 0
  %422 = extractvalue %dx.types.ResRet.f32 %420, 1
  %423 = extractvalue %dx.types.ResRet.f32 %420, 2
  %424 = extractvalue %dx.types.ResRet.f32 %420, 3
  %425 = add nuw nsw i32 %403, 64
  %426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.f32 %426, 0
  %428 = extractvalue %dx.types.ResRet.f32 %426, 1
  %429 = extractvalue %dx.types.ResRet.f32 %426, 2
  %430 = extractvalue %dx.types.ResRet.f32 %426, 3
  %431 = add nuw nsw i32 %403, 80
  %432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.f32 %432, 0
  %434 = extractvalue %dx.types.ResRet.f32 %432, 1
  %435 = extractvalue %dx.types.ResRet.f32 %432, 2
  %436 = extractvalue %dx.types.ResRet.f32 %432, 3
  %437 = add nuw nsw i32 %403, 96
  %438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.f32 %438, 0
  %440 = extractvalue %dx.types.ResRet.f32 %438, 1
  %441 = extractvalue %dx.types.ResRet.f32 %438, 2
  %442 = extractvalue %dx.types.ResRet.f32 %438, 3
  %443 = add nuw nsw i32 %403, 112
  %444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.f32 %444, 0
  %446 = extractvalue %dx.types.ResRet.f32 %444, 1
  %447 = extractvalue %dx.types.ResRet.f32 %444, 2
  %448 = extractvalue %dx.types.ResRet.f32 %444, 3
  %449 = add nuw nsw i32 %403, 128
  %450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.f32 %450, 0
  %452 = extractvalue %dx.types.ResRet.f32 %450, 1
  %453 = extractvalue %dx.types.ResRet.f32 %450, 2
  %454 = extractvalue %dx.types.ResRet.f32 %450, 3
  %455 = add nuw nsw i32 %403, 144
  %456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.f32 %456, 0
  %458 = extractvalue %dx.types.ResRet.f32 %456, 1
  %459 = extractvalue %dx.types.ResRet.f32 %456, 2
  %460 = extractvalue %dx.types.ResRet.f32 %456, 3
  %461 = add nuw nsw i32 %403, 160
  %462 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.f32 %462, 0
  %464 = extractvalue %dx.types.ResRet.f32 %462, 1
  %465 = extractvalue %dx.types.ResRet.f32 %462, 2
  %466 = extractvalue %dx.types.ResRet.f32 %462, 3
  %467 = bitcast float %412 to i32
  %468 = bitcast float %418 to i32
  %469 = and i32 %468, 1
  %470 = icmp ne i32 %469, 0
  %471 = and i32 %468, 2
  %472 = fmul fast float %417, %141
  %473 = fmul fast float %417, %142
  %474 = fmul fast float %417, %143
  %475 = fadd fast float %472, %112
  %476 = fadd fast float %473, %113
  %477 = fadd fast float %474, %114
  %478 = fmul fast float %475, %421
  %479 = call float @dx.op.tertiary.f32(i32 46, float %476, float %427, float %478)  ; FMad(a,b,c)
  %480 = call float @dx.op.tertiary.f32(i32 46, float %477, float %433, float %479)  ; FMad(a,b,c)
  %481 = fadd fast float %480, %439
  %482 = fmul fast float %475, %422
  %483 = call float @dx.op.tertiary.f32(i32 46, float %476, float %428, float %482)  ; FMad(a,b,c)
  %484 = call float @dx.op.tertiary.f32(i32 46, float %477, float %434, float %483)  ; FMad(a,b,c)
  %485 = fadd fast float %484, %440
  %486 = fmul fast float %475, %423
  %487 = call float @dx.op.tertiary.f32(i32 46, float %476, float %429, float %486)  ; FMad(a,b,c)
  %488 = call float @dx.op.tertiary.f32(i32 46, float %477, float %435, float %487)  ; FMad(a,b,c)
  %489 = fadd fast float %488, %441
  %490 = fmul fast float %475, %424
  %491 = call float @dx.op.tertiary.f32(i32 46, float %476, float %430, float %490)  ; FMad(a,b,c)
  %492 = call float @dx.op.tertiary.f32(i32 46, float %477, float %436, float %491)  ; FMad(a,b,c)
  %493 = fadd fast float %492, %442
  %494 = fdiv fast float %481, %493
  %495 = fdiv fast float %485, %493
  %496 = fdiv fast float %489, %493
  %497 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %496)  ; FMax(a,b)
  %498 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 138)  ; CBufferLoadLegacy(handle,regIndex)
  %499 = extractvalue %dx.types.CBufRet.i32 %498, 2
  %500 = and i32 %499, 128
  %501 = icmp ne i32 %500, 0
  %502 = select i1 %501, float 1.000000e+00, float %293
  %503 = select i1 %501, float 0.000000e+00, float %288
  %504 = select i1 %501, float 0.000000e+00, float %289
  %505 = select i1 %501, float 0.000000e+00, float %290
  %506 = fmul fast float %213, 0x401921FB60000000
  %507 = call float @dx.op.unary.f32(i32 13, float %506)  ; Sin(value)
  %508 = call float @dx.op.unary.f32(i32 12, float %506)  ; Cos(value)
  %509 = fsub fast float -0.000000e+00, %507
  %510 = icmp eq i32 %471, 0
  br i1 %510, label %511, label %582, !dx.controlflow.hints !34

; <label>:511                                     ; preds = %402
  %512 = fmul fast float %508, %416
  %513 = call float @dx.op.tertiary.f32(i32 46, float %507, float %416, float 0.000000e+00)  ; FMad(a,b,c)
  %514 = fmul fast float %416, %509
  %515 = call float @dx.op.tertiary.f32(i32 46, float %508, float %416, float 0.000000e+00)  ; FMad(a,b,c)
  br label %516

; <label>:516                                     ; preds = %516, %511
  %517 = phi float [ 0.000000e+00, %511 ], [ %549, %516 ]
  %518 = phi float [ 0.000000e+00, %511 ], [ %551, %516 ]
  %519 = phi i32 [ 0, %511 ], [ %552, %516 ]
  %520 = mul i32 %519, 2
  %521 = add i32 0, %520
  %522 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %521
  %523 = load float, float* %522, align 4
  %524 = mul i32 %519, 2
  %525 = add i32 1, %524
  %526 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %525
  %527 = load float, float* %526, align 4
  %528 = fmul fast float %512, %523
  %529 = call float @dx.op.tertiary.f32(i32 46, float %527, float %514, float %528)  ; FMad(a,b,c)
  %530 = fmul fast float %523, %513
  %531 = call float @dx.op.tertiary.f32(i32 46, float %527, float %515, float %530)  ; FMad(a,b,c)
  %532 = fadd fast float %529, %494
  %533 = fadd fast float %531, %495
  %534 = fmul fast float %532, %411
  %535 = fmul fast float %533, %411
  %536 = call float @dx.op.binary.f32(i32 35, float %534, float %407)  ; FMax(a,b)
  %537 = call float @dx.op.binary.f32(i32 35, float %535, float %407)  ; FMax(a,b)
  %538 = call float @dx.op.binary.f32(i32 36, float %536, float %408)  ; FMin(a,b)
  %539 = call float @dx.op.binary.f32(i32 36, float %537, float %408)  ; FMin(a,b)
  %540 = fadd fast float %538, %405
  %541 = fadd fast float %539, %406
  %542 = uitofp i32 %467 to float
  %543 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %14, float %540, float %541, float %542, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %544 = extractvalue %dx.types.ResRet.f32 %543, 0
  %545 = fsub fast float %544, %497
  %546 = fsub fast float %545, %415
  %547 = fcmp fast ogt float %546, 0.000000e+00
  %548 = select i1 %547, float 1.000000e+00, float 0.000000e+00
  %549 = fadd fast float %548, %517
  %550 = select i1 %547, float %546, float 0.000000e+00
  %551 = fadd fast float %550, %518
  %552 = add nuw nsw i32 %519, 1
  %553 = icmp eq i32 %552, 8
  br i1 %553, label %554, label %516

; <label>:554                                     ; preds = %516
  %555 = fdiv fast float 1.000000e+00, %549
  %556 = fmul fast float %555, %551
  %557 = fdiv fast float 1.000000e+00, %497
  %558 = fmul fast float %556, %557
  %559 = call float @dx.op.unary.f32(i32 7, float %558)  ; Saturate(value)
  %560 = call float @dx.op.binary.f32(i32 35, float %559, float 0.000000e+00)  ; FMax(a,b)
  %561 = fmul fast float %549, 1.250000e-01
  %562 = call float @dx.op.unary.f32(i32 7, float %561)  ; Saturate(value)
  %563 = fmul fast float %562, 2.000000e+00
  %564 = fadd fast float %563, -1.000000e+00
  %565 = fcmp fast ogt float %564, 0.000000e+00
  %566 = fcmp fast olt float %564, 0.000000e+00
  %567 = zext i1 %565 to i32
  %568 = zext i1 %566 to i32
  %569 = sub nsw i32 %567, %568
  %570 = sitofp i32 %569 to float
  %571 = fmul fast float %570, %564
  %572 = fsub fast float 1.000000e+00, %571
  %573 = fmul fast float %572, %572
  %574 = fmul fast float %573, %572
  %575 = fsub fast float %572, %574
  %576 = fmul fast float %575, %560
  %577 = fsub fast float 1.000000e+00, %574
  %578 = fsub fast float %577, %576
  %579 = fmul fast float %570, 5.000000e-01
  %580 = fmul fast float %579, %578
  %581 = fsub fast float 5.000000e-01, %580
  br label %1198

; <label>:582                                     ; preds = %402
  %583 = fsub fast float 1.000000e+00, %497
  %584 = fmul fast float %583, 5.000000e-01
  %585 = fadd fast float %584, %497
  %586 = call float @dx.op.dot3.f32(i32 55, float %503, float %504, float %505, float %503, float %504, float %505)  ; Dot3(ax,ay,az,bx,by,bz)
  %587 = fsub fast float %475, %296
  %588 = fsub fast float %476, %297
  %589 = fsub fast float %477, %298
  %590 = call float @dx.op.dot3.f32(i32 55, float %587, float %588, float %589, float %503, float %504, float %505)  ; Dot3(ax,ay,az,bx,by,bz)
  %591 = fdiv fast float %590, %586
  %592 = call float @dx.op.binary.f32(i32 35, float %591, float -1.000000e+00)  ; FMax(a,b)
  %593 = call float @dx.op.binary.f32(i32 36, float %592, float 1.000000e+00)  ; FMin(a,b)
  %594 = fmul fast float %593, %503
  %595 = fmul fast float %593, %504
  %596 = fmul fast float %593, %505
  %597 = fsub fast float %587, %594
  %598 = fsub fast float %588, %595
  %599 = fsub fast float %589, %596
  %600 = call float @dx.op.dot3.f32(i32 55, float %597, float %598, float %599, float %597, float %598, float %599)  ; Dot3(ax,ay,az,bx,by,bz)
  %601 = call float @dx.op.unary.f32(i32 25, float %600)  ; Rsqrt(value)
  %602 = fmul fast float %597, %601
  %603 = fmul fast float %598, %601
  %604 = fmul fast float %599, %601
  %605 = call float @dx.op.unary.f32(i32 25, float %586)  ; Rsqrt(value)
  %606 = fmul fast float %605, %503
  %607 = fmul fast float %605, %504
  %608 = fmul fast float %605, %505
  br i1 %470, label %609, label %613, !dx.controlflow.hints !35

; <label>:609                                     ; preds = %582
  %610 = fcmp fast olt float %603, 0x3FE6666660000000
  %611 = select i1 %610, float 1.000000e+00, float 0.000000e+00
  %612 = select i1 %610, float 0.000000e+00, float 1.000000e+00
  br label %613

; <label>:613                                     ; preds = %609, %582
  %614 = phi float [ 0.000000e+00, %609 ], [ %606, %582 ]
  %615 = phi float [ %611, %609 ], [ %607, %582 ]
  %616 = phi float [ %612, %609 ], [ %608, %582 ]
  %617 = fmul fast float %615, %604
  %618 = fmul fast float %616, %603
  %619 = fsub fast float %617, %618
  %620 = fmul fast float %616, %602
  %621 = fmul fast float %614, %604
  %622 = fsub fast float %620, %621
  %623 = fmul fast float %614, %603
  %624 = fmul fast float %615, %602
  %625 = fsub fast float %623, %624
  %626 = call float @dx.op.dot3.f32(i32 55, float %619, float %622, float %625, float %619, float %622, float %625)  ; Dot3(ax,ay,az,bx,by,bz)
  %627 = call float @dx.op.unary.f32(i32 25, float %626)  ; Rsqrt(value)
  %628 = fmul fast float %627, %502
  %629 = fmul fast float %628, %619
  %630 = fmul fast float %628, %622
  %631 = fmul fast float %625, %502
  %632 = fmul fast float %631, %627
  %633 = fmul fast float %494, %445
  %634 = call float @dx.op.tertiary.f32(i32 46, float %495, float %451, float %633)  ; FMad(a,b,c)
  %635 = call float @dx.op.tertiary.f32(i32 46, float %585, float %457, float %634)  ; FMad(a,b,c)
  %636 = fadd fast float %635, %463
  %637 = fmul fast float %494, %446
  %638 = call float @dx.op.tertiary.f32(i32 46, float %495, float %452, float %637)  ; FMad(a,b,c)
  %639 = call float @dx.op.tertiary.f32(i32 46, float %585, float %458, float %638)  ; FMad(a,b,c)
  %640 = fadd fast float %639, %464
  %641 = fmul fast float %494, %447
  %642 = call float @dx.op.tertiary.f32(i32 46, float %495, float %453, float %641)  ; FMad(a,b,c)
  %643 = call float @dx.op.tertiary.f32(i32 46, float %585, float %459, float %642)  ; FMad(a,b,c)
  %644 = fadd fast float %643, %465
  %645 = fmul fast float %494, %448
  %646 = call float @dx.op.tertiary.f32(i32 46, float %495, float %454, float %645)  ; FMad(a,b,c)
  %647 = call float @dx.op.tertiary.f32(i32 46, float %585, float %460, float %646)  ; FMad(a,b,c)
  %648 = fadd fast float %647, %466
  %649 = fdiv fast float 1.000000e+00, %648
  %650 = fmul fast float %649, %636
  %651 = fmul fast float %649, %640
  %652 = fmul fast float %649, %644
  %653 = fsub fast float -0.000000e+00, %602
  %654 = fsub fast float -0.000000e+00, %603
  %655 = fsub fast float -0.000000e+00, %604
  %656 = fsub fast float %296, %629
  %657 = fsub fast float %297, %630
  %658 = fsub fast float %298, %632
  %659 = fsub fast float %650, %656
  %660 = fsub fast float %651, %657
  %661 = fsub fast float %652, %658
  %662 = call float @dx.op.dot3.f32(i32 55, float %659, float %660, float %661, float %659, float %660, float %661)  ; Dot3(ax,ay,az,bx,by,bz)
  %663 = call float @dx.op.unary.f32(i32 25, float %662)  ; Rsqrt(value)
  %664 = fmul fast float %659, %663
  %665 = fmul fast float %660, %663
  %666 = fmul fast float %661, %663
  %667 = fsub fast float %475, %656
  %668 = fsub fast float %476, %657
  %669 = fsub fast float %477, %658
  %670 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %667, float %668, float %669)  ; Dot3(ax,ay,az,bx,by,bz)
  %671 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %664, float %665, float %666)  ; Dot3(ax,ay,az,bx,by,bz)
  %672 = fdiv fast float 1.000000e+00, %671
  %673 = fmul fast float %672, %670
  %674 = fmul fast float %673, %664
  %675 = fmul fast float %673, %665
  %676 = fmul fast float %673, %666
  %677 = fadd fast float %674, %656
  %678 = fadd fast float %675, %657
  %679 = fadd fast float %676, %658
  %680 = fadd fast float %629, %296
  %681 = fadd fast float %630, %297
  %682 = fadd fast float %632, %298
  %683 = fsub fast float %650, %680
  %684 = fsub fast float %651, %681
  %685 = fsub fast float %652, %682
  %686 = call float @dx.op.dot3.f32(i32 55, float %683, float %684, float %685, float %683, float %684, float %685)  ; Dot3(ax,ay,az,bx,by,bz)
  %687 = call float @dx.op.unary.f32(i32 25, float %686)  ; Rsqrt(value)
  %688 = fmul fast float %687, %683
  %689 = fmul fast float %687, %684
  %690 = fmul fast float %687, %685
  %691 = fsub fast float %475, %680
  %692 = fsub fast float %476, %681
  %693 = fsub fast float %477, %682
  %694 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %691, float %692, float %693)  ; Dot3(ax,ay,az,bx,by,bz)
  %695 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %688, float %689, float %690)  ; Dot3(ax,ay,az,bx,by,bz)
  %696 = fdiv fast float 1.000000e+00, %695
  %697 = fmul fast float %696, %694
  %698 = fmul fast float %697, %688
  %699 = fmul fast float %697, %689
  %700 = fmul fast float %697, %690
  %701 = fadd fast float %698, %680
  %702 = fadd fast float %699, %681
  %703 = fadd fast float %700, %682
  %704 = fmul fast float %677, %421
  %705 = call float @dx.op.tertiary.f32(i32 46, float %678, float %427, float %704)  ; FMad(a,b,c)
  %706 = call float @dx.op.tertiary.f32(i32 46, float %679, float %433, float %705)  ; FMad(a,b,c)
  %707 = fadd fast float %706, %439
  %708 = fmul fast float %677, %422
  %709 = call float @dx.op.tertiary.f32(i32 46, float %678, float %428, float %708)  ; FMad(a,b,c)
  %710 = call float @dx.op.tertiary.f32(i32 46, float %679, float %434, float %709)  ; FMad(a,b,c)
  %711 = fadd fast float %710, %440
  %712 = fmul fast float %677, %424
  %713 = call float @dx.op.tertiary.f32(i32 46, float %678, float %430, float %712)  ; FMad(a,b,c)
  %714 = call float @dx.op.tertiary.f32(i32 46, float %679, float %436, float %713)  ; FMad(a,b,c)
  %715 = fadd fast float %714, %442
  %716 = fmul fast float %701, %421
  %717 = call float @dx.op.tertiary.f32(i32 46, float %702, float %427, float %716)  ; FMad(a,b,c)
  %718 = call float @dx.op.tertiary.f32(i32 46, float %703, float %433, float %717)  ; FMad(a,b,c)
  %719 = fadd fast float %718, %439
  %720 = fmul fast float %701, %422
  %721 = call float @dx.op.tertiary.f32(i32 46, float %702, float %428, float %720)  ; FMad(a,b,c)
  %722 = call float @dx.op.tertiary.f32(i32 46, float %703, float %434, float %721)  ; FMad(a,b,c)
  %723 = fadd fast float %722, %440
  %724 = fmul fast float %701, %424
  %725 = call float @dx.op.tertiary.f32(i32 46, float %702, float %430, float %724)  ; FMad(a,b,c)
  %726 = call float @dx.op.tertiary.f32(i32 46, float %703, float %436, float %725)  ; FMad(a,b,c)
  %727 = fadd fast float %726, %442
  %728 = fdiv fast float 1.000000e+00, %715
  %729 = fmul fast float %728, %707
  %730 = fmul fast float %728, %711
  %731 = fdiv fast float 1.000000e+00, %727
  %732 = fmul fast float %731, %719
  %733 = fmul fast float %731, %723
  %734 = fsub fast float %732, %729
  %735 = fsub fast float %733, %730
  %736 = call float @dx.op.dot2.f32(i32 54, float %734, float %735, float %734, float %735)  ; Dot2(ax,ay,bx,by)
  %737 = call float @dx.op.unary.f32(i32 25, float %736)  ; Rsqrt(value)
  %738 = fmul fast float %734, %737
  %739 = fmul fast float %735, %737
  %740 = fmul fast float %734, %734
  %741 = fmul fast float %735, %735
  %742 = fadd fast float %740, %741
  %743 = call float @dx.op.unary.f32(i32 24, float %742)  ; Sqrt(value)
  %744 = fmul fast float %743, 5.000000e-01
  br i1 %470, label %837, label %745, !dx.controlflow.hints !36

; <label>:745                                     ; preds = %613
  %746 = fsub fast float %296, %503
  %747 = fsub fast float %297, %504
  %748 = fsub fast float %298, %505
  %749 = fsub fast float %650, %746
  %750 = fsub fast float %651, %747
  %751 = fsub fast float %652, %748
  %752 = call float @dx.op.dot3.f32(i32 55, float %749, float %750, float %751, float %749, float %750, float %751)  ; Dot3(ax,ay,az,bx,by,bz)
  %753 = call float @dx.op.unary.f32(i32 25, float %752)  ; Rsqrt(value)
  %754 = fmul fast float %753, %749
  %755 = fmul fast float %753, %750
  %756 = fmul fast float %753, %751
  %757 = fsub fast float %475, %746
  %758 = fsub fast float %476, %747
  %759 = fsub fast float %477, %748
  %760 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %757, float %758, float %759)  ; Dot3(ax,ay,az,bx,by,bz)
  %761 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %754, float %755, float %756)  ; Dot3(ax,ay,az,bx,by,bz)
  %762 = fdiv fast float 1.000000e+00, %761
  %763 = fmul fast float %762, %760
  %764 = fmul fast float %763, %754
  %765 = fmul fast float %763, %755
  %766 = fmul fast float %763, %756
  %767 = fadd fast float %764, %746
  %768 = fadd fast float %765, %747
  %769 = fadd fast float %766, %748
  %770 = fadd fast float %503, %296
  %771 = fadd fast float %504, %297
  %772 = fadd fast float %505, %298
  %773 = fsub fast float %650, %770
  %774 = fsub fast float %651, %771
  %775 = fsub fast float %652, %772
  %776 = call float @dx.op.dot3.f32(i32 55, float %773, float %774, float %775, float %773, float %774, float %775)  ; Dot3(ax,ay,az,bx,by,bz)
  %777 = call float @dx.op.unary.f32(i32 25, float %776)  ; Rsqrt(value)
  %778 = fmul fast float %777, %773
  %779 = fmul fast float %777, %774
  %780 = fmul fast float %777, %775
  %781 = fsub fast float %475, %770
  %782 = fsub fast float %476, %771
  %783 = fsub fast float %477, %772
  %784 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %781, float %782, float %783)  ; Dot3(ax,ay,az,bx,by,bz)
  %785 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %778, float %779, float %780)  ; Dot3(ax,ay,az,bx,by,bz)
  %786 = fdiv fast float 1.000000e+00, %785
  %787 = fmul fast float %786, %784
  %788 = fmul fast float %787, %778
  %789 = fmul fast float %787, %779
  %790 = fmul fast float %787, %780
  %791 = fadd fast float %788, %770
  %792 = fadd fast float %789, %771
  %793 = fadd fast float %790, %772
  %794 = fmul fast float %767, %421
  %795 = call float @dx.op.tertiary.f32(i32 46, float %768, float %427, float %794)  ; FMad(a,b,c)
  %796 = call float @dx.op.tertiary.f32(i32 46, float %769, float %433, float %795)  ; FMad(a,b,c)
  %797 = fadd fast float %796, %439
  %798 = fmul fast float %767, %422
  %799 = call float @dx.op.tertiary.f32(i32 46, float %768, float %428, float %798)  ; FMad(a,b,c)
  %800 = call float @dx.op.tertiary.f32(i32 46, float %769, float %434, float %799)  ; FMad(a,b,c)
  %801 = fadd fast float %800, %440
  %802 = fmul fast float %767, %424
  %803 = call float @dx.op.tertiary.f32(i32 46, float %768, float %430, float %802)  ; FMad(a,b,c)
  %804 = call float @dx.op.tertiary.f32(i32 46, float %769, float %436, float %803)  ; FMad(a,b,c)
  %805 = fadd fast float %804, %442
  %806 = fmul fast float %791, %421
  %807 = call float @dx.op.tertiary.f32(i32 46, float %792, float %427, float %806)  ; FMad(a,b,c)
  %808 = call float @dx.op.tertiary.f32(i32 46, float %793, float %433, float %807)  ; FMad(a,b,c)
  %809 = fadd fast float %808, %439
  %810 = fmul fast float %791, %422
  %811 = call float @dx.op.tertiary.f32(i32 46, float %792, float %428, float %810)  ; FMad(a,b,c)
  %812 = call float @dx.op.tertiary.f32(i32 46, float %793, float %434, float %811)  ; FMad(a,b,c)
  %813 = fadd fast float %812, %440
  %814 = fmul fast float %791, %424
  %815 = call float @dx.op.tertiary.f32(i32 46, float %792, float %430, float %814)  ; FMad(a,b,c)
  %816 = call float @dx.op.tertiary.f32(i32 46, float %793, float %436, float %815)  ; FMad(a,b,c)
  %817 = fadd fast float %816, %442
  %818 = fdiv fast float 1.000000e+00, %805
  %819 = fmul fast float %818, %797
  %820 = fmul fast float %818, %801
  %821 = fdiv fast float 1.000000e+00, %817
  %822 = fmul fast float %821, %809
  %823 = fmul fast float %821, %813
  %824 = fsub fast float %822, %819
  %825 = fsub fast float %823, %820
  %826 = call float @dx.op.dot2.f32(i32 54, float %824, float %825, float %824, float %825)  ; Dot2(ax,ay,bx,by)
  %827 = call float @dx.op.unary.f32(i32 25, float %826)  ; Rsqrt(value)
  %828 = fmul fast float %824, %827
  %829 = fmul fast float %825, %827
  %830 = fmul fast float %824, %824
  %831 = fmul fast float %825, %825
  %832 = fadd fast float %830, %831
  %833 = call float @dx.op.unary.f32(i32 24, float %832)  ; Sqrt(value)
  %834 = fmul fast float %833, 5.000000e-01
  %835 = fcmp fast olt float %834, %744
  br i1 %835, label %836, label %837, !dx.controlflow.hints !37

; <label>:836                                     ; preds = %745
  br label %837

; <label>:837                                     ; preds = %836, %745, %613
  %838 = phi float [ %744, %613 ], [ %834, %836 ], [ %744, %745 ]
  %839 = phi float [ %744, %613 ], [ %744, %836 ], [ %834, %745 ]
  %840 = phi float [ %738, %613 ], [ %738, %836 ], [ %828, %745 ]
  %841 = phi float [ %739, %613 ], [ %739, %836 ], [ %829, %745 ]
  %842 = fmul fast float %838, %416
  %843 = fdiv fast float %842, %839
  %844 = fsub fast float %416, %843
  %845 = fmul fast float %840, %840
  %846 = fmul fast float %845, %844
  %847 = fadd fast float %846, %843
  %848 = fmul fast float %841, %840
  %849 = fmul fast float %848, %844
  %850 = fmul fast float %841, %841
  %851 = fmul fast float %850, %844
  %852 = fadd fast float %851, %843
  %853 = fmul fast float %847, %508
  %854 = call float @dx.op.tertiary.f32(i32 46, float %507, float %849, float %853)  ; FMad(a,b,c)
  %855 = fmul fast float %849, %508
  %856 = call float @dx.op.tertiary.f32(i32 46, float %507, float %852, float %855)  ; FMad(a,b,c)
  %857 = fmul fast float %847, %509
  %858 = call float @dx.op.tertiary.f32(i32 46, float %508, float %849, float %857)  ; FMad(a,b,c)
  %859 = fmul fast float %849, %509
  %860 = call float @dx.op.tertiary.f32(i32 46, float %508, float %852, float %859)  ; FMad(a,b,c)
  br label %861

; <label>:861                                     ; preds = %899, %837
  %862 = phi float [ 0.000000e+00, %837 ], [ %900, %899 ]
  %863 = phi float [ 0.000000e+00, %837 ], [ %901, %899 ]
  %864 = phi float [ 0.000000e+00, %837 ], [ %902, %899 ]
  %865 = phi float [ 0.000000e+00, %837 ], [ %903, %899 ]
  %866 = phi i32 [ 0, %837 ], [ %904, %899 ]
  %867 = mul i32 %866, 2
  %868 = add i32 0, %867
  %869 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %868
  %870 = load float, float* %869, align 4
  %871 = mul i32 %866, 2
  %872 = add i32 1, %871
  %873 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %872
  %874 = load float, float* %873, align 4
  %875 = fmul fast float %870, %854
  %876 = call float @dx.op.tertiary.f32(i32 46, float %874, float %858, float %875)  ; FMad(a,b,c)
  %877 = fmul fast float %870, %856
  %878 = call float @dx.op.tertiary.f32(i32 46, float %874, float %860, float %877)  ; FMad(a,b,c)
  %879 = fadd fast float %876, %494
  %880 = fadd fast float %878, %495
  %881 = fmul fast float %879, %411
  %882 = fmul fast float %880, %411
  %883 = call float @dx.op.binary.f32(i32 35, float %881, float %407)  ; FMax(a,b)
  %884 = call float @dx.op.binary.f32(i32 35, float %882, float %407)  ; FMax(a,b)
  %885 = call float @dx.op.binary.f32(i32 36, float %883, float %408)  ; FMin(a,b)
  %886 = call float @dx.op.binary.f32(i32 36, float %884, float %408)  ; FMin(a,b)
  %887 = fadd fast float %885, %405
  %888 = fadd fast float %886, %406
  %889 = uitofp i32 %467 to float
  %890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %14, float %887, float %888, float %889, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %891 = extractvalue %dx.types.ResRet.f32 %890, 0
  %892 = fadd fast float %497, %415
  %893 = fcmp fast olt float %892, %891
  br i1 %893, label %894, label %899, !dx.controlflow.hints !38

; <label>:894                                     ; preds = %861
  %895 = fadd fast float %891, %864
  %896 = fadd fast float %876, %862
  %897 = fadd fast float %878, %863
  %898 = fadd fast float %865, 1.000000e+00
  br label %899

; <label>:899                                     ; preds = %894, %861
  %900 = phi float [ %896, %894 ], [ %862, %861 ]
  %901 = phi float [ %897, %894 ], [ %863, %861 ]
  %902 = phi float [ %895, %894 ], [ %864, %861 ]
  %903 = phi float [ %898, %894 ], [ %865, %861 ]
  %904 = add nuw nsw i32 %866, 1
  %905 = icmp eq i32 %904, 8
  br i1 %905, label %906, label %861

; <label>:906                                     ; preds = %899
  %907 = fdiv fast float 1.000000e+00, %903
  %908 = fcmp fast oeq float %903, 0.000000e+00
  %909 = fmul fast float %907, %902
  %910 = select i1 %908, float -1.000000e+00, float %909
  %911 = fcmp fast olt float %910, 0.000000e+00
  br i1 %911, label %1198, label %912, !dx.controlflow.hints !39

; <label>:912                                     ; preds = %906
  %913 = fmul fast float %907, %901
  %914 = select i1 %908, float 0.000000e+00, float %913
  %915 = fmul fast float %907, %900
  %916 = select i1 %908, float 0.000000e+00, float %915
  %917 = fadd fast float %916, %494
  %918 = fadd fast float %914, %495
  br i1 %470, label %919, label %923, !dx.controlflow.hints !35

; <label>:919                                     ; preds = %912
  %920 = fcmp fast olt float %603, 0x3FE6666660000000
  %921 = select i1 %920, float 1.000000e+00, float 0.000000e+00
  %922 = select i1 %920, float 0.000000e+00, float 1.000000e+00
  br label %923

; <label>:923                                     ; preds = %919, %912
  %924 = phi float [ 0.000000e+00, %919 ], [ %606, %912 ]
  %925 = phi float [ %921, %919 ], [ %607, %912 ]
  %926 = phi float [ %922, %919 ], [ %608, %912 ]
  %927 = fmul fast float %925, %604
  %928 = fmul fast float %926, %603
  %929 = fsub fast float %927, %928
  %930 = fmul fast float %926, %602
  %931 = fmul fast float %924, %604
  %932 = fsub fast float %930, %931
  %933 = fmul fast float %924, %603
  %934 = fmul fast float %925, %602
  %935 = fsub fast float %933, %934
  %936 = call float @dx.op.dot3.f32(i32 55, float %929, float %932, float %935, float %929, float %932, float %935)  ; Dot3(ax,ay,az,bx,by,bz)
  %937 = call float @dx.op.unary.f32(i32 25, float %936)  ; Rsqrt(value)
  %938 = fmul fast float %937, %502
  %939 = fmul fast float %938, %929
  %940 = fmul fast float %938, %932
  %941 = fmul fast float %935, %502
  %942 = fmul fast float %941, %937
  %943 = fmul fast float %917, %445
  %944 = call float @dx.op.tertiary.f32(i32 46, float %918, float %451, float %943)  ; FMad(a,b,c)
  %945 = call float @dx.op.tertiary.f32(i32 46, float %910, float %457, float %944)  ; FMad(a,b,c)
  %946 = fadd fast float %945, %463
  %947 = fmul fast float %917, %446
  %948 = call float @dx.op.tertiary.f32(i32 46, float %918, float %452, float %947)  ; FMad(a,b,c)
  %949 = call float @dx.op.tertiary.f32(i32 46, float %910, float %458, float %948)  ; FMad(a,b,c)
  %950 = fadd fast float %949, %464
  %951 = fmul fast float %917, %447
  %952 = call float @dx.op.tertiary.f32(i32 46, float %918, float %453, float %951)  ; FMad(a,b,c)
  %953 = call float @dx.op.tertiary.f32(i32 46, float %910, float %459, float %952)  ; FMad(a,b,c)
  %954 = fadd fast float %953, %465
  %955 = fmul fast float %917, %448
  %956 = call float @dx.op.tertiary.f32(i32 46, float %918, float %454, float %955)  ; FMad(a,b,c)
  %957 = call float @dx.op.tertiary.f32(i32 46, float %910, float %460, float %956)  ; FMad(a,b,c)
  %958 = fadd fast float %957, %466
  %959 = fdiv fast float 1.000000e+00, %958
  %960 = fmul fast float %959, %946
  %961 = fmul fast float %959, %950
  %962 = fmul fast float %959, %954
  %963 = fsub fast float %296, %939
  %964 = fsub fast float %297, %940
  %965 = fsub fast float %298, %942
  %966 = fsub fast float %960, %963
  %967 = fsub fast float %961, %964
  %968 = fsub fast float %962, %965
  %969 = call float @dx.op.dot3.f32(i32 55, float %966, float %967, float %968, float %966, float %967, float %968)  ; Dot3(ax,ay,az,bx,by,bz)
  %970 = call float @dx.op.unary.f32(i32 25, float %969)  ; Rsqrt(value)
  %971 = fmul fast float %966, %970
  %972 = fmul fast float %967, %970
  %973 = fmul fast float %968, %970
  %974 = fsub fast float %475, %963
  %975 = fsub fast float %476, %964
  %976 = fsub fast float %477, %965
  %977 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %974, float %975, float %976)  ; Dot3(ax,ay,az,bx,by,bz)
  %978 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %971, float %972, float %973)  ; Dot3(ax,ay,az,bx,by,bz)
  %979 = fdiv fast float 1.000000e+00, %978
  %980 = fmul fast float %979, %977
  %981 = fmul fast float %980, %971
  %982 = fmul fast float %980, %972
  %983 = fmul fast float %980, %973
  %984 = fadd fast float %981, %963
  %985 = fadd fast float %982, %964
  %986 = fadd fast float %983, %965
  %987 = fadd fast float %939, %296
  %988 = fadd fast float %940, %297
  %989 = fadd fast float %942, %298
  %990 = fsub fast float %960, %987
  %991 = fsub fast float %961, %988
  %992 = fsub fast float %962, %989
  %993 = call float @dx.op.dot3.f32(i32 55, float %990, float %991, float %992, float %990, float %991, float %992)  ; Dot3(ax,ay,az,bx,by,bz)
  %994 = call float @dx.op.unary.f32(i32 25, float %993)  ; Rsqrt(value)
  %995 = fmul fast float %994, %990
  %996 = fmul fast float %994, %991
  %997 = fmul fast float %994, %992
  %998 = fsub fast float %475, %987
  %999 = fsub fast float %476, %988
  %1000 = fsub fast float %477, %989
  %1001 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %998, float %999, float %1000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1002 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %995, float %996, float %997)  ; Dot3(ax,ay,az,bx,by,bz)
  %1003 = fdiv fast float 1.000000e+00, %1002
  %1004 = fmul fast float %1003, %1001
  %1005 = fmul fast float %1004, %995
  %1006 = fmul fast float %1004, %996
  %1007 = fmul fast float %1004, %997
  %1008 = fadd fast float %1005, %987
  %1009 = fadd fast float %1006, %988
  %1010 = fadd fast float %1007, %989
  %1011 = fmul fast float %984, %421
  %1012 = call float @dx.op.tertiary.f32(i32 46, float %985, float %427, float %1011)  ; FMad(a,b,c)
  %1013 = call float @dx.op.tertiary.f32(i32 46, float %986, float %433, float %1012)  ; FMad(a,b,c)
  %1014 = fadd fast float %1013, %439
  %1015 = fmul fast float %984, %422
  %1016 = call float @dx.op.tertiary.f32(i32 46, float %985, float %428, float %1015)  ; FMad(a,b,c)
  %1017 = call float @dx.op.tertiary.f32(i32 46, float %986, float %434, float %1016)  ; FMad(a,b,c)
  %1018 = fadd fast float %1017, %440
  %1019 = fmul fast float %984, %424
  %1020 = call float @dx.op.tertiary.f32(i32 46, float %985, float %430, float %1019)  ; FMad(a,b,c)
  %1021 = call float @dx.op.tertiary.f32(i32 46, float %986, float %436, float %1020)  ; FMad(a,b,c)
  %1022 = fadd fast float %1021, %442
  %1023 = fmul fast float %1008, %421
  %1024 = call float @dx.op.tertiary.f32(i32 46, float %1009, float %427, float %1023)  ; FMad(a,b,c)
  %1025 = call float @dx.op.tertiary.f32(i32 46, float %1010, float %433, float %1024)  ; FMad(a,b,c)
  %1026 = fadd fast float %1025, %439
  %1027 = fmul fast float %1008, %422
  %1028 = call float @dx.op.tertiary.f32(i32 46, float %1009, float %428, float %1027)  ; FMad(a,b,c)
  %1029 = call float @dx.op.tertiary.f32(i32 46, float %1010, float %434, float %1028)  ; FMad(a,b,c)
  %1030 = fadd fast float %1029, %440
  %1031 = fmul fast float %1008, %424
  %1032 = call float @dx.op.tertiary.f32(i32 46, float %1009, float %430, float %1031)  ; FMad(a,b,c)
  %1033 = call float @dx.op.tertiary.f32(i32 46, float %1010, float %436, float %1032)  ; FMad(a,b,c)
  %1034 = fadd fast float %1033, %442
  %1035 = fdiv fast float 1.000000e+00, %1022
  %1036 = fmul fast float %1035, %1014
  %1037 = fmul fast float %1035, %1018
  %1038 = fdiv fast float 1.000000e+00, %1034
  %1039 = fmul fast float %1038, %1026
  %1040 = fmul fast float %1038, %1030
  %1041 = fsub fast float %1039, %1036
  %1042 = fsub fast float %1040, %1037
  %1043 = call float @dx.op.dot2.f32(i32 54, float %1041, float %1042, float %1041, float %1042)  ; Dot2(ax,ay,bx,by)
  %1044 = call float @dx.op.unary.f32(i32 25, float %1043)  ; Rsqrt(value)
  %1045 = fmul fast float %1041, %1044
  %1046 = fmul fast float %1042, %1044
  %1047 = fmul fast float %1041, %1041
  %1048 = fmul fast float %1042, %1042
  %1049 = fadd fast float %1047, %1048
  %1050 = call float @dx.op.unary.f32(i32 24, float %1049)  ; Sqrt(value)
  %1051 = fmul fast float %1050, 5.000000e-01
  br i1 %470, label %1144, label %1052, !dx.controlflow.hints !36

; <label>:1052                                    ; preds = %923
  %1053 = fsub fast float %296, %503
  %1054 = fsub fast float %297, %504
  %1055 = fsub fast float %298, %505
  %1056 = fsub fast float %960, %1053
  %1057 = fsub fast float %961, %1054
  %1058 = fsub fast float %962, %1055
  %1059 = call float @dx.op.dot3.f32(i32 55, float %1056, float %1057, float %1058, float %1056, float %1057, float %1058)  ; Dot3(ax,ay,az,bx,by,bz)
  %1060 = call float @dx.op.unary.f32(i32 25, float %1059)  ; Rsqrt(value)
  %1061 = fmul fast float %1060, %1056
  %1062 = fmul fast float %1060, %1057
  %1063 = fmul fast float %1060, %1058
  %1064 = fsub fast float %475, %1053
  %1065 = fsub fast float %476, %1054
  %1066 = fsub fast float %477, %1055
  %1067 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %1064, float %1065, float %1066)  ; Dot3(ax,ay,az,bx,by,bz)
  %1068 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %1061, float %1062, float %1063)  ; Dot3(ax,ay,az,bx,by,bz)
  %1069 = fdiv fast float 1.000000e+00, %1068
  %1070 = fmul fast float %1069, %1067
  %1071 = fmul fast float %1070, %1061
  %1072 = fmul fast float %1070, %1062
  %1073 = fmul fast float %1070, %1063
  %1074 = fadd fast float %1071, %1053
  %1075 = fadd fast float %1072, %1054
  %1076 = fadd fast float %1073, %1055
  %1077 = fadd fast float %503, %296
  %1078 = fadd fast float %504, %297
  %1079 = fadd fast float %505, %298
  %1080 = fsub fast float %960, %1077
  %1081 = fsub fast float %961, %1078
  %1082 = fsub fast float %962, %1079
  %1083 = call float @dx.op.dot3.f32(i32 55, float %1080, float %1081, float %1082, float %1080, float %1081, float %1082)  ; Dot3(ax,ay,az,bx,by,bz)
  %1084 = call float @dx.op.unary.f32(i32 25, float %1083)  ; Rsqrt(value)
  %1085 = fmul fast float %1084, %1080
  %1086 = fmul fast float %1084, %1081
  %1087 = fmul fast float %1084, %1082
  %1088 = fsub fast float %475, %1077
  %1089 = fsub fast float %476, %1078
  %1090 = fsub fast float %477, %1079
  %1091 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %1088, float %1089, float %1090)  ; Dot3(ax,ay,az,bx,by,bz)
  %1092 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %1085, float %1086, float %1087)  ; Dot3(ax,ay,az,bx,by,bz)
  %1093 = fdiv fast float 1.000000e+00, %1092
  %1094 = fmul fast float %1093, %1091
  %1095 = fmul fast float %1094, %1085
  %1096 = fmul fast float %1094, %1086
  %1097 = fmul fast float %1094, %1087
  %1098 = fadd fast float %1095, %1077
  %1099 = fadd fast float %1096, %1078
  %1100 = fadd fast float %1097, %1079
  %1101 = fmul fast float %1074, %421
  %1102 = call float @dx.op.tertiary.f32(i32 46, float %1075, float %427, float %1101)  ; FMad(a,b,c)
  %1103 = call float @dx.op.tertiary.f32(i32 46, float %1076, float %433, float %1102)  ; FMad(a,b,c)
  %1104 = fadd fast float %1103, %439
  %1105 = fmul fast float %1074, %422
  %1106 = call float @dx.op.tertiary.f32(i32 46, float %1075, float %428, float %1105)  ; FMad(a,b,c)
  %1107 = call float @dx.op.tertiary.f32(i32 46, float %1076, float %434, float %1106)  ; FMad(a,b,c)
  %1108 = fadd fast float %1107, %440
  %1109 = fmul fast float %1074, %424
  %1110 = call float @dx.op.tertiary.f32(i32 46, float %1075, float %430, float %1109)  ; FMad(a,b,c)
  %1111 = call float @dx.op.tertiary.f32(i32 46, float %1076, float %436, float %1110)  ; FMad(a,b,c)
  %1112 = fadd fast float %1111, %442
  %1113 = fmul fast float %1098, %421
  %1114 = call float @dx.op.tertiary.f32(i32 46, float %1099, float %427, float %1113)  ; FMad(a,b,c)
  %1115 = call float @dx.op.tertiary.f32(i32 46, float %1100, float %433, float %1114)  ; FMad(a,b,c)
  %1116 = fadd fast float %1115, %439
  %1117 = fmul fast float %1098, %422
  %1118 = call float @dx.op.tertiary.f32(i32 46, float %1099, float %428, float %1117)  ; FMad(a,b,c)
  %1119 = call float @dx.op.tertiary.f32(i32 46, float %1100, float %434, float %1118)  ; FMad(a,b,c)
  %1120 = fadd fast float %1119, %440
  %1121 = fmul fast float %1098, %424
  %1122 = call float @dx.op.tertiary.f32(i32 46, float %1099, float %430, float %1121)  ; FMad(a,b,c)
  %1123 = call float @dx.op.tertiary.f32(i32 46, float %1100, float %436, float %1122)  ; FMad(a,b,c)
  %1124 = fadd fast float %1123, %442
  %1125 = fdiv fast float 1.000000e+00, %1112
  %1126 = fmul fast float %1125, %1104
  %1127 = fmul fast float %1125, %1108
  %1128 = fdiv fast float 1.000000e+00, %1124
  %1129 = fmul fast float %1128, %1116
  %1130 = fmul fast float %1128, %1120
  %1131 = fsub fast float %1129, %1126
  %1132 = fsub fast float %1130, %1127
  %1133 = call float @dx.op.dot2.f32(i32 54, float %1131, float %1132, float %1131, float %1132)  ; Dot2(ax,ay,bx,by)
  %1134 = call float @dx.op.unary.f32(i32 25, float %1133)  ; Rsqrt(value)
  %1135 = fmul fast float %1131, %1134
  %1136 = fmul fast float %1132, %1134
  %1137 = fmul fast float %1131, %1131
  %1138 = fmul fast float %1132, %1132
  %1139 = fadd fast float %1137, %1138
  %1140 = call float @dx.op.unary.f32(i32 24, float %1139)  ; Sqrt(value)
  %1141 = fmul fast float %1140, 5.000000e-01
  %1142 = fcmp fast olt float %1141, %1051
  br i1 %1142, label %1143, label %1144, !dx.controlflow.hints !37

; <label>:1143                                    ; preds = %1052
  br label %1144

; <label>:1144                                    ; preds = %1143, %1052, %923
  %1145 = phi float [ %1051, %923 ], [ %1141, %1143 ], [ %1051, %1052 ]
  %1146 = phi float [ %1051, %923 ], [ %1051, %1143 ], [ %1141, %1052 ]
  %1147 = phi float [ %1045, %923 ], [ %1045, %1143 ], [ %1135, %1052 ]
  %1148 = phi float [ %1046, %923 ], [ %1046, %1143 ], [ %1136, %1052 ]
  %1149 = fsub fast float %1146, %1145
  %1150 = fmul fast float %1147, %1147
  %1151 = fmul fast float %1150, %1149
  %1152 = fadd fast float %1151, %1145
  %1153 = fmul fast float %1147, %1149
  %1154 = fmul fast float %1153, %1148
  %1155 = fmul fast float %1148, %1148
  %1156 = fmul fast float %1155, %1149
  %1157 = fadd fast float %1156, %1145
  %1158 = fmul fast float %1152, %508
  %1159 = call float @dx.op.tertiary.f32(i32 46, float %507, float %1154, float %1158)  ; FMad(a,b,c)
  %1160 = fmul fast float %1154, %508
  %1161 = call float @dx.op.tertiary.f32(i32 46, float %507, float %1157, float %1160)  ; FMad(a,b,c)
  %1162 = fmul fast float %1152, %509
  %1163 = call float @dx.op.tertiary.f32(i32 46, float %508, float %1154, float %1162)  ; FMad(a,b,c)
  %1164 = fmul fast float %1154, %509
  %1165 = call float @dx.op.tertiary.f32(i32 46, float %508, float %1157, float %1164)  ; FMad(a,b,c)
  br label %1166

; <label>:1166                                    ; preds = %1166, %1144
  %1167 = phi float [ 0.000000e+00, %1144 ], [ %1193, %1166 ]
  %1168 = phi i32 [ 0, %1144 ], [ %1194, %1166 ]
  %1169 = mul i32 %1168, 2
  %1170 = add i32 0, %1169
  %1171 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1170
  %1172 = load float, float* %1171, align 4
  %1173 = mul i32 %1168, 2
  %1174 = add i32 1, %1173
  %1175 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1174
  %1176 = load float, float* %1175, align 4
  %1177 = fmul fast float %1172, %1159
  %1178 = call float @dx.op.tertiary.f32(i32 46, float %1176, float %1163, float %1177)  ; FMad(a,b,c)
  %1179 = fmul fast float %1172, %1161
  %1180 = call float @dx.op.tertiary.f32(i32 46, float %1176, float %1165, float %1179)  ; FMad(a,b,c)
  %1181 = fadd fast float %1178, %494
  %1182 = fadd fast float %1180, %495
  %1183 = fmul fast float %1181, %411
  %1184 = fmul fast float %1182, %411
  %1185 = call float @dx.op.binary.f32(i32 35, float %1183, float %407)  ; FMax(a,b)
  %1186 = call float @dx.op.binary.f32(i32 35, float %1184, float %407)  ; FMax(a,b)
  %1187 = call float @dx.op.binary.f32(i32 36, float %1185, float %408)  ; FMin(a,b)
  %1188 = call float @dx.op.binary.f32(i32 36, float %1186, float %408)  ; FMin(a,b)
  %1189 = fadd fast float %1187, %405
  %1190 = fadd fast float %1188, %406
  %1191 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %15, float %1189, float %1190, float %889, float undef, i32 0, i32 0, i32 undef, float %892)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1192 = extractvalue %dx.types.ResRet.f32 %1191, 0
  %1193 = fadd fast float %1192, %1167
  %1194 = add nuw nsw i32 %1168, 1
  %1195 = icmp eq i32 %1194, 8
  br i1 %1195, label %1196, label %1166

; <label>:1196                                    ; preds = %1166
  %1197 = fmul fast float %1193, 1.250000e-01
  br label %1198

; <label>:1198                                    ; preds = %1196, %906, %554
  %1199 = phi float [ %581, %554 ], [ %1197, %1196 ], [ 1.000000e+00, %906 ]
  %1200 = fcmp fast ogt float %1199, 0.000000e+00
  %1201 = xor i1 %50, true
  %1202 = and i1 %1200, %1201
  %1203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1204 = extractvalue %dx.types.CBufRet.f32 %1203, 1
  %1205 = fcmp fast olt float %1204, 0.000000e+00
  %1206 = and i1 %1202, %1205
  br i1 %1206, label %1207, label %1318, !dx.controlflow.hints !40

; <label>:1207                                    ; preds = %1198
  %1208 = fadd fast float %494, %407
  %1209 = fadd fast float %495, %407
  %1210 = fadd fast float %497, %415
  %1211 = fmul fast float %494, %445
  %1212 = call float @dx.op.tertiary.f32(i32 46, float %495, float %451, float %1211)  ; FMad(a,b,c)
  %1213 = call float @dx.op.tertiary.f32(i32 46, float %497, float %457, float %1212)  ; FMad(a,b,c)
  %1214 = fadd fast float %1213, %463
  %1215 = fmul fast float %494, %446
  %1216 = call float @dx.op.tertiary.f32(i32 46, float %495, float %452, float %1215)  ; FMad(a,b,c)
  %1217 = call float @dx.op.tertiary.f32(i32 46, float %497, float %458, float %1216)  ; FMad(a,b,c)
  %1218 = fadd fast float %1217, %464
  %1219 = fmul fast float %494, %447
  %1220 = call float @dx.op.tertiary.f32(i32 46, float %495, float %453, float %1219)  ; FMad(a,b,c)
  %1221 = call float @dx.op.tertiary.f32(i32 46, float %497, float %459, float %1220)  ; FMad(a,b,c)
  %1222 = fadd fast float %1221, %465
  %1223 = fmul fast float %494, %448
  %1224 = call float @dx.op.tertiary.f32(i32 46, float %495, float %454, float %1223)  ; FMad(a,b,c)
  %1225 = call float @dx.op.tertiary.f32(i32 46, float %497, float %460, float %1224)  ; FMad(a,b,c)
  %1226 = fadd fast float %1225, %466
  %1227 = fmul fast float %1208, %445
  %1228 = call float @dx.op.tertiary.f32(i32 46, float %1209, float %451, float %1227)  ; FMad(a,b,c)
  %1229 = call float @dx.op.tertiary.f32(i32 46, float %1210, float %457, float %1228)  ; FMad(a,b,c)
  %1230 = fadd fast float %1229, %463
  %1231 = fmul fast float %1208, %446
  %1232 = call float @dx.op.tertiary.f32(i32 46, float %1209, float %452, float %1231)  ; FMad(a,b,c)
  %1233 = call float @dx.op.tertiary.f32(i32 46, float %1210, float %458, float %1232)  ; FMad(a,b,c)
  %1234 = fadd fast float %1233, %464
  %1235 = fmul fast float %1208, %447
  %1236 = call float @dx.op.tertiary.f32(i32 46, float %1209, float %453, float %1235)  ; FMad(a,b,c)
  %1237 = call float @dx.op.tertiary.f32(i32 46, float %1210, float %459, float %1236)  ; FMad(a,b,c)
  %1238 = fadd fast float %1237, %465
  %1239 = fmul fast float %1208, %448
  %1240 = call float @dx.op.tertiary.f32(i32 46, float %1209, float %454, float %1239)  ; FMad(a,b,c)
  %1241 = call float @dx.op.tertiary.f32(i32 46, float %1210, float %460, float %1240)  ; FMad(a,b,c)
  %1242 = fadd fast float %1241, %466
  %1243 = fdiv fast float 1.000000e+00, %1226
  %1244 = fmul fast float %1243, %1214
  %1245 = fmul fast float %1243, %1218
  %1246 = fmul fast float %1243, %1222
  %1247 = fdiv fast float 1.000000e+00, %1242
  %1248 = fmul fast float %1247, %1230
  %1249 = fmul fast float %1247, %1234
  %1250 = fmul fast float %1247, %1238
  %1251 = fsub fast float %1244, %1248
  %1252 = fsub fast float %1245, %1249
  %1253 = fsub fast float %1246, %1250
  %1254 = fmul fast float %1251, %1251
  %1255 = fmul fast float %1252, %1252
  %1256 = fadd fast float %1254, %1255
  %1257 = fmul fast float %1253, %1253
  %1258 = fadd fast float %1256, %1257
  %1259 = call float @dx.op.unary.f32(i32 24, float %1258)  ; Sqrt(value)
  %1260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1261 = extractvalue %dx.types.CBufRet.f32 %1260, 0
  %1262 = extractvalue %dx.types.CBufRet.f32 %1260, 1
  %1263 = extractvalue %dx.types.CBufRet.f32 %1260, 2
  %1264 = extractvalue %dx.types.CBufRet.f32 %1260, 3
  %1265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1266 = extractvalue %dx.types.CBufRet.f32 %1265, 0
  %1267 = extractvalue %dx.types.CBufRet.f32 %1265, 1
  %1268 = extractvalue %dx.types.CBufRet.f32 %1265, 2
  %1269 = extractvalue %dx.types.CBufRet.f32 %1265, 3
  %1270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1271 = extractvalue %dx.types.CBufRet.f32 %1270, 0
  %1272 = extractvalue %dx.types.CBufRet.f32 %1270, 1
  %1273 = extractvalue %dx.types.CBufRet.f32 %1270, 2
  %1274 = extractvalue %dx.types.CBufRet.f32 %1270, 3
  %1275 = fmul fast float %1261, %1244
  %1276 = call float @dx.op.tertiary.f32(i32 46, float %1245, float %1262, float %1275)  ; FMad(a,b,c)
  %1277 = call float @dx.op.tertiary.f32(i32 46, float %1246, float %1263, float %1276)  ; FMad(a,b,c)
  %1278 = call float @dx.op.tertiary.f32(i32 46, float %1226, float %1264, float %1277)  ; FMad(a,b,c)
  %1279 = fmul fast float %1266, %1244
  %1280 = call float @dx.op.tertiary.f32(i32 46, float %1245, float %1267, float %1279)  ; FMad(a,b,c)
  %1281 = call float @dx.op.tertiary.f32(i32 46, float %1246, float %1268, float %1280)  ; FMad(a,b,c)
  %1282 = call float @dx.op.tertiary.f32(i32 46, float %1226, float %1269, float %1281)  ; FMad(a,b,c)
  %1283 = fmul fast float %1271, %1244
  %1284 = call float @dx.op.tertiary.f32(i32 46, float %1245, float %1272, float %1283)  ; FMad(a,b,c)
  %1285 = call float @dx.op.tertiary.f32(i32 46, float %1246, float %1273, float %1284)  ; FMad(a,b,c)
  %1286 = call float @dx.op.tertiary.f32(i32 46, float %1226, float %1274, float %1285)  ; FMad(a,b,c)
  %1287 = fmul fast float %1261, %1248
  %1288 = call float @dx.op.tertiary.f32(i32 46, float %1249, float %1262, float %1287)  ; FMad(a,b,c)
  %1289 = call float @dx.op.tertiary.f32(i32 46, float %1250, float %1263, float %1288)  ; FMad(a,b,c)
  %1290 = call float @dx.op.tertiary.f32(i32 46, float %1242, float %1264, float %1289)  ; FMad(a,b,c)
  %1291 = fmul fast float %1266, %1248
  %1292 = call float @dx.op.tertiary.f32(i32 46, float %1249, float %1267, float %1291)  ; FMad(a,b,c)
  %1293 = call float @dx.op.tertiary.f32(i32 46, float %1250, float %1268, float %1292)  ; FMad(a,b,c)
  %1294 = call float @dx.op.tertiary.f32(i32 46, float %1242, float %1269, float %1293)  ; FMad(a,b,c)
  %1295 = fmul fast float %1271, %1248
  %1296 = call float @dx.op.tertiary.f32(i32 46, float %1249, float %1272, float %1295)  ; FMad(a,b,c)
  %1297 = call float @dx.op.tertiary.f32(i32 46, float %1250, float %1273, float %1296)  ; FMad(a,b,c)
  %1298 = call float @dx.op.tertiary.f32(i32 46, float %1242, float %1274, float %1297)  ; FMad(a,b,c)
  %1299 = fdiv fast float 1.000000e+00, %1286
  %1300 = fmul fast float %1299, %1278
  %1301 = fmul fast float %1299, %1282
  %1302 = fdiv fast float 1.000000e+00, %1298
  %1303 = fmul fast float %1302, %1290
  %1304 = fmul fast float %1302, %1294
  %1305 = fsub fast float %1300, %1303
  %1306 = fsub fast float %1301, %1304
  %1307 = fmul fast float %1305, 5.000000e-01
  %1308 = fmul fast float %1306, 5.000000e-01
  %1309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1310 = extractvalue %dx.types.CBufRet.f32 %1309, 0
  %1311 = extractvalue %dx.types.CBufRet.f32 %1309, 1
  %1312 = fmul fast float %1307, %1310
  %1313 = fmul fast float %1308, %1311
  %1314 = fmul fast float %1312, %1312
  %1315 = fmul fast float %1313, %1313
  %1316 = fadd fast float %1314, %1315
  %1317 = call float @dx.op.unary.f32(i32 24, float %1316)  ; Sqrt(value)
  br label %1318

; <label>:1318                                    ; preds = %1207, %1198
  %1319 = phi float [ %1259, %1207 ], [ 0.000000e+00, %1198 ]
  %1320 = phi float [ %1317, %1207 ], [ 0.000000e+00, %1198 ]
  %1321 = fadd fast float %1199, -1.000000e+00
  %1322 = fmul fast float %1321, %384
  %1323 = fadd fast float %1322, 1.000000e+00
  %1324 = fmul fast float %1323, %396
  br label %1325

; <label>:1325                                    ; preds = %1318, %363
  %1326 = phi float [ %1324, %1318 ], [ %396, %363 ]
  %1327 = phi float [ %1319, %1318 ], [ 0.000000e+00, %363 ]
  %1328 = phi float [ %1320, %1318 ], [ 0.000000e+00, %363 ]
  %1329 = call float @dx.op.binary.f32(i32 36, float %1326, float %1326)  ; FMin(a,b)
  %1330 = call float @dx.op.binary.f32(i32 36, float %1326, float %1329)  ; FMin(a,b)
  %1331 = fcmp fast ogt float %1330, 0.000000e+00
  %1332 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %336, float %337, float %338)  ; Dot3(ax,ay,az,bx,by,bz)
  %1333 = fcmp fast ogt float %1332, 0.000000e+00
  %1334 = and i1 %1331, %1333
  br i1 %1334, label %1335, label %1614, !dx.controlflow.hints !41

; <label>:1335                                    ; preds = %1325
  %1336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1337 = extractvalue %dx.types.CBufRet.f32 %1336, 1
  %1338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1339 = extractvalue %dx.types.CBufRet.f32 %1338, 1
  %1340 = select i1 %50, float %1337, float %1339
  %1341 = extractvalue %dx.types.CBufRet.f32 %1336, 2
  %1342 = extractvalue %dx.types.CBufRet.f32 %1338, 2
  %1343 = select i1 %50, float %1341, float %1342
  %1344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1345 = extractvalue %dx.types.CBufRet.i32 %1344, 0
  %1346 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1347 = extractvalue %dx.types.CBufRet.i32 %1346, 0
  %1348 = select i1 %50, i32 %1345, i32 %1347
  %1349 = fcmp fast ogt float %1327, 0.000000e+00
  br i1 %1349, label %1350, label %1354, !dx.controlflow.hints !42

; <label>:1350                                    ; preds = %1335
  %1351 = fptosi float %1328 to i32
  %1352 = call i32 @dx.op.binary.i32(i32 37, i32 %1351, i32 1)  ; IMax(a,b)
  %1353 = call i32 @dx.op.binary.i32(i32 38, i32 %1352, i32 16)  ; IMin(a,b)
  br label %1354

; <label>:1354                                    ; preds = %1350, %1335
  %1355 = phi float [ 0.000000e+00, %1350 ], [ 1.000000e+00, %1335 ]
  %1356 = phi float [ %1327, %1350 ], [ %1340, %1335 ]
  %1357 = phi i32 [ %1353, %1350 ], [ %1348, %1335 ]
  %1358 = fcmp fast olt float %1356, 5.000000e-01
  %1359 = icmp eq i32 %1357, 0
  %1360 = or i1 %1358, %1359
  br i1 %1360, label %1611, label %1361, !dx.controlflow.hints !43

; <label>:1361                                    ; preds = %1354
  %1362 = fsub fast float %296, %112
  %1363 = fsub fast float %297, %113
  %1364 = fsub fast float %298, %114
  %1365 = fmul fast float %1362, %1362
  %1366 = fmul fast float %1363, %1363
  %1367 = fadd fast float %1365, %1366
  %1368 = fmul fast float %1364, %1364
  %1369 = fadd fast float %1367, %1368
  %1370 = call float @dx.op.unary.f32(i32 24, float %1369)  ; Sqrt(value)
  %1371 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1372 = extractvalue %dx.types.CBufRet.i32 %1371, 0
  %1373 = uitofp i32 %1372 to float
  %1374 = fmul fast float %1356, %293
  %1375 = fdiv fast float %1374, %1370
  %1376 = call float @dx.op.binary.f32(i32 36, float %1375, float 1.000000e+01)  ; FMin(a,b)
  %1377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %1378 = extractvalue %dx.types.CBufRet.f32 %1377, 0
  %1379 = extractvalue %dx.types.CBufRet.f32 %1377, 1
  %1380 = extractvalue %dx.types.CBufRet.f32 %1377, 2
  %1381 = extractvalue %dx.types.CBufRet.f32 %1377, 3
  %1382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %1383 = extractvalue %dx.types.CBufRet.f32 %1382, 0
  %1384 = extractvalue %dx.types.CBufRet.f32 %1382, 1
  %1385 = extractvalue %dx.types.CBufRet.f32 %1382, 2
  %1386 = extractvalue %dx.types.CBufRet.f32 %1382, 3
  %1387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %1388 = extractvalue %dx.types.CBufRet.f32 %1387, 0
  %1389 = extractvalue %dx.types.CBufRet.f32 %1387, 1
  %1390 = extractvalue %dx.types.CBufRet.f32 %1387, 2
  %1391 = extractvalue %dx.types.CBufRet.f32 %1387, 3
  %1392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1393 = extractvalue %dx.types.CBufRet.f32 %1392, 0
  %1394 = extractvalue %dx.types.CBufRet.f32 %1392, 1
  %1395 = extractvalue %dx.types.CBufRet.f32 %1392, 2
  %1396 = extractvalue %dx.types.CBufRet.f32 %1392, 3
  %1397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1398 = extractvalue %dx.types.CBufRet.f32 %1397, 0
  %1399 = extractvalue %dx.types.CBufRet.f32 %1397, 1
  %1400 = extractvalue %dx.types.CBufRet.f32 %1397, 2
  %1401 = extractvalue %dx.types.CBufRet.f32 %1397, 3
  %1402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1403 = extractvalue %dx.types.CBufRet.f32 %1402, 0
  %1404 = extractvalue %dx.types.CBufRet.f32 %1402, 1
  %1405 = extractvalue %dx.types.CBufRet.f32 %1402, 2
  %1406 = extractvalue %dx.types.CBufRet.f32 %1402, 3
  %1407 = select i1 %50, float %1378, float %1393
  %1408 = select i1 %50, float %1383, float %1398
  %1409 = select i1 %50, float %1388, float %1403
  %1410 = select i1 %50, float %1379, float %1394
  %1411 = select i1 %50, float %1384, float %1399
  %1412 = select i1 %50, float %1389, float %1404
  %1413 = select i1 %50, float %1380, float %1395
  %1414 = select i1 %50, float %1385, float %1400
  %1415 = select i1 %50, float %1390, float %1405
  %1416 = select i1 %50, float %1381, float %1396
  %1417 = select i1 %50, float %1386, float %1401
  %1418 = select i1 %50, float %1391, float %1406
  %1419 = fmul fast float %214, 0x401061CAC0000000
  %1420 = fmul fast float %214, 0x4023E1D7E0000000
  %1421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1422 = extractvalue %dx.types.CBufRet.f32 %1421, 0
  %1423 = extractvalue %dx.types.CBufRet.f32 %1421, 1
  %1424 = extractvalue %dx.types.CBufRet.f32 %1421, 2
  %1425 = extractvalue %dx.types.CBufRet.f32 %1421, 3
  %1426 = fsub fast float -0.000000e+00, %336
  %1427 = fmul fast float %338, %1426
  %1428 = fmul fast float %336, %1426
  %1429 = fmul fast float %337, %337
  %1430 = fsub fast float %1428, %1429
  %1431 = fdiv fast float 1.000000e+00, %57
  %1432 = fmul fast float %1424, %46
  %1433 = fmul fast float %1425, %47
  %1434 = fmul fast float %1356, %336
  %1435 = fmul fast float %1356, %338
  %1436 = fadd fast float %1434, %112
  %1437 = fadd fast float %1435, %114
  %1438 = fadd fast float %1420, 5.000000e-01
  %1439 = call float @dx.op.unary.f32(i32 22, float %1438)  ; Frc(value)
  %1440 = bitcast float %1439 to i32
  %1441 = ashr i32 %1440, 1
  %1442 = add nsw i32 %1441, 532487669
  %1443 = bitcast i32 %1442 to float
  %1444 = fmul fast float %1443, %1376
  %1445 = fadd fast float %1419, 5.000000e-01
  %1446 = call float @dx.op.unary.f32(i32 22, float %1445)  ; Frc(value)
  %1447 = fmul fast float %1446, 0x401921FB60000000
  %1448 = call float @dx.op.unary.f32(i32 12, float %1447)  ; Cos(value)
  %1449 = fmul fast float %1448, %1448
  %1450 = fsub fast float 1.000000e+00, %1449
  %1451 = bitcast float %1450 to i32
  %1452 = ashr i32 %1451, 1
  %1453 = add nsw i32 %1452, 532487669
  %1454 = bitcast i32 %1453 to float
  %1455 = fmul fast float %1444, %1448
  %1456 = fmul fast float %1455, %337
  %1457 = fmul fast float %1455, %1426
  %1458 = fadd fast float %1436, %1456
  %1459 = fmul fast float %1454, %1444
  %1460 = fmul fast float %1427, %1459
  %1461 = fmul fast float %1459, %338
  %1462 = fmul fast float %1459, %1430
  %1463 = fsub fast float %1458, %1460
  %1464 = fadd fast float %1461, %1356
  %1465 = fmul fast float %1464, %337
  %1466 = fadd fast float %1457, %113
  %1467 = fadd fast float %1466, %1465
  %1468 = fadd fast float %1437, %1462
  %1469 = fmul fast float %1463, %1407
  %1470 = call float @dx.op.tertiary.f32(i32 46, float %1467, float %1410, float %1469)  ; FMad(a,b,c)
  %1471 = call float @dx.op.tertiary.f32(i32 46, float %1468, float %1413, float %1470)  ; FMad(a,b,c)
  %1472 = fadd fast float %1471, %1416
  %1473 = fmul fast float %1463, %1408
  %1474 = call float @dx.op.tertiary.f32(i32 46, float %1467, float %1411, float %1473)  ; FMad(a,b,c)
  %1475 = call float @dx.op.tertiary.f32(i32 46, float %1468, float %1414, float %1474)  ; FMad(a,b,c)
  %1476 = fadd fast float %1475, %1417
  %1477 = fmul fast float %1463, %1409
  %1478 = call float @dx.op.tertiary.f32(i32 46, float %1467, float %1412, float %1477)  ; FMad(a,b,c)
  %1479 = call float @dx.op.tertiary.f32(i32 46, float %1468, float %1415, float %1478)  ; FMad(a,b,c)
  %1480 = fadd fast float %1479, %1418
  %1481 = fdiv fast float 1.000000e+00, %1480
  %1482 = fmul fast float %1472, 5.000000e-01
  %1483 = fmul fast float %1476, -5.000000e-01
  %1484 = fmul fast float %1482, %1481
  %1485 = fmul fast float %1483, %1481
  %1486 = fsub fast float 5.000000e-01, %1432
  %1487 = fadd fast float %1486, %1484
  %1488 = fsub fast float 5.000000e-01, %1433
  %1489 = fadd fast float %1488, %1485
  %1490 = fsub fast float %1481, %1431
  %1491 = call float @dx.op.dot2.f32(i32 54, float %1487, float %1489, float %1487, float %1489)  ; Dot2(ax,ay,bx,by)
  %1492 = call float @dx.op.binary.f32(i32 35, float %1491, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %1493 = call float @dx.op.dot2.f32(i32 54, float %1422, float %1423, float %1422, float %1423)  ; Dot2(ax,ay,bx,by)
  %1494 = fmul fast float %1493, %1492
  %1495 = call float @dx.op.unary.f32(i32 25, float %1494)  ; Rsqrt(value)
  %1496 = fmul fast float %1495, %1487
  %1497 = fmul fast float %1495, %1489
  %1498 = fadd fast float %1496, %1432
  %1499 = fadd fast float %1497, %1433
  %1500 = fmul fast float %1487, %1422
  %1501 = fmul fast float %1489, %1423
  %1502 = fmul fast float %1500, %1500
  %1503 = fmul fast float %1501, %1501
  %1504 = fadd fast float %1502, %1503
  %1505 = call float @dx.op.unary.f32(i32 24, float %1504)  ; Sqrt(value)
  %1506 = fdiv fast float 1.000000e+00, %1505
  %1507 = fmul fast float %1505, 3.906250e-03
  %1508 = fmul fast float %200, 0x3F70624DE0000000
  %1509 = fadd fast float %1508, 0x3F70624DE0000000
  %1510 = icmp sgt i32 %1357, -1
  br i1 %1510, label %1511, label %1576

; <label>:1511                                    ; preds = %1361
  br label %1512

; <label>:1512                                    ; preds = %1572, %1511
  %1513 = phi float [ %1547, %1572 ], [ %57, %1511 ]
  %1514 = phi float [ %1534, %1572 ], [ %57, %1511 ]
  %1515 = phi float [ %1514, %1572 ], [ %57, %1511 ]
  %1516 = phi i32 [ %1573, %1572 ], [ 0, %1511 ]
  %1517 = sitofp i32 %1516 to float
  %1518 = fadd fast float %214, 5.000000e-01
  %1519 = call float @dx.op.unary.f32(i32 22, float %1518)  ; Frc(value)
  %1520 = fadd fast float %1517, %1519
  %1521 = sitofp i32 %1357 to float
  %1522 = fdiv fast float %1520, %1521
  %1523 = fmul fast float %1522, %1522
  %1524 = fsub fast float %1523, %1522
  %1525 = fmul fast float %1524, %1355
  %1526 = fadd fast float %1525, %1522
  %1527 = call float @dx.op.binary.f32(i32 36, float %1526, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %1528 = fmul fast float %1527, %1487
  %1529 = fmul fast float %1527, %1489
  %1530 = fmul fast float %1527, %1490
  %1531 = fadd fast float %1528, %1498
  %1532 = fadd fast float %1529, %1499
  %1533 = fadd fast float %1530, %1431
  %1534 = fdiv fast float 1.000000e+00, %1533
  %1535 = icmp ne i32 %1372, 0
  %1536 = fmul fast float %1507, %1527
  %1537 = call float @dx.op.binary.f32(i32 36, float %1536, float %1373)  ; FMin(a,b)
  %1538 = select i1 %1535, float %1537, float 0.000000e+00
  %1539 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %1531, float %1532, float undef, float undef, i32 0, i32 0, i32 undef, float %1538)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1540 = extractvalue %dx.types.ResRet.f32 %1539, 0
  %1541 = fcmp fast ogt float %1540, -1.000000e+00
  %1542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1543 = extractvalue %dx.types.CBufRet.f32 %1542, 1
  %1544 = select i1 %1541, float %1543, float 1.000000e+00
  %1545 = fadd fast float %1540, 1.000000e+00
  %1546 = fmul fast float %1544, %1545
  %1547 = call float @dx.op.unary.f32(i32 6, float %1546)  ; FAbs(value)
  %1548 = fmul fast float %1547, %1509
  %1549 = fsub fast float %1534, %1547
  %1550 = fsub fast float %1549, %1548
  %1551 = fcmp fast ogt float %1550, 0.000000e+00
  %1552 = fcmp fast ogt float %1343, 0.000000e+00
  br i1 %1552, label %1553, label %1556, !dx.controlflow.hints !44

; <label>:1553                                    ; preds = %1512
  %1554 = fsub fast float %1534, %1515
  %1555 = call float @dx.op.binary.f32(i32 35, float %1554, float %1343)  ; FMax(a,b)
  br label %1556

; <label>:1556                                    ; preds = %1553, %1512
  %1557 = phi float [ %1555, %1553 ], [ %1356, %1512 ]
  %1558 = fcmp fast olt float %1550, %1557
  %1559 = fcmp uge float %1540, -1.000000e+00
  %1560 = or i1 %50, %1559
  %1561 = call float @dx.op.unary.f32(i32 7, float %1531)  ; Saturate(value)
  %1562 = call float @dx.op.unary.f32(i32 7, float %1532)  ; Saturate(value)
  %1563 = fcmp fast oeq float %1531, %1561
  %1564 = fcmp fast oeq float %1532, %1562
  %1565 = and i1 %1563, %1564
  %1566 = and i1 %1560, %1565
  %1567 = and i1 %1551, %1558
  %1568 = and i1 %1567, %1566
  %1569 = fcmp fast ogt float %1527, %1506
  %1570 = and i1 %1569, %1568
  %1571 = zext i1 %1570 to i32
  br i1 %1570, label %1575, label %1572, !dx.controlflow.hints !45

; <label>:1572                                    ; preds = %1556
  %1573 = add nuw nsw i32 %1516, 1
  %1574 = icmp slt i32 %1516, %1357
  br i1 %1574, label %1512, label %1575

; <label>:1575                                    ; preds = %1572, %1556
  br label %1576

; <label>:1576                                    ; preds = %1575, %1361
  %1577 = phi i32 [ 0, %1361 ], [ %1571, %1575 ]
  %1578 = phi float [ %57, %1361 ], [ %1547, %1575 ]
  %1579 = phi float [ %57, %1361 ], [ %1513, %1575 ]
  %1580 = phi float [ %57, %1361 ], [ %1534, %1575 ]
  %1581 = phi float [ %57, %1361 ], [ %1514, %1575 ]
  %1582 = fsub fast float %1581, %1579
  %1583 = fsub fast float %1580, %1578
  %1584 = fsub fast float %1582, %1583
  %1585 = fcmp fast une float %1584, 0.000000e+00
  %1586 = fmul fast float %1582, %1580
  %1587 = fmul fast float %1581, %1583
  %1588 = fsub fast float %1586, %1587
  %1589 = fdiv fast float 1.000000e+00, %1584
  %1590 = fmul fast float %1588, %1589
  %1591 = select i1 %1585, float %1590, float %1580
  %1592 = fdiv fast float 1.000000e+00, %1591
  %1593 = fsub fast float %1592, %1431
  %1594 = fdiv fast float %1593, %1490
  %1595 = call float @dx.op.unary.f32(i32 7, float %1594)  ; Saturate(value)
  %1596 = fmul fast float %1595, %1487
  %1597 = fmul fast float %1595, %1489
  %1598 = fadd fast float %1596, %1498
  %1599 = fadd fast float %1597, %1499
  %1600 = fadd fast float %1598, -5.000000e-01
  %1601 = fadd fast float %1599, -5.000000e-01
  %1602 = call float @dx.op.unary.f32(i32 6, float %1600)  ; FAbs(value)
  %1603 = call float @dx.op.unary.f32(i32 6, float %1601)  ; FAbs(value)
  %1604 = fadd fast float %1602, -5.000000e-01
  %1605 = fadd fast float %1603, -5.000000e-01
  %1606 = call float @dx.op.binary.f32(i32 35, float %1604, float %1605)  ; FMax(a,b)
  %1607 = fcmp fast olt float %1606, 0.000000e+00
  %1608 = icmp ne i32 %1577, 0
  %1609 = and i1 %1608, %1607
  %1610 = select i1 %1609, float 0.000000e+00, float 1.000000e+00
  br label %1611

; <label>:1611                                    ; preds = %1576, %1354
  %1612 = phi float [ %1610, %1576 ], [ 1.000000e+00, %1354 ]
  %1613 = fmul fast float %1612, %1326
  br label %1614

; <label>:1614                                    ; preds = %1611, %1325
  %1615 = phi float [ %1613, %1611 ], [ %1326, %1325 ]
  %1616 = lshr i32 %273, 5
  %1617 = and i32 %1616, 3
  %1618 = lshr i32 %273, 7
  %1619 = add nuw nsw i32 %1618, 363
  %1620 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 %1619)  ; CBufferLoadLegacy(handle,regIndex)
  %1621 = extractvalue %dx.types.CBufRet.i32 %1620, 0
  %1622 = extractvalue %dx.types.CBufRet.i32 %1620, 1
  %1623 = extractvalue %dx.types.CBufRet.i32 %1620, 2
  %1624 = extractvalue %dx.types.CBufRet.i32 %1620, 3
  %1625 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i32 0, i32 0
  store i32 %1621, i32* %1625, align 4
  %1626 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i32 0, i32 1
  store i32 %1622, i32* %1626, align 4
  %1627 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i32 0, i32 2
  store i32 %1623, i32* %1627, align 4
  %1628 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i32 0, i32 3
  store i32 %1624, i32* %1628, align 4
  %1629 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i32 0, i32 %1617
  %1630 = load i32, i32* %1629, align 4, !tbaa !46
  %1631 = and i32 %273, 31
  %1632 = shl i32 1, %1631
  %1633 = and i32 %1630, %1632
  %1634 = icmp ne i32 %1633, 0
  %1635 = lshr i32 %219, 5
  %1636 = lshr i32 %220, 5
  %1637 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %1635, i32 %1636, i32 %273, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1638 = extractvalue %dx.types.ResRet.i32 %1637, 0
  %1639 = lshr i32 %1638, 23
  %1640 = and i32 %1639, 255
  %1641 = and i32 %219, 31
  %1642 = and i32 %220, 31
  %1643 = lshr i32 %1638, 1
  %1644 = and i32 %1643, 16352
  %1645 = lshr i32 %1638, 10
  %1646 = and i32 %1645, 8160
  %1647 = or i32 %1644, %1641
  %1648 = or i32 %1646, %1642
  %1649 = fmul fast float %1615, 2.550000e+02
  %1650 = select i1 %1634, float 0.000000e+00, float %1649
  %1651 = fadd fast float %1650, %213
  %1652 = call float @dx.op.unary.f32(i32 27, float %1651)  ; Round_ni(value)
  %1653 = fmul fast float %1652, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1647, i32 %1648, i32 %1640, float %1653, float %1653, float %1653, float %1653, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1654 = icmp eq i32 %271, %275
  br i1 %1654, label %1655, label %270, !llvm.loop !50

; <label>:1655                                    ; preds = %1614
  br label %1656

; <label>:1656                                    ; preds = %1655, %244
  %1657 = add i32 %245, 1
  %1658 = icmp ugt i32 %1657, %241
  br i1 %1658, label %1659, label %244

; <label>:1659                                    ; preds = %1656
  br label %1660

; <label>:1660                                    ; preds = %1659, %218, %0
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
!46 = !{!47, !47, i64 0}
!47 = !{!"int", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.unroll.disable"}

