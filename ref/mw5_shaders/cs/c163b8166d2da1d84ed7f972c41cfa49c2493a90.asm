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
; shader hash: 7cd8d07188352278b42e4d2c217bf522
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
  br i1 %161, label %683, label %162, !dx.controlflow.hints !34

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
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 -1, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %183 = atomicrmw umin i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %181 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %184 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %185 = atomicrmw umax i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %182 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %186 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !35
  %187 = lshr i32 %184, 5
  %188 = lshr i32 %186, 5
  %189 = call i32 @dx.op.binary.i32(i32 40, i32 %188, i32 %173)  ; UMin(a,b)
  %190 = icmp ugt i32 %187, %189
  br i1 %190, label %683, label %191

; <label>:191                                     ; preds = %162
  br label %192

; <label>:192                                     ; preds = %673, %191
  %193 = phi i32 [ %680, %673 ], [ %187, %191 ]
  %194 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.i32 %194, 0
  %196 = call i32 @dx.op.tertiary.i32(i32 49, i32 %169, i32 %195, i32 %193)  ; UMad(a,b,c)
  %197 = shl i32 %196, 2
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %197, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = shl i32 %193, 5
  %201 = sub nsw i32 %181, %200
  %202 = call i32 @dx.op.binary.i32(i32 37, i32 %201, i32 0)  ; IMax(a,b)
  %203 = call i32 @dx.op.binary.i32(i32 38, i32 %202, i32 31)  ; IMin(a,b)
  %204 = sub nsw i32 1, %181
  %205 = add nsw i32 %204, %182
  %206 = call i32 @dx.op.binary.i32(i32 37, i32 %205, i32 0)  ; IMax(a,b)
  %207 = call i32 @dx.op.binary.i32(i32 38, i32 %206, i32 32)  ; IMin(a,b)
  %208 = and i32 %207, 31
  %209 = shl i32 -1, %208
  %210 = xor i32 %209, -1
  %211 = and i32 %203, 31
  %212 = shl i32 %210, %211
  %213 = icmp eq i32 %207, 32
  %214 = select i1 %213, i32 -1, i32 %212
  %215 = and i32 %214, %199
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %216 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %215 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %217 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %218 = icmp eq i32 %23, 0
  br i1 %218, label %219, label %220, !dx.controlflow.hints !39

; <label>:219                                     ; preds = %192
  store i32 %217, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !35
  br label %220

; <label>:220                                     ; preds = %219, %192
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %221 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !35
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %673, label %223

; <label>:223                                     ; preds = %220
  br label %224

; <label>:224                                     ; preds = %670, %223
  %225 = phi i32 [ %508, %670 ], [ 0, %223 ]
  %226 = phi i32 [ %231, %670 ], [ %221, %223 ]
  %227 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %226)  ; FirstbitLo(value)
  %228 = add i32 %227, %200
  %229 = and i32 %227, 31
  %230 = shl i32 1, %229
  %231 = xor i32 %230, %226
  %232 = mul i32 %228, 112
  %233 = add i32 %232, 16
  %234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.f32 %234, 0
  %236 = extractvalue %dx.types.ResRet.f32 %234, 1
  %237 = extractvalue %dx.types.ResRet.f32 %234, 2
  %238 = add i32 %232, 28
  %239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.i32 %239, 0
  %241 = add i32 %232, 32
  %242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = extractvalue %dx.types.ResRet.f32 %242, 1
  %245 = extractvalue %dx.types.ResRet.f32 %242, 2
  %246 = add i32 %232, 48
  %247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %246, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.f32 %247, 0
  %249 = extractvalue %dx.types.ResRet.f32 %247, 1
  %250 = extractvalue %dx.types.ResRet.f32 %247, 2
  %251 = extractvalue %dx.types.ResRet.f32 %247, 3
  %252 = add i32 %232, 64
  %253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = extractvalue %dx.types.ResRet.f32 %253, 1
  %256 = extractvalue %dx.types.ResRet.f32 %253, 2
  %257 = extractvalue %dx.types.ResRet.f32 %253, 3
  %258 = add i32 %232, 92
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = and i32 %260, 65535
  %262 = uitofp i32 %261 to float
  %263 = lshr i32 %260, 16
  %264 = uitofp i32 %263 to float
  %265 = and i32 %240, 65535
  %266 = and i32 %240, 50331648
  %267 = icmp eq i32 %266, 33554432
  %268 = call float @dx.op.dot3.f32(i32 55, float %243, float %244, float %245, float %243, float %244, float %245)  ; Dot3(ax,ay,az,bx,by,bz)
  %269 = fsub fast float %116, %248
  %270 = fsub fast float %117, %249
  %271 = fsub fast float %118, %250
  %272 = call float @dx.op.dot3.f32(i32 55, float %269, float %270, float %271, float %243, float %244, float %245)  ; Dot3(ax,ay,az,bx,by,bz)
  %273 = fdiv fast float %272, %268
  %274 = call float @dx.op.binary.f32(i32 35, float %273, float -1.000000e+00)  ; FMax(a,b)
  %275 = call float @dx.op.binary.f32(i32 36, float %274, float 1.000000e+00)  ; FMin(a,b)
  %276 = fmul fast float %275, %243
  %277 = fmul fast float %275, %244
  %278 = fmul fast float %275, %245
  %279 = fadd fast float %276, %248
  %280 = fadd fast float %277, %249
  %281 = fadd fast float %278, %250
  %282 = fsub fast float %279, %116
  %283 = fsub fast float %280, %117
  %284 = fsub fast float %281, %118
  %285 = call float @dx.op.dot3.f32(i32 55, float %282, float %283, float %284, float %282, float %283, float %284)  ; Dot3(ax,ay,az,bx,by,bz)
  %286 = call float @dx.op.unary.f32(i32 24, float %285)  ; Sqrt(value)
  %287 = fdiv fast float 1.000000e+00, %286
  %288 = fmul fast float %282, %287
  %289 = fmul fast float %283, %287
  %290 = fmul fast float %284, %287
  br i1 %267, label %291, label %315, !dx.controlflow.hints !40

; <label>:291                                     ; preds = %224
  %292 = fmul fast float %256, %235
  %293 = fmul fast float %256, %236
  %294 = fmul fast float %256, %237
  %295 = fsub fast float %292, %116
  %296 = fadd fast float %295, %279
  %297 = fsub fast float %293, %117
  %298 = fadd fast float %297, %280
  %299 = fsub fast float %294, %118
  %300 = fadd fast float %299, %281
  %301 = call float @dx.op.dot3.f32(i32 55, float %296, float %298, float %300, float %296, float %298, float %300)  ; Dot3(ax,ay,az,bx,by,bz)
  %302 = call float @dx.op.unary.f32(i32 25, float %301)  ; Rsqrt(value)
  %303 = fmul fast float %302, %296
  %304 = fmul fast float %302, %298
  %305 = fmul fast float %302, %300
  %306 = fsub fast float %116, %279
  %307 = fsub fast float %117, %280
  %308 = fsub fast float %118, %281
  %309 = fsub fast float -0.000000e+00, %306
  %310 = fsub fast float -0.000000e+00, %307
  %311 = fsub fast float -0.000000e+00, %308
  %312 = call float @dx.op.dot3.f32(i32 55, float %309, float %310, float %311, float %235, float %236, float %237)  ; Dot3(ax,ay,az,bx,by,bz)
  %313 = fcmp fast ogt float %312, 0.000000e+00
  %314 = uitofp i1 %313 to float
  br label %315

; <label>:315                                     ; preds = %291, %224
  %316 = phi float [ %314, %291 ], [ 1.000000e+00, %224 ]
  %317 = phi float [ %303, %291 ], [ %288, %224 ]
  %318 = phi float [ %304, %291 ], [ %289, %224 ]
  %319 = phi float [ %305, %291 ], [ %290, %224 ]
  %320 = call float @dx.op.dot3.f32(i32 55, float %235, float %236, float %237, float %317, float %318, float %319)  ; Dot3(ax,ay,az,bx,by,bz)
  %321 = fmul fast float %320, %320
  %322 = call float @dx.op.unary.f32(i32 7, float %321)  ; Saturate(value)
  %323 = fsub fast float 1.000000e+00, %322
  %324 = fmul fast float %323, 5.000000e-01
  %325 = fcmp fast ogt float %320, 0.000000e+00
  %326 = fsub fast float 1.000000e+00, %324
  %327 = select i1 %325, float %324, float %326
  %328 = fmul fast float %327, %264
  %329 = fadd fast float %328, %262
  %330 = fmul fast float %329, 0x3EF0001000000000
  %331 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %16, float %330, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %332 = extractvalue %dx.types.ResRet.f32 %331, 0
  %333 = fmul fast float %320, %254
  %334 = fadd fast float %333, %255
  %335 = call float @dx.op.unary.f32(i32 7, float %334)  ; Saturate(value)
  %336 = select i1 %267, float 1.000000e+00, float %335
  %337 = select i1 %267, float %335, float 1.000000e+00
  %338 = fmul fast float %286, %251
  %339 = fsub fast float 1.000000e+00, %338
  %340 = fmul fast float %339, %257
  %341 = call float @dx.op.unary.f32(i32 7, float %340)  ; Saturate(value)
  %342 = fmul fast float %341, %337
  %343 = fmul fast float %342, 2.000000e+00
  %344 = fsub fast float 3.000000e+00, %343
  %345 = fmul fast float %332, %316
  %346 = fmul fast float %342, %342
  %347 = fmul fast float %346, %345
  %348 = fmul fast float %347, %344
  %349 = icmp ne i32 %265, 255
  %350 = call float @dx.op.binary.f32(i32 36, float %348, float %348)  ; FMin(a,b)
  %351 = call float @dx.op.binary.f32(i32 36, float %348, float %350)  ; FMin(a,b)
  %352 = fcmp fast ogt float %351, 0.000000e+00
  %353 = and i1 %349, %352
  br i1 %353, label %354, label %498, !dx.controlflow.hints !41

; <label>:354                                     ; preds = %315
  %355 = mul nuw nsw i32 %265, 176
  %356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.f32 %356, 0
  %358 = extractvalue %dx.types.ResRet.f32 %356, 1
  %359 = extractvalue %dx.types.ResRet.f32 %356, 2
  %360 = extractvalue %dx.types.ResRet.f32 %356, 3
  %361 = add nuw nsw i32 %355, 16
  %362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.f32 %362, 0
  %364 = extractvalue %dx.types.ResRet.f32 %362, 1
  %365 = add nuw nsw i32 %355, 32
  %366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.f32 %366, 0
  %368 = extractvalue %dx.types.ResRet.f32 %366, 1
  %369 = extractvalue %dx.types.ResRet.f32 %366, 2
  %370 = add nuw nsw i32 %355, 48
  %371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.f32 %371, 0
  %373 = extractvalue %dx.types.ResRet.f32 %371, 1
  %374 = extractvalue %dx.types.ResRet.f32 %371, 2
  %375 = extractvalue %dx.types.ResRet.f32 %371, 3
  %376 = add nuw nsw i32 %355, 64
  %377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.f32 %377, 0
  %379 = extractvalue %dx.types.ResRet.f32 %377, 1
  %380 = extractvalue %dx.types.ResRet.f32 %377, 2
  %381 = extractvalue %dx.types.ResRet.f32 %377, 3
  %382 = add nuw nsw i32 %355, 80
  %383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.f32 %383, 0
  %385 = extractvalue %dx.types.ResRet.f32 %383, 1
  %386 = extractvalue %dx.types.ResRet.f32 %383, 2
  %387 = extractvalue %dx.types.ResRet.f32 %383, 3
  %388 = add nuw nsw i32 %355, 96
  %389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.f32 %389, 0
  %391 = extractvalue %dx.types.ResRet.f32 %389, 1
  %392 = extractvalue %dx.types.ResRet.f32 %389, 2
  %393 = extractvalue %dx.types.ResRet.f32 %389, 3
  %394 = bitcast float %364 to i32
  %395 = fmul fast float %145, %369
  %396 = fmul fast float %146, %369
  %397 = fmul fast float %147, %369
  %398 = fadd fast float %395, %116
  %399 = fadd fast float %396, %117
  %400 = fadd fast float %397, %118
  %401 = fmul fast float %398, %372
  %402 = call float @dx.op.tertiary.f32(i32 46, float %399, float %378, float %401)  ; FMad(a,b,c)
  %403 = call float @dx.op.tertiary.f32(i32 46, float %400, float %384, float %402)  ; FMad(a,b,c)
  %404 = fadd fast float %403, %390
  %405 = fmul fast float %398, %373
  %406 = call float @dx.op.tertiary.f32(i32 46, float %399, float %379, float %405)  ; FMad(a,b,c)
  %407 = call float @dx.op.tertiary.f32(i32 46, float %400, float %385, float %406)  ; FMad(a,b,c)
  %408 = fadd fast float %407, %391
  %409 = fmul fast float %398, %374
  %410 = call float @dx.op.tertiary.f32(i32 46, float %399, float %380, float %409)  ; FMad(a,b,c)
  %411 = call float @dx.op.tertiary.f32(i32 46, float %400, float %386, float %410)  ; FMad(a,b,c)
  %412 = fadd fast float %411, %392
  %413 = fmul fast float %398, %375
  %414 = call float @dx.op.tertiary.f32(i32 46, float %399, float %381, float %413)  ; FMad(a,b,c)
  %415 = call float @dx.op.tertiary.f32(i32 46, float %400, float %387, float %414)  ; FMad(a,b,c)
  %416 = fadd fast float %415, %393
  %417 = fdiv fast float %404, %416
  %418 = fdiv fast float %408, %416
  %419 = fdiv fast float %412, %416
  %420 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %419)  ; FMax(a,b)
  %421 = fmul fast float %158, 0x401921FB60000000
  %422 = call float @dx.op.unary.f32(i32 13, float %421)  ; Sin(value)
  %423 = call float @dx.op.unary.f32(i32 12, float %421)  ; Cos(value)
  %424 = fmul fast float %423, %368
  %425 = call float @dx.op.tertiary.f32(i32 46, float %422, float %368, float 0.000000e+00)  ; FMad(a,b,c)
  %426 = fmul fast float %368, %422
  %427 = fsub fast float -0.000000e+00, %426
  %428 = call float @dx.op.tertiary.f32(i32 46, float %423, float %368, float 0.000000e+00)  ; FMad(a,b,c)
  br label %429

; <label>:429                                     ; preds = %429, %354
  %430 = phi float [ 0.000000e+00, %354 ], [ %462, %429 ]
  %431 = phi float [ 0.000000e+00, %354 ], [ %464, %429 ]
  %432 = phi i32 [ 0, %354 ], [ %465, %429 ]
  %433 = mul i32 %432, 2
  %434 = add i32 0, %433
  %435 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %434
  %436 = load float, float* %435, align 4
  %437 = mul i32 %432, 2
  %438 = add i32 1, %437
  %439 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %438
  %440 = load float, float* %439, align 4
  %441 = fmul fast float %424, %436
  %442 = call float @dx.op.tertiary.f32(i32 46, float %440, float %427, float %441)  ; FMad(a,b,c)
  %443 = fmul fast float %436, %425
  %444 = call float @dx.op.tertiary.f32(i32 46, float %440, float %428, float %443)  ; FMad(a,b,c)
  %445 = fadd fast float %442, %417
  %446 = fadd fast float %444, %418
  %447 = fmul fast float %445, %363
  %448 = fmul fast float %446, %363
  %449 = call float @dx.op.binary.f32(i32 35, float %447, float %359)  ; FMax(a,b)
  %450 = call float @dx.op.binary.f32(i32 35, float %448, float %359)  ; FMax(a,b)
  %451 = call float @dx.op.binary.f32(i32 36, float %449, float %360)  ; FMin(a,b)
  %452 = call float @dx.op.binary.f32(i32 36, float %450, float %360)  ; FMin(a,b)
  %453 = fadd fast float %451, %357
  %454 = fadd fast float %452, %358
  %455 = uitofp i32 %394 to float
  %456 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %453, float %454, float %455, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %457 = extractvalue %dx.types.ResRet.f32 %456, 0
  %458 = fsub fast float %457, %420
  %459 = fsub fast float %458, %367
  %460 = fcmp fast ogt float %459, 0.000000e+00
  %461 = select i1 %460, float 1.000000e+00, float 0.000000e+00
  %462 = fadd fast float %461, %430
  %463 = select i1 %460, float %459, float 0.000000e+00
  %464 = fadd fast float %463, %431
  %465 = add nuw nsw i32 %432, 1
  %466 = icmp eq i32 %465, 8
  br i1 %466, label %467, label %429

; <label>:467                                     ; preds = %429
  %468 = fdiv fast float 1.000000e+00, %462
  %469 = fmul fast float %468, %464
  %470 = fdiv fast float 1.000000e+00, %420
  %471 = fmul fast float %469, %470
  %472 = call float @dx.op.unary.f32(i32 7, float %471)  ; Saturate(value)
  %473 = call float @dx.op.binary.f32(i32 35, float %472, float 0.000000e+00)  ; FMax(a,b)
  %474 = fmul fast float %462, 1.250000e-01
  %475 = call float @dx.op.unary.f32(i32 7, float %474)  ; Saturate(value)
  %476 = fmul fast float %475, 2.000000e+00
  %477 = fadd fast float %476, -1.000000e+00
  %478 = fcmp fast ogt float %477, 0.000000e+00
  %479 = fcmp fast olt float %477, 0.000000e+00
  %480 = zext i1 %478 to i32
  %481 = zext i1 %479 to i32
  %482 = sub nsw i32 %480, %481
  %483 = sitofp i32 %482 to float
  %484 = fmul fast float %483, %477
  %485 = fsub fast float 1.000000e+00, %484
  %486 = fmul fast float %485, %485
  %487 = fmul fast float %486, %485
  %488 = fsub fast float %485, %487
  %489 = fmul fast float %488, %473
  %490 = fsub fast float 1.000000e+00, %487
  %491 = fsub fast float %490, %489
  %492 = fmul fast float %483, 5.000000e-01
  %493 = fmul fast float %492, %491
  %494 = fsub fast float -5.000000e-01, %493
  %495 = fmul fast float %494, %336
  %496 = fadd fast float %495, 1.000000e+00
  %497 = fmul fast float %496, %348
  br label %498

; <label>:498                                     ; preds = %467, %315
  %499 = phi float [ %497, %467 ], [ %348, %315 ]
  %500 = call float @dx.op.binary.f32(i32 36, float %499, float %499)  ; FMin(a,b)
  %501 = call float @dx.op.binary.f32(i32 36, float %499, float %500)  ; FMin(a,b)
  %502 = fcmp fast ogt float %501, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %503 = zext i1 %502 to i32
  %504 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %503 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %505 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !35
  %506 = icmp eq i32 %505, 0
  %507 = select i1 %506, i32 0, i32 %230
  %508 = or i32 %225, %507
  %509 = lshr i32 %163, 5
  %510 = lshr i32 %164, 5
  %511 = fcmp fast olt float %499, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %512 = and i32 %23, 31
  %513 = zext i1 %511 to i32
  %514 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %23
  store i32 %513, i32 addrspace(3)* %514, align 4, !tbaa !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %515 = icmp ult i32 %512, 16
  br i1 %515, label %516, label %522, !dx.controlflow.hints !42

; <label>:516                                     ; preds = %498
  %517 = add i32 %23, 16
  %518 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %517
  %519 = load i32, i32 addrspace(3)* %518, align 4, !tbaa !35
  %520 = load i32, i32 addrspace(3)* %514, align 4, !tbaa !35
  %521 = and i32 %520, %519
  store i32 %521, i32 addrspace(3)* %514, align 4, !tbaa !35
  br label %522

; <label>:522                                     ; preds = %516, %498
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %523 = icmp ult i32 %512, 8
  br i1 %523, label %524, label %530, !dx.controlflow.hints !43

; <label>:524                                     ; preds = %522
  %525 = add i32 %23, 8
  %526 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %525
  %527 = load i32, i32 addrspace(3)* %526, align 4, !tbaa !35
  %528 = load i32, i32 addrspace(3)* %514, align 4, !tbaa !35
  %529 = and i32 %528, %527
  store i32 %529, i32 addrspace(3)* %514, align 4, !tbaa !35
  br label %530

; <label>:530                                     ; preds = %524, %522
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %531 = icmp ult i32 %512, 4
  br i1 %531, label %532, label %538, !dx.controlflow.hints !44

; <label>:532                                     ; preds = %530
  %533 = add i32 %23, 4
  %534 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %533
  %535 = load i32, i32 addrspace(3)* %534, align 4, !tbaa !35
  %536 = load i32, i32 addrspace(3)* %514, align 4, !tbaa !35
  %537 = and i32 %536, %535
  store i32 %537, i32 addrspace(3)* %514, align 4, !tbaa !35
  br label %538

; <label>:538                                     ; preds = %532, %530
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %539 = icmp ult i32 %512, 2
  br i1 %539, label %540, label %546, !dx.controlflow.hints !45

; <label>:540                                     ; preds = %538
  %541 = add i32 %23, 2
  %542 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %541
  %543 = load i32, i32 addrspace(3)* %542, align 4, !tbaa !35
  %544 = load i32, i32 addrspace(3)* %514, align 4, !tbaa !35
  %545 = and i32 %544, %543
  store i32 %545, i32 addrspace(3)* %514, align 4, !tbaa !35
  br label %546

; <label>:546                                     ; preds = %540, %538
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %547 = icmp eq i32 %512, 0
  br i1 %547, label %548, label %554, !dx.controlflow.hints !46

; <label>:548                                     ; preds = %546
  %549 = add i32 %23, 1
  %550 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %549
  %551 = load i32, i32 addrspace(3)* %550, align 4, !tbaa !35
  %552 = load i32, i32 addrspace(3)* %514, align 4, !tbaa !35
  %553 = and i32 %552, %551
  store i32 %553, i32 addrspace(3)* %514, align 4, !tbaa !35
  br label %554

; <label>:554                                     ; preds = %548, %546
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %555 = and i32 %23, -64
  %556 = or i32 %555, 32
  %557 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %555
  %558 = load i32, i32 addrspace(3)* %557, align 4, !tbaa !35
  %559 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %556
  %560 = load i32, i32 addrspace(3)* %559, align 4, !tbaa !35
  %561 = and i32 %560, %558
  %562 = icmp ne i32 %561, 0
  %563 = fcmp fast ogt float %499, 0x3FEFFF8000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %564 = zext i1 %563 to i32
  store i32 %564, i32 addrspace(3)* %514, align 4, !tbaa !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %515, label %565, label %571, !dx.controlflow.hints !42

; <label>:565                                     ; preds = %554
  %566 = add i32 %23, 16
  %567 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %566
  %568 = load i32, i32 addrspace(3)* %567, align 4, !tbaa !35
  %569 = load i32, i32 addrspace(3)* %514, align 4, !tbaa !35
  %570 = and i32 %569, %568
  store i32 %570, i32 addrspace(3)* %514, align 4, !tbaa !35
  br label %571

; <label>:571                                     ; preds = %565, %554
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %523, label %572, label %578, !dx.controlflow.hints !43

; <label>:572                                     ; preds = %571
  %573 = add i32 %23, 8
  %574 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %573
  %575 = load i32, i32 addrspace(3)* %574, align 4, !tbaa !35
  %576 = load i32, i32 addrspace(3)* %514, align 4, !tbaa !35
  %577 = and i32 %576, %575
  store i32 %577, i32 addrspace(3)* %514, align 4, !tbaa !35
  br label %578

; <label>:578                                     ; preds = %572, %571
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %531, label %579, label %585, !dx.controlflow.hints !44

; <label>:579                                     ; preds = %578
  %580 = add i32 %23, 4
  %581 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %580
  %582 = load i32, i32 addrspace(3)* %581, align 4, !tbaa !35
  %583 = load i32, i32 addrspace(3)* %514, align 4, !tbaa !35
  %584 = and i32 %583, %582
  store i32 %584, i32 addrspace(3)* %514, align 4, !tbaa !35
  br label %585

; <label>:585                                     ; preds = %579, %578
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %539, label %586, label %592, !dx.controlflow.hints !45

; <label>:586                                     ; preds = %585
  %587 = add i32 %23, 2
  %588 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %587
  %589 = load i32, i32 addrspace(3)* %588, align 4, !tbaa !35
  %590 = load i32, i32 addrspace(3)* %514, align 4, !tbaa !35
  %591 = and i32 %590, %589
  store i32 %591, i32 addrspace(3)* %514, align 4, !tbaa !35
  br label %592

; <label>:592                                     ; preds = %586, %585
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %547, label %593, label %599, !dx.controlflow.hints !46

; <label>:593                                     ; preds = %592
  %594 = add i32 %23, 1
  %595 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %594
  %596 = load i32, i32 addrspace(3)* %595, align 4, !tbaa !35
  %597 = load i32, i32 addrspace(3)* %514, align 4, !tbaa !35
  %598 = and i32 %597, %596
  store i32 %598, i32 addrspace(3)* %514, align 4, !tbaa !35
  br label %599

; <label>:599                                     ; preds = %593, %592
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %600 = load i32, i32 addrspace(3)* %557, align 4, !tbaa !35
  %601 = load i32, i32 addrspace(3)* %559, align 4, !tbaa !35
  %602 = and i32 %601, %600
  %603 = or i32 %602, %561
  %604 = icmp eq i32 %603, 0
  %605 = lshr i32 %164, 1
  %606 = and i32 %605, 8
  %607 = lshr i32 %163, 2
  %608 = and i32 %607, 4
  %609 = or i32 %606, %35
  %610 = or i32 %609, %608
  br i1 %218, label %611, label %653, !dx.controlflow.hints !47

; <label>:611                                     ; preds = %599
  %612 = icmp ne i32 %602, 0
  %613 = shl i32 1, %610
  %614 = select i1 %612, i32 %613, i32 0
  %615 = shl i32 65536, %610
  %616 = select i1 %562, i32 %615, i32 0
  %617 = or i32 %614, %616
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %621, label %619, !dx.controlflow.hints !48

; <label>:619                                     ; preds = %611
  %620 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %509, i32 %510, i32 %228, i32 %617)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %621

; <label>:621                                     ; preds = %619, %611
  br i1 %604, label %622, label %651

; <label>:622                                     ; preds = %621
  br label %623

; <label>:623                                     ; preds = %648, %622
  %624 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %4, i32 %509, i32 %510, i32 %228, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %625 = and i32 %624, 3
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %627, label %648, !dx.controlflow.hints !49

; <label>:627                                     ; preds = %623
  %628 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %629 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %630 = extractvalue %dx.types.CBufRet.i32 %629, 3
  %631 = call i32 @dx.op.binary.i32(i32 40, i32 %630, i32 %628)  ; UMin(a,b)
  %632 = extractvalue %dx.types.CBufRet.i32 %629, 2
  %633 = udiv i32 %631, %632
  %634 = urem i32 %631, %632
  %635 = extractvalue %dx.types.CBufRet.i32 %629, 1
  %636 = urem i32 %634, %635
  %637 = udiv i32 %634, %635
  %638 = shl i32 %636, 6
  %639 = and i32 %638, 32704
  %640 = shl i32 %637, 15
  %641 = and i32 %640, 8355840
  %642 = shl i32 %633, 23
  %643 = and i32 %642, 2139095040
  %644 = or i32 %643, %639
  %645 = or i32 %644, %641
  %646 = or i32 %645, 3
  %647 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 8, i32 %509, i32 %510, i32 %228, i32 %646)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %651

; <label>:648                                     ; preds = %623
  %649 = icmp eq i32 %625, 3
  br i1 %649, label %650, label %623, !dx.controlflow.hints !50

; <label>:650                                     ; preds = %648
  br label %651

; <label>:651                                     ; preds = %650, %627, %621
  %652 = phi i32 [ 0, %621 ], [ %646, %627 ], [ %624, %650 ]
  store i32 %652, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !35
  br label %653

; <label>:653                                     ; preds = %651, %599
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %654 = load i32, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !35
  br i1 %604, label %655, label %670, !dx.controlflow.hints !51

; <label>:655                                     ; preds = %653
  %656 = lshr i32 %654, 23
  %657 = and i32 %656, 255
  %658 = and i32 %163, 31
  %659 = and i32 %164, 31
  %660 = lshr i32 %654, 1
  %661 = and i32 %660, 16352
  %662 = lshr i32 %654, 10
  %663 = and i32 %662, 8160
  %664 = or i32 %661, %658
  %665 = or i32 %663, %659
  %666 = fmul fast float %499, 2.550000e+02
  %667 = fadd fast float %666, %158
  %668 = call float @dx.op.unary.f32(i32 27, float %667)  ; Round_ni(value)
  %669 = fmul fast float %668, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %664, i32 %665, i32 %657, float %669, float %669, float %669, float %669, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %670

; <label>:670                                     ; preds = %655, %653
  %671 = icmp eq i32 %226, %230
  br i1 %671, label %672, label %224, !llvm.loop !52

; <label>:672                                     ; preds = %670
  br label %673

; <label>:673                                     ; preds = %672, %220
  %674 = phi i32 [ 0, %220 ], [ %508, %672 ]
  %675 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %676 = extractvalue %dx.types.CBufRet.i32 %675, 0
  %677 = call i32 @dx.op.tertiary.i32(i32 49, i32 %169, i32 %676, i32 %193)  ; UMad(a,b,c)
  %678 = shl i32 %677, 2
  %679 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %678, i32 undef, i32 undef, i32 %674)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %680 = add i32 %193, 1
  %681 = icmp ugt i32 %680, %189
  br i1 %681, label %682, label %192

; <label>:682                                     ; preds = %673
  br label %683

; <label>:683                                     ; preds = %682, %162, %0
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

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

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
!32 = !{i32 0, i64 272, i32 4, !33}
!33 = !{i32 8, i32 8, i32 1}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 1}
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
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.unroll.disable"}

