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
; shader hash: 3d701aa8240ec34f746f82ab074c9ed6
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
  %148 = fmul fast float %63, %48
  %149 = fmul fast float %64, %49
  %150 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %17, float %148, float %149, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
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
  %173 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %17, float %170, float %172, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
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
  %212 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %210, i32 %211, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = extractvalue %dx.types.ResRet.f32 %212, 2
  %215 = fadd fast float %213, %207
  %216 = fadd fast float %214, %207
  %217 = call float @dx.op.unary.f32(i32 22, float %215)  ; Frc(value)
  %218 = call float @dx.op.unary.f32(i32 22, float %216)  ; Frc(value)
  %219 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.i32 %219, 0
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %1025, label %222, !dx.controlflow.hints !34

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
  %239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.i32 %239, 0
  %241 = lshr i32 %240, 16
  %242 = and i32 %240, 65535
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 -1, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %243 = atomicrmw umin i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %241 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %244 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %245 = atomicrmw umax i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %242 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %246 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !35
  %247 = lshr i32 %244, 5
  %248 = lshr i32 %246, 5
  %249 = call i32 @dx.op.binary.i32(i32 40, i32 %248, i32 %233)  ; UMin(a,b)
  %250 = icmp ugt i32 %247, %249
  br i1 %250, label %1025, label %251

; <label>:251                                     ; preds = %222
  br label %252

; <label>:252                                     ; preds = %1015, %251
  %253 = phi i32 [ %1022, %1015 ], [ %247, %251 ]
  %254 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.i32 %254, 0
  %256 = call i32 @dx.op.tertiary.i32(i32 49, i32 %229, i32 %255, i32 %253)  ; UMad(a,b,c)
  %257 = shl i32 %256, 2
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = shl i32 %253, 5
  %261 = sub nsw i32 %241, %260
  %262 = call i32 @dx.op.binary.i32(i32 37, i32 %261, i32 0)  ; IMax(a,b)
  %263 = call i32 @dx.op.binary.i32(i32 38, i32 %262, i32 31)  ; IMin(a,b)
  %264 = sub nsw i32 1, %241
  %265 = add nsw i32 %264, %242
  %266 = call i32 @dx.op.binary.i32(i32 37, i32 %265, i32 0)  ; IMax(a,b)
  %267 = call i32 @dx.op.binary.i32(i32 38, i32 %266, i32 32)  ; IMin(a,b)
  %268 = and i32 %267, 31
  %269 = shl i32 -1, %268
  %270 = xor i32 %269, -1
  %271 = and i32 %263, 31
  %272 = shl i32 %270, %271
  %273 = icmp eq i32 %267, 32
  %274 = select i1 %273, i32 -1, i32 %272
  %275 = and i32 %274, %259
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %276 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %275 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %277 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %278 = icmp eq i32 %23, 0
  br i1 %278, label %279, label %280, !dx.controlflow.hints !39

; <label>:279                                     ; preds = %252
  store i32 %277, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !35
  br label %280

; <label>:280                                     ; preds = %279, %252
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %281 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !35
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %1015, label %283

; <label>:283                                     ; preds = %280
  br label %284

; <label>:284                                     ; preds = %1012, %283
  %285 = phi i32 [ %850, %1012 ], [ 0, %283 ]
  %286 = phi i32 [ %291, %1012 ], [ %281, %283 ]
  %287 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %286)  ; FirstbitLo(value)
  %288 = add i32 %287, %260
  %289 = and i32 %287, 31
  %290 = shl i32 1, %289
  %291 = xor i32 %290, %286
  %292 = mul i32 %288, 112
  %293 = add i32 %292, 16
  %294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.f32 %294, 0
  %296 = extractvalue %dx.types.ResRet.f32 %294, 1
  %297 = extractvalue %dx.types.ResRet.f32 %294, 2
  %298 = add i32 %292, 28
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = add i32 %292, 32
  %302 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.f32 %302, 0
  %304 = extractvalue %dx.types.ResRet.f32 %302, 1
  %305 = extractvalue %dx.types.ResRet.f32 %302, 2
  %306 = add i32 %292, 44
  %307 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.f32 %307, 0
  %309 = add i32 %292, 48
  %310 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.f32 %310, 0
  %312 = extractvalue %dx.types.ResRet.f32 %310, 1
  %313 = extractvalue %dx.types.ResRet.f32 %310, 2
  %314 = extractvalue %dx.types.ResRet.f32 %310, 3
  %315 = add i32 %292, 64
  %316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.f32 %316, 0
  %318 = extractvalue %dx.types.ResRet.f32 %316, 1
  %319 = extractvalue %dx.types.ResRet.f32 %316, 2
  %320 = extractvalue %dx.types.ResRet.f32 %316, 3
  %321 = add i32 %292, 92
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = and i32 %323, 65535
  %325 = uitofp i32 %324 to float
  %326 = lshr i32 %323, 16
  %327 = uitofp i32 %326 to float
  %328 = and i32 %300, 65535
  %329 = and i32 %300, 50331648
  %330 = icmp eq i32 %329, 33554432
  %331 = call float @dx.op.dot3.f32(i32 55, float %303, float %304, float %305, float %303, float %304, float %305)  ; Dot3(ax,ay,az,bx,by,bz)
  %332 = fsub fast float %116, %311
  %333 = fsub fast float %117, %312
  %334 = fsub fast float %118, %313
  %335 = call float @dx.op.dot3.f32(i32 55, float %332, float %333, float %334, float %303, float %304, float %305)  ; Dot3(ax,ay,az,bx,by,bz)
  %336 = fdiv fast float %335, %331
  %337 = call float @dx.op.binary.f32(i32 35, float %336, float -1.000000e+00)  ; FMax(a,b)
  %338 = call float @dx.op.binary.f32(i32 36, float %337, float 1.000000e+00)  ; FMin(a,b)
  %339 = fmul fast float %338, %303
  %340 = fmul fast float %338, %304
  %341 = fmul fast float %338, %305
  %342 = fadd fast float %339, %311
  %343 = fadd fast float %340, %312
  %344 = fadd fast float %341, %313
  %345 = fsub fast float %342, %116
  %346 = fsub fast float %343, %117
  %347 = fsub fast float %344, %118
  %348 = call float @dx.op.dot3.f32(i32 55, float %345, float %346, float %347, float %345, float %346, float %347)  ; Dot3(ax,ay,az,bx,by,bz)
  %349 = call float @dx.op.unary.f32(i32 24, float %348)  ; Sqrt(value)
  %350 = fdiv fast float 1.000000e+00, %349
  %351 = fmul fast float %345, %350
  %352 = fmul fast float %346, %350
  %353 = fmul fast float %347, %350
  br i1 %330, label %354, label %378, !dx.controlflow.hints !40

; <label>:354                                     ; preds = %284
  %355 = fmul fast float %319, %295
  %356 = fmul fast float %319, %296
  %357 = fmul fast float %319, %297
  %358 = fsub fast float %355, %116
  %359 = fadd fast float %358, %342
  %360 = fsub fast float %356, %117
  %361 = fadd fast float %360, %343
  %362 = fsub fast float %357, %118
  %363 = fadd fast float %362, %344
  %364 = call float @dx.op.dot3.f32(i32 55, float %359, float %361, float %363, float %359, float %361, float %363)  ; Dot3(ax,ay,az,bx,by,bz)
  %365 = call float @dx.op.unary.f32(i32 25, float %364)  ; Rsqrt(value)
  %366 = fmul fast float %365, %359
  %367 = fmul fast float %365, %361
  %368 = fmul fast float %365, %363
  %369 = fsub fast float %116, %342
  %370 = fsub fast float %117, %343
  %371 = fsub fast float %118, %344
  %372 = fsub fast float -0.000000e+00, %369
  %373 = fsub fast float -0.000000e+00, %370
  %374 = fsub fast float -0.000000e+00, %371
  %375 = call float @dx.op.dot3.f32(i32 55, float %372, float %373, float %374, float %295, float %296, float %297)  ; Dot3(ax,ay,az,bx,by,bz)
  %376 = fcmp fast ogt float %375, 0.000000e+00
  %377 = uitofp i1 %376 to float
  br label %378

; <label>:378                                     ; preds = %354, %284
  %379 = phi float [ %377, %354 ], [ 1.000000e+00, %284 ]
  %380 = phi float [ %366, %354 ], [ %351, %284 ]
  %381 = phi float [ %367, %354 ], [ %352, %284 ]
  %382 = phi float [ %368, %354 ], [ %353, %284 ]
  %383 = call float @dx.op.dot3.f32(i32 55, float %295, float %296, float %297, float %380, float %381, float %382)  ; Dot3(ax,ay,az,bx,by,bz)
  %384 = fmul fast float %383, %383
  %385 = call float @dx.op.unary.f32(i32 7, float %384)  ; Saturate(value)
  %386 = fsub fast float 1.000000e+00, %385
  %387 = fmul fast float %386, 5.000000e-01
  %388 = fcmp fast ogt float %383, 0.000000e+00
  %389 = fsub fast float 1.000000e+00, %387
  %390 = select i1 %388, float %387, float %389
  %391 = fmul fast float %390, %327
  %392 = fadd fast float %391, %325
  %393 = fmul fast float %392, 0x3EF0001000000000
  %394 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %16, float %393, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %395 = extractvalue %dx.types.ResRet.f32 %394, 0
  %396 = fmul fast float %383, %317
  %397 = fadd fast float %396, %318
  %398 = call float @dx.op.unary.f32(i32 7, float %397)  ; Saturate(value)
  %399 = select i1 %330, float 1.000000e+00, float %398
  %400 = select i1 %330, float %398, float 1.000000e+00
  %401 = fmul fast float %349, %314
  %402 = fsub fast float 1.000000e+00, %401
  %403 = fmul fast float %402, %320
  %404 = call float @dx.op.unary.f32(i32 7, float %403)  ; Saturate(value)
  %405 = fmul fast float %404, %400
  %406 = fmul fast float %405, 2.000000e+00
  %407 = fsub fast float 3.000000e+00, %406
  %408 = fmul fast float %395, %379
  %409 = fmul fast float %405, %405
  %410 = fmul fast float %409, %408
  %411 = fmul fast float %410, %407
  %412 = icmp ne i32 %328, 255
  %413 = call float @dx.op.binary.f32(i32 36, float %411, float %411)  ; FMin(a,b)
  %414 = call float @dx.op.binary.f32(i32 36, float %411, float %413)  ; FMin(a,b)
  %415 = fcmp fast ogt float %414, 0.000000e+00
  %416 = and i1 %412, %415
  br i1 %416, label %417, label %561, !dx.controlflow.hints !41

; <label>:417                                     ; preds = %378
  %418 = mul nuw nsw i32 %328, 176
  %419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.f32 %419, 0
  %421 = extractvalue %dx.types.ResRet.f32 %419, 1
  %422 = extractvalue %dx.types.ResRet.f32 %419, 2
  %423 = extractvalue %dx.types.ResRet.f32 %419, 3
  %424 = add nuw nsw i32 %418, 16
  %425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.f32 %425, 0
  %427 = extractvalue %dx.types.ResRet.f32 %425, 1
  %428 = add nuw nsw i32 %418, 32
  %429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.f32 %429, 0
  %431 = extractvalue %dx.types.ResRet.f32 %429, 1
  %432 = extractvalue %dx.types.ResRet.f32 %429, 2
  %433 = add nuw nsw i32 %418, 48
  %434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.f32 %434, 0
  %436 = extractvalue %dx.types.ResRet.f32 %434, 1
  %437 = extractvalue %dx.types.ResRet.f32 %434, 2
  %438 = extractvalue %dx.types.ResRet.f32 %434, 3
  %439 = add nuw nsw i32 %418, 64
  %440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.f32 %440, 0
  %442 = extractvalue %dx.types.ResRet.f32 %440, 1
  %443 = extractvalue %dx.types.ResRet.f32 %440, 2
  %444 = extractvalue %dx.types.ResRet.f32 %440, 3
  %445 = add nuw nsw i32 %418, 80
  %446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.f32 %446, 0
  %448 = extractvalue %dx.types.ResRet.f32 %446, 1
  %449 = extractvalue %dx.types.ResRet.f32 %446, 2
  %450 = extractvalue %dx.types.ResRet.f32 %446, 3
  %451 = add nuw nsw i32 %418, 96
  %452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.f32 %452, 0
  %454 = extractvalue %dx.types.ResRet.f32 %452, 1
  %455 = extractvalue %dx.types.ResRet.f32 %452, 2
  %456 = extractvalue %dx.types.ResRet.f32 %452, 3
  %457 = bitcast float %427 to i32
  %458 = fmul fast float %432, %145
  %459 = fmul fast float %432, %146
  %460 = fmul fast float %432, %147
  %461 = fadd fast float %458, %116
  %462 = fadd fast float %459, %117
  %463 = fadd fast float %460, %118
  %464 = fmul fast float %461, %435
  %465 = call float @dx.op.tertiary.f32(i32 46, float %462, float %441, float %464)  ; FMad(a,b,c)
  %466 = call float @dx.op.tertiary.f32(i32 46, float %463, float %447, float %465)  ; FMad(a,b,c)
  %467 = fadd fast float %466, %453
  %468 = fmul fast float %461, %436
  %469 = call float @dx.op.tertiary.f32(i32 46, float %462, float %442, float %468)  ; FMad(a,b,c)
  %470 = call float @dx.op.tertiary.f32(i32 46, float %463, float %448, float %469)  ; FMad(a,b,c)
  %471 = fadd fast float %470, %454
  %472 = fmul fast float %461, %437
  %473 = call float @dx.op.tertiary.f32(i32 46, float %462, float %443, float %472)  ; FMad(a,b,c)
  %474 = call float @dx.op.tertiary.f32(i32 46, float %463, float %449, float %473)  ; FMad(a,b,c)
  %475 = fadd fast float %474, %455
  %476 = fmul fast float %461, %438
  %477 = call float @dx.op.tertiary.f32(i32 46, float %462, float %444, float %476)  ; FMad(a,b,c)
  %478 = call float @dx.op.tertiary.f32(i32 46, float %463, float %450, float %477)  ; FMad(a,b,c)
  %479 = fadd fast float %478, %456
  %480 = fdiv fast float %467, %479
  %481 = fdiv fast float %471, %479
  %482 = fdiv fast float %475, %479
  %483 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %482)  ; FMax(a,b)
  %484 = fmul fast float %217, 0x401921FB60000000
  %485 = call float @dx.op.unary.f32(i32 13, float %484)  ; Sin(value)
  %486 = call float @dx.op.unary.f32(i32 12, float %484)  ; Cos(value)
  %487 = fmul fast float %486, %431
  %488 = call float @dx.op.tertiary.f32(i32 46, float %485, float %431, float 0.000000e+00)  ; FMad(a,b,c)
  %489 = fmul fast float %431, %485
  %490 = fsub fast float -0.000000e+00, %489
  %491 = call float @dx.op.tertiary.f32(i32 46, float %486, float %431, float 0.000000e+00)  ; FMad(a,b,c)
  br label %492

; <label>:492                                     ; preds = %492, %417
  %493 = phi float [ 0.000000e+00, %417 ], [ %525, %492 ]
  %494 = phi float [ 0.000000e+00, %417 ], [ %527, %492 ]
  %495 = phi i32 [ 0, %417 ], [ %528, %492 ]
  %496 = mul i32 %495, 2
  %497 = add i32 0, %496
  %498 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %497
  %499 = load float, float* %498, align 4
  %500 = mul i32 %495, 2
  %501 = add i32 1, %500
  %502 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %501
  %503 = load float, float* %502, align 4
  %504 = fmul fast float %487, %499
  %505 = call float @dx.op.tertiary.f32(i32 46, float %503, float %490, float %504)  ; FMad(a,b,c)
  %506 = fmul fast float %499, %488
  %507 = call float @dx.op.tertiary.f32(i32 46, float %503, float %491, float %506)  ; FMad(a,b,c)
  %508 = fadd fast float %505, %480
  %509 = fadd fast float %507, %481
  %510 = fmul fast float %508, %426
  %511 = fmul fast float %509, %426
  %512 = call float @dx.op.binary.f32(i32 35, float %510, float %422)  ; FMax(a,b)
  %513 = call float @dx.op.binary.f32(i32 35, float %511, float %422)  ; FMax(a,b)
  %514 = call float @dx.op.binary.f32(i32 36, float %512, float %423)  ; FMin(a,b)
  %515 = call float @dx.op.binary.f32(i32 36, float %513, float %423)  ; FMin(a,b)
  %516 = fadd fast float %514, %420
  %517 = fadd fast float %515, %421
  %518 = uitofp i32 %457 to float
  %519 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %516, float %517, float %518, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %520 = extractvalue %dx.types.ResRet.f32 %519, 0
  %521 = fsub fast float %520, %483
  %522 = fsub fast float %521, %430
  %523 = fcmp fast ogt float %522, 0.000000e+00
  %524 = select i1 %523, float 1.000000e+00, float 0.000000e+00
  %525 = fadd fast float %524, %493
  %526 = select i1 %523, float %522, float 0.000000e+00
  %527 = fadd fast float %526, %494
  %528 = add nuw nsw i32 %495, 1
  %529 = icmp eq i32 %528, 8
  br i1 %529, label %530, label %492

; <label>:530                                     ; preds = %492
  %531 = fdiv fast float 1.000000e+00, %525
  %532 = fmul fast float %531, %527
  %533 = fdiv fast float 1.000000e+00, %483
  %534 = fmul fast float %532, %533
  %535 = call float @dx.op.unary.f32(i32 7, float %534)  ; Saturate(value)
  %536 = call float @dx.op.binary.f32(i32 35, float %535, float 0.000000e+00)  ; FMax(a,b)
  %537 = fmul fast float %525, 1.250000e-01
  %538 = call float @dx.op.unary.f32(i32 7, float %537)  ; Saturate(value)
  %539 = fmul fast float %538, 2.000000e+00
  %540 = fadd fast float %539, -1.000000e+00
  %541 = fcmp fast ogt float %540, 0.000000e+00
  %542 = fcmp fast olt float %540, 0.000000e+00
  %543 = zext i1 %541 to i32
  %544 = zext i1 %542 to i32
  %545 = sub nsw i32 %543, %544
  %546 = sitofp i32 %545 to float
  %547 = fmul fast float %546, %540
  %548 = fsub fast float 1.000000e+00, %547
  %549 = fmul fast float %548, %548
  %550 = fmul fast float %549, %548
  %551 = fsub fast float %548, %550
  %552 = fmul fast float %551, %536
  %553 = fsub fast float 1.000000e+00, %550
  %554 = fsub fast float %553, %552
  %555 = fmul fast float %546, 5.000000e-01
  %556 = fmul fast float %555, %554
  %557 = fsub fast float -5.000000e-01, %556
  %558 = fmul fast float %557, %399
  %559 = fadd fast float %558, 1.000000e+00
  %560 = fmul fast float %559, %411
  br label %561

; <label>:561                                     ; preds = %530, %378
  %562 = phi float [ %560, %530 ], [ %411, %378 ]
  %563 = call float @dx.op.binary.f32(i32 36, float %562, float %562)  ; FMin(a,b)
  %564 = call float @dx.op.binary.f32(i32 36, float %562, float %563)  ; FMin(a,b)
  %565 = fcmp fast ogt float %564, 0.000000e+00
  %566 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %351, float %352, float %353)  ; Dot3(ax,ay,az,bx,by,bz)
  %567 = fcmp fast ogt float %566, 0.000000e+00
  %568 = and i1 %565, %567
  br i1 %568, label %569, label %838, !dx.controlflow.hints !42

; <label>:569                                     ; preds = %561
  %570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %571 = extractvalue %dx.types.CBufRet.f32 %570, 1
  %572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.f32 %572, 1
  %574 = select i1 %54, float %571, float %573
  %575 = extractvalue %dx.types.CBufRet.f32 %570, 2
  %576 = extractvalue %dx.types.CBufRet.f32 %572, 2
  %577 = select i1 %54, float %575, float %576
  %578 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %579 = extractvalue %dx.types.CBufRet.i32 %578, 0
  %580 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %581 = extractvalue %dx.types.CBufRet.i32 %580, 0
  %582 = select i1 %54, i32 %579, i32 %581
  %583 = fcmp fast olt float %574, 5.000000e-01
  %584 = icmp eq i32 %582, 0
  %585 = or i1 %583, %584
  br i1 %585, label %833, label %586, !dx.controlflow.hints !43

; <label>:586                                     ; preds = %569
  %587 = fsub fast float %311, %116
  %588 = fsub fast float %312, %117
  %589 = fsub fast float %313, %118
  %590 = fmul fast float %587, %587
  %591 = fmul fast float %588, %588
  %592 = fadd fast float %590, %591
  %593 = fmul fast float %589, %589
  %594 = fadd fast float %592, %593
  %595 = call float @dx.op.unary.f32(i32 24, float %594)  ; Sqrt(value)
  %596 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %597 = extractvalue %dx.types.CBufRet.i32 %596, 0
  %598 = uitofp i32 %597 to float
  %599 = fmul fast float %574, %308
  %600 = fdiv fast float %599, %595
  %601 = call float @dx.op.binary.f32(i32 36, float %600, float 1.000000e+01)  ; FMin(a,b)
  %602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %603 = extractvalue %dx.types.CBufRet.f32 %602, 0
  %604 = extractvalue %dx.types.CBufRet.f32 %602, 1
  %605 = extractvalue %dx.types.CBufRet.f32 %602, 2
  %606 = extractvalue %dx.types.CBufRet.f32 %602, 3
  %607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %608 = extractvalue %dx.types.CBufRet.f32 %607, 0
  %609 = extractvalue %dx.types.CBufRet.f32 %607, 1
  %610 = extractvalue %dx.types.CBufRet.f32 %607, 2
  %611 = extractvalue %dx.types.CBufRet.f32 %607, 3
  %612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %613 = extractvalue %dx.types.CBufRet.f32 %612, 0
  %614 = extractvalue %dx.types.CBufRet.f32 %612, 1
  %615 = extractvalue %dx.types.CBufRet.f32 %612, 2
  %616 = extractvalue %dx.types.CBufRet.f32 %612, 3
  %617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %618 = extractvalue %dx.types.CBufRet.f32 %617, 0
  %619 = extractvalue %dx.types.CBufRet.f32 %617, 1
  %620 = extractvalue %dx.types.CBufRet.f32 %617, 2
  %621 = extractvalue %dx.types.CBufRet.f32 %617, 3
  %622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %623 = extractvalue %dx.types.CBufRet.f32 %622, 0
  %624 = extractvalue %dx.types.CBufRet.f32 %622, 1
  %625 = extractvalue %dx.types.CBufRet.f32 %622, 2
  %626 = extractvalue %dx.types.CBufRet.f32 %622, 3
  %627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %628 = extractvalue %dx.types.CBufRet.f32 %627, 0
  %629 = extractvalue %dx.types.CBufRet.f32 %627, 1
  %630 = extractvalue %dx.types.CBufRet.f32 %627, 2
  %631 = extractvalue %dx.types.CBufRet.f32 %627, 3
  %632 = select i1 %54, float %603, float %618
  %633 = select i1 %54, float %608, float %623
  %634 = select i1 %54, float %613, float %628
  %635 = select i1 %54, float %604, float %619
  %636 = select i1 %54, float %609, float %624
  %637 = select i1 %54, float %614, float %629
  %638 = select i1 %54, float %605, float %620
  %639 = select i1 %54, float %610, float %625
  %640 = select i1 %54, float %615, float %630
  %641 = select i1 %54, float %606, float %621
  %642 = select i1 %54, float %611, float %626
  %643 = select i1 %54, float %616, float %631
  %644 = fmul fast float %218, 0x401061CAC0000000
  %645 = fmul fast float %218, 0x4023E1D7E0000000
  %646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %647 = extractvalue %dx.types.CBufRet.f32 %646, 0
  %648 = extractvalue %dx.types.CBufRet.f32 %646, 1
  %649 = extractvalue %dx.types.CBufRet.f32 %646, 2
  %650 = extractvalue %dx.types.CBufRet.f32 %646, 3
  %651 = fsub fast float -0.000000e+00, %351
  %652 = fmul fast float %353, %651
  %653 = fmul fast float %351, %651
  %654 = fmul fast float %352, %352
  %655 = fsub fast float %653, %654
  %656 = fdiv fast float 1.000000e+00, %61
  %657 = fmul fast float %649, %50
  %658 = fmul fast float %650, %51
  %659 = fmul fast float %574, %351
  %660 = fmul fast float %574, %353
  %661 = fadd fast float %659, %116
  %662 = fadd fast float %660, %118
  %663 = fadd fast float %645, 5.000000e-01
  %664 = call float @dx.op.unary.f32(i32 22, float %663)  ; Frc(value)
  %665 = bitcast float %664 to i32
  %666 = ashr i32 %665, 1
  %667 = add nsw i32 %666, 532487669
  %668 = bitcast i32 %667 to float
  %669 = fmul fast float %668, %601
  %670 = fadd fast float %644, 5.000000e-01
  %671 = call float @dx.op.unary.f32(i32 22, float %670)  ; Frc(value)
  %672 = fmul fast float %671, 0x401921FB60000000
  %673 = call float @dx.op.unary.f32(i32 12, float %672)  ; Cos(value)
  %674 = fmul fast float %673, %673
  %675 = fsub fast float 1.000000e+00, %674
  %676 = bitcast float %675 to i32
  %677 = ashr i32 %676, 1
  %678 = add nsw i32 %677, 532487669
  %679 = bitcast i32 %678 to float
  %680 = fmul fast float %669, %673
  %681 = fmul fast float %680, %352
  %682 = fmul fast float %680, %651
  %683 = fadd fast float %661, %681
  %684 = fmul fast float %679, %669
  %685 = fmul fast float %652, %684
  %686 = fmul fast float %684, %353
  %687 = fmul fast float %684, %655
  %688 = fsub fast float %683, %685
  %689 = fadd fast float %686, %574
  %690 = fmul fast float %689, %352
  %691 = fadd fast float %682, %117
  %692 = fadd fast float %691, %690
  %693 = fadd fast float %662, %687
  %694 = fmul fast float %688, %632
  %695 = call float @dx.op.tertiary.f32(i32 46, float %692, float %635, float %694)  ; FMad(a,b,c)
  %696 = call float @dx.op.tertiary.f32(i32 46, float %693, float %638, float %695)  ; FMad(a,b,c)
  %697 = fadd fast float %696, %641
  %698 = fmul fast float %688, %633
  %699 = call float @dx.op.tertiary.f32(i32 46, float %692, float %636, float %698)  ; FMad(a,b,c)
  %700 = call float @dx.op.tertiary.f32(i32 46, float %693, float %639, float %699)  ; FMad(a,b,c)
  %701 = fadd fast float %700, %642
  %702 = fmul fast float %688, %634
  %703 = call float @dx.op.tertiary.f32(i32 46, float %692, float %637, float %702)  ; FMad(a,b,c)
  %704 = call float @dx.op.tertiary.f32(i32 46, float %693, float %640, float %703)  ; FMad(a,b,c)
  %705 = fadd fast float %704, %643
  %706 = fdiv fast float 1.000000e+00, %705
  %707 = fmul fast float %697, 5.000000e-01
  %708 = fmul fast float %701, -5.000000e-01
  %709 = fmul fast float %707, %706
  %710 = fmul fast float %708, %706
  %711 = fsub fast float 5.000000e-01, %657
  %712 = fadd fast float %711, %709
  %713 = fsub fast float 5.000000e-01, %658
  %714 = fadd fast float %713, %710
  %715 = fsub fast float %706, %656
  %716 = call float @dx.op.dot2.f32(i32 54, float %712, float %714, float %712, float %714)  ; Dot2(ax,ay,bx,by)
  %717 = call float @dx.op.binary.f32(i32 35, float %716, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %718 = call float @dx.op.dot2.f32(i32 54, float %647, float %648, float %647, float %648)  ; Dot2(ax,ay,bx,by)
  %719 = fmul fast float %718, %717
  %720 = call float @dx.op.unary.f32(i32 25, float %719)  ; Rsqrt(value)
  %721 = fmul fast float %720, %712
  %722 = fmul fast float %720, %714
  %723 = fadd fast float %721, %657
  %724 = fadd fast float %722, %658
  %725 = fmul fast float %712, %647
  %726 = fmul fast float %714, %648
  %727 = fmul fast float %725, %725
  %728 = fmul fast float %726, %726
  %729 = fadd fast float %727, %728
  %730 = call float @dx.op.unary.f32(i32 24, float %729)  ; Sqrt(value)
  %731 = fdiv fast float 1.000000e+00, %730
  %732 = fmul fast float %730, 3.906250e-03
  %733 = fmul fast float %204, 0x3F70624DE0000000
  %734 = fadd fast float %733, 0x3F70624DE0000000
  %735 = icmp sgt i32 %582, -1
  br i1 %735, label %736, label %798

; <label>:736                                     ; preds = %586
  br label %737

; <label>:737                                     ; preds = %794, %736
  %738 = phi float [ %769, %794 ], [ %61, %736 ]
  %739 = phi float [ %756, %794 ], [ %61, %736 ]
  %740 = phi float [ %739, %794 ], [ %61, %736 ]
  %741 = phi i32 [ %795, %794 ], [ 0, %736 ]
  %742 = sitofp i32 %741 to float
  %743 = fadd fast float %218, 5.000000e-01
  %744 = call float @dx.op.unary.f32(i32 22, float %743)  ; Frc(value)
  %745 = fadd fast float %742, %744
  %746 = sitofp i32 %582 to float
  %747 = fdiv fast float %745, %746
  %748 = fmul fast float %747, %747
  %749 = call float @dx.op.binary.f32(i32 36, float %748, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %750 = fmul fast float %749, %712
  %751 = fmul fast float %749, %714
  %752 = fmul fast float %749, %715
  %753 = fadd fast float %750, %723
  %754 = fadd fast float %751, %724
  %755 = fadd fast float %752, %656
  %756 = fdiv fast float 1.000000e+00, %755
  %757 = icmp ne i32 %597, 0
  %758 = fmul fast float %732, %749
  %759 = call float @dx.op.binary.f32(i32 36, float %758, float %598)  ; FMin(a,b)
  %760 = select i1 %757, float %759, float 0.000000e+00
  %761 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %753, float %754, float undef, float undef, i32 0, i32 0, i32 undef, float %760)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %762 = extractvalue %dx.types.ResRet.f32 %761, 0
  %763 = fcmp fast ogt float %762, -1.000000e+00
  %764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %765 = extractvalue %dx.types.CBufRet.f32 %764, 1
  %766 = select i1 %763, float %765, float 1.000000e+00
  %767 = fadd fast float %762, 1.000000e+00
  %768 = fmul fast float %766, %767
  %769 = call float @dx.op.unary.f32(i32 6, float %768)  ; FAbs(value)
  %770 = fmul fast float %769, %734
  %771 = fsub fast float %756, %769
  %772 = fsub fast float %771, %770
  %773 = fcmp fast ogt float %772, 0.000000e+00
  %774 = fcmp fast ogt float %577, 0.000000e+00
  br i1 %774, label %775, label %778, !dx.controlflow.hints !44

; <label>:775                                     ; preds = %737
  %776 = fsub fast float %756, %740
  %777 = call float @dx.op.binary.f32(i32 35, float %776, float %577)  ; FMax(a,b)
  br label %778

; <label>:778                                     ; preds = %775, %737
  %779 = phi float [ %777, %775 ], [ %574, %737 ]
  %780 = fcmp fast olt float %772, %779
  %781 = fcmp uge float %762, -1.000000e+00
  %782 = or i1 %54, %781
  %783 = call float @dx.op.unary.f32(i32 7, float %753)  ; Saturate(value)
  %784 = call float @dx.op.unary.f32(i32 7, float %754)  ; Saturate(value)
  %785 = fcmp fast oeq float %753, %783
  %786 = fcmp fast oeq float %754, %784
  %787 = and i1 %785, %786
  %788 = and i1 %782, %787
  %789 = and i1 %773, %780
  %790 = and i1 %789, %788
  %791 = fcmp fast ogt float %749, %731
  %792 = and i1 %791, %790
  %793 = zext i1 %792 to i32
  br i1 %792, label %797, label %794, !dx.controlflow.hints !45

; <label>:794                                     ; preds = %778
  %795 = add nuw nsw i32 %741, 1
  %796 = icmp slt i32 %741, %582
  br i1 %796, label %737, label %797

; <label>:797                                     ; preds = %794, %778
  br label %798

; <label>:798                                     ; preds = %797, %586
  %799 = phi i32 [ 0, %586 ], [ %793, %797 ]
  %800 = phi float [ %61, %586 ], [ %769, %797 ]
  %801 = phi float [ %61, %586 ], [ %738, %797 ]
  %802 = phi float [ %61, %586 ], [ %756, %797 ]
  %803 = phi float [ %61, %586 ], [ %739, %797 ]
  %804 = fsub fast float %803, %801
  %805 = fsub fast float %802, %800
  %806 = fsub fast float %804, %805
  %807 = fcmp fast une float %806, 0.000000e+00
  %808 = fmul fast float %804, %802
  %809 = fmul fast float %803, %805
  %810 = fsub fast float %808, %809
  %811 = fdiv fast float 1.000000e+00, %806
  %812 = fmul fast float %810, %811
  %813 = select i1 %807, float %812, float %802
  %814 = fdiv fast float 1.000000e+00, %813
  %815 = fsub fast float %814, %656
  %816 = fdiv fast float %815, %715
  %817 = call float @dx.op.unary.f32(i32 7, float %816)  ; Saturate(value)
  %818 = fmul fast float %817, %712
  %819 = fmul fast float %817, %714
  %820 = fadd fast float %818, %723
  %821 = fadd fast float %819, %724
  %822 = fadd fast float %820, -5.000000e-01
  %823 = fadd fast float %821, -5.000000e-01
  %824 = call float @dx.op.unary.f32(i32 6, float %822)  ; FAbs(value)
  %825 = call float @dx.op.unary.f32(i32 6, float %823)  ; FAbs(value)
  %826 = fadd fast float %824, -5.000000e-01
  %827 = fadd fast float %825, -5.000000e-01
  %828 = call float @dx.op.binary.f32(i32 35, float %826, float %827)  ; FMax(a,b)
  %829 = fcmp fast olt float %828, 0.000000e+00
  %830 = icmp ne i32 %799, 0
  %831 = and i1 %830, %829
  %832 = select i1 %831, float 0.000000e+00, float 1.000000e+00
  br label %833

; <label>:833                                     ; preds = %798, %569
  %834 = phi float [ %832, %798 ], [ 1.000000e+00, %569 ]
  %835 = fmul fast float %834, %562
  %836 = fmul fast float %834, %562
  %837 = fmul fast float %834, %562
  br label %838

; <label>:838                                     ; preds = %833, %561
  %839 = phi float [ %835, %833 ], [ %562, %561 ]
  %840 = phi float [ %836, %833 ], [ %562, %561 ]
  %841 = phi float [ %837, %833 ], [ %562, %561 ]
  %842 = call float @dx.op.binary.f32(i32 36, float %840, float %841)  ; FMin(a,b)
  %843 = call float @dx.op.binary.f32(i32 36, float %839, float %842)  ; FMin(a,b)
  %844 = fcmp fast ogt float %843, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %845 = zext i1 %844 to i32
  %846 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %845 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %847 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !35
  %848 = icmp eq i32 %847, 0
  %849 = select i1 %848, i32 0, i32 %290
  %850 = or i32 %285, %849
  %851 = lshr i32 %223, 5
  %852 = lshr i32 %224, 5
  %853 = fcmp fast olt float %839, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %854 = and i32 %23, 31
  %855 = zext i1 %853 to i32
  %856 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %23
  store i32 %855, i32 addrspace(3)* %856, align 4, !tbaa !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %857 = icmp ult i32 %854, 16
  br i1 %857, label %858, label %864, !dx.controlflow.hints !46

; <label>:858                                     ; preds = %838
  %859 = add i32 %23, 16
  %860 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %859
  %861 = load i32, i32 addrspace(3)* %860, align 4, !tbaa !35
  %862 = load i32, i32 addrspace(3)* %856, align 4, !tbaa !35
  %863 = and i32 %862, %861
  store i32 %863, i32 addrspace(3)* %856, align 4, !tbaa !35
  br label %864

; <label>:864                                     ; preds = %858, %838
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %865 = icmp ult i32 %854, 8
  br i1 %865, label %866, label %872, !dx.controlflow.hints !47

; <label>:866                                     ; preds = %864
  %867 = add i32 %23, 8
  %868 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %867
  %869 = load i32, i32 addrspace(3)* %868, align 4, !tbaa !35
  %870 = load i32, i32 addrspace(3)* %856, align 4, !tbaa !35
  %871 = and i32 %870, %869
  store i32 %871, i32 addrspace(3)* %856, align 4, !tbaa !35
  br label %872

; <label>:872                                     ; preds = %866, %864
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %873 = icmp ult i32 %854, 4
  br i1 %873, label %874, label %880, !dx.controlflow.hints !48

; <label>:874                                     ; preds = %872
  %875 = add i32 %23, 4
  %876 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %875
  %877 = load i32, i32 addrspace(3)* %876, align 4, !tbaa !35
  %878 = load i32, i32 addrspace(3)* %856, align 4, !tbaa !35
  %879 = and i32 %878, %877
  store i32 %879, i32 addrspace(3)* %856, align 4, !tbaa !35
  br label %880

; <label>:880                                     ; preds = %874, %872
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %881 = icmp ult i32 %854, 2
  br i1 %881, label %882, label %888, !dx.controlflow.hints !49

; <label>:882                                     ; preds = %880
  %883 = add i32 %23, 2
  %884 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %883
  %885 = load i32, i32 addrspace(3)* %884, align 4, !tbaa !35
  %886 = load i32, i32 addrspace(3)* %856, align 4, !tbaa !35
  %887 = and i32 %886, %885
  store i32 %887, i32 addrspace(3)* %856, align 4, !tbaa !35
  br label %888

; <label>:888                                     ; preds = %882, %880
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %889 = icmp eq i32 %854, 0
  br i1 %889, label %890, label %896, !dx.controlflow.hints !50

; <label>:890                                     ; preds = %888
  %891 = add i32 %23, 1
  %892 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %891
  %893 = load i32, i32 addrspace(3)* %892, align 4, !tbaa !35
  %894 = load i32, i32 addrspace(3)* %856, align 4, !tbaa !35
  %895 = and i32 %894, %893
  store i32 %895, i32 addrspace(3)* %856, align 4, !tbaa !35
  br label %896

; <label>:896                                     ; preds = %890, %888
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %897 = and i32 %23, -64
  %898 = or i32 %897, 32
  %899 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %897
  %900 = load i32, i32 addrspace(3)* %899, align 4, !tbaa !35
  %901 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %898
  %902 = load i32, i32 addrspace(3)* %901, align 4, !tbaa !35
  %903 = and i32 %902, %900
  %904 = icmp ne i32 %903, 0
  %905 = fcmp fast ogt float %839, 0x3FEFFF8000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %906 = zext i1 %905 to i32
  store i32 %906, i32 addrspace(3)* %856, align 4, !tbaa !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %857, label %907, label %913, !dx.controlflow.hints !46

; <label>:907                                     ; preds = %896
  %908 = add i32 %23, 16
  %909 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %908
  %910 = load i32, i32 addrspace(3)* %909, align 4, !tbaa !35
  %911 = load i32, i32 addrspace(3)* %856, align 4, !tbaa !35
  %912 = and i32 %911, %910
  store i32 %912, i32 addrspace(3)* %856, align 4, !tbaa !35
  br label %913

; <label>:913                                     ; preds = %907, %896
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %865, label %914, label %920, !dx.controlflow.hints !47

; <label>:914                                     ; preds = %913
  %915 = add i32 %23, 8
  %916 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %915
  %917 = load i32, i32 addrspace(3)* %916, align 4, !tbaa !35
  %918 = load i32, i32 addrspace(3)* %856, align 4, !tbaa !35
  %919 = and i32 %918, %917
  store i32 %919, i32 addrspace(3)* %856, align 4, !tbaa !35
  br label %920

; <label>:920                                     ; preds = %914, %913
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %873, label %921, label %927, !dx.controlflow.hints !48

; <label>:921                                     ; preds = %920
  %922 = add i32 %23, 4
  %923 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %922
  %924 = load i32, i32 addrspace(3)* %923, align 4, !tbaa !35
  %925 = load i32, i32 addrspace(3)* %856, align 4, !tbaa !35
  %926 = and i32 %925, %924
  store i32 %926, i32 addrspace(3)* %856, align 4, !tbaa !35
  br label %927

; <label>:927                                     ; preds = %921, %920
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %881, label %928, label %934, !dx.controlflow.hints !49

; <label>:928                                     ; preds = %927
  %929 = add i32 %23, 2
  %930 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %929
  %931 = load i32, i32 addrspace(3)* %930, align 4, !tbaa !35
  %932 = load i32, i32 addrspace(3)* %856, align 4, !tbaa !35
  %933 = and i32 %932, %931
  store i32 %933, i32 addrspace(3)* %856, align 4, !tbaa !35
  br label %934

; <label>:934                                     ; preds = %928, %927
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %889, label %935, label %941, !dx.controlflow.hints !50

; <label>:935                                     ; preds = %934
  %936 = add i32 %23, 1
  %937 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %936
  %938 = load i32, i32 addrspace(3)* %937, align 4, !tbaa !35
  %939 = load i32, i32 addrspace(3)* %856, align 4, !tbaa !35
  %940 = and i32 %939, %938
  store i32 %940, i32 addrspace(3)* %856, align 4, !tbaa !35
  br label %941

; <label>:941                                     ; preds = %935, %934
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %942 = load i32, i32 addrspace(3)* %899, align 4, !tbaa !35
  %943 = load i32, i32 addrspace(3)* %901, align 4, !tbaa !35
  %944 = and i32 %943, %942
  %945 = or i32 %944, %903
  %946 = icmp eq i32 %945, 0
  %947 = lshr i32 %224, 1
  %948 = and i32 %947, 8
  %949 = lshr i32 %223, 2
  %950 = and i32 %949, 4
  %951 = or i32 %948, %35
  %952 = or i32 %951, %950
  br i1 %278, label %953, label %995, !dx.controlflow.hints !51

; <label>:953                                     ; preds = %941
  %954 = icmp ne i32 %944, 0
  %955 = shl i32 1, %952
  %956 = select i1 %954, i32 %955, i32 0
  %957 = shl i32 65536, %952
  %958 = select i1 %904, i32 %957, i32 0
  %959 = or i32 %956, %958
  %960 = icmp eq i32 %959, 0
  br i1 %960, label %963, label %961, !dx.controlflow.hints !52

; <label>:961                                     ; preds = %953
  %962 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %851, i32 %852, i32 %288, i32 %959)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %963

; <label>:963                                     ; preds = %961, %953
  br i1 %946, label %964, label %993

; <label>:964                                     ; preds = %963
  br label %965

; <label>:965                                     ; preds = %990, %964
  %966 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %4, i32 %851, i32 %852, i32 %288, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %967 = and i32 %966, 3
  %968 = icmp eq i32 %967, 0
  br i1 %968, label %969, label %990, !dx.controlflow.hints !53

; <label>:969                                     ; preds = %965
  %970 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %971 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %972 = extractvalue %dx.types.CBufRet.i32 %971, 3
  %973 = call i32 @dx.op.binary.i32(i32 40, i32 %972, i32 %970)  ; UMin(a,b)
  %974 = extractvalue %dx.types.CBufRet.i32 %971, 2
  %975 = udiv i32 %973, %974
  %976 = urem i32 %973, %974
  %977 = extractvalue %dx.types.CBufRet.i32 %971, 1
  %978 = urem i32 %976, %977
  %979 = udiv i32 %976, %977
  %980 = shl i32 %978, 6
  %981 = and i32 %980, 32704
  %982 = shl i32 %979, 15
  %983 = and i32 %982, 8355840
  %984 = shl i32 %975, 23
  %985 = and i32 %984, 2139095040
  %986 = or i32 %985, %981
  %987 = or i32 %986, %983
  %988 = or i32 %987, 3
  %989 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 8, i32 %851, i32 %852, i32 %288, i32 %988)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %993

; <label>:990                                     ; preds = %965
  %991 = icmp eq i32 %967, 3
  br i1 %991, label %992, label %965, !dx.controlflow.hints !54

; <label>:992                                     ; preds = %990
  br label %993

; <label>:993                                     ; preds = %992, %969, %963
  %994 = phi i32 [ 0, %963 ], [ %988, %969 ], [ %966, %992 ]
  store i32 %994, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !35
  br label %995

; <label>:995                                     ; preds = %993, %941
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %996 = load i32, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !35
  br i1 %946, label %997, label %1012, !dx.controlflow.hints !55

; <label>:997                                     ; preds = %995
  %998 = lshr i32 %996, 23
  %999 = and i32 %998, 255
  %1000 = and i32 %223, 31
  %1001 = and i32 %224, 31
  %1002 = lshr i32 %996, 1
  %1003 = and i32 %1002, 16352
  %1004 = lshr i32 %996, 10
  %1005 = and i32 %1004, 8160
  %1006 = or i32 %1003, %1000
  %1007 = or i32 %1005, %1001
  %1008 = fmul fast float %839, 2.550000e+02
  %1009 = fadd fast float %1008, %217
  %1010 = call float @dx.op.unary.f32(i32 27, float %1009)  ; Round_ni(value)
  %1011 = fmul fast float %1010, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %1006, i32 %1007, i32 %999, float %1011, float %1011, float %1011, float %1011, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1012

; <label>:1012                                    ; preds = %997, %995
  %1013 = icmp eq i32 %286, %290
  br i1 %1013, label %1014, label %284, !llvm.loop !56

; <label>:1014                                    ; preds = %1012
  br label %1015

; <label>:1015                                    ; preds = %1014, %280
  %1016 = phi i32 [ 0, %280 ], [ %850, %1014 ]
  %1017 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1018 = extractvalue %dx.types.CBufRet.i32 %1017, 0
  %1019 = call i32 @dx.op.tertiary.i32(i32 49, i32 %229, i32 %1018, i32 %253)  ; UMad(a,b,c)
  %1020 = shl i32 %1019, 2
  %1021 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1020, i32 undef, i32 undef, i32 %1016)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1022 = add i32 %253, 1
  %1023 = icmp ugt i32 %1022, %249
  br i1 %1023, label %1024, label %252

; <label>:1024                                    ; preds = %1015
  br label %1025

; <label>:1025                                    ; preds = %1024, %222, %0
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
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.unroll.disable"}

