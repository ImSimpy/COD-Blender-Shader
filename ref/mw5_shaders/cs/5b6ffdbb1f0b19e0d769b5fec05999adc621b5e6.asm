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
; shader hash: 1d9869d3b6d03ec8526979016fef3364
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
  %64 = fmul fast float %62, 2.000000e+00
  %65 = fmul fast float %64, %49
  %66 = fmul fast float %63, 2.000000e+00
  %67 = fmul fast float %66, %50
  %68 = fsub fast float 1.000000e+00, %65
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
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %149 = fmul fast float %148, 0x3FE3C6EF40000000
  %150 = frem fast float %49, 2.560000e+02
  %151 = frem fast float %50, 2.560000e+02
  %152 = fptoui float %150 to i32
  %153 = fptoui float %151 to i32
  %154 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %152, i32 %153, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %155 = extractvalue %dx.types.ResRet.f32 %154, 0
  %156 = fadd fast float %155, %149
  %157 = call float @dx.op.unary.f32(i32 22, float %156)  ; Frc(value)
  %158 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.i32 %158, 0
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %657, label %161, !dx.controlflow.hints !33

; <label>:161                                     ; preds = %0
  %162 = fptoui float %49 to i32
  %163 = fptoui float %50 to i32
  %164 = lshr i32 %162, 4
  %165 = lshr i32 %163, 4
  %166 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.i32 %166, 0
  %168 = call i32 @dx.op.tertiary.i32(i32 49, i32 %165, i32 %167, i32 %164)  ; UMad(a,b,c)
  %169 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.i32 %169, 0
  %171 = add nsw i32 %170, -1
  %172 = call i32 @dx.op.binary.i32(i32 37, i32 %171, i32 0)  ; IMax(a,b)
  %173 = call float @dx.op.binary.f32(i32 35, float %60, float 0.000000e+00)  ; FMax(a,b)
  %174 = fptoui float %173 to i32
  %175 = lshr i32 %174, 5
  %176 = call i32 @dx.op.binary.i32(i32 40, i32 %175, i32 8191)  ; UMin(a,b)
  %177 = shl i32 %176, 2
  %178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %177, i32 undef)  ; BufferLoad(srv,index,wot)
  %179 = extractvalue %dx.types.ResRet.i32 %178, 0
  %180 = lshr i32 %179, 16
  %181 = and i32 %179, 65535
  %182 = lshr i32 %179, 21
  %183 = lshr i32 %181, 5
  %184 = call i32 @dx.op.binary.i32(i32 40, i32 %183, i32 %172)  ; UMin(a,b)
  %185 = icmp ugt i32 %182, %184
  br i1 %185, label %657, label %186

; <label>:186                                     ; preds = %161
  br label %187

; <label>:187                                     ; preds = %653, %186
  %188 = phi i32 [ %654, %653 ], [ %182, %186 ]
  %189 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.i32 %189, 0
  %191 = call i32 @dx.op.tertiary.i32(i32 49, i32 %168, i32 %190, i32 %188)  ; UMad(a,b,c)
  %192 = shl i32 %191, 2
  %193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %192, i32 undef)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.i32 %193, 0
  %195 = shl i32 %188, 5
  %196 = sub nsw i32 %180, %195
  %197 = call i32 @dx.op.binary.i32(i32 37, i32 %196, i32 0)  ; IMax(a,b)
  %198 = call i32 @dx.op.binary.i32(i32 38, i32 %197, i32 31)  ; IMin(a,b)
  %199 = sub nsw i32 1, %180
  %200 = add nsw i32 %199, %181
  %201 = call i32 @dx.op.binary.i32(i32 37, i32 %200, i32 0)  ; IMax(a,b)
  %202 = call i32 @dx.op.binary.i32(i32 38, i32 %201, i32 32)  ; IMin(a,b)
  %203 = and i32 %202, 31
  %204 = shl i32 -1, %203
  %205 = xor i32 %204, -1
  %206 = and i32 %198, 31
  %207 = shl i32 %205, %206
  %208 = icmp eq i32 %202, 32
  %209 = select i1 %208, i32 -1, i32 %207
  %210 = and i32 %209, %194
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %653, label %212

; <label>:212                                     ; preds = %187
  br label %213

; <label>:213                                     ; preds = %650, %212
  %214 = phi i32 [ %219, %650 ], [ %210, %212 ]
  %215 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %214)  ; FirstbitLo(value)
  %216 = add i32 %215, %195
  %217 = and i32 %215, 31
  %218 = shl i32 1, %217
  %219 = xor i32 %218, %214
  %220 = mul i32 %216, 112
  %221 = add i32 %220, 16
  %222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.f32 %222, 0
  %224 = extractvalue %dx.types.ResRet.f32 %222, 1
  %225 = extractvalue %dx.types.ResRet.f32 %222, 2
  %226 = add i32 %220, 28
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = add i32 %220, 32
  %230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.f32 %230, 0
  %232 = extractvalue %dx.types.ResRet.f32 %230, 1
  %233 = extractvalue %dx.types.ResRet.f32 %230, 2
  %234 = add i32 %220, 48
  %235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.f32 %235, 0
  %237 = extractvalue %dx.types.ResRet.f32 %235, 1
  %238 = extractvalue %dx.types.ResRet.f32 %235, 2
  %239 = extractvalue %dx.types.ResRet.f32 %235, 3
  %240 = add i32 %220, 64
  %241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.f32 %241, 0
  %243 = extractvalue %dx.types.ResRet.f32 %241, 1
  %244 = extractvalue %dx.types.ResRet.f32 %241, 2
  %245 = extractvalue %dx.types.ResRet.f32 %241, 3
  %246 = add i32 %220, 92
  %247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %246, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.i32 %247, 0
  %249 = and i32 %248, 65535
  %250 = uitofp i32 %249 to float
  %251 = lshr i32 %248, 16
  %252 = uitofp i32 %251 to float
  %253 = and i32 %228, 65535
  %254 = and i32 %228, 50331648
  %255 = icmp eq i32 %254, 33554432
  %256 = call float @dx.op.dot3.f32(i32 55, float %231, float %232, float %233, float %231, float %232, float %233)  ; Dot3(ax,ay,az,bx,by,bz)
  %257 = fsub fast float %115, %236
  %258 = fsub fast float %116, %237
  %259 = fsub fast float %117, %238
  %260 = call float @dx.op.dot3.f32(i32 55, float %257, float %258, float %259, float %231, float %232, float %233)  ; Dot3(ax,ay,az,bx,by,bz)
  %261 = fdiv fast float %260, %256
  %262 = call float @dx.op.binary.f32(i32 35, float %261, float -1.000000e+00)  ; FMax(a,b)
  %263 = call float @dx.op.binary.f32(i32 36, float %262, float 1.000000e+00)  ; FMin(a,b)
  %264 = fmul fast float %263, %231
  %265 = fmul fast float %263, %232
  %266 = fmul fast float %263, %233
  %267 = fadd fast float %264, %236
  %268 = fadd fast float %265, %237
  %269 = fadd fast float %266, %238
  %270 = fsub fast float %267, %115
  %271 = fsub fast float %268, %116
  %272 = fsub fast float %269, %117
  %273 = call float @dx.op.dot3.f32(i32 55, float %270, float %271, float %272, float %270, float %271, float %272)  ; Dot3(ax,ay,az,bx,by,bz)
  %274 = call float @dx.op.unary.f32(i32 24, float %273)  ; Sqrt(value)
  %275 = fdiv fast float 1.000000e+00, %274
  %276 = fmul fast float %270, %275
  %277 = fmul fast float %271, %275
  %278 = fmul fast float %272, %275
  br i1 %255, label %279, label %303, !dx.controlflow.hints !34

; <label>:279                                     ; preds = %213
  %280 = fmul fast float %244, %223
  %281 = fmul fast float %244, %224
  %282 = fmul fast float %244, %225
  %283 = fsub fast float %280, %115
  %284 = fadd fast float %283, %267
  %285 = fsub fast float %281, %116
  %286 = fadd fast float %285, %268
  %287 = fsub fast float %282, %117
  %288 = fadd fast float %287, %269
  %289 = call float @dx.op.dot3.f32(i32 55, float %284, float %286, float %288, float %284, float %286, float %288)  ; Dot3(ax,ay,az,bx,by,bz)
  %290 = call float @dx.op.unary.f32(i32 25, float %289)  ; Rsqrt(value)
  %291 = fmul fast float %290, %284
  %292 = fmul fast float %290, %286
  %293 = fmul fast float %290, %288
  %294 = fsub fast float %115, %267
  %295 = fsub fast float %116, %268
  %296 = fsub fast float %117, %269
  %297 = fsub fast float -0.000000e+00, %294
  %298 = fsub fast float -0.000000e+00, %295
  %299 = fsub fast float -0.000000e+00, %296
  %300 = call float @dx.op.dot3.f32(i32 55, float %297, float %298, float %299, float %223, float %224, float %225)  ; Dot3(ax,ay,az,bx,by,bz)
  %301 = fcmp fast ogt float %300, 0.000000e+00
  %302 = uitofp i1 %301 to float
  br label %303

; <label>:303                                     ; preds = %279, %213
  %304 = phi float [ %302, %279 ], [ 1.000000e+00, %213 ]
  %305 = phi float [ %291, %279 ], [ %276, %213 ]
  %306 = phi float [ %292, %279 ], [ %277, %213 ]
  %307 = phi float [ %293, %279 ], [ %278, %213 ]
  %308 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %305, float %306, float %307)  ; Dot3(ax,ay,az,bx,by,bz)
  %309 = fmul fast float %308, %308
  %310 = call float @dx.op.unary.f32(i32 7, float %309)  ; Saturate(value)
  %311 = fsub fast float 1.000000e+00, %310
  %312 = fmul fast float %311, 5.000000e-01
  %313 = fcmp fast ogt float %308, 0.000000e+00
  %314 = fsub fast float 1.000000e+00, %312
  %315 = select i1 %313, float %312, float %314
  %316 = fmul fast float %315, %252
  %317 = fadd fast float %316, %250
  %318 = fmul fast float %317, 0x3EF0001000000000
  %319 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %15, float %318, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %320 = extractvalue %dx.types.ResRet.f32 %319, 0
  %321 = fmul fast float %308, %242
  %322 = fadd fast float %321, %243
  %323 = call float @dx.op.unary.f32(i32 7, float %322)  ; Saturate(value)
  %324 = select i1 %255, float 1.000000e+00, float %323
  %325 = select i1 %255, float %323, float 1.000000e+00
  %326 = fmul fast float %274, %239
  %327 = fsub fast float 1.000000e+00, %326
  %328 = fmul fast float %327, %245
  %329 = call float @dx.op.unary.f32(i32 7, float %328)  ; Saturate(value)
  %330 = fmul fast float %329, %325
  %331 = fmul fast float %330, 2.000000e+00
  %332 = fsub fast float 3.000000e+00, %331
  %333 = fmul fast float %320, %304
  %334 = fmul fast float %330, %330
  %335 = fmul fast float %334, %333
  %336 = fmul fast float %335, %332
  %337 = icmp ne i32 %253, 255
  %338 = call float @dx.op.binary.f32(i32 36, float %336, float %336)  ; FMin(a,b)
  %339 = call float @dx.op.binary.f32(i32 36, float %336, float %338)  ; FMin(a,b)
  %340 = fcmp fast ogt float %339, 0.000000e+00
  %341 = and i1 %337, %340
  br i1 %341, label %342, label %486, !dx.controlflow.hints !35

; <label>:342                                     ; preds = %303
  %343 = mul nuw nsw i32 %253, 176
  %344 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.f32 %344, 0
  %346 = extractvalue %dx.types.ResRet.f32 %344, 1
  %347 = extractvalue %dx.types.ResRet.f32 %344, 2
  %348 = extractvalue %dx.types.ResRet.f32 %344, 3
  %349 = add nuw nsw i32 %343, 16
  %350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.f32 %350, 0
  %352 = extractvalue %dx.types.ResRet.f32 %350, 1
  %353 = add nuw nsw i32 %343, 32
  %354 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.f32 %354, 0
  %356 = extractvalue %dx.types.ResRet.f32 %354, 1
  %357 = extractvalue %dx.types.ResRet.f32 %354, 2
  %358 = add nuw nsw i32 %343, 48
  %359 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.f32 %359, 0
  %361 = extractvalue %dx.types.ResRet.f32 %359, 1
  %362 = extractvalue %dx.types.ResRet.f32 %359, 2
  %363 = extractvalue %dx.types.ResRet.f32 %359, 3
  %364 = add nuw nsw i32 %343, 64
  %365 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.f32 %365, 0
  %367 = extractvalue %dx.types.ResRet.f32 %365, 1
  %368 = extractvalue %dx.types.ResRet.f32 %365, 2
  %369 = extractvalue %dx.types.ResRet.f32 %365, 3
  %370 = add nuw nsw i32 %343, 80
  %371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.f32 %371, 0
  %373 = extractvalue %dx.types.ResRet.f32 %371, 1
  %374 = extractvalue %dx.types.ResRet.f32 %371, 2
  %375 = extractvalue %dx.types.ResRet.f32 %371, 3
  %376 = add nuw nsw i32 %343, 96
  %377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.f32 %377, 0
  %379 = extractvalue %dx.types.ResRet.f32 %377, 1
  %380 = extractvalue %dx.types.ResRet.f32 %377, 2
  %381 = extractvalue %dx.types.ResRet.f32 %377, 3
  %382 = bitcast float %352 to i32
  %383 = fmul fast float %144, %357
  %384 = fmul fast float %145, %357
  %385 = fmul fast float %146, %357
  %386 = fadd fast float %383, %115
  %387 = fadd fast float %384, %116
  %388 = fadd fast float %385, %117
  %389 = fmul fast float %386, %360
  %390 = call float @dx.op.tertiary.f32(i32 46, float %387, float %366, float %389)  ; FMad(a,b,c)
  %391 = call float @dx.op.tertiary.f32(i32 46, float %388, float %372, float %390)  ; FMad(a,b,c)
  %392 = fadd fast float %391, %378
  %393 = fmul fast float %386, %361
  %394 = call float @dx.op.tertiary.f32(i32 46, float %387, float %367, float %393)  ; FMad(a,b,c)
  %395 = call float @dx.op.tertiary.f32(i32 46, float %388, float %373, float %394)  ; FMad(a,b,c)
  %396 = fadd fast float %395, %379
  %397 = fmul fast float %386, %362
  %398 = call float @dx.op.tertiary.f32(i32 46, float %387, float %368, float %397)  ; FMad(a,b,c)
  %399 = call float @dx.op.tertiary.f32(i32 46, float %388, float %374, float %398)  ; FMad(a,b,c)
  %400 = fadd fast float %399, %380
  %401 = fmul fast float %386, %363
  %402 = call float @dx.op.tertiary.f32(i32 46, float %387, float %369, float %401)  ; FMad(a,b,c)
  %403 = call float @dx.op.tertiary.f32(i32 46, float %388, float %375, float %402)  ; FMad(a,b,c)
  %404 = fadd fast float %403, %381
  %405 = fdiv fast float %392, %404
  %406 = fdiv fast float %396, %404
  %407 = fdiv fast float %400, %404
  %408 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %407)  ; FMax(a,b)
  %409 = fmul fast float %157, 0x401921FB60000000
  %410 = call float @dx.op.unary.f32(i32 13, float %409)  ; Sin(value)
  %411 = call float @dx.op.unary.f32(i32 12, float %409)  ; Cos(value)
  %412 = fmul fast float %411, %356
  %413 = call float @dx.op.tertiary.f32(i32 46, float %410, float %356, float 0.000000e+00)  ; FMad(a,b,c)
  %414 = fmul fast float %356, %410
  %415 = fsub fast float -0.000000e+00, %414
  %416 = call float @dx.op.tertiary.f32(i32 46, float %411, float %356, float 0.000000e+00)  ; FMad(a,b,c)
  br label %417

; <label>:417                                     ; preds = %417, %342
  %418 = phi float [ 0.000000e+00, %342 ], [ %450, %417 ]
  %419 = phi float [ 0.000000e+00, %342 ], [ %452, %417 ]
  %420 = phi i32 [ 0, %342 ], [ %453, %417 ]
  %421 = mul i32 %420, 2
  %422 = add i32 0, %421
  %423 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %422
  %424 = load float, float* %423, align 4
  %425 = mul i32 %420, 2
  %426 = add i32 1, %425
  %427 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %426
  %428 = load float, float* %427, align 4
  %429 = fmul fast float %412, %424
  %430 = call float @dx.op.tertiary.f32(i32 46, float %428, float %415, float %429)  ; FMad(a,b,c)
  %431 = fmul fast float %424, %413
  %432 = call float @dx.op.tertiary.f32(i32 46, float %428, float %416, float %431)  ; FMad(a,b,c)
  %433 = fadd fast float %430, %405
  %434 = fadd fast float %432, %406
  %435 = fmul fast float %433, %351
  %436 = fmul fast float %434, %351
  %437 = call float @dx.op.binary.f32(i32 35, float %435, float %347)  ; FMax(a,b)
  %438 = call float @dx.op.binary.f32(i32 35, float %436, float %347)  ; FMax(a,b)
  %439 = call float @dx.op.binary.f32(i32 36, float %437, float %348)  ; FMin(a,b)
  %440 = call float @dx.op.binary.f32(i32 36, float %438, float %348)  ; FMin(a,b)
  %441 = fadd fast float %439, %345
  %442 = fadd fast float %440, %346
  %443 = uitofp i32 %382 to float
  %444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %441, float %442, float %443, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %445 = extractvalue %dx.types.ResRet.f32 %444, 0
  %446 = fsub fast float %445, %408
  %447 = fsub fast float %446, %355
  %448 = fcmp fast ogt float %447, 0.000000e+00
  %449 = select i1 %448, float 1.000000e+00, float 0.000000e+00
  %450 = fadd fast float %449, %418
  %451 = select i1 %448, float %447, float 0.000000e+00
  %452 = fadd fast float %451, %419
  %453 = add nuw nsw i32 %420, 1
  %454 = icmp eq i32 %453, 8
  br i1 %454, label %455, label %417

; <label>:455                                     ; preds = %417
  %456 = fdiv fast float 1.000000e+00, %450
  %457 = fmul fast float %456, %452
  %458 = fdiv fast float 1.000000e+00, %408
  %459 = fmul fast float %457, %458
  %460 = call float @dx.op.unary.f32(i32 7, float %459)  ; Saturate(value)
  %461 = call float @dx.op.binary.f32(i32 35, float %460, float 0.000000e+00)  ; FMax(a,b)
  %462 = fmul fast float %450, 1.250000e-01
  %463 = call float @dx.op.unary.f32(i32 7, float %462)  ; Saturate(value)
  %464 = fmul fast float %463, 2.000000e+00
  %465 = fadd fast float %464, -1.000000e+00
  %466 = fcmp fast ogt float %465, 0.000000e+00
  %467 = fcmp fast olt float %465, 0.000000e+00
  %468 = zext i1 %466 to i32
  %469 = zext i1 %467 to i32
  %470 = sub nsw i32 %468, %469
  %471 = sitofp i32 %470 to float
  %472 = fmul fast float %471, %465
  %473 = fsub fast float 1.000000e+00, %472
  %474 = fmul fast float %473, %473
  %475 = fmul fast float %474, %473
  %476 = fsub fast float %473, %475
  %477 = fmul fast float %476, %461
  %478 = fsub fast float 1.000000e+00, %475
  %479 = fsub fast float %478, %477
  %480 = fmul fast float %471, 5.000000e-01
  %481 = fmul fast float %480, %479
  %482 = fsub fast float -5.000000e-01, %481
  %483 = fmul fast float %482, %324
  %484 = fadd fast float %483, 1.000000e+00
  %485 = fmul fast float %484, %336
  br label %486

; <label>:486                                     ; preds = %455, %303
  %487 = phi float [ %485, %455 ], [ %336, %303 ]
  %488 = lshr i32 %162, 5
  %489 = lshr i32 %163, 5
  %490 = fcmp fast olt float %487, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %491 = and i32 %22, 31
  %492 = zext i1 %490 to i32
  %493 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %22
  store i32 %492, i32 addrspace(3)* %493, align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %494 = icmp ult i32 %491, 16
  br i1 %494, label %495, label %501, !dx.controlflow.hints !40

; <label>:495                                     ; preds = %486
  %496 = add i32 %22, 16
  %497 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %496
  %498 = load i32, i32 addrspace(3)* %497, align 4, !tbaa !36
  %499 = load i32, i32 addrspace(3)* %493, align 4, !tbaa !36
  %500 = and i32 %499, %498
  store i32 %500, i32 addrspace(3)* %493, align 4, !tbaa !36
  br label %501

; <label>:501                                     ; preds = %495, %486
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %502 = icmp ult i32 %491, 8
  br i1 %502, label %503, label %509, !dx.controlflow.hints !41

; <label>:503                                     ; preds = %501
  %504 = add i32 %22, 8
  %505 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %504
  %506 = load i32, i32 addrspace(3)* %505, align 4, !tbaa !36
  %507 = load i32, i32 addrspace(3)* %493, align 4, !tbaa !36
  %508 = and i32 %507, %506
  store i32 %508, i32 addrspace(3)* %493, align 4, !tbaa !36
  br label %509

; <label>:509                                     ; preds = %503, %501
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %510 = icmp ult i32 %491, 4
  br i1 %510, label %511, label %517, !dx.controlflow.hints !42

; <label>:511                                     ; preds = %509
  %512 = add i32 %22, 4
  %513 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %512
  %514 = load i32, i32 addrspace(3)* %513, align 4, !tbaa !36
  %515 = load i32, i32 addrspace(3)* %493, align 4, !tbaa !36
  %516 = and i32 %515, %514
  store i32 %516, i32 addrspace(3)* %493, align 4, !tbaa !36
  br label %517

; <label>:517                                     ; preds = %511, %509
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %518 = icmp ult i32 %491, 2
  br i1 %518, label %519, label %525, !dx.controlflow.hints !43

; <label>:519                                     ; preds = %517
  %520 = add i32 %22, 2
  %521 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %520
  %522 = load i32, i32 addrspace(3)* %521, align 4, !tbaa !36
  %523 = load i32, i32 addrspace(3)* %493, align 4, !tbaa !36
  %524 = and i32 %523, %522
  store i32 %524, i32 addrspace(3)* %493, align 4, !tbaa !36
  br label %525

; <label>:525                                     ; preds = %519, %517
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %526 = icmp eq i32 %491, 0
  br i1 %526, label %527, label %533, !dx.controlflow.hints !44

; <label>:527                                     ; preds = %525
  %528 = add i32 %22, 1
  %529 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %528
  %530 = load i32, i32 addrspace(3)* %529, align 4, !tbaa !36
  %531 = load i32, i32 addrspace(3)* %493, align 4, !tbaa !36
  %532 = and i32 %531, %530
  store i32 %532, i32 addrspace(3)* %493, align 4, !tbaa !36
  br label %533

; <label>:533                                     ; preds = %527, %525
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %534 = and i32 %22, -64
  %535 = or i32 %534, 32
  %536 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %534
  %537 = load i32, i32 addrspace(3)* %536, align 4, !tbaa !36
  %538 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %535
  %539 = load i32, i32 addrspace(3)* %538, align 4, !tbaa !36
  %540 = and i32 %539, %537
  %541 = icmp ne i32 %540, 0
  %542 = fcmp fast ogt float %487, 0x3FEFFF8000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %543 = zext i1 %542 to i32
  store i32 %543, i32 addrspace(3)* %493, align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %494, label %544, label %550, !dx.controlflow.hints !40

; <label>:544                                     ; preds = %533
  %545 = add i32 %22, 16
  %546 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %545
  %547 = load i32, i32 addrspace(3)* %546, align 4, !tbaa !36
  %548 = load i32, i32 addrspace(3)* %493, align 4, !tbaa !36
  %549 = and i32 %548, %547
  store i32 %549, i32 addrspace(3)* %493, align 4, !tbaa !36
  br label %550

; <label>:550                                     ; preds = %544, %533
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %502, label %551, label %557, !dx.controlflow.hints !41

; <label>:551                                     ; preds = %550
  %552 = add i32 %22, 8
  %553 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %552
  %554 = load i32, i32 addrspace(3)* %553, align 4, !tbaa !36
  %555 = load i32, i32 addrspace(3)* %493, align 4, !tbaa !36
  %556 = and i32 %555, %554
  store i32 %556, i32 addrspace(3)* %493, align 4, !tbaa !36
  br label %557

; <label>:557                                     ; preds = %551, %550
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %510, label %558, label %564, !dx.controlflow.hints !42

; <label>:558                                     ; preds = %557
  %559 = add i32 %22, 4
  %560 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %559
  %561 = load i32, i32 addrspace(3)* %560, align 4, !tbaa !36
  %562 = load i32, i32 addrspace(3)* %493, align 4, !tbaa !36
  %563 = and i32 %562, %561
  store i32 %563, i32 addrspace(3)* %493, align 4, !tbaa !36
  br label %564

; <label>:564                                     ; preds = %558, %557
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %518, label %565, label %571, !dx.controlflow.hints !43

; <label>:565                                     ; preds = %564
  %566 = add i32 %22, 2
  %567 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %566
  %568 = load i32, i32 addrspace(3)* %567, align 4, !tbaa !36
  %569 = load i32, i32 addrspace(3)* %493, align 4, !tbaa !36
  %570 = and i32 %569, %568
  store i32 %570, i32 addrspace(3)* %493, align 4, !tbaa !36
  br label %571

; <label>:571                                     ; preds = %565, %564
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %526, label %572, label %578, !dx.controlflow.hints !44

; <label>:572                                     ; preds = %571
  %573 = add i32 %22, 1
  %574 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %573
  %575 = load i32, i32 addrspace(3)* %574, align 4, !tbaa !36
  %576 = load i32, i32 addrspace(3)* %493, align 4, !tbaa !36
  %577 = and i32 %576, %575
  store i32 %577, i32 addrspace(3)* %493, align 4, !tbaa !36
  br label %578

; <label>:578                                     ; preds = %572, %571
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %579 = load i32, i32 addrspace(3)* %536, align 4, !tbaa !36
  %580 = load i32, i32 addrspace(3)* %538, align 4, !tbaa !36
  %581 = and i32 %580, %579
  %582 = or i32 %581, %540
  %583 = icmp eq i32 %582, 0
  %584 = lshr i32 %163, 1
  %585 = and i32 %584, 8
  %586 = lshr i32 %162, 2
  %587 = and i32 %586, 4
  %588 = or i32 %585, %34
  %589 = or i32 %588, %587
  %590 = icmp eq i32 %22, 0
  br i1 %590, label %591, label %633, !dx.controlflow.hints !45

; <label>:591                                     ; preds = %578
  %592 = icmp ne i32 %581, 0
  %593 = shl i32 1, %589
  %594 = select i1 %592, i32 %593, i32 0
  %595 = shl i32 65536, %589
  %596 = select i1 %541, i32 %595, i32 0
  %597 = or i32 %594, %596
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %601, label %599, !dx.controlflow.hints !46

; <label>:599                                     ; preds = %591
  %600 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %488, i32 %489, i32 %216, i32 %597)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %601

; <label>:601                                     ; preds = %599, %591
  br i1 %583, label %602, label %631

; <label>:602                                     ; preds = %601
  br label %603

; <label>:603                                     ; preds = %628, %602
  %604 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %3, i32 %488, i32 %489, i32 %216, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %605 = and i32 %604, 3
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %607, label %628, !dx.controlflow.hints !47

; <label>:607                                     ; preds = %603
  %608 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %609 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %610 = extractvalue %dx.types.CBufRet.i32 %609, 3
  %611 = call i32 @dx.op.binary.i32(i32 40, i32 %610, i32 %608)  ; UMin(a,b)
  %612 = extractvalue %dx.types.CBufRet.i32 %609, 2
  %613 = udiv i32 %611, %612
  %614 = urem i32 %611, %612
  %615 = extractvalue %dx.types.CBufRet.i32 %609, 1
  %616 = urem i32 %614, %615
  %617 = udiv i32 %614, %615
  %618 = shl i32 %616, 6
  %619 = and i32 %618, 32704
  %620 = shl i32 %617, 15
  %621 = and i32 %620, 8355840
  %622 = shl i32 %613, 23
  %623 = and i32 %622, 2139095040
  %624 = or i32 %623, %619
  %625 = or i32 %624, %621
  %626 = or i32 %625, 3
  %627 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 8, i32 %488, i32 %489, i32 %216, i32 %626)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %631

; <label>:628                                     ; preds = %603
  %629 = icmp eq i32 %605, 3
  br i1 %629, label %630, label %603, !dx.controlflow.hints !48

; <label>:630                                     ; preds = %628
  br label %631

; <label>:631                                     ; preds = %630, %607, %601
  %632 = phi i32 [ 0, %601 ], [ %626, %607 ], [ %604, %630 ]
  store i32 %632, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !36
  br label %633

; <label>:633                                     ; preds = %631, %578
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %634 = load i32, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !36
  br i1 %583, label %635, label %650, !dx.controlflow.hints !49

; <label>:635                                     ; preds = %633
  %636 = lshr i32 %634, 23
  %637 = and i32 %636, 255
  %638 = and i32 %162, 31
  %639 = and i32 %163, 31
  %640 = lshr i32 %634, 1
  %641 = and i32 %640, 16352
  %642 = lshr i32 %634, 10
  %643 = and i32 %642, 8160
  %644 = or i32 %641, %638
  %645 = or i32 %643, %639
  %646 = fmul fast float %487, 2.550000e+02
  %647 = fadd fast float %646, %157
  %648 = call float @dx.op.unary.f32(i32 27, float %647)  ; Round_ni(value)
  %649 = fmul fast float %648, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %644, i32 %645, i32 %637, float %649, float %649, float %649, float %649, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %650

; <label>:650                                     ; preds = %635, %633
  %651 = icmp eq i32 %214, %218
  br i1 %651, label %652, label %213, !llvm.loop !50

; <label>:652                                     ; preds = %650
  br label %653

; <label>:653                                     ; preds = %652, %187
  %654 = add i32 %188, 1
  %655 = icmp ugt i32 %654, %184
  br i1 %655, label %656, label %187

; <label>:656                                     ; preds = %653
  br label %657

; <label>:657                                     ; preds = %656, %161, %0
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
!36 = !{!37, !37, i64 0}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.unroll.disable"}

