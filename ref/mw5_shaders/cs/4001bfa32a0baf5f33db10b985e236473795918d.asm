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
; shader hash: dd8a183e1b7622ee37ba84b157b9ee29
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
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
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
;                                   texture    byte         r/o      T3            t19     1
;                                   texture    byte         r/o      T4            t20     1
;                                   texture     f32          1d      T5             t8     1
;                                   texture     f32          2d      T6            t13     1
;                                   texture     f32     2darray      T7             t1     1
;                                   texture    byte         r/o      T8             t6     1
;                                   texture    byte         r/o      T9             t7     1
;                                       UAV     f32     2darray      U0             u0     1
;                                       UAV     u32     2darray      U1             u1     1
;                                       UAV     u32     2darray      U2             u2     1
;                                       UAV  struct         r/w      U3             u3     1
;                                       UAV    byte         r/w      U4             u6     1
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
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2DArray<float>" = type { float }
%"class.RWTexture2DArray<unsigned int>" = type { i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
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
@"\01?gsPackedTileData@@3IA" = external addrspace(3) global i32, align 4
@"\01?gsLightIterator@@3IA" = external addrspace(3) global i32, align 4
@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @cs_spotvis() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %22 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %23 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %24 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %25 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.i32 %25, 0
  %27 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.i32 %27, 1
  %29 = shl i32 %26, 2
  %30 = mul i32 %29, %28
  %31 = add i32 %30, %21
  %32 = shl i32 %31, 2
  %33 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %32, i32 undef)  ; BufferLoad(srv,index,wot)
  %34 = extractvalue %dx.types.ResRet.i32 %33, 0
  %35 = lshr i32 %34, 28
  %36 = and i32 %35, 3
  %37 = lshr i32 %34, 10
  %38 = and i32 %37, 262128
  %39 = shl i32 %34, 4
  %40 = and i32 %39, 262128
  %41 = shl nuw nsw i32 %35, 3
  %42 = and i32 %41, 8
  %43 = lshr i32 %34, 26
  %44 = and i32 %43, 8
  %45 = or i32 %38, %22
  %46 = or i32 %45, %42
  %47 = or i32 %44, %23
  %48 = or i32 %47, %40
  %49 = uitofp i32 %46 to float
  %50 = uitofp i32 %48 to float
  %51 = fadd fast float %49, 5.000000e-01
  %52 = fadd fast float %50, 5.000000e-01
  %53 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %46, i32 %48, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %54 = extractvalue %dx.types.ResRet.f32 %53, 0
  %55 = fcmp fast olt float %54, -1.000000e+00
  %56 = fcmp fast ogt float %54, -1.000000e+00
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 1
  %59 = select i1 %56, float %58, float 1.000000e+00
  %60 = fadd fast float %54, 1.000000e+00
  %61 = fmul fast float %59, %60
  %62 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 2
  %65 = extractvalue %dx.types.CBufRet.f32 %63, 3
  %66 = fmul fast float %51, %64
  %67 = fmul fast float %52, %65
  %68 = fmul fast float %66, 2.000000e+00
  %69 = fmul fast float %67, 2.000000e+00
  %70 = fsub fast float 1.000000e+00, %68
  %71 = fsub fast float 1.000000e+00, %69
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = extractvalue %dx.types.CBufRet.f32 %72, 1
  %75 = extractvalue %dx.types.CBufRet.f32 %72, 2
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 0
  %78 = extractvalue %dx.types.CBufRet.f32 %76, 1
  %79 = extractvalue %dx.types.CBufRet.f32 %76, 2
  %80 = select i1 %55, float %73, float %77
  %81 = select i1 %55, float %74, float %78
  %82 = select i1 %55, float %75, float %79
  %83 = fmul fast float %70, %80
  %84 = fmul fast float %70, %81
  %85 = fmul fast float %70, %82
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 0
  %88 = extractvalue %dx.types.CBufRet.f32 %86, 1
  %89 = extractvalue %dx.types.CBufRet.f32 %86, 2
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 0
  %92 = extractvalue %dx.types.CBufRet.f32 %90, 1
  %93 = extractvalue %dx.types.CBufRet.f32 %90, 2
  %94 = select i1 %55, float %87, float %91
  %95 = select i1 %55, float %88, float %92
  %96 = select i1 %55, float %89, float %93
  %97 = fmul fast float %94, %71
  %98 = fmul fast float %95, %71
  %99 = fmul fast float %96, %71
  %100 = fadd fast float %97, %83
  %101 = fadd fast float %98, %84
  %102 = fadd fast float %99, %85
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = extractvalue %dx.types.CBufRet.f32 %103, 1
  %106 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 1
  %110 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %111 = select i1 %55, float %104, float %108
  %112 = select i1 %55, float %105, float %109
  %113 = select i1 %55, float %106, float %110
  %114 = fadd fast float %100, %111
  %115 = fadd fast float %101, %112
  %116 = fadd fast float %102, %113
  %117 = fmul fast float %114, %62
  %118 = fmul fast float %115, %62
  %119 = fmul fast float %116, %62
  %120 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %15, i32 0, i32 %46, i32 %48, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %121 = extractvalue %dx.types.ResRet.i32 %120, 0
  %122 = lshr i32 %121, 8
  %123 = and i32 %121, 255
  %124 = and i32 %122, 255
  %125 = uitofp i32 %123 to float
  %126 = uitofp i32 %124 to float
  %127 = fmul fast float %125, 0x3F80101020000000
  %128 = fmul fast float %126, 0x3F80101020000000
  %129 = fadd fast float %127, -1.000000e+00
  %130 = fadd fast float %128, -1.000000e+00
  %131 = call float @dx.op.unary.f32(i32 6, float %129)  ; FAbs(value)
  %132 = fsub fast float 1.000000e+00, %131
  %133 = call float @dx.op.unary.f32(i32 6, float %130)  ; FAbs(value)
  %134 = fsub fast float %132, %133
  %135 = fsub fast float -0.000000e+00, %134
  %136 = call float @dx.op.binary.f32(i32 35, float %135, float 0.000000e+00)  ; FMax(a,b)
  %137 = fcmp fast ogt float %129, 0.000000e+00
  %138 = fsub fast float -0.000000e+00, %136
  %139 = select i1 %137, float %138, float %136
  %140 = fadd fast float %139, %129
  %141 = fcmp fast ogt float %130, 0.000000e+00
  %142 = select i1 %141, float %138, float %136
  %143 = fadd fast float %142, %130
  %144 = call float @dx.op.dot3.f32(i32 55, float %140, float %143, float %134, float %140, float %143, float %134)  ; Dot3(ax,ay,az,bx,by,bz)
  %145 = call float @dx.op.unary.f32(i32 25, float %144)  ; Rsqrt(value)
  %146 = fmul fast float %140, %145
  %147 = fmul fast float %143, %145
  %148 = fmul fast float %145, %134
  %149 = fmul fast float %64, %49
  %150 = fmul fast float %65, %50
  %151 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %17, float %149, float %150, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %152 = extractvalue %dx.types.ResRet.f32 %151, 0
  %153 = extractvalue %dx.types.ResRet.f32 %151, 1
  %154 = extractvalue %dx.types.ResRet.f32 %151, 2
  %155 = fcmp fast ogt float %152, -1.000000e+00
  %156 = select i1 %155, float %58, float 1.000000e+00
  %157 = fadd fast float %152, 1.000000e+00
  %158 = fmul fast float %156, %157
  %159 = call float @dx.op.unary.f32(i32 6, float %158)  ; FAbs(value)
  %160 = fcmp fast ogt float %153, -1.000000e+00
  %161 = select i1 %160, float %58, float 1.000000e+00
  %162 = fadd fast float %153, 1.000000e+00
  %163 = fmul fast float %161, %162
  %164 = call float @dx.op.unary.f32(i32 6, float %163)  ; FAbs(value)
  %165 = fcmp fast ogt float %154, -1.000000e+00
  %166 = select i1 %165, float %58, float 1.000000e+00
  %167 = fadd fast float %154, 1.000000e+00
  %168 = fmul fast float %166, %167
  %169 = call float @dx.op.unary.f32(i32 6, float %168)  ; FAbs(value)
  %170 = fadd fast float %49, 1.000000e+00
  %171 = fmul fast float %64, %170
  %172 = fadd fast float %50, 1.000000e+00
  %173 = fmul fast float %65, %172
  %174 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %17, float %171, float %173, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %175 = extractvalue %dx.types.ResRet.f32 %174, 0
  %176 = extractvalue %dx.types.ResRet.f32 %174, 2
  %177 = fcmp fast ogt float %175, -1.000000e+00
  %178 = select i1 %177, float %58, float 1.000000e+00
  %179 = fadd fast float %175, 1.000000e+00
  %180 = fmul fast float %178, %179
  %181 = call float @dx.op.unary.f32(i32 6, float %180)  ; FAbs(value)
  %182 = fcmp fast ogt float %176, -1.000000e+00
  %183 = select i1 %182, float %58, float 1.000000e+00
  %184 = fadd fast float %176, 1.000000e+00
  %185 = fmul fast float %183, %184
  %186 = call float @dx.op.unary.f32(i32 6, float %185)  ; FAbs(value)
  %187 = fsub fast float %169, %164
  %188 = fsub fast float %181, %164
  %189 = fsub fast float %159, %164
  %190 = fsub fast float %186, %164
  %191 = call float @dx.op.unary.f32(i32 6, float %188)  ; FAbs(value)
  %192 = call float @dx.op.unary.f32(i32 6, float %187)  ; FAbs(value)
  %193 = call float @dx.op.binary.f32(i32 35, float %192, float %191)  ; FMax(a,b)
  %194 = call float @dx.op.unary.f32(i32 6, float %190)  ; FAbs(value)
  %195 = call float @dx.op.unary.f32(i32 6, float %189)  ; FAbs(value)
  %196 = call float @dx.op.binary.f32(i32 35, float %195, float %194)  ; FMax(a,b)
  %197 = fadd fast float %188, %187
  %198 = call float @dx.op.unary.f32(i32 6, float %197)  ; FAbs(value)
  %199 = fadd fast float %190, %189
  %200 = call float @dx.op.unary.f32(i32 6, float %199)  ; FAbs(value)
  %201 = fsub fast float %196, %200
  %202 = call float @dx.op.unary.f32(i32 6, float %201)  ; FAbs(value)
  %203 = fsub fast float %193, %198
  %204 = call float @dx.op.unary.f32(i32 6, float %203)  ; FAbs(value)
  %205 = call float @dx.op.binary.f32(i32 35, float %204, float %202)  ; FMax(a,b)
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.f32 %206, 2
  %208 = fmul fast float %207, 0x3FE3C6EF40000000
  %209 = frem fast float %51, 2.560000e+02
  %210 = frem fast float %52, 2.560000e+02
  %211 = fptoui float %209 to i32
  %212 = fptoui float %210 to i32
  %213 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %211, i32 %212, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %214 = extractvalue %dx.types.ResRet.f32 %213, 0
  %215 = extractvalue %dx.types.ResRet.f32 %213, 2
  %216 = fadd fast float %214, %208
  %217 = fadd fast float %215, %208
  %218 = call float @dx.op.unary.f32(i32 22, float %216)  ; Frc(value)
  %219 = call float @dx.op.unary.f32(i32 22, float %217)  ; Frc(value)
  %220 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = extractvalue %dx.types.CBufRet.i32 %220, 0
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %1912, label %223, !dx.controlflow.hints !35

; <label>:223                                     ; preds = %0
  %224 = fptoui float %51 to i32
  %225 = fptoui float %52 to i32
  %226 = lshr i32 %224, 4
  %227 = lshr i32 %225, 4
  %228 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %229 = extractvalue %dx.types.CBufRet.i32 %228, 0
  %230 = call i32 @dx.op.tertiary.i32(i32 49, i32 %227, i32 %229, i32 %226)  ; UMad(a,b,c)
  %231 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.i32 %231, 0
  %233 = add nsw i32 %232, -1
  %234 = call i32 @dx.op.binary.i32(i32 37, i32 %233, i32 0)  ; IMax(a,b)
  %235 = call float @dx.op.binary.f32(i32 35, float %62, float 0.000000e+00)  ; FMax(a,b)
  %236 = fptoui float %235 to i32
  %237 = lshr i32 %236, 5
  %238 = call i32 @dx.op.binary.i32(i32 40, i32 %237, i32 8191)  ; UMin(a,b)
  %239 = shl i32 %238, 2
  %240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = lshr i32 %241, 16
  %243 = and i32 %241, 65535
  %244 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %245 = udiv i32 %24, %244
  %246 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %242, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %247 = icmp eq i32 %244, 64
  br i1 %247, label %274, label %248, !dx.controlflow.hints !36

; <label>:248                                     ; preds = %223
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %249 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %249, label %250, label %252, !dx.controlflow.hints !37

; <label>:250                                     ; preds = %248
  %251 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %245
  store i32 %246, i32 addrspace(3)* %251, align 4, !tbaa !38
  br label %252

; <label>:252                                     ; preds = %250, %248
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %253 = icmp eq i32 %244, 32
  br i1 %253, label %254, label %259, !dx.controlflow.hints !42

; <label>:254                                     ; preds = %252
  %255 = xor i32 %245, 1
  %256 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %255
  %257 = load i32, i32 addrspace(3)* %256, align 4, !tbaa !38
  %258 = call i32 @dx.op.binary.i32(i32 40, i32 %246, i32 %257)  ; UMin(a,b)
  br label %274

; <label>:259                                     ; preds = %252
  %260 = icmp eq i32 %244, 16
  br i1 %260, label %261, label %274, !dx.controlflow.hints !43

; <label>:261                                     ; preds = %259
  %262 = xor i32 %245, 3
  %263 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %262
  %264 = load i32, i32 addrspace(3)* %263, align 4, !tbaa !38
  %265 = xor i32 %245, 2
  %266 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %265
  %267 = load i32, i32 addrspace(3)* %266, align 4, !tbaa !38
  %268 = call i32 @dx.op.binary.i32(i32 40, i32 %267, i32 %264)  ; UMin(a,b)
  %269 = xor i32 %245, 1
  %270 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %269
  %271 = load i32, i32 addrspace(3)* %270, align 4, !tbaa !38
  %272 = call i32 @dx.op.binary.i32(i32 40, i32 %246, i32 %271)  ; UMin(a,b)
  %273 = call i32 @dx.op.binary.i32(i32 40, i32 %272, i32 %268)  ; UMin(a,b)
  br label %274

; <label>:274                                     ; preds = %261, %259, %254, %223
  %275 = phi i32 [ %258, %254 ], [ %273, %261 ], [ %246, %223 ], [ 0, %259 ]
  %276 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %243, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  br i1 %247, label %303, label %277, !dx.controlflow.hints !44

; <label>:277                                     ; preds = %274
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %278 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %278, label %279, label %281, !dx.controlflow.hints !45

; <label>:279                                     ; preds = %277
  %280 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %245
  store i32 %276, i32 addrspace(3)* %280, align 4, !tbaa !38
  br label %281

; <label>:281                                     ; preds = %279, %277
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %282 = icmp eq i32 %244, 32
  br i1 %282, label %283, label %288, !dx.controlflow.hints !46

; <label>:283                                     ; preds = %281
  %284 = xor i32 %245, 1
  %285 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %284
  %286 = load i32, i32 addrspace(3)* %285, align 4, !tbaa !38
  %287 = call i32 @dx.op.binary.i32(i32 39, i32 %276, i32 %286)  ; UMax(a,b)
  br label %303

; <label>:288                                     ; preds = %281
  %289 = icmp eq i32 %244, 16
  br i1 %289, label %290, label %303, !dx.controlflow.hints !47

; <label>:290                                     ; preds = %288
  %291 = xor i32 %245, 3
  %292 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %291
  %293 = load i32, i32 addrspace(3)* %292, align 4, !tbaa !38
  %294 = xor i32 %245, 2
  %295 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %294
  %296 = load i32, i32 addrspace(3)* %295, align 4, !tbaa !38
  %297 = call i32 @dx.op.binary.i32(i32 39, i32 %296, i32 %293)  ; UMax(a,b)
  %298 = xor i32 %245, 1
  %299 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %298
  %300 = load i32, i32 addrspace(3)* %299, align 4, !tbaa !38
  %301 = call i32 @dx.op.binary.i32(i32 39, i32 %276, i32 %300)  ; UMax(a,b)
  %302 = call i32 @dx.op.binary.i32(i32 39, i32 %301, i32 %297)  ; UMax(a,b)
  br label %303

; <label>:303                                     ; preds = %290, %288, %283, %274
  %304 = phi i32 [ %287, %283 ], [ %302, %290 ], [ %276, %274 ], [ 0, %288 ]
  %305 = lshr i32 %275, 5
  %306 = lshr i32 %304, 5
  %307 = call i32 @dx.op.binary.i32(i32 40, i32 %306, i32 %234)  ; UMin(a,b)
  %308 = icmp ugt i32 %305, %307
  br i1 %308, label %1912, label %309

; <label>:309                                     ; preds = %303
  br label %310

; <label>:310                                     ; preds = %1902, %309
  %311 = phi i32 [ %1909, %1902 ], [ %305, %309 ]
  %312 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.i32 %312, 0
  %314 = call i32 @dx.op.tertiary.i32(i32 49, i32 %230, i32 %313, i32 %311)  ; UMad(a,b,c)
  %315 = shl i32 %314, 2
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = shl i32 %311, 5
  %319 = sub nsw i32 %242, %318
  %320 = call i32 @dx.op.binary.i32(i32 37, i32 %319, i32 0)  ; IMax(a,b)
  %321 = call i32 @dx.op.binary.i32(i32 38, i32 %320, i32 31)  ; IMin(a,b)
  %322 = sub nsw i32 1, %242
  %323 = add nsw i32 %322, %243
  %324 = call i32 @dx.op.binary.i32(i32 37, i32 %323, i32 0)  ; IMax(a,b)
  %325 = call i32 @dx.op.binary.i32(i32 38, i32 %324, i32 32)  ; IMin(a,b)
  %326 = and i32 %325, 31
  %327 = shl i32 -1, %326
  %328 = xor i32 %327, -1
  %329 = and i32 %321, 31
  %330 = shl i32 %328, %329
  %331 = icmp eq i32 %325, 32
  %332 = select i1 %331, i32 -1, i32 %330
  %333 = and i32 %332, %317
  %334 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %333, i8 1)  ; WaveActiveBit(value,op)
  br i1 %247, label %361, label %335, !dx.controlflow.hints !48

; <label>:335                                     ; preds = %310
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %336 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %336, label %337, label %339, !dx.controlflow.hints !49

; <label>:337                                     ; preds = %335
  %338 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %245
  store i32 %334, i32 addrspace(3)* %338, align 4, !tbaa !38
  br label %339

; <label>:339                                     ; preds = %337, %335
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %340 = icmp eq i32 %244, 32
  br i1 %340, label %341, label %346, !dx.controlflow.hints !50

; <label>:341                                     ; preds = %339
  %342 = xor i32 %245, 1
  %343 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %342
  %344 = load i32, i32 addrspace(3)* %343, align 4, !tbaa !38
  %345 = or i32 %344, %334
  br label %361

; <label>:346                                     ; preds = %339
  %347 = icmp eq i32 %244, 16
  br i1 %347, label %348, label %361, !dx.controlflow.hints !51

; <label>:348                                     ; preds = %346
  %349 = xor i32 %245, 1
  %350 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %349
  %351 = load i32, i32 addrspace(3)* %350, align 4, !tbaa !38
  %352 = or i32 %351, %334
  %353 = xor i32 %245, 2
  %354 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %353
  %355 = load i32, i32 addrspace(3)* %354, align 4, !tbaa !38
  %356 = or i32 %352, %355
  %357 = xor i32 %245, 3
  %358 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %357
  %359 = load i32, i32 addrspace(3)* %358, align 4, !tbaa !38
  %360 = or i32 %356, %359
  br label %361

; <label>:361                                     ; preds = %348, %346, %341, %310
  %362 = phi i32 [ %345, %341 ], [ %360, %348 ], [ %334, %310 ], [ 0, %346 ]
  br i1 %247, label %363, label %365, !dx.controlflow.hints !52

; <label>:363                                     ; preds = %361
  %364 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %362)  ; WaveReadLaneFirst(value)
  br label %370

; <label>:365                                     ; preds = %361
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %366 = icmp eq i32 %24, 0
  br i1 %366, label %367, label %368, !dx.controlflow.hints !53

; <label>:367                                     ; preds = %365
  store i32 %362, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !38
  br label %368

; <label>:368                                     ; preds = %367, %365
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %369 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !38
  br label %370

; <label>:370                                     ; preds = %368, %363
  %371 = phi i32 [ %364, %363 ], [ %369, %368 ]
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %1902, label %373

; <label>:373                                     ; preds = %370
  br label %374

; <label>:374                                     ; preds = %1899, %373
  %375 = phi i32 [ %1753, %1899 ], [ 0, %373 ]
  %376 = phi i32 [ %381, %1899 ], [ %371, %373 ]
  %377 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %376)  ; FirstbitLo(value)
  %378 = add i32 %377, %318
  %379 = and i32 %377, 31
  %380 = shl i32 1, %379
  %381 = xor i32 %380, %376
  %382 = mul i32 %378, 112
  %383 = add i32 %382, 16
  %384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.f32 %384, 0
  %386 = extractvalue %dx.types.ResRet.f32 %384, 1
  %387 = extractvalue %dx.types.ResRet.f32 %384, 2
  %388 = add i32 %382, 28
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = add i32 %382, 32
  %392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.f32 %392, 0
  %394 = extractvalue %dx.types.ResRet.f32 %392, 1
  %395 = extractvalue %dx.types.ResRet.f32 %392, 2
  %396 = add i32 %382, 44
  %397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.f32 %397, 0
  %399 = add i32 %382, 48
  %400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.f32 %400, 0
  %402 = extractvalue %dx.types.ResRet.f32 %400, 1
  %403 = extractvalue %dx.types.ResRet.f32 %400, 2
  %404 = extractvalue %dx.types.ResRet.f32 %400, 3
  %405 = add i32 %382, 64
  %406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.f32 %406, 0
  %408 = extractvalue %dx.types.ResRet.f32 %406, 1
  %409 = extractvalue %dx.types.ResRet.f32 %406, 2
  %410 = extractvalue %dx.types.ResRet.f32 %406, 3
  %411 = add i32 %382, 92
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 65535
  %415 = uitofp i32 %414 to float
  %416 = lshr i32 %413, 16
  %417 = uitofp i32 %416 to float
  %418 = and i32 %390, 65535
  %419 = and i32 %390, 50331648
  %420 = icmp eq i32 %419, 33554432
  %421 = call float @dx.op.dot3.f32(i32 55, float %393, float %394, float %395, float %393, float %394, float %395)  ; Dot3(ax,ay,az,bx,by,bz)
  %422 = fsub fast float %117, %401
  %423 = fsub fast float %118, %402
  %424 = fsub fast float %119, %403
  %425 = call float @dx.op.dot3.f32(i32 55, float %422, float %423, float %424, float %393, float %394, float %395)  ; Dot3(ax,ay,az,bx,by,bz)
  %426 = fdiv fast float %425, %421
  %427 = call float @dx.op.binary.f32(i32 35, float %426, float -1.000000e+00)  ; FMax(a,b)
  %428 = call float @dx.op.binary.f32(i32 36, float %427, float 1.000000e+00)  ; FMin(a,b)
  %429 = fmul fast float %428, %393
  %430 = fmul fast float %428, %394
  %431 = fmul fast float %428, %395
  %432 = fadd fast float %429, %401
  %433 = fadd fast float %430, %402
  %434 = fadd fast float %431, %403
  %435 = fsub fast float %432, %117
  %436 = fsub fast float %433, %118
  %437 = fsub fast float %434, %119
  %438 = call float @dx.op.dot3.f32(i32 55, float %435, float %436, float %437, float %435, float %436, float %437)  ; Dot3(ax,ay,az,bx,by,bz)
  %439 = call float @dx.op.unary.f32(i32 24, float %438)  ; Sqrt(value)
  %440 = fdiv fast float 1.000000e+00, %439
  %441 = fmul fast float %435, %440
  %442 = fmul fast float %436, %440
  %443 = fmul fast float %437, %440
  br i1 %420, label %444, label %468, !dx.controlflow.hints !54

; <label>:444                                     ; preds = %374
  %445 = fmul fast float %409, %385
  %446 = fmul fast float %409, %386
  %447 = fmul fast float %409, %387
  %448 = fsub fast float %445, %117
  %449 = fadd fast float %448, %432
  %450 = fsub fast float %446, %118
  %451 = fadd fast float %450, %433
  %452 = fsub fast float %447, %119
  %453 = fadd fast float %452, %434
  %454 = call float @dx.op.dot3.f32(i32 55, float %449, float %451, float %453, float %449, float %451, float %453)  ; Dot3(ax,ay,az,bx,by,bz)
  %455 = call float @dx.op.unary.f32(i32 25, float %454)  ; Rsqrt(value)
  %456 = fmul fast float %455, %449
  %457 = fmul fast float %455, %451
  %458 = fmul fast float %455, %453
  %459 = fsub fast float %117, %432
  %460 = fsub fast float %118, %433
  %461 = fsub fast float %119, %434
  %462 = fsub fast float -0.000000e+00, %459
  %463 = fsub fast float -0.000000e+00, %460
  %464 = fsub fast float -0.000000e+00, %461
  %465 = call float @dx.op.dot3.f32(i32 55, float %462, float %463, float %464, float %385, float %386, float %387)  ; Dot3(ax,ay,az,bx,by,bz)
  %466 = fcmp fast ogt float %465, 0.000000e+00
  %467 = uitofp i1 %466 to float
  br label %468

; <label>:468                                     ; preds = %444, %374
  %469 = phi float [ %467, %444 ], [ 1.000000e+00, %374 ]
  %470 = phi float [ %456, %444 ], [ %441, %374 ]
  %471 = phi float [ %457, %444 ], [ %442, %374 ]
  %472 = phi float [ %458, %444 ], [ %443, %374 ]
  %473 = call float @dx.op.dot3.f32(i32 55, float %385, float %386, float %387, float %470, float %471, float %472)  ; Dot3(ax,ay,az,bx,by,bz)
  %474 = fmul fast float %473, %473
  %475 = call float @dx.op.unary.f32(i32 7, float %474)  ; Saturate(value)
  %476 = fsub fast float 1.000000e+00, %475
  %477 = fmul fast float %476, 5.000000e-01
  %478 = fcmp fast ogt float %473, 0.000000e+00
  %479 = fsub fast float 1.000000e+00, %477
  %480 = select i1 %478, float %477, float %479
  %481 = fmul fast float %480, %417
  %482 = fadd fast float %481, %415
  %483 = fmul fast float %482, 0x3EF0001000000000
  %484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %16, float %483, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %485 = extractvalue %dx.types.ResRet.f32 %484, 0
  %486 = fmul fast float %473, %407
  %487 = fadd fast float %486, %408
  %488 = call float @dx.op.unary.f32(i32 7, float %487)  ; Saturate(value)
  %489 = select i1 %420, float 1.000000e+00, float %488
  %490 = select i1 %420, float %488, float 1.000000e+00
  %491 = fmul fast float %439, %404
  %492 = fsub fast float 1.000000e+00, %491
  %493 = fmul fast float %492, %410
  %494 = call float @dx.op.unary.f32(i32 7, float %493)  ; Saturate(value)
  %495 = fmul fast float %494, %490
  %496 = fmul fast float %495, 2.000000e+00
  %497 = fsub fast float 3.000000e+00, %496
  %498 = fmul fast float %485, %469
  %499 = fmul fast float %495, %495
  %500 = fmul fast float %499, %498
  %501 = fmul fast float %500, %497
  %502 = icmp ne i32 %418, 255
  %503 = call float @dx.op.binary.f32(i32 36, float %501, float %501)  ; FMin(a,b)
  %504 = call float @dx.op.binary.f32(i32 36, float %501, float %503)  ; FMin(a,b)
  %505 = fcmp fast ogt float %504, 0.000000e+00
  %506 = and i1 %502, %505
  br i1 %506, label %507, label %1421, !dx.controlflow.hints !55

; <label>:507                                     ; preds = %468
  %508 = mul nuw nsw i32 %418, 176
  %509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.f32 %509, 0
  %511 = extractvalue %dx.types.ResRet.f32 %509, 1
  %512 = extractvalue %dx.types.ResRet.f32 %509, 2
  %513 = extractvalue %dx.types.ResRet.f32 %509, 3
  %514 = add nuw nsw i32 %508, 16
  %515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.f32 %515, 0
  %517 = extractvalue %dx.types.ResRet.f32 %515, 1
  %518 = add nuw nsw i32 %508, 32
  %519 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.f32 %519, 0
  %521 = extractvalue %dx.types.ResRet.f32 %519, 1
  %522 = extractvalue %dx.types.ResRet.f32 %519, 2
  %523 = extractvalue %dx.types.ResRet.f32 %519, 3
  %524 = add nuw nsw i32 %508, 48
  %525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.f32 %525, 0
  %527 = extractvalue %dx.types.ResRet.f32 %525, 1
  %528 = extractvalue %dx.types.ResRet.f32 %525, 2
  %529 = extractvalue %dx.types.ResRet.f32 %525, 3
  %530 = add nuw nsw i32 %508, 64
  %531 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %530, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.f32 %531, 0
  %533 = extractvalue %dx.types.ResRet.f32 %531, 1
  %534 = extractvalue %dx.types.ResRet.f32 %531, 2
  %535 = extractvalue %dx.types.ResRet.f32 %531, 3
  %536 = add nuw nsw i32 %508, 80
  %537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %536, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.f32 %537, 0
  %539 = extractvalue %dx.types.ResRet.f32 %537, 1
  %540 = extractvalue %dx.types.ResRet.f32 %537, 2
  %541 = extractvalue %dx.types.ResRet.f32 %537, 3
  %542 = add nuw nsw i32 %508, 96
  %543 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.f32 %543, 0
  %545 = extractvalue %dx.types.ResRet.f32 %543, 1
  %546 = extractvalue %dx.types.ResRet.f32 %543, 2
  %547 = extractvalue %dx.types.ResRet.f32 %543, 3
  %548 = add nuw nsw i32 %508, 112
  %549 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.f32 %549, 0
  %551 = extractvalue %dx.types.ResRet.f32 %549, 1
  %552 = extractvalue %dx.types.ResRet.f32 %549, 2
  %553 = extractvalue %dx.types.ResRet.f32 %549, 3
  %554 = add nuw nsw i32 %508, 128
  %555 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.f32 %555, 0
  %557 = extractvalue %dx.types.ResRet.f32 %555, 1
  %558 = extractvalue %dx.types.ResRet.f32 %555, 2
  %559 = extractvalue %dx.types.ResRet.f32 %555, 3
  %560 = add nuw nsw i32 %508, 144
  %561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.f32 %561, 0
  %563 = extractvalue %dx.types.ResRet.f32 %561, 1
  %564 = extractvalue %dx.types.ResRet.f32 %561, 2
  %565 = extractvalue %dx.types.ResRet.f32 %561, 3
  %566 = add nuw nsw i32 %508, 160
  %567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %566, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.f32 %567, 0
  %569 = extractvalue %dx.types.ResRet.f32 %567, 1
  %570 = extractvalue %dx.types.ResRet.f32 %567, 2
  %571 = extractvalue %dx.types.ResRet.f32 %567, 3
  %572 = bitcast float %517 to i32
  %573 = bitcast float %523 to i32
  %574 = and i32 %573, 1
  %575 = icmp ne i32 %574, 0
  %576 = and i32 %573, 2
  %577 = fmul fast float %522, %146
  %578 = fmul fast float %522, %147
  %579 = fmul fast float %522, %148
  %580 = fadd fast float %577, %117
  %581 = fadd fast float %578, %118
  %582 = fadd fast float %579, %119
  %583 = fmul fast float %580, %526
  %584 = call float @dx.op.tertiary.f32(i32 46, float %581, float %532, float %583)  ; FMad(a,b,c)
  %585 = call float @dx.op.tertiary.f32(i32 46, float %582, float %538, float %584)  ; FMad(a,b,c)
  %586 = fadd fast float %585, %544
  %587 = fmul fast float %580, %527
  %588 = call float @dx.op.tertiary.f32(i32 46, float %581, float %533, float %587)  ; FMad(a,b,c)
  %589 = call float @dx.op.tertiary.f32(i32 46, float %582, float %539, float %588)  ; FMad(a,b,c)
  %590 = fadd fast float %589, %545
  %591 = fmul fast float %580, %528
  %592 = call float @dx.op.tertiary.f32(i32 46, float %581, float %534, float %591)  ; FMad(a,b,c)
  %593 = call float @dx.op.tertiary.f32(i32 46, float %582, float %540, float %592)  ; FMad(a,b,c)
  %594 = fadd fast float %593, %546
  %595 = fmul fast float %580, %529
  %596 = call float @dx.op.tertiary.f32(i32 46, float %581, float %535, float %595)  ; FMad(a,b,c)
  %597 = call float @dx.op.tertiary.f32(i32 46, float %582, float %541, float %596)  ; FMad(a,b,c)
  %598 = fadd fast float %597, %547
  %599 = fdiv fast float %586, %598
  %600 = fdiv fast float %590, %598
  %601 = fdiv fast float %594, %598
  %602 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %601)  ; FMax(a,b)
  %603 = fmul fast float %218, 0x401921FB60000000
  %604 = call float @dx.op.unary.f32(i32 13, float %603)  ; Sin(value)
  %605 = call float @dx.op.unary.f32(i32 12, float %603)  ; Cos(value)
  %606 = fsub fast float -0.000000e+00, %604
  %607 = icmp eq i32 %576, 0
  br i1 %607, label %608, label %679, !dx.controlflow.hints !56

; <label>:608                                     ; preds = %507
  %609 = fmul fast float %605, %521
  %610 = call float @dx.op.tertiary.f32(i32 46, float %604, float %521, float 0.000000e+00)  ; FMad(a,b,c)
  %611 = fmul fast float %521, %606
  %612 = call float @dx.op.tertiary.f32(i32 46, float %605, float %521, float 0.000000e+00)  ; FMad(a,b,c)
  br label %613

; <label>:613                                     ; preds = %613, %608
  %614 = phi float [ 0.000000e+00, %608 ], [ %646, %613 ]
  %615 = phi float [ 0.000000e+00, %608 ], [ %648, %613 ]
  %616 = phi i32 [ 0, %608 ], [ %649, %613 ]
  %617 = mul i32 %616, 2
  %618 = add i32 0, %617
  %619 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %618
  %620 = load float, float* %619, align 4
  %621 = mul i32 %616, 2
  %622 = add i32 1, %621
  %623 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %622
  %624 = load float, float* %623, align 4
  %625 = fmul fast float %609, %620
  %626 = call float @dx.op.tertiary.f32(i32 46, float %624, float %611, float %625)  ; FMad(a,b,c)
  %627 = fmul fast float %620, %610
  %628 = call float @dx.op.tertiary.f32(i32 46, float %624, float %612, float %627)  ; FMad(a,b,c)
  %629 = fadd fast float %626, %599
  %630 = fadd fast float %628, %600
  %631 = fmul fast float %629, %516
  %632 = fmul fast float %630, %516
  %633 = call float @dx.op.binary.f32(i32 35, float %631, float %512)  ; FMax(a,b)
  %634 = call float @dx.op.binary.f32(i32 35, float %632, float %512)  ; FMax(a,b)
  %635 = call float @dx.op.binary.f32(i32 36, float %633, float %513)  ; FMin(a,b)
  %636 = call float @dx.op.binary.f32(i32 36, float %634, float %513)  ; FMin(a,b)
  %637 = fadd fast float %635, %510
  %638 = fadd fast float %636, %511
  %639 = uitofp i32 %572 to float
  %640 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %637, float %638, float %639, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %641 = extractvalue %dx.types.ResRet.f32 %640, 0
  %642 = fsub fast float %641, %602
  %643 = fsub fast float %642, %520
  %644 = fcmp fast ogt float %643, 0.000000e+00
  %645 = select i1 %644, float 1.000000e+00, float 0.000000e+00
  %646 = fadd fast float %645, %614
  %647 = select i1 %644, float %643, float 0.000000e+00
  %648 = fadd fast float %647, %615
  %649 = add nuw nsw i32 %616, 1
  %650 = icmp eq i32 %649, 8
  br i1 %650, label %651, label %613

; <label>:651                                     ; preds = %613
  %652 = fdiv fast float 1.000000e+00, %646
  %653 = fmul fast float %652, %648
  %654 = fdiv fast float 1.000000e+00, %602
  %655 = fmul fast float %653, %654
  %656 = call float @dx.op.unary.f32(i32 7, float %655)  ; Saturate(value)
  %657 = call float @dx.op.binary.f32(i32 35, float %656, float 0.000000e+00)  ; FMax(a,b)
  %658 = fmul fast float %646, 1.250000e-01
  %659 = call float @dx.op.unary.f32(i32 7, float %658)  ; Saturate(value)
  %660 = fmul fast float %659, 2.000000e+00
  %661 = fadd fast float %660, -1.000000e+00
  %662 = fcmp fast ogt float %661, 0.000000e+00
  %663 = fcmp fast olt float %661, 0.000000e+00
  %664 = zext i1 %662 to i32
  %665 = zext i1 %663 to i32
  %666 = sub nsw i32 %664, %665
  %667 = sitofp i32 %666 to float
  %668 = fmul fast float %667, %661
  %669 = fsub fast float 1.000000e+00, %668
  %670 = fmul fast float %669, %669
  %671 = fmul fast float %670, %669
  %672 = fsub fast float %669, %671
  %673 = fmul fast float %672, %657
  %674 = fsub fast float 1.000000e+00, %671
  %675 = fsub fast float %674, %673
  %676 = fmul fast float %667, 5.000000e-01
  %677 = fmul fast float %676, %675
  %678 = fsub fast float 5.000000e-01, %677
  br label %1294

; <label>:679                                     ; preds = %507
  %680 = fsub fast float 1.000000e+00, %602
  %681 = fmul fast float %680, 5.000000e-01
  %682 = fadd fast float %681, %602
  %683 = fsub fast float %580, %401
  %684 = fsub fast float %581, %402
  %685 = fsub fast float %582, %403
  %686 = call float @dx.op.dot3.f32(i32 55, float %683, float %684, float %685, float %393, float %394, float %395)  ; Dot3(ax,ay,az,bx,by,bz)
  %687 = fdiv fast float %686, %421
  %688 = call float @dx.op.binary.f32(i32 35, float %687, float -1.000000e+00)  ; FMax(a,b)
  %689 = call float @dx.op.binary.f32(i32 36, float %688, float 1.000000e+00)  ; FMin(a,b)
  %690 = fmul fast float %689, %393
  %691 = fmul fast float %689, %394
  %692 = fmul fast float %689, %395
  %693 = fsub fast float %683, %690
  %694 = fsub fast float %684, %691
  %695 = fsub fast float %685, %692
  %696 = call float @dx.op.dot3.f32(i32 55, float %693, float %694, float %695, float %693, float %694, float %695)  ; Dot3(ax,ay,az,bx,by,bz)
  %697 = call float @dx.op.unary.f32(i32 25, float %696)  ; Rsqrt(value)
  %698 = fmul fast float %693, %697
  %699 = fmul fast float %694, %697
  %700 = fmul fast float %695, %697
  %701 = call float @dx.op.unary.f32(i32 25, float %421)  ; Rsqrt(value)
  %702 = fmul fast float %701, %393
  %703 = fmul fast float %701, %394
  %704 = fmul fast float %701, %395
  br i1 %575, label %705, label %709, !dx.controlflow.hints !57

; <label>:705                                     ; preds = %679
  %706 = fcmp fast olt float %699, 0x3FE6666660000000
  %707 = select i1 %706, float 1.000000e+00, float 0.000000e+00
  %708 = select i1 %706, float 0.000000e+00, float 1.000000e+00
  br label %709

; <label>:709                                     ; preds = %705, %679
  %710 = phi float [ 0.000000e+00, %705 ], [ %702, %679 ]
  %711 = phi float [ %707, %705 ], [ %703, %679 ]
  %712 = phi float [ %708, %705 ], [ %704, %679 ]
  %713 = fmul fast float %711, %700
  %714 = fmul fast float %712, %699
  %715 = fsub fast float %713, %714
  %716 = fmul fast float %712, %698
  %717 = fmul fast float %710, %700
  %718 = fsub fast float %716, %717
  %719 = fmul fast float %710, %699
  %720 = fmul fast float %711, %698
  %721 = fsub fast float %719, %720
  %722 = call float @dx.op.dot3.f32(i32 55, float %715, float %718, float %721, float %715, float %718, float %721)  ; Dot3(ax,ay,az,bx,by,bz)
  %723 = call float @dx.op.unary.f32(i32 25, float %722)  ; Rsqrt(value)
  %724 = fmul fast float %723, %398
  %725 = fmul fast float %724, %715
  %726 = fmul fast float %724, %718
  %727 = fmul fast float %721, %398
  %728 = fmul fast float %727, %723
  %729 = fmul fast float %599, %550
  %730 = call float @dx.op.tertiary.f32(i32 46, float %600, float %556, float %729)  ; FMad(a,b,c)
  %731 = call float @dx.op.tertiary.f32(i32 46, float %682, float %562, float %730)  ; FMad(a,b,c)
  %732 = fadd fast float %731, %568
  %733 = fmul fast float %599, %551
  %734 = call float @dx.op.tertiary.f32(i32 46, float %600, float %557, float %733)  ; FMad(a,b,c)
  %735 = call float @dx.op.tertiary.f32(i32 46, float %682, float %563, float %734)  ; FMad(a,b,c)
  %736 = fadd fast float %735, %569
  %737 = fmul fast float %599, %552
  %738 = call float @dx.op.tertiary.f32(i32 46, float %600, float %558, float %737)  ; FMad(a,b,c)
  %739 = call float @dx.op.tertiary.f32(i32 46, float %682, float %564, float %738)  ; FMad(a,b,c)
  %740 = fadd fast float %739, %570
  %741 = fmul fast float %599, %553
  %742 = call float @dx.op.tertiary.f32(i32 46, float %600, float %559, float %741)  ; FMad(a,b,c)
  %743 = call float @dx.op.tertiary.f32(i32 46, float %682, float %565, float %742)  ; FMad(a,b,c)
  %744 = fadd fast float %743, %571
  %745 = fdiv fast float 1.000000e+00, %744
  %746 = fmul fast float %745, %732
  %747 = fmul fast float %745, %736
  %748 = fmul fast float %745, %740
  %749 = fsub fast float -0.000000e+00, %698
  %750 = fsub fast float -0.000000e+00, %699
  %751 = fsub fast float -0.000000e+00, %700
  %752 = fsub fast float %401, %725
  %753 = fsub fast float %402, %726
  %754 = fsub fast float %403, %728
  %755 = fsub fast float %746, %752
  %756 = fsub fast float %747, %753
  %757 = fsub fast float %748, %754
  %758 = call float @dx.op.dot3.f32(i32 55, float %755, float %756, float %757, float %755, float %756, float %757)  ; Dot3(ax,ay,az,bx,by,bz)
  %759 = call float @dx.op.unary.f32(i32 25, float %758)  ; Rsqrt(value)
  %760 = fmul fast float %755, %759
  %761 = fmul fast float %756, %759
  %762 = fmul fast float %757, %759
  %763 = fsub fast float %580, %752
  %764 = fsub fast float %581, %753
  %765 = fsub fast float %582, %754
  %766 = call float @dx.op.dot3.f32(i32 55, float %749, float %750, float %751, float %763, float %764, float %765)  ; Dot3(ax,ay,az,bx,by,bz)
  %767 = call float @dx.op.dot3.f32(i32 55, float %749, float %750, float %751, float %760, float %761, float %762)  ; Dot3(ax,ay,az,bx,by,bz)
  %768 = fdiv fast float 1.000000e+00, %767
  %769 = fmul fast float %768, %766
  %770 = fmul fast float %769, %760
  %771 = fmul fast float %769, %761
  %772 = fmul fast float %769, %762
  %773 = fadd fast float %770, %752
  %774 = fadd fast float %771, %753
  %775 = fadd fast float %772, %754
  %776 = fadd fast float %725, %401
  %777 = fadd fast float %726, %402
  %778 = fadd fast float %728, %403
  %779 = fsub fast float %746, %776
  %780 = fsub fast float %747, %777
  %781 = fsub fast float %748, %778
  %782 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float %779, float %780, float %781)  ; Dot3(ax,ay,az,bx,by,bz)
  %783 = call float @dx.op.unary.f32(i32 25, float %782)  ; Rsqrt(value)
  %784 = fmul fast float %783, %779
  %785 = fmul fast float %783, %780
  %786 = fmul fast float %783, %781
  %787 = fsub fast float %580, %776
  %788 = fsub fast float %581, %777
  %789 = fsub fast float %582, %778
  %790 = call float @dx.op.dot3.f32(i32 55, float %749, float %750, float %751, float %787, float %788, float %789)  ; Dot3(ax,ay,az,bx,by,bz)
  %791 = call float @dx.op.dot3.f32(i32 55, float %749, float %750, float %751, float %784, float %785, float %786)  ; Dot3(ax,ay,az,bx,by,bz)
  %792 = fdiv fast float 1.000000e+00, %791
  %793 = fmul fast float %792, %790
  %794 = fmul fast float %793, %784
  %795 = fmul fast float %793, %785
  %796 = fmul fast float %793, %786
  %797 = fadd fast float %794, %776
  %798 = fadd fast float %795, %777
  %799 = fadd fast float %796, %778
  %800 = fmul fast float %773, %526
  %801 = call float @dx.op.tertiary.f32(i32 46, float %774, float %532, float %800)  ; FMad(a,b,c)
  %802 = call float @dx.op.tertiary.f32(i32 46, float %775, float %538, float %801)  ; FMad(a,b,c)
  %803 = fadd fast float %802, %544
  %804 = fmul fast float %773, %527
  %805 = call float @dx.op.tertiary.f32(i32 46, float %774, float %533, float %804)  ; FMad(a,b,c)
  %806 = call float @dx.op.tertiary.f32(i32 46, float %775, float %539, float %805)  ; FMad(a,b,c)
  %807 = fadd fast float %806, %545
  %808 = fmul fast float %773, %529
  %809 = call float @dx.op.tertiary.f32(i32 46, float %774, float %535, float %808)  ; FMad(a,b,c)
  %810 = call float @dx.op.tertiary.f32(i32 46, float %775, float %541, float %809)  ; FMad(a,b,c)
  %811 = fadd fast float %810, %547
  %812 = fmul fast float %797, %526
  %813 = call float @dx.op.tertiary.f32(i32 46, float %798, float %532, float %812)  ; FMad(a,b,c)
  %814 = call float @dx.op.tertiary.f32(i32 46, float %799, float %538, float %813)  ; FMad(a,b,c)
  %815 = fadd fast float %814, %544
  %816 = fmul fast float %797, %527
  %817 = call float @dx.op.tertiary.f32(i32 46, float %798, float %533, float %816)  ; FMad(a,b,c)
  %818 = call float @dx.op.tertiary.f32(i32 46, float %799, float %539, float %817)  ; FMad(a,b,c)
  %819 = fadd fast float %818, %545
  %820 = fmul fast float %797, %529
  %821 = call float @dx.op.tertiary.f32(i32 46, float %798, float %535, float %820)  ; FMad(a,b,c)
  %822 = call float @dx.op.tertiary.f32(i32 46, float %799, float %541, float %821)  ; FMad(a,b,c)
  %823 = fadd fast float %822, %547
  %824 = fdiv fast float 1.000000e+00, %811
  %825 = fmul fast float %824, %803
  %826 = fmul fast float %824, %807
  %827 = fdiv fast float 1.000000e+00, %823
  %828 = fmul fast float %827, %815
  %829 = fmul fast float %827, %819
  %830 = fsub fast float %828, %825
  %831 = fsub fast float %829, %826
  %832 = call float @dx.op.dot2.f32(i32 54, float %830, float %831, float %830, float %831)  ; Dot2(ax,ay,bx,by)
  %833 = call float @dx.op.unary.f32(i32 25, float %832)  ; Rsqrt(value)
  %834 = fmul fast float %830, %833
  %835 = fmul fast float %831, %833
  %836 = fmul fast float %830, %830
  %837 = fmul fast float %831, %831
  %838 = fadd fast float %836, %837
  %839 = call float @dx.op.unary.f32(i32 24, float %838)  ; Sqrt(value)
  %840 = fmul fast float %839, 5.000000e-01
  br i1 %575, label %933, label %841, !dx.controlflow.hints !58

; <label>:841                                     ; preds = %709
  %842 = fsub fast float %401, %393
  %843 = fsub fast float %402, %394
  %844 = fsub fast float %403, %395
  %845 = fsub fast float %746, %842
  %846 = fsub fast float %747, %843
  %847 = fsub fast float %748, %844
  %848 = call float @dx.op.dot3.f32(i32 55, float %845, float %846, float %847, float %845, float %846, float %847)  ; Dot3(ax,ay,az,bx,by,bz)
  %849 = call float @dx.op.unary.f32(i32 25, float %848)  ; Rsqrt(value)
  %850 = fmul fast float %849, %845
  %851 = fmul fast float %849, %846
  %852 = fmul fast float %849, %847
  %853 = fsub fast float %580, %842
  %854 = fsub fast float %581, %843
  %855 = fsub fast float %582, %844
  %856 = call float @dx.op.dot3.f32(i32 55, float %749, float %750, float %751, float %853, float %854, float %855)  ; Dot3(ax,ay,az,bx,by,bz)
  %857 = call float @dx.op.dot3.f32(i32 55, float %749, float %750, float %751, float %850, float %851, float %852)  ; Dot3(ax,ay,az,bx,by,bz)
  %858 = fdiv fast float 1.000000e+00, %857
  %859 = fmul fast float %858, %856
  %860 = fmul fast float %859, %850
  %861 = fmul fast float %859, %851
  %862 = fmul fast float %859, %852
  %863 = fadd fast float %860, %842
  %864 = fadd fast float %861, %843
  %865 = fadd fast float %862, %844
  %866 = fadd fast float %401, %393
  %867 = fadd fast float %402, %394
  %868 = fadd fast float %403, %395
  %869 = fsub fast float %746, %866
  %870 = fsub fast float %747, %867
  %871 = fsub fast float %748, %868
  %872 = call float @dx.op.dot3.f32(i32 55, float %869, float %870, float %871, float %869, float %870, float %871)  ; Dot3(ax,ay,az,bx,by,bz)
  %873 = call float @dx.op.unary.f32(i32 25, float %872)  ; Rsqrt(value)
  %874 = fmul fast float %873, %869
  %875 = fmul fast float %873, %870
  %876 = fmul fast float %873, %871
  %877 = fsub fast float %580, %866
  %878 = fsub fast float %581, %867
  %879 = fsub fast float %582, %868
  %880 = call float @dx.op.dot3.f32(i32 55, float %749, float %750, float %751, float %877, float %878, float %879)  ; Dot3(ax,ay,az,bx,by,bz)
  %881 = call float @dx.op.dot3.f32(i32 55, float %749, float %750, float %751, float %874, float %875, float %876)  ; Dot3(ax,ay,az,bx,by,bz)
  %882 = fdiv fast float 1.000000e+00, %881
  %883 = fmul fast float %882, %880
  %884 = fmul fast float %883, %874
  %885 = fmul fast float %883, %875
  %886 = fmul fast float %883, %876
  %887 = fadd fast float %884, %866
  %888 = fadd fast float %885, %867
  %889 = fadd fast float %886, %868
  %890 = fmul fast float %863, %526
  %891 = call float @dx.op.tertiary.f32(i32 46, float %864, float %532, float %890)  ; FMad(a,b,c)
  %892 = call float @dx.op.tertiary.f32(i32 46, float %865, float %538, float %891)  ; FMad(a,b,c)
  %893 = fadd fast float %892, %544
  %894 = fmul fast float %863, %527
  %895 = call float @dx.op.tertiary.f32(i32 46, float %864, float %533, float %894)  ; FMad(a,b,c)
  %896 = call float @dx.op.tertiary.f32(i32 46, float %865, float %539, float %895)  ; FMad(a,b,c)
  %897 = fadd fast float %896, %545
  %898 = fmul fast float %863, %529
  %899 = call float @dx.op.tertiary.f32(i32 46, float %864, float %535, float %898)  ; FMad(a,b,c)
  %900 = call float @dx.op.tertiary.f32(i32 46, float %865, float %541, float %899)  ; FMad(a,b,c)
  %901 = fadd fast float %900, %547
  %902 = fmul fast float %887, %526
  %903 = call float @dx.op.tertiary.f32(i32 46, float %888, float %532, float %902)  ; FMad(a,b,c)
  %904 = call float @dx.op.tertiary.f32(i32 46, float %889, float %538, float %903)  ; FMad(a,b,c)
  %905 = fadd fast float %904, %544
  %906 = fmul fast float %887, %527
  %907 = call float @dx.op.tertiary.f32(i32 46, float %888, float %533, float %906)  ; FMad(a,b,c)
  %908 = call float @dx.op.tertiary.f32(i32 46, float %889, float %539, float %907)  ; FMad(a,b,c)
  %909 = fadd fast float %908, %545
  %910 = fmul fast float %887, %529
  %911 = call float @dx.op.tertiary.f32(i32 46, float %888, float %535, float %910)  ; FMad(a,b,c)
  %912 = call float @dx.op.tertiary.f32(i32 46, float %889, float %541, float %911)  ; FMad(a,b,c)
  %913 = fadd fast float %912, %547
  %914 = fdiv fast float 1.000000e+00, %901
  %915 = fmul fast float %914, %893
  %916 = fmul fast float %914, %897
  %917 = fdiv fast float 1.000000e+00, %913
  %918 = fmul fast float %917, %905
  %919 = fmul fast float %917, %909
  %920 = fsub fast float %918, %915
  %921 = fsub fast float %919, %916
  %922 = call float @dx.op.dot2.f32(i32 54, float %920, float %921, float %920, float %921)  ; Dot2(ax,ay,bx,by)
  %923 = call float @dx.op.unary.f32(i32 25, float %922)  ; Rsqrt(value)
  %924 = fmul fast float %920, %923
  %925 = fmul fast float %921, %923
  %926 = fmul fast float %920, %920
  %927 = fmul fast float %921, %921
  %928 = fadd fast float %926, %927
  %929 = call float @dx.op.unary.f32(i32 24, float %928)  ; Sqrt(value)
  %930 = fmul fast float %929, 5.000000e-01
  %931 = fcmp fast olt float %930, %840
  br i1 %931, label %932, label %933, !dx.controlflow.hints !59

; <label>:932                                     ; preds = %841
  br label %933

; <label>:933                                     ; preds = %932, %841, %709
  %934 = phi float [ %840, %709 ], [ %930, %932 ], [ %840, %841 ]
  %935 = phi float [ %840, %709 ], [ %840, %932 ], [ %930, %841 ]
  %936 = phi float [ %834, %709 ], [ %834, %932 ], [ %924, %841 ]
  %937 = phi float [ %835, %709 ], [ %835, %932 ], [ %925, %841 ]
  %938 = fmul fast float %934, %521
  %939 = fdiv fast float %938, %935
  %940 = fsub fast float %521, %939
  %941 = fmul fast float %936, %936
  %942 = fmul fast float %941, %940
  %943 = fadd fast float %942, %939
  %944 = fmul fast float %937, %936
  %945 = fmul fast float %944, %940
  %946 = fmul fast float %937, %937
  %947 = fmul fast float %946, %940
  %948 = fadd fast float %947, %939
  %949 = fmul fast float %943, %605
  %950 = call float @dx.op.tertiary.f32(i32 46, float %604, float %945, float %949)  ; FMad(a,b,c)
  %951 = fmul fast float %945, %605
  %952 = call float @dx.op.tertiary.f32(i32 46, float %604, float %948, float %951)  ; FMad(a,b,c)
  %953 = fmul fast float %943, %606
  %954 = call float @dx.op.tertiary.f32(i32 46, float %605, float %945, float %953)  ; FMad(a,b,c)
  %955 = fmul fast float %945, %606
  %956 = call float @dx.op.tertiary.f32(i32 46, float %605, float %948, float %955)  ; FMad(a,b,c)
  br label %957

; <label>:957                                     ; preds = %995, %933
  %958 = phi float [ 0.000000e+00, %933 ], [ %996, %995 ]
  %959 = phi float [ 0.000000e+00, %933 ], [ %997, %995 ]
  %960 = phi float [ 0.000000e+00, %933 ], [ %998, %995 ]
  %961 = phi float [ 0.000000e+00, %933 ], [ %999, %995 ]
  %962 = phi i32 [ 0, %933 ], [ %1000, %995 ]
  %963 = mul i32 %962, 2
  %964 = add i32 0, %963
  %965 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %964
  %966 = load float, float* %965, align 4
  %967 = mul i32 %962, 2
  %968 = add i32 1, %967
  %969 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %968
  %970 = load float, float* %969, align 4
  %971 = fmul fast float %966, %950
  %972 = call float @dx.op.tertiary.f32(i32 46, float %970, float %954, float %971)  ; FMad(a,b,c)
  %973 = fmul fast float %966, %952
  %974 = call float @dx.op.tertiary.f32(i32 46, float %970, float %956, float %973)  ; FMad(a,b,c)
  %975 = fadd fast float %972, %599
  %976 = fadd fast float %974, %600
  %977 = fmul fast float %975, %516
  %978 = fmul fast float %976, %516
  %979 = call float @dx.op.binary.f32(i32 35, float %977, float %512)  ; FMax(a,b)
  %980 = call float @dx.op.binary.f32(i32 35, float %978, float %512)  ; FMax(a,b)
  %981 = call float @dx.op.binary.f32(i32 36, float %979, float %513)  ; FMin(a,b)
  %982 = call float @dx.op.binary.f32(i32 36, float %980, float %513)  ; FMin(a,b)
  %983 = fadd fast float %981, %510
  %984 = fadd fast float %982, %511
  %985 = uitofp i32 %572 to float
  %986 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %983, float %984, float %985, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %987 = extractvalue %dx.types.ResRet.f32 %986, 0
  %988 = fadd fast float %602, %520
  %989 = fcmp fast olt float %988, %987
  br i1 %989, label %990, label %995, !dx.controlflow.hints !60

; <label>:990                                     ; preds = %957
  %991 = fadd fast float %987, %960
  %992 = fadd fast float %972, %958
  %993 = fadd fast float %974, %959
  %994 = fadd fast float %961, 1.000000e+00
  br label %995

; <label>:995                                     ; preds = %990, %957
  %996 = phi float [ %992, %990 ], [ %958, %957 ]
  %997 = phi float [ %993, %990 ], [ %959, %957 ]
  %998 = phi float [ %991, %990 ], [ %960, %957 ]
  %999 = phi float [ %994, %990 ], [ %961, %957 ]
  %1000 = add nuw nsw i32 %962, 1
  %1001 = icmp eq i32 %1000, 8
  br i1 %1001, label %1002, label %957

; <label>:1002                                    ; preds = %995
  %1003 = fdiv fast float 1.000000e+00, %999
  %1004 = fcmp fast oeq float %999, 0.000000e+00
  %1005 = fmul fast float %1003, %998
  %1006 = select i1 %1004, float -1.000000e+00, float %1005
  %1007 = fcmp fast olt float %1006, 0.000000e+00
  br i1 %1007, label %1294, label %1008, !dx.controlflow.hints !61

; <label>:1008                                    ; preds = %1002
  %1009 = fmul fast float %1003, %997
  %1010 = select i1 %1004, float 0.000000e+00, float %1009
  %1011 = fmul fast float %1003, %996
  %1012 = select i1 %1004, float 0.000000e+00, float %1011
  %1013 = fadd fast float %1012, %599
  %1014 = fadd fast float %1010, %600
  br i1 %575, label %1015, label %1019, !dx.controlflow.hints !57

; <label>:1015                                    ; preds = %1008
  %1016 = fcmp fast olt float %699, 0x3FE6666660000000
  %1017 = select i1 %1016, float 1.000000e+00, float 0.000000e+00
  %1018 = select i1 %1016, float 0.000000e+00, float 1.000000e+00
  br label %1019

; <label>:1019                                    ; preds = %1015, %1008
  %1020 = phi float [ 0.000000e+00, %1015 ], [ %702, %1008 ]
  %1021 = phi float [ %1017, %1015 ], [ %703, %1008 ]
  %1022 = phi float [ %1018, %1015 ], [ %704, %1008 ]
  %1023 = fmul fast float %1021, %700
  %1024 = fmul fast float %1022, %699
  %1025 = fsub fast float %1023, %1024
  %1026 = fmul fast float %1022, %698
  %1027 = fmul fast float %1020, %700
  %1028 = fsub fast float %1026, %1027
  %1029 = fmul fast float %1020, %699
  %1030 = fmul fast float %1021, %698
  %1031 = fsub fast float %1029, %1030
  %1032 = call float @dx.op.dot3.f32(i32 55, float %1025, float %1028, float %1031, float %1025, float %1028, float %1031)  ; Dot3(ax,ay,az,bx,by,bz)
  %1033 = call float @dx.op.unary.f32(i32 25, float %1032)  ; Rsqrt(value)
  %1034 = fmul fast float %1033, %398
  %1035 = fmul fast float %1034, %1025
  %1036 = fmul fast float %1034, %1028
  %1037 = fmul fast float %1031, %398
  %1038 = fmul fast float %1037, %1033
  %1039 = fmul fast float %1013, %550
  %1040 = call float @dx.op.tertiary.f32(i32 46, float %1014, float %556, float %1039)  ; FMad(a,b,c)
  %1041 = call float @dx.op.tertiary.f32(i32 46, float %1006, float %562, float %1040)  ; FMad(a,b,c)
  %1042 = fadd fast float %1041, %568
  %1043 = fmul fast float %1013, %551
  %1044 = call float @dx.op.tertiary.f32(i32 46, float %1014, float %557, float %1043)  ; FMad(a,b,c)
  %1045 = call float @dx.op.tertiary.f32(i32 46, float %1006, float %563, float %1044)  ; FMad(a,b,c)
  %1046 = fadd fast float %1045, %569
  %1047 = fmul fast float %1013, %552
  %1048 = call float @dx.op.tertiary.f32(i32 46, float %1014, float %558, float %1047)  ; FMad(a,b,c)
  %1049 = call float @dx.op.tertiary.f32(i32 46, float %1006, float %564, float %1048)  ; FMad(a,b,c)
  %1050 = fadd fast float %1049, %570
  %1051 = fmul fast float %1013, %553
  %1052 = call float @dx.op.tertiary.f32(i32 46, float %1014, float %559, float %1051)  ; FMad(a,b,c)
  %1053 = call float @dx.op.tertiary.f32(i32 46, float %1006, float %565, float %1052)  ; FMad(a,b,c)
  %1054 = fadd fast float %1053, %571
  %1055 = fdiv fast float 1.000000e+00, %1054
  %1056 = fmul fast float %1055, %1042
  %1057 = fmul fast float %1055, %1046
  %1058 = fmul fast float %1055, %1050
  %1059 = fsub fast float %401, %1035
  %1060 = fsub fast float %402, %1036
  %1061 = fsub fast float %403, %1038
  %1062 = fsub fast float %1056, %1059
  %1063 = fsub fast float %1057, %1060
  %1064 = fsub fast float %1058, %1061
  %1065 = call float @dx.op.dot3.f32(i32 55, float %1062, float %1063, float %1064, float %1062, float %1063, float %1064)  ; Dot3(ax,ay,az,bx,by,bz)
  %1066 = call float @dx.op.unary.f32(i32 25, float %1065)  ; Rsqrt(value)
  %1067 = fmul fast float %1062, %1066
  %1068 = fmul fast float %1063, %1066
  %1069 = fmul fast float %1064, %1066
  %1070 = fsub fast float %580, %1059
  %1071 = fsub fast float %581, %1060
  %1072 = fsub fast float %582, %1061
  %1073 = call float @dx.op.dot3.f32(i32 55, float %749, float %750, float %751, float %1070, float %1071, float %1072)  ; Dot3(ax,ay,az,bx,by,bz)
  %1074 = call float @dx.op.dot3.f32(i32 55, float %749, float %750, float %751, float %1067, float %1068, float %1069)  ; Dot3(ax,ay,az,bx,by,bz)
  %1075 = fdiv fast float 1.000000e+00, %1074
  %1076 = fmul fast float %1075, %1073
  %1077 = fmul fast float %1076, %1067
  %1078 = fmul fast float %1076, %1068
  %1079 = fmul fast float %1076, %1069
  %1080 = fadd fast float %1077, %1059
  %1081 = fadd fast float %1078, %1060
  %1082 = fadd fast float %1079, %1061
  %1083 = fadd fast float %1035, %401
  %1084 = fadd fast float %1036, %402
  %1085 = fadd fast float %1038, %403
  %1086 = fsub fast float %1056, %1083
  %1087 = fsub fast float %1057, %1084
  %1088 = fsub fast float %1058, %1085
  %1089 = call float @dx.op.dot3.f32(i32 55, float %1086, float %1087, float %1088, float %1086, float %1087, float %1088)  ; Dot3(ax,ay,az,bx,by,bz)
  %1090 = call float @dx.op.unary.f32(i32 25, float %1089)  ; Rsqrt(value)
  %1091 = fmul fast float %1090, %1086
  %1092 = fmul fast float %1090, %1087
  %1093 = fmul fast float %1090, %1088
  %1094 = fsub fast float %580, %1083
  %1095 = fsub fast float %581, %1084
  %1096 = fsub fast float %582, %1085
  %1097 = call float @dx.op.dot3.f32(i32 55, float %749, float %750, float %751, float %1094, float %1095, float %1096)  ; Dot3(ax,ay,az,bx,by,bz)
  %1098 = call float @dx.op.dot3.f32(i32 55, float %749, float %750, float %751, float %1091, float %1092, float %1093)  ; Dot3(ax,ay,az,bx,by,bz)
  %1099 = fdiv fast float 1.000000e+00, %1098
  %1100 = fmul fast float %1099, %1097
  %1101 = fmul fast float %1100, %1091
  %1102 = fmul fast float %1100, %1092
  %1103 = fmul fast float %1100, %1093
  %1104 = fadd fast float %1101, %1083
  %1105 = fadd fast float %1102, %1084
  %1106 = fadd fast float %1103, %1085
  %1107 = fmul fast float %1080, %526
  %1108 = call float @dx.op.tertiary.f32(i32 46, float %1081, float %532, float %1107)  ; FMad(a,b,c)
  %1109 = call float @dx.op.tertiary.f32(i32 46, float %1082, float %538, float %1108)  ; FMad(a,b,c)
  %1110 = fadd fast float %1109, %544
  %1111 = fmul fast float %1080, %527
  %1112 = call float @dx.op.tertiary.f32(i32 46, float %1081, float %533, float %1111)  ; FMad(a,b,c)
  %1113 = call float @dx.op.tertiary.f32(i32 46, float %1082, float %539, float %1112)  ; FMad(a,b,c)
  %1114 = fadd fast float %1113, %545
  %1115 = fmul fast float %1080, %529
  %1116 = call float @dx.op.tertiary.f32(i32 46, float %1081, float %535, float %1115)  ; FMad(a,b,c)
  %1117 = call float @dx.op.tertiary.f32(i32 46, float %1082, float %541, float %1116)  ; FMad(a,b,c)
  %1118 = fadd fast float %1117, %547
  %1119 = fmul fast float %1104, %526
  %1120 = call float @dx.op.tertiary.f32(i32 46, float %1105, float %532, float %1119)  ; FMad(a,b,c)
  %1121 = call float @dx.op.tertiary.f32(i32 46, float %1106, float %538, float %1120)  ; FMad(a,b,c)
  %1122 = fadd fast float %1121, %544
  %1123 = fmul fast float %1104, %527
  %1124 = call float @dx.op.tertiary.f32(i32 46, float %1105, float %533, float %1123)  ; FMad(a,b,c)
  %1125 = call float @dx.op.tertiary.f32(i32 46, float %1106, float %539, float %1124)  ; FMad(a,b,c)
  %1126 = fadd fast float %1125, %545
  %1127 = fmul fast float %1104, %529
  %1128 = call float @dx.op.tertiary.f32(i32 46, float %1105, float %535, float %1127)  ; FMad(a,b,c)
  %1129 = call float @dx.op.tertiary.f32(i32 46, float %1106, float %541, float %1128)  ; FMad(a,b,c)
  %1130 = fadd fast float %1129, %547
  %1131 = fdiv fast float 1.000000e+00, %1118
  %1132 = fmul fast float %1131, %1110
  %1133 = fmul fast float %1131, %1114
  %1134 = fdiv fast float 1.000000e+00, %1130
  %1135 = fmul fast float %1134, %1122
  %1136 = fmul fast float %1134, %1126
  %1137 = fsub fast float %1135, %1132
  %1138 = fsub fast float %1136, %1133
  %1139 = call float @dx.op.dot2.f32(i32 54, float %1137, float %1138, float %1137, float %1138)  ; Dot2(ax,ay,bx,by)
  %1140 = call float @dx.op.unary.f32(i32 25, float %1139)  ; Rsqrt(value)
  %1141 = fmul fast float %1137, %1140
  %1142 = fmul fast float %1138, %1140
  %1143 = fmul fast float %1137, %1137
  %1144 = fmul fast float %1138, %1138
  %1145 = fadd fast float %1143, %1144
  %1146 = call float @dx.op.unary.f32(i32 24, float %1145)  ; Sqrt(value)
  %1147 = fmul fast float %1146, 5.000000e-01
  br i1 %575, label %1240, label %1148, !dx.controlflow.hints !58

; <label>:1148                                    ; preds = %1019
  %1149 = fsub fast float %401, %393
  %1150 = fsub fast float %402, %394
  %1151 = fsub fast float %403, %395
  %1152 = fsub fast float %1056, %1149
  %1153 = fsub fast float %1057, %1150
  %1154 = fsub fast float %1058, %1151
  %1155 = call float @dx.op.dot3.f32(i32 55, float %1152, float %1153, float %1154, float %1152, float %1153, float %1154)  ; Dot3(ax,ay,az,bx,by,bz)
  %1156 = call float @dx.op.unary.f32(i32 25, float %1155)  ; Rsqrt(value)
  %1157 = fmul fast float %1156, %1152
  %1158 = fmul fast float %1156, %1153
  %1159 = fmul fast float %1156, %1154
  %1160 = fsub fast float %580, %1149
  %1161 = fsub fast float %581, %1150
  %1162 = fsub fast float %582, %1151
  %1163 = call float @dx.op.dot3.f32(i32 55, float %749, float %750, float %751, float %1160, float %1161, float %1162)  ; Dot3(ax,ay,az,bx,by,bz)
  %1164 = call float @dx.op.dot3.f32(i32 55, float %749, float %750, float %751, float %1157, float %1158, float %1159)  ; Dot3(ax,ay,az,bx,by,bz)
  %1165 = fdiv fast float 1.000000e+00, %1164
  %1166 = fmul fast float %1165, %1163
  %1167 = fmul fast float %1166, %1157
  %1168 = fmul fast float %1166, %1158
  %1169 = fmul fast float %1166, %1159
  %1170 = fadd fast float %1167, %1149
  %1171 = fadd fast float %1168, %1150
  %1172 = fadd fast float %1169, %1151
  %1173 = fadd fast float %401, %393
  %1174 = fadd fast float %402, %394
  %1175 = fadd fast float %403, %395
  %1176 = fsub fast float %1056, %1173
  %1177 = fsub fast float %1057, %1174
  %1178 = fsub fast float %1058, %1175
  %1179 = call float @dx.op.dot3.f32(i32 55, float %1176, float %1177, float %1178, float %1176, float %1177, float %1178)  ; Dot3(ax,ay,az,bx,by,bz)
  %1180 = call float @dx.op.unary.f32(i32 25, float %1179)  ; Rsqrt(value)
  %1181 = fmul fast float %1180, %1176
  %1182 = fmul fast float %1180, %1177
  %1183 = fmul fast float %1180, %1178
  %1184 = fsub fast float %580, %1173
  %1185 = fsub fast float %581, %1174
  %1186 = fsub fast float %582, %1175
  %1187 = call float @dx.op.dot3.f32(i32 55, float %749, float %750, float %751, float %1184, float %1185, float %1186)  ; Dot3(ax,ay,az,bx,by,bz)
  %1188 = call float @dx.op.dot3.f32(i32 55, float %749, float %750, float %751, float %1181, float %1182, float %1183)  ; Dot3(ax,ay,az,bx,by,bz)
  %1189 = fdiv fast float 1.000000e+00, %1188
  %1190 = fmul fast float %1189, %1187
  %1191 = fmul fast float %1190, %1181
  %1192 = fmul fast float %1190, %1182
  %1193 = fmul fast float %1190, %1183
  %1194 = fadd fast float %1191, %1173
  %1195 = fadd fast float %1192, %1174
  %1196 = fadd fast float %1193, %1175
  %1197 = fmul fast float %1170, %526
  %1198 = call float @dx.op.tertiary.f32(i32 46, float %1171, float %532, float %1197)  ; FMad(a,b,c)
  %1199 = call float @dx.op.tertiary.f32(i32 46, float %1172, float %538, float %1198)  ; FMad(a,b,c)
  %1200 = fadd fast float %1199, %544
  %1201 = fmul fast float %1170, %527
  %1202 = call float @dx.op.tertiary.f32(i32 46, float %1171, float %533, float %1201)  ; FMad(a,b,c)
  %1203 = call float @dx.op.tertiary.f32(i32 46, float %1172, float %539, float %1202)  ; FMad(a,b,c)
  %1204 = fadd fast float %1203, %545
  %1205 = fmul fast float %1170, %529
  %1206 = call float @dx.op.tertiary.f32(i32 46, float %1171, float %535, float %1205)  ; FMad(a,b,c)
  %1207 = call float @dx.op.tertiary.f32(i32 46, float %1172, float %541, float %1206)  ; FMad(a,b,c)
  %1208 = fadd fast float %1207, %547
  %1209 = fmul fast float %1194, %526
  %1210 = call float @dx.op.tertiary.f32(i32 46, float %1195, float %532, float %1209)  ; FMad(a,b,c)
  %1211 = call float @dx.op.tertiary.f32(i32 46, float %1196, float %538, float %1210)  ; FMad(a,b,c)
  %1212 = fadd fast float %1211, %544
  %1213 = fmul fast float %1194, %527
  %1214 = call float @dx.op.tertiary.f32(i32 46, float %1195, float %533, float %1213)  ; FMad(a,b,c)
  %1215 = call float @dx.op.tertiary.f32(i32 46, float %1196, float %539, float %1214)  ; FMad(a,b,c)
  %1216 = fadd fast float %1215, %545
  %1217 = fmul fast float %1194, %529
  %1218 = call float @dx.op.tertiary.f32(i32 46, float %1195, float %535, float %1217)  ; FMad(a,b,c)
  %1219 = call float @dx.op.tertiary.f32(i32 46, float %1196, float %541, float %1218)  ; FMad(a,b,c)
  %1220 = fadd fast float %1219, %547
  %1221 = fdiv fast float 1.000000e+00, %1208
  %1222 = fmul fast float %1221, %1200
  %1223 = fmul fast float %1221, %1204
  %1224 = fdiv fast float 1.000000e+00, %1220
  %1225 = fmul fast float %1224, %1212
  %1226 = fmul fast float %1224, %1216
  %1227 = fsub fast float %1225, %1222
  %1228 = fsub fast float %1226, %1223
  %1229 = call float @dx.op.dot2.f32(i32 54, float %1227, float %1228, float %1227, float %1228)  ; Dot2(ax,ay,bx,by)
  %1230 = call float @dx.op.unary.f32(i32 25, float %1229)  ; Rsqrt(value)
  %1231 = fmul fast float %1227, %1230
  %1232 = fmul fast float %1228, %1230
  %1233 = fmul fast float %1227, %1227
  %1234 = fmul fast float %1228, %1228
  %1235 = fadd fast float %1233, %1234
  %1236 = call float @dx.op.unary.f32(i32 24, float %1235)  ; Sqrt(value)
  %1237 = fmul fast float %1236, 5.000000e-01
  %1238 = fcmp fast olt float %1237, %1147
  br i1 %1238, label %1239, label %1240, !dx.controlflow.hints !59

; <label>:1239                                    ; preds = %1148
  br label %1240

; <label>:1240                                    ; preds = %1239, %1148, %1019
  %1241 = phi float [ %1147, %1019 ], [ %1237, %1239 ], [ %1147, %1148 ]
  %1242 = phi float [ %1147, %1019 ], [ %1147, %1239 ], [ %1237, %1148 ]
  %1243 = phi float [ %1141, %1019 ], [ %1141, %1239 ], [ %1231, %1148 ]
  %1244 = phi float [ %1142, %1019 ], [ %1142, %1239 ], [ %1232, %1148 ]
  %1245 = fsub fast float %1242, %1241
  %1246 = fmul fast float %1243, %1243
  %1247 = fmul fast float %1246, %1245
  %1248 = fadd fast float %1247, %1241
  %1249 = fmul fast float %1243, %1245
  %1250 = fmul fast float %1249, %1244
  %1251 = fmul fast float %1244, %1244
  %1252 = fmul fast float %1251, %1245
  %1253 = fadd fast float %1252, %1241
  %1254 = fmul fast float %1248, %605
  %1255 = call float @dx.op.tertiary.f32(i32 46, float %604, float %1250, float %1254)  ; FMad(a,b,c)
  %1256 = fmul fast float %1250, %605
  %1257 = call float @dx.op.tertiary.f32(i32 46, float %604, float %1253, float %1256)  ; FMad(a,b,c)
  %1258 = fmul fast float %1248, %606
  %1259 = call float @dx.op.tertiary.f32(i32 46, float %605, float %1250, float %1258)  ; FMad(a,b,c)
  %1260 = fmul fast float %1250, %606
  %1261 = call float @dx.op.tertiary.f32(i32 46, float %605, float %1253, float %1260)  ; FMad(a,b,c)
  br label %1262

; <label>:1262                                    ; preds = %1262, %1240
  %1263 = phi float [ 0.000000e+00, %1240 ], [ %1289, %1262 ]
  %1264 = phi i32 [ 0, %1240 ], [ %1290, %1262 ]
  %1265 = mul i32 %1264, 2
  %1266 = add i32 0, %1265
  %1267 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1266
  %1268 = load float, float* %1267, align 4
  %1269 = mul i32 %1264, 2
  %1270 = add i32 1, %1269
  %1271 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1270
  %1272 = load float, float* %1271, align 4
  %1273 = fmul fast float %1268, %1255
  %1274 = call float @dx.op.tertiary.f32(i32 46, float %1272, float %1259, float %1273)  ; FMad(a,b,c)
  %1275 = fmul fast float %1268, %1257
  %1276 = call float @dx.op.tertiary.f32(i32 46, float %1272, float %1261, float %1275)  ; FMad(a,b,c)
  %1277 = fadd fast float %1274, %599
  %1278 = fadd fast float %1276, %600
  %1279 = fmul fast float %1277, %516
  %1280 = fmul fast float %1278, %516
  %1281 = call float @dx.op.binary.f32(i32 35, float %1279, float %512)  ; FMax(a,b)
  %1282 = call float @dx.op.binary.f32(i32 35, float %1280, float %512)  ; FMax(a,b)
  %1283 = call float @dx.op.binary.f32(i32 36, float %1281, float %513)  ; FMin(a,b)
  %1284 = call float @dx.op.binary.f32(i32 36, float %1282, float %513)  ; FMin(a,b)
  %1285 = fadd fast float %1283, %510
  %1286 = fadd fast float %1284, %511
  %1287 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %18, float %1285, float %1286, float %985, float undef, i32 0, i32 0, i32 undef, float %988)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1288 = extractvalue %dx.types.ResRet.f32 %1287, 0
  %1289 = fadd fast float %1288, %1263
  %1290 = add nuw nsw i32 %1264, 1
  %1291 = icmp eq i32 %1290, 8
  br i1 %1291, label %1292, label %1262

; <label>:1292                                    ; preds = %1262
  %1293 = fmul fast float %1289, 1.250000e-01
  br label %1294

; <label>:1294                                    ; preds = %1292, %1002, %651
  %1295 = phi float [ %678, %651 ], [ %1293, %1292 ], [ 1.000000e+00, %1002 ]
  %1296 = fcmp fast ogt float %1295, 0.000000e+00
  %1297 = xor i1 %55, true
  %1298 = and i1 %1296, %1297
  %1299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1300 = extractvalue %dx.types.CBufRet.f32 %1299, 1
  %1301 = fcmp fast olt float %1300, 0.000000e+00
  %1302 = and i1 %1298, %1301
  br i1 %1302, label %1303, label %1414, !dx.controlflow.hints !62

; <label>:1303                                    ; preds = %1294
  %1304 = fadd fast float %599, %512
  %1305 = fadd fast float %600, %512
  %1306 = fadd fast float %602, %520
  %1307 = fmul fast float %599, %550
  %1308 = call float @dx.op.tertiary.f32(i32 46, float %600, float %556, float %1307)  ; FMad(a,b,c)
  %1309 = call float @dx.op.tertiary.f32(i32 46, float %602, float %562, float %1308)  ; FMad(a,b,c)
  %1310 = fadd fast float %1309, %568
  %1311 = fmul fast float %599, %551
  %1312 = call float @dx.op.tertiary.f32(i32 46, float %600, float %557, float %1311)  ; FMad(a,b,c)
  %1313 = call float @dx.op.tertiary.f32(i32 46, float %602, float %563, float %1312)  ; FMad(a,b,c)
  %1314 = fadd fast float %1313, %569
  %1315 = fmul fast float %599, %552
  %1316 = call float @dx.op.tertiary.f32(i32 46, float %600, float %558, float %1315)  ; FMad(a,b,c)
  %1317 = call float @dx.op.tertiary.f32(i32 46, float %602, float %564, float %1316)  ; FMad(a,b,c)
  %1318 = fadd fast float %1317, %570
  %1319 = fmul fast float %599, %553
  %1320 = call float @dx.op.tertiary.f32(i32 46, float %600, float %559, float %1319)  ; FMad(a,b,c)
  %1321 = call float @dx.op.tertiary.f32(i32 46, float %602, float %565, float %1320)  ; FMad(a,b,c)
  %1322 = fadd fast float %1321, %571
  %1323 = fmul fast float %1304, %550
  %1324 = call float @dx.op.tertiary.f32(i32 46, float %1305, float %556, float %1323)  ; FMad(a,b,c)
  %1325 = call float @dx.op.tertiary.f32(i32 46, float %1306, float %562, float %1324)  ; FMad(a,b,c)
  %1326 = fadd fast float %1325, %568
  %1327 = fmul fast float %1304, %551
  %1328 = call float @dx.op.tertiary.f32(i32 46, float %1305, float %557, float %1327)  ; FMad(a,b,c)
  %1329 = call float @dx.op.tertiary.f32(i32 46, float %1306, float %563, float %1328)  ; FMad(a,b,c)
  %1330 = fadd fast float %1329, %569
  %1331 = fmul fast float %1304, %552
  %1332 = call float @dx.op.tertiary.f32(i32 46, float %1305, float %558, float %1331)  ; FMad(a,b,c)
  %1333 = call float @dx.op.tertiary.f32(i32 46, float %1306, float %564, float %1332)  ; FMad(a,b,c)
  %1334 = fadd fast float %1333, %570
  %1335 = fmul fast float %1304, %553
  %1336 = call float @dx.op.tertiary.f32(i32 46, float %1305, float %559, float %1335)  ; FMad(a,b,c)
  %1337 = call float @dx.op.tertiary.f32(i32 46, float %1306, float %565, float %1336)  ; FMad(a,b,c)
  %1338 = fadd fast float %1337, %571
  %1339 = fdiv fast float 1.000000e+00, %1322
  %1340 = fmul fast float %1339, %1310
  %1341 = fmul fast float %1339, %1314
  %1342 = fmul fast float %1339, %1318
  %1343 = fdiv fast float 1.000000e+00, %1338
  %1344 = fmul fast float %1343, %1326
  %1345 = fmul fast float %1343, %1330
  %1346 = fmul fast float %1343, %1334
  %1347 = fsub fast float %1340, %1344
  %1348 = fsub fast float %1341, %1345
  %1349 = fsub fast float %1342, %1346
  %1350 = fmul fast float %1347, %1347
  %1351 = fmul fast float %1348, %1348
  %1352 = fadd fast float %1350, %1351
  %1353 = fmul fast float %1349, %1349
  %1354 = fadd fast float %1352, %1353
  %1355 = call float @dx.op.unary.f32(i32 24, float %1354)  ; Sqrt(value)
  %1356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1357 = extractvalue %dx.types.CBufRet.f32 %1356, 0
  %1358 = extractvalue %dx.types.CBufRet.f32 %1356, 1
  %1359 = extractvalue %dx.types.CBufRet.f32 %1356, 2
  %1360 = extractvalue %dx.types.CBufRet.f32 %1356, 3
  %1361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1362 = extractvalue %dx.types.CBufRet.f32 %1361, 0
  %1363 = extractvalue %dx.types.CBufRet.f32 %1361, 1
  %1364 = extractvalue %dx.types.CBufRet.f32 %1361, 2
  %1365 = extractvalue %dx.types.CBufRet.f32 %1361, 3
  %1366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1367 = extractvalue %dx.types.CBufRet.f32 %1366, 0
  %1368 = extractvalue %dx.types.CBufRet.f32 %1366, 1
  %1369 = extractvalue %dx.types.CBufRet.f32 %1366, 2
  %1370 = extractvalue %dx.types.CBufRet.f32 %1366, 3
  %1371 = fmul fast float %1357, %1340
  %1372 = call float @dx.op.tertiary.f32(i32 46, float %1341, float %1358, float %1371)  ; FMad(a,b,c)
  %1373 = call float @dx.op.tertiary.f32(i32 46, float %1342, float %1359, float %1372)  ; FMad(a,b,c)
  %1374 = call float @dx.op.tertiary.f32(i32 46, float %1322, float %1360, float %1373)  ; FMad(a,b,c)
  %1375 = fmul fast float %1362, %1340
  %1376 = call float @dx.op.tertiary.f32(i32 46, float %1341, float %1363, float %1375)  ; FMad(a,b,c)
  %1377 = call float @dx.op.tertiary.f32(i32 46, float %1342, float %1364, float %1376)  ; FMad(a,b,c)
  %1378 = call float @dx.op.tertiary.f32(i32 46, float %1322, float %1365, float %1377)  ; FMad(a,b,c)
  %1379 = fmul fast float %1367, %1340
  %1380 = call float @dx.op.tertiary.f32(i32 46, float %1341, float %1368, float %1379)  ; FMad(a,b,c)
  %1381 = call float @dx.op.tertiary.f32(i32 46, float %1342, float %1369, float %1380)  ; FMad(a,b,c)
  %1382 = call float @dx.op.tertiary.f32(i32 46, float %1322, float %1370, float %1381)  ; FMad(a,b,c)
  %1383 = fmul fast float %1357, %1344
  %1384 = call float @dx.op.tertiary.f32(i32 46, float %1345, float %1358, float %1383)  ; FMad(a,b,c)
  %1385 = call float @dx.op.tertiary.f32(i32 46, float %1346, float %1359, float %1384)  ; FMad(a,b,c)
  %1386 = call float @dx.op.tertiary.f32(i32 46, float %1338, float %1360, float %1385)  ; FMad(a,b,c)
  %1387 = fmul fast float %1362, %1344
  %1388 = call float @dx.op.tertiary.f32(i32 46, float %1345, float %1363, float %1387)  ; FMad(a,b,c)
  %1389 = call float @dx.op.tertiary.f32(i32 46, float %1346, float %1364, float %1388)  ; FMad(a,b,c)
  %1390 = call float @dx.op.tertiary.f32(i32 46, float %1338, float %1365, float %1389)  ; FMad(a,b,c)
  %1391 = fmul fast float %1367, %1344
  %1392 = call float @dx.op.tertiary.f32(i32 46, float %1345, float %1368, float %1391)  ; FMad(a,b,c)
  %1393 = call float @dx.op.tertiary.f32(i32 46, float %1346, float %1369, float %1392)  ; FMad(a,b,c)
  %1394 = call float @dx.op.tertiary.f32(i32 46, float %1338, float %1370, float %1393)  ; FMad(a,b,c)
  %1395 = fdiv fast float 1.000000e+00, %1382
  %1396 = fmul fast float %1395, %1374
  %1397 = fmul fast float %1395, %1378
  %1398 = fdiv fast float 1.000000e+00, %1394
  %1399 = fmul fast float %1398, %1386
  %1400 = fmul fast float %1398, %1390
  %1401 = fsub fast float %1396, %1399
  %1402 = fsub fast float %1397, %1400
  %1403 = fmul fast float %1401, 5.000000e-01
  %1404 = fmul fast float %1402, 5.000000e-01
  %1405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1406 = extractvalue %dx.types.CBufRet.f32 %1405, 0
  %1407 = extractvalue %dx.types.CBufRet.f32 %1405, 1
  %1408 = fmul fast float %1403, %1406
  %1409 = fmul fast float %1404, %1407
  %1410 = fmul fast float %1408, %1408
  %1411 = fmul fast float %1409, %1409
  %1412 = fadd fast float %1410, %1411
  %1413 = call float @dx.op.unary.f32(i32 24, float %1412)  ; Sqrt(value)
  br label %1414

; <label>:1414                                    ; preds = %1303, %1294
  %1415 = phi float [ %1355, %1303 ], [ 0.000000e+00, %1294 ]
  %1416 = phi float [ %1413, %1303 ], [ 0.000000e+00, %1294 ]
  %1417 = fadd fast float %1295, -1.000000e+00
  %1418 = fmul fast float %1417, %489
  %1419 = fadd fast float %1418, 1.000000e+00
  %1420 = fmul fast float %1419, %501
  br label %1421

; <label>:1421                                    ; preds = %1414, %468
  %1422 = phi float [ %1415, %1414 ], [ 0.000000e+00, %468 ]
  %1423 = phi float [ %1416, %1414 ], [ 0.000000e+00, %468 ]
  %1424 = phi float [ %1420, %1414 ], [ %501, %468 ]
  %1425 = call float @dx.op.binary.f32(i32 36, float %1424, float %1424)  ; FMin(a,b)
  %1426 = call float @dx.op.binary.f32(i32 36, float %1424, float %1425)  ; FMin(a,b)
  %1427 = fcmp fast ogt float %1426, 0.000000e+00
  %1428 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %441, float %442, float %443)  ; Dot3(ax,ay,az,bx,by,bz)
  %1429 = fcmp fast ogt float %1428, 0.000000e+00
  %1430 = and i1 %1427, %1429
  br i1 %1430, label %1431, label %1712, !dx.controlflow.hints !63

; <label>:1431                                    ; preds = %1421
  %1432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1433 = extractvalue %dx.types.CBufRet.f32 %1432, 1
  %1434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1435 = extractvalue %dx.types.CBufRet.f32 %1434, 1
  %1436 = select i1 %55, float %1433, float %1435
  %1437 = extractvalue %dx.types.CBufRet.f32 %1432, 2
  %1438 = extractvalue %dx.types.CBufRet.f32 %1434, 2
  %1439 = select i1 %55, float %1437, float %1438
  %1440 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1441 = extractvalue %dx.types.CBufRet.i32 %1440, 0
  %1442 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1443 = extractvalue %dx.types.CBufRet.i32 %1442, 0
  %1444 = select i1 %55, i32 %1441, i32 %1443
  %1445 = fcmp fast ogt float %1422, 0.000000e+00
  br i1 %1445, label %1446, label %1450, !dx.controlflow.hints !64

; <label>:1446                                    ; preds = %1431
  %1447 = fptosi float %1423 to i32
  %1448 = call i32 @dx.op.binary.i32(i32 37, i32 %1447, i32 1)  ; IMax(a,b)
  %1449 = call i32 @dx.op.binary.i32(i32 38, i32 %1448, i32 16)  ; IMin(a,b)
  br label %1450

; <label>:1450                                    ; preds = %1446, %1431
  %1451 = phi float [ 0.000000e+00, %1446 ], [ 1.000000e+00, %1431 ]
  %1452 = phi float [ %1422, %1446 ], [ %1436, %1431 ]
  %1453 = phi i32 [ %1449, %1446 ], [ %1444, %1431 ]
  %1454 = fcmp fast olt float %1452, 5.000000e-01
  %1455 = icmp eq i32 %1453, 0
  %1456 = or i1 %1454, %1455
  br i1 %1456, label %1707, label %1457, !dx.controlflow.hints !65

; <label>:1457                                    ; preds = %1450
  %1458 = fsub fast float %401, %117
  %1459 = fsub fast float %402, %118
  %1460 = fsub fast float %403, %119
  %1461 = fmul fast float %1458, %1458
  %1462 = fmul fast float %1459, %1459
  %1463 = fadd fast float %1461, %1462
  %1464 = fmul fast float %1460, %1460
  %1465 = fadd fast float %1463, %1464
  %1466 = call float @dx.op.unary.f32(i32 24, float %1465)  ; Sqrt(value)
  %1467 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1468 = extractvalue %dx.types.CBufRet.i32 %1467, 0
  %1469 = uitofp i32 %1468 to float
  %1470 = fmul fast float %1452, %398
  %1471 = fdiv fast float %1470, %1466
  %1472 = call float @dx.op.binary.f32(i32 36, float %1471, float 1.000000e+01)  ; FMin(a,b)
  %1473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %1474 = extractvalue %dx.types.CBufRet.f32 %1473, 0
  %1475 = extractvalue %dx.types.CBufRet.f32 %1473, 1
  %1476 = extractvalue %dx.types.CBufRet.f32 %1473, 2
  %1477 = extractvalue %dx.types.CBufRet.f32 %1473, 3
  %1478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %1479 = extractvalue %dx.types.CBufRet.f32 %1478, 0
  %1480 = extractvalue %dx.types.CBufRet.f32 %1478, 1
  %1481 = extractvalue %dx.types.CBufRet.f32 %1478, 2
  %1482 = extractvalue %dx.types.CBufRet.f32 %1478, 3
  %1483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %1484 = extractvalue %dx.types.CBufRet.f32 %1483, 0
  %1485 = extractvalue %dx.types.CBufRet.f32 %1483, 1
  %1486 = extractvalue %dx.types.CBufRet.f32 %1483, 2
  %1487 = extractvalue %dx.types.CBufRet.f32 %1483, 3
  %1488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1489 = extractvalue %dx.types.CBufRet.f32 %1488, 0
  %1490 = extractvalue %dx.types.CBufRet.f32 %1488, 1
  %1491 = extractvalue %dx.types.CBufRet.f32 %1488, 2
  %1492 = extractvalue %dx.types.CBufRet.f32 %1488, 3
  %1493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1494 = extractvalue %dx.types.CBufRet.f32 %1493, 0
  %1495 = extractvalue %dx.types.CBufRet.f32 %1493, 1
  %1496 = extractvalue %dx.types.CBufRet.f32 %1493, 2
  %1497 = extractvalue %dx.types.CBufRet.f32 %1493, 3
  %1498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1499 = extractvalue %dx.types.CBufRet.f32 %1498, 0
  %1500 = extractvalue %dx.types.CBufRet.f32 %1498, 1
  %1501 = extractvalue %dx.types.CBufRet.f32 %1498, 2
  %1502 = extractvalue %dx.types.CBufRet.f32 %1498, 3
  %1503 = select i1 %55, float %1474, float %1489
  %1504 = select i1 %55, float %1479, float %1494
  %1505 = select i1 %55, float %1484, float %1499
  %1506 = select i1 %55, float %1475, float %1490
  %1507 = select i1 %55, float %1480, float %1495
  %1508 = select i1 %55, float %1485, float %1500
  %1509 = select i1 %55, float %1476, float %1491
  %1510 = select i1 %55, float %1481, float %1496
  %1511 = select i1 %55, float %1486, float %1501
  %1512 = select i1 %55, float %1477, float %1492
  %1513 = select i1 %55, float %1482, float %1497
  %1514 = select i1 %55, float %1487, float %1502
  %1515 = fmul fast float %219, 0x401061CAC0000000
  %1516 = fmul fast float %219, 0x4023E1D7E0000000
  %1517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1518 = extractvalue %dx.types.CBufRet.f32 %1517, 0
  %1519 = extractvalue %dx.types.CBufRet.f32 %1517, 1
  %1520 = extractvalue %dx.types.CBufRet.f32 %1517, 2
  %1521 = extractvalue %dx.types.CBufRet.f32 %1517, 3
  %1522 = fsub fast float -0.000000e+00, %441
  %1523 = fmul fast float %443, %1522
  %1524 = fmul fast float %441, %1522
  %1525 = fmul fast float %442, %442
  %1526 = fsub fast float %1524, %1525
  %1527 = fdiv fast float 1.000000e+00, %62
  %1528 = fmul fast float %1520, %51
  %1529 = fmul fast float %1521, %52
  %1530 = fmul fast float %1452, %441
  %1531 = fmul fast float %1452, %443
  %1532 = fadd fast float %1530, %117
  %1533 = fadd fast float %1531, %119
  %1534 = fadd fast float %1516, 5.000000e-01
  %1535 = call float @dx.op.unary.f32(i32 22, float %1534)  ; Frc(value)
  %1536 = bitcast float %1535 to i32
  %1537 = ashr i32 %1536, 1
  %1538 = add nsw i32 %1537, 532487669
  %1539 = bitcast i32 %1538 to float
  %1540 = fmul fast float %1539, %1472
  %1541 = fadd fast float %1515, 5.000000e-01
  %1542 = call float @dx.op.unary.f32(i32 22, float %1541)  ; Frc(value)
  %1543 = fmul fast float %1542, 0x401921FB60000000
  %1544 = call float @dx.op.unary.f32(i32 12, float %1543)  ; Cos(value)
  %1545 = fmul fast float %1544, %1544
  %1546 = fsub fast float 1.000000e+00, %1545
  %1547 = bitcast float %1546 to i32
  %1548 = ashr i32 %1547, 1
  %1549 = add nsw i32 %1548, 532487669
  %1550 = bitcast i32 %1549 to float
  %1551 = fmul fast float %1540, %1544
  %1552 = fmul fast float %1551, %442
  %1553 = fmul fast float %1551, %1522
  %1554 = fadd fast float %1532, %1552
  %1555 = fmul fast float %1550, %1540
  %1556 = fmul fast float %1523, %1555
  %1557 = fmul fast float %1555, %443
  %1558 = fmul fast float %1555, %1526
  %1559 = fsub fast float %1554, %1556
  %1560 = fadd fast float %1557, %1452
  %1561 = fmul fast float %1560, %442
  %1562 = fadd fast float %1553, %118
  %1563 = fadd fast float %1562, %1561
  %1564 = fadd fast float %1533, %1558
  %1565 = fmul fast float %1559, %1503
  %1566 = call float @dx.op.tertiary.f32(i32 46, float %1563, float %1506, float %1565)  ; FMad(a,b,c)
  %1567 = call float @dx.op.tertiary.f32(i32 46, float %1564, float %1509, float %1566)  ; FMad(a,b,c)
  %1568 = fadd fast float %1567, %1512
  %1569 = fmul fast float %1559, %1504
  %1570 = call float @dx.op.tertiary.f32(i32 46, float %1563, float %1507, float %1569)  ; FMad(a,b,c)
  %1571 = call float @dx.op.tertiary.f32(i32 46, float %1564, float %1510, float %1570)  ; FMad(a,b,c)
  %1572 = fadd fast float %1571, %1513
  %1573 = fmul fast float %1559, %1505
  %1574 = call float @dx.op.tertiary.f32(i32 46, float %1563, float %1508, float %1573)  ; FMad(a,b,c)
  %1575 = call float @dx.op.tertiary.f32(i32 46, float %1564, float %1511, float %1574)  ; FMad(a,b,c)
  %1576 = fadd fast float %1575, %1514
  %1577 = fdiv fast float 1.000000e+00, %1576
  %1578 = fmul fast float %1568, 5.000000e-01
  %1579 = fmul fast float %1572, -5.000000e-01
  %1580 = fmul fast float %1578, %1577
  %1581 = fmul fast float %1579, %1577
  %1582 = fsub fast float 5.000000e-01, %1528
  %1583 = fadd fast float %1582, %1580
  %1584 = fsub fast float 5.000000e-01, %1529
  %1585 = fadd fast float %1584, %1581
  %1586 = fsub fast float %1577, %1527
  %1587 = call float @dx.op.dot2.f32(i32 54, float %1583, float %1585, float %1583, float %1585)  ; Dot2(ax,ay,bx,by)
  %1588 = call float @dx.op.binary.f32(i32 35, float %1587, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %1589 = call float @dx.op.dot2.f32(i32 54, float %1518, float %1519, float %1518, float %1519)  ; Dot2(ax,ay,bx,by)
  %1590 = fmul fast float %1589, %1588
  %1591 = call float @dx.op.unary.f32(i32 25, float %1590)  ; Rsqrt(value)
  %1592 = fmul fast float %1591, %1583
  %1593 = fmul fast float %1591, %1585
  %1594 = fadd fast float %1592, %1528
  %1595 = fadd fast float %1593, %1529
  %1596 = fmul fast float %1583, %1518
  %1597 = fmul fast float %1585, %1519
  %1598 = fmul fast float %1596, %1596
  %1599 = fmul fast float %1597, %1597
  %1600 = fadd fast float %1598, %1599
  %1601 = call float @dx.op.unary.f32(i32 24, float %1600)  ; Sqrt(value)
  %1602 = fdiv fast float 1.000000e+00, %1601
  %1603 = fmul fast float %1601, 3.906250e-03
  %1604 = fmul fast float %205, 0x3F70624DE0000000
  %1605 = fadd fast float %1604, 0x3F70624DE0000000
  %1606 = icmp sgt i32 %1453, -1
  br i1 %1606, label %1607, label %1672

; <label>:1607                                    ; preds = %1457
  br label %1608

; <label>:1608                                    ; preds = %1668, %1607
  %1609 = phi float [ %1643, %1668 ], [ %62, %1607 ]
  %1610 = phi float [ %1630, %1668 ], [ %62, %1607 ]
  %1611 = phi float [ %1610, %1668 ], [ %62, %1607 ]
  %1612 = phi i32 [ %1669, %1668 ], [ 0, %1607 ]
  %1613 = sitofp i32 %1612 to float
  %1614 = fadd fast float %219, 5.000000e-01
  %1615 = call float @dx.op.unary.f32(i32 22, float %1614)  ; Frc(value)
  %1616 = fadd fast float %1613, %1615
  %1617 = sitofp i32 %1453 to float
  %1618 = fdiv fast float %1616, %1617
  %1619 = fmul fast float %1618, %1618
  %1620 = fsub fast float %1619, %1618
  %1621 = fmul fast float %1620, %1451
  %1622 = fadd fast float %1621, %1618
  %1623 = call float @dx.op.binary.f32(i32 36, float %1622, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %1624 = fmul fast float %1623, %1583
  %1625 = fmul fast float %1623, %1585
  %1626 = fmul fast float %1623, %1586
  %1627 = fadd fast float %1624, %1594
  %1628 = fadd fast float %1625, %1595
  %1629 = fadd fast float %1626, %1527
  %1630 = fdiv fast float 1.000000e+00, %1629
  %1631 = icmp ne i32 %1468, 0
  %1632 = fmul fast float %1603, %1623
  %1633 = call float @dx.op.binary.f32(i32 36, float %1632, float %1469)  ; FMin(a,b)
  %1634 = select i1 %1631, float %1633, float 0.000000e+00
  %1635 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %1627, float %1628, float undef, float undef, i32 0, i32 0, i32 undef, float %1634)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1636 = extractvalue %dx.types.ResRet.f32 %1635, 0
  %1637 = fcmp fast ogt float %1636, -1.000000e+00
  %1638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1639 = extractvalue %dx.types.CBufRet.f32 %1638, 1
  %1640 = select i1 %1637, float %1639, float 1.000000e+00
  %1641 = fadd fast float %1636, 1.000000e+00
  %1642 = fmul fast float %1640, %1641
  %1643 = call float @dx.op.unary.f32(i32 6, float %1642)  ; FAbs(value)
  %1644 = fmul fast float %1643, %1605
  %1645 = fsub fast float %1630, %1643
  %1646 = fsub fast float %1645, %1644
  %1647 = fcmp fast ogt float %1646, 0.000000e+00
  %1648 = fcmp fast ogt float %1439, 0.000000e+00
  br i1 %1648, label %1649, label %1652, !dx.controlflow.hints !66

; <label>:1649                                    ; preds = %1608
  %1650 = fsub fast float %1630, %1611
  %1651 = call float @dx.op.binary.f32(i32 35, float %1650, float %1439)  ; FMax(a,b)
  br label %1652

; <label>:1652                                    ; preds = %1649, %1608
  %1653 = phi float [ %1651, %1649 ], [ %1452, %1608 ]
  %1654 = fcmp fast olt float %1646, %1653
  %1655 = fcmp uge float %1636, -1.000000e+00
  %1656 = or i1 %55, %1655
  %1657 = call float @dx.op.unary.f32(i32 7, float %1627)  ; Saturate(value)
  %1658 = call float @dx.op.unary.f32(i32 7, float %1628)  ; Saturate(value)
  %1659 = fcmp fast oeq float %1627, %1657
  %1660 = fcmp fast oeq float %1628, %1658
  %1661 = and i1 %1659, %1660
  %1662 = and i1 %1656, %1661
  %1663 = and i1 %1647, %1654
  %1664 = and i1 %1663, %1662
  %1665 = fcmp fast ogt float %1623, %1602
  %1666 = and i1 %1665, %1664
  %1667 = zext i1 %1666 to i32
  br i1 %1666, label %1671, label %1668, !dx.controlflow.hints !67

; <label>:1668                                    ; preds = %1652
  %1669 = add nuw nsw i32 %1612, 1
  %1670 = icmp slt i32 %1612, %1453
  br i1 %1670, label %1608, label %1671

; <label>:1671                                    ; preds = %1668, %1652
  br label %1672

; <label>:1672                                    ; preds = %1671, %1457
  %1673 = phi i32 [ 0, %1457 ], [ %1667, %1671 ]
  %1674 = phi float [ %62, %1457 ], [ %1643, %1671 ]
  %1675 = phi float [ %62, %1457 ], [ %1609, %1671 ]
  %1676 = phi float [ %62, %1457 ], [ %1630, %1671 ]
  %1677 = phi float [ %62, %1457 ], [ %1610, %1671 ]
  %1678 = fsub fast float %1677, %1675
  %1679 = fsub fast float %1676, %1674
  %1680 = fsub fast float %1678, %1679
  %1681 = fcmp fast une float %1680, 0.000000e+00
  %1682 = fmul fast float %1678, %1676
  %1683 = fmul fast float %1677, %1679
  %1684 = fsub fast float %1682, %1683
  %1685 = fdiv fast float 1.000000e+00, %1680
  %1686 = fmul fast float %1684, %1685
  %1687 = select i1 %1681, float %1686, float %1676
  %1688 = fdiv fast float 1.000000e+00, %1687
  %1689 = fsub fast float %1688, %1527
  %1690 = fdiv fast float %1689, %1586
  %1691 = call float @dx.op.unary.f32(i32 7, float %1690)  ; Saturate(value)
  %1692 = fmul fast float %1691, %1583
  %1693 = fmul fast float %1691, %1585
  %1694 = fadd fast float %1692, %1594
  %1695 = fadd fast float %1693, %1595
  %1696 = fadd fast float %1694, -5.000000e-01
  %1697 = fadd fast float %1695, -5.000000e-01
  %1698 = call float @dx.op.unary.f32(i32 6, float %1696)  ; FAbs(value)
  %1699 = call float @dx.op.unary.f32(i32 6, float %1697)  ; FAbs(value)
  %1700 = fadd fast float %1698, -5.000000e-01
  %1701 = fadd fast float %1699, -5.000000e-01
  %1702 = call float @dx.op.binary.f32(i32 35, float %1700, float %1701)  ; FMax(a,b)
  %1703 = fcmp fast olt float %1702, 0.000000e+00
  %1704 = icmp ne i32 %1673, 0
  %1705 = and i1 %1704, %1703
  %1706 = select i1 %1705, float 0.000000e+00, float 1.000000e+00
  br label %1707

; <label>:1707                                    ; preds = %1672, %1450
  %1708 = phi float [ %1706, %1672 ], [ 1.000000e+00, %1450 ]
  %1709 = fmul fast float %1708, %1424
  %1710 = fmul fast float %1708, %1424
  %1711 = fmul fast float %1708, %1424
  br label %1712

; <label>:1712                                    ; preds = %1707, %1421
  %1713 = phi float [ %1709, %1707 ], [ %1424, %1421 ]
  %1714 = phi float [ %1710, %1707 ], [ %1424, %1421 ]
  %1715 = phi float [ %1711, %1707 ], [ %1424, %1421 ]
  %1716 = call float @dx.op.binary.f32(i32 36, float %1714, float %1715)  ; FMin(a,b)
  %1717 = call float @dx.op.binary.f32(i32 36, float %1713, float %1716)  ; FMin(a,b)
  %1718 = fcmp fast ogt float %1717, 0x3F10000000000000
  %1719 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %1718)  ; WaveAnyTrue(cond)
  %1720 = icmp ugt i32 %244, 63
  br i1 %1720, label %1750, label %1721, !dx.controlflow.hints !68

; <label>:1721                                    ; preds = %1712
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1722 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %1722, label %1723, label %1726, !dx.controlflow.hints !69

; <label>:1723                                    ; preds = %1721
  %1724 = zext i1 %1719 to i32
  %1725 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %245
  store i32 %1724, i32 addrspace(3)* %1725, align 4, !tbaa !38
  br label %1726

; <label>:1726                                    ; preds = %1723, %1721
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1727 = icmp eq i32 %244, 32
  br i1 %1727, label %1728, label %1734, !dx.controlflow.hints !70

; <label>:1728                                    ; preds = %1726
  %1729 = xor i32 %245, 1
  %1730 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1729
  %1731 = load i32, i32 addrspace(3)* %1730, align 4, !tbaa !38
  %1732 = icmp ne i32 %1731, 0
  %1733 = or i1 %1719, %1732
  br label %1750

; <label>:1734                                    ; preds = %1726
  %1735 = icmp eq i32 %244, 16
  br i1 %1735, label %1736, label %1750, !dx.controlflow.hints !71

; <label>:1736                                    ; preds = %1734
  %1737 = xor i32 %245, 1
  %1738 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1737
  %1739 = load i32, i32 addrspace(3)* %1738, align 4, !tbaa !38
  %1740 = xor i32 %245, 2
  %1741 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1740
  %1742 = load i32, i32 addrspace(3)* %1741, align 4, !tbaa !38
  %1743 = or i32 %1742, %1739
  %1744 = xor i32 %245, 3
  %1745 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1744
  %1746 = load i32, i32 addrspace(3)* %1745, align 4, !tbaa !38
  %1747 = or i32 %1743, %1746
  %1748 = icmp ne i32 %1747, 0
  %1749 = or i1 %1719, %1748
  br label %1750

; <label>:1750                                    ; preds = %1736, %1734, %1728, %1712
  %1751 = phi i1 [ %1733, %1728 ], [ %1749, %1736 ], [ %1719, %1712 ], [ false, %1734 ]
  %1752 = select i1 %1751, i32 %380, i32 0
  %1753 = or i32 %375, %1752
  %1754 = lshr i32 %224, 5
  %1755 = lshr i32 %225, 5
  %1756 = fcmp fast olt float %1713, 0x3F10000000000000
  %1757 = call i1 @dx.op.waveAllTrue(i32 114, i1 %1756)  ; WaveAllTrue(cond)
  br i1 %1720, label %1789, label %1758, !dx.controlflow.hints !72

; <label>:1758                                    ; preds = %1750
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1759 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %1759, label %1760, label %1763, !dx.controlflow.hints !73

; <label>:1760                                    ; preds = %1758
  %1761 = zext i1 %1757 to i32
  %1762 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %245
  store i32 %1761, i32 addrspace(3)* %1762, align 4, !tbaa !38
  br label %1763

; <label>:1763                                    ; preds = %1760, %1758
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1764 = icmp eq i32 %244, 32
  br i1 %1764, label %1765, label %1771, !dx.controlflow.hints !74

; <label>:1765                                    ; preds = %1763
  %1766 = xor i32 %245, 1
  %1767 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1766
  %1768 = load i32, i32 addrspace(3)* %1767, align 4, !tbaa !38
  %1769 = icmp ne i32 %1768, 0
  %1770 = and i1 %1757, %1769
  br label %1789

; <label>:1771                                    ; preds = %1763
  %1772 = icmp eq i32 %244, 16
  br i1 %1772, label %1773, label %1789, !dx.controlflow.hints !75

; <label>:1773                                    ; preds = %1771
  %1774 = xor i32 %245, 1
  %1775 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1774
  %1776 = load i32, i32 addrspace(3)* %1775, align 4, !tbaa !38
  %1777 = icmp ne i32 %1776, 0
  %1778 = and i1 %1757, %1777
  %1779 = xor i32 %245, 2
  %1780 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1779
  %1781 = load i32, i32 addrspace(3)* %1780, align 4, !tbaa !38
  %1782 = icmp ne i32 %1781, 0
  %1783 = and i1 %1778, %1782
  %1784 = xor i32 %245, 3
  %1785 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1784
  %1786 = load i32, i32 addrspace(3)* %1785, align 4, !tbaa !38
  %1787 = icmp ne i32 %1786, 0
  %1788 = and i1 %1783, %1787
  br label %1789

; <label>:1789                                    ; preds = %1773, %1771, %1765, %1750
  %1790 = phi i1 [ %1770, %1765 ], [ %1788, %1773 ], [ %1757, %1750 ], [ false, %1771 ]
  %1791 = fcmp fast ogt float %1713, 0x3FEFFF8000000000
  %1792 = call i1 @dx.op.waveAllTrue(i32 114, i1 %1791)  ; WaveAllTrue(cond)
  br i1 %1720, label %1824, label %1793, !dx.controlflow.hints !72

; <label>:1793                                    ; preds = %1789
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1794 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %1794, label %1795, label %1798, !dx.controlflow.hints !73

; <label>:1795                                    ; preds = %1793
  %1796 = zext i1 %1792 to i32
  %1797 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %245
  store i32 %1796, i32 addrspace(3)* %1797, align 4, !tbaa !38
  br label %1798

; <label>:1798                                    ; preds = %1795, %1793
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1799 = icmp eq i32 %244, 32
  br i1 %1799, label %1800, label %1806, !dx.controlflow.hints !74

; <label>:1800                                    ; preds = %1798
  %1801 = xor i32 %245, 1
  %1802 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1801
  %1803 = load i32, i32 addrspace(3)* %1802, align 4, !tbaa !38
  %1804 = icmp ne i32 %1803, 0
  %1805 = and i1 %1792, %1804
  br label %1824

; <label>:1806                                    ; preds = %1798
  %1807 = icmp eq i32 %244, 16
  br i1 %1807, label %1808, label %1824, !dx.controlflow.hints !75

; <label>:1808                                    ; preds = %1806
  %1809 = xor i32 %245, 1
  %1810 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1809
  %1811 = load i32, i32 addrspace(3)* %1810, align 4, !tbaa !38
  %1812 = icmp ne i32 %1811, 0
  %1813 = and i1 %1792, %1812
  %1814 = xor i32 %245, 2
  %1815 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1814
  %1816 = load i32, i32 addrspace(3)* %1815, align 4, !tbaa !38
  %1817 = icmp ne i32 %1816, 0
  %1818 = and i1 %1813, %1817
  %1819 = xor i32 %245, 3
  %1820 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1819
  %1821 = load i32, i32 addrspace(3)* %1820, align 4, !tbaa !38
  %1822 = icmp ne i32 %1821, 0
  %1823 = and i1 %1818, %1822
  br label %1824

; <label>:1824                                    ; preds = %1808, %1806, %1800, %1789
  %1825 = phi i1 [ %1805, %1800 ], [ %1823, %1808 ], [ %1792, %1789 ], [ false, %1806 ]
  %1826 = or i1 %1790, %1825
  %1827 = lshr i32 %225, 1
  %1828 = and i32 %1827, 8
  %1829 = lshr i32 %224, 2
  %1830 = and i32 %1829, 4
  %1831 = or i32 %1828, %36
  %1832 = or i32 %1831, %1830
  %1833 = icmp eq i32 %24, 0
  br i1 %1833, label %1834, label %1876, !dx.controlflow.hints !76

; <label>:1834                                    ; preds = %1824
  %1835 = shl i32 1, %1832
  %1836 = select i1 %1825, i32 %1835, i32 0
  %1837 = shl i32 65536, %1832
  %1838 = select i1 %1790, i32 %1837, i32 0
  %1839 = or i32 %1836, %1838
  %1840 = icmp eq i32 %1839, 0
  br i1 %1840, label %1843, label %1841, !dx.controlflow.hints !77

; <label>:1841                                    ; preds = %1834
  %1842 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %1754, i32 %1755, i32 %378, i32 %1839)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1843

; <label>:1843                                    ; preds = %1841, %1834
  br i1 %1826, label %1873, label %1844

; <label>:1844                                    ; preds = %1843
  br label %1845

; <label>:1845                                    ; preds = %1870, %1844
  %1846 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %4, i32 %1754, i32 %1755, i32 %378, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %1847 = and i32 %1846, 3
  %1848 = icmp eq i32 %1847, 0
  br i1 %1848, label %1849, label %1870, !dx.controlflow.hints !78

; <label>:1849                                    ; preds = %1845
  %1850 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1851 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1852 = extractvalue %dx.types.CBufRet.i32 %1851, 3
  %1853 = call i32 @dx.op.binary.i32(i32 40, i32 %1852, i32 %1850)  ; UMin(a,b)
  %1854 = extractvalue %dx.types.CBufRet.i32 %1851, 2
  %1855 = udiv i32 %1853, %1854
  %1856 = urem i32 %1853, %1854
  %1857 = extractvalue %dx.types.CBufRet.i32 %1851, 1
  %1858 = urem i32 %1856, %1857
  %1859 = udiv i32 %1856, %1857
  %1860 = shl i32 %1858, 6
  %1861 = and i32 %1860, 32704
  %1862 = shl i32 %1859, 15
  %1863 = and i32 %1862, 8355840
  %1864 = shl i32 %1855, 23
  %1865 = and i32 %1864, 2139095040
  %1866 = or i32 %1865, %1861
  %1867 = or i32 %1866, %1863
  %1868 = or i32 %1867, 3
  %1869 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 8, i32 %1754, i32 %1755, i32 %378, i32 %1868)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1873

; <label>:1870                                    ; preds = %1845
  %1871 = icmp eq i32 %1847, 3
  br i1 %1871, label %1872, label %1845, !dx.controlflow.hints !79

; <label>:1872                                    ; preds = %1870
  br label %1873

; <label>:1873                                    ; preds = %1872, %1849, %1843
  %1874 = phi i32 [ 0, %1843 ], [ %1868, %1849 ], [ %1846, %1872 ]
  br i1 %247, label %1876, label %1875, !dx.controlflow.hints !80

; <label>:1875                                    ; preds = %1873
  store i32 %1874, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !38
  br label %1876

; <label>:1876                                    ; preds = %1875, %1873, %1824
  %1877 = phi i32 [ %1874, %1873 ], [ %1874, %1875 ], [ 0, %1824 ]
  br i1 %247, label %1878, label %1880, !dx.controlflow.hints !81

; <label>:1878                                    ; preds = %1876
  %1879 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %1877)  ; WaveReadLaneFirst(value)
  br label %1882

; <label>:1880                                    ; preds = %1876
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1881 = load i32, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !38
  br label %1882

; <label>:1882                                    ; preds = %1880, %1878
  %1883 = phi i32 [ %1881, %1880 ], [ %1879, %1878 ]
  br i1 %1826, label %1899, label %1884, !dx.controlflow.hints !82

; <label>:1884                                    ; preds = %1882
  %1885 = lshr i32 %1883, 23
  %1886 = and i32 %1885, 255
  %1887 = and i32 %224, 31
  %1888 = and i32 %225, 31
  %1889 = lshr i32 %1883, 1
  %1890 = and i32 %1889, 16352
  %1891 = lshr i32 %1883, 10
  %1892 = and i32 %1891, 8160
  %1893 = or i32 %1890, %1887
  %1894 = or i32 %1892, %1888
  %1895 = fmul fast float %1713, 2.550000e+02
  %1896 = fadd fast float %1895, %218
  %1897 = call float @dx.op.unary.f32(i32 27, float %1896)  ; Round_ni(value)
  %1898 = fmul fast float %1897, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %1893, i32 %1894, i32 %1886, float %1898, float %1898, float %1898, float %1898, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1899

; <label>:1899                                    ; preds = %1884, %1882
  %1900 = icmp eq i32 %376, %380
  br i1 %1900, label %1901, label %374, !llvm.loop !83

; <label>:1901                                    ; preds = %1899
  br label %1902

; <label>:1902                                    ; preds = %1901, %370
  %1903 = phi i32 [ 0, %370 ], [ %1753, %1901 ]
  %1904 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1905 = extractvalue %dx.types.CBufRet.i32 %1904, 0
  %1906 = call i32 @dx.op.tertiary.i32(i32 49, i32 %230, i32 %1905, i32 %311)  ; UMad(a,b,c)
  %1907 = shl i32 %1906, 2
  %1908 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1907, i32 undef, i32 undef, i32 %1903)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1909 = add i32 %311, 1
  %1910 = icmp ugt i32 %1909, %307
  br i1 %1910, label %1911, label %310

; <label>:1911                                    ; preds = %1902
  br label %1912

; <label>:1912                                    ; preds = %1911, %303, %0
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
declare i1 @dx.op.waveAllTrue(i32, i1) #2

; Function Attrs: nounwind
declare i1 @dx.op.waveAnyTrue(i32, i1) #2

; Function Attrs: nounwind
declare i32 @dx.op.atomicCompareExchange.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #2

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
!dx.entryPoints = !{!32}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !18, !25, !28}
!5 = !{!6, !8, !9, !11, !12, !13, !14, !15, !16, !17}
!6 = !{i32 0, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 5}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !10}
!10 = !{i32 0, i32 9}
!11 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!12 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 20, i32 1, i32 11, i32 0, null}
!13 = !{i32 5, %"class.Texture1D<float>"* undef, !"", i32 0, i32 8, i32 1, i32 1, i32 0, !10}
!14 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !10}
!15 = !{i32 7, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 7, i32 0, !10}
!16 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!17 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 7, i32 1, i32 11, i32 0, null}
!18 = !{!19, !20, !21, !22, !24}
!19 = !{i32 0, %"class.RWTexture2DArray<float>"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!20 = !{i32 1, %"class.RWTexture2DArray<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!21 = !{i32 2, %"class.RWTexture2DArray<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!22 = !{i32 3, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i1 false, i1 false, i1 false, !23}
!23 = !{i32 1, i32 4}
!24 = !{i32 4, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!25 = !{!26, !27}
!26 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!27 = !{i32 1, %ConstantBufferSpotvis* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!28 = !{!29, !30, !31}
!29 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!30 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!31 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!32 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !33}
!33 = !{i32 0, i64 524560, i32 4, !34}
!34 = !{i32 8, i32 8, i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.unroll.disable"}

