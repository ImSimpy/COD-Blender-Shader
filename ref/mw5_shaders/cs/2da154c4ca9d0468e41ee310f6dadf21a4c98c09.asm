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
; shader hash: 4259b7d2bf60ffea7526b781c8594dac
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
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %31 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %30, i32 undef)  ; BufferLoad(srv,index,wot)
  %32 = extractvalue %dx.types.ResRet.i32 %31, 0
  %33 = lshr i32 %32, 28
  %34 = and i32 %33, 3
  %35 = lshr i32 %32, 10
  %36 = and i32 %35, 262128
  %37 = shl i32 %32, 4
  %38 = and i32 %37, 262128
  %39 = shl nuw nsw i32 %33, 3
  %40 = and i32 %39, 8
  %41 = lshr i32 %32, 26
  %42 = and i32 %41, 8
  %43 = or i32 %36, %20
  %44 = or i32 %43, %40
  %45 = or i32 %42, %21
  %46 = or i32 %45, %38
  %47 = uitofp i32 %44 to float
  %48 = uitofp i32 %46 to float
  %49 = fadd fast float %47, 5.000000e-01
  %50 = fadd fast float %48, 5.000000e-01
  %51 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 0, i32 %44, i32 %46, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %52 = extractvalue %dx.types.ResRet.f32 %51, 0
  %53 = fcmp fast olt float %52, -1.000000e+00
  %54 = fcmp fast ogt float %52, -1.000000e+00
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 1
  %57 = select i1 %54, float %56, float 1.000000e+00
  %58 = fadd fast float %52, 1.000000e+00
  %59 = fmul fast float %57, %58
  %60 = call float @dx.op.unary.f32(i32 6, float %59)  ; FAbs(value)
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 2
  %63 = extractvalue %dx.types.CBufRet.f32 %61, 3
  %64 = fmul fast float %49, %62
  %65 = fmul fast float %50, %63
  %66 = fmul fast float %64, 2.000000e+00
  %67 = fmul fast float %65, 2.000000e+00
  %68 = fsub fast float 1.000000e+00, %66
  %69 = fsub fast float 1.000000e+00, %67
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 0
  %72 = extractvalue %dx.types.CBufRet.f32 %70, 1
  %73 = extractvalue %dx.types.CBufRet.f32 %70, 2
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 0
  %76 = extractvalue %dx.types.CBufRet.f32 %74, 1
  %77 = extractvalue %dx.types.CBufRet.f32 %74, 2
  %78 = select i1 %53, float %71, float %75
  %79 = select i1 %53, float %72, float %76
  %80 = select i1 %53, float %73, float %77
  %81 = fmul fast float %68, %78
  %82 = fmul fast float %68, %79
  %83 = fmul fast float %68, %80
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 0
  %86 = extractvalue %dx.types.CBufRet.f32 %84, 1
  %87 = extractvalue %dx.types.CBufRet.f32 %84, 2
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 0
  %90 = extractvalue %dx.types.CBufRet.f32 %88, 1
  %91 = extractvalue %dx.types.CBufRet.f32 %88, 2
  %92 = select i1 %53, float %85, float %89
  %93 = select i1 %53, float %86, float %90
  %94 = select i1 %53, float %87, float %91
  %95 = fmul fast float %92, %69
  %96 = fmul fast float %93, %69
  %97 = fmul fast float %94, %69
  %98 = fadd fast float %95, %81
  %99 = fadd fast float %96, %82
  %100 = fadd fast float %97, %83
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 1
  %104 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %107 = extractvalue %dx.types.CBufRet.f32 %105, 1
  %108 = extractvalue %dx.types.CBufRet.f32 %105, 2
  %109 = select i1 %53, float %102, float %106
  %110 = select i1 %53, float %103, float %107
  %111 = select i1 %53, float %104, float %108
  %112 = fadd fast float %98, %109
  %113 = fadd fast float %99, %110
  %114 = fadd fast float %100, %111
  %115 = fmul fast float %112, %60
  %116 = fmul fast float %113, %60
  %117 = fmul fast float %114, %60
  %118 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %14, i32 0, i32 %44, i32 %46, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %119 = extractvalue %dx.types.ResRet.i32 %118, 0
  %120 = lshr i32 %119, 8
  %121 = and i32 %119, 255
  %122 = and i32 %120, 255
  %123 = uitofp i32 %121 to float
  %124 = uitofp i32 %122 to float
  %125 = fmul fast float %123, 0x3F80101020000000
  %126 = fmul fast float %124, 0x3F80101020000000
  %127 = fadd fast float %125, -1.000000e+00
  %128 = fadd fast float %126, -1.000000e+00
  %129 = call float @dx.op.unary.f32(i32 6, float %127)  ; FAbs(value)
  %130 = fsub fast float 1.000000e+00, %129
  %131 = call float @dx.op.unary.f32(i32 6, float %128)  ; FAbs(value)
  %132 = fsub fast float %130, %131
  %133 = fsub fast float -0.000000e+00, %132
  %134 = call float @dx.op.binary.f32(i32 35, float %133, float 0.000000e+00)  ; FMax(a,b)
  %135 = fcmp fast ogt float %127, 0.000000e+00
  %136 = fsub fast float -0.000000e+00, %134
  %137 = select i1 %135, float %136, float %134
  %138 = fadd fast float %137, %127
  %139 = fcmp fast ogt float %128, 0.000000e+00
  %140 = select i1 %139, float %136, float %134
  %141 = fadd fast float %140, %128
  %142 = call float @dx.op.dot3.f32(i32 55, float %138, float %141, float %132, float %138, float %141, float %132)  ; Dot3(ax,ay,az,bx,by,bz)
  %143 = call float @dx.op.unary.f32(i32 25, float %142)  ; Rsqrt(value)
  %144 = fmul fast float %138, %143
  %145 = fmul fast float %141, %143
  %146 = fmul fast float %143, %132
  %147 = fmul fast float %62, %47
  %148 = fmul fast float %63, %48
  %149 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %16, float %147, float %148, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %150 = extractvalue %dx.types.ResRet.f32 %149, 0
  %151 = extractvalue %dx.types.ResRet.f32 %149, 1
  %152 = extractvalue %dx.types.ResRet.f32 %149, 2
  %153 = fcmp fast ogt float %150, -1.000000e+00
  %154 = select i1 %153, float %56, float 1.000000e+00
  %155 = fadd fast float %150, 1.000000e+00
  %156 = fmul fast float %154, %155
  %157 = call float @dx.op.unary.f32(i32 6, float %156)  ; FAbs(value)
  %158 = fcmp fast ogt float %151, -1.000000e+00
  %159 = select i1 %158, float %56, float 1.000000e+00
  %160 = fadd fast float %151, 1.000000e+00
  %161 = fmul fast float %159, %160
  %162 = call float @dx.op.unary.f32(i32 6, float %161)  ; FAbs(value)
  %163 = fcmp fast ogt float %152, -1.000000e+00
  %164 = select i1 %163, float %56, float 1.000000e+00
  %165 = fadd fast float %152, 1.000000e+00
  %166 = fmul fast float %164, %165
  %167 = call float @dx.op.unary.f32(i32 6, float %166)  ; FAbs(value)
  %168 = fadd fast float %47, 1.000000e+00
  %169 = fmul fast float %62, %168
  %170 = fadd fast float %48, 1.000000e+00
  %171 = fmul fast float %63, %170
  %172 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %16, float %169, float %171, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %173 = extractvalue %dx.types.ResRet.f32 %172, 0
  %174 = extractvalue %dx.types.ResRet.f32 %172, 2
  %175 = fcmp fast ogt float %173, -1.000000e+00
  %176 = select i1 %175, float %56, float 1.000000e+00
  %177 = fadd fast float %173, 1.000000e+00
  %178 = fmul fast float %176, %177
  %179 = call float @dx.op.unary.f32(i32 6, float %178)  ; FAbs(value)
  %180 = fcmp fast ogt float %174, -1.000000e+00
  %181 = select i1 %180, float %56, float 1.000000e+00
  %182 = fadd fast float %174, 1.000000e+00
  %183 = fmul fast float %181, %182
  %184 = call float @dx.op.unary.f32(i32 6, float %183)  ; FAbs(value)
  %185 = fsub fast float %167, %162
  %186 = fsub fast float %179, %162
  %187 = fsub fast float %157, %162
  %188 = fsub fast float %184, %162
  %189 = call float @dx.op.unary.f32(i32 6, float %186)  ; FAbs(value)
  %190 = call float @dx.op.unary.f32(i32 6, float %185)  ; FAbs(value)
  %191 = call float @dx.op.binary.f32(i32 35, float %190, float %189)  ; FMax(a,b)
  %192 = call float @dx.op.unary.f32(i32 6, float %188)  ; FAbs(value)
  %193 = call float @dx.op.unary.f32(i32 6, float %187)  ; FAbs(value)
  %194 = call float @dx.op.binary.f32(i32 35, float %193, float %192)  ; FMax(a,b)
  %195 = fadd fast float %186, %185
  %196 = call float @dx.op.unary.f32(i32 6, float %195)  ; FAbs(value)
  %197 = fadd fast float %188, %187
  %198 = call float @dx.op.unary.f32(i32 6, float %197)  ; FAbs(value)
  %199 = fsub fast float %194, %198
  %200 = call float @dx.op.unary.f32(i32 6, float %199)  ; FAbs(value)
  %201 = fsub fast float %191, %196
  %202 = call float @dx.op.unary.f32(i32 6, float %201)  ; FAbs(value)
  %203 = call float @dx.op.binary.f32(i32 35, float %202, float %200)  ; FMax(a,b)
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 2
  %206 = fmul fast float %205, 0x3FE3C6EF40000000
  %207 = frem fast float %49, 2.560000e+02
  %208 = frem fast float %50, 2.560000e+02
  %209 = fptoui float %207 to i32
  %210 = fptoui float %208 to i32
  %211 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %209, i32 %210, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %212 = extractvalue %dx.types.ResRet.f32 %211, 0
  %213 = extractvalue %dx.types.ResRet.f32 %211, 2
  %214 = fadd fast float %212, %206
  %215 = fadd fast float %213, %206
  %216 = call float @dx.op.unary.f32(i32 22, float %214)  ; Frc(value)
  %217 = call float @dx.op.unary.f32(i32 22, float %215)  ; Frc(value)
  %218 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.i32 %218, 0
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %995, label %221, !dx.controlflow.hints !33

; <label>:221                                     ; preds = %0
  %222 = fptoui float %49 to i32
  %223 = fptoui float %50 to i32
  %224 = lshr i32 %222, 4
  %225 = lshr i32 %223, 4
  %226 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.i32 %226, 0
  %228 = call i32 @dx.op.tertiary.i32(i32 49, i32 %225, i32 %227, i32 %224)  ; UMad(a,b,c)
  %229 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.i32 %229, 0
  %231 = add nsw i32 %230, -1
  %232 = call i32 @dx.op.binary.i32(i32 37, i32 %231, i32 0)  ; IMax(a,b)
  %233 = call float @dx.op.binary.f32(i32 35, float %60, float 0.000000e+00)  ; FMax(a,b)
  %234 = fptoui float %233 to i32
  %235 = lshr i32 %234, 5
  %236 = call i32 @dx.op.binary.i32(i32 40, i32 %235, i32 8191)  ; UMin(a,b)
  %237 = shl i32 %236, 2
  %238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %237, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.i32 %238, 0
  %240 = lshr i32 %239, 16
  %241 = and i32 %239, 65535
  %242 = lshr i32 %239, 21
  %243 = lshr i32 %241, 5
  %244 = call i32 @dx.op.binary.i32(i32 40, i32 %243, i32 %232)  ; UMin(a,b)
  %245 = icmp ugt i32 %242, %244
  br i1 %245, label %995, label %246

; <label>:246                                     ; preds = %221
  br label %247

; <label>:247                                     ; preds = %991, %246
  %248 = phi i32 [ %992, %991 ], [ %242, %246 ]
  %249 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.i32 %249, 0
  %251 = call i32 @dx.op.tertiary.i32(i32 49, i32 %228, i32 %250, i32 %248)  ; UMad(a,b,c)
  %252 = shl i32 %251, 2
  %253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.i32 %253, 0
  %255 = shl i32 %248, 5
  %256 = sub nsw i32 %240, %255
  %257 = call i32 @dx.op.binary.i32(i32 37, i32 %256, i32 0)  ; IMax(a,b)
  %258 = call i32 @dx.op.binary.i32(i32 38, i32 %257, i32 31)  ; IMin(a,b)
  %259 = sub nsw i32 1, %240
  %260 = add nsw i32 %259, %241
  %261 = call i32 @dx.op.binary.i32(i32 37, i32 %260, i32 0)  ; IMax(a,b)
  %262 = call i32 @dx.op.binary.i32(i32 38, i32 %261, i32 32)  ; IMin(a,b)
  %263 = and i32 %262, 31
  %264 = shl i32 -1, %263
  %265 = xor i32 %264, -1
  %266 = and i32 %258, 31
  %267 = shl i32 %265, %266
  %268 = icmp eq i32 %262, 32
  %269 = select i1 %268, i32 -1, i32 %267
  %270 = and i32 %269, %254
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %991, label %272

; <label>:272                                     ; preds = %247
  br label %273

; <label>:273                                     ; preds = %988, %272
  %274 = phi i32 [ %279, %988 ], [ %270, %272 ]
  %275 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %274)  ; FirstbitLo(value)
  %276 = add i32 %275, %255
  %277 = and i32 %275, 31
  %278 = shl i32 1, %277
  %279 = xor i32 %278, %274
  %280 = mul i32 %276, 112
  %281 = add i32 %280, 16
  %282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.f32 %282, 0
  %284 = extractvalue %dx.types.ResRet.f32 %282, 1
  %285 = extractvalue %dx.types.ResRet.f32 %282, 2
  %286 = add i32 %280, 28
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = add i32 %280, 32
  %290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.f32 %290, 0
  %292 = extractvalue %dx.types.ResRet.f32 %290, 1
  %293 = extractvalue %dx.types.ResRet.f32 %290, 2
  %294 = add i32 %280, 44
  %295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.f32 %295, 0
  %297 = add i32 %280, 48
  %298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.f32 %298, 0
  %300 = extractvalue %dx.types.ResRet.f32 %298, 1
  %301 = extractvalue %dx.types.ResRet.f32 %298, 2
  %302 = extractvalue %dx.types.ResRet.f32 %298, 3
  %303 = add i32 %280, 64
  %304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.f32 %304, 0
  %306 = extractvalue %dx.types.ResRet.f32 %304, 1
  %307 = extractvalue %dx.types.ResRet.f32 %304, 2
  %308 = extractvalue %dx.types.ResRet.f32 %304, 3
  %309 = add i32 %280, 92
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = and i32 %311, 65535
  %313 = uitofp i32 %312 to float
  %314 = lshr i32 %311, 16
  %315 = uitofp i32 %314 to float
  %316 = and i32 %288, 65535
  %317 = and i32 %288, 50331648
  %318 = icmp eq i32 %317, 33554432
  %319 = call float @dx.op.dot3.f32(i32 55, float %291, float %292, float %293, float %291, float %292, float %293)  ; Dot3(ax,ay,az,bx,by,bz)
  %320 = fsub fast float %115, %299
  %321 = fsub fast float %116, %300
  %322 = fsub fast float %117, %301
  %323 = call float @dx.op.dot3.f32(i32 55, float %320, float %321, float %322, float %291, float %292, float %293)  ; Dot3(ax,ay,az,bx,by,bz)
  %324 = fdiv fast float %323, %319
  %325 = call float @dx.op.binary.f32(i32 35, float %324, float -1.000000e+00)  ; FMax(a,b)
  %326 = call float @dx.op.binary.f32(i32 36, float %325, float 1.000000e+00)  ; FMin(a,b)
  %327 = fmul fast float %326, %291
  %328 = fmul fast float %326, %292
  %329 = fmul fast float %326, %293
  %330 = fadd fast float %327, %299
  %331 = fadd fast float %328, %300
  %332 = fadd fast float %329, %301
  %333 = fsub fast float %330, %115
  %334 = fsub fast float %331, %116
  %335 = fsub fast float %332, %117
  %336 = call float @dx.op.dot3.f32(i32 55, float %333, float %334, float %335, float %333, float %334, float %335)  ; Dot3(ax,ay,az,bx,by,bz)
  %337 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %338 = fdiv fast float 1.000000e+00, %337
  %339 = fmul fast float %333, %338
  %340 = fmul fast float %334, %338
  %341 = fmul fast float %335, %338
  br i1 %318, label %342, label %366, !dx.controlflow.hints !34

; <label>:342                                     ; preds = %273
  %343 = fmul fast float %307, %283
  %344 = fmul fast float %307, %284
  %345 = fmul fast float %307, %285
  %346 = fsub fast float %343, %115
  %347 = fadd fast float %346, %330
  %348 = fsub fast float %344, %116
  %349 = fadd fast float %348, %331
  %350 = fsub fast float %345, %117
  %351 = fadd fast float %350, %332
  %352 = call float @dx.op.dot3.f32(i32 55, float %347, float %349, float %351, float %347, float %349, float %351)  ; Dot3(ax,ay,az,bx,by,bz)
  %353 = call float @dx.op.unary.f32(i32 25, float %352)  ; Rsqrt(value)
  %354 = fmul fast float %353, %347
  %355 = fmul fast float %353, %349
  %356 = fmul fast float %353, %351
  %357 = fsub fast float %115, %330
  %358 = fsub fast float %116, %331
  %359 = fsub fast float %117, %332
  %360 = fsub fast float -0.000000e+00, %357
  %361 = fsub fast float -0.000000e+00, %358
  %362 = fsub fast float -0.000000e+00, %359
  %363 = call float @dx.op.dot3.f32(i32 55, float %360, float %361, float %362, float %283, float %284, float %285)  ; Dot3(ax,ay,az,bx,by,bz)
  %364 = fcmp fast ogt float %363, 0.000000e+00
  %365 = uitofp i1 %364 to float
  br label %366

; <label>:366                                     ; preds = %342, %273
  %367 = phi float [ %365, %342 ], [ 1.000000e+00, %273 ]
  %368 = phi float [ %354, %342 ], [ %339, %273 ]
  %369 = phi float [ %355, %342 ], [ %340, %273 ]
  %370 = phi float [ %356, %342 ], [ %341, %273 ]
  %371 = call float @dx.op.dot3.f32(i32 55, float %283, float %284, float %285, float %368, float %369, float %370)  ; Dot3(ax,ay,az,bx,by,bz)
  %372 = fmul fast float %371, %371
  %373 = call float @dx.op.unary.f32(i32 7, float %372)  ; Saturate(value)
  %374 = fsub fast float 1.000000e+00, %373
  %375 = fmul fast float %374, 5.000000e-01
  %376 = fcmp fast ogt float %371, 0.000000e+00
  %377 = fsub fast float 1.000000e+00, %375
  %378 = select i1 %376, float %375, float %377
  %379 = fmul fast float %378, %315
  %380 = fadd fast float %379, %313
  %381 = fmul fast float %380, 0x3EF0001000000000
  %382 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %15, float %381, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %383 = extractvalue %dx.types.ResRet.f32 %382, 0
  %384 = fmul fast float %371, %305
  %385 = fadd fast float %384, %306
  %386 = call float @dx.op.unary.f32(i32 7, float %385)  ; Saturate(value)
  %387 = select i1 %318, float 1.000000e+00, float %386
  %388 = select i1 %318, float %386, float 1.000000e+00
  %389 = fmul fast float %337, %302
  %390 = fsub fast float 1.000000e+00, %389
  %391 = fmul fast float %390, %308
  %392 = call float @dx.op.unary.f32(i32 7, float %391)  ; Saturate(value)
  %393 = fmul fast float %392, %388
  %394 = fmul fast float %393, 2.000000e+00
  %395 = fsub fast float 3.000000e+00, %394
  %396 = fmul fast float %383, %367
  %397 = fmul fast float %393, %393
  %398 = fmul fast float %397, %396
  %399 = fmul fast float %398, %395
  %400 = icmp ne i32 %316, 255
  %401 = call float @dx.op.binary.f32(i32 36, float %399, float %399)  ; FMin(a,b)
  %402 = call float @dx.op.binary.f32(i32 36, float %399, float %401)  ; FMin(a,b)
  %403 = fcmp fast ogt float %402, 0.000000e+00
  %404 = and i1 %400, %403
  br i1 %404, label %405, label %549, !dx.controlflow.hints !35

; <label>:405                                     ; preds = %366
  %406 = mul nuw nsw i32 %316, 176
  %407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.f32 %407, 0
  %409 = extractvalue %dx.types.ResRet.f32 %407, 1
  %410 = extractvalue %dx.types.ResRet.f32 %407, 2
  %411 = extractvalue %dx.types.ResRet.f32 %407, 3
  %412 = add nuw nsw i32 %406, 16
  %413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.f32 %413, 0
  %415 = extractvalue %dx.types.ResRet.f32 %413, 1
  %416 = add nuw nsw i32 %406, 32
  %417 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.f32 %417, 0
  %419 = extractvalue %dx.types.ResRet.f32 %417, 1
  %420 = extractvalue %dx.types.ResRet.f32 %417, 2
  %421 = add nuw nsw i32 %406, 48
  %422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.f32 %422, 0
  %424 = extractvalue %dx.types.ResRet.f32 %422, 1
  %425 = extractvalue %dx.types.ResRet.f32 %422, 2
  %426 = extractvalue %dx.types.ResRet.f32 %422, 3
  %427 = add nuw nsw i32 %406, 64
  %428 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.f32 %428, 0
  %430 = extractvalue %dx.types.ResRet.f32 %428, 1
  %431 = extractvalue %dx.types.ResRet.f32 %428, 2
  %432 = extractvalue %dx.types.ResRet.f32 %428, 3
  %433 = add nuw nsw i32 %406, 80
  %434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.f32 %434, 0
  %436 = extractvalue %dx.types.ResRet.f32 %434, 1
  %437 = extractvalue %dx.types.ResRet.f32 %434, 2
  %438 = extractvalue %dx.types.ResRet.f32 %434, 3
  %439 = add nuw nsw i32 %406, 96
  %440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.f32 %440, 0
  %442 = extractvalue %dx.types.ResRet.f32 %440, 1
  %443 = extractvalue %dx.types.ResRet.f32 %440, 2
  %444 = extractvalue %dx.types.ResRet.f32 %440, 3
  %445 = bitcast float %415 to i32
  %446 = fmul fast float %420, %144
  %447 = fmul fast float %420, %145
  %448 = fmul fast float %420, %146
  %449 = fadd fast float %446, %115
  %450 = fadd fast float %447, %116
  %451 = fadd fast float %448, %117
  %452 = fmul fast float %449, %423
  %453 = call float @dx.op.tertiary.f32(i32 46, float %450, float %429, float %452)  ; FMad(a,b,c)
  %454 = call float @dx.op.tertiary.f32(i32 46, float %451, float %435, float %453)  ; FMad(a,b,c)
  %455 = fadd fast float %454, %441
  %456 = fmul fast float %449, %424
  %457 = call float @dx.op.tertiary.f32(i32 46, float %450, float %430, float %456)  ; FMad(a,b,c)
  %458 = call float @dx.op.tertiary.f32(i32 46, float %451, float %436, float %457)  ; FMad(a,b,c)
  %459 = fadd fast float %458, %442
  %460 = fmul fast float %449, %425
  %461 = call float @dx.op.tertiary.f32(i32 46, float %450, float %431, float %460)  ; FMad(a,b,c)
  %462 = call float @dx.op.tertiary.f32(i32 46, float %451, float %437, float %461)  ; FMad(a,b,c)
  %463 = fadd fast float %462, %443
  %464 = fmul fast float %449, %426
  %465 = call float @dx.op.tertiary.f32(i32 46, float %450, float %432, float %464)  ; FMad(a,b,c)
  %466 = call float @dx.op.tertiary.f32(i32 46, float %451, float %438, float %465)  ; FMad(a,b,c)
  %467 = fadd fast float %466, %444
  %468 = fdiv fast float %455, %467
  %469 = fdiv fast float %459, %467
  %470 = fdiv fast float %463, %467
  %471 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %470)  ; FMax(a,b)
  %472 = fmul fast float %216, 0x401921FB60000000
  %473 = call float @dx.op.unary.f32(i32 13, float %472)  ; Sin(value)
  %474 = call float @dx.op.unary.f32(i32 12, float %472)  ; Cos(value)
  %475 = fmul fast float %474, %419
  %476 = call float @dx.op.tertiary.f32(i32 46, float %473, float %419, float 0.000000e+00)  ; FMad(a,b,c)
  %477 = fmul fast float %419, %473
  %478 = fsub fast float -0.000000e+00, %477
  %479 = call float @dx.op.tertiary.f32(i32 46, float %474, float %419, float 0.000000e+00)  ; FMad(a,b,c)
  br label %480

; <label>:480                                     ; preds = %480, %405
  %481 = phi float [ 0.000000e+00, %405 ], [ %513, %480 ]
  %482 = phi float [ 0.000000e+00, %405 ], [ %515, %480 ]
  %483 = phi i32 [ 0, %405 ], [ %516, %480 ]
  %484 = mul i32 %483, 2
  %485 = add i32 0, %484
  %486 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %485
  %487 = load float, float* %486, align 4
  %488 = mul i32 %483, 2
  %489 = add i32 1, %488
  %490 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %489
  %491 = load float, float* %490, align 4
  %492 = fmul fast float %475, %487
  %493 = call float @dx.op.tertiary.f32(i32 46, float %491, float %478, float %492)  ; FMad(a,b,c)
  %494 = fmul fast float %487, %476
  %495 = call float @dx.op.tertiary.f32(i32 46, float %491, float %479, float %494)  ; FMad(a,b,c)
  %496 = fadd fast float %493, %468
  %497 = fadd fast float %495, %469
  %498 = fmul fast float %496, %414
  %499 = fmul fast float %497, %414
  %500 = call float @dx.op.binary.f32(i32 35, float %498, float %410)  ; FMax(a,b)
  %501 = call float @dx.op.binary.f32(i32 35, float %499, float %410)  ; FMax(a,b)
  %502 = call float @dx.op.binary.f32(i32 36, float %500, float %411)  ; FMin(a,b)
  %503 = call float @dx.op.binary.f32(i32 36, float %501, float %411)  ; FMin(a,b)
  %504 = fadd fast float %502, %408
  %505 = fadd fast float %503, %409
  %506 = uitofp i32 %445 to float
  %507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %504, float %505, float %506, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %508 = extractvalue %dx.types.ResRet.f32 %507, 0
  %509 = fsub fast float %508, %471
  %510 = fsub fast float %509, %418
  %511 = fcmp fast ogt float %510, 0.000000e+00
  %512 = select i1 %511, float 1.000000e+00, float 0.000000e+00
  %513 = fadd fast float %512, %481
  %514 = select i1 %511, float %510, float 0.000000e+00
  %515 = fadd fast float %514, %482
  %516 = add nuw nsw i32 %483, 1
  %517 = icmp eq i32 %516, 8
  br i1 %517, label %518, label %480

; <label>:518                                     ; preds = %480
  %519 = fdiv fast float 1.000000e+00, %513
  %520 = fmul fast float %519, %515
  %521 = fdiv fast float 1.000000e+00, %471
  %522 = fmul fast float %520, %521
  %523 = call float @dx.op.unary.f32(i32 7, float %522)  ; Saturate(value)
  %524 = call float @dx.op.binary.f32(i32 35, float %523, float 0.000000e+00)  ; FMax(a,b)
  %525 = fmul fast float %513, 1.250000e-01
  %526 = call float @dx.op.unary.f32(i32 7, float %525)  ; Saturate(value)
  %527 = fmul fast float %526, 2.000000e+00
  %528 = fadd fast float %527, -1.000000e+00
  %529 = fcmp fast ogt float %528, 0.000000e+00
  %530 = fcmp fast olt float %528, 0.000000e+00
  %531 = zext i1 %529 to i32
  %532 = zext i1 %530 to i32
  %533 = sub nsw i32 %531, %532
  %534 = sitofp i32 %533 to float
  %535 = fmul fast float %534, %528
  %536 = fsub fast float 1.000000e+00, %535
  %537 = fmul fast float %536, %536
  %538 = fmul fast float %537, %536
  %539 = fsub fast float %536, %538
  %540 = fmul fast float %539, %524
  %541 = fsub fast float 1.000000e+00, %538
  %542 = fsub fast float %541, %540
  %543 = fmul fast float %534, 5.000000e-01
  %544 = fmul fast float %543, %542
  %545 = fsub fast float -5.000000e-01, %544
  %546 = fmul fast float %545, %387
  %547 = fadd fast float %546, 1.000000e+00
  %548 = fmul fast float %547, %399
  br label %549

; <label>:549                                     ; preds = %518, %366
  %550 = phi float [ %548, %518 ], [ %399, %366 ]
  %551 = call float @dx.op.binary.f32(i32 36, float %550, float %550)  ; FMin(a,b)
  %552 = call float @dx.op.binary.f32(i32 36, float %550, float %551)  ; FMin(a,b)
  %553 = fcmp fast ogt float %552, 0.000000e+00
  %554 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %339, float %340, float %341)  ; Dot3(ax,ay,az,bx,by,bz)
  %555 = fcmp fast ogt float %554, 0.000000e+00
  %556 = and i1 %553, %555
  br i1 %556, label %557, label %824, !dx.controlflow.hints !36

; <label>:557                                     ; preds = %549
  %558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.f32 %558, 1
  %560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %561 = extractvalue %dx.types.CBufRet.f32 %560, 1
  %562 = select i1 %53, float %559, float %561
  %563 = extractvalue %dx.types.CBufRet.f32 %558, 2
  %564 = extractvalue %dx.types.CBufRet.f32 %560, 2
  %565 = select i1 %53, float %563, float %564
  %566 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %567 = extractvalue %dx.types.CBufRet.i32 %566, 0
  %568 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %569 = extractvalue %dx.types.CBufRet.i32 %568, 0
  %570 = select i1 %53, i32 %567, i32 %569
  %571 = fcmp fast olt float %562, 5.000000e-01
  %572 = icmp eq i32 %570, 0
  %573 = or i1 %571, %572
  br i1 %573, label %821, label %574, !dx.controlflow.hints !37

; <label>:574                                     ; preds = %557
  %575 = fsub fast float %299, %115
  %576 = fsub fast float %300, %116
  %577 = fsub fast float %301, %117
  %578 = fmul fast float %575, %575
  %579 = fmul fast float %576, %576
  %580 = fadd fast float %578, %579
  %581 = fmul fast float %577, %577
  %582 = fadd fast float %580, %581
  %583 = call float @dx.op.unary.f32(i32 24, float %582)  ; Sqrt(value)
  %584 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.i32 %584, 0
  %586 = uitofp i32 %585 to float
  %587 = fmul fast float %562, %296
  %588 = fdiv fast float %587, %583
  %589 = call float @dx.op.binary.f32(i32 36, float %588, float 1.000000e+01)  ; FMin(a,b)
  %590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %591 = extractvalue %dx.types.CBufRet.f32 %590, 0
  %592 = extractvalue %dx.types.CBufRet.f32 %590, 1
  %593 = extractvalue %dx.types.CBufRet.f32 %590, 2
  %594 = extractvalue %dx.types.CBufRet.f32 %590, 3
  %595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %596 = extractvalue %dx.types.CBufRet.f32 %595, 0
  %597 = extractvalue %dx.types.CBufRet.f32 %595, 1
  %598 = extractvalue %dx.types.CBufRet.f32 %595, 2
  %599 = extractvalue %dx.types.CBufRet.f32 %595, 3
  %600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %601 = extractvalue %dx.types.CBufRet.f32 %600, 0
  %602 = extractvalue %dx.types.CBufRet.f32 %600, 1
  %603 = extractvalue %dx.types.CBufRet.f32 %600, 2
  %604 = extractvalue %dx.types.CBufRet.f32 %600, 3
  %605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %606 = extractvalue %dx.types.CBufRet.f32 %605, 0
  %607 = extractvalue %dx.types.CBufRet.f32 %605, 1
  %608 = extractvalue %dx.types.CBufRet.f32 %605, 2
  %609 = extractvalue %dx.types.CBufRet.f32 %605, 3
  %610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %611 = extractvalue %dx.types.CBufRet.f32 %610, 0
  %612 = extractvalue %dx.types.CBufRet.f32 %610, 1
  %613 = extractvalue %dx.types.CBufRet.f32 %610, 2
  %614 = extractvalue %dx.types.CBufRet.f32 %610, 3
  %615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %616 = extractvalue %dx.types.CBufRet.f32 %615, 0
  %617 = extractvalue %dx.types.CBufRet.f32 %615, 1
  %618 = extractvalue %dx.types.CBufRet.f32 %615, 2
  %619 = extractvalue %dx.types.CBufRet.f32 %615, 3
  %620 = select i1 %53, float %591, float %606
  %621 = select i1 %53, float %596, float %611
  %622 = select i1 %53, float %601, float %616
  %623 = select i1 %53, float %592, float %607
  %624 = select i1 %53, float %597, float %612
  %625 = select i1 %53, float %602, float %617
  %626 = select i1 %53, float %593, float %608
  %627 = select i1 %53, float %598, float %613
  %628 = select i1 %53, float %603, float %618
  %629 = select i1 %53, float %594, float %609
  %630 = select i1 %53, float %599, float %614
  %631 = select i1 %53, float %604, float %619
  %632 = fmul fast float %217, 0x401061CAC0000000
  %633 = fmul fast float %217, 0x4023E1D7E0000000
  %634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %635 = extractvalue %dx.types.CBufRet.f32 %634, 0
  %636 = extractvalue %dx.types.CBufRet.f32 %634, 1
  %637 = extractvalue %dx.types.CBufRet.f32 %634, 2
  %638 = extractvalue %dx.types.CBufRet.f32 %634, 3
  %639 = fsub fast float -0.000000e+00, %339
  %640 = fmul fast float %341, %639
  %641 = fmul fast float %339, %639
  %642 = fmul fast float %340, %340
  %643 = fsub fast float %641, %642
  %644 = fdiv fast float 1.000000e+00, %60
  %645 = fmul fast float %637, %49
  %646 = fmul fast float %638, %50
  %647 = fmul fast float %562, %339
  %648 = fmul fast float %562, %341
  %649 = fadd fast float %647, %115
  %650 = fadd fast float %648, %117
  %651 = fadd fast float %633, 5.000000e-01
  %652 = call float @dx.op.unary.f32(i32 22, float %651)  ; Frc(value)
  %653 = bitcast float %652 to i32
  %654 = ashr i32 %653, 1
  %655 = add nsw i32 %654, 532487669
  %656 = bitcast i32 %655 to float
  %657 = fmul fast float %656, %589
  %658 = fadd fast float %632, 5.000000e-01
  %659 = call float @dx.op.unary.f32(i32 22, float %658)  ; Frc(value)
  %660 = fmul fast float %659, 0x401921FB60000000
  %661 = call float @dx.op.unary.f32(i32 12, float %660)  ; Cos(value)
  %662 = fmul fast float %661, %661
  %663 = fsub fast float 1.000000e+00, %662
  %664 = bitcast float %663 to i32
  %665 = ashr i32 %664, 1
  %666 = add nsw i32 %665, 532487669
  %667 = bitcast i32 %666 to float
  %668 = fmul fast float %657, %661
  %669 = fmul fast float %668, %340
  %670 = fmul fast float %668, %639
  %671 = fadd fast float %649, %669
  %672 = fmul fast float %667, %657
  %673 = fmul fast float %640, %672
  %674 = fmul fast float %672, %341
  %675 = fmul fast float %672, %643
  %676 = fsub fast float %671, %673
  %677 = fadd fast float %674, %562
  %678 = fmul fast float %677, %340
  %679 = fadd fast float %670, %116
  %680 = fadd fast float %679, %678
  %681 = fadd fast float %650, %675
  %682 = fmul fast float %676, %620
  %683 = call float @dx.op.tertiary.f32(i32 46, float %680, float %623, float %682)  ; FMad(a,b,c)
  %684 = call float @dx.op.tertiary.f32(i32 46, float %681, float %626, float %683)  ; FMad(a,b,c)
  %685 = fadd fast float %684, %629
  %686 = fmul fast float %676, %621
  %687 = call float @dx.op.tertiary.f32(i32 46, float %680, float %624, float %686)  ; FMad(a,b,c)
  %688 = call float @dx.op.tertiary.f32(i32 46, float %681, float %627, float %687)  ; FMad(a,b,c)
  %689 = fadd fast float %688, %630
  %690 = fmul fast float %676, %622
  %691 = call float @dx.op.tertiary.f32(i32 46, float %680, float %625, float %690)  ; FMad(a,b,c)
  %692 = call float @dx.op.tertiary.f32(i32 46, float %681, float %628, float %691)  ; FMad(a,b,c)
  %693 = fadd fast float %692, %631
  %694 = fdiv fast float 1.000000e+00, %693
  %695 = fmul fast float %685, 5.000000e-01
  %696 = fmul fast float %689, -5.000000e-01
  %697 = fmul fast float %695, %694
  %698 = fmul fast float %696, %694
  %699 = fsub fast float 5.000000e-01, %645
  %700 = fadd fast float %699, %697
  %701 = fsub fast float 5.000000e-01, %646
  %702 = fadd fast float %701, %698
  %703 = fsub fast float %694, %644
  %704 = call float @dx.op.dot2.f32(i32 54, float %700, float %702, float %700, float %702)  ; Dot2(ax,ay,bx,by)
  %705 = call float @dx.op.binary.f32(i32 35, float %704, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %706 = call float @dx.op.dot2.f32(i32 54, float %635, float %636, float %635, float %636)  ; Dot2(ax,ay,bx,by)
  %707 = fmul fast float %706, %705
  %708 = call float @dx.op.unary.f32(i32 25, float %707)  ; Rsqrt(value)
  %709 = fmul fast float %708, %700
  %710 = fmul fast float %708, %702
  %711 = fadd fast float %709, %645
  %712 = fadd fast float %710, %646
  %713 = fmul fast float %700, %635
  %714 = fmul fast float %702, %636
  %715 = fmul fast float %713, %713
  %716 = fmul fast float %714, %714
  %717 = fadd fast float %715, %716
  %718 = call float @dx.op.unary.f32(i32 24, float %717)  ; Sqrt(value)
  %719 = fdiv fast float 1.000000e+00, %718
  %720 = fmul fast float %718, 3.906250e-03
  %721 = fmul fast float %203, 0x3F70624DE0000000
  %722 = fadd fast float %721, 0x3F70624DE0000000
  %723 = icmp sgt i32 %570, -1
  br i1 %723, label %724, label %786

; <label>:724                                     ; preds = %574
  br label %725

; <label>:725                                     ; preds = %782, %724
  %726 = phi float [ %757, %782 ], [ %60, %724 ]
  %727 = phi float [ %744, %782 ], [ %60, %724 ]
  %728 = phi float [ %727, %782 ], [ %60, %724 ]
  %729 = phi i32 [ %783, %782 ], [ 0, %724 ]
  %730 = sitofp i32 %729 to float
  %731 = fadd fast float %217, 5.000000e-01
  %732 = call float @dx.op.unary.f32(i32 22, float %731)  ; Frc(value)
  %733 = fadd fast float %730, %732
  %734 = sitofp i32 %570 to float
  %735 = fdiv fast float %733, %734
  %736 = fmul fast float %735, %735
  %737 = call float @dx.op.binary.f32(i32 36, float %736, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %738 = fmul fast float %737, %700
  %739 = fmul fast float %737, %702
  %740 = fmul fast float %737, %703
  %741 = fadd fast float %738, %711
  %742 = fadd fast float %739, %712
  %743 = fadd fast float %740, %644
  %744 = fdiv fast float 1.000000e+00, %743
  %745 = icmp ne i32 %585, 0
  %746 = fmul fast float %720, %737
  %747 = call float @dx.op.binary.f32(i32 36, float %746, float %586)  ; FMin(a,b)
  %748 = select i1 %745, float %747, float 0.000000e+00
  %749 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %741, float %742, float undef, float undef, i32 0, i32 0, i32 undef, float %748)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %750 = extractvalue %dx.types.ResRet.f32 %749, 0
  %751 = fcmp fast ogt float %750, -1.000000e+00
  %752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %753 = extractvalue %dx.types.CBufRet.f32 %752, 1
  %754 = select i1 %751, float %753, float 1.000000e+00
  %755 = fadd fast float %750, 1.000000e+00
  %756 = fmul fast float %754, %755
  %757 = call float @dx.op.unary.f32(i32 6, float %756)  ; FAbs(value)
  %758 = fmul fast float %757, %722
  %759 = fsub fast float %744, %757
  %760 = fsub fast float %759, %758
  %761 = fcmp fast ogt float %760, 0.000000e+00
  %762 = fcmp fast ogt float %565, 0.000000e+00
  br i1 %762, label %763, label %766, !dx.controlflow.hints !38

; <label>:763                                     ; preds = %725
  %764 = fsub fast float %744, %728
  %765 = call float @dx.op.binary.f32(i32 35, float %764, float %565)  ; FMax(a,b)
  br label %766

; <label>:766                                     ; preds = %763, %725
  %767 = phi float [ %765, %763 ], [ %562, %725 ]
  %768 = fcmp fast olt float %760, %767
  %769 = fcmp uge float %750, -1.000000e+00
  %770 = or i1 %53, %769
  %771 = call float @dx.op.unary.f32(i32 7, float %741)  ; Saturate(value)
  %772 = call float @dx.op.unary.f32(i32 7, float %742)  ; Saturate(value)
  %773 = fcmp fast oeq float %741, %771
  %774 = fcmp fast oeq float %742, %772
  %775 = and i1 %773, %774
  %776 = and i1 %770, %775
  %777 = and i1 %761, %768
  %778 = and i1 %777, %776
  %779 = fcmp fast ogt float %737, %719
  %780 = and i1 %779, %778
  %781 = zext i1 %780 to i32
  br i1 %780, label %785, label %782, !dx.controlflow.hints !39

; <label>:782                                     ; preds = %766
  %783 = add nuw nsw i32 %729, 1
  %784 = icmp slt i32 %729, %570
  br i1 %784, label %725, label %785

; <label>:785                                     ; preds = %782, %766
  br label %786

; <label>:786                                     ; preds = %785, %574
  %787 = phi i32 [ 0, %574 ], [ %781, %785 ]
  %788 = phi float [ %60, %574 ], [ %757, %785 ]
  %789 = phi float [ %60, %574 ], [ %726, %785 ]
  %790 = phi float [ %60, %574 ], [ %744, %785 ]
  %791 = phi float [ %60, %574 ], [ %727, %785 ]
  %792 = fsub fast float %791, %789
  %793 = fsub fast float %790, %788
  %794 = fsub fast float %792, %793
  %795 = fcmp fast une float %794, 0.000000e+00
  %796 = fmul fast float %792, %790
  %797 = fmul fast float %791, %793
  %798 = fsub fast float %796, %797
  %799 = fdiv fast float 1.000000e+00, %794
  %800 = fmul fast float %798, %799
  %801 = select i1 %795, float %800, float %790
  %802 = fdiv fast float 1.000000e+00, %801
  %803 = fsub fast float %802, %644
  %804 = fdiv fast float %803, %703
  %805 = call float @dx.op.unary.f32(i32 7, float %804)  ; Saturate(value)
  %806 = fmul fast float %805, %700
  %807 = fmul fast float %805, %702
  %808 = fadd fast float %806, %711
  %809 = fadd fast float %807, %712
  %810 = fadd fast float %808, -5.000000e-01
  %811 = fadd fast float %809, -5.000000e-01
  %812 = call float @dx.op.unary.f32(i32 6, float %810)  ; FAbs(value)
  %813 = call float @dx.op.unary.f32(i32 6, float %811)  ; FAbs(value)
  %814 = fadd fast float %812, -5.000000e-01
  %815 = fadd fast float %813, -5.000000e-01
  %816 = call float @dx.op.binary.f32(i32 35, float %814, float %815)  ; FMax(a,b)
  %817 = fcmp fast olt float %816, 0.000000e+00
  %818 = icmp ne i32 %787, 0
  %819 = and i1 %818, %817
  %820 = select i1 %819, float 0.000000e+00, float 1.000000e+00
  br label %821

; <label>:821                                     ; preds = %786, %557
  %822 = phi float [ %820, %786 ], [ 1.000000e+00, %557 ]
  %823 = fmul fast float %822, %550
  br label %824

; <label>:824                                     ; preds = %821, %549
  %825 = phi float [ %823, %821 ], [ %550, %549 ]
  %826 = lshr i32 %222, 5
  %827 = lshr i32 %223, 5
  %828 = fcmp fast olt float %825, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %829 = and i32 %22, 31
  %830 = zext i1 %828 to i32
  %831 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %22
  store i32 %830, i32 addrspace(3)* %831, align 4, !tbaa !40
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %832 = icmp ult i32 %829, 16
  br i1 %832, label %833, label %839, !dx.controlflow.hints !44

; <label>:833                                     ; preds = %824
  %834 = add i32 %22, 16
  %835 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %834
  %836 = load i32, i32 addrspace(3)* %835, align 4, !tbaa !40
  %837 = load i32, i32 addrspace(3)* %831, align 4, !tbaa !40
  %838 = and i32 %837, %836
  store i32 %838, i32 addrspace(3)* %831, align 4, !tbaa !40
  br label %839

; <label>:839                                     ; preds = %833, %824
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %840 = icmp ult i32 %829, 8
  br i1 %840, label %841, label %847, !dx.controlflow.hints !45

; <label>:841                                     ; preds = %839
  %842 = add i32 %22, 8
  %843 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %842
  %844 = load i32, i32 addrspace(3)* %843, align 4, !tbaa !40
  %845 = load i32, i32 addrspace(3)* %831, align 4, !tbaa !40
  %846 = and i32 %845, %844
  store i32 %846, i32 addrspace(3)* %831, align 4, !tbaa !40
  br label %847

; <label>:847                                     ; preds = %841, %839
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %848 = icmp ult i32 %829, 4
  br i1 %848, label %849, label %855, !dx.controlflow.hints !46

; <label>:849                                     ; preds = %847
  %850 = add i32 %22, 4
  %851 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %850
  %852 = load i32, i32 addrspace(3)* %851, align 4, !tbaa !40
  %853 = load i32, i32 addrspace(3)* %831, align 4, !tbaa !40
  %854 = and i32 %853, %852
  store i32 %854, i32 addrspace(3)* %831, align 4, !tbaa !40
  br label %855

; <label>:855                                     ; preds = %849, %847
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %856 = icmp ult i32 %829, 2
  br i1 %856, label %857, label %863, !dx.controlflow.hints !47

; <label>:857                                     ; preds = %855
  %858 = add i32 %22, 2
  %859 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %858
  %860 = load i32, i32 addrspace(3)* %859, align 4, !tbaa !40
  %861 = load i32, i32 addrspace(3)* %831, align 4, !tbaa !40
  %862 = and i32 %861, %860
  store i32 %862, i32 addrspace(3)* %831, align 4, !tbaa !40
  br label %863

; <label>:863                                     ; preds = %857, %855
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %864 = icmp eq i32 %829, 0
  br i1 %864, label %865, label %871, !dx.controlflow.hints !48

; <label>:865                                     ; preds = %863
  %866 = add i32 %22, 1
  %867 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %866
  %868 = load i32, i32 addrspace(3)* %867, align 4, !tbaa !40
  %869 = load i32, i32 addrspace(3)* %831, align 4, !tbaa !40
  %870 = and i32 %869, %868
  store i32 %870, i32 addrspace(3)* %831, align 4, !tbaa !40
  br label %871

; <label>:871                                     ; preds = %865, %863
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %872 = and i32 %22, -64
  %873 = or i32 %872, 32
  %874 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %872
  %875 = load i32, i32 addrspace(3)* %874, align 4, !tbaa !40
  %876 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %873
  %877 = load i32, i32 addrspace(3)* %876, align 4, !tbaa !40
  %878 = and i32 %877, %875
  %879 = icmp ne i32 %878, 0
  %880 = fcmp fast ogt float %825, 0x3FEFFF8000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %881 = zext i1 %880 to i32
  store i32 %881, i32 addrspace(3)* %831, align 4, !tbaa !40
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %832, label %882, label %888, !dx.controlflow.hints !44

; <label>:882                                     ; preds = %871
  %883 = add i32 %22, 16
  %884 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %883
  %885 = load i32, i32 addrspace(3)* %884, align 4, !tbaa !40
  %886 = load i32, i32 addrspace(3)* %831, align 4, !tbaa !40
  %887 = and i32 %886, %885
  store i32 %887, i32 addrspace(3)* %831, align 4, !tbaa !40
  br label %888

; <label>:888                                     ; preds = %882, %871
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %840, label %889, label %895, !dx.controlflow.hints !45

; <label>:889                                     ; preds = %888
  %890 = add i32 %22, 8
  %891 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %890
  %892 = load i32, i32 addrspace(3)* %891, align 4, !tbaa !40
  %893 = load i32, i32 addrspace(3)* %831, align 4, !tbaa !40
  %894 = and i32 %893, %892
  store i32 %894, i32 addrspace(3)* %831, align 4, !tbaa !40
  br label %895

; <label>:895                                     ; preds = %889, %888
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %848, label %896, label %902, !dx.controlflow.hints !46

; <label>:896                                     ; preds = %895
  %897 = add i32 %22, 4
  %898 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %897
  %899 = load i32, i32 addrspace(3)* %898, align 4, !tbaa !40
  %900 = load i32, i32 addrspace(3)* %831, align 4, !tbaa !40
  %901 = and i32 %900, %899
  store i32 %901, i32 addrspace(3)* %831, align 4, !tbaa !40
  br label %902

; <label>:902                                     ; preds = %896, %895
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %856, label %903, label %909, !dx.controlflow.hints !47

; <label>:903                                     ; preds = %902
  %904 = add i32 %22, 2
  %905 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %904
  %906 = load i32, i32 addrspace(3)* %905, align 4, !tbaa !40
  %907 = load i32, i32 addrspace(3)* %831, align 4, !tbaa !40
  %908 = and i32 %907, %906
  store i32 %908, i32 addrspace(3)* %831, align 4, !tbaa !40
  br label %909

; <label>:909                                     ; preds = %903, %902
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %864, label %910, label %916, !dx.controlflow.hints !48

; <label>:910                                     ; preds = %909
  %911 = add i32 %22, 1
  %912 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %911
  %913 = load i32, i32 addrspace(3)* %912, align 4, !tbaa !40
  %914 = load i32, i32 addrspace(3)* %831, align 4, !tbaa !40
  %915 = and i32 %914, %913
  store i32 %915, i32 addrspace(3)* %831, align 4, !tbaa !40
  br label %916

; <label>:916                                     ; preds = %910, %909
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %917 = load i32, i32 addrspace(3)* %874, align 4, !tbaa !40
  %918 = load i32, i32 addrspace(3)* %876, align 4, !tbaa !40
  %919 = and i32 %918, %917
  %920 = or i32 %919, %878
  %921 = icmp eq i32 %920, 0
  %922 = lshr i32 %223, 1
  %923 = and i32 %922, 8
  %924 = lshr i32 %222, 2
  %925 = and i32 %924, 4
  %926 = or i32 %923, %34
  %927 = or i32 %926, %925
  %928 = icmp eq i32 %22, 0
  br i1 %928, label %929, label %971, !dx.controlflow.hints !49

; <label>:929                                     ; preds = %916
  %930 = icmp ne i32 %919, 0
  %931 = shl i32 1, %927
  %932 = select i1 %930, i32 %931, i32 0
  %933 = shl i32 65536, %927
  %934 = select i1 %879, i32 %933, i32 0
  %935 = or i32 %932, %934
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %939, label %937, !dx.controlflow.hints !50

; <label>:937                                     ; preds = %929
  %938 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %826, i32 %827, i32 %276, i32 %935)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %939

; <label>:939                                     ; preds = %937, %929
  br i1 %921, label %940, label %969

; <label>:940                                     ; preds = %939
  br label %941

; <label>:941                                     ; preds = %966, %940
  %942 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %3, i32 %826, i32 %827, i32 %276, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %943 = and i32 %942, 3
  %944 = icmp eq i32 %943, 0
  br i1 %944, label %945, label %966, !dx.controlflow.hints !51

; <label>:945                                     ; preds = %941
  %946 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %947 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %948 = extractvalue %dx.types.CBufRet.i32 %947, 3
  %949 = call i32 @dx.op.binary.i32(i32 40, i32 %948, i32 %946)  ; UMin(a,b)
  %950 = extractvalue %dx.types.CBufRet.i32 %947, 2
  %951 = udiv i32 %949, %950
  %952 = urem i32 %949, %950
  %953 = extractvalue %dx.types.CBufRet.i32 %947, 1
  %954 = urem i32 %952, %953
  %955 = udiv i32 %952, %953
  %956 = shl i32 %954, 6
  %957 = and i32 %956, 32704
  %958 = shl i32 %955, 15
  %959 = and i32 %958, 8355840
  %960 = shl i32 %951, 23
  %961 = and i32 %960, 2139095040
  %962 = or i32 %961, %957
  %963 = or i32 %962, %959
  %964 = or i32 %963, 3
  %965 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 8, i32 %826, i32 %827, i32 %276, i32 %964)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %969

; <label>:966                                     ; preds = %941
  %967 = icmp eq i32 %943, 3
  br i1 %967, label %968, label %941, !dx.controlflow.hints !52

; <label>:968                                     ; preds = %966
  br label %969

; <label>:969                                     ; preds = %968, %945, %939
  %970 = phi i32 [ 0, %939 ], [ %964, %945 ], [ %942, %968 ]
  store i32 %970, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !40
  br label %971

; <label>:971                                     ; preds = %969, %916
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %972 = load i32, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !40
  br i1 %921, label %973, label %988, !dx.controlflow.hints !53

; <label>:973                                     ; preds = %971
  %974 = lshr i32 %972, 23
  %975 = and i32 %974, 255
  %976 = and i32 %222, 31
  %977 = and i32 %223, 31
  %978 = lshr i32 %972, 1
  %979 = and i32 %978, 16352
  %980 = lshr i32 %972, 10
  %981 = and i32 %980, 8160
  %982 = or i32 %979, %976
  %983 = or i32 %981, %977
  %984 = fmul fast float %825, 2.550000e+02
  %985 = fadd fast float %984, %216
  %986 = call float @dx.op.unary.f32(i32 27, float %985)  ; Round_ni(value)
  %987 = fmul fast float %986, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %982, i32 %983, i32 %975, float %987, float %987, float %987, float %987, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %988

; <label>:988                                     ; preds = %973, %971
  %989 = icmp eq i32 %274, %278
  br i1 %989, label %990, label %273, !llvm.loop !54

; <label>:990                                     ; preds = %988
  br label %991

; <label>:991                                     ; preds = %990, %247
  %992 = add i32 %248, 1
  %993 = icmp ugt i32 %992, %244
  br i1 %993, label %994, label %247

; <label>:994                                     ; preds = %991
  br label %995

; <label>:995                                     ; preds = %994, %221, %0
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
!dx.entryPoints = !{!30}

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
!27 = !{!28, !29}
!28 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!29 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!30 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !31}
!31 = !{i32 0, i64 272, i32 4, !32}
!32 = !{i32 8, i32 8, i32 1}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 1}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 1}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
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
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.unroll.disable"}

