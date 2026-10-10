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
; shader hash: acfd4329a76d3c729af0d7ffa17dabd4
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
;                                       UAV    byte         r/w      U1             u6     1
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
%struct.RWByteAddressBuffer = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %20 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %21 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %22 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.i32 %22, 0
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 1
  %26 = shl i32 %23, 3
  %27 = mul i32 %26, %25
  %28 = add i32 %27, %19
  %29 = shl i32 %28, 2
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %29, i32 undef)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 0
  %32 = lshr i32 %31, 25
  %33 = and i32 %32, 8
  %34 = lshr i32 %31, 27
  %35 = and i32 %34, 12
  %36 = lshr i32 %31, 10
  %37 = and i32 %36, 262128
  %38 = shl i32 %31, 4
  %39 = and i32 %38, 262128
  %40 = or i32 %33, %20
  %41 = or i32 %40, %37
  %42 = or i32 %35, %21
  %43 = or i32 %42, %39
  %44 = uitofp i32 %41 to float
  %45 = uitofp i32 %43 to float
  %46 = fadd fast float %44, 5.000000e-01
  %47 = fadd fast float %45, 5.000000e-01
  %48 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %41, i32 %43, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %49 = extractvalue %dx.types.ResRet.f32 %48, 0
  %50 = fcmp fast olt float %49, -1.000000e+00
  %51 = fcmp fast ogt float %49, -1.000000e+00
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 1
  %54 = select i1 %51, float %53, float 1.000000e+00
  %55 = fadd fast float %49, 1.000000e+00
  %56 = fmul fast float %54, %55
  %57 = call float @dx.op.unary.f32(i32 6, float %56)  ; FAbs(value)
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 3
  %61 = fmul fast float %59, 2.000000e+00
  %62 = fmul fast float %61, %46
  %63 = fmul fast float %60, 2.000000e+00
  %64 = fmul fast float %63, %47
  %65 = fsub fast float 1.000000e+00, %62
  %66 = fsub fast float 1.000000e+00, %64
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = extractvalue %dx.types.CBufRet.f32 %67, 1
  %70 = extractvalue %dx.types.CBufRet.f32 %67, 2
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %73 = extractvalue %dx.types.CBufRet.f32 %71, 1
  %74 = extractvalue %dx.types.CBufRet.f32 %71, 2
  %75 = select i1 %50, float %68, float %72
  %76 = select i1 %50, float %69, float %73
  %77 = select i1 %50, float %70, float %74
  %78 = fmul fast float %75, %65
  %79 = fmul fast float %76, %65
  %80 = fmul fast float %77, %65
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 0
  %83 = extractvalue %dx.types.CBufRet.f32 %81, 1
  %84 = extractvalue %dx.types.CBufRet.f32 %81, 2
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
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
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %100 = extractvalue %dx.types.CBufRet.f32 %98, 1
  %101 = extractvalue %dx.types.CBufRet.f32 %98, 2
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %115 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %13, i32 0, i32 %41, i32 %43, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %146 = fmul fast float %145, 0x3FE3C6EF40000000
  %147 = frem fast float %46, 2.560000e+02
  %148 = frem fast float %47, 2.560000e+02
  %149 = fptoui float %147 to i32
  %150 = fptoui float %148 to i32
  %151 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %149, i32 %150, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %152 = extractvalue %dx.types.ResRet.f32 %151, 0
  %153 = fadd fast float %152, %146
  %154 = call float @dx.op.unary.f32(i32 22, float %153)  ; Frc(value)
  %155 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.i32 %155, 0
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %1178, label %158, !dx.controlflow.hints !32

; <label>:158                                     ; preds = %0
  %159 = fptoui float %46 to i32
  %160 = fptoui float %47 to i32
  %161 = lshr i32 %159, 4
  %162 = lshr i32 %160, 4
  %163 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.i32 %163, 0
  %165 = call i32 @dx.op.tertiary.i32(i32 49, i32 %162, i32 %164, i32 %161)  ; UMad(a,b,c)
  %166 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.i32 %166, 0
  %168 = add nsw i32 %167, -1
  %169 = call i32 @dx.op.binary.i32(i32 37, i32 %168, i32 0)  ; IMax(a,b)
  %170 = call float @dx.op.binary.f32(i32 35, float %57, float 0.000000e+00)  ; FMax(a,b)
  %171 = fptoui float %170 to i32
  %172 = lshr i32 %171, 5
  %173 = call i32 @dx.op.binary.i32(i32 40, i32 %172, i32 8191)  ; UMin(a,b)
  %174 = shl i32 %173, 2
  %175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %174, i32 undef)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.i32 %175, 0
  %177 = lshr i32 %176, 16
  %178 = and i32 %176, 65535
  %179 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %177, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %180 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %178, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  %181 = lshr i32 %179, 5
  %182 = lshr i32 %180, 5
  %183 = call i32 @dx.op.binary.i32(i32 40, i32 %182, i32 %169)  ; UMin(a,b)
  %184 = icmp ugt i32 %181, %183
  br i1 %184, label %1178, label %185

; <label>:185                                     ; preds = %158
  br label %186

; <label>:186                                     ; preds = %1168, %185
  %187 = phi i32 [ %1175, %1168 ], [ %181, %185 ]
  %188 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.i32 %188, 0
  %190 = call i32 @dx.op.tertiary.i32(i32 49, i32 %165, i32 %189, i32 %187)  ; UMad(a,b,c)
  %191 = shl i32 %190, 2
  %192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %191, i32 undef)  ; BufferLoad(srv,index,wot)
  %193 = extractvalue %dx.types.ResRet.i32 %192, 0
  %194 = shl i32 %187, 5
  %195 = sub nsw i32 %177, %194
  %196 = call i32 @dx.op.binary.i32(i32 37, i32 %195, i32 0)  ; IMax(a,b)
  %197 = call i32 @dx.op.binary.i32(i32 38, i32 %196, i32 31)  ; IMin(a,b)
  %198 = sub nsw i32 1, %177
  %199 = add nsw i32 %198, %178
  %200 = call i32 @dx.op.binary.i32(i32 37, i32 %199, i32 0)  ; IMax(a,b)
  %201 = call i32 @dx.op.binary.i32(i32 38, i32 %200, i32 32)  ; IMin(a,b)
  %202 = and i32 %201, 31
  %203 = shl i32 -1, %202
  %204 = xor i32 %203, -1
  %205 = and i32 %197, 31
  %206 = shl i32 %204, %205
  %207 = icmp eq i32 %201, 32
  %208 = select i1 %207, i32 -1, i32 %206
  %209 = and i32 %208, %193
  %210 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %209, i8 1)  ; WaveActiveBit(value,op)
  %211 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %210)  ; WaveReadLaneFirst(value)
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %1168, label %213

; <label>:213                                     ; preds = %186
  br label %214

; <label>:214                                     ; preds = %1140, %213
  %215 = phi i32 [ %1147, %1140 ], [ 0, %213 ]
  %216 = phi i32 [ %221, %1140 ], [ %211, %213 ]
  %217 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %216)  ; FirstbitLo(value)
  %218 = add i32 %217, %194
  %219 = and i32 %217, 31
  %220 = shl i32 1, %219
  %221 = xor i32 %220, %216
  %222 = mul i32 %218, 112
  %223 = add i32 %222, 16
  %224 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %223, i32 undef)  ; BufferLoad(srv,index,wot)
  %225 = extractvalue %dx.types.ResRet.f32 %224, 0
  %226 = extractvalue %dx.types.ResRet.f32 %224, 1
  %227 = extractvalue %dx.types.ResRet.f32 %224, 2
  %228 = add i32 %222, 28
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = add i32 %222, 32
  %232 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.f32 %232, 0
  %234 = extractvalue %dx.types.ResRet.f32 %232, 1
  %235 = extractvalue %dx.types.ResRet.f32 %232, 2
  %236 = add i32 %222, 44
  %237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %236, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 0
  %239 = add i32 %222, 48
  %240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.f32 %240, 0
  %242 = extractvalue %dx.types.ResRet.f32 %240, 1
  %243 = extractvalue %dx.types.ResRet.f32 %240, 2
  %244 = extractvalue %dx.types.ResRet.f32 %240, 3
  %245 = add i32 %222, 64
  %246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %245, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = extractvalue %dx.types.ResRet.f32 %246, 1
  %249 = extractvalue %dx.types.ResRet.f32 %246, 2
  %250 = extractvalue %dx.types.ResRet.f32 %246, 3
  %251 = add i32 %222, 92
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = and i32 %253, 65535
  %255 = uitofp i32 %254 to float
  %256 = lshr i32 %253, 16
  %257 = uitofp i32 %256 to float
  %258 = and i32 %230, 65535
  %259 = and i32 %230, 50331648
  %260 = icmp eq i32 %259, 33554432
  %261 = call float @dx.op.dot3.f32(i32 55, float %233, float %234, float %235, float %233, float %234, float %235)  ; Dot3(ax,ay,az,bx,by,bz)
  %262 = fsub fast float %112, %241
  %263 = fsub fast float %113, %242
  %264 = fsub fast float %114, %243
  %265 = call float @dx.op.dot3.f32(i32 55, float %262, float %263, float %264, float %233, float %234, float %235)  ; Dot3(ax,ay,az,bx,by,bz)
  %266 = fdiv fast float %265, %261
  %267 = call float @dx.op.binary.f32(i32 35, float %266, float -1.000000e+00)  ; FMax(a,b)
  %268 = call float @dx.op.binary.f32(i32 36, float %267, float 1.000000e+00)  ; FMin(a,b)
  %269 = fmul fast float %268, %233
  %270 = fmul fast float %268, %234
  %271 = fmul fast float %268, %235
  %272 = fadd fast float %269, %241
  %273 = fadd fast float %270, %242
  %274 = fadd fast float %271, %243
  %275 = fsub fast float %272, %112
  %276 = fsub fast float %273, %113
  %277 = fsub fast float %274, %114
  %278 = call float @dx.op.dot3.f32(i32 55, float %275, float %276, float %277, float %275, float %276, float %277)  ; Dot3(ax,ay,az,bx,by,bz)
  %279 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %280 = fdiv fast float 1.000000e+00, %279
  %281 = fmul fast float %275, %280
  %282 = fmul fast float %276, %280
  %283 = fmul fast float %277, %280
  br i1 %260, label %284, label %308, !dx.controlflow.hints !33

; <label>:284                                     ; preds = %214
  %285 = fmul fast float %249, %225
  %286 = fmul fast float %249, %226
  %287 = fmul fast float %249, %227
  %288 = fsub fast float %285, %112
  %289 = fadd fast float %288, %272
  %290 = fsub fast float %286, %113
  %291 = fadd fast float %290, %273
  %292 = fsub fast float %287, %114
  %293 = fadd fast float %292, %274
  %294 = call float @dx.op.dot3.f32(i32 55, float %289, float %291, float %293, float %289, float %291, float %293)  ; Dot3(ax,ay,az,bx,by,bz)
  %295 = call float @dx.op.unary.f32(i32 25, float %294)  ; Rsqrt(value)
  %296 = fmul fast float %295, %289
  %297 = fmul fast float %295, %291
  %298 = fmul fast float %295, %293
  %299 = fsub fast float %112, %272
  %300 = fsub fast float %113, %273
  %301 = fsub fast float %114, %274
  %302 = fsub fast float -0.000000e+00, %299
  %303 = fsub fast float -0.000000e+00, %300
  %304 = fsub fast float -0.000000e+00, %301
  %305 = call float @dx.op.dot3.f32(i32 55, float %302, float %303, float %304, float %225, float %226, float %227)  ; Dot3(ax,ay,az,bx,by,bz)
  %306 = fcmp fast ogt float %305, 0.000000e+00
  %307 = uitofp i1 %306 to float
  br label %308

; <label>:308                                     ; preds = %284, %214
  %309 = phi float [ %307, %284 ], [ 1.000000e+00, %214 ]
  %310 = phi float [ %296, %284 ], [ %281, %214 ]
  %311 = phi float [ %297, %284 ], [ %282, %214 ]
  %312 = phi float [ %298, %284 ], [ %283, %214 ]
  %313 = call float @dx.op.dot3.f32(i32 55, float %225, float %226, float %227, float %310, float %311, float %312)  ; Dot3(ax,ay,az,bx,by,bz)
  %314 = fmul fast float %313, %313
  %315 = call float @dx.op.unary.f32(i32 7, float %314)  ; Saturate(value)
  %316 = fsub fast float 1.000000e+00, %315
  %317 = fmul fast float %316, 5.000000e-01
  %318 = fcmp fast ogt float %313, 0.000000e+00
  %319 = fsub fast float 1.000000e+00, %317
  %320 = select i1 %318, float %317, float %319
  %321 = fmul fast float %320, %257
  %322 = fadd fast float %321, %255
  %323 = fmul fast float %322, 0x3EF0001000000000
  %324 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %14, float %323, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %325 = extractvalue %dx.types.ResRet.f32 %324, 0
  %326 = fmul fast float %313, %247
  %327 = fadd fast float %326, %248
  %328 = call float @dx.op.unary.f32(i32 7, float %327)  ; Saturate(value)
  %329 = select i1 %260, float 1.000000e+00, float %328
  %330 = select i1 %260, float %328, float 1.000000e+00
  %331 = fmul fast float %279, %244
  %332 = fsub fast float 1.000000e+00, %331
  %333 = fmul fast float %332, %250
  %334 = call float @dx.op.unary.f32(i32 7, float %333)  ; Saturate(value)
  %335 = fmul fast float %334, %330
  %336 = fmul fast float %335, 2.000000e+00
  %337 = fsub fast float 3.000000e+00, %336
  %338 = fmul fast float %325, %309
  %339 = fmul fast float %335, %335
  %340 = fmul fast float %339, %338
  %341 = fmul fast float %340, %337
  %342 = icmp ne i32 %258, 255
  %343 = call float @dx.op.binary.f32(i32 36, float %341, float %341)  ; FMin(a,b)
  %344 = call float @dx.op.binary.f32(i32 36, float %341, float %343)  ; FMin(a,b)
  %345 = fcmp fast ogt float %344, 0.000000e+00
  %346 = and i1 %342, %345
  br i1 %346, label %347, label %1140, !dx.controlflow.hints !34

; <label>:347                                     ; preds = %308
  %348 = mul nuw nsw i32 %258, 176
  %349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.f32 %349, 0
  %351 = extractvalue %dx.types.ResRet.f32 %349, 1
  %352 = extractvalue %dx.types.ResRet.f32 %349, 2
  %353 = extractvalue %dx.types.ResRet.f32 %349, 3
  %354 = add nuw nsw i32 %348, 16
  %355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.f32 %355, 0
  %357 = extractvalue %dx.types.ResRet.f32 %355, 1
  %358 = add nuw nsw i32 %348, 32
  %359 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.f32 %359, 0
  %361 = extractvalue %dx.types.ResRet.f32 %359, 1
  %362 = extractvalue %dx.types.ResRet.f32 %359, 2
  %363 = extractvalue %dx.types.ResRet.f32 %359, 3
  %364 = add nuw nsw i32 %348, 48
  %365 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.f32 %365, 0
  %367 = extractvalue %dx.types.ResRet.f32 %365, 1
  %368 = extractvalue %dx.types.ResRet.f32 %365, 2
  %369 = extractvalue %dx.types.ResRet.f32 %365, 3
  %370 = add nuw nsw i32 %348, 64
  %371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.f32 %371, 0
  %373 = extractvalue %dx.types.ResRet.f32 %371, 1
  %374 = extractvalue %dx.types.ResRet.f32 %371, 2
  %375 = extractvalue %dx.types.ResRet.f32 %371, 3
  %376 = add nuw nsw i32 %348, 80
  %377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.f32 %377, 0
  %379 = extractvalue %dx.types.ResRet.f32 %377, 1
  %380 = extractvalue %dx.types.ResRet.f32 %377, 2
  %381 = extractvalue %dx.types.ResRet.f32 %377, 3
  %382 = add nuw nsw i32 %348, 96
  %383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.f32 %383, 0
  %385 = extractvalue %dx.types.ResRet.f32 %383, 1
  %386 = extractvalue %dx.types.ResRet.f32 %383, 2
  %387 = extractvalue %dx.types.ResRet.f32 %383, 3
  %388 = add nuw nsw i32 %348, 112
  %389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.f32 %389, 0
  %391 = extractvalue %dx.types.ResRet.f32 %389, 1
  %392 = extractvalue %dx.types.ResRet.f32 %389, 2
  %393 = extractvalue %dx.types.ResRet.f32 %389, 3
  %394 = add nuw nsw i32 %348, 128
  %395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.f32 %395, 0
  %397 = extractvalue %dx.types.ResRet.f32 %395, 1
  %398 = extractvalue %dx.types.ResRet.f32 %395, 2
  %399 = extractvalue %dx.types.ResRet.f32 %395, 3
  %400 = add nuw nsw i32 %348, 144
  %401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.f32 %401, 0
  %403 = extractvalue %dx.types.ResRet.f32 %401, 1
  %404 = extractvalue %dx.types.ResRet.f32 %401, 2
  %405 = extractvalue %dx.types.ResRet.f32 %401, 3
  %406 = add nuw nsw i32 %348, 160
  %407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.f32 %407, 0
  %409 = extractvalue %dx.types.ResRet.f32 %407, 1
  %410 = extractvalue %dx.types.ResRet.f32 %407, 2
  %411 = extractvalue %dx.types.ResRet.f32 %407, 3
  %412 = bitcast float %357 to i32
  %413 = bitcast float %363 to i32
  %414 = and i32 %413, 1
  %415 = icmp ne i32 %414, 0
  %416 = and i32 %413, 2
  %417 = fmul fast float %141, %362
  %418 = fmul fast float %142, %362
  %419 = fmul fast float %143, %362
  %420 = fadd fast float %417, %112
  %421 = fadd fast float %418, %113
  %422 = fadd fast float %419, %114
  %423 = fmul fast float %420, %366
  %424 = call float @dx.op.tertiary.f32(i32 46, float %421, float %372, float %423)  ; FMad(a,b,c)
  %425 = call float @dx.op.tertiary.f32(i32 46, float %422, float %378, float %424)  ; FMad(a,b,c)
  %426 = fadd fast float %425, %384
  %427 = fmul fast float %420, %367
  %428 = call float @dx.op.tertiary.f32(i32 46, float %421, float %373, float %427)  ; FMad(a,b,c)
  %429 = call float @dx.op.tertiary.f32(i32 46, float %422, float %379, float %428)  ; FMad(a,b,c)
  %430 = fadd fast float %429, %385
  %431 = fmul fast float %420, %368
  %432 = call float @dx.op.tertiary.f32(i32 46, float %421, float %374, float %431)  ; FMad(a,b,c)
  %433 = call float @dx.op.tertiary.f32(i32 46, float %422, float %380, float %432)  ; FMad(a,b,c)
  %434 = fadd fast float %433, %386
  %435 = fmul fast float %420, %369
  %436 = call float @dx.op.tertiary.f32(i32 46, float %421, float %375, float %435)  ; FMad(a,b,c)
  %437 = call float @dx.op.tertiary.f32(i32 46, float %422, float %381, float %436)  ; FMad(a,b,c)
  %438 = fadd fast float %437, %387
  %439 = fdiv fast float %426, %438
  %440 = fdiv fast float %430, %438
  %441 = fdiv fast float %434, %438
  %442 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %441)  ; FMax(a,b)
  %443 = fmul fast float %154, 0x401921FB60000000
  %444 = call float @dx.op.unary.f32(i32 13, float %443)  ; Sin(value)
  %445 = call float @dx.op.unary.f32(i32 12, float %443)  ; Cos(value)
  %446 = fsub fast float -0.000000e+00, %444
  %447 = icmp eq i32 %416, 0
  br i1 %447, label %448, label %519, !dx.controlflow.hints !35

; <label>:448                                     ; preds = %347
  %449 = fmul fast float %445, %361
  %450 = call float @dx.op.tertiary.f32(i32 46, float %444, float %361, float 0.000000e+00)  ; FMad(a,b,c)
  %451 = fmul fast float %361, %446
  %452 = call float @dx.op.tertiary.f32(i32 46, float %445, float %361, float 0.000000e+00)  ; FMad(a,b,c)
  br label %453

; <label>:453                                     ; preds = %453, %448
  %454 = phi float [ 0.000000e+00, %448 ], [ %486, %453 ]
  %455 = phi float [ 0.000000e+00, %448 ], [ %488, %453 ]
  %456 = phi i32 [ 0, %448 ], [ %489, %453 ]
  %457 = mul i32 %456, 2
  %458 = add i32 0, %457
  %459 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %458
  %460 = load float, float* %459, align 4
  %461 = mul i32 %456, 2
  %462 = add i32 1, %461
  %463 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %462
  %464 = load float, float* %463, align 4
  %465 = fmul fast float %449, %460
  %466 = call float @dx.op.tertiary.f32(i32 46, float %464, float %451, float %465)  ; FMad(a,b,c)
  %467 = fmul fast float %460, %450
  %468 = call float @dx.op.tertiary.f32(i32 46, float %464, float %452, float %467)  ; FMad(a,b,c)
  %469 = fadd fast float %466, %439
  %470 = fadd fast float %468, %440
  %471 = fmul fast float %469, %356
  %472 = fmul fast float %470, %356
  %473 = call float @dx.op.binary.f32(i32 35, float %471, float %352)  ; FMax(a,b)
  %474 = call float @dx.op.binary.f32(i32 35, float %472, float %352)  ; FMax(a,b)
  %475 = call float @dx.op.binary.f32(i32 36, float %473, float %353)  ; FMin(a,b)
  %476 = call float @dx.op.binary.f32(i32 36, float %474, float %353)  ; FMin(a,b)
  %477 = fadd fast float %475, %350
  %478 = fadd fast float %476, %351
  %479 = uitofp i32 %412 to float
  %480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %15, float %477, float %478, float %479, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %481 = extractvalue %dx.types.ResRet.f32 %480, 0
  %482 = fsub fast float %481, %442
  %483 = fsub fast float %482, %360
  %484 = fcmp fast ogt float %483, 0.000000e+00
  %485 = select i1 %484, float 1.000000e+00, float 0.000000e+00
  %486 = fadd fast float %485, %454
  %487 = select i1 %484, float %483, float 0.000000e+00
  %488 = fadd fast float %487, %455
  %489 = add nuw nsw i32 %456, 1
  %490 = icmp eq i32 %489, 8
  br i1 %490, label %491, label %453

; <label>:491                                     ; preds = %453
  %492 = fdiv fast float 1.000000e+00, %486
  %493 = fmul fast float %492, %488
  %494 = fdiv fast float 1.000000e+00, %442
  %495 = fmul fast float %493, %494
  %496 = call float @dx.op.unary.f32(i32 7, float %495)  ; Saturate(value)
  %497 = call float @dx.op.binary.f32(i32 35, float %496, float 0.000000e+00)  ; FMax(a,b)
  %498 = fmul fast float %486, 1.250000e-01
  %499 = call float @dx.op.unary.f32(i32 7, float %498)  ; Saturate(value)
  %500 = fmul fast float %499, 2.000000e+00
  %501 = fadd fast float %500, -1.000000e+00
  %502 = fcmp fast ogt float %501, 0.000000e+00
  %503 = fcmp fast olt float %501, 0.000000e+00
  %504 = zext i1 %502 to i32
  %505 = zext i1 %503 to i32
  %506 = sub nsw i32 %504, %505
  %507 = sitofp i32 %506 to float
  %508 = fmul fast float %507, %501
  %509 = fsub fast float 1.000000e+00, %508
  %510 = fmul fast float %509, %509
  %511 = fmul fast float %510, %509
  %512 = fsub fast float %509, %511
  %513 = fmul fast float %512, %497
  %514 = fsub fast float 1.000000e+00, %511
  %515 = fsub fast float %514, %513
  %516 = fmul fast float %507, 5.000000e-01
  %517 = fmul fast float %516, %515
  %518 = fsub fast float 5.000000e-01, %517
  br label %1134

; <label>:519                                     ; preds = %347
  %520 = fsub fast float 1.000000e+00, %442
  %521 = fmul fast float %520, 5.000000e-01
  %522 = fadd fast float %521, %442
  %523 = fsub fast float %420, %241
  %524 = fsub fast float %421, %242
  %525 = fsub fast float %422, %243
  %526 = call float @dx.op.dot3.f32(i32 55, float %523, float %524, float %525, float %233, float %234, float %235)  ; Dot3(ax,ay,az,bx,by,bz)
  %527 = fdiv fast float %526, %261
  %528 = call float @dx.op.binary.f32(i32 35, float %527, float -1.000000e+00)  ; FMax(a,b)
  %529 = call float @dx.op.binary.f32(i32 36, float %528, float 1.000000e+00)  ; FMin(a,b)
  %530 = fmul fast float %529, %233
  %531 = fmul fast float %529, %234
  %532 = fmul fast float %529, %235
  %533 = fsub fast float %523, %530
  %534 = fsub fast float %524, %531
  %535 = fsub fast float %525, %532
  %536 = call float @dx.op.dot3.f32(i32 55, float %533, float %534, float %535, float %533, float %534, float %535)  ; Dot3(ax,ay,az,bx,by,bz)
  %537 = call float @dx.op.unary.f32(i32 25, float %536)  ; Rsqrt(value)
  %538 = fmul fast float %533, %537
  %539 = fmul fast float %534, %537
  %540 = fmul fast float %535, %537
  %541 = call float @dx.op.unary.f32(i32 25, float %261)  ; Rsqrt(value)
  %542 = fmul fast float %541, %233
  %543 = fmul fast float %541, %234
  %544 = fmul fast float %541, %235
  br i1 %415, label %545, label %549, !dx.controlflow.hints !36

; <label>:545                                     ; preds = %519
  %546 = fcmp fast olt float %539, 0x3FE6666660000000
  %547 = select i1 %546, float 1.000000e+00, float 0.000000e+00
  %548 = select i1 %546, float 0.000000e+00, float 1.000000e+00
  br label %549

; <label>:549                                     ; preds = %545, %519
  %550 = phi float [ 0.000000e+00, %545 ], [ %542, %519 ]
  %551 = phi float [ %547, %545 ], [ %543, %519 ]
  %552 = phi float [ %548, %545 ], [ %544, %519 ]
  %553 = fmul fast float %551, %540
  %554 = fmul fast float %552, %539
  %555 = fsub fast float %553, %554
  %556 = fmul fast float %552, %538
  %557 = fmul fast float %550, %540
  %558 = fsub fast float %556, %557
  %559 = fmul fast float %550, %539
  %560 = fmul fast float %551, %538
  %561 = fsub fast float %559, %560
  %562 = call float @dx.op.dot3.f32(i32 55, float %555, float %558, float %561, float %555, float %558, float %561)  ; Dot3(ax,ay,az,bx,by,bz)
  %563 = call float @dx.op.unary.f32(i32 25, float %562)  ; Rsqrt(value)
  %564 = fmul fast float %563, %238
  %565 = fmul fast float %564, %555
  %566 = fmul fast float %564, %558
  %567 = fmul fast float %561, %238
  %568 = fmul fast float %567, %563
  %569 = fmul fast float %439, %390
  %570 = call float @dx.op.tertiary.f32(i32 46, float %440, float %396, float %569)  ; FMad(a,b,c)
  %571 = call float @dx.op.tertiary.f32(i32 46, float %522, float %402, float %570)  ; FMad(a,b,c)
  %572 = fadd fast float %571, %408
  %573 = fmul fast float %439, %391
  %574 = call float @dx.op.tertiary.f32(i32 46, float %440, float %397, float %573)  ; FMad(a,b,c)
  %575 = call float @dx.op.tertiary.f32(i32 46, float %522, float %403, float %574)  ; FMad(a,b,c)
  %576 = fadd fast float %575, %409
  %577 = fmul fast float %439, %392
  %578 = call float @dx.op.tertiary.f32(i32 46, float %440, float %398, float %577)  ; FMad(a,b,c)
  %579 = call float @dx.op.tertiary.f32(i32 46, float %522, float %404, float %578)  ; FMad(a,b,c)
  %580 = fadd fast float %579, %410
  %581 = fmul fast float %439, %393
  %582 = call float @dx.op.tertiary.f32(i32 46, float %440, float %399, float %581)  ; FMad(a,b,c)
  %583 = call float @dx.op.tertiary.f32(i32 46, float %522, float %405, float %582)  ; FMad(a,b,c)
  %584 = fadd fast float %583, %411
  %585 = fdiv fast float 1.000000e+00, %584
  %586 = fmul fast float %585, %572
  %587 = fmul fast float %585, %576
  %588 = fmul fast float %585, %580
  %589 = fsub fast float -0.000000e+00, %538
  %590 = fsub fast float -0.000000e+00, %539
  %591 = fsub fast float -0.000000e+00, %540
  %592 = fsub fast float %241, %565
  %593 = fsub fast float %242, %566
  %594 = fsub fast float %243, %568
  %595 = fsub fast float %586, %592
  %596 = fsub fast float %587, %593
  %597 = fsub fast float %588, %594
  %598 = call float @dx.op.dot3.f32(i32 55, float %595, float %596, float %597, float %595, float %596, float %597)  ; Dot3(ax,ay,az,bx,by,bz)
  %599 = call float @dx.op.unary.f32(i32 25, float %598)  ; Rsqrt(value)
  %600 = fmul fast float %595, %599
  %601 = fmul fast float %596, %599
  %602 = fmul fast float %597, %599
  %603 = fsub fast float %420, %592
  %604 = fsub fast float %421, %593
  %605 = fsub fast float %422, %594
  %606 = call float @dx.op.dot3.f32(i32 55, float %589, float %590, float %591, float %603, float %604, float %605)  ; Dot3(ax,ay,az,bx,by,bz)
  %607 = call float @dx.op.dot3.f32(i32 55, float %589, float %590, float %591, float %600, float %601, float %602)  ; Dot3(ax,ay,az,bx,by,bz)
  %608 = fdiv fast float 1.000000e+00, %607
  %609 = fmul fast float %608, %606
  %610 = fmul fast float %609, %600
  %611 = fmul fast float %609, %601
  %612 = fmul fast float %609, %602
  %613 = fadd fast float %610, %592
  %614 = fadd fast float %611, %593
  %615 = fadd fast float %612, %594
  %616 = fadd fast float %565, %241
  %617 = fadd fast float %566, %242
  %618 = fadd fast float %568, %243
  %619 = fsub fast float %586, %616
  %620 = fsub fast float %587, %617
  %621 = fsub fast float %588, %618
  %622 = call float @dx.op.dot3.f32(i32 55, float %619, float %620, float %621, float %619, float %620, float %621)  ; Dot3(ax,ay,az,bx,by,bz)
  %623 = call float @dx.op.unary.f32(i32 25, float %622)  ; Rsqrt(value)
  %624 = fmul fast float %623, %619
  %625 = fmul fast float %623, %620
  %626 = fmul fast float %623, %621
  %627 = fsub fast float %420, %616
  %628 = fsub fast float %421, %617
  %629 = fsub fast float %422, %618
  %630 = call float @dx.op.dot3.f32(i32 55, float %589, float %590, float %591, float %627, float %628, float %629)  ; Dot3(ax,ay,az,bx,by,bz)
  %631 = call float @dx.op.dot3.f32(i32 55, float %589, float %590, float %591, float %624, float %625, float %626)  ; Dot3(ax,ay,az,bx,by,bz)
  %632 = fdiv fast float 1.000000e+00, %631
  %633 = fmul fast float %632, %630
  %634 = fmul fast float %633, %624
  %635 = fmul fast float %633, %625
  %636 = fmul fast float %633, %626
  %637 = fadd fast float %634, %616
  %638 = fadd fast float %635, %617
  %639 = fadd fast float %636, %618
  %640 = fmul fast float %613, %366
  %641 = call float @dx.op.tertiary.f32(i32 46, float %614, float %372, float %640)  ; FMad(a,b,c)
  %642 = call float @dx.op.tertiary.f32(i32 46, float %615, float %378, float %641)  ; FMad(a,b,c)
  %643 = fadd fast float %642, %384
  %644 = fmul fast float %613, %367
  %645 = call float @dx.op.tertiary.f32(i32 46, float %614, float %373, float %644)  ; FMad(a,b,c)
  %646 = call float @dx.op.tertiary.f32(i32 46, float %615, float %379, float %645)  ; FMad(a,b,c)
  %647 = fadd fast float %646, %385
  %648 = fmul fast float %613, %369
  %649 = call float @dx.op.tertiary.f32(i32 46, float %614, float %375, float %648)  ; FMad(a,b,c)
  %650 = call float @dx.op.tertiary.f32(i32 46, float %615, float %381, float %649)  ; FMad(a,b,c)
  %651 = fadd fast float %650, %387
  %652 = fmul fast float %637, %366
  %653 = call float @dx.op.tertiary.f32(i32 46, float %638, float %372, float %652)  ; FMad(a,b,c)
  %654 = call float @dx.op.tertiary.f32(i32 46, float %639, float %378, float %653)  ; FMad(a,b,c)
  %655 = fadd fast float %654, %384
  %656 = fmul fast float %637, %367
  %657 = call float @dx.op.tertiary.f32(i32 46, float %638, float %373, float %656)  ; FMad(a,b,c)
  %658 = call float @dx.op.tertiary.f32(i32 46, float %639, float %379, float %657)  ; FMad(a,b,c)
  %659 = fadd fast float %658, %385
  %660 = fmul fast float %637, %369
  %661 = call float @dx.op.tertiary.f32(i32 46, float %638, float %375, float %660)  ; FMad(a,b,c)
  %662 = call float @dx.op.tertiary.f32(i32 46, float %639, float %381, float %661)  ; FMad(a,b,c)
  %663 = fadd fast float %662, %387
  %664 = fdiv fast float 1.000000e+00, %651
  %665 = fmul fast float %664, %643
  %666 = fmul fast float %664, %647
  %667 = fdiv fast float 1.000000e+00, %663
  %668 = fmul fast float %667, %655
  %669 = fmul fast float %667, %659
  %670 = fsub fast float %668, %665
  %671 = fsub fast float %669, %666
  %672 = call float @dx.op.dot2.f32(i32 54, float %670, float %671, float %670, float %671)  ; Dot2(ax,ay,bx,by)
  %673 = call float @dx.op.unary.f32(i32 25, float %672)  ; Rsqrt(value)
  %674 = fmul fast float %670, %673
  %675 = fmul fast float %671, %673
  %676 = fmul fast float %670, %670
  %677 = fmul fast float %671, %671
  %678 = fadd fast float %676, %677
  %679 = call float @dx.op.unary.f32(i32 24, float %678)  ; Sqrt(value)
  %680 = fmul fast float %679, 5.000000e-01
  br i1 %415, label %773, label %681, !dx.controlflow.hints !37

; <label>:681                                     ; preds = %549
  %682 = fsub fast float %241, %233
  %683 = fsub fast float %242, %234
  %684 = fsub fast float %243, %235
  %685 = fsub fast float %586, %682
  %686 = fsub fast float %587, %683
  %687 = fsub fast float %588, %684
  %688 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %685, float %686, float %687)  ; Dot3(ax,ay,az,bx,by,bz)
  %689 = call float @dx.op.unary.f32(i32 25, float %688)  ; Rsqrt(value)
  %690 = fmul fast float %689, %685
  %691 = fmul fast float %689, %686
  %692 = fmul fast float %689, %687
  %693 = fsub fast float %420, %682
  %694 = fsub fast float %421, %683
  %695 = fsub fast float %422, %684
  %696 = call float @dx.op.dot3.f32(i32 55, float %589, float %590, float %591, float %693, float %694, float %695)  ; Dot3(ax,ay,az,bx,by,bz)
  %697 = call float @dx.op.dot3.f32(i32 55, float %589, float %590, float %591, float %690, float %691, float %692)  ; Dot3(ax,ay,az,bx,by,bz)
  %698 = fdiv fast float 1.000000e+00, %697
  %699 = fmul fast float %698, %696
  %700 = fmul fast float %699, %690
  %701 = fmul fast float %699, %691
  %702 = fmul fast float %699, %692
  %703 = fadd fast float %700, %682
  %704 = fadd fast float %701, %683
  %705 = fadd fast float %702, %684
  %706 = fadd fast float %241, %233
  %707 = fadd fast float %242, %234
  %708 = fadd fast float %243, %235
  %709 = fsub fast float %586, %706
  %710 = fsub fast float %587, %707
  %711 = fsub fast float %588, %708
  %712 = call float @dx.op.dot3.f32(i32 55, float %709, float %710, float %711, float %709, float %710, float %711)  ; Dot3(ax,ay,az,bx,by,bz)
  %713 = call float @dx.op.unary.f32(i32 25, float %712)  ; Rsqrt(value)
  %714 = fmul fast float %713, %709
  %715 = fmul fast float %713, %710
  %716 = fmul fast float %713, %711
  %717 = fsub fast float %420, %706
  %718 = fsub fast float %421, %707
  %719 = fsub fast float %422, %708
  %720 = call float @dx.op.dot3.f32(i32 55, float %589, float %590, float %591, float %717, float %718, float %719)  ; Dot3(ax,ay,az,bx,by,bz)
  %721 = call float @dx.op.dot3.f32(i32 55, float %589, float %590, float %591, float %714, float %715, float %716)  ; Dot3(ax,ay,az,bx,by,bz)
  %722 = fdiv fast float 1.000000e+00, %721
  %723 = fmul fast float %722, %720
  %724 = fmul fast float %723, %714
  %725 = fmul fast float %723, %715
  %726 = fmul fast float %723, %716
  %727 = fadd fast float %724, %706
  %728 = fadd fast float %725, %707
  %729 = fadd fast float %726, %708
  %730 = fmul fast float %703, %366
  %731 = call float @dx.op.tertiary.f32(i32 46, float %704, float %372, float %730)  ; FMad(a,b,c)
  %732 = call float @dx.op.tertiary.f32(i32 46, float %705, float %378, float %731)  ; FMad(a,b,c)
  %733 = fadd fast float %732, %384
  %734 = fmul fast float %703, %367
  %735 = call float @dx.op.tertiary.f32(i32 46, float %704, float %373, float %734)  ; FMad(a,b,c)
  %736 = call float @dx.op.tertiary.f32(i32 46, float %705, float %379, float %735)  ; FMad(a,b,c)
  %737 = fadd fast float %736, %385
  %738 = fmul fast float %703, %369
  %739 = call float @dx.op.tertiary.f32(i32 46, float %704, float %375, float %738)  ; FMad(a,b,c)
  %740 = call float @dx.op.tertiary.f32(i32 46, float %705, float %381, float %739)  ; FMad(a,b,c)
  %741 = fadd fast float %740, %387
  %742 = fmul fast float %727, %366
  %743 = call float @dx.op.tertiary.f32(i32 46, float %728, float %372, float %742)  ; FMad(a,b,c)
  %744 = call float @dx.op.tertiary.f32(i32 46, float %729, float %378, float %743)  ; FMad(a,b,c)
  %745 = fadd fast float %744, %384
  %746 = fmul fast float %727, %367
  %747 = call float @dx.op.tertiary.f32(i32 46, float %728, float %373, float %746)  ; FMad(a,b,c)
  %748 = call float @dx.op.tertiary.f32(i32 46, float %729, float %379, float %747)  ; FMad(a,b,c)
  %749 = fadd fast float %748, %385
  %750 = fmul fast float %727, %369
  %751 = call float @dx.op.tertiary.f32(i32 46, float %728, float %375, float %750)  ; FMad(a,b,c)
  %752 = call float @dx.op.tertiary.f32(i32 46, float %729, float %381, float %751)  ; FMad(a,b,c)
  %753 = fadd fast float %752, %387
  %754 = fdiv fast float 1.000000e+00, %741
  %755 = fmul fast float %754, %733
  %756 = fmul fast float %754, %737
  %757 = fdiv fast float 1.000000e+00, %753
  %758 = fmul fast float %757, %745
  %759 = fmul fast float %757, %749
  %760 = fsub fast float %758, %755
  %761 = fsub fast float %759, %756
  %762 = call float @dx.op.dot2.f32(i32 54, float %760, float %761, float %760, float %761)  ; Dot2(ax,ay,bx,by)
  %763 = call float @dx.op.unary.f32(i32 25, float %762)  ; Rsqrt(value)
  %764 = fmul fast float %760, %763
  %765 = fmul fast float %761, %763
  %766 = fmul fast float %760, %760
  %767 = fmul fast float %761, %761
  %768 = fadd fast float %766, %767
  %769 = call float @dx.op.unary.f32(i32 24, float %768)  ; Sqrt(value)
  %770 = fmul fast float %769, 5.000000e-01
  %771 = fcmp fast olt float %770, %680
  br i1 %771, label %772, label %773, !dx.controlflow.hints !38

; <label>:772                                     ; preds = %681
  br label %773

; <label>:773                                     ; preds = %772, %681, %549
  %774 = phi float [ %680, %549 ], [ %770, %772 ], [ %680, %681 ]
  %775 = phi float [ %680, %549 ], [ %680, %772 ], [ %770, %681 ]
  %776 = phi float [ %674, %549 ], [ %674, %772 ], [ %764, %681 ]
  %777 = phi float [ %675, %549 ], [ %675, %772 ], [ %765, %681 ]
  %778 = fmul fast float %774, %361
  %779 = fdiv fast float %778, %775
  %780 = fsub fast float %361, %779
  %781 = fmul fast float %776, %776
  %782 = fmul fast float %781, %780
  %783 = fadd fast float %782, %779
  %784 = fmul fast float %777, %776
  %785 = fmul fast float %784, %780
  %786 = fmul fast float %777, %777
  %787 = fmul fast float %786, %780
  %788 = fadd fast float %787, %779
  %789 = fmul fast float %783, %445
  %790 = call float @dx.op.tertiary.f32(i32 46, float %444, float %785, float %789)  ; FMad(a,b,c)
  %791 = fmul fast float %785, %445
  %792 = call float @dx.op.tertiary.f32(i32 46, float %444, float %788, float %791)  ; FMad(a,b,c)
  %793 = fmul fast float %783, %446
  %794 = call float @dx.op.tertiary.f32(i32 46, float %445, float %785, float %793)  ; FMad(a,b,c)
  %795 = fmul fast float %785, %446
  %796 = call float @dx.op.tertiary.f32(i32 46, float %445, float %788, float %795)  ; FMad(a,b,c)
  br label %797

; <label>:797                                     ; preds = %835, %773
  %798 = phi float [ 0.000000e+00, %773 ], [ %836, %835 ]
  %799 = phi float [ 0.000000e+00, %773 ], [ %837, %835 ]
  %800 = phi float [ 0.000000e+00, %773 ], [ %838, %835 ]
  %801 = phi float [ 0.000000e+00, %773 ], [ %839, %835 ]
  %802 = phi i32 [ 0, %773 ], [ %840, %835 ]
  %803 = mul i32 %802, 2
  %804 = add i32 0, %803
  %805 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %804
  %806 = load float, float* %805, align 4
  %807 = mul i32 %802, 2
  %808 = add i32 1, %807
  %809 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %808
  %810 = load float, float* %809, align 4
  %811 = fmul fast float %806, %790
  %812 = call float @dx.op.tertiary.f32(i32 46, float %810, float %794, float %811)  ; FMad(a,b,c)
  %813 = fmul fast float %806, %792
  %814 = call float @dx.op.tertiary.f32(i32 46, float %810, float %796, float %813)  ; FMad(a,b,c)
  %815 = fadd fast float %812, %439
  %816 = fadd fast float %814, %440
  %817 = fmul fast float %815, %356
  %818 = fmul fast float %816, %356
  %819 = call float @dx.op.binary.f32(i32 35, float %817, float %352)  ; FMax(a,b)
  %820 = call float @dx.op.binary.f32(i32 35, float %818, float %352)  ; FMax(a,b)
  %821 = call float @dx.op.binary.f32(i32 36, float %819, float %353)  ; FMin(a,b)
  %822 = call float @dx.op.binary.f32(i32 36, float %820, float %353)  ; FMin(a,b)
  %823 = fadd fast float %821, %350
  %824 = fadd fast float %822, %351
  %825 = uitofp i32 %412 to float
  %826 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %15, float %823, float %824, float %825, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %827 = extractvalue %dx.types.ResRet.f32 %826, 0
  %828 = fadd fast float %442, %360
  %829 = fcmp fast olt float %828, %827
  br i1 %829, label %830, label %835, !dx.controlflow.hints !39

; <label>:830                                     ; preds = %797
  %831 = fadd fast float %827, %800
  %832 = fadd fast float %812, %798
  %833 = fadd fast float %814, %799
  %834 = fadd fast float %801, 1.000000e+00
  br label %835

; <label>:835                                     ; preds = %830, %797
  %836 = phi float [ %832, %830 ], [ %798, %797 ]
  %837 = phi float [ %833, %830 ], [ %799, %797 ]
  %838 = phi float [ %831, %830 ], [ %800, %797 ]
  %839 = phi float [ %834, %830 ], [ %801, %797 ]
  %840 = add nuw nsw i32 %802, 1
  %841 = icmp eq i32 %840, 8
  br i1 %841, label %842, label %797

; <label>:842                                     ; preds = %835
  %843 = fdiv fast float 1.000000e+00, %839
  %844 = fcmp fast oeq float %839, 0.000000e+00
  %845 = fmul fast float %843, %838
  %846 = select i1 %844, float -1.000000e+00, float %845
  %847 = fcmp fast olt float %846, 0.000000e+00
  br i1 %847, label %1134, label %848, !dx.controlflow.hints !40

; <label>:848                                     ; preds = %842
  %849 = fmul fast float %843, %837
  %850 = select i1 %844, float 0.000000e+00, float %849
  %851 = fmul fast float %843, %836
  %852 = select i1 %844, float 0.000000e+00, float %851
  %853 = fadd fast float %852, %439
  %854 = fadd fast float %850, %440
  br i1 %415, label %855, label %859, !dx.controlflow.hints !36

; <label>:855                                     ; preds = %848
  %856 = fcmp fast olt float %539, 0x3FE6666660000000
  %857 = select i1 %856, float 1.000000e+00, float 0.000000e+00
  %858 = select i1 %856, float 0.000000e+00, float 1.000000e+00
  br label %859

; <label>:859                                     ; preds = %855, %848
  %860 = phi float [ 0.000000e+00, %855 ], [ %542, %848 ]
  %861 = phi float [ %857, %855 ], [ %543, %848 ]
  %862 = phi float [ %858, %855 ], [ %544, %848 ]
  %863 = fmul fast float %861, %540
  %864 = fmul fast float %862, %539
  %865 = fsub fast float %863, %864
  %866 = fmul fast float %862, %538
  %867 = fmul fast float %860, %540
  %868 = fsub fast float %866, %867
  %869 = fmul fast float %860, %539
  %870 = fmul fast float %861, %538
  %871 = fsub fast float %869, %870
  %872 = call float @dx.op.dot3.f32(i32 55, float %865, float %868, float %871, float %865, float %868, float %871)  ; Dot3(ax,ay,az,bx,by,bz)
  %873 = call float @dx.op.unary.f32(i32 25, float %872)  ; Rsqrt(value)
  %874 = fmul fast float %873, %238
  %875 = fmul fast float %874, %865
  %876 = fmul fast float %874, %868
  %877 = fmul fast float %871, %238
  %878 = fmul fast float %877, %873
  %879 = fmul fast float %853, %390
  %880 = call float @dx.op.tertiary.f32(i32 46, float %854, float %396, float %879)  ; FMad(a,b,c)
  %881 = call float @dx.op.tertiary.f32(i32 46, float %846, float %402, float %880)  ; FMad(a,b,c)
  %882 = fadd fast float %881, %408
  %883 = fmul fast float %853, %391
  %884 = call float @dx.op.tertiary.f32(i32 46, float %854, float %397, float %883)  ; FMad(a,b,c)
  %885 = call float @dx.op.tertiary.f32(i32 46, float %846, float %403, float %884)  ; FMad(a,b,c)
  %886 = fadd fast float %885, %409
  %887 = fmul fast float %853, %392
  %888 = call float @dx.op.tertiary.f32(i32 46, float %854, float %398, float %887)  ; FMad(a,b,c)
  %889 = call float @dx.op.tertiary.f32(i32 46, float %846, float %404, float %888)  ; FMad(a,b,c)
  %890 = fadd fast float %889, %410
  %891 = fmul fast float %853, %393
  %892 = call float @dx.op.tertiary.f32(i32 46, float %854, float %399, float %891)  ; FMad(a,b,c)
  %893 = call float @dx.op.tertiary.f32(i32 46, float %846, float %405, float %892)  ; FMad(a,b,c)
  %894 = fadd fast float %893, %411
  %895 = fdiv fast float 1.000000e+00, %894
  %896 = fmul fast float %895, %882
  %897 = fmul fast float %895, %886
  %898 = fmul fast float %895, %890
  %899 = fsub fast float %241, %875
  %900 = fsub fast float %242, %876
  %901 = fsub fast float %243, %878
  %902 = fsub fast float %896, %899
  %903 = fsub fast float %897, %900
  %904 = fsub fast float %898, %901
  %905 = call float @dx.op.dot3.f32(i32 55, float %902, float %903, float %904, float %902, float %903, float %904)  ; Dot3(ax,ay,az,bx,by,bz)
  %906 = call float @dx.op.unary.f32(i32 25, float %905)  ; Rsqrt(value)
  %907 = fmul fast float %902, %906
  %908 = fmul fast float %903, %906
  %909 = fmul fast float %904, %906
  %910 = fsub fast float %420, %899
  %911 = fsub fast float %421, %900
  %912 = fsub fast float %422, %901
  %913 = call float @dx.op.dot3.f32(i32 55, float %589, float %590, float %591, float %910, float %911, float %912)  ; Dot3(ax,ay,az,bx,by,bz)
  %914 = call float @dx.op.dot3.f32(i32 55, float %589, float %590, float %591, float %907, float %908, float %909)  ; Dot3(ax,ay,az,bx,by,bz)
  %915 = fdiv fast float 1.000000e+00, %914
  %916 = fmul fast float %915, %913
  %917 = fmul fast float %916, %907
  %918 = fmul fast float %916, %908
  %919 = fmul fast float %916, %909
  %920 = fadd fast float %917, %899
  %921 = fadd fast float %918, %900
  %922 = fadd fast float %919, %901
  %923 = fadd fast float %875, %241
  %924 = fadd fast float %876, %242
  %925 = fadd fast float %878, %243
  %926 = fsub fast float %896, %923
  %927 = fsub fast float %897, %924
  %928 = fsub fast float %898, %925
  %929 = call float @dx.op.dot3.f32(i32 55, float %926, float %927, float %928, float %926, float %927, float %928)  ; Dot3(ax,ay,az,bx,by,bz)
  %930 = call float @dx.op.unary.f32(i32 25, float %929)  ; Rsqrt(value)
  %931 = fmul fast float %930, %926
  %932 = fmul fast float %930, %927
  %933 = fmul fast float %930, %928
  %934 = fsub fast float %420, %923
  %935 = fsub fast float %421, %924
  %936 = fsub fast float %422, %925
  %937 = call float @dx.op.dot3.f32(i32 55, float %589, float %590, float %591, float %934, float %935, float %936)  ; Dot3(ax,ay,az,bx,by,bz)
  %938 = call float @dx.op.dot3.f32(i32 55, float %589, float %590, float %591, float %931, float %932, float %933)  ; Dot3(ax,ay,az,bx,by,bz)
  %939 = fdiv fast float 1.000000e+00, %938
  %940 = fmul fast float %939, %937
  %941 = fmul fast float %940, %931
  %942 = fmul fast float %940, %932
  %943 = fmul fast float %940, %933
  %944 = fadd fast float %941, %923
  %945 = fadd fast float %942, %924
  %946 = fadd fast float %943, %925
  %947 = fmul fast float %920, %366
  %948 = call float @dx.op.tertiary.f32(i32 46, float %921, float %372, float %947)  ; FMad(a,b,c)
  %949 = call float @dx.op.tertiary.f32(i32 46, float %922, float %378, float %948)  ; FMad(a,b,c)
  %950 = fadd fast float %949, %384
  %951 = fmul fast float %920, %367
  %952 = call float @dx.op.tertiary.f32(i32 46, float %921, float %373, float %951)  ; FMad(a,b,c)
  %953 = call float @dx.op.tertiary.f32(i32 46, float %922, float %379, float %952)  ; FMad(a,b,c)
  %954 = fadd fast float %953, %385
  %955 = fmul fast float %920, %369
  %956 = call float @dx.op.tertiary.f32(i32 46, float %921, float %375, float %955)  ; FMad(a,b,c)
  %957 = call float @dx.op.tertiary.f32(i32 46, float %922, float %381, float %956)  ; FMad(a,b,c)
  %958 = fadd fast float %957, %387
  %959 = fmul fast float %944, %366
  %960 = call float @dx.op.tertiary.f32(i32 46, float %945, float %372, float %959)  ; FMad(a,b,c)
  %961 = call float @dx.op.tertiary.f32(i32 46, float %946, float %378, float %960)  ; FMad(a,b,c)
  %962 = fadd fast float %961, %384
  %963 = fmul fast float %944, %367
  %964 = call float @dx.op.tertiary.f32(i32 46, float %945, float %373, float %963)  ; FMad(a,b,c)
  %965 = call float @dx.op.tertiary.f32(i32 46, float %946, float %379, float %964)  ; FMad(a,b,c)
  %966 = fadd fast float %965, %385
  %967 = fmul fast float %944, %369
  %968 = call float @dx.op.tertiary.f32(i32 46, float %945, float %375, float %967)  ; FMad(a,b,c)
  %969 = call float @dx.op.tertiary.f32(i32 46, float %946, float %381, float %968)  ; FMad(a,b,c)
  %970 = fadd fast float %969, %387
  %971 = fdiv fast float 1.000000e+00, %958
  %972 = fmul fast float %971, %950
  %973 = fmul fast float %971, %954
  %974 = fdiv fast float 1.000000e+00, %970
  %975 = fmul fast float %974, %962
  %976 = fmul fast float %974, %966
  %977 = fsub fast float %975, %972
  %978 = fsub fast float %976, %973
  %979 = call float @dx.op.dot2.f32(i32 54, float %977, float %978, float %977, float %978)  ; Dot2(ax,ay,bx,by)
  %980 = call float @dx.op.unary.f32(i32 25, float %979)  ; Rsqrt(value)
  %981 = fmul fast float %977, %980
  %982 = fmul fast float %978, %980
  %983 = fmul fast float %977, %977
  %984 = fmul fast float %978, %978
  %985 = fadd fast float %983, %984
  %986 = call float @dx.op.unary.f32(i32 24, float %985)  ; Sqrt(value)
  %987 = fmul fast float %986, 5.000000e-01
  br i1 %415, label %1080, label %988, !dx.controlflow.hints !37

; <label>:988                                     ; preds = %859
  %989 = fsub fast float %241, %233
  %990 = fsub fast float %242, %234
  %991 = fsub fast float %243, %235
  %992 = fsub fast float %896, %989
  %993 = fsub fast float %897, %990
  %994 = fsub fast float %898, %991
  %995 = call float @dx.op.dot3.f32(i32 55, float %992, float %993, float %994, float %992, float %993, float %994)  ; Dot3(ax,ay,az,bx,by,bz)
  %996 = call float @dx.op.unary.f32(i32 25, float %995)  ; Rsqrt(value)
  %997 = fmul fast float %996, %992
  %998 = fmul fast float %996, %993
  %999 = fmul fast float %996, %994
  %1000 = fsub fast float %420, %989
  %1001 = fsub fast float %421, %990
  %1002 = fsub fast float %422, %991
  %1003 = call float @dx.op.dot3.f32(i32 55, float %589, float %590, float %591, float %1000, float %1001, float %1002)  ; Dot3(ax,ay,az,bx,by,bz)
  %1004 = call float @dx.op.dot3.f32(i32 55, float %589, float %590, float %591, float %997, float %998, float %999)  ; Dot3(ax,ay,az,bx,by,bz)
  %1005 = fdiv fast float 1.000000e+00, %1004
  %1006 = fmul fast float %1005, %1003
  %1007 = fmul fast float %1006, %997
  %1008 = fmul fast float %1006, %998
  %1009 = fmul fast float %1006, %999
  %1010 = fadd fast float %1007, %989
  %1011 = fadd fast float %1008, %990
  %1012 = fadd fast float %1009, %991
  %1013 = fadd fast float %241, %233
  %1014 = fadd fast float %242, %234
  %1015 = fadd fast float %243, %235
  %1016 = fsub fast float %896, %1013
  %1017 = fsub fast float %897, %1014
  %1018 = fsub fast float %898, %1015
  %1019 = call float @dx.op.dot3.f32(i32 55, float %1016, float %1017, float %1018, float %1016, float %1017, float %1018)  ; Dot3(ax,ay,az,bx,by,bz)
  %1020 = call float @dx.op.unary.f32(i32 25, float %1019)  ; Rsqrt(value)
  %1021 = fmul fast float %1020, %1016
  %1022 = fmul fast float %1020, %1017
  %1023 = fmul fast float %1020, %1018
  %1024 = fsub fast float %420, %1013
  %1025 = fsub fast float %421, %1014
  %1026 = fsub fast float %422, %1015
  %1027 = call float @dx.op.dot3.f32(i32 55, float %589, float %590, float %591, float %1024, float %1025, float %1026)  ; Dot3(ax,ay,az,bx,by,bz)
  %1028 = call float @dx.op.dot3.f32(i32 55, float %589, float %590, float %591, float %1021, float %1022, float %1023)  ; Dot3(ax,ay,az,bx,by,bz)
  %1029 = fdiv fast float 1.000000e+00, %1028
  %1030 = fmul fast float %1029, %1027
  %1031 = fmul fast float %1030, %1021
  %1032 = fmul fast float %1030, %1022
  %1033 = fmul fast float %1030, %1023
  %1034 = fadd fast float %1031, %1013
  %1035 = fadd fast float %1032, %1014
  %1036 = fadd fast float %1033, %1015
  %1037 = fmul fast float %1010, %366
  %1038 = call float @dx.op.tertiary.f32(i32 46, float %1011, float %372, float %1037)  ; FMad(a,b,c)
  %1039 = call float @dx.op.tertiary.f32(i32 46, float %1012, float %378, float %1038)  ; FMad(a,b,c)
  %1040 = fadd fast float %1039, %384
  %1041 = fmul fast float %1010, %367
  %1042 = call float @dx.op.tertiary.f32(i32 46, float %1011, float %373, float %1041)  ; FMad(a,b,c)
  %1043 = call float @dx.op.tertiary.f32(i32 46, float %1012, float %379, float %1042)  ; FMad(a,b,c)
  %1044 = fadd fast float %1043, %385
  %1045 = fmul fast float %1010, %369
  %1046 = call float @dx.op.tertiary.f32(i32 46, float %1011, float %375, float %1045)  ; FMad(a,b,c)
  %1047 = call float @dx.op.tertiary.f32(i32 46, float %1012, float %381, float %1046)  ; FMad(a,b,c)
  %1048 = fadd fast float %1047, %387
  %1049 = fmul fast float %1034, %366
  %1050 = call float @dx.op.tertiary.f32(i32 46, float %1035, float %372, float %1049)  ; FMad(a,b,c)
  %1051 = call float @dx.op.tertiary.f32(i32 46, float %1036, float %378, float %1050)  ; FMad(a,b,c)
  %1052 = fadd fast float %1051, %384
  %1053 = fmul fast float %1034, %367
  %1054 = call float @dx.op.tertiary.f32(i32 46, float %1035, float %373, float %1053)  ; FMad(a,b,c)
  %1055 = call float @dx.op.tertiary.f32(i32 46, float %1036, float %379, float %1054)  ; FMad(a,b,c)
  %1056 = fadd fast float %1055, %385
  %1057 = fmul fast float %1034, %369
  %1058 = call float @dx.op.tertiary.f32(i32 46, float %1035, float %375, float %1057)  ; FMad(a,b,c)
  %1059 = call float @dx.op.tertiary.f32(i32 46, float %1036, float %381, float %1058)  ; FMad(a,b,c)
  %1060 = fadd fast float %1059, %387
  %1061 = fdiv fast float 1.000000e+00, %1048
  %1062 = fmul fast float %1061, %1040
  %1063 = fmul fast float %1061, %1044
  %1064 = fdiv fast float 1.000000e+00, %1060
  %1065 = fmul fast float %1064, %1052
  %1066 = fmul fast float %1064, %1056
  %1067 = fsub fast float %1065, %1062
  %1068 = fsub fast float %1066, %1063
  %1069 = call float @dx.op.dot2.f32(i32 54, float %1067, float %1068, float %1067, float %1068)  ; Dot2(ax,ay,bx,by)
  %1070 = call float @dx.op.unary.f32(i32 25, float %1069)  ; Rsqrt(value)
  %1071 = fmul fast float %1067, %1070
  %1072 = fmul fast float %1068, %1070
  %1073 = fmul fast float %1067, %1067
  %1074 = fmul fast float %1068, %1068
  %1075 = fadd fast float %1073, %1074
  %1076 = call float @dx.op.unary.f32(i32 24, float %1075)  ; Sqrt(value)
  %1077 = fmul fast float %1076, 5.000000e-01
  %1078 = fcmp fast olt float %1077, %987
  br i1 %1078, label %1079, label %1080, !dx.controlflow.hints !38

; <label>:1079                                    ; preds = %988
  br label %1080

; <label>:1080                                    ; preds = %1079, %988, %859
  %1081 = phi float [ %987, %859 ], [ %1077, %1079 ], [ %987, %988 ]
  %1082 = phi float [ %987, %859 ], [ %987, %1079 ], [ %1077, %988 ]
  %1083 = phi float [ %981, %859 ], [ %981, %1079 ], [ %1071, %988 ]
  %1084 = phi float [ %982, %859 ], [ %982, %1079 ], [ %1072, %988 ]
  %1085 = fsub fast float %1082, %1081
  %1086 = fmul fast float %1083, %1083
  %1087 = fmul fast float %1086, %1085
  %1088 = fadd fast float %1087, %1081
  %1089 = fmul fast float %1083, %1085
  %1090 = fmul fast float %1089, %1084
  %1091 = fmul fast float %1084, %1084
  %1092 = fmul fast float %1091, %1085
  %1093 = fadd fast float %1092, %1081
  %1094 = fmul fast float %1088, %445
  %1095 = call float @dx.op.tertiary.f32(i32 46, float %444, float %1090, float %1094)  ; FMad(a,b,c)
  %1096 = fmul fast float %1090, %445
  %1097 = call float @dx.op.tertiary.f32(i32 46, float %444, float %1093, float %1096)  ; FMad(a,b,c)
  %1098 = fmul fast float %1088, %446
  %1099 = call float @dx.op.tertiary.f32(i32 46, float %445, float %1090, float %1098)  ; FMad(a,b,c)
  %1100 = fmul fast float %1090, %446
  %1101 = call float @dx.op.tertiary.f32(i32 46, float %445, float %1093, float %1100)  ; FMad(a,b,c)
  br label %1102

; <label>:1102                                    ; preds = %1102, %1080
  %1103 = phi float [ 0.000000e+00, %1080 ], [ %1129, %1102 ]
  %1104 = phi i32 [ 0, %1080 ], [ %1130, %1102 ]
  %1105 = mul i32 %1104, 2
  %1106 = add i32 0, %1105
  %1107 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1106
  %1108 = load float, float* %1107, align 4
  %1109 = mul i32 %1104, 2
  %1110 = add i32 1, %1109
  %1111 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1110
  %1112 = load float, float* %1111, align 4
  %1113 = fmul fast float %1108, %1095
  %1114 = call float @dx.op.tertiary.f32(i32 46, float %1112, float %1099, float %1113)  ; FMad(a,b,c)
  %1115 = fmul fast float %1108, %1097
  %1116 = call float @dx.op.tertiary.f32(i32 46, float %1112, float %1101, float %1115)  ; FMad(a,b,c)
  %1117 = fadd fast float %1114, %439
  %1118 = fadd fast float %1116, %440
  %1119 = fmul fast float %1117, %356
  %1120 = fmul fast float %1118, %356
  %1121 = call float @dx.op.binary.f32(i32 35, float %1119, float %352)  ; FMax(a,b)
  %1122 = call float @dx.op.binary.f32(i32 35, float %1120, float %352)  ; FMax(a,b)
  %1123 = call float @dx.op.binary.f32(i32 36, float %1121, float %353)  ; FMin(a,b)
  %1124 = call float @dx.op.binary.f32(i32 36, float %1122, float %353)  ; FMin(a,b)
  %1125 = fadd fast float %1123, %350
  %1126 = fadd fast float %1124, %351
  %1127 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %16, float %1125, float %1126, float %825, float undef, i32 0, i32 0, i32 undef, float %828)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1128 = extractvalue %dx.types.ResRet.f32 %1127, 0
  %1129 = fadd fast float %1128, %1103
  %1130 = add nuw nsw i32 %1104, 1
  %1131 = icmp eq i32 %1130, 8
  br i1 %1131, label %1132, label %1102

; <label>:1132                                    ; preds = %1102
  %1133 = fmul fast float %1129, 1.250000e-01
  br label %1134

; <label>:1134                                    ; preds = %1132, %842, %491
  %1135 = phi float [ %518, %491 ], [ %1133, %1132 ], [ 1.000000e+00, %842 ]
  %1136 = fadd fast float %1135, -1.000000e+00
  %1137 = fmul fast float %1136, %329
  %1138 = fadd fast float %1137, 1.000000e+00
  %1139 = fmul fast float %1138, %341
  br label %1140

; <label>:1140                                    ; preds = %1134, %308
  %1141 = phi float [ %1139, %1134 ], [ %341, %308 ]
  %1142 = call float @dx.op.binary.f32(i32 36, float %1141, float %1141)  ; FMin(a,b)
  %1143 = call float @dx.op.binary.f32(i32 36, float %1141, float %1142)  ; FMin(a,b)
  %1144 = fcmp fast ogt float %1143, 0x3F10000000000000
  %1145 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %1144)  ; WaveAnyTrue(cond)
  %1146 = select i1 %1145, i32 %220, i32 0
  %1147 = or i32 %215, %1146
  %1148 = lshr i32 %159, 5
  %1149 = lshr i32 %160, 5
  %1150 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1148, i32 %1149, i32 %218, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1151 = extractvalue %dx.types.ResRet.i32 %1150, 0
  %1152 = lshr i32 %1151, 23
  %1153 = and i32 %1152, 255
  %1154 = and i32 %159, 31
  %1155 = and i32 %160, 31
  %1156 = lshr i32 %1151, 1
  %1157 = and i32 %1156, 16352
  %1158 = lshr i32 %1151, 10
  %1159 = and i32 %1158, 8160
  %1160 = or i32 %1157, %1154
  %1161 = or i32 %1159, %1155
  %1162 = fmul fast float %1141, 2.550000e+02
  %1163 = fadd fast float %1162, %154
  %1164 = call float @dx.op.unary.f32(i32 27, float %1163)  ; Round_ni(value)
  %1165 = fmul fast float %1164, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1160, i32 %1161, i32 %1153, float %1165, float %1165, float %1165, float %1165, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1166 = icmp eq i32 %216, %220
  br i1 %1166, label %1167, label %214, !llvm.loop !41

; <label>:1167                                    ; preds = %1140
  br label %1168

; <label>:1168                                    ; preds = %1167, %186
  %1169 = phi i32 [ 0, %186 ], [ %1147, %1167 ]
  %1170 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1171 = extractvalue %dx.types.CBufRet.i32 %1170, 0
  %1172 = call i32 @dx.op.tertiary.i32(i32 49, i32 %165, i32 %1171, i32 %187)  ; UMad(a,b,c)
  %1173 = shl i32 %1172, 2
  %1174 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1173, i32 undef, i32 undef, i32 %1169)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1175 = add i32 %187, 1
  %1176 = icmp ugt i32 %1175, %183
  br i1 %1176, label %1177, label %186

; <label>:1177                                    ; preds = %1168
  br label %1178

; <label>:1178                                    ; preds = %1177, %158, %0
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

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare i32 @dx.op.waveReadLaneFirst.i32(i32, i32) #2

; Function Attrs: nounwind
declare i32 @dx.op.waveActiveBit.i32(i32, i32, i8) #2

; Function Attrs: nounwind
declare i32 @dx.op.waveActiveOp.i32(i32, i32, i8, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind
declare i1 @dx.op.waveAnyTrue(i32, i1) #2

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
!dx.entryPoints = !{!29}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !19, !22, !25}
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
!19 = !{!20, !21}
!20 = !{i32 0, %"class.RWTexture2DArray<float>"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!21 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!22 = !{!23, !24}
!23 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!24 = !{i32 1, %ConstantBufferSpotvis* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!25 = !{!26, !27, !28}
!26 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!27 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!28 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!29 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !30}
!30 = !{i32 0, i64 524560, i32 4, !31}
!31 = !{i32 8, i32 4, i32 1}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.unroll.disable"}

