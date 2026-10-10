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
; shader hash: 44a41819a2a7456d0215f8584dbee48a
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
  %62 = fmul fast float %47, %60
  %63 = fmul fast float %48, %61
  %64 = fmul fast float %62, 2.000000e+00
  %65 = fmul fast float %63, 2.000000e+00
  %66 = fsub fast float 1.000000e+00, %64
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
  %145 = fmul fast float %60, %45
  %146 = fmul fast float %61, %46
  %147 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %15, float %145, float %146, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %148 = extractvalue %dx.types.ResRet.f32 %147, 0
  %149 = extractvalue %dx.types.ResRet.f32 %147, 1
  %150 = extractvalue %dx.types.ResRet.f32 %147, 2
  %151 = fcmp fast ogt float %148, -1.000000e+00
  %152 = select i1 %151, float %54, float 1.000000e+00
  %153 = fadd fast float %148, 1.000000e+00
  %154 = fmul fast float %152, %153
  %155 = call float @dx.op.unary.f32(i32 6, float %154)  ; FAbs(value)
  %156 = fcmp fast ogt float %149, -1.000000e+00
  %157 = select i1 %156, float %54, float 1.000000e+00
  %158 = fadd fast float %149, 1.000000e+00
  %159 = fmul fast float %157, %158
  %160 = call float @dx.op.unary.f32(i32 6, float %159)  ; FAbs(value)
  %161 = fcmp fast ogt float %150, -1.000000e+00
  %162 = select i1 %161, float %54, float 1.000000e+00
  %163 = fadd fast float %150, 1.000000e+00
  %164 = fmul fast float %162, %163
  %165 = call float @dx.op.unary.f32(i32 6, float %164)  ; FAbs(value)
  %166 = fadd fast float %45, 1.000000e+00
  %167 = fmul fast float %60, %166
  %168 = fadd fast float %46, 1.000000e+00
  %169 = fmul fast float %61, %168
  %170 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %15, float %167, float %169, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %171 = extractvalue %dx.types.ResRet.f32 %170, 0
  %172 = extractvalue %dx.types.ResRet.f32 %170, 2
  %173 = fcmp fast ogt float %171, -1.000000e+00
  %174 = select i1 %173, float %54, float 1.000000e+00
  %175 = fadd fast float %171, 1.000000e+00
  %176 = fmul fast float %174, %175
  %177 = call float @dx.op.unary.f32(i32 6, float %176)  ; FAbs(value)
  %178 = fcmp fast ogt float %172, -1.000000e+00
  %179 = select i1 %178, float %54, float 1.000000e+00
  %180 = fadd fast float %172, 1.000000e+00
  %181 = fmul fast float %179, %180
  %182 = call float @dx.op.unary.f32(i32 6, float %181)  ; FAbs(value)
  %183 = fsub fast float %165, %160
  %184 = fsub fast float %177, %160
  %185 = fsub fast float %155, %160
  %186 = fsub fast float %182, %160
  %187 = call float @dx.op.unary.f32(i32 6, float %184)  ; FAbs(value)
  %188 = call float @dx.op.unary.f32(i32 6, float %183)  ; FAbs(value)
  %189 = call float @dx.op.binary.f32(i32 35, float %188, float %187)  ; FMax(a,b)
  %190 = call float @dx.op.unary.f32(i32 6, float %186)  ; FAbs(value)
  %191 = call float @dx.op.unary.f32(i32 6, float %185)  ; FAbs(value)
  %192 = call float @dx.op.binary.f32(i32 35, float %191, float %190)  ; FMax(a,b)
  %193 = fadd fast float %184, %183
  %194 = call float @dx.op.unary.f32(i32 6, float %193)  ; FAbs(value)
  %195 = fadd fast float %186, %185
  %196 = call float @dx.op.unary.f32(i32 6, float %195)  ; FAbs(value)
  %197 = fsub fast float %192, %196
  %198 = call float @dx.op.unary.f32(i32 6, float %197)  ; FAbs(value)
  %199 = fsub fast float %189, %194
  %200 = call float @dx.op.unary.f32(i32 6, float %199)  ; FAbs(value)
  %201 = call float @dx.op.binary.f32(i32 35, float %200, float %198)  ; FMax(a,b)
  %202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = extractvalue %dx.types.CBufRet.f32 %202, 2
  %204 = fmul fast float %203, 0x3FE3C6EF40000000
  %205 = frem fast float %47, 2.560000e+02
  %206 = frem fast float %48, 2.560000e+02
  %207 = fptoui float %205 to i32
  %208 = fptoui float %206 to i32
  %209 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %207, i32 %208, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %210 = extractvalue %dx.types.ResRet.f32 %209, 0
  %211 = extractvalue %dx.types.ResRet.f32 %209, 2
  %212 = fadd fast float %210, %204
  %213 = fadd fast float %211, %204
  %214 = call float @dx.op.unary.f32(i32 22, float %212)  ; Frc(value)
  %215 = call float @dx.op.unary.f32(i32 22, float %213)  ; Frc(value)
  %216 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.i32 %216, 0
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %1662, label %219, !dx.controlflow.hints !32

; <label>:219                                     ; preds = %0
  %220 = fptoui float %47 to i32
  %221 = fptoui float %48 to i32
  %222 = lshr i32 %220, 4
  %223 = lshr i32 %221, 4
  %224 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.i32 %224, 0
  %226 = call i32 @dx.op.tertiary.i32(i32 49, i32 %223, i32 %225, i32 %222)  ; UMad(a,b,c)
  %227 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.i32 %227, 0
  %229 = add nsw i32 %228, -1
  %230 = call i32 @dx.op.binary.i32(i32 37, i32 %229, i32 0)  ; IMax(a,b)
  %231 = call float @dx.op.binary.f32(i32 35, float %58, float 0.000000e+00)  ; FMax(a,b)
  %232 = fptoui float %231 to i32
  %233 = lshr i32 %232, 5
  %234 = call i32 @dx.op.binary.i32(i32 40, i32 %233, i32 8191)  ; UMin(a,b)
  %235 = shl i32 %234, 2
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = lshr i32 %237, 16
  %239 = and i32 %237, 65535
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 -1, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %240 = atomicrmw umin i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %238 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %241 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %242 = atomicrmw umax i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %239 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %243 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  %244 = lshr i32 %241, 5
  %245 = lshr i32 %243, 5
  %246 = call i32 @dx.op.binary.i32(i32 40, i32 %245, i32 %230)  ; UMin(a,b)
  %247 = icmp ugt i32 %244, %246
  br i1 %247, label %1662, label %248

; <label>:248                                     ; preds = %219
  br label %249

; <label>:249                                     ; preds = %1652, %248
  %250 = phi i32 [ %1659, %1652 ], [ %244, %248 ]
  %251 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %252 = extractvalue %dx.types.CBufRet.i32 %251, 0
  %253 = call i32 @dx.op.tertiary.i32(i32 49, i32 %226, i32 %252, i32 %250)  ; UMad(a,b,c)
  %254 = shl i32 %253, 2
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = shl i32 %250, 5
  %258 = sub nsw i32 %238, %257
  %259 = call i32 @dx.op.binary.i32(i32 37, i32 %258, i32 0)  ; IMax(a,b)
  %260 = call i32 @dx.op.binary.i32(i32 38, i32 %259, i32 31)  ; IMin(a,b)
  %261 = sub nsw i32 1, %238
  %262 = add nsw i32 %261, %239
  %263 = call i32 @dx.op.binary.i32(i32 37, i32 %262, i32 0)  ; IMax(a,b)
  %264 = call i32 @dx.op.binary.i32(i32 38, i32 %263, i32 32)  ; IMin(a,b)
  %265 = and i32 %264, 31
  %266 = shl i32 -1, %265
  %267 = xor i32 %266, -1
  %268 = and i32 %260, 31
  %269 = shl i32 %267, %268
  %270 = icmp eq i32 %264, 32
  %271 = select i1 %270, i32 -1, i32 %269
  %272 = and i32 %271, %256
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %273 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %272 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %274 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %275 = icmp eq i32 %22, 0
  br i1 %275, label %276, label %277, !dx.controlflow.hints !37

; <label>:276                                     ; preds = %249
  store i32 %274, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  br label %277

; <label>:277                                     ; preds = %276, %249
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %278 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %1652, label %280

; <label>:280                                     ; preds = %277
  br label %281

; <label>:281                                     ; preds = %1619, %280
  %282 = phi i32 [ %1631, %1619 ], [ 0, %280 ]
  %283 = phi i32 [ %288, %1619 ], [ %278, %280 ]
  %284 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %283)  ; FirstbitLo(value)
  %285 = add i32 %284, %257
  %286 = and i32 %284, 31
  %287 = shl i32 1, %286
  %288 = xor i32 %287, %283
  %289 = mul i32 %285, 112
  %290 = add i32 %289, 16
  %291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.f32 %291, 0
  %293 = extractvalue %dx.types.ResRet.f32 %291, 1
  %294 = extractvalue %dx.types.ResRet.f32 %291, 2
  %295 = add i32 %289, 28
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = add i32 %289, 32
  %299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.f32 %299, 0
  %301 = extractvalue %dx.types.ResRet.f32 %299, 1
  %302 = extractvalue %dx.types.ResRet.f32 %299, 2
  %303 = add i32 %289, 44
  %304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.f32 %304, 0
  %306 = add i32 %289, 48
  %307 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.f32 %307, 0
  %309 = extractvalue %dx.types.ResRet.f32 %307, 1
  %310 = extractvalue %dx.types.ResRet.f32 %307, 2
  %311 = extractvalue %dx.types.ResRet.f32 %307, 3
  %312 = add i32 %289, 64
  %313 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.f32 %313, 0
  %315 = extractvalue %dx.types.ResRet.f32 %313, 1
  %316 = extractvalue %dx.types.ResRet.f32 %313, 2
  %317 = extractvalue %dx.types.ResRet.f32 %313, 3
  %318 = add i32 %289, 92
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %320, 65535
  %322 = uitofp i32 %321 to float
  %323 = lshr i32 %320, 16
  %324 = uitofp i32 %323 to float
  %325 = and i32 %297, 65535
  %326 = and i32 %297, 50331648
  %327 = icmp eq i32 %326, 33554432
  %328 = call float @dx.op.dot3.f32(i32 55, float %300, float %301, float %302, float %300, float %301, float %302)  ; Dot3(ax,ay,az,bx,by,bz)
  %329 = fsub fast float %113, %308
  %330 = fsub fast float %114, %309
  %331 = fsub fast float %115, %310
  %332 = call float @dx.op.dot3.f32(i32 55, float %329, float %330, float %331, float %300, float %301, float %302)  ; Dot3(ax,ay,az,bx,by,bz)
  %333 = fdiv fast float %332, %328
  %334 = call float @dx.op.binary.f32(i32 35, float %333, float -1.000000e+00)  ; FMax(a,b)
  %335 = call float @dx.op.binary.f32(i32 36, float %334, float 1.000000e+00)  ; FMin(a,b)
  %336 = fmul fast float %335, %300
  %337 = fmul fast float %335, %301
  %338 = fmul fast float %335, %302
  %339 = fadd fast float %336, %308
  %340 = fadd fast float %337, %309
  %341 = fadd fast float %338, %310
  %342 = fsub fast float %339, %113
  %343 = fsub fast float %340, %114
  %344 = fsub fast float %341, %115
  %345 = call float @dx.op.dot3.f32(i32 55, float %342, float %343, float %344, float %342, float %343, float %344)  ; Dot3(ax,ay,az,bx,by,bz)
  %346 = call float @dx.op.unary.f32(i32 24, float %345)  ; Sqrt(value)
  %347 = fdiv fast float 1.000000e+00, %346
  %348 = fmul fast float %342, %347
  %349 = fmul fast float %343, %347
  %350 = fmul fast float %344, %347
  br i1 %327, label %351, label %375, !dx.controlflow.hints !38

; <label>:351                                     ; preds = %281
  %352 = fmul fast float %316, %292
  %353 = fmul fast float %316, %293
  %354 = fmul fast float %316, %294
  %355 = fsub fast float %352, %113
  %356 = fadd fast float %355, %339
  %357 = fsub fast float %353, %114
  %358 = fadd fast float %357, %340
  %359 = fsub fast float %354, %115
  %360 = fadd fast float %359, %341
  %361 = call float @dx.op.dot3.f32(i32 55, float %356, float %358, float %360, float %356, float %358, float %360)  ; Dot3(ax,ay,az,bx,by,bz)
  %362 = call float @dx.op.unary.f32(i32 25, float %361)  ; Rsqrt(value)
  %363 = fmul fast float %362, %356
  %364 = fmul fast float %362, %358
  %365 = fmul fast float %362, %360
  %366 = fsub fast float %113, %339
  %367 = fsub fast float %114, %340
  %368 = fsub fast float %115, %341
  %369 = fsub fast float -0.000000e+00, %366
  %370 = fsub fast float -0.000000e+00, %367
  %371 = fsub fast float -0.000000e+00, %368
  %372 = call float @dx.op.dot3.f32(i32 55, float %369, float %370, float %371, float %292, float %293, float %294)  ; Dot3(ax,ay,az,bx,by,bz)
  %373 = fcmp fast ogt float %372, 0.000000e+00
  %374 = uitofp i1 %373 to float
  br label %375

; <label>:375                                     ; preds = %351, %281
  %376 = phi float [ %374, %351 ], [ 1.000000e+00, %281 ]
  %377 = phi float [ %363, %351 ], [ %348, %281 ]
  %378 = phi float [ %364, %351 ], [ %349, %281 ]
  %379 = phi float [ %365, %351 ], [ %350, %281 ]
  %380 = call float @dx.op.dot3.f32(i32 55, float %292, float %293, float %294, float %377, float %378, float %379)  ; Dot3(ax,ay,az,bx,by,bz)
  %381 = fmul fast float %380, %380
  %382 = call float @dx.op.unary.f32(i32 7, float %381)  ; Saturate(value)
  %383 = fsub fast float 1.000000e+00, %382
  %384 = fmul fast float %383, 5.000000e-01
  %385 = fcmp fast ogt float %380, 0.000000e+00
  %386 = fsub fast float 1.000000e+00, %384
  %387 = select i1 %385, float %384, float %386
  %388 = fmul fast float %387, %324
  %389 = fadd fast float %388, %322
  %390 = fmul fast float %389, 0x3EF0001000000000
  %391 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %14, float %390, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %392 = extractvalue %dx.types.ResRet.f32 %391, 0
  %393 = fmul fast float %380, %314
  %394 = fadd fast float %393, %315
  %395 = call float @dx.op.unary.f32(i32 7, float %394)  ; Saturate(value)
  %396 = select i1 %327, float 1.000000e+00, float %395
  %397 = select i1 %327, float %395, float 1.000000e+00
  %398 = fmul fast float %346, %311
  %399 = fsub fast float 1.000000e+00, %398
  %400 = fmul fast float %399, %317
  %401 = call float @dx.op.unary.f32(i32 7, float %400)  ; Saturate(value)
  %402 = fmul fast float %401, %397
  %403 = fmul fast float %402, 2.000000e+00
  %404 = fsub fast float 3.000000e+00, %403
  %405 = fmul fast float %392, %376
  %406 = fmul fast float %402, %402
  %407 = fmul fast float %406, %405
  %408 = fmul fast float %407, %404
  %409 = icmp ne i32 %325, 255
  %410 = call float @dx.op.binary.f32(i32 36, float %408, float %408)  ; FMin(a,b)
  %411 = call float @dx.op.binary.f32(i32 36, float %408, float %410)  ; FMin(a,b)
  %412 = fcmp fast ogt float %411, 0.000000e+00
  %413 = and i1 %409, %412
  br i1 %413, label %414, label %1328, !dx.controlflow.hints !39

; <label>:414                                     ; preds = %375
  %415 = mul nuw nsw i32 %325, 176
  %416 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.f32 %416, 0
  %418 = extractvalue %dx.types.ResRet.f32 %416, 1
  %419 = extractvalue %dx.types.ResRet.f32 %416, 2
  %420 = extractvalue %dx.types.ResRet.f32 %416, 3
  %421 = add nuw nsw i32 %415, 16
  %422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.f32 %422, 0
  %424 = extractvalue %dx.types.ResRet.f32 %422, 1
  %425 = add nuw nsw i32 %415, 32
  %426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.f32 %426, 0
  %428 = extractvalue %dx.types.ResRet.f32 %426, 1
  %429 = extractvalue %dx.types.ResRet.f32 %426, 2
  %430 = extractvalue %dx.types.ResRet.f32 %426, 3
  %431 = add nuw nsw i32 %415, 48
  %432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.f32 %432, 0
  %434 = extractvalue %dx.types.ResRet.f32 %432, 1
  %435 = extractvalue %dx.types.ResRet.f32 %432, 2
  %436 = extractvalue %dx.types.ResRet.f32 %432, 3
  %437 = add nuw nsw i32 %415, 64
  %438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.f32 %438, 0
  %440 = extractvalue %dx.types.ResRet.f32 %438, 1
  %441 = extractvalue %dx.types.ResRet.f32 %438, 2
  %442 = extractvalue %dx.types.ResRet.f32 %438, 3
  %443 = add nuw nsw i32 %415, 80
  %444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.f32 %444, 0
  %446 = extractvalue %dx.types.ResRet.f32 %444, 1
  %447 = extractvalue %dx.types.ResRet.f32 %444, 2
  %448 = extractvalue %dx.types.ResRet.f32 %444, 3
  %449 = add nuw nsw i32 %415, 96
  %450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.f32 %450, 0
  %452 = extractvalue %dx.types.ResRet.f32 %450, 1
  %453 = extractvalue %dx.types.ResRet.f32 %450, 2
  %454 = extractvalue %dx.types.ResRet.f32 %450, 3
  %455 = add nuw nsw i32 %415, 112
  %456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.f32 %456, 0
  %458 = extractvalue %dx.types.ResRet.f32 %456, 1
  %459 = extractvalue %dx.types.ResRet.f32 %456, 2
  %460 = extractvalue %dx.types.ResRet.f32 %456, 3
  %461 = add nuw nsw i32 %415, 128
  %462 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.f32 %462, 0
  %464 = extractvalue %dx.types.ResRet.f32 %462, 1
  %465 = extractvalue %dx.types.ResRet.f32 %462, 2
  %466 = extractvalue %dx.types.ResRet.f32 %462, 3
  %467 = add nuw nsw i32 %415, 144
  %468 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.f32 %468, 0
  %470 = extractvalue %dx.types.ResRet.f32 %468, 1
  %471 = extractvalue %dx.types.ResRet.f32 %468, 2
  %472 = extractvalue %dx.types.ResRet.f32 %468, 3
  %473 = add nuw nsw i32 %415, 160
  %474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.f32 %474, 0
  %476 = extractvalue %dx.types.ResRet.f32 %474, 1
  %477 = extractvalue %dx.types.ResRet.f32 %474, 2
  %478 = extractvalue %dx.types.ResRet.f32 %474, 3
  %479 = bitcast float %424 to i32
  %480 = bitcast float %430 to i32
  %481 = and i32 %480, 1
  %482 = icmp ne i32 %481, 0
  %483 = and i32 %480, 2
  %484 = fmul fast float %429, %142
  %485 = fmul fast float %429, %143
  %486 = fmul fast float %429, %144
  %487 = fadd fast float %484, %113
  %488 = fadd fast float %485, %114
  %489 = fadd fast float %486, %115
  %490 = fmul fast float %487, %433
  %491 = call float @dx.op.tertiary.f32(i32 46, float %488, float %439, float %490)  ; FMad(a,b,c)
  %492 = call float @dx.op.tertiary.f32(i32 46, float %489, float %445, float %491)  ; FMad(a,b,c)
  %493 = fadd fast float %492, %451
  %494 = fmul fast float %487, %434
  %495 = call float @dx.op.tertiary.f32(i32 46, float %488, float %440, float %494)  ; FMad(a,b,c)
  %496 = call float @dx.op.tertiary.f32(i32 46, float %489, float %446, float %495)  ; FMad(a,b,c)
  %497 = fadd fast float %496, %452
  %498 = fmul fast float %487, %435
  %499 = call float @dx.op.tertiary.f32(i32 46, float %488, float %441, float %498)  ; FMad(a,b,c)
  %500 = call float @dx.op.tertiary.f32(i32 46, float %489, float %447, float %499)  ; FMad(a,b,c)
  %501 = fadd fast float %500, %453
  %502 = fmul fast float %487, %436
  %503 = call float @dx.op.tertiary.f32(i32 46, float %488, float %442, float %502)  ; FMad(a,b,c)
  %504 = call float @dx.op.tertiary.f32(i32 46, float %489, float %448, float %503)  ; FMad(a,b,c)
  %505 = fadd fast float %504, %454
  %506 = fdiv fast float %493, %505
  %507 = fdiv fast float %497, %505
  %508 = fdiv fast float %501, %505
  %509 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %508)  ; FMax(a,b)
  %510 = fmul fast float %214, 0x401921FB60000000
  %511 = call float @dx.op.unary.f32(i32 13, float %510)  ; Sin(value)
  %512 = call float @dx.op.unary.f32(i32 12, float %510)  ; Cos(value)
  %513 = fsub fast float -0.000000e+00, %511
  %514 = icmp eq i32 %483, 0
  br i1 %514, label %515, label %586, !dx.controlflow.hints !40

; <label>:515                                     ; preds = %414
  %516 = fmul fast float %512, %428
  %517 = call float @dx.op.tertiary.f32(i32 46, float %511, float %428, float 0.000000e+00)  ; FMad(a,b,c)
  %518 = fmul fast float %428, %513
  %519 = call float @dx.op.tertiary.f32(i32 46, float %512, float %428, float 0.000000e+00)  ; FMad(a,b,c)
  br label %520

; <label>:520                                     ; preds = %520, %515
  %521 = phi float [ 0.000000e+00, %515 ], [ %553, %520 ]
  %522 = phi float [ 0.000000e+00, %515 ], [ %555, %520 ]
  %523 = phi i32 [ 0, %515 ], [ %556, %520 ]
  %524 = mul i32 %523, 2
  %525 = add i32 0, %524
  %526 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %525
  %527 = load float, float* %526, align 4
  %528 = mul i32 %523, 2
  %529 = add i32 1, %528
  %530 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %529
  %531 = load float, float* %530, align 4
  %532 = fmul fast float %516, %527
  %533 = call float @dx.op.tertiary.f32(i32 46, float %531, float %518, float %532)  ; FMad(a,b,c)
  %534 = fmul fast float %527, %517
  %535 = call float @dx.op.tertiary.f32(i32 46, float %531, float %519, float %534)  ; FMad(a,b,c)
  %536 = fadd fast float %533, %506
  %537 = fadd fast float %535, %507
  %538 = fmul fast float %536, %423
  %539 = fmul fast float %537, %423
  %540 = call float @dx.op.binary.f32(i32 35, float %538, float %419)  ; FMax(a,b)
  %541 = call float @dx.op.binary.f32(i32 35, float %539, float %419)  ; FMax(a,b)
  %542 = call float @dx.op.binary.f32(i32 36, float %540, float %420)  ; FMin(a,b)
  %543 = call float @dx.op.binary.f32(i32 36, float %541, float %420)  ; FMin(a,b)
  %544 = fadd fast float %542, %417
  %545 = fadd fast float %543, %418
  %546 = uitofp i32 %479 to float
  %547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %15, float %544, float %545, float %546, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %548 = extractvalue %dx.types.ResRet.f32 %547, 0
  %549 = fsub fast float %548, %509
  %550 = fsub fast float %549, %427
  %551 = fcmp fast ogt float %550, 0.000000e+00
  %552 = select i1 %551, float 1.000000e+00, float 0.000000e+00
  %553 = fadd fast float %552, %521
  %554 = select i1 %551, float %550, float 0.000000e+00
  %555 = fadd fast float %554, %522
  %556 = add nuw nsw i32 %523, 1
  %557 = icmp eq i32 %556, 8
  br i1 %557, label %558, label %520

; <label>:558                                     ; preds = %520
  %559 = fdiv fast float 1.000000e+00, %553
  %560 = fmul fast float %559, %555
  %561 = fdiv fast float 1.000000e+00, %509
  %562 = fmul fast float %560, %561
  %563 = call float @dx.op.unary.f32(i32 7, float %562)  ; Saturate(value)
  %564 = call float @dx.op.binary.f32(i32 35, float %563, float 0.000000e+00)  ; FMax(a,b)
  %565 = fmul fast float %553, 1.250000e-01
  %566 = call float @dx.op.unary.f32(i32 7, float %565)  ; Saturate(value)
  %567 = fmul fast float %566, 2.000000e+00
  %568 = fadd fast float %567, -1.000000e+00
  %569 = fcmp fast ogt float %568, 0.000000e+00
  %570 = fcmp fast olt float %568, 0.000000e+00
  %571 = zext i1 %569 to i32
  %572 = zext i1 %570 to i32
  %573 = sub nsw i32 %571, %572
  %574 = sitofp i32 %573 to float
  %575 = fmul fast float %574, %568
  %576 = fsub fast float 1.000000e+00, %575
  %577 = fmul fast float %576, %576
  %578 = fmul fast float %577, %576
  %579 = fsub fast float %576, %578
  %580 = fmul fast float %579, %564
  %581 = fsub fast float 1.000000e+00, %578
  %582 = fsub fast float %581, %580
  %583 = fmul fast float %574, 5.000000e-01
  %584 = fmul fast float %583, %582
  %585 = fsub fast float 5.000000e-01, %584
  br label %1201

; <label>:586                                     ; preds = %414
  %587 = fsub fast float 1.000000e+00, %509
  %588 = fmul fast float %587, 5.000000e-01
  %589 = fadd fast float %588, %509
  %590 = fsub fast float %487, %308
  %591 = fsub fast float %488, %309
  %592 = fsub fast float %489, %310
  %593 = call float @dx.op.dot3.f32(i32 55, float %590, float %591, float %592, float %300, float %301, float %302)  ; Dot3(ax,ay,az,bx,by,bz)
  %594 = fdiv fast float %593, %328
  %595 = call float @dx.op.binary.f32(i32 35, float %594, float -1.000000e+00)  ; FMax(a,b)
  %596 = call float @dx.op.binary.f32(i32 36, float %595, float 1.000000e+00)  ; FMin(a,b)
  %597 = fmul fast float %596, %300
  %598 = fmul fast float %596, %301
  %599 = fmul fast float %596, %302
  %600 = fsub fast float %590, %597
  %601 = fsub fast float %591, %598
  %602 = fsub fast float %592, %599
  %603 = call float @dx.op.dot3.f32(i32 55, float %600, float %601, float %602, float %600, float %601, float %602)  ; Dot3(ax,ay,az,bx,by,bz)
  %604 = call float @dx.op.unary.f32(i32 25, float %603)  ; Rsqrt(value)
  %605 = fmul fast float %600, %604
  %606 = fmul fast float %601, %604
  %607 = fmul fast float %602, %604
  %608 = call float @dx.op.unary.f32(i32 25, float %328)  ; Rsqrt(value)
  %609 = fmul fast float %608, %300
  %610 = fmul fast float %608, %301
  %611 = fmul fast float %608, %302
  br i1 %482, label %612, label %616, !dx.controlflow.hints !41

; <label>:612                                     ; preds = %586
  %613 = fcmp fast olt float %606, 0x3FE6666660000000
  %614 = select i1 %613, float 1.000000e+00, float 0.000000e+00
  %615 = select i1 %613, float 0.000000e+00, float 1.000000e+00
  br label %616

; <label>:616                                     ; preds = %612, %586
  %617 = phi float [ 0.000000e+00, %612 ], [ %609, %586 ]
  %618 = phi float [ %614, %612 ], [ %610, %586 ]
  %619 = phi float [ %615, %612 ], [ %611, %586 ]
  %620 = fmul fast float %618, %607
  %621 = fmul fast float %619, %606
  %622 = fsub fast float %620, %621
  %623 = fmul fast float %619, %605
  %624 = fmul fast float %617, %607
  %625 = fsub fast float %623, %624
  %626 = fmul fast float %617, %606
  %627 = fmul fast float %618, %605
  %628 = fsub fast float %626, %627
  %629 = call float @dx.op.dot3.f32(i32 55, float %622, float %625, float %628, float %622, float %625, float %628)  ; Dot3(ax,ay,az,bx,by,bz)
  %630 = call float @dx.op.unary.f32(i32 25, float %629)  ; Rsqrt(value)
  %631 = fmul fast float %630, %305
  %632 = fmul fast float %631, %622
  %633 = fmul fast float %631, %625
  %634 = fmul fast float %628, %305
  %635 = fmul fast float %634, %630
  %636 = fmul fast float %506, %457
  %637 = call float @dx.op.tertiary.f32(i32 46, float %507, float %463, float %636)  ; FMad(a,b,c)
  %638 = call float @dx.op.tertiary.f32(i32 46, float %589, float %469, float %637)  ; FMad(a,b,c)
  %639 = fadd fast float %638, %475
  %640 = fmul fast float %506, %458
  %641 = call float @dx.op.tertiary.f32(i32 46, float %507, float %464, float %640)  ; FMad(a,b,c)
  %642 = call float @dx.op.tertiary.f32(i32 46, float %589, float %470, float %641)  ; FMad(a,b,c)
  %643 = fadd fast float %642, %476
  %644 = fmul fast float %506, %459
  %645 = call float @dx.op.tertiary.f32(i32 46, float %507, float %465, float %644)  ; FMad(a,b,c)
  %646 = call float @dx.op.tertiary.f32(i32 46, float %589, float %471, float %645)  ; FMad(a,b,c)
  %647 = fadd fast float %646, %477
  %648 = fmul fast float %506, %460
  %649 = call float @dx.op.tertiary.f32(i32 46, float %507, float %466, float %648)  ; FMad(a,b,c)
  %650 = call float @dx.op.tertiary.f32(i32 46, float %589, float %472, float %649)  ; FMad(a,b,c)
  %651 = fadd fast float %650, %478
  %652 = fdiv fast float 1.000000e+00, %651
  %653 = fmul fast float %652, %639
  %654 = fmul fast float %652, %643
  %655 = fmul fast float %652, %647
  %656 = fsub fast float -0.000000e+00, %605
  %657 = fsub fast float -0.000000e+00, %606
  %658 = fsub fast float -0.000000e+00, %607
  %659 = fsub fast float %308, %632
  %660 = fsub fast float %309, %633
  %661 = fsub fast float %310, %635
  %662 = fsub fast float %653, %659
  %663 = fsub fast float %654, %660
  %664 = fsub fast float %655, %661
  %665 = call float @dx.op.dot3.f32(i32 55, float %662, float %663, float %664, float %662, float %663, float %664)  ; Dot3(ax,ay,az,bx,by,bz)
  %666 = call float @dx.op.unary.f32(i32 25, float %665)  ; Rsqrt(value)
  %667 = fmul fast float %662, %666
  %668 = fmul fast float %663, %666
  %669 = fmul fast float %664, %666
  %670 = fsub fast float %487, %659
  %671 = fsub fast float %488, %660
  %672 = fsub fast float %489, %661
  %673 = call float @dx.op.dot3.f32(i32 55, float %656, float %657, float %658, float %670, float %671, float %672)  ; Dot3(ax,ay,az,bx,by,bz)
  %674 = call float @dx.op.dot3.f32(i32 55, float %656, float %657, float %658, float %667, float %668, float %669)  ; Dot3(ax,ay,az,bx,by,bz)
  %675 = fdiv fast float 1.000000e+00, %674
  %676 = fmul fast float %675, %673
  %677 = fmul fast float %676, %667
  %678 = fmul fast float %676, %668
  %679 = fmul fast float %676, %669
  %680 = fadd fast float %677, %659
  %681 = fadd fast float %678, %660
  %682 = fadd fast float %679, %661
  %683 = fadd fast float %632, %308
  %684 = fadd fast float %633, %309
  %685 = fadd fast float %635, %310
  %686 = fsub fast float %653, %683
  %687 = fsub fast float %654, %684
  %688 = fsub fast float %655, %685
  %689 = call float @dx.op.dot3.f32(i32 55, float %686, float %687, float %688, float %686, float %687, float %688)  ; Dot3(ax,ay,az,bx,by,bz)
  %690 = call float @dx.op.unary.f32(i32 25, float %689)  ; Rsqrt(value)
  %691 = fmul fast float %690, %686
  %692 = fmul fast float %690, %687
  %693 = fmul fast float %690, %688
  %694 = fsub fast float %487, %683
  %695 = fsub fast float %488, %684
  %696 = fsub fast float %489, %685
  %697 = call float @dx.op.dot3.f32(i32 55, float %656, float %657, float %658, float %694, float %695, float %696)  ; Dot3(ax,ay,az,bx,by,bz)
  %698 = call float @dx.op.dot3.f32(i32 55, float %656, float %657, float %658, float %691, float %692, float %693)  ; Dot3(ax,ay,az,bx,by,bz)
  %699 = fdiv fast float 1.000000e+00, %698
  %700 = fmul fast float %699, %697
  %701 = fmul fast float %700, %691
  %702 = fmul fast float %700, %692
  %703 = fmul fast float %700, %693
  %704 = fadd fast float %701, %683
  %705 = fadd fast float %702, %684
  %706 = fadd fast float %703, %685
  %707 = fmul fast float %680, %433
  %708 = call float @dx.op.tertiary.f32(i32 46, float %681, float %439, float %707)  ; FMad(a,b,c)
  %709 = call float @dx.op.tertiary.f32(i32 46, float %682, float %445, float %708)  ; FMad(a,b,c)
  %710 = fadd fast float %709, %451
  %711 = fmul fast float %680, %434
  %712 = call float @dx.op.tertiary.f32(i32 46, float %681, float %440, float %711)  ; FMad(a,b,c)
  %713 = call float @dx.op.tertiary.f32(i32 46, float %682, float %446, float %712)  ; FMad(a,b,c)
  %714 = fadd fast float %713, %452
  %715 = fmul fast float %680, %436
  %716 = call float @dx.op.tertiary.f32(i32 46, float %681, float %442, float %715)  ; FMad(a,b,c)
  %717 = call float @dx.op.tertiary.f32(i32 46, float %682, float %448, float %716)  ; FMad(a,b,c)
  %718 = fadd fast float %717, %454
  %719 = fmul fast float %704, %433
  %720 = call float @dx.op.tertiary.f32(i32 46, float %705, float %439, float %719)  ; FMad(a,b,c)
  %721 = call float @dx.op.tertiary.f32(i32 46, float %706, float %445, float %720)  ; FMad(a,b,c)
  %722 = fadd fast float %721, %451
  %723 = fmul fast float %704, %434
  %724 = call float @dx.op.tertiary.f32(i32 46, float %705, float %440, float %723)  ; FMad(a,b,c)
  %725 = call float @dx.op.tertiary.f32(i32 46, float %706, float %446, float %724)  ; FMad(a,b,c)
  %726 = fadd fast float %725, %452
  %727 = fmul fast float %704, %436
  %728 = call float @dx.op.tertiary.f32(i32 46, float %705, float %442, float %727)  ; FMad(a,b,c)
  %729 = call float @dx.op.tertiary.f32(i32 46, float %706, float %448, float %728)  ; FMad(a,b,c)
  %730 = fadd fast float %729, %454
  %731 = fdiv fast float 1.000000e+00, %718
  %732 = fmul fast float %731, %710
  %733 = fmul fast float %731, %714
  %734 = fdiv fast float 1.000000e+00, %730
  %735 = fmul fast float %734, %722
  %736 = fmul fast float %734, %726
  %737 = fsub fast float %735, %732
  %738 = fsub fast float %736, %733
  %739 = call float @dx.op.dot2.f32(i32 54, float %737, float %738, float %737, float %738)  ; Dot2(ax,ay,bx,by)
  %740 = call float @dx.op.unary.f32(i32 25, float %739)  ; Rsqrt(value)
  %741 = fmul fast float %737, %740
  %742 = fmul fast float %738, %740
  %743 = fmul fast float %737, %737
  %744 = fmul fast float %738, %738
  %745 = fadd fast float %743, %744
  %746 = call float @dx.op.unary.f32(i32 24, float %745)  ; Sqrt(value)
  %747 = fmul fast float %746, 5.000000e-01
  br i1 %482, label %840, label %748, !dx.controlflow.hints !42

; <label>:748                                     ; preds = %616
  %749 = fsub fast float %308, %300
  %750 = fsub fast float %309, %301
  %751 = fsub fast float %310, %302
  %752 = fsub fast float %653, %749
  %753 = fsub fast float %654, %750
  %754 = fsub fast float %655, %751
  %755 = call float @dx.op.dot3.f32(i32 55, float %752, float %753, float %754, float %752, float %753, float %754)  ; Dot3(ax,ay,az,bx,by,bz)
  %756 = call float @dx.op.unary.f32(i32 25, float %755)  ; Rsqrt(value)
  %757 = fmul fast float %756, %752
  %758 = fmul fast float %756, %753
  %759 = fmul fast float %756, %754
  %760 = fsub fast float %487, %749
  %761 = fsub fast float %488, %750
  %762 = fsub fast float %489, %751
  %763 = call float @dx.op.dot3.f32(i32 55, float %656, float %657, float %658, float %760, float %761, float %762)  ; Dot3(ax,ay,az,bx,by,bz)
  %764 = call float @dx.op.dot3.f32(i32 55, float %656, float %657, float %658, float %757, float %758, float %759)  ; Dot3(ax,ay,az,bx,by,bz)
  %765 = fdiv fast float 1.000000e+00, %764
  %766 = fmul fast float %765, %763
  %767 = fmul fast float %766, %757
  %768 = fmul fast float %766, %758
  %769 = fmul fast float %766, %759
  %770 = fadd fast float %767, %749
  %771 = fadd fast float %768, %750
  %772 = fadd fast float %769, %751
  %773 = fadd fast float %308, %300
  %774 = fadd fast float %309, %301
  %775 = fadd fast float %310, %302
  %776 = fsub fast float %653, %773
  %777 = fsub fast float %654, %774
  %778 = fsub fast float %655, %775
  %779 = call float @dx.op.dot3.f32(i32 55, float %776, float %777, float %778, float %776, float %777, float %778)  ; Dot3(ax,ay,az,bx,by,bz)
  %780 = call float @dx.op.unary.f32(i32 25, float %779)  ; Rsqrt(value)
  %781 = fmul fast float %780, %776
  %782 = fmul fast float %780, %777
  %783 = fmul fast float %780, %778
  %784 = fsub fast float %487, %773
  %785 = fsub fast float %488, %774
  %786 = fsub fast float %489, %775
  %787 = call float @dx.op.dot3.f32(i32 55, float %656, float %657, float %658, float %784, float %785, float %786)  ; Dot3(ax,ay,az,bx,by,bz)
  %788 = call float @dx.op.dot3.f32(i32 55, float %656, float %657, float %658, float %781, float %782, float %783)  ; Dot3(ax,ay,az,bx,by,bz)
  %789 = fdiv fast float 1.000000e+00, %788
  %790 = fmul fast float %789, %787
  %791 = fmul fast float %790, %781
  %792 = fmul fast float %790, %782
  %793 = fmul fast float %790, %783
  %794 = fadd fast float %791, %773
  %795 = fadd fast float %792, %774
  %796 = fadd fast float %793, %775
  %797 = fmul fast float %770, %433
  %798 = call float @dx.op.tertiary.f32(i32 46, float %771, float %439, float %797)  ; FMad(a,b,c)
  %799 = call float @dx.op.tertiary.f32(i32 46, float %772, float %445, float %798)  ; FMad(a,b,c)
  %800 = fadd fast float %799, %451
  %801 = fmul fast float %770, %434
  %802 = call float @dx.op.tertiary.f32(i32 46, float %771, float %440, float %801)  ; FMad(a,b,c)
  %803 = call float @dx.op.tertiary.f32(i32 46, float %772, float %446, float %802)  ; FMad(a,b,c)
  %804 = fadd fast float %803, %452
  %805 = fmul fast float %770, %436
  %806 = call float @dx.op.tertiary.f32(i32 46, float %771, float %442, float %805)  ; FMad(a,b,c)
  %807 = call float @dx.op.tertiary.f32(i32 46, float %772, float %448, float %806)  ; FMad(a,b,c)
  %808 = fadd fast float %807, %454
  %809 = fmul fast float %794, %433
  %810 = call float @dx.op.tertiary.f32(i32 46, float %795, float %439, float %809)  ; FMad(a,b,c)
  %811 = call float @dx.op.tertiary.f32(i32 46, float %796, float %445, float %810)  ; FMad(a,b,c)
  %812 = fadd fast float %811, %451
  %813 = fmul fast float %794, %434
  %814 = call float @dx.op.tertiary.f32(i32 46, float %795, float %440, float %813)  ; FMad(a,b,c)
  %815 = call float @dx.op.tertiary.f32(i32 46, float %796, float %446, float %814)  ; FMad(a,b,c)
  %816 = fadd fast float %815, %452
  %817 = fmul fast float %794, %436
  %818 = call float @dx.op.tertiary.f32(i32 46, float %795, float %442, float %817)  ; FMad(a,b,c)
  %819 = call float @dx.op.tertiary.f32(i32 46, float %796, float %448, float %818)  ; FMad(a,b,c)
  %820 = fadd fast float %819, %454
  %821 = fdiv fast float 1.000000e+00, %808
  %822 = fmul fast float %821, %800
  %823 = fmul fast float %821, %804
  %824 = fdiv fast float 1.000000e+00, %820
  %825 = fmul fast float %824, %812
  %826 = fmul fast float %824, %816
  %827 = fsub fast float %825, %822
  %828 = fsub fast float %826, %823
  %829 = call float @dx.op.dot2.f32(i32 54, float %827, float %828, float %827, float %828)  ; Dot2(ax,ay,bx,by)
  %830 = call float @dx.op.unary.f32(i32 25, float %829)  ; Rsqrt(value)
  %831 = fmul fast float %827, %830
  %832 = fmul fast float %828, %830
  %833 = fmul fast float %827, %827
  %834 = fmul fast float %828, %828
  %835 = fadd fast float %833, %834
  %836 = call float @dx.op.unary.f32(i32 24, float %835)  ; Sqrt(value)
  %837 = fmul fast float %836, 5.000000e-01
  %838 = fcmp fast olt float %837, %747
  br i1 %838, label %839, label %840, !dx.controlflow.hints !43

; <label>:839                                     ; preds = %748
  br label %840

; <label>:840                                     ; preds = %839, %748, %616
  %841 = phi float [ %747, %616 ], [ %837, %839 ], [ %747, %748 ]
  %842 = phi float [ %747, %616 ], [ %747, %839 ], [ %837, %748 ]
  %843 = phi float [ %741, %616 ], [ %741, %839 ], [ %831, %748 ]
  %844 = phi float [ %742, %616 ], [ %742, %839 ], [ %832, %748 ]
  %845 = fmul fast float %841, %428
  %846 = fdiv fast float %845, %842
  %847 = fsub fast float %428, %846
  %848 = fmul fast float %843, %843
  %849 = fmul fast float %848, %847
  %850 = fadd fast float %849, %846
  %851 = fmul fast float %844, %843
  %852 = fmul fast float %851, %847
  %853 = fmul fast float %844, %844
  %854 = fmul fast float %853, %847
  %855 = fadd fast float %854, %846
  %856 = fmul fast float %850, %512
  %857 = call float @dx.op.tertiary.f32(i32 46, float %511, float %852, float %856)  ; FMad(a,b,c)
  %858 = fmul fast float %852, %512
  %859 = call float @dx.op.tertiary.f32(i32 46, float %511, float %855, float %858)  ; FMad(a,b,c)
  %860 = fmul fast float %850, %513
  %861 = call float @dx.op.tertiary.f32(i32 46, float %512, float %852, float %860)  ; FMad(a,b,c)
  %862 = fmul fast float %852, %513
  %863 = call float @dx.op.tertiary.f32(i32 46, float %512, float %855, float %862)  ; FMad(a,b,c)
  br label %864

; <label>:864                                     ; preds = %902, %840
  %865 = phi float [ 0.000000e+00, %840 ], [ %903, %902 ]
  %866 = phi float [ 0.000000e+00, %840 ], [ %904, %902 ]
  %867 = phi float [ 0.000000e+00, %840 ], [ %905, %902 ]
  %868 = phi float [ 0.000000e+00, %840 ], [ %906, %902 ]
  %869 = phi i32 [ 0, %840 ], [ %907, %902 ]
  %870 = mul i32 %869, 2
  %871 = add i32 0, %870
  %872 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %871
  %873 = load float, float* %872, align 4
  %874 = mul i32 %869, 2
  %875 = add i32 1, %874
  %876 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %875
  %877 = load float, float* %876, align 4
  %878 = fmul fast float %873, %857
  %879 = call float @dx.op.tertiary.f32(i32 46, float %877, float %861, float %878)  ; FMad(a,b,c)
  %880 = fmul fast float %873, %859
  %881 = call float @dx.op.tertiary.f32(i32 46, float %877, float %863, float %880)  ; FMad(a,b,c)
  %882 = fadd fast float %879, %506
  %883 = fadd fast float %881, %507
  %884 = fmul fast float %882, %423
  %885 = fmul fast float %883, %423
  %886 = call float @dx.op.binary.f32(i32 35, float %884, float %419)  ; FMax(a,b)
  %887 = call float @dx.op.binary.f32(i32 35, float %885, float %419)  ; FMax(a,b)
  %888 = call float @dx.op.binary.f32(i32 36, float %886, float %420)  ; FMin(a,b)
  %889 = call float @dx.op.binary.f32(i32 36, float %887, float %420)  ; FMin(a,b)
  %890 = fadd fast float %888, %417
  %891 = fadd fast float %889, %418
  %892 = uitofp i32 %479 to float
  %893 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %15, float %890, float %891, float %892, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %894 = extractvalue %dx.types.ResRet.f32 %893, 0
  %895 = fadd fast float %509, %427
  %896 = fcmp fast olt float %895, %894
  br i1 %896, label %897, label %902, !dx.controlflow.hints !44

; <label>:897                                     ; preds = %864
  %898 = fadd fast float %894, %867
  %899 = fadd fast float %879, %865
  %900 = fadd fast float %881, %866
  %901 = fadd fast float %868, 1.000000e+00
  br label %902

; <label>:902                                     ; preds = %897, %864
  %903 = phi float [ %899, %897 ], [ %865, %864 ]
  %904 = phi float [ %900, %897 ], [ %866, %864 ]
  %905 = phi float [ %898, %897 ], [ %867, %864 ]
  %906 = phi float [ %901, %897 ], [ %868, %864 ]
  %907 = add nuw nsw i32 %869, 1
  %908 = icmp eq i32 %907, 8
  br i1 %908, label %909, label %864

; <label>:909                                     ; preds = %902
  %910 = fdiv fast float 1.000000e+00, %906
  %911 = fcmp fast oeq float %906, 0.000000e+00
  %912 = fmul fast float %910, %905
  %913 = select i1 %911, float -1.000000e+00, float %912
  %914 = fcmp fast olt float %913, 0.000000e+00
  br i1 %914, label %1201, label %915, !dx.controlflow.hints !45

; <label>:915                                     ; preds = %909
  %916 = fmul fast float %910, %904
  %917 = select i1 %911, float 0.000000e+00, float %916
  %918 = fmul fast float %910, %903
  %919 = select i1 %911, float 0.000000e+00, float %918
  %920 = fadd fast float %919, %506
  %921 = fadd fast float %917, %507
  br i1 %482, label %922, label %926, !dx.controlflow.hints !41

; <label>:922                                     ; preds = %915
  %923 = fcmp fast olt float %606, 0x3FE6666660000000
  %924 = select i1 %923, float 1.000000e+00, float 0.000000e+00
  %925 = select i1 %923, float 0.000000e+00, float 1.000000e+00
  br label %926

; <label>:926                                     ; preds = %922, %915
  %927 = phi float [ 0.000000e+00, %922 ], [ %609, %915 ]
  %928 = phi float [ %924, %922 ], [ %610, %915 ]
  %929 = phi float [ %925, %922 ], [ %611, %915 ]
  %930 = fmul fast float %928, %607
  %931 = fmul fast float %929, %606
  %932 = fsub fast float %930, %931
  %933 = fmul fast float %929, %605
  %934 = fmul fast float %927, %607
  %935 = fsub fast float %933, %934
  %936 = fmul fast float %927, %606
  %937 = fmul fast float %928, %605
  %938 = fsub fast float %936, %937
  %939 = call float @dx.op.dot3.f32(i32 55, float %932, float %935, float %938, float %932, float %935, float %938)  ; Dot3(ax,ay,az,bx,by,bz)
  %940 = call float @dx.op.unary.f32(i32 25, float %939)  ; Rsqrt(value)
  %941 = fmul fast float %940, %305
  %942 = fmul fast float %941, %932
  %943 = fmul fast float %941, %935
  %944 = fmul fast float %938, %305
  %945 = fmul fast float %944, %940
  %946 = fmul fast float %920, %457
  %947 = call float @dx.op.tertiary.f32(i32 46, float %921, float %463, float %946)  ; FMad(a,b,c)
  %948 = call float @dx.op.tertiary.f32(i32 46, float %913, float %469, float %947)  ; FMad(a,b,c)
  %949 = fadd fast float %948, %475
  %950 = fmul fast float %920, %458
  %951 = call float @dx.op.tertiary.f32(i32 46, float %921, float %464, float %950)  ; FMad(a,b,c)
  %952 = call float @dx.op.tertiary.f32(i32 46, float %913, float %470, float %951)  ; FMad(a,b,c)
  %953 = fadd fast float %952, %476
  %954 = fmul fast float %920, %459
  %955 = call float @dx.op.tertiary.f32(i32 46, float %921, float %465, float %954)  ; FMad(a,b,c)
  %956 = call float @dx.op.tertiary.f32(i32 46, float %913, float %471, float %955)  ; FMad(a,b,c)
  %957 = fadd fast float %956, %477
  %958 = fmul fast float %920, %460
  %959 = call float @dx.op.tertiary.f32(i32 46, float %921, float %466, float %958)  ; FMad(a,b,c)
  %960 = call float @dx.op.tertiary.f32(i32 46, float %913, float %472, float %959)  ; FMad(a,b,c)
  %961 = fadd fast float %960, %478
  %962 = fdiv fast float 1.000000e+00, %961
  %963 = fmul fast float %962, %949
  %964 = fmul fast float %962, %953
  %965 = fmul fast float %962, %957
  %966 = fsub fast float %308, %942
  %967 = fsub fast float %309, %943
  %968 = fsub fast float %310, %945
  %969 = fsub fast float %963, %966
  %970 = fsub fast float %964, %967
  %971 = fsub fast float %965, %968
  %972 = call float @dx.op.dot3.f32(i32 55, float %969, float %970, float %971, float %969, float %970, float %971)  ; Dot3(ax,ay,az,bx,by,bz)
  %973 = call float @dx.op.unary.f32(i32 25, float %972)  ; Rsqrt(value)
  %974 = fmul fast float %969, %973
  %975 = fmul fast float %970, %973
  %976 = fmul fast float %971, %973
  %977 = fsub fast float %487, %966
  %978 = fsub fast float %488, %967
  %979 = fsub fast float %489, %968
  %980 = call float @dx.op.dot3.f32(i32 55, float %656, float %657, float %658, float %977, float %978, float %979)  ; Dot3(ax,ay,az,bx,by,bz)
  %981 = call float @dx.op.dot3.f32(i32 55, float %656, float %657, float %658, float %974, float %975, float %976)  ; Dot3(ax,ay,az,bx,by,bz)
  %982 = fdiv fast float 1.000000e+00, %981
  %983 = fmul fast float %982, %980
  %984 = fmul fast float %983, %974
  %985 = fmul fast float %983, %975
  %986 = fmul fast float %983, %976
  %987 = fadd fast float %984, %966
  %988 = fadd fast float %985, %967
  %989 = fadd fast float %986, %968
  %990 = fadd fast float %942, %308
  %991 = fadd fast float %943, %309
  %992 = fadd fast float %945, %310
  %993 = fsub fast float %963, %990
  %994 = fsub fast float %964, %991
  %995 = fsub fast float %965, %992
  %996 = call float @dx.op.dot3.f32(i32 55, float %993, float %994, float %995, float %993, float %994, float %995)  ; Dot3(ax,ay,az,bx,by,bz)
  %997 = call float @dx.op.unary.f32(i32 25, float %996)  ; Rsqrt(value)
  %998 = fmul fast float %997, %993
  %999 = fmul fast float %997, %994
  %1000 = fmul fast float %997, %995
  %1001 = fsub fast float %487, %990
  %1002 = fsub fast float %488, %991
  %1003 = fsub fast float %489, %992
  %1004 = call float @dx.op.dot3.f32(i32 55, float %656, float %657, float %658, float %1001, float %1002, float %1003)  ; Dot3(ax,ay,az,bx,by,bz)
  %1005 = call float @dx.op.dot3.f32(i32 55, float %656, float %657, float %658, float %998, float %999, float %1000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1006 = fdiv fast float 1.000000e+00, %1005
  %1007 = fmul fast float %1006, %1004
  %1008 = fmul fast float %1007, %998
  %1009 = fmul fast float %1007, %999
  %1010 = fmul fast float %1007, %1000
  %1011 = fadd fast float %1008, %990
  %1012 = fadd fast float %1009, %991
  %1013 = fadd fast float %1010, %992
  %1014 = fmul fast float %987, %433
  %1015 = call float @dx.op.tertiary.f32(i32 46, float %988, float %439, float %1014)  ; FMad(a,b,c)
  %1016 = call float @dx.op.tertiary.f32(i32 46, float %989, float %445, float %1015)  ; FMad(a,b,c)
  %1017 = fadd fast float %1016, %451
  %1018 = fmul fast float %987, %434
  %1019 = call float @dx.op.tertiary.f32(i32 46, float %988, float %440, float %1018)  ; FMad(a,b,c)
  %1020 = call float @dx.op.tertiary.f32(i32 46, float %989, float %446, float %1019)  ; FMad(a,b,c)
  %1021 = fadd fast float %1020, %452
  %1022 = fmul fast float %987, %436
  %1023 = call float @dx.op.tertiary.f32(i32 46, float %988, float %442, float %1022)  ; FMad(a,b,c)
  %1024 = call float @dx.op.tertiary.f32(i32 46, float %989, float %448, float %1023)  ; FMad(a,b,c)
  %1025 = fadd fast float %1024, %454
  %1026 = fmul fast float %1011, %433
  %1027 = call float @dx.op.tertiary.f32(i32 46, float %1012, float %439, float %1026)  ; FMad(a,b,c)
  %1028 = call float @dx.op.tertiary.f32(i32 46, float %1013, float %445, float %1027)  ; FMad(a,b,c)
  %1029 = fadd fast float %1028, %451
  %1030 = fmul fast float %1011, %434
  %1031 = call float @dx.op.tertiary.f32(i32 46, float %1012, float %440, float %1030)  ; FMad(a,b,c)
  %1032 = call float @dx.op.tertiary.f32(i32 46, float %1013, float %446, float %1031)  ; FMad(a,b,c)
  %1033 = fadd fast float %1032, %452
  %1034 = fmul fast float %1011, %436
  %1035 = call float @dx.op.tertiary.f32(i32 46, float %1012, float %442, float %1034)  ; FMad(a,b,c)
  %1036 = call float @dx.op.tertiary.f32(i32 46, float %1013, float %448, float %1035)  ; FMad(a,b,c)
  %1037 = fadd fast float %1036, %454
  %1038 = fdiv fast float 1.000000e+00, %1025
  %1039 = fmul fast float %1038, %1017
  %1040 = fmul fast float %1038, %1021
  %1041 = fdiv fast float 1.000000e+00, %1037
  %1042 = fmul fast float %1041, %1029
  %1043 = fmul fast float %1041, %1033
  %1044 = fsub fast float %1042, %1039
  %1045 = fsub fast float %1043, %1040
  %1046 = call float @dx.op.dot2.f32(i32 54, float %1044, float %1045, float %1044, float %1045)  ; Dot2(ax,ay,bx,by)
  %1047 = call float @dx.op.unary.f32(i32 25, float %1046)  ; Rsqrt(value)
  %1048 = fmul fast float %1044, %1047
  %1049 = fmul fast float %1045, %1047
  %1050 = fmul fast float %1044, %1044
  %1051 = fmul fast float %1045, %1045
  %1052 = fadd fast float %1050, %1051
  %1053 = call float @dx.op.unary.f32(i32 24, float %1052)  ; Sqrt(value)
  %1054 = fmul fast float %1053, 5.000000e-01
  br i1 %482, label %1147, label %1055, !dx.controlflow.hints !42

; <label>:1055                                    ; preds = %926
  %1056 = fsub fast float %308, %300
  %1057 = fsub fast float %309, %301
  %1058 = fsub fast float %310, %302
  %1059 = fsub fast float %963, %1056
  %1060 = fsub fast float %964, %1057
  %1061 = fsub fast float %965, %1058
  %1062 = call float @dx.op.dot3.f32(i32 55, float %1059, float %1060, float %1061, float %1059, float %1060, float %1061)  ; Dot3(ax,ay,az,bx,by,bz)
  %1063 = call float @dx.op.unary.f32(i32 25, float %1062)  ; Rsqrt(value)
  %1064 = fmul fast float %1063, %1059
  %1065 = fmul fast float %1063, %1060
  %1066 = fmul fast float %1063, %1061
  %1067 = fsub fast float %487, %1056
  %1068 = fsub fast float %488, %1057
  %1069 = fsub fast float %489, %1058
  %1070 = call float @dx.op.dot3.f32(i32 55, float %656, float %657, float %658, float %1067, float %1068, float %1069)  ; Dot3(ax,ay,az,bx,by,bz)
  %1071 = call float @dx.op.dot3.f32(i32 55, float %656, float %657, float %658, float %1064, float %1065, float %1066)  ; Dot3(ax,ay,az,bx,by,bz)
  %1072 = fdiv fast float 1.000000e+00, %1071
  %1073 = fmul fast float %1072, %1070
  %1074 = fmul fast float %1073, %1064
  %1075 = fmul fast float %1073, %1065
  %1076 = fmul fast float %1073, %1066
  %1077 = fadd fast float %1074, %1056
  %1078 = fadd fast float %1075, %1057
  %1079 = fadd fast float %1076, %1058
  %1080 = fadd fast float %308, %300
  %1081 = fadd fast float %309, %301
  %1082 = fadd fast float %310, %302
  %1083 = fsub fast float %963, %1080
  %1084 = fsub fast float %964, %1081
  %1085 = fsub fast float %965, %1082
  %1086 = call float @dx.op.dot3.f32(i32 55, float %1083, float %1084, float %1085, float %1083, float %1084, float %1085)  ; Dot3(ax,ay,az,bx,by,bz)
  %1087 = call float @dx.op.unary.f32(i32 25, float %1086)  ; Rsqrt(value)
  %1088 = fmul fast float %1087, %1083
  %1089 = fmul fast float %1087, %1084
  %1090 = fmul fast float %1087, %1085
  %1091 = fsub fast float %487, %1080
  %1092 = fsub fast float %488, %1081
  %1093 = fsub fast float %489, %1082
  %1094 = call float @dx.op.dot3.f32(i32 55, float %656, float %657, float %658, float %1091, float %1092, float %1093)  ; Dot3(ax,ay,az,bx,by,bz)
  %1095 = call float @dx.op.dot3.f32(i32 55, float %656, float %657, float %658, float %1088, float %1089, float %1090)  ; Dot3(ax,ay,az,bx,by,bz)
  %1096 = fdiv fast float 1.000000e+00, %1095
  %1097 = fmul fast float %1096, %1094
  %1098 = fmul fast float %1097, %1088
  %1099 = fmul fast float %1097, %1089
  %1100 = fmul fast float %1097, %1090
  %1101 = fadd fast float %1098, %1080
  %1102 = fadd fast float %1099, %1081
  %1103 = fadd fast float %1100, %1082
  %1104 = fmul fast float %1077, %433
  %1105 = call float @dx.op.tertiary.f32(i32 46, float %1078, float %439, float %1104)  ; FMad(a,b,c)
  %1106 = call float @dx.op.tertiary.f32(i32 46, float %1079, float %445, float %1105)  ; FMad(a,b,c)
  %1107 = fadd fast float %1106, %451
  %1108 = fmul fast float %1077, %434
  %1109 = call float @dx.op.tertiary.f32(i32 46, float %1078, float %440, float %1108)  ; FMad(a,b,c)
  %1110 = call float @dx.op.tertiary.f32(i32 46, float %1079, float %446, float %1109)  ; FMad(a,b,c)
  %1111 = fadd fast float %1110, %452
  %1112 = fmul fast float %1077, %436
  %1113 = call float @dx.op.tertiary.f32(i32 46, float %1078, float %442, float %1112)  ; FMad(a,b,c)
  %1114 = call float @dx.op.tertiary.f32(i32 46, float %1079, float %448, float %1113)  ; FMad(a,b,c)
  %1115 = fadd fast float %1114, %454
  %1116 = fmul fast float %1101, %433
  %1117 = call float @dx.op.tertiary.f32(i32 46, float %1102, float %439, float %1116)  ; FMad(a,b,c)
  %1118 = call float @dx.op.tertiary.f32(i32 46, float %1103, float %445, float %1117)  ; FMad(a,b,c)
  %1119 = fadd fast float %1118, %451
  %1120 = fmul fast float %1101, %434
  %1121 = call float @dx.op.tertiary.f32(i32 46, float %1102, float %440, float %1120)  ; FMad(a,b,c)
  %1122 = call float @dx.op.tertiary.f32(i32 46, float %1103, float %446, float %1121)  ; FMad(a,b,c)
  %1123 = fadd fast float %1122, %452
  %1124 = fmul fast float %1101, %436
  %1125 = call float @dx.op.tertiary.f32(i32 46, float %1102, float %442, float %1124)  ; FMad(a,b,c)
  %1126 = call float @dx.op.tertiary.f32(i32 46, float %1103, float %448, float %1125)  ; FMad(a,b,c)
  %1127 = fadd fast float %1126, %454
  %1128 = fdiv fast float 1.000000e+00, %1115
  %1129 = fmul fast float %1128, %1107
  %1130 = fmul fast float %1128, %1111
  %1131 = fdiv fast float 1.000000e+00, %1127
  %1132 = fmul fast float %1131, %1119
  %1133 = fmul fast float %1131, %1123
  %1134 = fsub fast float %1132, %1129
  %1135 = fsub fast float %1133, %1130
  %1136 = call float @dx.op.dot2.f32(i32 54, float %1134, float %1135, float %1134, float %1135)  ; Dot2(ax,ay,bx,by)
  %1137 = call float @dx.op.unary.f32(i32 25, float %1136)  ; Rsqrt(value)
  %1138 = fmul fast float %1134, %1137
  %1139 = fmul fast float %1135, %1137
  %1140 = fmul fast float %1134, %1134
  %1141 = fmul fast float %1135, %1135
  %1142 = fadd fast float %1140, %1141
  %1143 = call float @dx.op.unary.f32(i32 24, float %1142)  ; Sqrt(value)
  %1144 = fmul fast float %1143, 5.000000e-01
  %1145 = fcmp fast olt float %1144, %1054
  br i1 %1145, label %1146, label %1147, !dx.controlflow.hints !43

; <label>:1146                                    ; preds = %1055
  br label %1147

; <label>:1147                                    ; preds = %1146, %1055, %926
  %1148 = phi float [ %1054, %926 ], [ %1144, %1146 ], [ %1054, %1055 ]
  %1149 = phi float [ %1054, %926 ], [ %1054, %1146 ], [ %1144, %1055 ]
  %1150 = phi float [ %1048, %926 ], [ %1048, %1146 ], [ %1138, %1055 ]
  %1151 = phi float [ %1049, %926 ], [ %1049, %1146 ], [ %1139, %1055 ]
  %1152 = fsub fast float %1149, %1148
  %1153 = fmul fast float %1150, %1150
  %1154 = fmul fast float %1153, %1152
  %1155 = fadd fast float %1154, %1148
  %1156 = fmul fast float %1150, %1152
  %1157 = fmul fast float %1156, %1151
  %1158 = fmul fast float %1151, %1151
  %1159 = fmul fast float %1158, %1152
  %1160 = fadd fast float %1159, %1148
  %1161 = fmul fast float %1155, %512
  %1162 = call float @dx.op.tertiary.f32(i32 46, float %511, float %1157, float %1161)  ; FMad(a,b,c)
  %1163 = fmul fast float %1157, %512
  %1164 = call float @dx.op.tertiary.f32(i32 46, float %511, float %1160, float %1163)  ; FMad(a,b,c)
  %1165 = fmul fast float %1155, %513
  %1166 = call float @dx.op.tertiary.f32(i32 46, float %512, float %1157, float %1165)  ; FMad(a,b,c)
  %1167 = fmul fast float %1157, %513
  %1168 = call float @dx.op.tertiary.f32(i32 46, float %512, float %1160, float %1167)  ; FMad(a,b,c)
  br label %1169

; <label>:1169                                    ; preds = %1169, %1147
  %1170 = phi float [ 0.000000e+00, %1147 ], [ %1196, %1169 ]
  %1171 = phi i32 [ 0, %1147 ], [ %1197, %1169 ]
  %1172 = mul i32 %1171, 2
  %1173 = add i32 0, %1172
  %1174 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1173
  %1175 = load float, float* %1174, align 4
  %1176 = mul i32 %1171, 2
  %1177 = add i32 1, %1176
  %1178 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1177
  %1179 = load float, float* %1178, align 4
  %1180 = fmul fast float %1175, %1162
  %1181 = call float @dx.op.tertiary.f32(i32 46, float %1179, float %1166, float %1180)  ; FMad(a,b,c)
  %1182 = fmul fast float %1175, %1164
  %1183 = call float @dx.op.tertiary.f32(i32 46, float %1179, float %1168, float %1182)  ; FMad(a,b,c)
  %1184 = fadd fast float %1181, %506
  %1185 = fadd fast float %1183, %507
  %1186 = fmul fast float %1184, %423
  %1187 = fmul fast float %1185, %423
  %1188 = call float @dx.op.binary.f32(i32 35, float %1186, float %419)  ; FMax(a,b)
  %1189 = call float @dx.op.binary.f32(i32 35, float %1187, float %419)  ; FMax(a,b)
  %1190 = call float @dx.op.binary.f32(i32 36, float %1188, float %420)  ; FMin(a,b)
  %1191 = call float @dx.op.binary.f32(i32 36, float %1189, float %420)  ; FMin(a,b)
  %1192 = fadd fast float %1190, %417
  %1193 = fadd fast float %1191, %418
  %1194 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %16, float %1192, float %1193, float %892, float undef, i32 0, i32 0, i32 undef, float %895)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1195 = extractvalue %dx.types.ResRet.f32 %1194, 0
  %1196 = fadd fast float %1195, %1170
  %1197 = add nuw nsw i32 %1171, 1
  %1198 = icmp eq i32 %1197, 8
  br i1 %1198, label %1199, label %1169

; <label>:1199                                    ; preds = %1169
  %1200 = fmul fast float %1196, 1.250000e-01
  br label %1201

; <label>:1201                                    ; preds = %1199, %909, %558
  %1202 = phi float [ %585, %558 ], [ %1200, %1199 ], [ 1.000000e+00, %909 ]
  %1203 = fcmp fast ogt float %1202, 0.000000e+00
  %1204 = xor i1 %51, true
  %1205 = and i1 %1203, %1204
  %1206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1207 = extractvalue %dx.types.CBufRet.f32 %1206, 1
  %1208 = fcmp fast olt float %1207, 0.000000e+00
  %1209 = and i1 %1205, %1208
  br i1 %1209, label %1210, label %1321, !dx.controlflow.hints !46

; <label>:1210                                    ; preds = %1201
  %1211 = fadd fast float %506, %419
  %1212 = fadd fast float %507, %419
  %1213 = fadd fast float %509, %427
  %1214 = fmul fast float %506, %457
  %1215 = call float @dx.op.tertiary.f32(i32 46, float %507, float %463, float %1214)  ; FMad(a,b,c)
  %1216 = call float @dx.op.tertiary.f32(i32 46, float %509, float %469, float %1215)  ; FMad(a,b,c)
  %1217 = fadd fast float %1216, %475
  %1218 = fmul fast float %506, %458
  %1219 = call float @dx.op.tertiary.f32(i32 46, float %507, float %464, float %1218)  ; FMad(a,b,c)
  %1220 = call float @dx.op.tertiary.f32(i32 46, float %509, float %470, float %1219)  ; FMad(a,b,c)
  %1221 = fadd fast float %1220, %476
  %1222 = fmul fast float %506, %459
  %1223 = call float @dx.op.tertiary.f32(i32 46, float %507, float %465, float %1222)  ; FMad(a,b,c)
  %1224 = call float @dx.op.tertiary.f32(i32 46, float %509, float %471, float %1223)  ; FMad(a,b,c)
  %1225 = fadd fast float %1224, %477
  %1226 = fmul fast float %506, %460
  %1227 = call float @dx.op.tertiary.f32(i32 46, float %507, float %466, float %1226)  ; FMad(a,b,c)
  %1228 = call float @dx.op.tertiary.f32(i32 46, float %509, float %472, float %1227)  ; FMad(a,b,c)
  %1229 = fadd fast float %1228, %478
  %1230 = fmul fast float %1211, %457
  %1231 = call float @dx.op.tertiary.f32(i32 46, float %1212, float %463, float %1230)  ; FMad(a,b,c)
  %1232 = call float @dx.op.tertiary.f32(i32 46, float %1213, float %469, float %1231)  ; FMad(a,b,c)
  %1233 = fadd fast float %1232, %475
  %1234 = fmul fast float %1211, %458
  %1235 = call float @dx.op.tertiary.f32(i32 46, float %1212, float %464, float %1234)  ; FMad(a,b,c)
  %1236 = call float @dx.op.tertiary.f32(i32 46, float %1213, float %470, float %1235)  ; FMad(a,b,c)
  %1237 = fadd fast float %1236, %476
  %1238 = fmul fast float %1211, %459
  %1239 = call float @dx.op.tertiary.f32(i32 46, float %1212, float %465, float %1238)  ; FMad(a,b,c)
  %1240 = call float @dx.op.tertiary.f32(i32 46, float %1213, float %471, float %1239)  ; FMad(a,b,c)
  %1241 = fadd fast float %1240, %477
  %1242 = fmul fast float %1211, %460
  %1243 = call float @dx.op.tertiary.f32(i32 46, float %1212, float %466, float %1242)  ; FMad(a,b,c)
  %1244 = call float @dx.op.tertiary.f32(i32 46, float %1213, float %472, float %1243)  ; FMad(a,b,c)
  %1245 = fadd fast float %1244, %478
  %1246 = fdiv fast float 1.000000e+00, %1229
  %1247 = fmul fast float %1246, %1217
  %1248 = fmul fast float %1246, %1221
  %1249 = fmul fast float %1246, %1225
  %1250 = fdiv fast float 1.000000e+00, %1245
  %1251 = fmul fast float %1250, %1233
  %1252 = fmul fast float %1250, %1237
  %1253 = fmul fast float %1250, %1241
  %1254 = fsub fast float %1247, %1251
  %1255 = fsub fast float %1248, %1252
  %1256 = fsub fast float %1249, %1253
  %1257 = fmul fast float %1254, %1254
  %1258 = fmul fast float %1255, %1255
  %1259 = fadd fast float %1257, %1258
  %1260 = fmul fast float %1256, %1256
  %1261 = fadd fast float %1259, %1260
  %1262 = call float @dx.op.unary.f32(i32 24, float %1261)  ; Sqrt(value)
  %1263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1264 = extractvalue %dx.types.CBufRet.f32 %1263, 0
  %1265 = extractvalue %dx.types.CBufRet.f32 %1263, 1
  %1266 = extractvalue %dx.types.CBufRet.f32 %1263, 2
  %1267 = extractvalue %dx.types.CBufRet.f32 %1263, 3
  %1268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1269 = extractvalue %dx.types.CBufRet.f32 %1268, 0
  %1270 = extractvalue %dx.types.CBufRet.f32 %1268, 1
  %1271 = extractvalue %dx.types.CBufRet.f32 %1268, 2
  %1272 = extractvalue %dx.types.CBufRet.f32 %1268, 3
  %1273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1274 = extractvalue %dx.types.CBufRet.f32 %1273, 0
  %1275 = extractvalue %dx.types.CBufRet.f32 %1273, 1
  %1276 = extractvalue %dx.types.CBufRet.f32 %1273, 2
  %1277 = extractvalue %dx.types.CBufRet.f32 %1273, 3
  %1278 = fmul fast float %1264, %1247
  %1279 = call float @dx.op.tertiary.f32(i32 46, float %1248, float %1265, float %1278)  ; FMad(a,b,c)
  %1280 = call float @dx.op.tertiary.f32(i32 46, float %1249, float %1266, float %1279)  ; FMad(a,b,c)
  %1281 = call float @dx.op.tertiary.f32(i32 46, float %1229, float %1267, float %1280)  ; FMad(a,b,c)
  %1282 = fmul fast float %1269, %1247
  %1283 = call float @dx.op.tertiary.f32(i32 46, float %1248, float %1270, float %1282)  ; FMad(a,b,c)
  %1284 = call float @dx.op.tertiary.f32(i32 46, float %1249, float %1271, float %1283)  ; FMad(a,b,c)
  %1285 = call float @dx.op.tertiary.f32(i32 46, float %1229, float %1272, float %1284)  ; FMad(a,b,c)
  %1286 = fmul fast float %1274, %1247
  %1287 = call float @dx.op.tertiary.f32(i32 46, float %1248, float %1275, float %1286)  ; FMad(a,b,c)
  %1288 = call float @dx.op.tertiary.f32(i32 46, float %1249, float %1276, float %1287)  ; FMad(a,b,c)
  %1289 = call float @dx.op.tertiary.f32(i32 46, float %1229, float %1277, float %1288)  ; FMad(a,b,c)
  %1290 = fmul fast float %1264, %1251
  %1291 = call float @dx.op.tertiary.f32(i32 46, float %1252, float %1265, float %1290)  ; FMad(a,b,c)
  %1292 = call float @dx.op.tertiary.f32(i32 46, float %1253, float %1266, float %1291)  ; FMad(a,b,c)
  %1293 = call float @dx.op.tertiary.f32(i32 46, float %1245, float %1267, float %1292)  ; FMad(a,b,c)
  %1294 = fmul fast float %1269, %1251
  %1295 = call float @dx.op.tertiary.f32(i32 46, float %1252, float %1270, float %1294)  ; FMad(a,b,c)
  %1296 = call float @dx.op.tertiary.f32(i32 46, float %1253, float %1271, float %1295)  ; FMad(a,b,c)
  %1297 = call float @dx.op.tertiary.f32(i32 46, float %1245, float %1272, float %1296)  ; FMad(a,b,c)
  %1298 = fmul fast float %1274, %1251
  %1299 = call float @dx.op.tertiary.f32(i32 46, float %1252, float %1275, float %1298)  ; FMad(a,b,c)
  %1300 = call float @dx.op.tertiary.f32(i32 46, float %1253, float %1276, float %1299)  ; FMad(a,b,c)
  %1301 = call float @dx.op.tertiary.f32(i32 46, float %1245, float %1277, float %1300)  ; FMad(a,b,c)
  %1302 = fdiv fast float 1.000000e+00, %1289
  %1303 = fmul fast float %1302, %1281
  %1304 = fmul fast float %1302, %1285
  %1305 = fdiv fast float 1.000000e+00, %1301
  %1306 = fmul fast float %1305, %1293
  %1307 = fmul fast float %1305, %1297
  %1308 = fsub fast float %1303, %1306
  %1309 = fsub fast float %1304, %1307
  %1310 = fmul fast float %1308, 5.000000e-01
  %1311 = fmul fast float %1309, 5.000000e-01
  %1312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1313 = extractvalue %dx.types.CBufRet.f32 %1312, 0
  %1314 = extractvalue %dx.types.CBufRet.f32 %1312, 1
  %1315 = fmul fast float %1310, %1313
  %1316 = fmul fast float %1311, %1314
  %1317 = fmul fast float %1315, %1315
  %1318 = fmul fast float %1316, %1316
  %1319 = fadd fast float %1317, %1318
  %1320 = call float @dx.op.unary.f32(i32 24, float %1319)  ; Sqrt(value)
  br label %1321

; <label>:1321                                    ; preds = %1210, %1201
  %1322 = phi float [ %1262, %1210 ], [ 0.000000e+00, %1201 ]
  %1323 = phi float [ %1320, %1210 ], [ 0.000000e+00, %1201 ]
  %1324 = fadd fast float %1202, -1.000000e+00
  %1325 = fmul fast float %1324, %396
  %1326 = fadd fast float %1325, 1.000000e+00
  %1327 = fmul fast float %1326, %408
  br label %1328

; <label>:1328                                    ; preds = %1321, %375
  %1329 = phi float [ %1327, %1321 ], [ %408, %375 ]
  %1330 = phi float [ %1322, %1321 ], [ 0.000000e+00, %375 ]
  %1331 = phi float [ %1323, %1321 ], [ 0.000000e+00, %375 ]
  %1332 = call float @dx.op.binary.f32(i32 36, float %1329, float %1329)  ; FMin(a,b)
  %1333 = call float @dx.op.binary.f32(i32 36, float %1329, float %1332)  ; FMin(a,b)
  %1334 = fcmp fast ogt float %1333, 0.000000e+00
  %1335 = call float @dx.op.dot3.f32(i32 55, float %142, float %143, float %144, float %348, float %349, float %350)  ; Dot3(ax,ay,az,bx,by,bz)
  %1336 = fcmp fast ogt float %1335, 0.000000e+00
  %1337 = and i1 %1334, %1336
  br i1 %1337, label %1338, label %1619, !dx.controlflow.hints !47

; <label>:1338                                    ; preds = %1328
  %1339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1340 = extractvalue %dx.types.CBufRet.f32 %1339, 1
  %1341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1342 = extractvalue %dx.types.CBufRet.f32 %1341, 1
  %1343 = select i1 %51, float %1340, float %1342
  %1344 = extractvalue %dx.types.CBufRet.f32 %1339, 2
  %1345 = extractvalue %dx.types.CBufRet.f32 %1341, 2
  %1346 = select i1 %51, float %1344, float %1345
  %1347 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1348 = extractvalue %dx.types.CBufRet.i32 %1347, 0
  %1349 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1350 = extractvalue %dx.types.CBufRet.i32 %1349, 0
  %1351 = select i1 %51, i32 %1348, i32 %1350
  %1352 = fcmp fast ogt float %1330, 0.000000e+00
  br i1 %1352, label %1353, label %1357, !dx.controlflow.hints !48

; <label>:1353                                    ; preds = %1338
  %1354 = fptosi float %1331 to i32
  %1355 = call i32 @dx.op.binary.i32(i32 37, i32 %1354, i32 1)  ; IMax(a,b)
  %1356 = call i32 @dx.op.binary.i32(i32 38, i32 %1355, i32 16)  ; IMin(a,b)
  br label %1357

; <label>:1357                                    ; preds = %1353, %1338
  %1358 = phi float [ 0.000000e+00, %1353 ], [ 1.000000e+00, %1338 ]
  %1359 = phi float [ %1330, %1353 ], [ %1343, %1338 ]
  %1360 = phi i32 [ %1356, %1353 ], [ %1351, %1338 ]
  %1361 = fcmp fast olt float %1359, 5.000000e-01
  %1362 = icmp eq i32 %1360, 0
  %1363 = or i1 %1361, %1362
  br i1 %1363, label %1614, label %1364, !dx.controlflow.hints !49

; <label>:1364                                    ; preds = %1357
  %1365 = fsub fast float %308, %113
  %1366 = fsub fast float %309, %114
  %1367 = fsub fast float %310, %115
  %1368 = fmul fast float %1365, %1365
  %1369 = fmul fast float %1366, %1366
  %1370 = fadd fast float %1368, %1369
  %1371 = fmul fast float %1367, %1367
  %1372 = fadd fast float %1370, %1371
  %1373 = call float @dx.op.unary.f32(i32 24, float %1372)  ; Sqrt(value)
  %1374 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1375 = extractvalue %dx.types.CBufRet.i32 %1374, 0
  %1376 = uitofp i32 %1375 to float
  %1377 = fmul fast float %1359, %305
  %1378 = fdiv fast float %1377, %1373
  %1379 = call float @dx.op.binary.f32(i32 36, float %1378, float 1.000000e+01)  ; FMin(a,b)
  %1380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %1381 = extractvalue %dx.types.CBufRet.f32 %1380, 0
  %1382 = extractvalue %dx.types.CBufRet.f32 %1380, 1
  %1383 = extractvalue %dx.types.CBufRet.f32 %1380, 2
  %1384 = extractvalue %dx.types.CBufRet.f32 %1380, 3
  %1385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %1386 = extractvalue %dx.types.CBufRet.f32 %1385, 0
  %1387 = extractvalue %dx.types.CBufRet.f32 %1385, 1
  %1388 = extractvalue %dx.types.CBufRet.f32 %1385, 2
  %1389 = extractvalue %dx.types.CBufRet.f32 %1385, 3
  %1390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %1391 = extractvalue %dx.types.CBufRet.f32 %1390, 0
  %1392 = extractvalue %dx.types.CBufRet.f32 %1390, 1
  %1393 = extractvalue %dx.types.CBufRet.f32 %1390, 2
  %1394 = extractvalue %dx.types.CBufRet.f32 %1390, 3
  %1395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1396 = extractvalue %dx.types.CBufRet.f32 %1395, 0
  %1397 = extractvalue %dx.types.CBufRet.f32 %1395, 1
  %1398 = extractvalue %dx.types.CBufRet.f32 %1395, 2
  %1399 = extractvalue %dx.types.CBufRet.f32 %1395, 3
  %1400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1401 = extractvalue %dx.types.CBufRet.f32 %1400, 0
  %1402 = extractvalue %dx.types.CBufRet.f32 %1400, 1
  %1403 = extractvalue %dx.types.CBufRet.f32 %1400, 2
  %1404 = extractvalue %dx.types.CBufRet.f32 %1400, 3
  %1405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1406 = extractvalue %dx.types.CBufRet.f32 %1405, 0
  %1407 = extractvalue %dx.types.CBufRet.f32 %1405, 1
  %1408 = extractvalue %dx.types.CBufRet.f32 %1405, 2
  %1409 = extractvalue %dx.types.CBufRet.f32 %1405, 3
  %1410 = select i1 %51, float %1381, float %1396
  %1411 = select i1 %51, float %1386, float %1401
  %1412 = select i1 %51, float %1391, float %1406
  %1413 = select i1 %51, float %1382, float %1397
  %1414 = select i1 %51, float %1387, float %1402
  %1415 = select i1 %51, float %1392, float %1407
  %1416 = select i1 %51, float %1383, float %1398
  %1417 = select i1 %51, float %1388, float %1403
  %1418 = select i1 %51, float %1393, float %1408
  %1419 = select i1 %51, float %1384, float %1399
  %1420 = select i1 %51, float %1389, float %1404
  %1421 = select i1 %51, float %1394, float %1409
  %1422 = fmul fast float %215, 0x401061CAC0000000
  %1423 = fmul fast float %215, 0x4023E1D7E0000000
  %1424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1425 = extractvalue %dx.types.CBufRet.f32 %1424, 0
  %1426 = extractvalue %dx.types.CBufRet.f32 %1424, 1
  %1427 = extractvalue %dx.types.CBufRet.f32 %1424, 2
  %1428 = extractvalue %dx.types.CBufRet.f32 %1424, 3
  %1429 = fsub fast float -0.000000e+00, %348
  %1430 = fmul fast float %350, %1429
  %1431 = fmul fast float %348, %1429
  %1432 = fmul fast float %349, %349
  %1433 = fsub fast float %1431, %1432
  %1434 = fdiv fast float 1.000000e+00, %58
  %1435 = fmul fast float %1427, %47
  %1436 = fmul fast float %1428, %48
  %1437 = fmul fast float %1359, %348
  %1438 = fmul fast float %1359, %350
  %1439 = fadd fast float %1437, %113
  %1440 = fadd fast float %1438, %115
  %1441 = fadd fast float %1423, 5.000000e-01
  %1442 = call float @dx.op.unary.f32(i32 22, float %1441)  ; Frc(value)
  %1443 = bitcast float %1442 to i32
  %1444 = ashr i32 %1443, 1
  %1445 = add nsw i32 %1444, 532487669
  %1446 = bitcast i32 %1445 to float
  %1447 = fmul fast float %1446, %1379
  %1448 = fadd fast float %1422, 5.000000e-01
  %1449 = call float @dx.op.unary.f32(i32 22, float %1448)  ; Frc(value)
  %1450 = fmul fast float %1449, 0x401921FB60000000
  %1451 = call float @dx.op.unary.f32(i32 12, float %1450)  ; Cos(value)
  %1452 = fmul fast float %1451, %1451
  %1453 = fsub fast float 1.000000e+00, %1452
  %1454 = bitcast float %1453 to i32
  %1455 = ashr i32 %1454, 1
  %1456 = add nsw i32 %1455, 532487669
  %1457 = bitcast i32 %1456 to float
  %1458 = fmul fast float %1447, %1451
  %1459 = fmul fast float %1458, %349
  %1460 = fmul fast float %1458, %1429
  %1461 = fadd fast float %1439, %1459
  %1462 = fmul fast float %1457, %1447
  %1463 = fmul fast float %1430, %1462
  %1464 = fmul fast float %1462, %350
  %1465 = fmul fast float %1462, %1433
  %1466 = fsub fast float %1461, %1463
  %1467 = fadd fast float %1464, %1359
  %1468 = fmul fast float %1467, %349
  %1469 = fadd fast float %1460, %114
  %1470 = fadd fast float %1469, %1468
  %1471 = fadd fast float %1440, %1465
  %1472 = fmul fast float %1466, %1410
  %1473 = call float @dx.op.tertiary.f32(i32 46, float %1470, float %1413, float %1472)  ; FMad(a,b,c)
  %1474 = call float @dx.op.tertiary.f32(i32 46, float %1471, float %1416, float %1473)  ; FMad(a,b,c)
  %1475 = fadd fast float %1474, %1419
  %1476 = fmul fast float %1466, %1411
  %1477 = call float @dx.op.tertiary.f32(i32 46, float %1470, float %1414, float %1476)  ; FMad(a,b,c)
  %1478 = call float @dx.op.tertiary.f32(i32 46, float %1471, float %1417, float %1477)  ; FMad(a,b,c)
  %1479 = fadd fast float %1478, %1420
  %1480 = fmul fast float %1466, %1412
  %1481 = call float @dx.op.tertiary.f32(i32 46, float %1470, float %1415, float %1480)  ; FMad(a,b,c)
  %1482 = call float @dx.op.tertiary.f32(i32 46, float %1471, float %1418, float %1481)  ; FMad(a,b,c)
  %1483 = fadd fast float %1482, %1421
  %1484 = fdiv fast float 1.000000e+00, %1483
  %1485 = fmul fast float %1475, 5.000000e-01
  %1486 = fmul fast float %1479, -5.000000e-01
  %1487 = fmul fast float %1485, %1484
  %1488 = fmul fast float %1486, %1484
  %1489 = fsub fast float 5.000000e-01, %1435
  %1490 = fadd fast float %1489, %1487
  %1491 = fsub fast float 5.000000e-01, %1436
  %1492 = fadd fast float %1491, %1488
  %1493 = fsub fast float %1484, %1434
  %1494 = call float @dx.op.dot2.f32(i32 54, float %1490, float %1492, float %1490, float %1492)  ; Dot2(ax,ay,bx,by)
  %1495 = call float @dx.op.binary.f32(i32 35, float %1494, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %1496 = call float @dx.op.dot2.f32(i32 54, float %1425, float %1426, float %1425, float %1426)  ; Dot2(ax,ay,bx,by)
  %1497 = fmul fast float %1496, %1495
  %1498 = call float @dx.op.unary.f32(i32 25, float %1497)  ; Rsqrt(value)
  %1499 = fmul fast float %1498, %1490
  %1500 = fmul fast float %1498, %1492
  %1501 = fadd fast float %1499, %1435
  %1502 = fadd fast float %1500, %1436
  %1503 = fmul fast float %1490, %1425
  %1504 = fmul fast float %1492, %1426
  %1505 = fmul fast float %1503, %1503
  %1506 = fmul fast float %1504, %1504
  %1507 = fadd fast float %1505, %1506
  %1508 = call float @dx.op.unary.f32(i32 24, float %1507)  ; Sqrt(value)
  %1509 = fdiv fast float 1.000000e+00, %1508
  %1510 = fmul fast float %1508, 3.906250e-03
  %1511 = fmul fast float %201, 0x3F70624DE0000000
  %1512 = fadd fast float %1511, 0x3F70624DE0000000
  %1513 = icmp sgt i32 %1360, -1
  br i1 %1513, label %1514, label %1579

; <label>:1514                                    ; preds = %1364
  br label %1515

; <label>:1515                                    ; preds = %1575, %1514
  %1516 = phi float [ %1550, %1575 ], [ %58, %1514 ]
  %1517 = phi float [ %1537, %1575 ], [ %58, %1514 ]
  %1518 = phi float [ %1517, %1575 ], [ %58, %1514 ]
  %1519 = phi i32 [ %1576, %1575 ], [ 0, %1514 ]
  %1520 = sitofp i32 %1519 to float
  %1521 = fadd fast float %215, 5.000000e-01
  %1522 = call float @dx.op.unary.f32(i32 22, float %1521)  ; Frc(value)
  %1523 = fadd fast float %1520, %1522
  %1524 = sitofp i32 %1360 to float
  %1525 = fdiv fast float %1523, %1524
  %1526 = fmul fast float %1525, %1525
  %1527 = fsub fast float %1526, %1525
  %1528 = fmul fast float %1527, %1358
  %1529 = fadd fast float %1528, %1525
  %1530 = call float @dx.op.binary.f32(i32 36, float %1529, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %1531 = fmul fast float %1530, %1490
  %1532 = fmul fast float %1530, %1492
  %1533 = fmul fast float %1530, %1493
  %1534 = fadd fast float %1531, %1501
  %1535 = fadd fast float %1532, %1502
  %1536 = fadd fast float %1533, %1434
  %1537 = fdiv fast float 1.000000e+00, %1536
  %1538 = icmp ne i32 %1375, 0
  %1539 = fmul fast float %1510, %1530
  %1540 = call float @dx.op.binary.f32(i32 36, float %1539, float %1376)  ; FMin(a,b)
  %1541 = select i1 %1538, float %1540, float 0.000000e+00
  %1542 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %1534, float %1535, float undef, float undef, i32 0, i32 0, i32 undef, float %1541)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1543 = extractvalue %dx.types.ResRet.f32 %1542, 0
  %1544 = fcmp fast ogt float %1543, -1.000000e+00
  %1545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1546 = extractvalue %dx.types.CBufRet.f32 %1545, 1
  %1547 = select i1 %1544, float %1546, float 1.000000e+00
  %1548 = fadd fast float %1543, 1.000000e+00
  %1549 = fmul fast float %1547, %1548
  %1550 = call float @dx.op.unary.f32(i32 6, float %1549)  ; FAbs(value)
  %1551 = fmul fast float %1550, %1512
  %1552 = fsub fast float %1537, %1550
  %1553 = fsub fast float %1552, %1551
  %1554 = fcmp fast ogt float %1553, 0.000000e+00
  %1555 = fcmp fast ogt float %1346, 0.000000e+00
  br i1 %1555, label %1556, label %1559, !dx.controlflow.hints !50

; <label>:1556                                    ; preds = %1515
  %1557 = fsub fast float %1537, %1518
  %1558 = call float @dx.op.binary.f32(i32 35, float %1557, float %1346)  ; FMax(a,b)
  br label %1559

; <label>:1559                                    ; preds = %1556, %1515
  %1560 = phi float [ %1558, %1556 ], [ %1359, %1515 ]
  %1561 = fcmp fast olt float %1553, %1560
  %1562 = fcmp uge float %1543, -1.000000e+00
  %1563 = or i1 %51, %1562
  %1564 = call float @dx.op.unary.f32(i32 7, float %1534)  ; Saturate(value)
  %1565 = call float @dx.op.unary.f32(i32 7, float %1535)  ; Saturate(value)
  %1566 = fcmp fast oeq float %1534, %1564
  %1567 = fcmp fast oeq float %1535, %1565
  %1568 = and i1 %1566, %1567
  %1569 = and i1 %1563, %1568
  %1570 = and i1 %1554, %1561
  %1571 = and i1 %1570, %1569
  %1572 = fcmp fast ogt float %1530, %1509
  %1573 = and i1 %1572, %1571
  %1574 = zext i1 %1573 to i32
  br i1 %1573, label %1578, label %1575, !dx.controlflow.hints !51

; <label>:1575                                    ; preds = %1559
  %1576 = add nuw nsw i32 %1519, 1
  %1577 = icmp slt i32 %1519, %1360
  br i1 %1577, label %1515, label %1578

; <label>:1578                                    ; preds = %1575, %1559
  br label %1579

; <label>:1579                                    ; preds = %1578, %1364
  %1580 = phi i32 [ 0, %1364 ], [ %1574, %1578 ]
  %1581 = phi float [ %58, %1364 ], [ %1550, %1578 ]
  %1582 = phi float [ %58, %1364 ], [ %1516, %1578 ]
  %1583 = phi float [ %58, %1364 ], [ %1537, %1578 ]
  %1584 = phi float [ %58, %1364 ], [ %1517, %1578 ]
  %1585 = fsub fast float %1584, %1582
  %1586 = fsub fast float %1583, %1581
  %1587 = fsub fast float %1585, %1586
  %1588 = fcmp fast une float %1587, 0.000000e+00
  %1589 = fmul fast float %1585, %1583
  %1590 = fmul fast float %1584, %1586
  %1591 = fsub fast float %1589, %1590
  %1592 = fdiv fast float 1.000000e+00, %1587
  %1593 = fmul fast float %1591, %1592
  %1594 = select i1 %1588, float %1593, float %1583
  %1595 = fdiv fast float 1.000000e+00, %1594
  %1596 = fsub fast float %1595, %1434
  %1597 = fdiv fast float %1596, %1493
  %1598 = call float @dx.op.unary.f32(i32 7, float %1597)  ; Saturate(value)
  %1599 = fmul fast float %1598, %1490
  %1600 = fmul fast float %1598, %1492
  %1601 = fadd fast float %1599, %1501
  %1602 = fadd fast float %1600, %1502
  %1603 = fadd fast float %1601, -5.000000e-01
  %1604 = fadd fast float %1602, -5.000000e-01
  %1605 = call float @dx.op.unary.f32(i32 6, float %1603)  ; FAbs(value)
  %1606 = call float @dx.op.unary.f32(i32 6, float %1604)  ; FAbs(value)
  %1607 = fadd fast float %1605, -5.000000e-01
  %1608 = fadd fast float %1606, -5.000000e-01
  %1609 = call float @dx.op.binary.f32(i32 35, float %1607, float %1608)  ; FMax(a,b)
  %1610 = fcmp fast olt float %1609, 0.000000e+00
  %1611 = icmp ne i32 %1580, 0
  %1612 = and i1 %1611, %1610
  %1613 = select i1 %1612, float 0.000000e+00, float 1.000000e+00
  br label %1614

; <label>:1614                                    ; preds = %1579, %1357
  %1615 = phi float [ %1613, %1579 ], [ 1.000000e+00, %1357 ]
  %1616 = fmul fast float %1615, %1329
  %1617 = fmul fast float %1615, %1329
  %1618 = fmul fast float %1615, %1329
  br label %1619

; <label>:1619                                    ; preds = %1614, %1328
  %1620 = phi float [ %1616, %1614 ], [ %1329, %1328 ]
  %1621 = phi float [ %1617, %1614 ], [ %1329, %1328 ]
  %1622 = phi float [ %1618, %1614 ], [ %1329, %1328 ]
  %1623 = call float @dx.op.binary.f32(i32 36, float %1621, float %1622)  ; FMin(a,b)
  %1624 = call float @dx.op.binary.f32(i32 36, float %1620, float %1623)  ; FMin(a,b)
  %1625 = fcmp fast ogt float %1624, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1626 = zext i1 %1625 to i32
  %1627 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %1626 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1628 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  %1629 = icmp eq i32 %1628, 0
  %1630 = select i1 %1629, i32 0, i32 %287
  %1631 = or i32 %282, %1630
  %1632 = lshr i32 %220, 5
  %1633 = lshr i32 %221, 5
  %1634 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1632, i32 %1633, i32 %285, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1635 = extractvalue %dx.types.ResRet.i32 %1634, 0
  %1636 = lshr i32 %1635, 23
  %1637 = and i32 %1636, 255
  %1638 = and i32 %220, 31
  %1639 = and i32 %221, 31
  %1640 = lshr i32 %1635, 1
  %1641 = and i32 %1640, 16352
  %1642 = lshr i32 %1635, 10
  %1643 = and i32 %1642, 8160
  %1644 = or i32 %1641, %1638
  %1645 = or i32 %1643, %1639
  %1646 = fmul fast float %1620, 2.550000e+02
  %1647 = fadd fast float %1646, %214
  %1648 = call float @dx.op.unary.f32(i32 27, float %1647)  ; Round_ni(value)
  %1649 = fmul fast float %1648, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1644, i32 %1645, i32 %1637, float %1649, float %1649, float %1649, float %1649, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1650 = icmp eq i32 %283, %287
  br i1 %1650, label %1651, label %281, !llvm.loop !52

; <label>:1651                                    ; preds = %1619
  br label %1652

; <label>:1652                                    ; preds = %1651, %277
  %1653 = phi i32 [ 0, %277 ], [ %1631, %1651 ]
  %1654 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1655 = extractvalue %dx.types.CBufRet.i32 %1654, 0
  %1656 = call i32 @dx.op.tertiary.i32(i32 49, i32 %226, i32 %1655, i32 %250)  ; UMad(a,b,c)
  %1657 = shl i32 %1656, 2
  %1658 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1657, i32 undef, i32 undef, i32 %1653)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1659 = add i32 %250, 1
  %1660 = icmp ugt i32 %1659, %246
  br i1 %1660, label %1661, label %249

; <label>:1661                                    ; preds = %1652
  br label %1662

; <label>:1662                                    ; preds = %1661, %219, %0
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

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

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
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 1}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.unroll.disable"}

