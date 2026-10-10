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
; shader hash: 29e366c8971075397f878cc8ea047831
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
  br i1 %222, label %1810, label %223, !dx.controlflow.hints !35

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
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 -1, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %244 = atomicrmw umin i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %242 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %245 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %246 = atomicrmw umax i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %243 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %247 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  %248 = lshr i32 %245, 5
  %249 = lshr i32 %247, 5
  %250 = call i32 @dx.op.binary.i32(i32 40, i32 %249, i32 %234)  ; UMin(a,b)
  %251 = icmp ugt i32 %248, %250
  br i1 %251, label %1810, label %252

; <label>:252                                     ; preds = %223
  br label %253

; <label>:253                                     ; preds = %1800, %252
  %254 = phi i32 [ %1807, %1800 ], [ %248, %252 ]
  %255 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.i32 %255, 0
  %257 = call i32 @dx.op.tertiary.i32(i32 49, i32 %230, i32 %256, i32 %254)  ; UMad(a,b,c)
  %258 = shl i32 %257, 2
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = shl i32 %254, 5
  %262 = sub nsw i32 %242, %261
  %263 = call i32 @dx.op.binary.i32(i32 37, i32 %262, i32 0)  ; IMax(a,b)
  %264 = call i32 @dx.op.binary.i32(i32 38, i32 %263, i32 31)  ; IMin(a,b)
  %265 = sub nsw i32 1, %242
  %266 = add nsw i32 %265, %243
  %267 = call i32 @dx.op.binary.i32(i32 37, i32 %266, i32 0)  ; IMax(a,b)
  %268 = call i32 @dx.op.binary.i32(i32 38, i32 %267, i32 32)  ; IMin(a,b)
  %269 = and i32 %268, 31
  %270 = shl i32 -1, %269
  %271 = xor i32 %270, -1
  %272 = and i32 %264, 31
  %273 = shl i32 %271, %272
  %274 = icmp eq i32 %268, 32
  %275 = select i1 %274, i32 -1, i32 %273
  %276 = and i32 %275, %260
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %277 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %276 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %278 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %279 = icmp eq i32 %24, 0
  br i1 %279, label %280, label %281, !dx.controlflow.hints !40

; <label>:280                                     ; preds = %253
  store i32 %278, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  br label %281

; <label>:281                                     ; preds = %280, %253
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %282 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %1800, label %284

; <label>:284                                     ; preds = %281
  br label %285

; <label>:285                                     ; preds = %1797, %284
  %286 = phi i32 [ %1635, %1797 ], [ 0, %284 ]
  %287 = phi i32 [ %292, %1797 ], [ %282, %284 ]
  %288 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %287)  ; FirstbitLo(value)
  %289 = add i32 %288, %261
  %290 = and i32 %288, 31
  %291 = shl i32 1, %290
  %292 = xor i32 %291, %287
  %293 = mul i32 %289, 112
  %294 = add i32 %293, 16
  %295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.f32 %295, 0
  %297 = extractvalue %dx.types.ResRet.f32 %295, 1
  %298 = extractvalue %dx.types.ResRet.f32 %295, 2
  %299 = add i32 %293, 28
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = add i32 %293, 32
  %303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.f32 %303, 0
  %305 = extractvalue %dx.types.ResRet.f32 %303, 1
  %306 = extractvalue %dx.types.ResRet.f32 %303, 2
  %307 = add i32 %293, 44
  %308 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.f32 %308, 0
  %310 = add i32 %293, 48
  %311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.f32 %311, 0
  %313 = extractvalue %dx.types.ResRet.f32 %311, 1
  %314 = extractvalue %dx.types.ResRet.f32 %311, 2
  %315 = extractvalue %dx.types.ResRet.f32 %311, 3
  %316 = add i32 %293, 64
  %317 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.f32 %317, 0
  %319 = extractvalue %dx.types.ResRet.f32 %317, 1
  %320 = extractvalue %dx.types.ResRet.f32 %317, 2
  %321 = extractvalue %dx.types.ResRet.f32 %317, 3
  %322 = add i32 %293, 92
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = and i32 %324, 65535
  %326 = uitofp i32 %325 to float
  %327 = lshr i32 %324, 16
  %328 = uitofp i32 %327 to float
  %329 = and i32 %301, 65535
  %330 = and i32 %301, 50331648
  %331 = icmp eq i32 %330, 33554432
  %332 = call float @dx.op.dot3.f32(i32 55, float %304, float %305, float %306, float %304, float %305, float %306)  ; Dot3(ax,ay,az,bx,by,bz)
  %333 = fsub fast float %117, %312
  %334 = fsub fast float %118, %313
  %335 = fsub fast float %119, %314
  %336 = call float @dx.op.dot3.f32(i32 55, float %333, float %334, float %335, float %304, float %305, float %306)  ; Dot3(ax,ay,az,bx,by,bz)
  %337 = fdiv fast float %336, %332
  %338 = call float @dx.op.binary.f32(i32 35, float %337, float -1.000000e+00)  ; FMax(a,b)
  %339 = call float @dx.op.binary.f32(i32 36, float %338, float 1.000000e+00)  ; FMin(a,b)
  %340 = fmul fast float %339, %304
  %341 = fmul fast float %339, %305
  %342 = fmul fast float %339, %306
  %343 = fadd fast float %340, %312
  %344 = fadd fast float %341, %313
  %345 = fadd fast float %342, %314
  %346 = fsub fast float %343, %117
  %347 = fsub fast float %344, %118
  %348 = fsub fast float %345, %119
  %349 = call float @dx.op.dot3.f32(i32 55, float %346, float %347, float %348, float %346, float %347, float %348)  ; Dot3(ax,ay,az,bx,by,bz)
  %350 = call float @dx.op.unary.f32(i32 24, float %349)  ; Sqrt(value)
  %351 = fdiv fast float 1.000000e+00, %350
  %352 = fmul fast float %346, %351
  %353 = fmul fast float %347, %351
  %354 = fmul fast float %348, %351
  br i1 %331, label %355, label %379, !dx.controlflow.hints !41

; <label>:355                                     ; preds = %285
  %356 = fmul fast float %320, %296
  %357 = fmul fast float %320, %297
  %358 = fmul fast float %320, %298
  %359 = fsub fast float %356, %117
  %360 = fadd fast float %359, %343
  %361 = fsub fast float %357, %118
  %362 = fadd fast float %361, %344
  %363 = fsub fast float %358, %119
  %364 = fadd fast float %363, %345
  %365 = call float @dx.op.dot3.f32(i32 55, float %360, float %362, float %364, float %360, float %362, float %364)  ; Dot3(ax,ay,az,bx,by,bz)
  %366 = call float @dx.op.unary.f32(i32 25, float %365)  ; Rsqrt(value)
  %367 = fmul fast float %366, %360
  %368 = fmul fast float %366, %362
  %369 = fmul fast float %366, %364
  %370 = fsub fast float %117, %343
  %371 = fsub fast float %118, %344
  %372 = fsub fast float %119, %345
  %373 = fsub fast float -0.000000e+00, %370
  %374 = fsub fast float -0.000000e+00, %371
  %375 = fsub fast float -0.000000e+00, %372
  %376 = call float @dx.op.dot3.f32(i32 55, float %373, float %374, float %375, float %296, float %297, float %298)  ; Dot3(ax,ay,az,bx,by,bz)
  %377 = fcmp fast ogt float %376, 0.000000e+00
  %378 = uitofp i1 %377 to float
  br label %379

; <label>:379                                     ; preds = %355, %285
  %380 = phi float [ %378, %355 ], [ 1.000000e+00, %285 ]
  %381 = phi float [ %367, %355 ], [ %352, %285 ]
  %382 = phi float [ %368, %355 ], [ %353, %285 ]
  %383 = phi float [ %369, %355 ], [ %354, %285 ]
  %384 = call float @dx.op.dot3.f32(i32 55, float %296, float %297, float %298, float %381, float %382, float %383)  ; Dot3(ax,ay,az,bx,by,bz)
  %385 = fmul fast float %384, %384
  %386 = call float @dx.op.unary.f32(i32 7, float %385)  ; Saturate(value)
  %387 = fsub fast float 1.000000e+00, %386
  %388 = fmul fast float %387, 5.000000e-01
  %389 = fcmp fast ogt float %384, 0.000000e+00
  %390 = fsub fast float 1.000000e+00, %388
  %391 = select i1 %389, float %388, float %390
  %392 = fmul fast float %391, %328
  %393 = fadd fast float %392, %326
  %394 = fmul fast float %393, 0x3EF0001000000000
  %395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %16, float %394, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %396 = extractvalue %dx.types.ResRet.f32 %395, 0
  %397 = fmul fast float %384, %318
  %398 = fadd fast float %397, %319
  %399 = call float @dx.op.unary.f32(i32 7, float %398)  ; Saturate(value)
  %400 = select i1 %331, float 1.000000e+00, float %399
  %401 = select i1 %331, float %399, float 1.000000e+00
  %402 = fmul fast float %350, %315
  %403 = fsub fast float 1.000000e+00, %402
  %404 = fmul fast float %403, %321
  %405 = call float @dx.op.unary.f32(i32 7, float %404)  ; Saturate(value)
  %406 = fmul fast float %405, %401
  %407 = fmul fast float %406, 2.000000e+00
  %408 = fsub fast float 3.000000e+00, %407
  %409 = fmul fast float %396, %380
  %410 = fmul fast float %406, %406
  %411 = fmul fast float %410, %409
  %412 = fmul fast float %411, %408
  %413 = icmp ne i32 %329, 255
  %414 = call float @dx.op.binary.f32(i32 36, float %412, float %412)  ; FMin(a,b)
  %415 = call float @dx.op.binary.f32(i32 36, float %412, float %414)  ; FMin(a,b)
  %416 = fcmp fast ogt float %415, 0.000000e+00
  %417 = and i1 %413, %416
  br i1 %417, label %418, label %1332, !dx.controlflow.hints !42

; <label>:418                                     ; preds = %379
  %419 = mul nuw nsw i32 %329, 176
  %420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.f32 %420, 0
  %422 = extractvalue %dx.types.ResRet.f32 %420, 1
  %423 = extractvalue %dx.types.ResRet.f32 %420, 2
  %424 = extractvalue %dx.types.ResRet.f32 %420, 3
  %425 = add nuw nsw i32 %419, 16
  %426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.f32 %426, 0
  %428 = extractvalue %dx.types.ResRet.f32 %426, 1
  %429 = add nuw nsw i32 %419, 32
  %430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.f32 %430, 0
  %432 = extractvalue %dx.types.ResRet.f32 %430, 1
  %433 = extractvalue %dx.types.ResRet.f32 %430, 2
  %434 = extractvalue %dx.types.ResRet.f32 %430, 3
  %435 = add nuw nsw i32 %419, 48
  %436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.f32 %436, 0
  %438 = extractvalue %dx.types.ResRet.f32 %436, 1
  %439 = extractvalue %dx.types.ResRet.f32 %436, 2
  %440 = extractvalue %dx.types.ResRet.f32 %436, 3
  %441 = add nuw nsw i32 %419, 64
  %442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.f32 %442, 0
  %444 = extractvalue %dx.types.ResRet.f32 %442, 1
  %445 = extractvalue %dx.types.ResRet.f32 %442, 2
  %446 = extractvalue %dx.types.ResRet.f32 %442, 3
  %447 = add nuw nsw i32 %419, 80
  %448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.f32 %448, 0
  %450 = extractvalue %dx.types.ResRet.f32 %448, 1
  %451 = extractvalue %dx.types.ResRet.f32 %448, 2
  %452 = extractvalue %dx.types.ResRet.f32 %448, 3
  %453 = add nuw nsw i32 %419, 96
  %454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.f32 %454, 0
  %456 = extractvalue %dx.types.ResRet.f32 %454, 1
  %457 = extractvalue %dx.types.ResRet.f32 %454, 2
  %458 = extractvalue %dx.types.ResRet.f32 %454, 3
  %459 = add nuw nsw i32 %419, 112
  %460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.f32 %460, 0
  %462 = extractvalue %dx.types.ResRet.f32 %460, 1
  %463 = extractvalue %dx.types.ResRet.f32 %460, 2
  %464 = extractvalue %dx.types.ResRet.f32 %460, 3
  %465 = add nuw nsw i32 %419, 128
  %466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.f32 %466, 0
  %468 = extractvalue %dx.types.ResRet.f32 %466, 1
  %469 = extractvalue %dx.types.ResRet.f32 %466, 2
  %470 = extractvalue %dx.types.ResRet.f32 %466, 3
  %471 = add nuw nsw i32 %419, 144
  %472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.f32 %472, 0
  %474 = extractvalue %dx.types.ResRet.f32 %472, 1
  %475 = extractvalue %dx.types.ResRet.f32 %472, 2
  %476 = extractvalue %dx.types.ResRet.f32 %472, 3
  %477 = add nuw nsw i32 %419, 160
  %478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.f32 %478, 0
  %480 = extractvalue %dx.types.ResRet.f32 %478, 1
  %481 = extractvalue %dx.types.ResRet.f32 %478, 2
  %482 = extractvalue %dx.types.ResRet.f32 %478, 3
  %483 = bitcast float %428 to i32
  %484 = bitcast float %434 to i32
  %485 = and i32 %484, 1
  %486 = icmp ne i32 %485, 0
  %487 = and i32 %484, 2
  %488 = fmul fast float %433, %146
  %489 = fmul fast float %433, %147
  %490 = fmul fast float %433, %148
  %491 = fadd fast float %488, %117
  %492 = fadd fast float %489, %118
  %493 = fadd fast float %490, %119
  %494 = fmul fast float %491, %437
  %495 = call float @dx.op.tertiary.f32(i32 46, float %492, float %443, float %494)  ; FMad(a,b,c)
  %496 = call float @dx.op.tertiary.f32(i32 46, float %493, float %449, float %495)  ; FMad(a,b,c)
  %497 = fadd fast float %496, %455
  %498 = fmul fast float %491, %438
  %499 = call float @dx.op.tertiary.f32(i32 46, float %492, float %444, float %498)  ; FMad(a,b,c)
  %500 = call float @dx.op.tertiary.f32(i32 46, float %493, float %450, float %499)  ; FMad(a,b,c)
  %501 = fadd fast float %500, %456
  %502 = fmul fast float %491, %439
  %503 = call float @dx.op.tertiary.f32(i32 46, float %492, float %445, float %502)  ; FMad(a,b,c)
  %504 = call float @dx.op.tertiary.f32(i32 46, float %493, float %451, float %503)  ; FMad(a,b,c)
  %505 = fadd fast float %504, %457
  %506 = fmul fast float %491, %440
  %507 = call float @dx.op.tertiary.f32(i32 46, float %492, float %446, float %506)  ; FMad(a,b,c)
  %508 = call float @dx.op.tertiary.f32(i32 46, float %493, float %452, float %507)  ; FMad(a,b,c)
  %509 = fadd fast float %508, %458
  %510 = fdiv fast float %497, %509
  %511 = fdiv fast float %501, %509
  %512 = fdiv fast float %505, %509
  %513 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %512)  ; FMax(a,b)
  %514 = fmul fast float %218, 0x401921FB60000000
  %515 = call float @dx.op.unary.f32(i32 13, float %514)  ; Sin(value)
  %516 = call float @dx.op.unary.f32(i32 12, float %514)  ; Cos(value)
  %517 = fsub fast float -0.000000e+00, %515
  %518 = icmp eq i32 %487, 0
  br i1 %518, label %519, label %590, !dx.controlflow.hints !43

; <label>:519                                     ; preds = %418
  %520 = fmul fast float %516, %432
  %521 = call float @dx.op.tertiary.f32(i32 46, float %515, float %432, float 0.000000e+00)  ; FMad(a,b,c)
  %522 = fmul fast float %432, %517
  %523 = call float @dx.op.tertiary.f32(i32 46, float %516, float %432, float 0.000000e+00)  ; FMad(a,b,c)
  br label %524

; <label>:524                                     ; preds = %524, %519
  %525 = phi float [ 0.000000e+00, %519 ], [ %557, %524 ]
  %526 = phi float [ 0.000000e+00, %519 ], [ %559, %524 ]
  %527 = phi i32 [ 0, %519 ], [ %560, %524 ]
  %528 = mul i32 %527, 2
  %529 = add i32 0, %528
  %530 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %529
  %531 = load float, float* %530, align 4
  %532 = mul i32 %527, 2
  %533 = add i32 1, %532
  %534 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %533
  %535 = load float, float* %534, align 4
  %536 = fmul fast float %520, %531
  %537 = call float @dx.op.tertiary.f32(i32 46, float %535, float %522, float %536)  ; FMad(a,b,c)
  %538 = fmul fast float %531, %521
  %539 = call float @dx.op.tertiary.f32(i32 46, float %535, float %523, float %538)  ; FMad(a,b,c)
  %540 = fadd fast float %537, %510
  %541 = fadd fast float %539, %511
  %542 = fmul fast float %540, %427
  %543 = fmul fast float %541, %427
  %544 = call float @dx.op.binary.f32(i32 35, float %542, float %423)  ; FMax(a,b)
  %545 = call float @dx.op.binary.f32(i32 35, float %543, float %423)  ; FMax(a,b)
  %546 = call float @dx.op.binary.f32(i32 36, float %544, float %424)  ; FMin(a,b)
  %547 = call float @dx.op.binary.f32(i32 36, float %545, float %424)  ; FMin(a,b)
  %548 = fadd fast float %546, %421
  %549 = fadd fast float %547, %422
  %550 = uitofp i32 %483 to float
  %551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %548, float %549, float %550, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %552 = extractvalue %dx.types.ResRet.f32 %551, 0
  %553 = fsub fast float %552, %513
  %554 = fsub fast float %553, %431
  %555 = fcmp fast ogt float %554, 0.000000e+00
  %556 = select i1 %555, float 1.000000e+00, float 0.000000e+00
  %557 = fadd fast float %556, %525
  %558 = select i1 %555, float %554, float 0.000000e+00
  %559 = fadd fast float %558, %526
  %560 = add nuw nsw i32 %527, 1
  %561 = icmp eq i32 %560, 8
  br i1 %561, label %562, label %524

; <label>:562                                     ; preds = %524
  %563 = fdiv fast float 1.000000e+00, %557
  %564 = fmul fast float %563, %559
  %565 = fdiv fast float 1.000000e+00, %513
  %566 = fmul fast float %564, %565
  %567 = call float @dx.op.unary.f32(i32 7, float %566)  ; Saturate(value)
  %568 = call float @dx.op.binary.f32(i32 35, float %567, float 0.000000e+00)  ; FMax(a,b)
  %569 = fmul fast float %557, 1.250000e-01
  %570 = call float @dx.op.unary.f32(i32 7, float %569)  ; Saturate(value)
  %571 = fmul fast float %570, 2.000000e+00
  %572 = fadd fast float %571, -1.000000e+00
  %573 = fcmp fast ogt float %572, 0.000000e+00
  %574 = fcmp fast olt float %572, 0.000000e+00
  %575 = zext i1 %573 to i32
  %576 = zext i1 %574 to i32
  %577 = sub nsw i32 %575, %576
  %578 = sitofp i32 %577 to float
  %579 = fmul fast float %578, %572
  %580 = fsub fast float 1.000000e+00, %579
  %581 = fmul fast float %580, %580
  %582 = fmul fast float %581, %580
  %583 = fsub fast float %580, %582
  %584 = fmul fast float %583, %568
  %585 = fsub fast float 1.000000e+00, %582
  %586 = fsub fast float %585, %584
  %587 = fmul fast float %578, 5.000000e-01
  %588 = fmul fast float %587, %586
  %589 = fsub fast float 5.000000e-01, %588
  br label %1205

; <label>:590                                     ; preds = %418
  %591 = fsub fast float 1.000000e+00, %513
  %592 = fmul fast float %591, 5.000000e-01
  %593 = fadd fast float %592, %513
  %594 = fsub fast float %491, %312
  %595 = fsub fast float %492, %313
  %596 = fsub fast float %493, %314
  %597 = call float @dx.op.dot3.f32(i32 55, float %594, float %595, float %596, float %304, float %305, float %306)  ; Dot3(ax,ay,az,bx,by,bz)
  %598 = fdiv fast float %597, %332
  %599 = call float @dx.op.binary.f32(i32 35, float %598, float -1.000000e+00)  ; FMax(a,b)
  %600 = call float @dx.op.binary.f32(i32 36, float %599, float 1.000000e+00)  ; FMin(a,b)
  %601 = fmul fast float %600, %304
  %602 = fmul fast float %600, %305
  %603 = fmul fast float %600, %306
  %604 = fsub fast float %594, %601
  %605 = fsub fast float %595, %602
  %606 = fsub fast float %596, %603
  %607 = call float @dx.op.dot3.f32(i32 55, float %604, float %605, float %606, float %604, float %605, float %606)  ; Dot3(ax,ay,az,bx,by,bz)
  %608 = call float @dx.op.unary.f32(i32 25, float %607)  ; Rsqrt(value)
  %609 = fmul fast float %604, %608
  %610 = fmul fast float %605, %608
  %611 = fmul fast float %606, %608
  %612 = call float @dx.op.unary.f32(i32 25, float %332)  ; Rsqrt(value)
  %613 = fmul fast float %612, %304
  %614 = fmul fast float %612, %305
  %615 = fmul fast float %612, %306
  br i1 %486, label %616, label %620, !dx.controlflow.hints !44

; <label>:616                                     ; preds = %590
  %617 = fcmp fast olt float %610, 0x3FE6666660000000
  %618 = select i1 %617, float 1.000000e+00, float 0.000000e+00
  %619 = select i1 %617, float 0.000000e+00, float 1.000000e+00
  br label %620

; <label>:620                                     ; preds = %616, %590
  %621 = phi float [ 0.000000e+00, %616 ], [ %613, %590 ]
  %622 = phi float [ %618, %616 ], [ %614, %590 ]
  %623 = phi float [ %619, %616 ], [ %615, %590 ]
  %624 = fmul fast float %622, %611
  %625 = fmul fast float %623, %610
  %626 = fsub fast float %624, %625
  %627 = fmul fast float %623, %609
  %628 = fmul fast float %621, %611
  %629 = fsub fast float %627, %628
  %630 = fmul fast float %621, %610
  %631 = fmul fast float %622, %609
  %632 = fsub fast float %630, %631
  %633 = call float @dx.op.dot3.f32(i32 55, float %626, float %629, float %632, float %626, float %629, float %632)  ; Dot3(ax,ay,az,bx,by,bz)
  %634 = call float @dx.op.unary.f32(i32 25, float %633)  ; Rsqrt(value)
  %635 = fmul fast float %634, %309
  %636 = fmul fast float %635, %626
  %637 = fmul fast float %635, %629
  %638 = fmul fast float %632, %309
  %639 = fmul fast float %638, %634
  %640 = fmul fast float %510, %461
  %641 = call float @dx.op.tertiary.f32(i32 46, float %511, float %467, float %640)  ; FMad(a,b,c)
  %642 = call float @dx.op.tertiary.f32(i32 46, float %593, float %473, float %641)  ; FMad(a,b,c)
  %643 = fadd fast float %642, %479
  %644 = fmul fast float %510, %462
  %645 = call float @dx.op.tertiary.f32(i32 46, float %511, float %468, float %644)  ; FMad(a,b,c)
  %646 = call float @dx.op.tertiary.f32(i32 46, float %593, float %474, float %645)  ; FMad(a,b,c)
  %647 = fadd fast float %646, %480
  %648 = fmul fast float %510, %463
  %649 = call float @dx.op.tertiary.f32(i32 46, float %511, float %469, float %648)  ; FMad(a,b,c)
  %650 = call float @dx.op.tertiary.f32(i32 46, float %593, float %475, float %649)  ; FMad(a,b,c)
  %651 = fadd fast float %650, %481
  %652 = fmul fast float %510, %464
  %653 = call float @dx.op.tertiary.f32(i32 46, float %511, float %470, float %652)  ; FMad(a,b,c)
  %654 = call float @dx.op.tertiary.f32(i32 46, float %593, float %476, float %653)  ; FMad(a,b,c)
  %655 = fadd fast float %654, %482
  %656 = fdiv fast float 1.000000e+00, %655
  %657 = fmul fast float %656, %643
  %658 = fmul fast float %656, %647
  %659 = fmul fast float %656, %651
  %660 = fsub fast float -0.000000e+00, %609
  %661 = fsub fast float -0.000000e+00, %610
  %662 = fsub fast float -0.000000e+00, %611
  %663 = fsub fast float %312, %636
  %664 = fsub fast float %313, %637
  %665 = fsub fast float %314, %639
  %666 = fsub fast float %657, %663
  %667 = fsub fast float %658, %664
  %668 = fsub fast float %659, %665
  %669 = call float @dx.op.dot3.f32(i32 55, float %666, float %667, float %668, float %666, float %667, float %668)  ; Dot3(ax,ay,az,bx,by,bz)
  %670 = call float @dx.op.unary.f32(i32 25, float %669)  ; Rsqrt(value)
  %671 = fmul fast float %666, %670
  %672 = fmul fast float %667, %670
  %673 = fmul fast float %668, %670
  %674 = fsub fast float %491, %663
  %675 = fsub fast float %492, %664
  %676 = fsub fast float %493, %665
  %677 = call float @dx.op.dot3.f32(i32 55, float %660, float %661, float %662, float %674, float %675, float %676)  ; Dot3(ax,ay,az,bx,by,bz)
  %678 = call float @dx.op.dot3.f32(i32 55, float %660, float %661, float %662, float %671, float %672, float %673)  ; Dot3(ax,ay,az,bx,by,bz)
  %679 = fdiv fast float 1.000000e+00, %678
  %680 = fmul fast float %679, %677
  %681 = fmul fast float %680, %671
  %682 = fmul fast float %680, %672
  %683 = fmul fast float %680, %673
  %684 = fadd fast float %681, %663
  %685 = fadd fast float %682, %664
  %686 = fadd fast float %683, %665
  %687 = fadd fast float %636, %312
  %688 = fadd fast float %637, %313
  %689 = fadd fast float %639, %314
  %690 = fsub fast float %657, %687
  %691 = fsub fast float %658, %688
  %692 = fsub fast float %659, %689
  %693 = call float @dx.op.dot3.f32(i32 55, float %690, float %691, float %692, float %690, float %691, float %692)  ; Dot3(ax,ay,az,bx,by,bz)
  %694 = call float @dx.op.unary.f32(i32 25, float %693)  ; Rsqrt(value)
  %695 = fmul fast float %694, %690
  %696 = fmul fast float %694, %691
  %697 = fmul fast float %694, %692
  %698 = fsub fast float %491, %687
  %699 = fsub fast float %492, %688
  %700 = fsub fast float %493, %689
  %701 = call float @dx.op.dot3.f32(i32 55, float %660, float %661, float %662, float %698, float %699, float %700)  ; Dot3(ax,ay,az,bx,by,bz)
  %702 = call float @dx.op.dot3.f32(i32 55, float %660, float %661, float %662, float %695, float %696, float %697)  ; Dot3(ax,ay,az,bx,by,bz)
  %703 = fdiv fast float 1.000000e+00, %702
  %704 = fmul fast float %703, %701
  %705 = fmul fast float %704, %695
  %706 = fmul fast float %704, %696
  %707 = fmul fast float %704, %697
  %708 = fadd fast float %705, %687
  %709 = fadd fast float %706, %688
  %710 = fadd fast float %707, %689
  %711 = fmul fast float %684, %437
  %712 = call float @dx.op.tertiary.f32(i32 46, float %685, float %443, float %711)  ; FMad(a,b,c)
  %713 = call float @dx.op.tertiary.f32(i32 46, float %686, float %449, float %712)  ; FMad(a,b,c)
  %714 = fadd fast float %713, %455
  %715 = fmul fast float %684, %438
  %716 = call float @dx.op.tertiary.f32(i32 46, float %685, float %444, float %715)  ; FMad(a,b,c)
  %717 = call float @dx.op.tertiary.f32(i32 46, float %686, float %450, float %716)  ; FMad(a,b,c)
  %718 = fadd fast float %717, %456
  %719 = fmul fast float %684, %440
  %720 = call float @dx.op.tertiary.f32(i32 46, float %685, float %446, float %719)  ; FMad(a,b,c)
  %721 = call float @dx.op.tertiary.f32(i32 46, float %686, float %452, float %720)  ; FMad(a,b,c)
  %722 = fadd fast float %721, %458
  %723 = fmul fast float %708, %437
  %724 = call float @dx.op.tertiary.f32(i32 46, float %709, float %443, float %723)  ; FMad(a,b,c)
  %725 = call float @dx.op.tertiary.f32(i32 46, float %710, float %449, float %724)  ; FMad(a,b,c)
  %726 = fadd fast float %725, %455
  %727 = fmul fast float %708, %438
  %728 = call float @dx.op.tertiary.f32(i32 46, float %709, float %444, float %727)  ; FMad(a,b,c)
  %729 = call float @dx.op.tertiary.f32(i32 46, float %710, float %450, float %728)  ; FMad(a,b,c)
  %730 = fadd fast float %729, %456
  %731 = fmul fast float %708, %440
  %732 = call float @dx.op.tertiary.f32(i32 46, float %709, float %446, float %731)  ; FMad(a,b,c)
  %733 = call float @dx.op.tertiary.f32(i32 46, float %710, float %452, float %732)  ; FMad(a,b,c)
  %734 = fadd fast float %733, %458
  %735 = fdiv fast float 1.000000e+00, %722
  %736 = fmul fast float %735, %714
  %737 = fmul fast float %735, %718
  %738 = fdiv fast float 1.000000e+00, %734
  %739 = fmul fast float %738, %726
  %740 = fmul fast float %738, %730
  %741 = fsub fast float %739, %736
  %742 = fsub fast float %740, %737
  %743 = call float @dx.op.dot2.f32(i32 54, float %741, float %742, float %741, float %742)  ; Dot2(ax,ay,bx,by)
  %744 = call float @dx.op.unary.f32(i32 25, float %743)  ; Rsqrt(value)
  %745 = fmul fast float %741, %744
  %746 = fmul fast float %742, %744
  %747 = fmul fast float %741, %741
  %748 = fmul fast float %742, %742
  %749 = fadd fast float %747, %748
  %750 = call float @dx.op.unary.f32(i32 24, float %749)  ; Sqrt(value)
  %751 = fmul fast float %750, 5.000000e-01
  br i1 %486, label %844, label %752, !dx.controlflow.hints !45

; <label>:752                                     ; preds = %620
  %753 = fsub fast float %312, %304
  %754 = fsub fast float %313, %305
  %755 = fsub fast float %314, %306
  %756 = fsub fast float %657, %753
  %757 = fsub fast float %658, %754
  %758 = fsub fast float %659, %755
  %759 = call float @dx.op.dot3.f32(i32 55, float %756, float %757, float %758, float %756, float %757, float %758)  ; Dot3(ax,ay,az,bx,by,bz)
  %760 = call float @dx.op.unary.f32(i32 25, float %759)  ; Rsqrt(value)
  %761 = fmul fast float %760, %756
  %762 = fmul fast float %760, %757
  %763 = fmul fast float %760, %758
  %764 = fsub fast float %491, %753
  %765 = fsub fast float %492, %754
  %766 = fsub fast float %493, %755
  %767 = call float @dx.op.dot3.f32(i32 55, float %660, float %661, float %662, float %764, float %765, float %766)  ; Dot3(ax,ay,az,bx,by,bz)
  %768 = call float @dx.op.dot3.f32(i32 55, float %660, float %661, float %662, float %761, float %762, float %763)  ; Dot3(ax,ay,az,bx,by,bz)
  %769 = fdiv fast float 1.000000e+00, %768
  %770 = fmul fast float %769, %767
  %771 = fmul fast float %770, %761
  %772 = fmul fast float %770, %762
  %773 = fmul fast float %770, %763
  %774 = fadd fast float %771, %753
  %775 = fadd fast float %772, %754
  %776 = fadd fast float %773, %755
  %777 = fadd fast float %312, %304
  %778 = fadd fast float %313, %305
  %779 = fadd fast float %314, %306
  %780 = fsub fast float %657, %777
  %781 = fsub fast float %658, %778
  %782 = fsub fast float %659, %779
  %783 = call float @dx.op.dot3.f32(i32 55, float %780, float %781, float %782, float %780, float %781, float %782)  ; Dot3(ax,ay,az,bx,by,bz)
  %784 = call float @dx.op.unary.f32(i32 25, float %783)  ; Rsqrt(value)
  %785 = fmul fast float %784, %780
  %786 = fmul fast float %784, %781
  %787 = fmul fast float %784, %782
  %788 = fsub fast float %491, %777
  %789 = fsub fast float %492, %778
  %790 = fsub fast float %493, %779
  %791 = call float @dx.op.dot3.f32(i32 55, float %660, float %661, float %662, float %788, float %789, float %790)  ; Dot3(ax,ay,az,bx,by,bz)
  %792 = call float @dx.op.dot3.f32(i32 55, float %660, float %661, float %662, float %785, float %786, float %787)  ; Dot3(ax,ay,az,bx,by,bz)
  %793 = fdiv fast float 1.000000e+00, %792
  %794 = fmul fast float %793, %791
  %795 = fmul fast float %794, %785
  %796 = fmul fast float %794, %786
  %797 = fmul fast float %794, %787
  %798 = fadd fast float %795, %777
  %799 = fadd fast float %796, %778
  %800 = fadd fast float %797, %779
  %801 = fmul fast float %774, %437
  %802 = call float @dx.op.tertiary.f32(i32 46, float %775, float %443, float %801)  ; FMad(a,b,c)
  %803 = call float @dx.op.tertiary.f32(i32 46, float %776, float %449, float %802)  ; FMad(a,b,c)
  %804 = fadd fast float %803, %455
  %805 = fmul fast float %774, %438
  %806 = call float @dx.op.tertiary.f32(i32 46, float %775, float %444, float %805)  ; FMad(a,b,c)
  %807 = call float @dx.op.tertiary.f32(i32 46, float %776, float %450, float %806)  ; FMad(a,b,c)
  %808 = fadd fast float %807, %456
  %809 = fmul fast float %774, %440
  %810 = call float @dx.op.tertiary.f32(i32 46, float %775, float %446, float %809)  ; FMad(a,b,c)
  %811 = call float @dx.op.tertiary.f32(i32 46, float %776, float %452, float %810)  ; FMad(a,b,c)
  %812 = fadd fast float %811, %458
  %813 = fmul fast float %798, %437
  %814 = call float @dx.op.tertiary.f32(i32 46, float %799, float %443, float %813)  ; FMad(a,b,c)
  %815 = call float @dx.op.tertiary.f32(i32 46, float %800, float %449, float %814)  ; FMad(a,b,c)
  %816 = fadd fast float %815, %455
  %817 = fmul fast float %798, %438
  %818 = call float @dx.op.tertiary.f32(i32 46, float %799, float %444, float %817)  ; FMad(a,b,c)
  %819 = call float @dx.op.tertiary.f32(i32 46, float %800, float %450, float %818)  ; FMad(a,b,c)
  %820 = fadd fast float %819, %456
  %821 = fmul fast float %798, %440
  %822 = call float @dx.op.tertiary.f32(i32 46, float %799, float %446, float %821)  ; FMad(a,b,c)
  %823 = call float @dx.op.tertiary.f32(i32 46, float %800, float %452, float %822)  ; FMad(a,b,c)
  %824 = fadd fast float %823, %458
  %825 = fdiv fast float 1.000000e+00, %812
  %826 = fmul fast float %825, %804
  %827 = fmul fast float %825, %808
  %828 = fdiv fast float 1.000000e+00, %824
  %829 = fmul fast float %828, %816
  %830 = fmul fast float %828, %820
  %831 = fsub fast float %829, %826
  %832 = fsub fast float %830, %827
  %833 = call float @dx.op.dot2.f32(i32 54, float %831, float %832, float %831, float %832)  ; Dot2(ax,ay,bx,by)
  %834 = call float @dx.op.unary.f32(i32 25, float %833)  ; Rsqrt(value)
  %835 = fmul fast float %831, %834
  %836 = fmul fast float %832, %834
  %837 = fmul fast float %831, %831
  %838 = fmul fast float %832, %832
  %839 = fadd fast float %837, %838
  %840 = call float @dx.op.unary.f32(i32 24, float %839)  ; Sqrt(value)
  %841 = fmul fast float %840, 5.000000e-01
  %842 = fcmp fast olt float %841, %751
  br i1 %842, label %843, label %844, !dx.controlflow.hints !46

; <label>:843                                     ; preds = %752
  br label %844

; <label>:844                                     ; preds = %843, %752, %620
  %845 = phi float [ %751, %620 ], [ %841, %843 ], [ %751, %752 ]
  %846 = phi float [ %751, %620 ], [ %751, %843 ], [ %841, %752 ]
  %847 = phi float [ %745, %620 ], [ %745, %843 ], [ %835, %752 ]
  %848 = phi float [ %746, %620 ], [ %746, %843 ], [ %836, %752 ]
  %849 = fmul fast float %845, %432
  %850 = fdiv fast float %849, %846
  %851 = fsub fast float %432, %850
  %852 = fmul fast float %847, %847
  %853 = fmul fast float %852, %851
  %854 = fadd fast float %853, %850
  %855 = fmul fast float %848, %847
  %856 = fmul fast float %855, %851
  %857 = fmul fast float %848, %848
  %858 = fmul fast float %857, %851
  %859 = fadd fast float %858, %850
  %860 = fmul fast float %854, %516
  %861 = call float @dx.op.tertiary.f32(i32 46, float %515, float %856, float %860)  ; FMad(a,b,c)
  %862 = fmul fast float %856, %516
  %863 = call float @dx.op.tertiary.f32(i32 46, float %515, float %859, float %862)  ; FMad(a,b,c)
  %864 = fmul fast float %854, %517
  %865 = call float @dx.op.tertiary.f32(i32 46, float %516, float %856, float %864)  ; FMad(a,b,c)
  %866 = fmul fast float %856, %517
  %867 = call float @dx.op.tertiary.f32(i32 46, float %516, float %859, float %866)  ; FMad(a,b,c)
  br label %868

; <label>:868                                     ; preds = %906, %844
  %869 = phi float [ 0.000000e+00, %844 ], [ %907, %906 ]
  %870 = phi float [ 0.000000e+00, %844 ], [ %908, %906 ]
  %871 = phi float [ 0.000000e+00, %844 ], [ %909, %906 ]
  %872 = phi float [ 0.000000e+00, %844 ], [ %910, %906 ]
  %873 = phi i32 [ 0, %844 ], [ %911, %906 ]
  %874 = mul i32 %873, 2
  %875 = add i32 0, %874
  %876 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %875
  %877 = load float, float* %876, align 4
  %878 = mul i32 %873, 2
  %879 = add i32 1, %878
  %880 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %879
  %881 = load float, float* %880, align 4
  %882 = fmul fast float %877, %861
  %883 = call float @dx.op.tertiary.f32(i32 46, float %881, float %865, float %882)  ; FMad(a,b,c)
  %884 = fmul fast float %877, %863
  %885 = call float @dx.op.tertiary.f32(i32 46, float %881, float %867, float %884)  ; FMad(a,b,c)
  %886 = fadd fast float %883, %510
  %887 = fadd fast float %885, %511
  %888 = fmul fast float %886, %427
  %889 = fmul fast float %887, %427
  %890 = call float @dx.op.binary.f32(i32 35, float %888, float %423)  ; FMax(a,b)
  %891 = call float @dx.op.binary.f32(i32 35, float %889, float %423)  ; FMax(a,b)
  %892 = call float @dx.op.binary.f32(i32 36, float %890, float %424)  ; FMin(a,b)
  %893 = call float @dx.op.binary.f32(i32 36, float %891, float %424)  ; FMin(a,b)
  %894 = fadd fast float %892, %421
  %895 = fadd fast float %893, %422
  %896 = uitofp i32 %483 to float
  %897 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %894, float %895, float %896, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %898 = extractvalue %dx.types.ResRet.f32 %897, 0
  %899 = fadd fast float %513, %431
  %900 = fcmp fast olt float %899, %898
  br i1 %900, label %901, label %906, !dx.controlflow.hints !47

; <label>:901                                     ; preds = %868
  %902 = fadd fast float %898, %871
  %903 = fadd fast float %883, %869
  %904 = fadd fast float %885, %870
  %905 = fadd fast float %872, 1.000000e+00
  br label %906

; <label>:906                                     ; preds = %901, %868
  %907 = phi float [ %903, %901 ], [ %869, %868 ]
  %908 = phi float [ %904, %901 ], [ %870, %868 ]
  %909 = phi float [ %902, %901 ], [ %871, %868 ]
  %910 = phi float [ %905, %901 ], [ %872, %868 ]
  %911 = add nuw nsw i32 %873, 1
  %912 = icmp eq i32 %911, 8
  br i1 %912, label %913, label %868

; <label>:913                                     ; preds = %906
  %914 = fdiv fast float 1.000000e+00, %910
  %915 = fcmp fast oeq float %910, 0.000000e+00
  %916 = fmul fast float %914, %909
  %917 = select i1 %915, float -1.000000e+00, float %916
  %918 = fcmp fast olt float %917, 0.000000e+00
  br i1 %918, label %1205, label %919, !dx.controlflow.hints !48

; <label>:919                                     ; preds = %913
  %920 = fmul fast float %914, %908
  %921 = select i1 %915, float 0.000000e+00, float %920
  %922 = fmul fast float %914, %907
  %923 = select i1 %915, float 0.000000e+00, float %922
  %924 = fadd fast float %923, %510
  %925 = fadd fast float %921, %511
  br i1 %486, label %926, label %930, !dx.controlflow.hints !44

; <label>:926                                     ; preds = %919
  %927 = fcmp fast olt float %610, 0x3FE6666660000000
  %928 = select i1 %927, float 1.000000e+00, float 0.000000e+00
  %929 = select i1 %927, float 0.000000e+00, float 1.000000e+00
  br label %930

; <label>:930                                     ; preds = %926, %919
  %931 = phi float [ 0.000000e+00, %926 ], [ %613, %919 ]
  %932 = phi float [ %928, %926 ], [ %614, %919 ]
  %933 = phi float [ %929, %926 ], [ %615, %919 ]
  %934 = fmul fast float %932, %611
  %935 = fmul fast float %933, %610
  %936 = fsub fast float %934, %935
  %937 = fmul fast float %933, %609
  %938 = fmul fast float %931, %611
  %939 = fsub fast float %937, %938
  %940 = fmul fast float %931, %610
  %941 = fmul fast float %932, %609
  %942 = fsub fast float %940, %941
  %943 = call float @dx.op.dot3.f32(i32 55, float %936, float %939, float %942, float %936, float %939, float %942)  ; Dot3(ax,ay,az,bx,by,bz)
  %944 = call float @dx.op.unary.f32(i32 25, float %943)  ; Rsqrt(value)
  %945 = fmul fast float %944, %309
  %946 = fmul fast float %945, %936
  %947 = fmul fast float %945, %939
  %948 = fmul fast float %942, %309
  %949 = fmul fast float %948, %944
  %950 = fmul fast float %924, %461
  %951 = call float @dx.op.tertiary.f32(i32 46, float %925, float %467, float %950)  ; FMad(a,b,c)
  %952 = call float @dx.op.tertiary.f32(i32 46, float %917, float %473, float %951)  ; FMad(a,b,c)
  %953 = fadd fast float %952, %479
  %954 = fmul fast float %924, %462
  %955 = call float @dx.op.tertiary.f32(i32 46, float %925, float %468, float %954)  ; FMad(a,b,c)
  %956 = call float @dx.op.tertiary.f32(i32 46, float %917, float %474, float %955)  ; FMad(a,b,c)
  %957 = fadd fast float %956, %480
  %958 = fmul fast float %924, %463
  %959 = call float @dx.op.tertiary.f32(i32 46, float %925, float %469, float %958)  ; FMad(a,b,c)
  %960 = call float @dx.op.tertiary.f32(i32 46, float %917, float %475, float %959)  ; FMad(a,b,c)
  %961 = fadd fast float %960, %481
  %962 = fmul fast float %924, %464
  %963 = call float @dx.op.tertiary.f32(i32 46, float %925, float %470, float %962)  ; FMad(a,b,c)
  %964 = call float @dx.op.tertiary.f32(i32 46, float %917, float %476, float %963)  ; FMad(a,b,c)
  %965 = fadd fast float %964, %482
  %966 = fdiv fast float 1.000000e+00, %965
  %967 = fmul fast float %966, %953
  %968 = fmul fast float %966, %957
  %969 = fmul fast float %966, %961
  %970 = fsub fast float %312, %946
  %971 = fsub fast float %313, %947
  %972 = fsub fast float %314, %949
  %973 = fsub fast float %967, %970
  %974 = fsub fast float %968, %971
  %975 = fsub fast float %969, %972
  %976 = call float @dx.op.dot3.f32(i32 55, float %973, float %974, float %975, float %973, float %974, float %975)  ; Dot3(ax,ay,az,bx,by,bz)
  %977 = call float @dx.op.unary.f32(i32 25, float %976)  ; Rsqrt(value)
  %978 = fmul fast float %973, %977
  %979 = fmul fast float %974, %977
  %980 = fmul fast float %975, %977
  %981 = fsub fast float %491, %970
  %982 = fsub fast float %492, %971
  %983 = fsub fast float %493, %972
  %984 = call float @dx.op.dot3.f32(i32 55, float %660, float %661, float %662, float %981, float %982, float %983)  ; Dot3(ax,ay,az,bx,by,bz)
  %985 = call float @dx.op.dot3.f32(i32 55, float %660, float %661, float %662, float %978, float %979, float %980)  ; Dot3(ax,ay,az,bx,by,bz)
  %986 = fdiv fast float 1.000000e+00, %985
  %987 = fmul fast float %986, %984
  %988 = fmul fast float %987, %978
  %989 = fmul fast float %987, %979
  %990 = fmul fast float %987, %980
  %991 = fadd fast float %988, %970
  %992 = fadd fast float %989, %971
  %993 = fadd fast float %990, %972
  %994 = fadd fast float %946, %312
  %995 = fadd fast float %947, %313
  %996 = fadd fast float %949, %314
  %997 = fsub fast float %967, %994
  %998 = fsub fast float %968, %995
  %999 = fsub fast float %969, %996
  %1000 = call float @dx.op.dot3.f32(i32 55, float %997, float %998, float %999, float %997, float %998, float %999)  ; Dot3(ax,ay,az,bx,by,bz)
  %1001 = call float @dx.op.unary.f32(i32 25, float %1000)  ; Rsqrt(value)
  %1002 = fmul fast float %1001, %997
  %1003 = fmul fast float %1001, %998
  %1004 = fmul fast float %1001, %999
  %1005 = fsub fast float %491, %994
  %1006 = fsub fast float %492, %995
  %1007 = fsub fast float %493, %996
  %1008 = call float @dx.op.dot3.f32(i32 55, float %660, float %661, float %662, float %1005, float %1006, float %1007)  ; Dot3(ax,ay,az,bx,by,bz)
  %1009 = call float @dx.op.dot3.f32(i32 55, float %660, float %661, float %662, float %1002, float %1003, float %1004)  ; Dot3(ax,ay,az,bx,by,bz)
  %1010 = fdiv fast float 1.000000e+00, %1009
  %1011 = fmul fast float %1010, %1008
  %1012 = fmul fast float %1011, %1002
  %1013 = fmul fast float %1011, %1003
  %1014 = fmul fast float %1011, %1004
  %1015 = fadd fast float %1012, %994
  %1016 = fadd fast float %1013, %995
  %1017 = fadd fast float %1014, %996
  %1018 = fmul fast float %991, %437
  %1019 = call float @dx.op.tertiary.f32(i32 46, float %992, float %443, float %1018)  ; FMad(a,b,c)
  %1020 = call float @dx.op.tertiary.f32(i32 46, float %993, float %449, float %1019)  ; FMad(a,b,c)
  %1021 = fadd fast float %1020, %455
  %1022 = fmul fast float %991, %438
  %1023 = call float @dx.op.tertiary.f32(i32 46, float %992, float %444, float %1022)  ; FMad(a,b,c)
  %1024 = call float @dx.op.tertiary.f32(i32 46, float %993, float %450, float %1023)  ; FMad(a,b,c)
  %1025 = fadd fast float %1024, %456
  %1026 = fmul fast float %991, %440
  %1027 = call float @dx.op.tertiary.f32(i32 46, float %992, float %446, float %1026)  ; FMad(a,b,c)
  %1028 = call float @dx.op.tertiary.f32(i32 46, float %993, float %452, float %1027)  ; FMad(a,b,c)
  %1029 = fadd fast float %1028, %458
  %1030 = fmul fast float %1015, %437
  %1031 = call float @dx.op.tertiary.f32(i32 46, float %1016, float %443, float %1030)  ; FMad(a,b,c)
  %1032 = call float @dx.op.tertiary.f32(i32 46, float %1017, float %449, float %1031)  ; FMad(a,b,c)
  %1033 = fadd fast float %1032, %455
  %1034 = fmul fast float %1015, %438
  %1035 = call float @dx.op.tertiary.f32(i32 46, float %1016, float %444, float %1034)  ; FMad(a,b,c)
  %1036 = call float @dx.op.tertiary.f32(i32 46, float %1017, float %450, float %1035)  ; FMad(a,b,c)
  %1037 = fadd fast float %1036, %456
  %1038 = fmul fast float %1015, %440
  %1039 = call float @dx.op.tertiary.f32(i32 46, float %1016, float %446, float %1038)  ; FMad(a,b,c)
  %1040 = call float @dx.op.tertiary.f32(i32 46, float %1017, float %452, float %1039)  ; FMad(a,b,c)
  %1041 = fadd fast float %1040, %458
  %1042 = fdiv fast float 1.000000e+00, %1029
  %1043 = fmul fast float %1042, %1021
  %1044 = fmul fast float %1042, %1025
  %1045 = fdiv fast float 1.000000e+00, %1041
  %1046 = fmul fast float %1045, %1033
  %1047 = fmul fast float %1045, %1037
  %1048 = fsub fast float %1046, %1043
  %1049 = fsub fast float %1047, %1044
  %1050 = call float @dx.op.dot2.f32(i32 54, float %1048, float %1049, float %1048, float %1049)  ; Dot2(ax,ay,bx,by)
  %1051 = call float @dx.op.unary.f32(i32 25, float %1050)  ; Rsqrt(value)
  %1052 = fmul fast float %1048, %1051
  %1053 = fmul fast float %1049, %1051
  %1054 = fmul fast float %1048, %1048
  %1055 = fmul fast float %1049, %1049
  %1056 = fadd fast float %1054, %1055
  %1057 = call float @dx.op.unary.f32(i32 24, float %1056)  ; Sqrt(value)
  %1058 = fmul fast float %1057, 5.000000e-01
  br i1 %486, label %1151, label %1059, !dx.controlflow.hints !45

; <label>:1059                                    ; preds = %930
  %1060 = fsub fast float %312, %304
  %1061 = fsub fast float %313, %305
  %1062 = fsub fast float %314, %306
  %1063 = fsub fast float %967, %1060
  %1064 = fsub fast float %968, %1061
  %1065 = fsub fast float %969, %1062
  %1066 = call float @dx.op.dot3.f32(i32 55, float %1063, float %1064, float %1065, float %1063, float %1064, float %1065)  ; Dot3(ax,ay,az,bx,by,bz)
  %1067 = call float @dx.op.unary.f32(i32 25, float %1066)  ; Rsqrt(value)
  %1068 = fmul fast float %1067, %1063
  %1069 = fmul fast float %1067, %1064
  %1070 = fmul fast float %1067, %1065
  %1071 = fsub fast float %491, %1060
  %1072 = fsub fast float %492, %1061
  %1073 = fsub fast float %493, %1062
  %1074 = call float @dx.op.dot3.f32(i32 55, float %660, float %661, float %662, float %1071, float %1072, float %1073)  ; Dot3(ax,ay,az,bx,by,bz)
  %1075 = call float @dx.op.dot3.f32(i32 55, float %660, float %661, float %662, float %1068, float %1069, float %1070)  ; Dot3(ax,ay,az,bx,by,bz)
  %1076 = fdiv fast float 1.000000e+00, %1075
  %1077 = fmul fast float %1076, %1074
  %1078 = fmul fast float %1077, %1068
  %1079 = fmul fast float %1077, %1069
  %1080 = fmul fast float %1077, %1070
  %1081 = fadd fast float %1078, %1060
  %1082 = fadd fast float %1079, %1061
  %1083 = fadd fast float %1080, %1062
  %1084 = fadd fast float %312, %304
  %1085 = fadd fast float %313, %305
  %1086 = fadd fast float %314, %306
  %1087 = fsub fast float %967, %1084
  %1088 = fsub fast float %968, %1085
  %1089 = fsub fast float %969, %1086
  %1090 = call float @dx.op.dot3.f32(i32 55, float %1087, float %1088, float %1089, float %1087, float %1088, float %1089)  ; Dot3(ax,ay,az,bx,by,bz)
  %1091 = call float @dx.op.unary.f32(i32 25, float %1090)  ; Rsqrt(value)
  %1092 = fmul fast float %1091, %1087
  %1093 = fmul fast float %1091, %1088
  %1094 = fmul fast float %1091, %1089
  %1095 = fsub fast float %491, %1084
  %1096 = fsub fast float %492, %1085
  %1097 = fsub fast float %493, %1086
  %1098 = call float @dx.op.dot3.f32(i32 55, float %660, float %661, float %662, float %1095, float %1096, float %1097)  ; Dot3(ax,ay,az,bx,by,bz)
  %1099 = call float @dx.op.dot3.f32(i32 55, float %660, float %661, float %662, float %1092, float %1093, float %1094)  ; Dot3(ax,ay,az,bx,by,bz)
  %1100 = fdiv fast float 1.000000e+00, %1099
  %1101 = fmul fast float %1100, %1098
  %1102 = fmul fast float %1101, %1092
  %1103 = fmul fast float %1101, %1093
  %1104 = fmul fast float %1101, %1094
  %1105 = fadd fast float %1102, %1084
  %1106 = fadd fast float %1103, %1085
  %1107 = fadd fast float %1104, %1086
  %1108 = fmul fast float %1081, %437
  %1109 = call float @dx.op.tertiary.f32(i32 46, float %1082, float %443, float %1108)  ; FMad(a,b,c)
  %1110 = call float @dx.op.tertiary.f32(i32 46, float %1083, float %449, float %1109)  ; FMad(a,b,c)
  %1111 = fadd fast float %1110, %455
  %1112 = fmul fast float %1081, %438
  %1113 = call float @dx.op.tertiary.f32(i32 46, float %1082, float %444, float %1112)  ; FMad(a,b,c)
  %1114 = call float @dx.op.tertiary.f32(i32 46, float %1083, float %450, float %1113)  ; FMad(a,b,c)
  %1115 = fadd fast float %1114, %456
  %1116 = fmul fast float %1081, %440
  %1117 = call float @dx.op.tertiary.f32(i32 46, float %1082, float %446, float %1116)  ; FMad(a,b,c)
  %1118 = call float @dx.op.tertiary.f32(i32 46, float %1083, float %452, float %1117)  ; FMad(a,b,c)
  %1119 = fadd fast float %1118, %458
  %1120 = fmul fast float %1105, %437
  %1121 = call float @dx.op.tertiary.f32(i32 46, float %1106, float %443, float %1120)  ; FMad(a,b,c)
  %1122 = call float @dx.op.tertiary.f32(i32 46, float %1107, float %449, float %1121)  ; FMad(a,b,c)
  %1123 = fadd fast float %1122, %455
  %1124 = fmul fast float %1105, %438
  %1125 = call float @dx.op.tertiary.f32(i32 46, float %1106, float %444, float %1124)  ; FMad(a,b,c)
  %1126 = call float @dx.op.tertiary.f32(i32 46, float %1107, float %450, float %1125)  ; FMad(a,b,c)
  %1127 = fadd fast float %1126, %456
  %1128 = fmul fast float %1105, %440
  %1129 = call float @dx.op.tertiary.f32(i32 46, float %1106, float %446, float %1128)  ; FMad(a,b,c)
  %1130 = call float @dx.op.tertiary.f32(i32 46, float %1107, float %452, float %1129)  ; FMad(a,b,c)
  %1131 = fadd fast float %1130, %458
  %1132 = fdiv fast float 1.000000e+00, %1119
  %1133 = fmul fast float %1132, %1111
  %1134 = fmul fast float %1132, %1115
  %1135 = fdiv fast float 1.000000e+00, %1131
  %1136 = fmul fast float %1135, %1123
  %1137 = fmul fast float %1135, %1127
  %1138 = fsub fast float %1136, %1133
  %1139 = fsub fast float %1137, %1134
  %1140 = call float @dx.op.dot2.f32(i32 54, float %1138, float %1139, float %1138, float %1139)  ; Dot2(ax,ay,bx,by)
  %1141 = call float @dx.op.unary.f32(i32 25, float %1140)  ; Rsqrt(value)
  %1142 = fmul fast float %1138, %1141
  %1143 = fmul fast float %1139, %1141
  %1144 = fmul fast float %1138, %1138
  %1145 = fmul fast float %1139, %1139
  %1146 = fadd fast float %1144, %1145
  %1147 = call float @dx.op.unary.f32(i32 24, float %1146)  ; Sqrt(value)
  %1148 = fmul fast float %1147, 5.000000e-01
  %1149 = fcmp fast olt float %1148, %1058
  br i1 %1149, label %1150, label %1151, !dx.controlflow.hints !46

; <label>:1150                                    ; preds = %1059
  br label %1151

; <label>:1151                                    ; preds = %1150, %1059, %930
  %1152 = phi float [ %1058, %930 ], [ %1148, %1150 ], [ %1058, %1059 ]
  %1153 = phi float [ %1058, %930 ], [ %1058, %1150 ], [ %1148, %1059 ]
  %1154 = phi float [ %1052, %930 ], [ %1052, %1150 ], [ %1142, %1059 ]
  %1155 = phi float [ %1053, %930 ], [ %1053, %1150 ], [ %1143, %1059 ]
  %1156 = fsub fast float %1153, %1152
  %1157 = fmul fast float %1154, %1154
  %1158 = fmul fast float %1157, %1156
  %1159 = fadd fast float %1158, %1152
  %1160 = fmul fast float %1154, %1156
  %1161 = fmul fast float %1160, %1155
  %1162 = fmul fast float %1155, %1155
  %1163 = fmul fast float %1162, %1156
  %1164 = fadd fast float %1163, %1152
  %1165 = fmul fast float %1159, %516
  %1166 = call float @dx.op.tertiary.f32(i32 46, float %515, float %1161, float %1165)  ; FMad(a,b,c)
  %1167 = fmul fast float %1161, %516
  %1168 = call float @dx.op.tertiary.f32(i32 46, float %515, float %1164, float %1167)  ; FMad(a,b,c)
  %1169 = fmul fast float %1159, %517
  %1170 = call float @dx.op.tertiary.f32(i32 46, float %516, float %1161, float %1169)  ; FMad(a,b,c)
  %1171 = fmul fast float %1161, %517
  %1172 = call float @dx.op.tertiary.f32(i32 46, float %516, float %1164, float %1171)  ; FMad(a,b,c)
  br label %1173

; <label>:1173                                    ; preds = %1173, %1151
  %1174 = phi float [ 0.000000e+00, %1151 ], [ %1200, %1173 ]
  %1175 = phi i32 [ 0, %1151 ], [ %1201, %1173 ]
  %1176 = mul i32 %1175, 2
  %1177 = add i32 0, %1176
  %1178 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1177
  %1179 = load float, float* %1178, align 4
  %1180 = mul i32 %1175, 2
  %1181 = add i32 1, %1180
  %1182 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1181
  %1183 = load float, float* %1182, align 4
  %1184 = fmul fast float %1179, %1166
  %1185 = call float @dx.op.tertiary.f32(i32 46, float %1183, float %1170, float %1184)  ; FMad(a,b,c)
  %1186 = fmul fast float %1179, %1168
  %1187 = call float @dx.op.tertiary.f32(i32 46, float %1183, float %1172, float %1186)  ; FMad(a,b,c)
  %1188 = fadd fast float %1185, %510
  %1189 = fadd fast float %1187, %511
  %1190 = fmul fast float %1188, %427
  %1191 = fmul fast float %1189, %427
  %1192 = call float @dx.op.binary.f32(i32 35, float %1190, float %423)  ; FMax(a,b)
  %1193 = call float @dx.op.binary.f32(i32 35, float %1191, float %423)  ; FMax(a,b)
  %1194 = call float @dx.op.binary.f32(i32 36, float %1192, float %424)  ; FMin(a,b)
  %1195 = call float @dx.op.binary.f32(i32 36, float %1193, float %424)  ; FMin(a,b)
  %1196 = fadd fast float %1194, %421
  %1197 = fadd fast float %1195, %422
  %1198 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %18, float %1196, float %1197, float %896, float undef, i32 0, i32 0, i32 undef, float %899)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1199 = extractvalue %dx.types.ResRet.f32 %1198, 0
  %1200 = fadd fast float %1199, %1174
  %1201 = add nuw nsw i32 %1175, 1
  %1202 = icmp eq i32 %1201, 8
  br i1 %1202, label %1203, label %1173

; <label>:1203                                    ; preds = %1173
  %1204 = fmul fast float %1200, 1.250000e-01
  br label %1205

; <label>:1205                                    ; preds = %1203, %913, %562
  %1206 = phi float [ %589, %562 ], [ %1204, %1203 ], [ 1.000000e+00, %913 ]
  %1207 = fcmp fast ogt float %1206, 0.000000e+00
  %1208 = xor i1 %55, true
  %1209 = and i1 %1207, %1208
  %1210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1211 = extractvalue %dx.types.CBufRet.f32 %1210, 1
  %1212 = fcmp fast olt float %1211, 0.000000e+00
  %1213 = and i1 %1209, %1212
  br i1 %1213, label %1214, label %1325, !dx.controlflow.hints !49

; <label>:1214                                    ; preds = %1205
  %1215 = fadd fast float %510, %423
  %1216 = fadd fast float %511, %423
  %1217 = fadd fast float %513, %431
  %1218 = fmul fast float %510, %461
  %1219 = call float @dx.op.tertiary.f32(i32 46, float %511, float %467, float %1218)  ; FMad(a,b,c)
  %1220 = call float @dx.op.tertiary.f32(i32 46, float %513, float %473, float %1219)  ; FMad(a,b,c)
  %1221 = fadd fast float %1220, %479
  %1222 = fmul fast float %510, %462
  %1223 = call float @dx.op.tertiary.f32(i32 46, float %511, float %468, float %1222)  ; FMad(a,b,c)
  %1224 = call float @dx.op.tertiary.f32(i32 46, float %513, float %474, float %1223)  ; FMad(a,b,c)
  %1225 = fadd fast float %1224, %480
  %1226 = fmul fast float %510, %463
  %1227 = call float @dx.op.tertiary.f32(i32 46, float %511, float %469, float %1226)  ; FMad(a,b,c)
  %1228 = call float @dx.op.tertiary.f32(i32 46, float %513, float %475, float %1227)  ; FMad(a,b,c)
  %1229 = fadd fast float %1228, %481
  %1230 = fmul fast float %510, %464
  %1231 = call float @dx.op.tertiary.f32(i32 46, float %511, float %470, float %1230)  ; FMad(a,b,c)
  %1232 = call float @dx.op.tertiary.f32(i32 46, float %513, float %476, float %1231)  ; FMad(a,b,c)
  %1233 = fadd fast float %1232, %482
  %1234 = fmul fast float %1215, %461
  %1235 = call float @dx.op.tertiary.f32(i32 46, float %1216, float %467, float %1234)  ; FMad(a,b,c)
  %1236 = call float @dx.op.tertiary.f32(i32 46, float %1217, float %473, float %1235)  ; FMad(a,b,c)
  %1237 = fadd fast float %1236, %479
  %1238 = fmul fast float %1215, %462
  %1239 = call float @dx.op.tertiary.f32(i32 46, float %1216, float %468, float %1238)  ; FMad(a,b,c)
  %1240 = call float @dx.op.tertiary.f32(i32 46, float %1217, float %474, float %1239)  ; FMad(a,b,c)
  %1241 = fadd fast float %1240, %480
  %1242 = fmul fast float %1215, %463
  %1243 = call float @dx.op.tertiary.f32(i32 46, float %1216, float %469, float %1242)  ; FMad(a,b,c)
  %1244 = call float @dx.op.tertiary.f32(i32 46, float %1217, float %475, float %1243)  ; FMad(a,b,c)
  %1245 = fadd fast float %1244, %481
  %1246 = fmul fast float %1215, %464
  %1247 = call float @dx.op.tertiary.f32(i32 46, float %1216, float %470, float %1246)  ; FMad(a,b,c)
  %1248 = call float @dx.op.tertiary.f32(i32 46, float %1217, float %476, float %1247)  ; FMad(a,b,c)
  %1249 = fadd fast float %1248, %482
  %1250 = fdiv fast float 1.000000e+00, %1233
  %1251 = fmul fast float %1250, %1221
  %1252 = fmul fast float %1250, %1225
  %1253 = fmul fast float %1250, %1229
  %1254 = fdiv fast float 1.000000e+00, %1249
  %1255 = fmul fast float %1254, %1237
  %1256 = fmul fast float %1254, %1241
  %1257 = fmul fast float %1254, %1245
  %1258 = fsub fast float %1251, %1255
  %1259 = fsub fast float %1252, %1256
  %1260 = fsub fast float %1253, %1257
  %1261 = fmul fast float %1258, %1258
  %1262 = fmul fast float %1259, %1259
  %1263 = fadd fast float %1261, %1262
  %1264 = fmul fast float %1260, %1260
  %1265 = fadd fast float %1263, %1264
  %1266 = call float @dx.op.unary.f32(i32 24, float %1265)  ; Sqrt(value)
  %1267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1268 = extractvalue %dx.types.CBufRet.f32 %1267, 0
  %1269 = extractvalue %dx.types.CBufRet.f32 %1267, 1
  %1270 = extractvalue %dx.types.CBufRet.f32 %1267, 2
  %1271 = extractvalue %dx.types.CBufRet.f32 %1267, 3
  %1272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1273 = extractvalue %dx.types.CBufRet.f32 %1272, 0
  %1274 = extractvalue %dx.types.CBufRet.f32 %1272, 1
  %1275 = extractvalue %dx.types.CBufRet.f32 %1272, 2
  %1276 = extractvalue %dx.types.CBufRet.f32 %1272, 3
  %1277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1278 = extractvalue %dx.types.CBufRet.f32 %1277, 0
  %1279 = extractvalue %dx.types.CBufRet.f32 %1277, 1
  %1280 = extractvalue %dx.types.CBufRet.f32 %1277, 2
  %1281 = extractvalue %dx.types.CBufRet.f32 %1277, 3
  %1282 = fmul fast float %1268, %1251
  %1283 = call float @dx.op.tertiary.f32(i32 46, float %1252, float %1269, float %1282)  ; FMad(a,b,c)
  %1284 = call float @dx.op.tertiary.f32(i32 46, float %1253, float %1270, float %1283)  ; FMad(a,b,c)
  %1285 = call float @dx.op.tertiary.f32(i32 46, float %1233, float %1271, float %1284)  ; FMad(a,b,c)
  %1286 = fmul fast float %1273, %1251
  %1287 = call float @dx.op.tertiary.f32(i32 46, float %1252, float %1274, float %1286)  ; FMad(a,b,c)
  %1288 = call float @dx.op.tertiary.f32(i32 46, float %1253, float %1275, float %1287)  ; FMad(a,b,c)
  %1289 = call float @dx.op.tertiary.f32(i32 46, float %1233, float %1276, float %1288)  ; FMad(a,b,c)
  %1290 = fmul fast float %1278, %1251
  %1291 = call float @dx.op.tertiary.f32(i32 46, float %1252, float %1279, float %1290)  ; FMad(a,b,c)
  %1292 = call float @dx.op.tertiary.f32(i32 46, float %1253, float %1280, float %1291)  ; FMad(a,b,c)
  %1293 = call float @dx.op.tertiary.f32(i32 46, float %1233, float %1281, float %1292)  ; FMad(a,b,c)
  %1294 = fmul fast float %1268, %1255
  %1295 = call float @dx.op.tertiary.f32(i32 46, float %1256, float %1269, float %1294)  ; FMad(a,b,c)
  %1296 = call float @dx.op.tertiary.f32(i32 46, float %1257, float %1270, float %1295)  ; FMad(a,b,c)
  %1297 = call float @dx.op.tertiary.f32(i32 46, float %1249, float %1271, float %1296)  ; FMad(a,b,c)
  %1298 = fmul fast float %1273, %1255
  %1299 = call float @dx.op.tertiary.f32(i32 46, float %1256, float %1274, float %1298)  ; FMad(a,b,c)
  %1300 = call float @dx.op.tertiary.f32(i32 46, float %1257, float %1275, float %1299)  ; FMad(a,b,c)
  %1301 = call float @dx.op.tertiary.f32(i32 46, float %1249, float %1276, float %1300)  ; FMad(a,b,c)
  %1302 = fmul fast float %1278, %1255
  %1303 = call float @dx.op.tertiary.f32(i32 46, float %1256, float %1279, float %1302)  ; FMad(a,b,c)
  %1304 = call float @dx.op.tertiary.f32(i32 46, float %1257, float %1280, float %1303)  ; FMad(a,b,c)
  %1305 = call float @dx.op.tertiary.f32(i32 46, float %1249, float %1281, float %1304)  ; FMad(a,b,c)
  %1306 = fdiv fast float 1.000000e+00, %1293
  %1307 = fmul fast float %1306, %1285
  %1308 = fmul fast float %1306, %1289
  %1309 = fdiv fast float 1.000000e+00, %1305
  %1310 = fmul fast float %1309, %1297
  %1311 = fmul fast float %1309, %1301
  %1312 = fsub fast float %1307, %1310
  %1313 = fsub fast float %1308, %1311
  %1314 = fmul fast float %1312, 5.000000e-01
  %1315 = fmul fast float %1313, 5.000000e-01
  %1316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1317 = extractvalue %dx.types.CBufRet.f32 %1316, 0
  %1318 = extractvalue %dx.types.CBufRet.f32 %1316, 1
  %1319 = fmul fast float %1314, %1317
  %1320 = fmul fast float %1315, %1318
  %1321 = fmul fast float %1319, %1319
  %1322 = fmul fast float %1320, %1320
  %1323 = fadd fast float %1321, %1322
  %1324 = call float @dx.op.unary.f32(i32 24, float %1323)  ; Sqrt(value)
  br label %1325

; <label>:1325                                    ; preds = %1214, %1205
  %1326 = phi float [ %1266, %1214 ], [ 0.000000e+00, %1205 ]
  %1327 = phi float [ %1324, %1214 ], [ 0.000000e+00, %1205 ]
  %1328 = fadd fast float %1206, -1.000000e+00
  %1329 = fmul fast float %1328, %400
  %1330 = fadd fast float %1329, 1.000000e+00
  %1331 = fmul fast float %1330, %412
  br label %1332

; <label>:1332                                    ; preds = %1325, %379
  %1333 = phi float [ %1331, %1325 ], [ %412, %379 ]
  %1334 = phi float [ %1326, %1325 ], [ 0.000000e+00, %379 ]
  %1335 = phi float [ %1327, %1325 ], [ 0.000000e+00, %379 ]
  %1336 = call float @dx.op.binary.f32(i32 36, float %1333, float %1333)  ; FMin(a,b)
  %1337 = call float @dx.op.binary.f32(i32 36, float %1333, float %1336)  ; FMin(a,b)
  %1338 = fcmp fast ogt float %1337, 0.000000e+00
  %1339 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %352, float %353, float %354)  ; Dot3(ax,ay,az,bx,by,bz)
  %1340 = fcmp fast ogt float %1339, 0.000000e+00
  %1341 = and i1 %1338, %1340
  br i1 %1341, label %1342, label %1623, !dx.controlflow.hints !50

; <label>:1342                                    ; preds = %1332
  %1343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1344 = extractvalue %dx.types.CBufRet.f32 %1343, 1
  %1345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1346 = extractvalue %dx.types.CBufRet.f32 %1345, 1
  %1347 = select i1 %55, float %1344, float %1346
  %1348 = extractvalue %dx.types.CBufRet.f32 %1343, 2
  %1349 = extractvalue %dx.types.CBufRet.f32 %1345, 2
  %1350 = select i1 %55, float %1348, float %1349
  %1351 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1352 = extractvalue %dx.types.CBufRet.i32 %1351, 0
  %1353 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1354 = extractvalue %dx.types.CBufRet.i32 %1353, 0
  %1355 = select i1 %55, i32 %1352, i32 %1354
  %1356 = fcmp fast ogt float %1334, 0.000000e+00
  br i1 %1356, label %1357, label %1361, !dx.controlflow.hints !51

; <label>:1357                                    ; preds = %1342
  %1358 = fptosi float %1335 to i32
  %1359 = call i32 @dx.op.binary.i32(i32 37, i32 %1358, i32 1)  ; IMax(a,b)
  %1360 = call i32 @dx.op.binary.i32(i32 38, i32 %1359, i32 16)  ; IMin(a,b)
  br label %1361

; <label>:1361                                    ; preds = %1357, %1342
  %1362 = phi float [ 0.000000e+00, %1357 ], [ 1.000000e+00, %1342 ]
  %1363 = phi float [ %1334, %1357 ], [ %1347, %1342 ]
  %1364 = phi i32 [ %1360, %1357 ], [ %1355, %1342 ]
  %1365 = fcmp fast olt float %1363, 5.000000e-01
  %1366 = icmp eq i32 %1364, 0
  %1367 = or i1 %1365, %1366
  br i1 %1367, label %1618, label %1368, !dx.controlflow.hints !52

; <label>:1368                                    ; preds = %1361
  %1369 = fsub fast float %312, %117
  %1370 = fsub fast float %313, %118
  %1371 = fsub fast float %314, %119
  %1372 = fmul fast float %1369, %1369
  %1373 = fmul fast float %1370, %1370
  %1374 = fadd fast float %1372, %1373
  %1375 = fmul fast float %1371, %1371
  %1376 = fadd fast float %1374, %1375
  %1377 = call float @dx.op.unary.f32(i32 24, float %1376)  ; Sqrt(value)
  %1378 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1379 = extractvalue %dx.types.CBufRet.i32 %1378, 0
  %1380 = uitofp i32 %1379 to float
  %1381 = fmul fast float %1363, %309
  %1382 = fdiv fast float %1381, %1377
  %1383 = call float @dx.op.binary.f32(i32 36, float %1382, float 1.000000e+01)  ; FMin(a,b)
  %1384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %1385 = extractvalue %dx.types.CBufRet.f32 %1384, 0
  %1386 = extractvalue %dx.types.CBufRet.f32 %1384, 1
  %1387 = extractvalue %dx.types.CBufRet.f32 %1384, 2
  %1388 = extractvalue %dx.types.CBufRet.f32 %1384, 3
  %1389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %1390 = extractvalue %dx.types.CBufRet.f32 %1389, 0
  %1391 = extractvalue %dx.types.CBufRet.f32 %1389, 1
  %1392 = extractvalue %dx.types.CBufRet.f32 %1389, 2
  %1393 = extractvalue %dx.types.CBufRet.f32 %1389, 3
  %1394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %1395 = extractvalue %dx.types.CBufRet.f32 %1394, 0
  %1396 = extractvalue %dx.types.CBufRet.f32 %1394, 1
  %1397 = extractvalue %dx.types.CBufRet.f32 %1394, 2
  %1398 = extractvalue %dx.types.CBufRet.f32 %1394, 3
  %1399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1400 = extractvalue %dx.types.CBufRet.f32 %1399, 0
  %1401 = extractvalue %dx.types.CBufRet.f32 %1399, 1
  %1402 = extractvalue %dx.types.CBufRet.f32 %1399, 2
  %1403 = extractvalue %dx.types.CBufRet.f32 %1399, 3
  %1404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1405 = extractvalue %dx.types.CBufRet.f32 %1404, 0
  %1406 = extractvalue %dx.types.CBufRet.f32 %1404, 1
  %1407 = extractvalue %dx.types.CBufRet.f32 %1404, 2
  %1408 = extractvalue %dx.types.CBufRet.f32 %1404, 3
  %1409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1410 = extractvalue %dx.types.CBufRet.f32 %1409, 0
  %1411 = extractvalue %dx.types.CBufRet.f32 %1409, 1
  %1412 = extractvalue %dx.types.CBufRet.f32 %1409, 2
  %1413 = extractvalue %dx.types.CBufRet.f32 %1409, 3
  %1414 = select i1 %55, float %1385, float %1400
  %1415 = select i1 %55, float %1390, float %1405
  %1416 = select i1 %55, float %1395, float %1410
  %1417 = select i1 %55, float %1386, float %1401
  %1418 = select i1 %55, float %1391, float %1406
  %1419 = select i1 %55, float %1396, float %1411
  %1420 = select i1 %55, float %1387, float %1402
  %1421 = select i1 %55, float %1392, float %1407
  %1422 = select i1 %55, float %1397, float %1412
  %1423 = select i1 %55, float %1388, float %1403
  %1424 = select i1 %55, float %1393, float %1408
  %1425 = select i1 %55, float %1398, float %1413
  %1426 = fmul fast float %219, 0x401061CAC0000000
  %1427 = fmul fast float %219, 0x4023E1D7E0000000
  %1428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1429 = extractvalue %dx.types.CBufRet.f32 %1428, 0
  %1430 = extractvalue %dx.types.CBufRet.f32 %1428, 1
  %1431 = extractvalue %dx.types.CBufRet.f32 %1428, 2
  %1432 = extractvalue %dx.types.CBufRet.f32 %1428, 3
  %1433 = fsub fast float -0.000000e+00, %352
  %1434 = fmul fast float %354, %1433
  %1435 = fmul fast float %352, %1433
  %1436 = fmul fast float %353, %353
  %1437 = fsub fast float %1435, %1436
  %1438 = fdiv fast float 1.000000e+00, %62
  %1439 = fmul fast float %1431, %51
  %1440 = fmul fast float %1432, %52
  %1441 = fmul fast float %1363, %352
  %1442 = fmul fast float %1363, %354
  %1443 = fadd fast float %1441, %117
  %1444 = fadd fast float %1442, %119
  %1445 = fadd fast float %1427, 5.000000e-01
  %1446 = call float @dx.op.unary.f32(i32 22, float %1445)  ; Frc(value)
  %1447 = bitcast float %1446 to i32
  %1448 = ashr i32 %1447, 1
  %1449 = add nsw i32 %1448, 532487669
  %1450 = bitcast i32 %1449 to float
  %1451 = fmul fast float %1450, %1383
  %1452 = fadd fast float %1426, 5.000000e-01
  %1453 = call float @dx.op.unary.f32(i32 22, float %1452)  ; Frc(value)
  %1454 = fmul fast float %1453, 0x401921FB60000000
  %1455 = call float @dx.op.unary.f32(i32 12, float %1454)  ; Cos(value)
  %1456 = fmul fast float %1455, %1455
  %1457 = fsub fast float 1.000000e+00, %1456
  %1458 = bitcast float %1457 to i32
  %1459 = ashr i32 %1458, 1
  %1460 = add nsw i32 %1459, 532487669
  %1461 = bitcast i32 %1460 to float
  %1462 = fmul fast float %1451, %1455
  %1463 = fmul fast float %1462, %353
  %1464 = fmul fast float %1462, %1433
  %1465 = fadd fast float %1443, %1463
  %1466 = fmul fast float %1461, %1451
  %1467 = fmul fast float %1434, %1466
  %1468 = fmul fast float %1466, %354
  %1469 = fmul fast float %1466, %1437
  %1470 = fsub fast float %1465, %1467
  %1471 = fadd fast float %1468, %1363
  %1472 = fmul fast float %1471, %353
  %1473 = fadd fast float %1464, %118
  %1474 = fadd fast float %1473, %1472
  %1475 = fadd fast float %1444, %1469
  %1476 = fmul fast float %1470, %1414
  %1477 = call float @dx.op.tertiary.f32(i32 46, float %1474, float %1417, float %1476)  ; FMad(a,b,c)
  %1478 = call float @dx.op.tertiary.f32(i32 46, float %1475, float %1420, float %1477)  ; FMad(a,b,c)
  %1479 = fadd fast float %1478, %1423
  %1480 = fmul fast float %1470, %1415
  %1481 = call float @dx.op.tertiary.f32(i32 46, float %1474, float %1418, float %1480)  ; FMad(a,b,c)
  %1482 = call float @dx.op.tertiary.f32(i32 46, float %1475, float %1421, float %1481)  ; FMad(a,b,c)
  %1483 = fadd fast float %1482, %1424
  %1484 = fmul fast float %1470, %1416
  %1485 = call float @dx.op.tertiary.f32(i32 46, float %1474, float %1419, float %1484)  ; FMad(a,b,c)
  %1486 = call float @dx.op.tertiary.f32(i32 46, float %1475, float %1422, float %1485)  ; FMad(a,b,c)
  %1487 = fadd fast float %1486, %1425
  %1488 = fdiv fast float 1.000000e+00, %1487
  %1489 = fmul fast float %1479, 5.000000e-01
  %1490 = fmul fast float %1483, -5.000000e-01
  %1491 = fmul fast float %1489, %1488
  %1492 = fmul fast float %1490, %1488
  %1493 = fsub fast float 5.000000e-01, %1439
  %1494 = fadd fast float %1493, %1491
  %1495 = fsub fast float 5.000000e-01, %1440
  %1496 = fadd fast float %1495, %1492
  %1497 = fsub fast float %1488, %1438
  %1498 = call float @dx.op.dot2.f32(i32 54, float %1494, float %1496, float %1494, float %1496)  ; Dot2(ax,ay,bx,by)
  %1499 = call float @dx.op.binary.f32(i32 35, float %1498, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %1500 = call float @dx.op.dot2.f32(i32 54, float %1429, float %1430, float %1429, float %1430)  ; Dot2(ax,ay,bx,by)
  %1501 = fmul fast float %1500, %1499
  %1502 = call float @dx.op.unary.f32(i32 25, float %1501)  ; Rsqrt(value)
  %1503 = fmul fast float %1502, %1494
  %1504 = fmul fast float %1502, %1496
  %1505 = fadd fast float %1503, %1439
  %1506 = fadd fast float %1504, %1440
  %1507 = fmul fast float %1494, %1429
  %1508 = fmul fast float %1496, %1430
  %1509 = fmul fast float %1507, %1507
  %1510 = fmul fast float %1508, %1508
  %1511 = fadd fast float %1509, %1510
  %1512 = call float @dx.op.unary.f32(i32 24, float %1511)  ; Sqrt(value)
  %1513 = fdiv fast float 1.000000e+00, %1512
  %1514 = fmul fast float %1512, 3.906250e-03
  %1515 = fmul fast float %205, 0x3F70624DE0000000
  %1516 = fadd fast float %1515, 0x3F70624DE0000000
  %1517 = icmp sgt i32 %1364, -1
  br i1 %1517, label %1518, label %1583

; <label>:1518                                    ; preds = %1368
  br label %1519

; <label>:1519                                    ; preds = %1579, %1518
  %1520 = phi float [ %1554, %1579 ], [ %62, %1518 ]
  %1521 = phi float [ %1541, %1579 ], [ %62, %1518 ]
  %1522 = phi float [ %1521, %1579 ], [ %62, %1518 ]
  %1523 = phi i32 [ %1580, %1579 ], [ 0, %1518 ]
  %1524 = sitofp i32 %1523 to float
  %1525 = fadd fast float %219, 5.000000e-01
  %1526 = call float @dx.op.unary.f32(i32 22, float %1525)  ; Frc(value)
  %1527 = fadd fast float %1524, %1526
  %1528 = sitofp i32 %1364 to float
  %1529 = fdiv fast float %1527, %1528
  %1530 = fmul fast float %1529, %1529
  %1531 = fsub fast float %1530, %1529
  %1532 = fmul fast float %1531, %1362
  %1533 = fadd fast float %1532, %1529
  %1534 = call float @dx.op.binary.f32(i32 36, float %1533, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %1535 = fmul fast float %1534, %1494
  %1536 = fmul fast float %1534, %1496
  %1537 = fmul fast float %1534, %1497
  %1538 = fadd fast float %1535, %1505
  %1539 = fadd fast float %1536, %1506
  %1540 = fadd fast float %1537, %1438
  %1541 = fdiv fast float 1.000000e+00, %1540
  %1542 = icmp ne i32 %1379, 0
  %1543 = fmul fast float %1514, %1534
  %1544 = call float @dx.op.binary.f32(i32 36, float %1543, float %1380)  ; FMin(a,b)
  %1545 = select i1 %1542, float %1544, float 0.000000e+00
  %1546 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %1538, float %1539, float undef, float undef, i32 0, i32 0, i32 undef, float %1545)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1547 = extractvalue %dx.types.ResRet.f32 %1546, 0
  %1548 = fcmp fast ogt float %1547, -1.000000e+00
  %1549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1550 = extractvalue %dx.types.CBufRet.f32 %1549, 1
  %1551 = select i1 %1548, float %1550, float 1.000000e+00
  %1552 = fadd fast float %1547, 1.000000e+00
  %1553 = fmul fast float %1551, %1552
  %1554 = call float @dx.op.unary.f32(i32 6, float %1553)  ; FAbs(value)
  %1555 = fmul fast float %1554, %1516
  %1556 = fsub fast float %1541, %1554
  %1557 = fsub fast float %1556, %1555
  %1558 = fcmp fast ogt float %1557, 0.000000e+00
  %1559 = fcmp fast ogt float %1350, 0.000000e+00
  br i1 %1559, label %1560, label %1563, !dx.controlflow.hints !53

; <label>:1560                                    ; preds = %1519
  %1561 = fsub fast float %1541, %1522
  %1562 = call float @dx.op.binary.f32(i32 35, float %1561, float %1350)  ; FMax(a,b)
  br label %1563

; <label>:1563                                    ; preds = %1560, %1519
  %1564 = phi float [ %1562, %1560 ], [ %1363, %1519 ]
  %1565 = fcmp fast olt float %1557, %1564
  %1566 = fcmp uge float %1547, -1.000000e+00
  %1567 = or i1 %55, %1566
  %1568 = call float @dx.op.unary.f32(i32 7, float %1538)  ; Saturate(value)
  %1569 = call float @dx.op.unary.f32(i32 7, float %1539)  ; Saturate(value)
  %1570 = fcmp fast oeq float %1538, %1568
  %1571 = fcmp fast oeq float %1539, %1569
  %1572 = and i1 %1570, %1571
  %1573 = and i1 %1567, %1572
  %1574 = and i1 %1558, %1565
  %1575 = and i1 %1574, %1573
  %1576 = fcmp fast ogt float %1534, %1513
  %1577 = and i1 %1576, %1575
  %1578 = zext i1 %1577 to i32
  br i1 %1577, label %1582, label %1579, !dx.controlflow.hints !54

; <label>:1579                                    ; preds = %1563
  %1580 = add nuw nsw i32 %1523, 1
  %1581 = icmp slt i32 %1523, %1364
  br i1 %1581, label %1519, label %1582

; <label>:1582                                    ; preds = %1579, %1563
  br label %1583

; <label>:1583                                    ; preds = %1582, %1368
  %1584 = phi i32 [ 0, %1368 ], [ %1578, %1582 ]
  %1585 = phi float [ %62, %1368 ], [ %1554, %1582 ]
  %1586 = phi float [ %62, %1368 ], [ %1520, %1582 ]
  %1587 = phi float [ %62, %1368 ], [ %1541, %1582 ]
  %1588 = phi float [ %62, %1368 ], [ %1521, %1582 ]
  %1589 = fsub fast float %1588, %1586
  %1590 = fsub fast float %1587, %1585
  %1591 = fsub fast float %1589, %1590
  %1592 = fcmp fast une float %1591, 0.000000e+00
  %1593 = fmul fast float %1589, %1587
  %1594 = fmul fast float %1588, %1590
  %1595 = fsub fast float %1593, %1594
  %1596 = fdiv fast float 1.000000e+00, %1591
  %1597 = fmul fast float %1595, %1596
  %1598 = select i1 %1592, float %1597, float %1587
  %1599 = fdiv fast float 1.000000e+00, %1598
  %1600 = fsub fast float %1599, %1438
  %1601 = fdiv fast float %1600, %1497
  %1602 = call float @dx.op.unary.f32(i32 7, float %1601)  ; Saturate(value)
  %1603 = fmul fast float %1602, %1494
  %1604 = fmul fast float %1602, %1496
  %1605 = fadd fast float %1603, %1505
  %1606 = fadd fast float %1604, %1506
  %1607 = fadd fast float %1605, -5.000000e-01
  %1608 = fadd fast float %1606, -5.000000e-01
  %1609 = call float @dx.op.unary.f32(i32 6, float %1607)  ; FAbs(value)
  %1610 = call float @dx.op.unary.f32(i32 6, float %1608)  ; FAbs(value)
  %1611 = fadd fast float %1609, -5.000000e-01
  %1612 = fadd fast float %1610, -5.000000e-01
  %1613 = call float @dx.op.binary.f32(i32 35, float %1611, float %1612)  ; FMax(a,b)
  %1614 = fcmp fast olt float %1613, 0.000000e+00
  %1615 = icmp ne i32 %1584, 0
  %1616 = and i1 %1615, %1614
  %1617 = select i1 %1616, float 0.000000e+00, float 1.000000e+00
  br label %1618

; <label>:1618                                    ; preds = %1583, %1361
  %1619 = phi float [ %1617, %1583 ], [ 1.000000e+00, %1361 ]
  %1620 = fmul fast float %1619, %1333
  %1621 = fmul fast float %1619, %1333
  %1622 = fmul fast float %1619, %1333
  br label %1623

; <label>:1623                                    ; preds = %1618, %1332
  %1624 = phi float [ %1620, %1618 ], [ %1333, %1332 ]
  %1625 = phi float [ %1621, %1618 ], [ %1333, %1332 ]
  %1626 = phi float [ %1622, %1618 ], [ %1333, %1332 ]
  %1627 = call float @dx.op.binary.f32(i32 36, float %1625, float %1626)  ; FMin(a,b)
  %1628 = call float @dx.op.binary.f32(i32 36, float %1624, float %1627)  ; FMin(a,b)
  %1629 = fcmp fast ogt float %1628, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1630 = zext i1 %1629 to i32
  %1631 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %1630 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1632 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  %1633 = icmp eq i32 %1632, 0
  %1634 = select i1 %1633, i32 0, i32 %291
  %1635 = or i32 %286, %1634
  %1636 = lshr i32 %224, 5
  %1637 = lshr i32 %225, 5
  %1638 = fcmp fast olt float %1624, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1639 = and i32 %24, 31
  %1640 = zext i1 %1638 to i32
  %1641 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %24
  store i32 %1640, i32 addrspace(3)* %1641, align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1642 = icmp ult i32 %1639, 16
  br i1 %1642, label %1643, label %1649, !dx.controlflow.hints !55

; <label>:1643                                    ; preds = %1623
  %1644 = add i32 %24, 16
  %1645 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1644
  %1646 = load i32, i32 addrspace(3)* %1645, align 4, !tbaa !36
  %1647 = load i32, i32 addrspace(3)* %1641, align 4, !tbaa !36
  %1648 = and i32 %1647, %1646
  store i32 %1648, i32 addrspace(3)* %1641, align 4, !tbaa !36
  br label %1649

; <label>:1649                                    ; preds = %1643, %1623
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1650 = icmp ult i32 %1639, 8
  br i1 %1650, label %1651, label %1657, !dx.controlflow.hints !56

; <label>:1651                                    ; preds = %1649
  %1652 = add i32 %24, 8
  %1653 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1652
  %1654 = load i32, i32 addrspace(3)* %1653, align 4, !tbaa !36
  %1655 = load i32, i32 addrspace(3)* %1641, align 4, !tbaa !36
  %1656 = and i32 %1655, %1654
  store i32 %1656, i32 addrspace(3)* %1641, align 4, !tbaa !36
  br label %1657

; <label>:1657                                    ; preds = %1651, %1649
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1658 = icmp ult i32 %1639, 4
  br i1 %1658, label %1659, label %1665, !dx.controlflow.hints !57

; <label>:1659                                    ; preds = %1657
  %1660 = add i32 %24, 4
  %1661 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1660
  %1662 = load i32, i32 addrspace(3)* %1661, align 4, !tbaa !36
  %1663 = load i32, i32 addrspace(3)* %1641, align 4, !tbaa !36
  %1664 = and i32 %1663, %1662
  store i32 %1664, i32 addrspace(3)* %1641, align 4, !tbaa !36
  br label %1665

; <label>:1665                                    ; preds = %1659, %1657
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1666 = icmp ult i32 %1639, 2
  br i1 %1666, label %1667, label %1673, !dx.controlflow.hints !58

; <label>:1667                                    ; preds = %1665
  %1668 = add i32 %24, 2
  %1669 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1668
  %1670 = load i32, i32 addrspace(3)* %1669, align 4, !tbaa !36
  %1671 = load i32, i32 addrspace(3)* %1641, align 4, !tbaa !36
  %1672 = and i32 %1671, %1670
  store i32 %1672, i32 addrspace(3)* %1641, align 4, !tbaa !36
  br label %1673

; <label>:1673                                    ; preds = %1667, %1665
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1674 = icmp eq i32 %1639, 0
  br i1 %1674, label %1675, label %1681, !dx.controlflow.hints !59

; <label>:1675                                    ; preds = %1673
  %1676 = add i32 %24, 1
  %1677 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1676
  %1678 = load i32, i32 addrspace(3)* %1677, align 4, !tbaa !36
  %1679 = load i32, i32 addrspace(3)* %1641, align 4, !tbaa !36
  %1680 = and i32 %1679, %1678
  store i32 %1680, i32 addrspace(3)* %1641, align 4, !tbaa !36
  br label %1681

; <label>:1681                                    ; preds = %1675, %1673
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1682 = and i32 %24, -64
  %1683 = or i32 %1682, 32
  %1684 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1682
  %1685 = load i32, i32 addrspace(3)* %1684, align 4, !tbaa !36
  %1686 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1683
  %1687 = load i32, i32 addrspace(3)* %1686, align 4, !tbaa !36
  %1688 = and i32 %1687, %1685
  %1689 = icmp ne i32 %1688, 0
  %1690 = fcmp fast ogt float %1624, 0x3FEFFF8000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1691 = zext i1 %1690 to i32
  store i32 %1691, i32 addrspace(3)* %1641, align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1642, label %1692, label %1698, !dx.controlflow.hints !55

; <label>:1692                                    ; preds = %1681
  %1693 = add i32 %24, 16
  %1694 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1693
  %1695 = load i32, i32 addrspace(3)* %1694, align 4, !tbaa !36
  %1696 = load i32, i32 addrspace(3)* %1641, align 4, !tbaa !36
  %1697 = and i32 %1696, %1695
  store i32 %1697, i32 addrspace(3)* %1641, align 4, !tbaa !36
  br label %1698

; <label>:1698                                    ; preds = %1692, %1681
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1650, label %1699, label %1705, !dx.controlflow.hints !56

; <label>:1699                                    ; preds = %1698
  %1700 = add i32 %24, 8
  %1701 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1700
  %1702 = load i32, i32 addrspace(3)* %1701, align 4, !tbaa !36
  %1703 = load i32, i32 addrspace(3)* %1641, align 4, !tbaa !36
  %1704 = and i32 %1703, %1702
  store i32 %1704, i32 addrspace(3)* %1641, align 4, !tbaa !36
  br label %1705

; <label>:1705                                    ; preds = %1699, %1698
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1658, label %1706, label %1712, !dx.controlflow.hints !57

; <label>:1706                                    ; preds = %1705
  %1707 = add i32 %24, 4
  %1708 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1707
  %1709 = load i32, i32 addrspace(3)* %1708, align 4, !tbaa !36
  %1710 = load i32, i32 addrspace(3)* %1641, align 4, !tbaa !36
  %1711 = and i32 %1710, %1709
  store i32 %1711, i32 addrspace(3)* %1641, align 4, !tbaa !36
  br label %1712

; <label>:1712                                    ; preds = %1706, %1705
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1666, label %1713, label %1719, !dx.controlflow.hints !58

; <label>:1713                                    ; preds = %1712
  %1714 = add i32 %24, 2
  %1715 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1714
  %1716 = load i32, i32 addrspace(3)* %1715, align 4, !tbaa !36
  %1717 = load i32, i32 addrspace(3)* %1641, align 4, !tbaa !36
  %1718 = and i32 %1717, %1716
  store i32 %1718, i32 addrspace(3)* %1641, align 4, !tbaa !36
  br label %1719

; <label>:1719                                    ; preds = %1713, %1712
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1674, label %1720, label %1726, !dx.controlflow.hints !59

; <label>:1720                                    ; preds = %1719
  %1721 = add i32 %24, 1
  %1722 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1721
  %1723 = load i32, i32 addrspace(3)* %1722, align 4, !tbaa !36
  %1724 = load i32, i32 addrspace(3)* %1641, align 4, !tbaa !36
  %1725 = and i32 %1724, %1723
  store i32 %1725, i32 addrspace(3)* %1641, align 4, !tbaa !36
  br label %1726

; <label>:1726                                    ; preds = %1720, %1719
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1727 = load i32, i32 addrspace(3)* %1684, align 4, !tbaa !36
  %1728 = load i32, i32 addrspace(3)* %1686, align 4, !tbaa !36
  %1729 = and i32 %1728, %1727
  %1730 = or i32 %1729, %1688
  %1731 = icmp eq i32 %1730, 0
  %1732 = lshr i32 %225, 1
  %1733 = and i32 %1732, 8
  %1734 = lshr i32 %224, 2
  %1735 = and i32 %1734, 4
  %1736 = or i32 %1733, %36
  %1737 = or i32 %1736, %1735
  br i1 %279, label %1738, label %1780, !dx.controlflow.hints !60

; <label>:1738                                    ; preds = %1726
  %1739 = icmp ne i32 %1729, 0
  %1740 = shl i32 1, %1737
  %1741 = select i1 %1739, i32 %1740, i32 0
  %1742 = shl i32 65536, %1737
  %1743 = select i1 %1689, i32 %1742, i32 0
  %1744 = or i32 %1741, %1743
  %1745 = icmp eq i32 %1744, 0
  br i1 %1745, label %1748, label %1746, !dx.controlflow.hints !61

; <label>:1746                                    ; preds = %1738
  %1747 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %1636, i32 %1637, i32 %289, i32 %1744)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1748

; <label>:1748                                    ; preds = %1746, %1738
  br i1 %1731, label %1749, label %1778

; <label>:1749                                    ; preds = %1748
  br label %1750

; <label>:1750                                    ; preds = %1775, %1749
  %1751 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %4, i32 %1636, i32 %1637, i32 %289, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %1752 = and i32 %1751, 3
  %1753 = icmp eq i32 %1752, 0
  br i1 %1753, label %1754, label %1775, !dx.controlflow.hints !62

; <label>:1754                                    ; preds = %1750
  %1755 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1756 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1757 = extractvalue %dx.types.CBufRet.i32 %1756, 3
  %1758 = call i32 @dx.op.binary.i32(i32 40, i32 %1757, i32 %1755)  ; UMin(a,b)
  %1759 = extractvalue %dx.types.CBufRet.i32 %1756, 2
  %1760 = udiv i32 %1758, %1759
  %1761 = urem i32 %1758, %1759
  %1762 = extractvalue %dx.types.CBufRet.i32 %1756, 1
  %1763 = urem i32 %1761, %1762
  %1764 = udiv i32 %1761, %1762
  %1765 = shl i32 %1763, 6
  %1766 = and i32 %1765, 32704
  %1767 = shl i32 %1764, 15
  %1768 = and i32 %1767, 8355840
  %1769 = shl i32 %1760, 23
  %1770 = and i32 %1769, 2139095040
  %1771 = or i32 %1770, %1766
  %1772 = or i32 %1771, %1768
  %1773 = or i32 %1772, 3
  %1774 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 8, i32 %1636, i32 %1637, i32 %289, i32 %1773)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1778

; <label>:1775                                    ; preds = %1750
  %1776 = icmp eq i32 %1752, 3
  br i1 %1776, label %1777, label %1750, !dx.controlflow.hints !63

; <label>:1777                                    ; preds = %1775
  br label %1778

; <label>:1778                                    ; preds = %1777, %1754, %1748
  %1779 = phi i32 [ 0, %1748 ], [ %1773, %1754 ], [ %1751, %1777 ]
  store i32 %1779, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !36
  br label %1780

; <label>:1780                                    ; preds = %1778, %1726
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1781 = load i32, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !36
  br i1 %1731, label %1782, label %1797, !dx.controlflow.hints !64

; <label>:1782                                    ; preds = %1780
  %1783 = lshr i32 %1781, 23
  %1784 = and i32 %1783, 255
  %1785 = and i32 %224, 31
  %1786 = and i32 %225, 31
  %1787 = lshr i32 %1781, 1
  %1788 = and i32 %1787, 16352
  %1789 = lshr i32 %1781, 10
  %1790 = and i32 %1789, 8160
  %1791 = or i32 %1788, %1785
  %1792 = or i32 %1790, %1786
  %1793 = fmul fast float %1624, 2.550000e+02
  %1794 = fadd fast float %1793, %218
  %1795 = call float @dx.op.unary.f32(i32 27, float %1794)  ; Round_ni(value)
  %1796 = fmul fast float %1795, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %1791, i32 %1792, i32 %1784, float %1796, float %1796, float %1796, float %1796, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1797

; <label>:1797                                    ; preds = %1782, %1780
  %1798 = icmp eq i32 %287, %291
  br i1 %1798, label %1799, label %285, !llvm.loop !65

; <label>:1799                                    ; preds = %1797
  br label %1800

; <label>:1800                                    ; preds = %1799, %281
  %1801 = phi i32 [ 0, %281 ], [ %1635, %1799 ]
  %1802 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1803 = extractvalue %dx.types.CBufRet.i32 %1802, 0
  %1804 = call i32 @dx.op.tertiary.i32(i32 49, i32 %230, i32 %1803, i32 %254)  ; UMad(a,b,c)
  %1805 = shl i32 %1804, 2
  %1806 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1805, i32 undef, i32 undef, i32 %1801)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1807 = add i32 %254, 1
  %1808 = icmp ugt i32 %1807, %250
  br i1 %1808, label %1809, label %253

; <label>:1809                                    ; preds = %1800
  br label %1810

; <label>:1810                                    ; preds = %1809, %223, %0
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
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
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
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.unroll.disable"}

