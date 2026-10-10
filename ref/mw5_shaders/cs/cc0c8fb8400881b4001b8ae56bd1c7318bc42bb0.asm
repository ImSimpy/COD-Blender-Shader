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
; shader hash: c6336ba8c9fd1bb58e9427ff8eb9264c
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
  br i1 %162, label %1438, label %163, !dx.controlflow.hints !35

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
  %184 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %185 = udiv i32 %24, %184
  %186 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %182, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %187 = icmp eq i32 %184, 64
  br i1 %187, label %214, label %188, !dx.controlflow.hints !36

; <label>:188                                     ; preds = %163
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %189 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %189, label %190, label %192, !dx.controlflow.hints !37

; <label>:190                                     ; preds = %188
  %191 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %185
  store i32 %186, i32 addrspace(3)* %191, align 4, !tbaa !38
  br label %192

; <label>:192                                     ; preds = %190, %188
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %193 = icmp eq i32 %184, 32
  br i1 %193, label %194, label %199, !dx.controlflow.hints !42

; <label>:194                                     ; preds = %192
  %195 = xor i32 %185, 1
  %196 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %195
  %197 = load i32, i32 addrspace(3)* %196, align 4, !tbaa !38
  %198 = call i32 @dx.op.binary.i32(i32 40, i32 %186, i32 %197)  ; UMin(a,b)
  br label %214

; <label>:199                                     ; preds = %192
  %200 = icmp eq i32 %184, 16
  br i1 %200, label %201, label %214, !dx.controlflow.hints !43

; <label>:201                                     ; preds = %199
  %202 = xor i32 %185, 3
  %203 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %202
  %204 = load i32, i32 addrspace(3)* %203, align 4, !tbaa !38
  %205 = xor i32 %185, 2
  %206 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %205
  %207 = load i32, i32 addrspace(3)* %206, align 4, !tbaa !38
  %208 = call i32 @dx.op.binary.i32(i32 40, i32 %207, i32 %204)  ; UMin(a,b)
  %209 = xor i32 %185, 1
  %210 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %209
  %211 = load i32, i32 addrspace(3)* %210, align 4, !tbaa !38
  %212 = call i32 @dx.op.binary.i32(i32 40, i32 %186, i32 %211)  ; UMin(a,b)
  %213 = call i32 @dx.op.binary.i32(i32 40, i32 %212, i32 %208)  ; UMin(a,b)
  br label %214

; <label>:214                                     ; preds = %201, %199, %194, %163
  %215 = phi i32 [ %198, %194 ], [ %213, %201 ], [ %186, %163 ], [ 0, %199 ]
  %216 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %183, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  br i1 %187, label %243, label %217, !dx.controlflow.hints !44

; <label>:217                                     ; preds = %214
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %218 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %218, label %219, label %221, !dx.controlflow.hints !45

; <label>:219                                     ; preds = %217
  %220 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %185
  store i32 %216, i32 addrspace(3)* %220, align 4, !tbaa !38
  br label %221

; <label>:221                                     ; preds = %219, %217
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %222 = icmp eq i32 %184, 32
  br i1 %222, label %223, label %228, !dx.controlflow.hints !46

; <label>:223                                     ; preds = %221
  %224 = xor i32 %185, 1
  %225 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %224
  %226 = load i32, i32 addrspace(3)* %225, align 4, !tbaa !38
  %227 = call i32 @dx.op.binary.i32(i32 39, i32 %216, i32 %226)  ; UMax(a,b)
  br label %243

; <label>:228                                     ; preds = %221
  %229 = icmp eq i32 %184, 16
  br i1 %229, label %230, label %243, !dx.controlflow.hints !47

; <label>:230                                     ; preds = %228
  %231 = xor i32 %185, 3
  %232 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %231
  %233 = load i32, i32 addrspace(3)* %232, align 4, !tbaa !38
  %234 = xor i32 %185, 2
  %235 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %234
  %236 = load i32, i32 addrspace(3)* %235, align 4, !tbaa !38
  %237 = call i32 @dx.op.binary.i32(i32 39, i32 %236, i32 %233)  ; UMax(a,b)
  %238 = xor i32 %185, 1
  %239 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %238
  %240 = load i32, i32 addrspace(3)* %239, align 4, !tbaa !38
  %241 = call i32 @dx.op.binary.i32(i32 39, i32 %216, i32 %240)  ; UMax(a,b)
  %242 = call i32 @dx.op.binary.i32(i32 39, i32 %241, i32 %237)  ; UMax(a,b)
  br label %243

; <label>:243                                     ; preds = %230, %228, %223, %214
  %244 = phi i32 [ %227, %223 ], [ %242, %230 ], [ %216, %214 ], [ 0, %228 ]
  %245 = lshr i32 %215, 5
  %246 = lshr i32 %244, 5
  %247 = call i32 @dx.op.binary.i32(i32 40, i32 %246, i32 %174)  ; UMin(a,b)
  %248 = icmp ugt i32 %245, %247
  br i1 %248, label %1438, label %249

; <label>:249                                     ; preds = %243
  br label %250

; <label>:250                                     ; preds = %1428, %249
  %251 = phi i32 [ %1435, %1428 ], [ %245, %249 ]
  %252 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.i32 %252, 0
  %254 = call i32 @dx.op.tertiary.i32(i32 49, i32 %170, i32 %253, i32 %251)  ; UMad(a,b,c)
  %255 = shl i32 %254, 2
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = shl i32 %251, 5
  %259 = sub nsw i32 %182, %258
  %260 = call i32 @dx.op.binary.i32(i32 37, i32 %259, i32 0)  ; IMax(a,b)
  %261 = call i32 @dx.op.binary.i32(i32 38, i32 %260, i32 31)  ; IMin(a,b)
  %262 = sub nsw i32 1, %182
  %263 = add nsw i32 %262, %183
  %264 = call i32 @dx.op.binary.i32(i32 37, i32 %263, i32 0)  ; IMax(a,b)
  %265 = call i32 @dx.op.binary.i32(i32 38, i32 %264, i32 32)  ; IMin(a,b)
  %266 = and i32 %265, 31
  %267 = shl i32 -1, %266
  %268 = xor i32 %267, -1
  %269 = and i32 %261, 31
  %270 = shl i32 %268, %269
  %271 = icmp eq i32 %265, 32
  %272 = select i1 %271, i32 -1, i32 %270
  %273 = and i32 %272, %257
  %274 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %273, i8 1)  ; WaveActiveBit(value,op)
  br i1 %187, label %301, label %275, !dx.controlflow.hints !48

; <label>:275                                     ; preds = %250
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %276 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %276, label %277, label %279, !dx.controlflow.hints !49

; <label>:277                                     ; preds = %275
  %278 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %185
  store i32 %274, i32 addrspace(3)* %278, align 4, !tbaa !38
  br label %279

; <label>:279                                     ; preds = %277, %275
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %280 = icmp eq i32 %184, 32
  br i1 %280, label %281, label %286, !dx.controlflow.hints !50

; <label>:281                                     ; preds = %279
  %282 = xor i32 %185, 1
  %283 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %282
  %284 = load i32, i32 addrspace(3)* %283, align 4, !tbaa !38
  %285 = or i32 %284, %274
  br label %301

; <label>:286                                     ; preds = %279
  %287 = icmp eq i32 %184, 16
  br i1 %287, label %288, label %301, !dx.controlflow.hints !51

; <label>:288                                     ; preds = %286
  %289 = xor i32 %185, 1
  %290 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %289
  %291 = load i32, i32 addrspace(3)* %290, align 4, !tbaa !38
  %292 = or i32 %291, %274
  %293 = xor i32 %185, 2
  %294 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %293
  %295 = load i32, i32 addrspace(3)* %294, align 4, !tbaa !38
  %296 = or i32 %292, %295
  %297 = xor i32 %185, 3
  %298 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %297
  %299 = load i32, i32 addrspace(3)* %298, align 4, !tbaa !38
  %300 = or i32 %296, %299
  br label %301

; <label>:301                                     ; preds = %288, %286, %281, %250
  %302 = phi i32 [ %285, %281 ], [ %300, %288 ], [ %274, %250 ], [ 0, %286 ]
  br i1 %187, label %303, label %305, !dx.controlflow.hints !52

; <label>:303                                     ; preds = %301
  %304 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %302)  ; WaveReadLaneFirst(value)
  br label %310

; <label>:305                                     ; preds = %301
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %306 = icmp eq i32 %24, 0
  br i1 %306, label %307, label %308, !dx.controlflow.hints !53

; <label>:307                                     ; preds = %305
  store i32 %302, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !38
  br label %308

; <label>:308                                     ; preds = %307, %305
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %309 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !38
  br label %310

; <label>:310                                     ; preds = %308, %303
  %311 = phi i32 [ %304, %303 ], [ %309, %308 ]
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %1428, label %313

; <label>:313                                     ; preds = %310
  br label %314

; <label>:314                                     ; preds = %1425, %313
  %315 = phi i32 [ %1279, %1425 ], [ 0, %313 ]
  %316 = phi i32 [ %321, %1425 ], [ %311, %313 ]
  %317 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %316)  ; FirstbitLo(value)
  %318 = add i32 %317, %258
  %319 = and i32 %317, 31
  %320 = shl i32 1, %319
  %321 = xor i32 %320, %316
  %322 = mul i32 %318, 112
  %323 = add i32 %322, 16
  %324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.f32 %324, 0
  %326 = extractvalue %dx.types.ResRet.f32 %324, 1
  %327 = extractvalue %dx.types.ResRet.f32 %324, 2
  %328 = add i32 %322, 28
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = add i32 %322, 32
  %332 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.f32 %332, 0
  %334 = extractvalue %dx.types.ResRet.f32 %332, 1
  %335 = extractvalue %dx.types.ResRet.f32 %332, 2
  %336 = add i32 %322, 44
  %337 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.f32 %337, 0
  %339 = add i32 %322, 48
  %340 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.f32 %340, 0
  %342 = extractvalue %dx.types.ResRet.f32 %340, 1
  %343 = extractvalue %dx.types.ResRet.f32 %340, 2
  %344 = extractvalue %dx.types.ResRet.f32 %340, 3
  %345 = add i32 %322, 64
  %346 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.f32 %346, 0
  %348 = extractvalue %dx.types.ResRet.f32 %346, 1
  %349 = extractvalue %dx.types.ResRet.f32 %346, 2
  %350 = extractvalue %dx.types.ResRet.f32 %346, 3
  %351 = add i32 %322, 92
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = and i32 %353, 65535
  %355 = uitofp i32 %354 to float
  %356 = lshr i32 %353, 16
  %357 = uitofp i32 %356 to float
  %358 = and i32 %330, 65535
  %359 = and i32 %330, 50331648
  %360 = icmp eq i32 %359, 33554432
  %361 = call float @dx.op.dot3.f32(i32 55, float %333, float %334, float %335, float %333, float %334, float %335)  ; Dot3(ax,ay,az,bx,by,bz)
  %362 = fsub fast float %117, %341
  %363 = fsub fast float %118, %342
  %364 = fsub fast float %119, %343
  %365 = call float @dx.op.dot3.f32(i32 55, float %362, float %363, float %364, float %333, float %334, float %335)  ; Dot3(ax,ay,az,bx,by,bz)
  %366 = fdiv fast float %365, %361
  %367 = call float @dx.op.binary.f32(i32 35, float %366, float -1.000000e+00)  ; FMax(a,b)
  %368 = call float @dx.op.binary.f32(i32 36, float %367, float 1.000000e+00)  ; FMin(a,b)
  %369 = fmul fast float %368, %333
  %370 = fmul fast float %368, %334
  %371 = fmul fast float %368, %335
  %372 = fadd fast float %369, %341
  %373 = fadd fast float %370, %342
  %374 = fadd fast float %371, %343
  %375 = fsub fast float %372, %117
  %376 = fsub fast float %373, %118
  %377 = fsub fast float %374, %119
  %378 = call float @dx.op.dot3.f32(i32 55, float %375, float %376, float %377, float %375, float %376, float %377)  ; Dot3(ax,ay,az,bx,by,bz)
  %379 = call float @dx.op.unary.f32(i32 24, float %378)  ; Sqrt(value)
  %380 = fdiv fast float 1.000000e+00, %379
  %381 = fmul fast float %375, %380
  %382 = fmul fast float %376, %380
  %383 = fmul fast float %377, %380
  br i1 %360, label %384, label %408, !dx.controlflow.hints !54

; <label>:384                                     ; preds = %314
  %385 = fmul fast float %349, %325
  %386 = fmul fast float %349, %326
  %387 = fmul fast float %349, %327
  %388 = fsub fast float %385, %117
  %389 = fadd fast float %388, %372
  %390 = fsub fast float %386, %118
  %391 = fadd fast float %390, %373
  %392 = fsub fast float %387, %119
  %393 = fadd fast float %392, %374
  %394 = call float @dx.op.dot3.f32(i32 55, float %389, float %391, float %393, float %389, float %391, float %393)  ; Dot3(ax,ay,az,bx,by,bz)
  %395 = call float @dx.op.unary.f32(i32 25, float %394)  ; Rsqrt(value)
  %396 = fmul fast float %395, %389
  %397 = fmul fast float %395, %391
  %398 = fmul fast float %395, %393
  %399 = fsub fast float %117, %372
  %400 = fsub fast float %118, %373
  %401 = fsub fast float %119, %374
  %402 = fsub fast float -0.000000e+00, %399
  %403 = fsub fast float -0.000000e+00, %400
  %404 = fsub fast float -0.000000e+00, %401
  %405 = call float @dx.op.dot3.f32(i32 55, float %402, float %403, float %404, float %325, float %326, float %327)  ; Dot3(ax,ay,az,bx,by,bz)
  %406 = fcmp fast ogt float %405, 0.000000e+00
  %407 = uitofp i1 %406 to float
  br label %408

; <label>:408                                     ; preds = %384, %314
  %409 = phi float [ %407, %384 ], [ 1.000000e+00, %314 ]
  %410 = phi float [ %396, %384 ], [ %381, %314 ]
  %411 = phi float [ %397, %384 ], [ %382, %314 ]
  %412 = phi float [ %398, %384 ], [ %383, %314 ]
  %413 = call float @dx.op.dot3.f32(i32 55, float %325, float %326, float %327, float %410, float %411, float %412)  ; Dot3(ax,ay,az,bx,by,bz)
  %414 = fmul fast float %413, %413
  %415 = call float @dx.op.unary.f32(i32 7, float %414)  ; Saturate(value)
  %416 = fsub fast float 1.000000e+00, %415
  %417 = fmul fast float %416, 5.000000e-01
  %418 = fcmp fast ogt float %413, 0.000000e+00
  %419 = fsub fast float 1.000000e+00, %417
  %420 = select i1 %418, float %417, float %419
  %421 = fmul fast float %420, %357
  %422 = fadd fast float %421, %355
  %423 = fmul fast float %422, 0x3EF0001000000000
  %424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %16, float %423, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %425 = extractvalue %dx.types.ResRet.f32 %424, 0
  %426 = fmul fast float %413, %347
  %427 = fadd fast float %426, %348
  %428 = call float @dx.op.unary.f32(i32 7, float %427)  ; Saturate(value)
  %429 = select i1 %360, float 1.000000e+00, float %428
  %430 = select i1 %360, float %428, float 1.000000e+00
  %431 = fmul fast float %379, %344
  %432 = fsub fast float 1.000000e+00, %431
  %433 = fmul fast float %432, %350
  %434 = call float @dx.op.unary.f32(i32 7, float %433)  ; Saturate(value)
  %435 = fmul fast float %434, %430
  %436 = fmul fast float %435, 2.000000e+00
  %437 = fsub fast float 3.000000e+00, %436
  %438 = fmul fast float %425, %409
  %439 = fmul fast float %435, %435
  %440 = fmul fast float %439, %438
  %441 = fmul fast float %440, %437
  %442 = icmp ne i32 %358, 255
  %443 = call float @dx.op.binary.f32(i32 36, float %441, float %441)  ; FMin(a,b)
  %444 = call float @dx.op.binary.f32(i32 36, float %441, float %443)  ; FMin(a,b)
  %445 = fcmp fast ogt float %444, 0.000000e+00
  %446 = and i1 %442, %445
  br i1 %446, label %447, label %1240, !dx.controlflow.hints !55

; <label>:447                                     ; preds = %408
  %448 = mul nuw nsw i32 %358, 176
  %449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.f32 %449, 0
  %451 = extractvalue %dx.types.ResRet.f32 %449, 1
  %452 = extractvalue %dx.types.ResRet.f32 %449, 2
  %453 = extractvalue %dx.types.ResRet.f32 %449, 3
  %454 = add nuw nsw i32 %448, 16
  %455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.f32 %455, 0
  %457 = extractvalue %dx.types.ResRet.f32 %455, 1
  %458 = add nuw nsw i32 %448, 32
  %459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.f32 %459, 0
  %461 = extractvalue %dx.types.ResRet.f32 %459, 1
  %462 = extractvalue %dx.types.ResRet.f32 %459, 2
  %463 = extractvalue %dx.types.ResRet.f32 %459, 3
  %464 = add nuw nsw i32 %448, 48
  %465 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.f32 %465, 0
  %467 = extractvalue %dx.types.ResRet.f32 %465, 1
  %468 = extractvalue %dx.types.ResRet.f32 %465, 2
  %469 = extractvalue %dx.types.ResRet.f32 %465, 3
  %470 = add nuw nsw i32 %448, 64
  %471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.f32 %471, 0
  %473 = extractvalue %dx.types.ResRet.f32 %471, 1
  %474 = extractvalue %dx.types.ResRet.f32 %471, 2
  %475 = extractvalue %dx.types.ResRet.f32 %471, 3
  %476 = add nuw nsw i32 %448, 80
  %477 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.f32 %477, 0
  %479 = extractvalue %dx.types.ResRet.f32 %477, 1
  %480 = extractvalue %dx.types.ResRet.f32 %477, 2
  %481 = extractvalue %dx.types.ResRet.f32 %477, 3
  %482 = add nuw nsw i32 %448, 96
  %483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.f32 %483, 0
  %485 = extractvalue %dx.types.ResRet.f32 %483, 1
  %486 = extractvalue %dx.types.ResRet.f32 %483, 2
  %487 = extractvalue %dx.types.ResRet.f32 %483, 3
  %488 = add nuw nsw i32 %448, 112
  %489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.f32 %489, 0
  %491 = extractvalue %dx.types.ResRet.f32 %489, 1
  %492 = extractvalue %dx.types.ResRet.f32 %489, 2
  %493 = extractvalue %dx.types.ResRet.f32 %489, 3
  %494 = add nuw nsw i32 %448, 128
  %495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %494, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.f32 %495, 0
  %497 = extractvalue %dx.types.ResRet.f32 %495, 1
  %498 = extractvalue %dx.types.ResRet.f32 %495, 2
  %499 = extractvalue %dx.types.ResRet.f32 %495, 3
  %500 = add nuw nsw i32 %448, 144
  %501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.f32 %501, 0
  %503 = extractvalue %dx.types.ResRet.f32 %501, 1
  %504 = extractvalue %dx.types.ResRet.f32 %501, 2
  %505 = extractvalue %dx.types.ResRet.f32 %501, 3
  %506 = add nuw nsw i32 %448, 160
  %507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.f32 %507, 0
  %509 = extractvalue %dx.types.ResRet.f32 %507, 1
  %510 = extractvalue %dx.types.ResRet.f32 %507, 2
  %511 = extractvalue %dx.types.ResRet.f32 %507, 3
  %512 = bitcast float %457 to i32
  %513 = bitcast float %463 to i32
  %514 = and i32 %513, 1
  %515 = icmp ne i32 %514, 0
  %516 = and i32 %513, 2
  %517 = fmul fast float %146, %462
  %518 = fmul fast float %147, %462
  %519 = fmul fast float %148, %462
  %520 = fadd fast float %517, %117
  %521 = fadd fast float %518, %118
  %522 = fadd fast float %519, %119
  %523 = fmul fast float %520, %466
  %524 = call float @dx.op.tertiary.f32(i32 46, float %521, float %472, float %523)  ; FMad(a,b,c)
  %525 = call float @dx.op.tertiary.f32(i32 46, float %522, float %478, float %524)  ; FMad(a,b,c)
  %526 = fadd fast float %525, %484
  %527 = fmul fast float %520, %467
  %528 = call float @dx.op.tertiary.f32(i32 46, float %521, float %473, float %527)  ; FMad(a,b,c)
  %529 = call float @dx.op.tertiary.f32(i32 46, float %522, float %479, float %528)  ; FMad(a,b,c)
  %530 = fadd fast float %529, %485
  %531 = fmul fast float %520, %468
  %532 = call float @dx.op.tertiary.f32(i32 46, float %521, float %474, float %531)  ; FMad(a,b,c)
  %533 = call float @dx.op.tertiary.f32(i32 46, float %522, float %480, float %532)  ; FMad(a,b,c)
  %534 = fadd fast float %533, %486
  %535 = fmul fast float %520, %469
  %536 = call float @dx.op.tertiary.f32(i32 46, float %521, float %475, float %535)  ; FMad(a,b,c)
  %537 = call float @dx.op.tertiary.f32(i32 46, float %522, float %481, float %536)  ; FMad(a,b,c)
  %538 = fadd fast float %537, %487
  %539 = fdiv fast float %526, %538
  %540 = fdiv fast float %530, %538
  %541 = fdiv fast float %534, %538
  %542 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %541)  ; FMax(a,b)
  %543 = fmul fast float %159, 0x401921FB60000000
  %544 = call float @dx.op.unary.f32(i32 13, float %543)  ; Sin(value)
  %545 = call float @dx.op.unary.f32(i32 12, float %543)  ; Cos(value)
  %546 = fsub fast float -0.000000e+00, %544
  %547 = icmp eq i32 %516, 0
  br i1 %547, label %548, label %619, !dx.controlflow.hints !56

; <label>:548                                     ; preds = %447
  %549 = fmul fast float %545, %461
  %550 = call float @dx.op.tertiary.f32(i32 46, float %544, float %461, float 0.000000e+00)  ; FMad(a,b,c)
  %551 = fmul fast float %461, %546
  %552 = call float @dx.op.tertiary.f32(i32 46, float %545, float %461, float 0.000000e+00)  ; FMad(a,b,c)
  br label %553

; <label>:553                                     ; preds = %553, %548
  %554 = phi float [ 0.000000e+00, %548 ], [ %586, %553 ]
  %555 = phi float [ 0.000000e+00, %548 ], [ %588, %553 ]
  %556 = phi i32 [ 0, %548 ], [ %589, %553 ]
  %557 = mul i32 %556, 2
  %558 = add i32 0, %557
  %559 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %558
  %560 = load float, float* %559, align 4
  %561 = mul i32 %556, 2
  %562 = add i32 1, %561
  %563 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %562
  %564 = load float, float* %563, align 4
  %565 = fmul fast float %549, %560
  %566 = call float @dx.op.tertiary.f32(i32 46, float %564, float %551, float %565)  ; FMad(a,b,c)
  %567 = fmul fast float %560, %550
  %568 = call float @dx.op.tertiary.f32(i32 46, float %564, float %552, float %567)  ; FMad(a,b,c)
  %569 = fadd fast float %566, %539
  %570 = fadd fast float %568, %540
  %571 = fmul fast float %569, %456
  %572 = fmul fast float %570, %456
  %573 = call float @dx.op.binary.f32(i32 35, float %571, float %452)  ; FMax(a,b)
  %574 = call float @dx.op.binary.f32(i32 35, float %572, float %452)  ; FMax(a,b)
  %575 = call float @dx.op.binary.f32(i32 36, float %573, float %453)  ; FMin(a,b)
  %576 = call float @dx.op.binary.f32(i32 36, float %574, float %453)  ; FMin(a,b)
  %577 = fadd fast float %575, %450
  %578 = fadd fast float %576, %451
  %579 = uitofp i32 %512 to float
  %580 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %577, float %578, float %579, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %581 = extractvalue %dx.types.ResRet.f32 %580, 0
  %582 = fsub fast float %581, %542
  %583 = fsub fast float %582, %460
  %584 = fcmp fast ogt float %583, 0.000000e+00
  %585 = select i1 %584, float 1.000000e+00, float 0.000000e+00
  %586 = fadd fast float %585, %554
  %587 = select i1 %584, float %583, float 0.000000e+00
  %588 = fadd fast float %587, %555
  %589 = add nuw nsw i32 %556, 1
  %590 = icmp eq i32 %589, 8
  br i1 %590, label %591, label %553

; <label>:591                                     ; preds = %553
  %592 = fdiv fast float 1.000000e+00, %586
  %593 = fmul fast float %592, %588
  %594 = fdiv fast float 1.000000e+00, %542
  %595 = fmul fast float %593, %594
  %596 = call float @dx.op.unary.f32(i32 7, float %595)  ; Saturate(value)
  %597 = call float @dx.op.binary.f32(i32 35, float %596, float 0.000000e+00)  ; FMax(a,b)
  %598 = fmul fast float %586, 1.250000e-01
  %599 = call float @dx.op.unary.f32(i32 7, float %598)  ; Saturate(value)
  %600 = fmul fast float %599, 2.000000e+00
  %601 = fadd fast float %600, -1.000000e+00
  %602 = fcmp fast ogt float %601, 0.000000e+00
  %603 = fcmp fast olt float %601, 0.000000e+00
  %604 = zext i1 %602 to i32
  %605 = zext i1 %603 to i32
  %606 = sub nsw i32 %604, %605
  %607 = sitofp i32 %606 to float
  %608 = fmul fast float %607, %601
  %609 = fsub fast float 1.000000e+00, %608
  %610 = fmul fast float %609, %609
  %611 = fmul fast float %610, %609
  %612 = fsub fast float %609, %611
  %613 = fmul fast float %612, %597
  %614 = fsub fast float 1.000000e+00, %611
  %615 = fsub fast float %614, %613
  %616 = fmul fast float %607, 5.000000e-01
  %617 = fmul fast float %616, %615
  %618 = fsub fast float 5.000000e-01, %617
  br label %1234

; <label>:619                                     ; preds = %447
  %620 = fsub fast float 1.000000e+00, %542
  %621 = fmul fast float %620, 5.000000e-01
  %622 = fadd fast float %621, %542
  %623 = fsub fast float %520, %341
  %624 = fsub fast float %521, %342
  %625 = fsub fast float %522, %343
  %626 = call float @dx.op.dot3.f32(i32 55, float %623, float %624, float %625, float %333, float %334, float %335)  ; Dot3(ax,ay,az,bx,by,bz)
  %627 = fdiv fast float %626, %361
  %628 = call float @dx.op.binary.f32(i32 35, float %627, float -1.000000e+00)  ; FMax(a,b)
  %629 = call float @dx.op.binary.f32(i32 36, float %628, float 1.000000e+00)  ; FMin(a,b)
  %630 = fmul fast float %629, %333
  %631 = fmul fast float %629, %334
  %632 = fmul fast float %629, %335
  %633 = fsub fast float %623, %630
  %634 = fsub fast float %624, %631
  %635 = fsub fast float %625, %632
  %636 = call float @dx.op.dot3.f32(i32 55, float %633, float %634, float %635, float %633, float %634, float %635)  ; Dot3(ax,ay,az,bx,by,bz)
  %637 = call float @dx.op.unary.f32(i32 25, float %636)  ; Rsqrt(value)
  %638 = fmul fast float %633, %637
  %639 = fmul fast float %634, %637
  %640 = fmul fast float %635, %637
  %641 = call float @dx.op.unary.f32(i32 25, float %361)  ; Rsqrt(value)
  %642 = fmul fast float %641, %333
  %643 = fmul fast float %641, %334
  %644 = fmul fast float %641, %335
  br i1 %515, label %645, label %649, !dx.controlflow.hints !57

; <label>:645                                     ; preds = %619
  %646 = fcmp fast olt float %639, 0x3FE6666660000000
  %647 = select i1 %646, float 1.000000e+00, float 0.000000e+00
  %648 = select i1 %646, float 0.000000e+00, float 1.000000e+00
  br label %649

; <label>:649                                     ; preds = %645, %619
  %650 = phi float [ 0.000000e+00, %645 ], [ %642, %619 ]
  %651 = phi float [ %647, %645 ], [ %643, %619 ]
  %652 = phi float [ %648, %645 ], [ %644, %619 ]
  %653 = fmul fast float %651, %640
  %654 = fmul fast float %652, %639
  %655 = fsub fast float %653, %654
  %656 = fmul fast float %652, %638
  %657 = fmul fast float %650, %640
  %658 = fsub fast float %656, %657
  %659 = fmul fast float %650, %639
  %660 = fmul fast float %651, %638
  %661 = fsub fast float %659, %660
  %662 = call float @dx.op.dot3.f32(i32 55, float %655, float %658, float %661, float %655, float %658, float %661)  ; Dot3(ax,ay,az,bx,by,bz)
  %663 = call float @dx.op.unary.f32(i32 25, float %662)  ; Rsqrt(value)
  %664 = fmul fast float %663, %338
  %665 = fmul fast float %664, %655
  %666 = fmul fast float %664, %658
  %667 = fmul fast float %661, %338
  %668 = fmul fast float %667, %663
  %669 = fmul fast float %539, %490
  %670 = call float @dx.op.tertiary.f32(i32 46, float %540, float %496, float %669)  ; FMad(a,b,c)
  %671 = call float @dx.op.tertiary.f32(i32 46, float %622, float %502, float %670)  ; FMad(a,b,c)
  %672 = fadd fast float %671, %508
  %673 = fmul fast float %539, %491
  %674 = call float @dx.op.tertiary.f32(i32 46, float %540, float %497, float %673)  ; FMad(a,b,c)
  %675 = call float @dx.op.tertiary.f32(i32 46, float %622, float %503, float %674)  ; FMad(a,b,c)
  %676 = fadd fast float %675, %509
  %677 = fmul fast float %539, %492
  %678 = call float @dx.op.tertiary.f32(i32 46, float %540, float %498, float %677)  ; FMad(a,b,c)
  %679 = call float @dx.op.tertiary.f32(i32 46, float %622, float %504, float %678)  ; FMad(a,b,c)
  %680 = fadd fast float %679, %510
  %681 = fmul fast float %539, %493
  %682 = call float @dx.op.tertiary.f32(i32 46, float %540, float %499, float %681)  ; FMad(a,b,c)
  %683 = call float @dx.op.tertiary.f32(i32 46, float %622, float %505, float %682)  ; FMad(a,b,c)
  %684 = fadd fast float %683, %511
  %685 = fdiv fast float 1.000000e+00, %684
  %686 = fmul fast float %685, %672
  %687 = fmul fast float %685, %676
  %688 = fmul fast float %685, %680
  %689 = fsub fast float -0.000000e+00, %638
  %690 = fsub fast float -0.000000e+00, %639
  %691 = fsub fast float -0.000000e+00, %640
  %692 = fsub fast float %341, %665
  %693 = fsub fast float %342, %666
  %694 = fsub fast float %343, %668
  %695 = fsub fast float %686, %692
  %696 = fsub fast float %687, %693
  %697 = fsub fast float %688, %694
  %698 = call float @dx.op.dot3.f32(i32 55, float %695, float %696, float %697, float %695, float %696, float %697)  ; Dot3(ax,ay,az,bx,by,bz)
  %699 = call float @dx.op.unary.f32(i32 25, float %698)  ; Rsqrt(value)
  %700 = fmul fast float %695, %699
  %701 = fmul fast float %696, %699
  %702 = fmul fast float %697, %699
  %703 = fsub fast float %520, %692
  %704 = fsub fast float %521, %693
  %705 = fsub fast float %522, %694
  %706 = call float @dx.op.dot3.f32(i32 55, float %689, float %690, float %691, float %703, float %704, float %705)  ; Dot3(ax,ay,az,bx,by,bz)
  %707 = call float @dx.op.dot3.f32(i32 55, float %689, float %690, float %691, float %700, float %701, float %702)  ; Dot3(ax,ay,az,bx,by,bz)
  %708 = fdiv fast float 1.000000e+00, %707
  %709 = fmul fast float %708, %706
  %710 = fmul fast float %709, %700
  %711 = fmul fast float %709, %701
  %712 = fmul fast float %709, %702
  %713 = fadd fast float %710, %692
  %714 = fadd fast float %711, %693
  %715 = fadd fast float %712, %694
  %716 = fadd fast float %665, %341
  %717 = fadd fast float %666, %342
  %718 = fadd fast float %668, %343
  %719 = fsub fast float %686, %716
  %720 = fsub fast float %687, %717
  %721 = fsub fast float %688, %718
  %722 = call float @dx.op.dot3.f32(i32 55, float %719, float %720, float %721, float %719, float %720, float %721)  ; Dot3(ax,ay,az,bx,by,bz)
  %723 = call float @dx.op.unary.f32(i32 25, float %722)  ; Rsqrt(value)
  %724 = fmul fast float %723, %719
  %725 = fmul fast float %723, %720
  %726 = fmul fast float %723, %721
  %727 = fsub fast float %520, %716
  %728 = fsub fast float %521, %717
  %729 = fsub fast float %522, %718
  %730 = call float @dx.op.dot3.f32(i32 55, float %689, float %690, float %691, float %727, float %728, float %729)  ; Dot3(ax,ay,az,bx,by,bz)
  %731 = call float @dx.op.dot3.f32(i32 55, float %689, float %690, float %691, float %724, float %725, float %726)  ; Dot3(ax,ay,az,bx,by,bz)
  %732 = fdiv fast float 1.000000e+00, %731
  %733 = fmul fast float %732, %730
  %734 = fmul fast float %733, %724
  %735 = fmul fast float %733, %725
  %736 = fmul fast float %733, %726
  %737 = fadd fast float %734, %716
  %738 = fadd fast float %735, %717
  %739 = fadd fast float %736, %718
  %740 = fmul fast float %713, %466
  %741 = call float @dx.op.tertiary.f32(i32 46, float %714, float %472, float %740)  ; FMad(a,b,c)
  %742 = call float @dx.op.tertiary.f32(i32 46, float %715, float %478, float %741)  ; FMad(a,b,c)
  %743 = fadd fast float %742, %484
  %744 = fmul fast float %713, %467
  %745 = call float @dx.op.tertiary.f32(i32 46, float %714, float %473, float %744)  ; FMad(a,b,c)
  %746 = call float @dx.op.tertiary.f32(i32 46, float %715, float %479, float %745)  ; FMad(a,b,c)
  %747 = fadd fast float %746, %485
  %748 = fmul fast float %713, %469
  %749 = call float @dx.op.tertiary.f32(i32 46, float %714, float %475, float %748)  ; FMad(a,b,c)
  %750 = call float @dx.op.tertiary.f32(i32 46, float %715, float %481, float %749)  ; FMad(a,b,c)
  %751 = fadd fast float %750, %487
  %752 = fmul fast float %737, %466
  %753 = call float @dx.op.tertiary.f32(i32 46, float %738, float %472, float %752)  ; FMad(a,b,c)
  %754 = call float @dx.op.tertiary.f32(i32 46, float %739, float %478, float %753)  ; FMad(a,b,c)
  %755 = fadd fast float %754, %484
  %756 = fmul fast float %737, %467
  %757 = call float @dx.op.tertiary.f32(i32 46, float %738, float %473, float %756)  ; FMad(a,b,c)
  %758 = call float @dx.op.tertiary.f32(i32 46, float %739, float %479, float %757)  ; FMad(a,b,c)
  %759 = fadd fast float %758, %485
  %760 = fmul fast float %737, %469
  %761 = call float @dx.op.tertiary.f32(i32 46, float %738, float %475, float %760)  ; FMad(a,b,c)
  %762 = call float @dx.op.tertiary.f32(i32 46, float %739, float %481, float %761)  ; FMad(a,b,c)
  %763 = fadd fast float %762, %487
  %764 = fdiv fast float 1.000000e+00, %751
  %765 = fmul fast float %764, %743
  %766 = fmul fast float %764, %747
  %767 = fdiv fast float 1.000000e+00, %763
  %768 = fmul fast float %767, %755
  %769 = fmul fast float %767, %759
  %770 = fsub fast float %768, %765
  %771 = fsub fast float %769, %766
  %772 = call float @dx.op.dot2.f32(i32 54, float %770, float %771, float %770, float %771)  ; Dot2(ax,ay,bx,by)
  %773 = call float @dx.op.unary.f32(i32 25, float %772)  ; Rsqrt(value)
  %774 = fmul fast float %770, %773
  %775 = fmul fast float %771, %773
  %776 = fmul fast float %770, %770
  %777 = fmul fast float %771, %771
  %778 = fadd fast float %776, %777
  %779 = call float @dx.op.unary.f32(i32 24, float %778)  ; Sqrt(value)
  %780 = fmul fast float %779, 5.000000e-01
  br i1 %515, label %873, label %781, !dx.controlflow.hints !58

; <label>:781                                     ; preds = %649
  %782 = fsub fast float %341, %333
  %783 = fsub fast float %342, %334
  %784 = fsub fast float %343, %335
  %785 = fsub fast float %686, %782
  %786 = fsub fast float %687, %783
  %787 = fsub fast float %688, %784
  %788 = call float @dx.op.dot3.f32(i32 55, float %785, float %786, float %787, float %785, float %786, float %787)  ; Dot3(ax,ay,az,bx,by,bz)
  %789 = call float @dx.op.unary.f32(i32 25, float %788)  ; Rsqrt(value)
  %790 = fmul fast float %789, %785
  %791 = fmul fast float %789, %786
  %792 = fmul fast float %789, %787
  %793 = fsub fast float %520, %782
  %794 = fsub fast float %521, %783
  %795 = fsub fast float %522, %784
  %796 = call float @dx.op.dot3.f32(i32 55, float %689, float %690, float %691, float %793, float %794, float %795)  ; Dot3(ax,ay,az,bx,by,bz)
  %797 = call float @dx.op.dot3.f32(i32 55, float %689, float %690, float %691, float %790, float %791, float %792)  ; Dot3(ax,ay,az,bx,by,bz)
  %798 = fdiv fast float 1.000000e+00, %797
  %799 = fmul fast float %798, %796
  %800 = fmul fast float %799, %790
  %801 = fmul fast float %799, %791
  %802 = fmul fast float %799, %792
  %803 = fadd fast float %800, %782
  %804 = fadd fast float %801, %783
  %805 = fadd fast float %802, %784
  %806 = fadd fast float %341, %333
  %807 = fadd fast float %342, %334
  %808 = fadd fast float %343, %335
  %809 = fsub fast float %686, %806
  %810 = fsub fast float %687, %807
  %811 = fsub fast float %688, %808
  %812 = call float @dx.op.dot3.f32(i32 55, float %809, float %810, float %811, float %809, float %810, float %811)  ; Dot3(ax,ay,az,bx,by,bz)
  %813 = call float @dx.op.unary.f32(i32 25, float %812)  ; Rsqrt(value)
  %814 = fmul fast float %813, %809
  %815 = fmul fast float %813, %810
  %816 = fmul fast float %813, %811
  %817 = fsub fast float %520, %806
  %818 = fsub fast float %521, %807
  %819 = fsub fast float %522, %808
  %820 = call float @dx.op.dot3.f32(i32 55, float %689, float %690, float %691, float %817, float %818, float %819)  ; Dot3(ax,ay,az,bx,by,bz)
  %821 = call float @dx.op.dot3.f32(i32 55, float %689, float %690, float %691, float %814, float %815, float %816)  ; Dot3(ax,ay,az,bx,by,bz)
  %822 = fdiv fast float 1.000000e+00, %821
  %823 = fmul fast float %822, %820
  %824 = fmul fast float %823, %814
  %825 = fmul fast float %823, %815
  %826 = fmul fast float %823, %816
  %827 = fadd fast float %824, %806
  %828 = fadd fast float %825, %807
  %829 = fadd fast float %826, %808
  %830 = fmul fast float %803, %466
  %831 = call float @dx.op.tertiary.f32(i32 46, float %804, float %472, float %830)  ; FMad(a,b,c)
  %832 = call float @dx.op.tertiary.f32(i32 46, float %805, float %478, float %831)  ; FMad(a,b,c)
  %833 = fadd fast float %832, %484
  %834 = fmul fast float %803, %467
  %835 = call float @dx.op.tertiary.f32(i32 46, float %804, float %473, float %834)  ; FMad(a,b,c)
  %836 = call float @dx.op.tertiary.f32(i32 46, float %805, float %479, float %835)  ; FMad(a,b,c)
  %837 = fadd fast float %836, %485
  %838 = fmul fast float %803, %469
  %839 = call float @dx.op.tertiary.f32(i32 46, float %804, float %475, float %838)  ; FMad(a,b,c)
  %840 = call float @dx.op.tertiary.f32(i32 46, float %805, float %481, float %839)  ; FMad(a,b,c)
  %841 = fadd fast float %840, %487
  %842 = fmul fast float %827, %466
  %843 = call float @dx.op.tertiary.f32(i32 46, float %828, float %472, float %842)  ; FMad(a,b,c)
  %844 = call float @dx.op.tertiary.f32(i32 46, float %829, float %478, float %843)  ; FMad(a,b,c)
  %845 = fadd fast float %844, %484
  %846 = fmul fast float %827, %467
  %847 = call float @dx.op.tertiary.f32(i32 46, float %828, float %473, float %846)  ; FMad(a,b,c)
  %848 = call float @dx.op.tertiary.f32(i32 46, float %829, float %479, float %847)  ; FMad(a,b,c)
  %849 = fadd fast float %848, %485
  %850 = fmul fast float %827, %469
  %851 = call float @dx.op.tertiary.f32(i32 46, float %828, float %475, float %850)  ; FMad(a,b,c)
  %852 = call float @dx.op.tertiary.f32(i32 46, float %829, float %481, float %851)  ; FMad(a,b,c)
  %853 = fadd fast float %852, %487
  %854 = fdiv fast float 1.000000e+00, %841
  %855 = fmul fast float %854, %833
  %856 = fmul fast float %854, %837
  %857 = fdiv fast float 1.000000e+00, %853
  %858 = fmul fast float %857, %845
  %859 = fmul fast float %857, %849
  %860 = fsub fast float %858, %855
  %861 = fsub fast float %859, %856
  %862 = call float @dx.op.dot2.f32(i32 54, float %860, float %861, float %860, float %861)  ; Dot2(ax,ay,bx,by)
  %863 = call float @dx.op.unary.f32(i32 25, float %862)  ; Rsqrt(value)
  %864 = fmul fast float %860, %863
  %865 = fmul fast float %861, %863
  %866 = fmul fast float %860, %860
  %867 = fmul fast float %861, %861
  %868 = fadd fast float %866, %867
  %869 = call float @dx.op.unary.f32(i32 24, float %868)  ; Sqrt(value)
  %870 = fmul fast float %869, 5.000000e-01
  %871 = fcmp fast olt float %870, %780
  br i1 %871, label %872, label %873, !dx.controlflow.hints !59

; <label>:872                                     ; preds = %781
  br label %873

; <label>:873                                     ; preds = %872, %781, %649
  %874 = phi float [ %780, %649 ], [ %870, %872 ], [ %780, %781 ]
  %875 = phi float [ %780, %649 ], [ %780, %872 ], [ %870, %781 ]
  %876 = phi float [ %774, %649 ], [ %774, %872 ], [ %864, %781 ]
  %877 = phi float [ %775, %649 ], [ %775, %872 ], [ %865, %781 ]
  %878 = fmul fast float %874, %461
  %879 = fdiv fast float %878, %875
  %880 = fsub fast float %461, %879
  %881 = fmul fast float %876, %876
  %882 = fmul fast float %881, %880
  %883 = fadd fast float %882, %879
  %884 = fmul fast float %877, %876
  %885 = fmul fast float %884, %880
  %886 = fmul fast float %877, %877
  %887 = fmul fast float %886, %880
  %888 = fadd fast float %887, %879
  %889 = fmul fast float %883, %545
  %890 = call float @dx.op.tertiary.f32(i32 46, float %544, float %885, float %889)  ; FMad(a,b,c)
  %891 = fmul fast float %885, %545
  %892 = call float @dx.op.tertiary.f32(i32 46, float %544, float %888, float %891)  ; FMad(a,b,c)
  %893 = fmul fast float %883, %546
  %894 = call float @dx.op.tertiary.f32(i32 46, float %545, float %885, float %893)  ; FMad(a,b,c)
  %895 = fmul fast float %885, %546
  %896 = call float @dx.op.tertiary.f32(i32 46, float %545, float %888, float %895)  ; FMad(a,b,c)
  br label %897

; <label>:897                                     ; preds = %935, %873
  %898 = phi float [ 0.000000e+00, %873 ], [ %936, %935 ]
  %899 = phi float [ 0.000000e+00, %873 ], [ %937, %935 ]
  %900 = phi float [ 0.000000e+00, %873 ], [ %938, %935 ]
  %901 = phi float [ 0.000000e+00, %873 ], [ %939, %935 ]
  %902 = phi i32 [ 0, %873 ], [ %940, %935 ]
  %903 = mul i32 %902, 2
  %904 = add i32 0, %903
  %905 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %904
  %906 = load float, float* %905, align 4
  %907 = mul i32 %902, 2
  %908 = add i32 1, %907
  %909 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %908
  %910 = load float, float* %909, align 4
  %911 = fmul fast float %906, %890
  %912 = call float @dx.op.tertiary.f32(i32 46, float %910, float %894, float %911)  ; FMad(a,b,c)
  %913 = fmul fast float %906, %892
  %914 = call float @dx.op.tertiary.f32(i32 46, float %910, float %896, float %913)  ; FMad(a,b,c)
  %915 = fadd fast float %912, %539
  %916 = fadd fast float %914, %540
  %917 = fmul fast float %915, %456
  %918 = fmul fast float %916, %456
  %919 = call float @dx.op.binary.f32(i32 35, float %917, float %452)  ; FMax(a,b)
  %920 = call float @dx.op.binary.f32(i32 35, float %918, float %452)  ; FMax(a,b)
  %921 = call float @dx.op.binary.f32(i32 36, float %919, float %453)  ; FMin(a,b)
  %922 = call float @dx.op.binary.f32(i32 36, float %920, float %453)  ; FMin(a,b)
  %923 = fadd fast float %921, %450
  %924 = fadd fast float %922, %451
  %925 = uitofp i32 %512 to float
  %926 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %923, float %924, float %925, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %927 = extractvalue %dx.types.ResRet.f32 %926, 0
  %928 = fadd fast float %542, %460
  %929 = fcmp fast olt float %928, %927
  br i1 %929, label %930, label %935, !dx.controlflow.hints !60

; <label>:930                                     ; preds = %897
  %931 = fadd fast float %927, %900
  %932 = fadd fast float %912, %898
  %933 = fadd fast float %914, %899
  %934 = fadd fast float %901, 1.000000e+00
  br label %935

; <label>:935                                     ; preds = %930, %897
  %936 = phi float [ %932, %930 ], [ %898, %897 ]
  %937 = phi float [ %933, %930 ], [ %899, %897 ]
  %938 = phi float [ %931, %930 ], [ %900, %897 ]
  %939 = phi float [ %934, %930 ], [ %901, %897 ]
  %940 = add nuw nsw i32 %902, 1
  %941 = icmp eq i32 %940, 8
  br i1 %941, label %942, label %897

; <label>:942                                     ; preds = %935
  %943 = fdiv fast float 1.000000e+00, %939
  %944 = fcmp fast oeq float %939, 0.000000e+00
  %945 = fmul fast float %943, %938
  %946 = select i1 %944, float -1.000000e+00, float %945
  %947 = fcmp fast olt float %946, 0.000000e+00
  br i1 %947, label %1234, label %948, !dx.controlflow.hints !61

; <label>:948                                     ; preds = %942
  %949 = fmul fast float %943, %937
  %950 = select i1 %944, float 0.000000e+00, float %949
  %951 = fmul fast float %943, %936
  %952 = select i1 %944, float 0.000000e+00, float %951
  %953 = fadd fast float %952, %539
  %954 = fadd fast float %950, %540
  br i1 %515, label %955, label %959, !dx.controlflow.hints !57

; <label>:955                                     ; preds = %948
  %956 = fcmp fast olt float %639, 0x3FE6666660000000
  %957 = select i1 %956, float 1.000000e+00, float 0.000000e+00
  %958 = select i1 %956, float 0.000000e+00, float 1.000000e+00
  br label %959

; <label>:959                                     ; preds = %955, %948
  %960 = phi float [ 0.000000e+00, %955 ], [ %642, %948 ]
  %961 = phi float [ %957, %955 ], [ %643, %948 ]
  %962 = phi float [ %958, %955 ], [ %644, %948 ]
  %963 = fmul fast float %961, %640
  %964 = fmul fast float %962, %639
  %965 = fsub fast float %963, %964
  %966 = fmul fast float %962, %638
  %967 = fmul fast float %960, %640
  %968 = fsub fast float %966, %967
  %969 = fmul fast float %960, %639
  %970 = fmul fast float %961, %638
  %971 = fsub fast float %969, %970
  %972 = call float @dx.op.dot3.f32(i32 55, float %965, float %968, float %971, float %965, float %968, float %971)  ; Dot3(ax,ay,az,bx,by,bz)
  %973 = call float @dx.op.unary.f32(i32 25, float %972)  ; Rsqrt(value)
  %974 = fmul fast float %973, %338
  %975 = fmul fast float %974, %965
  %976 = fmul fast float %974, %968
  %977 = fmul fast float %971, %338
  %978 = fmul fast float %977, %973
  %979 = fmul fast float %953, %490
  %980 = call float @dx.op.tertiary.f32(i32 46, float %954, float %496, float %979)  ; FMad(a,b,c)
  %981 = call float @dx.op.tertiary.f32(i32 46, float %946, float %502, float %980)  ; FMad(a,b,c)
  %982 = fadd fast float %981, %508
  %983 = fmul fast float %953, %491
  %984 = call float @dx.op.tertiary.f32(i32 46, float %954, float %497, float %983)  ; FMad(a,b,c)
  %985 = call float @dx.op.tertiary.f32(i32 46, float %946, float %503, float %984)  ; FMad(a,b,c)
  %986 = fadd fast float %985, %509
  %987 = fmul fast float %953, %492
  %988 = call float @dx.op.tertiary.f32(i32 46, float %954, float %498, float %987)  ; FMad(a,b,c)
  %989 = call float @dx.op.tertiary.f32(i32 46, float %946, float %504, float %988)  ; FMad(a,b,c)
  %990 = fadd fast float %989, %510
  %991 = fmul fast float %953, %493
  %992 = call float @dx.op.tertiary.f32(i32 46, float %954, float %499, float %991)  ; FMad(a,b,c)
  %993 = call float @dx.op.tertiary.f32(i32 46, float %946, float %505, float %992)  ; FMad(a,b,c)
  %994 = fadd fast float %993, %511
  %995 = fdiv fast float 1.000000e+00, %994
  %996 = fmul fast float %995, %982
  %997 = fmul fast float %995, %986
  %998 = fmul fast float %995, %990
  %999 = fsub fast float %341, %975
  %1000 = fsub fast float %342, %976
  %1001 = fsub fast float %343, %978
  %1002 = fsub fast float %996, %999
  %1003 = fsub fast float %997, %1000
  %1004 = fsub fast float %998, %1001
  %1005 = call float @dx.op.dot3.f32(i32 55, float %1002, float %1003, float %1004, float %1002, float %1003, float %1004)  ; Dot3(ax,ay,az,bx,by,bz)
  %1006 = call float @dx.op.unary.f32(i32 25, float %1005)  ; Rsqrt(value)
  %1007 = fmul fast float %1002, %1006
  %1008 = fmul fast float %1003, %1006
  %1009 = fmul fast float %1004, %1006
  %1010 = fsub fast float %520, %999
  %1011 = fsub fast float %521, %1000
  %1012 = fsub fast float %522, %1001
  %1013 = call float @dx.op.dot3.f32(i32 55, float %689, float %690, float %691, float %1010, float %1011, float %1012)  ; Dot3(ax,ay,az,bx,by,bz)
  %1014 = call float @dx.op.dot3.f32(i32 55, float %689, float %690, float %691, float %1007, float %1008, float %1009)  ; Dot3(ax,ay,az,bx,by,bz)
  %1015 = fdiv fast float 1.000000e+00, %1014
  %1016 = fmul fast float %1015, %1013
  %1017 = fmul fast float %1016, %1007
  %1018 = fmul fast float %1016, %1008
  %1019 = fmul fast float %1016, %1009
  %1020 = fadd fast float %1017, %999
  %1021 = fadd fast float %1018, %1000
  %1022 = fadd fast float %1019, %1001
  %1023 = fadd fast float %975, %341
  %1024 = fadd fast float %976, %342
  %1025 = fadd fast float %978, %343
  %1026 = fsub fast float %996, %1023
  %1027 = fsub fast float %997, %1024
  %1028 = fsub fast float %998, %1025
  %1029 = call float @dx.op.dot3.f32(i32 55, float %1026, float %1027, float %1028, float %1026, float %1027, float %1028)  ; Dot3(ax,ay,az,bx,by,bz)
  %1030 = call float @dx.op.unary.f32(i32 25, float %1029)  ; Rsqrt(value)
  %1031 = fmul fast float %1030, %1026
  %1032 = fmul fast float %1030, %1027
  %1033 = fmul fast float %1030, %1028
  %1034 = fsub fast float %520, %1023
  %1035 = fsub fast float %521, %1024
  %1036 = fsub fast float %522, %1025
  %1037 = call float @dx.op.dot3.f32(i32 55, float %689, float %690, float %691, float %1034, float %1035, float %1036)  ; Dot3(ax,ay,az,bx,by,bz)
  %1038 = call float @dx.op.dot3.f32(i32 55, float %689, float %690, float %691, float %1031, float %1032, float %1033)  ; Dot3(ax,ay,az,bx,by,bz)
  %1039 = fdiv fast float 1.000000e+00, %1038
  %1040 = fmul fast float %1039, %1037
  %1041 = fmul fast float %1040, %1031
  %1042 = fmul fast float %1040, %1032
  %1043 = fmul fast float %1040, %1033
  %1044 = fadd fast float %1041, %1023
  %1045 = fadd fast float %1042, %1024
  %1046 = fadd fast float %1043, %1025
  %1047 = fmul fast float %1020, %466
  %1048 = call float @dx.op.tertiary.f32(i32 46, float %1021, float %472, float %1047)  ; FMad(a,b,c)
  %1049 = call float @dx.op.tertiary.f32(i32 46, float %1022, float %478, float %1048)  ; FMad(a,b,c)
  %1050 = fadd fast float %1049, %484
  %1051 = fmul fast float %1020, %467
  %1052 = call float @dx.op.tertiary.f32(i32 46, float %1021, float %473, float %1051)  ; FMad(a,b,c)
  %1053 = call float @dx.op.tertiary.f32(i32 46, float %1022, float %479, float %1052)  ; FMad(a,b,c)
  %1054 = fadd fast float %1053, %485
  %1055 = fmul fast float %1020, %469
  %1056 = call float @dx.op.tertiary.f32(i32 46, float %1021, float %475, float %1055)  ; FMad(a,b,c)
  %1057 = call float @dx.op.tertiary.f32(i32 46, float %1022, float %481, float %1056)  ; FMad(a,b,c)
  %1058 = fadd fast float %1057, %487
  %1059 = fmul fast float %1044, %466
  %1060 = call float @dx.op.tertiary.f32(i32 46, float %1045, float %472, float %1059)  ; FMad(a,b,c)
  %1061 = call float @dx.op.tertiary.f32(i32 46, float %1046, float %478, float %1060)  ; FMad(a,b,c)
  %1062 = fadd fast float %1061, %484
  %1063 = fmul fast float %1044, %467
  %1064 = call float @dx.op.tertiary.f32(i32 46, float %1045, float %473, float %1063)  ; FMad(a,b,c)
  %1065 = call float @dx.op.tertiary.f32(i32 46, float %1046, float %479, float %1064)  ; FMad(a,b,c)
  %1066 = fadd fast float %1065, %485
  %1067 = fmul fast float %1044, %469
  %1068 = call float @dx.op.tertiary.f32(i32 46, float %1045, float %475, float %1067)  ; FMad(a,b,c)
  %1069 = call float @dx.op.tertiary.f32(i32 46, float %1046, float %481, float %1068)  ; FMad(a,b,c)
  %1070 = fadd fast float %1069, %487
  %1071 = fdiv fast float 1.000000e+00, %1058
  %1072 = fmul fast float %1071, %1050
  %1073 = fmul fast float %1071, %1054
  %1074 = fdiv fast float 1.000000e+00, %1070
  %1075 = fmul fast float %1074, %1062
  %1076 = fmul fast float %1074, %1066
  %1077 = fsub fast float %1075, %1072
  %1078 = fsub fast float %1076, %1073
  %1079 = call float @dx.op.dot2.f32(i32 54, float %1077, float %1078, float %1077, float %1078)  ; Dot2(ax,ay,bx,by)
  %1080 = call float @dx.op.unary.f32(i32 25, float %1079)  ; Rsqrt(value)
  %1081 = fmul fast float %1077, %1080
  %1082 = fmul fast float %1078, %1080
  %1083 = fmul fast float %1077, %1077
  %1084 = fmul fast float %1078, %1078
  %1085 = fadd fast float %1083, %1084
  %1086 = call float @dx.op.unary.f32(i32 24, float %1085)  ; Sqrt(value)
  %1087 = fmul fast float %1086, 5.000000e-01
  br i1 %515, label %1180, label %1088, !dx.controlflow.hints !58

; <label>:1088                                    ; preds = %959
  %1089 = fsub fast float %341, %333
  %1090 = fsub fast float %342, %334
  %1091 = fsub fast float %343, %335
  %1092 = fsub fast float %996, %1089
  %1093 = fsub fast float %997, %1090
  %1094 = fsub fast float %998, %1091
  %1095 = call float @dx.op.dot3.f32(i32 55, float %1092, float %1093, float %1094, float %1092, float %1093, float %1094)  ; Dot3(ax,ay,az,bx,by,bz)
  %1096 = call float @dx.op.unary.f32(i32 25, float %1095)  ; Rsqrt(value)
  %1097 = fmul fast float %1096, %1092
  %1098 = fmul fast float %1096, %1093
  %1099 = fmul fast float %1096, %1094
  %1100 = fsub fast float %520, %1089
  %1101 = fsub fast float %521, %1090
  %1102 = fsub fast float %522, %1091
  %1103 = call float @dx.op.dot3.f32(i32 55, float %689, float %690, float %691, float %1100, float %1101, float %1102)  ; Dot3(ax,ay,az,bx,by,bz)
  %1104 = call float @dx.op.dot3.f32(i32 55, float %689, float %690, float %691, float %1097, float %1098, float %1099)  ; Dot3(ax,ay,az,bx,by,bz)
  %1105 = fdiv fast float 1.000000e+00, %1104
  %1106 = fmul fast float %1105, %1103
  %1107 = fmul fast float %1106, %1097
  %1108 = fmul fast float %1106, %1098
  %1109 = fmul fast float %1106, %1099
  %1110 = fadd fast float %1107, %1089
  %1111 = fadd fast float %1108, %1090
  %1112 = fadd fast float %1109, %1091
  %1113 = fadd fast float %341, %333
  %1114 = fadd fast float %342, %334
  %1115 = fadd fast float %343, %335
  %1116 = fsub fast float %996, %1113
  %1117 = fsub fast float %997, %1114
  %1118 = fsub fast float %998, %1115
  %1119 = call float @dx.op.dot3.f32(i32 55, float %1116, float %1117, float %1118, float %1116, float %1117, float %1118)  ; Dot3(ax,ay,az,bx,by,bz)
  %1120 = call float @dx.op.unary.f32(i32 25, float %1119)  ; Rsqrt(value)
  %1121 = fmul fast float %1120, %1116
  %1122 = fmul fast float %1120, %1117
  %1123 = fmul fast float %1120, %1118
  %1124 = fsub fast float %520, %1113
  %1125 = fsub fast float %521, %1114
  %1126 = fsub fast float %522, %1115
  %1127 = call float @dx.op.dot3.f32(i32 55, float %689, float %690, float %691, float %1124, float %1125, float %1126)  ; Dot3(ax,ay,az,bx,by,bz)
  %1128 = call float @dx.op.dot3.f32(i32 55, float %689, float %690, float %691, float %1121, float %1122, float %1123)  ; Dot3(ax,ay,az,bx,by,bz)
  %1129 = fdiv fast float 1.000000e+00, %1128
  %1130 = fmul fast float %1129, %1127
  %1131 = fmul fast float %1130, %1121
  %1132 = fmul fast float %1130, %1122
  %1133 = fmul fast float %1130, %1123
  %1134 = fadd fast float %1131, %1113
  %1135 = fadd fast float %1132, %1114
  %1136 = fadd fast float %1133, %1115
  %1137 = fmul fast float %1110, %466
  %1138 = call float @dx.op.tertiary.f32(i32 46, float %1111, float %472, float %1137)  ; FMad(a,b,c)
  %1139 = call float @dx.op.tertiary.f32(i32 46, float %1112, float %478, float %1138)  ; FMad(a,b,c)
  %1140 = fadd fast float %1139, %484
  %1141 = fmul fast float %1110, %467
  %1142 = call float @dx.op.tertiary.f32(i32 46, float %1111, float %473, float %1141)  ; FMad(a,b,c)
  %1143 = call float @dx.op.tertiary.f32(i32 46, float %1112, float %479, float %1142)  ; FMad(a,b,c)
  %1144 = fadd fast float %1143, %485
  %1145 = fmul fast float %1110, %469
  %1146 = call float @dx.op.tertiary.f32(i32 46, float %1111, float %475, float %1145)  ; FMad(a,b,c)
  %1147 = call float @dx.op.tertiary.f32(i32 46, float %1112, float %481, float %1146)  ; FMad(a,b,c)
  %1148 = fadd fast float %1147, %487
  %1149 = fmul fast float %1134, %466
  %1150 = call float @dx.op.tertiary.f32(i32 46, float %1135, float %472, float %1149)  ; FMad(a,b,c)
  %1151 = call float @dx.op.tertiary.f32(i32 46, float %1136, float %478, float %1150)  ; FMad(a,b,c)
  %1152 = fadd fast float %1151, %484
  %1153 = fmul fast float %1134, %467
  %1154 = call float @dx.op.tertiary.f32(i32 46, float %1135, float %473, float %1153)  ; FMad(a,b,c)
  %1155 = call float @dx.op.tertiary.f32(i32 46, float %1136, float %479, float %1154)  ; FMad(a,b,c)
  %1156 = fadd fast float %1155, %485
  %1157 = fmul fast float %1134, %469
  %1158 = call float @dx.op.tertiary.f32(i32 46, float %1135, float %475, float %1157)  ; FMad(a,b,c)
  %1159 = call float @dx.op.tertiary.f32(i32 46, float %1136, float %481, float %1158)  ; FMad(a,b,c)
  %1160 = fadd fast float %1159, %487
  %1161 = fdiv fast float 1.000000e+00, %1148
  %1162 = fmul fast float %1161, %1140
  %1163 = fmul fast float %1161, %1144
  %1164 = fdiv fast float 1.000000e+00, %1160
  %1165 = fmul fast float %1164, %1152
  %1166 = fmul fast float %1164, %1156
  %1167 = fsub fast float %1165, %1162
  %1168 = fsub fast float %1166, %1163
  %1169 = call float @dx.op.dot2.f32(i32 54, float %1167, float %1168, float %1167, float %1168)  ; Dot2(ax,ay,bx,by)
  %1170 = call float @dx.op.unary.f32(i32 25, float %1169)  ; Rsqrt(value)
  %1171 = fmul fast float %1167, %1170
  %1172 = fmul fast float %1168, %1170
  %1173 = fmul fast float %1167, %1167
  %1174 = fmul fast float %1168, %1168
  %1175 = fadd fast float %1173, %1174
  %1176 = call float @dx.op.unary.f32(i32 24, float %1175)  ; Sqrt(value)
  %1177 = fmul fast float %1176, 5.000000e-01
  %1178 = fcmp fast olt float %1177, %1087
  br i1 %1178, label %1179, label %1180, !dx.controlflow.hints !59

; <label>:1179                                    ; preds = %1088
  br label %1180

; <label>:1180                                    ; preds = %1179, %1088, %959
  %1181 = phi float [ %1087, %959 ], [ %1177, %1179 ], [ %1087, %1088 ]
  %1182 = phi float [ %1087, %959 ], [ %1087, %1179 ], [ %1177, %1088 ]
  %1183 = phi float [ %1081, %959 ], [ %1081, %1179 ], [ %1171, %1088 ]
  %1184 = phi float [ %1082, %959 ], [ %1082, %1179 ], [ %1172, %1088 ]
  %1185 = fsub fast float %1182, %1181
  %1186 = fmul fast float %1183, %1183
  %1187 = fmul fast float %1186, %1185
  %1188 = fadd fast float %1187, %1181
  %1189 = fmul fast float %1183, %1185
  %1190 = fmul fast float %1189, %1184
  %1191 = fmul fast float %1184, %1184
  %1192 = fmul fast float %1191, %1185
  %1193 = fadd fast float %1192, %1181
  %1194 = fmul fast float %1188, %545
  %1195 = call float @dx.op.tertiary.f32(i32 46, float %544, float %1190, float %1194)  ; FMad(a,b,c)
  %1196 = fmul fast float %1190, %545
  %1197 = call float @dx.op.tertiary.f32(i32 46, float %544, float %1193, float %1196)  ; FMad(a,b,c)
  %1198 = fmul fast float %1188, %546
  %1199 = call float @dx.op.tertiary.f32(i32 46, float %545, float %1190, float %1198)  ; FMad(a,b,c)
  %1200 = fmul fast float %1190, %546
  %1201 = call float @dx.op.tertiary.f32(i32 46, float %545, float %1193, float %1200)  ; FMad(a,b,c)
  br label %1202

; <label>:1202                                    ; preds = %1202, %1180
  %1203 = phi float [ 0.000000e+00, %1180 ], [ %1229, %1202 ]
  %1204 = phi i32 [ 0, %1180 ], [ %1230, %1202 ]
  %1205 = mul i32 %1204, 2
  %1206 = add i32 0, %1205
  %1207 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1206
  %1208 = load float, float* %1207, align 4
  %1209 = mul i32 %1204, 2
  %1210 = add i32 1, %1209
  %1211 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1210
  %1212 = load float, float* %1211, align 4
  %1213 = fmul fast float %1208, %1195
  %1214 = call float @dx.op.tertiary.f32(i32 46, float %1212, float %1199, float %1213)  ; FMad(a,b,c)
  %1215 = fmul fast float %1208, %1197
  %1216 = call float @dx.op.tertiary.f32(i32 46, float %1212, float %1201, float %1215)  ; FMad(a,b,c)
  %1217 = fadd fast float %1214, %539
  %1218 = fadd fast float %1216, %540
  %1219 = fmul fast float %1217, %456
  %1220 = fmul fast float %1218, %456
  %1221 = call float @dx.op.binary.f32(i32 35, float %1219, float %452)  ; FMax(a,b)
  %1222 = call float @dx.op.binary.f32(i32 35, float %1220, float %452)  ; FMax(a,b)
  %1223 = call float @dx.op.binary.f32(i32 36, float %1221, float %453)  ; FMin(a,b)
  %1224 = call float @dx.op.binary.f32(i32 36, float %1222, float %453)  ; FMin(a,b)
  %1225 = fadd fast float %1223, %450
  %1226 = fadd fast float %1224, %451
  %1227 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %18, float %1225, float %1226, float %925, float undef, i32 0, i32 0, i32 undef, float %928)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1228 = extractvalue %dx.types.ResRet.f32 %1227, 0
  %1229 = fadd fast float %1228, %1203
  %1230 = add nuw nsw i32 %1204, 1
  %1231 = icmp eq i32 %1230, 8
  br i1 %1231, label %1232, label %1202

; <label>:1232                                    ; preds = %1202
  %1233 = fmul fast float %1229, 1.250000e-01
  br label %1234

; <label>:1234                                    ; preds = %1232, %942, %591
  %1235 = phi float [ %618, %591 ], [ %1233, %1232 ], [ 1.000000e+00, %942 ]
  %1236 = fadd fast float %1235, -1.000000e+00
  %1237 = fmul fast float %1236, %429
  %1238 = fadd fast float %1237, 1.000000e+00
  %1239 = fmul fast float %1238, %441
  br label %1240

; <label>:1240                                    ; preds = %1234, %408
  %1241 = phi float [ %1239, %1234 ], [ %441, %408 ]
  %1242 = call float @dx.op.binary.f32(i32 36, float %1241, float %1241)  ; FMin(a,b)
  %1243 = call float @dx.op.binary.f32(i32 36, float %1241, float %1242)  ; FMin(a,b)
  %1244 = fcmp fast ogt float %1243, 0x3F10000000000000
  %1245 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %1244)  ; WaveAnyTrue(cond)
  %1246 = icmp ugt i32 %184, 63
  br i1 %1246, label %1276, label %1247, !dx.controlflow.hints !62

; <label>:1247                                    ; preds = %1240
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1248 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %1248, label %1249, label %1252, !dx.controlflow.hints !63

; <label>:1249                                    ; preds = %1247
  %1250 = zext i1 %1245 to i32
  %1251 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %185
  store i32 %1250, i32 addrspace(3)* %1251, align 4, !tbaa !38
  br label %1252

; <label>:1252                                    ; preds = %1249, %1247
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1253 = icmp eq i32 %184, 32
  br i1 %1253, label %1254, label %1260, !dx.controlflow.hints !64

; <label>:1254                                    ; preds = %1252
  %1255 = xor i32 %185, 1
  %1256 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1255
  %1257 = load i32, i32 addrspace(3)* %1256, align 4, !tbaa !38
  %1258 = icmp ne i32 %1257, 0
  %1259 = or i1 %1245, %1258
  br label %1276

; <label>:1260                                    ; preds = %1252
  %1261 = icmp eq i32 %184, 16
  br i1 %1261, label %1262, label %1276, !dx.controlflow.hints !65

; <label>:1262                                    ; preds = %1260
  %1263 = xor i32 %185, 1
  %1264 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1263
  %1265 = load i32, i32 addrspace(3)* %1264, align 4, !tbaa !38
  %1266 = xor i32 %185, 2
  %1267 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1266
  %1268 = load i32, i32 addrspace(3)* %1267, align 4, !tbaa !38
  %1269 = or i32 %1268, %1265
  %1270 = xor i32 %185, 3
  %1271 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1270
  %1272 = load i32, i32 addrspace(3)* %1271, align 4, !tbaa !38
  %1273 = or i32 %1269, %1272
  %1274 = icmp ne i32 %1273, 0
  %1275 = or i1 %1245, %1274
  br label %1276

; <label>:1276                                    ; preds = %1262, %1260, %1254, %1240
  %1277 = phi i1 [ %1259, %1254 ], [ %1275, %1262 ], [ %1245, %1240 ], [ false, %1260 ]
  %1278 = select i1 %1277, i32 %320, i32 0
  %1279 = or i32 %315, %1278
  %1280 = lshr i32 %164, 5
  %1281 = lshr i32 %165, 5
  %1282 = fcmp fast olt float %1241, 0x3F10000000000000
  %1283 = call i1 @dx.op.waveAllTrue(i32 114, i1 %1282)  ; WaveAllTrue(cond)
  br i1 %1246, label %1315, label %1284, !dx.controlflow.hints !66

; <label>:1284                                    ; preds = %1276
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1285 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %1285, label %1286, label %1289, !dx.controlflow.hints !67

; <label>:1286                                    ; preds = %1284
  %1287 = zext i1 %1283 to i32
  %1288 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %185
  store i32 %1287, i32 addrspace(3)* %1288, align 4, !tbaa !38
  br label %1289

; <label>:1289                                    ; preds = %1286, %1284
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1290 = icmp eq i32 %184, 32
  br i1 %1290, label %1291, label %1297, !dx.controlflow.hints !68

; <label>:1291                                    ; preds = %1289
  %1292 = xor i32 %185, 1
  %1293 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1292
  %1294 = load i32, i32 addrspace(3)* %1293, align 4, !tbaa !38
  %1295 = icmp ne i32 %1294, 0
  %1296 = and i1 %1283, %1295
  br label %1315

; <label>:1297                                    ; preds = %1289
  %1298 = icmp eq i32 %184, 16
  br i1 %1298, label %1299, label %1315, !dx.controlflow.hints !69

; <label>:1299                                    ; preds = %1297
  %1300 = xor i32 %185, 1
  %1301 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1300
  %1302 = load i32, i32 addrspace(3)* %1301, align 4, !tbaa !38
  %1303 = icmp ne i32 %1302, 0
  %1304 = and i1 %1283, %1303
  %1305 = xor i32 %185, 2
  %1306 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1305
  %1307 = load i32, i32 addrspace(3)* %1306, align 4, !tbaa !38
  %1308 = icmp ne i32 %1307, 0
  %1309 = and i1 %1304, %1308
  %1310 = xor i32 %185, 3
  %1311 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1310
  %1312 = load i32, i32 addrspace(3)* %1311, align 4, !tbaa !38
  %1313 = icmp ne i32 %1312, 0
  %1314 = and i1 %1309, %1313
  br label %1315

; <label>:1315                                    ; preds = %1299, %1297, %1291, %1276
  %1316 = phi i1 [ %1296, %1291 ], [ %1314, %1299 ], [ %1283, %1276 ], [ false, %1297 ]
  %1317 = fcmp fast ogt float %1241, 0x3FEFFF8000000000
  %1318 = call i1 @dx.op.waveAllTrue(i32 114, i1 %1317)  ; WaveAllTrue(cond)
  br i1 %1246, label %1350, label %1319, !dx.controlflow.hints !66

; <label>:1319                                    ; preds = %1315
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1320 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %1320, label %1321, label %1324, !dx.controlflow.hints !67

; <label>:1321                                    ; preds = %1319
  %1322 = zext i1 %1318 to i32
  %1323 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %185
  store i32 %1322, i32 addrspace(3)* %1323, align 4, !tbaa !38
  br label %1324

; <label>:1324                                    ; preds = %1321, %1319
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1325 = icmp eq i32 %184, 32
  br i1 %1325, label %1326, label %1332, !dx.controlflow.hints !68

; <label>:1326                                    ; preds = %1324
  %1327 = xor i32 %185, 1
  %1328 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1327
  %1329 = load i32, i32 addrspace(3)* %1328, align 4, !tbaa !38
  %1330 = icmp ne i32 %1329, 0
  %1331 = and i1 %1318, %1330
  br label %1350

; <label>:1332                                    ; preds = %1324
  %1333 = icmp eq i32 %184, 16
  br i1 %1333, label %1334, label %1350, !dx.controlflow.hints !69

; <label>:1334                                    ; preds = %1332
  %1335 = xor i32 %185, 1
  %1336 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1335
  %1337 = load i32, i32 addrspace(3)* %1336, align 4, !tbaa !38
  %1338 = icmp ne i32 %1337, 0
  %1339 = and i1 %1318, %1338
  %1340 = xor i32 %185, 2
  %1341 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1340
  %1342 = load i32, i32 addrspace(3)* %1341, align 4, !tbaa !38
  %1343 = icmp ne i32 %1342, 0
  %1344 = and i1 %1339, %1343
  %1345 = xor i32 %185, 3
  %1346 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1345
  %1347 = load i32, i32 addrspace(3)* %1346, align 4, !tbaa !38
  %1348 = icmp ne i32 %1347, 0
  %1349 = and i1 %1344, %1348
  br label %1350

; <label>:1350                                    ; preds = %1334, %1332, %1326, %1315
  %1351 = phi i1 [ %1331, %1326 ], [ %1349, %1334 ], [ %1318, %1315 ], [ false, %1332 ]
  %1352 = or i1 %1316, %1351
  %1353 = lshr i32 %165, 1
  %1354 = and i32 %1353, 8
  %1355 = lshr i32 %164, 2
  %1356 = and i32 %1355, 4
  %1357 = or i32 %1354, %36
  %1358 = or i32 %1357, %1356
  %1359 = icmp eq i32 %24, 0
  br i1 %1359, label %1360, label %1402, !dx.controlflow.hints !70

; <label>:1360                                    ; preds = %1350
  %1361 = shl i32 1, %1358
  %1362 = select i1 %1351, i32 %1361, i32 0
  %1363 = shl i32 65536, %1358
  %1364 = select i1 %1316, i32 %1363, i32 0
  %1365 = or i32 %1362, %1364
  %1366 = icmp eq i32 %1365, 0
  br i1 %1366, label %1369, label %1367, !dx.controlflow.hints !71

; <label>:1367                                    ; preds = %1360
  %1368 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %1280, i32 %1281, i32 %318, i32 %1365)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1369

; <label>:1369                                    ; preds = %1367, %1360
  br i1 %1352, label %1399, label %1370

; <label>:1370                                    ; preds = %1369
  br label %1371

; <label>:1371                                    ; preds = %1396, %1370
  %1372 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %4, i32 %1280, i32 %1281, i32 %318, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %1373 = and i32 %1372, 3
  %1374 = icmp eq i32 %1373, 0
  br i1 %1374, label %1375, label %1396, !dx.controlflow.hints !72

; <label>:1375                                    ; preds = %1371
  %1376 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1377 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1378 = extractvalue %dx.types.CBufRet.i32 %1377, 3
  %1379 = call i32 @dx.op.binary.i32(i32 40, i32 %1378, i32 %1376)  ; UMin(a,b)
  %1380 = extractvalue %dx.types.CBufRet.i32 %1377, 2
  %1381 = udiv i32 %1379, %1380
  %1382 = urem i32 %1379, %1380
  %1383 = extractvalue %dx.types.CBufRet.i32 %1377, 1
  %1384 = urem i32 %1382, %1383
  %1385 = udiv i32 %1382, %1383
  %1386 = shl i32 %1384, 6
  %1387 = and i32 %1386, 32704
  %1388 = shl i32 %1385, 15
  %1389 = and i32 %1388, 8355840
  %1390 = shl i32 %1381, 23
  %1391 = and i32 %1390, 2139095040
  %1392 = or i32 %1391, %1387
  %1393 = or i32 %1392, %1389
  %1394 = or i32 %1393, 3
  %1395 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 8, i32 %1280, i32 %1281, i32 %318, i32 %1394)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1399

; <label>:1396                                    ; preds = %1371
  %1397 = icmp eq i32 %1373, 3
  br i1 %1397, label %1398, label %1371, !dx.controlflow.hints !73

; <label>:1398                                    ; preds = %1396
  br label %1399

; <label>:1399                                    ; preds = %1398, %1375, %1369
  %1400 = phi i32 [ 0, %1369 ], [ %1394, %1375 ], [ %1372, %1398 ]
  br i1 %187, label %1402, label %1401, !dx.controlflow.hints !74

; <label>:1401                                    ; preds = %1399
  store i32 %1400, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !38
  br label %1402

; <label>:1402                                    ; preds = %1401, %1399, %1350
  %1403 = phi i32 [ %1400, %1399 ], [ %1400, %1401 ], [ 0, %1350 ]
  br i1 %187, label %1404, label %1406, !dx.controlflow.hints !75

; <label>:1404                                    ; preds = %1402
  %1405 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %1403)  ; WaveReadLaneFirst(value)
  br label %1408

; <label>:1406                                    ; preds = %1402
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1407 = load i32, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !38
  br label %1408

; <label>:1408                                    ; preds = %1406, %1404
  %1409 = phi i32 [ %1407, %1406 ], [ %1405, %1404 ]
  br i1 %1352, label %1425, label %1410, !dx.controlflow.hints !76

; <label>:1410                                    ; preds = %1408
  %1411 = lshr i32 %1409, 23
  %1412 = and i32 %1411, 255
  %1413 = and i32 %164, 31
  %1414 = and i32 %165, 31
  %1415 = lshr i32 %1409, 1
  %1416 = and i32 %1415, 16352
  %1417 = lshr i32 %1409, 10
  %1418 = and i32 %1417, 8160
  %1419 = or i32 %1416, %1413
  %1420 = or i32 %1418, %1414
  %1421 = fmul fast float %1241, 2.550000e+02
  %1422 = fadd fast float %1421, %159
  %1423 = call float @dx.op.unary.f32(i32 27, float %1422)  ; Round_ni(value)
  %1424 = fmul fast float %1423, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %1419, i32 %1420, i32 %1412, float %1424, float %1424, float %1424, float %1424, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1425

; <label>:1425                                    ; preds = %1410, %1408
  %1426 = icmp eq i32 %316, %320
  br i1 %1426, label %1427, label %314, !llvm.loop !77

; <label>:1427                                    ; preds = %1425
  br label %1428

; <label>:1428                                    ; preds = %1427, %310
  %1429 = phi i32 [ 0, %310 ], [ %1279, %1427 ]
  %1430 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1431 = extractvalue %dx.types.CBufRet.i32 %1430, 0
  %1432 = call i32 @dx.op.tertiary.i32(i32 49, i32 %170, i32 %1431, i32 %251)  ; UMad(a,b,c)
  %1433 = shl i32 %1432, 2
  %1434 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1433, i32 undef, i32 undef, i32 %1429)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1435 = add i32 %251, 1
  %1436 = icmp ugt i32 %1435, %247
  br i1 %1436, label %1437, label %250

; <label>:1437                                    ; preds = %1428
  br label %1438

; <label>:1438                                    ; preds = %1437, %243, %0
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
declare i1 @dx.op.waveAllTrue(i32, i1) #2

; Function Attrs: nounwind
declare i1 @dx.op.waveAnyTrue(i32, i1) #2

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
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
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
!77 = distinct !{!77, !78}
!78 = !{!"llvm.loop.unroll.disable"}

