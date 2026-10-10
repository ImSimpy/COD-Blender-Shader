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
; shader hash: 868e3048eda937b185597709a178e133
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
  br i1 %158, label %1306, label %159, !dx.controlflow.hints !32

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
  %180 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %181 = udiv i32 %22, %180
  %182 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %178, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %183 = icmp eq i32 %180, 64
  br i1 %183, label %210, label %184, !dx.controlflow.hints !33

; <label>:184                                     ; preds = %159
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %185 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %185, label %186, label %188, !dx.controlflow.hints !34

; <label>:186                                     ; preds = %184
  %187 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %181
  store i32 %182, i32 addrspace(3)* %187, align 4, !tbaa !35
  br label %188

; <label>:188                                     ; preds = %186, %184
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %189 = icmp eq i32 %180, 32
  br i1 %189, label %190, label %195, !dx.controlflow.hints !39

; <label>:190                                     ; preds = %188
  %191 = xor i32 %181, 1
  %192 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %191
  %193 = load i32, i32 addrspace(3)* %192, align 4, !tbaa !35
  %194 = call i32 @dx.op.binary.i32(i32 40, i32 %182, i32 %193)  ; UMin(a,b)
  br label %210

; <label>:195                                     ; preds = %188
  %196 = icmp eq i32 %180, 16
  br i1 %196, label %197, label %210, !dx.controlflow.hints !40

; <label>:197                                     ; preds = %195
  %198 = xor i32 %181, 3
  %199 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %198
  %200 = load i32, i32 addrspace(3)* %199, align 4, !tbaa !35
  %201 = xor i32 %181, 2
  %202 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %201
  %203 = load i32, i32 addrspace(3)* %202, align 4, !tbaa !35
  %204 = call i32 @dx.op.binary.i32(i32 40, i32 %203, i32 %200)  ; UMin(a,b)
  %205 = xor i32 %181, 1
  %206 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %205
  %207 = load i32, i32 addrspace(3)* %206, align 4, !tbaa !35
  %208 = call i32 @dx.op.binary.i32(i32 40, i32 %182, i32 %207)  ; UMin(a,b)
  %209 = call i32 @dx.op.binary.i32(i32 40, i32 %208, i32 %204)  ; UMin(a,b)
  br label %210

; <label>:210                                     ; preds = %197, %195, %190, %159
  %211 = phi i32 [ %194, %190 ], [ %209, %197 ], [ %182, %159 ], [ 0, %195 ]
  %212 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %179, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  br i1 %183, label %239, label %213, !dx.controlflow.hints !41

; <label>:213                                     ; preds = %210
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %214 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %214, label %215, label %217, !dx.controlflow.hints !42

; <label>:215                                     ; preds = %213
  %216 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %181
  store i32 %212, i32 addrspace(3)* %216, align 4, !tbaa !35
  br label %217

; <label>:217                                     ; preds = %215, %213
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %218 = icmp eq i32 %180, 32
  br i1 %218, label %219, label %224, !dx.controlflow.hints !43

; <label>:219                                     ; preds = %217
  %220 = xor i32 %181, 1
  %221 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %220
  %222 = load i32, i32 addrspace(3)* %221, align 4, !tbaa !35
  %223 = call i32 @dx.op.binary.i32(i32 39, i32 %212, i32 %222)  ; UMax(a,b)
  br label %239

; <label>:224                                     ; preds = %217
  %225 = icmp eq i32 %180, 16
  br i1 %225, label %226, label %239, !dx.controlflow.hints !44

; <label>:226                                     ; preds = %224
  %227 = xor i32 %181, 3
  %228 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %227
  %229 = load i32, i32 addrspace(3)* %228, align 4, !tbaa !35
  %230 = xor i32 %181, 2
  %231 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %230
  %232 = load i32, i32 addrspace(3)* %231, align 4, !tbaa !35
  %233 = call i32 @dx.op.binary.i32(i32 39, i32 %232, i32 %229)  ; UMax(a,b)
  %234 = xor i32 %181, 1
  %235 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %234
  %236 = load i32, i32 addrspace(3)* %235, align 4, !tbaa !35
  %237 = call i32 @dx.op.binary.i32(i32 39, i32 %212, i32 %236)  ; UMax(a,b)
  %238 = call i32 @dx.op.binary.i32(i32 39, i32 %237, i32 %233)  ; UMax(a,b)
  br label %239

; <label>:239                                     ; preds = %226, %224, %219, %210
  %240 = phi i32 [ %223, %219 ], [ %238, %226 ], [ %212, %210 ], [ 0, %224 ]
  %241 = lshr i32 %211, 5
  %242 = lshr i32 %240, 5
  %243 = call i32 @dx.op.binary.i32(i32 40, i32 %242, i32 %170)  ; UMin(a,b)
  %244 = icmp ugt i32 %241, %243
  br i1 %244, label %1306, label %245

; <label>:245                                     ; preds = %239
  br label %246

; <label>:246                                     ; preds = %1296, %245
  %247 = phi i32 [ %1303, %1296 ], [ %241, %245 ]
  %248 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.i32 %248, 0
  %250 = call i32 @dx.op.tertiary.i32(i32 49, i32 %166, i32 %249, i32 %247)  ; UMad(a,b,c)
  %251 = shl i32 %250, 2
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = shl i32 %247, 5
  %255 = sub nsw i32 %178, %254
  %256 = call i32 @dx.op.binary.i32(i32 37, i32 %255, i32 0)  ; IMax(a,b)
  %257 = call i32 @dx.op.binary.i32(i32 38, i32 %256, i32 31)  ; IMin(a,b)
  %258 = sub nsw i32 1, %178
  %259 = add nsw i32 %258, %179
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
  br i1 %183, label %297, label %271, !dx.controlflow.hints !45

; <label>:271                                     ; preds = %246
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %272 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %272, label %273, label %275, !dx.controlflow.hints !46

; <label>:273                                     ; preds = %271
  %274 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %181
  store i32 %270, i32 addrspace(3)* %274, align 4, !tbaa !35
  br label %275

; <label>:275                                     ; preds = %273, %271
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %276 = icmp eq i32 %180, 32
  br i1 %276, label %277, label %282, !dx.controlflow.hints !47

; <label>:277                                     ; preds = %275
  %278 = xor i32 %181, 1
  %279 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %278
  %280 = load i32, i32 addrspace(3)* %279, align 4, !tbaa !35
  %281 = or i32 %280, %270
  br label %297

; <label>:282                                     ; preds = %275
  %283 = icmp eq i32 %180, 16
  br i1 %283, label %284, label %297, !dx.controlflow.hints !48

; <label>:284                                     ; preds = %282
  %285 = xor i32 %181, 1
  %286 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %285
  %287 = load i32, i32 addrspace(3)* %286, align 4, !tbaa !35
  %288 = or i32 %287, %270
  %289 = xor i32 %181, 2
  %290 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %289
  %291 = load i32, i32 addrspace(3)* %290, align 4, !tbaa !35
  %292 = or i32 %288, %291
  %293 = xor i32 %181, 3
  %294 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %293
  %295 = load i32, i32 addrspace(3)* %294, align 4, !tbaa !35
  %296 = or i32 %292, %295
  br label %297

; <label>:297                                     ; preds = %284, %282, %277, %246
  %298 = phi i32 [ %281, %277 ], [ %296, %284 ], [ %270, %246 ], [ 0, %282 ]
  br i1 %183, label %299, label %301, !dx.controlflow.hints !49

; <label>:299                                     ; preds = %297
  %300 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %298)  ; WaveReadLaneFirst(value)
  br label %306

; <label>:301                                     ; preds = %297
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %302 = icmp eq i32 %22, 0
  br i1 %302, label %303, label %304, !dx.controlflow.hints !50

; <label>:303                                     ; preds = %301
  store i32 %298, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !35
  br label %304

; <label>:304                                     ; preds = %303, %301
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %305 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !35
  br label %306

; <label>:306                                     ; preds = %304, %299
  %307 = phi i32 [ %300, %299 ], [ %305, %304 ]
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %1296, label %309

; <label>:309                                     ; preds = %306
  br label %310

; <label>:310                                     ; preds = %1272, %309
  %311 = phi i32 [ %1275, %1272 ], [ 0, %309 ]
  %312 = phi i32 [ %317, %1272 ], [ %307, %309 ]
  %313 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %312)  ; FirstbitLo(value)
  %314 = add i32 %313, %254
  %315 = and i32 %313, 31
  %316 = shl i32 1, %315
  %317 = xor i32 %316, %312
  %318 = mul i32 %314, 112
  %319 = add i32 %318, 16
  %320 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.f32 %320, 0
  %322 = extractvalue %dx.types.ResRet.f32 %320, 1
  %323 = extractvalue %dx.types.ResRet.f32 %320, 2
  %324 = add i32 %318, 28
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = add i32 %318, 32
  %328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.f32 %328, 0
  %330 = extractvalue %dx.types.ResRet.f32 %328, 1
  %331 = extractvalue %dx.types.ResRet.f32 %328, 2
  %332 = add i32 %318, 44
  %333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.f32 %333, 0
  %335 = add i32 %318, 48
  %336 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.f32 %336, 0
  %338 = extractvalue %dx.types.ResRet.f32 %336, 1
  %339 = extractvalue %dx.types.ResRet.f32 %336, 2
  %340 = extractvalue %dx.types.ResRet.f32 %336, 3
  %341 = add i32 %318, 64
  %342 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.f32 %342, 0
  %344 = extractvalue %dx.types.ResRet.f32 %342, 1
  %345 = extractvalue %dx.types.ResRet.f32 %342, 2
  %346 = extractvalue %dx.types.ResRet.f32 %342, 3
  %347 = add i32 %318, 92
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = and i32 %349, 65535
  %351 = uitofp i32 %350 to float
  %352 = lshr i32 %349, 16
  %353 = uitofp i32 %352 to float
  %354 = and i32 %326, 65535
  %355 = and i32 %326, 50331648
  %356 = icmp eq i32 %355, 33554432
  %357 = call float @dx.op.dot3.f32(i32 55, float %329, float %330, float %331, float %329, float %330, float %331)  ; Dot3(ax,ay,az,bx,by,bz)
  %358 = fsub fast float %113, %337
  %359 = fsub fast float %114, %338
  %360 = fsub fast float %115, %339
  %361 = call float @dx.op.dot3.f32(i32 55, float %358, float %359, float %360, float %329, float %330, float %331)  ; Dot3(ax,ay,az,bx,by,bz)
  %362 = fdiv fast float %361, %357
  %363 = call float @dx.op.binary.f32(i32 35, float %362, float -1.000000e+00)  ; FMax(a,b)
  %364 = call float @dx.op.binary.f32(i32 36, float %363, float 1.000000e+00)  ; FMin(a,b)
  %365 = fmul fast float %364, %329
  %366 = fmul fast float %364, %330
  %367 = fmul fast float %364, %331
  %368 = fadd fast float %365, %337
  %369 = fadd fast float %366, %338
  %370 = fadd fast float %367, %339
  %371 = fsub fast float %368, %113
  %372 = fsub fast float %369, %114
  %373 = fsub fast float %370, %115
  %374 = call float @dx.op.dot3.f32(i32 55, float %371, float %372, float %373, float %371, float %372, float %373)  ; Dot3(ax,ay,az,bx,by,bz)
  %375 = call float @dx.op.unary.f32(i32 24, float %374)  ; Sqrt(value)
  %376 = fdiv fast float 1.000000e+00, %375
  %377 = fmul fast float %371, %376
  %378 = fmul fast float %372, %376
  %379 = fmul fast float %373, %376
  br i1 %356, label %380, label %404, !dx.controlflow.hints !51

; <label>:380                                     ; preds = %310
  %381 = fmul fast float %345, %321
  %382 = fmul fast float %345, %322
  %383 = fmul fast float %345, %323
  %384 = fsub fast float %381, %113
  %385 = fadd fast float %384, %368
  %386 = fsub fast float %382, %114
  %387 = fadd fast float %386, %369
  %388 = fsub fast float %383, %115
  %389 = fadd fast float %388, %370
  %390 = call float @dx.op.dot3.f32(i32 55, float %385, float %387, float %389, float %385, float %387, float %389)  ; Dot3(ax,ay,az,bx,by,bz)
  %391 = call float @dx.op.unary.f32(i32 25, float %390)  ; Rsqrt(value)
  %392 = fmul fast float %391, %385
  %393 = fmul fast float %391, %387
  %394 = fmul fast float %391, %389
  %395 = fsub fast float %113, %368
  %396 = fsub fast float %114, %369
  %397 = fsub fast float %115, %370
  %398 = fsub fast float -0.000000e+00, %395
  %399 = fsub fast float -0.000000e+00, %396
  %400 = fsub fast float -0.000000e+00, %397
  %401 = call float @dx.op.dot3.f32(i32 55, float %398, float %399, float %400, float %321, float %322, float %323)  ; Dot3(ax,ay,az,bx,by,bz)
  %402 = fcmp fast ogt float %401, 0.000000e+00
  %403 = uitofp i1 %402 to float
  br label %404

; <label>:404                                     ; preds = %380, %310
  %405 = phi float [ %403, %380 ], [ 1.000000e+00, %310 ]
  %406 = phi float [ %392, %380 ], [ %377, %310 ]
  %407 = phi float [ %393, %380 ], [ %378, %310 ]
  %408 = phi float [ %394, %380 ], [ %379, %310 ]
  %409 = call float @dx.op.dot3.f32(i32 55, float %321, float %322, float %323, float %406, float %407, float %408)  ; Dot3(ax,ay,az,bx,by,bz)
  %410 = fmul fast float %409, %409
  %411 = call float @dx.op.unary.f32(i32 7, float %410)  ; Saturate(value)
  %412 = fsub fast float 1.000000e+00, %411
  %413 = fmul fast float %412, 5.000000e-01
  %414 = fcmp fast ogt float %409, 0.000000e+00
  %415 = fsub fast float 1.000000e+00, %413
  %416 = select i1 %414, float %413, float %415
  %417 = fmul fast float %416, %353
  %418 = fadd fast float %417, %351
  %419 = fmul fast float %418, 0x3EF0001000000000
  %420 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %14, float %419, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %421 = extractvalue %dx.types.ResRet.f32 %420, 0
  %422 = fmul fast float %409, %343
  %423 = fadd fast float %422, %344
  %424 = call float @dx.op.unary.f32(i32 7, float %423)  ; Saturate(value)
  %425 = select i1 %356, float 1.000000e+00, float %424
  %426 = select i1 %356, float %424, float 1.000000e+00
  %427 = fmul fast float %375, %340
  %428 = fsub fast float 1.000000e+00, %427
  %429 = fmul fast float %428, %346
  %430 = call float @dx.op.unary.f32(i32 7, float %429)  ; Saturate(value)
  %431 = fmul fast float %430, %426
  %432 = fmul fast float %431, 2.000000e+00
  %433 = fsub fast float 3.000000e+00, %432
  %434 = fmul fast float %421, %405
  %435 = fmul fast float %431, %431
  %436 = fmul fast float %435, %434
  %437 = fmul fast float %436, %433
  %438 = icmp ne i32 %354, 255
  %439 = call float @dx.op.binary.f32(i32 36, float %437, float %437)  ; FMin(a,b)
  %440 = call float @dx.op.binary.f32(i32 36, float %437, float %439)  ; FMin(a,b)
  %441 = fcmp fast ogt float %440, 0.000000e+00
  %442 = and i1 %438, %441
  br i1 %442, label %443, label %1236, !dx.controlflow.hints !52

; <label>:443                                     ; preds = %404
  %444 = mul nuw nsw i32 %354, 176
  %445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.f32 %445, 0
  %447 = extractvalue %dx.types.ResRet.f32 %445, 1
  %448 = extractvalue %dx.types.ResRet.f32 %445, 2
  %449 = extractvalue %dx.types.ResRet.f32 %445, 3
  %450 = add nuw nsw i32 %444, 16
  %451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.f32 %451, 0
  %453 = extractvalue %dx.types.ResRet.f32 %451, 1
  %454 = add nuw nsw i32 %444, 32
  %455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.f32 %455, 0
  %457 = extractvalue %dx.types.ResRet.f32 %455, 1
  %458 = extractvalue %dx.types.ResRet.f32 %455, 2
  %459 = extractvalue %dx.types.ResRet.f32 %455, 3
  %460 = add nuw nsw i32 %444, 48
  %461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.f32 %461, 0
  %463 = extractvalue %dx.types.ResRet.f32 %461, 1
  %464 = extractvalue %dx.types.ResRet.f32 %461, 2
  %465 = extractvalue %dx.types.ResRet.f32 %461, 3
  %466 = add nuw nsw i32 %444, 64
  %467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 0
  %469 = extractvalue %dx.types.ResRet.f32 %467, 1
  %470 = extractvalue %dx.types.ResRet.f32 %467, 2
  %471 = extractvalue %dx.types.ResRet.f32 %467, 3
  %472 = add nuw nsw i32 %444, 80
  %473 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.f32 %473, 0
  %475 = extractvalue %dx.types.ResRet.f32 %473, 1
  %476 = extractvalue %dx.types.ResRet.f32 %473, 2
  %477 = extractvalue %dx.types.ResRet.f32 %473, 3
  %478 = add nuw nsw i32 %444, 96
  %479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.f32 %479, 0
  %481 = extractvalue %dx.types.ResRet.f32 %479, 1
  %482 = extractvalue %dx.types.ResRet.f32 %479, 2
  %483 = extractvalue %dx.types.ResRet.f32 %479, 3
  %484 = add nuw nsw i32 %444, 112
  %485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.f32 %485, 0
  %487 = extractvalue %dx.types.ResRet.f32 %485, 1
  %488 = extractvalue %dx.types.ResRet.f32 %485, 2
  %489 = extractvalue %dx.types.ResRet.f32 %485, 3
  %490 = add nuw nsw i32 %444, 128
  %491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.f32 %491, 0
  %493 = extractvalue %dx.types.ResRet.f32 %491, 1
  %494 = extractvalue %dx.types.ResRet.f32 %491, 2
  %495 = extractvalue %dx.types.ResRet.f32 %491, 3
  %496 = add nuw nsw i32 %444, 144
  %497 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.f32 %497, 0
  %499 = extractvalue %dx.types.ResRet.f32 %497, 1
  %500 = extractvalue %dx.types.ResRet.f32 %497, 2
  %501 = extractvalue %dx.types.ResRet.f32 %497, 3
  %502 = add nuw nsw i32 %444, 160
  %503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %504 = extractvalue %dx.types.ResRet.f32 %503, 0
  %505 = extractvalue %dx.types.ResRet.f32 %503, 1
  %506 = extractvalue %dx.types.ResRet.f32 %503, 2
  %507 = extractvalue %dx.types.ResRet.f32 %503, 3
  %508 = bitcast float %453 to i32
  %509 = bitcast float %459 to i32
  %510 = and i32 %509, 1
  %511 = icmp ne i32 %510, 0
  %512 = and i32 %509, 2
  %513 = fmul fast float %142, %458
  %514 = fmul fast float %143, %458
  %515 = fmul fast float %144, %458
  %516 = fadd fast float %513, %113
  %517 = fadd fast float %514, %114
  %518 = fadd fast float %515, %115
  %519 = fmul fast float %516, %462
  %520 = call float @dx.op.tertiary.f32(i32 46, float %517, float %468, float %519)  ; FMad(a,b,c)
  %521 = call float @dx.op.tertiary.f32(i32 46, float %518, float %474, float %520)  ; FMad(a,b,c)
  %522 = fadd fast float %521, %480
  %523 = fmul fast float %516, %463
  %524 = call float @dx.op.tertiary.f32(i32 46, float %517, float %469, float %523)  ; FMad(a,b,c)
  %525 = call float @dx.op.tertiary.f32(i32 46, float %518, float %475, float %524)  ; FMad(a,b,c)
  %526 = fadd fast float %525, %481
  %527 = fmul fast float %516, %464
  %528 = call float @dx.op.tertiary.f32(i32 46, float %517, float %470, float %527)  ; FMad(a,b,c)
  %529 = call float @dx.op.tertiary.f32(i32 46, float %518, float %476, float %528)  ; FMad(a,b,c)
  %530 = fadd fast float %529, %482
  %531 = fmul fast float %516, %465
  %532 = call float @dx.op.tertiary.f32(i32 46, float %517, float %471, float %531)  ; FMad(a,b,c)
  %533 = call float @dx.op.tertiary.f32(i32 46, float %518, float %477, float %532)  ; FMad(a,b,c)
  %534 = fadd fast float %533, %483
  %535 = fdiv fast float %522, %534
  %536 = fdiv fast float %526, %534
  %537 = fdiv fast float %530, %534
  %538 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %537)  ; FMax(a,b)
  %539 = fmul fast float %155, 0x401921FB60000000
  %540 = call float @dx.op.unary.f32(i32 13, float %539)  ; Sin(value)
  %541 = call float @dx.op.unary.f32(i32 12, float %539)  ; Cos(value)
  %542 = fsub fast float -0.000000e+00, %540
  %543 = icmp eq i32 %512, 0
  br i1 %543, label %544, label %615, !dx.controlflow.hints !53

; <label>:544                                     ; preds = %443
  %545 = fmul fast float %541, %457
  %546 = call float @dx.op.tertiary.f32(i32 46, float %540, float %457, float 0.000000e+00)  ; FMad(a,b,c)
  %547 = fmul fast float %457, %542
  %548 = call float @dx.op.tertiary.f32(i32 46, float %541, float %457, float 0.000000e+00)  ; FMad(a,b,c)
  br label %549

; <label>:549                                     ; preds = %549, %544
  %550 = phi float [ 0.000000e+00, %544 ], [ %582, %549 ]
  %551 = phi float [ 0.000000e+00, %544 ], [ %584, %549 ]
  %552 = phi i32 [ 0, %544 ], [ %585, %549 ]
  %553 = mul i32 %552, 2
  %554 = add i32 0, %553
  %555 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %554
  %556 = load float, float* %555, align 4
  %557 = mul i32 %552, 2
  %558 = add i32 1, %557
  %559 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %558
  %560 = load float, float* %559, align 4
  %561 = fmul fast float %545, %556
  %562 = call float @dx.op.tertiary.f32(i32 46, float %560, float %547, float %561)  ; FMad(a,b,c)
  %563 = fmul fast float %556, %546
  %564 = call float @dx.op.tertiary.f32(i32 46, float %560, float %548, float %563)  ; FMad(a,b,c)
  %565 = fadd fast float %562, %535
  %566 = fadd fast float %564, %536
  %567 = fmul fast float %565, %452
  %568 = fmul fast float %566, %452
  %569 = call float @dx.op.binary.f32(i32 35, float %567, float %448)  ; FMax(a,b)
  %570 = call float @dx.op.binary.f32(i32 35, float %568, float %448)  ; FMax(a,b)
  %571 = call float @dx.op.binary.f32(i32 36, float %569, float %449)  ; FMin(a,b)
  %572 = call float @dx.op.binary.f32(i32 36, float %570, float %449)  ; FMin(a,b)
  %573 = fadd fast float %571, %446
  %574 = fadd fast float %572, %447
  %575 = uitofp i32 %508 to float
  %576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %15, float %573, float %574, float %575, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %577 = extractvalue %dx.types.ResRet.f32 %576, 0
  %578 = fsub fast float %577, %538
  %579 = fsub fast float %578, %456
  %580 = fcmp fast ogt float %579, 0.000000e+00
  %581 = select i1 %580, float 1.000000e+00, float 0.000000e+00
  %582 = fadd fast float %581, %550
  %583 = select i1 %580, float %579, float 0.000000e+00
  %584 = fadd fast float %583, %551
  %585 = add nuw nsw i32 %552, 1
  %586 = icmp eq i32 %585, 8
  br i1 %586, label %587, label %549

; <label>:587                                     ; preds = %549
  %588 = fdiv fast float 1.000000e+00, %582
  %589 = fmul fast float %588, %584
  %590 = fdiv fast float 1.000000e+00, %538
  %591 = fmul fast float %589, %590
  %592 = call float @dx.op.unary.f32(i32 7, float %591)  ; Saturate(value)
  %593 = call float @dx.op.binary.f32(i32 35, float %592, float 0.000000e+00)  ; FMax(a,b)
  %594 = fmul fast float %582, 1.250000e-01
  %595 = call float @dx.op.unary.f32(i32 7, float %594)  ; Saturate(value)
  %596 = fmul fast float %595, 2.000000e+00
  %597 = fadd fast float %596, -1.000000e+00
  %598 = fcmp fast ogt float %597, 0.000000e+00
  %599 = fcmp fast olt float %597, 0.000000e+00
  %600 = zext i1 %598 to i32
  %601 = zext i1 %599 to i32
  %602 = sub nsw i32 %600, %601
  %603 = sitofp i32 %602 to float
  %604 = fmul fast float %603, %597
  %605 = fsub fast float 1.000000e+00, %604
  %606 = fmul fast float %605, %605
  %607 = fmul fast float %606, %605
  %608 = fsub fast float %605, %607
  %609 = fmul fast float %608, %593
  %610 = fsub fast float 1.000000e+00, %607
  %611 = fsub fast float %610, %609
  %612 = fmul fast float %603, 5.000000e-01
  %613 = fmul fast float %612, %611
  %614 = fsub fast float 5.000000e-01, %613
  br label %1230

; <label>:615                                     ; preds = %443
  %616 = fsub fast float 1.000000e+00, %538
  %617 = fmul fast float %616, 5.000000e-01
  %618 = fadd fast float %617, %538
  %619 = fsub fast float %516, %337
  %620 = fsub fast float %517, %338
  %621 = fsub fast float %518, %339
  %622 = call float @dx.op.dot3.f32(i32 55, float %619, float %620, float %621, float %329, float %330, float %331)  ; Dot3(ax,ay,az,bx,by,bz)
  %623 = fdiv fast float %622, %357
  %624 = call float @dx.op.binary.f32(i32 35, float %623, float -1.000000e+00)  ; FMax(a,b)
  %625 = call float @dx.op.binary.f32(i32 36, float %624, float 1.000000e+00)  ; FMin(a,b)
  %626 = fmul fast float %625, %329
  %627 = fmul fast float %625, %330
  %628 = fmul fast float %625, %331
  %629 = fsub fast float %619, %626
  %630 = fsub fast float %620, %627
  %631 = fsub fast float %621, %628
  %632 = call float @dx.op.dot3.f32(i32 55, float %629, float %630, float %631, float %629, float %630, float %631)  ; Dot3(ax,ay,az,bx,by,bz)
  %633 = call float @dx.op.unary.f32(i32 25, float %632)  ; Rsqrt(value)
  %634 = fmul fast float %629, %633
  %635 = fmul fast float %630, %633
  %636 = fmul fast float %631, %633
  %637 = call float @dx.op.unary.f32(i32 25, float %357)  ; Rsqrt(value)
  %638 = fmul fast float %637, %329
  %639 = fmul fast float %637, %330
  %640 = fmul fast float %637, %331
  br i1 %511, label %641, label %645, !dx.controlflow.hints !54

; <label>:641                                     ; preds = %615
  %642 = fcmp fast olt float %635, 0x3FE6666660000000
  %643 = select i1 %642, float 1.000000e+00, float 0.000000e+00
  %644 = select i1 %642, float 0.000000e+00, float 1.000000e+00
  br label %645

; <label>:645                                     ; preds = %641, %615
  %646 = phi float [ 0.000000e+00, %641 ], [ %638, %615 ]
  %647 = phi float [ %643, %641 ], [ %639, %615 ]
  %648 = phi float [ %644, %641 ], [ %640, %615 ]
  %649 = fmul fast float %647, %636
  %650 = fmul fast float %648, %635
  %651 = fsub fast float %649, %650
  %652 = fmul fast float %648, %634
  %653 = fmul fast float %646, %636
  %654 = fsub fast float %652, %653
  %655 = fmul fast float %646, %635
  %656 = fmul fast float %647, %634
  %657 = fsub fast float %655, %656
  %658 = call float @dx.op.dot3.f32(i32 55, float %651, float %654, float %657, float %651, float %654, float %657)  ; Dot3(ax,ay,az,bx,by,bz)
  %659 = call float @dx.op.unary.f32(i32 25, float %658)  ; Rsqrt(value)
  %660 = fmul fast float %659, %334
  %661 = fmul fast float %660, %651
  %662 = fmul fast float %660, %654
  %663 = fmul fast float %657, %334
  %664 = fmul fast float %663, %659
  %665 = fmul fast float %535, %486
  %666 = call float @dx.op.tertiary.f32(i32 46, float %536, float %492, float %665)  ; FMad(a,b,c)
  %667 = call float @dx.op.tertiary.f32(i32 46, float %618, float %498, float %666)  ; FMad(a,b,c)
  %668 = fadd fast float %667, %504
  %669 = fmul fast float %535, %487
  %670 = call float @dx.op.tertiary.f32(i32 46, float %536, float %493, float %669)  ; FMad(a,b,c)
  %671 = call float @dx.op.tertiary.f32(i32 46, float %618, float %499, float %670)  ; FMad(a,b,c)
  %672 = fadd fast float %671, %505
  %673 = fmul fast float %535, %488
  %674 = call float @dx.op.tertiary.f32(i32 46, float %536, float %494, float %673)  ; FMad(a,b,c)
  %675 = call float @dx.op.tertiary.f32(i32 46, float %618, float %500, float %674)  ; FMad(a,b,c)
  %676 = fadd fast float %675, %506
  %677 = fmul fast float %535, %489
  %678 = call float @dx.op.tertiary.f32(i32 46, float %536, float %495, float %677)  ; FMad(a,b,c)
  %679 = call float @dx.op.tertiary.f32(i32 46, float %618, float %501, float %678)  ; FMad(a,b,c)
  %680 = fadd fast float %679, %507
  %681 = fdiv fast float 1.000000e+00, %680
  %682 = fmul fast float %681, %668
  %683 = fmul fast float %681, %672
  %684 = fmul fast float %681, %676
  %685 = fsub fast float -0.000000e+00, %634
  %686 = fsub fast float -0.000000e+00, %635
  %687 = fsub fast float -0.000000e+00, %636
  %688 = fsub fast float %337, %661
  %689 = fsub fast float %338, %662
  %690 = fsub fast float %339, %664
  %691 = fsub fast float %682, %688
  %692 = fsub fast float %683, %689
  %693 = fsub fast float %684, %690
  %694 = call float @dx.op.dot3.f32(i32 55, float %691, float %692, float %693, float %691, float %692, float %693)  ; Dot3(ax,ay,az,bx,by,bz)
  %695 = call float @dx.op.unary.f32(i32 25, float %694)  ; Rsqrt(value)
  %696 = fmul fast float %691, %695
  %697 = fmul fast float %692, %695
  %698 = fmul fast float %693, %695
  %699 = fsub fast float %516, %688
  %700 = fsub fast float %517, %689
  %701 = fsub fast float %518, %690
  %702 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %699, float %700, float %701)  ; Dot3(ax,ay,az,bx,by,bz)
  %703 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %696, float %697, float %698)  ; Dot3(ax,ay,az,bx,by,bz)
  %704 = fdiv fast float 1.000000e+00, %703
  %705 = fmul fast float %704, %702
  %706 = fmul fast float %705, %696
  %707 = fmul fast float %705, %697
  %708 = fmul fast float %705, %698
  %709 = fadd fast float %706, %688
  %710 = fadd fast float %707, %689
  %711 = fadd fast float %708, %690
  %712 = fadd fast float %661, %337
  %713 = fadd fast float %662, %338
  %714 = fadd fast float %664, %339
  %715 = fsub fast float %682, %712
  %716 = fsub fast float %683, %713
  %717 = fsub fast float %684, %714
  %718 = call float @dx.op.dot3.f32(i32 55, float %715, float %716, float %717, float %715, float %716, float %717)  ; Dot3(ax,ay,az,bx,by,bz)
  %719 = call float @dx.op.unary.f32(i32 25, float %718)  ; Rsqrt(value)
  %720 = fmul fast float %719, %715
  %721 = fmul fast float %719, %716
  %722 = fmul fast float %719, %717
  %723 = fsub fast float %516, %712
  %724 = fsub fast float %517, %713
  %725 = fsub fast float %518, %714
  %726 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %723, float %724, float %725)  ; Dot3(ax,ay,az,bx,by,bz)
  %727 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %720, float %721, float %722)  ; Dot3(ax,ay,az,bx,by,bz)
  %728 = fdiv fast float 1.000000e+00, %727
  %729 = fmul fast float %728, %726
  %730 = fmul fast float %729, %720
  %731 = fmul fast float %729, %721
  %732 = fmul fast float %729, %722
  %733 = fadd fast float %730, %712
  %734 = fadd fast float %731, %713
  %735 = fadd fast float %732, %714
  %736 = fmul fast float %709, %462
  %737 = call float @dx.op.tertiary.f32(i32 46, float %710, float %468, float %736)  ; FMad(a,b,c)
  %738 = call float @dx.op.tertiary.f32(i32 46, float %711, float %474, float %737)  ; FMad(a,b,c)
  %739 = fadd fast float %738, %480
  %740 = fmul fast float %709, %463
  %741 = call float @dx.op.tertiary.f32(i32 46, float %710, float %469, float %740)  ; FMad(a,b,c)
  %742 = call float @dx.op.tertiary.f32(i32 46, float %711, float %475, float %741)  ; FMad(a,b,c)
  %743 = fadd fast float %742, %481
  %744 = fmul fast float %709, %465
  %745 = call float @dx.op.tertiary.f32(i32 46, float %710, float %471, float %744)  ; FMad(a,b,c)
  %746 = call float @dx.op.tertiary.f32(i32 46, float %711, float %477, float %745)  ; FMad(a,b,c)
  %747 = fadd fast float %746, %483
  %748 = fmul fast float %733, %462
  %749 = call float @dx.op.tertiary.f32(i32 46, float %734, float %468, float %748)  ; FMad(a,b,c)
  %750 = call float @dx.op.tertiary.f32(i32 46, float %735, float %474, float %749)  ; FMad(a,b,c)
  %751 = fadd fast float %750, %480
  %752 = fmul fast float %733, %463
  %753 = call float @dx.op.tertiary.f32(i32 46, float %734, float %469, float %752)  ; FMad(a,b,c)
  %754 = call float @dx.op.tertiary.f32(i32 46, float %735, float %475, float %753)  ; FMad(a,b,c)
  %755 = fadd fast float %754, %481
  %756 = fmul fast float %733, %465
  %757 = call float @dx.op.tertiary.f32(i32 46, float %734, float %471, float %756)  ; FMad(a,b,c)
  %758 = call float @dx.op.tertiary.f32(i32 46, float %735, float %477, float %757)  ; FMad(a,b,c)
  %759 = fadd fast float %758, %483
  %760 = fdiv fast float 1.000000e+00, %747
  %761 = fmul fast float %760, %739
  %762 = fmul fast float %760, %743
  %763 = fdiv fast float 1.000000e+00, %759
  %764 = fmul fast float %763, %751
  %765 = fmul fast float %763, %755
  %766 = fsub fast float %764, %761
  %767 = fsub fast float %765, %762
  %768 = call float @dx.op.dot2.f32(i32 54, float %766, float %767, float %766, float %767)  ; Dot2(ax,ay,bx,by)
  %769 = call float @dx.op.unary.f32(i32 25, float %768)  ; Rsqrt(value)
  %770 = fmul fast float %766, %769
  %771 = fmul fast float %767, %769
  %772 = fmul fast float %766, %766
  %773 = fmul fast float %767, %767
  %774 = fadd fast float %772, %773
  %775 = call float @dx.op.unary.f32(i32 24, float %774)  ; Sqrt(value)
  %776 = fmul fast float %775, 5.000000e-01
  br i1 %511, label %869, label %777, !dx.controlflow.hints !55

; <label>:777                                     ; preds = %645
  %778 = fsub fast float %337, %329
  %779 = fsub fast float %338, %330
  %780 = fsub fast float %339, %331
  %781 = fsub fast float %682, %778
  %782 = fsub fast float %683, %779
  %783 = fsub fast float %684, %780
  %784 = call float @dx.op.dot3.f32(i32 55, float %781, float %782, float %783, float %781, float %782, float %783)  ; Dot3(ax,ay,az,bx,by,bz)
  %785 = call float @dx.op.unary.f32(i32 25, float %784)  ; Rsqrt(value)
  %786 = fmul fast float %785, %781
  %787 = fmul fast float %785, %782
  %788 = fmul fast float %785, %783
  %789 = fsub fast float %516, %778
  %790 = fsub fast float %517, %779
  %791 = fsub fast float %518, %780
  %792 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %789, float %790, float %791)  ; Dot3(ax,ay,az,bx,by,bz)
  %793 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %786, float %787, float %788)  ; Dot3(ax,ay,az,bx,by,bz)
  %794 = fdiv fast float 1.000000e+00, %793
  %795 = fmul fast float %794, %792
  %796 = fmul fast float %795, %786
  %797 = fmul fast float %795, %787
  %798 = fmul fast float %795, %788
  %799 = fadd fast float %796, %778
  %800 = fadd fast float %797, %779
  %801 = fadd fast float %798, %780
  %802 = fadd fast float %337, %329
  %803 = fadd fast float %338, %330
  %804 = fadd fast float %339, %331
  %805 = fsub fast float %682, %802
  %806 = fsub fast float %683, %803
  %807 = fsub fast float %684, %804
  %808 = call float @dx.op.dot3.f32(i32 55, float %805, float %806, float %807, float %805, float %806, float %807)  ; Dot3(ax,ay,az,bx,by,bz)
  %809 = call float @dx.op.unary.f32(i32 25, float %808)  ; Rsqrt(value)
  %810 = fmul fast float %809, %805
  %811 = fmul fast float %809, %806
  %812 = fmul fast float %809, %807
  %813 = fsub fast float %516, %802
  %814 = fsub fast float %517, %803
  %815 = fsub fast float %518, %804
  %816 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %813, float %814, float %815)  ; Dot3(ax,ay,az,bx,by,bz)
  %817 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %810, float %811, float %812)  ; Dot3(ax,ay,az,bx,by,bz)
  %818 = fdiv fast float 1.000000e+00, %817
  %819 = fmul fast float %818, %816
  %820 = fmul fast float %819, %810
  %821 = fmul fast float %819, %811
  %822 = fmul fast float %819, %812
  %823 = fadd fast float %820, %802
  %824 = fadd fast float %821, %803
  %825 = fadd fast float %822, %804
  %826 = fmul fast float %799, %462
  %827 = call float @dx.op.tertiary.f32(i32 46, float %800, float %468, float %826)  ; FMad(a,b,c)
  %828 = call float @dx.op.tertiary.f32(i32 46, float %801, float %474, float %827)  ; FMad(a,b,c)
  %829 = fadd fast float %828, %480
  %830 = fmul fast float %799, %463
  %831 = call float @dx.op.tertiary.f32(i32 46, float %800, float %469, float %830)  ; FMad(a,b,c)
  %832 = call float @dx.op.tertiary.f32(i32 46, float %801, float %475, float %831)  ; FMad(a,b,c)
  %833 = fadd fast float %832, %481
  %834 = fmul fast float %799, %465
  %835 = call float @dx.op.tertiary.f32(i32 46, float %800, float %471, float %834)  ; FMad(a,b,c)
  %836 = call float @dx.op.tertiary.f32(i32 46, float %801, float %477, float %835)  ; FMad(a,b,c)
  %837 = fadd fast float %836, %483
  %838 = fmul fast float %823, %462
  %839 = call float @dx.op.tertiary.f32(i32 46, float %824, float %468, float %838)  ; FMad(a,b,c)
  %840 = call float @dx.op.tertiary.f32(i32 46, float %825, float %474, float %839)  ; FMad(a,b,c)
  %841 = fadd fast float %840, %480
  %842 = fmul fast float %823, %463
  %843 = call float @dx.op.tertiary.f32(i32 46, float %824, float %469, float %842)  ; FMad(a,b,c)
  %844 = call float @dx.op.tertiary.f32(i32 46, float %825, float %475, float %843)  ; FMad(a,b,c)
  %845 = fadd fast float %844, %481
  %846 = fmul fast float %823, %465
  %847 = call float @dx.op.tertiary.f32(i32 46, float %824, float %471, float %846)  ; FMad(a,b,c)
  %848 = call float @dx.op.tertiary.f32(i32 46, float %825, float %477, float %847)  ; FMad(a,b,c)
  %849 = fadd fast float %848, %483
  %850 = fdiv fast float 1.000000e+00, %837
  %851 = fmul fast float %850, %829
  %852 = fmul fast float %850, %833
  %853 = fdiv fast float 1.000000e+00, %849
  %854 = fmul fast float %853, %841
  %855 = fmul fast float %853, %845
  %856 = fsub fast float %854, %851
  %857 = fsub fast float %855, %852
  %858 = call float @dx.op.dot2.f32(i32 54, float %856, float %857, float %856, float %857)  ; Dot2(ax,ay,bx,by)
  %859 = call float @dx.op.unary.f32(i32 25, float %858)  ; Rsqrt(value)
  %860 = fmul fast float %856, %859
  %861 = fmul fast float %857, %859
  %862 = fmul fast float %856, %856
  %863 = fmul fast float %857, %857
  %864 = fadd fast float %862, %863
  %865 = call float @dx.op.unary.f32(i32 24, float %864)  ; Sqrt(value)
  %866 = fmul fast float %865, 5.000000e-01
  %867 = fcmp fast olt float %866, %776
  br i1 %867, label %868, label %869, !dx.controlflow.hints !56

; <label>:868                                     ; preds = %777
  br label %869

; <label>:869                                     ; preds = %868, %777, %645
  %870 = phi float [ %776, %645 ], [ %866, %868 ], [ %776, %777 ]
  %871 = phi float [ %776, %645 ], [ %776, %868 ], [ %866, %777 ]
  %872 = phi float [ %770, %645 ], [ %770, %868 ], [ %860, %777 ]
  %873 = phi float [ %771, %645 ], [ %771, %868 ], [ %861, %777 ]
  %874 = fmul fast float %870, %457
  %875 = fdiv fast float %874, %871
  %876 = fsub fast float %457, %875
  %877 = fmul fast float %872, %872
  %878 = fmul fast float %877, %876
  %879 = fadd fast float %878, %875
  %880 = fmul fast float %873, %872
  %881 = fmul fast float %880, %876
  %882 = fmul fast float %873, %873
  %883 = fmul fast float %882, %876
  %884 = fadd fast float %883, %875
  %885 = fmul fast float %879, %541
  %886 = call float @dx.op.tertiary.f32(i32 46, float %540, float %881, float %885)  ; FMad(a,b,c)
  %887 = fmul fast float %881, %541
  %888 = call float @dx.op.tertiary.f32(i32 46, float %540, float %884, float %887)  ; FMad(a,b,c)
  %889 = fmul fast float %879, %542
  %890 = call float @dx.op.tertiary.f32(i32 46, float %541, float %881, float %889)  ; FMad(a,b,c)
  %891 = fmul fast float %881, %542
  %892 = call float @dx.op.tertiary.f32(i32 46, float %541, float %884, float %891)  ; FMad(a,b,c)
  br label %893

; <label>:893                                     ; preds = %931, %869
  %894 = phi float [ 0.000000e+00, %869 ], [ %932, %931 ]
  %895 = phi float [ 0.000000e+00, %869 ], [ %933, %931 ]
  %896 = phi float [ 0.000000e+00, %869 ], [ %934, %931 ]
  %897 = phi float [ 0.000000e+00, %869 ], [ %935, %931 ]
  %898 = phi i32 [ 0, %869 ], [ %936, %931 ]
  %899 = mul i32 %898, 2
  %900 = add i32 0, %899
  %901 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %900
  %902 = load float, float* %901, align 4
  %903 = mul i32 %898, 2
  %904 = add i32 1, %903
  %905 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %904
  %906 = load float, float* %905, align 4
  %907 = fmul fast float %902, %886
  %908 = call float @dx.op.tertiary.f32(i32 46, float %906, float %890, float %907)  ; FMad(a,b,c)
  %909 = fmul fast float %902, %888
  %910 = call float @dx.op.tertiary.f32(i32 46, float %906, float %892, float %909)  ; FMad(a,b,c)
  %911 = fadd fast float %908, %535
  %912 = fadd fast float %910, %536
  %913 = fmul fast float %911, %452
  %914 = fmul fast float %912, %452
  %915 = call float @dx.op.binary.f32(i32 35, float %913, float %448)  ; FMax(a,b)
  %916 = call float @dx.op.binary.f32(i32 35, float %914, float %448)  ; FMax(a,b)
  %917 = call float @dx.op.binary.f32(i32 36, float %915, float %449)  ; FMin(a,b)
  %918 = call float @dx.op.binary.f32(i32 36, float %916, float %449)  ; FMin(a,b)
  %919 = fadd fast float %917, %446
  %920 = fadd fast float %918, %447
  %921 = uitofp i32 %508 to float
  %922 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %15, float %919, float %920, float %921, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %923 = extractvalue %dx.types.ResRet.f32 %922, 0
  %924 = fadd fast float %538, %456
  %925 = fcmp fast olt float %924, %923
  br i1 %925, label %926, label %931, !dx.controlflow.hints !57

; <label>:926                                     ; preds = %893
  %927 = fadd fast float %923, %896
  %928 = fadd fast float %908, %894
  %929 = fadd fast float %910, %895
  %930 = fadd fast float %897, 1.000000e+00
  br label %931

; <label>:931                                     ; preds = %926, %893
  %932 = phi float [ %928, %926 ], [ %894, %893 ]
  %933 = phi float [ %929, %926 ], [ %895, %893 ]
  %934 = phi float [ %927, %926 ], [ %896, %893 ]
  %935 = phi float [ %930, %926 ], [ %897, %893 ]
  %936 = add nuw nsw i32 %898, 1
  %937 = icmp eq i32 %936, 8
  br i1 %937, label %938, label %893

; <label>:938                                     ; preds = %931
  %939 = fdiv fast float 1.000000e+00, %935
  %940 = fcmp fast oeq float %935, 0.000000e+00
  %941 = fmul fast float %939, %934
  %942 = select i1 %940, float -1.000000e+00, float %941
  %943 = fcmp fast olt float %942, 0.000000e+00
  br i1 %943, label %1230, label %944, !dx.controlflow.hints !58

; <label>:944                                     ; preds = %938
  %945 = fmul fast float %939, %933
  %946 = select i1 %940, float 0.000000e+00, float %945
  %947 = fmul fast float %939, %932
  %948 = select i1 %940, float 0.000000e+00, float %947
  %949 = fadd fast float %948, %535
  %950 = fadd fast float %946, %536
  br i1 %511, label %951, label %955, !dx.controlflow.hints !54

; <label>:951                                     ; preds = %944
  %952 = fcmp fast olt float %635, 0x3FE6666660000000
  %953 = select i1 %952, float 1.000000e+00, float 0.000000e+00
  %954 = select i1 %952, float 0.000000e+00, float 1.000000e+00
  br label %955

; <label>:955                                     ; preds = %951, %944
  %956 = phi float [ 0.000000e+00, %951 ], [ %638, %944 ]
  %957 = phi float [ %953, %951 ], [ %639, %944 ]
  %958 = phi float [ %954, %951 ], [ %640, %944 ]
  %959 = fmul fast float %957, %636
  %960 = fmul fast float %958, %635
  %961 = fsub fast float %959, %960
  %962 = fmul fast float %958, %634
  %963 = fmul fast float %956, %636
  %964 = fsub fast float %962, %963
  %965 = fmul fast float %956, %635
  %966 = fmul fast float %957, %634
  %967 = fsub fast float %965, %966
  %968 = call float @dx.op.dot3.f32(i32 55, float %961, float %964, float %967, float %961, float %964, float %967)  ; Dot3(ax,ay,az,bx,by,bz)
  %969 = call float @dx.op.unary.f32(i32 25, float %968)  ; Rsqrt(value)
  %970 = fmul fast float %969, %334
  %971 = fmul fast float %970, %961
  %972 = fmul fast float %970, %964
  %973 = fmul fast float %967, %334
  %974 = fmul fast float %973, %969
  %975 = fmul fast float %949, %486
  %976 = call float @dx.op.tertiary.f32(i32 46, float %950, float %492, float %975)  ; FMad(a,b,c)
  %977 = call float @dx.op.tertiary.f32(i32 46, float %942, float %498, float %976)  ; FMad(a,b,c)
  %978 = fadd fast float %977, %504
  %979 = fmul fast float %949, %487
  %980 = call float @dx.op.tertiary.f32(i32 46, float %950, float %493, float %979)  ; FMad(a,b,c)
  %981 = call float @dx.op.tertiary.f32(i32 46, float %942, float %499, float %980)  ; FMad(a,b,c)
  %982 = fadd fast float %981, %505
  %983 = fmul fast float %949, %488
  %984 = call float @dx.op.tertiary.f32(i32 46, float %950, float %494, float %983)  ; FMad(a,b,c)
  %985 = call float @dx.op.tertiary.f32(i32 46, float %942, float %500, float %984)  ; FMad(a,b,c)
  %986 = fadd fast float %985, %506
  %987 = fmul fast float %949, %489
  %988 = call float @dx.op.tertiary.f32(i32 46, float %950, float %495, float %987)  ; FMad(a,b,c)
  %989 = call float @dx.op.tertiary.f32(i32 46, float %942, float %501, float %988)  ; FMad(a,b,c)
  %990 = fadd fast float %989, %507
  %991 = fdiv fast float 1.000000e+00, %990
  %992 = fmul fast float %991, %978
  %993 = fmul fast float %991, %982
  %994 = fmul fast float %991, %986
  %995 = fsub fast float %337, %971
  %996 = fsub fast float %338, %972
  %997 = fsub fast float %339, %974
  %998 = fsub fast float %992, %995
  %999 = fsub fast float %993, %996
  %1000 = fsub fast float %994, %997
  %1001 = call float @dx.op.dot3.f32(i32 55, float %998, float %999, float %1000, float %998, float %999, float %1000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1002 = call float @dx.op.unary.f32(i32 25, float %1001)  ; Rsqrt(value)
  %1003 = fmul fast float %998, %1002
  %1004 = fmul fast float %999, %1002
  %1005 = fmul fast float %1000, %1002
  %1006 = fsub fast float %516, %995
  %1007 = fsub fast float %517, %996
  %1008 = fsub fast float %518, %997
  %1009 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %1006, float %1007, float %1008)  ; Dot3(ax,ay,az,bx,by,bz)
  %1010 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %1003, float %1004, float %1005)  ; Dot3(ax,ay,az,bx,by,bz)
  %1011 = fdiv fast float 1.000000e+00, %1010
  %1012 = fmul fast float %1011, %1009
  %1013 = fmul fast float %1012, %1003
  %1014 = fmul fast float %1012, %1004
  %1015 = fmul fast float %1012, %1005
  %1016 = fadd fast float %1013, %995
  %1017 = fadd fast float %1014, %996
  %1018 = fadd fast float %1015, %997
  %1019 = fadd fast float %971, %337
  %1020 = fadd fast float %972, %338
  %1021 = fadd fast float %974, %339
  %1022 = fsub fast float %992, %1019
  %1023 = fsub fast float %993, %1020
  %1024 = fsub fast float %994, %1021
  %1025 = call float @dx.op.dot3.f32(i32 55, float %1022, float %1023, float %1024, float %1022, float %1023, float %1024)  ; Dot3(ax,ay,az,bx,by,bz)
  %1026 = call float @dx.op.unary.f32(i32 25, float %1025)  ; Rsqrt(value)
  %1027 = fmul fast float %1026, %1022
  %1028 = fmul fast float %1026, %1023
  %1029 = fmul fast float %1026, %1024
  %1030 = fsub fast float %516, %1019
  %1031 = fsub fast float %517, %1020
  %1032 = fsub fast float %518, %1021
  %1033 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %1030, float %1031, float %1032)  ; Dot3(ax,ay,az,bx,by,bz)
  %1034 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %1027, float %1028, float %1029)  ; Dot3(ax,ay,az,bx,by,bz)
  %1035 = fdiv fast float 1.000000e+00, %1034
  %1036 = fmul fast float %1035, %1033
  %1037 = fmul fast float %1036, %1027
  %1038 = fmul fast float %1036, %1028
  %1039 = fmul fast float %1036, %1029
  %1040 = fadd fast float %1037, %1019
  %1041 = fadd fast float %1038, %1020
  %1042 = fadd fast float %1039, %1021
  %1043 = fmul fast float %1016, %462
  %1044 = call float @dx.op.tertiary.f32(i32 46, float %1017, float %468, float %1043)  ; FMad(a,b,c)
  %1045 = call float @dx.op.tertiary.f32(i32 46, float %1018, float %474, float %1044)  ; FMad(a,b,c)
  %1046 = fadd fast float %1045, %480
  %1047 = fmul fast float %1016, %463
  %1048 = call float @dx.op.tertiary.f32(i32 46, float %1017, float %469, float %1047)  ; FMad(a,b,c)
  %1049 = call float @dx.op.tertiary.f32(i32 46, float %1018, float %475, float %1048)  ; FMad(a,b,c)
  %1050 = fadd fast float %1049, %481
  %1051 = fmul fast float %1016, %465
  %1052 = call float @dx.op.tertiary.f32(i32 46, float %1017, float %471, float %1051)  ; FMad(a,b,c)
  %1053 = call float @dx.op.tertiary.f32(i32 46, float %1018, float %477, float %1052)  ; FMad(a,b,c)
  %1054 = fadd fast float %1053, %483
  %1055 = fmul fast float %1040, %462
  %1056 = call float @dx.op.tertiary.f32(i32 46, float %1041, float %468, float %1055)  ; FMad(a,b,c)
  %1057 = call float @dx.op.tertiary.f32(i32 46, float %1042, float %474, float %1056)  ; FMad(a,b,c)
  %1058 = fadd fast float %1057, %480
  %1059 = fmul fast float %1040, %463
  %1060 = call float @dx.op.tertiary.f32(i32 46, float %1041, float %469, float %1059)  ; FMad(a,b,c)
  %1061 = call float @dx.op.tertiary.f32(i32 46, float %1042, float %475, float %1060)  ; FMad(a,b,c)
  %1062 = fadd fast float %1061, %481
  %1063 = fmul fast float %1040, %465
  %1064 = call float @dx.op.tertiary.f32(i32 46, float %1041, float %471, float %1063)  ; FMad(a,b,c)
  %1065 = call float @dx.op.tertiary.f32(i32 46, float %1042, float %477, float %1064)  ; FMad(a,b,c)
  %1066 = fadd fast float %1065, %483
  %1067 = fdiv fast float 1.000000e+00, %1054
  %1068 = fmul fast float %1067, %1046
  %1069 = fmul fast float %1067, %1050
  %1070 = fdiv fast float 1.000000e+00, %1066
  %1071 = fmul fast float %1070, %1058
  %1072 = fmul fast float %1070, %1062
  %1073 = fsub fast float %1071, %1068
  %1074 = fsub fast float %1072, %1069
  %1075 = call float @dx.op.dot2.f32(i32 54, float %1073, float %1074, float %1073, float %1074)  ; Dot2(ax,ay,bx,by)
  %1076 = call float @dx.op.unary.f32(i32 25, float %1075)  ; Rsqrt(value)
  %1077 = fmul fast float %1073, %1076
  %1078 = fmul fast float %1074, %1076
  %1079 = fmul fast float %1073, %1073
  %1080 = fmul fast float %1074, %1074
  %1081 = fadd fast float %1079, %1080
  %1082 = call float @dx.op.unary.f32(i32 24, float %1081)  ; Sqrt(value)
  %1083 = fmul fast float %1082, 5.000000e-01
  br i1 %511, label %1176, label %1084, !dx.controlflow.hints !55

; <label>:1084                                    ; preds = %955
  %1085 = fsub fast float %337, %329
  %1086 = fsub fast float %338, %330
  %1087 = fsub fast float %339, %331
  %1088 = fsub fast float %992, %1085
  %1089 = fsub fast float %993, %1086
  %1090 = fsub fast float %994, %1087
  %1091 = call float @dx.op.dot3.f32(i32 55, float %1088, float %1089, float %1090, float %1088, float %1089, float %1090)  ; Dot3(ax,ay,az,bx,by,bz)
  %1092 = call float @dx.op.unary.f32(i32 25, float %1091)  ; Rsqrt(value)
  %1093 = fmul fast float %1092, %1088
  %1094 = fmul fast float %1092, %1089
  %1095 = fmul fast float %1092, %1090
  %1096 = fsub fast float %516, %1085
  %1097 = fsub fast float %517, %1086
  %1098 = fsub fast float %518, %1087
  %1099 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %1096, float %1097, float %1098)  ; Dot3(ax,ay,az,bx,by,bz)
  %1100 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %1093, float %1094, float %1095)  ; Dot3(ax,ay,az,bx,by,bz)
  %1101 = fdiv fast float 1.000000e+00, %1100
  %1102 = fmul fast float %1101, %1099
  %1103 = fmul fast float %1102, %1093
  %1104 = fmul fast float %1102, %1094
  %1105 = fmul fast float %1102, %1095
  %1106 = fadd fast float %1103, %1085
  %1107 = fadd fast float %1104, %1086
  %1108 = fadd fast float %1105, %1087
  %1109 = fadd fast float %337, %329
  %1110 = fadd fast float %338, %330
  %1111 = fadd fast float %339, %331
  %1112 = fsub fast float %992, %1109
  %1113 = fsub fast float %993, %1110
  %1114 = fsub fast float %994, %1111
  %1115 = call float @dx.op.dot3.f32(i32 55, float %1112, float %1113, float %1114, float %1112, float %1113, float %1114)  ; Dot3(ax,ay,az,bx,by,bz)
  %1116 = call float @dx.op.unary.f32(i32 25, float %1115)  ; Rsqrt(value)
  %1117 = fmul fast float %1116, %1112
  %1118 = fmul fast float %1116, %1113
  %1119 = fmul fast float %1116, %1114
  %1120 = fsub fast float %516, %1109
  %1121 = fsub fast float %517, %1110
  %1122 = fsub fast float %518, %1111
  %1123 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %1120, float %1121, float %1122)  ; Dot3(ax,ay,az,bx,by,bz)
  %1124 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %1117, float %1118, float %1119)  ; Dot3(ax,ay,az,bx,by,bz)
  %1125 = fdiv fast float 1.000000e+00, %1124
  %1126 = fmul fast float %1125, %1123
  %1127 = fmul fast float %1126, %1117
  %1128 = fmul fast float %1126, %1118
  %1129 = fmul fast float %1126, %1119
  %1130 = fadd fast float %1127, %1109
  %1131 = fadd fast float %1128, %1110
  %1132 = fadd fast float %1129, %1111
  %1133 = fmul fast float %1106, %462
  %1134 = call float @dx.op.tertiary.f32(i32 46, float %1107, float %468, float %1133)  ; FMad(a,b,c)
  %1135 = call float @dx.op.tertiary.f32(i32 46, float %1108, float %474, float %1134)  ; FMad(a,b,c)
  %1136 = fadd fast float %1135, %480
  %1137 = fmul fast float %1106, %463
  %1138 = call float @dx.op.tertiary.f32(i32 46, float %1107, float %469, float %1137)  ; FMad(a,b,c)
  %1139 = call float @dx.op.tertiary.f32(i32 46, float %1108, float %475, float %1138)  ; FMad(a,b,c)
  %1140 = fadd fast float %1139, %481
  %1141 = fmul fast float %1106, %465
  %1142 = call float @dx.op.tertiary.f32(i32 46, float %1107, float %471, float %1141)  ; FMad(a,b,c)
  %1143 = call float @dx.op.tertiary.f32(i32 46, float %1108, float %477, float %1142)  ; FMad(a,b,c)
  %1144 = fadd fast float %1143, %483
  %1145 = fmul fast float %1130, %462
  %1146 = call float @dx.op.tertiary.f32(i32 46, float %1131, float %468, float %1145)  ; FMad(a,b,c)
  %1147 = call float @dx.op.tertiary.f32(i32 46, float %1132, float %474, float %1146)  ; FMad(a,b,c)
  %1148 = fadd fast float %1147, %480
  %1149 = fmul fast float %1130, %463
  %1150 = call float @dx.op.tertiary.f32(i32 46, float %1131, float %469, float %1149)  ; FMad(a,b,c)
  %1151 = call float @dx.op.tertiary.f32(i32 46, float %1132, float %475, float %1150)  ; FMad(a,b,c)
  %1152 = fadd fast float %1151, %481
  %1153 = fmul fast float %1130, %465
  %1154 = call float @dx.op.tertiary.f32(i32 46, float %1131, float %471, float %1153)  ; FMad(a,b,c)
  %1155 = call float @dx.op.tertiary.f32(i32 46, float %1132, float %477, float %1154)  ; FMad(a,b,c)
  %1156 = fadd fast float %1155, %483
  %1157 = fdiv fast float 1.000000e+00, %1144
  %1158 = fmul fast float %1157, %1136
  %1159 = fmul fast float %1157, %1140
  %1160 = fdiv fast float 1.000000e+00, %1156
  %1161 = fmul fast float %1160, %1148
  %1162 = fmul fast float %1160, %1152
  %1163 = fsub fast float %1161, %1158
  %1164 = fsub fast float %1162, %1159
  %1165 = call float @dx.op.dot2.f32(i32 54, float %1163, float %1164, float %1163, float %1164)  ; Dot2(ax,ay,bx,by)
  %1166 = call float @dx.op.unary.f32(i32 25, float %1165)  ; Rsqrt(value)
  %1167 = fmul fast float %1163, %1166
  %1168 = fmul fast float %1164, %1166
  %1169 = fmul fast float %1163, %1163
  %1170 = fmul fast float %1164, %1164
  %1171 = fadd fast float %1169, %1170
  %1172 = call float @dx.op.unary.f32(i32 24, float %1171)  ; Sqrt(value)
  %1173 = fmul fast float %1172, 5.000000e-01
  %1174 = fcmp fast olt float %1173, %1083
  br i1 %1174, label %1175, label %1176, !dx.controlflow.hints !56

; <label>:1175                                    ; preds = %1084
  br label %1176

; <label>:1176                                    ; preds = %1175, %1084, %955
  %1177 = phi float [ %1083, %955 ], [ %1173, %1175 ], [ %1083, %1084 ]
  %1178 = phi float [ %1083, %955 ], [ %1083, %1175 ], [ %1173, %1084 ]
  %1179 = phi float [ %1077, %955 ], [ %1077, %1175 ], [ %1167, %1084 ]
  %1180 = phi float [ %1078, %955 ], [ %1078, %1175 ], [ %1168, %1084 ]
  %1181 = fsub fast float %1178, %1177
  %1182 = fmul fast float %1179, %1179
  %1183 = fmul fast float %1182, %1181
  %1184 = fadd fast float %1183, %1177
  %1185 = fmul fast float %1179, %1181
  %1186 = fmul fast float %1185, %1180
  %1187 = fmul fast float %1180, %1180
  %1188 = fmul fast float %1187, %1181
  %1189 = fadd fast float %1188, %1177
  %1190 = fmul fast float %1184, %541
  %1191 = call float @dx.op.tertiary.f32(i32 46, float %540, float %1186, float %1190)  ; FMad(a,b,c)
  %1192 = fmul fast float %1186, %541
  %1193 = call float @dx.op.tertiary.f32(i32 46, float %540, float %1189, float %1192)  ; FMad(a,b,c)
  %1194 = fmul fast float %1184, %542
  %1195 = call float @dx.op.tertiary.f32(i32 46, float %541, float %1186, float %1194)  ; FMad(a,b,c)
  %1196 = fmul fast float %1186, %542
  %1197 = call float @dx.op.tertiary.f32(i32 46, float %541, float %1189, float %1196)  ; FMad(a,b,c)
  br label %1198

; <label>:1198                                    ; preds = %1198, %1176
  %1199 = phi float [ 0.000000e+00, %1176 ], [ %1225, %1198 ]
  %1200 = phi i32 [ 0, %1176 ], [ %1226, %1198 ]
  %1201 = mul i32 %1200, 2
  %1202 = add i32 0, %1201
  %1203 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1202
  %1204 = load float, float* %1203, align 4
  %1205 = mul i32 %1200, 2
  %1206 = add i32 1, %1205
  %1207 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1206
  %1208 = load float, float* %1207, align 4
  %1209 = fmul fast float %1204, %1191
  %1210 = call float @dx.op.tertiary.f32(i32 46, float %1208, float %1195, float %1209)  ; FMad(a,b,c)
  %1211 = fmul fast float %1204, %1193
  %1212 = call float @dx.op.tertiary.f32(i32 46, float %1208, float %1197, float %1211)  ; FMad(a,b,c)
  %1213 = fadd fast float %1210, %535
  %1214 = fadd fast float %1212, %536
  %1215 = fmul fast float %1213, %452
  %1216 = fmul fast float %1214, %452
  %1217 = call float @dx.op.binary.f32(i32 35, float %1215, float %448)  ; FMax(a,b)
  %1218 = call float @dx.op.binary.f32(i32 35, float %1216, float %448)  ; FMax(a,b)
  %1219 = call float @dx.op.binary.f32(i32 36, float %1217, float %449)  ; FMin(a,b)
  %1220 = call float @dx.op.binary.f32(i32 36, float %1218, float %449)  ; FMin(a,b)
  %1221 = fadd fast float %1219, %446
  %1222 = fadd fast float %1220, %447
  %1223 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %16, float %1221, float %1222, float %921, float undef, i32 0, i32 0, i32 undef, float %924)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1224 = extractvalue %dx.types.ResRet.f32 %1223, 0
  %1225 = fadd fast float %1224, %1199
  %1226 = add nuw nsw i32 %1200, 1
  %1227 = icmp eq i32 %1226, 8
  br i1 %1227, label %1228, label %1198

; <label>:1228                                    ; preds = %1198
  %1229 = fmul fast float %1225, 1.250000e-01
  br label %1230

; <label>:1230                                    ; preds = %1228, %938, %587
  %1231 = phi float [ %614, %587 ], [ %1229, %1228 ], [ 1.000000e+00, %938 ]
  %1232 = fadd fast float %1231, -1.000000e+00
  %1233 = fmul fast float %1232, %425
  %1234 = fadd fast float %1233, 1.000000e+00
  %1235 = fmul fast float %1234, %437
  br label %1236

; <label>:1236                                    ; preds = %1230, %404
  %1237 = phi float [ %1235, %1230 ], [ %437, %404 ]
  %1238 = call float @dx.op.binary.f32(i32 36, float %1237, float %1237)  ; FMin(a,b)
  %1239 = call float @dx.op.binary.f32(i32 36, float %1237, float %1238)  ; FMin(a,b)
  %1240 = fcmp fast ogt float %1239, 0x3F10000000000000
  %1241 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %1240)  ; WaveAnyTrue(cond)
  %1242 = icmp ugt i32 %180, 63
  br i1 %1242, label %1272, label %1243, !dx.controlflow.hints !59

; <label>:1243                                    ; preds = %1236
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1244 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %1244, label %1245, label %1248, !dx.controlflow.hints !60

; <label>:1245                                    ; preds = %1243
  %1246 = zext i1 %1241 to i32
  %1247 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %181
  store i32 %1246, i32 addrspace(3)* %1247, align 4, !tbaa !35
  br label %1248

; <label>:1248                                    ; preds = %1245, %1243
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1249 = icmp eq i32 %180, 32
  br i1 %1249, label %1250, label %1256, !dx.controlflow.hints !61

; <label>:1250                                    ; preds = %1248
  %1251 = xor i32 %181, 1
  %1252 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1251
  %1253 = load i32, i32 addrspace(3)* %1252, align 4, !tbaa !35
  %1254 = icmp ne i32 %1253, 0
  %1255 = or i1 %1241, %1254
  br label %1272

; <label>:1256                                    ; preds = %1248
  %1257 = icmp eq i32 %180, 16
  br i1 %1257, label %1258, label %1272, !dx.controlflow.hints !62

; <label>:1258                                    ; preds = %1256
  %1259 = xor i32 %181, 1
  %1260 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1259
  %1261 = load i32, i32 addrspace(3)* %1260, align 4, !tbaa !35
  %1262 = xor i32 %181, 2
  %1263 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1262
  %1264 = load i32, i32 addrspace(3)* %1263, align 4, !tbaa !35
  %1265 = or i32 %1264, %1261
  %1266 = xor i32 %181, 3
  %1267 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1266
  %1268 = load i32, i32 addrspace(3)* %1267, align 4, !tbaa !35
  %1269 = or i32 %1265, %1268
  %1270 = icmp ne i32 %1269, 0
  %1271 = or i1 %1241, %1270
  br label %1272

; <label>:1272                                    ; preds = %1258, %1256, %1250, %1236
  %1273 = phi i1 [ %1255, %1250 ], [ %1271, %1258 ], [ %1241, %1236 ], [ false, %1256 ]
  %1274 = select i1 %1273, i32 %316, i32 0
  %1275 = or i32 %311, %1274
  %1276 = lshr i32 %160, 5
  %1277 = lshr i32 %161, 5
  %1278 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1276, i32 %1277, i32 %314, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1279 = extractvalue %dx.types.ResRet.i32 %1278, 0
  %1280 = lshr i32 %1279, 23
  %1281 = and i32 %1280, 255
  %1282 = and i32 %160, 31
  %1283 = and i32 %161, 31
  %1284 = lshr i32 %1279, 1
  %1285 = and i32 %1284, 16352
  %1286 = lshr i32 %1279, 10
  %1287 = and i32 %1286, 8160
  %1288 = or i32 %1285, %1282
  %1289 = or i32 %1287, %1283
  %1290 = fmul fast float %1237, 2.550000e+02
  %1291 = fadd fast float %1290, %155
  %1292 = call float @dx.op.unary.f32(i32 27, float %1291)  ; Round_ni(value)
  %1293 = fmul fast float %1292, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1288, i32 %1289, i32 %1281, float %1293, float %1293, float %1293, float %1293, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1294 = icmp eq i32 %312, %316
  br i1 %1294, label %1295, label %310, !llvm.loop !63

; <label>:1295                                    ; preds = %1272
  br label %1296

; <label>:1296                                    ; preds = %1295, %306
  %1297 = phi i32 [ 0, %306 ], [ %1275, %1295 ]
  %1298 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1299 = extractvalue %dx.types.CBufRet.i32 %1298, 0
  %1300 = call i32 @dx.op.tertiary.i32(i32 49, i32 %166, i32 %1299, i32 %247)  ; UMad(a,b,c)
  %1301 = shl i32 %1300, 2
  %1302 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1301, i32 undef, i32 undef, i32 %1297)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1303 = add i32 %247, 1
  %1304 = icmp ugt i32 %1303, %243
  br i1 %1304, label %1305, label %246

; <label>:1305                                    ; preds = %1296
  br label %1306

; <label>:1306                                    ; preds = %1305, %239, %0
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
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.unroll.disable"}

