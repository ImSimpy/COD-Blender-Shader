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
; shader hash: 63248f0f715345e19682dd6c7903bfda
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
@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @cs_spotvis() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %21 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %22 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %23 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 0
  %26 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.i32 %26, 1
  %28 = shl i32 %25, 2
  %29 = mul i32 %28, %27
  %30 = add i32 %29, %20
  %31 = shl i32 %30, 2
  %32 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %31, i32 undef)  ; BufferLoad(srv,index,wot)
  %33 = extractvalue %dx.types.ResRet.i32 %32, 0
  %34 = lshr i32 %33, 28
  %35 = and i32 %34, 3
  %36 = lshr i32 %33, 10
  %37 = and i32 %36, 262128
  %38 = shl i32 %33, 4
  %39 = and i32 %38, 262128
  %40 = shl nuw nsw i32 %34, 3
  %41 = and i32 %40, 8
  %42 = lshr i32 %33, 26
  %43 = and i32 %42, 8
  %44 = or i32 %37, %21
  %45 = or i32 %44, %41
  %46 = or i32 %43, %22
  %47 = or i32 %46, %39
  %48 = uitofp i32 %45 to float
  %49 = uitofp i32 %47 to float
  %50 = fadd fast float %48, 5.000000e-01
  %51 = fadd fast float %49, 5.000000e-01
  %52 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 0, i32 %45, i32 %47, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %53 = extractvalue %dx.types.ResRet.f32 %52, 0
  %54 = fcmp fast olt float %53, -1.000000e+00
  %55 = fcmp fast ogt float %53, -1.000000e+00
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 1
  %58 = select i1 %55, float %57, float 1.000000e+00
  %59 = fadd fast float %53, 1.000000e+00
  %60 = fmul fast float %58, %59
  %61 = call float @dx.op.unary.f32(i32 6, float %60)  ; FAbs(value)
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %64 = extractvalue %dx.types.CBufRet.f32 %62, 3
  %65 = fmul fast float %63, 2.000000e+00
  %66 = fmul fast float %65, %50
  %67 = fmul fast float %64, 2.000000e+00
  %68 = fmul fast float %67, %51
  %69 = fsub fast float 1.000000e+00, %66
  %70 = fsub fast float 1.000000e+00, %68
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %73 = extractvalue %dx.types.CBufRet.f32 %71, 1
  %74 = extractvalue %dx.types.CBufRet.f32 %71, 2
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = extractvalue %dx.types.CBufRet.f32 %75, 1
  %78 = extractvalue %dx.types.CBufRet.f32 %75, 2
  %79 = select i1 %54, float %72, float %76
  %80 = select i1 %54, float %73, float %77
  %81 = select i1 %54, float %74, float %78
  %82 = fmul fast float %69, %79
  %83 = fmul fast float %69, %80
  %84 = fmul fast float %69, %81
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.f32 %85, 0
  %87 = extractvalue %dx.types.CBufRet.f32 %85, 1
  %88 = extractvalue %dx.types.CBufRet.f32 %85, 2
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 0
  %91 = extractvalue %dx.types.CBufRet.f32 %89, 1
  %92 = extractvalue %dx.types.CBufRet.f32 %89, 2
  %93 = select i1 %54, float %86, float %90
  %94 = select i1 %54, float %87, float %91
  %95 = select i1 %54, float %88, float %92
  %96 = fmul fast float %93, %70
  %97 = fmul fast float %94, %70
  %98 = fmul fast float %95, %70
  %99 = fadd fast float %96, %82
  %100 = fadd fast float %97, %83
  %101 = fadd fast float %98, %84
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 1
  %105 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 1
  %109 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %110 = select i1 %54, float %103, float %107
  %111 = select i1 %54, float %104, float %108
  %112 = select i1 %54, float %105, float %109
  %113 = fadd fast float %99, %110
  %114 = fadd fast float %100, %111
  %115 = fadd fast float %101, %112
  %116 = fmul fast float %113, %61
  %117 = fmul fast float %114, %61
  %118 = fmul fast float %115, %61
  %119 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %14, i32 0, i32 %45, i32 %47, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %120 = extractvalue %dx.types.ResRet.i32 %119, 0
  %121 = lshr i32 %120, 8
  %122 = and i32 %120, 255
  %123 = and i32 %121, 255
  %124 = uitofp i32 %122 to float
  %125 = uitofp i32 %123 to float
  %126 = fmul fast float %124, 0x3F80101020000000
  %127 = fmul fast float %125, 0x3F80101020000000
  %128 = fadd fast float %126, -1.000000e+00
  %129 = fadd fast float %127, -1.000000e+00
  %130 = call float @dx.op.unary.f32(i32 6, float %128)  ; FAbs(value)
  %131 = fsub fast float 1.000000e+00, %130
  %132 = call float @dx.op.unary.f32(i32 6, float %129)  ; FAbs(value)
  %133 = fsub fast float %131, %132
  %134 = fsub fast float -0.000000e+00, %133
  %135 = call float @dx.op.binary.f32(i32 35, float %134, float 0.000000e+00)  ; FMax(a,b)
  %136 = fcmp fast ogt float %128, 0.000000e+00
  %137 = fsub fast float -0.000000e+00, %135
  %138 = select i1 %136, float %137, float %135
  %139 = fadd fast float %138, %128
  %140 = fcmp fast ogt float %129, 0.000000e+00
  %141 = select i1 %140, float %137, float %135
  %142 = fadd fast float %141, %129
  %143 = call float @dx.op.dot3.f32(i32 55, float %139, float %142, float %133, float %139, float %142, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %144 = call float @dx.op.unary.f32(i32 25, float %143)  ; Rsqrt(value)
  %145 = fmul fast float %139, %144
  %146 = fmul fast float %142, %144
  %147 = fmul fast float %144, %133
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %150 = fmul fast float %149, 0x3FE3C6EF40000000
  %151 = frem fast float %50, 2.560000e+02
  %152 = frem fast float %51, 2.560000e+02
  %153 = fptoui float %151 to i32
  %154 = fptoui float %152 to i32
  %155 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %153, i32 %154, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %156 = extractvalue %dx.types.ResRet.f32 %155, 0
  %157 = fadd fast float %156, %150
  %158 = call float @dx.op.unary.f32(i32 22, float %157)  ; Frc(value)
  %159 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.i32 %159, 0
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %1310, label %162, !dx.controlflow.hints !34

; <label>:162                                     ; preds = %0
  %163 = fptoui float %50 to i32
  %164 = fptoui float %51 to i32
  %165 = lshr i32 %163, 4
  %166 = lshr i32 %164, 4
  %167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.i32 %167, 0
  %169 = call i32 @dx.op.tertiary.i32(i32 49, i32 %166, i32 %168, i32 %165)  ; UMad(a,b,c)
  %170 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.i32 %170, 0
  %172 = add nsw i32 %171, -1
  %173 = call i32 @dx.op.binary.i32(i32 37, i32 %172, i32 0)  ; IMax(a,b)
  %174 = call float @dx.op.binary.f32(i32 35, float %61, float 0.000000e+00)  ; FMax(a,b)
  %175 = fptoui float %174 to i32
  %176 = lshr i32 %175, 5
  %177 = call i32 @dx.op.binary.i32(i32 40, i32 %176, i32 8191)  ; UMin(a,b)
  %178 = shl i32 %177, 2
  %179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %178, i32 undef)  ; BufferLoad(srv,index,wot)
  %180 = extractvalue %dx.types.ResRet.i32 %179, 0
  %181 = lshr i32 %180, 16
  %182 = and i32 %180, 65535
  %183 = lshr i32 %180, 21
  %184 = lshr i32 %182, 5
  %185 = call i32 @dx.op.binary.i32(i32 40, i32 %184, i32 %173)  ; UMin(a,b)
  %186 = icmp ugt i32 %183, %185
  br i1 %186, label %1310, label %187

; <label>:187                                     ; preds = %162
  br label %188

; <label>:188                                     ; preds = %1306, %187
  %189 = phi i32 [ %1307, %1306 ], [ %183, %187 ]
  %190 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.i32 %190, 0
  %192 = call i32 @dx.op.tertiary.i32(i32 49, i32 %169, i32 %191, i32 %189)  ; UMad(a,b,c)
  %193 = shl i32 %192, 2
  %194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %193, i32 undef)  ; BufferLoad(srv,index,wot)
  %195 = extractvalue %dx.types.ResRet.i32 %194, 0
  %196 = shl i32 %189, 5
  %197 = sub nsw i32 %181, %196
  %198 = call i32 @dx.op.binary.i32(i32 37, i32 %197, i32 0)  ; IMax(a,b)
  %199 = call i32 @dx.op.binary.i32(i32 38, i32 %198, i32 31)  ; IMin(a,b)
  %200 = sub nsw i32 1, %181
  %201 = add nsw i32 %200, %182
  %202 = call i32 @dx.op.binary.i32(i32 37, i32 %201, i32 0)  ; IMax(a,b)
  %203 = call i32 @dx.op.binary.i32(i32 38, i32 %202, i32 32)  ; IMin(a,b)
  %204 = and i32 %203, 31
  %205 = shl i32 -1, %204
  %206 = xor i32 %205, -1
  %207 = and i32 %199, 31
  %208 = shl i32 %206, %207
  %209 = icmp eq i32 %203, 32
  %210 = select i1 %209, i32 -1, i32 %208
  %211 = and i32 %210, %195
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %1306, label %213

; <label>:213                                     ; preds = %188
  br label %214

; <label>:214                                     ; preds = %1303, %213
  %215 = phi i32 [ %220, %1303 ], [ %211, %213 ]
  %216 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %215)  ; FirstbitLo(value)
  %217 = add i32 %216, %196
  %218 = and i32 %216, 31
  %219 = shl i32 1, %218
  %220 = xor i32 %219, %215
  %221 = mul i32 %217, 112
  %222 = add i32 %221, 16
  %223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.f32 %223, 0
  %225 = extractvalue %dx.types.ResRet.f32 %223, 1
  %226 = extractvalue %dx.types.ResRet.f32 %223, 2
  %227 = add i32 %221, 28
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = add i32 %221, 32
  %231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.f32 %231, 0
  %233 = extractvalue %dx.types.ResRet.f32 %231, 1
  %234 = extractvalue %dx.types.ResRet.f32 %231, 2
  %235 = add i32 %221, 44
  %236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 0
  %238 = add i32 %221, 48
  %239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.f32 %239, 0
  %241 = extractvalue %dx.types.ResRet.f32 %239, 1
  %242 = extractvalue %dx.types.ResRet.f32 %239, 2
  %243 = extractvalue %dx.types.ResRet.f32 %239, 3
  %244 = add i32 %221, 64
  %245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.f32 %245, 0
  %247 = extractvalue %dx.types.ResRet.f32 %245, 1
  %248 = extractvalue %dx.types.ResRet.f32 %245, 2
  %249 = extractvalue %dx.types.ResRet.f32 %245, 3
  %250 = add i32 %221, 92
  %251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.i32 %251, 0
  %253 = and i32 %252, 65535
  %254 = uitofp i32 %253 to float
  %255 = lshr i32 %252, 16
  %256 = uitofp i32 %255 to float
  %257 = and i32 %229, 65535
  %258 = and i32 %229, 50331648
  %259 = icmp eq i32 %258, 33554432
  %260 = call float @dx.op.dot3.f32(i32 55, float %232, float %233, float %234, float %232, float %233, float %234)  ; Dot3(ax,ay,az,bx,by,bz)
  %261 = fsub fast float %116, %240
  %262 = fsub fast float %117, %241
  %263 = fsub fast float %118, %242
  %264 = call float @dx.op.dot3.f32(i32 55, float %261, float %262, float %263, float %232, float %233, float %234)  ; Dot3(ax,ay,az,bx,by,bz)
  %265 = fdiv fast float %264, %260
  %266 = call float @dx.op.binary.f32(i32 35, float %265, float -1.000000e+00)  ; FMax(a,b)
  %267 = call float @dx.op.binary.f32(i32 36, float %266, float 1.000000e+00)  ; FMin(a,b)
  %268 = fmul fast float %267, %232
  %269 = fmul fast float %267, %233
  %270 = fmul fast float %267, %234
  %271 = fadd fast float %268, %240
  %272 = fadd fast float %269, %241
  %273 = fadd fast float %270, %242
  %274 = fsub fast float %271, %116
  %275 = fsub fast float %272, %117
  %276 = fsub fast float %273, %118
  %277 = call float @dx.op.dot3.f32(i32 55, float %274, float %275, float %276, float %274, float %275, float %276)  ; Dot3(ax,ay,az,bx,by,bz)
  %278 = call float @dx.op.unary.f32(i32 24, float %277)  ; Sqrt(value)
  %279 = fdiv fast float 1.000000e+00, %278
  %280 = fmul fast float %274, %279
  %281 = fmul fast float %275, %279
  %282 = fmul fast float %276, %279
  br i1 %259, label %283, label %307, !dx.controlflow.hints !35

; <label>:283                                     ; preds = %214
  %284 = fmul fast float %248, %224
  %285 = fmul fast float %248, %225
  %286 = fmul fast float %248, %226
  %287 = fsub fast float %284, %116
  %288 = fadd fast float %287, %271
  %289 = fsub fast float %285, %117
  %290 = fadd fast float %289, %272
  %291 = fsub fast float %286, %118
  %292 = fadd fast float %291, %273
  %293 = call float @dx.op.dot3.f32(i32 55, float %288, float %290, float %292, float %288, float %290, float %292)  ; Dot3(ax,ay,az,bx,by,bz)
  %294 = call float @dx.op.unary.f32(i32 25, float %293)  ; Rsqrt(value)
  %295 = fmul fast float %294, %288
  %296 = fmul fast float %294, %290
  %297 = fmul fast float %294, %292
  %298 = fsub fast float %116, %271
  %299 = fsub fast float %117, %272
  %300 = fsub fast float %118, %273
  %301 = fsub fast float -0.000000e+00, %298
  %302 = fsub fast float -0.000000e+00, %299
  %303 = fsub fast float -0.000000e+00, %300
  %304 = call float @dx.op.dot3.f32(i32 55, float %301, float %302, float %303, float %224, float %225, float %226)  ; Dot3(ax,ay,az,bx,by,bz)
  %305 = fcmp fast ogt float %304, 0.000000e+00
  %306 = uitofp i1 %305 to float
  br label %307

; <label>:307                                     ; preds = %283, %214
  %308 = phi float [ %306, %283 ], [ 1.000000e+00, %214 ]
  %309 = phi float [ %295, %283 ], [ %280, %214 ]
  %310 = phi float [ %296, %283 ], [ %281, %214 ]
  %311 = phi float [ %297, %283 ], [ %282, %214 ]
  %312 = call float @dx.op.dot3.f32(i32 55, float %224, float %225, float %226, float %309, float %310, float %311)  ; Dot3(ax,ay,az,bx,by,bz)
  %313 = fmul fast float %312, %312
  %314 = call float @dx.op.unary.f32(i32 7, float %313)  ; Saturate(value)
  %315 = fsub fast float 1.000000e+00, %314
  %316 = fmul fast float %315, 5.000000e-01
  %317 = fcmp fast ogt float %312, 0.000000e+00
  %318 = fsub fast float 1.000000e+00, %316
  %319 = select i1 %317, float %316, float %318
  %320 = fmul fast float %319, %256
  %321 = fadd fast float %320, %254
  %322 = fmul fast float %321, 0x3EF0001000000000
  %323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %15, float %322, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %324 = extractvalue %dx.types.ResRet.f32 %323, 0
  %325 = fmul fast float %312, %246
  %326 = fadd fast float %325, %247
  %327 = call float @dx.op.unary.f32(i32 7, float %326)  ; Saturate(value)
  %328 = select i1 %259, float 1.000000e+00, float %327
  %329 = select i1 %259, float %327, float 1.000000e+00
  %330 = fmul fast float %278, %243
  %331 = fsub fast float 1.000000e+00, %330
  %332 = fmul fast float %331, %249
  %333 = call float @dx.op.unary.f32(i32 7, float %332)  ; Saturate(value)
  %334 = fmul fast float %333, %329
  %335 = fmul fast float %334, 2.000000e+00
  %336 = fsub fast float 3.000000e+00, %335
  %337 = fmul fast float %324, %308
  %338 = fmul fast float %334, %334
  %339 = fmul fast float %338, %337
  %340 = fmul fast float %339, %336
  %341 = icmp ne i32 %257, 255
  %342 = call float @dx.op.binary.f32(i32 36, float %340, float %340)  ; FMin(a,b)
  %343 = call float @dx.op.binary.f32(i32 36, float %340, float %342)  ; FMin(a,b)
  %344 = fcmp fast ogt float %343, 0.000000e+00
  %345 = and i1 %341, %344
  br i1 %345, label %346, label %1139, !dx.controlflow.hints !36

; <label>:346                                     ; preds = %307
  %347 = mul nuw nsw i32 %257, 176
  %348 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.f32 %348, 0
  %350 = extractvalue %dx.types.ResRet.f32 %348, 1
  %351 = extractvalue %dx.types.ResRet.f32 %348, 2
  %352 = extractvalue %dx.types.ResRet.f32 %348, 3
  %353 = add nuw nsw i32 %347, 16
  %354 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.f32 %354, 0
  %356 = extractvalue %dx.types.ResRet.f32 %354, 1
  %357 = add nuw nsw i32 %347, 32
  %358 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.f32 %358, 0
  %360 = extractvalue %dx.types.ResRet.f32 %358, 1
  %361 = extractvalue %dx.types.ResRet.f32 %358, 2
  %362 = extractvalue %dx.types.ResRet.f32 %358, 3
  %363 = add nuw nsw i32 %347, 48
  %364 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.f32 %364, 0
  %366 = extractvalue %dx.types.ResRet.f32 %364, 1
  %367 = extractvalue %dx.types.ResRet.f32 %364, 2
  %368 = extractvalue %dx.types.ResRet.f32 %364, 3
  %369 = add nuw nsw i32 %347, 64
  %370 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.f32 %370, 0
  %372 = extractvalue %dx.types.ResRet.f32 %370, 1
  %373 = extractvalue %dx.types.ResRet.f32 %370, 2
  %374 = extractvalue %dx.types.ResRet.f32 %370, 3
  %375 = add nuw nsw i32 %347, 80
  %376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.f32 %376, 0
  %378 = extractvalue %dx.types.ResRet.f32 %376, 1
  %379 = extractvalue %dx.types.ResRet.f32 %376, 2
  %380 = extractvalue %dx.types.ResRet.f32 %376, 3
  %381 = add nuw nsw i32 %347, 96
  %382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.f32 %382, 0
  %384 = extractvalue %dx.types.ResRet.f32 %382, 1
  %385 = extractvalue %dx.types.ResRet.f32 %382, 2
  %386 = extractvalue %dx.types.ResRet.f32 %382, 3
  %387 = add nuw nsw i32 %347, 112
  %388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.f32 %388, 0
  %390 = extractvalue %dx.types.ResRet.f32 %388, 1
  %391 = extractvalue %dx.types.ResRet.f32 %388, 2
  %392 = extractvalue %dx.types.ResRet.f32 %388, 3
  %393 = add nuw nsw i32 %347, 128
  %394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.f32 %394, 0
  %396 = extractvalue %dx.types.ResRet.f32 %394, 1
  %397 = extractvalue %dx.types.ResRet.f32 %394, 2
  %398 = extractvalue %dx.types.ResRet.f32 %394, 3
  %399 = add nuw nsw i32 %347, 144
  %400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.f32 %400, 0
  %402 = extractvalue %dx.types.ResRet.f32 %400, 1
  %403 = extractvalue %dx.types.ResRet.f32 %400, 2
  %404 = extractvalue %dx.types.ResRet.f32 %400, 3
  %405 = add nuw nsw i32 %347, 160
  %406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.f32 %406, 0
  %408 = extractvalue %dx.types.ResRet.f32 %406, 1
  %409 = extractvalue %dx.types.ResRet.f32 %406, 2
  %410 = extractvalue %dx.types.ResRet.f32 %406, 3
  %411 = bitcast float %356 to i32
  %412 = bitcast float %362 to i32
  %413 = and i32 %412, 1
  %414 = icmp ne i32 %413, 0
  %415 = and i32 %412, 2
  %416 = fmul fast float %145, %361
  %417 = fmul fast float %146, %361
  %418 = fmul fast float %147, %361
  %419 = fadd fast float %416, %116
  %420 = fadd fast float %417, %117
  %421 = fadd fast float %418, %118
  %422 = fmul fast float %419, %365
  %423 = call float @dx.op.tertiary.f32(i32 46, float %420, float %371, float %422)  ; FMad(a,b,c)
  %424 = call float @dx.op.tertiary.f32(i32 46, float %421, float %377, float %423)  ; FMad(a,b,c)
  %425 = fadd fast float %424, %383
  %426 = fmul fast float %419, %366
  %427 = call float @dx.op.tertiary.f32(i32 46, float %420, float %372, float %426)  ; FMad(a,b,c)
  %428 = call float @dx.op.tertiary.f32(i32 46, float %421, float %378, float %427)  ; FMad(a,b,c)
  %429 = fadd fast float %428, %384
  %430 = fmul fast float %419, %367
  %431 = call float @dx.op.tertiary.f32(i32 46, float %420, float %373, float %430)  ; FMad(a,b,c)
  %432 = call float @dx.op.tertiary.f32(i32 46, float %421, float %379, float %431)  ; FMad(a,b,c)
  %433 = fadd fast float %432, %385
  %434 = fmul fast float %419, %368
  %435 = call float @dx.op.tertiary.f32(i32 46, float %420, float %374, float %434)  ; FMad(a,b,c)
  %436 = call float @dx.op.tertiary.f32(i32 46, float %421, float %380, float %435)  ; FMad(a,b,c)
  %437 = fadd fast float %436, %386
  %438 = fdiv fast float %425, %437
  %439 = fdiv fast float %429, %437
  %440 = fdiv fast float %433, %437
  %441 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %440)  ; FMax(a,b)
  %442 = fmul fast float %158, 0x401921FB60000000
  %443 = call float @dx.op.unary.f32(i32 13, float %442)  ; Sin(value)
  %444 = call float @dx.op.unary.f32(i32 12, float %442)  ; Cos(value)
  %445 = fsub fast float -0.000000e+00, %443
  %446 = icmp eq i32 %415, 0
  br i1 %446, label %447, label %518, !dx.controlflow.hints !37

; <label>:447                                     ; preds = %346
  %448 = fmul fast float %444, %360
  %449 = call float @dx.op.tertiary.f32(i32 46, float %443, float %360, float 0.000000e+00)  ; FMad(a,b,c)
  %450 = fmul fast float %360, %445
  %451 = call float @dx.op.tertiary.f32(i32 46, float %444, float %360, float 0.000000e+00)  ; FMad(a,b,c)
  br label %452

; <label>:452                                     ; preds = %452, %447
  %453 = phi float [ 0.000000e+00, %447 ], [ %485, %452 ]
  %454 = phi float [ 0.000000e+00, %447 ], [ %487, %452 ]
  %455 = phi i32 [ 0, %447 ], [ %488, %452 ]
  %456 = mul i32 %455, 2
  %457 = add i32 0, %456
  %458 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %457
  %459 = load float, float* %458, align 4
  %460 = mul i32 %455, 2
  %461 = add i32 1, %460
  %462 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %461
  %463 = load float, float* %462, align 4
  %464 = fmul fast float %448, %459
  %465 = call float @dx.op.tertiary.f32(i32 46, float %463, float %450, float %464)  ; FMad(a,b,c)
  %466 = fmul fast float %459, %449
  %467 = call float @dx.op.tertiary.f32(i32 46, float %463, float %451, float %466)  ; FMad(a,b,c)
  %468 = fadd fast float %465, %438
  %469 = fadd fast float %467, %439
  %470 = fmul fast float %468, %355
  %471 = fmul fast float %469, %355
  %472 = call float @dx.op.binary.f32(i32 35, float %470, float %351)  ; FMax(a,b)
  %473 = call float @dx.op.binary.f32(i32 35, float %471, float %351)  ; FMax(a,b)
  %474 = call float @dx.op.binary.f32(i32 36, float %472, float %352)  ; FMin(a,b)
  %475 = call float @dx.op.binary.f32(i32 36, float %473, float %352)  ; FMin(a,b)
  %476 = fadd fast float %474, %349
  %477 = fadd fast float %475, %350
  %478 = uitofp i32 %411 to float
  %479 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %476, float %477, float %478, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %480 = extractvalue %dx.types.ResRet.f32 %479, 0
  %481 = fsub fast float %480, %441
  %482 = fsub fast float %481, %359
  %483 = fcmp fast ogt float %482, 0.000000e+00
  %484 = select i1 %483, float 1.000000e+00, float 0.000000e+00
  %485 = fadd fast float %484, %453
  %486 = select i1 %483, float %482, float 0.000000e+00
  %487 = fadd fast float %486, %454
  %488 = add nuw nsw i32 %455, 1
  %489 = icmp eq i32 %488, 8
  br i1 %489, label %490, label %452

; <label>:490                                     ; preds = %452
  %491 = fdiv fast float 1.000000e+00, %485
  %492 = fmul fast float %491, %487
  %493 = fdiv fast float 1.000000e+00, %441
  %494 = fmul fast float %492, %493
  %495 = call float @dx.op.unary.f32(i32 7, float %494)  ; Saturate(value)
  %496 = call float @dx.op.binary.f32(i32 35, float %495, float 0.000000e+00)  ; FMax(a,b)
  %497 = fmul fast float %485, 1.250000e-01
  %498 = call float @dx.op.unary.f32(i32 7, float %497)  ; Saturate(value)
  %499 = fmul fast float %498, 2.000000e+00
  %500 = fadd fast float %499, -1.000000e+00
  %501 = fcmp fast ogt float %500, 0.000000e+00
  %502 = fcmp fast olt float %500, 0.000000e+00
  %503 = zext i1 %501 to i32
  %504 = zext i1 %502 to i32
  %505 = sub nsw i32 %503, %504
  %506 = sitofp i32 %505 to float
  %507 = fmul fast float %506, %500
  %508 = fsub fast float 1.000000e+00, %507
  %509 = fmul fast float %508, %508
  %510 = fmul fast float %509, %508
  %511 = fsub fast float %508, %510
  %512 = fmul fast float %511, %496
  %513 = fsub fast float 1.000000e+00, %510
  %514 = fsub fast float %513, %512
  %515 = fmul fast float %506, 5.000000e-01
  %516 = fmul fast float %515, %514
  %517 = fsub fast float 5.000000e-01, %516
  br label %1133

; <label>:518                                     ; preds = %346
  %519 = fsub fast float 1.000000e+00, %441
  %520 = fmul fast float %519, 5.000000e-01
  %521 = fadd fast float %520, %441
  %522 = fsub fast float %419, %240
  %523 = fsub fast float %420, %241
  %524 = fsub fast float %421, %242
  %525 = call float @dx.op.dot3.f32(i32 55, float %522, float %523, float %524, float %232, float %233, float %234)  ; Dot3(ax,ay,az,bx,by,bz)
  %526 = fdiv fast float %525, %260
  %527 = call float @dx.op.binary.f32(i32 35, float %526, float -1.000000e+00)  ; FMax(a,b)
  %528 = call float @dx.op.binary.f32(i32 36, float %527, float 1.000000e+00)  ; FMin(a,b)
  %529 = fmul fast float %528, %232
  %530 = fmul fast float %528, %233
  %531 = fmul fast float %528, %234
  %532 = fsub fast float %522, %529
  %533 = fsub fast float %523, %530
  %534 = fsub fast float %524, %531
  %535 = call float @dx.op.dot3.f32(i32 55, float %532, float %533, float %534, float %532, float %533, float %534)  ; Dot3(ax,ay,az,bx,by,bz)
  %536 = call float @dx.op.unary.f32(i32 25, float %535)  ; Rsqrt(value)
  %537 = fmul fast float %532, %536
  %538 = fmul fast float %533, %536
  %539 = fmul fast float %534, %536
  %540 = call float @dx.op.unary.f32(i32 25, float %260)  ; Rsqrt(value)
  %541 = fmul fast float %540, %232
  %542 = fmul fast float %540, %233
  %543 = fmul fast float %540, %234
  br i1 %414, label %544, label %548, !dx.controlflow.hints !38

; <label>:544                                     ; preds = %518
  %545 = fcmp fast olt float %538, 0x3FE6666660000000
  %546 = select i1 %545, float 1.000000e+00, float 0.000000e+00
  %547 = select i1 %545, float 0.000000e+00, float 1.000000e+00
  br label %548

; <label>:548                                     ; preds = %544, %518
  %549 = phi float [ 0.000000e+00, %544 ], [ %541, %518 ]
  %550 = phi float [ %546, %544 ], [ %542, %518 ]
  %551 = phi float [ %547, %544 ], [ %543, %518 ]
  %552 = fmul fast float %550, %539
  %553 = fmul fast float %551, %538
  %554 = fsub fast float %552, %553
  %555 = fmul fast float %551, %537
  %556 = fmul fast float %549, %539
  %557 = fsub fast float %555, %556
  %558 = fmul fast float %549, %538
  %559 = fmul fast float %550, %537
  %560 = fsub fast float %558, %559
  %561 = call float @dx.op.dot3.f32(i32 55, float %554, float %557, float %560, float %554, float %557, float %560)  ; Dot3(ax,ay,az,bx,by,bz)
  %562 = call float @dx.op.unary.f32(i32 25, float %561)  ; Rsqrt(value)
  %563 = fmul fast float %562, %237
  %564 = fmul fast float %563, %554
  %565 = fmul fast float %563, %557
  %566 = fmul fast float %560, %237
  %567 = fmul fast float %566, %562
  %568 = fmul fast float %438, %389
  %569 = call float @dx.op.tertiary.f32(i32 46, float %439, float %395, float %568)  ; FMad(a,b,c)
  %570 = call float @dx.op.tertiary.f32(i32 46, float %521, float %401, float %569)  ; FMad(a,b,c)
  %571 = fadd fast float %570, %407
  %572 = fmul fast float %438, %390
  %573 = call float @dx.op.tertiary.f32(i32 46, float %439, float %396, float %572)  ; FMad(a,b,c)
  %574 = call float @dx.op.tertiary.f32(i32 46, float %521, float %402, float %573)  ; FMad(a,b,c)
  %575 = fadd fast float %574, %408
  %576 = fmul fast float %438, %391
  %577 = call float @dx.op.tertiary.f32(i32 46, float %439, float %397, float %576)  ; FMad(a,b,c)
  %578 = call float @dx.op.tertiary.f32(i32 46, float %521, float %403, float %577)  ; FMad(a,b,c)
  %579 = fadd fast float %578, %409
  %580 = fmul fast float %438, %392
  %581 = call float @dx.op.tertiary.f32(i32 46, float %439, float %398, float %580)  ; FMad(a,b,c)
  %582 = call float @dx.op.tertiary.f32(i32 46, float %521, float %404, float %581)  ; FMad(a,b,c)
  %583 = fadd fast float %582, %410
  %584 = fdiv fast float 1.000000e+00, %583
  %585 = fmul fast float %584, %571
  %586 = fmul fast float %584, %575
  %587 = fmul fast float %584, %579
  %588 = fsub fast float -0.000000e+00, %537
  %589 = fsub fast float -0.000000e+00, %538
  %590 = fsub fast float -0.000000e+00, %539
  %591 = fsub fast float %240, %564
  %592 = fsub fast float %241, %565
  %593 = fsub fast float %242, %567
  %594 = fsub fast float %585, %591
  %595 = fsub fast float %586, %592
  %596 = fsub fast float %587, %593
  %597 = call float @dx.op.dot3.f32(i32 55, float %594, float %595, float %596, float %594, float %595, float %596)  ; Dot3(ax,ay,az,bx,by,bz)
  %598 = call float @dx.op.unary.f32(i32 25, float %597)  ; Rsqrt(value)
  %599 = fmul fast float %594, %598
  %600 = fmul fast float %595, %598
  %601 = fmul fast float %596, %598
  %602 = fsub fast float %419, %591
  %603 = fsub fast float %420, %592
  %604 = fsub fast float %421, %593
  %605 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float %590, float %602, float %603, float %604)  ; Dot3(ax,ay,az,bx,by,bz)
  %606 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float %590, float %599, float %600, float %601)  ; Dot3(ax,ay,az,bx,by,bz)
  %607 = fdiv fast float 1.000000e+00, %606
  %608 = fmul fast float %607, %605
  %609 = fmul fast float %608, %599
  %610 = fmul fast float %608, %600
  %611 = fmul fast float %608, %601
  %612 = fadd fast float %609, %591
  %613 = fadd fast float %610, %592
  %614 = fadd fast float %611, %593
  %615 = fadd fast float %564, %240
  %616 = fadd fast float %565, %241
  %617 = fadd fast float %567, %242
  %618 = fsub fast float %585, %615
  %619 = fsub fast float %586, %616
  %620 = fsub fast float %587, %617
  %621 = call float @dx.op.dot3.f32(i32 55, float %618, float %619, float %620, float %618, float %619, float %620)  ; Dot3(ax,ay,az,bx,by,bz)
  %622 = call float @dx.op.unary.f32(i32 25, float %621)  ; Rsqrt(value)
  %623 = fmul fast float %622, %618
  %624 = fmul fast float %622, %619
  %625 = fmul fast float %622, %620
  %626 = fsub fast float %419, %615
  %627 = fsub fast float %420, %616
  %628 = fsub fast float %421, %617
  %629 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float %590, float %626, float %627, float %628)  ; Dot3(ax,ay,az,bx,by,bz)
  %630 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float %590, float %623, float %624, float %625)  ; Dot3(ax,ay,az,bx,by,bz)
  %631 = fdiv fast float 1.000000e+00, %630
  %632 = fmul fast float %631, %629
  %633 = fmul fast float %632, %623
  %634 = fmul fast float %632, %624
  %635 = fmul fast float %632, %625
  %636 = fadd fast float %633, %615
  %637 = fadd fast float %634, %616
  %638 = fadd fast float %635, %617
  %639 = fmul fast float %612, %365
  %640 = call float @dx.op.tertiary.f32(i32 46, float %613, float %371, float %639)  ; FMad(a,b,c)
  %641 = call float @dx.op.tertiary.f32(i32 46, float %614, float %377, float %640)  ; FMad(a,b,c)
  %642 = fadd fast float %641, %383
  %643 = fmul fast float %612, %366
  %644 = call float @dx.op.tertiary.f32(i32 46, float %613, float %372, float %643)  ; FMad(a,b,c)
  %645 = call float @dx.op.tertiary.f32(i32 46, float %614, float %378, float %644)  ; FMad(a,b,c)
  %646 = fadd fast float %645, %384
  %647 = fmul fast float %612, %368
  %648 = call float @dx.op.tertiary.f32(i32 46, float %613, float %374, float %647)  ; FMad(a,b,c)
  %649 = call float @dx.op.tertiary.f32(i32 46, float %614, float %380, float %648)  ; FMad(a,b,c)
  %650 = fadd fast float %649, %386
  %651 = fmul fast float %636, %365
  %652 = call float @dx.op.tertiary.f32(i32 46, float %637, float %371, float %651)  ; FMad(a,b,c)
  %653 = call float @dx.op.tertiary.f32(i32 46, float %638, float %377, float %652)  ; FMad(a,b,c)
  %654 = fadd fast float %653, %383
  %655 = fmul fast float %636, %366
  %656 = call float @dx.op.tertiary.f32(i32 46, float %637, float %372, float %655)  ; FMad(a,b,c)
  %657 = call float @dx.op.tertiary.f32(i32 46, float %638, float %378, float %656)  ; FMad(a,b,c)
  %658 = fadd fast float %657, %384
  %659 = fmul fast float %636, %368
  %660 = call float @dx.op.tertiary.f32(i32 46, float %637, float %374, float %659)  ; FMad(a,b,c)
  %661 = call float @dx.op.tertiary.f32(i32 46, float %638, float %380, float %660)  ; FMad(a,b,c)
  %662 = fadd fast float %661, %386
  %663 = fdiv fast float 1.000000e+00, %650
  %664 = fmul fast float %663, %642
  %665 = fmul fast float %663, %646
  %666 = fdiv fast float 1.000000e+00, %662
  %667 = fmul fast float %666, %654
  %668 = fmul fast float %666, %658
  %669 = fsub fast float %667, %664
  %670 = fsub fast float %668, %665
  %671 = call float @dx.op.dot2.f32(i32 54, float %669, float %670, float %669, float %670)  ; Dot2(ax,ay,bx,by)
  %672 = call float @dx.op.unary.f32(i32 25, float %671)  ; Rsqrt(value)
  %673 = fmul fast float %669, %672
  %674 = fmul fast float %670, %672
  %675 = fmul fast float %669, %669
  %676 = fmul fast float %670, %670
  %677 = fadd fast float %675, %676
  %678 = call float @dx.op.unary.f32(i32 24, float %677)  ; Sqrt(value)
  %679 = fmul fast float %678, 5.000000e-01
  br i1 %414, label %772, label %680, !dx.controlflow.hints !39

; <label>:680                                     ; preds = %548
  %681 = fsub fast float %240, %232
  %682 = fsub fast float %241, %233
  %683 = fsub fast float %242, %234
  %684 = fsub fast float %585, %681
  %685 = fsub fast float %586, %682
  %686 = fsub fast float %587, %683
  %687 = call float @dx.op.dot3.f32(i32 55, float %684, float %685, float %686, float %684, float %685, float %686)  ; Dot3(ax,ay,az,bx,by,bz)
  %688 = call float @dx.op.unary.f32(i32 25, float %687)  ; Rsqrt(value)
  %689 = fmul fast float %688, %684
  %690 = fmul fast float %688, %685
  %691 = fmul fast float %688, %686
  %692 = fsub fast float %419, %681
  %693 = fsub fast float %420, %682
  %694 = fsub fast float %421, %683
  %695 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float %590, float %692, float %693, float %694)  ; Dot3(ax,ay,az,bx,by,bz)
  %696 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float %590, float %689, float %690, float %691)  ; Dot3(ax,ay,az,bx,by,bz)
  %697 = fdiv fast float 1.000000e+00, %696
  %698 = fmul fast float %697, %695
  %699 = fmul fast float %698, %689
  %700 = fmul fast float %698, %690
  %701 = fmul fast float %698, %691
  %702 = fadd fast float %699, %681
  %703 = fadd fast float %700, %682
  %704 = fadd fast float %701, %683
  %705 = fadd fast float %240, %232
  %706 = fadd fast float %241, %233
  %707 = fadd fast float %242, %234
  %708 = fsub fast float %585, %705
  %709 = fsub fast float %586, %706
  %710 = fsub fast float %587, %707
  %711 = call float @dx.op.dot3.f32(i32 55, float %708, float %709, float %710, float %708, float %709, float %710)  ; Dot3(ax,ay,az,bx,by,bz)
  %712 = call float @dx.op.unary.f32(i32 25, float %711)  ; Rsqrt(value)
  %713 = fmul fast float %712, %708
  %714 = fmul fast float %712, %709
  %715 = fmul fast float %712, %710
  %716 = fsub fast float %419, %705
  %717 = fsub fast float %420, %706
  %718 = fsub fast float %421, %707
  %719 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float %590, float %716, float %717, float %718)  ; Dot3(ax,ay,az,bx,by,bz)
  %720 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float %590, float %713, float %714, float %715)  ; Dot3(ax,ay,az,bx,by,bz)
  %721 = fdiv fast float 1.000000e+00, %720
  %722 = fmul fast float %721, %719
  %723 = fmul fast float %722, %713
  %724 = fmul fast float %722, %714
  %725 = fmul fast float %722, %715
  %726 = fadd fast float %723, %705
  %727 = fadd fast float %724, %706
  %728 = fadd fast float %725, %707
  %729 = fmul fast float %702, %365
  %730 = call float @dx.op.tertiary.f32(i32 46, float %703, float %371, float %729)  ; FMad(a,b,c)
  %731 = call float @dx.op.tertiary.f32(i32 46, float %704, float %377, float %730)  ; FMad(a,b,c)
  %732 = fadd fast float %731, %383
  %733 = fmul fast float %702, %366
  %734 = call float @dx.op.tertiary.f32(i32 46, float %703, float %372, float %733)  ; FMad(a,b,c)
  %735 = call float @dx.op.tertiary.f32(i32 46, float %704, float %378, float %734)  ; FMad(a,b,c)
  %736 = fadd fast float %735, %384
  %737 = fmul fast float %702, %368
  %738 = call float @dx.op.tertiary.f32(i32 46, float %703, float %374, float %737)  ; FMad(a,b,c)
  %739 = call float @dx.op.tertiary.f32(i32 46, float %704, float %380, float %738)  ; FMad(a,b,c)
  %740 = fadd fast float %739, %386
  %741 = fmul fast float %726, %365
  %742 = call float @dx.op.tertiary.f32(i32 46, float %727, float %371, float %741)  ; FMad(a,b,c)
  %743 = call float @dx.op.tertiary.f32(i32 46, float %728, float %377, float %742)  ; FMad(a,b,c)
  %744 = fadd fast float %743, %383
  %745 = fmul fast float %726, %366
  %746 = call float @dx.op.tertiary.f32(i32 46, float %727, float %372, float %745)  ; FMad(a,b,c)
  %747 = call float @dx.op.tertiary.f32(i32 46, float %728, float %378, float %746)  ; FMad(a,b,c)
  %748 = fadd fast float %747, %384
  %749 = fmul fast float %726, %368
  %750 = call float @dx.op.tertiary.f32(i32 46, float %727, float %374, float %749)  ; FMad(a,b,c)
  %751 = call float @dx.op.tertiary.f32(i32 46, float %728, float %380, float %750)  ; FMad(a,b,c)
  %752 = fadd fast float %751, %386
  %753 = fdiv fast float 1.000000e+00, %740
  %754 = fmul fast float %753, %732
  %755 = fmul fast float %753, %736
  %756 = fdiv fast float 1.000000e+00, %752
  %757 = fmul fast float %756, %744
  %758 = fmul fast float %756, %748
  %759 = fsub fast float %757, %754
  %760 = fsub fast float %758, %755
  %761 = call float @dx.op.dot2.f32(i32 54, float %759, float %760, float %759, float %760)  ; Dot2(ax,ay,bx,by)
  %762 = call float @dx.op.unary.f32(i32 25, float %761)  ; Rsqrt(value)
  %763 = fmul fast float %759, %762
  %764 = fmul fast float %760, %762
  %765 = fmul fast float %759, %759
  %766 = fmul fast float %760, %760
  %767 = fadd fast float %765, %766
  %768 = call float @dx.op.unary.f32(i32 24, float %767)  ; Sqrt(value)
  %769 = fmul fast float %768, 5.000000e-01
  %770 = fcmp fast olt float %769, %679
  br i1 %770, label %771, label %772, !dx.controlflow.hints !40

; <label>:771                                     ; preds = %680
  br label %772

; <label>:772                                     ; preds = %771, %680, %548
  %773 = phi float [ %679, %548 ], [ %769, %771 ], [ %679, %680 ]
  %774 = phi float [ %679, %548 ], [ %679, %771 ], [ %769, %680 ]
  %775 = phi float [ %673, %548 ], [ %673, %771 ], [ %763, %680 ]
  %776 = phi float [ %674, %548 ], [ %674, %771 ], [ %764, %680 ]
  %777 = fmul fast float %773, %360
  %778 = fdiv fast float %777, %774
  %779 = fsub fast float %360, %778
  %780 = fmul fast float %775, %775
  %781 = fmul fast float %780, %779
  %782 = fadd fast float %781, %778
  %783 = fmul fast float %776, %775
  %784 = fmul fast float %783, %779
  %785 = fmul fast float %776, %776
  %786 = fmul fast float %785, %779
  %787 = fadd fast float %786, %778
  %788 = fmul fast float %782, %444
  %789 = call float @dx.op.tertiary.f32(i32 46, float %443, float %784, float %788)  ; FMad(a,b,c)
  %790 = fmul fast float %784, %444
  %791 = call float @dx.op.tertiary.f32(i32 46, float %443, float %787, float %790)  ; FMad(a,b,c)
  %792 = fmul fast float %782, %445
  %793 = call float @dx.op.tertiary.f32(i32 46, float %444, float %784, float %792)  ; FMad(a,b,c)
  %794 = fmul fast float %784, %445
  %795 = call float @dx.op.tertiary.f32(i32 46, float %444, float %787, float %794)  ; FMad(a,b,c)
  br label %796

; <label>:796                                     ; preds = %834, %772
  %797 = phi float [ 0.000000e+00, %772 ], [ %835, %834 ]
  %798 = phi float [ 0.000000e+00, %772 ], [ %836, %834 ]
  %799 = phi float [ 0.000000e+00, %772 ], [ %837, %834 ]
  %800 = phi float [ 0.000000e+00, %772 ], [ %838, %834 ]
  %801 = phi i32 [ 0, %772 ], [ %839, %834 ]
  %802 = mul i32 %801, 2
  %803 = add i32 0, %802
  %804 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %803
  %805 = load float, float* %804, align 4
  %806 = mul i32 %801, 2
  %807 = add i32 1, %806
  %808 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %807
  %809 = load float, float* %808, align 4
  %810 = fmul fast float %805, %789
  %811 = call float @dx.op.tertiary.f32(i32 46, float %809, float %793, float %810)  ; FMad(a,b,c)
  %812 = fmul fast float %805, %791
  %813 = call float @dx.op.tertiary.f32(i32 46, float %809, float %795, float %812)  ; FMad(a,b,c)
  %814 = fadd fast float %811, %438
  %815 = fadd fast float %813, %439
  %816 = fmul fast float %814, %355
  %817 = fmul fast float %815, %355
  %818 = call float @dx.op.binary.f32(i32 35, float %816, float %351)  ; FMax(a,b)
  %819 = call float @dx.op.binary.f32(i32 35, float %817, float %351)  ; FMax(a,b)
  %820 = call float @dx.op.binary.f32(i32 36, float %818, float %352)  ; FMin(a,b)
  %821 = call float @dx.op.binary.f32(i32 36, float %819, float %352)  ; FMin(a,b)
  %822 = fadd fast float %820, %349
  %823 = fadd fast float %821, %350
  %824 = uitofp i32 %411 to float
  %825 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %822, float %823, float %824, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %826 = extractvalue %dx.types.ResRet.f32 %825, 0
  %827 = fadd fast float %441, %359
  %828 = fcmp fast olt float %827, %826
  br i1 %828, label %829, label %834, !dx.controlflow.hints !41

; <label>:829                                     ; preds = %796
  %830 = fadd fast float %826, %799
  %831 = fadd fast float %811, %797
  %832 = fadd fast float %813, %798
  %833 = fadd fast float %800, 1.000000e+00
  br label %834

; <label>:834                                     ; preds = %829, %796
  %835 = phi float [ %831, %829 ], [ %797, %796 ]
  %836 = phi float [ %832, %829 ], [ %798, %796 ]
  %837 = phi float [ %830, %829 ], [ %799, %796 ]
  %838 = phi float [ %833, %829 ], [ %800, %796 ]
  %839 = add nuw nsw i32 %801, 1
  %840 = icmp eq i32 %839, 8
  br i1 %840, label %841, label %796

; <label>:841                                     ; preds = %834
  %842 = fdiv fast float 1.000000e+00, %838
  %843 = fcmp fast oeq float %838, 0.000000e+00
  %844 = fmul fast float %842, %837
  %845 = select i1 %843, float -1.000000e+00, float %844
  %846 = fcmp fast olt float %845, 0.000000e+00
  br i1 %846, label %1133, label %847, !dx.controlflow.hints !42

; <label>:847                                     ; preds = %841
  %848 = fmul fast float %842, %836
  %849 = select i1 %843, float 0.000000e+00, float %848
  %850 = fmul fast float %842, %835
  %851 = select i1 %843, float 0.000000e+00, float %850
  %852 = fadd fast float %851, %438
  %853 = fadd fast float %849, %439
  br i1 %414, label %854, label %858, !dx.controlflow.hints !38

; <label>:854                                     ; preds = %847
  %855 = fcmp fast olt float %538, 0x3FE6666660000000
  %856 = select i1 %855, float 1.000000e+00, float 0.000000e+00
  %857 = select i1 %855, float 0.000000e+00, float 1.000000e+00
  br label %858

; <label>:858                                     ; preds = %854, %847
  %859 = phi float [ 0.000000e+00, %854 ], [ %541, %847 ]
  %860 = phi float [ %856, %854 ], [ %542, %847 ]
  %861 = phi float [ %857, %854 ], [ %543, %847 ]
  %862 = fmul fast float %860, %539
  %863 = fmul fast float %861, %538
  %864 = fsub fast float %862, %863
  %865 = fmul fast float %861, %537
  %866 = fmul fast float %859, %539
  %867 = fsub fast float %865, %866
  %868 = fmul fast float %859, %538
  %869 = fmul fast float %860, %537
  %870 = fsub fast float %868, %869
  %871 = call float @dx.op.dot3.f32(i32 55, float %864, float %867, float %870, float %864, float %867, float %870)  ; Dot3(ax,ay,az,bx,by,bz)
  %872 = call float @dx.op.unary.f32(i32 25, float %871)  ; Rsqrt(value)
  %873 = fmul fast float %872, %237
  %874 = fmul fast float %873, %864
  %875 = fmul fast float %873, %867
  %876 = fmul fast float %870, %237
  %877 = fmul fast float %876, %872
  %878 = fmul fast float %852, %389
  %879 = call float @dx.op.tertiary.f32(i32 46, float %853, float %395, float %878)  ; FMad(a,b,c)
  %880 = call float @dx.op.tertiary.f32(i32 46, float %845, float %401, float %879)  ; FMad(a,b,c)
  %881 = fadd fast float %880, %407
  %882 = fmul fast float %852, %390
  %883 = call float @dx.op.tertiary.f32(i32 46, float %853, float %396, float %882)  ; FMad(a,b,c)
  %884 = call float @dx.op.tertiary.f32(i32 46, float %845, float %402, float %883)  ; FMad(a,b,c)
  %885 = fadd fast float %884, %408
  %886 = fmul fast float %852, %391
  %887 = call float @dx.op.tertiary.f32(i32 46, float %853, float %397, float %886)  ; FMad(a,b,c)
  %888 = call float @dx.op.tertiary.f32(i32 46, float %845, float %403, float %887)  ; FMad(a,b,c)
  %889 = fadd fast float %888, %409
  %890 = fmul fast float %852, %392
  %891 = call float @dx.op.tertiary.f32(i32 46, float %853, float %398, float %890)  ; FMad(a,b,c)
  %892 = call float @dx.op.tertiary.f32(i32 46, float %845, float %404, float %891)  ; FMad(a,b,c)
  %893 = fadd fast float %892, %410
  %894 = fdiv fast float 1.000000e+00, %893
  %895 = fmul fast float %894, %881
  %896 = fmul fast float %894, %885
  %897 = fmul fast float %894, %889
  %898 = fsub fast float %240, %874
  %899 = fsub fast float %241, %875
  %900 = fsub fast float %242, %877
  %901 = fsub fast float %895, %898
  %902 = fsub fast float %896, %899
  %903 = fsub fast float %897, %900
  %904 = call float @dx.op.dot3.f32(i32 55, float %901, float %902, float %903, float %901, float %902, float %903)  ; Dot3(ax,ay,az,bx,by,bz)
  %905 = call float @dx.op.unary.f32(i32 25, float %904)  ; Rsqrt(value)
  %906 = fmul fast float %901, %905
  %907 = fmul fast float %902, %905
  %908 = fmul fast float %903, %905
  %909 = fsub fast float %419, %898
  %910 = fsub fast float %420, %899
  %911 = fsub fast float %421, %900
  %912 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float %590, float %909, float %910, float %911)  ; Dot3(ax,ay,az,bx,by,bz)
  %913 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float %590, float %906, float %907, float %908)  ; Dot3(ax,ay,az,bx,by,bz)
  %914 = fdiv fast float 1.000000e+00, %913
  %915 = fmul fast float %914, %912
  %916 = fmul fast float %915, %906
  %917 = fmul fast float %915, %907
  %918 = fmul fast float %915, %908
  %919 = fadd fast float %916, %898
  %920 = fadd fast float %917, %899
  %921 = fadd fast float %918, %900
  %922 = fadd fast float %874, %240
  %923 = fadd fast float %875, %241
  %924 = fadd fast float %877, %242
  %925 = fsub fast float %895, %922
  %926 = fsub fast float %896, %923
  %927 = fsub fast float %897, %924
  %928 = call float @dx.op.dot3.f32(i32 55, float %925, float %926, float %927, float %925, float %926, float %927)  ; Dot3(ax,ay,az,bx,by,bz)
  %929 = call float @dx.op.unary.f32(i32 25, float %928)  ; Rsqrt(value)
  %930 = fmul fast float %929, %925
  %931 = fmul fast float %929, %926
  %932 = fmul fast float %929, %927
  %933 = fsub fast float %419, %922
  %934 = fsub fast float %420, %923
  %935 = fsub fast float %421, %924
  %936 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float %590, float %933, float %934, float %935)  ; Dot3(ax,ay,az,bx,by,bz)
  %937 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float %590, float %930, float %931, float %932)  ; Dot3(ax,ay,az,bx,by,bz)
  %938 = fdiv fast float 1.000000e+00, %937
  %939 = fmul fast float %938, %936
  %940 = fmul fast float %939, %930
  %941 = fmul fast float %939, %931
  %942 = fmul fast float %939, %932
  %943 = fadd fast float %940, %922
  %944 = fadd fast float %941, %923
  %945 = fadd fast float %942, %924
  %946 = fmul fast float %919, %365
  %947 = call float @dx.op.tertiary.f32(i32 46, float %920, float %371, float %946)  ; FMad(a,b,c)
  %948 = call float @dx.op.tertiary.f32(i32 46, float %921, float %377, float %947)  ; FMad(a,b,c)
  %949 = fadd fast float %948, %383
  %950 = fmul fast float %919, %366
  %951 = call float @dx.op.tertiary.f32(i32 46, float %920, float %372, float %950)  ; FMad(a,b,c)
  %952 = call float @dx.op.tertiary.f32(i32 46, float %921, float %378, float %951)  ; FMad(a,b,c)
  %953 = fadd fast float %952, %384
  %954 = fmul fast float %919, %368
  %955 = call float @dx.op.tertiary.f32(i32 46, float %920, float %374, float %954)  ; FMad(a,b,c)
  %956 = call float @dx.op.tertiary.f32(i32 46, float %921, float %380, float %955)  ; FMad(a,b,c)
  %957 = fadd fast float %956, %386
  %958 = fmul fast float %943, %365
  %959 = call float @dx.op.tertiary.f32(i32 46, float %944, float %371, float %958)  ; FMad(a,b,c)
  %960 = call float @dx.op.tertiary.f32(i32 46, float %945, float %377, float %959)  ; FMad(a,b,c)
  %961 = fadd fast float %960, %383
  %962 = fmul fast float %943, %366
  %963 = call float @dx.op.tertiary.f32(i32 46, float %944, float %372, float %962)  ; FMad(a,b,c)
  %964 = call float @dx.op.tertiary.f32(i32 46, float %945, float %378, float %963)  ; FMad(a,b,c)
  %965 = fadd fast float %964, %384
  %966 = fmul fast float %943, %368
  %967 = call float @dx.op.tertiary.f32(i32 46, float %944, float %374, float %966)  ; FMad(a,b,c)
  %968 = call float @dx.op.tertiary.f32(i32 46, float %945, float %380, float %967)  ; FMad(a,b,c)
  %969 = fadd fast float %968, %386
  %970 = fdiv fast float 1.000000e+00, %957
  %971 = fmul fast float %970, %949
  %972 = fmul fast float %970, %953
  %973 = fdiv fast float 1.000000e+00, %969
  %974 = fmul fast float %973, %961
  %975 = fmul fast float %973, %965
  %976 = fsub fast float %974, %971
  %977 = fsub fast float %975, %972
  %978 = call float @dx.op.dot2.f32(i32 54, float %976, float %977, float %976, float %977)  ; Dot2(ax,ay,bx,by)
  %979 = call float @dx.op.unary.f32(i32 25, float %978)  ; Rsqrt(value)
  %980 = fmul fast float %976, %979
  %981 = fmul fast float %977, %979
  %982 = fmul fast float %976, %976
  %983 = fmul fast float %977, %977
  %984 = fadd fast float %982, %983
  %985 = call float @dx.op.unary.f32(i32 24, float %984)  ; Sqrt(value)
  %986 = fmul fast float %985, 5.000000e-01
  br i1 %414, label %1079, label %987, !dx.controlflow.hints !39

; <label>:987                                     ; preds = %858
  %988 = fsub fast float %240, %232
  %989 = fsub fast float %241, %233
  %990 = fsub fast float %242, %234
  %991 = fsub fast float %895, %988
  %992 = fsub fast float %896, %989
  %993 = fsub fast float %897, %990
  %994 = call float @dx.op.dot3.f32(i32 55, float %991, float %992, float %993, float %991, float %992, float %993)  ; Dot3(ax,ay,az,bx,by,bz)
  %995 = call float @dx.op.unary.f32(i32 25, float %994)  ; Rsqrt(value)
  %996 = fmul fast float %995, %991
  %997 = fmul fast float %995, %992
  %998 = fmul fast float %995, %993
  %999 = fsub fast float %419, %988
  %1000 = fsub fast float %420, %989
  %1001 = fsub fast float %421, %990
  %1002 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float %590, float %999, float %1000, float %1001)  ; Dot3(ax,ay,az,bx,by,bz)
  %1003 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float %590, float %996, float %997, float %998)  ; Dot3(ax,ay,az,bx,by,bz)
  %1004 = fdiv fast float 1.000000e+00, %1003
  %1005 = fmul fast float %1004, %1002
  %1006 = fmul fast float %1005, %996
  %1007 = fmul fast float %1005, %997
  %1008 = fmul fast float %1005, %998
  %1009 = fadd fast float %1006, %988
  %1010 = fadd fast float %1007, %989
  %1011 = fadd fast float %1008, %990
  %1012 = fadd fast float %240, %232
  %1013 = fadd fast float %241, %233
  %1014 = fadd fast float %242, %234
  %1015 = fsub fast float %895, %1012
  %1016 = fsub fast float %896, %1013
  %1017 = fsub fast float %897, %1014
  %1018 = call float @dx.op.dot3.f32(i32 55, float %1015, float %1016, float %1017, float %1015, float %1016, float %1017)  ; Dot3(ax,ay,az,bx,by,bz)
  %1019 = call float @dx.op.unary.f32(i32 25, float %1018)  ; Rsqrt(value)
  %1020 = fmul fast float %1019, %1015
  %1021 = fmul fast float %1019, %1016
  %1022 = fmul fast float %1019, %1017
  %1023 = fsub fast float %419, %1012
  %1024 = fsub fast float %420, %1013
  %1025 = fsub fast float %421, %1014
  %1026 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float %590, float %1023, float %1024, float %1025)  ; Dot3(ax,ay,az,bx,by,bz)
  %1027 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float %590, float %1020, float %1021, float %1022)  ; Dot3(ax,ay,az,bx,by,bz)
  %1028 = fdiv fast float 1.000000e+00, %1027
  %1029 = fmul fast float %1028, %1026
  %1030 = fmul fast float %1029, %1020
  %1031 = fmul fast float %1029, %1021
  %1032 = fmul fast float %1029, %1022
  %1033 = fadd fast float %1030, %1012
  %1034 = fadd fast float %1031, %1013
  %1035 = fadd fast float %1032, %1014
  %1036 = fmul fast float %1009, %365
  %1037 = call float @dx.op.tertiary.f32(i32 46, float %1010, float %371, float %1036)  ; FMad(a,b,c)
  %1038 = call float @dx.op.tertiary.f32(i32 46, float %1011, float %377, float %1037)  ; FMad(a,b,c)
  %1039 = fadd fast float %1038, %383
  %1040 = fmul fast float %1009, %366
  %1041 = call float @dx.op.tertiary.f32(i32 46, float %1010, float %372, float %1040)  ; FMad(a,b,c)
  %1042 = call float @dx.op.tertiary.f32(i32 46, float %1011, float %378, float %1041)  ; FMad(a,b,c)
  %1043 = fadd fast float %1042, %384
  %1044 = fmul fast float %1009, %368
  %1045 = call float @dx.op.tertiary.f32(i32 46, float %1010, float %374, float %1044)  ; FMad(a,b,c)
  %1046 = call float @dx.op.tertiary.f32(i32 46, float %1011, float %380, float %1045)  ; FMad(a,b,c)
  %1047 = fadd fast float %1046, %386
  %1048 = fmul fast float %1033, %365
  %1049 = call float @dx.op.tertiary.f32(i32 46, float %1034, float %371, float %1048)  ; FMad(a,b,c)
  %1050 = call float @dx.op.tertiary.f32(i32 46, float %1035, float %377, float %1049)  ; FMad(a,b,c)
  %1051 = fadd fast float %1050, %383
  %1052 = fmul fast float %1033, %366
  %1053 = call float @dx.op.tertiary.f32(i32 46, float %1034, float %372, float %1052)  ; FMad(a,b,c)
  %1054 = call float @dx.op.tertiary.f32(i32 46, float %1035, float %378, float %1053)  ; FMad(a,b,c)
  %1055 = fadd fast float %1054, %384
  %1056 = fmul fast float %1033, %368
  %1057 = call float @dx.op.tertiary.f32(i32 46, float %1034, float %374, float %1056)  ; FMad(a,b,c)
  %1058 = call float @dx.op.tertiary.f32(i32 46, float %1035, float %380, float %1057)  ; FMad(a,b,c)
  %1059 = fadd fast float %1058, %386
  %1060 = fdiv fast float 1.000000e+00, %1047
  %1061 = fmul fast float %1060, %1039
  %1062 = fmul fast float %1060, %1043
  %1063 = fdiv fast float 1.000000e+00, %1059
  %1064 = fmul fast float %1063, %1051
  %1065 = fmul fast float %1063, %1055
  %1066 = fsub fast float %1064, %1061
  %1067 = fsub fast float %1065, %1062
  %1068 = call float @dx.op.dot2.f32(i32 54, float %1066, float %1067, float %1066, float %1067)  ; Dot2(ax,ay,bx,by)
  %1069 = call float @dx.op.unary.f32(i32 25, float %1068)  ; Rsqrt(value)
  %1070 = fmul fast float %1066, %1069
  %1071 = fmul fast float %1067, %1069
  %1072 = fmul fast float %1066, %1066
  %1073 = fmul fast float %1067, %1067
  %1074 = fadd fast float %1072, %1073
  %1075 = call float @dx.op.unary.f32(i32 24, float %1074)  ; Sqrt(value)
  %1076 = fmul fast float %1075, 5.000000e-01
  %1077 = fcmp fast olt float %1076, %986
  br i1 %1077, label %1078, label %1079, !dx.controlflow.hints !40

; <label>:1078                                    ; preds = %987
  br label %1079

; <label>:1079                                    ; preds = %1078, %987, %858
  %1080 = phi float [ %986, %858 ], [ %1076, %1078 ], [ %986, %987 ]
  %1081 = phi float [ %986, %858 ], [ %986, %1078 ], [ %1076, %987 ]
  %1082 = phi float [ %980, %858 ], [ %980, %1078 ], [ %1070, %987 ]
  %1083 = phi float [ %981, %858 ], [ %981, %1078 ], [ %1071, %987 ]
  %1084 = fsub fast float %1081, %1080
  %1085 = fmul fast float %1082, %1082
  %1086 = fmul fast float %1085, %1084
  %1087 = fadd fast float %1086, %1080
  %1088 = fmul fast float %1082, %1084
  %1089 = fmul fast float %1088, %1083
  %1090 = fmul fast float %1083, %1083
  %1091 = fmul fast float %1090, %1084
  %1092 = fadd fast float %1091, %1080
  %1093 = fmul fast float %1087, %444
  %1094 = call float @dx.op.tertiary.f32(i32 46, float %443, float %1089, float %1093)  ; FMad(a,b,c)
  %1095 = fmul fast float %1089, %444
  %1096 = call float @dx.op.tertiary.f32(i32 46, float %443, float %1092, float %1095)  ; FMad(a,b,c)
  %1097 = fmul fast float %1087, %445
  %1098 = call float @dx.op.tertiary.f32(i32 46, float %444, float %1089, float %1097)  ; FMad(a,b,c)
  %1099 = fmul fast float %1089, %445
  %1100 = call float @dx.op.tertiary.f32(i32 46, float %444, float %1092, float %1099)  ; FMad(a,b,c)
  br label %1101

; <label>:1101                                    ; preds = %1101, %1079
  %1102 = phi float [ 0.000000e+00, %1079 ], [ %1128, %1101 ]
  %1103 = phi i32 [ 0, %1079 ], [ %1129, %1101 ]
  %1104 = mul i32 %1103, 2
  %1105 = add i32 0, %1104
  %1106 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1105
  %1107 = load float, float* %1106, align 4
  %1108 = mul i32 %1103, 2
  %1109 = add i32 1, %1108
  %1110 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1109
  %1111 = load float, float* %1110, align 4
  %1112 = fmul fast float %1107, %1094
  %1113 = call float @dx.op.tertiary.f32(i32 46, float %1111, float %1098, float %1112)  ; FMad(a,b,c)
  %1114 = fmul fast float %1107, %1096
  %1115 = call float @dx.op.tertiary.f32(i32 46, float %1111, float %1100, float %1114)  ; FMad(a,b,c)
  %1116 = fadd fast float %1113, %438
  %1117 = fadd fast float %1115, %439
  %1118 = fmul fast float %1116, %355
  %1119 = fmul fast float %1117, %355
  %1120 = call float @dx.op.binary.f32(i32 35, float %1118, float %351)  ; FMax(a,b)
  %1121 = call float @dx.op.binary.f32(i32 35, float %1119, float %351)  ; FMax(a,b)
  %1122 = call float @dx.op.binary.f32(i32 36, float %1120, float %352)  ; FMin(a,b)
  %1123 = call float @dx.op.binary.f32(i32 36, float %1121, float %352)  ; FMin(a,b)
  %1124 = fadd fast float %1122, %349
  %1125 = fadd fast float %1123, %350
  %1126 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %17, float %1124, float %1125, float %824, float undef, i32 0, i32 0, i32 undef, float %827)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1127 = extractvalue %dx.types.ResRet.f32 %1126, 0
  %1128 = fadd fast float %1127, %1102
  %1129 = add nuw nsw i32 %1103, 1
  %1130 = icmp eq i32 %1129, 8
  br i1 %1130, label %1131, label %1101

; <label>:1131                                    ; preds = %1101
  %1132 = fmul fast float %1128, 1.250000e-01
  br label %1133

; <label>:1133                                    ; preds = %1131, %841, %490
  %1134 = phi float [ %517, %490 ], [ %1132, %1131 ], [ 1.000000e+00, %841 ]
  %1135 = fadd fast float %1134, -1.000000e+00
  %1136 = fmul fast float %1135, %328
  %1137 = fadd fast float %1136, 1.000000e+00
  %1138 = fmul fast float %1137, %340
  br label %1139

; <label>:1139                                    ; preds = %1133, %307
  %1140 = phi float [ %1138, %1133 ], [ %340, %307 ]
  %1141 = lshr i32 %163, 5
  %1142 = lshr i32 %164, 5
  %1143 = fcmp fast olt float %1140, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1144 = and i32 %23, 31
  %1145 = zext i1 %1143 to i32
  %1146 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %23
  store i32 %1145, i32 addrspace(3)* %1146, align 4, !tbaa !43
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1147 = icmp ult i32 %1144, 16
  br i1 %1147, label %1148, label %1154, !dx.controlflow.hints !47

; <label>:1148                                    ; preds = %1139
  %1149 = add i32 %23, 16
  %1150 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1149
  %1151 = load i32, i32 addrspace(3)* %1150, align 4, !tbaa !43
  %1152 = load i32, i32 addrspace(3)* %1146, align 4, !tbaa !43
  %1153 = and i32 %1152, %1151
  store i32 %1153, i32 addrspace(3)* %1146, align 4, !tbaa !43
  br label %1154

; <label>:1154                                    ; preds = %1148, %1139
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1155 = icmp ult i32 %1144, 8
  br i1 %1155, label %1156, label %1162, !dx.controlflow.hints !48

; <label>:1156                                    ; preds = %1154
  %1157 = add i32 %23, 8
  %1158 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1157
  %1159 = load i32, i32 addrspace(3)* %1158, align 4, !tbaa !43
  %1160 = load i32, i32 addrspace(3)* %1146, align 4, !tbaa !43
  %1161 = and i32 %1160, %1159
  store i32 %1161, i32 addrspace(3)* %1146, align 4, !tbaa !43
  br label %1162

; <label>:1162                                    ; preds = %1156, %1154
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1163 = icmp ult i32 %1144, 4
  br i1 %1163, label %1164, label %1170, !dx.controlflow.hints !49

; <label>:1164                                    ; preds = %1162
  %1165 = add i32 %23, 4
  %1166 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1165
  %1167 = load i32, i32 addrspace(3)* %1166, align 4, !tbaa !43
  %1168 = load i32, i32 addrspace(3)* %1146, align 4, !tbaa !43
  %1169 = and i32 %1168, %1167
  store i32 %1169, i32 addrspace(3)* %1146, align 4, !tbaa !43
  br label %1170

; <label>:1170                                    ; preds = %1164, %1162
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1171 = icmp ult i32 %1144, 2
  br i1 %1171, label %1172, label %1178, !dx.controlflow.hints !50

; <label>:1172                                    ; preds = %1170
  %1173 = add i32 %23, 2
  %1174 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1173
  %1175 = load i32, i32 addrspace(3)* %1174, align 4, !tbaa !43
  %1176 = load i32, i32 addrspace(3)* %1146, align 4, !tbaa !43
  %1177 = and i32 %1176, %1175
  store i32 %1177, i32 addrspace(3)* %1146, align 4, !tbaa !43
  br label %1178

; <label>:1178                                    ; preds = %1172, %1170
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1179 = icmp eq i32 %1144, 0
  br i1 %1179, label %1180, label %1186, !dx.controlflow.hints !51

; <label>:1180                                    ; preds = %1178
  %1181 = add i32 %23, 1
  %1182 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1181
  %1183 = load i32, i32 addrspace(3)* %1182, align 4, !tbaa !43
  %1184 = load i32, i32 addrspace(3)* %1146, align 4, !tbaa !43
  %1185 = and i32 %1184, %1183
  store i32 %1185, i32 addrspace(3)* %1146, align 4, !tbaa !43
  br label %1186

; <label>:1186                                    ; preds = %1180, %1178
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1187 = and i32 %23, -64
  %1188 = or i32 %1187, 32
  %1189 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1187
  %1190 = load i32, i32 addrspace(3)* %1189, align 4, !tbaa !43
  %1191 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1188
  %1192 = load i32, i32 addrspace(3)* %1191, align 4, !tbaa !43
  %1193 = and i32 %1192, %1190
  %1194 = icmp ne i32 %1193, 0
  %1195 = fcmp fast ogt float %1140, 0x3FEFFF8000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1196 = zext i1 %1195 to i32
  store i32 %1196, i32 addrspace(3)* %1146, align 4, !tbaa !43
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1147, label %1197, label %1203, !dx.controlflow.hints !47

; <label>:1197                                    ; preds = %1186
  %1198 = add i32 %23, 16
  %1199 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1198
  %1200 = load i32, i32 addrspace(3)* %1199, align 4, !tbaa !43
  %1201 = load i32, i32 addrspace(3)* %1146, align 4, !tbaa !43
  %1202 = and i32 %1201, %1200
  store i32 %1202, i32 addrspace(3)* %1146, align 4, !tbaa !43
  br label %1203

; <label>:1203                                    ; preds = %1197, %1186
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1155, label %1204, label %1210, !dx.controlflow.hints !48

; <label>:1204                                    ; preds = %1203
  %1205 = add i32 %23, 8
  %1206 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1205
  %1207 = load i32, i32 addrspace(3)* %1206, align 4, !tbaa !43
  %1208 = load i32, i32 addrspace(3)* %1146, align 4, !tbaa !43
  %1209 = and i32 %1208, %1207
  store i32 %1209, i32 addrspace(3)* %1146, align 4, !tbaa !43
  br label %1210

; <label>:1210                                    ; preds = %1204, %1203
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1163, label %1211, label %1217, !dx.controlflow.hints !49

; <label>:1211                                    ; preds = %1210
  %1212 = add i32 %23, 4
  %1213 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1212
  %1214 = load i32, i32 addrspace(3)* %1213, align 4, !tbaa !43
  %1215 = load i32, i32 addrspace(3)* %1146, align 4, !tbaa !43
  %1216 = and i32 %1215, %1214
  store i32 %1216, i32 addrspace(3)* %1146, align 4, !tbaa !43
  br label %1217

; <label>:1217                                    ; preds = %1211, %1210
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1171, label %1218, label %1224, !dx.controlflow.hints !50

; <label>:1218                                    ; preds = %1217
  %1219 = add i32 %23, 2
  %1220 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1219
  %1221 = load i32, i32 addrspace(3)* %1220, align 4, !tbaa !43
  %1222 = load i32, i32 addrspace(3)* %1146, align 4, !tbaa !43
  %1223 = and i32 %1222, %1221
  store i32 %1223, i32 addrspace(3)* %1146, align 4, !tbaa !43
  br label %1224

; <label>:1224                                    ; preds = %1218, %1217
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1179, label %1225, label %1231, !dx.controlflow.hints !51

; <label>:1225                                    ; preds = %1224
  %1226 = add i32 %23, 1
  %1227 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1226
  %1228 = load i32, i32 addrspace(3)* %1227, align 4, !tbaa !43
  %1229 = load i32, i32 addrspace(3)* %1146, align 4, !tbaa !43
  %1230 = and i32 %1229, %1228
  store i32 %1230, i32 addrspace(3)* %1146, align 4, !tbaa !43
  br label %1231

; <label>:1231                                    ; preds = %1225, %1224
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1232 = load i32, i32 addrspace(3)* %1189, align 4, !tbaa !43
  %1233 = load i32, i32 addrspace(3)* %1191, align 4, !tbaa !43
  %1234 = and i32 %1233, %1232
  %1235 = or i32 %1234, %1193
  %1236 = icmp eq i32 %1235, 0
  %1237 = lshr i32 %164, 1
  %1238 = and i32 %1237, 8
  %1239 = lshr i32 %163, 2
  %1240 = and i32 %1239, 4
  %1241 = or i32 %1238, %35
  %1242 = or i32 %1241, %1240
  %1243 = icmp eq i32 %23, 0
  br i1 %1243, label %1244, label %1286, !dx.controlflow.hints !52

; <label>:1244                                    ; preds = %1231
  %1245 = icmp ne i32 %1234, 0
  %1246 = shl i32 1, %1242
  %1247 = select i1 %1245, i32 %1246, i32 0
  %1248 = shl i32 65536, %1242
  %1249 = select i1 %1194, i32 %1248, i32 0
  %1250 = or i32 %1247, %1249
  %1251 = icmp eq i32 %1250, 0
  br i1 %1251, label %1254, label %1252, !dx.controlflow.hints !53

; <label>:1252                                    ; preds = %1244
  %1253 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %1141, i32 %1142, i32 %217, i32 %1250)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1254

; <label>:1254                                    ; preds = %1252, %1244
  br i1 %1236, label %1255, label %1284

; <label>:1255                                    ; preds = %1254
  br label %1256

; <label>:1256                                    ; preds = %1281, %1255
  %1257 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %3, i32 %1141, i32 %1142, i32 %217, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %1258 = and i32 %1257, 3
  %1259 = icmp eq i32 %1258, 0
  br i1 %1259, label %1260, label %1281, !dx.controlflow.hints !54

; <label>:1260                                    ; preds = %1256
  %1261 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1262 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1263 = extractvalue %dx.types.CBufRet.i32 %1262, 3
  %1264 = call i32 @dx.op.binary.i32(i32 40, i32 %1263, i32 %1261)  ; UMin(a,b)
  %1265 = extractvalue %dx.types.CBufRet.i32 %1262, 2
  %1266 = udiv i32 %1264, %1265
  %1267 = urem i32 %1264, %1265
  %1268 = extractvalue %dx.types.CBufRet.i32 %1262, 1
  %1269 = urem i32 %1267, %1268
  %1270 = udiv i32 %1267, %1268
  %1271 = shl i32 %1269, 6
  %1272 = and i32 %1271, 32704
  %1273 = shl i32 %1270, 15
  %1274 = and i32 %1273, 8355840
  %1275 = shl i32 %1266, 23
  %1276 = and i32 %1275, 2139095040
  %1277 = or i32 %1276, %1272
  %1278 = or i32 %1277, %1274
  %1279 = or i32 %1278, 3
  %1280 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 8, i32 %1141, i32 %1142, i32 %217, i32 %1279)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1284

; <label>:1281                                    ; preds = %1256
  %1282 = icmp eq i32 %1258, 3
  br i1 %1282, label %1283, label %1256, !dx.controlflow.hints !55

; <label>:1283                                    ; preds = %1281
  br label %1284

; <label>:1284                                    ; preds = %1283, %1260, %1254
  %1285 = phi i32 [ 0, %1254 ], [ %1279, %1260 ], [ %1257, %1283 ]
  store i32 %1285, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !43
  br label %1286

; <label>:1286                                    ; preds = %1284, %1231
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1287 = load i32, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !43
  br i1 %1236, label %1288, label %1303, !dx.controlflow.hints !56

; <label>:1288                                    ; preds = %1286
  %1289 = lshr i32 %1287, 23
  %1290 = and i32 %1289, 255
  %1291 = and i32 %163, 31
  %1292 = and i32 %164, 31
  %1293 = lshr i32 %1287, 1
  %1294 = and i32 %1293, 16352
  %1295 = lshr i32 %1287, 10
  %1296 = and i32 %1295, 8160
  %1297 = or i32 %1294, %1291
  %1298 = or i32 %1296, %1292
  %1299 = fmul fast float %1140, 2.550000e+02
  %1300 = fadd fast float %1299, %158
  %1301 = call float @dx.op.unary.f32(i32 27, float %1300)  ; Round_ni(value)
  %1302 = fmul fast float %1301, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %1297, i32 %1298, i32 %1290, float %1302, float %1302, float %1302, float %1302, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1303

; <label>:1303                                    ; preds = %1288, %1286
  %1304 = icmp eq i32 %215, %219
  br i1 %1304, label %1305, label %214, !llvm.loop !57

; <label>:1305                                    ; preds = %1303
  br label %1306

; <label>:1306                                    ; preds = %1305, %188
  %1307 = add i32 %189, 1
  %1308 = icmp ugt i32 %1307, %185
  br i1 %1308, label %1309, label %188

; <label>:1309                                    ; preds = %1306
  br label %1310

; <label>:1310                                    ; preds = %1309, %162, %0
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare i32 @dx.op.atomicCompareExchange.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

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
!dx.entryPoints = !{!31}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !18, !24, !27}
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
!18 = !{!19, !20, !21, !22}
!19 = !{i32 0, %"class.RWTexture2DArray<float>"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!20 = !{i32 1, %"class.RWTexture2DArray<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!21 = !{i32 2, %"class.RWTexture2DArray<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!22 = !{i32 3, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i1 false, i1 false, i1 false, !23}
!23 = !{i32 1, i32 4}
!24 = !{!25, !26}
!25 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!26 = !{i32 1, %ConstantBufferSpotvis* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!27 = !{!28, !29, !30}
!28 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!29 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!30 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!31 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !32}
!32 = !{i32 0, i64 272, i32 4, !33}
!33 = !{i32 8, i32 8, i32 1}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 1}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = !{!44, !44, i64 0}
!44 = !{!"int", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
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
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.unroll.disable"}

