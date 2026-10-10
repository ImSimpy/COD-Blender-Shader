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
; shader hash: a27440cebde9842fdb362d9338e88db5
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
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
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
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %32 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %31, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %52 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %45, i32 %47, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %119 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %15, i32 0, i32 %45, i32 %47, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %155 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %153, i32 %154, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %156 = extractvalue %dx.types.ResRet.f32 %155, 0
  %157 = fadd fast float %156, %150
  %158 = call float @dx.op.unary.f32(i32 22, float %157)  ; Frc(value)
  %159 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.i32 %159, 0
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %785, label %162, !dx.controlflow.hints !34

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
  %179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %178, i32 undef)  ; BufferLoad(srv,index,wot)
  %180 = extractvalue %dx.types.ResRet.i32 %179, 0
  %181 = lshr i32 %180, 16
  %182 = and i32 %180, 65535
  %183 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %184 = udiv i32 %23, %183
  %185 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %181, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %186 = icmp eq i32 %183, 64
  br i1 %186, label %213, label %187, !dx.controlflow.hints !35

; <label>:187                                     ; preds = %162
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %188 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %188, label %189, label %191, !dx.controlflow.hints !36

; <label>:189                                     ; preds = %187
  %190 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %184
  store i32 %185, i32 addrspace(3)* %190, align 4, !tbaa !37
  br label %191

; <label>:191                                     ; preds = %189, %187
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %192 = icmp eq i32 %183, 32
  br i1 %192, label %193, label %198, !dx.controlflow.hints !41

; <label>:193                                     ; preds = %191
  %194 = xor i32 %184, 1
  %195 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %194
  %196 = load i32, i32 addrspace(3)* %195, align 4, !tbaa !37
  %197 = call i32 @dx.op.binary.i32(i32 40, i32 %185, i32 %196)  ; UMin(a,b)
  br label %213

; <label>:198                                     ; preds = %191
  %199 = icmp eq i32 %183, 16
  br i1 %199, label %200, label %213, !dx.controlflow.hints !42

; <label>:200                                     ; preds = %198
  %201 = xor i32 %184, 3
  %202 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %201
  %203 = load i32, i32 addrspace(3)* %202, align 4, !tbaa !37
  %204 = xor i32 %184, 2
  %205 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %204
  %206 = load i32, i32 addrspace(3)* %205, align 4, !tbaa !37
  %207 = call i32 @dx.op.binary.i32(i32 40, i32 %206, i32 %203)  ; UMin(a,b)
  %208 = xor i32 %184, 1
  %209 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %208
  %210 = load i32, i32 addrspace(3)* %209, align 4, !tbaa !37
  %211 = call i32 @dx.op.binary.i32(i32 40, i32 %185, i32 %210)  ; UMin(a,b)
  %212 = call i32 @dx.op.binary.i32(i32 40, i32 %211, i32 %207)  ; UMin(a,b)
  br label %213

; <label>:213                                     ; preds = %200, %198, %193, %162
  %214 = phi i32 [ %197, %193 ], [ %212, %200 ], [ %185, %162 ], [ 0, %198 ]
  %215 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %182, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  br i1 %186, label %242, label %216, !dx.controlflow.hints !43

; <label>:216                                     ; preds = %213
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %217 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %217, label %218, label %220, !dx.controlflow.hints !44

; <label>:218                                     ; preds = %216
  %219 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %184
  store i32 %215, i32 addrspace(3)* %219, align 4, !tbaa !37
  br label %220

; <label>:220                                     ; preds = %218, %216
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %221 = icmp eq i32 %183, 32
  br i1 %221, label %222, label %227, !dx.controlflow.hints !45

; <label>:222                                     ; preds = %220
  %223 = xor i32 %184, 1
  %224 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %223
  %225 = load i32, i32 addrspace(3)* %224, align 4, !tbaa !37
  %226 = call i32 @dx.op.binary.i32(i32 39, i32 %215, i32 %225)  ; UMax(a,b)
  br label %242

; <label>:227                                     ; preds = %220
  %228 = icmp eq i32 %183, 16
  br i1 %228, label %229, label %242, !dx.controlflow.hints !46

; <label>:229                                     ; preds = %227
  %230 = xor i32 %184, 3
  %231 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %230
  %232 = load i32, i32 addrspace(3)* %231, align 4, !tbaa !37
  %233 = xor i32 %184, 2
  %234 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %233
  %235 = load i32, i32 addrspace(3)* %234, align 4, !tbaa !37
  %236 = call i32 @dx.op.binary.i32(i32 39, i32 %235, i32 %232)  ; UMax(a,b)
  %237 = xor i32 %184, 1
  %238 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %237
  %239 = load i32, i32 addrspace(3)* %238, align 4, !tbaa !37
  %240 = call i32 @dx.op.binary.i32(i32 39, i32 %215, i32 %239)  ; UMax(a,b)
  %241 = call i32 @dx.op.binary.i32(i32 39, i32 %240, i32 %236)  ; UMax(a,b)
  br label %242

; <label>:242                                     ; preds = %229, %227, %222, %213
  %243 = phi i32 [ %226, %222 ], [ %241, %229 ], [ %215, %213 ], [ 0, %227 ]
  %244 = lshr i32 %214, 5
  %245 = lshr i32 %243, 5
  %246 = call i32 @dx.op.binary.i32(i32 40, i32 %245, i32 %173)  ; UMin(a,b)
  %247 = icmp ugt i32 %244, %246
  br i1 %247, label %785, label %248

; <label>:248                                     ; preds = %242
  br label %249

; <label>:249                                     ; preds = %775, %248
  %250 = phi i32 [ %782, %775 ], [ %244, %248 ]
  %251 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %252 = extractvalue %dx.types.CBufRet.i32 %251, 0
  %253 = call i32 @dx.op.tertiary.i32(i32 49, i32 %169, i32 %252, i32 %250)  ; UMad(a,b,c)
  %254 = shl i32 %253, 2
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = shl i32 %250, 5
  %258 = sub nsw i32 %181, %257
  %259 = call i32 @dx.op.binary.i32(i32 37, i32 %258, i32 0)  ; IMax(a,b)
  %260 = call i32 @dx.op.binary.i32(i32 38, i32 %259, i32 31)  ; IMin(a,b)
  %261 = sub nsw i32 1, %181
  %262 = add nsw i32 %261, %182
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
  %273 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %272, i8 1)  ; WaveActiveBit(value,op)
  br i1 %186, label %300, label %274, !dx.controlflow.hints !47

; <label>:274                                     ; preds = %249
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %275 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %275, label %276, label %278, !dx.controlflow.hints !48

; <label>:276                                     ; preds = %274
  %277 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %184
  store i32 %273, i32 addrspace(3)* %277, align 4, !tbaa !37
  br label %278

; <label>:278                                     ; preds = %276, %274
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %279 = icmp eq i32 %183, 32
  br i1 %279, label %280, label %285, !dx.controlflow.hints !49

; <label>:280                                     ; preds = %278
  %281 = xor i32 %184, 1
  %282 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %281
  %283 = load i32, i32 addrspace(3)* %282, align 4, !tbaa !37
  %284 = or i32 %283, %273
  br label %300

; <label>:285                                     ; preds = %278
  %286 = icmp eq i32 %183, 16
  br i1 %286, label %287, label %300, !dx.controlflow.hints !50

; <label>:287                                     ; preds = %285
  %288 = xor i32 %184, 1
  %289 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %288
  %290 = load i32, i32 addrspace(3)* %289, align 4, !tbaa !37
  %291 = or i32 %290, %273
  %292 = xor i32 %184, 2
  %293 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %292
  %294 = load i32, i32 addrspace(3)* %293, align 4, !tbaa !37
  %295 = or i32 %291, %294
  %296 = xor i32 %184, 3
  %297 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %296
  %298 = load i32, i32 addrspace(3)* %297, align 4, !tbaa !37
  %299 = or i32 %295, %298
  br label %300

; <label>:300                                     ; preds = %287, %285, %280, %249
  %301 = phi i32 [ %284, %280 ], [ %299, %287 ], [ %273, %249 ], [ 0, %285 ]
  br i1 %186, label %302, label %304, !dx.controlflow.hints !51

; <label>:302                                     ; preds = %300
  %303 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %301)  ; WaveReadLaneFirst(value)
  br label %309

; <label>:304                                     ; preds = %300
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %305 = icmp eq i32 %23, 0
  br i1 %305, label %306, label %307, !dx.controlflow.hints !52

; <label>:306                                     ; preds = %304
  store i32 %301, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !37
  br label %307

; <label>:307                                     ; preds = %306, %304
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %308 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !37
  br label %309

; <label>:309                                     ; preds = %307, %302
  %310 = phi i32 [ %303, %302 ], [ %308, %307 ]
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %775, label %312

; <label>:312                                     ; preds = %309
  br label %313

; <label>:313                                     ; preds = %772, %312
  %314 = phi i32 [ %626, %772 ], [ 0, %312 ]
  %315 = phi i32 [ %320, %772 ], [ %310, %312 ]
  %316 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %315)  ; FirstbitLo(value)
  %317 = add i32 %316, %257
  %318 = and i32 %316, 31
  %319 = shl i32 1, %318
  %320 = xor i32 %319, %315
  %321 = mul i32 %317, 112
  %322 = add i32 %321, 16
  %323 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.f32 %323, 0
  %325 = extractvalue %dx.types.ResRet.f32 %323, 1
  %326 = extractvalue %dx.types.ResRet.f32 %323, 2
  %327 = add i32 %321, 28
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = add i32 %321, 32
  %331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.f32 %331, 0
  %333 = extractvalue %dx.types.ResRet.f32 %331, 1
  %334 = extractvalue %dx.types.ResRet.f32 %331, 2
  %335 = add i32 %321, 48
  %336 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.f32 %336, 0
  %338 = extractvalue %dx.types.ResRet.f32 %336, 1
  %339 = extractvalue %dx.types.ResRet.f32 %336, 2
  %340 = extractvalue %dx.types.ResRet.f32 %336, 3
  %341 = add i32 %321, 64
  %342 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.f32 %342, 0
  %344 = extractvalue %dx.types.ResRet.f32 %342, 1
  %345 = extractvalue %dx.types.ResRet.f32 %342, 2
  %346 = extractvalue %dx.types.ResRet.f32 %342, 3
  %347 = add i32 %321, 92
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = and i32 %349, 65535
  %351 = uitofp i32 %350 to float
  %352 = lshr i32 %349, 16
  %353 = uitofp i32 %352 to float
  %354 = and i32 %329, 65535
  %355 = and i32 %329, 50331648
  %356 = icmp eq i32 %355, 33554432
  %357 = call float @dx.op.dot3.f32(i32 55, float %332, float %333, float %334, float %332, float %333, float %334)  ; Dot3(ax,ay,az,bx,by,bz)
  %358 = fsub fast float %116, %337
  %359 = fsub fast float %117, %338
  %360 = fsub fast float %118, %339
  %361 = call float @dx.op.dot3.f32(i32 55, float %358, float %359, float %360, float %332, float %333, float %334)  ; Dot3(ax,ay,az,bx,by,bz)
  %362 = fdiv fast float %361, %357
  %363 = call float @dx.op.binary.f32(i32 35, float %362, float -1.000000e+00)  ; FMax(a,b)
  %364 = call float @dx.op.binary.f32(i32 36, float %363, float 1.000000e+00)  ; FMin(a,b)
  %365 = fmul fast float %364, %332
  %366 = fmul fast float %364, %333
  %367 = fmul fast float %364, %334
  %368 = fadd fast float %365, %337
  %369 = fadd fast float %366, %338
  %370 = fadd fast float %367, %339
  %371 = fsub fast float %368, %116
  %372 = fsub fast float %369, %117
  %373 = fsub fast float %370, %118
  %374 = call float @dx.op.dot3.f32(i32 55, float %371, float %372, float %373, float %371, float %372, float %373)  ; Dot3(ax,ay,az,bx,by,bz)
  %375 = call float @dx.op.unary.f32(i32 24, float %374)  ; Sqrt(value)
  %376 = fdiv fast float 1.000000e+00, %375
  %377 = fmul fast float %371, %376
  %378 = fmul fast float %372, %376
  %379 = fmul fast float %373, %376
  br i1 %356, label %380, label %404, !dx.controlflow.hints !53

; <label>:380                                     ; preds = %313
  %381 = fmul fast float %345, %324
  %382 = fmul fast float %345, %325
  %383 = fmul fast float %345, %326
  %384 = fsub fast float %381, %116
  %385 = fadd fast float %384, %368
  %386 = fsub fast float %382, %117
  %387 = fadd fast float %386, %369
  %388 = fsub fast float %383, %118
  %389 = fadd fast float %388, %370
  %390 = call float @dx.op.dot3.f32(i32 55, float %385, float %387, float %389, float %385, float %387, float %389)  ; Dot3(ax,ay,az,bx,by,bz)
  %391 = call float @dx.op.unary.f32(i32 25, float %390)  ; Rsqrt(value)
  %392 = fmul fast float %391, %385
  %393 = fmul fast float %391, %387
  %394 = fmul fast float %391, %389
  %395 = fsub fast float %116, %368
  %396 = fsub fast float %117, %369
  %397 = fsub fast float %118, %370
  %398 = fsub fast float -0.000000e+00, %395
  %399 = fsub fast float -0.000000e+00, %396
  %400 = fsub fast float -0.000000e+00, %397
  %401 = call float @dx.op.dot3.f32(i32 55, float %398, float %399, float %400, float %324, float %325, float %326)  ; Dot3(ax,ay,az,bx,by,bz)
  %402 = fcmp fast ogt float %401, 0.000000e+00
  %403 = uitofp i1 %402 to float
  br label %404

; <label>:404                                     ; preds = %380, %313
  %405 = phi float [ %403, %380 ], [ 1.000000e+00, %313 ]
  %406 = phi float [ %392, %380 ], [ %377, %313 ]
  %407 = phi float [ %393, %380 ], [ %378, %313 ]
  %408 = phi float [ %394, %380 ], [ %379, %313 ]
  %409 = call float @dx.op.dot3.f32(i32 55, float %324, float %325, float %326, float %406, float %407, float %408)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %420 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %16, float %419, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  br i1 %442, label %443, label %587, !dx.controlflow.hints !54

; <label>:443                                     ; preds = %404
  %444 = mul nuw nsw i32 %354, 176
  %445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.f32 %445, 0
  %447 = extractvalue %dx.types.ResRet.f32 %445, 1
  %448 = extractvalue %dx.types.ResRet.f32 %445, 2
  %449 = extractvalue %dx.types.ResRet.f32 %445, 3
  %450 = add nuw nsw i32 %444, 16
  %451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.f32 %451, 0
  %453 = extractvalue %dx.types.ResRet.f32 %451, 1
  %454 = add nuw nsw i32 %444, 32
  %455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.f32 %455, 0
  %457 = extractvalue %dx.types.ResRet.f32 %455, 1
  %458 = extractvalue %dx.types.ResRet.f32 %455, 2
  %459 = add nuw nsw i32 %444, 48
  %460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.f32 %460, 0
  %462 = extractvalue %dx.types.ResRet.f32 %460, 1
  %463 = extractvalue %dx.types.ResRet.f32 %460, 2
  %464 = extractvalue %dx.types.ResRet.f32 %460, 3
  %465 = add nuw nsw i32 %444, 64
  %466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.f32 %466, 0
  %468 = extractvalue %dx.types.ResRet.f32 %466, 1
  %469 = extractvalue %dx.types.ResRet.f32 %466, 2
  %470 = extractvalue %dx.types.ResRet.f32 %466, 3
  %471 = add nuw nsw i32 %444, 80
  %472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.f32 %472, 0
  %474 = extractvalue %dx.types.ResRet.f32 %472, 1
  %475 = extractvalue %dx.types.ResRet.f32 %472, 2
  %476 = extractvalue %dx.types.ResRet.f32 %472, 3
  %477 = add nuw nsw i32 %444, 96
  %478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.f32 %478, 0
  %480 = extractvalue %dx.types.ResRet.f32 %478, 1
  %481 = extractvalue %dx.types.ResRet.f32 %478, 2
  %482 = extractvalue %dx.types.ResRet.f32 %478, 3
  %483 = bitcast float %453 to i32
  %484 = fmul fast float %145, %458
  %485 = fmul fast float %146, %458
  %486 = fmul fast float %147, %458
  %487 = fadd fast float %484, %116
  %488 = fadd fast float %485, %117
  %489 = fadd fast float %486, %118
  %490 = fmul fast float %487, %461
  %491 = call float @dx.op.tertiary.f32(i32 46, float %488, float %467, float %490)  ; FMad(a,b,c)
  %492 = call float @dx.op.tertiary.f32(i32 46, float %489, float %473, float %491)  ; FMad(a,b,c)
  %493 = fadd fast float %492, %479
  %494 = fmul fast float %487, %462
  %495 = call float @dx.op.tertiary.f32(i32 46, float %488, float %468, float %494)  ; FMad(a,b,c)
  %496 = call float @dx.op.tertiary.f32(i32 46, float %489, float %474, float %495)  ; FMad(a,b,c)
  %497 = fadd fast float %496, %480
  %498 = fmul fast float %487, %463
  %499 = call float @dx.op.tertiary.f32(i32 46, float %488, float %469, float %498)  ; FMad(a,b,c)
  %500 = call float @dx.op.tertiary.f32(i32 46, float %489, float %475, float %499)  ; FMad(a,b,c)
  %501 = fadd fast float %500, %481
  %502 = fmul fast float %487, %464
  %503 = call float @dx.op.tertiary.f32(i32 46, float %488, float %470, float %502)  ; FMad(a,b,c)
  %504 = call float @dx.op.tertiary.f32(i32 46, float %489, float %476, float %503)  ; FMad(a,b,c)
  %505 = fadd fast float %504, %482
  %506 = fdiv fast float %493, %505
  %507 = fdiv fast float %497, %505
  %508 = fdiv fast float %501, %505
  %509 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %508)  ; FMax(a,b)
  %510 = fmul fast float %158, 0x401921FB60000000
  %511 = call float @dx.op.unary.f32(i32 13, float %510)  ; Sin(value)
  %512 = call float @dx.op.unary.f32(i32 12, float %510)  ; Cos(value)
  %513 = fmul fast float %512, %457
  %514 = call float @dx.op.tertiary.f32(i32 46, float %511, float %457, float 0.000000e+00)  ; FMad(a,b,c)
  %515 = fmul fast float %457, %511
  %516 = fsub fast float -0.000000e+00, %515
  %517 = call float @dx.op.tertiary.f32(i32 46, float %512, float %457, float 0.000000e+00)  ; FMad(a,b,c)
  br label %518

; <label>:518                                     ; preds = %518, %443
  %519 = phi float [ 0.000000e+00, %443 ], [ %551, %518 ]
  %520 = phi float [ 0.000000e+00, %443 ], [ %553, %518 ]
  %521 = phi i32 [ 0, %443 ], [ %554, %518 ]
  %522 = mul i32 %521, 2
  %523 = add i32 0, %522
  %524 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %523
  %525 = load float, float* %524, align 4
  %526 = mul i32 %521, 2
  %527 = add i32 1, %526
  %528 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %527
  %529 = load float, float* %528, align 4
  %530 = fmul fast float %513, %525
  %531 = call float @dx.op.tertiary.f32(i32 46, float %529, float %516, float %530)  ; FMad(a,b,c)
  %532 = fmul fast float %525, %514
  %533 = call float @dx.op.tertiary.f32(i32 46, float %529, float %517, float %532)  ; FMad(a,b,c)
  %534 = fadd fast float %531, %506
  %535 = fadd fast float %533, %507
  %536 = fmul fast float %534, %452
  %537 = fmul fast float %535, %452
  %538 = call float @dx.op.binary.f32(i32 35, float %536, float %448)  ; FMax(a,b)
  %539 = call float @dx.op.binary.f32(i32 35, float %537, float %448)  ; FMax(a,b)
  %540 = call float @dx.op.binary.f32(i32 36, float %538, float %449)  ; FMin(a,b)
  %541 = call float @dx.op.binary.f32(i32 36, float %539, float %449)  ; FMin(a,b)
  %542 = fadd fast float %540, %446
  %543 = fadd fast float %541, %447
  %544 = uitofp i32 %483 to float
  %545 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %542, float %543, float %544, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %546 = extractvalue %dx.types.ResRet.f32 %545, 0
  %547 = fsub fast float %546, %509
  %548 = fsub fast float %547, %456
  %549 = fcmp fast ogt float %548, 0.000000e+00
  %550 = select i1 %549, float 1.000000e+00, float 0.000000e+00
  %551 = fadd fast float %550, %519
  %552 = select i1 %549, float %548, float 0.000000e+00
  %553 = fadd fast float %552, %520
  %554 = add nuw nsw i32 %521, 1
  %555 = icmp eq i32 %554, 8
  br i1 %555, label %556, label %518

; <label>:556                                     ; preds = %518
  %557 = fdiv fast float 1.000000e+00, %551
  %558 = fmul fast float %557, %553
  %559 = fdiv fast float 1.000000e+00, %509
  %560 = fmul fast float %558, %559
  %561 = call float @dx.op.unary.f32(i32 7, float %560)  ; Saturate(value)
  %562 = call float @dx.op.binary.f32(i32 35, float %561, float 0.000000e+00)  ; FMax(a,b)
  %563 = fmul fast float %551, 1.250000e-01
  %564 = call float @dx.op.unary.f32(i32 7, float %563)  ; Saturate(value)
  %565 = fmul fast float %564, 2.000000e+00
  %566 = fadd fast float %565, -1.000000e+00
  %567 = fcmp fast ogt float %566, 0.000000e+00
  %568 = fcmp fast olt float %566, 0.000000e+00
  %569 = zext i1 %567 to i32
  %570 = zext i1 %568 to i32
  %571 = sub nsw i32 %569, %570
  %572 = sitofp i32 %571 to float
  %573 = fmul fast float %572, %566
  %574 = fsub fast float 1.000000e+00, %573
  %575 = fmul fast float %574, %574
  %576 = fmul fast float %575, %574
  %577 = fsub fast float %574, %576
  %578 = fmul fast float %577, %562
  %579 = fsub fast float 1.000000e+00, %576
  %580 = fsub fast float %579, %578
  %581 = fmul fast float %572, 5.000000e-01
  %582 = fmul fast float %581, %580
  %583 = fsub fast float -5.000000e-01, %582
  %584 = fmul fast float %583, %425
  %585 = fadd fast float %584, 1.000000e+00
  %586 = fmul fast float %585, %437
  br label %587

; <label>:587                                     ; preds = %556, %404
  %588 = phi float [ %586, %556 ], [ %437, %404 ]
  %589 = call float @dx.op.binary.f32(i32 36, float %588, float %588)  ; FMin(a,b)
  %590 = call float @dx.op.binary.f32(i32 36, float %588, float %589)  ; FMin(a,b)
  %591 = fcmp fast ogt float %590, 0x3F10000000000000
  %592 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %591)  ; WaveAnyTrue(cond)
  %593 = icmp ugt i32 %183, 63
  br i1 %593, label %623, label %594, !dx.controlflow.hints !55

; <label>:594                                     ; preds = %587
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %595 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %595, label %596, label %599, !dx.controlflow.hints !56

; <label>:596                                     ; preds = %594
  %597 = zext i1 %592 to i32
  %598 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %184
  store i32 %597, i32 addrspace(3)* %598, align 4, !tbaa !37
  br label %599

; <label>:599                                     ; preds = %596, %594
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %600 = icmp eq i32 %183, 32
  br i1 %600, label %601, label %607, !dx.controlflow.hints !57

; <label>:601                                     ; preds = %599
  %602 = xor i32 %184, 1
  %603 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %602
  %604 = load i32, i32 addrspace(3)* %603, align 4, !tbaa !37
  %605 = icmp ne i32 %604, 0
  %606 = or i1 %592, %605
  br label %623

; <label>:607                                     ; preds = %599
  %608 = icmp eq i32 %183, 16
  br i1 %608, label %609, label %623, !dx.controlflow.hints !58

; <label>:609                                     ; preds = %607
  %610 = xor i32 %184, 1
  %611 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %610
  %612 = load i32, i32 addrspace(3)* %611, align 4, !tbaa !37
  %613 = xor i32 %184, 2
  %614 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %613
  %615 = load i32, i32 addrspace(3)* %614, align 4, !tbaa !37
  %616 = or i32 %615, %612
  %617 = xor i32 %184, 3
  %618 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %617
  %619 = load i32, i32 addrspace(3)* %618, align 4, !tbaa !37
  %620 = or i32 %616, %619
  %621 = icmp ne i32 %620, 0
  %622 = or i1 %592, %621
  br label %623

; <label>:623                                     ; preds = %609, %607, %601, %587
  %624 = phi i1 [ %606, %601 ], [ %622, %609 ], [ %592, %587 ], [ false, %607 ]
  %625 = select i1 %624, i32 %319, i32 0
  %626 = or i32 %314, %625
  %627 = lshr i32 %163, 5
  %628 = lshr i32 %164, 5
  %629 = fcmp fast olt float %588, 0x3F10000000000000
  %630 = call i1 @dx.op.waveAllTrue(i32 114, i1 %629)  ; WaveAllTrue(cond)
  br i1 %593, label %662, label %631, !dx.controlflow.hints !59

; <label>:631                                     ; preds = %623
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %632 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %632, label %633, label %636, !dx.controlflow.hints !60

; <label>:633                                     ; preds = %631
  %634 = zext i1 %630 to i32
  %635 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %184
  store i32 %634, i32 addrspace(3)* %635, align 4, !tbaa !37
  br label %636

; <label>:636                                     ; preds = %633, %631
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %637 = icmp eq i32 %183, 32
  br i1 %637, label %638, label %644, !dx.controlflow.hints !61

; <label>:638                                     ; preds = %636
  %639 = xor i32 %184, 1
  %640 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %639
  %641 = load i32, i32 addrspace(3)* %640, align 4, !tbaa !37
  %642 = icmp ne i32 %641, 0
  %643 = and i1 %630, %642
  br label %662

; <label>:644                                     ; preds = %636
  %645 = icmp eq i32 %183, 16
  br i1 %645, label %646, label %662, !dx.controlflow.hints !62

; <label>:646                                     ; preds = %644
  %647 = xor i32 %184, 1
  %648 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %647
  %649 = load i32, i32 addrspace(3)* %648, align 4, !tbaa !37
  %650 = icmp ne i32 %649, 0
  %651 = and i1 %630, %650
  %652 = xor i32 %184, 2
  %653 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %652
  %654 = load i32, i32 addrspace(3)* %653, align 4, !tbaa !37
  %655 = icmp ne i32 %654, 0
  %656 = and i1 %651, %655
  %657 = xor i32 %184, 3
  %658 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %657
  %659 = load i32, i32 addrspace(3)* %658, align 4, !tbaa !37
  %660 = icmp ne i32 %659, 0
  %661 = and i1 %656, %660
  br label %662

; <label>:662                                     ; preds = %646, %644, %638, %623
  %663 = phi i1 [ %643, %638 ], [ %661, %646 ], [ %630, %623 ], [ false, %644 ]
  %664 = fcmp fast ogt float %588, 0x3FEFFF8000000000
  %665 = call i1 @dx.op.waveAllTrue(i32 114, i1 %664)  ; WaveAllTrue(cond)
  br i1 %593, label %697, label %666, !dx.controlflow.hints !59

; <label>:666                                     ; preds = %662
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %667 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %667, label %668, label %671, !dx.controlflow.hints !60

; <label>:668                                     ; preds = %666
  %669 = zext i1 %665 to i32
  %670 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %184
  store i32 %669, i32 addrspace(3)* %670, align 4, !tbaa !37
  br label %671

; <label>:671                                     ; preds = %668, %666
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %672 = icmp eq i32 %183, 32
  br i1 %672, label %673, label %679, !dx.controlflow.hints !61

; <label>:673                                     ; preds = %671
  %674 = xor i32 %184, 1
  %675 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %674
  %676 = load i32, i32 addrspace(3)* %675, align 4, !tbaa !37
  %677 = icmp ne i32 %676, 0
  %678 = and i1 %665, %677
  br label %697

; <label>:679                                     ; preds = %671
  %680 = icmp eq i32 %183, 16
  br i1 %680, label %681, label %697, !dx.controlflow.hints !62

; <label>:681                                     ; preds = %679
  %682 = xor i32 %184, 1
  %683 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %682
  %684 = load i32, i32 addrspace(3)* %683, align 4, !tbaa !37
  %685 = icmp ne i32 %684, 0
  %686 = and i1 %665, %685
  %687 = xor i32 %184, 2
  %688 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %687
  %689 = load i32, i32 addrspace(3)* %688, align 4, !tbaa !37
  %690 = icmp ne i32 %689, 0
  %691 = and i1 %686, %690
  %692 = xor i32 %184, 3
  %693 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %692
  %694 = load i32, i32 addrspace(3)* %693, align 4, !tbaa !37
  %695 = icmp ne i32 %694, 0
  %696 = and i1 %691, %695
  br label %697

; <label>:697                                     ; preds = %681, %679, %673, %662
  %698 = phi i1 [ %678, %673 ], [ %696, %681 ], [ %665, %662 ], [ false, %679 ]
  %699 = or i1 %663, %698
  %700 = lshr i32 %164, 1
  %701 = and i32 %700, 8
  %702 = lshr i32 %163, 2
  %703 = and i32 %702, 4
  %704 = or i32 %701, %35
  %705 = or i32 %704, %703
  %706 = icmp eq i32 %23, 0
  br i1 %706, label %707, label %749, !dx.controlflow.hints !63

; <label>:707                                     ; preds = %697
  %708 = shl i32 1, %705
  %709 = select i1 %698, i32 %708, i32 0
  %710 = shl i32 65536, %705
  %711 = select i1 %663, i32 %710, i32 0
  %712 = or i32 %709, %711
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %716, label %714, !dx.controlflow.hints !64

; <label>:714                                     ; preds = %707
  %715 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %627, i32 %628, i32 %317, i32 %712)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %716

; <label>:716                                     ; preds = %714, %707
  br i1 %699, label %746, label %717

; <label>:717                                     ; preds = %716
  br label %718

; <label>:718                                     ; preds = %743, %717
  %719 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %4, i32 %627, i32 %628, i32 %317, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %720 = and i32 %719, 3
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %722, label %743, !dx.controlflow.hints !65

; <label>:722                                     ; preds = %718
  %723 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %724 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %725 = extractvalue %dx.types.CBufRet.i32 %724, 3
  %726 = call i32 @dx.op.binary.i32(i32 40, i32 %725, i32 %723)  ; UMin(a,b)
  %727 = extractvalue %dx.types.CBufRet.i32 %724, 2
  %728 = udiv i32 %726, %727
  %729 = urem i32 %726, %727
  %730 = extractvalue %dx.types.CBufRet.i32 %724, 1
  %731 = urem i32 %729, %730
  %732 = udiv i32 %729, %730
  %733 = shl i32 %731, 6
  %734 = and i32 %733, 32704
  %735 = shl i32 %732, 15
  %736 = and i32 %735, 8355840
  %737 = shl i32 %728, 23
  %738 = and i32 %737, 2139095040
  %739 = or i32 %738, %734
  %740 = or i32 %739, %736
  %741 = or i32 %740, 3
  %742 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 8, i32 %627, i32 %628, i32 %317, i32 %741)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %746

; <label>:743                                     ; preds = %718
  %744 = icmp eq i32 %720, 3
  br i1 %744, label %745, label %718, !dx.controlflow.hints !66

; <label>:745                                     ; preds = %743
  br label %746

; <label>:746                                     ; preds = %745, %722, %716
  %747 = phi i32 [ 0, %716 ], [ %741, %722 ], [ %719, %745 ]
  br i1 %186, label %749, label %748, !dx.controlflow.hints !67

; <label>:748                                     ; preds = %746
  store i32 %747, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !37
  br label %749

; <label>:749                                     ; preds = %748, %746, %697
  %750 = phi i32 [ %747, %746 ], [ %747, %748 ], [ 0, %697 ]
  br i1 %186, label %751, label %753, !dx.controlflow.hints !68

; <label>:751                                     ; preds = %749
  %752 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %750)  ; WaveReadLaneFirst(value)
  br label %755

; <label>:753                                     ; preds = %749
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %754 = load i32, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !37
  br label %755

; <label>:755                                     ; preds = %753, %751
  %756 = phi i32 [ %754, %753 ], [ %752, %751 ]
  br i1 %699, label %772, label %757, !dx.controlflow.hints !69

; <label>:757                                     ; preds = %755
  %758 = lshr i32 %756, 23
  %759 = and i32 %758, 255
  %760 = and i32 %163, 31
  %761 = and i32 %164, 31
  %762 = lshr i32 %756, 1
  %763 = and i32 %762, 16352
  %764 = lshr i32 %756, 10
  %765 = and i32 %764, 8160
  %766 = or i32 %763, %760
  %767 = or i32 %765, %761
  %768 = fmul fast float %588, 2.550000e+02
  %769 = fadd fast float %768, %158
  %770 = call float @dx.op.unary.f32(i32 27, float %769)  ; Round_ni(value)
  %771 = fmul fast float %770, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %766, i32 %767, i32 %759, float %771, float %771, float %771, float %771, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %772

; <label>:772                                     ; preds = %757, %755
  %773 = icmp eq i32 %315, %319
  br i1 %773, label %774, label %313, !llvm.loop !70

; <label>:774                                     ; preds = %772
  br label %775

; <label>:775                                     ; preds = %774, %309
  %776 = phi i32 [ 0, %309 ], [ %626, %774 ]
  %777 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %778 = extractvalue %dx.types.CBufRet.i32 %777, 0
  %779 = call i32 @dx.op.tertiary.i32(i32 49, i32 %169, i32 %778, i32 %250)  ; UMad(a,b,c)
  %780 = shl i32 %779, 2
  %781 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %780, i32 undef, i32 undef, i32 %776)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %782 = add i32 %250, 1
  %783 = icmp ugt i32 %782, %246
  br i1 %783, label %784, label %249

; <label>:784                                     ; preds = %775
  br label %785

; <label>:785                                     ; preds = %784, %242, %0
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
!dx.entryPoints = !{!31}

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
!28 = !{!29, !30}
!29 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!30 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!31 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !32}
!32 = !{i32 0, i64 524560, i32 4, !33}
!33 = !{i32 8, i32 8, i32 1}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = !{!38, !38, i64 0}
!38 = !{!"int", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
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
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
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
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.unroll.disable"}

