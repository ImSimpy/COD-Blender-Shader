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
; shader hash: 3e12abf95bc43a6515d019199053c1eb
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
  %60 = fmul fast float %58, 2.000000e+00
  %61 = fmul fast float %60, %45
  %62 = fmul fast float %59, 2.000000e+00
  %63 = fmul fast float %62, %46
  %64 = fsub fast float 1.000000e+00, %61
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
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %145 = fmul fast float %144, 0x3FE3C6EF40000000
  %146 = frem fast float %45, 2.560000e+02
  %147 = frem fast float %46, 2.560000e+02
  %148 = fptoui float %146 to i32
  %149 = fptoui float %147 to i32
  %150 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %148, i32 %149, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %151 = extractvalue %dx.types.ResRet.f32 %150, 0
  %152 = fadd fast float %151, %145
  %153 = call float @dx.op.unary.f32(i32 22, float %152)  ; Frc(value)
  %154 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.i32 %154, 0
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %1160, label %157, !dx.controlflow.hints !31

; <label>:157                                     ; preds = %0
  %158 = fptoui float %45 to i32
  %159 = fptoui float %46 to i32
  %160 = lshr i32 %158, 4
  %161 = lshr i32 %159, 4
  %162 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.i32 %162, 0
  %164 = call i32 @dx.op.tertiary.i32(i32 49, i32 %161, i32 %163, i32 %160)  ; UMad(a,b,c)
  %165 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.i32 %165, 0
  %167 = add nsw i32 %166, -1
  %168 = call i32 @dx.op.binary.i32(i32 37, i32 %167, i32 0)  ; IMax(a,b)
  %169 = call float @dx.op.binary.f32(i32 35, float %56, float 0.000000e+00)  ; FMax(a,b)
  %170 = fptoui float %169 to i32
  %171 = lshr i32 %170, 5
  %172 = call i32 @dx.op.binary.i32(i32 40, i32 %171, i32 8191)  ; UMin(a,b)
  %173 = shl i32 %172, 2
  %174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %173, i32 undef)  ; BufferLoad(srv,index,wot)
  %175 = extractvalue %dx.types.ResRet.i32 %174, 0
  %176 = lshr i32 %175, 16
  %177 = and i32 %175, 65535
  %178 = lshr i32 %175, 21
  %179 = lshr i32 %177, 5
  %180 = call i32 @dx.op.binary.i32(i32 40, i32 %179, i32 %168)  ; UMin(a,b)
  %181 = icmp ugt i32 %178, %180
  br i1 %181, label %1160, label %182

; <label>:182                                     ; preds = %157
  br label %183

; <label>:183                                     ; preds = %1156, %182
  %184 = phi i32 [ %1157, %1156 ], [ %178, %182 ]
  %185 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.i32 %185, 0
  %187 = call i32 @dx.op.tertiary.i32(i32 49, i32 %164, i32 %186, i32 %184)  ; UMad(a,b,c)
  %188 = shl i32 %187, 2
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = shl i32 %184, 5
  %192 = sub nsw i32 %176, %191
  %193 = call i32 @dx.op.binary.i32(i32 37, i32 %192, i32 0)  ; IMax(a,b)
  %194 = call i32 @dx.op.binary.i32(i32 38, i32 %193, i32 31)  ; IMin(a,b)
  %195 = sub nsw i32 1, %176
  %196 = add nsw i32 %195, %177
  %197 = call i32 @dx.op.binary.i32(i32 37, i32 %196, i32 0)  ; IMax(a,b)
  %198 = call i32 @dx.op.binary.i32(i32 38, i32 %197, i32 32)  ; IMin(a,b)
  %199 = and i32 %198, 31
  %200 = shl i32 -1, %199
  %201 = xor i32 %200, -1
  %202 = and i32 %194, 31
  %203 = shl i32 %201, %202
  %204 = icmp eq i32 %198, 32
  %205 = select i1 %204, i32 -1, i32 %203
  %206 = and i32 %205, %190
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %1156, label %208

; <label>:208                                     ; preds = %183
  br label %209

; <label>:209                                     ; preds = %1134, %208
  %210 = phi i32 [ %215, %1134 ], [ %206, %208 ]
  %211 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %210)  ; FirstbitLo(value)
  %212 = add i32 %211, %191
  %213 = and i32 %211, 31
  %214 = shl i32 1, %213
  %215 = xor i32 %214, %210
  %216 = mul i32 %212, 112
  %217 = add i32 %216, 16
  %218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %217, i32 undef)  ; BufferLoad(srv,index,wot)
  %219 = extractvalue %dx.types.ResRet.f32 %218, 0
  %220 = extractvalue %dx.types.ResRet.f32 %218, 1
  %221 = extractvalue %dx.types.ResRet.f32 %218, 2
  %222 = add i32 %216, 28
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = add i32 %216, 32
  %226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.f32 %226, 0
  %228 = extractvalue %dx.types.ResRet.f32 %226, 1
  %229 = extractvalue %dx.types.ResRet.f32 %226, 2
  %230 = add i32 %216, 44
  %231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.f32 %231, 0
  %233 = add i32 %216, 48
  %234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.f32 %234, 0
  %236 = extractvalue %dx.types.ResRet.f32 %234, 1
  %237 = extractvalue %dx.types.ResRet.f32 %234, 2
  %238 = extractvalue %dx.types.ResRet.f32 %234, 3
  %239 = add i32 %216, 64
  %240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.f32 %240, 0
  %242 = extractvalue %dx.types.ResRet.f32 %240, 1
  %243 = extractvalue %dx.types.ResRet.f32 %240, 2
  %244 = extractvalue %dx.types.ResRet.f32 %240, 3
  %245 = add i32 %216, 92
  %246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %245, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.i32 %246, 0
  %248 = and i32 %247, 65535
  %249 = uitofp i32 %248 to float
  %250 = lshr i32 %247, 16
  %251 = uitofp i32 %250 to float
  %252 = and i32 %224, 65535
  %253 = and i32 %224, 50331648
  %254 = icmp eq i32 %253, 33554432
  %255 = call float @dx.op.dot3.f32(i32 55, float %227, float %228, float %229, float %227, float %228, float %229)  ; Dot3(ax,ay,az,bx,by,bz)
  %256 = fsub fast float %111, %235
  %257 = fsub fast float %112, %236
  %258 = fsub fast float %113, %237
  %259 = call float @dx.op.dot3.f32(i32 55, float %256, float %257, float %258, float %227, float %228, float %229)  ; Dot3(ax,ay,az,bx,by,bz)
  %260 = fdiv fast float %259, %255
  %261 = call float @dx.op.binary.f32(i32 35, float %260, float -1.000000e+00)  ; FMax(a,b)
  %262 = call float @dx.op.binary.f32(i32 36, float %261, float 1.000000e+00)  ; FMin(a,b)
  %263 = fmul fast float %262, %227
  %264 = fmul fast float %262, %228
  %265 = fmul fast float %262, %229
  %266 = fadd fast float %263, %235
  %267 = fadd fast float %264, %236
  %268 = fadd fast float %265, %237
  %269 = fsub fast float %266, %111
  %270 = fsub fast float %267, %112
  %271 = fsub fast float %268, %113
  %272 = call float @dx.op.dot3.f32(i32 55, float %269, float %270, float %271, float %269, float %270, float %271)  ; Dot3(ax,ay,az,bx,by,bz)
  %273 = call float @dx.op.unary.f32(i32 24, float %272)  ; Sqrt(value)
  %274 = fdiv fast float 1.000000e+00, %273
  %275 = fmul fast float %269, %274
  %276 = fmul fast float %270, %274
  %277 = fmul fast float %271, %274
  br i1 %254, label %278, label %302, !dx.controlflow.hints !32

; <label>:278                                     ; preds = %209
  %279 = fmul fast float %243, %219
  %280 = fmul fast float %243, %220
  %281 = fmul fast float %243, %221
  %282 = fsub fast float %279, %111
  %283 = fadd fast float %282, %266
  %284 = fsub fast float %280, %112
  %285 = fadd fast float %284, %267
  %286 = fsub fast float %281, %113
  %287 = fadd fast float %286, %268
  %288 = call float @dx.op.dot3.f32(i32 55, float %283, float %285, float %287, float %283, float %285, float %287)  ; Dot3(ax,ay,az,bx,by,bz)
  %289 = call float @dx.op.unary.f32(i32 25, float %288)  ; Rsqrt(value)
  %290 = fmul fast float %289, %283
  %291 = fmul fast float %289, %285
  %292 = fmul fast float %289, %287
  %293 = fsub fast float %111, %266
  %294 = fsub fast float %112, %267
  %295 = fsub fast float %113, %268
  %296 = fsub fast float -0.000000e+00, %293
  %297 = fsub fast float -0.000000e+00, %294
  %298 = fsub fast float -0.000000e+00, %295
  %299 = call float @dx.op.dot3.f32(i32 55, float %296, float %297, float %298, float %219, float %220, float %221)  ; Dot3(ax,ay,az,bx,by,bz)
  %300 = fcmp fast ogt float %299, 0.000000e+00
  %301 = uitofp i1 %300 to float
  br label %302

; <label>:302                                     ; preds = %278, %209
  %303 = phi float [ %301, %278 ], [ 1.000000e+00, %209 ]
  %304 = phi float [ %290, %278 ], [ %275, %209 ]
  %305 = phi float [ %291, %278 ], [ %276, %209 ]
  %306 = phi float [ %292, %278 ], [ %277, %209 ]
  %307 = call float @dx.op.dot3.f32(i32 55, float %219, float %220, float %221, float %304, float %305, float %306)  ; Dot3(ax,ay,az,bx,by,bz)
  %308 = fmul fast float %307, %307
  %309 = call float @dx.op.unary.f32(i32 7, float %308)  ; Saturate(value)
  %310 = fsub fast float 1.000000e+00, %309
  %311 = fmul fast float %310, 5.000000e-01
  %312 = fcmp fast ogt float %307, 0.000000e+00
  %313 = fsub fast float 1.000000e+00, %311
  %314 = select i1 %312, float %311, float %313
  %315 = fmul fast float %314, %251
  %316 = fadd fast float %315, %249
  %317 = fmul fast float %316, 0x3EF0001000000000
  %318 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %13, float %317, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %319 = extractvalue %dx.types.ResRet.f32 %318, 0
  %320 = fmul fast float %307, %241
  %321 = fadd fast float %320, %242
  %322 = call float @dx.op.unary.f32(i32 7, float %321)  ; Saturate(value)
  %323 = select i1 %254, float 1.000000e+00, float %322
  %324 = select i1 %254, float %322, float 1.000000e+00
  %325 = fmul fast float %273, %238
  %326 = fsub fast float 1.000000e+00, %325
  %327 = fmul fast float %326, %244
  %328 = call float @dx.op.unary.f32(i32 7, float %327)  ; Saturate(value)
  %329 = fmul fast float %328, %324
  %330 = fmul fast float %329, 2.000000e+00
  %331 = fsub fast float 3.000000e+00, %330
  %332 = fmul fast float %319, %303
  %333 = fmul fast float %329, %329
  %334 = fmul fast float %333, %332
  %335 = fmul fast float %334, %331
  %336 = icmp ne i32 %252, 255
  %337 = call float @dx.op.binary.f32(i32 36, float %335, float %335)  ; FMin(a,b)
  %338 = call float @dx.op.binary.f32(i32 36, float %335, float %337)  ; FMin(a,b)
  %339 = fcmp fast ogt float %338, 0.000000e+00
  %340 = and i1 %336, %339
  br i1 %340, label %341, label %1134, !dx.controlflow.hints !33

; <label>:341                                     ; preds = %302
  %342 = mul nuw nsw i32 %252, 176
  %343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.f32 %343, 0
  %345 = extractvalue %dx.types.ResRet.f32 %343, 1
  %346 = extractvalue %dx.types.ResRet.f32 %343, 2
  %347 = extractvalue %dx.types.ResRet.f32 %343, 3
  %348 = add nuw nsw i32 %342, 16
  %349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.f32 %349, 0
  %351 = extractvalue %dx.types.ResRet.f32 %349, 1
  %352 = add nuw nsw i32 %342, 32
  %353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.f32 %353, 0
  %355 = extractvalue %dx.types.ResRet.f32 %353, 1
  %356 = extractvalue %dx.types.ResRet.f32 %353, 2
  %357 = extractvalue %dx.types.ResRet.f32 %353, 3
  %358 = add nuw nsw i32 %342, 48
  %359 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.f32 %359, 0
  %361 = extractvalue %dx.types.ResRet.f32 %359, 1
  %362 = extractvalue %dx.types.ResRet.f32 %359, 2
  %363 = extractvalue %dx.types.ResRet.f32 %359, 3
  %364 = add nuw nsw i32 %342, 64
  %365 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.f32 %365, 0
  %367 = extractvalue %dx.types.ResRet.f32 %365, 1
  %368 = extractvalue %dx.types.ResRet.f32 %365, 2
  %369 = extractvalue %dx.types.ResRet.f32 %365, 3
  %370 = add nuw nsw i32 %342, 80
  %371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.f32 %371, 0
  %373 = extractvalue %dx.types.ResRet.f32 %371, 1
  %374 = extractvalue %dx.types.ResRet.f32 %371, 2
  %375 = extractvalue %dx.types.ResRet.f32 %371, 3
  %376 = add nuw nsw i32 %342, 96
  %377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.f32 %377, 0
  %379 = extractvalue %dx.types.ResRet.f32 %377, 1
  %380 = extractvalue %dx.types.ResRet.f32 %377, 2
  %381 = extractvalue %dx.types.ResRet.f32 %377, 3
  %382 = add nuw nsw i32 %342, 112
  %383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.f32 %383, 0
  %385 = extractvalue %dx.types.ResRet.f32 %383, 1
  %386 = extractvalue %dx.types.ResRet.f32 %383, 2
  %387 = extractvalue %dx.types.ResRet.f32 %383, 3
  %388 = add nuw nsw i32 %342, 128
  %389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.f32 %389, 0
  %391 = extractvalue %dx.types.ResRet.f32 %389, 1
  %392 = extractvalue %dx.types.ResRet.f32 %389, 2
  %393 = extractvalue %dx.types.ResRet.f32 %389, 3
  %394 = add nuw nsw i32 %342, 144
  %395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.f32 %395, 0
  %397 = extractvalue %dx.types.ResRet.f32 %395, 1
  %398 = extractvalue %dx.types.ResRet.f32 %395, 2
  %399 = extractvalue %dx.types.ResRet.f32 %395, 3
  %400 = add nuw nsw i32 %342, 160
  %401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.f32 %401, 0
  %403 = extractvalue %dx.types.ResRet.f32 %401, 1
  %404 = extractvalue %dx.types.ResRet.f32 %401, 2
  %405 = extractvalue %dx.types.ResRet.f32 %401, 3
  %406 = bitcast float %351 to i32
  %407 = bitcast float %357 to i32
  %408 = and i32 %407, 1
  %409 = icmp ne i32 %408, 0
  %410 = and i32 %407, 2
  %411 = fmul fast float %140, %356
  %412 = fmul fast float %141, %356
  %413 = fmul fast float %142, %356
  %414 = fadd fast float %411, %111
  %415 = fadd fast float %412, %112
  %416 = fadd fast float %413, %113
  %417 = fmul fast float %414, %360
  %418 = call float @dx.op.tertiary.f32(i32 46, float %415, float %366, float %417)  ; FMad(a,b,c)
  %419 = call float @dx.op.tertiary.f32(i32 46, float %416, float %372, float %418)  ; FMad(a,b,c)
  %420 = fadd fast float %419, %378
  %421 = fmul fast float %414, %361
  %422 = call float @dx.op.tertiary.f32(i32 46, float %415, float %367, float %421)  ; FMad(a,b,c)
  %423 = call float @dx.op.tertiary.f32(i32 46, float %416, float %373, float %422)  ; FMad(a,b,c)
  %424 = fadd fast float %423, %379
  %425 = fmul fast float %414, %362
  %426 = call float @dx.op.tertiary.f32(i32 46, float %415, float %368, float %425)  ; FMad(a,b,c)
  %427 = call float @dx.op.tertiary.f32(i32 46, float %416, float %374, float %426)  ; FMad(a,b,c)
  %428 = fadd fast float %427, %380
  %429 = fmul fast float %414, %363
  %430 = call float @dx.op.tertiary.f32(i32 46, float %415, float %369, float %429)  ; FMad(a,b,c)
  %431 = call float @dx.op.tertiary.f32(i32 46, float %416, float %375, float %430)  ; FMad(a,b,c)
  %432 = fadd fast float %431, %381
  %433 = fdiv fast float %420, %432
  %434 = fdiv fast float %424, %432
  %435 = fdiv fast float %428, %432
  %436 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %435)  ; FMax(a,b)
  %437 = fmul fast float %153, 0x401921FB60000000
  %438 = call float @dx.op.unary.f32(i32 13, float %437)  ; Sin(value)
  %439 = call float @dx.op.unary.f32(i32 12, float %437)  ; Cos(value)
  %440 = fsub fast float -0.000000e+00, %438
  %441 = icmp eq i32 %410, 0
  br i1 %441, label %442, label %513, !dx.controlflow.hints !34

; <label>:442                                     ; preds = %341
  %443 = fmul fast float %439, %355
  %444 = call float @dx.op.tertiary.f32(i32 46, float %438, float %355, float 0.000000e+00)  ; FMad(a,b,c)
  %445 = fmul fast float %355, %440
  %446 = call float @dx.op.tertiary.f32(i32 46, float %439, float %355, float 0.000000e+00)  ; FMad(a,b,c)
  br label %447

; <label>:447                                     ; preds = %447, %442
  %448 = phi float [ 0.000000e+00, %442 ], [ %480, %447 ]
  %449 = phi float [ 0.000000e+00, %442 ], [ %482, %447 ]
  %450 = phi i32 [ 0, %442 ], [ %483, %447 ]
  %451 = mul i32 %450, 2
  %452 = add i32 0, %451
  %453 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %452
  %454 = load float, float* %453, align 4
  %455 = mul i32 %450, 2
  %456 = add i32 1, %455
  %457 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %456
  %458 = load float, float* %457, align 4
  %459 = fmul fast float %443, %454
  %460 = call float @dx.op.tertiary.f32(i32 46, float %458, float %445, float %459)  ; FMad(a,b,c)
  %461 = fmul fast float %454, %444
  %462 = call float @dx.op.tertiary.f32(i32 46, float %458, float %446, float %461)  ; FMad(a,b,c)
  %463 = fadd fast float %460, %433
  %464 = fadd fast float %462, %434
  %465 = fmul fast float %463, %350
  %466 = fmul fast float %464, %350
  %467 = call float @dx.op.binary.f32(i32 35, float %465, float %346)  ; FMax(a,b)
  %468 = call float @dx.op.binary.f32(i32 35, float %466, float %346)  ; FMax(a,b)
  %469 = call float @dx.op.binary.f32(i32 36, float %467, float %347)  ; FMin(a,b)
  %470 = call float @dx.op.binary.f32(i32 36, float %468, float %347)  ; FMin(a,b)
  %471 = fadd fast float %469, %344
  %472 = fadd fast float %470, %345
  %473 = uitofp i32 %406 to float
  %474 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %14, float %471, float %472, float %473, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %475 = extractvalue %dx.types.ResRet.f32 %474, 0
  %476 = fsub fast float %475, %436
  %477 = fsub fast float %476, %354
  %478 = fcmp fast ogt float %477, 0.000000e+00
  %479 = select i1 %478, float 1.000000e+00, float 0.000000e+00
  %480 = fadd fast float %479, %448
  %481 = select i1 %478, float %477, float 0.000000e+00
  %482 = fadd fast float %481, %449
  %483 = add nuw nsw i32 %450, 1
  %484 = icmp eq i32 %483, 8
  br i1 %484, label %485, label %447

; <label>:485                                     ; preds = %447
  %486 = fdiv fast float 1.000000e+00, %480
  %487 = fmul fast float %486, %482
  %488 = fdiv fast float 1.000000e+00, %436
  %489 = fmul fast float %487, %488
  %490 = call float @dx.op.unary.f32(i32 7, float %489)  ; Saturate(value)
  %491 = call float @dx.op.binary.f32(i32 35, float %490, float 0.000000e+00)  ; FMax(a,b)
  %492 = fmul fast float %480, 1.250000e-01
  %493 = call float @dx.op.unary.f32(i32 7, float %492)  ; Saturate(value)
  %494 = fmul fast float %493, 2.000000e+00
  %495 = fadd fast float %494, -1.000000e+00
  %496 = fcmp fast ogt float %495, 0.000000e+00
  %497 = fcmp fast olt float %495, 0.000000e+00
  %498 = zext i1 %496 to i32
  %499 = zext i1 %497 to i32
  %500 = sub nsw i32 %498, %499
  %501 = sitofp i32 %500 to float
  %502 = fmul fast float %501, %495
  %503 = fsub fast float 1.000000e+00, %502
  %504 = fmul fast float %503, %503
  %505 = fmul fast float %504, %503
  %506 = fsub fast float %503, %505
  %507 = fmul fast float %506, %491
  %508 = fsub fast float 1.000000e+00, %505
  %509 = fsub fast float %508, %507
  %510 = fmul fast float %501, 5.000000e-01
  %511 = fmul fast float %510, %509
  %512 = fsub fast float 5.000000e-01, %511
  br label %1128

; <label>:513                                     ; preds = %341
  %514 = fsub fast float 1.000000e+00, %436
  %515 = fmul fast float %514, 5.000000e-01
  %516 = fadd fast float %515, %436
  %517 = fsub fast float %414, %235
  %518 = fsub fast float %415, %236
  %519 = fsub fast float %416, %237
  %520 = call float @dx.op.dot3.f32(i32 55, float %517, float %518, float %519, float %227, float %228, float %229)  ; Dot3(ax,ay,az,bx,by,bz)
  %521 = fdiv fast float %520, %255
  %522 = call float @dx.op.binary.f32(i32 35, float %521, float -1.000000e+00)  ; FMax(a,b)
  %523 = call float @dx.op.binary.f32(i32 36, float %522, float 1.000000e+00)  ; FMin(a,b)
  %524 = fmul fast float %523, %227
  %525 = fmul fast float %523, %228
  %526 = fmul fast float %523, %229
  %527 = fsub fast float %517, %524
  %528 = fsub fast float %518, %525
  %529 = fsub fast float %519, %526
  %530 = call float @dx.op.dot3.f32(i32 55, float %527, float %528, float %529, float %527, float %528, float %529)  ; Dot3(ax,ay,az,bx,by,bz)
  %531 = call float @dx.op.unary.f32(i32 25, float %530)  ; Rsqrt(value)
  %532 = fmul fast float %527, %531
  %533 = fmul fast float %528, %531
  %534 = fmul fast float %529, %531
  %535 = call float @dx.op.unary.f32(i32 25, float %255)  ; Rsqrt(value)
  %536 = fmul fast float %535, %227
  %537 = fmul fast float %535, %228
  %538 = fmul fast float %535, %229
  br i1 %409, label %539, label %543, !dx.controlflow.hints !35

; <label>:539                                     ; preds = %513
  %540 = fcmp fast olt float %533, 0x3FE6666660000000
  %541 = select i1 %540, float 1.000000e+00, float 0.000000e+00
  %542 = select i1 %540, float 0.000000e+00, float 1.000000e+00
  br label %543

; <label>:543                                     ; preds = %539, %513
  %544 = phi float [ 0.000000e+00, %539 ], [ %536, %513 ]
  %545 = phi float [ %541, %539 ], [ %537, %513 ]
  %546 = phi float [ %542, %539 ], [ %538, %513 ]
  %547 = fmul fast float %545, %534
  %548 = fmul fast float %546, %533
  %549 = fsub fast float %547, %548
  %550 = fmul fast float %546, %532
  %551 = fmul fast float %544, %534
  %552 = fsub fast float %550, %551
  %553 = fmul fast float %544, %533
  %554 = fmul fast float %545, %532
  %555 = fsub fast float %553, %554
  %556 = call float @dx.op.dot3.f32(i32 55, float %549, float %552, float %555, float %549, float %552, float %555)  ; Dot3(ax,ay,az,bx,by,bz)
  %557 = call float @dx.op.unary.f32(i32 25, float %556)  ; Rsqrt(value)
  %558 = fmul fast float %557, %232
  %559 = fmul fast float %558, %549
  %560 = fmul fast float %558, %552
  %561 = fmul fast float %555, %232
  %562 = fmul fast float %561, %557
  %563 = fmul fast float %433, %384
  %564 = call float @dx.op.tertiary.f32(i32 46, float %434, float %390, float %563)  ; FMad(a,b,c)
  %565 = call float @dx.op.tertiary.f32(i32 46, float %516, float %396, float %564)  ; FMad(a,b,c)
  %566 = fadd fast float %565, %402
  %567 = fmul fast float %433, %385
  %568 = call float @dx.op.tertiary.f32(i32 46, float %434, float %391, float %567)  ; FMad(a,b,c)
  %569 = call float @dx.op.tertiary.f32(i32 46, float %516, float %397, float %568)  ; FMad(a,b,c)
  %570 = fadd fast float %569, %403
  %571 = fmul fast float %433, %386
  %572 = call float @dx.op.tertiary.f32(i32 46, float %434, float %392, float %571)  ; FMad(a,b,c)
  %573 = call float @dx.op.tertiary.f32(i32 46, float %516, float %398, float %572)  ; FMad(a,b,c)
  %574 = fadd fast float %573, %404
  %575 = fmul fast float %433, %387
  %576 = call float @dx.op.tertiary.f32(i32 46, float %434, float %393, float %575)  ; FMad(a,b,c)
  %577 = call float @dx.op.tertiary.f32(i32 46, float %516, float %399, float %576)  ; FMad(a,b,c)
  %578 = fadd fast float %577, %405
  %579 = fdiv fast float 1.000000e+00, %578
  %580 = fmul fast float %579, %566
  %581 = fmul fast float %579, %570
  %582 = fmul fast float %579, %574
  %583 = fsub fast float -0.000000e+00, %532
  %584 = fsub fast float -0.000000e+00, %533
  %585 = fsub fast float -0.000000e+00, %534
  %586 = fsub fast float %235, %559
  %587 = fsub fast float %236, %560
  %588 = fsub fast float %237, %562
  %589 = fsub fast float %580, %586
  %590 = fsub fast float %581, %587
  %591 = fsub fast float %582, %588
  %592 = call float @dx.op.dot3.f32(i32 55, float %589, float %590, float %591, float %589, float %590, float %591)  ; Dot3(ax,ay,az,bx,by,bz)
  %593 = call float @dx.op.unary.f32(i32 25, float %592)  ; Rsqrt(value)
  %594 = fmul fast float %589, %593
  %595 = fmul fast float %590, %593
  %596 = fmul fast float %591, %593
  %597 = fsub fast float %414, %586
  %598 = fsub fast float %415, %587
  %599 = fsub fast float %416, %588
  %600 = call float @dx.op.dot3.f32(i32 55, float %583, float %584, float %585, float %597, float %598, float %599)  ; Dot3(ax,ay,az,bx,by,bz)
  %601 = call float @dx.op.dot3.f32(i32 55, float %583, float %584, float %585, float %594, float %595, float %596)  ; Dot3(ax,ay,az,bx,by,bz)
  %602 = fdiv fast float 1.000000e+00, %601
  %603 = fmul fast float %602, %600
  %604 = fmul fast float %603, %594
  %605 = fmul fast float %603, %595
  %606 = fmul fast float %603, %596
  %607 = fadd fast float %604, %586
  %608 = fadd fast float %605, %587
  %609 = fadd fast float %606, %588
  %610 = fadd fast float %559, %235
  %611 = fadd fast float %560, %236
  %612 = fadd fast float %562, %237
  %613 = fsub fast float %580, %610
  %614 = fsub fast float %581, %611
  %615 = fsub fast float %582, %612
  %616 = call float @dx.op.dot3.f32(i32 55, float %613, float %614, float %615, float %613, float %614, float %615)  ; Dot3(ax,ay,az,bx,by,bz)
  %617 = call float @dx.op.unary.f32(i32 25, float %616)  ; Rsqrt(value)
  %618 = fmul fast float %617, %613
  %619 = fmul fast float %617, %614
  %620 = fmul fast float %617, %615
  %621 = fsub fast float %414, %610
  %622 = fsub fast float %415, %611
  %623 = fsub fast float %416, %612
  %624 = call float @dx.op.dot3.f32(i32 55, float %583, float %584, float %585, float %621, float %622, float %623)  ; Dot3(ax,ay,az,bx,by,bz)
  %625 = call float @dx.op.dot3.f32(i32 55, float %583, float %584, float %585, float %618, float %619, float %620)  ; Dot3(ax,ay,az,bx,by,bz)
  %626 = fdiv fast float 1.000000e+00, %625
  %627 = fmul fast float %626, %624
  %628 = fmul fast float %627, %618
  %629 = fmul fast float %627, %619
  %630 = fmul fast float %627, %620
  %631 = fadd fast float %628, %610
  %632 = fadd fast float %629, %611
  %633 = fadd fast float %630, %612
  %634 = fmul fast float %607, %360
  %635 = call float @dx.op.tertiary.f32(i32 46, float %608, float %366, float %634)  ; FMad(a,b,c)
  %636 = call float @dx.op.tertiary.f32(i32 46, float %609, float %372, float %635)  ; FMad(a,b,c)
  %637 = fadd fast float %636, %378
  %638 = fmul fast float %607, %361
  %639 = call float @dx.op.tertiary.f32(i32 46, float %608, float %367, float %638)  ; FMad(a,b,c)
  %640 = call float @dx.op.tertiary.f32(i32 46, float %609, float %373, float %639)  ; FMad(a,b,c)
  %641 = fadd fast float %640, %379
  %642 = fmul fast float %607, %363
  %643 = call float @dx.op.tertiary.f32(i32 46, float %608, float %369, float %642)  ; FMad(a,b,c)
  %644 = call float @dx.op.tertiary.f32(i32 46, float %609, float %375, float %643)  ; FMad(a,b,c)
  %645 = fadd fast float %644, %381
  %646 = fmul fast float %631, %360
  %647 = call float @dx.op.tertiary.f32(i32 46, float %632, float %366, float %646)  ; FMad(a,b,c)
  %648 = call float @dx.op.tertiary.f32(i32 46, float %633, float %372, float %647)  ; FMad(a,b,c)
  %649 = fadd fast float %648, %378
  %650 = fmul fast float %631, %361
  %651 = call float @dx.op.tertiary.f32(i32 46, float %632, float %367, float %650)  ; FMad(a,b,c)
  %652 = call float @dx.op.tertiary.f32(i32 46, float %633, float %373, float %651)  ; FMad(a,b,c)
  %653 = fadd fast float %652, %379
  %654 = fmul fast float %631, %363
  %655 = call float @dx.op.tertiary.f32(i32 46, float %632, float %369, float %654)  ; FMad(a,b,c)
  %656 = call float @dx.op.tertiary.f32(i32 46, float %633, float %375, float %655)  ; FMad(a,b,c)
  %657 = fadd fast float %656, %381
  %658 = fdiv fast float 1.000000e+00, %645
  %659 = fmul fast float %658, %637
  %660 = fmul fast float %658, %641
  %661 = fdiv fast float 1.000000e+00, %657
  %662 = fmul fast float %661, %649
  %663 = fmul fast float %661, %653
  %664 = fsub fast float %662, %659
  %665 = fsub fast float %663, %660
  %666 = call float @dx.op.dot2.f32(i32 54, float %664, float %665, float %664, float %665)  ; Dot2(ax,ay,bx,by)
  %667 = call float @dx.op.unary.f32(i32 25, float %666)  ; Rsqrt(value)
  %668 = fmul fast float %664, %667
  %669 = fmul fast float %665, %667
  %670 = fmul fast float %664, %664
  %671 = fmul fast float %665, %665
  %672 = fadd fast float %670, %671
  %673 = call float @dx.op.unary.f32(i32 24, float %672)  ; Sqrt(value)
  %674 = fmul fast float %673, 5.000000e-01
  br i1 %409, label %767, label %675, !dx.controlflow.hints !36

; <label>:675                                     ; preds = %543
  %676 = fsub fast float %235, %227
  %677 = fsub fast float %236, %228
  %678 = fsub fast float %237, %229
  %679 = fsub fast float %580, %676
  %680 = fsub fast float %581, %677
  %681 = fsub fast float %582, %678
  %682 = call float @dx.op.dot3.f32(i32 55, float %679, float %680, float %681, float %679, float %680, float %681)  ; Dot3(ax,ay,az,bx,by,bz)
  %683 = call float @dx.op.unary.f32(i32 25, float %682)  ; Rsqrt(value)
  %684 = fmul fast float %683, %679
  %685 = fmul fast float %683, %680
  %686 = fmul fast float %683, %681
  %687 = fsub fast float %414, %676
  %688 = fsub fast float %415, %677
  %689 = fsub fast float %416, %678
  %690 = call float @dx.op.dot3.f32(i32 55, float %583, float %584, float %585, float %687, float %688, float %689)  ; Dot3(ax,ay,az,bx,by,bz)
  %691 = call float @dx.op.dot3.f32(i32 55, float %583, float %584, float %585, float %684, float %685, float %686)  ; Dot3(ax,ay,az,bx,by,bz)
  %692 = fdiv fast float 1.000000e+00, %691
  %693 = fmul fast float %692, %690
  %694 = fmul fast float %693, %684
  %695 = fmul fast float %693, %685
  %696 = fmul fast float %693, %686
  %697 = fadd fast float %694, %676
  %698 = fadd fast float %695, %677
  %699 = fadd fast float %696, %678
  %700 = fadd fast float %235, %227
  %701 = fadd fast float %236, %228
  %702 = fadd fast float %237, %229
  %703 = fsub fast float %580, %700
  %704 = fsub fast float %581, %701
  %705 = fsub fast float %582, %702
  %706 = call float @dx.op.dot3.f32(i32 55, float %703, float %704, float %705, float %703, float %704, float %705)  ; Dot3(ax,ay,az,bx,by,bz)
  %707 = call float @dx.op.unary.f32(i32 25, float %706)  ; Rsqrt(value)
  %708 = fmul fast float %707, %703
  %709 = fmul fast float %707, %704
  %710 = fmul fast float %707, %705
  %711 = fsub fast float %414, %700
  %712 = fsub fast float %415, %701
  %713 = fsub fast float %416, %702
  %714 = call float @dx.op.dot3.f32(i32 55, float %583, float %584, float %585, float %711, float %712, float %713)  ; Dot3(ax,ay,az,bx,by,bz)
  %715 = call float @dx.op.dot3.f32(i32 55, float %583, float %584, float %585, float %708, float %709, float %710)  ; Dot3(ax,ay,az,bx,by,bz)
  %716 = fdiv fast float 1.000000e+00, %715
  %717 = fmul fast float %716, %714
  %718 = fmul fast float %717, %708
  %719 = fmul fast float %717, %709
  %720 = fmul fast float %717, %710
  %721 = fadd fast float %718, %700
  %722 = fadd fast float %719, %701
  %723 = fadd fast float %720, %702
  %724 = fmul fast float %697, %360
  %725 = call float @dx.op.tertiary.f32(i32 46, float %698, float %366, float %724)  ; FMad(a,b,c)
  %726 = call float @dx.op.tertiary.f32(i32 46, float %699, float %372, float %725)  ; FMad(a,b,c)
  %727 = fadd fast float %726, %378
  %728 = fmul fast float %697, %361
  %729 = call float @dx.op.tertiary.f32(i32 46, float %698, float %367, float %728)  ; FMad(a,b,c)
  %730 = call float @dx.op.tertiary.f32(i32 46, float %699, float %373, float %729)  ; FMad(a,b,c)
  %731 = fadd fast float %730, %379
  %732 = fmul fast float %697, %363
  %733 = call float @dx.op.tertiary.f32(i32 46, float %698, float %369, float %732)  ; FMad(a,b,c)
  %734 = call float @dx.op.tertiary.f32(i32 46, float %699, float %375, float %733)  ; FMad(a,b,c)
  %735 = fadd fast float %734, %381
  %736 = fmul fast float %721, %360
  %737 = call float @dx.op.tertiary.f32(i32 46, float %722, float %366, float %736)  ; FMad(a,b,c)
  %738 = call float @dx.op.tertiary.f32(i32 46, float %723, float %372, float %737)  ; FMad(a,b,c)
  %739 = fadd fast float %738, %378
  %740 = fmul fast float %721, %361
  %741 = call float @dx.op.tertiary.f32(i32 46, float %722, float %367, float %740)  ; FMad(a,b,c)
  %742 = call float @dx.op.tertiary.f32(i32 46, float %723, float %373, float %741)  ; FMad(a,b,c)
  %743 = fadd fast float %742, %379
  %744 = fmul fast float %721, %363
  %745 = call float @dx.op.tertiary.f32(i32 46, float %722, float %369, float %744)  ; FMad(a,b,c)
  %746 = call float @dx.op.tertiary.f32(i32 46, float %723, float %375, float %745)  ; FMad(a,b,c)
  %747 = fadd fast float %746, %381
  %748 = fdiv fast float 1.000000e+00, %735
  %749 = fmul fast float %748, %727
  %750 = fmul fast float %748, %731
  %751 = fdiv fast float 1.000000e+00, %747
  %752 = fmul fast float %751, %739
  %753 = fmul fast float %751, %743
  %754 = fsub fast float %752, %749
  %755 = fsub fast float %753, %750
  %756 = call float @dx.op.dot2.f32(i32 54, float %754, float %755, float %754, float %755)  ; Dot2(ax,ay,bx,by)
  %757 = call float @dx.op.unary.f32(i32 25, float %756)  ; Rsqrt(value)
  %758 = fmul fast float %754, %757
  %759 = fmul fast float %755, %757
  %760 = fmul fast float %754, %754
  %761 = fmul fast float %755, %755
  %762 = fadd fast float %760, %761
  %763 = call float @dx.op.unary.f32(i32 24, float %762)  ; Sqrt(value)
  %764 = fmul fast float %763, 5.000000e-01
  %765 = fcmp fast olt float %764, %674
  br i1 %765, label %766, label %767, !dx.controlflow.hints !37

; <label>:766                                     ; preds = %675
  br label %767

; <label>:767                                     ; preds = %766, %675, %543
  %768 = phi float [ %674, %543 ], [ %764, %766 ], [ %674, %675 ]
  %769 = phi float [ %674, %543 ], [ %674, %766 ], [ %764, %675 ]
  %770 = phi float [ %668, %543 ], [ %668, %766 ], [ %758, %675 ]
  %771 = phi float [ %669, %543 ], [ %669, %766 ], [ %759, %675 ]
  %772 = fmul fast float %768, %355
  %773 = fdiv fast float %772, %769
  %774 = fsub fast float %355, %773
  %775 = fmul fast float %770, %770
  %776 = fmul fast float %775, %774
  %777 = fadd fast float %776, %773
  %778 = fmul fast float %771, %770
  %779 = fmul fast float %778, %774
  %780 = fmul fast float %771, %771
  %781 = fmul fast float %780, %774
  %782 = fadd fast float %781, %773
  %783 = fmul fast float %777, %439
  %784 = call float @dx.op.tertiary.f32(i32 46, float %438, float %779, float %783)  ; FMad(a,b,c)
  %785 = fmul fast float %779, %439
  %786 = call float @dx.op.tertiary.f32(i32 46, float %438, float %782, float %785)  ; FMad(a,b,c)
  %787 = fmul fast float %777, %440
  %788 = call float @dx.op.tertiary.f32(i32 46, float %439, float %779, float %787)  ; FMad(a,b,c)
  %789 = fmul fast float %779, %440
  %790 = call float @dx.op.tertiary.f32(i32 46, float %439, float %782, float %789)  ; FMad(a,b,c)
  br label %791

; <label>:791                                     ; preds = %829, %767
  %792 = phi float [ 0.000000e+00, %767 ], [ %830, %829 ]
  %793 = phi float [ 0.000000e+00, %767 ], [ %831, %829 ]
  %794 = phi float [ 0.000000e+00, %767 ], [ %832, %829 ]
  %795 = phi float [ 0.000000e+00, %767 ], [ %833, %829 ]
  %796 = phi i32 [ 0, %767 ], [ %834, %829 ]
  %797 = mul i32 %796, 2
  %798 = add i32 0, %797
  %799 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %798
  %800 = load float, float* %799, align 4
  %801 = mul i32 %796, 2
  %802 = add i32 1, %801
  %803 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %802
  %804 = load float, float* %803, align 4
  %805 = fmul fast float %800, %784
  %806 = call float @dx.op.tertiary.f32(i32 46, float %804, float %788, float %805)  ; FMad(a,b,c)
  %807 = fmul fast float %800, %786
  %808 = call float @dx.op.tertiary.f32(i32 46, float %804, float %790, float %807)  ; FMad(a,b,c)
  %809 = fadd fast float %806, %433
  %810 = fadd fast float %808, %434
  %811 = fmul fast float %809, %350
  %812 = fmul fast float %810, %350
  %813 = call float @dx.op.binary.f32(i32 35, float %811, float %346)  ; FMax(a,b)
  %814 = call float @dx.op.binary.f32(i32 35, float %812, float %346)  ; FMax(a,b)
  %815 = call float @dx.op.binary.f32(i32 36, float %813, float %347)  ; FMin(a,b)
  %816 = call float @dx.op.binary.f32(i32 36, float %814, float %347)  ; FMin(a,b)
  %817 = fadd fast float %815, %344
  %818 = fadd fast float %816, %345
  %819 = uitofp i32 %406 to float
  %820 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %14, float %817, float %818, float %819, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %821 = extractvalue %dx.types.ResRet.f32 %820, 0
  %822 = fadd fast float %436, %354
  %823 = fcmp fast olt float %822, %821
  br i1 %823, label %824, label %829, !dx.controlflow.hints !38

; <label>:824                                     ; preds = %791
  %825 = fadd fast float %821, %794
  %826 = fadd fast float %806, %792
  %827 = fadd fast float %808, %793
  %828 = fadd fast float %795, 1.000000e+00
  br label %829

; <label>:829                                     ; preds = %824, %791
  %830 = phi float [ %826, %824 ], [ %792, %791 ]
  %831 = phi float [ %827, %824 ], [ %793, %791 ]
  %832 = phi float [ %825, %824 ], [ %794, %791 ]
  %833 = phi float [ %828, %824 ], [ %795, %791 ]
  %834 = add nuw nsw i32 %796, 1
  %835 = icmp eq i32 %834, 8
  br i1 %835, label %836, label %791

; <label>:836                                     ; preds = %829
  %837 = fdiv fast float 1.000000e+00, %833
  %838 = fcmp fast oeq float %833, 0.000000e+00
  %839 = fmul fast float %837, %832
  %840 = select i1 %838, float -1.000000e+00, float %839
  %841 = fcmp fast olt float %840, 0.000000e+00
  br i1 %841, label %1128, label %842, !dx.controlflow.hints !39

; <label>:842                                     ; preds = %836
  %843 = fmul fast float %837, %831
  %844 = select i1 %838, float 0.000000e+00, float %843
  %845 = fmul fast float %837, %830
  %846 = select i1 %838, float 0.000000e+00, float %845
  %847 = fadd fast float %846, %433
  %848 = fadd fast float %844, %434
  br i1 %409, label %849, label %853, !dx.controlflow.hints !35

; <label>:849                                     ; preds = %842
  %850 = fcmp fast olt float %533, 0x3FE6666660000000
  %851 = select i1 %850, float 1.000000e+00, float 0.000000e+00
  %852 = select i1 %850, float 0.000000e+00, float 1.000000e+00
  br label %853

; <label>:853                                     ; preds = %849, %842
  %854 = phi float [ 0.000000e+00, %849 ], [ %536, %842 ]
  %855 = phi float [ %851, %849 ], [ %537, %842 ]
  %856 = phi float [ %852, %849 ], [ %538, %842 ]
  %857 = fmul fast float %855, %534
  %858 = fmul fast float %856, %533
  %859 = fsub fast float %857, %858
  %860 = fmul fast float %856, %532
  %861 = fmul fast float %854, %534
  %862 = fsub fast float %860, %861
  %863 = fmul fast float %854, %533
  %864 = fmul fast float %855, %532
  %865 = fsub fast float %863, %864
  %866 = call float @dx.op.dot3.f32(i32 55, float %859, float %862, float %865, float %859, float %862, float %865)  ; Dot3(ax,ay,az,bx,by,bz)
  %867 = call float @dx.op.unary.f32(i32 25, float %866)  ; Rsqrt(value)
  %868 = fmul fast float %867, %232
  %869 = fmul fast float %868, %859
  %870 = fmul fast float %868, %862
  %871 = fmul fast float %865, %232
  %872 = fmul fast float %871, %867
  %873 = fmul fast float %847, %384
  %874 = call float @dx.op.tertiary.f32(i32 46, float %848, float %390, float %873)  ; FMad(a,b,c)
  %875 = call float @dx.op.tertiary.f32(i32 46, float %840, float %396, float %874)  ; FMad(a,b,c)
  %876 = fadd fast float %875, %402
  %877 = fmul fast float %847, %385
  %878 = call float @dx.op.tertiary.f32(i32 46, float %848, float %391, float %877)  ; FMad(a,b,c)
  %879 = call float @dx.op.tertiary.f32(i32 46, float %840, float %397, float %878)  ; FMad(a,b,c)
  %880 = fadd fast float %879, %403
  %881 = fmul fast float %847, %386
  %882 = call float @dx.op.tertiary.f32(i32 46, float %848, float %392, float %881)  ; FMad(a,b,c)
  %883 = call float @dx.op.tertiary.f32(i32 46, float %840, float %398, float %882)  ; FMad(a,b,c)
  %884 = fadd fast float %883, %404
  %885 = fmul fast float %847, %387
  %886 = call float @dx.op.tertiary.f32(i32 46, float %848, float %393, float %885)  ; FMad(a,b,c)
  %887 = call float @dx.op.tertiary.f32(i32 46, float %840, float %399, float %886)  ; FMad(a,b,c)
  %888 = fadd fast float %887, %405
  %889 = fdiv fast float 1.000000e+00, %888
  %890 = fmul fast float %889, %876
  %891 = fmul fast float %889, %880
  %892 = fmul fast float %889, %884
  %893 = fsub fast float %235, %869
  %894 = fsub fast float %236, %870
  %895 = fsub fast float %237, %872
  %896 = fsub fast float %890, %893
  %897 = fsub fast float %891, %894
  %898 = fsub fast float %892, %895
  %899 = call float @dx.op.dot3.f32(i32 55, float %896, float %897, float %898, float %896, float %897, float %898)  ; Dot3(ax,ay,az,bx,by,bz)
  %900 = call float @dx.op.unary.f32(i32 25, float %899)  ; Rsqrt(value)
  %901 = fmul fast float %896, %900
  %902 = fmul fast float %897, %900
  %903 = fmul fast float %898, %900
  %904 = fsub fast float %414, %893
  %905 = fsub fast float %415, %894
  %906 = fsub fast float %416, %895
  %907 = call float @dx.op.dot3.f32(i32 55, float %583, float %584, float %585, float %904, float %905, float %906)  ; Dot3(ax,ay,az,bx,by,bz)
  %908 = call float @dx.op.dot3.f32(i32 55, float %583, float %584, float %585, float %901, float %902, float %903)  ; Dot3(ax,ay,az,bx,by,bz)
  %909 = fdiv fast float 1.000000e+00, %908
  %910 = fmul fast float %909, %907
  %911 = fmul fast float %910, %901
  %912 = fmul fast float %910, %902
  %913 = fmul fast float %910, %903
  %914 = fadd fast float %911, %893
  %915 = fadd fast float %912, %894
  %916 = fadd fast float %913, %895
  %917 = fadd fast float %869, %235
  %918 = fadd fast float %870, %236
  %919 = fadd fast float %872, %237
  %920 = fsub fast float %890, %917
  %921 = fsub fast float %891, %918
  %922 = fsub fast float %892, %919
  %923 = call float @dx.op.dot3.f32(i32 55, float %920, float %921, float %922, float %920, float %921, float %922)  ; Dot3(ax,ay,az,bx,by,bz)
  %924 = call float @dx.op.unary.f32(i32 25, float %923)  ; Rsqrt(value)
  %925 = fmul fast float %924, %920
  %926 = fmul fast float %924, %921
  %927 = fmul fast float %924, %922
  %928 = fsub fast float %414, %917
  %929 = fsub fast float %415, %918
  %930 = fsub fast float %416, %919
  %931 = call float @dx.op.dot3.f32(i32 55, float %583, float %584, float %585, float %928, float %929, float %930)  ; Dot3(ax,ay,az,bx,by,bz)
  %932 = call float @dx.op.dot3.f32(i32 55, float %583, float %584, float %585, float %925, float %926, float %927)  ; Dot3(ax,ay,az,bx,by,bz)
  %933 = fdiv fast float 1.000000e+00, %932
  %934 = fmul fast float %933, %931
  %935 = fmul fast float %934, %925
  %936 = fmul fast float %934, %926
  %937 = fmul fast float %934, %927
  %938 = fadd fast float %935, %917
  %939 = fadd fast float %936, %918
  %940 = fadd fast float %937, %919
  %941 = fmul fast float %914, %360
  %942 = call float @dx.op.tertiary.f32(i32 46, float %915, float %366, float %941)  ; FMad(a,b,c)
  %943 = call float @dx.op.tertiary.f32(i32 46, float %916, float %372, float %942)  ; FMad(a,b,c)
  %944 = fadd fast float %943, %378
  %945 = fmul fast float %914, %361
  %946 = call float @dx.op.tertiary.f32(i32 46, float %915, float %367, float %945)  ; FMad(a,b,c)
  %947 = call float @dx.op.tertiary.f32(i32 46, float %916, float %373, float %946)  ; FMad(a,b,c)
  %948 = fadd fast float %947, %379
  %949 = fmul fast float %914, %363
  %950 = call float @dx.op.tertiary.f32(i32 46, float %915, float %369, float %949)  ; FMad(a,b,c)
  %951 = call float @dx.op.tertiary.f32(i32 46, float %916, float %375, float %950)  ; FMad(a,b,c)
  %952 = fadd fast float %951, %381
  %953 = fmul fast float %938, %360
  %954 = call float @dx.op.tertiary.f32(i32 46, float %939, float %366, float %953)  ; FMad(a,b,c)
  %955 = call float @dx.op.tertiary.f32(i32 46, float %940, float %372, float %954)  ; FMad(a,b,c)
  %956 = fadd fast float %955, %378
  %957 = fmul fast float %938, %361
  %958 = call float @dx.op.tertiary.f32(i32 46, float %939, float %367, float %957)  ; FMad(a,b,c)
  %959 = call float @dx.op.tertiary.f32(i32 46, float %940, float %373, float %958)  ; FMad(a,b,c)
  %960 = fadd fast float %959, %379
  %961 = fmul fast float %938, %363
  %962 = call float @dx.op.tertiary.f32(i32 46, float %939, float %369, float %961)  ; FMad(a,b,c)
  %963 = call float @dx.op.tertiary.f32(i32 46, float %940, float %375, float %962)  ; FMad(a,b,c)
  %964 = fadd fast float %963, %381
  %965 = fdiv fast float 1.000000e+00, %952
  %966 = fmul fast float %965, %944
  %967 = fmul fast float %965, %948
  %968 = fdiv fast float 1.000000e+00, %964
  %969 = fmul fast float %968, %956
  %970 = fmul fast float %968, %960
  %971 = fsub fast float %969, %966
  %972 = fsub fast float %970, %967
  %973 = call float @dx.op.dot2.f32(i32 54, float %971, float %972, float %971, float %972)  ; Dot2(ax,ay,bx,by)
  %974 = call float @dx.op.unary.f32(i32 25, float %973)  ; Rsqrt(value)
  %975 = fmul fast float %971, %974
  %976 = fmul fast float %972, %974
  %977 = fmul fast float %971, %971
  %978 = fmul fast float %972, %972
  %979 = fadd fast float %977, %978
  %980 = call float @dx.op.unary.f32(i32 24, float %979)  ; Sqrt(value)
  %981 = fmul fast float %980, 5.000000e-01
  br i1 %409, label %1074, label %982, !dx.controlflow.hints !36

; <label>:982                                     ; preds = %853
  %983 = fsub fast float %235, %227
  %984 = fsub fast float %236, %228
  %985 = fsub fast float %237, %229
  %986 = fsub fast float %890, %983
  %987 = fsub fast float %891, %984
  %988 = fsub fast float %892, %985
  %989 = call float @dx.op.dot3.f32(i32 55, float %986, float %987, float %988, float %986, float %987, float %988)  ; Dot3(ax,ay,az,bx,by,bz)
  %990 = call float @dx.op.unary.f32(i32 25, float %989)  ; Rsqrt(value)
  %991 = fmul fast float %990, %986
  %992 = fmul fast float %990, %987
  %993 = fmul fast float %990, %988
  %994 = fsub fast float %414, %983
  %995 = fsub fast float %415, %984
  %996 = fsub fast float %416, %985
  %997 = call float @dx.op.dot3.f32(i32 55, float %583, float %584, float %585, float %994, float %995, float %996)  ; Dot3(ax,ay,az,bx,by,bz)
  %998 = call float @dx.op.dot3.f32(i32 55, float %583, float %584, float %585, float %991, float %992, float %993)  ; Dot3(ax,ay,az,bx,by,bz)
  %999 = fdiv fast float 1.000000e+00, %998
  %1000 = fmul fast float %999, %997
  %1001 = fmul fast float %1000, %991
  %1002 = fmul fast float %1000, %992
  %1003 = fmul fast float %1000, %993
  %1004 = fadd fast float %1001, %983
  %1005 = fadd fast float %1002, %984
  %1006 = fadd fast float %1003, %985
  %1007 = fadd fast float %235, %227
  %1008 = fadd fast float %236, %228
  %1009 = fadd fast float %237, %229
  %1010 = fsub fast float %890, %1007
  %1011 = fsub fast float %891, %1008
  %1012 = fsub fast float %892, %1009
  %1013 = call float @dx.op.dot3.f32(i32 55, float %1010, float %1011, float %1012, float %1010, float %1011, float %1012)  ; Dot3(ax,ay,az,bx,by,bz)
  %1014 = call float @dx.op.unary.f32(i32 25, float %1013)  ; Rsqrt(value)
  %1015 = fmul fast float %1014, %1010
  %1016 = fmul fast float %1014, %1011
  %1017 = fmul fast float %1014, %1012
  %1018 = fsub fast float %414, %1007
  %1019 = fsub fast float %415, %1008
  %1020 = fsub fast float %416, %1009
  %1021 = call float @dx.op.dot3.f32(i32 55, float %583, float %584, float %585, float %1018, float %1019, float %1020)  ; Dot3(ax,ay,az,bx,by,bz)
  %1022 = call float @dx.op.dot3.f32(i32 55, float %583, float %584, float %585, float %1015, float %1016, float %1017)  ; Dot3(ax,ay,az,bx,by,bz)
  %1023 = fdiv fast float 1.000000e+00, %1022
  %1024 = fmul fast float %1023, %1021
  %1025 = fmul fast float %1024, %1015
  %1026 = fmul fast float %1024, %1016
  %1027 = fmul fast float %1024, %1017
  %1028 = fadd fast float %1025, %1007
  %1029 = fadd fast float %1026, %1008
  %1030 = fadd fast float %1027, %1009
  %1031 = fmul fast float %1004, %360
  %1032 = call float @dx.op.tertiary.f32(i32 46, float %1005, float %366, float %1031)  ; FMad(a,b,c)
  %1033 = call float @dx.op.tertiary.f32(i32 46, float %1006, float %372, float %1032)  ; FMad(a,b,c)
  %1034 = fadd fast float %1033, %378
  %1035 = fmul fast float %1004, %361
  %1036 = call float @dx.op.tertiary.f32(i32 46, float %1005, float %367, float %1035)  ; FMad(a,b,c)
  %1037 = call float @dx.op.tertiary.f32(i32 46, float %1006, float %373, float %1036)  ; FMad(a,b,c)
  %1038 = fadd fast float %1037, %379
  %1039 = fmul fast float %1004, %363
  %1040 = call float @dx.op.tertiary.f32(i32 46, float %1005, float %369, float %1039)  ; FMad(a,b,c)
  %1041 = call float @dx.op.tertiary.f32(i32 46, float %1006, float %375, float %1040)  ; FMad(a,b,c)
  %1042 = fadd fast float %1041, %381
  %1043 = fmul fast float %1028, %360
  %1044 = call float @dx.op.tertiary.f32(i32 46, float %1029, float %366, float %1043)  ; FMad(a,b,c)
  %1045 = call float @dx.op.tertiary.f32(i32 46, float %1030, float %372, float %1044)  ; FMad(a,b,c)
  %1046 = fadd fast float %1045, %378
  %1047 = fmul fast float %1028, %361
  %1048 = call float @dx.op.tertiary.f32(i32 46, float %1029, float %367, float %1047)  ; FMad(a,b,c)
  %1049 = call float @dx.op.tertiary.f32(i32 46, float %1030, float %373, float %1048)  ; FMad(a,b,c)
  %1050 = fadd fast float %1049, %379
  %1051 = fmul fast float %1028, %363
  %1052 = call float @dx.op.tertiary.f32(i32 46, float %1029, float %369, float %1051)  ; FMad(a,b,c)
  %1053 = call float @dx.op.tertiary.f32(i32 46, float %1030, float %375, float %1052)  ; FMad(a,b,c)
  %1054 = fadd fast float %1053, %381
  %1055 = fdiv fast float 1.000000e+00, %1042
  %1056 = fmul fast float %1055, %1034
  %1057 = fmul fast float %1055, %1038
  %1058 = fdiv fast float 1.000000e+00, %1054
  %1059 = fmul fast float %1058, %1046
  %1060 = fmul fast float %1058, %1050
  %1061 = fsub fast float %1059, %1056
  %1062 = fsub fast float %1060, %1057
  %1063 = call float @dx.op.dot2.f32(i32 54, float %1061, float %1062, float %1061, float %1062)  ; Dot2(ax,ay,bx,by)
  %1064 = call float @dx.op.unary.f32(i32 25, float %1063)  ; Rsqrt(value)
  %1065 = fmul fast float %1061, %1064
  %1066 = fmul fast float %1062, %1064
  %1067 = fmul fast float %1061, %1061
  %1068 = fmul fast float %1062, %1062
  %1069 = fadd fast float %1067, %1068
  %1070 = call float @dx.op.unary.f32(i32 24, float %1069)  ; Sqrt(value)
  %1071 = fmul fast float %1070, 5.000000e-01
  %1072 = fcmp fast olt float %1071, %981
  br i1 %1072, label %1073, label %1074, !dx.controlflow.hints !37

; <label>:1073                                    ; preds = %982
  br label %1074

; <label>:1074                                    ; preds = %1073, %982, %853
  %1075 = phi float [ %981, %853 ], [ %1071, %1073 ], [ %981, %982 ]
  %1076 = phi float [ %981, %853 ], [ %981, %1073 ], [ %1071, %982 ]
  %1077 = phi float [ %975, %853 ], [ %975, %1073 ], [ %1065, %982 ]
  %1078 = phi float [ %976, %853 ], [ %976, %1073 ], [ %1066, %982 ]
  %1079 = fsub fast float %1076, %1075
  %1080 = fmul fast float %1077, %1077
  %1081 = fmul fast float %1080, %1079
  %1082 = fadd fast float %1081, %1075
  %1083 = fmul fast float %1077, %1079
  %1084 = fmul fast float %1083, %1078
  %1085 = fmul fast float %1078, %1078
  %1086 = fmul fast float %1085, %1079
  %1087 = fadd fast float %1086, %1075
  %1088 = fmul fast float %1082, %439
  %1089 = call float @dx.op.tertiary.f32(i32 46, float %438, float %1084, float %1088)  ; FMad(a,b,c)
  %1090 = fmul fast float %1084, %439
  %1091 = call float @dx.op.tertiary.f32(i32 46, float %438, float %1087, float %1090)  ; FMad(a,b,c)
  %1092 = fmul fast float %1082, %440
  %1093 = call float @dx.op.tertiary.f32(i32 46, float %439, float %1084, float %1092)  ; FMad(a,b,c)
  %1094 = fmul fast float %1084, %440
  %1095 = call float @dx.op.tertiary.f32(i32 46, float %439, float %1087, float %1094)  ; FMad(a,b,c)
  br label %1096

; <label>:1096                                    ; preds = %1096, %1074
  %1097 = phi float [ 0.000000e+00, %1074 ], [ %1123, %1096 ]
  %1098 = phi i32 [ 0, %1074 ], [ %1124, %1096 ]
  %1099 = mul i32 %1098, 2
  %1100 = add i32 0, %1099
  %1101 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1100
  %1102 = load float, float* %1101, align 4
  %1103 = mul i32 %1098, 2
  %1104 = add i32 1, %1103
  %1105 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1104
  %1106 = load float, float* %1105, align 4
  %1107 = fmul fast float %1102, %1089
  %1108 = call float @dx.op.tertiary.f32(i32 46, float %1106, float %1093, float %1107)  ; FMad(a,b,c)
  %1109 = fmul fast float %1102, %1091
  %1110 = call float @dx.op.tertiary.f32(i32 46, float %1106, float %1095, float %1109)  ; FMad(a,b,c)
  %1111 = fadd fast float %1108, %433
  %1112 = fadd fast float %1110, %434
  %1113 = fmul fast float %1111, %350
  %1114 = fmul fast float %1112, %350
  %1115 = call float @dx.op.binary.f32(i32 35, float %1113, float %346)  ; FMax(a,b)
  %1116 = call float @dx.op.binary.f32(i32 35, float %1114, float %346)  ; FMax(a,b)
  %1117 = call float @dx.op.binary.f32(i32 36, float %1115, float %347)  ; FMin(a,b)
  %1118 = call float @dx.op.binary.f32(i32 36, float %1116, float %347)  ; FMin(a,b)
  %1119 = fadd fast float %1117, %344
  %1120 = fadd fast float %1118, %345
  %1121 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %15, float %1119, float %1120, float %819, float undef, i32 0, i32 0, i32 undef, float %822)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1122 = extractvalue %dx.types.ResRet.f32 %1121, 0
  %1123 = fadd fast float %1122, %1097
  %1124 = add nuw nsw i32 %1098, 1
  %1125 = icmp eq i32 %1124, 8
  br i1 %1125, label %1126, label %1096

; <label>:1126                                    ; preds = %1096
  %1127 = fmul fast float %1123, 1.250000e-01
  br label %1128

; <label>:1128                                    ; preds = %1126, %836, %485
  %1129 = phi float [ %512, %485 ], [ %1127, %1126 ], [ 1.000000e+00, %836 ]
  %1130 = fadd fast float %1129, -1.000000e+00
  %1131 = fmul fast float %1130, %323
  %1132 = fadd fast float %1131, 1.000000e+00
  %1133 = fmul fast float %1132, %335
  br label %1134

; <label>:1134                                    ; preds = %1128, %302
  %1135 = phi float [ %1133, %1128 ], [ %335, %302 ]
  %1136 = lshr i32 %158, 5
  %1137 = lshr i32 %159, 5
  %1138 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %1136, i32 %1137, i32 %212, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1139 = extractvalue %dx.types.ResRet.i32 %1138, 0
  %1140 = lshr i32 %1139, 23
  %1141 = and i32 %1140, 255
  %1142 = and i32 %158, 31
  %1143 = and i32 %159, 31
  %1144 = lshr i32 %1139, 1
  %1145 = and i32 %1144, 16352
  %1146 = lshr i32 %1139, 10
  %1147 = and i32 %1146, 8160
  %1148 = or i32 %1145, %1142
  %1149 = or i32 %1147, %1143
  %1150 = fmul fast float %1135, 2.550000e+02
  %1151 = fadd fast float %1150, %153
  %1152 = call float @dx.op.unary.f32(i32 27, float %1151)  ; Round_ni(value)
  %1153 = fmul fast float %1152, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1148, i32 %1149, i32 %1141, float %1153, float %1153, float %1153, float %1153, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1154 = icmp eq i32 %210, %214
  br i1 %1154, label %1155, label %209, !llvm.loop !40

; <label>:1155                                    ; preds = %1134
  br label %1156

; <label>:1156                                    ; preds = %1155, %183
  %1157 = add i32 %184, 1
  %1158 = icmp ugt i32 %1157, %180
  br i1 %1158, label %1159, label %183

; <label>:1159                                    ; preds = %1156
  br label %1160

; <label>:1160                                    ; preds = %1159, %157, %0
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
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.unroll.disable"}

