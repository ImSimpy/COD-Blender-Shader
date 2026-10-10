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
; shader hash: 27380158d3597c311788fe63bdb6ddd2
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
  %65 = fmul fast float %50, %63
  %66 = fmul fast float %51, %64
  %67 = fmul fast float %65, 2.000000e+00
  %68 = fmul fast float %66, 2.000000e+00
  %69 = fsub fast float 1.000000e+00, %67
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
  %148 = fmul fast float %63, %48
  %149 = fmul fast float %64, %49
  %150 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %16, float %148, float %149, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %151 = extractvalue %dx.types.ResRet.f32 %150, 0
  %152 = extractvalue %dx.types.ResRet.f32 %150, 1
  %153 = extractvalue %dx.types.ResRet.f32 %150, 2
  %154 = fcmp fast ogt float %151, -1.000000e+00
  %155 = select i1 %154, float %57, float 1.000000e+00
  %156 = fadd fast float %151, 1.000000e+00
  %157 = fmul fast float %155, %156
  %158 = call float @dx.op.unary.f32(i32 6, float %157)  ; FAbs(value)
  %159 = fcmp fast ogt float %152, -1.000000e+00
  %160 = select i1 %159, float %57, float 1.000000e+00
  %161 = fadd fast float %152, 1.000000e+00
  %162 = fmul fast float %160, %161
  %163 = call float @dx.op.unary.f32(i32 6, float %162)  ; FAbs(value)
  %164 = fcmp fast ogt float %153, -1.000000e+00
  %165 = select i1 %164, float %57, float 1.000000e+00
  %166 = fadd fast float %153, 1.000000e+00
  %167 = fmul fast float %165, %166
  %168 = call float @dx.op.unary.f32(i32 6, float %167)  ; FAbs(value)
  %169 = fadd fast float %48, 1.000000e+00
  %170 = fmul fast float %63, %169
  %171 = fadd fast float %49, 1.000000e+00
  %172 = fmul fast float %64, %171
  %173 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %16, float %170, float %172, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %174 = extractvalue %dx.types.ResRet.f32 %173, 0
  %175 = extractvalue %dx.types.ResRet.f32 %173, 2
  %176 = fcmp fast ogt float %174, -1.000000e+00
  %177 = select i1 %176, float %57, float 1.000000e+00
  %178 = fadd fast float %174, 1.000000e+00
  %179 = fmul fast float %177, %178
  %180 = call float @dx.op.unary.f32(i32 6, float %179)  ; FAbs(value)
  %181 = fcmp fast ogt float %175, -1.000000e+00
  %182 = select i1 %181, float %57, float 1.000000e+00
  %183 = fadd fast float %175, 1.000000e+00
  %184 = fmul fast float %182, %183
  %185 = call float @dx.op.unary.f32(i32 6, float %184)  ; FAbs(value)
  %186 = fsub fast float %168, %163
  %187 = fsub fast float %180, %163
  %188 = fsub fast float %158, %163
  %189 = fsub fast float %185, %163
  %190 = call float @dx.op.unary.f32(i32 6, float %187)  ; FAbs(value)
  %191 = call float @dx.op.unary.f32(i32 6, float %186)  ; FAbs(value)
  %192 = call float @dx.op.binary.f32(i32 35, float %191, float %190)  ; FMax(a,b)
  %193 = call float @dx.op.unary.f32(i32 6, float %189)  ; FAbs(value)
  %194 = call float @dx.op.unary.f32(i32 6, float %188)  ; FAbs(value)
  %195 = call float @dx.op.binary.f32(i32 35, float %194, float %193)  ; FMax(a,b)
  %196 = fadd fast float %187, %186
  %197 = call float @dx.op.unary.f32(i32 6, float %196)  ; FAbs(value)
  %198 = fadd fast float %189, %188
  %199 = call float @dx.op.unary.f32(i32 6, float %198)  ; FAbs(value)
  %200 = fsub fast float %195, %199
  %201 = call float @dx.op.unary.f32(i32 6, float %200)  ; FAbs(value)
  %202 = fsub fast float %192, %197
  %203 = call float @dx.op.unary.f32(i32 6, float %202)  ; FAbs(value)
  %204 = call float @dx.op.binary.f32(i32 35, float %203, float %201)  ; FMax(a,b)
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.f32 %205, 2
  %207 = fmul fast float %206, 0x3FE3C6EF40000000
  %208 = frem fast float %50, 2.560000e+02
  %209 = frem fast float %51, 2.560000e+02
  %210 = fptoui float %208 to i32
  %211 = fptoui float %209 to i32
  %212 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %210, i32 %211, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = extractvalue %dx.types.ResRet.f32 %212, 2
  %215 = fadd fast float %213, %207
  %216 = fadd fast float %214, %207
  %217 = call float @dx.op.unary.f32(i32 22, float %215)  ; Frc(value)
  %218 = call float @dx.op.unary.f32(i32 22, float %216)  ; Frc(value)
  %219 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.i32 %219, 0
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %1780, label %222, !dx.controlflow.hints !34

; <label>:222                                     ; preds = %0
  %223 = fptoui float %50 to i32
  %224 = fptoui float %51 to i32
  %225 = lshr i32 %223, 4
  %226 = lshr i32 %224, 4
  %227 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.i32 %227, 0
  %229 = call i32 @dx.op.tertiary.i32(i32 49, i32 %226, i32 %228, i32 %225)  ; UMad(a,b,c)
  %230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.i32 %230, 0
  %232 = add nsw i32 %231, -1
  %233 = call i32 @dx.op.binary.i32(i32 37, i32 %232, i32 0)  ; IMax(a,b)
  %234 = call float @dx.op.binary.f32(i32 35, float %61, float 0.000000e+00)  ; FMax(a,b)
  %235 = fptoui float %234 to i32
  %236 = lshr i32 %235, 5
  %237 = call i32 @dx.op.binary.i32(i32 40, i32 %236, i32 8191)  ; UMin(a,b)
  %238 = shl i32 %237, 2
  %239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.i32 %239, 0
  %241 = lshr i32 %240, 16
  %242 = and i32 %240, 65535
  %243 = lshr i32 %240, 21
  %244 = lshr i32 %242, 5
  %245 = call i32 @dx.op.binary.i32(i32 40, i32 %244, i32 %233)  ; UMin(a,b)
  %246 = icmp ugt i32 %243, %245
  br i1 %246, label %1780, label %247

; <label>:247                                     ; preds = %222
  br label %248

; <label>:248                                     ; preds = %1776, %247
  %249 = phi i32 [ %1777, %1776 ], [ %243, %247 ]
  %250 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.i32 %250, 0
  %252 = call i32 @dx.op.tertiary.i32(i32 49, i32 %229, i32 %251, i32 %249)  ; UMad(a,b,c)
  %253 = shl i32 %252, 2
  %254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.i32 %254, 0
  %256 = shl i32 %249, 5
  %257 = sub nsw i32 %241, %256
  %258 = call i32 @dx.op.binary.i32(i32 37, i32 %257, i32 0)  ; IMax(a,b)
  %259 = call i32 @dx.op.binary.i32(i32 38, i32 %258, i32 31)  ; IMin(a,b)
  %260 = sub nsw i32 1, %241
  %261 = add nsw i32 %260, %242
  %262 = call i32 @dx.op.binary.i32(i32 37, i32 %261, i32 0)  ; IMax(a,b)
  %263 = call i32 @dx.op.binary.i32(i32 38, i32 %262, i32 32)  ; IMin(a,b)
  %264 = and i32 %263, 31
  %265 = shl i32 -1, %264
  %266 = xor i32 %265, -1
  %267 = and i32 %259, 31
  %268 = shl i32 %266, %267
  %269 = icmp eq i32 %263, 32
  %270 = select i1 %269, i32 -1, i32 %268
  %271 = and i32 %270, %255
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %1776, label %273

; <label>:273                                     ; preds = %248
  br label %274

; <label>:274                                     ; preds = %1773, %273
  %275 = phi i32 [ %280, %1773 ], [ %271, %273 ]
  %276 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %275)  ; FirstbitLo(value)
  %277 = add i32 %276, %256
  %278 = and i32 %276, 31
  %279 = shl i32 1, %278
  %280 = xor i32 %279, %275
  %281 = mul i32 %277, 112
  %282 = add i32 %281, 16
  %283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.f32 %283, 0
  %285 = extractvalue %dx.types.ResRet.f32 %283, 1
  %286 = extractvalue %dx.types.ResRet.f32 %283, 2
  %287 = add i32 %281, 28
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = add i32 %281, 32
  %291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.f32 %291, 0
  %293 = extractvalue %dx.types.ResRet.f32 %291, 1
  %294 = extractvalue %dx.types.ResRet.f32 %291, 2
  %295 = add i32 %281, 44
  %296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.f32 %296, 0
  %298 = add i32 %281, 48
  %299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.f32 %299, 0
  %301 = extractvalue %dx.types.ResRet.f32 %299, 1
  %302 = extractvalue %dx.types.ResRet.f32 %299, 2
  %303 = extractvalue %dx.types.ResRet.f32 %299, 3
  %304 = add i32 %281, 64
  %305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.f32 %305, 0
  %307 = extractvalue %dx.types.ResRet.f32 %305, 1
  %308 = extractvalue %dx.types.ResRet.f32 %305, 2
  %309 = extractvalue %dx.types.ResRet.f32 %305, 3
  %310 = add i32 %281, 92
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = and i32 %312, 65535
  %314 = uitofp i32 %313 to float
  %315 = lshr i32 %312, 16
  %316 = uitofp i32 %315 to float
  %317 = and i32 %289, 65535
  %318 = and i32 %289, 50331648
  %319 = icmp eq i32 %318, 33554432
  %320 = call float @dx.op.dot3.f32(i32 55, float %292, float %293, float %294, float %292, float %293, float %294)  ; Dot3(ax,ay,az,bx,by,bz)
  %321 = fsub fast float %116, %300
  %322 = fsub fast float %117, %301
  %323 = fsub fast float %118, %302
  %324 = call float @dx.op.dot3.f32(i32 55, float %321, float %322, float %323, float %292, float %293, float %294)  ; Dot3(ax,ay,az,bx,by,bz)
  %325 = fdiv fast float %324, %320
  %326 = call float @dx.op.binary.f32(i32 35, float %325, float -1.000000e+00)  ; FMax(a,b)
  %327 = call float @dx.op.binary.f32(i32 36, float %326, float 1.000000e+00)  ; FMin(a,b)
  %328 = fmul fast float %327, %292
  %329 = fmul fast float %327, %293
  %330 = fmul fast float %327, %294
  %331 = fadd fast float %328, %300
  %332 = fadd fast float %329, %301
  %333 = fadd fast float %330, %302
  %334 = fsub fast float %331, %116
  %335 = fsub fast float %332, %117
  %336 = fsub fast float %333, %118
  %337 = call float @dx.op.dot3.f32(i32 55, float %334, float %335, float %336, float %334, float %335, float %336)  ; Dot3(ax,ay,az,bx,by,bz)
  %338 = call float @dx.op.unary.f32(i32 24, float %337)  ; Sqrt(value)
  %339 = fdiv fast float 1.000000e+00, %338
  %340 = fmul fast float %334, %339
  %341 = fmul fast float %335, %339
  %342 = fmul fast float %336, %339
  br i1 %319, label %343, label %367, !dx.controlflow.hints !35

; <label>:343                                     ; preds = %274
  %344 = fmul fast float %308, %284
  %345 = fmul fast float %308, %285
  %346 = fmul fast float %308, %286
  %347 = fsub fast float %344, %116
  %348 = fadd fast float %347, %331
  %349 = fsub fast float %345, %117
  %350 = fadd fast float %349, %332
  %351 = fsub fast float %346, %118
  %352 = fadd fast float %351, %333
  %353 = call float @dx.op.dot3.f32(i32 55, float %348, float %350, float %352, float %348, float %350, float %352)  ; Dot3(ax,ay,az,bx,by,bz)
  %354 = call float @dx.op.unary.f32(i32 25, float %353)  ; Rsqrt(value)
  %355 = fmul fast float %354, %348
  %356 = fmul fast float %354, %350
  %357 = fmul fast float %354, %352
  %358 = fsub fast float %116, %331
  %359 = fsub fast float %117, %332
  %360 = fsub fast float %118, %333
  %361 = fsub fast float -0.000000e+00, %358
  %362 = fsub fast float -0.000000e+00, %359
  %363 = fsub fast float -0.000000e+00, %360
  %364 = call float @dx.op.dot3.f32(i32 55, float %361, float %362, float %363, float %284, float %285, float %286)  ; Dot3(ax,ay,az,bx,by,bz)
  %365 = fcmp fast ogt float %364, 0.000000e+00
  %366 = uitofp i1 %365 to float
  br label %367

; <label>:367                                     ; preds = %343, %274
  %368 = phi float [ %366, %343 ], [ 1.000000e+00, %274 ]
  %369 = phi float [ %355, %343 ], [ %340, %274 ]
  %370 = phi float [ %356, %343 ], [ %341, %274 ]
  %371 = phi float [ %357, %343 ], [ %342, %274 ]
  %372 = call float @dx.op.dot3.f32(i32 55, float %284, float %285, float %286, float %369, float %370, float %371)  ; Dot3(ax,ay,az,bx,by,bz)
  %373 = fmul fast float %372, %372
  %374 = call float @dx.op.unary.f32(i32 7, float %373)  ; Saturate(value)
  %375 = fsub fast float 1.000000e+00, %374
  %376 = fmul fast float %375, 5.000000e-01
  %377 = fcmp fast ogt float %372, 0.000000e+00
  %378 = fsub fast float 1.000000e+00, %376
  %379 = select i1 %377, float %376, float %378
  %380 = fmul fast float %379, %316
  %381 = fadd fast float %380, %314
  %382 = fmul fast float %381, 0x3EF0001000000000
  %383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %15, float %382, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %384 = extractvalue %dx.types.ResRet.f32 %383, 0
  %385 = fmul fast float %372, %306
  %386 = fadd fast float %385, %307
  %387 = call float @dx.op.unary.f32(i32 7, float %386)  ; Saturate(value)
  %388 = select i1 %319, float 1.000000e+00, float %387
  %389 = select i1 %319, float %387, float 1.000000e+00
  %390 = fmul fast float %338, %303
  %391 = fsub fast float 1.000000e+00, %390
  %392 = fmul fast float %391, %309
  %393 = call float @dx.op.unary.f32(i32 7, float %392)  ; Saturate(value)
  %394 = fmul fast float %393, %389
  %395 = fmul fast float %394, 2.000000e+00
  %396 = fsub fast float 3.000000e+00, %395
  %397 = fmul fast float %384, %368
  %398 = fmul fast float %394, %394
  %399 = fmul fast float %398, %397
  %400 = fmul fast float %399, %396
  %401 = icmp ne i32 %317, 255
  %402 = call float @dx.op.binary.f32(i32 36, float %400, float %400)  ; FMin(a,b)
  %403 = call float @dx.op.binary.f32(i32 36, float %400, float %402)  ; FMin(a,b)
  %404 = fcmp fast ogt float %403, 0.000000e+00
  %405 = and i1 %401, %404
  br i1 %405, label %406, label %1320, !dx.controlflow.hints !36

; <label>:406                                     ; preds = %367
  %407 = mul nuw nsw i32 %317, 176
  %408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.f32 %408, 0
  %410 = extractvalue %dx.types.ResRet.f32 %408, 1
  %411 = extractvalue %dx.types.ResRet.f32 %408, 2
  %412 = extractvalue %dx.types.ResRet.f32 %408, 3
  %413 = add nuw nsw i32 %407, 16
  %414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.f32 %414, 0
  %416 = extractvalue %dx.types.ResRet.f32 %414, 1
  %417 = add nuw nsw i32 %407, 32
  %418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.f32 %418, 0
  %420 = extractvalue %dx.types.ResRet.f32 %418, 1
  %421 = extractvalue %dx.types.ResRet.f32 %418, 2
  %422 = extractvalue %dx.types.ResRet.f32 %418, 3
  %423 = add nuw nsw i32 %407, 48
  %424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.f32 %424, 0
  %426 = extractvalue %dx.types.ResRet.f32 %424, 1
  %427 = extractvalue %dx.types.ResRet.f32 %424, 2
  %428 = extractvalue %dx.types.ResRet.f32 %424, 3
  %429 = add nuw nsw i32 %407, 64
  %430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.f32 %430, 0
  %432 = extractvalue %dx.types.ResRet.f32 %430, 1
  %433 = extractvalue %dx.types.ResRet.f32 %430, 2
  %434 = extractvalue %dx.types.ResRet.f32 %430, 3
  %435 = add nuw nsw i32 %407, 80
  %436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.f32 %436, 0
  %438 = extractvalue %dx.types.ResRet.f32 %436, 1
  %439 = extractvalue %dx.types.ResRet.f32 %436, 2
  %440 = extractvalue %dx.types.ResRet.f32 %436, 3
  %441 = add nuw nsw i32 %407, 96
  %442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.f32 %442, 0
  %444 = extractvalue %dx.types.ResRet.f32 %442, 1
  %445 = extractvalue %dx.types.ResRet.f32 %442, 2
  %446 = extractvalue %dx.types.ResRet.f32 %442, 3
  %447 = add nuw nsw i32 %407, 112
  %448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.f32 %448, 0
  %450 = extractvalue %dx.types.ResRet.f32 %448, 1
  %451 = extractvalue %dx.types.ResRet.f32 %448, 2
  %452 = extractvalue %dx.types.ResRet.f32 %448, 3
  %453 = add nuw nsw i32 %407, 128
  %454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.f32 %454, 0
  %456 = extractvalue %dx.types.ResRet.f32 %454, 1
  %457 = extractvalue %dx.types.ResRet.f32 %454, 2
  %458 = extractvalue %dx.types.ResRet.f32 %454, 3
  %459 = add nuw nsw i32 %407, 144
  %460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.f32 %460, 0
  %462 = extractvalue %dx.types.ResRet.f32 %460, 1
  %463 = extractvalue %dx.types.ResRet.f32 %460, 2
  %464 = extractvalue %dx.types.ResRet.f32 %460, 3
  %465 = add nuw nsw i32 %407, 160
  %466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.f32 %466, 0
  %468 = extractvalue %dx.types.ResRet.f32 %466, 1
  %469 = extractvalue %dx.types.ResRet.f32 %466, 2
  %470 = extractvalue %dx.types.ResRet.f32 %466, 3
  %471 = bitcast float %416 to i32
  %472 = bitcast float %422 to i32
  %473 = and i32 %472, 1
  %474 = icmp ne i32 %473, 0
  %475 = and i32 %472, 2
  %476 = fmul fast float %421, %145
  %477 = fmul fast float %421, %146
  %478 = fmul fast float %421, %147
  %479 = fadd fast float %476, %116
  %480 = fadd fast float %477, %117
  %481 = fadd fast float %478, %118
  %482 = fmul fast float %479, %425
  %483 = call float @dx.op.tertiary.f32(i32 46, float %480, float %431, float %482)  ; FMad(a,b,c)
  %484 = call float @dx.op.tertiary.f32(i32 46, float %481, float %437, float %483)  ; FMad(a,b,c)
  %485 = fadd fast float %484, %443
  %486 = fmul fast float %479, %426
  %487 = call float @dx.op.tertiary.f32(i32 46, float %480, float %432, float %486)  ; FMad(a,b,c)
  %488 = call float @dx.op.tertiary.f32(i32 46, float %481, float %438, float %487)  ; FMad(a,b,c)
  %489 = fadd fast float %488, %444
  %490 = fmul fast float %479, %427
  %491 = call float @dx.op.tertiary.f32(i32 46, float %480, float %433, float %490)  ; FMad(a,b,c)
  %492 = call float @dx.op.tertiary.f32(i32 46, float %481, float %439, float %491)  ; FMad(a,b,c)
  %493 = fadd fast float %492, %445
  %494 = fmul fast float %479, %428
  %495 = call float @dx.op.tertiary.f32(i32 46, float %480, float %434, float %494)  ; FMad(a,b,c)
  %496 = call float @dx.op.tertiary.f32(i32 46, float %481, float %440, float %495)  ; FMad(a,b,c)
  %497 = fadd fast float %496, %446
  %498 = fdiv fast float %485, %497
  %499 = fdiv fast float %489, %497
  %500 = fdiv fast float %493, %497
  %501 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %500)  ; FMax(a,b)
  %502 = fmul fast float %217, 0x401921FB60000000
  %503 = call float @dx.op.unary.f32(i32 13, float %502)  ; Sin(value)
  %504 = call float @dx.op.unary.f32(i32 12, float %502)  ; Cos(value)
  %505 = fsub fast float -0.000000e+00, %503
  %506 = icmp eq i32 %475, 0
  br i1 %506, label %507, label %578, !dx.controlflow.hints !37

; <label>:507                                     ; preds = %406
  %508 = fmul fast float %504, %420
  %509 = call float @dx.op.tertiary.f32(i32 46, float %503, float %420, float 0.000000e+00)  ; FMad(a,b,c)
  %510 = fmul fast float %420, %505
  %511 = call float @dx.op.tertiary.f32(i32 46, float %504, float %420, float 0.000000e+00)  ; FMad(a,b,c)
  br label %512

; <label>:512                                     ; preds = %512, %507
  %513 = phi float [ 0.000000e+00, %507 ], [ %545, %512 ]
  %514 = phi float [ 0.000000e+00, %507 ], [ %547, %512 ]
  %515 = phi i32 [ 0, %507 ], [ %548, %512 ]
  %516 = mul i32 %515, 2
  %517 = add i32 0, %516
  %518 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %517
  %519 = load float, float* %518, align 4
  %520 = mul i32 %515, 2
  %521 = add i32 1, %520
  %522 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %521
  %523 = load float, float* %522, align 4
  %524 = fmul fast float %508, %519
  %525 = call float @dx.op.tertiary.f32(i32 46, float %523, float %510, float %524)  ; FMad(a,b,c)
  %526 = fmul fast float %519, %509
  %527 = call float @dx.op.tertiary.f32(i32 46, float %523, float %511, float %526)  ; FMad(a,b,c)
  %528 = fadd fast float %525, %498
  %529 = fadd fast float %527, %499
  %530 = fmul fast float %528, %415
  %531 = fmul fast float %529, %415
  %532 = call float @dx.op.binary.f32(i32 35, float %530, float %411)  ; FMax(a,b)
  %533 = call float @dx.op.binary.f32(i32 35, float %531, float %411)  ; FMax(a,b)
  %534 = call float @dx.op.binary.f32(i32 36, float %532, float %412)  ; FMin(a,b)
  %535 = call float @dx.op.binary.f32(i32 36, float %533, float %412)  ; FMin(a,b)
  %536 = fadd fast float %534, %409
  %537 = fadd fast float %535, %410
  %538 = uitofp i32 %471 to float
  %539 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %536, float %537, float %538, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %540 = extractvalue %dx.types.ResRet.f32 %539, 0
  %541 = fsub fast float %540, %501
  %542 = fsub fast float %541, %419
  %543 = fcmp fast ogt float %542, 0.000000e+00
  %544 = select i1 %543, float 1.000000e+00, float 0.000000e+00
  %545 = fadd fast float %544, %513
  %546 = select i1 %543, float %542, float 0.000000e+00
  %547 = fadd fast float %546, %514
  %548 = add nuw nsw i32 %515, 1
  %549 = icmp eq i32 %548, 8
  br i1 %549, label %550, label %512

; <label>:550                                     ; preds = %512
  %551 = fdiv fast float 1.000000e+00, %545
  %552 = fmul fast float %551, %547
  %553 = fdiv fast float 1.000000e+00, %501
  %554 = fmul fast float %552, %553
  %555 = call float @dx.op.unary.f32(i32 7, float %554)  ; Saturate(value)
  %556 = call float @dx.op.binary.f32(i32 35, float %555, float 0.000000e+00)  ; FMax(a,b)
  %557 = fmul fast float %545, 1.250000e-01
  %558 = call float @dx.op.unary.f32(i32 7, float %557)  ; Saturate(value)
  %559 = fmul fast float %558, 2.000000e+00
  %560 = fadd fast float %559, -1.000000e+00
  %561 = fcmp fast ogt float %560, 0.000000e+00
  %562 = fcmp fast olt float %560, 0.000000e+00
  %563 = zext i1 %561 to i32
  %564 = zext i1 %562 to i32
  %565 = sub nsw i32 %563, %564
  %566 = sitofp i32 %565 to float
  %567 = fmul fast float %566, %560
  %568 = fsub fast float 1.000000e+00, %567
  %569 = fmul fast float %568, %568
  %570 = fmul fast float %569, %568
  %571 = fsub fast float %568, %570
  %572 = fmul fast float %571, %556
  %573 = fsub fast float 1.000000e+00, %570
  %574 = fsub fast float %573, %572
  %575 = fmul fast float %566, 5.000000e-01
  %576 = fmul fast float %575, %574
  %577 = fsub fast float 5.000000e-01, %576
  br label %1193

; <label>:578                                     ; preds = %406
  %579 = fsub fast float 1.000000e+00, %501
  %580 = fmul fast float %579, 5.000000e-01
  %581 = fadd fast float %580, %501
  %582 = fsub fast float %479, %300
  %583 = fsub fast float %480, %301
  %584 = fsub fast float %481, %302
  %585 = call float @dx.op.dot3.f32(i32 55, float %582, float %583, float %584, float %292, float %293, float %294)  ; Dot3(ax,ay,az,bx,by,bz)
  %586 = fdiv fast float %585, %320
  %587 = call float @dx.op.binary.f32(i32 35, float %586, float -1.000000e+00)  ; FMax(a,b)
  %588 = call float @dx.op.binary.f32(i32 36, float %587, float 1.000000e+00)  ; FMin(a,b)
  %589 = fmul fast float %588, %292
  %590 = fmul fast float %588, %293
  %591 = fmul fast float %588, %294
  %592 = fsub fast float %582, %589
  %593 = fsub fast float %583, %590
  %594 = fsub fast float %584, %591
  %595 = call float @dx.op.dot3.f32(i32 55, float %592, float %593, float %594, float %592, float %593, float %594)  ; Dot3(ax,ay,az,bx,by,bz)
  %596 = call float @dx.op.unary.f32(i32 25, float %595)  ; Rsqrt(value)
  %597 = fmul fast float %592, %596
  %598 = fmul fast float %593, %596
  %599 = fmul fast float %594, %596
  %600 = call float @dx.op.unary.f32(i32 25, float %320)  ; Rsqrt(value)
  %601 = fmul fast float %600, %292
  %602 = fmul fast float %600, %293
  %603 = fmul fast float %600, %294
  br i1 %474, label %604, label %608, !dx.controlflow.hints !38

; <label>:604                                     ; preds = %578
  %605 = fcmp fast olt float %598, 0x3FE6666660000000
  %606 = select i1 %605, float 1.000000e+00, float 0.000000e+00
  %607 = select i1 %605, float 0.000000e+00, float 1.000000e+00
  br label %608

; <label>:608                                     ; preds = %604, %578
  %609 = phi float [ 0.000000e+00, %604 ], [ %601, %578 ]
  %610 = phi float [ %606, %604 ], [ %602, %578 ]
  %611 = phi float [ %607, %604 ], [ %603, %578 ]
  %612 = fmul fast float %610, %599
  %613 = fmul fast float %611, %598
  %614 = fsub fast float %612, %613
  %615 = fmul fast float %611, %597
  %616 = fmul fast float %609, %599
  %617 = fsub fast float %615, %616
  %618 = fmul fast float %609, %598
  %619 = fmul fast float %610, %597
  %620 = fsub fast float %618, %619
  %621 = call float @dx.op.dot3.f32(i32 55, float %614, float %617, float %620, float %614, float %617, float %620)  ; Dot3(ax,ay,az,bx,by,bz)
  %622 = call float @dx.op.unary.f32(i32 25, float %621)  ; Rsqrt(value)
  %623 = fmul fast float %622, %297
  %624 = fmul fast float %623, %614
  %625 = fmul fast float %623, %617
  %626 = fmul fast float %620, %297
  %627 = fmul fast float %626, %622
  %628 = fmul fast float %498, %449
  %629 = call float @dx.op.tertiary.f32(i32 46, float %499, float %455, float %628)  ; FMad(a,b,c)
  %630 = call float @dx.op.tertiary.f32(i32 46, float %581, float %461, float %629)  ; FMad(a,b,c)
  %631 = fadd fast float %630, %467
  %632 = fmul fast float %498, %450
  %633 = call float @dx.op.tertiary.f32(i32 46, float %499, float %456, float %632)  ; FMad(a,b,c)
  %634 = call float @dx.op.tertiary.f32(i32 46, float %581, float %462, float %633)  ; FMad(a,b,c)
  %635 = fadd fast float %634, %468
  %636 = fmul fast float %498, %451
  %637 = call float @dx.op.tertiary.f32(i32 46, float %499, float %457, float %636)  ; FMad(a,b,c)
  %638 = call float @dx.op.tertiary.f32(i32 46, float %581, float %463, float %637)  ; FMad(a,b,c)
  %639 = fadd fast float %638, %469
  %640 = fmul fast float %498, %452
  %641 = call float @dx.op.tertiary.f32(i32 46, float %499, float %458, float %640)  ; FMad(a,b,c)
  %642 = call float @dx.op.tertiary.f32(i32 46, float %581, float %464, float %641)  ; FMad(a,b,c)
  %643 = fadd fast float %642, %470
  %644 = fdiv fast float 1.000000e+00, %643
  %645 = fmul fast float %644, %631
  %646 = fmul fast float %644, %635
  %647 = fmul fast float %644, %639
  %648 = fsub fast float -0.000000e+00, %597
  %649 = fsub fast float -0.000000e+00, %598
  %650 = fsub fast float -0.000000e+00, %599
  %651 = fsub fast float %300, %624
  %652 = fsub fast float %301, %625
  %653 = fsub fast float %302, %627
  %654 = fsub fast float %645, %651
  %655 = fsub fast float %646, %652
  %656 = fsub fast float %647, %653
  %657 = call float @dx.op.dot3.f32(i32 55, float %654, float %655, float %656, float %654, float %655, float %656)  ; Dot3(ax,ay,az,bx,by,bz)
  %658 = call float @dx.op.unary.f32(i32 25, float %657)  ; Rsqrt(value)
  %659 = fmul fast float %654, %658
  %660 = fmul fast float %655, %658
  %661 = fmul fast float %656, %658
  %662 = fsub fast float %479, %651
  %663 = fsub fast float %480, %652
  %664 = fsub fast float %481, %653
  %665 = call float @dx.op.dot3.f32(i32 55, float %648, float %649, float %650, float %662, float %663, float %664)  ; Dot3(ax,ay,az,bx,by,bz)
  %666 = call float @dx.op.dot3.f32(i32 55, float %648, float %649, float %650, float %659, float %660, float %661)  ; Dot3(ax,ay,az,bx,by,bz)
  %667 = fdiv fast float 1.000000e+00, %666
  %668 = fmul fast float %667, %665
  %669 = fmul fast float %668, %659
  %670 = fmul fast float %668, %660
  %671 = fmul fast float %668, %661
  %672 = fadd fast float %669, %651
  %673 = fadd fast float %670, %652
  %674 = fadd fast float %671, %653
  %675 = fadd fast float %624, %300
  %676 = fadd fast float %625, %301
  %677 = fadd fast float %627, %302
  %678 = fsub fast float %645, %675
  %679 = fsub fast float %646, %676
  %680 = fsub fast float %647, %677
  %681 = call float @dx.op.dot3.f32(i32 55, float %678, float %679, float %680, float %678, float %679, float %680)  ; Dot3(ax,ay,az,bx,by,bz)
  %682 = call float @dx.op.unary.f32(i32 25, float %681)  ; Rsqrt(value)
  %683 = fmul fast float %682, %678
  %684 = fmul fast float %682, %679
  %685 = fmul fast float %682, %680
  %686 = fsub fast float %479, %675
  %687 = fsub fast float %480, %676
  %688 = fsub fast float %481, %677
  %689 = call float @dx.op.dot3.f32(i32 55, float %648, float %649, float %650, float %686, float %687, float %688)  ; Dot3(ax,ay,az,bx,by,bz)
  %690 = call float @dx.op.dot3.f32(i32 55, float %648, float %649, float %650, float %683, float %684, float %685)  ; Dot3(ax,ay,az,bx,by,bz)
  %691 = fdiv fast float 1.000000e+00, %690
  %692 = fmul fast float %691, %689
  %693 = fmul fast float %692, %683
  %694 = fmul fast float %692, %684
  %695 = fmul fast float %692, %685
  %696 = fadd fast float %693, %675
  %697 = fadd fast float %694, %676
  %698 = fadd fast float %695, %677
  %699 = fmul fast float %672, %425
  %700 = call float @dx.op.tertiary.f32(i32 46, float %673, float %431, float %699)  ; FMad(a,b,c)
  %701 = call float @dx.op.tertiary.f32(i32 46, float %674, float %437, float %700)  ; FMad(a,b,c)
  %702 = fadd fast float %701, %443
  %703 = fmul fast float %672, %426
  %704 = call float @dx.op.tertiary.f32(i32 46, float %673, float %432, float %703)  ; FMad(a,b,c)
  %705 = call float @dx.op.tertiary.f32(i32 46, float %674, float %438, float %704)  ; FMad(a,b,c)
  %706 = fadd fast float %705, %444
  %707 = fmul fast float %672, %428
  %708 = call float @dx.op.tertiary.f32(i32 46, float %673, float %434, float %707)  ; FMad(a,b,c)
  %709 = call float @dx.op.tertiary.f32(i32 46, float %674, float %440, float %708)  ; FMad(a,b,c)
  %710 = fadd fast float %709, %446
  %711 = fmul fast float %696, %425
  %712 = call float @dx.op.tertiary.f32(i32 46, float %697, float %431, float %711)  ; FMad(a,b,c)
  %713 = call float @dx.op.tertiary.f32(i32 46, float %698, float %437, float %712)  ; FMad(a,b,c)
  %714 = fadd fast float %713, %443
  %715 = fmul fast float %696, %426
  %716 = call float @dx.op.tertiary.f32(i32 46, float %697, float %432, float %715)  ; FMad(a,b,c)
  %717 = call float @dx.op.tertiary.f32(i32 46, float %698, float %438, float %716)  ; FMad(a,b,c)
  %718 = fadd fast float %717, %444
  %719 = fmul fast float %696, %428
  %720 = call float @dx.op.tertiary.f32(i32 46, float %697, float %434, float %719)  ; FMad(a,b,c)
  %721 = call float @dx.op.tertiary.f32(i32 46, float %698, float %440, float %720)  ; FMad(a,b,c)
  %722 = fadd fast float %721, %446
  %723 = fdiv fast float 1.000000e+00, %710
  %724 = fmul fast float %723, %702
  %725 = fmul fast float %723, %706
  %726 = fdiv fast float 1.000000e+00, %722
  %727 = fmul fast float %726, %714
  %728 = fmul fast float %726, %718
  %729 = fsub fast float %727, %724
  %730 = fsub fast float %728, %725
  %731 = call float @dx.op.dot2.f32(i32 54, float %729, float %730, float %729, float %730)  ; Dot2(ax,ay,bx,by)
  %732 = call float @dx.op.unary.f32(i32 25, float %731)  ; Rsqrt(value)
  %733 = fmul fast float %729, %732
  %734 = fmul fast float %730, %732
  %735 = fmul fast float %729, %729
  %736 = fmul fast float %730, %730
  %737 = fadd fast float %735, %736
  %738 = call float @dx.op.unary.f32(i32 24, float %737)  ; Sqrt(value)
  %739 = fmul fast float %738, 5.000000e-01
  br i1 %474, label %832, label %740, !dx.controlflow.hints !39

; <label>:740                                     ; preds = %608
  %741 = fsub fast float %300, %292
  %742 = fsub fast float %301, %293
  %743 = fsub fast float %302, %294
  %744 = fsub fast float %645, %741
  %745 = fsub fast float %646, %742
  %746 = fsub fast float %647, %743
  %747 = call float @dx.op.dot3.f32(i32 55, float %744, float %745, float %746, float %744, float %745, float %746)  ; Dot3(ax,ay,az,bx,by,bz)
  %748 = call float @dx.op.unary.f32(i32 25, float %747)  ; Rsqrt(value)
  %749 = fmul fast float %748, %744
  %750 = fmul fast float %748, %745
  %751 = fmul fast float %748, %746
  %752 = fsub fast float %479, %741
  %753 = fsub fast float %480, %742
  %754 = fsub fast float %481, %743
  %755 = call float @dx.op.dot3.f32(i32 55, float %648, float %649, float %650, float %752, float %753, float %754)  ; Dot3(ax,ay,az,bx,by,bz)
  %756 = call float @dx.op.dot3.f32(i32 55, float %648, float %649, float %650, float %749, float %750, float %751)  ; Dot3(ax,ay,az,bx,by,bz)
  %757 = fdiv fast float 1.000000e+00, %756
  %758 = fmul fast float %757, %755
  %759 = fmul fast float %758, %749
  %760 = fmul fast float %758, %750
  %761 = fmul fast float %758, %751
  %762 = fadd fast float %759, %741
  %763 = fadd fast float %760, %742
  %764 = fadd fast float %761, %743
  %765 = fadd fast float %300, %292
  %766 = fadd fast float %301, %293
  %767 = fadd fast float %302, %294
  %768 = fsub fast float %645, %765
  %769 = fsub fast float %646, %766
  %770 = fsub fast float %647, %767
  %771 = call float @dx.op.dot3.f32(i32 55, float %768, float %769, float %770, float %768, float %769, float %770)  ; Dot3(ax,ay,az,bx,by,bz)
  %772 = call float @dx.op.unary.f32(i32 25, float %771)  ; Rsqrt(value)
  %773 = fmul fast float %772, %768
  %774 = fmul fast float %772, %769
  %775 = fmul fast float %772, %770
  %776 = fsub fast float %479, %765
  %777 = fsub fast float %480, %766
  %778 = fsub fast float %481, %767
  %779 = call float @dx.op.dot3.f32(i32 55, float %648, float %649, float %650, float %776, float %777, float %778)  ; Dot3(ax,ay,az,bx,by,bz)
  %780 = call float @dx.op.dot3.f32(i32 55, float %648, float %649, float %650, float %773, float %774, float %775)  ; Dot3(ax,ay,az,bx,by,bz)
  %781 = fdiv fast float 1.000000e+00, %780
  %782 = fmul fast float %781, %779
  %783 = fmul fast float %782, %773
  %784 = fmul fast float %782, %774
  %785 = fmul fast float %782, %775
  %786 = fadd fast float %783, %765
  %787 = fadd fast float %784, %766
  %788 = fadd fast float %785, %767
  %789 = fmul fast float %762, %425
  %790 = call float @dx.op.tertiary.f32(i32 46, float %763, float %431, float %789)  ; FMad(a,b,c)
  %791 = call float @dx.op.tertiary.f32(i32 46, float %764, float %437, float %790)  ; FMad(a,b,c)
  %792 = fadd fast float %791, %443
  %793 = fmul fast float %762, %426
  %794 = call float @dx.op.tertiary.f32(i32 46, float %763, float %432, float %793)  ; FMad(a,b,c)
  %795 = call float @dx.op.tertiary.f32(i32 46, float %764, float %438, float %794)  ; FMad(a,b,c)
  %796 = fadd fast float %795, %444
  %797 = fmul fast float %762, %428
  %798 = call float @dx.op.tertiary.f32(i32 46, float %763, float %434, float %797)  ; FMad(a,b,c)
  %799 = call float @dx.op.tertiary.f32(i32 46, float %764, float %440, float %798)  ; FMad(a,b,c)
  %800 = fadd fast float %799, %446
  %801 = fmul fast float %786, %425
  %802 = call float @dx.op.tertiary.f32(i32 46, float %787, float %431, float %801)  ; FMad(a,b,c)
  %803 = call float @dx.op.tertiary.f32(i32 46, float %788, float %437, float %802)  ; FMad(a,b,c)
  %804 = fadd fast float %803, %443
  %805 = fmul fast float %786, %426
  %806 = call float @dx.op.tertiary.f32(i32 46, float %787, float %432, float %805)  ; FMad(a,b,c)
  %807 = call float @dx.op.tertiary.f32(i32 46, float %788, float %438, float %806)  ; FMad(a,b,c)
  %808 = fadd fast float %807, %444
  %809 = fmul fast float %786, %428
  %810 = call float @dx.op.tertiary.f32(i32 46, float %787, float %434, float %809)  ; FMad(a,b,c)
  %811 = call float @dx.op.tertiary.f32(i32 46, float %788, float %440, float %810)  ; FMad(a,b,c)
  %812 = fadd fast float %811, %446
  %813 = fdiv fast float 1.000000e+00, %800
  %814 = fmul fast float %813, %792
  %815 = fmul fast float %813, %796
  %816 = fdiv fast float 1.000000e+00, %812
  %817 = fmul fast float %816, %804
  %818 = fmul fast float %816, %808
  %819 = fsub fast float %817, %814
  %820 = fsub fast float %818, %815
  %821 = call float @dx.op.dot2.f32(i32 54, float %819, float %820, float %819, float %820)  ; Dot2(ax,ay,bx,by)
  %822 = call float @dx.op.unary.f32(i32 25, float %821)  ; Rsqrt(value)
  %823 = fmul fast float %819, %822
  %824 = fmul fast float %820, %822
  %825 = fmul fast float %819, %819
  %826 = fmul fast float %820, %820
  %827 = fadd fast float %825, %826
  %828 = call float @dx.op.unary.f32(i32 24, float %827)  ; Sqrt(value)
  %829 = fmul fast float %828, 5.000000e-01
  %830 = fcmp fast olt float %829, %739
  br i1 %830, label %831, label %832, !dx.controlflow.hints !40

; <label>:831                                     ; preds = %740
  br label %832

; <label>:832                                     ; preds = %831, %740, %608
  %833 = phi float [ %739, %608 ], [ %829, %831 ], [ %739, %740 ]
  %834 = phi float [ %739, %608 ], [ %739, %831 ], [ %829, %740 ]
  %835 = phi float [ %733, %608 ], [ %733, %831 ], [ %823, %740 ]
  %836 = phi float [ %734, %608 ], [ %734, %831 ], [ %824, %740 ]
  %837 = fmul fast float %833, %420
  %838 = fdiv fast float %837, %834
  %839 = fsub fast float %420, %838
  %840 = fmul fast float %835, %835
  %841 = fmul fast float %840, %839
  %842 = fadd fast float %841, %838
  %843 = fmul fast float %836, %835
  %844 = fmul fast float %843, %839
  %845 = fmul fast float %836, %836
  %846 = fmul fast float %845, %839
  %847 = fadd fast float %846, %838
  %848 = fmul fast float %842, %504
  %849 = call float @dx.op.tertiary.f32(i32 46, float %503, float %844, float %848)  ; FMad(a,b,c)
  %850 = fmul fast float %844, %504
  %851 = call float @dx.op.tertiary.f32(i32 46, float %503, float %847, float %850)  ; FMad(a,b,c)
  %852 = fmul fast float %842, %505
  %853 = call float @dx.op.tertiary.f32(i32 46, float %504, float %844, float %852)  ; FMad(a,b,c)
  %854 = fmul fast float %844, %505
  %855 = call float @dx.op.tertiary.f32(i32 46, float %504, float %847, float %854)  ; FMad(a,b,c)
  br label %856

; <label>:856                                     ; preds = %894, %832
  %857 = phi float [ 0.000000e+00, %832 ], [ %895, %894 ]
  %858 = phi float [ 0.000000e+00, %832 ], [ %896, %894 ]
  %859 = phi float [ 0.000000e+00, %832 ], [ %897, %894 ]
  %860 = phi float [ 0.000000e+00, %832 ], [ %898, %894 ]
  %861 = phi i32 [ 0, %832 ], [ %899, %894 ]
  %862 = mul i32 %861, 2
  %863 = add i32 0, %862
  %864 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %863
  %865 = load float, float* %864, align 4
  %866 = mul i32 %861, 2
  %867 = add i32 1, %866
  %868 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %867
  %869 = load float, float* %868, align 4
  %870 = fmul fast float %865, %849
  %871 = call float @dx.op.tertiary.f32(i32 46, float %869, float %853, float %870)  ; FMad(a,b,c)
  %872 = fmul fast float %865, %851
  %873 = call float @dx.op.tertiary.f32(i32 46, float %869, float %855, float %872)  ; FMad(a,b,c)
  %874 = fadd fast float %871, %498
  %875 = fadd fast float %873, %499
  %876 = fmul fast float %874, %415
  %877 = fmul fast float %875, %415
  %878 = call float @dx.op.binary.f32(i32 35, float %876, float %411)  ; FMax(a,b)
  %879 = call float @dx.op.binary.f32(i32 35, float %877, float %411)  ; FMax(a,b)
  %880 = call float @dx.op.binary.f32(i32 36, float %878, float %412)  ; FMin(a,b)
  %881 = call float @dx.op.binary.f32(i32 36, float %879, float %412)  ; FMin(a,b)
  %882 = fadd fast float %880, %409
  %883 = fadd fast float %881, %410
  %884 = uitofp i32 %471 to float
  %885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %882, float %883, float %884, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %886 = extractvalue %dx.types.ResRet.f32 %885, 0
  %887 = fadd fast float %501, %419
  %888 = fcmp fast olt float %887, %886
  br i1 %888, label %889, label %894, !dx.controlflow.hints !41

; <label>:889                                     ; preds = %856
  %890 = fadd fast float %886, %859
  %891 = fadd fast float %871, %857
  %892 = fadd fast float %873, %858
  %893 = fadd fast float %860, 1.000000e+00
  br label %894

; <label>:894                                     ; preds = %889, %856
  %895 = phi float [ %891, %889 ], [ %857, %856 ]
  %896 = phi float [ %892, %889 ], [ %858, %856 ]
  %897 = phi float [ %890, %889 ], [ %859, %856 ]
  %898 = phi float [ %893, %889 ], [ %860, %856 ]
  %899 = add nuw nsw i32 %861, 1
  %900 = icmp eq i32 %899, 8
  br i1 %900, label %901, label %856

; <label>:901                                     ; preds = %894
  %902 = fdiv fast float 1.000000e+00, %898
  %903 = fcmp fast oeq float %898, 0.000000e+00
  %904 = fmul fast float %902, %897
  %905 = select i1 %903, float -1.000000e+00, float %904
  %906 = fcmp fast olt float %905, 0.000000e+00
  br i1 %906, label %1193, label %907, !dx.controlflow.hints !42

; <label>:907                                     ; preds = %901
  %908 = fmul fast float %902, %896
  %909 = select i1 %903, float 0.000000e+00, float %908
  %910 = fmul fast float %902, %895
  %911 = select i1 %903, float 0.000000e+00, float %910
  %912 = fadd fast float %911, %498
  %913 = fadd fast float %909, %499
  br i1 %474, label %914, label %918, !dx.controlflow.hints !38

; <label>:914                                     ; preds = %907
  %915 = fcmp fast olt float %598, 0x3FE6666660000000
  %916 = select i1 %915, float 1.000000e+00, float 0.000000e+00
  %917 = select i1 %915, float 0.000000e+00, float 1.000000e+00
  br label %918

; <label>:918                                     ; preds = %914, %907
  %919 = phi float [ 0.000000e+00, %914 ], [ %601, %907 ]
  %920 = phi float [ %916, %914 ], [ %602, %907 ]
  %921 = phi float [ %917, %914 ], [ %603, %907 ]
  %922 = fmul fast float %920, %599
  %923 = fmul fast float %921, %598
  %924 = fsub fast float %922, %923
  %925 = fmul fast float %921, %597
  %926 = fmul fast float %919, %599
  %927 = fsub fast float %925, %926
  %928 = fmul fast float %919, %598
  %929 = fmul fast float %920, %597
  %930 = fsub fast float %928, %929
  %931 = call float @dx.op.dot3.f32(i32 55, float %924, float %927, float %930, float %924, float %927, float %930)  ; Dot3(ax,ay,az,bx,by,bz)
  %932 = call float @dx.op.unary.f32(i32 25, float %931)  ; Rsqrt(value)
  %933 = fmul fast float %932, %297
  %934 = fmul fast float %933, %924
  %935 = fmul fast float %933, %927
  %936 = fmul fast float %930, %297
  %937 = fmul fast float %936, %932
  %938 = fmul fast float %912, %449
  %939 = call float @dx.op.tertiary.f32(i32 46, float %913, float %455, float %938)  ; FMad(a,b,c)
  %940 = call float @dx.op.tertiary.f32(i32 46, float %905, float %461, float %939)  ; FMad(a,b,c)
  %941 = fadd fast float %940, %467
  %942 = fmul fast float %912, %450
  %943 = call float @dx.op.tertiary.f32(i32 46, float %913, float %456, float %942)  ; FMad(a,b,c)
  %944 = call float @dx.op.tertiary.f32(i32 46, float %905, float %462, float %943)  ; FMad(a,b,c)
  %945 = fadd fast float %944, %468
  %946 = fmul fast float %912, %451
  %947 = call float @dx.op.tertiary.f32(i32 46, float %913, float %457, float %946)  ; FMad(a,b,c)
  %948 = call float @dx.op.tertiary.f32(i32 46, float %905, float %463, float %947)  ; FMad(a,b,c)
  %949 = fadd fast float %948, %469
  %950 = fmul fast float %912, %452
  %951 = call float @dx.op.tertiary.f32(i32 46, float %913, float %458, float %950)  ; FMad(a,b,c)
  %952 = call float @dx.op.tertiary.f32(i32 46, float %905, float %464, float %951)  ; FMad(a,b,c)
  %953 = fadd fast float %952, %470
  %954 = fdiv fast float 1.000000e+00, %953
  %955 = fmul fast float %954, %941
  %956 = fmul fast float %954, %945
  %957 = fmul fast float %954, %949
  %958 = fsub fast float %300, %934
  %959 = fsub fast float %301, %935
  %960 = fsub fast float %302, %937
  %961 = fsub fast float %955, %958
  %962 = fsub fast float %956, %959
  %963 = fsub fast float %957, %960
  %964 = call float @dx.op.dot3.f32(i32 55, float %961, float %962, float %963, float %961, float %962, float %963)  ; Dot3(ax,ay,az,bx,by,bz)
  %965 = call float @dx.op.unary.f32(i32 25, float %964)  ; Rsqrt(value)
  %966 = fmul fast float %961, %965
  %967 = fmul fast float %962, %965
  %968 = fmul fast float %963, %965
  %969 = fsub fast float %479, %958
  %970 = fsub fast float %480, %959
  %971 = fsub fast float %481, %960
  %972 = call float @dx.op.dot3.f32(i32 55, float %648, float %649, float %650, float %969, float %970, float %971)  ; Dot3(ax,ay,az,bx,by,bz)
  %973 = call float @dx.op.dot3.f32(i32 55, float %648, float %649, float %650, float %966, float %967, float %968)  ; Dot3(ax,ay,az,bx,by,bz)
  %974 = fdiv fast float 1.000000e+00, %973
  %975 = fmul fast float %974, %972
  %976 = fmul fast float %975, %966
  %977 = fmul fast float %975, %967
  %978 = fmul fast float %975, %968
  %979 = fadd fast float %976, %958
  %980 = fadd fast float %977, %959
  %981 = fadd fast float %978, %960
  %982 = fadd fast float %934, %300
  %983 = fadd fast float %935, %301
  %984 = fadd fast float %937, %302
  %985 = fsub fast float %955, %982
  %986 = fsub fast float %956, %983
  %987 = fsub fast float %957, %984
  %988 = call float @dx.op.dot3.f32(i32 55, float %985, float %986, float %987, float %985, float %986, float %987)  ; Dot3(ax,ay,az,bx,by,bz)
  %989 = call float @dx.op.unary.f32(i32 25, float %988)  ; Rsqrt(value)
  %990 = fmul fast float %989, %985
  %991 = fmul fast float %989, %986
  %992 = fmul fast float %989, %987
  %993 = fsub fast float %479, %982
  %994 = fsub fast float %480, %983
  %995 = fsub fast float %481, %984
  %996 = call float @dx.op.dot3.f32(i32 55, float %648, float %649, float %650, float %993, float %994, float %995)  ; Dot3(ax,ay,az,bx,by,bz)
  %997 = call float @dx.op.dot3.f32(i32 55, float %648, float %649, float %650, float %990, float %991, float %992)  ; Dot3(ax,ay,az,bx,by,bz)
  %998 = fdiv fast float 1.000000e+00, %997
  %999 = fmul fast float %998, %996
  %1000 = fmul fast float %999, %990
  %1001 = fmul fast float %999, %991
  %1002 = fmul fast float %999, %992
  %1003 = fadd fast float %1000, %982
  %1004 = fadd fast float %1001, %983
  %1005 = fadd fast float %1002, %984
  %1006 = fmul fast float %979, %425
  %1007 = call float @dx.op.tertiary.f32(i32 46, float %980, float %431, float %1006)  ; FMad(a,b,c)
  %1008 = call float @dx.op.tertiary.f32(i32 46, float %981, float %437, float %1007)  ; FMad(a,b,c)
  %1009 = fadd fast float %1008, %443
  %1010 = fmul fast float %979, %426
  %1011 = call float @dx.op.tertiary.f32(i32 46, float %980, float %432, float %1010)  ; FMad(a,b,c)
  %1012 = call float @dx.op.tertiary.f32(i32 46, float %981, float %438, float %1011)  ; FMad(a,b,c)
  %1013 = fadd fast float %1012, %444
  %1014 = fmul fast float %979, %428
  %1015 = call float @dx.op.tertiary.f32(i32 46, float %980, float %434, float %1014)  ; FMad(a,b,c)
  %1016 = call float @dx.op.tertiary.f32(i32 46, float %981, float %440, float %1015)  ; FMad(a,b,c)
  %1017 = fadd fast float %1016, %446
  %1018 = fmul fast float %1003, %425
  %1019 = call float @dx.op.tertiary.f32(i32 46, float %1004, float %431, float %1018)  ; FMad(a,b,c)
  %1020 = call float @dx.op.tertiary.f32(i32 46, float %1005, float %437, float %1019)  ; FMad(a,b,c)
  %1021 = fadd fast float %1020, %443
  %1022 = fmul fast float %1003, %426
  %1023 = call float @dx.op.tertiary.f32(i32 46, float %1004, float %432, float %1022)  ; FMad(a,b,c)
  %1024 = call float @dx.op.tertiary.f32(i32 46, float %1005, float %438, float %1023)  ; FMad(a,b,c)
  %1025 = fadd fast float %1024, %444
  %1026 = fmul fast float %1003, %428
  %1027 = call float @dx.op.tertiary.f32(i32 46, float %1004, float %434, float %1026)  ; FMad(a,b,c)
  %1028 = call float @dx.op.tertiary.f32(i32 46, float %1005, float %440, float %1027)  ; FMad(a,b,c)
  %1029 = fadd fast float %1028, %446
  %1030 = fdiv fast float 1.000000e+00, %1017
  %1031 = fmul fast float %1030, %1009
  %1032 = fmul fast float %1030, %1013
  %1033 = fdiv fast float 1.000000e+00, %1029
  %1034 = fmul fast float %1033, %1021
  %1035 = fmul fast float %1033, %1025
  %1036 = fsub fast float %1034, %1031
  %1037 = fsub fast float %1035, %1032
  %1038 = call float @dx.op.dot2.f32(i32 54, float %1036, float %1037, float %1036, float %1037)  ; Dot2(ax,ay,bx,by)
  %1039 = call float @dx.op.unary.f32(i32 25, float %1038)  ; Rsqrt(value)
  %1040 = fmul fast float %1036, %1039
  %1041 = fmul fast float %1037, %1039
  %1042 = fmul fast float %1036, %1036
  %1043 = fmul fast float %1037, %1037
  %1044 = fadd fast float %1042, %1043
  %1045 = call float @dx.op.unary.f32(i32 24, float %1044)  ; Sqrt(value)
  %1046 = fmul fast float %1045, 5.000000e-01
  br i1 %474, label %1139, label %1047, !dx.controlflow.hints !39

; <label>:1047                                    ; preds = %918
  %1048 = fsub fast float %300, %292
  %1049 = fsub fast float %301, %293
  %1050 = fsub fast float %302, %294
  %1051 = fsub fast float %955, %1048
  %1052 = fsub fast float %956, %1049
  %1053 = fsub fast float %957, %1050
  %1054 = call float @dx.op.dot3.f32(i32 55, float %1051, float %1052, float %1053, float %1051, float %1052, float %1053)  ; Dot3(ax,ay,az,bx,by,bz)
  %1055 = call float @dx.op.unary.f32(i32 25, float %1054)  ; Rsqrt(value)
  %1056 = fmul fast float %1055, %1051
  %1057 = fmul fast float %1055, %1052
  %1058 = fmul fast float %1055, %1053
  %1059 = fsub fast float %479, %1048
  %1060 = fsub fast float %480, %1049
  %1061 = fsub fast float %481, %1050
  %1062 = call float @dx.op.dot3.f32(i32 55, float %648, float %649, float %650, float %1059, float %1060, float %1061)  ; Dot3(ax,ay,az,bx,by,bz)
  %1063 = call float @dx.op.dot3.f32(i32 55, float %648, float %649, float %650, float %1056, float %1057, float %1058)  ; Dot3(ax,ay,az,bx,by,bz)
  %1064 = fdiv fast float 1.000000e+00, %1063
  %1065 = fmul fast float %1064, %1062
  %1066 = fmul fast float %1065, %1056
  %1067 = fmul fast float %1065, %1057
  %1068 = fmul fast float %1065, %1058
  %1069 = fadd fast float %1066, %1048
  %1070 = fadd fast float %1067, %1049
  %1071 = fadd fast float %1068, %1050
  %1072 = fadd fast float %300, %292
  %1073 = fadd fast float %301, %293
  %1074 = fadd fast float %302, %294
  %1075 = fsub fast float %955, %1072
  %1076 = fsub fast float %956, %1073
  %1077 = fsub fast float %957, %1074
  %1078 = call float @dx.op.dot3.f32(i32 55, float %1075, float %1076, float %1077, float %1075, float %1076, float %1077)  ; Dot3(ax,ay,az,bx,by,bz)
  %1079 = call float @dx.op.unary.f32(i32 25, float %1078)  ; Rsqrt(value)
  %1080 = fmul fast float %1079, %1075
  %1081 = fmul fast float %1079, %1076
  %1082 = fmul fast float %1079, %1077
  %1083 = fsub fast float %479, %1072
  %1084 = fsub fast float %480, %1073
  %1085 = fsub fast float %481, %1074
  %1086 = call float @dx.op.dot3.f32(i32 55, float %648, float %649, float %650, float %1083, float %1084, float %1085)  ; Dot3(ax,ay,az,bx,by,bz)
  %1087 = call float @dx.op.dot3.f32(i32 55, float %648, float %649, float %650, float %1080, float %1081, float %1082)  ; Dot3(ax,ay,az,bx,by,bz)
  %1088 = fdiv fast float 1.000000e+00, %1087
  %1089 = fmul fast float %1088, %1086
  %1090 = fmul fast float %1089, %1080
  %1091 = fmul fast float %1089, %1081
  %1092 = fmul fast float %1089, %1082
  %1093 = fadd fast float %1090, %1072
  %1094 = fadd fast float %1091, %1073
  %1095 = fadd fast float %1092, %1074
  %1096 = fmul fast float %1069, %425
  %1097 = call float @dx.op.tertiary.f32(i32 46, float %1070, float %431, float %1096)  ; FMad(a,b,c)
  %1098 = call float @dx.op.tertiary.f32(i32 46, float %1071, float %437, float %1097)  ; FMad(a,b,c)
  %1099 = fadd fast float %1098, %443
  %1100 = fmul fast float %1069, %426
  %1101 = call float @dx.op.tertiary.f32(i32 46, float %1070, float %432, float %1100)  ; FMad(a,b,c)
  %1102 = call float @dx.op.tertiary.f32(i32 46, float %1071, float %438, float %1101)  ; FMad(a,b,c)
  %1103 = fadd fast float %1102, %444
  %1104 = fmul fast float %1069, %428
  %1105 = call float @dx.op.tertiary.f32(i32 46, float %1070, float %434, float %1104)  ; FMad(a,b,c)
  %1106 = call float @dx.op.tertiary.f32(i32 46, float %1071, float %440, float %1105)  ; FMad(a,b,c)
  %1107 = fadd fast float %1106, %446
  %1108 = fmul fast float %1093, %425
  %1109 = call float @dx.op.tertiary.f32(i32 46, float %1094, float %431, float %1108)  ; FMad(a,b,c)
  %1110 = call float @dx.op.tertiary.f32(i32 46, float %1095, float %437, float %1109)  ; FMad(a,b,c)
  %1111 = fadd fast float %1110, %443
  %1112 = fmul fast float %1093, %426
  %1113 = call float @dx.op.tertiary.f32(i32 46, float %1094, float %432, float %1112)  ; FMad(a,b,c)
  %1114 = call float @dx.op.tertiary.f32(i32 46, float %1095, float %438, float %1113)  ; FMad(a,b,c)
  %1115 = fadd fast float %1114, %444
  %1116 = fmul fast float %1093, %428
  %1117 = call float @dx.op.tertiary.f32(i32 46, float %1094, float %434, float %1116)  ; FMad(a,b,c)
  %1118 = call float @dx.op.tertiary.f32(i32 46, float %1095, float %440, float %1117)  ; FMad(a,b,c)
  %1119 = fadd fast float %1118, %446
  %1120 = fdiv fast float 1.000000e+00, %1107
  %1121 = fmul fast float %1120, %1099
  %1122 = fmul fast float %1120, %1103
  %1123 = fdiv fast float 1.000000e+00, %1119
  %1124 = fmul fast float %1123, %1111
  %1125 = fmul fast float %1123, %1115
  %1126 = fsub fast float %1124, %1121
  %1127 = fsub fast float %1125, %1122
  %1128 = call float @dx.op.dot2.f32(i32 54, float %1126, float %1127, float %1126, float %1127)  ; Dot2(ax,ay,bx,by)
  %1129 = call float @dx.op.unary.f32(i32 25, float %1128)  ; Rsqrt(value)
  %1130 = fmul fast float %1126, %1129
  %1131 = fmul fast float %1127, %1129
  %1132 = fmul fast float %1126, %1126
  %1133 = fmul fast float %1127, %1127
  %1134 = fadd fast float %1132, %1133
  %1135 = call float @dx.op.unary.f32(i32 24, float %1134)  ; Sqrt(value)
  %1136 = fmul fast float %1135, 5.000000e-01
  %1137 = fcmp fast olt float %1136, %1046
  br i1 %1137, label %1138, label %1139, !dx.controlflow.hints !40

; <label>:1138                                    ; preds = %1047
  br label %1139

; <label>:1139                                    ; preds = %1138, %1047, %918
  %1140 = phi float [ %1046, %918 ], [ %1136, %1138 ], [ %1046, %1047 ]
  %1141 = phi float [ %1046, %918 ], [ %1046, %1138 ], [ %1136, %1047 ]
  %1142 = phi float [ %1040, %918 ], [ %1040, %1138 ], [ %1130, %1047 ]
  %1143 = phi float [ %1041, %918 ], [ %1041, %1138 ], [ %1131, %1047 ]
  %1144 = fsub fast float %1141, %1140
  %1145 = fmul fast float %1142, %1142
  %1146 = fmul fast float %1145, %1144
  %1147 = fadd fast float %1146, %1140
  %1148 = fmul fast float %1142, %1144
  %1149 = fmul fast float %1148, %1143
  %1150 = fmul fast float %1143, %1143
  %1151 = fmul fast float %1150, %1144
  %1152 = fadd fast float %1151, %1140
  %1153 = fmul fast float %1147, %504
  %1154 = call float @dx.op.tertiary.f32(i32 46, float %503, float %1149, float %1153)  ; FMad(a,b,c)
  %1155 = fmul fast float %1149, %504
  %1156 = call float @dx.op.tertiary.f32(i32 46, float %503, float %1152, float %1155)  ; FMad(a,b,c)
  %1157 = fmul fast float %1147, %505
  %1158 = call float @dx.op.tertiary.f32(i32 46, float %504, float %1149, float %1157)  ; FMad(a,b,c)
  %1159 = fmul fast float %1149, %505
  %1160 = call float @dx.op.tertiary.f32(i32 46, float %504, float %1152, float %1159)  ; FMad(a,b,c)
  br label %1161

; <label>:1161                                    ; preds = %1161, %1139
  %1162 = phi float [ 0.000000e+00, %1139 ], [ %1188, %1161 ]
  %1163 = phi i32 [ 0, %1139 ], [ %1189, %1161 ]
  %1164 = mul i32 %1163, 2
  %1165 = add i32 0, %1164
  %1166 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1165
  %1167 = load float, float* %1166, align 4
  %1168 = mul i32 %1163, 2
  %1169 = add i32 1, %1168
  %1170 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1169
  %1171 = load float, float* %1170, align 4
  %1172 = fmul fast float %1167, %1154
  %1173 = call float @dx.op.tertiary.f32(i32 46, float %1171, float %1158, float %1172)  ; FMad(a,b,c)
  %1174 = fmul fast float %1167, %1156
  %1175 = call float @dx.op.tertiary.f32(i32 46, float %1171, float %1160, float %1174)  ; FMad(a,b,c)
  %1176 = fadd fast float %1173, %498
  %1177 = fadd fast float %1175, %499
  %1178 = fmul fast float %1176, %415
  %1179 = fmul fast float %1177, %415
  %1180 = call float @dx.op.binary.f32(i32 35, float %1178, float %411)  ; FMax(a,b)
  %1181 = call float @dx.op.binary.f32(i32 35, float %1179, float %411)  ; FMax(a,b)
  %1182 = call float @dx.op.binary.f32(i32 36, float %1180, float %412)  ; FMin(a,b)
  %1183 = call float @dx.op.binary.f32(i32 36, float %1181, float %412)  ; FMin(a,b)
  %1184 = fadd fast float %1182, %409
  %1185 = fadd fast float %1183, %410
  %1186 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %17, float %1184, float %1185, float %884, float undef, i32 0, i32 0, i32 undef, float %887)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1187 = extractvalue %dx.types.ResRet.f32 %1186, 0
  %1188 = fadd fast float %1187, %1162
  %1189 = add nuw nsw i32 %1163, 1
  %1190 = icmp eq i32 %1189, 8
  br i1 %1190, label %1191, label %1161

; <label>:1191                                    ; preds = %1161
  %1192 = fmul fast float %1188, 1.250000e-01
  br label %1193

; <label>:1193                                    ; preds = %1191, %901, %550
  %1194 = phi float [ %577, %550 ], [ %1192, %1191 ], [ 1.000000e+00, %901 ]
  %1195 = fcmp fast ogt float %1194, 0.000000e+00
  %1196 = xor i1 %54, true
  %1197 = and i1 %1195, %1196
  %1198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1199 = extractvalue %dx.types.CBufRet.f32 %1198, 1
  %1200 = fcmp fast olt float %1199, 0.000000e+00
  %1201 = and i1 %1197, %1200
  br i1 %1201, label %1202, label %1313, !dx.controlflow.hints !43

; <label>:1202                                    ; preds = %1193
  %1203 = fadd fast float %498, %411
  %1204 = fadd fast float %499, %411
  %1205 = fadd fast float %501, %419
  %1206 = fmul fast float %498, %449
  %1207 = call float @dx.op.tertiary.f32(i32 46, float %499, float %455, float %1206)  ; FMad(a,b,c)
  %1208 = call float @dx.op.tertiary.f32(i32 46, float %501, float %461, float %1207)  ; FMad(a,b,c)
  %1209 = fadd fast float %1208, %467
  %1210 = fmul fast float %498, %450
  %1211 = call float @dx.op.tertiary.f32(i32 46, float %499, float %456, float %1210)  ; FMad(a,b,c)
  %1212 = call float @dx.op.tertiary.f32(i32 46, float %501, float %462, float %1211)  ; FMad(a,b,c)
  %1213 = fadd fast float %1212, %468
  %1214 = fmul fast float %498, %451
  %1215 = call float @dx.op.tertiary.f32(i32 46, float %499, float %457, float %1214)  ; FMad(a,b,c)
  %1216 = call float @dx.op.tertiary.f32(i32 46, float %501, float %463, float %1215)  ; FMad(a,b,c)
  %1217 = fadd fast float %1216, %469
  %1218 = fmul fast float %498, %452
  %1219 = call float @dx.op.tertiary.f32(i32 46, float %499, float %458, float %1218)  ; FMad(a,b,c)
  %1220 = call float @dx.op.tertiary.f32(i32 46, float %501, float %464, float %1219)  ; FMad(a,b,c)
  %1221 = fadd fast float %1220, %470
  %1222 = fmul fast float %1203, %449
  %1223 = call float @dx.op.tertiary.f32(i32 46, float %1204, float %455, float %1222)  ; FMad(a,b,c)
  %1224 = call float @dx.op.tertiary.f32(i32 46, float %1205, float %461, float %1223)  ; FMad(a,b,c)
  %1225 = fadd fast float %1224, %467
  %1226 = fmul fast float %1203, %450
  %1227 = call float @dx.op.tertiary.f32(i32 46, float %1204, float %456, float %1226)  ; FMad(a,b,c)
  %1228 = call float @dx.op.tertiary.f32(i32 46, float %1205, float %462, float %1227)  ; FMad(a,b,c)
  %1229 = fadd fast float %1228, %468
  %1230 = fmul fast float %1203, %451
  %1231 = call float @dx.op.tertiary.f32(i32 46, float %1204, float %457, float %1230)  ; FMad(a,b,c)
  %1232 = call float @dx.op.tertiary.f32(i32 46, float %1205, float %463, float %1231)  ; FMad(a,b,c)
  %1233 = fadd fast float %1232, %469
  %1234 = fmul fast float %1203, %452
  %1235 = call float @dx.op.tertiary.f32(i32 46, float %1204, float %458, float %1234)  ; FMad(a,b,c)
  %1236 = call float @dx.op.tertiary.f32(i32 46, float %1205, float %464, float %1235)  ; FMad(a,b,c)
  %1237 = fadd fast float %1236, %470
  %1238 = fdiv fast float 1.000000e+00, %1221
  %1239 = fmul fast float %1238, %1209
  %1240 = fmul fast float %1238, %1213
  %1241 = fmul fast float %1238, %1217
  %1242 = fdiv fast float 1.000000e+00, %1237
  %1243 = fmul fast float %1242, %1225
  %1244 = fmul fast float %1242, %1229
  %1245 = fmul fast float %1242, %1233
  %1246 = fsub fast float %1239, %1243
  %1247 = fsub fast float %1240, %1244
  %1248 = fsub fast float %1241, %1245
  %1249 = fmul fast float %1246, %1246
  %1250 = fmul fast float %1247, %1247
  %1251 = fadd fast float %1249, %1250
  %1252 = fmul fast float %1248, %1248
  %1253 = fadd fast float %1251, %1252
  %1254 = call float @dx.op.unary.f32(i32 24, float %1253)  ; Sqrt(value)
  %1255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1256 = extractvalue %dx.types.CBufRet.f32 %1255, 0
  %1257 = extractvalue %dx.types.CBufRet.f32 %1255, 1
  %1258 = extractvalue %dx.types.CBufRet.f32 %1255, 2
  %1259 = extractvalue %dx.types.CBufRet.f32 %1255, 3
  %1260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1261 = extractvalue %dx.types.CBufRet.f32 %1260, 0
  %1262 = extractvalue %dx.types.CBufRet.f32 %1260, 1
  %1263 = extractvalue %dx.types.CBufRet.f32 %1260, 2
  %1264 = extractvalue %dx.types.CBufRet.f32 %1260, 3
  %1265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1266 = extractvalue %dx.types.CBufRet.f32 %1265, 0
  %1267 = extractvalue %dx.types.CBufRet.f32 %1265, 1
  %1268 = extractvalue %dx.types.CBufRet.f32 %1265, 2
  %1269 = extractvalue %dx.types.CBufRet.f32 %1265, 3
  %1270 = fmul fast float %1256, %1239
  %1271 = call float @dx.op.tertiary.f32(i32 46, float %1240, float %1257, float %1270)  ; FMad(a,b,c)
  %1272 = call float @dx.op.tertiary.f32(i32 46, float %1241, float %1258, float %1271)  ; FMad(a,b,c)
  %1273 = call float @dx.op.tertiary.f32(i32 46, float %1221, float %1259, float %1272)  ; FMad(a,b,c)
  %1274 = fmul fast float %1261, %1239
  %1275 = call float @dx.op.tertiary.f32(i32 46, float %1240, float %1262, float %1274)  ; FMad(a,b,c)
  %1276 = call float @dx.op.tertiary.f32(i32 46, float %1241, float %1263, float %1275)  ; FMad(a,b,c)
  %1277 = call float @dx.op.tertiary.f32(i32 46, float %1221, float %1264, float %1276)  ; FMad(a,b,c)
  %1278 = fmul fast float %1266, %1239
  %1279 = call float @dx.op.tertiary.f32(i32 46, float %1240, float %1267, float %1278)  ; FMad(a,b,c)
  %1280 = call float @dx.op.tertiary.f32(i32 46, float %1241, float %1268, float %1279)  ; FMad(a,b,c)
  %1281 = call float @dx.op.tertiary.f32(i32 46, float %1221, float %1269, float %1280)  ; FMad(a,b,c)
  %1282 = fmul fast float %1256, %1243
  %1283 = call float @dx.op.tertiary.f32(i32 46, float %1244, float %1257, float %1282)  ; FMad(a,b,c)
  %1284 = call float @dx.op.tertiary.f32(i32 46, float %1245, float %1258, float %1283)  ; FMad(a,b,c)
  %1285 = call float @dx.op.tertiary.f32(i32 46, float %1237, float %1259, float %1284)  ; FMad(a,b,c)
  %1286 = fmul fast float %1261, %1243
  %1287 = call float @dx.op.tertiary.f32(i32 46, float %1244, float %1262, float %1286)  ; FMad(a,b,c)
  %1288 = call float @dx.op.tertiary.f32(i32 46, float %1245, float %1263, float %1287)  ; FMad(a,b,c)
  %1289 = call float @dx.op.tertiary.f32(i32 46, float %1237, float %1264, float %1288)  ; FMad(a,b,c)
  %1290 = fmul fast float %1266, %1243
  %1291 = call float @dx.op.tertiary.f32(i32 46, float %1244, float %1267, float %1290)  ; FMad(a,b,c)
  %1292 = call float @dx.op.tertiary.f32(i32 46, float %1245, float %1268, float %1291)  ; FMad(a,b,c)
  %1293 = call float @dx.op.tertiary.f32(i32 46, float %1237, float %1269, float %1292)  ; FMad(a,b,c)
  %1294 = fdiv fast float 1.000000e+00, %1281
  %1295 = fmul fast float %1294, %1273
  %1296 = fmul fast float %1294, %1277
  %1297 = fdiv fast float 1.000000e+00, %1293
  %1298 = fmul fast float %1297, %1285
  %1299 = fmul fast float %1297, %1289
  %1300 = fsub fast float %1295, %1298
  %1301 = fsub fast float %1296, %1299
  %1302 = fmul fast float %1300, 5.000000e-01
  %1303 = fmul fast float %1301, 5.000000e-01
  %1304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1305 = extractvalue %dx.types.CBufRet.f32 %1304, 0
  %1306 = extractvalue %dx.types.CBufRet.f32 %1304, 1
  %1307 = fmul fast float %1302, %1305
  %1308 = fmul fast float %1303, %1306
  %1309 = fmul fast float %1307, %1307
  %1310 = fmul fast float %1308, %1308
  %1311 = fadd fast float %1309, %1310
  %1312 = call float @dx.op.unary.f32(i32 24, float %1311)  ; Sqrt(value)
  br label %1313

; <label>:1313                                    ; preds = %1202, %1193
  %1314 = phi float [ %1254, %1202 ], [ 0.000000e+00, %1193 ]
  %1315 = phi float [ %1312, %1202 ], [ 0.000000e+00, %1193 ]
  %1316 = fadd fast float %1194, -1.000000e+00
  %1317 = fmul fast float %1316, %388
  %1318 = fadd fast float %1317, 1.000000e+00
  %1319 = fmul fast float %1318, %400
  br label %1320

; <label>:1320                                    ; preds = %1313, %367
  %1321 = phi float [ %1319, %1313 ], [ %400, %367 ]
  %1322 = phi float [ %1314, %1313 ], [ 0.000000e+00, %367 ]
  %1323 = phi float [ %1315, %1313 ], [ 0.000000e+00, %367 ]
  %1324 = call float @dx.op.binary.f32(i32 36, float %1321, float %1321)  ; FMin(a,b)
  %1325 = call float @dx.op.binary.f32(i32 36, float %1321, float %1324)  ; FMin(a,b)
  %1326 = fcmp fast ogt float %1325, 0.000000e+00
  %1327 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %340, float %341, float %342)  ; Dot3(ax,ay,az,bx,by,bz)
  %1328 = fcmp fast ogt float %1327, 0.000000e+00
  %1329 = and i1 %1326, %1328
  br i1 %1329, label %1330, label %1609, !dx.controlflow.hints !44

; <label>:1330                                    ; preds = %1320
  %1331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1332 = extractvalue %dx.types.CBufRet.f32 %1331, 1
  %1333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1334 = extractvalue %dx.types.CBufRet.f32 %1333, 1
  %1335 = select i1 %54, float %1332, float %1334
  %1336 = extractvalue %dx.types.CBufRet.f32 %1331, 2
  %1337 = extractvalue %dx.types.CBufRet.f32 %1333, 2
  %1338 = select i1 %54, float %1336, float %1337
  %1339 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1340 = extractvalue %dx.types.CBufRet.i32 %1339, 0
  %1341 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1342 = extractvalue %dx.types.CBufRet.i32 %1341, 0
  %1343 = select i1 %54, i32 %1340, i32 %1342
  %1344 = fcmp fast ogt float %1322, 0.000000e+00
  br i1 %1344, label %1345, label %1349, !dx.controlflow.hints !45

; <label>:1345                                    ; preds = %1330
  %1346 = fptosi float %1323 to i32
  %1347 = call i32 @dx.op.binary.i32(i32 37, i32 %1346, i32 1)  ; IMax(a,b)
  %1348 = call i32 @dx.op.binary.i32(i32 38, i32 %1347, i32 16)  ; IMin(a,b)
  br label %1349

; <label>:1349                                    ; preds = %1345, %1330
  %1350 = phi float [ 0.000000e+00, %1345 ], [ 1.000000e+00, %1330 ]
  %1351 = phi float [ %1322, %1345 ], [ %1335, %1330 ]
  %1352 = phi i32 [ %1348, %1345 ], [ %1343, %1330 ]
  %1353 = fcmp fast olt float %1351, 5.000000e-01
  %1354 = icmp eq i32 %1352, 0
  %1355 = or i1 %1353, %1354
  br i1 %1355, label %1606, label %1356, !dx.controlflow.hints !46

; <label>:1356                                    ; preds = %1349
  %1357 = fsub fast float %300, %116
  %1358 = fsub fast float %301, %117
  %1359 = fsub fast float %302, %118
  %1360 = fmul fast float %1357, %1357
  %1361 = fmul fast float %1358, %1358
  %1362 = fadd fast float %1360, %1361
  %1363 = fmul fast float %1359, %1359
  %1364 = fadd fast float %1362, %1363
  %1365 = call float @dx.op.unary.f32(i32 24, float %1364)  ; Sqrt(value)
  %1366 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1367 = extractvalue %dx.types.CBufRet.i32 %1366, 0
  %1368 = uitofp i32 %1367 to float
  %1369 = fmul fast float %1351, %297
  %1370 = fdiv fast float %1369, %1365
  %1371 = call float @dx.op.binary.f32(i32 36, float %1370, float 1.000000e+01)  ; FMin(a,b)
  %1372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %1373 = extractvalue %dx.types.CBufRet.f32 %1372, 0
  %1374 = extractvalue %dx.types.CBufRet.f32 %1372, 1
  %1375 = extractvalue %dx.types.CBufRet.f32 %1372, 2
  %1376 = extractvalue %dx.types.CBufRet.f32 %1372, 3
  %1377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %1378 = extractvalue %dx.types.CBufRet.f32 %1377, 0
  %1379 = extractvalue %dx.types.CBufRet.f32 %1377, 1
  %1380 = extractvalue %dx.types.CBufRet.f32 %1377, 2
  %1381 = extractvalue %dx.types.CBufRet.f32 %1377, 3
  %1382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %1383 = extractvalue %dx.types.CBufRet.f32 %1382, 0
  %1384 = extractvalue %dx.types.CBufRet.f32 %1382, 1
  %1385 = extractvalue %dx.types.CBufRet.f32 %1382, 2
  %1386 = extractvalue %dx.types.CBufRet.f32 %1382, 3
  %1387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1388 = extractvalue %dx.types.CBufRet.f32 %1387, 0
  %1389 = extractvalue %dx.types.CBufRet.f32 %1387, 1
  %1390 = extractvalue %dx.types.CBufRet.f32 %1387, 2
  %1391 = extractvalue %dx.types.CBufRet.f32 %1387, 3
  %1392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1393 = extractvalue %dx.types.CBufRet.f32 %1392, 0
  %1394 = extractvalue %dx.types.CBufRet.f32 %1392, 1
  %1395 = extractvalue %dx.types.CBufRet.f32 %1392, 2
  %1396 = extractvalue %dx.types.CBufRet.f32 %1392, 3
  %1397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1398 = extractvalue %dx.types.CBufRet.f32 %1397, 0
  %1399 = extractvalue %dx.types.CBufRet.f32 %1397, 1
  %1400 = extractvalue %dx.types.CBufRet.f32 %1397, 2
  %1401 = extractvalue %dx.types.CBufRet.f32 %1397, 3
  %1402 = select i1 %54, float %1373, float %1388
  %1403 = select i1 %54, float %1378, float %1393
  %1404 = select i1 %54, float %1383, float %1398
  %1405 = select i1 %54, float %1374, float %1389
  %1406 = select i1 %54, float %1379, float %1394
  %1407 = select i1 %54, float %1384, float %1399
  %1408 = select i1 %54, float %1375, float %1390
  %1409 = select i1 %54, float %1380, float %1395
  %1410 = select i1 %54, float %1385, float %1400
  %1411 = select i1 %54, float %1376, float %1391
  %1412 = select i1 %54, float %1381, float %1396
  %1413 = select i1 %54, float %1386, float %1401
  %1414 = fmul fast float %218, 0x401061CAC0000000
  %1415 = fmul fast float %218, 0x4023E1D7E0000000
  %1416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1417 = extractvalue %dx.types.CBufRet.f32 %1416, 0
  %1418 = extractvalue %dx.types.CBufRet.f32 %1416, 1
  %1419 = extractvalue %dx.types.CBufRet.f32 %1416, 2
  %1420 = extractvalue %dx.types.CBufRet.f32 %1416, 3
  %1421 = fsub fast float -0.000000e+00, %340
  %1422 = fmul fast float %342, %1421
  %1423 = fmul fast float %340, %1421
  %1424 = fmul fast float %341, %341
  %1425 = fsub fast float %1423, %1424
  %1426 = fdiv fast float 1.000000e+00, %61
  %1427 = fmul fast float %1419, %50
  %1428 = fmul fast float %1420, %51
  %1429 = fmul fast float %1351, %340
  %1430 = fmul fast float %1351, %342
  %1431 = fadd fast float %1429, %116
  %1432 = fadd fast float %1430, %118
  %1433 = fadd fast float %1415, 5.000000e-01
  %1434 = call float @dx.op.unary.f32(i32 22, float %1433)  ; Frc(value)
  %1435 = bitcast float %1434 to i32
  %1436 = ashr i32 %1435, 1
  %1437 = add nsw i32 %1436, 532487669
  %1438 = bitcast i32 %1437 to float
  %1439 = fmul fast float %1438, %1371
  %1440 = fadd fast float %1414, 5.000000e-01
  %1441 = call float @dx.op.unary.f32(i32 22, float %1440)  ; Frc(value)
  %1442 = fmul fast float %1441, 0x401921FB60000000
  %1443 = call float @dx.op.unary.f32(i32 12, float %1442)  ; Cos(value)
  %1444 = fmul fast float %1443, %1443
  %1445 = fsub fast float 1.000000e+00, %1444
  %1446 = bitcast float %1445 to i32
  %1447 = ashr i32 %1446, 1
  %1448 = add nsw i32 %1447, 532487669
  %1449 = bitcast i32 %1448 to float
  %1450 = fmul fast float %1439, %1443
  %1451 = fmul fast float %1450, %341
  %1452 = fmul fast float %1450, %1421
  %1453 = fadd fast float %1431, %1451
  %1454 = fmul fast float %1449, %1439
  %1455 = fmul fast float %1422, %1454
  %1456 = fmul fast float %1454, %342
  %1457 = fmul fast float %1454, %1425
  %1458 = fsub fast float %1453, %1455
  %1459 = fadd fast float %1456, %1351
  %1460 = fmul fast float %1459, %341
  %1461 = fadd fast float %1452, %117
  %1462 = fadd fast float %1461, %1460
  %1463 = fadd fast float %1432, %1457
  %1464 = fmul fast float %1458, %1402
  %1465 = call float @dx.op.tertiary.f32(i32 46, float %1462, float %1405, float %1464)  ; FMad(a,b,c)
  %1466 = call float @dx.op.tertiary.f32(i32 46, float %1463, float %1408, float %1465)  ; FMad(a,b,c)
  %1467 = fadd fast float %1466, %1411
  %1468 = fmul fast float %1458, %1403
  %1469 = call float @dx.op.tertiary.f32(i32 46, float %1462, float %1406, float %1468)  ; FMad(a,b,c)
  %1470 = call float @dx.op.tertiary.f32(i32 46, float %1463, float %1409, float %1469)  ; FMad(a,b,c)
  %1471 = fadd fast float %1470, %1412
  %1472 = fmul fast float %1458, %1404
  %1473 = call float @dx.op.tertiary.f32(i32 46, float %1462, float %1407, float %1472)  ; FMad(a,b,c)
  %1474 = call float @dx.op.tertiary.f32(i32 46, float %1463, float %1410, float %1473)  ; FMad(a,b,c)
  %1475 = fadd fast float %1474, %1413
  %1476 = fdiv fast float 1.000000e+00, %1475
  %1477 = fmul fast float %1467, 5.000000e-01
  %1478 = fmul fast float %1471, -5.000000e-01
  %1479 = fmul fast float %1477, %1476
  %1480 = fmul fast float %1478, %1476
  %1481 = fsub fast float 5.000000e-01, %1427
  %1482 = fadd fast float %1481, %1479
  %1483 = fsub fast float 5.000000e-01, %1428
  %1484 = fadd fast float %1483, %1480
  %1485 = fsub fast float %1476, %1426
  %1486 = call float @dx.op.dot2.f32(i32 54, float %1482, float %1484, float %1482, float %1484)  ; Dot2(ax,ay,bx,by)
  %1487 = call float @dx.op.binary.f32(i32 35, float %1486, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %1488 = call float @dx.op.dot2.f32(i32 54, float %1417, float %1418, float %1417, float %1418)  ; Dot2(ax,ay,bx,by)
  %1489 = fmul fast float %1488, %1487
  %1490 = call float @dx.op.unary.f32(i32 25, float %1489)  ; Rsqrt(value)
  %1491 = fmul fast float %1490, %1482
  %1492 = fmul fast float %1490, %1484
  %1493 = fadd fast float %1491, %1427
  %1494 = fadd fast float %1492, %1428
  %1495 = fmul fast float %1482, %1417
  %1496 = fmul fast float %1484, %1418
  %1497 = fmul fast float %1495, %1495
  %1498 = fmul fast float %1496, %1496
  %1499 = fadd fast float %1497, %1498
  %1500 = call float @dx.op.unary.f32(i32 24, float %1499)  ; Sqrt(value)
  %1501 = fdiv fast float 1.000000e+00, %1500
  %1502 = fmul fast float %1500, 3.906250e-03
  %1503 = fmul fast float %204, 0x3F70624DE0000000
  %1504 = fadd fast float %1503, 0x3F70624DE0000000
  %1505 = icmp sgt i32 %1352, -1
  br i1 %1505, label %1506, label %1571

; <label>:1506                                    ; preds = %1356
  br label %1507

; <label>:1507                                    ; preds = %1567, %1506
  %1508 = phi float [ %1542, %1567 ], [ %61, %1506 ]
  %1509 = phi float [ %1529, %1567 ], [ %61, %1506 ]
  %1510 = phi float [ %1509, %1567 ], [ %61, %1506 ]
  %1511 = phi i32 [ %1568, %1567 ], [ 0, %1506 ]
  %1512 = sitofp i32 %1511 to float
  %1513 = fadd fast float %218, 5.000000e-01
  %1514 = call float @dx.op.unary.f32(i32 22, float %1513)  ; Frc(value)
  %1515 = fadd fast float %1512, %1514
  %1516 = sitofp i32 %1352 to float
  %1517 = fdiv fast float %1515, %1516
  %1518 = fmul fast float %1517, %1517
  %1519 = fsub fast float %1518, %1517
  %1520 = fmul fast float %1519, %1350
  %1521 = fadd fast float %1520, %1517
  %1522 = call float @dx.op.binary.f32(i32 36, float %1521, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %1523 = fmul fast float %1522, %1482
  %1524 = fmul fast float %1522, %1484
  %1525 = fmul fast float %1522, %1485
  %1526 = fadd fast float %1523, %1493
  %1527 = fadd fast float %1524, %1494
  %1528 = fadd fast float %1525, %1426
  %1529 = fdiv fast float 1.000000e+00, %1528
  %1530 = icmp ne i32 %1367, 0
  %1531 = fmul fast float %1502, %1522
  %1532 = call float @dx.op.binary.f32(i32 36, float %1531, float %1368)  ; FMin(a,b)
  %1533 = select i1 %1530, float %1532, float 0.000000e+00
  %1534 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %1526, float %1527, float undef, float undef, i32 0, i32 0, i32 undef, float %1533)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1535 = extractvalue %dx.types.ResRet.f32 %1534, 0
  %1536 = fcmp fast ogt float %1535, -1.000000e+00
  %1537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1538 = extractvalue %dx.types.CBufRet.f32 %1537, 1
  %1539 = select i1 %1536, float %1538, float 1.000000e+00
  %1540 = fadd fast float %1535, 1.000000e+00
  %1541 = fmul fast float %1539, %1540
  %1542 = call float @dx.op.unary.f32(i32 6, float %1541)  ; FAbs(value)
  %1543 = fmul fast float %1542, %1504
  %1544 = fsub fast float %1529, %1542
  %1545 = fsub fast float %1544, %1543
  %1546 = fcmp fast ogt float %1545, 0.000000e+00
  %1547 = fcmp fast ogt float %1338, 0.000000e+00
  br i1 %1547, label %1548, label %1551, !dx.controlflow.hints !47

; <label>:1548                                    ; preds = %1507
  %1549 = fsub fast float %1529, %1510
  %1550 = call float @dx.op.binary.f32(i32 35, float %1549, float %1338)  ; FMax(a,b)
  br label %1551

; <label>:1551                                    ; preds = %1548, %1507
  %1552 = phi float [ %1550, %1548 ], [ %1351, %1507 ]
  %1553 = fcmp fast olt float %1545, %1552
  %1554 = fcmp uge float %1535, -1.000000e+00
  %1555 = or i1 %54, %1554
  %1556 = call float @dx.op.unary.f32(i32 7, float %1526)  ; Saturate(value)
  %1557 = call float @dx.op.unary.f32(i32 7, float %1527)  ; Saturate(value)
  %1558 = fcmp fast oeq float %1526, %1556
  %1559 = fcmp fast oeq float %1527, %1557
  %1560 = and i1 %1558, %1559
  %1561 = and i1 %1555, %1560
  %1562 = and i1 %1546, %1553
  %1563 = and i1 %1562, %1561
  %1564 = fcmp fast ogt float %1522, %1501
  %1565 = and i1 %1564, %1563
  %1566 = zext i1 %1565 to i32
  br i1 %1565, label %1570, label %1567, !dx.controlflow.hints !48

; <label>:1567                                    ; preds = %1551
  %1568 = add nuw nsw i32 %1511, 1
  %1569 = icmp slt i32 %1511, %1352
  br i1 %1569, label %1507, label %1570

; <label>:1570                                    ; preds = %1567, %1551
  br label %1571

; <label>:1571                                    ; preds = %1570, %1356
  %1572 = phi i32 [ 0, %1356 ], [ %1566, %1570 ]
  %1573 = phi float [ %61, %1356 ], [ %1542, %1570 ]
  %1574 = phi float [ %61, %1356 ], [ %1508, %1570 ]
  %1575 = phi float [ %61, %1356 ], [ %1529, %1570 ]
  %1576 = phi float [ %61, %1356 ], [ %1509, %1570 ]
  %1577 = fsub fast float %1576, %1574
  %1578 = fsub fast float %1575, %1573
  %1579 = fsub fast float %1577, %1578
  %1580 = fcmp fast une float %1579, 0.000000e+00
  %1581 = fmul fast float %1577, %1575
  %1582 = fmul fast float %1576, %1578
  %1583 = fsub fast float %1581, %1582
  %1584 = fdiv fast float 1.000000e+00, %1579
  %1585 = fmul fast float %1583, %1584
  %1586 = select i1 %1580, float %1585, float %1575
  %1587 = fdiv fast float 1.000000e+00, %1586
  %1588 = fsub fast float %1587, %1426
  %1589 = fdiv fast float %1588, %1485
  %1590 = call float @dx.op.unary.f32(i32 7, float %1589)  ; Saturate(value)
  %1591 = fmul fast float %1590, %1482
  %1592 = fmul fast float %1590, %1484
  %1593 = fadd fast float %1591, %1493
  %1594 = fadd fast float %1592, %1494
  %1595 = fadd fast float %1593, -5.000000e-01
  %1596 = fadd fast float %1594, -5.000000e-01
  %1597 = call float @dx.op.unary.f32(i32 6, float %1595)  ; FAbs(value)
  %1598 = call float @dx.op.unary.f32(i32 6, float %1596)  ; FAbs(value)
  %1599 = fadd fast float %1597, -5.000000e-01
  %1600 = fadd fast float %1598, -5.000000e-01
  %1601 = call float @dx.op.binary.f32(i32 35, float %1599, float %1600)  ; FMax(a,b)
  %1602 = fcmp fast olt float %1601, 0.000000e+00
  %1603 = icmp ne i32 %1572, 0
  %1604 = and i1 %1603, %1602
  %1605 = select i1 %1604, float 0.000000e+00, float 1.000000e+00
  br label %1606

; <label>:1606                                    ; preds = %1571, %1349
  %1607 = phi float [ %1605, %1571 ], [ 1.000000e+00, %1349 ]
  %1608 = fmul fast float %1607, %1321
  br label %1609

; <label>:1609                                    ; preds = %1606, %1320
  %1610 = phi float [ %1608, %1606 ], [ %1321, %1320 ]
  %1611 = lshr i32 %223, 5
  %1612 = lshr i32 %224, 5
  %1613 = fcmp fast olt float %1610, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1614 = and i32 %23, 31
  %1615 = zext i1 %1613 to i32
  %1616 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %23
  store i32 %1615, i32 addrspace(3)* %1616, align 4, !tbaa !49
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1617 = icmp ult i32 %1614, 16
  br i1 %1617, label %1618, label %1624, !dx.controlflow.hints !53

; <label>:1618                                    ; preds = %1609
  %1619 = add i32 %23, 16
  %1620 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1619
  %1621 = load i32, i32 addrspace(3)* %1620, align 4, !tbaa !49
  %1622 = load i32, i32 addrspace(3)* %1616, align 4, !tbaa !49
  %1623 = and i32 %1622, %1621
  store i32 %1623, i32 addrspace(3)* %1616, align 4, !tbaa !49
  br label %1624

; <label>:1624                                    ; preds = %1618, %1609
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1625 = icmp ult i32 %1614, 8
  br i1 %1625, label %1626, label %1632, !dx.controlflow.hints !54

; <label>:1626                                    ; preds = %1624
  %1627 = add i32 %23, 8
  %1628 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1627
  %1629 = load i32, i32 addrspace(3)* %1628, align 4, !tbaa !49
  %1630 = load i32, i32 addrspace(3)* %1616, align 4, !tbaa !49
  %1631 = and i32 %1630, %1629
  store i32 %1631, i32 addrspace(3)* %1616, align 4, !tbaa !49
  br label %1632

; <label>:1632                                    ; preds = %1626, %1624
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1633 = icmp ult i32 %1614, 4
  br i1 %1633, label %1634, label %1640, !dx.controlflow.hints !55

; <label>:1634                                    ; preds = %1632
  %1635 = add i32 %23, 4
  %1636 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1635
  %1637 = load i32, i32 addrspace(3)* %1636, align 4, !tbaa !49
  %1638 = load i32, i32 addrspace(3)* %1616, align 4, !tbaa !49
  %1639 = and i32 %1638, %1637
  store i32 %1639, i32 addrspace(3)* %1616, align 4, !tbaa !49
  br label %1640

; <label>:1640                                    ; preds = %1634, %1632
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1641 = icmp ult i32 %1614, 2
  br i1 %1641, label %1642, label %1648, !dx.controlflow.hints !56

; <label>:1642                                    ; preds = %1640
  %1643 = add i32 %23, 2
  %1644 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1643
  %1645 = load i32, i32 addrspace(3)* %1644, align 4, !tbaa !49
  %1646 = load i32, i32 addrspace(3)* %1616, align 4, !tbaa !49
  %1647 = and i32 %1646, %1645
  store i32 %1647, i32 addrspace(3)* %1616, align 4, !tbaa !49
  br label %1648

; <label>:1648                                    ; preds = %1642, %1640
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1649 = icmp eq i32 %1614, 0
  br i1 %1649, label %1650, label %1656, !dx.controlflow.hints !57

; <label>:1650                                    ; preds = %1648
  %1651 = add i32 %23, 1
  %1652 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1651
  %1653 = load i32, i32 addrspace(3)* %1652, align 4, !tbaa !49
  %1654 = load i32, i32 addrspace(3)* %1616, align 4, !tbaa !49
  %1655 = and i32 %1654, %1653
  store i32 %1655, i32 addrspace(3)* %1616, align 4, !tbaa !49
  br label %1656

; <label>:1656                                    ; preds = %1650, %1648
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1657 = and i32 %23, -64
  %1658 = or i32 %1657, 32
  %1659 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1657
  %1660 = load i32, i32 addrspace(3)* %1659, align 4, !tbaa !49
  %1661 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1658
  %1662 = load i32, i32 addrspace(3)* %1661, align 4, !tbaa !49
  %1663 = and i32 %1662, %1660
  %1664 = icmp ne i32 %1663, 0
  %1665 = fcmp fast ogt float %1610, 0x3FEFFF8000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1666 = zext i1 %1665 to i32
  store i32 %1666, i32 addrspace(3)* %1616, align 4, !tbaa !49
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1617, label %1667, label %1673, !dx.controlflow.hints !53

; <label>:1667                                    ; preds = %1656
  %1668 = add i32 %23, 16
  %1669 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1668
  %1670 = load i32, i32 addrspace(3)* %1669, align 4, !tbaa !49
  %1671 = load i32, i32 addrspace(3)* %1616, align 4, !tbaa !49
  %1672 = and i32 %1671, %1670
  store i32 %1672, i32 addrspace(3)* %1616, align 4, !tbaa !49
  br label %1673

; <label>:1673                                    ; preds = %1667, %1656
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1625, label %1674, label %1680, !dx.controlflow.hints !54

; <label>:1674                                    ; preds = %1673
  %1675 = add i32 %23, 8
  %1676 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1675
  %1677 = load i32, i32 addrspace(3)* %1676, align 4, !tbaa !49
  %1678 = load i32, i32 addrspace(3)* %1616, align 4, !tbaa !49
  %1679 = and i32 %1678, %1677
  store i32 %1679, i32 addrspace(3)* %1616, align 4, !tbaa !49
  br label %1680

; <label>:1680                                    ; preds = %1674, %1673
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1633, label %1681, label %1687, !dx.controlflow.hints !55

; <label>:1681                                    ; preds = %1680
  %1682 = add i32 %23, 4
  %1683 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1682
  %1684 = load i32, i32 addrspace(3)* %1683, align 4, !tbaa !49
  %1685 = load i32, i32 addrspace(3)* %1616, align 4, !tbaa !49
  %1686 = and i32 %1685, %1684
  store i32 %1686, i32 addrspace(3)* %1616, align 4, !tbaa !49
  br label %1687

; <label>:1687                                    ; preds = %1681, %1680
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1641, label %1688, label %1694, !dx.controlflow.hints !56

; <label>:1688                                    ; preds = %1687
  %1689 = add i32 %23, 2
  %1690 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1689
  %1691 = load i32, i32 addrspace(3)* %1690, align 4, !tbaa !49
  %1692 = load i32, i32 addrspace(3)* %1616, align 4, !tbaa !49
  %1693 = and i32 %1692, %1691
  store i32 %1693, i32 addrspace(3)* %1616, align 4, !tbaa !49
  br label %1694

; <label>:1694                                    ; preds = %1688, %1687
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1649, label %1695, label %1701, !dx.controlflow.hints !57

; <label>:1695                                    ; preds = %1694
  %1696 = add i32 %23, 1
  %1697 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1696
  %1698 = load i32, i32 addrspace(3)* %1697, align 4, !tbaa !49
  %1699 = load i32, i32 addrspace(3)* %1616, align 4, !tbaa !49
  %1700 = and i32 %1699, %1698
  store i32 %1700, i32 addrspace(3)* %1616, align 4, !tbaa !49
  br label %1701

; <label>:1701                                    ; preds = %1695, %1694
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1702 = load i32, i32 addrspace(3)* %1659, align 4, !tbaa !49
  %1703 = load i32, i32 addrspace(3)* %1661, align 4, !tbaa !49
  %1704 = and i32 %1703, %1702
  %1705 = or i32 %1704, %1663
  %1706 = icmp eq i32 %1705, 0
  %1707 = lshr i32 %224, 1
  %1708 = and i32 %1707, 8
  %1709 = lshr i32 %223, 2
  %1710 = and i32 %1709, 4
  %1711 = or i32 %1708, %35
  %1712 = or i32 %1711, %1710
  %1713 = icmp eq i32 %23, 0
  br i1 %1713, label %1714, label %1756, !dx.controlflow.hints !58

; <label>:1714                                    ; preds = %1701
  %1715 = icmp ne i32 %1704, 0
  %1716 = shl i32 1, %1712
  %1717 = select i1 %1715, i32 %1716, i32 0
  %1718 = shl i32 65536, %1712
  %1719 = select i1 %1664, i32 %1718, i32 0
  %1720 = or i32 %1717, %1719
  %1721 = icmp eq i32 %1720, 0
  br i1 %1721, label %1724, label %1722, !dx.controlflow.hints !59

; <label>:1722                                    ; preds = %1714
  %1723 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %1611, i32 %1612, i32 %277, i32 %1720)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1724

; <label>:1724                                    ; preds = %1722, %1714
  br i1 %1706, label %1725, label %1754

; <label>:1725                                    ; preds = %1724
  br label %1726

; <label>:1726                                    ; preds = %1751, %1725
  %1727 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %3, i32 %1611, i32 %1612, i32 %277, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %1728 = and i32 %1727, 3
  %1729 = icmp eq i32 %1728, 0
  br i1 %1729, label %1730, label %1751, !dx.controlflow.hints !60

; <label>:1730                                    ; preds = %1726
  %1731 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1732 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1733 = extractvalue %dx.types.CBufRet.i32 %1732, 3
  %1734 = call i32 @dx.op.binary.i32(i32 40, i32 %1733, i32 %1731)  ; UMin(a,b)
  %1735 = extractvalue %dx.types.CBufRet.i32 %1732, 2
  %1736 = udiv i32 %1734, %1735
  %1737 = urem i32 %1734, %1735
  %1738 = extractvalue %dx.types.CBufRet.i32 %1732, 1
  %1739 = urem i32 %1737, %1738
  %1740 = udiv i32 %1737, %1738
  %1741 = shl i32 %1739, 6
  %1742 = and i32 %1741, 32704
  %1743 = shl i32 %1740, 15
  %1744 = and i32 %1743, 8355840
  %1745 = shl i32 %1736, 23
  %1746 = and i32 %1745, 2139095040
  %1747 = or i32 %1746, %1742
  %1748 = or i32 %1747, %1744
  %1749 = or i32 %1748, 3
  %1750 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 8, i32 %1611, i32 %1612, i32 %277, i32 %1749)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1754

; <label>:1751                                    ; preds = %1726
  %1752 = icmp eq i32 %1728, 3
  br i1 %1752, label %1753, label %1726, !dx.controlflow.hints !61

; <label>:1753                                    ; preds = %1751
  br label %1754

; <label>:1754                                    ; preds = %1753, %1730, %1724
  %1755 = phi i32 [ 0, %1724 ], [ %1749, %1730 ], [ %1727, %1753 ]
  store i32 %1755, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !49
  br label %1756

; <label>:1756                                    ; preds = %1754, %1701
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1757 = load i32, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !49
  br i1 %1706, label %1758, label %1773, !dx.controlflow.hints !62

; <label>:1758                                    ; preds = %1756
  %1759 = lshr i32 %1757, 23
  %1760 = and i32 %1759, 255
  %1761 = and i32 %223, 31
  %1762 = and i32 %224, 31
  %1763 = lshr i32 %1757, 1
  %1764 = and i32 %1763, 16352
  %1765 = lshr i32 %1757, 10
  %1766 = and i32 %1765, 8160
  %1767 = or i32 %1764, %1761
  %1768 = or i32 %1766, %1762
  %1769 = fmul fast float %1610, 2.550000e+02
  %1770 = fadd fast float %1769, %217
  %1771 = call float @dx.op.unary.f32(i32 27, float %1770)  ; Round_ni(value)
  %1772 = fmul fast float %1771, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %1767, i32 %1768, i32 %1760, float %1772, float %1772, float %1772, float %1772, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1773

; <label>:1773                                    ; preds = %1758, %1756
  %1774 = icmp eq i32 %275, %279
  br i1 %1774, label %1775, label %274, !llvm.loop !63

; <label>:1775                                    ; preds = %1773
  br label %1776

; <label>:1776                                    ; preds = %1775, %248
  %1777 = add i32 %249, 1
  %1778 = icmp ugt i32 %1777, %245
  br i1 %1778, label %1779, label %248

; <label>:1779                                    ; preds = %1776
  br label %1780

; <label>:1780                                    ; preds = %1779, %222, %0
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
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 1}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = !{!50, !50, i64 0}
!50 = !{!"int", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
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

