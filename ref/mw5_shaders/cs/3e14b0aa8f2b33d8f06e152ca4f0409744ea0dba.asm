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
; shader hash: 1d9932c2faf05d8ab842b1da719b1708
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

@"\01?gsTempData@@3PAIA" = external addrspace(3) global [4 x i32], align 4
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
  br i1 %218, label %1780, label %219, !dx.controlflow.hints !32

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
  %240 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %241 = udiv i32 %22, %240
  %242 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %238, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %243 = icmp eq i32 %240, 64
  br i1 %243, label %270, label %244, !dx.controlflow.hints !33

; <label>:244                                     ; preds = %219
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %245 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %245, label %246, label %248, !dx.controlflow.hints !34

; <label>:246                                     ; preds = %244
  %247 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %241
  store i32 %242, i32 addrspace(3)* %247, align 4, !tbaa !35
  br label %248

; <label>:248                                     ; preds = %246, %244
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %249 = icmp eq i32 %240, 32
  br i1 %249, label %250, label %255, !dx.controlflow.hints !39

; <label>:250                                     ; preds = %248
  %251 = xor i32 %241, 1
  %252 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %251
  %253 = load i32, i32 addrspace(3)* %252, align 4, !tbaa !35
  %254 = call i32 @dx.op.binary.i32(i32 40, i32 %242, i32 %253)  ; UMin(a,b)
  br label %270

; <label>:255                                     ; preds = %248
  %256 = icmp eq i32 %240, 16
  br i1 %256, label %257, label %270, !dx.controlflow.hints !40

; <label>:257                                     ; preds = %255
  %258 = xor i32 %241, 3
  %259 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %258
  %260 = load i32, i32 addrspace(3)* %259, align 4, !tbaa !35
  %261 = xor i32 %241, 2
  %262 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %261
  %263 = load i32, i32 addrspace(3)* %262, align 4, !tbaa !35
  %264 = call i32 @dx.op.binary.i32(i32 40, i32 %263, i32 %260)  ; UMin(a,b)
  %265 = xor i32 %241, 1
  %266 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %265
  %267 = load i32, i32 addrspace(3)* %266, align 4, !tbaa !35
  %268 = call i32 @dx.op.binary.i32(i32 40, i32 %242, i32 %267)  ; UMin(a,b)
  %269 = call i32 @dx.op.binary.i32(i32 40, i32 %268, i32 %264)  ; UMin(a,b)
  br label %270

; <label>:270                                     ; preds = %257, %255, %250, %219
  %271 = phi i32 [ %254, %250 ], [ %269, %257 ], [ %242, %219 ], [ 0, %255 ]
  %272 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %239, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  br i1 %243, label %299, label %273, !dx.controlflow.hints !41

; <label>:273                                     ; preds = %270
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %274 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %274, label %275, label %277, !dx.controlflow.hints !42

; <label>:275                                     ; preds = %273
  %276 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %241
  store i32 %272, i32 addrspace(3)* %276, align 4, !tbaa !35
  br label %277

; <label>:277                                     ; preds = %275, %273
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %278 = icmp eq i32 %240, 32
  br i1 %278, label %279, label %284, !dx.controlflow.hints !43

; <label>:279                                     ; preds = %277
  %280 = xor i32 %241, 1
  %281 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %280
  %282 = load i32, i32 addrspace(3)* %281, align 4, !tbaa !35
  %283 = call i32 @dx.op.binary.i32(i32 39, i32 %272, i32 %282)  ; UMax(a,b)
  br label %299

; <label>:284                                     ; preds = %277
  %285 = icmp eq i32 %240, 16
  br i1 %285, label %286, label %299, !dx.controlflow.hints !44

; <label>:286                                     ; preds = %284
  %287 = xor i32 %241, 3
  %288 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %287
  %289 = load i32, i32 addrspace(3)* %288, align 4, !tbaa !35
  %290 = xor i32 %241, 2
  %291 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %290
  %292 = load i32, i32 addrspace(3)* %291, align 4, !tbaa !35
  %293 = call i32 @dx.op.binary.i32(i32 39, i32 %292, i32 %289)  ; UMax(a,b)
  %294 = xor i32 %241, 1
  %295 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %294
  %296 = load i32, i32 addrspace(3)* %295, align 4, !tbaa !35
  %297 = call i32 @dx.op.binary.i32(i32 39, i32 %272, i32 %296)  ; UMax(a,b)
  %298 = call i32 @dx.op.binary.i32(i32 39, i32 %297, i32 %293)  ; UMax(a,b)
  br label %299

; <label>:299                                     ; preds = %286, %284, %279, %270
  %300 = phi i32 [ %283, %279 ], [ %298, %286 ], [ %272, %270 ], [ 0, %284 ]
  %301 = lshr i32 %271, 5
  %302 = lshr i32 %300, 5
  %303 = call i32 @dx.op.binary.i32(i32 40, i32 %302, i32 %230)  ; UMin(a,b)
  %304 = icmp ugt i32 %301, %303
  br i1 %304, label %1780, label %305

; <label>:305                                     ; preds = %299
  br label %306

; <label>:306                                     ; preds = %1770, %305
  %307 = phi i32 [ %1777, %1770 ], [ %301, %305 ]
  %308 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.i32 %308, 0
  %310 = call i32 @dx.op.tertiary.i32(i32 49, i32 %226, i32 %309, i32 %307)  ; UMad(a,b,c)
  %311 = shl i32 %310, 2
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = shl i32 %307, 5
  %315 = sub nsw i32 %238, %314
  %316 = call i32 @dx.op.binary.i32(i32 37, i32 %315, i32 0)  ; IMax(a,b)
  %317 = call i32 @dx.op.binary.i32(i32 38, i32 %316, i32 31)  ; IMin(a,b)
  %318 = sub nsw i32 1, %238
  %319 = add nsw i32 %318, %239
  %320 = call i32 @dx.op.binary.i32(i32 37, i32 %319, i32 0)  ; IMax(a,b)
  %321 = call i32 @dx.op.binary.i32(i32 38, i32 %320, i32 32)  ; IMin(a,b)
  %322 = and i32 %321, 31
  %323 = shl i32 -1, %322
  %324 = xor i32 %323, -1
  %325 = and i32 %317, 31
  %326 = shl i32 %324, %325
  %327 = icmp eq i32 %321, 32
  %328 = select i1 %327, i32 -1, i32 %326
  %329 = and i32 %328, %313
  %330 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %329, i8 1)  ; WaveActiveBit(value,op)
  br i1 %243, label %357, label %331, !dx.controlflow.hints !45

; <label>:331                                     ; preds = %306
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %332 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %332, label %333, label %335, !dx.controlflow.hints !46

; <label>:333                                     ; preds = %331
  %334 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %241
  store i32 %330, i32 addrspace(3)* %334, align 4, !tbaa !35
  br label %335

; <label>:335                                     ; preds = %333, %331
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %336 = icmp eq i32 %240, 32
  br i1 %336, label %337, label %342, !dx.controlflow.hints !47

; <label>:337                                     ; preds = %335
  %338 = xor i32 %241, 1
  %339 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %338
  %340 = load i32, i32 addrspace(3)* %339, align 4, !tbaa !35
  %341 = or i32 %340, %330
  br label %357

; <label>:342                                     ; preds = %335
  %343 = icmp eq i32 %240, 16
  br i1 %343, label %344, label %357, !dx.controlflow.hints !48

; <label>:344                                     ; preds = %342
  %345 = xor i32 %241, 1
  %346 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %345
  %347 = load i32, i32 addrspace(3)* %346, align 4, !tbaa !35
  %348 = or i32 %347, %330
  %349 = xor i32 %241, 2
  %350 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %349
  %351 = load i32, i32 addrspace(3)* %350, align 4, !tbaa !35
  %352 = or i32 %348, %351
  %353 = xor i32 %241, 3
  %354 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %353
  %355 = load i32, i32 addrspace(3)* %354, align 4, !tbaa !35
  %356 = or i32 %352, %355
  br label %357

; <label>:357                                     ; preds = %344, %342, %337, %306
  %358 = phi i32 [ %341, %337 ], [ %356, %344 ], [ %330, %306 ], [ 0, %342 ]
  br i1 %243, label %359, label %361, !dx.controlflow.hints !49

; <label>:359                                     ; preds = %357
  %360 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %358)  ; WaveReadLaneFirst(value)
  br label %366

; <label>:361                                     ; preds = %357
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %362 = icmp eq i32 %22, 0
  br i1 %362, label %363, label %364, !dx.controlflow.hints !50

; <label>:363                                     ; preds = %361
  store i32 %358, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !35
  br label %364

; <label>:364                                     ; preds = %363, %361
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %365 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !35
  br label %366

; <label>:366                                     ; preds = %364, %359
  %367 = phi i32 [ %360, %359 ], [ %365, %364 ]
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %1770, label %369

; <label>:369                                     ; preds = %366
  br label %370

; <label>:370                                     ; preds = %1746, %369
  %371 = phi i32 [ %1749, %1746 ], [ 0, %369 ]
  %372 = phi i32 [ %377, %1746 ], [ %367, %369 ]
  %373 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %372)  ; FirstbitLo(value)
  %374 = add i32 %373, %314
  %375 = and i32 %373, 31
  %376 = shl i32 1, %375
  %377 = xor i32 %376, %372
  %378 = mul i32 %374, 112
  %379 = add i32 %378, 16
  %380 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.f32 %380, 0
  %382 = extractvalue %dx.types.ResRet.f32 %380, 1
  %383 = extractvalue %dx.types.ResRet.f32 %380, 2
  %384 = add i32 %378, 28
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  %387 = add i32 %378, 32
  %388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.f32 %388, 0
  %390 = extractvalue %dx.types.ResRet.f32 %388, 1
  %391 = extractvalue %dx.types.ResRet.f32 %388, 2
  %392 = add i32 %378, 44
  %393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.f32 %393, 0
  %395 = add i32 %378, 48
  %396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.f32 %396, 0
  %398 = extractvalue %dx.types.ResRet.f32 %396, 1
  %399 = extractvalue %dx.types.ResRet.f32 %396, 2
  %400 = extractvalue %dx.types.ResRet.f32 %396, 3
  %401 = add i32 %378, 64
  %402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.f32 %402, 0
  %404 = extractvalue %dx.types.ResRet.f32 %402, 1
  %405 = extractvalue %dx.types.ResRet.f32 %402, 2
  %406 = extractvalue %dx.types.ResRet.f32 %402, 3
  %407 = add i32 %378, 92
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = and i32 %409, 65535
  %411 = uitofp i32 %410 to float
  %412 = lshr i32 %409, 16
  %413 = uitofp i32 %412 to float
  %414 = and i32 %386, 65535
  %415 = and i32 %386, 50331648
  %416 = icmp eq i32 %415, 33554432
  %417 = call float @dx.op.dot3.f32(i32 55, float %389, float %390, float %391, float %389, float %390, float %391)  ; Dot3(ax,ay,az,bx,by,bz)
  %418 = fsub fast float %113, %397
  %419 = fsub fast float %114, %398
  %420 = fsub fast float %115, %399
  %421 = call float @dx.op.dot3.f32(i32 55, float %418, float %419, float %420, float %389, float %390, float %391)  ; Dot3(ax,ay,az,bx,by,bz)
  %422 = fdiv fast float %421, %417
  %423 = call float @dx.op.binary.f32(i32 35, float %422, float -1.000000e+00)  ; FMax(a,b)
  %424 = call float @dx.op.binary.f32(i32 36, float %423, float 1.000000e+00)  ; FMin(a,b)
  %425 = fmul fast float %424, %389
  %426 = fmul fast float %424, %390
  %427 = fmul fast float %424, %391
  %428 = fadd fast float %425, %397
  %429 = fadd fast float %426, %398
  %430 = fadd fast float %427, %399
  %431 = fsub fast float %428, %113
  %432 = fsub fast float %429, %114
  %433 = fsub fast float %430, %115
  %434 = call float @dx.op.dot3.f32(i32 55, float %431, float %432, float %433, float %431, float %432, float %433)  ; Dot3(ax,ay,az,bx,by,bz)
  %435 = call float @dx.op.unary.f32(i32 24, float %434)  ; Sqrt(value)
  %436 = fdiv fast float 1.000000e+00, %435
  %437 = fmul fast float %431, %436
  %438 = fmul fast float %432, %436
  %439 = fmul fast float %433, %436
  br i1 %416, label %440, label %464, !dx.controlflow.hints !51

; <label>:440                                     ; preds = %370
  %441 = fmul fast float %405, %381
  %442 = fmul fast float %405, %382
  %443 = fmul fast float %405, %383
  %444 = fsub fast float %441, %113
  %445 = fadd fast float %444, %428
  %446 = fsub fast float %442, %114
  %447 = fadd fast float %446, %429
  %448 = fsub fast float %443, %115
  %449 = fadd fast float %448, %430
  %450 = call float @dx.op.dot3.f32(i32 55, float %445, float %447, float %449, float %445, float %447, float %449)  ; Dot3(ax,ay,az,bx,by,bz)
  %451 = call float @dx.op.unary.f32(i32 25, float %450)  ; Rsqrt(value)
  %452 = fmul fast float %451, %445
  %453 = fmul fast float %451, %447
  %454 = fmul fast float %451, %449
  %455 = fsub fast float %113, %428
  %456 = fsub fast float %114, %429
  %457 = fsub fast float %115, %430
  %458 = fsub fast float -0.000000e+00, %455
  %459 = fsub fast float -0.000000e+00, %456
  %460 = fsub fast float -0.000000e+00, %457
  %461 = call float @dx.op.dot3.f32(i32 55, float %458, float %459, float %460, float %381, float %382, float %383)  ; Dot3(ax,ay,az,bx,by,bz)
  %462 = fcmp fast ogt float %461, 0.000000e+00
  %463 = uitofp i1 %462 to float
  br label %464

; <label>:464                                     ; preds = %440, %370
  %465 = phi float [ %463, %440 ], [ 1.000000e+00, %370 ]
  %466 = phi float [ %452, %440 ], [ %437, %370 ]
  %467 = phi float [ %453, %440 ], [ %438, %370 ]
  %468 = phi float [ %454, %440 ], [ %439, %370 ]
  %469 = call float @dx.op.dot3.f32(i32 55, float %381, float %382, float %383, float %466, float %467, float %468)  ; Dot3(ax,ay,az,bx,by,bz)
  %470 = fmul fast float %469, %469
  %471 = call float @dx.op.unary.f32(i32 7, float %470)  ; Saturate(value)
  %472 = fsub fast float 1.000000e+00, %471
  %473 = fmul fast float %472, 5.000000e-01
  %474 = fcmp fast ogt float %469, 0.000000e+00
  %475 = fsub fast float 1.000000e+00, %473
  %476 = select i1 %474, float %473, float %475
  %477 = fmul fast float %476, %413
  %478 = fadd fast float %477, %411
  %479 = fmul fast float %478, 0x3EF0001000000000
  %480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %14, float %479, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %481 = extractvalue %dx.types.ResRet.f32 %480, 0
  %482 = fmul fast float %469, %403
  %483 = fadd fast float %482, %404
  %484 = call float @dx.op.unary.f32(i32 7, float %483)  ; Saturate(value)
  %485 = select i1 %416, float 1.000000e+00, float %484
  %486 = select i1 %416, float %484, float 1.000000e+00
  %487 = fmul fast float %435, %400
  %488 = fsub fast float 1.000000e+00, %487
  %489 = fmul fast float %488, %406
  %490 = call float @dx.op.unary.f32(i32 7, float %489)  ; Saturate(value)
  %491 = fmul fast float %490, %486
  %492 = fmul fast float %491, 2.000000e+00
  %493 = fsub fast float 3.000000e+00, %492
  %494 = fmul fast float %481, %465
  %495 = fmul fast float %491, %491
  %496 = fmul fast float %495, %494
  %497 = fmul fast float %496, %493
  %498 = icmp ne i32 %414, 255
  %499 = call float @dx.op.binary.f32(i32 36, float %497, float %497)  ; FMin(a,b)
  %500 = call float @dx.op.binary.f32(i32 36, float %497, float %499)  ; FMin(a,b)
  %501 = fcmp fast ogt float %500, 0.000000e+00
  %502 = and i1 %498, %501
  br i1 %502, label %503, label %1417, !dx.controlflow.hints !52

; <label>:503                                     ; preds = %464
  %504 = mul nuw nsw i32 %414, 176
  %505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.f32 %505, 0
  %507 = extractvalue %dx.types.ResRet.f32 %505, 1
  %508 = extractvalue %dx.types.ResRet.f32 %505, 2
  %509 = extractvalue %dx.types.ResRet.f32 %505, 3
  %510 = add nuw nsw i32 %504, 16
  %511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.f32 %511, 0
  %513 = extractvalue %dx.types.ResRet.f32 %511, 1
  %514 = add nuw nsw i32 %504, 32
  %515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.f32 %515, 0
  %517 = extractvalue %dx.types.ResRet.f32 %515, 1
  %518 = extractvalue %dx.types.ResRet.f32 %515, 2
  %519 = extractvalue %dx.types.ResRet.f32 %515, 3
  %520 = add nuw nsw i32 %504, 48
  %521 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.f32 %521, 0
  %523 = extractvalue %dx.types.ResRet.f32 %521, 1
  %524 = extractvalue %dx.types.ResRet.f32 %521, 2
  %525 = extractvalue %dx.types.ResRet.f32 %521, 3
  %526 = add nuw nsw i32 %504, 64
  %527 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.f32 %527, 0
  %529 = extractvalue %dx.types.ResRet.f32 %527, 1
  %530 = extractvalue %dx.types.ResRet.f32 %527, 2
  %531 = extractvalue %dx.types.ResRet.f32 %527, 3
  %532 = add nuw nsw i32 %504, 80
  %533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %534 = extractvalue %dx.types.ResRet.f32 %533, 0
  %535 = extractvalue %dx.types.ResRet.f32 %533, 1
  %536 = extractvalue %dx.types.ResRet.f32 %533, 2
  %537 = extractvalue %dx.types.ResRet.f32 %533, 3
  %538 = add nuw nsw i32 %504, 96
  %539 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
  %540 = extractvalue %dx.types.ResRet.f32 %539, 0
  %541 = extractvalue %dx.types.ResRet.f32 %539, 1
  %542 = extractvalue %dx.types.ResRet.f32 %539, 2
  %543 = extractvalue %dx.types.ResRet.f32 %539, 3
  %544 = add nuw nsw i32 %504, 112
  %545 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.f32 %545, 0
  %547 = extractvalue %dx.types.ResRet.f32 %545, 1
  %548 = extractvalue %dx.types.ResRet.f32 %545, 2
  %549 = extractvalue %dx.types.ResRet.f32 %545, 3
  %550 = add nuw nsw i32 %504, 128
  %551 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.f32 %551, 0
  %553 = extractvalue %dx.types.ResRet.f32 %551, 1
  %554 = extractvalue %dx.types.ResRet.f32 %551, 2
  %555 = extractvalue %dx.types.ResRet.f32 %551, 3
  %556 = add nuw nsw i32 %504, 144
  %557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.f32 %557, 0
  %559 = extractvalue %dx.types.ResRet.f32 %557, 1
  %560 = extractvalue %dx.types.ResRet.f32 %557, 2
  %561 = extractvalue %dx.types.ResRet.f32 %557, 3
  %562 = add nuw nsw i32 %504, 160
  %563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %562, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.f32 %563, 0
  %565 = extractvalue %dx.types.ResRet.f32 %563, 1
  %566 = extractvalue %dx.types.ResRet.f32 %563, 2
  %567 = extractvalue %dx.types.ResRet.f32 %563, 3
  %568 = bitcast float %513 to i32
  %569 = bitcast float %519 to i32
  %570 = and i32 %569, 1
  %571 = icmp ne i32 %570, 0
  %572 = and i32 %569, 2
  %573 = fmul fast float %518, %142
  %574 = fmul fast float %518, %143
  %575 = fmul fast float %518, %144
  %576 = fadd fast float %573, %113
  %577 = fadd fast float %574, %114
  %578 = fadd fast float %575, %115
  %579 = fmul fast float %576, %522
  %580 = call float @dx.op.tertiary.f32(i32 46, float %577, float %528, float %579)  ; FMad(a,b,c)
  %581 = call float @dx.op.tertiary.f32(i32 46, float %578, float %534, float %580)  ; FMad(a,b,c)
  %582 = fadd fast float %581, %540
  %583 = fmul fast float %576, %523
  %584 = call float @dx.op.tertiary.f32(i32 46, float %577, float %529, float %583)  ; FMad(a,b,c)
  %585 = call float @dx.op.tertiary.f32(i32 46, float %578, float %535, float %584)  ; FMad(a,b,c)
  %586 = fadd fast float %585, %541
  %587 = fmul fast float %576, %524
  %588 = call float @dx.op.tertiary.f32(i32 46, float %577, float %530, float %587)  ; FMad(a,b,c)
  %589 = call float @dx.op.tertiary.f32(i32 46, float %578, float %536, float %588)  ; FMad(a,b,c)
  %590 = fadd fast float %589, %542
  %591 = fmul fast float %576, %525
  %592 = call float @dx.op.tertiary.f32(i32 46, float %577, float %531, float %591)  ; FMad(a,b,c)
  %593 = call float @dx.op.tertiary.f32(i32 46, float %578, float %537, float %592)  ; FMad(a,b,c)
  %594 = fadd fast float %593, %543
  %595 = fdiv fast float %582, %594
  %596 = fdiv fast float %586, %594
  %597 = fdiv fast float %590, %594
  %598 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %597)  ; FMax(a,b)
  %599 = fmul fast float %214, 0x401921FB60000000
  %600 = call float @dx.op.unary.f32(i32 13, float %599)  ; Sin(value)
  %601 = call float @dx.op.unary.f32(i32 12, float %599)  ; Cos(value)
  %602 = fsub fast float -0.000000e+00, %600
  %603 = icmp eq i32 %572, 0
  br i1 %603, label %604, label %675, !dx.controlflow.hints !53

; <label>:604                                     ; preds = %503
  %605 = fmul fast float %601, %517
  %606 = call float @dx.op.tertiary.f32(i32 46, float %600, float %517, float 0.000000e+00)  ; FMad(a,b,c)
  %607 = fmul fast float %517, %602
  %608 = call float @dx.op.tertiary.f32(i32 46, float %601, float %517, float 0.000000e+00)  ; FMad(a,b,c)
  br label %609

; <label>:609                                     ; preds = %609, %604
  %610 = phi float [ 0.000000e+00, %604 ], [ %642, %609 ]
  %611 = phi float [ 0.000000e+00, %604 ], [ %644, %609 ]
  %612 = phi i32 [ 0, %604 ], [ %645, %609 ]
  %613 = mul i32 %612, 2
  %614 = add i32 0, %613
  %615 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %614
  %616 = load float, float* %615, align 4
  %617 = mul i32 %612, 2
  %618 = add i32 1, %617
  %619 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %618
  %620 = load float, float* %619, align 4
  %621 = fmul fast float %605, %616
  %622 = call float @dx.op.tertiary.f32(i32 46, float %620, float %607, float %621)  ; FMad(a,b,c)
  %623 = fmul fast float %616, %606
  %624 = call float @dx.op.tertiary.f32(i32 46, float %620, float %608, float %623)  ; FMad(a,b,c)
  %625 = fadd fast float %622, %595
  %626 = fadd fast float %624, %596
  %627 = fmul fast float %625, %512
  %628 = fmul fast float %626, %512
  %629 = call float @dx.op.binary.f32(i32 35, float %627, float %508)  ; FMax(a,b)
  %630 = call float @dx.op.binary.f32(i32 35, float %628, float %508)  ; FMax(a,b)
  %631 = call float @dx.op.binary.f32(i32 36, float %629, float %509)  ; FMin(a,b)
  %632 = call float @dx.op.binary.f32(i32 36, float %630, float %509)  ; FMin(a,b)
  %633 = fadd fast float %631, %506
  %634 = fadd fast float %632, %507
  %635 = uitofp i32 %568 to float
  %636 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %15, float %633, float %634, float %635, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %637 = extractvalue %dx.types.ResRet.f32 %636, 0
  %638 = fsub fast float %637, %598
  %639 = fsub fast float %638, %516
  %640 = fcmp fast ogt float %639, 0.000000e+00
  %641 = select i1 %640, float 1.000000e+00, float 0.000000e+00
  %642 = fadd fast float %641, %610
  %643 = select i1 %640, float %639, float 0.000000e+00
  %644 = fadd fast float %643, %611
  %645 = add nuw nsw i32 %612, 1
  %646 = icmp eq i32 %645, 8
  br i1 %646, label %647, label %609

; <label>:647                                     ; preds = %609
  %648 = fdiv fast float 1.000000e+00, %642
  %649 = fmul fast float %648, %644
  %650 = fdiv fast float 1.000000e+00, %598
  %651 = fmul fast float %649, %650
  %652 = call float @dx.op.unary.f32(i32 7, float %651)  ; Saturate(value)
  %653 = call float @dx.op.binary.f32(i32 35, float %652, float 0.000000e+00)  ; FMax(a,b)
  %654 = fmul fast float %642, 1.250000e-01
  %655 = call float @dx.op.unary.f32(i32 7, float %654)  ; Saturate(value)
  %656 = fmul fast float %655, 2.000000e+00
  %657 = fadd fast float %656, -1.000000e+00
  %658 = fcmp fast ogt float %657, 0.000000e+00
  %659 = fcmp fast olt float %657, 0.000000e+00
  %660 = zext i1 %658 to i32
  %661 = zext i1 %659 to i32
  %662 = sub nsw i32 %660, %661
  %663 = sitofp i32 %662 to float
  %664 = fmul fast float %663, %657
  %665 = fsub fast float 1.000000e+00, %664
  %666 = fmul fast float %665, %665
  %667 = fmul fast float %666, %665
  %668 = fsub fast float %665, %667
  %669 = fmul fast float %668, %653
  %670 = fsub fast float 1.000000e+00, %667
  %671 = fsub fast float %670, %669
  %672 = fmul fast float %663, 5.000000e-01
  %673 = fmul fast float %672, %671
  %674 = fsub fast float 5.000000e-01, %673
  br label %1290

; <label>:675                                     ; preds = %503
  %676 = fsub fast float 1.000000e+00, %598
  %677 = fmul fast float %676, 5.000000e-01
  %678 = fadd fast float %677, %598
  %679 = fsub fast float %576, %397
  %680 = fsub fast float %577, %398
  %681 = fsub fast float %578, %399
  %682 = call float @dx.op.dot3.f32(i32 55, float %679, float %680, float %681, float %389, float %390, float %391)  ; Dot3(ax,ay,az,bx,by,bz)
  %683 = fdiv fast float %682, %417
  %684 = call float @dx.op.binary.f32(i32 35, float %683, float -1.000000e+00)  ; FMax(a,b)
  %685 = call float @dx.op.binary.f32(i32 36, float %684, float 1.000000e+00)  ; FMin(a,b)
  %686 = fmul fast float %685, %389
  %687 = fmul fast float %685, %390
  %688 = fmul fast float %685, %391
  %689 = fsub fast float %679, %686
  %690 = fsub fast float %680, %687
  %691 = fsub fast float %681, %688
  %692 = call float @dx.op.dot3.f32(i32 55, float %689, float %690, float %691, float %689, float %690, float %691)  ; Dot3(ax,ay,az,bx,by,bz)
  %693 = call float @dx.op.unary.f32(i32 25, float %692)  ; Rsqrt(value)
  %694 = fmul fast float %689, %693
  %695 = fmul fast float %690, %693
  %696 = fmul fast float %691, %693
  %697 = call float @dx.op.unary.f32(i32 25, float %417)  ; Rsqrt(value)
  %698 = fmul fast float %697, %389
  %699 = fmul fast float %697, %390
  %700 = fmul fast float %697, %391
  br i1 %571, label %701, label %705, !dx.controlflow.hints !54

; <label>:701                                     ; preds = %675
  %702 = fcmp fast olt float %695, 0x3FE6666660000000
  %703 = select i1 %702, float 1.000000e+00, float 0.000000e+00
  %704 = select i1 %702, float 0.000000e+00, float 1.000000e+00
  br label %705

; <label>:705                                     ; preds = %701, %675
  %706 = phi float [ 0.000000e+00, %701 ], [ %698, %675 ]
  %707 = phi float [ %703, %701 ], [ %699, %675 ]
  %708 = phi float [ %704, %701 ], [ %700, %675 ]
  %709 = fmul fast float %707, %696
  %710 = fmul fast float %708, %695
  %711 = fsub fast float %709, %710
  %712 = fmul fast float %708, %694
  %713 = fmul fast float %706, %696
  %714 = fsub fast float %712, %713
  %715 = fmul fast float %706, %695
  %716 = fmul fast float %707, %694
  %717 = fsub fast float %715, %716
  %718 = call float @dx.op.dot3.f32(i32 55, float %711, float %714, float %717, float %711, float %714, float %717)  ; Dot3(ax,ay,az,bx,by,bz)
  %719 = call float @dx.op.unary.f32(i32 25, float %718)  ; Rsqrt(value)
  %720 = fmul fast float %719, %394
  %721 = fmul fast float %720, %711
  %722 = fmul fast float %720, %714
  %723 = fmul fast float %717, %394
  %724 = fmul fast float %723, %719
  %725 = fmul fast float %595, %546
  %726 = call float @dx.op.tertiary.f32(i32 46, float %596, float %552, float %725)  ; FMad(a,b,c)
  %727 = call float @dx.op.tertiary.f32(i32 46, float %678, float %558, float %726)  ; FMad(a,b,c)
  %728 = fadd fast float %727, %564
  %729 = fmul fast float %595, %547
  %730 = call float @dx.op.tertiary.f32(i32 46, float %596, float %553, float %729)  ; FMad(a,b,c)
  %731 = call float @dx.op.tertiary.f32(i32 46, float %678, float %559, float %730)  ; FMad(a,b,c)
  %732 = fadd fast float %731, %565
  %733 = fmul fast float %595, %548
  %734 = call float @dx.op.tertiary.f32(i32 46, float %596, float %554, float %733)  ; FMad(a,b,c)
  %735 = call float @dx.op.tertiary.f32(i32 46, float %678, float %560, float %734)  ; FMad(a,b,c)
  %736 = fadd fast float %735, %566
  %737 = fmul fast float %595, %549
  %738 = call float @dx.op.tertiary.f32(i32 46, float %596, float %555, float %737)  ; FMad(a,b,c)
  %739 = call float @dx.op.tertiary.f32(i32 46, float %678, float %561, float %738)  ; FMad(a,b,c)
  %740 = fadd fast float %739, %567
  %741 = fdiv fast float 1.000000e+00, %740
  %742 = fmul fast float %741, %728
  %743 = fmul fast float %741, %732
  %744 = fmul fast float %741, %736
  %745 = fsub fast float -0.000000e+00, %694
  %746 = fsub fast float -0.000000e+00, %695
  %747 = fsub fast float -0.000000e+00, %696
  %748 = fsub fast float %397, %721
  %749 = fsub fast float %398, %722
  %750 = fsub fast float %399, %724
  %751 = fsub fast float %742, %748
  %752 = fsub fast float %743, %749
  %753 = fsub fast float %744, %750
  %754 = call float @dx.op.dot3.f32(i32 55, float %751, float %752, float %753, float %751, float %752, float %753)  ; Dot3(ax,ay,az,bx,by,bz)
  %755 = call float @dx.op.unary.f32(i32 25, float %754)  ; Rsqrt(value)
  %756 = fmul fast float %751, %755
  %757 = fmul fast float %752, %755
  %758 = fmul fast float %753, %755
  %759 = fsub fast float %576, %748
  %760 = fsub fast float %577, %749
  %761 = fsub fast float %578, %750
  %762 = call float @dx.op.dot3.f32(i32 55, float %745, float %746, float %747, float %759, float %760, float %761)  ; Dot3(ax,ay,az,bx,by,bz)
  %763 = call float @dx.op.dot3.f32(i32 55, float %745, float %746, float %747, float %756, float %757, float %758)  ; Dot3(ax,ay,az,bx,by,bz)
  %764 = fdiv fast float 1.000000e+00, %763
  %765 = fmul fast float %764, %762
  %766 = fmul fast float %765, %756
  %767 = fmul fast float %765, %757
  %768 = fmul fast float %765, %758
  %769 = fadd fast float %766, %748
  %770 = fadd fast float %767, %749
  %771 = fadd fast float %768, %750
  %772 = fadd fast float %721, %397
  %773 = fadd fast float %722, %398
  %774 = fadd fast float %724, %399
  %775 = fsub fast float %742, %772
  %776 = fsub fast float %743, %773
  %777 = fsub fast float %744, %774
  %778 = call float @dx.op.dot3.f32(i32 55, float %775, float %776, float %777, float %775, float %776, float %777)  ; Dot3(ax,ay,az,bx,by,bz)
  %779 = call float @dx.op.unary.f32(i32 25, float %778)  ; Rsqrt(value)
  %780 = fmul fast float %779, %775
  %781 = fmul fast float %779, %776
  %782 = fmul fast float %779, %777
  %783 = fsub fast float %576, %772
  %784 = fsub fast float %577, %773
  %785 = fsub fast float %578, %774
  %786 = call float @dx.op.dot3.f32(i32 55, float %745, float %746, float %747, float %783, float %784, float %785)  ; Dot3(ax,ay,az,bx,by,bz)
  %787 = call float @dx.op.dot3.f32(i32 55, float %745, float %746, float %747, float %780, float %781, float %782)  ; Dot3(ax,ay,az,bx,by,bz)
  %788 = fdiv fast float 1.000000e+00, %787
  %789 = fmul fast float %788, %786
  %790 = fmul fast float %789, %780
  %791 = fmul fast float %789, %781
  %792 = fmul fast float %789, %782
  %793 = fadd fast float %790, %772
  %794 = fadd fast float %791, %773
  %795 = fadd fast float %792, %774
  %796 = fmul fast float %769, %522
  %797 = call float @dx.op.tertiary.f32(i32 46, float %770, float %528, float %796)  ; FMad(a,b,c)
  %798 = call float @dx.op.tertiary.f32(i32 46, float %771, float %534, float %797)  ; FMad(a,b,c)
  %799 = fadd fast float %798, %540
  %800 = fmul fast float %769, %523
  %801 = call float @dx.op.tertiary.f32(i32 46, float %770, float %529, float %800)  ; FMad(a,b,c)
  %802 = call float @dx.op.tertiary.f32(i32 46, float %771, float %535, float %801)  ; FMad(a,b,c)
  %803 = fadd fast float %802, %541
  %804 = fmul fast float %769, %525
  %805 = call float @dx.op.tertiary.f32(i32 46, float %770, float %531, float %804)  ; FMad(a,b,c)
  %806 = call float @dx.op.tertiary.f32(i32 46, float %771, float %537, float %805)  ; FMad(a,b,c)
  %807 = fadd fast float %806, %543
  %808 = fmul fast float %793, %522
  %809 = call float @dx.op.tertiary.f32(i32 46, float %794, float %528, float %808)  ; FMad(a,b,c)
  %810 = call float @dx.op.tertiary.f32(i32 46, float %795, float %534, float %809)  ; FMad(a,b,c)
  %811 = fadd fast float %810, %540
  %812 = fmul fast float %793, %523
  %813 = call float @dx.op.tertiary.f32(i32 46, float %794, float %529, float %812)  ; FMad(a,b,c)
  %814 = call float @dx.op.tertiary.f32(i32 46, float %795, float %535, float %813)  ; FMad(a,b,c)
  %815 = fadd fast float %814, %541
  %816 = fmul fast float %793, %525
  %817 = call float @dx.op.tertiary.f32(i32 46, float %794, float %531, float %816)  ; FMad(a,b,c)
  %818 = call float @dx.op.tertiary.f32(i32 46, float %795, float %537, float %817)  ; FMad(a,b,c)
  %819 = fadd fast float %818, %543
  %820 = fdiv fast float 1.000000e+00, %807
  %821 = fmul fast float %820, %799
  %822 = fmul fast float %820, %803
  %823 = fdiv fast float 1.000000e+00, %819
  %824 = fmul fast float %823, %811
  %825 = fmul fast float %823, %815
  %826 = fsub fast float %824, %821
  %827 = fsub fast float %825, %822
  %828 = call float @dx.op.dot2.f32(i32 54, float %826, float %827, float %826, float %827)  ; Dot2(ax,ay,bx,by)
  %829 = call float @dx.op.unary.f32(i32 25, float %828)  ; Rsqrt(value)
  %830 = fmul fast float %826, %829
  %831 = fmul fast float %827, %829
  %832 = fmul fast float %826, %826
  %833 = fmul fast float %827, %827
  %834 = fadd fast float %832, %833
  %835 = call float @dx.op.unary.f32(i32 24, float %834)  ; Sqrt(value)
  %836 = fmul fast float %835, 5.000000e-01
  br i1 %571, label %929, label %837, !dx.controlflow.hints !55

; <label>:837                                     ; preds = %705
  %838 = fsub fast float %397, %389
  %839 = fsub fast float %398, %390
  %840 = fsub fast float %399, %391
  %841 = fsub fast float %742, %838
  %842 = fsub fast float %743, %839
  %843 = fsub fast float %744, %840
  %844 = call float @dx.op.dot3.f32(i32 55, float %841, float %842, float %843, float %841, float %842, float %843)  ; Dot3(ax,ay,az,bx,by,bz)
  %845 = call float @dx.op.unary.f32(i32 25, float %844)  ; Rsqrt(value)
  %846 = fmul fast float %845, %841
  %847 = fmul fast float %845, %842
  %848 = fmul fast float %845, %843
  %849 = fsub fast float %576, %838
  %850 = fsub fast float %577, %839
  %851 = fsub fast float %578, %840
  %852 = call float @dx.op.dot3.f32(i32 55, float %745, float %746, float %747, float %849, float %850, float %851)  ; Dot3(ax,ay,az,bx,by,bz)
  %853 = call float @dx.op.dot3.f32(i32 55, float %745, float %746, float %747, float %846, float %847, float %848)  ; Dot3(ax,ay,az,bx,by,bz)
  %854 = fdiv fast float 1.000000e+00, %853
  %855 = fmul fast float %854, %852
  %856 = fmul fast float %855, %846
  %857 = fmul fast float %855, %847
  %858 = fmul fast float %855, %848
  %859 = fadd fast float %856, %838
  %860 = fadd fast float %857, %839
  %861 = fadd fast float %858, %840
  %862 = fadd fast float %397, %389
  %863 = fadd fast float %398, %390
  %864 = fadd fast float %399, %391
  %865 = fsub fast float %742, %862
  %866 = fsub fast float %743, %863
  %867 = fsub fast float %744, %864
  %868 = call float @dx.op.dot3.f32(i32 55, float %865, float %866, float %867, float %865, float %866, float %867)  ; Dot3(ax,ay,az,bx,by,bz)
  %869 = call float @dx.op.unary.f32(i32 25, float %868)  ; Rsqrt(value)
  %870 = fmul fast float %869, %865
  %871 = fmul fast float %869, %866
  %872 = fmul fast float %869, %867
  %873 = fsub fast float %576, %862
  %874 = fsub fast float %577, %863
  %875 = fsub fast float %578, %864
  %876 = call float @dx.op.dot3.f32(i32 55, float %745, float %746, float %747, float %873, float %874, float %875)  ; Dot3(ax,ay,az,bx,by,bz)
  %877 = call float @dx.op.dot3.f32(i32 55, float %745, float %746, float %747, float %870, float %871, float %872)  ; Dot3(ax,ay,az,bx,by,bz)
  %878 = fdiv fast float 1.000000e+00, %877
  %879 = fmul fast float %878, %876
  %880 = fmul fast float %879, %870
  %881 = fmul fast float %879, %871
  %882 = fmul fast float %879, %872
  %883 = fadd fast float %880, %862
  %884 = fadd fast float %881, %863
  %885 = fadd fast float %882, %864
  %886 = fmul fast float %859, %522
  %887 = call float @dx.op.tertiary.f32(i32 46, float %860, float %528, float %886)  ; FMad(a,b,c)
  %888 = call float @dx.op.tertiary.f32(i32 46, float %861, float %534, float %887)  ; FMad(a,b,c)
  %889 = fadd fast float %888, %540
  %890 = fmul fast float %859, %523
  %891 = call float @dx.op.tertiary.f32(i32 46, float %860, float %529, float %890)  ; FMad(a,b,c)
  %892 = call float @dx.op.tertiary.f32(i32 46, float %861, float %535, float %891)  ; FMad(a,b,c)
  %893 = fadd fast float %892, %541
  %894 = fmul fast float %859, %525
  %895 = call float @dx.op.tertiary.f32(i32 46, float %860, float %531, float %894)  ; FMad(a,b,c)
  %896 = call float @dx.op.tertiary.f32(i32 46, float %861, float %537, float %895)  ; FMad(a,b,c)
  %897 = fadd fast float %896, %543
  %898 = fmul fast float %883, %522
  %899 = call float @dx.op.tertiary.f32(i32 46, float %884, float %528, float %898)  ; FMad(a,b,c)
  %900 = call float @dx.op.tertiary.f32(i32 46, float %885, float %534, float %899)  ; FMad(a,b,c)
  %901 = fadd fast float %900, %540
  %902 = fmul fast float %883, %523
  %903 = call float @dx.op.tertiary.f32(i32 46, float %884, float %529, float %902)  ; FMad(a,b,c)
  %904 = call float @dx.op.tertiary.f32(i32 46, float %885, float %535, float %903)  ; FMad(a,b,c)
  %905 = fadd fast float %904, %541
  %906 = fmul fast float %883, %525
  %907 = call float @dx.op.tertiary.f32(i32 46, float %884, float %531, float %906)  ; FMad(a,b,c)
  %908 = call float @dx.op.tertiary.f32(i32 46, float %885, float %537, float %907)  ; FMad(a,b,c)
  %909 = fadd fast float %908, %543
  %910 = fdiv fast float 1.000000e+00, %897
  %911 = fmul fast float %910, %889
  %912 = fmul fast float %910, %893
  %913 = fdiv fast float 1.000000e+00, %909
  %914 = fmul fast float %913, %901
  %915 = fmul fast float %913, %905
  %916 = fsub fast float %914, %911
  %917 = fsub fast float %915, %912
  %918 = call float @dx.op.dot2.f32(i32 54, float %916, float %917, float %916, float %917)  ; Dot2(ax,ay,bx,by)
  %919 = call float @dx.op.unary.f32(i32 25, float %918)  ; Rsqrt(value)
  %920 = fmul fast float %916, %919
  %921 = fmul fast float %917, %919
  %922 = fmul fast float %916, %916
  %923 = fmul fast float %917, %917
  %924 = fadd fast float %922, %923
  %925 = call float @dx.op.unary.f32(i32 24, float %924)  ; Sqrt(value)
  %926 = fmul fast float %925, 5.000000e-01
  %927 = fcmp fast olt float %926, %836
  br i1 %927, label %928, label %929, !dx.controlflow.hints !56

; <label>:928                                     ; preds = %837
  br label %929

; <label>:929                                     ; preds = %928, %837, %705
  %930 = phi float [ %836, %705 ], [ %926, %928 ], [ %836, %837 ]
  %931 = phi float [ %836, %705 ], [ %836, %928 ], [ %926, %837 ]
  %932 = phi float [ %830, %705 ], [ %830, %928 ], [ %920, %837 ]
  %933 = phi float [ %831, %705 ], [ %831, %928 ], [ %921, %837 ]
  %934 = fmul fast float %930, %517
  %935 = fdiv fast float %934, %931
  %936 = fsub fast float %517, %935
  %937 = fmul fast float %932, %932
  %938 = fmul fast float %937, %936
  %939 = fadd fast float %938, %935
  %940 = fmul fast float %933, %932
  %941 = fmul fast float %940, %936
  %942 = fmul fast float %933, %933
  %943 = fmul fast float %942, %936
  %944 = fadd fast float %943, %935
  %945 = fmul fast float %939, %601
  %946 = call float @dx.op.tertiary.f32(i32 46, float %600, float %941, float %945)  ; FMad(a,b,c)
  %947 = fmul fast float %941, %601
  %948 = call float @dx.op.tertiary.f32(i32 46, float %600, float %944, float %947)  ; FMad(a,b,c)
  %949 = fmul fast float %939, %602
  %950 = call float @dx.op.tertiary.f32(i32 46, float %601, float %941, float %949)  ; FMad(a,b,c)
  %951 = fmul fast float %941, %602
  %952 = call float @dx.op.tertiary.f32(i32 46, float %601, float %944, float %951)  ; FMad(a,b,c)
  br label %953

; <label>:953                                     ; preds = %991, %929
  %954 = phi float [ 0.000000e+00, %929 ], [ %992, %991 ]
  %955 = phi float [ 0.000000e+00, %929 ], [ %993, %991 ]
  %956 = phi float [ 0.000000e+00, %929 ], [ %994, %991 ]
  %957 = phi float [ 0.000000e+00, %929 ], [ %995, %991 ]
  %958 = phi i32 [ 0, %929 ], [ %996, %991 ]
  %959 = mul i32 %958, 2
  %960 = add i32 0, %959
  %961 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %960
  %962 = load float, float* %961, align 4
  %963 = mul i32 %958, 2
  %964 = add i32 1, %963
  %965 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %964
  %966 = load float, float* %965, align 4
  %967 = fmul fast float %962, %946
  %968 = call float @dx.op.tertiary.f32(i32 46, float %966, float %950, float %967)  ; FMad(a,b,c)
  %969 = fmul fast float %962, %948
  %970 = call float @dx.op.tertiary.f32(i32 46, float %966, float %952, float %969)  ; FMad(a,b,c)
  %971 = fadd fast float %968, %595
  %972 = fadd fast float %970, %596
  %973 = fmul fast float %971, %512
  %974 = fmul fast float %972, %512
  %975 = call float @dx.op.binary.f32(i32 35, float %973, float %508)  ; FMax(a,b)
  %976 = call float @dx.op.binary.f32(i32 35, float %974, float %508)  ; FMax(a,b)
  %977 = call float @dx.op.binary.f32(i32 36, float %975, float %509)  ; FMin(a,b)
  %978 = call float @dx.op.binary.f32(i32 36, float %976, float %509)  ; FMin(a,b)
  %979 = fadd fast float %977, %506
  %980 = fadd fast float %978, %507
  %981 = uitofp i32 %568 to float
  %982 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %15, float %979, float %980, float %981, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %983 = extractvalue %dx.types.ResRet.f32 %982, 0
  %984 = fadd fast float %598, %516
  %985 = fcmp fast olt float %984, %983
  br i1 %985, label %986, label %991, !dx.controlflow.hints !57

; <label>:986                                     ; preds = %953
  %987 = fadd fast float %983, %956
  %988 = fadd fast float %968, %954
  %989 = fadd fast float %970, %955
  %990 = fadd fast float %957, 1.000000e+00
  br label %991

; <label>:991                                     ; preds = %986, %953
  %992 = phi float [ %988, %986 ], [ %954, %953 ]
  %993 = phi float [ %989, %986 ], [ %955, %953 ]
  %994 = phi float [ %987, %986 ], [ %956, %953 ]
  %995 = phi float [ %990, %986 ], [ %957, %953 ]
  %996 = add nuw nsw i32 %958, 1
  %997 = icmp eq i32 %996, 8
  br i1 %997, label %998, label %953

; <label>:998                                     ; preds = %991
  %999 = fdiv fast float 1.000000e+00, %995
  %1000 = fcmp fast oeq float %995, 0.000000e+00
  %1001 = fmul fast float %999, %994
  %1002 = select i1 %1000, float -1.000000e+00, float %1001
  %1003 = fcmp fast olt float %1002, 0.000000e+00
  br i1 %1003, label %1290, label %1004, !dx.controlflow.hints !58

; <label>:1004                                    ; preds = %998
  %1005 = fmul fast float %999, %993
  %1006 = select i1 %1000, float 0.000000e+00, float %1005
  %1007 = fmul fast float %999, %992
  %1008 = select i1 %1000, float 0.000000e+00, float %1007
  %1009 = fadd fast float %1008, %595
  %1010 = fadd fast float %1006, %596
  br i1 %571, label %1011, label %1015, !dx.controlflow.hints !54

; <label>:1011                                    ; preds = %1004
  %1012 = fcmp fast olt float %695, 0x3FE6666660000000
  %1013 = select i1 %1012, float 1.000000e+00, float 0.000000e+00
  %1014 = select i1 %1012, float 0.000000e+00, float 1.000000e+00
  br label %1015

; <label>:1015                                    ; preds = %1011, %1004
  %1016 = phi float [ 0.000000e+00, %1011 ], [ %698, %1004 ]
  %1017 = phi float [ %1013, %1011 ], [ %699, %1004 ]
  %1018 = phi float [ %1014, %1011 ], [ %700, %1004 ]
  %1019 = fmul fast float %1017, %696
  %1020 = fmul fast float %1018, %695
  %1021 = fsub fast float %1019, %1020
  %1022 = fmul fast float %1018, %694
  %1023 = fmul fast float %1016, %696
  %1024 = fsub fast float %1022, %1023
  %1025 = fmul fast float %1016, %695
  %1026 = fmul fast float %1017, %694
  %1027 = fsub fast float %1025, %1026
  %1028 = call float @dx.op.dot3.f32(i32 55, float %1021, float %1024, float %1027, float %1021, float %1024, float %1027)  ; Dot3(ax,ay,az,bx,by,bz)
  %1029 = call float @dx.op.unary.f32(i32 25, float %1028)  ; Rsqrt(value)
  %1030 = fmul fast float %1029, %394
  %1031 = fmul fast float %1030, %1021
  %1032 = fmul fast float %1030, %1024
  %1033 = fmul fast float %1027, %394
  %1034 = fmul fast float %1033, %1029
  %1035 = fmul fast float %1009, %546
  %1036 = call float @dx.op.tertiary.f32(i32 46, float %1010, float %552, float %1035)  ; FMad(a,b,c)
  %1037 = call float @dx.op.tertiary.f32(i32 46, float %1002, float %558, float %1036)  ; FMad(a,b,c)
  %1038 = fadd fast float %1037, %564
  %1039 = fmul fast float %1009, %547
  %1040 = call float @dx.op.tertiary.f32(i32 46, float %1010, float %553, float %1039)  ; FMad(a,b,c)
  %1041 = call float @dx.op.tertiary.f32(i32 46, float %1002, float %559, float %1040)  ; FMad(a,b,c)
  %1042 = fadd fast float %1041, %565
  %1043 = fmul fast float %1009, %548
  %1044 = call float @dx.op.tertiary.f32(i32 46, float %1010, float %554, float %1043)  ; FMad(a,b,c)
  %1045 = call float @dx.op.tertiary.f32(i32 46, float %1002, float %560, float %1044)  ; FMad(a,b,c)
  %1046 = fadd fast float %1045, %566
  %1047 = fmul fast float %1009, %549
  %1048 = call float @dx.op.tertiary.f32(i32 46, float %1010, float %555, float %1047)  ; FMad(a,b,c)
  %1049 = call float @dx.op.tertiary.f32(i32 46, float %1002, float %561, float %1048)  ; FMad(a,b,c)
  %1050 = fadd fast float %1049, %567
  %1051 = fdiv fast float 1.000000e+00, %1050
  %1052 = fmul fast float %1051, %1038
  %1053 = fmul fast float %1051, %1042
  %1054 = fmul fast float %1051, %1046
  %1055 = fsub fast float %397, %1031
  %1056 = fsub fast float %398, %1032
  %1057 = fsub fast float %399, %1034
  %1058 = fsub fast float %1052, %1055
  %1059 = fsub fast float %1053, %1056
  %1060 = fsub fast float %1054, %1057
  %1061 = call float @dx.op.dot3.f32(i32 55, float %1058, float %1059, float %1060, float %1058, float %1059, float %1060)  ; Dot3(ax,ay,az,bx,by,bz)
  %1062 = call float @dx.op.unary.f32(i32 25, float %1061)  ; Rsqrt(value)
  %1063 = fmul fast float %1058, %1062
  %1064 = fmul fast float %1059, %1062
  %1065 = fmul fast float %1060, %1062
  %1066 = fsub fast float %576, %1055
  %1067 = fsub fast float %577, %1056
  %1068 = fsub fast float %578, %1057
  %1069 = call float @dx.op.dot3.f32(i32 55, float %745, float %746, float %747, float %1066, float %1067, float %1068)  ; Dot3(ax,ay,az,bx,by,bz)
  %1070 = call float @dx.op.dot3.f32(i32 55, float %745, float %746, float %747, float %1063, float %1064, float %1065)  ; Dot3(ax,ay,az,bx,by,bz)
  %1071 = fdiv fast float 1.000000e+00, %1070
  %1072 = fmul fast float %1071, %1069
  %1073 = fmul fast float %1072, %1063
  %1074 = fmul fast float %1072, %1064
  %1075 = fmul fast float %1072, %1065
  %1076 = fadd fast float %1073, %1055
  %1077 = fadd fast float %1074, %1056
  %1078 = fadd fast float %1075, %1057
  %1079 = fadd fast float %1031, %397
  %1080 = fadd fast float %1032, %398
  %1081 = fadd fast float %1034, %399
  %1082 = fsub fast float %1052, %1079
  %1083 = fsub fast float %1053, %1080
  %1084 = fsub fast float %1054, %1081
  %1085 = call float @dx.op.dot3.f32(i32 55, float %1082, float %1083, float %1084, float %1082, float %1083, float %1084)  ; Dot3(ax,ay,az,bx,by,bz)
  %1086 = call float @dx.op.unary.f32(i32 25, float %1085)  ; Rsqrt(value)
  %1087 = fmul fast float %1086, %1082
  %1088 = fmul fast float %1086, %1083
  %1089 = fmul fast float %1086, %1084
  %1090 = fsub fast float %576, %1079
  %1091 = fsub fast float %577, %1080
  %1092 = fsub fast float %578, %1081
  %1093 = call float @dx.op.dot3.f32(i32 55, float %745, float %746, float %747, float %1090, float %1091, float %1092)  ; Dot3(ax,ay,az,bx,by,bz)
  %1094 = call float @dx.op.dot3.f32(i32 55, float %745, float %746, float %747, float %1087, float %1088, float %1089)  ; Dot3(ax,ay,az,bx,by,bz)
  %1095 = fdiv fast float 1.000000e+00, %1094
  %1096 = fmul fast float %1095, %1093
  %1097 = fmul fast float %1096, %1087
  %1098 = fmul fast float %1096, %1088
  %1099 = fmul fast float %1096, %1089
  %1100 = fadd fast float %1097, %1079
  %1101 = fadd fast float %1098, %1080
  %1102 = fadd fast float %1099, %1081
  %1103 = fmul fast float %1076, %522
  %1104 = call float @dx.op.tertiary.f32(i32 46, float %1077, float %528, float %1103)  ; FMad(a,b,c)
  %1105 = call float @dx.op.tertiary.f32(i32 46, float %1078, float %534, float %1104)  ; FMad(a,b,c)
  %1106 = fadd fast float %1105, %540
  %1107 = fmul fast float %1076, %523
  %1108 = call float @dx.op.tertiary.f32(i32 46, float %1077, float %529, float %1107)  ; FMad(a,b,c)
  %1109 = call float @dx.op.tertiary.f32(i32 46, float %1078, float %535, float %1108)  ; FMad(a,b,c)
  %1110 = fadd fast float %1109, %541
  %1111 = fmul fast float %1076, %525
  %1112 = call float @dx.op.tertiary.f32(i32 46, float %1077, float %531, float %1111)  ; FMad(a,b,c)
  %1113 = call float @dx.op.tertiary.f32(i32 46, float %1078, float %537, float %1112)  ; FMad(a,b,c)
  %1114 = fadd fast float %1113, %543
  %1115 = fmul fast float %1100, %522
  %1116 = call float @dx.op.tertiary.f32(i32 46, float %1101, float %528, float %1115)  ; FMad(a,b,c)
  %1117 = call float @dx.op.tertiary.f32(i32 46, float %1102, float %534, float %1116)  ; FMad(a,b,c)
  %1118 = fadd fast float %1117, %540
  %1119 = fmul fast float %1100, %523
  %1120 = call float @dx.op.tertiary.f32(i32 46, float %1101, float %529, float %1119)  ; FMad(a,b,c)
  %1121 = call float @dx.op.tertiary.f32(i32 46, float %1102, float %535, float %1120)  ; FMad(a,b,c)
  %1122 = fadd fast float %1121, %541
  %1123 = fmul fast float %1100, %525
  %1124 = call float @dx.op.tertiary.f32(i32 46, float %1101, float %531, float %1123)  ; FMad(a,b,c)
  %1125 = call float @dx.op.tertiary.f32(i32 46, float %1102, float %537, float %1124)  ; FMad(a,b,c)
  %1126 = fadd fast float %1125, %543
  %1127 = fdiv fast float 1.000000e+00, %1114
  %1128 = fmul fast float %1127, %1106
  %1129 = fmul fast float %1127, %1110
  %1130 = fdiv fast float 1.000000e+00, %1126
  %1131 = fmul fast float %1130, %1118
  %1132 = fmul fast float %1130, %1122
  %1133 = fsub fast float %1131, %1128
  %1134 = fsub fast float %1132, %1129
  %1135 = call float @dx.op.dot2.f32(i32 54, float %1133, float %1134, float %1133, float %1134)  ; Dot2(ax,ay,bx,by)
  %1136 = call float @dx.op.unary.f32(i32 25, float %1135)  ; Rsqrt(value)
  %1137 = fmul fast float %1133, %1136
  %1138 = fmul fast float %1134, %1136
  %1139 = fmul fast float %1133, %1133
  %1140 = fmul fast float %1134, %1134
  %1141 = fadd fast float %1139, %1140
  %1142 = call float @dx.op.unary.f32(i32 24, float %1141)  ; Sqrt(value)
  %1143 = fmul fast float %1142, 5.000000e-01
  br i1 %571, label %1236, label %1144, !dx.controlflow.hints !55

; <label>:1144                                    ; preds = %1015
  %1145 = fsub fast float %397, %389
  %1146 = fsub fast float %398, %390
  %1147 = fsub fast float %399, %391
  %1148 = fsub fast float %1052, %1145
  %1149 = fsub fast float %1053, %1146
  %1150 = fsub fast float %1054, %1147
  %1151 = call float @dx.op.dot3.f32(i32 55, float %1148, float %1149, float %1150, float %1148, float %1149, float %1150)  ; Dot3(ax,ay,az,bx,by,bz)
  %1152 = call float @dx.op.unary.f32(i32 25, float %1151)  ; Rsqrt(value)
  %1153 = fmul fast float %1152, %1148
  %1154 = fmul fast float %1152, %1149
  %1155 = fmul fast float %1152, %1150
  %1156 = fsub fast float %576, %1145
  %1157 = fsub fast float %577, %1146
  %1158 = fsub fast float %578, %1147
  %1159 = call float @dx.op.dot3.f32(i32 55, float %745, float %746, float %747, float %1156, float %1157, float %1158)  ; Dot3(ax,ay,az,bx,by,bz)
  %1160 = call float @dx.op.dot3.f32(i32 55, float %745, float %746, float %747, float %1153, float %1154, float %1155)  ; Dot3(ax,ay,az,bx,by,bz)
  %1161 = fdiv fast float 1.000000e+00, %1160
  %1162 = fmul fast float %1161, %1159
  %1163 = fmul fast float %1162, %1153
  %1164 = fmul fast float %1162, %1154
  %1165 = fmul fast float %1162, %1155
  %1166 = fadd fast float %1163, %1145
  %1167 = fadd fast float %1164, %1146
  %1168 = fadd fast float %1165, %1147
  %1169 = fadd fast float %397, %389
  %1170 = fadd fast float %398, %390
  %1171 = fadd fast float %399, %391
  %1172 = fsub fast float %1052, %1169
  %1173 = fsub fast float %1053, %1170
  %1174 = fsub fast float %1054, %1171
  %1175 = call float @dx.op.dot3.f32(i32 55, float %1172, float %1173, float %1174, float %1172, float %1173, float %1174)  ; Dot3(ax,ay,az,bx,by,bz)
  %1176 = call float @dx.op.unary.f32(i32 25, float %1175)  ; Rsqrt(value)
  %1177 = fmul fast float %1176, %1172
  %1178 = fmul fast float %1176, %1173
  %1179 = fmul fast float %1176, %1174
  %1180 = fsub fast float %576, %1169
  %1181 = fsub fast float %577, %1170
  %1182 = fsub fast float %578, %1171
  %1183 = call float @dx.op.dot3.f32(i32 55, float %745, float %746, float %747, float %1180, float %1181, float %1182)  ; Dot3(ax,ay,az,bx,by,bz)
  %1184 = call float @dx.op.dot3.f32(i32 55, float %745, float %746, float %747, float %1177, float %1178, float %1179)  ; Dot3(ax,ay,az,bx,by,bz)
  %1185 = fdiv fast float 1.000000e+00, %1184
  %1186 = fmul fast float %1185, %1183
  %1187 = fmul fast float %1186, %1177
  %1188 = fmul fast float %1186, %1178
  %1189 = fmul fast float %1186, %1179
  %1190 = fadd fast float %1187, %1169
  %1191 = fadd fast float %1188, %1170
  %1192 = fadd fast float %1189, %1171
  %1193 = fmul fast float %1166, %522
  %1194 = call float @dx.op.tertiary.f32(i32 46, float %1167, float %528, float %1193)  ; FMad(a,b,c)
  %1195 = call float @dx.op.tertiary.f32(i32 46, float %1168, float %534, float %1194)  ; FMad(a,b,c)
  %1196 = fadd fast float %1195, %540
  %1197 = fmul fast float %1166, %523
  %1198 = call float @dx.op.tertiary.f32(i32 46, float %1167, float %529, float %1197)  ; FMad(a,b,c)
  %1199 = call float @dx.op.tertiary.f32(i32 46, float %1168, float %535, float %1198)  ; FMad(a,b,c)
  %1200 = fadd fast float %1199, %541
  %1201 = fmul fast float %1166, %525
  %1202 = call float @dx.op.tertiary.f32(i32 46, float %1167, float %531, float %1201)  ; FMad(a,b,c)
  %1203 = call float @dx.op.tertiary.f32(i32 46, float %1168, float %537, float %1202)  ; FMad(a,b,c)
  %1204 = fadd fast float %1203, %543
  %1205 = fmul fast float %1190, %522
  %1206 = call float @dx.op.tertiary.f32(i32 46, float %1191, float %528, float %1205)  ; FMad(a,b,c)
  %1207 = call float @dx.op.tertiary.f32(i32 46, float %1192, float %534, float %1206)  ; FMad(a,b,c)
  %1208 = fadd fast float %1207, %540
  %1209 = fmul fast float %1190, %523
  %1210 = call float @dx.op.tertiary.f32(i32 46, float %1191, float %529, float %1209)  ; FMad(a,b,c)
  %1211 = call float @dx.op.tertiary.f32(i32 46, float %1192, float %535, float %1210)  ; FMad(a,b,c)
  %1212 = fadd fast float %1211, %541
  %1213 = fmul fast float %1190, %525
  %1214 = call float @dx.op.tertiary.f32(i32 46, float %1191, float %531, float %1213)  ; FMad(a,b,c)
  %1215 = call float @dx.op.tertiary.f32(i32 46, float %1192, float %537, float %1214)  ; FMad(a,b,c)
  %1216 = fadd fast float %1215, %543
  %1217 = fdiv fast float 1.000000e+00, %1204
  %1218 = fmul fast float %1217, %1196
  %1219 = fmul fast float %1217, %1200
  %1220 = fdiv fast float 1.000000e+00, %1216
  %1221 = fmul fast float %1220, %1208
  %1222 = fmul fast float %1220, %1212
  %1223 = fsub fast float %1221, %1218
  %1224 = fsub fast float %1222, %1219
  %1225 = call float @dx.op.dot2.f32(i32 54, float %1223, float %1224, float %1223, float %1224)  ; Dot2(ax,ay,bx,by)
  %1226 = call float @dx.op.unary.f32(i32 25, float %1225)  ; Rsqrt(value)
  %1227 = fmul fast float %1223, %1226
  %1228 = fmul fast float %1224, %1226
  %1229 = fmul fast float %1223, %1223
  %1230 = fmul fast float %1224, %1224
  %1231 = fadd fast float %1229, %1230
  %1232 = call float @dx.op.unary.f32(i32 24, float %1231)  ; Sqrt(value)
  %1233 = fmul fast float %1232, 5.000000e-01
  %1234 = fcmp fast olt float %1233, %1143
  br i1 %1234, label %1235, label %1236, !dx.controlflow.hints !56

; <label>:1235                                    ; preds = %1144
  br label %1236

; <label>:1236                                    ; preds = %1235, %1144, %1015
  %1237 = phi float [ %1143, %1015 ], [ %1233, %1235 ], [ %1143, %1144 ]
  %1238 = phi float [ %1143, %1015 ], [ %1143, %1235 ], [ %1233, %1144 ]
  %1239 = phi float [ %1137, %1015 ], [ %1137, %1235 ], [ %1227, %1144 ]
  %1240 = phi float [ %1138, %1015 ], [ %1138, %1235 ], [ %1228, %1144 ]
  %1241 = fsub fast float %1238, %1237
  %1242 = fmul fast float %1239, %1239
  %1243 = fmul fast float %1242, %1241
  %1244 = fadd fast float %1243, %1237
  %1245 = fmul fast float %1239, %1241
  %1246 = fmul fast float %1245, %1240
  %1247 = fmul fast float %1240, %1240
  %1248 = fmul fast float %1247, %1241
  %1249 = fadd fast float %1248, %1237
  %1250 = fmul fast float %1244, %601
  %1251 = call float @dx.op.tertiary.f32(i32 46, float %600, float %1246, float %1250)  ; FMad(a,b,c)
  %1252 = fmul fast float %1246, %601
  %1253 = call float @dx.op.tertiary.f32(i32 46, float %600, float %1249, float %1252)  ; FMad(a,b,c)
  %1254 = fmul fast float %1244, %602
  %1255 = call float @dx.op.tertiary.f32(i32 46, float %601, float %1246, float %1254)  ; FMad(a,b,c)
  %1256 = fmul fast float %1246, %602
  %1257 = call float @dx.op.tertiary.f32(i32 46, float %601, float %1249, float %1256)  ; FMad(a,b,c)
  br label %1258

; <label>:1258                                    ; preds = %1258, %1236
  %1259 = phi float [ 0.000000e+00, %1236 ], [ %1285, %1258 ]
  %1260 = phi i32 [ 0, %1236 ], [ %1286, %1258 ]
  %1261 = mul i32 %1260, 2
  %1262 = add i32 0, %1261
  %1263 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1262
  %1264 = load float, float* %1263, align 4
  %1265 = mul i32 %1260, 2
  %1266 = add i32 1, %1265
  %1267 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1266
  %1268 = load float, float* %1267, align 4
  %1269 = fmul fast float %1264, %1251
  %1270 = call float @dx.op.tertiary.f32(i32 46, float %1268, float %1255, float %1269)  ; FMad(a,b,c)
  %1271 = fmul fast float %1264, %1253
  %1272 = call float @dx.op.tertiary.f32(i32 46, float %1268, float %1257, float %1271)  ; FMad(a,b,c)
  %1273 = fadd fast float %1270, %595
  %1274 = fadd fast float %1272, %596
  %1275 = fmul fast float %1273, %512
  %1276 = fmul fast float %1274, %512
  %1277 = call float @dx.op.binary.f32(i32 35, float %1275, float %508)  ; FMax(a,b)
  %1278 = call float @dx.op.binary.f32(i32 35, float %1276, float %508)  ; FMax(a,b)
  %1279 = call float @dx.op.binary.f32(i32 36, float %1277, float %509)  ; FMin(a,b)
  %1280 = call float @dx.op.binary.f32(i32 36, float %1278, float %509)  ; FMin(a,b)
  %1281 = fadd fast float %1279, %506
  %1282 = fadd fast float %1280, %507
  %1283 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %16, float %1281, float %1282, float %981, float undef, i32 0, i32 0, i32 undef, float %984)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1284 = extractvalue %dx.types.ResRet.f32 %1283, 0
  %1285 = fadd fast float %1284, %1259
  %1286 = add nuw nsw i32 %1260, 1
  %1287 = icmp eq i32 %1286, 8
  br i1 %1287, label %1288, label %1258

; <label>:1288                                    ; preds = %1258
  %1289 = fmul fast float %1285, 1.250000e-01
  br label %1290

; <label>:1290                                    ; preds = %1288, %998, %647
  %1291 = phi float [ %674, %647 ], [ %1289, %1288 ], [ 1.000000e+00, %998 ]
  %1292 = fcmp fast ogt float %1291, 0.000000e+00
  %1293 = xor i1 %51, true
  %1294 = and i1 %1292, %1293
  %1295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1296 = extractvalue %dx.types.CBufRet.f32 %1295, 1
  %1297 = fcmp fast olt float %1296, 0.000000e+00
  %1298 = and i1 %1294, %1297
  br i1 %1298, label %1299, label %1410, !dx.controlflow.hints !59

; <label>:1299                                    ; preds = %1290
  %1300 = fadd fast float %595, %508
  %1301 = fadd fast float %596, %508
  %1302 = fadd fast float %598, %516
  %1303 = fmul fast float %595, %546
  %1304 = call float @dx.op.tertiary.f32(i32 46, float %596, float %552, float %1303)  ; FMad(a,b,c)
  %1305 = call float @dx.op.tertiary.f32(i32 46, float %598, float %558, float %1304)  ; FMad(a,b,c)
  %1306 = fadd fast float %1305, %564
  %1307 = fmul fast float %595, %547
  %1308 = call float @dx.op.tertiary.f32(i32 46, float %596, float %553, float %1307)  ; FMad(a,b,c)
  %1309 = call float @dx.op.tertiary.f32(i32 46, float %598, float %559, float %1308)  ; FMad(a,b,c)
  %1310 = fadd fast float %1309, %565
  %1311 = fmul fast float %595, %548
  %1312 = call float @dx.op.tertiary.f32(i32 46, float %596, float %554, float %1311)  ; FMad(a,b,c)
  %1313 = call float @dx.op.tertiary.f32(i32 46, float %598, float %560, float %1312)  ; FMad(a,b,c)
  %1314 = fadd fast float %1313, %566
  %1315 = fmul fast float %595, %549
  %1316 = call float @dx.op.tertiary.f32(i32 46, float %596, float %555, float %1315)  ; FMad(a,b,c)
  %1317 = call float @dx.op.tertiary.f32(i32 46, float %598, float %561, float %1316)  ; FMad(a,b,c)
  %1318 = fadd fast float %1317, %567
  %1319 = fmul fast float %1300, %546
  %1320 = call float @dx.op.tertiary.f32(i32 46, float %1301, float %552, float %1319)  ; FMad(a,b,c)
  %1321 = call float @dx.op.tertiary.f32(i32 46, float %1302, float %558, float %1320)  ; FMad(a,b,c)
  %1322 = fadd fast float %1321, %564
  %1323 = fmul fast float %1300, %547
  %1324 = call float @dx.op.tertiary.f32(i32 46, float %1301, float %553, float %1323)  ; FMad(a,b,c)
  %1325 = call float @dx.op.tertiary.f32(i32 46, float %1302, float %559, float %1324)  ; FMad(a,b,c)
  %1326 = fadd fast float %1325, %565
  %1327 = fmul fast float %1300, %548
  %1328 = call float @dx.op.tertiary.f32(i32 46, float %1301, float %554, float %1327)  ; FMad(a,b,c)
  %1329 = call float @dx.op.tertiary.f32(i32 46, float %1302, float %560, float %1328)  ; FMad(a,b,c)
  %1330 = fadd fast float %1329, %566
  %1331 = fmul fast float %1300, %549
  %1332 = call float @dx.op.tertiary.f32(i32 46, float %1301, float %555, float %1331)  ; FMad(a,b,c)
  %1333 = call float @dx.op.tertiary.f32(i32 46, float %1302, float %561, float %1332)  ; FMad(a,b,c)
  %1334 = fadd fast float %1333, %567
  %1335 = fdiv fast float 1.000000e+00, %1318
  %1336 = fmul fast float %1335, %1306
  %1337 = fmul fast float %1335, %1310
  %1338 = fmul fast float %1335, %1314
  %1339 = fdiv fast float 1.000000e+00, %1334
  %1340 = fmul fast float %1339, %1322
  %1341 = fmul fast float %1339, %1326
  %1342 = fmul fast float %1339, %1330
  %1343 = fsub fast float %1336, %1340
  %1344 = fsub fast float %1337, %1341
  %1345 = fsub fast float %1338, %1342
  %1346 = fmul fast float %1343, %1343
  %1347 = fmul fast float %1344, %1344
  %1348 = fadd fast float %1346, %1347
  %1349 = fmul fast float %1345, %1345
  %1350 = fadd fast float %1348, %1349
  %1351 = call float @dx.op.unary.f32(i32 24, float %1350)  ; Sqrt(value)
  %1352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1353 = extractvalue %dx.types.CBufRet.f32 %1352, 0
  %1354 = extractvalue %dx.types.CBufRet.f32 %1352, 1
  %1355 = extractvalue %dx.types.CBufRet.f32 %1352, 2
  %1356 = extractvalue %dx.types.CBufRet.f32 %1352, 3
  %1357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1358 = extractvalue %dx.types.CBufRet.f32 %1357, 0
  %1359 = extractvalue %dx.types.CBufRet.f32 %1357, 1
  %1360 = extractvalue %dx.types.CBufRet.f32 %1357, 2
  %1361 = extractvalue %dx.types.CBufRet.f32 %1357, 3
  %1362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1363 = extractvalue %dx.types.CBufRet.f32 %1362, 0
  %1364 = extractvalue %dx.types.CBufRet.f32 %1362, 1
  %1365 = extractvalue %dx.types.CBufRet.f32 %1362, 2
  %1366 = extractvalue %dx.types.CBufRet.f32 %1362, 3
  %1367 = fmul fast float %1353, %1336
  %1368 = call float @dx.op.tertiary.f32(i32 46, float %1337, float %1354, float %1367)  ; FMad(a,b,c)
  %1369 = call float @dx.op.tertiary.f32(i32 46, float %1338, float %1355, float %1368)  ; FMad(a,b,c)
  %1370 = call float @dx.op.tertiary.f32(i32 46, float %1318, float %1356, float %1369)  ; FMad(a,b,c)
  %1371 = fmul fast float %1358, %1336
  %1372 = call float @dx.op.tertiary.f32(i32 46, float %1337, float %1359, float %1371)  ; FMad(a,b,c)
  %1373 = call float @dx.op.tertiary.f32(i32 46, float %1338, float %1360, float %1372)  ; FMad(a,b,c)
  %1374 = call float @dx.op.tertiary.f32(i32 46, float %1318, float %1361, float %1373)  ; FMad(a,b,c)
  %1375 = fmul fast float %1363, %1336
  %1376 = call float @dx.op.tertiary.f32(i32 46, float %1337, float %1364, float %1375)  ; FMad(a,b,c)
  %1377 = call float @dx.op.tertiary.f32(i32 46, float %1338, float %1365, float %1376)  ; FMad(a,b,c)
  %1378 = call float @dx.op.tertiary.f32(i32 46, float %1318, float %1366, float %1377)  ; FMad(a,b,c)
  %1379 = fmul fast float %1353, %1340
  %1380 = call float @dx.op.tertiary.f32(i32 46, float %1341, float %1354, float %1379)  ; FMad(a,b,c)
  %1381 = call float @dx.op.tertiary.f32(i32 46, float %1342, float %1355, float %1380)  ; FMad(a,b,c)
  %1382 = call float @dx.op.tertiary.f32(i32 46, float %1334, float %1356, float %1381)  ; FMad(a,b,c)
  %1383 = fmul fast float %1358, %1340
  %1384 = call float @dx.op.tertiary.f32(i32 46, float %1341, float %1359, float %1383)  ; FMad(a,b,c)
  %1385 = call float @dx.op.tertiary.f32(i32 46, float %1342, float %1360, float %1384)  ; FMad(a,b,c)
  %1386 = call float @dx.op.tertiary.f32(i32 46, float %1334, float %1361, float %1385)  ; FMad(a,b,c)
  %1387 = fmul fast float %1363, %1340
  %1388 = call float @dx.op.tertiary.f32(i32 46, float %1341, float %1364, float %1387)  ; FMad(a,b,c)
  %1389 = call float @dx.op.tertiary.f32(i32 46, float %1342, float %1365, float %1388)  ; FMad(a,b,c)
  %1390 = call float @dx.op.tertiary.f32(i32 46, float %1334, float %1366, float %1389)  ; FMad(a,b,c)
  %1391 = fdiv fast float 1.000000e+00, %1378
  %1392 = fmul fast float %1391, %1370
  %1393 = fmul fast float %1391, %1374
  %1394 = fdiv fast float 1.000000e+00, %1390
  %1395 = fmul fast float %1394, %1382
  %1396 = fmul fast float %1394, %1386
  %1397 = fsub fast float %1392, %1395
  %1398 = fsub fast float %1393, %1396
  %1399 = fmul fast float %1397, 5.000000e-01
  %1400 = fmul fast float %1398, 5.000000e-01
  %1401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1402 = extractvalue %dx.types.CBufRet.f32 %1401, 0
  %1403 = extractvalue %dx.types.CBufRet.f32 %1401, 1
  %1404 = fmul fast float %1399, %1402
  %1405 = fmul fast float %1400, %1403
  %1406 = fmul fast float %1404, %1404
  %1407 = fmul fast float %1405, %1405
  %1408 = fadd fast float %1406, %1407
  %1409 = call float @dx.op.unary.f32(i32 24, float %1408)  ; Sqrt(value)
  br label %1410

; <label>:1410                                    ; preds = %1299, %1290
  %1411 = phi float [ %1351, %1299 ], [ 0.000000e+00, %1290 ]
  %1412 = phi float [ %1409, %1299 ], [ 0.000000e+00, %1290 ]
  %1413 = fadd fast float %1291, -1.000000e+00
  %1414 = fmul fast float %1413, %485
  %1415 = fadd fast float %1414, 1.000000e+00
  %1416 = fmul fast float %1415, %497
  br label %1417

; <label>:1417                                    ; preds = %1410, %464
  %1418 = phi float [ %1411, %1410 ], [ 0.000000e+00, %464 ]
  %1419 = phi float [ %1412, %1410 ], [ 0.000000e+00, %464 ]
  %1420 = phi float [ %1416, %1410 ], [ %497, %464 ]
  %1421 = call float @dx.op.binary.f32(i32 36, float %1420, float %1420)  ; FMin(a,b)
  %1422 = call float @dx.op.binary.f32(i32 36, float %1420, float %1421)  ; FMin(a,b)
  %1423 = fcmp fast ogt float %1422, 0.000000e+00
  %1424 = call float @dx.op.dot3.f32(i32 55, float %142, float %143, float %144, float %437, float %438, float %439)  ; Dot3(ax,ay,az,bx,by,bz)
  %1425 = fcmp fast ogt float %1424, 0.000000e+00
  %1426 = and i1 %1423, %1425
  br i1 %1426, label %1427, label %1708, !dx.controlflow.hints !60

; <label>:1427                                    ; preds = %1417
  %1428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1429 = extractvalue %dx.types.CBufRet.f32 %1428, 1
  %1430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1431 = extractvalue %dx.types.CBufRet.f32 %1430, 1
  %1432 = select i1 %51, float %1429, float %1431
  %1433 = extractvalue %dx.types.CBufRet.f32 %1428, 2
  %1434 = extractvalue %dx.types.CBufRet.f32 %1430, 2
  %1435 = select i1 %51, float %1433, float %1434
  %1436 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1437 = extractvalue %dx.types.CBufRet.i32 %1436, 0
  %1438 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1439 = extractvalue %dx.types.CBufRet.i32 %1438, 0
  %1440 = select i1 %51, i32 %1437, i32 %1439
  %1441 = fcmp fast ogt float %1418, 0.000000e+00
  br i1 %1441, label %1442, label %1446, !dx.controlflow.hints !61

; <label>:1442                                    ; preds = %1427
  %1443 = fptosi float %1419 to i32
  %1444 = call i32 @dx.op.binary.i32(i32 37, i32 %1443, i32 1)  ; IMax(a,b)
  %1445 = call i32 @dx.op.binary.i32(i32 38, i32 %1444, i32 16)  ; IMin(a,b)
  br label %1446

; <label>:1446                                    ; preds = %1442, %1427
  %1447 = phi float [ 0.000000e+00, %1442 ], [ 1.000000e+00, %1427 ]
  %1448 = phi float [ %1418, %1442 ], [ %1432, %1427 ]
  %1449 = phi i32 [ %1445, %1442 ], [ %1440, %1427 ]
  %1450 = fcmp fast olt float %1448, 5.000000e-01
  %1451 = icmp eq i32 %1449, 0
  %1452 = or i1 %1450, %1451
  br i1 %1452, label %1703, label %1453, !dx.controlflow.hints !62

; <label>:1453                                    ; preds = %1446
  %1454 = fsub fast float %397, %113
  %1455 = fsub fast float %398, %114
  %1456 = fsub fast float %399, %115
  %1457 = fmul fast float %1454, %1454
  %1458 = fmul fast float %1455, %1455
  %1459 = fadd fast float %1457, %1458
  %1460 = fmul fast float %1456, %1456
  %1461 = fadd fast float %1459, %1460
  %1462 = call float @dx.op.unary.f32(i32 24, float %1461)  ; Sqrt(value)
  %1463 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1464 = extractvalue %dx.types.CBufRet.i32 %1463, 0
  %1465 = uitofp i32 %1464 to float
  %1466 = fmul fast float %1448, %394
  %1467 = fdiv fast float %1466, %1462
  %1468 = call float @dx.op.binary.f32(i32 36, float %1467, float 1.000000e+01)  ; FMin(a,b)
  %1469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %1470 = extractvalue %dx.types.CBufRet.f32 %1469, 0
  %1471 = extractvalue %dx.types.CBufRet.f32 %1469, 1
  %1472 = extractvalue %dx.types.CBufRet.f32 %1469, 2
  %1473 = extractvalue %dx.types.CBufRet.f32 %1469, 3
  %1474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %1475 = extractvalue %dx.types.CBufRet.f32 %1474, 0
  %1476 = extractvalue %dx.types.CBufRet.f32 %1474, 1
  %1477 = extractvalue %dx.types.CBufRet.f32 %1474, 2
  %1478 = extractvalue %dx.types.CBufRet.f32 %1474, 3
  %1479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %1480 = extractvalue %dx.types.CBufRet.f32 %1479, 0
  %1481 = extractvalue %dx.types.CBufRet.f32 %1479, 1
  %1482 = extractvalue %dx.types.CBufRet.f32 %1479, 2
  %1483 = extractvalue %dx.types.CBufRet.f32 %1479, 3
  %1484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1485 = extractvalue %dx.types.CBufRet.f32 %1484, 0
  %1486 = extractvalue %dx.types.CBufRet.f32 %1484, 1
  %1487 = extractvalue %dx.types.CBufRet.f32 %1484, 2
  %1488 = extractvalue %dx.types.CBufRet.f32 %1484, 3
  %1489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1490 = extractvalue %dx.types.CBufRet.f32 %1489, 0
  %1491 = extractvalue %dx.types.CBufRet.f32 %1489, 1
  %1492 = extractvalue %dx.types.CBufRet.f32 %1489, 2
  %1493 = extractvalue %dx.types.CBufRet.f32 %1489, 3
  %1494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1495 = extractvalue %dx.types.CBufRet.f32 %1494, 0
  %1496 = extractvalue %dx.types.CBufRet.f32 %1494, 1
  %1497 = extractvalue %dx.types.CBufRet.f32 %1494, 2
  %1498 = extractvalue %dx.types.CBufRet.f32 %1494, 3
  %1499 = select i1 %51, float %1470, float %1485
  %1500 = select i1 %51, float %1475, float %1490
  %1501 = select i1 %51, float %1480, float %1495
  %1502 = select i1 %51, float %1471, float %1486
  %1503 = select i1 %51, float %1476, float %1491
  %1504 = select i1 %51, float %1481, float %1496
  %1505 = select i1 %51, float %1472, float %1487
  %1506 = select i1 %51, float %1477, float %1492
  %1507 = select i1 %51, float %1482, float %1497
  %1508 = select i1 %51, float %1473, float %1488
  %1509 = select i1 %51, float %1478, float %1493
  %1510 = select i1 %51, float %1483, float %1498
  %1511 = fmul fast float %215, 0x401061CAC0000000
  %1512 = fmul fast float %215, 0x4023E1D7E0000000
  %1513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1514 = extractvalue %dx.types.CBufRet.f32 %1513, 0
  %1515 = extractvalue %dx.types.CBufRet.f32 %1513, 1
  %1516 = extractvalue %dx.types.CBufRet.f32 %1513, 2
  %1517 = extractvalue %dx.types.CBufRet.f32 %1513, 3
  %1518 = fsub fast float -0.000000e+00, %437
  %1519 = fmul fast float %439, %1518
  %1520 = fmul fast float %437, %1518
  %1521 = fmul fast float %438, %438
  %1522 = fsub fast float %1520, %1521
  %1523 = fdiv fast float 1.000000e+00, %58
  %1524 = fmul fast float %1516, %47
  %1525 = fmul fast float %1517, %48
  %1526 = fmul fast float %1448, %437
  %1527 = fmul fast float %1448, %439
  %1528 = fadd fast float %1526, %113
  %1529 = fadd fast float %1527, %115
  %1530 = fadd fast float %1512, 5.000000e-01
  %1531 = call float @dx.op.unary.f32(i32 22, float %1530)  ; Frc(value)
  %1532 = bitcast float %1531 to i32
  %1533 = ashr i32 %1532, 1
  %1534 = add nsw i32 %1533, 532487669
  %1535 = bitcast i32 %1534 to float
  %1536 = fmul fast float %1535, %1468
  %1537 = fadd fast float %1511, 5.000000e-01
  %1538 = call float @dx.op.unary.f32(i32 22, float %1537)  ; Frc(value)
  %1539 = fmul fast float %1538, 0x401921FB60000000
  %1540 = call float @dx.op.unary.f32(i32 12, float %1539)  ; Cos(value)
  %1541 = fmul fast float %1540, %1540
  %1542 = fsub fast float 1.000000e+00, %1541
  %1543 = bitcast float %1542 to i32
  %1544 = ashr i32 %1543, 1
  %1545 = add nsw i32 %1544, 532487669
  %1546 = bitcast i32 %1545 to float
  %1547 = fmul fast float %1536, %1540
  %1548 = fmul fast float %1547, %438
  %1549 = fmul fast float %1547, %1518
  %1550 = fadd fast float %1528, %1548
  %1551 = fmul fast float %1546, %1536
  %1552 = fmul fast float %1519, %1551
  %1553 = fmul fast float %1551, %439
  %1554 = fmul fast float %1551, %1522
  %1555 = fsub fast float %1550, %1552
  %1556 = fadd fast float %1553, %1448
  %1557 = fmul fast float %1556, %438
  %1558 = fadd fast float %1549, %114
  %1559 = fadd fast float %1558, %1557
  %1560 = fadd fast float %1529, %1554
  %1561 = fmul fast float %1555, %1499
  %1562 = call float @dx.op.tertiary.f32(i32 46, float %1559, float %1502, float %1561)  ; FMad(a,b,c)
  %1563 = call float @dx.op.tertiary.f32(i32 46, float %1560, float %1505, float %1562)  ; FMad(a,b,c)
  %1564 = fadd fast float %1563, %1508
  %1565 = fmul fast float %1555, %1500
  %1566 = call float @dx.op.tertiary.f32(i32 46, float %1559, float %1503, float %1565)  ; FMad(a,b,c)
  %1567 = call float @dx.op.tertiary.f32(i32 46, float %1560, float %1506, float %1566)  ; FMad(a,b,c)
  %1568 = fadd fast float %1567, %1509
  %1569 = fmul fast float %1555, %1501
  %1570 = call float @dx.op.tertiary.f32(i32 46, float %1559, float %1504, float %1569)  ; FMad(a,b,c)
  %1571 = call float @dx.op.tertiary.f32(i32 46, float %1560, float %1507, float %1570)  ; FMad(a,b,c)
  %1572 = fadd fast float %1571, %1510
  %1573 = fdiv fast float 1.000000e+00, %1572
  %1574 = fmul fast float %1564, 5.000000e-01
  %1575 = fmul fast float %1568, -5.000000e-01
  %1576 = fmul fast float %1574, %1573
  %1577 = fmul fast float %1575, %1573
  %1578 = fsub fast float 5.000000e-01, %1524
  %1579 = fadd fast float %1578, %1576
  %1580 = fsub fast float 5.000000e-01, %1525
  %1581 = fadd fast float %1580, %1577
  %1582 = fsub fast float %1573, %1523
  %1583 = call float @dx.op.dot2.f32(i32 54, float %1579, float %1581, float %1579, float %1581)  ; Dot2(ax,ay,bx,by)
  %1584 = call float @dx.op.binary.f32(i32 35, float %1583, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %1585 = call float @dx.op.dot2.f32(i32 54, float %1514, float %1515, float %1514, float %1515)  ; Dot2(ax,ay,bx,by)
  %1586 = fmul fast float %1585, %1584
  %1587 = call float @dx.op.unary.f32(i32 25, float %1586)  ; Rsqrt(value)
  %1588 = fmul fast float %1587, %1579
  %1589 = fmul fast float %1587, %1581
  %1590 = fadd fast float %1588, %1524
  %1591 = fadd fast float %1589, %1525
  %1592 = fmul fast float %1579, %1514
  %1593 = fmul fast float %1581, %1515
  %1594 = fmul fast float %1592, %1592
  %1595 = fmul fast float %1593, %1593
  %1596 = fadd fast float %1594, %1595
  %1597 = call float @dx.op.unary.f32(i32 24, float %1596)  ; Sqrt(value)
  %1598 = fdiv fast float 1.000000e+00, %1597
  %1599 = fmul fast float %1597, 3.906250e-03
  %1600 = fmul fast float %201, 0x3F70624DE0000000
  %1601 = fadd fast float %1600, 0x3F70624DE0000000
  %1602 = icmp sgt i32 %1449, -1
  br i1 %1602, label %1603, label %1668

; <label>:1603                                    ; preds = %1453
  br label %1604

; <label>:1604                                    ; preds = %1664, %1603
  %1605 = phi float [ %1639, %1664 ], [ %58, %1603 ]
  %1606 = phi float [ %1626, %1664 ], [ %58, %1603 ]
  %1607 = phi float [ %1606, %1664 ], [ %58, %1603 ]
  %1608 = phi i32 [ %1665, %1664 ], [ 0, %1603 ]
  %1609 = sitofp i32 %1608 to float
  %1610 = fadd fast float %215, 5.000000e-01
  %1611 = call float @dx.op.unary.f32(i32 22, float %1610)  ; Frc(value)
  %1612 = fadd fast float %1609, %1611
  %1613 = sitofp i32 %1449 to float
  %1614 = fdiv fast float %1612, %1613
  %1615 = fmul fast float %1614, %1614
  %1616 = fsub fast float %1615, %1614
  %1617 = fmul fast float %1616, %1447
  %1618 = fadd fast float %1617, %1614
  %1619 = call float @dx.op.binary.f32(i32 36, float %1618, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %1620 = fmul fast float %1619, %1579
  %1621 = fmul fast float %1619, %1581
  %1622 = fmul fast float %1619, %1582
  %1623 = fadd fast float %1620, %1590
  %1624 = fadd fast float %1621, %1591
  %1625 = fadd fast float %1622, %1523
  %1626 = fdiv fast float 1.000000e+00, %1625
  %1627 = icmp ne i32 %1464, 0
  %1628 = fmul fast float %1599, %1619
  %1629 = call float @dx.op.binary.f32(i32 36, float %1628, float %1465)  ; FMin(a,b)
  %1630 = select i1 %1627, float %1629, float 0.000000e+00
  %1631 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %1623, float %1624, float undef, float undef, i32 0, i32 0, i32 undef, float %1630)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1632 = extractvalue %dx.types.ResRet.f32 %1631, 0
  %1633 = fcmp fast ogt float %1632, -1.000000e+00
  %1634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1635 = extractvalue %dx.types.CBufRet.f32 %1634, 1
  %1636 = select i1 %1633, float %1635, float 1.000000e+00
  %1637 = fadd fast float %1632, 1.000000e+00
  %1638 = fmul fast float %1636, %1637
  %1639 = call float @dx.op.unary.f32(i32 6, float %1638)  ; FAbs(value)
  %1640 = fmul fast float %1639, %1601
  %1641 = fsub fast float %1626, %1639
  %1642 = fsub fast float %1641, %1640
  %1643 = fcmp fast ogt float %1642, 0.000000e+00
  %1644 = fcmp fast ogt float %1435, 0.000000e+00
  br i1 %1644, label %1645, label %1648, !dx.controlflow.hints !63

; <label>:1645                                    ; preds = %1604
  %1646 = fsub fast float %1626, %1607
  %1647 = call float @dx.op.binary.f32(i32 35, float %1646, float %1435)  ; FMax(a,b)
  br label %1648

; <label>:1648                                    ; preds = %1645, %1604
  %1649 = phi float [ %1647, %1645 ], [ %1448, %1604 ]
  %1650 = fcmp fast olt float %1642, %1649
  %1651 = fcmp uge float %1632, -1.000000e+00
  %1652 = or i1 %51, %1651
  %1653 = call float @dx.op.unary.f32(i32 7, float %1623)  ; Saturate(value)
  %1654 = call float @dx.op.unary.f32(i32 7, float %1624)  ; Saturate(value)
  %1655 = fcmp fast oeq float %1623, %1653
  %1656 = fcmp fast oeq float %1624, %1654
  %1657 = and i1 %1655, %1656
  %1658 = and i1 %1652, %1657
  %1659 = and i1 %1643, %1650
  %1660 = and i1 %1659, %1658
  %1661 = fcmp fast ogt float %1619, %1598
  %1662 = and i1 %1661, %1660
  %1663 = zext i1 %1662 to i32
  br i1 %1662, label %1667, label %1664, !dx.controlflow.hints !64

; <label>:1664                                    ; preds = %1648
  %1665 = add nuw nsw i32 %1608, 1
  %1666 = icmp slt i32 %1608, %1449
  br i1 %1666, label %1604, label %1667

; <label>:1667                                    ; preds = %1664, %1648
  br label %1668

; <label>:1668                                    ; preds = %1667, %1453
  %1669 = phi i32 [ 0, %1453 ], [ %1663, %1667 ]
  %1670 = phi float [ %58, %1453 ], [ %1639, %1667 ]
  %1671 = phi float [ %58, %1453 ], [ %1605, %1667 ]
  %1672 = phi float [ %58, %1453 ], [ %1626, %1667 ]
  %1673 = phi float [ %58, %1453 ], [ %1606, %1667 ]
  %1674 = fsub fast float %1673, %1671
  %1675 = fsub fast float %1672, %1670
  %1676 = fsub fast float %1674, %1675
  %1677 = fcmp fast une float %1676, 0.000000e+00
  %1678 = fmul fast float %1674, %1672
  %1679 = fmul fast float %1673, %1675
  %1680 = fsub fast float %1678, %1679
  %1681 = fdiv fast float 1.000000e+00, %1676
  %1682 = fmul fast float %1680, %1681
  %1683 = select i1 %1677, float %1682, float %1672
  %1684 = fdiv fast float 1.000000e+00, %1683
  %1685 = fsub fast float %1684, %1523
  %1686 = fdiv fast float %1685, %1582
  %1687 = call float @dx.op.unary.f32(i32 7, float %1686)  ; Saturate(value)
  %1688 = fmul fast float %1687, %1579
  %1689 = fmul fast float %1687, %1581
  %1690 = fadd fast float %1688, %1590
  %1691 = fadd fast float %1689, %1591
  %1692 = fadd fast float %1690, -5.000000e-01
  %1693 = fadd fast float %1691, -5.000000e-01
  %1694 = call float @dx.op.unary.f32(i32 6, float %1692)  ; FAbs(value)
  %1695 = call float @dx.op.unary.f32(i32 6, float %1693)  ; FAbs(value)
  %1696 = fadd fast float %1694, -5.000000e-01
  %1697 = fadd fast float %1695, -5.000000e-01
  %1698 = call float @dx.op.binary.f32(i32 35, float %1696, float %1697)  ; FMax(a,b)
  %1699 = fcmp fast olt float %1698, 0.000000e+00
  %1700 = icmp ne i32 %1669, 0
  %1701 = and i1 %1700, %1699
  %1702 = select i1 %1701, float 0.000000e+00, float 1.000000e+00
  br label %1703

; <label>:1703                                    ; preds = %1668, %1446
  %1704 = phi float [ %1702, %1668 ], [ 1.000000e+00, %1446 ]
  %1705 = fmul fast float %1704, %1420
  %1706 = fmul fast float %1704, %1420
  %1707 = fmul fast float %1704, %1420
  br label %1708

; <label>:1708                                    ; preds = %1703, %1417
  %1709 = phi float [ %1705, %1703 ], [ %1420, %1417 ]
  %1710 = phi float [ %1706, %1703 ], [ %1420, %1417 ]
  %1711 = phi float [ %1707, %1703 ], [ %1420, %1417 ]
  %1712 = call float @dx.op.binary.f32(i32 36, float %1710, float %1711)  ; FMin(a,b)
  %1713 = call float @dx.op.binary.f32(i32 36, float %1709, float %1712)  ; FMin(a,b)
  %1714 = fcmp fast ogt float %1713, 0x3F10000000000000
  %1715 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %1714)  ; WaveAnyTrue(cond)
  %1716 = icmp ugt i32 %240, 63
  br i1 %1716, label %1746, label %1717, !dx.controlflow.hints !65

; <label>:1717                                    ; preds = %1708
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1718 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %1718, label %1719, label %1722, !dx.controlflow.hints !66

; <label>:1719                                    ; preds = %1717
  %1720 = zext i1 %1715 to i32
  %1721 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %241
  store i32 %1720, i32 addrspace(3)* %1721, align 4, !tbaa !35
  br label %1722

; <label>:1722                                    ; preds = %1719, %1717
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1723 = icmp eq i32 %240, 32
  br i1 %1723, label %1724, label %1730, !dx.controlflow.hints !67

; <label>:1724                                    ; preds = %1722
  %1725 = xor i32 %241, 1
  %1726 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1725
  %1727 = load i32, i32 addrspace(3)* %1726, align 4, !tbaa !35
  %1728 = icmp ne i32 %1727, 0
  %1729 = or i1 %1715, %1728
  br label %1746

; <label>:1730                                    ; preds = %1722
  %1731 = icmp eq i32 %240, 16
  br i1 %1731, label %1732, label %1746, !dx.controlflow.hints !68

; <label>:1732                                    ; preds = %1730
  %1733 = xor i32 %241, 1
  %1734 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1733
  %1735 = load i32, i32 addrspace(3)* %1734, align 4, !tbaa !35
  %1736 = xor i32 %241, 2
  %1737 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1736
  %1738 = load i32, i32 addrspace(3)* %1737, align 4, !tbaa !35
  %1739 = or i32 %1738, %1735
  %1740 = xor i32 %241, 3
  %1741 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1740
  %1742 = load i32, i32 addrspace(3)* %1741, align 4, !tbaa !35
  %1743 = or i32 %1739, %1742
  %1744 = icmp ne i32 %1743, 0
  %1745 = or i1 %1715, %1744
  br label %1746

; <label>:1746                                    ; preds = %1732, %1730, %1724, %1708
  %1747 = phi i1 [ %1729, %1724 ], [ %1745, %1732 ], [ %1715, %1708 ], [ false, %1730 ]
  %1748 = select i1 %1747, i32 %376, i32 0
  %1749 = or i32 %371, %1748
  %1750 = lshr i32 %220, 5
  %1751 = lshr i32 %221, 5
  %1752 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1750, i32 %1751, i32 %374, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1753 = extractvalue %dx.types.ResRet.i32 %1752, 0
  %1754 = lshr i32 %1753, 23
  %1755 = and i32 %1754, 255
  %1756 = and i32 %220, 31
  %1757 = and i32 %221, 31
  %1758 = lshr i32 %1753, 1
  %1759 = and i32 %1758, 16352
  %1760 = lshr i32 %1753, 10
  %1761 = and i32 %1760, 8160
  %1762 = or i32 %1759, %1756
  %1763 = or i32 %1761, %1757
  %1764 = fmul fast float %1709, 2.550000e+02
  %1765 = fadd fast float %1764, %214
  %1766 = call float @dx.op.unary.f32(i32 27, float %1765)  ; Round_ni(value)
  %1767 = fmul fast float %1766, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1762, i32 %1763, i32 %1755, float %1767, float %1767, float %1767, float %1767, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1768 = icmp eq i32 %372, %376
  br i1 %1768, label %1769, label %370, !llvm.loop !69

; <label>:1769                                    ; preds = %1746
  br label %1770

; <label>:1770                                    ; preds = %1769, %366
  %1771 = phi i32 [ 0, %366 ], [ %1749, %1769 ]
  %1772 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1773 = extractvalue %dx.types.CBufRet.i32 %1772, 0
  %1774 = call i32 @dx.op.tertiary.i32(i32 49, i32 %226, i32 %1773, i32 %307)  ; UMad(a,b,c)
  %1775 = shl i32 %1774, 2
  %1776 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1775, i32 undef, i32 undef, i32 %1771)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1777 = add i32 %307, 1
  %1778 = icmp ugt i32 %1777, %303
  br i1 %1778, label %1779, label %306

; <label>:1779                                    ; preds = %1770
  br label %1780

; <label>:1780                                    ; preds = %1779, %299, %0
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

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneCount(i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.waveReadLaneFirst.i32(i32, i32) #2

; Function Attrs: nounwind
declare i32 @dx.op.waveActiveBit.i32(i32, i32, i8) #2

; Function Attrs: nounwind
declare i32 @dx.op.waveActiveOp.i32(i32, i32, i8, i8) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind
declare i1 @dx.op.waveIsFirstLane(i32) #2

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
!30 = !{i32 0, i64 524560, i32 4, !31}
!31 = !{i32 8, i32 8, i32 1}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.unroll.disable"}

