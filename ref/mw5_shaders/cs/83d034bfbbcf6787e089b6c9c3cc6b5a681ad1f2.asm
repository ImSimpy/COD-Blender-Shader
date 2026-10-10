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
; shader hash: 2f85edae0a2c00369e5a1a8dc7840f09
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

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4
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
  %66 = fmul fast float %64, 2.000000e+00
  %67 = fmul fast float %66, %51
  %68 = fmul fast float %65, 2.000000e+00
  %69 = fmul fast float %68, %52
  %70 = fsub fast float 1.000000e+00, %67
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
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %151 = fmul fast float %150, 0x3FE3C6EF40000000
  %152 = frem fast float %51, 2.560000e+02
  %153 = frem fast float %52, 2.560000e+02
  %154 = fptoui float %152 to i32
  %155 = fptoui float %153 to i32
  %156 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %154, i32 %155, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %157 = extractvalue %dx.types.ResRet.f32 %156, 0
  %158 = fadd fast float %157, %151
  %159 = call float @dx.op.unary.f32(i32 22, float %158)  ; Frc(value)
  %160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.i32 %160, 0
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %1336, label %163, !dx.controlflow.hints !35

; <label>:163                                     ; preds = %0
  %164 = fptoui float %51 to i32
  %165 = fptoui float %52 to i32
  %166 = lshr i32 %164, 4
  %167 = lshr i32 %165, 4
  %168 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.i32 %168, 0
  %170 = call i32 @dx.op.tertiary.i32(i32 49, i32 %167, i32 %169, i32 %166)  ; UMad(a,b,c)
  %171 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.i32 %171, 0
  %173 = add nsw i32 %172, -1
  %174 = call i32 @dx.op.binary.i32(i32 37, i32 %173, i32 0)  ; IMax(a,b)
  %175 = call float @dx.op.binary.f32(i32 35, float %62, float 0.000000e+00)  ; FMax(a,b)
  %176 = fptoui float %175 to i32
  %177 = lshr i32 %176, 5
  %178 = call i32 @dx.op.binary.i32(i32 40, i32 %177, i32 8191)  ; UMin(a,b)
  %179 = shl i32 %178, 2
  %180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %179, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 0
  %182 = lshr i32 %181, 16
  %183 = and i32 %181, 65535
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 -1, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %184 = atomicrmw umin i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %182 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %185 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %186 = atomicrmw umax i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %183 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %187 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  %188 = lshr i32 %185, 5
  %189 = lshr i32 %187, 5
  %190 = call i32 @dx.op.binary.i32(i32 40, i32 %189, i32 %174)  ; UMin(a,b)
  %191 = icmp ugt i32 %188, %190
  br i1 %191, label %1336, label %192

; <label>:192                                     ; preds = %163
  br label %193

; <label>:193                                     ; preds = %1326, %192
  %194 = phi i32 [ %1333, %1326 ], [ %188, %192 ]
  %195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.i32 %195, 0
  %197 = call i32 @dx.op.tertiary.i32(i32 49, i32 %170, i32 %196, i32 %194)  ; UMad(a,b,c)
  %198 = shl i32 %197, 2
  %199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %198, i32 undef)  ; BufferLoad(srv,index,wot)
  %200 = extractvalue %dx.types.ResRet.i32 %199, 0
  %201 = shl i32 %194, 5
  %202 = sub nsw i32 %182, %201
  %203 = call i32 @dx.op.binary.i32(i32 37, i32 %202, i32 0)  ; IMax(a,b)
  %204 = call i32 @dx.op.binary.i32(i32 38, i32 %203, i32 31)  ; IMin(a,b)
  %205 = sub nsw i32 1, %182
  %206 = add nsw i32 %205, %183
  %207 = call i32 @dx.op.binary.i32(i32 37, i32 %206, i32 0)  ; IMax(a,b)
  %208 = call i32 @dx.op.binary.i32(i32 38, i32 %207, i32 32)  ; IMin(a,b)
  %209 = and i32 %208, 31
  %210 = shl i32 -1, %209
  %211 = xor i32 %210, -1
  %212 = and i32 %204, 31
  %213 = shl i32 %211, %212
  %214 = icmp eq i32 %208, 32
  %215 = select i1 %214, i32 -1, i32 %213
  %216 = and i32 %215, %200
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %217 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %216 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %218 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %219 = icmp eq i32 %24, 0
  br i1 %219, label %220, label %221, !dx.controlflow.hints !40

; <label>:220                                     ; preds = %193
  store i32 %218, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  br label %221

; <label>:221                                     ; preds = %220, %193
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %222 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %1326, label %224

; <label>:224                                     ; preds = %221
  br label %225

; <label>:225                                     ; preds = %1323, %224
  %226 = phi i32 [ %1161, %1323 ], [ 0, %224 ]
  %227 = phi i32 [ %232, %1323 ], [ %222, %224 ]
  %228 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %227)  ; FirstbitLo(value)
  %229 = add i32 %228, %201
  %230 = and i32 %228, 31
  %231 = shl i32 1, %230
  %232 = xor i32 %231, %227
  %233 = mul i32 %229, 112
  %234 = add i32 %233, 16
  %235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.f32 %235, 0
  %237 = extractvalue %dx.types.ResRet.f32 %235, 1
  %238 = extractvalue %dx.types.ResRet.f32 %235, 2
  %239 = add i32 %233, 28
  %240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = add i32 %233, 32
  %243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.f32 %243, 0
  %245 = extractvalue %dx.types.ResRet.f32 %243, 1
  %246 = extractvalue %dx.types.ResRet.f32 %243, 2
  %247 = add i32 %233, 44
  %248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.f32 %248, 0
  %250 = add i32 %233, 48
  %251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 0
  %253 = extractvalue %dx.types.ResRet.f32 %251, 1
  %254 = extractvalue %dx.types.ResRet.f32 %251, 2
  %255 = extractvalue %dx.types.ResRet.f32 %251, 3
  %256 = add i32 %233, 64
  %257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = extractvalue %dx.types.ResRet.f32 %257, 1
  %260 = extractvalue %dx.types.ResRet.f32 %257, 2
  %261 = extractvalue %dx.types.ResRet.f32 %257, 3
  %262 = add i32 %233, 92
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = and i32 %264, 65535
  %266 = uitofp i32 %265 to float
  %267 = lshr i32 %264, 16
  %268 = uitofp i32 %267 to float
  %269 = and i32 %241, 65535
  %270 = and i32 %241, 50331648
  %271 = icmp eq i32 %270, 33554432
  %272 = call float @dx.op.dot3.f32(i32 55, float %244, float %245, float %246, float %244, float %245, float %246)  ; Dot3(ax,ay,az,bx,by,bz)
  %273 = fsub fast float %117, %252
  %274 = fsub fast float %118, %253
  %275 = fsub fast float %119, %254
  %276 = call float @dx.op.dot3.f32(i32 55, float %273, float %274, float %275, float %244, float %245, float %246)  ; Dot3(ax,ay,az,bx,by,bz)
  %277 = fdiv fast float %276, %272
  %278 = call float @dx.op.binary.f32(i32 35, float %277, float -1.000000e+00)  ; FMax(a,b)
  %279 = call float @dx.op.binary.f32(i32 36, float %278, float 1.000000e+00)  ; FMin(a,b)
  %280 = fmul fast float %279, %244
  %281 = fmul fast float %279, %245
  %282 = fmul fast float %279, %246
  %283 = fadd fast float %280, %252
  %284 = fadd fast float %281, %253
  %285 = fadd fast float %282, %254
  %286 = fsub fast float %283, %117
  %287 = fsub fast float %284, %118
  %288 = fsub fast float %285, %119
  %289 = call float @dx.op.dot3.f32(i32 55, float %286, float %287, float %288, float %286, float %287, float %288)  ; Dot3(ax,ay,az,bx,by,bz)
  %290 = call float @dx.op.unary.f32(i32 24, float %289)  ; Sqrt(value)
  %291 = fdiv fast float 1.000000e+00, %290
  %292 = fmul fast float %286, %291
  %293 = fmul fast float %287, %291
  %294 = fmul fast float %288, %291
  br i1 %271, label %295, label %319, !dx.controlflow.hints !41

; <label>:295                                     ; preds = %225
  %296 = fmul fast float %260, %236
  %297 = fmul fast float %260, %237
  %298 = fmul fast float %260, %238
  %299 = fsub fast float %296, %117
  %300 = fadd fast float %299, %283
  %301 = fsub fast float %297, %118
  %302 = fadd fast float %301, %284
  %303 = fsub fast float %298, %119
  %304 = fadd fast float %303, %285
  %305 = call float @dx.op.dot3.f32(i32 55, float %300, float %302, float %304, float %300, float %302, float %304)  ; Dot3(ax,ay,az,bx,by,bz)
  %306 = call float @dx.op.unary.f32(i32 25, float %305)  ; Rsqrt(value)
  %307 = fmul fast float %306, %300
  %308 = fmul fast float %306, %302
  %309 = fmul fast float %306, %304
  %310 = fsub fast float %117, %283
  %311 = fsub fast float %118, %284
  %312 = fsub fast float %119, %285
  %313 = fsub fast float -0.000000e+00, %310
  %314 = fsub fast float -0.000000e+00, %311
  %315 = fsub fast float -0.000000e+00, %312
  %316 = call float @dx.op.dot3.f32(i32 55, float %313, float %314, float %315, float %236, float %237, float %238)  ; Dot3(ax,ay,az,bx,by,bz)
  %317 = fcmp fast ogt float %316, 0.000000e+00
  %318 = uitofp i1 %317 to float
  br label %319

; <label>:319                                     ; preds = %295, %225
  %320 = phi float [ %318, %295 ], [ 1.000000e+00, %225 ]
  %321 = phi float [ %307, %295 ], [ %292, %225 ]
  %322 = phi float [ %308, %295 ], [ %293, %225 ]
  %323 = phi float [ %309, %295 ], [ %294, %225 ]
  %324 = call float @dx.op.dot3.f32(i32 55, float %236, float %237, float %238, float %321, float %322, float %323)  ; Dot3(ax,ay,az,bx,by,bz)
  %325 = fmul fast float %324, %324
  %326 = call float @dx.op.unary.f32(i32 7, float %325)  ; Saturate(value)
  %327 = fsub fast float 1.000000e+00, %326
  %328 = fmul fast float %327, 5.000000e-01
  %329 = fcmp fast ogt float %324, 0.000000e+00
  %330 = fsub fast float 1.000000e+00, %328
  %331 = select i1 %329, float %328, float %330
  %332 = fmul fast float %331, %268
  %333 = fadd fast float %332, %266
  %334 = fmul fast float %333, 0x3EF0001000000000
  %335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %16, float %334, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %336 = extractvalue %dx.types.ResRet.f32 %335, 0
  %337 = fmul fast float %324, %258
  %338 = fadd fast float %337, %259
  %339 = call float @dx.op.unary.f32(i32 7, float %338)  ; Saturate(value)
  %340 = select i1 %271, float 1.000000e+00, float %339
  %341 = select i1 %271, float %339, float 1.000000e+00
  %342 = fmul fast float %290, %255
  %343 = fsub fast float 1.000000e+00, %342
  %344 = fmul fast float %343, %261
  %345 = call float @dx.op.unary.f32(i32 7, float %344)  ; Saturate(value)
  %346 = fmul fast float %345, %341
  %347 = fmul fast float %346, 2.000000e+00
  %348 = fsub fast float 3.000000e+00, %347
  %349 = fmul fast float %336, %320
  %350 = fmul fast float %346, %346
  %351 = fmul fast float %350, %349
  %352 = fmul fast float %351, %348
  %353 = icmp ne i32 %269, 255
  %354 = call float @dx.op.binary.f32(i32 36, float %352, float %352)  ; FMin(a,b)
  %355 = call float @dx.op.binary.f32(i32 36, float %352, float %354)  ; FMin(a,b)
  %356 = fcmp fast ogt float %355, 0.000000e+00
  %357 = and i1 %353, %356
  br i1 %357, label %358, label %1151, !dx.controlflow.hints !42

; <label>:358                                     ; preds = %319
  %359 = mul nuw nsw i32 %269, 176
  %360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.f32 %360, 0
  %362 = extractvalue %dx.types.ResRet.f32 %360, 1
  %363 = extractvalue %dx.types.ResRet.f32 %360, 2
  %364 = extractvalue %dx.types.ResRet.f32 %360, 3
  %365 = add nuw nsw i32 %359, 16
  %366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.f32 %366, 0
  %368 = extractvalue %dx.types.ResRet.f32 %366, 1
  %369 = add nuw nsw i32 %359, 32
  %370 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.f32 %370, 0
  %372 = extractvalue %dx.types.ResRet.f32 %370, 1
  %373 = extractvalue %dx.types.ResRet.f32 %370, 2
  %374 = extractvalue %dx.types.ResRet.f32 %370, 3
  %375 = add nuw nsw i32 %359, 48
  %376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.f32 %376, 0
  %378 = extractvalue %dx.types.ResRet.f32 %376, 1
  %379 = extractvalue %dx.types.ResRet.f32 %376, 2
  %380 = extractvalue %dx.types.ResRet.f32 %376, 3
  %381 = add nuw nsw i32 %359, 64
  %382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.f32 %382, 0
  %384 = extractvalue %dx.types.ResRet.f32 %382, 1
  %385 = extractvalue %dx.types.ResRet.f32 %382, 2
  %386 = extractvalue %dx.types.ResRet.f32 %382, 3
  %387 = add nuw nsw i32 %359, 80
  %388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.f32 %388, 0
  %390 = extractvalue %dx.types.ResRet.f32 %388, 1
  %391 = extractvalue %dx.types.ResRet.f32 %388, 2
  %392 = extractvalue %dx.types.ResRet.f32 %388, 3
  %393 = add nuw nsw i32 %359, 96
  %394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.f32 %394, 0
  %396 = extractvalue %dx.types.ResRet.f32 %394, 1
  %397 = extractvalue %dx.types.ResRet.f32 %394, 2
  %398 = extractvalue %dx.types.ResRet.f32 %394, 3
  %399 = add nuw nsw i32 %359, 112
  %400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.f32 %400, 0
  %402 = extractvalue %dx.types.ResRet.f32 %400, 1
  %403 = extractvalue %dx.types.ResRet.f32 %400, 2
  %404 = extractvalue %dx.types.ResRet.f32 %400, 3
  %405 = add nuw nsw i32 %359, 128
  %406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.f32 %406, 0
  %408 = extractvalue %dx.types.ResRet.f32 %406, 1
  %409 = extractvalue %dx.types.ResRet.f32 %406, 2
  %410 = extractvalue %dx.types.ResRet.f32 %406, 3
  %411 = add nuw nsw i32 %359, 144
  %412 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.f32 %412, 0
  %414 = extractvalue %dx.types.ResRet.f32 %412, 1
  %415 = extractvalue %dx.types.ResRet.f32 %412, 2
  %416 = extractvalue %dx.types.ResRet.f32 %412, 3
  %417 = add nuw nsw i32 %359, 160
  %418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.f32 %418, 0
  %420 = extractvalue %dx.types.ResRet.f32 %418, 1
  %421 = extractvalue %dx.types.ResRet.f32 %418, 2
  %422 = extractvalue %dx.types.ResRet.f32 %418, 3
  %423 = bitcast float %368 to i32
  %424 = bitcast float %374 to i32
  %425 = and i32 %424, 1
  %426 = icmp ne i32 %425, 0
  %427 = and i32 %424, 2
  %428 = fmul fast float %146, %373
  %429 = fmul fast float %147, %373
  %430 = fmul fast float %148, %373
  %431 = fadd fast float %428, %117
  %432 = fadd fast float %429, %118
  %433 = fadd fast float %430, %119
  %434 = fmul fast float %431, %377
  %435 = call float @dx.op.tertiary.f32(i32 46, float %432, float %383, float %434)  ; FMad(a,b,c)
  %436 = call float @dx.op.tertiary.f32(i32 46, float %433, float %389, float %435)  ; FMad(a,b,c)
  %437 = fadd fast float %436, %395
  %438 = fmul fast float %431, %378
  %439 = call float @dx.op.tertiary.f32(i32 46, float %432, float %384, float %438)  ; FMad(a,b,c)
  %440 = call float @dx.op.tertiary.f32(i32 46, float %433, float %390, float %439)  ; FMad(a,b,c)
  %441 = fadd fast float %440, %396
  %442 = fmul fast float %431, %379
  %443 = call float @dx.op.tertiary.f32(i32 46, float %432, float %385, float %442)  ; FMad(a,b,c)
  %444 = call float @dx.op.tertiary.f32(i32 46, float %433, float %391, float %443)  ; FMad(a,b,c)
  %445 = fadd fast float %444, %397
  %446 = fmul fast float %431, %380
  %447 = call float @dx.op.tertiary.f32(i32 46, float %432, float %386, float %446)  ; FMad(a,b,c)
  %448 = call float @dx.op.tertiary.f32(i32 46, float %433, float %392, float %447)  ; FMad(a,b,c)
  %449 = fadd fast float %448, %398
  %450 = fdiv fast float %437, %449
  %451 = fdiv fast float %441, %449
  %452 = fdiv fast float %445, %449
  %453 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %452)  ; FMax(a,b)
  %454 = fmul fast float %159, 0x401921FB60000000
  %455 = call float @dx.op.unary.f32(i32 13, float %454)  ; Sin(value)
  %456 = call float @dx.op.unary.f32(i32 12, float %454)  ; Cos(value)
  %457 = fsub fast float -0.000000e+00, %455
  %458 = icmp eq i32 %427, 0
  br i1 %458, label %459, label %530, !dx.controlflow.hints !43

; <label>:459                                     ; preds = %358
  %460 = fmul fast float %456, %372
  %461 = call float @dx.op.tertiary.f32(i32 46, float %455, float %372, float 0.000000e+00)  ; FMad(a,b,c)
  %462 = fmul fast float %372, %457
  %463 = call float @dx.op.tertiary.f32(i32 46, float %456, float %372, float 0.000000e+00)  ; FMad(a,b,c)
  br label %464

; <label>:464                                     ; preds = %464, %459
  %465 = phi float [ 0.000000e+00, %459 ], [ %497, %464 ]
  %466 = phi float [ 0.000000e+00, %459 ], [ %499, %464 ]
  %467 = phi i32 [ 0, %459 ], [ %500, %464 ]
  %468 = mul i32 %467, 2
  %469 = add i32 0, %468
  %470 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %469
  %471 = load float, float* %470, align 4
  %472 = mul i32 %467, 2
  %473 = add i32 1, %472
  %474 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %473
  %475 = load float, float* %474, align 4
  %476 = fmul fast float %460, %471
  %477 = call float @dx.op.tertiary.f32(i32 46, float %475, float %462, float %476)  ; FMad(a,b,c)
  %478 = fmul fast float %471, %461
  %479 = call float @dx.op.tertiary.f32(i32 46, float %475, float %463, float %478)  ; FMad(a,b,c)
  %480 = fadd fast float %477, %450
  %481 = fadd fast float %479, %451
  %482 = fmul fast float %480, %367
  %483 = fmul fast float %481, %367
  %484 = call float @dx.op.binary.f32(i32 35, float %482, float %363)  ; FMax(a,b)
  %485 = call float @dx.op.binary.f32(i32 35, float %483, float %363)  ; FMax(a,b)
  %486 = call float @dx.op.binary.f32(i32 36, float %484, float %364)  ; FMin(a,b)
  %487 = call float @dx.op.binary.f32(i32 36, float %485, float %364)  ; FMin(a,b)
  %488 = fadd fast float %486, %361
  %489 = fadd fast float %487, %362
  %490 = uitofp i32 %423 to float
  %491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %488, float %489, float %490, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %492 = extractvalue %dx.types.ResRet.f32 %491, 0
  %493 = fsub fast float %492, %453
  %494 = fsub fast float %493, %371
  %495 = fcmp fast ogt float %494, 0.000000e+00
  %496 = select i1 %495, float 1.000000e+00, float 0.000000e+00
  %497 = fadd fast float %496, %465
  %498 = select i1 %495, float %494, float 0.000000e+00
  %499 = fadd fast float %498, %466
  %500 = add nuw nsw i32 %467, 1
  %501 = icmp eq i32 %500, 8
  br i1 %501, label %502, label %464

; <label>:502                                     ; preds = %464
  %503 = fdiv fast float 1.000000e+00, %497
  %504 = fmul fast float %503, %499
  %505 = fdiv fast float 1.000000e+00, %453
  %506 = fmul fast float %504, %505
  %507 = call float @dx.op.unary.f32(i32 7, float %506)  ; Saturate(value)
  %508 = call float @dx.op.binary.f32(i32 35, float %507, float 0.000000e+00)  ; FMax(a,b)
  %509 = fmul fast float %497, 1.250000e-01
  %510 = call float @dx.op.unary.f32(i32 7, float %509)  ; Saturate(value)
  %511 = fmul fast float %510, 2.000000e+00
  %512 = fadd fast float %511, -1.000000e+00
  %513 = fcmp fast ogt float %512, 0.000000e+00
  %514 = fcmp fast olt float %512, 0.000000e+00
  %515 = zext i1 %513 to i32
  %516 = zext i1 %514 to i32
  %517 = sub nsw i32 %515, %516
  %518 = sitofp i32 %517 to float
  %519 = fmul fast float %518, %512
  %520 = fsub fast float 1.000000e+00, %519
  %521 = fmul fast float %520, %520
  %522 = fmul fast float %521, %520
  %523 = fsub fast float %520, %522
  %524 = fmul fast float %523, %508
  %525 = fsub fast float 1.000000e+00, %522
  %526 = fsub fast float %525, %524
  %527 = fmul fast float %518, 5.000000e-01
  %528 = fmul fast float %527, %526
  %529 = fsub fast float 5.000000e-01, %528
  br label %1145

; <label>:530                                     ; preds = %358
  %531 = fsub fast float 1.000000e+00, %453
  %532 = fmul fast float %531, 5.000000e-01
  %533 = fadd fast float %532, %453
  %534 = fsub fast float %431, %252
  %535 = fsub fast float %432, %253
  %536 = fsub fast float %433, %254
  %537 = call float @dx.op.dot3.f32(i32 55, float %534, float %535, float %536, float %244, float %245, float %246)  ; Dot3(ax,ay,az,bx,by,bz)
  %538 = fdiv fast float %537, %272
  %539 = call float @dx.op.binary.f32(i32 35, float %538, float -1.000000e+00)  ; FMax(a,b)
  %540 = call float @dx.op.binary.f32(i32 36, float %539, float 1.000000e+00)  ; FMin(a,b)
  %541 = fmul fast float %540, %244
  %542 = fmul fast float %540, %245
  %543 = fmul fast float %540, %246
  %544 = fsub fast float %534, %541
  %545 = fsub fast float %535, %542
  %546 = fsub fast float %536, %543
  %547 = call float @dx.op.dot3.f32(i32 55, float %544, float %545, float %546, float %544, float %545, float %546)  ; Dot3(ax,ay,az,bx,by,bz)
  %548 = call float @dx.op.unary.f32(i32 25, float %547)  ; Rsqrt(value)
  %549 = fmul fast float %544, %548
  %550 = fmul fast float %545, %548
  %551 = fmul fast float %546, %548
  %552 = call float @dx.op.unary.f32(i32 25, float %272)  ; Rsqrt(value)
  %553 = fmul fast float %552, %244
  %554 = fmul fast float %552, %245
  %555 = fmul fast float %552, %246
  br i1 %426, label %556, label %560, !dx.controlflow.hints !44

; <label>:556                                     ; preds = %530
  %557 = fcmp fast olt float %550, 0x3FE6666660000000
  %558 = select i1 %557, float 1.000000e+00, float 0.000000e+00
  %559 = select i1 %557, float 0.000000e+00, float 1.000000e+00
  br label %560

; <label>:560                                     ; preds = %556, %530
  %561 = phi float [ 0.000000e+00, %556 ], [ %553, %530 ]
  %562 = phi float [ %558, %556 ], [ %554, %530 ]
  %563 = phi float [ %559, %556 ], [ %555, %530 ]
  %564 = fmul fast float %562, %551
  %565 = fmul fast float %563, %550
  %566 = fsub fast float %564, %565
  %567 = fmul fast float %563, %549
  %568 = fmul fast float %561, %551
  %569 = fsub fast float %567, %568
  %570 = fmul fast float %561, %550
  %571 = fmul fast float %562, %549
  %572 = fsub fast float %570, %571
  %573 = call float @dx.op.dot3.f32(i32 55, float %566, float %569, float %572, float %566, float %569, float %572)  ; Dot3(ax,ay,az,bx,by,bz)
  %574 = call float @dx.op.unary.f32(i32 25, float %573)  ; Rsqrt(value)
  %575 = fmul fast float %574, %249
  %576 = fmul fast float %575, %566
  %577 = fmul fast float %575, %569
  %578 = fmul fast float %572, %249
  %579 = fmul fast float %578, %574
  %580 = fmul fast float %450, %401
  %581 = call float @dx.op.tertiary.f32(i32 46, float %451, float %407, float %580)  ; FMad(a,b,c)
  %582 = call float @dx.op.tertiary.f32(i32 46, float %533, float %413, float %581)  ; FMad(a,b,c)
  %583 = fadd fast float %582, %419
  %584 = fmul fast float %450, %402
  %585 = call float @dx.op.tertiary.f32(i32 46, float %451, float %408, float %584)  ; FMad(a,b,c)
  %586 = call float @dx.op.tertiary.f32(i32 46, float %533, float %414, float %585)  ; FMad(a,b,c)
  %587 = fadd fast float %586, %420
  %588 = fmul fast float %450, %403
  %589 = call float @dx.op.tertiary.f32(i32 46, float %451, float %409, float %588)  ; FMad(a,b,c)
  %590 = call float @dx.op.tertiary.f32(i32 46, float %533, float %415, float %589)  ; FMad(a,b,c)
  %591 = fadd fast float %590, %421
  %592 = fmul fast float %450, %404
  %593 = call float @dx.op.tertiary.f32(i32 46, float %451, float %410, float %592)  ; FMad(a,b,c)
  %594 = call float @dx.op.tertiary.f32(i32 46, float %533, float %416, float %593)  ; FMad(a,b,c)
  %595 = fadd fast float %594, %422
  %596 = fdiv fast float 1.000000e+00, %595
  %597 = fmul fast float %596, %583
  %598 = fmul fast float %596, %587
  %599 = fmul fast float %596, %591
  %600 = fsub fast float -0.000000e+00, %549
  %601 = fsub fast float -0.000000e+00, %550
  %602 = fsub fast float -0.000000e+00, %551
  %603 = fsub fast float %252, %576
  %604 = fsub fast float %253, %577
  %605 = fsub fast float %254, %579
  %606 = fsub fast float %597, %603
  %607 = fsub fast float %598, %604
  %608 = fsub fast float %599, %605
  %609 = call float @dx.op.dot3.f32(i32 55, float %606, float %607, float %608, float %606, float %607, float %608)  ; Dot3(ax,ay,az,bx,by,bz)
  %610 = call float @dx.op.unary.f32(i32 25, float %609)  ; Rsqrt(value)
  %611 = fmul fast float %606, %610
  %612 = fmul fast float %607, %610
  %613 = fmul fast float %608, %610
  %614 = fsub fast float %431, %603
  %615 = fsub fast float %432, %604
  %616 = fsub fast float %433, %605
  %617 = call float @dx.op.dot3.f32(i32 55, float %600, float %601, float %602, float %614, float %615, float %616)  ; Dot3(ax,ay,az,bx,by,bz)
  %618 = call float @dx.op.dot3.f32(i32 55, float %600, float %601, float %602, float %611, float %612, float %613)  ; Dot3(ax,ay,az,bx,by,bz)
  %619 = fdiv fast float 1.000000e+00, %618
  %620 = fmul fast float %619, %617
  %621 = fmul fast float %620, %611
  %622 = fmul fast float %620, %612
  %623 = fmul fast float %620, %613
  %624 = fadd fast float %621, %603
  %625 = fadd fast float %622, %604
  %626 = fadd fast float %623, %605
  %627 = fadd fast float %576, %252
  %628 = fadd fast float %577, %253
  %629 = fadd fast float %579, %254
  %630 = fsub fast float %597, %627
  %631 = fsub fast float %598, %628
  %632 = fsub fast float %599, %629
  %633 = call float @dx.op.dot3.f32(i32 55, float %630, float %631, float %632, float %630, float %631, float %632)  ; Dot3(ax,ay,az,bx,by,bz)
  %634 = call float @dx.op.unary.f32(i32 25, float %633)  ; Rsqrt(value)
  %635 = fmul fast float %634, %630
  %636 = fmul fast float %634, %631
  %637 = fmul fast float %634, %632
  %638 = fsub fast float %431, %627
  %639 = fsub fast float %432, %628
  %640 = fsub fast float %433, %629
  %641 = call float @dx.op.dot3.f32(i32 55, float %600, float %601, float %602, float %638, float %639, float %640)  ; Dot3(ax,ay,az,bx,by,bz)
  %642 = call float @dx.op.dot3.f32(i32 55, float %600, float %601, float %602, float %635, float %636, float %637)  ; Dot3(ax,ay,az,bx,by,bz)
  %643 = fdiv fast float 1.000000e+00, %642
  %644 = fmul fast float %643, %641
  %645 = fmul fast float %644, %635
  %646 = fmul fast float %644, %636
  %647 = fmul fast float %644, %637
  %648 = fadd fast float %645, %627
  %649 = fadd fast float %646, %628
  %650 = fadd fast float %647, %629
  %651 = fmul fast float %624, %377
  %652 = call float @dx.op.tertiary.f32(i32 46, float %625, float %383, float %651)  ; FMad(a,b,c)
  %653 = call float @dx.op.tertiary.f32(i32 46, float %626, float %389, float %652)  ; FMad(a,b,c)
  %654 = fadd fast float %653, %395
  %655 = fmul fast float %624, %378
  %656 = call float @dx.op.tertiary.f32(i32 46, float %625, float %384, float %655)  ; FMad(a,b,c)
  %657 = call float @dx.op.tertiary.f32(i32 46, float %626, float %390, float %656)  ; FMad(a,b,c)
  %658 = fadd fast float %657, %396
  %659 = fmul fast float %624, %380
  %660 = call float @dx.op.tertiary.f32(i32 46, float %625, float %386, float %659)  ; FMad(a,b,c)
  %661 = call float @dx.op.tertiary.f32(i32 46, float %626, float %392, float %660)  ; FMad(a,b,c)
  %662 = fadd fast float %661, %398
  %663 = fmul fast float %648, %377
  %664 = call float @dx.op.tertiary.f32(i32 46, float %649, float %383, float %663)  ; FMad(a,b,c)
  %665 = call float @dx.op.tertiary.f32(i32 46, float %650, float %389, float %664)  ; FMad(a,b,c)
  %666 = fadd fast float %665, %395
  %667 = fmul fast float %648, %378
  %668 = call float @dx.op.tertiary.f32(i32 46, float %649, float %384, float %667)  ; FMad(a,b,c)
  %669 = call float @dx.op.tertiary.f32(i32 46, float %650, float %390, float %668)  ; FMad(a,b,c)
  %670 = fadd fast float %669, %396
  %671 = fmul fast float %648, %380
  %672 = call float @dx.op.tertiary.f32(i32 46, float %649, float %386, float %671)  ; FMad(a,b,c)
  %673 = call float @dx.op.tertiary.f32(i32 46, float %650, float %392, float %672)  ; FMad(a,b,c)
  %674 = fadd fast float %673, %398
  %675 = fdiv fast float 1.000000e+00, %662
  %676 = fmul fast float %675, %654
  %677 = fmul fast float %675, %658
  %678 = fdiv fast float 1.000000e+00, %674
  %679 = fmul fast float %678, %666
  %680 = fmul fast float %678, %670
  %681 = fsub fast float %679, %676
  %682 = fsub fast float %680, %677
  %683 = call float @dx.op.dot2.f32(i32 54, float %681, float %682, float %681, float %682)  ; Dot2(ax,ay,bx,by)
  %684 = call float @dx.op.unary.f32(i32 25, float %683)  ; Rsqrt(value)
  %685 = fmul fast float %681, %684
  %686 = fmul fast float %682, %684
  %687 = fmul fast float %681, %681
  %688 = fmul fast float %682, %682
  %689 = fadd fast float %687, %688
  %690 = call float @dx.op.unary.f32(i32 24, float %689)  ; Sqrt(value)
  %691 = fmul fast float %690, 5.000000e-01
  br i1 %426, label %784, label %692, !dx.controlflow.hints !45

; <label>:692                                     ; preds = %560
  %693 = fsub fast float %252, %244
  %694 = fsub fast float %253, %245
  %695 = fsub fast float %254, %246
  %696 = fsub fast float %597, %693
  %697 = fsub fast float %598, %694
  %698 = fsub fast float %599, %695
  %699 = call float @dx.op.dot3.f32(i32 55, float %696, float %697, float %698, float %696, float %697, float %698)  ; Dot3(ax,ay,az,bx,by,bz)
  %700 = call float @dx.op.unary.f32(i32 25, float %699)  ; Rsqrt(value)
  %701 = fmul fast float %700, %696
  %702 = fmul fast float %700, %697
  %703 = fmul fast float %700, %698
  %704 = fsub fast float %431, %693
  %705 = fsub fast float %432, %694
  %706 = fsub fast float %433, %695
  %707 = call float @dx.op.dot3.f32(i32 55, float %600, float %601, float %602, float %704, float %705, float %706)  ; Dot3(ax,ay,az,bx,by,bz)
  %708 = call float @dx.op.dot3.f32(i32 55, float %600, float %601, float %602, float %701, float %702, float %703)  ; Dot3(ax,ay,az,bx,by,bz)
  %709 = fdiv fast float 1.000000e+00, %708
  %710 = fmul fast float %709, %707
  %711 = fmul fast float %710, %701
  %712 = fmul fast float %710, %702
  %713 = fmul fast float %710, %703
  %714 = fadd fast float %711, %693
  %715 = fadd fast float %712, %694
  %716 = fadd fast float %713, %695
  %717 = fadd fast float %252, %244
  %718 = fadd fast float %253, %245
  %719 = fadd fast float %254, %246
  %720 = fsub fast float %597, %717
  %721 = fsub fast float %598, %718
  %722 = fsub fast float %599, %719
  %723 = call float @dx.op.dot3.f32(i32 55, float %720, float %721, float %722, float %720, float %721, float %722)  ; Dot3(ax,ay,az,bx,by,bz)
  %724 = call float @dx.op.unary.f32(i32 25, float %723)  ; Rsqrt(value)
  %725 = fmul fast float %724, %720
  %726 = fmul fast float %724, %721
  %727 = fmul fast float %724, %722
  %728 = fsub fast float %431, %717
  %729 = fsub fast float %432, %718
  %730 = fsub fast float %433, %719
  %731 = call float @dx.op.dot3.f32(i32 55, float %600, float %601, float %602, float %728, float %729, float %730)  ; Dot3(ax,ay,az,bx,by,bz)
  %732 = call float @dx.op.dot3.f32(i32 55, float %600, float %601, float %602, float %725, float %726, float %727)  ; Dot3(ax,ay,az,bx,by,bz)
  %733 = fdiv fast float 1.000000e+00, %732
  %734 = fmul fast float %733, %731
  %735 = fmul fast float %734, %725
  %736 = fmul fast float %734, %726
  %737 = fmul fast float %734, %727
  %738 = fadd fast float %735, %717
  %739 = fadd fast float %736, %718
  %740 = fadd fast float %737, %719
  %741 = fmul fast float %714, %377
  %742 = call float @dx.op.tertiary.f32(i32 46, float %715, float %383, float %741)  ; FMad(a,b,c)
  %743 = call float @dx.op.tertiary.f32(i32 46, float %716, float %389, float %742)  ; FMad(a,b,c)
  %744 = fadd fast float %743, %395
  %745 = fmul fast float %714, %378
  %746 = call float @dx.op.tertiary.f32(i32 46, float %715, float %384, float %745)  ; FMad(a,b,c)
  %747 = call float @dx.op.tertiary.f32(i32 46, float %716, float %390, float %746)  ; FMad(a,b,c)
  %748 = fadd fast float %747, %396
  %749 = fmul fast float %714, %380
  %750 = call float @dx.op.tertiary.f32(i32 46, float %715, float %386, float %749)  ; FMad(a,b,c)
  %751 = call float @dx.op.tertiary.f32(i32 46, float %716, float %392, float %750)  ; FMad(a,b,c)
  %752 = fadd fast float %751, %398
  %753 = fmul fast float %738, %377
  %754 = call float @dx.op.tertiary.f32(i32 46, float %739, float %383, float %753)  ; FMad(a,b,c)
  %755 = call float @dx.op.tertiary.f32(i32 46, float %740, float %389, float %754)  ; FMad(a,b,c)
  %756 = fadd fast float %755, %395
  %757 = fmul fast float %738, %378
  %758 = call float @dx.op.tertiary.f32(i32 46, float %739, float %384, float %757)  ; FMad(a,b,c)
  %759 = call float @dx.op.tertiary.f32(i32 46, float %740, float %390, float %758)  ; FMad(a,b,c)
  %760 = fadd fast float %759, %396
  %761 = fmul fast float %738, %380
  %762 = call float @dx.op.tertiary.f32(i32 46, float %739, float %386, float %761)  ; FMad(a,b,c)
  %763 = call float @dx.op.tertiary.f32(i32 46, float %740, float %392, float %762)  ; FMad(a,b,c)
  %764 = fadd fast float %763, %398
  %765 = fdiv fast float 1.000000e+00, %752
  %766 = fmul fast float %765, %744
  %767 = fmul fast float %765, %748
  %768 = fdiv fast float 1.000000e+00, %764
  %769 = fmul fast float %768, %756
  %770 = fmul fast float %768, %760
  %771 = fsub fast float %769, %766
  %772 = fsub fast float %770, %767
  %773 = call float @dx.op.dot2.f32(i32 54, float %771, float %772, float %771, float %772)  ; Dot2(ax,ay,bx,by)
  %774 = call float @dx.op.unary.f32(i32 25, float %773)  ; Rsqrt(value)
  %775 = fmul fast float %771, %774
  %776 = fmul fast float %772, %774
  %777 = fmul fast float %771, %771
  %778 = fmul fast float %772, %772
  %779 = fadd fast float %777, %778
  %780 = call float @dx.op.unary.f32(i32 24, float %779)  ; Sqrt(value)
  %781 = fmul fast float %780, 5.000000e-01
  %782 = fcmp fast olt float %781, %691
  br i1 %782, label %783, label %784, !dx.controlflow.hints !46

; <label>:783                                     ; preds = %692
  br label %784

; <label>:784                                     ; preds = %783, %692, %560
  %785 = phi float [ %691, %560 ], [ %781, %783 ], [ %691, %692 ]
  %786 = phi float [ %691, %560 ], [ %691, %783 ], [ %781, %692 ]
  %787 = phi float [ %685, %560 ], [ %685, %783 ], [ %775, %692 ]
  %788 = phi float [ %686, %560 ], [ %686, %783 ], [ %776, %692 ]
  %789 = fmul fast float %785, %372
  %790 = fdiv fast float %789, %786
  %791 = fsub fast float %372, %790
  %792 = fmul fast float %787, %787
  %793 = fmul fast float %792, %791
  %794 = fadd fast float %793, %790
  %795 = fmul fast float %788, %787
  %796 = fmul fast float %795, %791
  %797 = fmul fast float %788, %788
  %798 = fmul fast float %797, %791
  %799 = fadd fast float %798, %790
  %800 = fmul fast float %794, %456
  %801 = call float @dx.op.tertiary.f32(i32 46, float %455, float %796, float %800)  ; FMad(a,b,c)
  %802 = fmul fast float %796, %456
  %803 = call float @dx.op.tertiary.f32(i32 46, float %455, float %799, float %802)  ; FMad(a,b,c)
  %804 = fmul fast float %794, %457
  %805 = call float @dx.op.tertiary.f32(i32 46, float %456, float %796, float %804)  ; FMad(a,b,c)
  %806 = fmul fast float %796, %457
  %807 = call float @dx.op.tertiary.f32(i32 46, float %456, float %799, float %806)  ; FMad(a,b,c)
  br label %808

; <label>:808                                     ; preds = %846, %784
  %809 = phi float [ 0.000000e+00, %784 ], [ %847, %846 ]
  %810 = phi float [ 0.000000e+00, %784 ], [ %848, %846 ]
  %811 = phi float [ 0.000000e+00, %784 ], [ %849, %846 ]
  %812 = phi float [ 0.000000e+00, %784 ], [ %850, %846 ]
  %813 = phi i32 [ 0, %784 ], [ %851, %846 ]
  %814 = mul i32 %813, 2
  %815 = add i32 0, %814
  %816 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %815
  %817 = load float, float* %816, align 4
  %818 = mul i32 %813, 2
  %819 = add i32 1, %818
  %820 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %819
  %821 = load float, float* %820, align 4
  %822 = fmul fast float %817, %801
  %823 = call float @dx.op.tertiary.f32(i32 46, float %821, float %805, float %822)  ; FMad(a,b,c)
  %824 = fmul fast float %817, %803
  %825 = call float @dx.op.tertiary.f32(i32 46, float %821, float %807, float %824)  ; FMad(a,b,c)
  %826 = fadd fast float %823, %450
  %827 = fadd fast float %825, %451
  %828 = fmul fast float %826, %367
  %829 = fmul fast float %827, %367
  %830 = call float @dx.op.binary.f32(i32 35, float %828, float %363)  ; FMax(a,b)
  %831 = call float @dx.op.binary.f32(i32 35, float %829, float %363)  ; FMax(a,b)
  %832 = call float @dx.op.binary.f32(i32 36, float %830, float %364)  ; FMin(a,b)
  %833 = call float @dx.op.binary.f32(i32 36, float %831, float %364)  ; FMin(a,b)
  %834 = fadd fast float %832, %361
  %835 = fadd fast float %833, %362
  %836 = uitofp i32 %423 to float
  %837 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %834, float %835, float %836, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %838 = extractvalue %dx.types.ResRet.f32 %837, 0
  %839 = fadd fast float %453, %371
  %840 = fcmp fast olt float %839, %838
  br i1 %840, label %841, label %846, !dx.controlflow.hints !47

; <label>:841                                     ; preds = %808
  %842 = fadd fast float %838, %811
  %843 = fadd fast float %823, %809
  %844 = fadd fast float %825, %810
  %845 = fadd fast float %812, 1.000000e+00
  br label %846

; <label>:846                                     ; preds = %841, %808
  %847 = phi float [ %843, %841 ], [ %809, %808 ]
  %848 = phi float [ %844, %841 ], [ %810, %808 ]
  %849 = phi float [ %842, %841 ], [ %811, %808 ]
  %850 = phi float [ %845, %841 ], [ %812, %808 ]
  %851 = add nuw nsw i32 %813, 1
  %852 = icmp eq i32 %851, 8
  br i1 %852, label %853, label %808

; <label>:853                                     ; preds = %846
  %854 = fdiv fast float 1.000000e+00, %850
  %855 = fcmp fast oeq float %850, 0.000000e+00
  %856 = fmul fast float %854, %849
  %857 = select i1 %855, float -1.000000e+00, float %856
  %858 = fcmp fast olt float %857, 0.000000e+00
  br i1 %858, label %1145, label %859, !dx.controlflow.hints !48

; <label>:859                                     ; preds = %853
  %860 = fmul fast float %854, %848
  %861 = select i1 %855, float 0.000000e+00, float %860
  %862 = fmul fast float %854, %847
  %863 = select i1 %855, float 0.000000e+00, float %862
  %864 = fadd fast float %863, %450
  %865 = fadd fast float %861, %451
  br i1 %426, label %866, label %870, !dx.controlflow.hints !44

; <label>:866                                     ; preds = %859
  %867 = fcmp fast olt float %550, 0x3FE6666660000000
  %868 = select i1 %867, float 1.000000e+00, float 0.000000e+00
  %869 = select i1 %867, float 0.000000e+00, float 1.000000e+00
  br label %870

; <label>:870                                     ; preds = %866, %859
  %871 = phi float [ 0.000000e+00, %866 ], [ %553, %859 ]
  %872 = phi float [ %868, %866 ], [ %554, %859 ]
  %873 = phi float [ %869, %866 ], [ %555, %859 ]
  %874 = fmul fast float %872, %551
  %875 = fmul fast float %873, %550
  %876 = fsub fast float %874, %875
  %877 = fmul fast float %873, %549
  %878 = fmul fast float %871, %551
  %879 = fsub fast float %877, %878
  %880 = fmul fast float %871, %550
  %881 = fmul fast float %872, %549
  %882 = fsub fast float %880, %881
  %883 = call float @dx.op.dot3.f32(i32 55, float %876, float %879, float %882, float %876, float %879, float %882)  ; Dot3(ax,ay,az,bx,by,bz)
  %884 = call float @dx.op.unary.f32(i32 25, float %883)  ; Rsqrt(value)
  %885 = fmul fast float %884, %249
  %886 = fmul fast float %885, %876
  %887 = fmul fast float %885, %879
  %888 = fmul fast float %882, %249
  %889 = fmul fast float %888, %884
  %890 = fmul fast float %864, %401
  %891 = call float @dx.op.tertiary.f32(i32 46, float %865, float %407, float %890)  ; FMad(a,b,c)
  %892 = call float @dx.op.tertiary.f32(i32 46, float %857, float %413, float %891)  ; FMad(a,b,c)
  %893 = fadd fast float %892, %419
  %894 = fmul fast float %864, %402
  %895 = call float @dx.op.tertiary.f32(i32 46, float %865, float %408, float %894)  ; FMad(a,b,c)
  %896 = call float @dx.op.tertiary.f32(i32 46, float %857, float %414, float %895)  ; FMad(a,b,c)
  %897 = fadd fast float %896, %420
  %898 = fmul fast float %864, %403
  %899 = call float @dx.op.tertiary.f32(i32 46, float %865, float %409, float %898)  ; FMad(a,b,c)
  %900 = call float @dx.op.tertiary.f32(i32 46, float %857, float %415, float %899)  ; FMad(a,b,c)
  %901 = fadd fast float %900, %421
  %902 = fmul fast float %864, %404
  %903 = call float @dx.op.tertiary.f32(i32 46, float %865, float %410, float %902)  ; FMad(a,b,c)
  %904 = call float @dx.op.tertiary.f32(i32 46, float %857, float %416, float %903)  ; FMad(a,b,c)
  %905 = fadd fast float %904, %422
  %906 = fdiv fast float 1.000000e+00, %905
  %907 = fmul fast float %906, %893
  %908 = fmul fast float %906, %897
  %909 = fmul fast float %906, %901
  %910 = fsub fast float %252, %886
  %911 = fsub fast float %253, %887
  %912 = fsub fast float %254, %889
  %913 = fsub fast float %907, %910
  %914 = fsub fast float %908, %911
  %915 = fsub fast float %909, %912
  %916 = call float @dx.op.dot3.f32(i32 55, float %913, float %914, float %915, float %913, float %914, float %915)  ; Dot3(ax,ay,az,bx,by,bz)
  %917 = call float @dx.op.unary.f32(i32 25, float %916)  ; Rsqrt(value)
  %918 = fmul fast float %913, %917
  %919 = fmul fast float %914, %917
  %920 = fmul fast float %915, %917
  %921 = fsub fast float %431, %910
  %922 = fsub fast float %432, %911
  %923 = fsub fast float %433, %912
  %924 = call float @dx.op.dot3.f32(i32 55, float %600, float %601, float %602, float %921, float %922, float %923)  ; Dot3(ax,ay,az,bx,by,bz)
  %925 = call float @dx.op.dot3.f32(i32 55, float %600, float %601, float %602, float %918, float %919, float %920)  ; Dot3(ax,ay,az,bx,by,bz)
  %926 = fdiv fast float 1.000000e+00, %925
  %927 = fmul fast float %926, %924
  %928 = fmul fast float %927, %918
  %929 = fmul fast float %927, %919
  %930 = fmul fast float %927, %920
  %931 = fadd fast float %928, %910
  %932 = fadd fast float %929, %911
  %933 = fadd fast float %930, %912
  %934 = fadd fast float %886, %252
  %935 = fadd fast float %887, %253
  %936 = fadd fast float %889, %254
  %937 = fsub fast float %907, %934
  %938 = fsub fast float %908, %935
  %939 = fsub fast float %909, %936
  %940 = call float @dx.op.dot3.f32(i32 55, float %937, float %938, float %939, float %937, float %938, float %939)  ; Dot3(ax,ay,az,bx,by,bz)
  %941 = call float @dx.op.unary.f32(i32 25, float %940)  ; Rsqrt(value)
  %942 = fmul fast float %941, %937
  %943 = fmul fast float %941, %938
  %944 = fmul fast float %941, %939
  %945 = fsub fast float %431, %934
  %946 = fsub fast float %432, %935
  %947 = fsub fast float %433, %936
  %948 = call float @dx.op.dot3.f32(i32 55, float %600, float %601, float %602, float %945, float %946, float %947)  ; Dot3(ax,ay,az,bx,by,bz)
  %949 = call float @dx.op.dot3.f32(i32 55, float %600, float %601, float %602, float %942, float %943, float %944)  ; Dot3(ax,ay,az,bx,by,bz)
  %950 = fdiv fast float 1.000000e+00, %949
  %951 = fmul fast float %950, %948
  %952 = fmul fast float %951, %942
  %953 = fmul fast float %951, %943
  %954 = fmul fast float %951, %944
  %955 = fadd fast float %952, %934
  %956 = fadd fast float %953, %935
  %957 = fadd fast float %954, %936
  %958 = fmul fast float %931, %377
  %959 = call float @dx.op.tertiary.f32(i32 46, float %932, float %383, float %958)  ; FMad(a,b,c)
  %960 = call float @dx.op.tertiary.f32(i32 46, float %933, float %389, float %959)  ; FMad(a,b,c)
  %961 = fadd fast float %960, %395
  %962 = fmul fast float %931, %378
  %963 = call float @dx.op.tertiary.f32(i32 46, float %932, float %384, float %962)  ; FMad(a,b,c)
  %964 = call float @dx.op.tertiary.f32(i32 46, float %933, float %390, float %963)  ; FMad(a,b,c)
  %965 = fadd fast float %964, %396
  %966 = fmul fast float %931, %380
  %967 = call float @dx.op.tertiary.f32(i32 46, float %932, float %386, float %966)  ; FMad(a,b,c)
  %968 = call float @dx.op.tertiary.f32(i32 46, float %933, float %392, float %967)  ; FMad(a,b,c)
  %969 = fadd fast float %968, %398
  %970 = fmul fast float %955, %377
  %971 = call float @dx.op.tertiary.f32(i32 46, float %956, float %383, float %970)  ; FMad(a,b,c)
  %972 = call float @dx.op.tertiary.f32(i32 46, float %957, float %389, float %971)  ; FMad(a,b,c)
  %973 = fadd fast float %972, %395
  %974 = fmul fast float %955, %378
  %975 = call float @dx.op.tertiary.f32(i32 46, float %956, float %384, float %974)  ; FMad(a,b,c)
  %976 = call float @dx.op.tertiary.f32(i32 46, float %957, float %390, float %975)  ; FMad(a,b,c)
  %977 = fadd fast float %976, %396
  %978 = fmul fast float %955, %380
  %979 = call float @dx.op.tertiary.f32(i32 46, float %956, float %386, float %978)  ; FMad(a,b,c)
  %980 = call float @dx.op.tertiary.f32(i32 46, float %957, float %392, float %979)  ; FMad(a,b,c)
  %981 = fadd fast float %980, %398
  %982 = fdiv fast float 1.000000e+00, %969
  %983 = fmul fast float %982, %961
  %984 = fmul fast float %982, %965
  %985 = fdiv fast float 1.000000e+00, %981
  %986 = fmul fast float %985, %973
  %987 = fmul fast float %985, %977
  %988 = fsub fast float %986, %983
  %989 = fsub fast float %987, %984
  %990 = call float @dx.op.dot2.f32(i32 54, float %988, float %989, float %988, float %989)  ; Dot2(ax,ay,bx,by)
  %991 = call float @dx.op.unary.f32(i32 25, float %990)  ; Rsqrt(value)
  %992 = fmul fast float %988, %991
  %993 = fmul fast float %989, %991
  %994 = fmul fast float %988, %988
  %995 = fmul fast float %989, %989
  %996 = fadd fast float %994, %995
  %997 = call float @dx.op.unary.f32(i32 24, float %996)  ; Sqrt(value)
  %998 = fmul fast float %997, 5.000000e-01
  br i1 %426, label %1091, label %999, !dx.controlflow.hints !45

; <label>:999                                     ; preds = %870
  %1000 = fsub fast float %252, %244
  %1001 = fsub fast float %253, %245
  %1002 = fsub fast float %254, %246
  %1003 = fsub fast float %907, %1000
  %1004 = fsub fast float %908, %1001
  %1005 = fsub fast float %909, %1002
  %1006 = call float @dx.op.dot3.f32(i32 55, float %1003, float %1004, float %1005, float %1003, float %1004, float %1005)  ; Dot3(ax,ay,az,bx,by,bz)
  %1007 = call float @dx.op.unary.f32(i32 25, float %1006)  ; Rsqrt(value)
  %1008 = fmul fast float %1007, %1003
  %1009 = fmul fast float %1007, %1004
  %1010 = fmul fast float %1007, %1005
  %1011 = fsub fast float %431, %1000
  %1012 = fsub fast float %432, %1001
  %1013 = fsub fast float %433, %1002
  %1014 = call float @dx.op.dot3.f32(i32 55, float %600, float %601, float %602, float %1011, float %1012, float %1013)  ; Dot3(ax,ay,az,bx,by,bz)
  %1015 = call float @dx.op.dot3.f32(i32 55, float %600, float %601, float %602, float %1008, float %1009, float %1010)  ; Dot3(ax,ay,az,bx,by,bz)
  %1016 = fdiv fast float 1.000000e+00, %1015
  %1017 = fmul fast float %1016, %1014
  %1018 = fmul fast float %1017, %1008
  %1019 = fmul fast float %1017, %1009
  %1020 = fmul fast float %1017, %1010
  %1021 = fadd fast float %1018, %1000
  %1022 = fadd fast float %1019, %1001
  %1023 = fadd fast float %1020, %1002
  %1024 = fadd fast float %252, %244
  %1025 = fadd fast float %253, %245
  %1026 = fadd fast float %254, %246
  %1027 = fsub fast float %907, %1024
  %1028 = fsub fast float %908, %1025
  %1029 = fsub fast float %909, %1026
  %1030 = call float @dx.op.dot3.f32(i32 55, float %1027, float %1028, float %1029, float %1027, float %1028, float %1029)  ; Dot3(ax,ay,az,bx,by,bz)
  %1031 = call float @dx.op.unary.f32(i32 25, float %1030)  ; Rsqrt(value)
  %1032 = fmul fast float %1031, %1027
  %1033 = fmul fast float %1031, %1028
  %1034 = fmul fast float %1031, %1029
  %1035 = fsub fast float %431, %1024
  %1036 = fsub fast float %432, %1025
  %1037 = fsub fast float %433, %1026
  %1038 = call float @dx.op.dot3.f32(i32 55, float %600, float %601, float %602, float %1035, float %1036, float %1037)  ; Dot3(ax,ay,az,bx,by,bz)
  %1039 = call float @dx.op.dot3.f32(i32 55, float %600, float %601, float %602, float %1032, float %1033, float %1034)  ; Dot3(ax,ay,az,bx,by,bz)
  %1040 = fdiv fast float 1.000000e+00, %1039
  %1041 = fmul fast float %1040, %1038
  %1042 = fmul fast float %1041, %1032
  %1043 = fmul fast float %1041, %1033
  %1044 = fmul fast float %1041, %1034
  %1045 = fadd fast float %1042, %1024
  %1046 = fadd fast float %1043, %1025
  %1047 = fadd fast float %1044, %1026
  %1048 = fmul fast float %1021, %377
  %1049 = call float @dx.op.tertiary.f32(i32 46, float %1022, float %383, float %1048)  ; FMad(a,b,c)
  %1050 = call float @dx.op.tertiary.f32(i32 46, float %1023, float %389, float %1049)  ; FMad(a,b,c)
  %1051 = fadd fast float %1050, %395
  %1052 = fmul fast float %1021, %378
  %1053 = call float @dx.op.tertiary.f32(i32 46, float %1022, float %384, float %1052)  ; FMad(a,b,c)
  %1054 = call float @dx.op.tertiary.f32(i32 46, float %1023, float %390, float %1053)  ; FMad(a,b,c)
  %1055 = fadd fast float %1054, %396
  %1056 = fmul fast float %1021, %380
  %1057 = call float @dx.op.tertiary.f32(i32 46, float %1022, float %386, float %1056)  ; FMad(a,b,c)
  %1058 = call float @dx.op.tertiary.f32(i32 46, float %1023, float %392, float %1057)  ; FMad(a,b,c)
  %1059 = fadd fast float %1058, %398
  %1060 = fmul fast float %1045, %377
  %1061 = call float @dx.op.tertiary.f32(i32 46, float %1046, float %383, float %1060)  ; FMad(a,b,c)
  %1062 = call float @dx.op.tertiary.f32(i32 46, float %1047, float %389, float %1061)  ; FMad(a,b,c)
  %1063 = fadd fast float %1062, %395
  %1064 = fmul fast float %1045, %378
  %1065 = call float @dx.op.tertiary.f32(i32 46, float %1046, float %384, float %1064)  ; FMad(a,b,c)
  %1066 = call float @dx.op.tertiary.f32(i32 46, float %1047, float %390, float %1065)  ; FMad(a,b,c)
  %1067 = fadd fast float %1066, %396
  %1068 = fmul fast float %1045, %380
  %1069 = call float @dx.op.tertiary.f32(i32 46, float %1046, float %386, float %1068)  ; FMad(a,b,c)
  %1070 = call float @dx.op.tertiary.f32(i32 46, float %1047, float %392, float %1069)  ; FMad(a,b,c)
  %1071 = fadd fast float %1070, %398
  %1072 = fdiv fast float 1.000000e+00, %1059
  %1073 = fmul fast float %1072, %1051
  %1074 = fmul fast float %1072, %1055
  %1075 = fdiv fast float 1.000000e+00, %1071
  %1076 = fmul fast float %1075, %1063
  %1077 = fmul fast float %1075, %1067
  %1078 = fsub fast float %1076, %1073
  %1079 = fsub fast float %1077, %1074
  %1080 = call float @dx.op.dot2.f32(i32 54, float %1078, float %1079, float %1078, float %1079)  ; Dot2(ax,ay,bx,by)
  %1081 = call float @dx.op.unary.f32(i32 25, float %1080)  ; Rsqrt(value)
  %1082 = fmul fast float %1078, %1081
  %1083 = fmul fast float %1079, %1081
  %1084 = fmul fast float %1078, %1078
  %1085 = fmul fast float %1079, %1079
  %1086 = fadd fast float %1084, %1085
  %1087 = call float @dx.op.unary.f32(i32 24, float %1086)  ; Sqrt(value)
  %1088 = fmul fast float %1087, 5.000000e-01
  %1089 = fcmp fast olt float %1088, %998
  br i1 %1089, label %1090, label %1091, !dx.controlflow.hints !46

; <label>:1090                                    ; preds = %999
  br label %1091

; <label>:1091                                    ; preds = %1090, %999, %870
  %1092 = phi float [ %998, %870 ], [ %1088, %1090 ], [ %998, %999 ]
  %1093 = phi float [ %998, %870 ], [ %998, %1090 ], [ %1088, %999 ]
  %1094 = phi float [ %992, %870 ], [ %992, %1090 ], [ %1082, %999 ]
  %1095 = phi float [ %993, %870 ], [ %993, %1090 ], [ %1083, %999 ]
  %1096 = fsub fast float %1093, %1092
  %1097 = fmul fast float %1094, %1094
  %1098 = fmul fast float %1097, %1096
  %1099 = fadd fast float %1098, %1092
  %1100 = fmul fast float %1094, %1096
  %1101 = fmul fast float %1100, %1095
  %1102 = fmul fast float %1095, %1095
  %1103 = fmul fast float %1102, %1096
  %1104 = fadd fast float %1103, %1092
  %1105 = fmul fast float %1099, %456
  %1106 = call float @dx.op.tertiary.f32(i32 46, float %455, float %1101, float %1105)  ; FMad(a,b,c)
  %1107 = fmul fast float %1101, %456
  %1108 = call float @dx.op.tertiary.f32(i32 46, float %455, float %1104, float %1107)  ; FMad(a,b,c)
  %1109 = fmul fast float %1099, %457
  %1110 = call float @dx.op.tertiary.f32(i32 46, float %456, float %1101, float %1109)  ; FMad(a,b,c)
  %1111 = fmul fast float %1101, %457
  %1112 = call float @dx.op.tertiary.f32(i32 46, float %456, float %1104, float %1111)  ; FMad(a,b,c)
  br label %1113

; <label>:1113                                    ; preds = %1113, %1091
  %1114 = phi float [ 0.000000e+00, %1091 ], [ %1140, %1113 ]
  %1115 = phi i32 [ 0, %1091 ], [ %1141, %1113 ]
  %1116 = mul i32 %1115, 2
  %1117 = add i32 0, %1116
  %1118 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1117
  %1119 = load float, float* %1118, align 4
  %1120 = mul i32 %1115, 2
  %1121 = add i32 1, %1120
  %1122 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1121
  %1123 = load float, float* %1122, align 4
  %1124 = fmul fast float %1119, %1106
  %1125 = call float @dx.op.tertiary.f32(i32 46, float %1123, float %1110, float %1124)  ; FMad(a,b,c)
  %1126 = fmul fast float %1119, %1108
  %1127 = call float @dx.op.tertiary.f32(i32 46, float %1123, float %1112, float %1126)  ; FMad(a,b,c)
  %1128 = fadd fast float %1125, %450
  %1129 = fadd fast float %1127, %451
  %1130 = fmul fast float %1128, %367
  %1131 = fmul fast float %1129, %367
  %1132 = call float @dx.op.binary.f32(i32 35, float %1130, float %363)  ; FMax(a,b)
  %1133 = call float @dx.op.binary.f32(i32 35, float %1131, float %363)  ; FMax(a,b)
  %1134 = call float @dx.op.binary.f32(i32 36, float %1132, float %364)  ; FMin(a,b)
  %1135 = call float @dx.op.binary.f32(i32 36, float %1133, float %364)  ; FMin(a,b)
  %1136 = fadd fast float %1134, %361
  %1137 = fadd fast float %1135, %362
  %1138 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %18, float %1136, float %1137, float %836, float undef, i32 0, i32 0, i32 undef, float %839)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1139 = extractvalue %dx.types.ResRet.f32 %1138, 0
  %1140 = fadd fast float %1139, %1114
  %1141 = add nuw nsw i32 %1115, 1
  %1142 = icmp eq i32 %1141, 8
  br i1 %1142, label %1143, label %1113

; <label>:1143                                    ; preds = %1113
  %1144 = fmul fast float %1140, 1.250000e-01
  br label %1145

; <label>:1145                                    ; preds = %1143, %853, %502
  %1146 = phi float [ %529, %502 ], [ %1144, %1143 ], [ 1.000000e+00, %853 ]
  %1147 = fadd fast float %1146, -1.000000e+00
  %1148 = fmul fast float %1147, %340
  %1149 = fadd fast float %1148, 1.000000e+00
  %1150 = fmul fast float %1149, %352
  br label %1151

; <label>:1151                                    ; preds = %1145, %319
  %1152 = phi float [ %1150, %1145 ], [ %352, %319 ]
  %1153 = call float @dx.op.binary.f32(i32 36, float %1152, float %1152)  ; FMin(a,b)
  %1154 = call float @dx.op.binary.f32(i32 36, float %1152, float %1153)  ; FMin(a,b)
  %1155 = fcmp fast ogt float %1154, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1156 = zext i1 %1155 to i32
  %1157 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %1156 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1158 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  %1159 = icmp eq i32 %1158, 0
  %1160 = select i1 %1159, i32 0, i32 %231
  %1161 = or i32 %226, %1160
  %1162 = lshr i32 %164, 5
  %1163 = lshr i32 %165, 5
  %1164 = fcmp fast olt float %1152, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1165 = and i32 %24, 31
  %1166 = zext i1 %1164 to i32
  %1167 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %24
  store i32 %1166, i32 addrspace(3)* %1167, align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1168 = icmp ult i32 %1165, 16
  br i1 %1168, label %1169, label %1175, !dx.controlflow.hints !49

; <label>:1169                                    ; preds = %1151
  %1170 = add i32 %24, 16
  %1171 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1170
  %1172 = load i32, i32 addrspace(3)* %1171, align 4, !tbaa !36
  %1173 = load i32, i32 addrspace(3)* %1167, align 4, !tbaa !36
  %1174 = and i32 %1173, %1172
  store i32 %1174, i32 addrspace(3)* %1167, align 4, !tbaa !36
  br label %1175

; <label>:1175                                    ; preds = %1169, %1151
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1176 = icmp ult i32 %1165, 8
  br i1 %1176, label %1177, label %1183, !dx.controlflow.hints !50

; <label>:1177                                    ; preds = %1175
  %1178 = add i32 %24, 8
  %1179 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1178
  %1180 = load i32, i32 addrspace(3)* %1179, align 4, !tbaa !36
  %1181 = load i32, i32 addrspace(3)* %1167, align 4, !tbaa !36
  %1182 = and i32 %1181, %1180
  store i32 %1182, i32 addrspace(3)* %1167, align 4, !tbaa !36
  br label %1183

; <label>:1183                                    ; preds = %1177, %1175
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1184 = icmp ult i32 %1165, 4
  br i1 %1184, label %1185, label %1191, !dx.controlflow.hints !51

; <label>:1185                                    ; preds = %1183
  %1186 = add i32 %24, 4
  %1187 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1186
  %1188 = load i32, i32 addrspace(3)* %1187, align 4, !tbaa !36
  %1189 = load i32, i32 addrspace(3)* %1167, align 4, !tbaa !36
  %1190 = and i32 %1189, %1188
  store i32 %1190, i32 addrspace(3)* %1167, align 4, !tbaa !36
  br label %1191

; <label>:1191                                    ; preds = %1185, %1183
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1192 = icmp ult i32 %1165, 2
  br i1 %1192, label %1193, label %1199, !dx.controlflow.hints !52

; <label>:1193                                    ; preds = %1191
  %1194 = add i32 %24, 2
  %1195 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1194
  %1196 = load i32, i32 addrspace(3)* %1195, align 4, !tbaa !36
  %1197 = load i32, i32 addrspace(3)* %1167, align 4, !tbaa !36
  %1198 = and i32 %1197, %1196
  store i32 %1198, i32 addrspace(3)* %1167, align 4, !tbaa !36
  br label %1199

; <label>:1199                                    ; preds = %1193, %1191
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1200 = icmp eq i32 %1165, 0
  br i1 %1200, label %1201, label %1207, !dx.controlflow.hints !53

; <label>:1201                                    ; preds = %1199
  %1202 = add i32 %24, 1
  %1203 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1202
  %1204 = load i32, i32 addrspace(3)* %1203, align 4, !tbaa !36
  %1205 = load i32, i32 addrspace(3)* %1167, align 4, !tbaa !36
  %1206 = and i32 %1205, %1204
  store i32 %1206, i32 addrspace(3)* %1167, align 4, !tbaa !36
  br label %1207

; <label>:1207                                    ; preds = %1201, %1199
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1208 = and i32 %24, -64
  %1209 = or i32 %1208, 32
  %1210 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1208
  %1211 = load i32, i32 addrspace(3)* %1210, align 4, !tbaa !36
  %1212 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1209
  %1213 = load i32, i32 addrspace(3)* %1212, align 4, !tbaa !36
  %1214 = and i32 %1213, %1211
  %1215 = icmp ne i32 %1214, 0
  %1216 = fcmp fast ogt float %1152, 0x3FEFFF8000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1217 = zext i1 %1216 to i32
  store i32 %1217, i32 addrspace(3)* %1167, align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1168, label %1218, label %1224, !dx.controlflow.hints !49

; <label>:1218                                    ; preds = %1207
  %1219 = add i32 %24, 16
  %1220 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1219
  %1221 = load i32, i32 addrspace(3)* %1220, align 4, !tbaa !36
  %1222 = load i32, i32 addrspace(3)* %1167, align 4, !tbaa !36
  %1223 = and i32 %1222, %1221
  store i32 %1223, i32 addrspace(3)* %1167, align 4, !tbaa !36
  br label %1224

; <label>:1224                                    ; preds = %1218, %1207
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1176, label %1225, label %1231, !dx.controlflow.hints !50

; <label>:1225                                    ; preds = %1224
  %1226 = add i32 %24, 8
  %1227 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1226
  %1228 = load i32, i32 addrspace(3)* %1227, align 4, !tbaa !36
  %1229 = load i32, i32 addrspace(3)* %1167, align 4, !tbaa !36
  %1230 = and i32 %1229, %1228
  store i32 %1230, i32 addrspace(3)* %1167, align 4, !tbaa !36
  br label %1231

; <label>:1231                                    ; preds = %1225, %1224
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1184, label %1232, label %1238, !dx.controlflow.hints !51

; <label>:1232                                    ; preds = %1231
  %1233 = add i32 %24, 4
  %1234 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1233
  %1235 = load i32, i32 addrspace(3)* %1234, align 4, !tbaa !36
  %1236 = load i32, i32 addrspace(3)* %1167, align 4, !tbaa !36
  %1237 = and i32 %1236, %1235
  store i32 %1237, i32 addrspace(3)* %1167, align 4, !tbaa !36
  br label %1238

; <label>:1238                                    ; preds = %1232, %1231
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1192, label %1239, label %1245, !dx.controlflow.hints !52

; <label>:1239                                    ; preds = %1238
  %1240 = add i32 %24, 2
  %1241 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1240
  %1242 = load i32, i32 addrspace(3)* %1241, align 4, !tbaa !36
  %1243 = load i32, i32 addrspace(3)* %1167, align 4, !tbaa !36
  %1244 = and i32 %1243, %1242
  store i32 %1244, i32 addrspace(3)* %1167, align 4, !tbaa !36
  br label %1245

; <label>:1245                                    ; preds = %1239, %1238
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1200, label %1246, label %1252, !dx.controlflow.hints !53

; <label>:1246                                    ; preds = %1245
  %1247 = add i32 %24, 1
  %1248 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1247
  %1249 = load i32, i32 addrspace(3)* %1248, align 4, !tbaa !36
  %1250 = load i32, i32 addrspace(3)* %1167, align 4, !tbaa !36
  %1251 = and i32 %1250, %1249
  store i32 %1251, i32 addrspace(3)* %1167, align 4, !tbaa !36
  br label %1252

; <label>:1252                                    ; preds = %1246, %1245
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1253 = load i32, i32 addrspace(3)* %1210, align 4, !tbaa !36
  %1254 = load i32, i32 addrspace(3)* %1212, align 4, !tbaa !36
  %1255 = and i32 %1254, %1253
  %1256 = or i32 %1255, %1214
  %1257 = icmp eq i32 %1256, 0
  %1258 = lshr i32 %165, 1
  %1259 = and i32 %1258, 8
  %1260 = lshr i32 %164, 2
  %1261 = and i32 %1260, 4
  %1262 = or i32 %1259, %36
  %1263 = or i32 %1262, %1261
  br i1 %219, label %1264, label %1306, !dx.controlflow.hints !54

; <label>:1264                                    ; preds = %1252
  %1265 = icmp ne i32 %1255, 0
  %1266 = shl i32 1, %1263
  %1267 = select i1 %1265, i32 %1266, i32 0
  %1268 = shl i32 65536, %1263
  %1269 = select i1 %1215, i32 %1268, i32 0
  %1270 = or i32 %1267, %1269
  %1271 = icmp eq i32 %1270, 0
  br i1 %1271, label %1274, label %1272, !dx.controlflow.hints !55

; <label>:1272                                    ; preds = %1264
  %1273 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %1162, i32 %1163, i32 %229, i32 %1270)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1274

; <label>:1274                                    ; preds = %1272, %1264
  br i1 %1257, label %1275, label %1304

; <label>:1275                                    ; preds = %1274
  br label %1276

; <label>:1276                                    ; preds = %1301, %1275
  %1277 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %4, i32 %1162, i32 %1163, i32 %229, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %1278 = and i32 %1277, 3
  %1279 = icmp eq i32 %1278, 0
  br i1 %1279, label %1280, label %1301, !dx.controlflow.hints !56

; <label>:1280                                    ; preds = %1276
  %1281 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1282 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1283 = extractvalue %dx.types.CBufRet.i32 %1282, 3
  %1284 = call i32 @dx.op.binary.i32(i32 40, i32 %1283, i32 %1281)  ; UMin(a,b)
  %1285 = extractvalue %dx.types.CBufRet.i32 %1282, 2
  %1286 = udiv i32 %1284, %1285
  %1287 = urem i32 %1284, %1285
  %1288 = extractvalue %dx.types.CBufRet.i32 %1282, 1
  %1289 = urem i32 %1287, %1288
  %1290 = udiv i32 %1287, %1288
  %1291 = shl i32 %1289, 6
  %1292 = and i32 %1291, 32704
  %1293 = shl i32 %1290, 15
  %1294 = and i32 %1293, 8355840
  %1295 = shl i32 %1286, 23
  %1296 = and i32 %1295, 2139095040
  %1297 = or i32 %1296, %1292
  %1298 = or i32 %1297, %1294
  %1299 = or i32 %1298, 3
  %1300 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 8, i32 %1162, i32 %1163, i32 %229, i32 %1299)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1304

; <label>:1301                                    ; preds = %1276
  %1302 = icmp eq i32 %1278, 3
  br i1 %1302, label %1303, label %1276, !dx.controlflow.hints !57

; <label>:1303                                    ; preds = %1301
  br label %1304

; <label>:1304                                    ; preds = %1303, %1280, %1274
  %1305 = phi i32 [ 0, %1274 ], [ %1299, %1280 ], [ %1277, %1303 ]
  store i32 %1305, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !36
  br label %1306

; <label>:1306                                    ; preds = %1304, %1252
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1307 = load i32, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !36
  br i1 %1257, label %1308, label %1323, !dx.controlflow.hints !58

; <label>:1308                                    ; preds = %1306
  %1309 = lshr i32 %1307, 23
  %1310 = and i32 %1309, 255
  %1311 = and i32 %164, 31
  %1312 = and i32 %165, 31
  %1313 = lshr i32 %1307, 1
  %1314 = and i32 %1313, 16352
  %1315 = lshr i32 %1307, 10
  %1316 = and i32 %1315, 8160
  %1317 = or i32 %1314, %1311
  %1318 = or i32 %1316, %1312
  %1319 = fmul fast float %1152, 2.550000e+02
  %1320 = fadd fast float %1319, %159
  %1321 = call float @dx.op.unary.f32(i32 27, float %1320)  ; Round_ni(value)
  %1322 = fmul fast float %1321, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %1317, i32 %1318, i32 %1310, float %1322, float %1322, float %1322, float %1322, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1323

; <label>:1323                                    ; preds = %1308, %1306
  %1324 = icmp eq i32 %227, %231
  br i1 %1324, label %1325, label %225, !llvm.loop !59

; <label>:1325                                    ; preds = %1323
  br label %1326

; <label>:1326                                    ; preds = %1325, %221
  %1327 = phi i32 [ 0, %221 ], [ %1161, %1325 ]
  %1328 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1329 = extractvalue %dx.types.CBufRet.i32 %1328, 0
  %1330 = call i32 @dx.op.tertiary.i32(i32 49, i32 %170, i32 %1329, i32 %194)  ; UMad(a,b,c)
  %1331 = shl i32 %1330, 2
  %1332 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1331, i32 undef, i32 undef, i32 %1327)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1333 = add i32 %194, 1
  %1334 = icmp ugt i32 %1333, %190
  br i1 %1334, label %1335, label %193

; <label>:1335                                    ; preds = %1326
  br label %1336

; <label>:1336                                    ; preds = %1335, %163, %0
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
declare i32 @dx.op.atomicCompareExchange.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #2

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
!33 = !{i32 0, i64 272, i32 4, !34}
!34 = !{i32 8, i32 8, i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = !{!37, !37, i64 0}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 1}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 1}
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
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.unroll.disable"}

