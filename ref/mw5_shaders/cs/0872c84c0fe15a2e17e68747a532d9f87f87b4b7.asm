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
; shader hash: d601590093b425fb175520e5adb4b5af
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
  %26 = shl i32 %23, 2
  %27 = mul i32 %26, %25
  %28 = add i32 %27, %19
  %29 = shl i32 %28, 2
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %29, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %61 = fmul fast float %46, %59
  %62 = fmul fast float %47, %60
  %63 = fmul fast float %61, 2.000000e+00
  %64 = fmul fast float %62, 2.000000e+00
  %65 = fsub fast float 1.000000e+00, %63
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
  %144 = fmul fast float %59, %44
  %145 = fmul fast float %60, %45
  %146 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %15, float %144, float %145, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
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
  %169 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %15, float %166, float %168, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
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
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 2
  %203 = fmul fast float %202, 0x3FE3C6EF40000000
  %204 = frem fast float %46, 2.560000e+02
  %205 = frem fast float %47, 2.560000e+02
  %206 = fptoui float %204 to i32
  %207 = fptoui float %205 to i32
  %208 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %206, i32 %207, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %209 = extractvalue %dx.types.ResRet.f32 %208, 0
  %210 = extractvalue %dx.types.ResRet.f32 %208, 2
  %211 = fadd fast float %209, %203
  %212 = fadd fast float %210, %203
  %213 = call float @dx.op.unary.f32(i32 22, float %211)  ; Frc(value)
  %214 = call float @dx.op.unary.f32(i32 22, float %212)  ; Frc(value)
  %215 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.i32 %215, 0
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %1652, label %218, !dx.controlflow.hints !32

; <label>:218                                     ; preds = %0
  %219 = fptoui float %46 to i32
  %220 = fptoui float %47 to i32
  %221 = lshr i32 %219, 4
  %222 = lshr i32 %220, 4
  %223 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.i32 %223, 0
  %225 = call i32 @dx.op.tertiary.i32(i32 49, i32 %222, i32 %224, i32 %221)  ; UMad(a,b,c)
  %226 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.i32 %226, 0
  %228 = add nsw i32 %227, -1
  %229 = call i32 @dx.op.binary.i32(i32 37, i32 %228, i32 0)  ; IMax(a,b)
  %230 = call float @dx.op.binary.f32(i32 35, float %57, float 0.000000e+00)  ; FMax(a,b)
  %231 = fptoui float %230 to i32
  %232 = lshr i32 %231, 5
  %233 = call i32 @dx.op.binary.i32(i32 40, i32 %232, i32 8191)  ; UMin(a,b)
  %234 = shl i32 %233, 2
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = lshr i32 %236, 16
  %238 = and i32 %236, 65535
  %239 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %237, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %240 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %238, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  %241 = lshr i32 %239, 5
  %242 = lshr i32 %240, 5
  %243 = call i32 @dx.op.binary.i32(i32 40, i32 %242, i32 %229)  ; UMin(a,b)
  %244 = icmp ugt i32 %241, %243
  br i1 %244, label %1652, label %245

; <label>:245                                     ; preds = %218
  br label %246

; <label>:246                                     ; preds = %1642, %245
  %247 = phi i32 [ %1649, %1642 ], [ %241, %245 ]
  %248 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.i32 %248, 0
  %250 = call i32 @dx.op.tertiary.i32(i32 49, i32 %225, i32 %249, i32 %247)  ; UMad(a,b,c)
  %251 = shl i32 %250, 2
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = shl i32 %247, 5
  %255 = sub nsw i32 %237, %254
  %256 = call i32 @dx.op.binary.i32(i32 37, i32 %255, i32 0)  ; IMax(a,b)
  %257 = call i32 @dx.op.binary.i32(i32 38, i32 %256, i32 31)  ; IMin(a,b)
  %258 = sub nsw i32 1, %237
  %259 = add nsw i32 %258, %238
  %260 = call i32 @dx.op.binary.i32(i32 37, i32 %259, i32 0)  ; IMax(a,b)
  %261 = call i32 @dx.op.binary.i32(i32 38, i32 %260, i32 32)  ; IMin(a,b)
  %262 = and i32 %261, 31
  %263 = shl i32 -1, %262
  %264 = xor i32 %263, -1
  %265 = and i32 %257, 31
  %266 = shl i32 %264, %265
  %267 = icmp eq i32 %261, 32
  %268 = select i1 %267, i32 -1, i32 %266
  %269 = and i32 %268, %253
  %270 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %269, i8 1)  ; WaveActiveBit(value,op)
  %271 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %270)  ; WaveReadLaneFirst(value)
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %1642, label %273

; <label>:273                                     ; preds = %246
  br label %274

; <label>:274                                     ; preds = %1612, %273
  %275 = phi i32 [ %1621, %1612 ], [ 0, %273 ]
  %276 = phi i32 [ %281, %1612 ], [ %271, %273 ]
  %277 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %276)  ; FirstbitLo(value)
  %278 = add i32 %277, %254
  %279 = and i32 %277, 31
  %280 = shl i32 1, %279
  %281 = xor i32 %280, %276
  %282 = mul i32 %278, 112
  %283 = add i32 %282, 16
  %284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.f32 %284, 0
  %286 = extractvalue %dx.types.ResRet.f32 %284, 1
  %287 = extractvalue %dx.types.ResRet.f32 %284, 2
  %288 = add i32 %282, 28
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = add i32 %282, 32
  %292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.f32 %292, 0
  %294 = extractvalue %dx.types.ResRet.f32 %292, 1
  %295 = extractvalue %dx.types.ResRet.f32 %292, 2
  %296 = add i32 %282, 44
  %297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.f32 %297, 0
  %299 = add i32 %282, 48
  %300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.f32 %300, 0
  %302 = extractvalue %dx.types.ResRet.f32 %300, 1
  %303 = extractvalue %dx.types.ResRet.f32 %300, 2
  %304 = extractvalue %dx.types.ResRet.f32 %300, 3
  %305 = add i32 %282, 64
  %306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.f32 %306, 0
  %308 = extractvalue %dx.types.ResRet.f32 %306, 1
  %309 = extractvalue %dx.types.ResRet.f32 %306, 2
  %310 = extractvalue %dx.types.ResRet.f32 %306, 3
  %311 = add i32 %282, 92
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = and i32 %313, 65535
  %315 = uitofp i32 %314 to float
  %316 = lshr i32 %313, 16
  %317 = uitofp i32 %316 to float
  %318 = and i32 %290, 65535
  %319 = and i32 %290, 50331648
  %320 = icmp eq i32 %319, 33554432
  %321 = call float @dx.op.dot3.f32(i32 55, float %293, float %294, float %295, float %293, float %294, float %295)  ; Dot3(ax,ay,az,bx,by,bz)
  %322 = fsub fast float %112, %301
  %323 = fsub fast float %113, %302
  %324 = fsub fast float %114, %303
  %325 = call float @dx.op.dot3.f32(i32 55, float %322, float %323, float %324, float %293, float %294, float %295)  ; Dot3(ax,ay,az,bx,by,bz)
  %326 = fdiv fast float %325, %321
  %327 = call float @dx.op.binary.f32(i32 35, float %326, float -1.000000e+00)  ; FMax(a,b)
  %328 = call float @dx.op.binary.f32(i32 36, float %327, float 1.000000e+00)  ; FMin(a,b)
  %329 = fmul fast float %328, %293
  %330 = fmul fast float %328, %294
  %331 = fmul fast float %328, %295
  %332 = fadd fast float %329, %301
  %333 = fadd fast float %330, %302
  %334 = fadd fast float %331, %303
  %335 = fsub fast float %332, %112
  %336 = fsub fast float %333, %113
  %337 = fsub fast float %334, %114
  %338 = call float @dx.op.dot3.f32(i32 55, float %335, float %336, float %337, float %335, float %336, float %337)  ; Dot3(ax,ay,az,bx,by,bz)
  %339 = call float @dx.op.unary.f32(i32 24, float %338)  ; Sqrt(value)
  %340 = fdiv fast float 1.000000e+00, %339
  %341 = fmul fast float %335, %340
  %342 = fmul fast float %336, %340
  %343 = fmul fast float %337, %340
  br i1 %320, label %344, label %368, !dx.controlflow.hints !33

; <label>:344                                     ; preds = %274
  %345 = fmul fast float %309, %285
  %346 = fmul fast float %309, %286
  %347 = fmul fast float %309, %287
  %348 = fsub fast float %345, %112
  %349 = fadd fast float %348, %332
  %350 = fsub fast float %346, %113
  %351 = fadd fast float %350, %333
  %352 = fsub fast float %347, %114
  %353 = fadd fast float %352, %334
  %354 = call float @dx.op.dot3.f32(i32 55, float %349, float %351, float %353, float %349, float %351, float %353)  ; Dot3(ax,ay,az,bx,by,bz)
  %355 = call float @dx.op.unary.f32(i32 25, float %354)  ; Rsqrt(value)
  %356 = fmul fast float %355, %349
  %357 = fmul fast float %355, %351
  %358 = fmul fast float %355, %353
  %359 = fsub fast float %112, %332
  %360 = fsub fast float %113, %333
  %361 = fsub fast float %114, %334
  %362 = fsub fast float -0.000000e+00, %359
  %363 = fsub fast float -0.000000e+00, %360
  %364 = fsub fast float -0.000000e+00, %361
  %365 = call float @dx.op.dot3.f32(i32 55, float %362, float %363, float %364, float %285, float %286, float %287)  ; Dot3(ax,ay,az,bx,by,bz)
  %366 = fcmp fast ogt float %365, 0.000000e+00
  %367 = uitofp i1 %366 to float
  br label %368

; <label>:368                                     ; preds = %344, %274
  %369 = phi float [ %367, %344 ], [ 1.000000e+00, %274 ]
  %370 = phi float [ %356, %344 ], [ %341, %274 ]
  %371 = phi float [ %357, %344 ], [ %342, %274 ]
  %372 = phi float [ %358, %344 ], [ %343, %274 ]
  %373 = call float @dx.op.dot3.f32(i32 55, float %285, float %286, float %287, float %370, float %371, float %372)  ; Dot3(ax,ay,az,bx,by,bz)
  %374 = fmul fast float %373, %373
  %375 = call float @dx.op.unary.f32(i32 7, float %374)  ; Saturate(value)
  %376 = fsub fast float 1.000000e+00, %375
  %377 = fmul fast float %376, 5.000000e-01
  %378 = fcmp fast ogt float %373, 0.000000e+00
  %379 = fsub fast float 1.000000e+00, %377
  %380 = select i1 %378, float %377, float %379
  %381 = fmul fast float %380, %317
  %382 = fadd fast float %381, %315
  %383 = fmul fast float %382, 0x3EF0001000000000
  %384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %14, float %383, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %385 = extractvalue %dx.types.ResRet.f32 %384, 0
  %386 = fmul fast float %373, %307
  %387 = fadd fast float %386, %308
  %388 = call float @dx.op.unary.f32(i32 7, float %387)  ; Saturate(value)
  %389 = select i1 %320, float 1.000000e+00, float %388
  %390 = select i1 %320, float %388, float 1.000000e+00
  %391 = fmul fast float %339, %304
  %392 = fsub fast float 1.000000e+00, %391
  %393 = fmul fast float %392, %310
  %394 = call float @dx.op.unary.f32(i32 7, float %393)  ; Saturate(value)
  %395 = fmul fast float %394, %390
  %396 = fmul fast float %395, 2.000000e+00
  %397 = fsub fast float 3.000000e+00, %396
  %398 = fmul fast float %385, %369
  %399 = fmul fast float %395, %395
  %400 = fmul fast float %399, %398
  %401 = fmul fast float %400, %397
  %402 = icmp ne i32 %318, 255
  %403 = call float @dx.op.binary.f32(i32 36, float %401, float %401)  ; FMin(a,b)
  %404 = call float @dx.op.binary.f32(i32 36, float %401, float %403)  ; FMin(a,b)
  %405 = fcmp fast ogt float %404, 0.000000e+00
  %406 = and i1 %402, %405
  br i1 %406, label %407, label %1321, !dx.controlflow.hints !34

; <label>:407                                     ; preds = %368
  %408 = mul nuw nsw i32 %318, 176
  %409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.f32 %409, 0
  %411 = extractvalue %dx.types.ResRet.f32 %409, 1
  %412 = extractvalue %dx.types.ResRet.f32 %409, 2
  %413 = extractvalue %dx.types.ResRet.f32 %409, 3
  %414 = add nuw nsw i32 %408, 16
  %415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.f32 %415, 0
  %417 = extractvalue %dx.types.ResRet.f32 %415, 1
  %418 = add nuw nsw i32 %408, 32
  %419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.f32 %419, 0
  %421 = extractvalue %dx.types.ResRet.f32 %419, 1
  %422 = extractvalue %dx.types.ResRet.f32 %419, 2
  %423 = extractvalue %dx.types.ResRet.f32 %419, 3
  %424 = add nuw nsw i32 %408, 48
  %425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.f32 %425, 0
  %427 = extractvalue %dx.types.ResRet.f32 %425, 1
  %428 = extractvalue %dx.types.ResRet.f32 %425, 2
  %429 = extractvalue %dx.types.ResRet.f32 %425, 3
  %430 = add nuw nsw i32 %408, 64
  %431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.f32 %431, 0
  %433 = extractvalue %dx.types.ResRet.f32 %431, 1
  %434 = extractvalue %dx.types.ResRet.f32 %431, 2
  %435 = extractvalue %dx.types.ResRet.f32 %431, 3
  %436 = add nuw nsw i32 %408, 80
  %437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.f32 %437, 0
  %439 = extractvalue %dx.types.ResRet.f32 %437, 1
  %440 = extractvalue %dx.types.ResRet.f32 %437, 2
  %441 = extractvalue %dx.types.ResRet.f32 %437, 3
  %442 = add nuw nsw i32 %408, 96
  %443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.f32 %443, 0
  %445 = extractvalue %dx.types.ResRet.f32 %443, 1
  %446 = extractvalue %dx.types.ResRet.f32 %443, 2
  %447 = extractvalue %dx.types.ResRet.f32 %443, 3
  %448 = add nuw nsw i32 %408, 112
  %449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.f32 %449, 0
  %451 = extractvalue %dx.types.ResRet.f32 %449, 1
  %452 = extractvalue %dx.types.ResRet.f32 %449, 2
  %453 = extractvalue %dx.types.ResRet.f32 %449, 3
  %454 = add nuw nsw i32 %408, 128
  %455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.f32 %455, 0
  %457 = extractvalue %dx.types.ResRet.f32 %455, 1
  %458 = extractvalue %dx.types.ResRet.f32 %455, 2
  %459 = extractvalue %dx.types.ResRet.f32 %455, 3
  %460 = add nuw nsw i32 %408, 144
  %461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.f32 %461, 0
  %463 = extractvalue %dx.types.ResRet.f32 %461, 1
  %464 = extractvalue %dx.types.ResRet.f32 %461, 2
  %465 = extractvalue %dx.types.ResRet.f32 %461, 3
  %466 = add nuw nsw i32 %408, 160
  %467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 0
  %469 = extractvalue %dx.types.ResRet.f32 %467, 1
  %470 = extractvalue %dx.types.ResRet.f32 %467, 2
  %471 = extractvalue %dx.types.ResRet.f32 %467, 3
  %472 = bitcast float %417 to i32
  %473 = bitcast float %423 to i32
  %474 = and i32 %473, 1
  %475 = icmp ne i32 %474, 0
  %476 = and i32 %473, 2
  %477 = fmul fast float %422, %141
  %478 = fmul fast float %422, %142
  %479 = fmul fast float %422, %143
  %480 = fadd fast float %477, %112
  %481 = fadd fast float %478, %113
  %482 = fadd fast float %479, %114
  %483 = fmul fast float %480, %426
  %484 = call float @dx.op.tertiary.f32(i32 46, float %481, float %432, float %483)  ; FMad(a,b,c)
  %485 = call float @dx.op.tertiary.f32(i32 46, float %482, float %438, float %484)  ; FMad(a,b,c)
  %486 = fadd fast float %485, %444
  %487 = fmul fast float %480, %427
  %488 = call float @dx.op.tertiary.f32(i32 46, float %481, float %433, float %487)  ; FMad(a,b,c)
  %489 = call float @dx.op.tertiary.f32(i32 46, float %482, float %439, float %488)  ; FMad(a,b,c)
  %490 = fadd fast float %489, %445
  %491 = fmul fast float %480, %428
  %492 = call float @dx.op.tertiary.f32(i32 46, float %481, float %434, float %491)  ; FMad(a,b,c)
  %493 = call float @dx.op.tertiary.f32(i32 46, float %482, float %440, float %492)  ; FMad(a,b,c)
  %494 = fadd fast float %493, %446
  %495 = fmul fast float %480, %429
  %496 = call float @dx.op.tertiary.f32(i32 46, float %481, float %435, float %495)  ; FMad(a,b,c)
  %497 = call float @dx.op.tertiary.f32(i32 46, float %482, float %441, float %496)  ; FMad(a,b,c)
  %498 = fadd fast float %497, %447
  %499 = fdiv fast float %486, %498
  %500 = fdiv fast float %490, %498
  %501 = fdiv fast float %494, %498
  %502 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %501)  ; FMax(a,b)
  %503 = fmul fast float %213, 0x401921FB60000000
  %504 = call float @dx.op.unary.f32(i32 13, float %503)  ; Sin(value)
  %505 = call float @dx.op.unary.f32(i32 12, float %503)  ; Cos(value)
  %506 = fsub fast float -0.000000e+00, %504
  %507 = icmp eq i32 %476, 0
  br i1 %507, label %508, label %579, !dx.controlflow.hints !35

; <label>:508                                     ; preds = %407
  %509 = fmul fast float %505, %421
  %510 = call float @dx.op.tertiary.f32(i32 46, float %504, float %421, float 0.000000e+00)  ; FMad(a,b,c)
  %511 = fmul fast float %421, %506
  %512 = call float @dx.op.tertiary.f32(i32 46, float %505, float %421, float 0.000000e+00)  ; FMad(a,b,c)
  br label %513

; <label>:513                                     ; preds = %513, %508
  %514 = phi float [ 0.000000e+00, %508 ], [ %546, %513 ]
  %515 = phi float [ 0.000000e+00, %508 ], [ %548, %513 ]
  %516 = phi i32 [ 0, %508 ], [ %549, %513 ]
  %517 = mul i32 %516, 2
  %518 = add i32 0, %517
  %519 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %518
  %520 = load float, float* %519, align 4
  %521 = mul i32 %516, 2
  %522 = add i32 1, %521
  %523 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %522
  %524 = load float, float* %523, align 4
  %525 = fmul fast float %509, %520
  %526 = call float @dx.op.tertiary.f32(i32 46, float %524, float %511, float %525)  ; FMad(a,b,c)
  %527 = fmul fast float %520, %510
  %528 = call float @dx.op.tertiary.f32(i32 46, float %524, float %512, float %527)  ; FMad(a,b,c)
  %529 = fadd fast float %526, %499
  %530 = fadd fast float %528, %500
  %531 = fmul fast float %529, %416
  %532 = fmul fast float %530, %416
  %533 = call float @dx.op.binary.f32(i32 35, float %531, float %412)  ; FMax(a,b)
  %534 = call float @dx.op.binary.f32(i32 35, float %532, float %412)  ; FMax(a,b)
  %535 = call float @dx.op.binary.f32(i32 36, float %533, float %413)  ; FMin(a,b)
  %536 = call float @dx.op.binary.f32(i32 36, float %534, float %413)  ; FMin(a,b)
  %537 = fadd fast float %535, %410
  %538 = fadd fast float %536, %411
  %539 = uitofp i32 %472 to float
  %540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %15, float %537, float %538, float %539, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %541 = extractvalue %dx.types.ResRet.f32 %540, 0
  %542 = fsub fast float %541, %502
  %543 = fsub fast float %542, %420
  %544 = fcmp fast ogt float %543, 0.000000e+00
  %545 = select i1 %544, float 1.000000e+00, float 0.000000e+00
  %546 = fadd fast float %545, %514
  %547 = select i1 %544, float %543, float 0.000000e+00
  %548 = fadd fast float %547, %515
  %549 = add nuw nsw i32 %516, 1
  %550 = icmp eq i32 %549, 8
  br i1 %550, label %551, label %513

; <label>:551                                     ; preds = %513
  %552 = fdiv fast float 1.000000e+00, %546
  %553 = fmul fast float %552, %548
  %554 = fdiv fast float 1.000000e+00, %502
  %555 = fmul fast float %553, %554
  %556 = call float @dx.op.unary.f32(i32 7, float %555)  ; Saturate(value)
  %557 = call float @dx.op.binary.f32(i32 35, float %556, float 0.000000e+00)  ; FMax(a,b)
  %558 = fmul fast float %546, 1.250000e-01
  %559 = call float @dx.op.unary.f32(i32 7, float %558)  ; Saturate(value)
  %560 = fmul fast float %559, 2.000000e+00
  %561 = fadd fast float %560, -1.000000e+00
  %562 = fcmp fast ogt float %561, 0.000000e+00
  %563 = fcmp fast olt float %561, 0.000000e+00
  %564 = zext i1 %562 to i32
  %565 = zext i1 %563 to i32
  %566 = sub nsw i32 %564, %565
  %567 = sitofp i32 %566 to float
  %568 = fmul fast float %567, %561
  %569 = fsub fast float 1.000000e+00, %568
  %570 = fmul fast float %569, %569
  %571 = fmul fast float %570, %569
  %572 = fsub fast float %569, %571
  %573 = fmul fast float %572, %557
  %574 = fsub fast float 1.000000e+00, %571
  %575 = fsub fast float %574, %573
  %576 = fmul fast float %567, 5.000000e-01
  %577 = fmul fast float %576, %575
  %578 = fsub fast float 5.000000e-01, %577
  br label %1194

; <label>:579                                     ; preds = %407
  %580 = fsub fast float 1.000000e+00, %502
  %581 = fmul fast float %580, 5.000000e-01
  %582 = fadd fast float %581, %502
  %583 = fsub fast float %480, %301
  %584 = fsub fast float %481, %302
  %585 = fsub fast float %482, %303
  %586 = call float @dx.op.dot3.f32(i32 55, float %583, float %584, float %585, float %293, float %294, float %295)  ; Dot3(ax,ay,az,bx,by,bz)
  %587 = fdiv fast float %586, %321
  %588 = call float @dx.op.binary.f32(i32 35, float %587, float -1.000000e+00)  ; FMax(a,b)
  %589 = call float @dx.op.binary.f32(i32 36, float %588, float 1.000000e+00)  ; FMin(a,b)
  %590 = fmul fast float %589, %293
  %591 = fmul fast float %589, %294
  %592 = fmul fast float %589, %295
  %593 = fsub fast float %583, %590
  %594 = fsub fast float %584, %591
  %595 = fsub fast float %585, %592
  %596 = call float @dx.op.dot3.f32(i32 55, float %593, float %594, float %595, float %593, float %594, float %595)  ; Dot3(ax,ay,az,bx,by,bz)
  %597 = call float @dx.op.unary.f32(i32 25, float %596)  ; Rsqrt(value)
  %598 = fmul fast float %593, %597
  %599 = fmul fast float %594, %597
  %600 = fmul fast float %595, %597
  %601 = call float @dx.op.unary.f32(i32 25, float %321)  ; Rsqrt(value)
  %602 = fmul fast float %601, %293
  %603 = fmul fast float %601, %294
  %604 = fmul fast float %601, %295
  br i1 %475, label %605, label %609, !dx.controlflow.hints !36

; <label>:605                                     ; preds = %579
  %606 = fcmp fast olt float %599, 0x3FE6666660000000
  %607 = select i1 %606, float 1.000000e+00, float 0.000000e+00
  %608 = select i1 %606, float 0.000000e+00, float 1.000000e+00
  br label %609

; <label>:609                                     ; preds = %605, %579
  %610 = phi float [ 0.000000e+00, %605 ], [ %602, %579 ]
  %611 = phi float [ %607, %605 ], [ %603, %579 ]
  %612 = phi float [ %608, %605 ], [ %604, %579 ]
  %613 = fmul fast float %611, %600
  %614 = fmul fast float %612, %599
  %615 = fsub fast float %613, %614
  %616 = fmul fast float %612, %598
  %617 = fmul fast float %610, %600
  %618 = fsub fast float %616, %617
  %619 = fmul fast float %610, %599
  %620 = fmul fast float %611, %598
  %621 = fsub fast float %619, %620
  %622 = call float @dx.op.dot3.f32(i32 55, float %615, float %618, float %621, float %615, float %618, float %621)  ; Dot3(ax,ay,az,bx,by,bz)
  %623 = call float @dx.op.unary.f32(i32 25, float %622)  ; Rsqrt(value)
  %624 = fmul fast float %623, %298
  %625 = fmul fast float %624, %615
  %626 = fmul fast float %624, %618
  %627 = fmul fast float %621, %298
  %628 = fmul fast float %627, %623
  %629 = fmul fast float %499, %450
  %630 = call float @dx.op.tertiary.f32(i32 46, float %500, float %456, float %629)  ; FMad(a,b,c)
  %631 = call float @dx.op.tertiary.f32(i32 46, float %582, float %462, float %630)  ; FMad(a,b,c)
  %632 = fadd fast float %631, %468
  %633 = fmul fast float %499, %451
  %634 = call float @dx.op.tertiary.f32(i32 46, float %500, float %457, float %633)  ; FMad(a,b,c)
  %635 = call float @dx.op.tertiary.f32(i32 46, float %582, float %463, float %634)  ; FMad(a,b,c)
  %636 = fadd fast float %635, %469
  %637 = fmul fast float %499, %452
  %638 = call float @dx.op.tertiary.f32(i32 46, float %500, float %458, float %637)  ; FMad(a,b,c)
  %639 = call float @dx.op.tertiary.f32(i32 46, float %582, float %464, float %638)  ; FMad(a,b,c)
  %640 = fadd fast float %639, %470
  %641 = fmul fast float %499, %453
  %642 = call float @dx.op.tertiary.f32(i32 46, float %500, float %459, float %641)  ; FMad(a,b,c)
  %643 = call float @dx.op.tertiary.f32(i32 46, float %582, float %465, float %642)  ; FMad(a,b,c)
  %644 = fadd fast float %643, %471
  %645 = fdiv fast float 1.000000e+00, %644
  %646 = fmul fast float %645, %632
  %647 = fmul fast float %645, %636
  %648 = fmul fast float %645, %640
  %649 = fsub fast float -0.000000e+00, %598
  %650 = fsub fast float -0.000000e+00, %599
  %651 = fsub fast float -0.000000e+00, %600
  %652 = fsub fast float %301, %625
  %653 = fsub fast float %302, %626
  %654 = fsub fast float %303, %628
  %655 = fsub fast float %646, %652
  %656 = fsub fast float %647, %653
  %657 = fsub fast float %648, %654
  %658 = call float @dx.op.dot3.f32(i32 55, float %655, float %656, float %657, float %655, float %656, float %657)  ; Dot3(ax,ay,az,bx,by,bz)
  %659 = call float @dx.op.unary.f32(i32 25, float %658)  ; Rsqrt(value)
  %660 = fmul fast float %655, %659
  %661 = fmul fast float %656, %659
  %662 = fmul fast float %657, %659
  %663 = fsub fast float %480, %652
  %664 = fsub fast float %481, %653
  %665 = fsub fast float %482, %654
  %666 = call float @dx.op.dot3.f32(i32 55, float %649, float %650, float %651, float %663, float %664, float %665)  ; Dot3(ax,ay,az,bx,by,bz)
  %667 = call float @dx.op.dot3.f32(i32 55, float %649, float %650, float %651, float %660, float %661, float %662)  ; Dot3(ax,ay,az,bx,by,bz)
  %668 = fdiv fast float 1.000000e+00, %667
  %669 = fmul fast float %668, %666
  %670 = fmul fast float %669, %660
  %671 = fmul fast float %669, %661
  %672 = fmul fast float %669, %662
  %673 = fadd fast float %670, %652
  %674 = fadd fast float %671, %653
  %675 = fadd fast float %672, %654
  %676 = fadd fast float %625, %301
  %677 = fadd fast float %626, %302
  %678 = fadd fast float %628, %303
  %679 = fsub fast float %646, %676
  %680 = fsub fast float %647, %677
  %681 = fsub fast float %648, %678
  %682 = call float @dx.op.dot3.f32(i32 55, float %679, float %680, float %681, float %679, float %680, float %681)  ; Dot3(ax,ay,az,bx,by,bz)
  %683 = call float @dx.op.unary.f32(i32 25, float %682)  ; Rsqrt(value)
  %684 = fmul fast float %683, %679
  %685 = fmul fast float %683, %680
  %686 = fmul fast float %683, %681
  %687 = fsub fast float %480, %676
  %688 = fsub fast float %481, %677
  %689 = fsub fast float %482, %678
  %690 = call float @dx.op.dot3.f32(i32 55, float %649, float %650, float %651, float %687, float %688, float %689)  ; Dot3(ax,ay,az,bx,by,bz)
  %691 = call float @dx.op.dot3.f32(i32 55, float %649, float %650, float %651, float %684, float %685, float %686)  ; Dot3(ax,ay,az,bx,by,bz)
  %692 = fdiv fast float 1.000000e+00, %691
  %693 = fmul fast float %692, %690
  %694 = fmul fast float %693, %684
  %695 = fmul fast float %693, %685
  %696 = fmul fast float %693, %686
  %697 = fadd fast float %694, %676
  %698 = fadd fast float %695, %677
  %699 = fadd fast float %696, %678
  %700 = fmul fast float %673, %426
  %701 = call float @dx.op.tertiary.f32(i32 46, float %674, float %432, float %700)  ; FMad(a,b,c)
  %702 = call float @dx.op.tertiary.f32(i32 46, float %675, float %438, float %701)  ; FMad(a,b,c)
  %703 = fadd fast float %702, %444
  %704 = fmul fast float %673, %427
  %705 = call float @dx.op.tertiary.f32(i32 46, float %674, float %433, float %704)  ; FMad(a,b,c)
  %706 = call float @dx.op.tertiary.f32(i32 46, float %675, float %439, float %705)  ; FMad(a,b,c)
  %707 = fadd fast float %706, %445
  %708 = fmul fast float %673, %429
  %709 = call float @dx.op.tertiary.f32(i32 46, float %674, float %435, float %708)  ; FMad(a,b,c)
  %710 = call float @dx.op.tertiary.f32(i32 46, float %675, float %441, float %709)  ; FMad(a,b,c)
  %711 = fadd fast float %710, %447
  %712 = fmul fast float %697, %426
  %713 = call float @dx.op.tertiary.f32(i32 46, float %698, float %432, float %712)  ; FMad(a,b,c)
  %714 = call float @dx.op.tertiary.f32(i32 46, float %699, float %438, float %713)  ; FMad(a,b,c)
  %715 = fadd fast float %714, %444
  %716 = fmul fast float %697, %427
  %717 = call float @dx.op.tertiary.f32(i32 46, float %698, float %433, float %716)  ; FMad(a,b,c)
  %718 = call float @dx.op.tertiary.f32(i32 46, float %699, float %439, float %717)  ; FMad(a,b,c)
  %719 = fadd fast float %718, %445
  %720 = fmul fast float %697, %429
  %721 = call float @dx.op.tertiary.f32(i32 46, float %698, float %435, float %720)  ; FMad(a,b,c)
  %722 = call float @dx.op.tertiary.f32(i32 46, float %699, float %441, float %721)  ; FMad(a,b,c)
  %723 = fadd fast float %722, %447
  %724 = fdiv fast float 1.000000e+00, %711
  %725 = fmul fast float %724, %703
  %726 = fmul fast float %724, %707
  %727 = fdiv fast float 1.000000e+00, %723
  %728 = fmul fast float %727, %715
  %729 = fmul fast float %727, %719
  %730 = fsub fast float %728, %725
  %731 = fsub fast float %729, %726
  %732 = call float @dx.op.dot2.f32(i32 54, float %730, float %731, float %730, float %731)  ; Dot2(ax,ay,bx,by)
  %733 = call float @dx.op.unary.f32(i32 25, float %732)  ; Rsqrt(value)
  %734 = fmul fast float %730, %733
  %735 = fmul fast float %731, %733
  %736 = fmul fast float %730, %730
  %737 = fmul fast float %731, %731
  %738 = fadd fast float %736, %737
  %739 = call float @dx.op.unary.f32(i32 24, float %738)  ; Sqrt(value)
  %740 = fmul fast float %739, 5.000000e-01
  br i1 %475, label %833, label %741, !dx.controlflow.hints !37

; <label>:741                                     ; preds = %609
  %742 = fsub fast float %301, %293
  %743 = fsub fast float %302, %294
  %744 = fsub fast float %303, %295
  %745 = fsub fast float %646, %742
  %746 = fsub fast float %647, %743
  %747 = fsub fast float %648, %744
  %748 = call float @dx.op.dot3.f32(i32 55, float %745, float %746, float %747, float %745, float %746, float %747)  ; Dot3(ax,ay,az,bx,by,bz)
  %749 = call float @dx.op.unary.f32(i32 25, float %748)  ; Rsqrt(value)
  %750 = fmul fast float %749, %745
  %751 = fmul fast float %749, %746
  %752 = fmul fast float %749, %747
  %753 = fsub fast float %480, %742
  %754 = fsub fast float %481, %743
  %755 = fsub fast float %482, %744
  %756 = call float @dx.op.dot3.f32(i32 55, float %649, float %650, float %651, float %753, float %754, float %755)  ; Dot3(ax,ay,az,bx,by,bz)
  %757 = call float @dx.op.dot3.f32(i32 55, float %649, float %650, float %651, float %750, float %751, float %752)  ; Dot3(ax,ay,az,bx,by,bz)
  %758 = fdiv fast float 1.000000e+00, %757
  %759 = fmul fast float %758, %756
  %760 = fmul fast float %759, %750
  %761 = fmul fast float %759, %751
  %762 = fmul fast float %759, %752
  %763 = fadd fast float %760, %742
  %764 = fadd fast float %761, %743
  %765 = fadd fast float %762, %744
  %766 = fadd fast float %301, %293
  %767 = fadd fast float %302, %294
  %768 = fadd fast float %303, %295
  %769 = fsub fast float %646, %766
  %770 = fsub fast float %647, %767
  %771 = fsub fast float %648, %768
  %772 = call float @dx.op.dot3.f32(i32 55, float %769, float %770, float %771, float %769, float %770, float %771)  ; Dot3(ax,ay,az,bx,by,bz)
  %773 = call float @dx.op.unary.f32(i32 25, float %772)  ; Rsqrt(value)
  %774 = fmul fast float %773, %769
  %775 = fmul fast float %773, %770
  %776 = fmul fast float %773, %771
  %777 = fsub fast float %480, %766
  %778 = fsub fast float %481, %767
  %779 = fsub fast float %482, %768
  %780 = call float @dx.op.dot3.f32(i32 55, float %649, float %650, float %651, float %777, float %778, float %779)  ; Dot3(ax,ay,az,bx,by,bz)
  %781 = call float @dx.op.dot3.f32(i32 55, float %649, float %650, float %651, float %774, float %775, float %776)  ; Dot3(ax,ay,az,bx,by,bz)
  %782 = fdiv fast float 1.000000e+00, %781
  %783 = fmul fast float %782, %780
  %784 = fmul fast float %783, %774
  %785 = fmul fast float %783, %775
  %786 = fmul fast float %783, %776
  %787 = fadd fast float %784, %766
  %788 = fadd fast float %785, %767
  %789 = fadd fast float %786, %768
  %790 = fmul fast float %763, %426
  %791 = call float @dx.op.tertiary.f32(i32 46, float %764, float %432, float %790)  ; FMad(a,b,c)
  %792 = call float @dx.op.tertiary.f32(i32 46, float %765, float %438, float %791)  ; FMad(a,b,c)
  %793 = fadd fast float %792, %444
  %794 = fmul fast float %763, %427
  %795 = call float @dx.op.tertiary.f32(i32 46, float %764, float %433, float %794)  ; FMad(a,b,c)
  %796 = call float @dx.op.tertiary.f32(i32 46, float %765, float %439, float %795)  ; FMad(a,b,c)
  %797 = fadd fast float %796, %445
  %798 = fmul fast float %763, %429
  %799 = call float @dx.op.tertiary.f32(i32 46, float %764, float %435, float %798)  ; FMad(a,b,c)
  %800 = call float @dx.op.tertiary.f32(i32 46, float %765, float %441, float %799)  ; FMad(a,b,c)
  %801 = fadd fast float %800, %447
  %802 = fmul fast float %787, %426
  %803 = call float @dx.op.tertiary.f32(i32 46, float %788, float %432, float %802)  ; FMad(a,b,c)
  %804 = call float @dx.op.tertiary.f32(i32 46, float %789, float %438, float %803)  ; FMad(a,b,c)
  %805 = fadd fast float %804, %444
  %806 = fmul fast float %787, %427
  %807 = call float @dx.op.tertiary.f32(i32 46, float %788, float %433, float %806)  ; FMad(a,b,c)
  %808 = call float @dx.op.tertiary.f32(i32 46, float %789, float %439, float %807)  ; FMad(a,b,c)
  %809 = fadd fast float %808, %445
  %810 = fmul fast float %787, %429
  %811 = call float @dx.op.tertiary.f32(i32 46, float %788, float %435, float %810)  ; FMad(a,b,c)
  %812 = call float @dx.op.tertiary.f32(i32 46, float %789, float %441, float %811)  ; FMad(a,b,c)
  %813 = fadd fast float %812, %447
  %814 = fdiv fast float 1.000000e+00, %801
  %815 = fmul fast float %814, %793
  %816 = fmul fast float %814, %797
  %817 = fdiv fast float 1.000000e+00, %813
  %818 = fmul fast float %817, %805
  %819 = fmul fast float %817, %809
  %820 = fsub fast float %818, %815
  %821 = fsub fast float %819, %816
  %822 = call float @dx.op.dot2.f32(i32 54, float %820, float %821, float %820, float %821)  ; Dot2(ax,ay,bx,by)
  %823 = call float @dx.op.unary.f32(i32 25, float %822)  ; Rsqrt(value)
  %824 = fmul fast float %820, %823
  %825 = fmul fast float %821, %823
  %826 = fmul fast float %820, %820
  %827 = fmul fast float %821, %821
  %828 = fadd fast float %826, %827
  %829 = call float @dx.op.unary.f32(i32 24, float %828)  ; Sqrt(value)
  %830 = fmul fast float %829, 5.000000e-01
  %831 = fcmp fast olt float %830, %740
  br i1 %831, label %832, label %833, !dx.controlflow.hints !38

; <label>:832                                     ; preds = %741
  br label %833

; <label>:833                                     ; preds = %832, %741, %609
  %834 = phi float [ %740, %609 ], [ %830, %832 ], [ %740, %741 ]
  %835 = phi float [ %740, %609 ], [ %740, %832 ], [ %830, %741 ]
  %836 = phi float [ %734, %609 ], [ %734, %832 ], [ %824, %741 ]
  %837 = phi float [ %735, %609 ], [ %735, %832 ], [ %825, %741 ]
  %838 = fmul fast float %834, %421
  %839 = fdiv fast float %838, %835
  %840 = fsub fast float %421, %839
  %841 = fmul fast float %836, %836
  %842 = fmul fast float %841, %840
  %843 = fadd fast float %842, %839
  %844 = fmul fast float %837, %836
  %845 = fmul fast float %844, %840
  %846 = fmul fast float %837, %837
  %847 = fmul fast float %846, %840
  %848 = fadd fast float %847, %839
  %849 = fmul fast float %843, %505
  %850 = call float @dx.op.tertiary.f32(i32 46, float %504, float %845, float %849)  ; FMad(a,b,c)
  %851 = fmul fast float %845, %505
  %852 = call float @dx.op.tertiary.f32(i32 46, float %504, float %848, float %851)  ; FMad(a,b,c)
  %853 = fmul fast float %843, %506
  %854 = call float @dx.op.tertiary.f32(i32 46, float %505, float %845, float %853)  ; FMad(a,b,c)
  %855 = fmul fast float %845, %506
  %856 = call float @dx.op.tertiary.f32(i32 46, float %505, float %848, float %855)  ; FMad(a,b,c)
  br label %857

; <label>:857                                     ; preds = %895, %833
  %858 = phi float [ 0.000000e+00, %833 ], [ %896, %895 ]
  %859 = phi float [ 0.000000e+00, %833 ], [ %897, %895 ]
  %860 = phi float [ 0.000000e+00, %833 ], [ %898, %895 ]
  %861 = phi float [ 0.000000e+00, %833 ], [ %899, %895 ]
  %862 = phi i32 [ 0, %833 ], [ %900, %895 ]
  %863 = mul i32 %862, 2
  %864 = add i32 0, %863
  %865 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %864
  %866 = load float, float* %865, align 4
  %867 = mul i32 %862, 2
  %868 = add i32 1, %867
  %869 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %868
  %870 = load float, float* %869, align 4
  %871 = fmul fast float %866, %850
  %872 = call float @dx.op.tertiary.f32(i32 46, float %870, float %854, float %871)  ; FMad(a,b,c)
  %873 = fmul fast float %866, %852
  %874 = call float @dx.op.tertiary.f32(i32 46, float %870, float %856, float %873)  ; FMad(a,b,c)
  %875 = fadd fast float %872, %499
  %876 = fadd fast float %874, %500
  %877 = fmul fast float %875, %416
  %878 = fmul fast float %876, %416
  %879 = call float @dx.op.binary.f32(i32 35, float %877, float %412)  ; FMax(a,b)
  %880 = call float @dx.op.binary.f32(i32 35, float %878, float %412)  ; FMax(a,b)
  %881 = call float @dx.op.binary.f32(i32 36, float %879, float %413)  ; FMin(a,b)
  %882 = call float @dx.op.binary.f32(i32 36, float %880, float %413)  ; FMin(a,b)
  %883 = fadd fast float %881, %410
  %884 = fadd fast float %882, %411
  %885 = uitofp i32 %472 to float
  %886 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %15, float %883, float %884, float %885, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %887 = extractvalue %dx.types.ResRet.f32 %886, 0
  %888 = fadd fast float %502, %420
  %889 = fcmp fast olt float %888, %887
  br i1 %889, label %890, label %895, !dx.controlflow.hints !39

; <label>:890                                     ; preds = %857
  %891 = fadd fast float %887, %860
  %892 = fadd fast float %872, %858
  %893 = fadd fast float %874, %859
  %894 = fadd fast float %861, 1.000000e+00
  br label %895

; <label>:895                                     ; preds = %890, %857
  %896 = phi float [ %892, %890 ], [ %858, %857 ]
  %897 = phi float [ %893, %890 ], [ %859, %857 ]
  %898 = phi float [ %891, %890 ], [ %860, %857 ]
  %899 = phi float [ %894, %890 ], [ %861, %857 ]
  %900 = add nuw nsw i32 %862, 1
  %901 = icmp eq i32 %900, 8
  br i1 %901, label %902, label %857

; <label>:902                                     ; preds = %895
  %903 = fdiv fast float 1.000000e+00, %899
  %904 = fcmp fast oeq float %899, 0.000000e+00
  %905 = fmul fast float %903, %898
  %906 = select i1 %904, float -1.000000e+00, float %905
  %907 = fcmp fast olt float %906, 0.000000e+00
  br i1 %907, label %1194, label %908, !dx.controlflow.hints !40

; <label>:908                                     ; preds = %902
  %909 = fmul fast float %903, %897
  %910 = select i1 %904, float 0.000000e+00, float %909
  %911 = fmul fast float %903, %896
  %912 = select i1 %904, float 0.000000e+00, float %911
  %913 = fadd fast float %912, %499
  %914 = fadd fast float %910, %500
  br i1 %475, label %915, label %919, !dx.controlflow.hints !36

; <label>:915                                     ; preds = %908
  %916 = fcmp fast olt float %599, 0x3FE6666660000000
  %917 = select i1 %916, float 1.000000e+00, float 0.000000e+00
  %918 = select i1 %916, float 0.000000e+00, float 1.000000e+00
  br label %919

; <label>:919                                     ; preds = %915, %908
  %920 = phi float [ 0.000000e+00, %915 ], [ %602, %908 ]
  %921 = phi float [ %917, %915 ], [ %603, %908 ]
  %922 = phi float [ %918, %915 ], [ %604, %908 ]
  %923 = fmul fast float %921, %600
  %924 = fmul fast float %922, %599
  %925 = fsub fast float %923, %924
  %926 = fmul fast float %922, %598
  %927 = fmul fast float %920, %600
  %928 = fsub fast float %926, %927
  %929 = fmul fast float %920, %599
  %930 = fmul fast float %921, %598
  %931 = fsub fast float %929, %930
  %932 = call float @dx.op.dot3.f32(i32 55, float %925, float %928, float %931, float %925, float %928, float %931)  ; Dot3(ax,ay,az,bx,by,bz)
  %933 = call float @dx.op.unary.f32(i32 25, float %932)  ; Rsqrt(value)
  %934 = fmul fast float %933, %298
  %935 = fmul fast float %934, %925
  %936 = fmul fast float %934, %928
  %937 = fmul fast float %931, %298
  %938 = fmul fast float %937, %933
  %939 = fmul fast float %913, %450
  %940 = call float @dx.op.tertiary.f32(i32 46, float %914, float %456, float %939)  ; FMad(a,b,c)
  %941 = call float @dx.op.tertiary.f32(i32 46, float %906, float %462, float %940)  ; FMad(a,b,c)
  %942 = fadd fast float %941, %468
  %943 = fmul fast float %913, %451
  %944 = call float @dx.op.tertiary.f32(i32 46, float %914, float %457, float %943)  ; FMad(a,b,c)
  %945 = call float @dx.op.tertiary.f32(i32 46, float %906, float %463, float %944)  ; FMad(a,b,c)
  %946 = fadd fast float %945, %469
  %947 = fmul fast float %913, %452
  %948 = call float @dx.op.tertiary.f32(i32 46, float %914, float %458, float %947)  ; FMad(a,b,c)
  %949 = call float @dx.op.tertiary.f32(i32 46, float %906, float %464, float %948)  ; FMad(a,b,c)
  %950 = fadd fast float %949, %470
  %951 = fmul fast float %913, %453
  %952 = call float @dx.op.tertiary.f32(i32 46, float %914, float %459, float %951)  ; FMad(a,b,c)
  %953 = call float @dx.op.tertiary.f32(i32 46, float %906, float %465, float %952)  ; FMad(a,b,c)
  %954 = fadd fast float %953, %471
  %955 = fdiv fast float 1.000000e+00, %954
  %956 = fmul fast float %955, %942
  %957 = fmul fast float %955, %946
  %958 = fmul fast float %955, %950
  %959 = fsub fast float %301, %935
  %960 = fsub fast float %302, %936
  %961 = fsub fast float %303, %938
  %962 = fsub fast float %956, %959
  %963 = fsub fast float %957, %960
  %964 = fsub fast float %958, %961
  %965 = call float @dx.op.dot3.f32(i32 55, float %962, float %963, float %964, float %962, float %963, float %964)  ; Dot3(ax,ay,az,bx,by,bz)
  %966 = call float @dx.op.unary.f32(i32 25, float %965)  ; Rsqrt(value)
  %967 = fmul fast float %962, %966
  %968 = fmul fast float %963, %966
  %969 = fmul fast float %964, %966
  %970 = fsub fast float %480, %959
  %971 = fsub fast float %481, %960
  %972 = fsub fast float %482, %961
  %973 = call float @dx.op.dot3.f32(i32 55, float %649, float %650, float %651, float %970, float %971, float %972)  ; Dot3(ax,ay,az,bx,by,bz)
  %974 = call float @dx.op.dot3.f32(i32 55, float %649, float %650, float %651, float %967, float %968, float %969)  ; Dot3(ax,ay,az,bx,by,bz)
  %975 = fdiv fast float 1.000000e+00, %974
  %976 = fmul fast float %975, %973
  %977 = fmul fast float %976, %967
  %978 = fmul fast float %976, %968
  %979 = fmul fast float %976, %969
  %980 = fadd fast float %977, %959
  %981 = fadd fast float %978, %960
  %982 = fadd fast float %979, %961
  %983 = fadd fast float %935, %301
  %984 = fadd fast float %936, %302
  %985 = fadd fast float %938, %303
  %986 = fsub fast float %956, %983
  %987 = fsub fast float %957, %984
  %988 = fsub fast float %958, %985
  %989 = call float @dx.op.dot3.f32(i32 55, float %986, float %987, float %988, float %986, float %987, float %988)  ; Dot3(ax,ay,az,bx,by,bz)
  %990 = call float @dx.op.unary.f32(i32 25, float %989)  ; Rsqrt(value)
  %991 = fmul fast float %990, %986
  %992 = fmul fast float %990, %987
  %993 = fmul fast float %990, %988
  %994 = fsub fast float %480, %983
  %995 = fsub fast float %481, %984
  %996 = fsub fast float %482, %985
  %997 = call float @dx.op.dot3.f32(i32 55, float %649, float %650, float %651, float %994, float %995, float %996)  ; Dot3(ax,ay,az,bx,by,bz)
  %998 = call float @dx.op.dot3.f32(i32 55, float %649, float %650, float %651, float %991, float %992, float %993)  ; Dot3(ax,ay,az,bx,by,bz)
  %999 = fdiv fast float 1.000000e+00, %998
  %1000 = fmul fast float %999, %997
  %1001 = fmul fast float %1000, %991
  %1002 = fmul fast float %1000, %992
  %1003 = fmul fast float %1000, %993
  %1004 = fadd fast float %1001, %983
  %1005 = fadd fast float %1002, %984
  %1006 = fadd fast float %1003, %985
  %1007 = fmul fast float %980, %426
  %1008 = call float @dx.op.tertiary.f32(i32 46, float %981, float %432, float %1007)  ; FMad(a,b,c)
  %1009 = call float @dx.op.tertiary.f32(i32 46, float %982, float %438, float %1008)  ; FMad(a,b,c)
  %1010 = fadd fast float %1009, %444
  %1011 = fmul fast float %980, %427
  %1012 = call float @dx.op.tertiary.f32(i32 46, float %981, float %433, float %1011)  ; FMad(a,b,c)
  %1013 = call float @dx.op.tertiary.f32(i32 46, float %982, float %439, float %1012)  ; FMad(a,b,c)
  %1014 = fadd fast float %1013, %445
  %1015 = fmul fast float %980, %429
  %1016 = call float @dx.op.tertiary.f32(i32 46, float %981, float %435, float %1015)  ; FMad(a,b,c)
  %1017 = call float @dx.op.tertiary.f32(i32 46, float %982, float %441, float %1016)  ; FMad(a,b,c)
  %1018 = fadd fast float %1017, %447
  %1019 = fmul fast float %1004, %426
  %1020 = call float @dx.op.tertiary.f32(i32 46, float %1005, float %432, float %1019)  ; FMad(a,b,c)
  %1021 = call float @dx.op.tertiary.f32(i32 46, float %1006, float %438, float %1020)  ; FMad(a,b,c)
  %1022 = fadd fast float %1021, %444
  %1023 = fmul fast float %1004, %427
  %1024 = call float @dx.op.tertiary.f32(i32 46, float %1005, float %433, float %1023)  ; FMad(a,b,c)
  %1025 = call float @dx.op.tertiary.f32(i32 46, float %1006, float %439, float %1024)  ; FMad(a,b,c)
  %1026 = fadd fast float %1025, %445
  %1027 = fmul fast float %1004, %429
  %1028 = call float @dx.op.tertiary.f32(i32 46, float %1005, float %435, float %1027)  ; FMad(a,b,c)
  %1029 = call float @dx.op.tertiary.f32(i32 46, float %1006, float %441, float %1028)  ; FMad(a,b,c)
  %1030 = fadd fast float %1029, %447
  %1031 = fdiv fast float 1.000000e+00, %1018
  %1032 = fmul fast float %1031, %1010
  %1033 = fmul fast float %1031, %1014
  %1034 = fdiv fast float 1.000000e+00, %1030
  %1035 = fmul fast float %1034, %1022
  %1036 = fmul fast float %1034, %1026
  %1037 = fsub fast float %1035, %1032
  %1038 = fsub fast float %1036, %1033
  %1039 = call float @dx.op.dot2.f32(i32 54, float %1037, float %1038, float %1037, float %1038)  ; Dot2(ax,ay,bx,by)
  %1040 = call float @dx.op.unary.f32(i32 25, float %1039)  ; Rsqrt(value)
  %1041 = fmul fast float %1037, %1040
  %1042 = fmul fast float %1038, %1040
  %1043 = fmul fast float %1037, %1037
  %1044 = fmul fast float %1038, %1038
  %1045 = fadd fast float %1043, %1044
  %1046 = call float @dx.op.unary.f32(i32 24, float %1045)  ; Sqrt(value)
  %1047 = fmul fast float %1046, 5.000000e-01
  br i1 %475, label %1140, label %1048, !dx.controlflow.hints !37

; <label>:1048                                    ; preds = %919
  %1049 = fsub fast float %301, %293
  %1050 = fsub fast float %302, %294
  %1051 = fsub fast float %303, %295
  %1052 = fsub fast float %956, %1049
  %1053 = fsub fast float %957, %1050
  %1054 = fsub fast float %958, %1051
  %1055 = call float @dx.op.dot3.f32(i32 55, float %1052, float %1053, float %1054, float %1052, float %1053, float %1054)  ; Dot3(ax,ay,az,bx,by,bz)
  %1056 = call float @dx.op.unary.f32(i32 25, float %1055)  ; Rsqrt(value)
  %1057 = fmul fast float %1056, %1052
  %1058 = fmul fast float %1056, %1053
  %1059 = fmul fast float %1056, %1054
  %1060 = fsub fast float %480, %1049
  %1061 = fsub fast float %481, %1050
  %1062 = fsub fast float %482, %1051
  %1063 = call float @dx.op.dot3.f32(i32 55, float %649, float %650, float %651, float %1060, float %1061, float %1062)  ; Dot3(ax,ay,az,bx,by,bz)
  %1064 = call float @dx.op.dot3.f32(i32 55, float %649, float %650, float %651, float %1057, float %1058, float %1059)  ; Dot3(ax,ay,az,bx,by,bz)
  %1065 = fdiv fast float 1.000000e+00, %1064
  %1066 = fmul fast float %1065, %1063
  %1067 = fmul fast float %1066, %1057
  %1068 = fmul fast float %1066, %1058
  %1069 = fmul fast float %1066, %1059
  %1070 = fadd fast float %1067, %1049
  %1071 = fadd fast float %1068, %1050
  %1072 = fadd fast float %1069, %1051
  %1073 = fadd fast float %301, %293
  %1074 = fadd fast float %302, %294
  %1075 = fadd fast float %303, %295
  %1076 = fsub fast float %956, %1073
  %1077 = fsub fast float %957, %1074
  %1078 = fsub fast float %958, %1075
  %1079 = call float @dx.op.dot3.f32(i32 55, float %1076, float %1077, float %1078, float %1076, float %1077, float %1078)  ; Dot3(ax,ay,az,bx,by,bz)
  %1080 = call float @dx.op.unary.f32(i32 25, float %1079)  ; Rsqrt(value)
  %1081 = fmul fast float %1080, %1076
  %1082 = fmul fast float %1080, %1077
  %1083 = fmul fast float %1080, %1078
  %1084 = fsub fast float %480, %1073
  %1085 = fsub fast float %481, %1074
  %1086 = fsub fast float %482, %1075
  %1087 = call float @dx.op.dot3.f32(i32 55, float %649, float %650, float %651, float %1084, float %1085, float %1086)  ; Dot3(ax,ay,az,bx,by,bz)
  %1088 = call float @dx.op.dot3.f32(i32 55, float %649, float %650, float %651, float %1081, float %1082, float %1083)  ; Dot3(ax,ay,az,bx,by,bz)
  %1089 = fdiv fast float 1.000000e+00, %1088
  %1090 = fmul fast float %1089, %1087
  %1091 = fmul fast float %1090, %1081
  %1092 = fmul fast float %1090, %1082
  %1093 = fmul fast float %1090, %1083
  %1094 = fadd fast float %1091, %1073
  %1095 = fadd fast float %1092, %1074
  %1096 = fadd fast float %1093, %1075
  %1097 = fmul fast float %1070, %426
  %1098 = call float @dx.op.tertiary.f32(i32 46, float %1071, float %432, float %1097)  ; FMad(a,b,c)
  %1099 = call float @dx.op.tertiary.f32(i32 46, float %1072, float %438, float %1098)  ; FMad(a,b,c)
  %1100 = fadd fast float %1099, %444
  %1101 = fmul fast float %1070, %427
  %1102 = call float @dx.op.tertiary.f32(i32 46, float %1071, float %433, float %1101)  ; FMad(a,b,c)
  %1103 = call float @dx.op.tertiary.f32(i32 46, float %1072, float %439, float %1102)  ; FMad(a,b,c)
  %1104 = fadd fast float %1103, %445
  %1105 = fmul fast float %1070, %429
  %1106 = call float @dx.op.tertiary.f32(i32 46, float %1071, float %435, float %1105)  ; FMad(a,b,c)
  %1107 = call float @dx.op.tertiary.f32(i32 46, float %1072, float %441, float %1106)  ; FMad(a,b,c)
  %1108 = fadd fast float %1107, %447
  %1109 = fmul fast float %1094, %426
  %1110 = call float @dx.op.tertiary.f32(i32 46, float %1095, float %432, float %1109)  ; FMad(a,b,c)
  %1111 = call float @dx.op.tertiary.f32(i32 46, float %1096, float %438, float %1110)  ; FMad(a,b,c)
  %1112 = fadd fast float %1111, %444
  %1113 = fmul fast float %1094, %427
  %1114 = call float @dx.op.tertiary.f32(i32 46, float %1095, float %433, float %1113)  ; FMad(a,b,c)
  %1115 = call float @dx.op.tertiary.f32(i32 46, float %1096, float %439, float %1114)  ; FMad(a,b,c)
  %1116 = fadd fast float %1115, %445
  %1117 = fmul fast float %1094, %429
  %1118 = call float @dx.op.tertiary.f32(i32 46, float %1095, float %435, float %1117)  ; FMad(a,b,c)
  %1119 = call float @dx.op.tertiary.f32(i32 46, float %1096, float %441, float %1118)  ; FMad(a,b,c)
  %1120 = fadd fast float %1119, %447
  %1121 = fdiv fast float 1.000000e+00, %1108
  %1122 = fmul fast float %1121, %1100
  %1123 = fmul fast float %1121, %1104
  %1124 = fdiv fast float 1.000000e+00, %1120
  %1125 = fmul fast float %1124, %1112
  %1126 = fmul fast float %1124, %1116
  %1127 = fsub fast float %1125, %1122
  %1128 = fsub fast float %1126, %1123
  %1129 = call float @dx.op.dot2.f32(i32 54, float %1127, float %1128, float %1127, float %1128)  ; Dot2(ax,ay,bx,by)
  %1130 = call float @dx.op.unary.f32(i32 25, float %1129)  ; Rsqrt(value)
  %1131 = fmul fast float %1127, %1130
  %1132 = fmul fast float %1128, %1130
  %1133 = fmul fast float %1127, %1127
  %1134 = fmul fast float %1128, %1128
  %1135 = fadd fast float %1133, %1134
  %1136 = call float @dx.op.unary.f32(i32 24, float %1135)  ; Sqrt(value)
  %1137 = fmul fast float %1136, 5.000000e-01
  %1138 = fcmp fast olt float %1137, %1047
  br i1 %1138, label %1139, label %1140, !dx.controlflow.hints !38

; <label>:1139                                    ; preds = %1048
  br label %1140

; <label>:1140                                    ; preds = %1139, %1048, %919
  %1141 = phi float [ %1047, %919 ], [ %1137, %1139 ], [ %1047, %1048 ]
  %1142 = phi float [ %1047, %919 ], [ %1047, %1139 ], [ %1137, %1048 ]
  %1143 = phi float [ %1041, %919 ], [ %1041, %1139 ], [ %1131, %1048 ]
  %1144 = phi float [ %1042, %919 ], [ %1042, %1139 ], [ %1132, %1048 ]
  %1145 = fsub fast float %1142, %1141
  %1146 = fmul fast float %1143, %1143
  %1147 = fmul fast float %1146, %1145
  %1148 = fadd fast float %1147, %1141
  %1149 = fmul fast float %1143, %1145
  %1150 = fmul fast float %1149, %1144
  %1151 = fmul fast float %1144, %1144
  %1152 = fmul fast float %1151, %1145
  %1153 = fadd fast float %1152, %1141
  %1154 = fmul fast float %1148, %505
  %1155 = call float @dx.op.tertiary.f32(i32 46, float %504, float %1150, float %1154)  ; FMad(a,b,c)
  %1156 = fmul fast float %1150, %505
  %1157 = call float @dx.op.tertiary.f32(i32 46, float %504, float %1153, float %1156)  ; FMad(a,b,c)
  %1158 = fmul fast float %1148, %506
  %1159 = call float @dx.op.tertiary.f32(i32 46, float %505, float %1150, float %1158)  ; FMad(a,b,c)
  %1160 = fmul fast float %1150, %506
  %1161 = call float @dx.op.tertiary.f32(i32 46, float %505, float %1153, float %1160)  ; FMad(a,b,c)
  br label %1162

; <label>:1162                                    ; preds = %1162, %1140
  %1163 = phi float [ 0.000000e+00, %1140 ], [ %1189, %1162 ]
  %1164 = phi i32 [ 0, %1140 ], [ %1190, %1162 ]
  %1165 = mul i32 %1164, 2
  %1166 = add i32 0, %1165
  %1167 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1166
  %1168 = load float, float* %1167, align 4
  %1169 = mul i32 %1164, 2
  %1170 = add i32 1, %1169
  %1171 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1170
  %1172 = load float, float* %1171, align 4
  %1173 = fmul fast float %1168, %1155
  %1174 = call float @dx.op.tertiary.f32(i32 46, float %1172, float %1159, float %1173)  ; FMad(a,b,c)
  %1175 = fmul fast float %1168, %1157
  %1176 = call float @dx.op.tertiary.f32(i32 46, float %1172, float %1161, float %1175)  ; FMad(a,b,c)
  %1177 = fadd fast float %1174, %499
  %1178 = fadd fast float %1176, %500
  %1179 = fmul fast float %1177, %416
  %1180 = fmul fast float %1178, %416
  %1181 = call float @dx.op.binary.f32(i32 35, float %1179, float %412)  ; FMax(a,b)
  %1182 = call float @dx.op.binary.f32(i32 35, float %1180, float %412)  ; FMax(a,b)
  %1183 = call float @dx.op.binary.f32(i32 36, float %1181, float %413)  ; FMin(a,b)
  %1184 = call float @dx.op.binary.f32(i32 36, float %1182, float %413)  ; FMin(a,b)
  %1185 = fadd fast float %1183, %410
  %1186 = fadd fast float %1184, %411
  %1187 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %16, float %1185, float %1186, float %885, float undef, i32 0, i32 0, i32 undef, float %888)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1188 = extractvalue %dx.types.ResRet.f32 %1187, 0
  %1189 = fadd fast float %1188, %1163
  %1190 = add nuw nsw i32 %1164, 1
  %1191 = icmp eq i32 %1190, 8
  br i1 %1191, label %1192, label %1162

; <label>:1192                                    ; preds = %1162
  %1193 = fmul fast float %1189, 1.250000e-01
  br label %1194

; <label>:1194                                    ; preds = %1192, %902, %551
  %1195 = phi float [ %578, %551 ], [ %1193, %1192 ], [ 1.000000e+00, %902 ]
  %1196 = fcmp fast ogt float %1195, 0.000000e+00
  %1197 = xor i1 %50, true
  %1198 = and i1 %1196, %1197
  %1199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1200 = extractvalue %dx.types.CBufRet.f32 %1199, 1
  %1201 = fcmp fast olt float %1200, 0.000000e+00
  %1202 = and i1 %1198, %1201
  br i1 %1202, label %1203, label %1314, !dx.controlflow.hints !41

; <label>:1203                                    ; preds = %1194
  %1204 = fadd fast float %499, %412
  %1205 = fadd fast float %500, %412
  %1206 = fadd fast float %502, %420
  %1207 = fmul fast float %499, %450
  %1208 = call float @dx.op.tertiary.f32(i32 46, float %500, float %456, float %1207)  ; FMad(a,b,c)
  %1209 = call float @dx.op.tertiary.f32(i32 46, float %502, float %462, float %1208)  ; FMad(a,b,c)
  %1210 = fadd fast float %1209, %468
  %1211 = fmul fast float %499, %451
  %1212 = call float @dx.op.tertiary.f32(i32 46, float %500, float %457, float %1211)  ; FMad(a,b,c)
  %1213 = call float @dx.op.tertiary.f32(i32 46, float %502, float %463, float %1212)  ; FMad(a,b,c)
  %1214 = fadd fast float %1213, %469
  %1215 = fmul fast float %499, %452
  %1216 = call float @dx.op.tertiary.f32(i32 46, float %500, float %458, float %1215)  ; FMad(a,b,c)
  %1217 = call float @dx.op.tertiary.f32(i32 46, float %502, float %464, float %1216)  ; FMad(a,b,c)
  %1218 = fadd fast float %1217, %470
  %1219 = fmul fast float %499, %453
  %1220 = call float @dx.op.tertiary.f32(i32 46, float %500, float %459, float %1219)  ; FMad(a,b,c)
  %1221 = call float @dx.op.tertiary.f32(i32 46, float %502, float %465, float %1220)  ; FMad(a,b,c)
  %1222 = fadd fast float %1221, %471
  %1223 = fmul fast float %1204, %450
  %1224 = call float @dx.op.tertiary.f32(i32 46, float %1205, float %456, float %1223)  ; FMad(a,b,c)
  %1225 = call float @dx.op.tertiary.f32(i32 46, float %1206, float %462, float %1224)  ; FMad(a,b,c)
  %1226 = fadd fast float %1225, %468
  %1227 = fmul fast float %1204, %451
  %1228 = call float @dx.op.tertiary.f32(i32 46, float %1205, float %457, float %1227)  ; FMad(a,b,c)
  %1229 = call float @dx.op.tertiary.f32(i32 46, float %1206, float %463, float %1228)  ; FMad(a,b,c)
  %1230 = fadd fast float %1229, %469
  %1231 = fmul fast float %1204, %452
  %1232 = call float @dx.op.tertiary.f32(i32 46, float %1205, float %458, float %1231)  ; FMad(a,b,c)
  %1233 = call float @dx.op.tertiary.f32(i32 46, float %1206, float %464, float %1232)  ; FMad(a,b,c)
  %1234 = fadd fast float %1233, %470
  %1235 = fmul fast float %1204, %453
  %1236 = call float @dx.op.tertiary.f32(i32 46, float %1205, float %459, float %1235)  ; FMad(a,b,c)
  %1237 = call float @dx.op.tertiary.f32(i32 46, float %1206, float %465, float %1236)  ; FMad(a,b,c)
  %1238 = fadd fast float %1237, %471
  %1239 = fdiv fast float 1.000000e+00, %1222
  %1240 = fmul fast float %1239, %1210
  %1241 = fmul fast float %1239, %1214
  %1242 = fmul fast float %1239, %1218
  %1243 = fdiv fast float 1.000000e+00, %1238
  %1244 = fmul fast float %1243, %1226
  %1245 = fmul fast float %1243, %1230
  %1246 = fmul fast float %1243, %1234
  %1247 = fsub fast float %1240, %1244
  %1248 = fsub fast float %1241, %1245
  %1249 = fsub fast float %1242, %1246
  %1250 = fmul fast float %1247, %1247
  %1251 = fmul fast float %1248, %1248
  %1252 = fadd fast float %1250, %1251
  %1253 = fmul fast float %1249, %1249
  %1254 = fadd fast float %1252, %1253
  %1255 = call float @dx.op.unary.f32(i32 24, float %1254)  ; Sqrt(value)
  %1256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1257 = extractvalue %dx.types.CBufRet.f32 %1256, 0
  %1258 = extractvalue %dx.types.CBufRet.f32 %1256, 1
  %1259 = extractvalue %dx.types.CBufRet.f32 %1256, 2
  %1260 = extractvalue %dx.types.CBufRet.f32 %1256, 3
  %1261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1262 = extractvalue %dx.types.CBufRet.f32 %1261, 0
  %1263 = extractvalue %dx.types.CBufRet.f32 %1261, 1
  %1264 = extractvalue %dx.types.CBufRet.f32 %1261, 2
  %1265 = extractvalue %dx.types.CBufRet.f32 %1261, 3
  %1266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1267 = extractvalue %dx.types.CBufRet.f32 %1266, 0
  %1268 = extractvalue %dx.types.CBufRet.f32 %1266, 1
  %1269 = extractvalue %dx.types.CBufRet.f32 %1266, 2
  %1270 = extractvalue %dx.types.CBufRet.f32 %1266, 3
  %1271 = fmul fast float %1257, %1240
  %1272 = call float @dx.op.tertiary.f32(i32 46, float %1241, float %1258, float %1271)  ; FMad(a,b,c)
  %1273 = call float @dx.op.tertiary.f32(i32 46, float %1242, float %1259, float %1272)  ; FMad(a,b,c)
  %1274 = call float @dx.op.tertiary.f32(i32 46, float %1222, float %1260, float %1273)  ; FMad(a,b,c)
  %1275 = fmul fast float %1262, %1240
  %1276 = call float @dx.op.tertiary.f32(i32 46, float %1241, float %1263, float %1275)  ; FMad(a,b,c)
  %1277 = call float @dx.op.tertiary.f32(i32 46, float %1242, float %1264, float %1276)  ; FMad(a,b,c)
  %1278 = call float @dx.op.tertiary.f32(i32 46, float %1222, float %1265, float %1277)  ; FMad(a,b,c)
  %1279 = fmul fast float %1267, %1240
  %1280 = call float @dx.op.tertiary.f32(i32 46, float %1241, float %1268, float %1279)  ; FMad(a,b,c)
  %1281 = call float @dx.op.tertiary.f32(i32 46, float %1242, float %1269, float %1280)  ; FMad(a,b,c)
  %1282 = call float @dx.op.tertiary.f32(i32 46, float %1222, float %1270, float %1281)  ; FMad(a,b,c)
  %1283 = fmul fast float %1257, %1244
  %1284 = call float @dx.op.tertiary.f32(i32 46, float %1245, float %1258, float %1283)  ; FMad(a,b,c)
  %1285 = call float @dx.op.tertiary.f32(i32 46, float %1246, float %1259, float %1284)  ; FMad(a,b,c)
  %1286 = call float @dx.op.tertiary.f32(i32 46, float %1238, float %1260, float %1285)  ; FMad(a,b,c)
  %1287 = fmul fast float %1262, %1244
  %1288 = call float @dx.op.tertiary.f32(i32 46, float %1245, float %1263, float %1287)  ; FMad(a,b,c)
  %1289 = call float @dx.op.tertiary.f32(i32 46, float %1246, float %1264, float %1288)  ; FMad(a,b,c)
  %1290 = call float @dx.op.tertiary.f32(i32 46, float %1238, float %1265, float %1289)  ; FMad(a,b,c)
  %1291 = fmul fast float %1267, %1244
  %1292 = call float @dx.op.tertiary.f32(i32 46, float %1245, float %1268, float %1291)  ; FMad(a,b,c)
  %1293 = call float @dx.op.tertiary.f32(i32 46, float %1246, float %1269, float %1292)  ; FMad(a,b,c)
  %1294 = call float @dx.op.tertiary.f32(i32 46, float %1238, float %1270, float %1293)  ; FMad(a,b,c)
  %1295 = fdiv fast float 1.000000e+00, %1282
  %1296 = fmul fast float %1295, %1274
  %1297 = fmul fast float %1295, %1278
  %1298 = fdiv fast float 1.000000e+00, %1294
  %1299 = fmul fast float %1298, %1286
  %1300 = fmul fast float %1298, %1290
  %1301 = fsub fast float %1296, %1299
  %1302 = fsub fast float %1297, %1300
  %1303 = fmul fast float %1301, 5.000000e-01
  %1304 = fmul fast float %1302, 5.000000e-01
  %1305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1306 = extractvalue %dx.types.CBufRet.f32 %1305, 0
  %1307 = extractvalue %dx.types.CBufRet.f32 %1305, 1
  %1308 = fmul fast float %1303, %1306
  %1309 = fmul fast float %1304, %1307
  %1310 = fmul fast float %1308, %1308
  %1311 = fmul fast float %1309, %1309
  %1312 = fadd fast float %1310, %1311
  %1313 = call float @dx.op.unary.f32(i32 24, float %1312)  ; Sqrt(value)
  br label %1314

; <label>:1314                                    ; preds = %1203, %1194
  %1315 = phi float [ %1255, %1203 ], [ 0.000000e+00, %1194 ]
  %1316 = phi float [ %1313, %1203 ], [ 0.000000e+00, %1194 ]
  %1317 = fadd fast float %1195, -1.000000e+00
  %1318 = fmul fast float %1317, %389
  %1319 = fadd fast float %1318, 1.000000e+00
  %1320 = fmul fast float %1319, %401
  br label %1321

; <label>:1321                                    ; preds = %1314, %368
  %1322 = phi float [ %1320, %1314 ], [ %401, %368 ]
  %1323 = phi float [ %1315, %1314 ], [ 0.000000e+00, %368 ]
  %1324 = phi float [ %1316, %1314 ], [ 0.000000e+00, %368 ]
  %1325 = call float @dx.op.binary.f32(i32 36, float %1322, float %1322)  ; FMin(a,b)
  %1326 = call float @dx.op.binary.f32(i32 36, float %1322, float %1325)  ; FMin(a,b)
  %1327 = fcmp fast ogt float %1326, 0.000000e+00
  %1328 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %341, float %342, float %343)  ; Dot3(ax,ay,az,bx,by,bz)
  %1329 = fcmp fast ogt float %1328, 0.000000e+00
  %1330 = and i1 %1327, %1329
  br i1 %1330, label %1331, label %1612, !dx.controlflow.hints !42

; <label>:1331                                    ; preds = %1321
  %1332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1333 = extractvalue %dx.types.CBufRet.f32 %1332, 1
  %1334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1335 = extractvalue %dx.types.CBufRet.f32 %1334, 1
  %1336 = select i1 %50, float %1333, float %1335
  %1337 = extractvalue %dx.types.CBufRet.f32 %1332, 2
  %1338 = extractvalue %dx.types.CBufRet.f32 %1334, 2
  %1339 = select i1 %50, float %1337, float %1338
  %1340 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1341 = extractvalue %dx.types.CBufRet.i32 %1340, 0
  %1342 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1343 = extractvalue %dx.types.CBufRet.i32 %1342, 0
  %1344 = select i1 %50, i32 %1341, i32 %1343
  %1345 = fcmp fast ogt float %1323, 0.000000e+00
  br i1 %1345, label %1346, label %1350, !dx.controlflow.hints !43

; <label>:1346                                    ; preds = %1331
  %1347 = fptosi float %1324 to i32
  %1348 = call i32 @dx.op.binary.i32(i32 37, i32 %1347, i32 1)  ; IMax(a,b)
  %1349 = call i32 @dx.op.binary.i32(i32 38, i32 %1348, i32 16)  ; IMin(a,b)
  br label %1350

; <label>:1350                                    ; preds = %1346, %1331
  %1351 = phi float [ 0.000000e+00, %1346 ], [ 1.000000e+00, %1331 ]
  %1352 = phi float [ %1323, %1346 ], [ %1336, %1331 ]
  %1353 = phi i32 [ %1349, %1346 ], [ %1344, %1331 ]
  %1354 = fcmp fast olt float %1352, 5.000000e-01
  %1355 = icmp eq i32 %1353, 0
  %1356 = or i1 %1354, %1355
  br i1 %1356, label %1607, label %1357, !dx.controlflow.hints !44

; <label>:1357                                    ; preds = %1350
  %1358 = fsub fast float %301, %112
  %1359 = fsub fast float %302, %113
  %1360 = fsub fast float %303, %114
  %1361 = fmul fast float %1358, %1358
  %1362 = fmul fast float %1359, %1359
  %1363 = fadd fast float %1361, %1362
  %1364 = fmul fast float %1360, %1360
  %1365 = fadd fast float %1363, %1364
  %1366 = call float @dx.op.unary.f32(i32 24, float %1365)  ; Sqrt(value)
  %1367 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1368 = extractvalue %dx.types.CBufRet.i32 %1367, 0
  %1369 = uitofp i32 %1368 to float
  %1370 = fmul fast float %1352, %298
  %1371 = fdiv fast float %1370, %1366
  %1372 = call float @dx.op.binary.f32(i32 36, float %1371, float 1.000000e+01)  ; FMin(a,b)
  %1373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %1374 = extractvalue %dx.types.CBufRet.f32 %1373, 0
  %1375 = extractvalue %dx.types.CBufRet.f32 %1373, 1
  %1376 = extractvalue %dx.types.CBufRet.f32 %1373, 2
  %1377 = extractvalue %dx.types.CBufRet.f32 %1373, 3
  %1378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %1379 = extractvalue %dx.types.CBufRet.f32 %1378, 0
  %1380 = extractvalue %dx.types.CBufRet.f32 %1378, 1
  %1381 = extractvalue %dx.types.CBufRet.f32 %1378, 2
  %1382 = extractvalue %dx.types.CBufRet.f32 %1378, 3
  %1383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %1384 = extractvalue %dx.types.CBufRet.f32 %1383, 0
  %1385 = extractvalue %dx.types.CBufRet.f32 %1383, 1
  %1386 = extractvalue %dx.types.CBufRet.f32 %1383, 2
  %1387 = extractvalue %dx.types.CBufRet.f32 %1383, 3
  %1388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1389 = extractvalue %dx.types.CBufRet.f32 %1388, 0
  %1390 = extractvalue %dx.types.CBufRet.f32 %1388, 1
  %1391 = extractvalue %dx.types.CBufRet.f32 %1388, 2
  %1392 = extractvalue %dx.types.CBufRet.f32 %1388, 3
  %1393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1394 = extractvalue %dx.types.CBufRet.f32 %1393, 0
  %1395 = extractvalue %dx.types.CBufRet.f32 %1393, 1
  %1396 = extractvalue %dx.types.CBufRet.f32 %1393, 2
  %1397 = extractvalue %dx.types.CBufRet.f32 %1393, 3
  %1398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1399 = extractvalue %dx.types.CBufRet.f32 %1398, 0
  %1400 = extractvalue %dx.types.CBufRet.f32 %1398, 1
  %1401 = extractvalue %dx.types.CBufRet.f32 %1398, 2
  %1402 = extractvalue %dx.types.CBufRet.f32 %1398, 3
  %1403 = select i1 %50, float %1374, float %1389
  %1404 = select i1 %50, float %1379, float %1394
  %1405 = select i1 %50, float %1384, float %1399
  %1406 = select i1 %50, float %1375, float %1390
  %1407 = select i1 %50, float %1380, float %1395
  %1408 = select i1 %50, float %1385, float %1400
  %1409 = select i1 %50, float %1376, float %1391
  %1410 = select i1 %50, float %1381, float %1396
  %1411 = select i1 %50, float %1386, float %1401
  %1412 = select i1 %50, float %1377, float %1392
  %1413 = select i1 %50, float %1382, float %1397
  %1414 = select i1 %50, float %1387, float %1402
  %1415 = fmul fast float %214, 0x401061CAC0000000
  %1416 = fmul fast float %214, 0x4023E1D7E0000000
  %1417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1418 = extractvalue %dx.types.CBufRet.f32 %1417, 0
  %1419 = extractvalue %dx.types.CBufRet.f32 %1417, 1
  %1420 = extractvalue %dx.types.CBufRet.f32 %1417, 2
  %1421 = extractvalue %dx.types.CBufRet.f32 %1417, 3
  %1422 = fsub fast float -0.000000e+00, %341
  %1423 = fmul fast float %343, %1422
  %1424 = fmul fast float %341, %1422
  %1425 = fmul fast float %342, %342
  %1426 = fsub fast float %1424, %1425
  %1427 = fdiv fast float 1.000000e+00, %57
  %1428 = fmul fast float %1420, %46
  %1429 = fmul fast float %1421, %47
  %1430 = fmul fast float %1352, %341
  %1431 = fmul fast float %1352, %343
  %1432 = fadd fast float %1430, %112
  %1433 = fadd fast float %1431, %114
  %1434 = fadd fast float %1416, 5.000000e-01
  %1435 = call float @dx.op.unary.f32(i32 22, float %1434)  ; Frc(value)
  %1436 = bitcast float %1435 to i32
  %1437 = ashr i32 %1436, 1
  %1438 = add nsw i32 %1437, 532487669
  %1439 = bitcast i32 %1438 to float
  %1440 = fmul fast float %1439, %1372
  %1441 = fadd fast float %1415, 5.000000e-01
  %1442 = call float @dx.op.unary.f32(i32 22, float %1441)  ; Frc(value)
  %1443 = fmul fast float %1442, 0x401921FB60000000
  %1444 = call float @dx.op.unary.f32(i32 12, float %1443)  ; Cos(value)
  %1445 = fmul fast float %1444, %1444
  %1446 = fsub fast float 1.000000e+00, %1445
  %1447 = bitcast float %1446 to i32
  %1448 = ashr i32 %1447, 1
  %1449 = add nsw i32 %1448, 532487669
  %1450 = bitcast i32 %1449 to float
  %1451 = fmul fast float %1440, %1444
  %1452 = fmul fast float %1451, %342
  %1453 = fmul fast float %1451, %1422
  %1454 = fadd fast float %1432, %1452
  %1455 = fmul fast float %1450, %1440
  %1456 = fmul fast float %1423, %1455
  %1457 = fmul fast float %1455, %343
  %1458 = fmul fast float %1455, %1426
  %1459 = fsub fast float %1454, %1456
  %1460 = fadd fast float %1457, %1352
  %1461 = fmul fast float %1460, %342
  %1462 = fadd fast float %1453, %113
  %1463 = fadd fast float %1462, %1461
  %1464 = fadd fast float %1433, %1458
  %1465 = fmul fast float %1459, %1403
  %1466 = call float @dx.op.tertiary.f32(i32 46, float %1463, float %1406, float %1465)  ; FMad(a,b,c)
  %1467 = call float @dx.op.tertiary.f32(i32 46, float %1464, float %1409, float %1466)  ; FMad(a,b,c)
  %1468 = fadd fast float %1467, %1412
  %1469 = fmul fast float %1459, %1404
  %1470 = call float @dx.op.tertiary.f32(i32 46, float %1463, float %1407, float %1469)  ; FMad(a,b,c)
  %1471 = call float @dx.op.tertiary.f32(i32 46, float %1464, float %1410, float %1470)  ; FMad(a,b,c)
  %1472 = fadd fast float %1471, %1413
  %1473 = fmul fast float %1459, %1405
  %1474 = call float @dx.op.tertiary.f32(i32 46, float %1463, float %1408, float %1473)  ; FMad(a,b,c)
  %1475 = call float @dx.op.tertiary.f32(i32 46, float %1464, float %1411, float %1474)  ; FMad(a,b,c)
  %1476 = fadd fast float %1475, %1414
  %1477 = fdiv fast float 1.000000e+00, %1476
  %1478 = fmul fast float %1468, 5.000000e-01
  %1479 = fmul fast float %1472, -5.000000e-01
  %1480 = fmul fast float %1478, %1477
  %1481 = fmul fast float %1479, %1477
  %1482 = fsub fast float 5.000000e-01, %1428
  %1483 = fadd fast float %1482, %1480
  %1484 = fsub fast float 5.000000e-01, %1429
  %1485 = fadd fast float %1484, %1481
  %1486 = fsub fast float %1477, %1427
  %1487 = call float @dx.op.dot2.f32(i32 54, float %1483, float %1485, float %1483, float %1485)  ; Dot2(ax,ay,bx,by)
  %1488 = call float @dx.op.binary.f32(i32 35, float %1487, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %1489 = call float @dx.op.dot2.f32(i32 54, float %1418, float %1419, float %1418, float %1419)  ; Dot2(ax,ay,bx,by)
  %1490 = fmul fast float %1489, %1488
  %1491 = call float @dx.op.unary.f32(i32 25, float %1490)  ; Rsqrt(value)
  %1492 = fmul fast float %1491, %1483
  %1493 = fmul fast float %1491, %1485
  %1494 = fadd fast float %1492, %1428
  %1495 = fadd fast float %1493, %1429
  %1496 = fmul fast float %1483, %1418
  %1497 = fmul fast float %1485, %1419
  %1498 = fmul fast float %1496, %1496
  %1499 = fmul fast float %1497, %1497
  %1500 = fadd fast float %1498, %1499
  %1501 = call float @dx.op.unary.f32(i32 24, float %1500)  ; Sqrt(value)
  %1502 = fdiv fast float 1.000000e+00, %1501
  %1503 = fmul fast float %1501, 3.906250e-03
  %1504 = fmul fast float %200, 0x3F70624DE0000000
  %1505 = fadd fast float %1504, 0x3F70624DE0000000
  %1506 = icmp sgt i32 %1353, -1
  br i1 %1506, label %1507, label %1572

; <label>:1507                                    ; preds = %1357
  br label %1508

; <label>:1508                                    ; preds = %1568, %1507
  %1509 = phi float [ %1543, %1568 ], [ %57, %1507 ]
  %1510 = phi float [ %1530, %1568 ], [ %57, %1507 ]
  %1511 = phi float [ %1510, %1568 ], [ %57, %1507 ]
  %1512 = phi i32 [ %1569, %1568 ], [ 0, %1507 ]
  %1513 = sitofp i32 %1512 to float
  %1514 = fadd fast float %214, 5.000000e-01
  %1515 = call float @dx.op.unary.f32(i32 22, float %1514)  ; Frc(value)
  %1516 = fadd fast float %1513, %1515
  %1517 = sitofp i32 %1353 to float
  %1518 = fdiv fast float %1516, %1517
  %1519 = fmul fast float %1518, %1518
  %1520 = fsub fast float %1519, %1518
  %1521 = fmul fast float %1520, %1351
  %1522 = fadd fast float %1521, %1518
  %1523 = call float @dx.op.binary.f32(i32 36, float %1522, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %1524 = fmul fast float %1523, %1483
  %1525 = fmul fast float %1523, %1485
  %1526 = fmul fast float %1523, %1486
  %1527 = fadd fast float %1524, %1494
  %1528 = fadd fast float %1525, %1495
  %1529 = fadd fast float %1526, %1427
  %1530 = fdiv fast float 1.000000e+00, %1529
  %1531 = icmp ne i32 %1368, 0
  %1532 = fmul fast float %1503, %1523
  %1533 = call float @dx.op.binary.f32(i32 36, float %1532, float %1369)  ; FMin(a,b)
  %1534 = select i1 %1531, float %1533, float 0.000000e+00
  %1535 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %1527, float %1528, float undef, float undef, i32 0, i32 0, i32 undef, float %1534)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1536 = extractvalue %dx.types.ResRet.f32 %1535, 0
  %1537 = fcmp fast ogt float %1536, -1.000000e+00
  %1538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1539 = extractvalue %dx.types.CBufRet.f32 %1538, 1
  %1540 = select i1 %1537, float %1539, float 1.000000e+00
  %1541 = fadd fast float %1536, 1.000000e+00
  %1542 = fmul fast float %1540, %1541
  %1543 = call float @dx.op.unary.f32(i32 6, float %1542)  ; FAbs(value)
  %1544 = fmul fast float %1543, %1505
  %1545 = fsub fast float %1530, %1543
  %1546 = fsub fast float %1545, %1544
  %1547 = fcmp fast ogt float %1546, 0.000000e+00
  %1548 = fcmp fast ogt float %1339, 0.000000e+00
  br i1 %1548, label %1549, label %1552, !dx.controlflow.hints !45

; <label>:1549                                    ; preds = %1508
  %1550 = fsub fast float %1530, %1511
  %1551 = call float @dx.op.binary.f32(i32 35, float %1550, float %1339)  ; FMax(a,b)
  br label %1552

; <label>:1552                                    ; preds = %1549, %1508
  %1553 = phi float [ %1551, %1549 ], [ %1352, %1508 ]
  %1554 = fcmp fast olt float %1546, %1553
  %1555 = fcmp uge float %1536, -1.000000e+00
  %1556 = or i1 %50, %1555
  %1557 = call float @dx.op.unary.f32(i32 7, float %1527)  ; Saturate(value)
  %1558 = call float @dx.op.unary.f32(i32 7, float %1528)  ; Saturate(value)
  %1559 = fcmp fast oeq float %1527, %1557
  %1560 = fcmp fast oeq float %1528, %1558
  %1561 = and i1 %1559, %1560
  %1562 = and i1 %1556, %1561
  %1563 = and i1 %1547, %1554
  %1564 = and i1 %1563, %1562
  %1565 = fcmp fast ogt float %1523, %1502
  %1566 = and i1 %1565, %1564
  %1567 = zext i1 %1566 to i32
  br i1 %1566, label %1571, label %1568, !dx.controlflow.hints !46

; <label>:1568                                    ; preds = %1552
  %1569 = add nuw nsw i32 %1512, 1
  %1570 = icmp slt i32 %1512, %1353
  br i1 %1570, label %1508, label %1571

; <label>:1571                                    ; preds = %1568, %1552
  br label %1572

; <label>:1572                                    ; preds = %1571, %1357
  %1573 = phi i32 [ 0, %1357 ], [ %1567, %1571 ]
  %1574 = phi float [ %57, %1357 ], [ %1543, %1571 ]
  %1575 = phi float [ %57, %1357 ], [ %1509, %1571 ]
  %1576 = phi float [ %57, %1357 ], [ %1530, %1571 ]
  %1577 = phi float [ %57, %1357 ], [ %1510, %1571 ]
  %1578 = fsub fast float %1577, %1575
  %1579 = fsub fast float %1576, %1574
  %1580 = fsub fast float %1578, %1579
  %1581 = fcmp fast une float %1580, 0.000000e+00
  %1582 = fmul fast float %1578, %1576
  %1583 = fmul fast float %1577, %1579
  %1584 = fsub fast float %1582, %1583
  %1585 = fdiv fast float 1.000000e+00, %1580
  %1586 = fmul fast float %1584, %1585
  %1587 = select i1 %1581, float %1586, float %1576
  %1588 = fdiv fast float 1.000000e+00, %1587
  %1589 = fsub fast float %1588, %1427
  %1590 = fdiv fast float %1589, %1486
  %1591 = call float @dx.op.unary.f32(i32 7, float %1590)  ; Saturate(value)
  %1592 = fmul fast float %1591, %1483
  %1593 = fmul fast float %1591, %1485
  %1594 = fadd fast float %1592, %1494
  %1595 = fadd fast float %1593, %1495
  %1596 = fadd fast float %1594, -5.000000e-01
  %1597 = fadd fast float %1595, -5.000000e-01
  %1598 = call float @dx.op.unary.f32(i32 6, float %1596)  ; FAbs(value)
  %1599 = call float @dx.op.unary.f32(i32 6, float %1597)  ; FAbs(value)
  %1600 = fadd fast float %1598, -5.000000e-01
  %1601 = fadd fast float %1599, -5.000000e-01
  %1602 = call float @dx.op.binary.f32(i32 35, float %1600, float %1601)  ; FMax(a,b)
  %1603 = fcmp fast olt float %1602, 0.000000e+00
  %1604 = icmp ne i32 %1573, 0
  %1605 = and i1 %1604, %1603
  %1606 = select i1 %1605, float 0.000000e+00, float 1.000000e+00
  br label %1607

; <label>:1607                                    ; preds = %1572, %1350
  %1608 = phi float [ %1606, %1572 ], [ 1.000000e+00, %1350 ]
  %1609 = fmul fast float %1608, %1322
  %1610 = fmul fast float %1608, %1322
  %1611 = fmul fast float %1608, %1322
  br label %1612

; <label>:1612                                    ; preds = %1607, %1321
  %1613 = phi float [ %1609, %1607 ], [ %1322, %1321 ]
  %1614 = phi float [ %1610, %1607 ], [ %1322, %1321 ]
  %1615 = phi float [ %1611, %1607 ], [ %1322, %1321 ]
  %1616 = call float @dx.op.binary.f32(i32 36, float %1614, float %1615)  ; FMin(a,b)
  %1617 = call float @dx.op.binary.f32(i32 36, float %1613, float %1616)  ; FMin(a,b)
  %1618 = fcmp fast ogt float %1617, 0x3F10000000000000
  %1619 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %1618)  ; WaveAnyTrue(cond)
  %1620 = select i1 %1619, i32 %280, i32 0
  %1621 = or i32 %275, %1620
  %1622 = lshr i32 %219, 5
  %1623 = lshr i32 %220, 5
  %1624 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1622, i32 %1623, i32 %278, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1625 = extractvalue %dx.types.ResRet.i32 %1624, 0
  %1626 = lshr i32 %1625, 23
  %1627 = and i32 %1626, 255
  %1628 = and i32 %219, 31
  %1629 = and i32 %220, 31
  %1630 = lshr i32 %1625, 1
  %1631 = and i32 %1630, 16352
  %1632 = lshr i32 %1625, 10
  %1633 = and i32 %1632, 8160
  %1634 = or i32 %1631, %1628
  %1635 = or i32 %1633, %1629
  %1636 = fmul fast float %1613, 2.550000e+02
  %1637 = fadd fast float %1636, %213
  %1638 = call float @dx.op.unary.f32(i32 27, float %1637)  ; Round_ni(value)
  %1639 = fmul fast float %1638, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1634, i32 %1635, i32 %1627, float %1639, float %1639, float %1639, float %1639, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1640 = icmp eq i32 %276, %280
  br i1 %1640, label %1641, label %274, !llvm.loop !47

; <label>:1641                                    ; preds = %1612
  br label %1642

; <label>:1642                                    ; preds = %1641, %246
  %1643 = phi i32 [ 0, %246 ], [ %1621, %1641 ]
  %1644 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1645 = extractvalue %dx.types.CBufRet.i32 %1644, 0
  %1646 = call i32 @dx.op.tertiary.i32(i32 49, i32 %225, i32 %1645, i32 %247)  ; UMad(a,b,c)
  %1647 = shl i32 %1646, 2
  %1648 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1647, i32 undef, i32 undef, i32 %1643)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1649 = add i32 %247, 1
  %1650 = icmp ugt i32 %1649, %243
  br i1 %1650, label %1651, label %246

; <label>:1651                                    ; preds = %1642
  br label %1652

; <label>:1652                                    ; preds = %1651, %218, %0
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
!31 = !{i32 8, i32 8, i32 1}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 1}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.unroll.disable"}

