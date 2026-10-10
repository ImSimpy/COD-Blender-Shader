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
; shader hash: fb7135a8c4891818a6e3570e16dc765a
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

@"\01?gsLightIterator@@3IA" = external addrspace(3) global i32, align 4
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
  %22 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %23 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = extractvalue %dx.types.CBufRet.i32 %23, 0
  %25 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.i32 %25, 1
  %27 = shl i32 %24, 2
  %28 = mul i32 %27, %26
  %29 = add i32 %28, %19
  %30 = shl i32 %29, 2
  %31 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %30, i32 undef)  ; BufferLoad(srv,index,wot)
  %32 = extractvalue %dx.types.ResRet.i32 %31, 0
  %33 = lshr i32 %32, 10
  %34 = and i32 %33, 262128
  %35 = shl i32 %32, 4
  %36 = and i32 %35, 262128
  %37 = lshr i32 %32, 25
  %38 = and i32 %37, 8
  %39 = lshr i32 %32, 26
  %40 = and i32 %39, 8
  %41 = or i32 %38, %20
  %42 = or i32 %41, %34
  %43 = or i32 %40, %21
  %44 = or i32 %43, %36
  %45 = uitofp i32 %42 to float
  %46 = uitofp i32 %44 to float
  %47 = fadd fast float %45, 5.000000e-01
  %48 = fadd fast float %46, 5.000000e-01
  %49 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %42, i32 %44, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %50 = extractvalue %dx.types.ResRet.f32 %49, 0
  %51 = fcmp fast olt float %50, -1.000000e+00
  %52 = fcmp fast ogt float %50, -1.000000e+00
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 1
  %55 = select i1 %52, float %54, float 1.000000e+00
  %56 = fadd fast float %50, 1.000000e+00
  %57 = fmul fast float %55, %56
  %58 = call float @dx.op.unary.f32(i32 6, float %57)  ; FAbs(value)
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 2
  %61 = extractvalue %dx.types.CBufRet.f32 %59, 3
  %62 = fmul fast float %60, 2.000000e+00
  %63 = fmul fast float %62, %47
  %64 = fmul fast float %61, 2.000000e+00
  %65 = fmul fast float %64, %48
  %66 = fsub fast float 1.000000e+00, %63
  %67 = fsub fast float 1.000000e+00, %65
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %70 = extractvalue %dx.types.CBufRet.f32 %68, 1
  %71 = extractvalue %dx.types.CBufRet.f32 %68, 2
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = extractvalue %dx.types.CBufRet.f32 %72, 1
  %75 = extractvalue %dx.types.CBufRet.f32 %72, 2
  %76 = select i1 %51, float %69, float %73
  %77 = select i1 %51, float %70, float %74
  %78 = select i1 %51, float %71, float %75
  %79 = fmul fast float %76, %66
  %80 = fmul fast float %77, %66
  %81 = fmul fast float %78, %66
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %84 = extractvalue %dx.types.CBufRet.f32 %82, 1
  %85 = extractvalue %dx.types.CBufRet.f32 %82, 2
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 0
  %88 = extractvalue %dx.types.CBufRet.f32 %86, 1
  %89 = extractvalue %dx.types.CBufRet.f32 %86, 2
  %90 = select i1 %51, float %83, float %87
  %91 = select i1 %51, float %84, float %88
  %92 = select i1 %51, float %85, float %89
  %93 = fmul fast float %90, %67
  %94 = fmul fast float %91, %67
  %95 = fmul fast float %92, %67
  %96 = fadd fast float %93, %79
  %97 = fadd fast float %94, %80
  %98 = fadd fast float %95, %81
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 1
  %102 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = extractvalue %dx.types.CBufRet.f32 %103, 1
  %106 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %107 = select i1 %51, float %100, float %104
  %108 = select i1 %51, float %101, float %105
  %109 = select i1 %51, float %102, float %106
  %110 = fadd fast float %96, %107
  %111 = fadd fast float %97, %108
  %112 = fadd fast float %98, %109
  %113 = fmul fast float %110, %58
  %114 = fmul fast float %111, %58
  %115 = fmul fast float %112, %58
  %116 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %13, i32 0, i32 %42, i32 %44, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %117 = extractvalue %dx.types.ResRet.i32 %116, 0
  %118 = lshr i32 %117, 8
  %119 = and i32 %117, 255
  %120 = and i32 %118, 255
  %121 = uitofp i32 %119 to float
  %122 = uitofp i32 %120 to float
  %123 = fmul fast float %121, 0x3F80101020000000
  %124 = fmul fast float %122, 0x3F80101020000000
  %125 = fadd fast float %123, -1.000000e+00
  %126 = fadd fast float %124, -1.000000e+00
  %127 = call float @dx.op.unary.f32(i32 6, float %125)  ; FAbs(value)
  %128 = fsub fast float 1.000000e+00, %127
  %129 = call float @dx.op.unary.f32(i32 6, float %126)  ; FAbs(value)
  %130 = fsub fast float %128, %129
  %131 = fsub fast float -0.000000e+00, %130
  %132 = call float @dx.op.binary.f32(i32 35, float %131, float 0.000000e+00)  ; FMax(a,b)
  %133 = fcmp fast ogt float %125, 0.000000e+00
  %134 = fsub fast float -0.000000e+00, %132
  %135 = select i1 %133, float %134, float %132
  %136 = fadd fast float %135, %125
  %137 = fcmp fast ogt float %126, 0.000000e+00
  %138 = select i1 %137, float %134, float %132
  %139 = fadd fast float %138, %126
  %140 = call float @dx.op.dot3.f32(i32 55, float %136, float %139, float %130, float %136, float %139, float %130)  ; Dot3(ax,ay,az,bx,by,bz)
  %141 = call float @dx.op.unary.f32(i32 25, float %140)  ; Rsqrt(value)
  %142 = fmul fast float %136, %141
  %143 = fmul fast float %139, %141
  %144 = fmul fast float %141, %130
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %147 = fmul fast float %146, 0x3FE3C6EF40000000
  %148 = frem fast float %47, 2.560000e+02
  %149 = frem fast float %48, 2.560000e+02
  %150 = fptoui float %148 to i32
  %151 = fptoui float %149 to i32
  %152 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %150, i32 %151, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %153 = extractvalue %dx.types.ResRet.f32 %152, 0
  %154 = fadd fast float %153, %147
  %155 = call float @dx.op.unary.f32(i32 22, float %154)  ; Frc(value)
  %156 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.i32 %156, 0
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %1188, label %159, !dx.controlflow.hints !32

; <label>:159                                     ; preds = %0
  %160 = fptoui float %47 to i32
  %161 = fptoui float %48 to i32
  %162 = lshr i32 %160, 4
  %163 = lshr i32 %161, 4
  %164 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.i32 %164, 0
  %166 = call i32 @dx.op.tertiary.i32(i32 49, i32 %163, i32 %165, i32 %162)  ; UMad(a,b,c)
  %167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.i32 %167, 0
  %169 = add nsw i32 %168, -1
  %170 = call i32 @dx.op.binary.i32(i32 37, i32 %169, i32 0)  ; IMax(a,b)
  %171 = call float @dx.op.binary.f32(i32 35, float %58, float 0.000000e+00)  ; FMax(a,b)
  %172 = fptoui float %171 to i32
  %173 = lshr i32 %172, 5
  %174 = call i32 @dx.op.binary.i32(i32 40, i32 %173, i32 8191)  ; UMin(a,b)
  %175 = shl i32 %174, 2
  %176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %175, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.i32 %176, 0
  %178 = lshr i32 %177, 16
  %179 = and i32 %177, 65535
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 -1, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %180 = atomicrmw umin i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %178 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %181 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %182 = atomicrmw umax i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %179 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %183 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  %184 = lshr i32 %181, 5
  %185 = lshr i32 %183, 5
  %186 = call i32 @dx.op.binary.i32(i32 40, i32 %185, i32 %170)  ; UMin(a,b)
  %187 = icmp ugt i32 %184, %186
  br i1 %187, label %1188, label %188

; <label>:188                                     ; preds = %159
  br label %189

; <label>:189                                     ; preds = %1178, %188
  %190 = phi i32 [ %1185, %1178 ], [ %184, %188 ]
  %191 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.i32 %191, 0
  %193 = call i32 @dx.op.tertiary.i32(i32 49, i32 %166, i32 %192, i32 %190)  ; UMad(a,b,c)
  %194 = shl i32 %193, 2
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %194, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = shl i32 %190, 5
  %198 = sub nsw i32 %178, %197
  %199 = call i32 @dx.op.binary.i32(i32 37, i32 %198, i32 0)  ; IMax(a,b)
  %200 = call i32 @dx.op.binary.i32(i32 38, i32 %199, i32 31)  ; IMin(a,b)
  %201 = sub nsw i32 1, %178
  %202 = add nsw i32 %201, %179
  %203 = call i32 @dx.op.binary.i32(i32 37, i32 %202, i32 0)  ; IMax(a,b)
  %204 = call i32 @dx.op.binary.i32(i32 38, i32 %203, i32 32)  ; IMin(a,b)
  %205 = and i32 %204, 31
  %206 = shl i32 -1, %205
  %207 = xor i32 %206, -1
  %208 = and i32 %200, 31
  %209 = shl i32 %207, %208
  %210 = icmp eq i32 %204, 32
  %211 = select i1 %210, i32 -1, i32 %209
  %212 = and i32 %211, %196
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %213 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %212 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %214 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %215 = icmp eq i32 %22, 0
  br i1 %215, label %216, label %217, !dx.controlflow.hints !37

; <label>:216                                     ; preds = %189
  store i32 %214, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  br label %217

; <label>:217                                     ; preds = %216, %189
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %218 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %1178, label %220

; <label>:220                                     ; preds = %217
  br label %221

; <label>:221                                     ; preds = %1147, %220
  %222 = phi i32 [ %1157, %1147 ], [ 0, %220 ]
  %223 = phi i32 [ %228, %1147 ], [ %218, %220 ]
  %224 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %223)  ; FirstbitLo(value)
  %225 = add i32 %224, %197
  %226 = and i32 %224, 31
  %227 = shl i32 1, %226
  %228 = xor i32 %227, %223
  %229 = mul i32 %225, 112
  %230 = add i32 %229, 16
  %231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.f32 %231, 0
  %233 = extractvalue %dx.types.ResRet.f32 %231, 1
  %234 = extractvalue %dx.types.ResRet.f32 %231, 2
  %235 = add i32 %229, 28
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = add i32 %229, 32
  %239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.f32 %239, 0
  %241 = extractvalue %dx.types.ResRet.f32 %239, 1
  %242 = extractvalue %dx.types.ResRet.f32 %239, 2
  %243 = add i32 %229, 44
  %244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.f32 %244, 0
  %246 = add i32 %229, 48
  %247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %246, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.f32 %247, 0
  %249 = extractvalue %dx.types.ResRet.f32 %247, 1
  %250 = extractvalue %dx.types.ResRet.f32 %247, 2
  %251 = extractvalue %dx.types.ResRet.f32 %247, 3
  %252 = add i32 %229, 64
  %253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = extractvalue %dx.types.ResRet.f32 %253, 1
  %256 = extractvalue %dx.types.ResRet.f32 %253, 2
  %257 = extractvalue %dx.types.ResRet.f32 %253, 3
  %258 = add i32 %229, 92
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = and i32 %260, 65535
  %262 = uitofp i32 %261 to float
  %263 = lshr i32 %260, 16
  %264 = uitofp i32 %263 to float
  %265 = and i32 %237, 65535
  %266 = and i32 %237, 50331648
  %267 = icmp eq i32 %266, 33554432
  %268 = call float @dx.op.dot3.f32(i32 55, float %240, float %241, float %242, float %240, float %241, float %242)  ; Dot3(ax,ay,az,bx,by,bz)
  %269 = fsub fast float %113, %248
  %270 = fsub fast float %114, %249
  %271 = fsub fast float %115, %250
  %272 = call float @dx.op.dot3.f32(i32 55, float %269, float %270, float %271, float %240, float %241, float %242)  ; Dot3(ax,ay,az,bx,by,bz)
  %273 = fdiv fast float %272, %268
  %274 = call float @dx.op.binary.f32(i32 35, float %273, float -1.000000e+00)  ; FMax(a,b)
  %275 = call float @dx.op.binary.f32(i32 36, float %274, float 1.000000e+00)  ; FMin(a,b)
  %276 = fmul fast float %275, %240
  %277 = fmul fast float %275, %241
  %278 = fmul fast float %275, %242
  %279 = fadd fast float %276, %248
  %280 = fadd fast float %277, %249
  %281 = fadd fast float %278, %250
  %282 = fsub fast float %279, %113
  %283 = fsub fast float %280, %114
  %284 = fsub fast float %281, %115
  %285 = call float @dx.op.dot3.f32(i32 55, float %282, float %283, float %284, float %282, float %283, float %284)  ; Dot3(ax,ay,az,bx,by,bz)
  %286 = call float @dx.op.unary.f32(i32 24, float %285)  ; Sqrt(value)
  %287 = fdiv fast float 1.000000e+00, %286
  %288 = fmul fast float %282, %287
  %289 = fmul fast float %283, %287
  %290 = fmul fast float %284, %287
  br i1 %267, label %291, label %315, !dx.controlflow.hints !38

; <label>:291                                     ; preds = %221
  %292 = fmul fast float %256, %232
  %293 = fmul fast float %256, %233
  %294 = fmul fast float %256, %234
  %295 = fsub fast float %292, %113
  %296 = fadd fast float %295, %279
  %297 = fsub fast float %293, %114
  %298 = fadd fast float %297, %280
  %299 = fsub fast float %294, %115
  %300 = fadd fast float %299, %281
  %301 = call float @dx.op.dot3.f32(i32 55, float %296, float %298, float %300, float %296, float %298, float %300)  ; Dot3(ax,ay,az,bx,by,bz)
  %302 = call float @dx.op.unary.f32(i32 25, float %301)  ; Rsqrt(value)
  %303 = fmul fast float %302, %296
  %304 = fmul fast float %302, %298
  %305 = fmul fast float %302, %300
  %306 = fsub fast float %113, %279
  %307 = fsub fast float %114, %280
  %308 = fsub fast float %115, %281
  %309 = fsub fast float -0.000000e+00, %306
  %310 = fsub fast float -0.000000e+00, %307
  %311 = fsub fast float -0.000000e+00, %308
  %312 = call float @dx.op.dot3.f32(i32 55, float %309, float %310, float %311, float %232, float %233, float %234)  ; Dot3(ax,ay,az,bx,by,bz)
  %313 = fcmp fast ogt float %312, 0.000000e+00
  %314 = uitofp i1 %313 to float
  br label %315

; <label>:315                                     ; preds = %291, %221
  %316 = phi float [ %314, %291 ], [ 1.000000e+00, %221 ]
  %317 = phi float [ %303, %291 ], [ %288, %221 ]
  %318 = phi float [ %304, %291 ], [ %289, %221 ]
  %319 = phi float [ %305, %291 ], [ %290, %221 ]
  %320 = call float @dx.op.dot3.f32(i32 55, float %232, float %233, float %234, float %317, float %318, float %319)  ; Dot3(ax,ay,az,bx,by,bz)
  %321 = fmul fast float %320, %320
  %322 = call float @dx.op.unary.f32(i32 7, float %321)  ; Saturate(value)
  %323 = fsub fast float 1.000000e+00, %322
  %324 = fmul fast float %323, 5.000000e-01
  %325 = fcmp fast ogt float %320, 0.000000e+00
  %326 = fsub fast float 1.000000e+00, %324
  %327 = select i1 %325, float %324, float %326
  %328 = fmul fast float %327, %264
  %329 = fadd fast float %328, %262
  %330 = fmul fast float %329, 0x3EF0001000000000
  %331 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %14, float %330, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %332 = extractvalue %dx.types.ResRet.f32 %331, 0
  %333 = fmul fast float %320, %254
  %334 = fadd fast float %333, %255
  %335 = call float @dx.op.unary.f32(i32 7, float %334)  ; Saturate(value)
  %336 = select i1 %267, float 1.000000e+00, float %335
  %337 = select i1 %267, float %335, float 1.000000e+00
  %338 = fmul fast float %286, %251
  %339 = fsub fast float 1.000000e+00, %338
  %340 = fmul fast float %339, %257
  %341 = call float @dx.op.unary.f32(i32 7, float %340)  ; Saturate(value)
  %342 = fmul fast float %341, %337
  %343 = fmul fast float %342, 2.000000e+00
  %344 = fsub fast float 3.000000e+00, %343
  %345 = fmul fast float %332, %316
  %346 = fmul fast float %342, %342
  %347 = fmul fast float %346, %345
  %348 = fmul fast float %347, %344
  %349 = icmp ne i32 %265, 255
  %350 = call float @dx.op.binary.f32(i32 36, float %348, float %348)  ; FMin(a,b)
  %351 = call float @dx.op.binary.f32(i32 36, float %348, float %350)  ; FMin(a,b)
  %352 = fcmp fast ogt float %351, 0.000000e+00
  %353 = and i1 %349, %352
  br i1 %353, label %354, label %1147, !dx.controlflow.hints !39

; <label>:354                                     ; preds = %315
  %355 = mul nuw nsw i32 %265, 176
  %356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.f32 %356, 0
  %358 = extractvalue %dx.types.ResRet.f32 %356, 1
  %359 = extractvalue %dx.types.ResRet.f32 %356, 2
  %360 = extractvalue %dx.types.ResRet.f32 %356, 3
  %361 = add nuw nsw i32 %355, 16
  %362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.f32 %362, 0
  %364 = extractvalue %dx.types.ResRet.f32 %362, 1
  %365 = add nuw nsw i32 %355, 32
  %366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.f32 %366, 0
  %368 = extractvalue %dx.types.ResRet.f32 %366, 1
  %369 = extractvalue %dx.types.ResRet.f32 %366, 2
  %370 = extractvalue %dx.types.ResRet.f32 %366, 3
  %371 = add nuw nsw i32 %355, 48
  %372 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.f32 %372, 0
  %374 = extractvalue %dx.types.ResRet.f32 %372, 1
  %375 = extractvalue %dx.types.ResRet.f32 %372, 2
  %376 = extractvalue %dx.types.ResRet.f32 %372, 3
  %377 = add nuw nsw i32 %355, 64
  %378 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.f32 %378, 0
  %380 = extractvalue %dx.types.ResRet.f32 %378, 1
  %381 = extractvalue %dx.types.ResRet.f32 %378, 2
  %382 = extractvalue %dx.types.ResRet.f32 %378, 3
  %383 = add nuw nsw i32 %355, 80
  %384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.f32 %384, 0
  %386 = extractvalue %dx.types.ResRet.f32 %384, 1
  %387 = extractvalue %dx.types.ResRet.f32 %384, 2
  %388 = extractvalue %dx.types.ResRet.f32 %384, 3
  %389 = add nuw nsw i32 %355, 96
  %390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.f32 %390, 0
  %392 = extractvalue %dx.types.ResRet.f32 %390, 1
  %393 = extractvalue %dx.types.ResRet.f32 %390, 2
  %394 = extractvalue %dx.types.ResRet.f32 %390, 3
  %395 = add nuw nsw i32 %355, 112
  %396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.f32 %396, 0
  %398 = extractvalue %dx.types.ResRet.f32 %396, 1
  %399 = extractvalue %dx.types.ResRet.f32 %396, 2
  %400 = extractvalue %dx.types.ResRet.f32 %396, 3
  %401 = add nuw nsw i32 %355, 128
  %402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.f32 %402, 0
  %404 = extractvalue %dx.types.ResRet.f32 %402, 1
  %405 = extractvalue %dx.types.ResRet.f32 %402, 2
  %406 = extractvalue %dx.types.ResRet.f32 %402, 3
  %407 = add nuw nsw i32 %355, 144
  %408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.f32 %408, 0
  %410 = extractvalue %dx.types.ResRet.f32 %408, 1
  %411 = extractvalue %dx.types.ResRet.f32 %408, 2
  %412 = extractvalue %dx.types.ResRet.f32 %408, 3
  %413 = add nuw nsw i32 %355, 160
  %414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.f32 %414, 0
  %416 = extractvalue %dx.types.ResRet.f32 %414, 1
  %417 = extractvalue %dx.types.ResRet.f32 %414, 2
  %418 = extractvalue %dx.types.ResRet.f32 %414, 3
  %419 = bitcast float %364 to i32
  %420 = bitcast float %370 to i32
  %421 = and i32 %420, 1
  %422 = icmp ne i32 %421, 0
  %423 = and i32 %420, 2
  %424 = fmul fast float %142, %369
  %425 = fmul fast float %143, %369
  %426 = fmul fast float %144, %369
  %427 = fadd fast float %424, %113
  %428 = fadd fast float %425, %114
  %429 = fadd fast float %426, %115
  %430 = fmul fast float %427, %373
  %431 = call float @dx.op.tertiary.f32(i32 46, float %428, float %379, float %430)  ; FMad(a,b,c)
  %432 = call float @dx.op.tertiary.f32(i32 46, float %429, float %385, float %431)  ; FMad(a,b,c)
  %433 = fadd fast float %432, %391
  %434 = fmul fast float %427, %374
  %435 = call float @dx.op.tertiary.f32(i32 46, float %428, float %380, float %434)  ; FMad(a,b,c)
  %436 = call float @dx.op.tertiary.f32(i32 46, float %429, float %386, float %435)  ; FMad(a,b,c)
  %437 = fadd fast float %436, %392
  %438 = fmul fast float %427, %375
  %439 = call float @dx.op.tertiary.f32(i32 46, float %428, float %381, float %438)  ; FMad(a,b,c)
  %440 = call float @dx.op.tertiary.f32(i32 46, float %429, float %387, float %439)  ; FMad(a,b,c)
  %441 = fadd fast float %440, %393
  %442 = fmul fast float %427, %376
  %443 = call float @dx.op.tertiary.f32(i32 46, float %428, float %382, float %442)  ; FMad(a,b,c)
  %444 = call float @dx.op.tertiary.f32(i32 46, float %429, float %388, float %443)  ; FMad(a,b,c)
  %445 = fadd fast float %444, %394
  %446 = fdiv fast float %433, %445
  %447 = fdiv fast float %437, %445
  %448 = fdiv fast float %441, %445
  %449 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %448)  ; FMax(a,b)
  %450 = fmul fast float %155, 0x401921FB60000000
  %451 = call float @dx.op.unary.f32(i32 13, float %450)  ; Sin(value)
  %452 = call float @dx.op.unary.f32(i32 12, float %450)  ; Cos(value)
  %453 = fsub fast float -0.000000e+00, %451
  %454 = icmp eq i32 %423, 0
  br i1 %454, label %455, label %526, !dx.controlflow.hints !40

; <label>:455                                     ; preds = %354
  %456 = fmul fast float %452, %368
  %457 = call float @dx.op.tertiary.f32(i32 46, float %451, float %368, float 0.000000e+00)  ; FMad(a,b,c)
  %458 = fmul fast float %368, %453
  %459 = call float @dx.op.tertiary.f32(i32 46, float %452, float %368, float 0.000000e+00)  ; FMad(a,b,c)
  br label %460

; <label>:460                                     ; preds = %460, %455
  %461 = phi float [ 0.000000e+00, %455 ], [ %493, %460 ]
  %462 = phi float [ 0.000000e+00, %455 ], [ %495, %460 ]
  %463 = phi i32 [ 0, %455 ], [ %496, %460 ]
  %464 = mul i32 %463, 2
  %465 = add i32 0, %464
  %466 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %465
  %467 = load float, float* %466, align 4
  %468 = mul i32 %463, 2
  %469 = add i32 1, %468
  %470 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %469
  %471 = load float, float* %470, align 4
  %472 = fmul fast float %456, %467
  %473 = call float @dx.op.tertiary.f32(i32 46, float %471, float %458, float %472)  ; FMad(a,b,c)
  %474 = fmul fast float %467, %457
  %475 = call float @dx.op.tertiary.f32(i32 46, float %471, float %459, float %474)  ; FMad(a,b,c)
  %476 = fadd fast float %473, %446
  %477 = fadd fast float %475, %447
  %478 = fmul fast float %476, %363
  %479 = fmul fast float %477, %363
  %480 = call float @dx.op.binary.f32(i32 35, float %478, float %359)  ; FMax(a,b)
  %481 = call float @dx.op.binary.f32(i32 35, float %479, float %359)  ; FMax(a,b)
  %482 = call float @dx.op.binary.f32(i32 36, float %480, float %360)  ; FMin(a,b)
  %483 = call float @dx.op.binary.f32(i32 36, float %481, float %360)  ; FMin(a,b)
  %484 = fadd fast float %482, %357
  %485 = fadd fast float %483, %358
  %486 = uitofp i32 %419 to float
  %487 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %15, float %484, float %485, float %486, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %488 = extractvalue %dx.types.ResRet.f32 %487, 0
  %489 = fsub fast float %488, %449
  %490 = fsub fast float %489, %367
  %491 = fcmp fast ogt float %490, 0.000000e+00
  %492 = select i1 %491, float 1.000000e+00, float 0.000000e+00
  %493 = fadd fast float %492, %461
  %494 = select i1 %491, float %490, float 0.000000e+00
  %495 = fadd fast float %494, %462
  %496 = add nuw nsw i32 %463, 1
  %497 = icmp eq i32 %496, 8
  br i1 %497, label %498, label %460

; <label>:498                                     ; preds = %460
  %499 = fdiv fast float 1.000000e+00, %493
  %500 = fmul fast float %499, %495
  %501 = fdiv fast float 1.000000e+00, %449
  %502 = fmul fast float %500, %501
  %503 = call float @dx.op.unary.f32(i32 7, float %502)  ; Saturate(value)
  %504 = call float @dx.op.binary.f32(i32 35, float %503, float 0.000000e+00)  ; FMax(a,b)
  %505 = fmul fast float %493, 1.250000e-01
  %506 = call float @dx.op.unary.f32(i32 7, float %505)  ; Saturate(value)
  %507 = fmul fast float %506, 2.000000e+00
  %508 = fadd fast float %507, -1.000000e+00
  %509 = fcmp fast ogt float %508, 0.000000e+00
  %510 = fcmp fast olt float %508, 0.000000e+00
  %511 = zext i1 %509 to i32
  %512 = zext i1 %510 to i32
  %513 = sub nsw i32 %511, %512
  %514 = sitofp i32 %513 to float
  %515 = fmul fast float %514, %508
  %516 = fsub fast float 1.000000e+00, %515
  %517 = fmul fast float %516, %516
  %518 = fmul fast float %517, %516
  %519 = fsub fast float %516, %518
  %520 = fmul fast float %519, %504
  %521 = fsub fast float 1.000000e+00, %518
  %522 = fsub fast float %521, %520
  %523 = fmul fast float %514, 5.000000e-01
  %524 = fmul fast float %523, %522
  %525 = fsub fast float 5.000000e-01, %524
  br label %1141

; <label>:526                                     ; preds = %354
  %527 = fsub fast float 1.000000e+00, %449
  %528 = fmul fast float %527, 5.000000e-01
  %529 = fadd fast float %528, %449
  %530 = fsub fast float %427, %248
  %531 = fsub fast float %428, %249
  %532 = fsub fast float %429, %250
  %533 = call float @dx.op.dot3.f32(i32 55, float %530, float %531, float %532, float %240, float %241, float %242)  ; Dot3(ax,ay,az,bx,by,bz)
  %534 = fdiv fast float %533, %268
  %535 = call float @dx.op.binary.f32(i32 35, float %534, float -1.000000e+00)  ; FMax(a,b)
  %536 = call float @dx.op.binary.f32(i32 36, float %535, float 1.000000e+00)  ; FMin(a,b)
  %537 = fmul fast float %536, %240
  %538 = fmul fast float %536, %241
  %539 = fmul fast float %536, %242
  %540 = fsub fast float %530, %537
  %541 = fsub fast float %531, %538
  %542 = fsub fast float %532, %539
  %543 = call float @dx.op.dot3.f32(i32 55, float %540, float %541, float %542, float %540, float %541, float %542)  ; Dot3(ax,ay,az,bx,by,bz)
  %544 = call float @dx.op.unary.f32(i32 25, float %543)  ; Rsqrt(value)
  %545 = fmul fast float %540, %544
  %546 = fmul fast float %541, %544
  %547 = fmul fast float %542, %544
  %548 = call float @dx.op.unary.f32(i32 25, float %268)  ; Rsqrt(value)
  %549 = fmul fast float %548, %240
  %550 = fmul fast float %548, %241
  %551 = fmul fast float %548, %242
  br i1 %422, label %552, label %556, !dx.controlflow.hints !41

; <label>:552                                     ; preds = %526
  %553 = fcmp fast olt float %546, 0x3FE6666660000000
  %554 = select i1 %553, float 1.000000e+00, float 0.000000e+00
  %555 = select i1 %553, float 0.000000e+00, float 1.000000e+00
  br label %556

; <label>:556                                     ; preds = %552, %526
  %557 = phi float [ 0.000000e+00, %552 ], [ %549, %526 ]
  %558 = phi float [ %554, %552 ], [ %550, %526 ]
  %559 = phi float [ %555, %552 ], [ %551, %526 ]
  %560 = fmul fast float %558, %547
  %561 = fmul fast float %559, %546
  %562 = fsub fast float %560, %561
  %563 = fmul fast float %559, %545
  %564 = fmul fast float %557, %547
  %565 = fsub fast float %563, %564
  %566 = fmul fast float %557, %546
  %567 = fmul fast float %558, %545
  %568 = fsub fast float %566, %567
  %569 = call float @dx.op.dot3.f32(i32 55, float %562, float %565, float %568, float %562, float %565, float %568)  ; Dot3(ax,ay,az,bx,by,bz)
  %570 = call float @dx.op.unary.f32(i32 25, float %569)  ; Rsqrt(value)
  %571 = fmul fast float %570, %245
  %572 = fmul fast float %571, %562
  %573 = fmul fast float %571, %565
  %574 = fmul fast float %568, %245
  %575 = fmul fast float %574, %570
  %576 = fmul fast float %446, %397
  %577 = call float @dx.op.tertiary.f32(i32 46, float %447, float %403, float %576)  ; FMad(a,b,c)
  %578 = call float @dx.op.tertiary.f32(i32 46, float %529, float %409, float %577)  ; FMad(a,b,c)
  %579 = fadd fast float %578, %415
  %580 = fmul fast float %446, %398
  %581 = call float @dx.op.tertiary.f32(i32 46, float %447, float %404, float %580)  ; FMad(a,b,c)
  %582 = call float @dx.op.tertiary.f32(i32 46, float %529, float %410, float %581)  ; FMad(a,b,c)
  %583 = fadd fast float %582, %416
  %584 = fmul fast float %446, %399
  %585 = call float @dx.op.tertiary.f32(i32 46, float %447, float %405, float %584)  ; FMad(a,b,c)
  %586 = call float @dx.op.tertiary.f32(i32 46, float %529, float %411, float %585)  ; FMad(a,b,c)
  %587 = fadd fast float %586, %417
  %588 = fmul fast float %446, %400
  %589 = call float @dx.op.tertiary.f32(i32 46, float %447, float %406, float %588)  ; FMad(a,b,c)
  %590 = call float @dx.op.tertiary.f32(i32 46, float %529, float %412, float %589)  ; FMad(a,b,c)
  %591 = fadd fast float %590, %418
  %592 = fdiv fast float 1.000000e+00, %591
  %593 = fmul fast float %592, %579
  %594 = fmul fast float %592, %583
  %595 = fmul fast float %592, %587
  %596 = fsub fast float -0.000000e+00, %545
  %597 = fsub fast float -0.000000e+00, %546
  %598 = fsub fast float -0.000000e+00, %547
  %599 = fsub fast float %248, %572
  %600 = fsub fast float %249, %573
  %601 = fsub fast float %250, %575
  %602 = fsub fast float %593, %599
  %603 = fsub fast float %594, %600
  %604 = fsub fast float %595, %601
  %605 = call float @dx.op.dot3.f32(i32 55, float %602, float %603, float %604, float %602, float %603, float %604)  ; Dot3(ax,ay,az,bx,by,bz)
  %606 = call float @dx.op.unary.f32(i32 25, float %605)  ; Rsqrt(value)
  %607 = fmul fast float %602, %606
  %608 = fmul fast float %603, %606
  %609 = fmul fast float %604, %606
  %610 = fsub fast float %427, %599
  %611 = fsub fast float %428, %600
  %612 = fsub fast float %429, %601
  %613 = call float @dx.op.dot3.f32(i32 55, float %596, float %597, float %598, float %610, float %611, float %612)  ; Dot3(ax,ay,az,bx,by,bz)
  %614 = call float @dx.op.dot3.f32(i32 55, float %596, float %597, float %598, float %607, float %608, float %609)  ; Dot3(ax,ay,az,bx,by,bz)
  %615 = fdiv fast float 1.000000e+00, %614
  %616 = fmul fast float %615, %613
  %617 = fmul fast float %616, %607
  %618 = fmul fast float %616, %608
  %619 = fmul fast float %616, %609
  %620 = fadd fast float %617, %599
  %621 = fadd fast float %618, %600
  %622 = fadd fast float %619, %601
  %623 = fadd fast float %572, %248
  %624 = fadd fast float %573, %249
  %625 = fadd fast float %575, %250
  %626 = fsub fast float %593, %623
  %627 = fsub fast float %594, %624
  %628 = fsub fast float %595, %625
  %629 = call float @dx.op.dot3.f32(i32 55, float %626, float %627, float %628, float %626, float %627, float %628)  ; Dot3(ax,ay,az,bx,by,bz)
  %630 = call float @dx.op.unary.f32(i32 25, float %629)  ; Rsqrt(value)
  %631 = fmul fast float %630, %626
  %632 = fmul fast float %630, %627
  %633 = fmul fast float %630, %628
  %634 = fsub fast float %427, %623
  %635 = fsub fast float %428, %624
  %636 = fsub fast float %429, %625
  %637 = call float @dx.op.dot3.f32(i32 55, float %596, float %597, float %598, float %634, float %635, float %636)  ; Dot3(ax,ay,az,bx,by,bz)
  %638 = call float @dx.op.dot3.f32(i32 55, float %596, float %597, float %598, float %631, float %632, float %633)  ; Dot3(ax,ay,az,bx,by,bz)
  %639 = fdiv fast float 1.000000e+00, %638
  %640 = fmul fast float %639, %637
  %641 = fmul fast float %640, %631
  %642 = fmul fast float %640, %632
  %643 = fmul fast float %640, %633
  %644 = fadd fast float %641, %623
  %645 = fadd fast float %642, %624
  %646 = fadd fast float %643, %625
  %647 = fmul fast float %620, %373
  %648 = call float @dx.op.tertiary.f32(i32 46, float %621, float %379, float %647)  ; FMad(a,b,c)
  %649 = call float @dx.op.tertiary.f32(i32 46, float %622, float %385, float %648)  ; FMad(a,b,c)
  %650 = fadd fast float %649, %391
  %651 = fmul fast float %620, %374
  %652 = call float @dx.op.tertiary.f32(i32 46, float %621, float %380, float %651)  ; FMad(a,b,c)
  %653 = call float @dx.op.tertiary.f32(i32 46, float %622, float %386, float %652)  ; FMad(a,b,c)
  %654 = fadd fast float %653, %392
  %655 = fmul fast float %620, %376
  %656 = call float @dx.op.tertiary.f32(i32 46, float %621, float %382, float %655)  ; FMad(a,b,c)
  %657 = call float @dx.op.tertiary.f32(i32 46, float %622, float %388, float %656)  ; FMad(a,b,c)
  %658 = fadd fast float %657, %394
  %659 = fmul fast float %644, %373
  %660 = call float @dx.op.tertiary.f32(i32 46, float %645, float %379, float %659)  ; FMad(a,b,c)
  %661 = call float @dx.op.tertiary.f32(i32 46, float %646, float %385, float %660)  ; FMad(a,b,c)
  %662 = fadd fast float %661, %391
  %663 = fmul fast float %644, %374
  %664 = call float @dx.op.tertiary.f32(i32 46, float %645, float %380, float %663)  ; FMad(a,b,c)
  %665 = call float @dx.op.tertiary.f32(i32 46, float %646, float %386, float %664)  ; FMad(a,b,c)
  %666 = fadd fast float %665, %392
  %667 = fmul fast float %644, %376
  %668 = call float @dx.op.tertiary.f32(i32 46, float %645, float %382, float %667)  ; FMad(a,b,c)
  %669 = call float @dx.op.tertiary.f32(i32 46, float %646, float %388, float %668)  ; FMad(a,b,c)
  %670 = fadd fast float %669, %394
  %671 = fdiv fast float 1.000000e+00, %658
  %672 = fmul fast float %671, %650
  %673 = fmul fast float %671, %654
  %674 = fdiv fast float 1.000000e+00, %670
  %675 = fmul fast float %674, %662
  %676 = fmul fast float %674, %666
  %677 = fsub fast float %675, %672
  %678 = fsub fast float %676, %673
  %679 = call float @dx.op.dot2.f32(i32 54, float %677, float %678, float %677, float %678)  ; Dot2(ax,ay,bx,by)
  %680 = call float @dx.op.unary.f32(i32 25, float %679)  ; Rsqrt(value)
  %681 = fmul fast float %677, %680
  %682 = fmul fast float %678, %680
  %683 = fmul fast float %677, %677
  %684 = fmul fast float %678, %678
  %685 = fadd fast float %683, %684
  %686 = call float @dx.op.unary.f32(i32 24, float %685)  ; Sqrt(value)
  %687 = fmul fast float %686, 5.000000e-01
  br i1 %422, label %780, label %688, !dx.controlflow.hints !42

; <label>:688                                     ; preds = %556
  %689 = fsub fast float %248, %240
  %690 = fsub fast float %249, %241
  %691 = fsub fast float %250, %242
  %692 = fsub fast float %593, %689
  %693 = fsub fast float %594, %690
  %694 = fsub fast float %595, %691
  %695 = call float @dx.op.dot3.f32(i32 55, float %692, float %693, float %694, float %692, float %693, float %694)  ; Dot3(ax,ay,az,bx,by,bz)
  %696 = call float @dx.op.unary.f32(i32 25, float %695)  ; Rsqrt(value)
  %697 = fmul fast float %696, %692
  %698 = fmul fast float %696, %693
  %699 = fmul fast float %696, %694
  %700 = fsub fast float %427, %689
  %701 = fsub fast float %428, %690
  %702 = fsub fast float %429, %691
  %703 = call float @dx.op.dot3.f32(i32 55, float %596, float %597, float %598, float %700, float %701, float %702)  ; Dot3(ax,ay,az,bx,by,bz)
  %704 = call float @dx.op.dot3.f32(i32 55, float %596, float %597, float %598, float %697, float %698, float %699)  ; Dot3(ax,ay,az,bx,by,bz)
  %705 = fdiv fast float 1.000000e+00, %704
  %706 = fmul fast float %705, %703
  %707 = fmul fast float %706, %697
  %708 = fmul fast float %706, %698
  %709 = fmul fast float %706, %699
  %710 = fadd fast float %707, %689
  %711 = fadd fast float %708, %690
  %712 = fadd fast float %709, %691
  %713 = fadd fast float %248, %240
  %714 = fadd fast float %249, %241
  %715 = fadd fast float %250, %242
  %716 = fsub fast float %593, %713
  %717 = fsub fast float %594, %714
  %718 = fsub fast float %595, %715
  %719 = call float @dx.op.dot3.f32(i32 55, float %716, float %717, float %718, float %716, float %717, float %718)  ; Dot3(ax,ay,az,bx,by,bz)
  %720 = call float @dx.op.unary.f32(i32 25, float %719)  ; Rsqrt(value)
  %721 = fmul fast float %720, %716
  %722 = fmul fast float %720, %717
  %723 = fmul fast float %720, %718
  %724 = fsub fast float %427, %713
  %725 = fsub fast float %428, %714
  %726 = fsub fast float %429, %715
  %727 = call float @dx.op.dot3.f32(i32 55, float %596, float %597, float %598, float %724, float %725, float %726)  ; Dot3(ax,ay,az,bx,by,bz)
  %728 = call float @dx.op.dot3.f32(i32 55, float %596, float %597, float %598, float %721, float %722, float %723)  ; Dot3(ax,ay,az,bx,by,bz)
  %729 = fdiv fast float 1.000000e+00, %728
  %730 = fmul fast float %729, %727
  %731 = fmul fast float %730, %721
  %732 = fmul fast float %730, %722
  %733 = fmul fast float %730, %723
  %734 = fadd fast float %731, %713
  %735 = fadd fast float %732, %714
  %736 = fadd fast float %733, %715
  %737 = fmul fast float %710, %373
  %738 = call float @dx.op.tertiary.f32(i32 46, float %711, float %379, float %737)  ; FMad(a,b,c)
  %739 = call float @dx.op.tertiary.f32(i32 46, float %712, float %385, float %738)  ; FMad(a,b,c)
  %740 = fadd fast float %739, %391
  %741 = fmul fast float %710, %374
  %742 = call float @dx.op.tertiary.f32(i32 46, float %711, float %380, float %741)  ; FMad(a,b,c)
  %743 = call float @dx.op.tertiary.f32(i32 46, float %712, float %386, float %742)  ; FMad(a,b,c)
  %744 = fadd fast float %743, %392
  %745 = fmul fast float %710, %376
  %746 = call float @dx.op.tertiary.f32(i32 46, float %711, float %382, float %745)  ; FMad(a,b,c)
  %747 = call float @dx.op.tertiary.f32(i32 46, float %712, float %388, float %746)  ; FMad(a,b,c)
  %748 = fadd fast float %747, %394
  %749 = fmul fast float %734, %373
  %750 = call float @dx.op.tertiary.f32(i32 46, float %735, float %379, float %749)  ; FMad(a,b,c)
  %751 = call float @dx.op.tertiary.f32(i32 46, float %736, float %385, float %750)  ; FMad(a,b,c)
  %752 = fadd fast float %751, %391
  %753 = fmul fast float %734, %374
  %754 = call float @dx.op.tertiary.f32(i32 46, float %735, float %380, float %753)  ; FMad(a,b,c)
  %755 = call float @dx.op.tertiary.f32(i32 46, float %736, float %386, float %754)  ; FMad(a,b,c)
  %756 = fadd fast float %755, %392
  %757 = fmul fast float %734, %376
  %758 = call float @dx.op.tertiary.f32(i32 46, float %735, float %382, float %757)  ; FMad(a,b,c)
  %759 = call float @dx.op.tertiary.f32(i32 46, float %736, float %388, float %758)  ; FMad(a,b,c)
  %760 = fadd fast float %759, %394
  %761 = fdiv fast float 1.000000e+00, %748
  %762 = fmul fast float %761, %740
  %763 = fmul fast float %761, %744
  %764 = fdiv fast float 1.000000e+00, %760
  %765 = fmul fast float %764, %752
  %766 = fmul fast float %764, %756
  %767 = fsub fast float %765, %762
  %768 = fsub fast float %766, %763
  %769 = call float @dx.op.dot2.f32(i32 54, float %767, float %768, float %767, float %768)  ; Dot2(ax,ay,bx,by)
  %770 = call float @dx.op.unary.f32(i32 25, float %769)  ; Rsqrt(value)
  %771 = fmul fast float %767, %770
  %772 = fmul fast float %768, %770
  %773 = fmul fast float %767, %767
  %774 = fmul fast float %768, %768
  %775 = fadd fast float %773, %774
  %776 = call float @dx.op.unary.f32(i32 24, float %775)  ; Sqrt(value)
  %777 = fmul fast float %776, 5.000000e-01
  %778 = fcmp fast olt float %777, %687
  br i1 %778, label %779, label %780, !dx.controlflow.hints !43

; <label>:779                                     ; preds = %688
  br label %780

; <label>:780                                     ; preds = %779, %688, %556
  %781 = phi float [ %687, %556 ], [ %777, %779 ], [ %687, %688 ]
  %782 = phi float [ %687, %556 ], [ %687, %779 ], [ %777, %688 ]
  %783 = phi float [ %681, %556 ], [ %681, %779 ], [ %771, %688 ]
  %784 = phi float [ %682, %556 ], [ %682, %779 ], [ %772, %688 ]
  %785 = fmul fast float %781, %368
  %786 = fdiv fast float %785, %782
  %787 = fsub fast float %368, %786
  %788 = fmul fast float %783, %783
  %789 = fmul fast float %788, %787
  %790 = fadd fast float %789, %786
  %791 = fmul fast float %784, %783
  %792 = fmul fast float %791, %787
  %793 = fmul fast float %784, %784
  %794 = fmul fast float %793, %787
  %795 = fadd fast float %794, %786
  %796 = fmul fast float %790, %452
  %797 = call float @dx.op.tertiary.f32(i32 46, float %451, float %792, float %796)  ; FMad(a,b,c)
  %798 = fmul fast float %792, %452
  %799 = call float @dx.op.tertiary.f32(i32 46, float %451, float %795, float %798)  ; FMad(a,b,c)
  %800 = fmul fast float %790, %453
  %801 = call float @dx.op.tertiary.f32(i32 46, float %452, float %792, float %800)  ; FMad(a,b,c)
  %802 = fmul fast float %792, %453
  %803 = call float @dx.op.tertiary.f32(i32 46, float %452, float %795, float %802)  ; FMad(a,b,c)
  br label %804

; <label>:804                                     ; preds = %842, %780
  %805 = phi float [ 0.000000e+00, %780 ], [ %843, %842 ]
  %806 = phi float [ 0.000000e+00, %780 ], [ %844, %842 ]
  %807 = phi float [ 0.000000e+00, %780 ], [ %845, %842 ]
  %808 = phi float [ 0.000000e+00, %780 ], [ %846, %842 ]
  %809 = phi i32 [ 0, %780 ], [ %847, %842 ]
  %810 = mul i32 %809, 2
  %811 = add i32 0, %810
  %812 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %811
  %813 = load float, float* %812, align 4
  %814 = mul i32 %809, 2
  %815 = add i32 1, %814
  %816 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %815
  %817 = load float, float* %816, align 4
  %818 = fmul fast float %813, %797
  %819 = call float @dx.op.tertiary.f32(i32 46, float %817, float %801, float %818)  ; FMad(a,b,c)
  %820 = fmul fast float %813, %799
  %821 = call float @dx.op.tertiary.f32(i32 46, float %817, float %803, float %820)  ; FMad(a,b,c)
  %822 = fadd fast float %819, %446
  %823 = fadd fast float %821, %447
  %824 = fmul fast float %822, %363
  %825 = fmul fast float %823, %363
  %826 = call float @dx.op.binary.f32(i32 35, float %824, float %359)  ; FMax(a,b)
  %827 = call float @dx.op.binary.f32(i32 35, float %825, float %359)  ; FMax(a,b)
  %828 = call float @dx.op.binary.f32(i32 36, float %826, float %360)  ; FMin(a,b)
  %829 = call float @dx.op.binary.f32(i32 36, float %827, float %360)  ; FMin(a,b)
  %830 = fadd fast float %828, %357
  %831 = fadd fast float %829, %358
  %832 = uitofp i32 %419 to float
  %833 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %15, float %830, float %831, float %832, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %834 = extractvalue %dx.types.ResRet.f32 %833, 0
  %835 = fadd fast float %449, %367
  %836 = fcmp fast olt float %835, %834
  br i1 %836, label %837, label %842, !dx.controlflow.hints !44

; <label>:837                                     ; preds = %804
  %838 = fadd fast float %834, %807
  %839 = fadd fast float %819, %805
  %840 = fadd fast float %821, %806
  %841 = fadd fast float %808, 1.000000e+00
  br label %842

; <label>:842                                     ; preds = %837, %804
  %843 = phi float [ %839, %837 ], [ %805, %804 ]
  %844 = phi float [ %840, %837 ], [ %806, %804 ]
  %845 = phi float [ %838, %837 ], [ %807, %804 ]
  %846 = phi float [ %841, %837 ], [ %808, %804 ]
  %847 = add nuw nsw i32 %809, 1
  %848 = icmp eq i32 %847, 8
  br i1 %848, label %849, label %804

; <label>:849                                     ; preds = %842
  %850 = fdiv fast float 1.000000e+00, %846
  %851 = fcmp fast oeq float %846, 0.000000e+00
  %852 = fmul fast float %850, %845
  %853 = select i1 %851, float -1.000000e+00, float %852
  %854 = fcmp fast olt float %853, 0.000000e+00
  br i1 %854, label %1141, label %855, !dx.controlflow.hints !45

; <label>:855                                     ; preds = %849
  %856 = fmul fast float %850, %844
  %857 = select i1 %851, float 0.000000e+00, float %856
  %858 = fmul fast float %850, %843
  %859 = select i1 %851, float 0.000000e+00, float %858
  %860 = fadd fast float %859, %446
  %861 = fadd fast float %857, %447
  br i1 %422, label %862, label %866, !dx.controlflow.hints !41

; <label>:862                                     ; preds = %855
  %863 = fcmp fast olt float %546, 0x3FE6666660000000
  %864 = select i1 %863, float 1.000000e+00, float 0.000000e+00
  %865 = select i1 %863, float 0.000000e+00, float 1.000000e+00
  br label %866

; <label>:866                                     ; preds = %862, %855
  %867 = phi float [ 0.000000e+00, %862 ], [ %549, %855 ]
  %868 = phi float [ %864, %862 ], [ %550, %855 ]
  %869 = phi float [ %865, %862 ], [ %551, %855 ]
  %870 = fmul fast float %868, %547
  %871 = fmul fast float %869, %546
  %872 = fsub fast float %870, %871
  %873 = fmul fast float %869, %545
  %874 = fmul fast float %867, %547
  %875 = fsub fast float %873, %874
  %876 = fmul fast float %867, %546
  %877 = fmul fast float %868, %545
  %878 = fsub fast float %876, %877
  %879 = call float @dx.op.dot3.f32(i32 55, float %872, float %875, float %878, float %872, float %875, float %878)  ; Dot3(ax,ay,az,bx,by,bz)
  %880 = call float @dx.op.unary.f32(i32 25, float %879)  ; Rsqrt(value)
  %881 = fmul fast float %880, %245
  %882 = fmul fast float %881, %872
  %883 = fmul fast float %881, %875
  %884 = fmul fast float %878, %245
  %885 = fmul fast float %884, %880
  %886 = fmul fast float %860, %397
  %887 = call float @dx.op.tertiary.f32(i32 46, float %861, float %403, float %886)  ; FMad(a,b,c)
  %888 = call float @dx.op.tertiary.f32(i32 46, float %853, float %409, float %887)  ; FMad(a,b,c)
  %889 = fadd fast float %888, %415
  %890 = fmul fast float %860, %398
  %891 = call float @dx.op.tertiary.f32(i32 46, float %861, float %404, float %890)  ; FMad(a,b,c)
  %892 = call float @dx.op.tertiary.f32(i32 46, float %853, float %410, float %891)  ; FMad(a,b,c)
  %893 = fadd fast float %892, %416
  %894 = fmul fast float %860, %399
  %895 = call float @dx.op.tertiary.f32(i32 46, float %861, float %405, float %894)  ; FMad(a,b,c)
  %896 = call float @dx.op.tertiary.f32(i32 46, float %853, float %411, float %895)  ; FMad(a,b,c)
  %897 = fadd fast float %896, %417
  %898 = fmul fast float %860, %400
  %899 = call float @dx.op.tertiary.f32(i32 46, float %861, float %406, float %898)  ; FMad(a,b,c)
  %900 = call float @dx.op.tertiary.f32(i32 46, float %853, float %412, float %899)  ; FMad(a,b,c)
  %901 = fadd fast float %900, %418
  %902 = fdiv fast float 1.000000e+00, %901
  %903 = fmul fast float %902, %889
  %904 = fmul fast float %902, %893
  %905 = fmul fast float %902, %897
  %906 = fsub fast float %248, %882
  %907 = fsub fast float %249, %883
  %908 = fsub fast float %250, %885
  %909 = fsub fast float %903, %906
  %910 = fsub fast float %904, %907
  %911 = fsub fast float %905, %908
  %912 = call float @dx.op.dot3.f32(i32 55, float %909, float %910, float %911, float %909, float %910, float %911)  ; Dot3(ax,ay,az,bx,by,bz)
  %913 = call float @dx.op.unary.f32(i32 25, float %912)  ; Rsqrt(value)
  %914 = fmul fast float %909, %913
  %915 = fmul fast float %910, %913
  %916 = fmul fast float %911, %913
  %917 = fsub fast float %427, %906
  %918 = fsub fast float %428, %907
  %919 = fsub fast float %429, %908
  %920 = call float @dx.op.dot3.f32(i32 55, float %596, float %597, float %598, float %917, float %918, float %919)  ; Dot3(ax,ay,az,bx,by,bz)
  %921 = call float @dx.op.dot3.f32(i32 55, float %596, float %597, float %598, float %914, float %915, float %916)  ; Dot3(ax,ay,az,bx,by,bz)
  %922 = fdiv fast float 1.000000e+00, %921
  %923 = fmul fast float %922, %920
  %924 = fmul fast float %923, %914
  %925 = fmul fast float %923, %915
  %926 = fmul fast float %923, %916
  %927 = fadd fast float %924, %906
  %928 = fadd fast float %925, %907
  %929 = fadd fast float %926, %908
  %930 = fadd fast float %882, %248
  %931 = fadd fast float %883, %249
  %932 = fadd fast float %885, %250
  %933 = fsub fast float %903, %930
  %934 = fsub fast float %904, %931
  %935 = fsub fast float %905, %932
  %936 = call float @dx.op.dot3.f32(i32 55, float %933, float %934, float %935, float %933, float %934, float %935)  ; Dot3(ax,ay,az,bx,by,bz)
  %937 = call float @dx.op.unary.f32(i32 25, float %936)  ; Rsqrt(value)
  %938 = fmul fast float %937, %933
  %939 = fmul fast float %937, %934
  %940 = fmul fast float %937, %935
  %941 = fsub fast float %427, %930
  %942 = fsub fast float %428, %931
  %943 = fsub fast float %429, %932
  %944 = call float @dx.op.dot3.f32(i32 55, float %596, float %597, float %598, float %941, float %942, float %943)  ; Dot3(ax,ay,az,bx,by,bz)
  %945 = call float @dx.op.dot3.f32(i32 55, float %596, float %597, float %598, float %938, float %939, float %940)  ; Dot3(ax,ay,az,bx,by,bz)
  %946 = fdiv fast float 1.000000e+00, %945
  %947 = fmul fast float %946, %944
  %948 = fmul fast float %947, %938
  %949 = fmul fast float %947, %939
  %950 = fmul fast float %947, %940
  %951 = fadd fast float %948, %930
  %952 = fadd fast float %949, %931
  %953 = fadd fast float %950, %932
  %954 = fmul fast float %927, %373
  %955 = call float @dx.op.tertiary.f32(i32 46, float %928, float %379, float %954)  ; FMad(a,b,c)
  %956 = call float @dx.op.tertiary.f32(i32 46, float %929, float %385, float %955)  ; FMad(a,b,c)
  %957 = fadd fast float %956, %391
  %958 = fmul fast float %927, %374
  %959 = call float @dx.op.tertiary.f32(i32 46, float %928, float %380, float %958)  ; FMad(a,b,c)
  %960 = call float @dx.op.tertiary.f32(i32 46, float %929, float %386, float %959)  ; FMad(a,b,c)
  %961 = fadd fast float %960, %392
  %962 = fmul fast float %927, %376
  %963 = call float @dx.op.tertiary.f32(i32 46, float %928, float %382, float %962)  ; FMad(a,b,c)
  %964 = call float @dx.op.tertiary.f32(i32 46, float %929, float %388, float %963)  ; FMad(a,b,c)
  %965 = fadd fast float %964, %394
  %966 = fmul fast float %951, %373
  %967 = call float @dx.op.tertiary.f32(i32 46, float %952, float %379, float %966)  ; FMad(a,b,c)
  %968 = call float @dx.op.tertiary.f32(i32 46, float %953, float %385, float %967)  ; FMad(a,b,c)
  %969 = fadd fast float %968, %391
  %970 = fmul fast float %951, %374
  %971 = call float @dx.op.tertiary.f32(i32 46, float %952, float %380, float %970)  ; FMad(a,b,c)
  %972 = call float @dx.op.tertiary.f32(i32 46, float %953, float %386, float %971)  ; FMad(a,b,c)
  %973 = fadd fast float %972, %392
  %974 = fmul fast float %951, %376
  %975 = call float @dx.op.tertiary.f32(i32 46, float %952, float %382, float %974)  ; FMad(a,b,c)
  %976 = call float @dx.op.tertiary.f32(i32 46, float %953, float %388, float %975)  ; FMad(a,b,c)
  %977 = fadd fast float %976, %394
  %978 = fdiv fast float 1.000000e+00, %965
  %979 = fmul fast float %978, %957
  %980 = fmul fast float %978, %961
  %981 = fdiv fast float 1.000000e+00, %977
  %982 = fmul fast float %981, %969
  %983 = fmul fast float %981, %973
  %984 = fsub fast float %982, %979
  %985 = fsub fast float %983, %980
  %986 = call float @dx.op.dot2.f32(i32 54, float %984, float %985, float %984, float %985)  ; Dot2(ax,ay,bx,by)
  %987 = call float @dx.op.unary.f32(i32 25, float %986)  ; Rsqrt(value)
  %988 = fmul fast float %984, %987
  %989 = fmul fast float %985, %987
  %990 = fmul fast float %984, %984
  %991 = fmul fast float %985, %985
  %992 = fadd fast float %990, %991
  %993 = call float @dx.op.unary.f32(i32 24, float %992)  ; Sqrt(value)
  %994 = fmul fast float %993, 5.000000e-01
  br i1 %422, label %1087, label %995, !dx.controlflow.hints !42

; <label>:995                                     ; preds = %866
  %996 = fsub fast float %248, %240
  %997 = fsub fast float %249, %241
  %998 = fsub fast float %250, %242
  %999 = fsub fast float %903, %996
  %1000 = fsub fast float %904, %997
  %1001 = fsub fast float %905, %998
  %1002 = call float @dx.op.dot3.f32(i32 55, float %999, float %1000, float %1001, float %999, float %1000, float %1001)  ; Dot3(ax,ay,az,bx,by,bz)
  %1003 = call float @dx.op.unary.f32(i32 25, float %1002)  ; Rsqrt(value)
  %1004 = fmul fast float %1003, %999
  %1005 = fmul fast float %1003, %1000
  %1006 = fmul fast float %1003, %1001
  %1007 = fsub fast float %427, %996
  %1008 = fsub fast float %428, %997
  %1009 = fsub fast float %429, %998
  %1010 = call float @dx.op.dot3.f32(i32 55, float %596, float %597, float %598, float %1007, float %1008, float %1009)  ; Dot3(ax,ay,az,bx,by,bz)
  %1011 = call float @dx.op.dot3.f32(i32 55, float %596, float %597, float %598, float %1004, float %1005, float %1006)  ; Dot3(ax,ay,az,bx,by,bz)
  %1012 = fdiv fast float 1.000000e+00, %1011
  %1013 = fmul fast float %1012, %1010
  %1014 = fmul fast float %1013, %1004
  %1015 = fmul fast float %1013, %1005
  %1016 = fmul fast float %1013, %1006
  %1017 = fadd fast float %1014, %996
  %1018 = fadd fast float %1015, %997
  %1019 = fadd fast float %1016, %998
  %1020 = fadd fast float %248, %240
  %1021 = fadd fast float %249, %241
  %1022 = fadd fast float %250, %242
  %1023 = fsub fast float %903, %1020
  %1024 = fsub fast float %904, %1021
  %1025 = fsub fast float %905, %1022
  %1026 = call float @dx.op.dot3.f32(i32 55, float %1023, float %1024, float %1025, float %1023, float %1024, float %1025)  ; Dot3(ax,ay,az,bx,by,bz)
  %1027 = call float @dx.op.unary.f32(i32 25, float %1026)  ; Rsqrt(value)
  %1028 = fmul fast float %1027, %1023
  %1029 = fmul fast float %1027, %1024
  %1030 = fmul fast float %1027, %1025
  %1031 = fsub fast float %427, %1020
  %1032 = fsub fast float %428, %1021
  %1033 = fsub fast float %429, %1022
  %1034 = call float @dx.op.dot3.f32(i32 55, float %596, float %597, float %598, float %1031, float %1032, float %1033)  ; Dot3(ax,ay,az,bx,by,bz)
  %1035 = call float @dx.op.dot3.f32(i32 55, float %596, float %597, float %598, float %1028, float %1029, float %1030)  ; Dot3(ax,ay,az,bx,by,bz)
  %1036 = fdiv fast float 1.000000e+00, %1035
  %1037 = fmul fast float %1036, %1034
  %1038 = fmul fast float %1037, %1028
  %1039 = fmul fast float %1037, %1029
  %1040 = fmul fast float %1037, %1030
  %1041 = fadd fast float %1038, %1020
  %1042 = fadd fast float %1039, %1021
  %1043 = fadd fast float %1040, %1022
  %1044 = fmul fast float %1017, %373
  %1045 = call float @dx.op.tertiary.f32(i32 46, float %1018, float %379, float %1044)  ; FMad(a,b,c)
  %1046 = call float @dx.op.tertiary.f32(i32 46, float %1019, float %385, float %1045)  ; FMad(a,b,c)
  %1047 = fadd fast float %1046, %391
  %1048 = fmul fast float %1017, %374
  %1049 = call float @dx.op.tertiary.f32(i32 46, float %1018, float %380, float %1048)  ; FMad(a,b,c)
  %1050 = call float @dx.op.tertiary.f32(i32 46, float %1019, float %386, float %1049)  ; FMad(a,b,c)
  %1051 = fadd fast float %1050, %392
  %1052 = fmul fast float %1017, %376
  %1053 = call float @dx.op.tertiary.f32(i32 46, float %1018, float %382, float %1052)  ; FMad(a,b,c)
  %1054 = call float @dx.op.tertiary.f32(i32 46, float %1019, float %388, float %1053)  ; FMad(a,b,c)
  %1055 = fadd fast float %1054, %394
  %1056 = fmul fast float %1041, %373
  %1057 = call float @dx.op.tertiary.f32(i32 46, float %1042, float %379, float %1056)  ; FMad(a,b,c)
  %1058 = call float @dx.op.tertiary.f32(i32 46, float %1043, float %385, float %1057)  ; FMad(a,b,c)
  %1059 = fadd fast float %1058, %391
  %1060 = fmul fast float %1041, %374
  %1061 = call float @dx.op.tertiary.f32(i32 46, float %1042, float %380, float %1060)  ; FMad(a,b,c)
  %1062 = call float @dx.op.tertiary.f32(i32 46, float %1043, float %386, float %1061)  ; FMad(a,b,c)
  %1063 = fadd fast float %1062, %392
  %1064 = fmul fast float %1041, %376
  %1065 = call float @dx.op.tertiary.f32(i32 46, float %1042, float %382, float %1064)  ; FMad(a,b,c)
  %1066 = call float @dx.op.tertiary.f32(i32 46, float %1043, float %388, float %1065)  ; FMad(a,b,c)
  %1067 = fadd fast float %1066, %394
  %1068 = fdiv fast float 1.000000e+00, %1055
  %1069 = fmul fast float %1068, %1047
  %1070 = fmul fast float %1068, %1051
  %1071 = fdiv fast float 1.000000e+00, %1067
  %1072 = fmul fast float %1071, %1059
  %1073 = fmul fast float %1071, %1063
  %1074 = fsub fast float %1072, %1069
  %1075 = fsub fast float %1073, %1070
  %1076 = call float @dx.op.dot2.f32(i32 54, float %1074, float %1075, float %1074, float %1075)  ; Dot2(ax,ay,bx,by)
  %1077 = call float @dx.op.unary.f32(i32 25, float %1076)  ; Rsqrt(value)
  %1078 = fmul fast float %1074, %1077
  %1079 = fmul fast float %1075, %1077
  %1080 = fmul fast float %1074, %1074
  %1081 = fmul fast float %1075, %1075
  %1082 = fadd fast float %1080, %1081
  %1083 = call float @dx.op.unary.f32(i32 24, float %1082)  ; Sqrt(value)
  %1084 = fmul fast float %1083, 5.000000e-01
  %1085 = fcmp fast olt float %1084, %994
  br i1 %1085, label %1086, label %1087, !dx.controlflow.hints !43

; <label>:1086                                    ; preds = %995
  br label %1087

; <label>:1087                                    ; preds = %1086, %995, %866
  %1088 = phi float [ %994, %866 ], [ %1084, %1086 ], [ %994, %995 ]
  %1089 = phi float [ %994, %866 ], [ %994, %1086 ], [ %1084, %995 ]
  %1090 = phi float [ %988, %866 ], [ %988, %1086 ], [ %1078, %995 ]
  %1091 = phi float [ %989, %866 ], [ %989, %1086 ], [ %1079, %995 ]
  %1092 = fsub fast float %1089, %1088
  %1093 = fmul fast float %1090, %1090
  %1094 = fmul fast float %1093, %1092
  %1095 = fadd fast float %1094, %1088
  %1096 = fmul fast float %1090, %1092
  %1097 = fmul fast float %1096, %1091
  %1098 = fmul fast float %1091, %1091
  %1099 = fmul fast float %1098, %1092
  %1100 = fadd fast float %1099, %1088
  %1101 = fmul fast float %1095, %452
  %1102 = call float @dx.op.tertiary.f32(i32 46, float %451, float %1097, float %1101)  ; FMad(a,b,c)
  %1103 = fmul fast float %1097, %452
  %1104 = call float @dx.op.tertiary.f32(i32 46, float %451, float %1100, float %1103)  ; FMad(a,b,c)
  %1105 = fmul fast float %1095, %453
  %1106 = call float @dx.op.tertiary.f32(i32 46, float %452, float %1097, float %1105)  ; FMad(a,b,c)
  %1107 = fmul fast float %1097, %453
  %1108 = call float @dx.op.tertiary.f32(i32 46, float %452, float %1100, float %1107)  ; FMad(a,b,c)
  br label %1109

; <label>:1109                                    ; preds = %1109, %1087
  %1110 = phi float [ 0.000000e+00, %1087 ], [ %1136, %1109 ]
  %1111 = phi i32 [ 0, %1087 ], [ %1137, %1109 ]
  %1112 = mul i32 %1111, 2
  %1113 = add i32 0, %1112
  %1114 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1113
  %1115 = load float, float* %1114, align 4
  %1116 = mul i32 %1111, 2
  %1117 = add i32 1, %1116
  %1118 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1117
  %1119 = load float, float* %1118, align 4
  %1120 = fmul fast float %1115, %1102
  %1121 = call float @dx.op.tertiary.f32(i32 46, float %1119, float %1106, float %1120)  ; FMad(a,b,c)
  %1122 = fmul fast float %1115, %1104
  %1123 = call float @dx.op.tertiary.f32(i32 46, float %1119, float %1108, float %1122)  ; FMad(a,b,c)
  %1124 = fadd fast float %1121, %446
  %1125 = fadd fast float %1123, %447
  %1126 = fmul fast float %1124, %363
  %1127 = fmul fast float %1125, %363
  %1128 = call float @dx.op.binary.f32(i32 35, float %1126, float %359)  ; FMax(a,b)
  %1129 = call float @dx.op.binary.f32(i32 35, float %1127, float %359)  ; FMax(a,b)
  %1130 = call float @dx.op.binary.f32(i32 36, float %1128, float %360)  ; FMin(a,b)
  %1131 = call float @dx.op.binary.f32(i32 36, float %1129, float %360)  ; FMin(a,b)
  %1132 = fadd fast float %1130, %357
  %1133 = fadd fast float %1131, %358
  %1134 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %16, float %1132, float %1133, float %832, float undef, i32 0, i32 0, i32 undef, float %835)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1135 = extractvalue %dx.types.ResRet.f32 %1134, 0
  %1136 = fadd fast float %1135, %1110
  %1137 = add nuw nsw i32 %1111, 1
  %1138 = icmp eq i32 %1137, 8
  br i1 %1138, label %1139, label %1109

; <label>:1139                                    ; preds = %1109
  %1140 = fmul fast float %1136, 1.250000e-01
  br label %1141

; <label>:1141                                    ; preds = %1139, %849, %498
  %1142 = phi float [ %525, %498 ], [ %1140, %1139 ], [ 1.000000e+00, %849 ]
  %1143 = fadd fast float %1142, -1.000000e+00
  %1144 = fmul fast float %1143, %336
  %1145 = fadd fast float %1144, 1.000000e+00
  %1146 = fmul fast float %1145, %348
  br label %1147

; <label>:1147                                    ; preds = %1141, %315
  %1148 = phi float [ %1146, %1141 ], [ %348, %315 ]
  %1149 = call float @dx.op.binary.f32(i32 36, float %1148, float %1148)  ; FMin(a,b)
  %1150 = call float @dx.op.binary.f32(i32 36, float %1148, float %1149)  ; FMin(a,b)
  %1151 = fcmp fast ogt float %1150, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1152 = zext i1 %1151 to i32
  %1153 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %1152 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1154 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  %1155 = icmp eq i32 %1154, 0
  %1156 = select i1 %1155, i32 0, i32 %227
  %1157 = or i32 %222, %1156
  %1158 = lshr i32 %160, 5
  %1159 = lshr i32 %161, 5
  %1160 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1158, i32 %1159, i32 %225, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = lshr i32 %1161, 23
  %1163 = and i32 %1162, 255
  %1164 = and i32 %160, 31
  %1165 = and i32 %161, 31
  %1166 = lshr i32 %1161, 1
  %1167 = and i32 %1166, 16352
  %1168 = lshr i32 %1161, 10
  %1169 = and i32 %1168, 8160
  %1170 = or i32 %1167, %1164
  %1171 = or i32 %1169, %1165
  %1172 = fmul fast float %1148, 2.550000e+02
  %1173 = fadd fast float %1172, %155
  %1174 = call float @dx.op.unary.f32(i32 27, float %1173)  ; Round_ni(value)
  %1175 = fmul fast float %1174, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1170, i32 %1171, i32 %1163, float %1175, float %1175, float %1175, float %1175, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1176 = icmp eq i32 %223, %227
  br i1 %1176, label %1177, label %221, !llvm.loop !46

; <label>:1177                                    ; preds = %1147
  br label %1178

; <label>:1178                                    ; preds = %1177, %217
  %1179 = phi i32 [ 0, %217 ], [ %1157, %1177 ]
  %1180 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1181 = extractvalue %dx.types.CBufRet.i32 %1180, 0
  %1182 = call i32 @dx.op.tertiary.i32(i32 49, i32 %166, i32 %1181, i32 %190)  ; UMad(a,b,c)
  %1183 = shl i32 %1182, 2
  %1184 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1183, i32 undef, i32 undef, i32 %1179)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1185 = add i32 %190, 1
  %1186 = icmp ugt i32 %1185, %186
  br i1 %1186, label %1187, label %189

; <label>:1187                                    ; preds = %1178
  br label %1188

; <label>:1188                                    ; preds = %1187, %159, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

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

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

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
attributes #3 = { noduplicate nounwind }

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
!30 = !{i32 0, i64 272, i32 4, !31}
!31 = !{i32 8, i32 8, i32 1}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = !{!34, !34, i64 0}
!34 = !{!"int", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 1}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.unroll.disable"}

